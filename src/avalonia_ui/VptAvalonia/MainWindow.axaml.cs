using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.Json;
using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.Layout;
using Avalonia.Media;
using Avalonia.Threading;

namespace VptAvalonia;

/// <summary>
/// One line of the "Tự động hoàn toàn" plan: this account, working this spot,
/// for this long.
///
/// The kind (herb vs fish) is NOT stored. It is read back out of the chosen
/// spot label, because the label already says which it is and a separate
/// selector would let the two disagree.
/// </summary>
public class PlanRow : INotifyPropertyChanged
{
    public event PropertyChangedEventHandler? PropertyChanged;
    void Raise(string n) => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(n));

    public string Id { get; set; } = "";
    public string Name { get; set; } = "";

    /// <summary>Every known spot, herbs and fish together, in one list.</summary>
    public List<string> Spots { get; set; } = new();

    string _spot = "";
    public string Spot
    {
        get => _spot;
        set { if (_spot == value) return; _spot = value; Raise(nameof(Spot)); }
    }

    string _minutes = "0";
    /// <summary>Time budget in minutes; 0 means run until stopped.</summary>
    public string Minutes
    {
        get => _minutes;
        set { if (_minutes == value) return; _minutes = value; Raise(nameof(Minutes)); }
    }

    string _elapsed = "—";
    /// <summary>How long this account has actually been running, from status.</summary>
    public string Elapsed
    {
        get => _elapsed;
        set { if (_elapsed == value) return; _elapsed = value; Raise(nameof(Elapsed)); }
    }
}

public class AccountRow : INotifyPropertyChanged
{
    public event PropertyChangedEventHandler? PropertyChanged;
    void Raise(string name) => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));

    // Selection is an explicit run decision.  Defaulting this to true caused
    // CHẠY AUTO to launch every configured account on a fresh UI session.
    bool _sel = false;
    public bool Sel
    {
        get => _sel;
        set { if (_sel == value) return; _sel = value; Raise(nameof(Sel)); SelectionChanged?.Invoke(); }
    }
    public string Stt { get; set; } = "";
    string _name = "";
    public string Name { get => _name; set { if (_name == value) return; _name = value; Raise(nameof(Name)); } }
    string _channel = "Kênh 1";
    public string Channel { get => _channel; set { if (_channel == value) return; _channel = value; Raise(nameof(Channel)); } }
    string _pid = "-";
    public string Pid { get => _pid; set { if (_pid == value) return; _pid = value; Raise(nameof(Pid)); } }

    bool _active;
    /// <summary>Whether a Flash client for this account is running right now.</summary>
    public bool Active
    {
        get => _active;
        set { if (_active == value) return; _active = value; Raise(nameof(Active)); Raise(nameof(ActiveBrush)); }
    }

    /// <summary>Green when a client is up, grey when not — read at a glance.</summary>
    public IBrush ActiveBrush => _active
        ? new SolidColorBrush(Color.Parse("#4e9e3a"))
        : new SolidColorBrush(Color.Parse("#55575b"));
    public string Id { get; set; } = "";
    string _link = "";
    public string Link { get => _link; set { if (_link == value) return; _link = value; Raise(nameof(Link)); } }
    string _fps = "";
    public string Fps { get => _fps; set { if (_fps == value) return; _fps = value; Raise(nameof(Fps)); } }
    public List<string> Channels { get; } = new() { "Kênh 1", "Kênh 2", "Kênh 3", "Kênh 4", "Kênh 5" };

    string _group = MainWindow.NoGroup;
    /// <summary>Which group owns this account. Changing it tells the backend.</summary>
    public string Group
    {
        get => _group;
        set
        {
            if (_group == value) return;
            _group = value;
            Raise(nameof(Group));
            GroupChanged?.Invoke(this);
        }
    }

    bool _isKey;
    /// <summary>True for the one account that leads this account's group.</summary>
    public bool IsKey
    {
        get => _isKey;
        set { if (_isKey == value) return; _isKey = value; Raise(nameof(IsKey)); Raise(nameof(KeyMark)); }
    }

    public string KeyMark => _isKey ? "★" : "○";

    /// <summary>Group names offered in the row's dropdown; shared with the window.</summary>
    public List<string> GroupChoices { get; set; } = new() { MainWindow.NoGroup };

    public static Action<AccountRow>? GroupChanged;
    public static Action? SelectionChanged;
    public override string ToString() => Name;
}

public partial class MainWindow : Window
{
    readonly List<AccountRow> _all = new();
    readonly ObservableCollection<AccountRow> _rows = new();
    Process? _py;
    string? _selId;
    string _curGroup = AllTab;
    readonly List<string> _groups = new();
    string _flashExe = "";
    bool _syncingAll;
    bool _loadingGroup;
    bool _loadingDailySettings = true;
    readonly Dictionary<string, JsonElement> _groupInfo = new();
    readonly Dictionary<string, List<string>> _dailySettings = new();
    readonly Dictionary<string, int> _dailyMatBaoCounts = new();
    readonly Dictionary<string, int> _dailyLatTheBaiCounts = new();
    readonly Dictionary<string, Dictionary<string, int>> _dungeonSettings = new();
    readonly Dictionary<string, CheckBox> _dungeonChecks = new();
    readonly Dictionary<string, TextBox> _dungeonCounts = new();

    public const string NoGroup = "Không nhóm";
    public const string AllTab = "Tất cả";

    static readonly string[][] DailyGrid =
    {
        new[] { "THẦN TU", "TRỪ MA", "TRỊ AN", "ĐẤU PET", "TU HÀNH", "NV BANG", "LẬP NHÓM" },
        new[] { "MẬT BẢO", "LẬT BÀI", "PHỤ BẢN", "N.TRƯỜNG", "HÁI/CÂU", "ĐIÊU KHẮC" },
    };
    static readonly string[] Dungeons =
    {
        "Mê Huyễn Động", "Kho Báu Đại Mạc", "Lục Tiên Cảnh", "Liệt Diễm Thâm Uyên",
        "Trở Lại Lang Huyệt", "Quỷ Hút Máu", "Thế Giới Số", "Thám Hiểm"
    };

