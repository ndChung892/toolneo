using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text.Json;
using Avalonia;
using Avalonia.Animation;
using Avalonia.Animation.Easings;
using Avalonia.Controls;
using Avalonia.Input;
using Avalonia.Interactivity;
using Avalonia.Media;
using Avalonia.Styling;
using Avalonia.Threading;
using Avalonia.VisualTree;

namespace VptAvalonia;

/// <summary>One monster in the list: a name, a tick, and its identity.</summary>
public class BossRow : INotifyPropertyChanged
{
    public event PropertyChangedEventHandler? PropertyChanged;
    void Raise(string n) => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(n));

    bool _sel;
    // Whether this monster is hunted. Dragging a row only ever changes WHERE
    // it sits in the list, never this - an unticked row dragged to the very
    // top is still unticked, and OnStart only ever sends rows where Sel=true
    // (see picked in OnStart), so a row's priority rank never smuggles it into
    // a run it was not ticked for.
    public bool Sel
    {
        get => _sel;
        set { if (_sel == value) return; _sel = value; Raise(nameof(Sel)); }
    }

    public string Name { get; set; } = "";

    // Identity is the (Type, Resource) pair, never the name. The pair is the
    // game's own code for that monster and is the same in every client, every
    // account and every relaunch; the name is only what gets drawn.
    public long Type { get; set; }
    public long Resource { get; set; }
    public int Count { get; set; }

    double _opacity = 1.0;
    /// <summary>Dimmed while this row is the one being dragged.</summary>
    public double Opacity
    {
        get => _opacity;
        set { if (_opacity == value) return; _opacity = value; Raise(nameof(Opacity)); }
    }

    static readonly IBrush Highlight = new SolidColorBrush(Color.Parse("#3a5f8a"));
    IBrush _rowBackground = Brushes.Transparent;
    /// <summary>Painted while this row is being dragged, transparent otherwise -
    /// so it is obvious on screen which row is currently held.</summary>
    public IBrush RowBackground
    {
        get => _rowBackground;
        set { if (Equals(_rowBackground, value)) return; _rowBackground = value; Raise(nameof(RowBackground)); }
    }

    public void SetDragging(bool dragging) => RowBackground = dragging ? Highlight : Brushes.Transparent;

    public Dictionary<string, object> AsPayload() => new()
    {
        ["name"] = Name, ["type"] = Type, ["resource"] = Resource, ["count"] = Count,
    };
}

/// <summary>
/// Auto boss: build the team on the left, pick the bosses on the right, start.
///
///   ĐỘI HÌNH  five slots, exactly one KEY. One account is a solo run and is the
///             key by definition; two to five make a party. Empty slots are
///             simply not in the team.
///   BOSS      EVERY scanned monster, always - not filtered by which map is
///             selected (owner's call, 2026-08-19): a tick to fight it, an ✕
///             to drop it. Map only says where the team travels to before
///             hunting. There is no save button - the list mirrors the
///             catalogue, and the detect window is what writes to it.
///
/// Detecting lives in its own window because it is a different job with a
/// different client: it works on whichever Flash is open right now, while this
/// window is about a run that has not started yet.
/// </summary>
public partial class AutoBossWindow : Window
{
    /// <summary>Send a command to the Python backend (owned by MainWindow).</summary>
    public event Action<string, Dictionary<string, object>?>? Command;

    /// <summary>Ask MainWindow to open the detect window.</summary>
    public Action? OpenScan;

    // The catalogue is ONE flat list now (owner's call, 2026-08-19): a boss
    // that was scanned shows up here no matter which map is selected below.
    // Map only says where the team travels to before hunting.
    readonly ObservableCollection<BossRow> _bosses = new();
    List<AccountRow> _accounts = new();
    ComboBox[] _slots = Array.Empty<ComboBox>();
    RadioButton[] _keys = Array.Empty<RadioButton>();
    bool _loading;

    const string Empty = "—";

    public AutoBossWindow()
    {
        InitializeComponent();
        _slots = new[] { CbAcc1, CbAcc2, CbAcc3, CbAcc4, CbAcc5 };
        _keys = new[] { RbKey1, RbKey2, RbKey3, RbKey4, RbKey5 };
        BossList.ItemsSource = _bosses;
        // Closing just this window (not necessarily the whole tool) is also a
        // reasonable way to mean "never mind the schedule" - nothing should
        // keep ticking against controls that no longer exist.
        Closed += (_, _) => _scheduleTimer?.Stop();
    }

