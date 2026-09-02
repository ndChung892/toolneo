using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json;
using Avalonia.Controls;
using Avalonia.Interactivity;

namespace VptAvalonia;

/// <summary>
/// Train a whole group unattended: pick the group's key, the map, the patrol
/// points, press Start.
///
/// Moved out of the main window's tab strip because it belongs with the other
/// unattended functions - the ones that log in by themselves and run without
/// anyone watching. The tab strip is for acting on a client already in front of
/// you.
///
/// State it cannot own (which group is selected, what the backend knows about
/// each group, the account list, the map list) is pushed in by MainWindow via
/// <see cref="SetContext"/> whenever it changes.
/// </summary>
public partial class AutoTrainWindow : Window
{
    /// <summary>Send a command to the Python backend (owned by MainWindow).</summary>
    public event Action<string, Dictionary<string, object>?>? Command;

    /// <summary>Write a line to the main window's log.</summary>
    public Action<string>? Log;

    readonly List<string> _trainMaps = new();
    readonly string[] _pos = new string[3];

    string _curGroup = "";
    JsonElement? _groupInfo;
    List<AccountRow> _accounts = new();
    // Guards the handlers while values are being written in from outside, so
    // filling the form does not read back as the user editing it.
    bool _loading;

    public AutoTrainWindow()
    {
        InitializeComponent();
        CbEndUnit.SelectedIndex = 0;
    }

    TextBlock PosBox(int slot) => slot switch { 1 => TPos1, 2 => TPos2, _ => TPos3 };

    static int ParseInt(string? text, int fallback)
        => int.TryParse((text ?? "").Trim(), out var v) && v >= 0 ? v : fallback;

    static string S(JsonElement e, string key)
        => e.TryGetProperty(key, out var v)
            ? (v.ValueKind == JsonValueKind.String ? v.GetString() ?? "" : v.ToString())
            : "";

    static bool Flag(JsonElement e, string key, bool fallback)
        => e.TryGetProperty(key, out var v)
            ? v.ValueKind switch
            {
                JsonValueKind.True => true,
                JsonValueKind.False => false,
                _ => fallback,
            }
            : fallback;

    /// <summary>Mirror the selected group's stored settings into this window.</summary>
    public void SetContext(string group, JsonElement? info,
                           IEnumerable<AccountRow> accounts, IEnumerable<string> maps)
    {
        _curGroup = group;
        _groupInfo = info;
        _accounts = accounts.ToList();

        var mapList = maps.ToList();
        if (mapList.Count > 0 && !ReferenceEquals(CbTrainMap.ItemsSource, mapList))
        {
            var keep = CbTrainMap.SelectedItem as string;
            CbTrainMap.ItemsSource = mapList;
            if (keep != null && mapList.Contains(keep)) CbTrainMap.SelectedItem = keep;
        }

        bool isGroup = info.HasValue;
        TrainGroupName.Text = isGroup ? group : "— chọn nhóm —";
        CbShared.IsEnabled = isGroup;
        if (!isGroup) { Hint.Text = "Chọn một nhóm ở cửa sổ chính trước."; return; }

        _loading = true;
        try
        {
            var g = info!.Value;
            RbSolo.IsChecked = S(g, "team_mode") == "solo";
            RbParty.IsChecked = !(RbSolo.IsChecked == true);
            CbShared.IsChecked = Flag(g, "use_shared", true);

            var members = _accounts.Where(r => r.Group == group).ToList();
            CbKeyAccount.ItemsSource = members;
            CbKeyAccount.SelectedItem = members.FirstOrDefault(r => r.Id == StoredKey());

            if (g.TryGetProperty("train", out var t) && t.ValueKind == JsonValueKind.Object)
            {
                _trainMaps.Clear();
                if (t.TryGetProperty("maps", out var ms) && ms.ValueKind == JsonValueKind.Array)
                    foreach (var mm in ms.EnumerateArray())
                        if (mm.GetString() is string mv) _trainMaps.Add(mv);
                if (_trainMaps.Count > 0) CbTrainMap.SelectedItem = _trainMaps[0];

                var mins = ParseInt(S(t, "end_minutes"), 0);
                if (mins > 0 && mins % 60 == 0) { CbEndUnit.SelectedIndex = 1; TEndMinutes.Text = (mins / 60).ToString(); }
                else { CbEndUnit.SelectedIndex = 0; TEndMinutes.Text = mins.ToString(); }

                CbEnsureAuto.IsChecked = Flag(t, "ensure_auto", true);
                CbGround.IsChecked = Flag(t, "keep_grounded", true);
                CbHide.IsChecked = Flag(t, "hide_windows", false);

                for (int i = 0; i < 3; i++) { _pos[i] = ""; PosBox(i + 1).Text = "—"; }
                if (t.TryGetProperty("waypoints", out var wp) && wp.ValueKind == JsonValueKind.Array)
                {
                    int slot = 1;
                    foreach (var p in wp.EnumerateArray())
                    {
                        if (slot > 3 || p.ValueKind != JsonValueKind.Array) break;
                        var nums = p.EnumerateArray().Select(v => v.GetInt32()).ToList();
                        if (nums.Count == 2) { _pos[slot - 1] = $"{nums[0]}, {nums[1]}"; PosBox(slot).Text = _pos[slot - 1]; }
                        slot++;
                    }
                }
            }

            var names = new List<string>();
            if (g.TryGetProperty("members", out var mem) && mem.ValueKind == JsonValueKind.Array)
                foreach (var mm in mem.EnumerateArray()) names.Add(S(mm, "name"));
            var warns = new List<string>();
            if (g.TryGetProperty("warnings", out var ws) && ws.ValueKind == JsonValueKind.Array)
                foreach (var w in ws.EnumerateArray()) warns.Add(w.GetString() ?? "");
            Hint.Text = (names.Count == 0 ? "Nhóm chưa có account nào."
                                          : $"Thành viên ({names.Count}): {string.Join(", ", names)}")
                        + (warns.Count > 0 ? "   •   " + string.Join("  •  ", warns) : "");

            CbKeyAccount.IsEnabled = RbParty.IsChecked == true;
        }
        finally { _loading = false; }
    }