    public MainWindow()
    {
        InitializeComponent();
        Grid.ItemsSource = _rows;
        // Changing a row's NHÓM dropdown reassigns the account server-side.
        AccountRow.GroupChanged = row =>
        {
            if (_loadingGroup) return;
            Send("set_account_group", new() { ["id"] = row.Id, ["group"] = row.Group });
        };
        AccountRow.SelectionChanged = () => { SyncSelectAll(); UpdateDailySelectedNames(); };
        BuildDailyButtons();
        BuildDungeonList();
        _loadingDailySettings = false;
        // (the train form moved to AutoTrainWindow)
        LoadSampleBosses();
        Opened += (_, _) => StartBackend();
        Closing += (_, _) => { try { if (_py is { HasExited: false }) _py.Kill(); } catch { } };
    }

    void BuildDailyButtons()
    {
        var brush = new SolidColorBrush(Color.Parse("#5a5c60"));
        foreach (var row in DailyGrid)
            foreach (var label in row)
            {
                var b = new Button { Content = label, Classes = { "daily" }, Background = brush, Foreground = Brushes.White };
                if (label == "HÁI/CÂU")
                    b.Click += (_, _) => OpenGatherWindow();
                else if (label == "TRỪ MA")
                {
                    // FEAT-021 mục 2b: Trừ Ma opens its own session for every
                    // TICKED account (like CHẠY AUTO / TRAIN), it is not a step
                    // in the sequential Daily chain, so it does not go through
                    // daily_action and does not use the single selected row.
                    ToolTip.SetTip(b, "Chạy Nhiệm Vụ Trừ Ma (10 lượt/ngày) cho các account đang tick.\n"
                                      + "Tự đăng nhập nếu client chưa mở. Bấm lại khi đang chạy sẽ không nhân đôi phiên.");
                    b.Click += (_, _) =>
                    {
                        var ids = CheckedIds();
                        if (ids.Count == 0)
                        {
                            Log("TRỪ MA: tick ít nhất một account trước khi chạy.");
                            return;
                        }
                        Send("truma_start", new() { ["ids"] = ids });
                    };
                }
                else if (label == "TRỊ AN")
                {
                    // FEAT-022 mục 2b — same independent-session shape as TRỪ MA.
                    ToolTip.SetTip(b, "Chạy Nhiệm Vụ Trị An / Phi Tặc (10 lượt/ngày) cho các account đang tick.\n"
                                      + "Tự đăng nhập nếu client chưa mở. Bước dùng vật phẩm trong túi CHƯA xong — xem FEAT-022 mục 14.");
                    b.Click += (_, _) =>
                    {
                        var ids = CheckedIds();
                        if (ids.Count == 0)
                        {
                            Log("TRỊ AN: tick ít nhất một account trước khi chạy.");
                            return;
                        }
                        Send("trian_start", new() { ["ids"] = ids });
                    };
                }
                else
                    b.Click += (_, _) =>
                    {
                        var daily = Grid.SelectedItem as AccountRow;
                        if (daily is null)
                        {
                            Log("Chọn một dòng account trước khi chạy tác vụ.");
                            return;
                        }
                        Send("daily_action", new() { ["name"] = label, ["id"] = daily.Id });
                    };
                DailyButtons.Items.Add(b);
            }
    }

    void BuildDungeonList()
    {
        foreach (var d in Dungeons)
        {
            var sp = new StackPanel { Orientation = Orientation.Horizontal, Spacing = 5, Margin = new Avalonia.Thickness(0, 2) };
            var check = new CheckBox { Content = d, Width = 154,
                Foreground = new SolidColorBrush(Color.Parse("#d4d4d4")) };
            var count = new TextBox { Text = "1", Width = 30, Height = 20, MinHeight = 0,
                Padding = new Avalonia.Thickness(3, 0), VerticalContentAlignment = Avalonia.Layout.VerticalAlignment.Center };
            var hard = d is "Liệt Diễm Thâm Uyên" or "Trở Lại Lang Huyệt" or "Quỷ Hút Máu" or "Thế Giới Số";
            sp.Children.Add(check);
            sp.Children.Add(new TextBlock { Text = "lượt", VerticalAlignment = Avalonia.Layout.VerticalAlignment.Center });
            sp.Children.Add(count);
            sp.Children.Add(new TextBlock { Text = hard ? "Khó" : "Dễ", Width = 27,
                Foreground = hard ? Brushes.Orange : new SolidColorBrush(Color.Parse("#9aa0a6")),
                VerticalAlignment = Avalonia.Layout.VerticalAlignment.Center });
            check.IsCheckedChanged += (_, _) => SaveCurrentDungeonSettings();
            count.TextChanged += (_, _) => SaveCurrentDungeonSettings();
            _dungeonChecks[d] = check;
            _dungeonCounts[d] = count;
            DungeonList.Items.Add(sp);
        }
    }

    void LoadSampleBosses()
    {
        var sample = new[]
        {
            ("Thất Sắc Kê (lv5)", 2), ("Thỏ Điên Răng Vổ (lv10)", 2), ("Trưởng Lão Sơn Quái (lv15)", 2),
            ("Ma Vương Bát Giác (lv20)", 2), ("Quân Sư Cẩu Đầu (lv20)", 2), ("Gấu Tuyết Tàn Bạo (lv25)", 2),
        };
        BossGrid.ItemsSource = sample.Select(s => new { Sel = false, Name = s.Item1, Kind = "Mặt Đất", Turns = s.Item2 }).ToList();
    }

    /// <summary>
    /// Empties the left-hand detail form and drops the edit target. The group
    /// dropdown falls back to the tab being viewed so THÊM lands in that group.
    /// </summary>
    void ClearForm()
    {
        _selId = null;
        TName.Text = ""; TLink.Text = ""; TFps.Text = "";
        Grid.SelectedItem = null;
    }

    void ApplyFilter()
    {
        for (int i = 0; i < _all.Count; i++)
        {
            var row = _all[i];
            row.Stt = (i + 1).ToString();
            if (i >= _rows.Count) _rows.Add(row);
            else if (!ReferenceEquals(_rows[i], row)) _rows[i] = row;
        }
        while (_rows.Count > _all.Count) _rows.RemoveAt(_rows.Count - 1);
        SyncSelectAll();
        UpdateDailySelectedNames();
    }