    static string S(JsonElement e, string k)
        => e.TryGetProperty(k, out var v)
            ? (v.ValueKind == JsonValueKind.String ? v.GetString() ?? "" : v.ToString())
            : "";

    static int ParseInt(string? text, int fallback)
        => int.TryParse((text ?? "").Trim(), out var v) && v >= 0 ? v : fallback;

    // ------------------------------------------------------------- context
    /// <summary>Accounts and maps from the main window; keeps what was picked.</summary>
    public void SetContext(IEnumerable<AccountRow> accounts, IEnumerable<string> maps)
    {
        _accounts = accounts.ToList();
        var names = new List<string> { Empty };
        names.AddRange(_accounts.Select(a => a.Name));

        _loading = true;
        try
        {
            foreach (var slot in _slots)
            {
                var keep = slot.SelectedItem as string;
                slot.ItemsSource = names.ToList();
                slot.SelectedItem = keep != null && names.Contains(keep) ? keep : Empty;
            }
            var mapList = maps.ToList();
            if (mapList.Count > 0)
            {
                var keepMap = CbMap.SelectedItem as string;
                CbMap.ItemsSource = mapList;
                if (keepMap != null && mapList.Contains(keepMap)) CbMap.SelectedItem = keepMap;
            }
        }
        finally { _loading = false; }
        EnforceKey();
    }

    /// <summary>Every scanned boss, shown as-is - not filtered by the map below.
    ///
    /// Refused while a drag is in progress. `_bosses.Clear()` here replaces
    /// every row with a brand new `BossRow` instance, so the object
    /// `_dragging` points at would become a stale reference belonging to
    /// nothing in the collection - and every lookup downstream of that
    /// (`IndexOf`, `ContainerFromIndex`) either silently misbehaves or throws
    /// from inside a Dispatcher-posted continuation with nothing to catch it,
    /// which is the leading suspect for the crash this guard was added for.
    /// A refresh arriving mid-drag is not lost: EndDrag's own save/reload
    /// round trip repopulates the list right after the drag finishes anyway.
    /// </summary>
    public void SetCatalog(List<BossRow> catalog)
    {
        if (_dragging != null) return;
        var ticked = new HashSet<(long, long)>(
            _bosses.Where(b => b.Sel).Select(b => (b.Type, b.Resource)));
        _bosses.Clear();
        foreach (var r in catalog)
            _bosses.Add(new BossRow
            {
                Name = r.Name, Type = r.Type, Resource = r.Resource, Count = r.Count,
                Sel = ticked.Count == 0 || ticked.Contains((r.Type, r.Resource)),
            });
    }

    // ---------------------------------------------------------------- team
    /// <summary>Accounts picked in the slots, in order, without duplicates.</summary>
    List<AccountRow> Team()
    {
        var team = new List<AccountRow>();
        foreach (var slot in _slots)
        {
            if (slot.SelectedItem is not string name || name == Empty) continue;
            var acc = _accounts.FirstOrDefault(a => a.Name == name);
            if (acc != null && team.All(t => t.Id != acc.Id)) team.Add(acc);
        }
        return team;
    }

    AccountRow? KeyAccount()
    {
        for (int i = 0; i < _slots.Length; i++)
        {
            if (_keys[i].IsChecked != true) continue;
            if (_slots[i].SelectedItem is not string name || name == Empty) continue;
            return _accounts.FirstOrDefault(a => a.Name == name);
        }
        return null;
    }

    /// <summary>
    /// There is always exactly one key, and it always sits on a filled slot.
    ///
    /// The rule the owner set: even a single account is the key. So rather than
    /// letting the user run without one and complaining at start time, the key
    /// is moved onto the first filled slot whenever the current one empties.
    /// </summary>
    void EnforceKey()
    {
        var filled = new List<int>();
        for (int i = 0; i < _slots.Length; i++)
        {
            bool has = _slots[i].SelectedItem is string s && s != Empty;
            _keys[i].IsEnabled = has;
            if (has) filled.Add(i);
            else if (_keys[i].IsChecked == true) _keys[i].IsChecked = false;
        }
        if (filled.Count > 0 && !filled.Any(i => _keys[i].IsChecked == true))
            _keys[filled[0]].IsChecked = true;

        var team = Team();
        var key = KeyAccount();
        BtnStart.IsEnabled = team.Count > 0;
        if (team.Count == 0)
        {
            Hint.Text = "Chọn ít nhất một tài khoản.";
            return;
        }
        Hint.Text = team.Count == 1
            ? $"Chạy một mình: {key?.Name} (là key)."
            : $"Nhóm {team.Count} acc — key {key?.Name}, "
              + $"{team.Count - 1} member đánh theo nhóm.";
    }