    /// <summary>A captured world position coming back from the backend.</summary>
    public void ShowPosition(JsonElement m)
    {
        if (!(S(m, "ok") is "True" or "true")) { Log?.Invoke(S(m, "detail")); return; }
        var slot = Math.Clamp(ParseInt(S(m, "slot"), 1), 1, 3);
        _pos[slot - 1] = $"{S(m, "x")}, {S(m, "y")}";
        PosBox(slot).Text = _pos[slot - 1];
    }

    string StoredKey() => _groupInfo.HasValue ? S(_groupInfo.Value, "key_account") : "";

    /// <summary>Duration in minutes, whatever unit the dropdown shows.</summary>
    int EndMinutes()
    {
        var n = ParseInt(TEndMinutes.Text, 0);
        return CbEndUnit.SelectedIndex == 1 ? n * 60 : n;
    }

    List<List<int>> Waypoints()
    {
        var list = new List<List<int>>();
        foreach (var p in _pos)
        {
            if (string.IsNullOrWhiteSpace(p)) continue;   // empty slot is skipped
            var parts = p.Split(',');
            if (parts.Length == 2)
                list.Add(new List<int> { ParseInt(parts[0], 0), ParseInt(parts[1], 0) });
        }
        return list;
    }

    Dictionary<string, object> TrainBlock() => new()
    {
        ["maps"] = _trainMaps.ToList(),
        ["end_minutes"] = EndMinutes(),
        ["ensure_auto"] = CbEnsureAuto.IsChecked == true,
        ["keep_grounded"] = CbGround.IsChecked == true,
        ["hide_windows"] = CbHide.IsChecked == true,
        ["waypoints"] = Waypoints(),
    };

    void OnTrainMapPicked(object? s, SelectionChangedEventArgs e)
    {
        if (_loading) return;
        _trainMaps.Clear();
        if (CbTrainMap.SelectedItem is string m && m.Length > 0) _trainMaps.Add(m);
    }

    void OnTeamModeChanged(object? s, RoutedEventArgs e)
    {
        if (_loading || CbKeyAccount is null) return;
        CbKeyAccount.IsEnabled = RbParty.IsChecked == true;
    }

    // Only tell the backend when the value really changed: Avalonia raises
    // SelectionChanged again after the loading flag clears and the periodic
    // refresh rebuilds the rows, so comparing against the stored value is the
    // only stable stop.
    void OnKeyPicked(object? s, SelectionChangedEventArgs e)
    {
        if (_loading || _curGroup.Length == 0) return;
        if (CbKeyAccount.SelectedItem is not AccountRow row) return;
        if (StoredKey() == row.Id) return;
        Command?.Invoke("set_key", new Dictionary<string, object>
        {
            ["group"] = _curGroup, ["id"] = row.Id,
        });
    }

    void OnCapturePos(object? s, RoutedEventArgs e)
    {
        if (s is not Button b || b.Tag is not string tag) return;
        if (CbKeyAccount.SelectedItem is not AccountRow key)
        {
            Hint.Text = "Chưa chọn acc key để lấy vị trí.";
            return;
        }
        // The backend reads the character's world position straight out of the
        // game, so whatever the character is standing on IS the coordinate.
        Command?.Invoke("capture_position", new Dictionary<string, object>
        {
            ["id"] = key.Id, ["slot"] = ParseInt(tag, 1),
        });
    }

    void OnClearPos(object? s, RoutedEventArgs e)
    {
        if (s is not Button b || b.Tag is not string tag) return;
        var slot = ParseInt(tag, 1);
        _pos[slot - 1] = "";
        PosBox(slot).Text = "—";
    }

    void OnSaveGroup(object? s, RoutedEventArgs e)
    {
        if (_curGroup.Length == 0) { Hint.Text = "Chọn một nhóm để lưu."; return; }
        Command?.Invoke("save_group", new Dictionary<string, object>
        {
            ["name"] = _curGroup,
            ["team_mode"] = RbSolo.IsChecked == true ? "solo" : "party",
            ["key_account"] = (CbKeyAccount.SelectedItem as AccountRow)?.Id ?? "",
            ["use_shared"] = CbShared.IsChecked == true,
            ["train"] = TrainBlock(),
        });
        Hint.Text = $"Đã lưu nhóm {_curGroup}.";
    }

    void OnStart(object? s, RoutedEventArgs e)
    {
        if (_curGroup.Length == 0) { Hint.Text = "Chọn một nhóm ở cửa sổ chính trước."; return; }
        if (_trainMaps.Count == 0) { Hint.Text = "Chưa chọn map."; return; }
        var overrides = TrainBlock();
        // Always full: this window is the unattended path by definition.
        overrides["mode"] = "full";
        Command?.Invoke("train_start", new Dictionary<string, object>
        {
            ["group"] = _curGroup, ["config"] = overrides,
        });
        Hint.Text = $"Đang chạy train nhóm {_curGroup}.";
    }

    void OnStop(object? s, RoutedEventArgs e)
    {
        Command?.Invoke("train_stop", null);
        Hint.Text = "Đã dừng.";
    }
}