    // ---------------- bridge ----------------
    static string FindProjectRoot()
    {
        var dir = AppContext.BaseDirectory;
        for (int i = 0; i < 8 && dir != null; i++)
        {
            if (File.Exists(Path.Combine(dir, "app", "backend.py"))) return dir;
            // The shipped build lives at <repo>/VptAvalonia, one level above src/,
            // so walking up only finds "src/app/backend.py" — not "app/backend.py"
            // as it did when the exe sat in src/avalonia_ui/VptAvalonia/bin/Release.
            // Without this probe the backend never starts and every list renders empty.
            var src = Path.Combine(dir, "src");
            if (File.Exists(Path.Combine(src, "app", "backend.py"))) return src;
            dir = Path.GetDirectoryName(dir.TrimEnd(Path.DirectorySeparatorChar));
        }
        return AppContext.BaseDirectory;
    }

    void StartBackend()
    {
        var root = FindProjectRoot();
        var psi = new ProcessStartInfo
        {
            FileName = "python", Arguments = "-m app.backend", WorkingDirectory = root,
            UseShellExecute = false, RedirectStandardInput = true, RedirectStandardOutput = true,
            RedirectStandardError = true, CreateNoWindow = true, StandardOutputEncoding = Encoding.UTF8,
        };
        psi.EnvironmentVariables["PYTHONIOENCODING"] = "utf-8";
        try
        {
            _py = new Process { StartInfo = psi };
            _py.OutputDataReceived += (_, e) => { if (!string.IsNullOrEmpty(e.Data)) OnLine(e.Data); };
            _py.Start();
            _py.BeginOutputReadLine();
            Log("Đã kết nối backend.");
            // Load the spot catalogue up front. It is a small JSON read, but
            // asking for it only when the Hái/Câu window opens meant the combo
            // sat empty for a visible beat every single time.
            Send("list_spots");
            // Explicit acceptance mode only. Normal launches never run this.
            if (Environment.GetCommandLineArgs().Any(a =>
                    string.Equals(a, "--isolated-dungeon-test", StringComparison.OrdinalIgnoreCase)))
            {
                System.Threading.ThreadPool.QueueUserWorkItem(_ =>
                {
                    System.Threading.Thread.Sleep(800);
                    Dispatcher.UIThread.Post(() => Send("isolated_dungeon_test",
                        new Dictionary<string, object>
                        {
                            ["id"] = "acc_2",
                            ["quests"] = new[]
                            {
                                "Lục Tiên Cảnh",
                                "Liệt Diễm Thâm Uyên"
                            }
                        }));
                });
            }
        }
        catch (Exception ex) { Log("Không chạy được backend: " + ex.Message); }
    }

    void Send(string cmd, Dictionary<string, object>? extra = null)
    {
        if (_py is null || _py.HasExited) return;
        var d = new Dictionary<string, object> { ["cmd"] = cmd };
        if (extra != null) foreach (var kv in extra) d[kv.Key] = kv.Value;
        try { _py.StandardInput.WriteLine(JsonSerializer.Serialize(d)); _py.StandardInput.Flush(); } catch { }
    }

    void OnLine(string line)
    {
        JsonElement m;
        try { m = JsonSerializer.Deserialize<JsonElement>(line); } catch { return; }
        Dispatcher.UIThread.Post(() => Handle(m));
    }

    static string S(JsonElement e, string k)
        => e.TryGetProperty(k, out var v) ? (v.ValueKind == JsonValueKind.String ? v.GetString() ?? "" : v.ToString()) : "";

    void Handle(JsonElement m)
    {
        switch (S(m, "type"))
        {
            case "accounts": UpdateGrid(m); break;
            case "daily_settings": UpdateDailySettings(m); break;
            case "dungeon_settings": UpdateDungeonSettings(m); break;
            case "groups": UpdateGroups(m); break;
            case "settings": _flashExe = S(m, "flash_exe"); break;
            case "maps": UpdateMaps(m); break;
            case "position": UpdatePosition(m); break;
            case "team": UpdateTeam(m); break;
            case "log": Log(S(m, "msg")); break;
            case "train": UpdateTrain(m); break;
            case "spots": UpdateSpots(m); break;
            case "spot_gather": UpdateGatherStatus(m); break;
            case "boss_catalog": UpdateBossCatalog(m); break;
            case "boss_scan": _bossScan?.ShowScan(m); break;
            case "boss_test": _bossScan?.ShowTest(m); break;
            case "bossteam": UpdateBossTeam(m); break;
            // Separate channel on purpose: a v2 message must never be able to
            // drive the old Auto Boss window's state.
            case "bossteam_v2_status":
                _autoBossV2?.AppendLog($"[{S(m, "state")}] {S(m, "status")} — {S(m, "detail")}");
                break;
            case "error": Log("[LỖI] " + S(m, "cmd") + ": " + S(m, "detail")); break;
        }
    }

    void UpdateGrid(JsonElement m)
    {
        if (!m.TryGetProperty("rows", out var rows)) return;
        var keep = new HashSet<string>(_rows.Where(r => r.Sel).Select(r => r.Id));
        bool first = _all.Count == 0;
        var existing = _all.ToDictionary(r => r.Id);
        var refreshed = new List<AccountRow>();
        // The status loop rewrites every row every 3s. Group has a setter that
        // notifies the backend, so without this guard each refresh would echo a
        // set_account_group back for every account.
        _loadingGroup = true;
        var choices = new List<string> { NoGroup };
        choices.AddRange(_groups);
        var keyIds = new HashSet<string>(
            _groupInfo.Values.Select(g => S(g, "key_account")).Where(k => k.Length > 0));
        foreach (var r in rows.EnumerateArray())
        {
            string id = S(r, "id"), pid = S(r, "pid");
            bool active = S(r, "active") == "True" || S(r, "active") == "true";
            bool isNew = !existing.TryGetValue(id, out var row);
            row ??= new AccountRow { Id = id, Sel = keep.Contains(id) };
            row.Name = S(r, "name");
            row.Channel = string.IsNullOrEmpty(S(r, "channel")) ? "Kênh 1" : S(r, "channel");
            row.Group = string.IsNullOrEmpty(S(r, "group")) ? NoGroup : S(r, "group");
            row.GroupChoices = choices;
            row.IsKey = keyIds.Contains(id);
            row.Pid = pid == "0" || pid == "" ? "-" : pid;
            row.Active = active;
            row.Link = S(r, "link");
            row.Fps = S(r, "fps");
            if (isNew && !first) row.Sel = keep.Contains(id);
            refreshed.Add(row);
        }
        _all.Clear();
        _all.AddRange(refreshed);
        _loadingGroup = false;
        ApplyFilter();
        if (_selId != null)
            Grid.SelectedItem = _rows.FirstOrDefault(r => r.Id == _selId);
        UpdateDailySelectedNames();
        // The key picker lists rows from _all, which this method just rebuilt.
        // Without refreshing it here an account removed from the group stayed
        // in the dropdown until the next groups message.
        // (the key picker lives in AutoTrainWindow and is refilled by SetContext)
        PushTrainContext();
        PushBossContext();
        // The detect window only lists clients that are up, and this refresh is
        // what recomputed that flag.
        _bossScan?.SetAccounts(_all);
    }