    void OnSlotChanged(object? s, SelectionChangedEventArgs e)
    {
        if (_loading) return;
        EnforceKey();
    }

    void OnKeyChanged(object? s, RoutedEventArgs e)
    {
        if (_loading) return;
        EnforceKey();
    }

    // -------------------------------------------------------------- bosses
    /// <summary>Point this window at a map - used after the detect window saves.
    /// Only affects the travel target; the boss list is unaffected.</summary>
    public void SelectMap(string mapName)
    {
        if (string.IsNullOrWhiteSpace(mapName)) return;
        if (CbMap.ItemsSource is IEnumerable<string> items && items.Contains(mapName))
            CbMap.SelectedItem = mapName;
    }

    // ------------------------------------------------------------- actions
    void OnOpenScan(object? s, RoutedEventArgs e) => OpenScan?.Invoke();

    void OnRefresh(object? s, RoutedEventArgs e)
    {
        Command?.Invoke("list_bosses", null);
        Hint.Text = "Đang nạp lại danh sách…";
    }

    /// <summary>
    /// The ✕: drop this boss and remember that it is gone.
    ///
    /// Writing straight through rather than waiting for a save button, because
    /// there is no save button any more - the list IS the stored list, so an
    /// edit that only lived on screen would come back on the next refresh and
    /// look like the delete had failed.
    /// </summary>
    void OnRemoveBoss(object? s, RoutedEventArgs e)
    {
        if (s is not Button b || b.Tag is not BossRow row) return;
        _bosses.Remove(row);
        // Removing the last row on purpose is the one legitimate way to empty
        // the catalogue - allow_empty says so explicitly. A drag/reorder can
        // never shrink the list, so SaveOrder (its caller) never sets this.
        SaveOrder($"Đã bỏ \"{row.Name}\" khỏi danh sách.", allowEmpty: true);
    }

    /// <summary>
    /// Order IS priority (mục 121): whichever the runner sees listed first, it
    /// fights first among what is actually alive on the map. There is no
    /// separate priority field to keep in sync - dragging a row IS setting its
    /// priority, and the new order is written straight to the catalogue on
    /// release, for the same reason the ✕ is: there is no save button any
    /// more, so an edit that only lived on screen would silently revert on
    /// the next `↻`.
    ///
    /// The drag itself is done by hand, not the WPF-style ItemsControl
    /// drag/drop API: press on the ≡ handle captures the pointer to it, and
    /// every move while captured still routes to that same handle even though
    /// the cursor is now over a different row - so `GetVisualsAt` on the
    /// pointer's position is what finds which row it is currently over, not
    /// which control raised the event.
    /// </summary>
    BossRow? _dragging;

    // Every handler below is wrapped in try/catch on purpose: this drag code
    // crashed the whole app once already (2026-08-19 incident - see
    // AUTO_TRAIN_DECISIONS). Whatever the exact exception was, NOTHING a
    // pointer gesture over a reorder list does should be able to take the
    // process down with it; worst case now is the drag silently aborts and
    // EndDragSafely puts the row back to normal, not a crash.
    void OnDragPressed(object? s, PointerPressedEventArgs e)
    {
        try
        {
            if (s is not Control c || c.DataContext is not BossRow row) return;
            _dragging = row;
            row.Opacity = 0.5;
            row.SetDragging(true);      // highlight the row while it is held
            e.Pointer.Capture(c);
            e.Handled = true;
        }
        catch { EndDragSafely(); }
    }