    void UpdateGroups(JsonElement m)
    {
        _groups.Clear();
        _groupInfo.Clear();
        if (m.TryGetProperty("groups", out var gs) && gs.ValueKind == JsonValueKind.Array)
            foreach (var g in gs.EnumerateArray())
            {
                var name = S(g, "name");
                if (name.Length == 0) continue;
                _groups.Add(name);
                _groupInfo[name] = g.Clone();
            }
        if (_curGroup != AllTab && !_groups.Contains(_curGroup)) _curGroup = AllTab;

        // Keys are a group property, so refresh every row's star from the groups.
        var keys = new HashSet<string>();
        foreach (var info in _groupInfo.Values)
        {
            var k = S(info, "key_account");
            if (k.Length > 0) keys.Add(k);
        }
        var choices = new List<string> { NoGroup };
        choices.AddRange(_groups);
        foreach (var r in _all)
        {
            r.GroupChoices = choices;
            r.IsKey = keys.Contains(r.Id);
        }

        PushTrainContext();
        PushBossContext();
    }

    void Log(string s) { LogBox.Text += s + "\n"; LogBox.CaretIndex = LogBox.Text.Length; }
    List<string> CheckedIds() => _rows.Where(r => r.Sel).Select(r => r.Id).ToList();

    // ---------------- handlers ----------------
    void OnRowSelected(object? s, SelectionChangedEventArgs e)
    {
        if (Grid.SelectedItem is not AccountRow r)
        {
            UpdateDailySelectedNames();
            return;
        }
        _selId = r.Id; TName.Text = r.Name; TLink.Text = r.Link; TFps.Text = r.Fps;
        _curGroup = r.Group == NoGroup ? AllTab : r.Group;
        LoadDailySettings(r.Id);
        LoadDungeonSettings(r.Id);
        PushTrainContext();
        PushBossContext();
    }

    void UpdateDailySelectedNames()
    {
        var names = _rows.Where(r => r.Sel).Select(r => r.Name).ToList();
        DailySelectedNames.Text = names.Count == 0
            ? "Chưa chọn account"
            : "Đã chọn: " + string.Join(", ", names);
        DailySelectedNames.Foreground = names.Count == 0
            ? new SolidColorBrush(Color.Parse("#9aa0a6")) : Brushes.White;
    }

    IEnumerable<(CheckBox box, string task)> DailyTaskBoxes()
    {
        // Execution order is the visible grid order: top-to-bottom in a
        // column, then left-to-right across columns.
        yield return (DlyVip, "VIP");
        yield return (DlyMatBao, "MẬT BẢO");
        yield return (DlyDieuKhac, "ĐIÊU KHẮC");
        yield return (DlyLatTheBai, "LẬT THẺ BÀI");
        yield return (DlyPhuBan, "PHỤ BẢN");
        yield return (DlyHanhLang, "HÀNH LANG");
        yield return (DlyThanTu, "THẦN TU");
        yield return (DlyTuHanh, "TU HÀNH");
        yield return (DlyTruMa, "TRỪ MA");
        yield return (DlyTriAn, "TRỊ AN");
    }

    List<string> DailyTasks()
        => DailyTaskBoxes().Where(x => x.box.IsChecked == true).Select(x => x.task).ToList();

    void LoadDailySettings(string accountId)
    {
        _loadingDailySettings = true;
        var selected = _dailySettings.TryGetValue(accountId, out var saved)
            ? new HashSet<string>(saved) : new HashSet<string>();
        foreach (var (box, task) in DailyTaskBoxes()) box.IsChecked = selected.Contains(task);
        DlyMatBaoCount.Text = (_dailyMatBaoCounts.TryGetValue(accountId, out var count) ? count : 20).ToString();
        DlyLatTheBaiCount.Text = (_dailyLatTheBaiCounts.TryGetValue(accountId, out var cards) ? cards : 10).ToString();
        _loadingDailySettings = false;
    }

    void OnDailySettingChanged(object? s, RoutedEventArgs e)
        => SaveCurrentDailySettings();

    void SaveCurrentDailySettings()
    {
        if (_loadingDailySettings || Grid.SelectedItem is not AccountRow row) return;
        var tasks = DailyTasks();
        int count = int.TryParse(DlyMatBaoCount.Text, out var parsed) ? Math.Clamp(parsed, 1, 999) : 20;
        if (DlyMatBaoCount.Text != count.ToString()) DlyMatBaoCount.Text = count.ToString();
        // Thẻ bài pha lê: game chỉ cho 10 lượt phát bài/ngày.
        int cards = int.TryParse(DlyLatTheBaiCount.Text, out var parsedCards) ? Math.Clamp(parsedCards, 1, 10) : 10;
        if (DlyLatTheBaiCount.Text != cards.ToString()) DlyLatTheBaiCount.Text = cards.ToString();
        _dailySettings[row.Id] = tasks;
        _dailyMatBaoCounts[row.Id] = count;
        _dailyLatTheBaiCounts[row.Id] = cards;
        Send("save_daily_settings", new() { ["id"] = row.Id, ["tasks"] = tasks,
            ["mat_bao_count"] = count, ["lat_the_bai_count"] = cards });
    }