    void OnDragMoved(object? s, PointerEventArgs e)
    {
        try
        {
            if (_dragging is not BossRow dragged) return;
            int from = _bosses.IndexOf(dragged);
            if (from < 0) { EndDragSafely(); return; }  // stale reference - bail, don't guess

            var point = e.GetPosition(BossList);
            var target = BossList.GetVisualsAt(point)
                .OfType<Control>()
                .Select(c => c.DataContext as BossRow)
                .FirstOrDefault(r => r != null);
            if (target == null || ReferenceEquals(target, dragged)) return;
            int to = _bosses.IndexOf(target);
            if (to < 0 || from == to) return;

            // FLIP: record where every row between the old and new spot sits
            // NOW, reorder (an instant snap on its own - that was the "gượng"
            // part), then once layout has settled at the new positions, slide
            // each row in from where it used to be instead of jumping there.
            int lo = Math.Min(from, to), hi = Math.Max(from, to);
            var before = new Dictionary<BossRow, double>();
            for (int i = lo; i <= hi; i++)
                if (BossList.ContainerFromIndex(i) is Control c && c.DataContext is BossRow r)
                    before[r] = c.Bounds.Y;

            _bosses.Move(from, to);

            // Snapshot which row is being dragged right now: if a catalogue
            // refresh (SetCatalog) somehow still lands between here and the
            // deferred callback, `dragged` may no longer be `_dragging` by
            // then - AnimateReorder must not assume it still is.
            Dispatcher.UIThread.Post(() => AnimateReorder(before), DispatcherPriority.Loaded);
        }
        catch { EndDragSafely(); }
    }

    /// <summary>Slide each affected row from its recorded old Y to its new one.
    /// Built from explicit keyframes rather than a declarative Transition,
    /// because a Transition animates from whatever the property already is -
    /// which is nothing yet, the wrong direction (0 -> delta looks like the
    /// row sliding away, not settling in).</summary>
    void AnimateReorder(Dictionary<BossRow, double> before)
    {
        try
        {
            foreach (var (row, oldY) in before)
            {
                // The row may no longer be in the list (removed, or the
                // catalogue was reloaded between the move and this callback
                // running) - IndexOf returning -1 must never reach
                // ContainerFromIndex, which is not guaranteed to handle a
                // negative index gracefully.
                int index = _bosses.IndexOf(row);
                if (index < 0) continue;
                if (BossList.ContainerFromIndex(index) is not Control c) continue;
                var delta = oldY - c.Bounds.Y;
                if (Math.Abs(delta) < 1) continue;
                var transform = new TranslateTransform();
                c.RenderTransform = transform;
                var anim = new Animation
                {
                    Duration = TimeSpan.FromMilliseconds(160),
                    Easing = new CubicEaseOut(),
                    Children =
                    {
                        new KeyFrame { Cue = new Cue(0d), Setters = { new Setter(TranslateTransform.YProperty, delta) } },
                        new KeyFrame { Cue = new Cue(1d), Setters = { new Setter(TranslateTransform.YProperty, 0d) } },
                    },
                };
                _ = anim.RunAsync(transform);
            }
        }
        catch { /* purely cosmetic - a failed slide must never take the drag result with it */ }
    }

    void OnDragReleased(object? s, PointerReleasedEventArgs e)
    {
        try { EndDrag(); } catch { EndDragSafely(); }
    }

    void OnDragCaptureLost(object? s, PointerCaptureLostEventArgs e)
    {
        try { EndDrag(); } catch { EndDragSafely(); }
    }

    void EndDrag()
    {
        if (_dragging is not BossRow row) return;
        row.Opacity = 1.0;
        row.SetDragging(false);         // release: drop the highlight
        _dragging = null;
        SaveOrder("Đã sắp xếp lại thứ tự ưu tiên.");
    }

    /// <summary>Last-resort cleanup when a drag handler threw: drop whatever
    /// visual state a row was left in and forget the drag, but do NOT save -
    /// a state we just failed to reason about correctly is not one to write
    /// down as the new truth.</summary>
    void EndDragSafely()
    {
        if (_dragging is BossRow row)
        {
            row.Opacity = 1.0;
            row.SetDragging(false);
        }
        _dragging = null;
    }

    void SaveOrder(string hint, bool allowEmpty = false)
    {
        Command?.Invoke("save_bosses", new Dictionary<string, object>
        {
            ["bosses"] = _bosses.Select(x => x.AsPayload()).ToList(),
            ["allow_empty"] = allowEmpty,
        });
        Hint.Text = hint;
    }

    void OnStart(object? s, RoutedEventArgs e)
    {
        var team = Team();
        var key = KeyAccount();
        if (team.Count == 0 || key == null) { Hint.Text = "Chọn tài khoản trước."; return; }
        if (CbMap.SelectedItem is not string map || map.Length == 0)
        { Hint.Text = "Chưa chọn map."; return; }
        var picked = _bosses.Where(b => b.Sel).ToList();
        if (picked.Count == 0) { Hint.Text = "Chưa tick con nào để đánh."; return; }

        Command?.Invoke("bossteam_start", new Dictionary<string, object>
        {
            ["config"] = new Dictionary<string, object>
            {
                ["account_ids"] = team.Select(t => t.Id).ToList(),
                ["key_account"] = key.Id,
                ["maps"] = new List<string> { map },
                ["bosses"] = picked.Select(b => b.AsPayload()).ToList(),
                ["end_minutes"] = ParseInt(TMinutes.Text, 0),
                // Turn Auto on and keep it on; land the key before it walks.
                ["ensure_auto"] = CbEnsureAuto.IsChecked == true,
                ["keep_grounded"] = CbGround.IsChecked == true,
                // Solo is a one-account party of one: the key hunts either way,
                // so there is no separate mode to get wrong.
                ["hunt_all"] = false,
                // Always full: this window is the unattended path by definition.
                ["mode"] = "full",
            },
        });
        Hint.Text = $"Đang chạy: {team.Count} acc tại {map}, {picked.Count} loại boss.";
    }

    void OnStop(object? s, RoutedEventArgs e)
    {
        // One button stops both, because from here they are one thing: "whatever
        // this window started, stop it".
        Command?.Invoke("bossteam_stop", null);
        Command?.Invoke("boss_test_stop", null);
        Hint.Text = "Đã dừng.";
        CancelSchedule();       // a manual DỪNG cancels a pending schedule too
    }

    // ------------------------------------------------------------ scheduling
    // Lives entirely in this window, in memory - no backend command, no file.
    // Closing the tool (process exit) or this window (Closed below) is exactly
    // how it goes away; nothing needs to persist it across a restart because
    // "the tool is not running" already means "nothing is going to fire".
    //
    // The only visible state a schedule has is BẮT ĐẦU HẸN GIỜ going grey and
    // BỎ HẸN GIỜ turning on - that pair IS the indicator the owner asked for,
    // not a separate status field to keep in sync.
    DispatcherTimer? _scheduleTimer;
    DateTime _scheduledAt;

    void OnScheduleStart(object? s, RoutedEventArgs e)
    {
        var text = (TSchedule.Text ?? "").Trim();
        if (!TimeSpan.TryParse(text, out var timeOfDay) || timeOfDay >= TimeSpan.FromDays(1))
        {
            Hint.Text = "Giờ không hợp lệ — nhập dạng HH:mm, ví dụ 21:30.";
            return;
        }
        var now = DateTime.Now;
        var target = now.Date + timeOfDay;
        if (target <= now) target = target.AddDays(1);   // already past today -> tomorrow
        _scheduledAt = target;

        BtnSchedule.IsEnabled = false;
        BtnUnschedule.IsEnabled = true;
        _scheduleTimer?.Stop();
        _scheduleTimer = new DispatcherTimer { Interval = TimeSpan.FromSeconds(1) };
        _scheduleTimer.Tick += (_, _) => TickSchedule();
        _scheduleTimer.Start();
        TickSchedule();
    }

    void TickSchedule()
    {
        var remain = _scheduledAt - DateTime.Now;
        if (remain <= TimeSpan.Zero)
        {
            CancelSchedule();
            Hint.Text = $"Đến giờ hẹn ({_scheduledAt:HH:mm}) — tự bắt đầu.";
            OnStart(null, new RoutedEventArgs());
            return;
        }
        Hint.Text = $"Đã hẹn {_scheduledAt:HH:mm} — còn {remain:hh\\:mm\\:ss}.";
    }

    void OnScheduleCancel(object? s, RoutedEventArgs e)
    {
        CancelSchedule();
        Hint.Text = "Đã bỏ hẹn giờ.";
    }

    void CancelSchedule()
    {
        _scheduleTimer?.Stop();
        _scheduleTimer = null;
        BtnSchedule.IsEnabled = true;
        BtnUnschedule.IsEnabled = false;
    }
}