    void UpdateDailySettings(JsonElement m)
    {
        _dailySettings.Clear();
        _dailyMatBaoCounts.Clear();
        _dailyLatTheBaiCounts.Clear();
        if (m.TryGetProperty("accounts", out var accounts) && accounts.ValueKind == JsonValueKind.Object)
            foreach (var account in accounts.EnumerateObject())
            {
                if (account.Value.ValueKind == JsonValueKind.Array)
                {
                    _dailySettings[account.Name] = account.Value.EnumerateArray()
                        .Select(x => x.GetString() ?? "").Where(x => x.Length > 0).ToList();
                    _dailyMatBaoCounts[account.Name] = 20;
                    _dailyLatTheBaiCounts[account.Name] = 10;
                }
                else if (account.Value.ValueKind == JsonValueKind.Object)
                {
                    if (account.Value.TryGetProperty("tasks", out var tasks) && tasks.ValueKind == JsonValueKind.Array)
                        _dailySettings[account.Name] = tasks.EnumerateArray()
                            .Select(x => x.GetString() ?? "").Where(x => x.Length > 0).ToList();
                    _dailyMatBaoCounts[account.Name] = account.Value.TryGetProperty("mat_bao_count", out var count)
                        && count.TryGetInt32(out var value) ? Math.Max(1, value) : 20;
                    _dailyLatTheBaiCounts[account.Name] = account.Value.TryGetProperty("lat_the_bai_count", out var cards)
                        && cards.TryGetInt32(out var cardValue) ? Math.Clamp(cardValue, 1, 10) : 10;
                }
            }
        if (Grid.SelectedItem is AccountRow row) LoadDailySettings(row.Id);
    }

    void OnRunDailyAuto(object? s, RoutedEventArgs e)
    {
        var selected = _rows.Where(r => r.Sel).ToList();
        if (selected.Count == 0)
        {
            Log("Chọn ít nhất một tài khoản trước khi chạy Daily.");
            return;
        }
        var plans = selected.Select(row => new Dictionary<string, object>
        {
            ["id"] = row.Id,
            ["tasks"] = _dailySettings.TryGetValue(row.Id, out var tasks) ? tasks : new List<string>(),
            ["mat_bao_count"] = _dailyMatBaoCounts.TryGetValue(row.Id, out var count) ? count : 20,
            ["lat_the_bai_count"] = _dailyLatTheBaiCounts.TryGetValue(row.Id, out var cards) ? cards : 10,
            ["dungeons"] = _dungeonSettings.TryGetValue(row.Id, out var dungeons)
                ? dungeons : new Dictionary<string, int>()
        }).ToList();
        if (plans.All(p => ((List<string>)p["tasks"]).Count == 0))
        {
            Log("Các account đã chọn chưa có tác vụ Daily nào được bật.");
            return;
        }
        Send("daily_plan", new() { ["plans"] = plans });
    }

    void OnStopDaily(object? s, RoutedEventArgs e)
    {
        var ids = _rows.Where(r => r.Sel).Select(r => r.Id).ToList();
        Send("daily_stop", new() { ["ids"] = ids });
        // Trừ Ma / Trị An sessions are started from the same tab but live
        // outside the Daily queue (FEAT-021/022 mục 2b), so the Daily stop
        // button has to stop them too — otherwise the tab looks stopped while
        // a session runs on.
        Send("truma_stop", new() { ["ids"] = ids });
        Send("trian_stop", new() { ["ids"] = ids });
    }

    void OnDungeonSettings(object? s, RoutedEventArgs e)
    {
        if (Grid.SelectedItem is not AccountRow row)
        {
            Log("Chọn một account trước khi mở cài đặt phụ bản.");
            return;
        }
        LoadDungeonSettings(row.Id);
        FeatureTabs.SelectedIndex = 1;
    }

    void LoadDungeonSettings(string accountId)
    {
        _loadingDailySettings = true;
        var saved = _dungeonSettings.TryGetValue(accountId, out var rows) ? rows : new();
        foreach (var name in Dungeons)
        {
            var count = saved.TryGetValue(name, out var value) ? Math.Clamp(value, 1, 3) : 1;
            _dungeonChecks[name].IsChecked = saved.ContainsKey(name);
            _dungeonCounts[name].Text = count.ToString();
        }
        _loadingDailySettings = false;
    }

    void SaveCurrentDungeonSettings()
    {
        if (_loadingDailySettings || Grid.SelectedItem is not AccountRow row) return;
        var selected = new Dictionary<string, int>();
        foreach (var name in Dungeons)
        {
            var count = int.TryParse(_dungeonCounts[name].Text, out var parsed) ? Math.Clamp(parsed, 1, 3) : 1;
            if (_dungeonCounts[name].Text != count.ToString()) _dungeonCounts[name].Text = count.ToString();
            if (_dungeonChecks[name].IsChecked == true) selected[name] = count;
        }
        _dungeonSettings[row.Id] = selected;
        Send("save_dungeon_settings", new() { ["id"] = row.Id, ["dungeons"] = selected });
    }

    void UpdateDungeonSettings(JsonElement m)
    {
        _dungeonSettings.Clear();
        if (m.TryGetProperty("accounts", out var accounts) && accounts.ValueKind == JsonValueKind.Object)
            foreach (var account in accounts.EnumerateObject())
            {
                var rows = new Dictionary<string, int>();
                if (account.Value.ValueKind == JsonValueKind.Object)
                    foreach (var dungeon in account.Value.EnumerateObject())
                        if (dungeon.Value.TryGetInt32(out var count) && count > 0)
                            rows[dungeon.Name] = Math.Clamp(count, 1, 3);
                _dungeonSettings[account.Name] = rows;
            }
        if (Grid.SelectedItem is AccountRow row) LoadDungeonSettings(row.Id);
    }

    void OnMatBaoCountChanged(object? s, TextChangedEventArgs e)
    {
        if (_loadingDailySettings) return;
        SaveCurrentDailySettings();
    }

    void ChangeMatBaoCount(int delta)
    {
        int value = int.TryParse(DlyMatBaoCount.Text, out var parsed) ? parsed : 20;
        DlyMatBaoCount.Text = Math.Clamp(value + delta, 1, 999).ToString();
    }

    void OnMatBaoPlus(object? s, RoutedEventArgs e) => ChangeMatBaoCount(1);
    void OnMatBaoMinus(object? s, RoutedEventArgs e) => ChangeMatBaoCount(-1);

    void OnLatTheBaiCountChanged(object? s, TextChangedEventArgs e)
    {
        if (_loadingDailySettings) return;
        SaveCurrentDailySettings();
    }

    void ChangeLatTheBaiCount(int delta)
    {
        int value = int.TryParse(DlyLatTheBaiCount.Text, out var parsed) ? parsed : 1;
        DlyLatTheBaiCount.Text = Math.Clamp(value + delta, 1, 10).ToString();
    }

    void OnLatTheBaiPlus(object? s, RoutedEventArgs e) => ChangeLatTheBaiCount(1);
    void OnLatTheBaiMinus(object? s, RoutedEventArgs e) => ChangeLatTheBaiCount(-1);

    Dictionary<string, object> Form() => new()
    {
        ["name"] = TName.Text ?? "", ["link"] = TLink.Text ?? "", ["fps"] = TFps.Text ?? "",
        ["group"] = _all.FirstOrDefault(r => r.Id == _selId)?.Group ?? NoGroup,
    };

    void OnAdd(object? s, RoutedEventArgs e) => Send("add_account", Form());
    void OnUpdate(object? s, RoutedEventArgs e)
    {
        var f = Form();
        if (_selId != null) f["id"] = _selId;
        Send("update_account", f);
    }
    void OnDelete(object? s, RoutedEventArgs e)
    {
        if (Grid.SelectedItem is not AccountRow row)
        {
            Log("Chọn đúng một dòng account trước khi xóa.");
            return;
        }
        Send("delete_account", new() { ["id"] = row.Id });
    }
    void OnFps(object? s, RoutedEventArgs e) => Log("FPS: chưa cấu hình");
    void OnBringFront(object? s, RoutedEventArgs e)
    {
        var ids = _selId != null ? new List<string> { _selId } : CheckedIds();
        Send("front", new() { ["ids"] = ids });
    }
    void OnSettings(object? s, RoutedEventArgs e)
    {
        var w = new SettingsWindow(_flashExe);
        w.Saved += path =>
        {
            _flashExe = path;
            Send("save_settings", new() { ["flash_exe"] = path });
        };
        w.ShowDialog(this);
    }
    void OnSelectAll(object? s, RoutedEventArgs e)
    {
        if (_syncingAll || s is not CheckBox cb) return;
        // null (indeterminate) is only ever set by SyncSelectAll reflecting a
        // mixed selection — treat a user click on it as "select all".
        bool v = cb.IsChecked != false;
        foreach (var r in _rows) r.Sel = v;
        SyncSelectAll();
    }

    /// <summary>Mirrors the rows' tick state onto the header checkbox.</summary>
    void SyncSelectAll()
    {
        _syncingAll = true;
        ChkAll.IsChecked = _rows.Count == 0 ? false
            : _rows.All(r => r.Sel) ? true
            : _rows.Any(r => r.Sel) ? null
            : false;
        _syncingAll = false;
    }

    void OnLogin(object? s, RoutedEventArgs e) => Send("login", new() { ["ids"] = CheckedIds() });
    void OnLoginAll(object? s, RoutedEventArgs e) => Send("login", new() { ["ids"] = _rows.Select(r => r.Id).ToList() });
    /// <summary>Header of the feature tab currently on screen.</summary>
    string ActiveFeature() => (FeatureTabs.SelectedItem as TabItem)?.Header as string ?? "";

    // The top buttons act on whichever feature tab is open, so AUTO ALL starts
    // the train when the Train tab is showing instead of meaning two things.
    void OnAutoAll(object? s, RoutedEventArgs e)
    {
        // Train has its own window now, reached from Tự động hoàn toàn.
        Send("auto_all", new() { ["ids"] = CheckedIds() });
    }

    void OnStopAuto(object? s, RoutedEventArgs e)
    {
        // Train has its own window now, reached from Tự động hoàn toàn.
        Send("stop_auto", new() { ["ids"] = CheckedIds() });
    }
    void OnStopAll(object? s, RoutedEventArgs e) => Send("stop_all");
    void OnArrange(object? s, RoutedEventArgs e) => Send("arrange", new() { ["ids"] = CheckedIds() });
    void OnHide(object? s, RoutedEventArgs e) => Send("hide", new() { ["ids"] = CheckedIds() });
    void OnMinimize(object? s, RoutedEventArgs e) => Send("minimize", new() { ["ids"] = CheckedIds() });
    void OnRestore(object? s, RoutedEventArgs e) => Send("restore", new() { ["ids"] = CheckedIds() });
    void OnClose(object? s, RoutedEventArgs e) => Send("close", new() { ["ids"] = CheckedIds() });
    // ---------------- hái dược / câu cá ----------------
    // Two selection models because the game behaves differently for each
    // (measured, AUTO_TRAIN_DECISIONS 57 and 67):
    //   herbs - a spot yields a RANDOM herb, so a LEVEL is the whole choice
    //   fish  - a spot is FIXED to one fish, so the FISH is the choice and the
    //           tool already knows which map/coordinate has it
    readonly List<Dictionary<string, string>> _herbSpots = new();
    readonly List<Dictionary<string, string>> _fishSpots = new();

    void UpdateSpots(JsonElement m)
    {
        _herbSpots.Clear();
        _fishSpots.Clear();
        if (m.TryGetProperty("herbs", out var herbs))
            foreach (var r in herbs.EnumerateArray())
                _herbSpots.Add(new Dictionary<string, string>
                {
                    ["level"] = S(r, "level"), ["text"] = S(r, "text"),
                });
        if (m.TryGetProperty("fish", out var fish))
            foreach (var r in fish.EnumerateArray())
                _fishSpots.Add(new Dictionary<string, string>
                {
                    ["fish"] = S(r, "fish"), ["level"] = S(r, "level"),
                    ["text"] = S(r, "text"),
                });
        foreach (var w in _gatherWindows.Values) w.SetSpots(_herbSpots, _fishSpots);
        _autoGather?.SetSpots(AllSpotLabels());
    }

    // ---------------- dàn acc tự động ----------------
    // Herbs and fish in ONE list. The owner asked to pick a spot and have the
    // tool work out which it is, so the label carries the kind: anything that
    // starts with "Câu — " is a fish, everything else is a herb level. That
    // keeps the two from ever contradicting each other, which a separate
    // kind-selector next to the list would have allowed.
    const string FishPrefix = "Câu — ";
    const string HerbPrefix = "Hái — ";

    List<string> AllSpotLabels()
    {
        var all = new List<string>();
        all.AddRange(_herbSpots.Select(r => HerbPrefix + r["text"]));
        all.AddRange(_fishSpots.Select(r => FishPrefix + r["text"]));
        return all;
    }

    /// <summary>The spot_start payload a plan row's chosen label stands for.</summary>
    Dictionary<string, object>? SpotPayload(string label)
    {
        if (label.StartsWith(FishPrefix, StringComparison.Ordinal))
        {
            var text = label.Substring(FishPrefix.Length);
            var row = _fishSpots.FirstOrDefault(r => r["text"] == text);
            if (row == null) return null;
            return new Dictionary<string, object>
            {
                ["kind"] = "ca", ["fish"] = row["fish"],
                ["level"] = ParseInt(row["level"], 1),
            };
        }
        if (label.StartsWith(HerbPrefix, StringComparison.Ordinal))
        {
            var text = label.Substring(HerbPrefix.Length);
            var row = _herbSpots.FirstOrDefault(r => r["text"] == text);
            if (row == null) return null;
            return new Dictionary<string, object>
            {
                ["kind"] = "duoc", ["fish"] = "",
                ["level"] = ParseInt(row["level"], 1),
            };
        }
        return null;
    }

    // The multi-account plan lives in its own window, opened from the "Tự động
    // hoàn toàn" tab. That tab is a home for several automation functions, so
    // no single one of them may occupy it.
    AutoGatherWindow? _autoGather;

    void OnOpenAutoGather(object? s, RoutedEventArgs e)
    {
        if (_autoGather != null) { _autoGather.Activate(); return; }
        var w = new AutoGatherWindow(_rows, AllSpotLabels());
        w.Command += (cmd, extra) => Send(cmd, extra);
        w.ResolveSpot = SpotPayload;
        w.Closed += (_, _) => _autoGather = null;
        _autoGather = w;
        if (_herbSpots.Count == 0 && _fishSpots.Count == 0) Send("list_spots");
        w.Show(this);
    }

    // One settings window per account, keyed by account id. Reopening the same
    // account brings its window forward rather than stacking a second copy with
    // a different half-filled config - two windows for one character is exactly
    // the confusion the per-account split was meant to remove.
    readonly Dictionary<string, GatherWindow> _gatherWindows = new();

    void OpenGatherWindow()
    {
        if (Grid.SelectedItem is not AccountRow row)
        {
            Log("Chọn (bôi đen) một tài khoản ở bảng trên trước.");
            return;
        }
        if (_gatherWindows.TryGetValue(row.Id, out var open))
        {
            open.Activate();
            return;
        }
        // Prefer the flash window's own title, so the window names the client
        // the user is looking at rather than the tool's label for it.
        var name = row.Name;
        var w = new GatherWindow(row.Id, name, _herbSpots, _fishSpots);
        w.Command += (cmd, extra) => Send(cmd, extra);
        w.Closed += (_, _) => _gatherWindows.Remove(row.Id);
        _gatherWindows[row.Id] = w;
        if (_herbSpots.Count == 0 && _fishSpots.Count == 0) Send("list_spots");
        w.Show(this);
    }

    // Progress goes to the log, one line per account, and only when that
    // account's line actually changed. The settings window closes as soon as
    // BẮT ĐẦU is pressed, so it is not there to show anything - and the old
    // single status label concatenated every account into one string, which
    // stopped being readable the moment a second account was running.
    readonly Dictionary<string, string> _gatherLast = new();

    void UpdateGatherStatus(JsonElement m)
    {
        if (!m.TryGetProperty("accounts", out var accounts)) return;
        foreach (var r in accounts.EnumerateArray())
        {
            var id = S(r, "account_id");
            var got = "";
            if (r.TryGetProperty("products", out var ps) && ps.ValueKind == JsonValueKind.Array)
                got = string.Join(", ", ps.EnumerateArray().Select(p => p.GetString()));
            // The plan window shows the running clock; the log shows changes.
            _autoGather?.ShowElapsed(id, ParseInt(S(r, "elapsed_seconds"), 0));

            var line = $"{Named(id)}: {S(r, "stage")} — {S(r, "picks")} lần"
                       + (got.Length > 0 ? $", nhận: {got}" : "");
            if (_gatherLast.TryGetValue(id, out var was) && was == line) continue;
            _gatherLast[id] = line;
            Log("Hái/Câu  " + line);
        }
    }

    string Named(string accountId) =>
        _rows.FirstOrDefault(r => r.Id == accountId)?.Name ?? accountId;

    // ---------------- train (giao diện nằm ở AutoTrainWindow) ----------------
    // MainWindow keeps only what the whole app needs - the map list, the group
    // state, the key setter used by the account grid - and pushes it into the
    // train window. The form itself moved out with its handlers.
    readonly List<string> _maps = new();
    AutoTrainWindow? _autoTrain;

    void OnOpenAutoTrain(object? s, RoutedEventArgs e)
    {
        if (_autoTrain != null) { _autoTrain.Activate(); PushTrainContext(); return; }
        var w = new AutoTrainWindow();
        w.Command += (cmd, extra) => Send(cmd, extra);
        w.Log = Log;
        w.Closed += (_, _) => _autoTrain = null;
        _autoTrain = w;
        PushTrainContext();
        w.Show(this);
    }

    /// <summary>Mirror the current group/account/map state into the train window.</summary>
    void PushTrainContext()
    {
        if (_autoTrain is null) return;
        JsonElement? info = _curGroup != AllTab && _groupInfo.TryGetValue(_curGroup, out var g)
            ? g : null;
        _autoTrain.SetContext(_curGroup, info, _all, _maps);
    }

    // ---------------- auto boss ----------------
    // Two windows because they are two jobs: the run window plans a run that has
    // not started, the detect window works a client that is open right now. They
    // meet through the saved catalogue - detect writes it, the run window
    // mirrors it - so neither has to reach into the other.
    //
    // The catalogue is ONE flat list (owner's call, 2026-08-19): a boss shows up
    // in Auto Boss Team no matter which map is selected there, so there is
    // nothing here to key by map any more.
    AutoBossWindow? _autoBoss;
    BossScanWindow? _bossScan;
    List<BossRow> _bossCatalog = new();

    void OnOpenAutoBoss(object? s, RoutedEventArgs e)
    {
        if (_autoBoss != null) { _autoBoss.Activate(); PushBossContext(); return; }
        var w = new AutoBossWindow();
        w.Command += (cmd, extra) => Send(cmd, extra);
        w.OpenScan = OpenBossScan;
        // Anything this window started belongs to it: stop the try when it goes.
        w.Closed += (_, _) => { _autoBoss = null; Send("boss_test_stop"); };
        _autoBoss = w;
        PushBossContext();
        if (_bossCatalog.Count == 0) Send("list_bosses");
        w.Show(this);
    }

    // AUTO BOSS (MỚI): a deliberately separate entry point. It shares no window,
    // no command and no state with OnOpenAutoBoss above, so the old path cannot
    // be broken by work on the new one (FEAT-031, chốt 2026-08-29).
    AutoBossV2Window? _autoBossV2;

    void OnOpenAutoBossV2(object? s, RoutedEventArgs e)
    {
        if (_autoBossV2 != null) { _autoBossV2.Activate(); return; }
        var w = new AutoBossV2Window();
        w.Command += (cmd, extra) => Send(cmd, extra);
        w.Closed += (_, _) => { _autoBossV2 = null; Send("bossteam_v2_stop"); };
        _autoBossV2 = w;
        w.Show(this);
        Send("bossteam_v2_status");
    }

    void OpenBossScan()
    {
        if (_bossScan != null) { _bossScan.Activate(); return; }
        var w = new BossScanWindow(_all);
        w.Command += (cmd, extra) => Send(cmd, extra);
        w.Closed += (_, _) => { _bossScan = null; Send("boss_test_stop"); };
        _bossScan = w;
        w.Show(this);
    }

    /// <summary>Mirror the account and map lists into the boss window.</summary>
    void PushBossContext()
    {
        if (_autoBoss is null) return;
        // The team is built from the five slots in that window, so it needs the
        // accounts themselves - not the group tab the main window is showing.
        _autoBoss.SetContext(_all, _maps);
        _autoBoss.SetCatalog(_bossCatalog);
    }

    void UpdateBossCatalog(JsonElement m)
    {
        _bossCatalog = new List<BossRow>();
        if (m.TryGetProperty("bosses", out var bosses) && bosses.ValueKind == JsonValueKind.Array)
            foreach (var b in bosses.EnumerateArray())
                _bossCatalog.Add(new BossRow
                {
                    Name = S(b, "name"),
                    Type = b.TryGetProperty("type", out var t) && t.TryGetInt64(out var tv) ? tv : 0,
                    Resource = b.TryGetProperty("resource", out var r) && r.TryGetInt64(out var rv) ? rv : 0,
                    Count = ParseInt(S(b, "count"), 0),
                });
        _autoBoss?.SetCatalog(_bossCatalog);
    }

    string _bossLast = "";

    void UpdateBossTeam(JsonElement m)
    {
        var line = $"Auto boss [{S(m, "mode")}]: {S(m, "stage")}"
                 + (S(m, "detail").Length > 0 ? $" — {S(m, "detail")}" : "");
        if (m.TryGetProperty("accounts", out var accs) && accs.ValueKind == JsonValueKind.Array)
        {
            var parts = new List<string>();
            foreach (var a in accs.EnumerateArray())
            {
                var total = 0;
                if (a.TryGetProperty("battles", out var b) && b.ValueKind == JsonValueKind.Object)
                    foreach (var kv in b.EnumerateObject())
                        if (kv.Value.TryGetInt32(out var n)) total += n;
                parts.Add($"{S(a, "name")}: {total} con");
            }
            if (parts.Count > 0) line += "   |   " + string.Join("   |   ", parts);
        }
        if (line == _bossLast) return;
        _bossLast = line;
        Log(line);
    }

    static int ParseInt(string? text, int fallback)
        => int.TryParse((text ?? "").Trim(), out var v) && v >= 0 ? v : fallback;

    static bool Flag(JsonElement e, string key, bool fallback)
        => e.TryGetProperty(key, out var v)
            ? v.ValueKind switch
            {
                JsonValueKind.True => true,
                JsonValueKind.False => false,
                _ => fallback,
            }
            : fallback;

    string StoredKey(string group)
        => _groupInfo.TryGetValue(group, out var g) ? S(g, "key_account") : "";

    /// <summary>The star button in the account grid: make this account its group key.</summary>
    void OnSetKey(object? s, RoutedEventArgs e)
    {
        if (s is not Button b || b.DataContext is not AccountRow row) return;
        if (string.IsNullOrEmpty(row.Group) || row.Group == NoGroup)
        {
            Log($"\"{row.Name}\" chưa thuộc nhóm nào — chọn nhóm ở panel trái rồi CẬP NHẬT.");
            return;
        }
        if (StoredKey(row.Group) == row.Id) return;
        Send("set_key", new() { ["group"] = row.Group, ["id"] = row.Id });
    }

    void UpdateMaps(JsonElement m)
    {
        if (!m.TryGetProperty("maps", out var maps) || maps.ValueKind != JsonValueKind.Array) return;
        // All 209 maps from the game's own table. Travel is a direct jump from
        // the world map, so the list is not limited to the ten we happened to
        // have measured click points for.
        _maps.Clear();
        _maps.AddRange(maps.EnumerateArray().Select(x => S(x, "name")).Where(x => x.Length > 0));
        CbPetMap.ItemsSource = _maps.ToList();
        PushTrainContext();
        PushBossContext();
    }

    void UpdatePosition(JsonElement m) => _autoTrain?.ShowPosition(m);

    void UpdateTeam(JsonElement m) { }

    // Train progress goes to the log, same as Câu/Hái: the window that started
    // it is a config dialog, not a dashboard, and may well be closed by now.
    string _trainLast = "";

    void UpdateTrain(JsonElement m)
    {
        var line = $"Train [{S(m, "mode")}]: {S(m, "stage")}"
                 + (S(m, "detail").Length > 0 ? $" — {S(m, "detail")}" : "");
        if (m.TryGetProperty("accounts", out var accs) && accs.ValueKind == JsonValueKind.Array)
        {
            var parts = new List<string>();
            foreach (var a in accs.EnumerateArray())
            {
                var total = 0;
                if (a.TryGetProperty("battles", out var b) && b.ValueKind == JsonValueKind.Object)
                    foreach (var kv in b.EnumerateObject())
                        if (kv.Value.TryGetInt32(out var n)) total += n;
                parts.Add($"{S(a, "name")}: {total} trận ({S(a, "auto_state")})");
            }
            if (parts.Count > 0) line += "   |   " + string.Join("   |   ", parts);
        }
        if (line == _trainLast) return;
        _trainLast = line;
        Log(line);
    }

    void OnClearLog(object? s, RoutedEventArgs e) => LogBox.Text = "";
}
