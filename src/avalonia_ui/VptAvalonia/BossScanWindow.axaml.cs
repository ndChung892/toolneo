using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text.Json;
using Avalonia.Controls;
using Avalonia.Interactivity;

namespace VptAvalonia;

/// <summary>One line of a scan: what was found, and how it looked when found.</summary>
public class ScanRow
{
    public string Name { get; set; } = "";
    public long Type { get; set; }
    public long Resource { get; set; }
    public int Count { get; set; }
    public int Distance { get; set; }

    /// <summary>The greyed-out right-hand side: how many, and how far off.</summary>
    public string Detail => $"x{Count}   cách {Distance}";
}

/// <summary>
/// Detect a boss on a live client, prove it, name it, send it to the run list.
///
/// The order is the point. Each step answers the doubt the next one would
/// otherwise carry:
///
///   QUÉT      read this client's map - everything listed is really there now
///   ĐÁNH THỬ  walk to that one monster and fight it, then stop. If it cannot
///             be reached, it is found out here, on a client being watched,
///             not in an unattended run at 3am
///   Tên       the name the client draws is not always the name a person would
///             pick, so it can be typed over before it is kept
///   THÊM      remember this boss - it shows up in Auto Boss Team no matter
///             which map is selected there (owner's call, 2026-08-19); the
///             list is one flat catalogue, not one per map
///
/// The identity kept is the (type, resource) pair read from the client. The
/// typed name is a label on top of it, never the thing looked up - so renaming
/// cannot make the runner hunt something else.
/// </summary>
public partial class BossScanWindow : Window
{
    /// <summary>Send a command to the Python backend (owned by MainWindow).</summary>
    public event Action<string, Dictionary<string, object>?>? Command;

    readonly ObservableCollection<ScanRow> _rows = new();
    readonly List<AccountRow> _accounts = new();
    string _mapName = "";

    public BossScanWindow() : this(null) { }

    public BossScanWindow(IEnumerable<AccountRow>? accounts)
    {
        InitializeComponent();
        ScanList.ItemsSource = _rows;
        SetAccounts(accounts);
    }

    public void SetAccounts(IEnumerable<AccountRow>? accounts)
    {
        var keep = (CbAccount.SelectedItem as AccountRow)?.Id;
        _accounts.Clear();
        // Only clients that are up: this reads their memory, so the rest could
        // only ever answer "chưa mở client nào".
        if (accounts != null) _accounts.AddRange(accounts.Where(a => a.Active));
        CbAccount.ItemsSource = _accounts.ToList();
        CbAccount.SelectedItem = _accounts.FirstOrDefault(a => a.Id == keep)
                                 ?? _accounts.FirstOrDefault();
        if (_accounts.Count == 0 && _rows.Count == 0)
            Hint.Text = "Chưa có client nào đang mở — vào game, đưa nhân vật tới map "
                        + "muốn dò, rồi bấm QUÉT.";
    }

    static string S(JsonElement e, string k)
        => e.TryGetProperty(k, out var v)
            ? (v.ValueKind == JsonValueKind.String ? v.GetString() ?? "" : v.ToString())
            : "";

    static long L(JsonElement e, string k)
        => e.TryGetProperty(k, out var v) && v.TryGetInt64(out var n) ? n : 0;

    static int I(JsonElement e, string k)
        => e.TryGetProperty(k, out var v) && v.TryGetInt32(out var n) ? n : 0;

    /// <summary>A scan result coming back from the backend.</summary>
    public void ShowScan(JsonElement m)
    {
        if (S(m, "ok") is not ("True" or "true"))
        {
            Hint.Text = "Quét hỏng: " + S(m, "detail");
            return;
        }
        _mapName = S(m, "map_name");
        _rows.Clear();
        if (m.TryGetProperty("bosses", out var bosses) && bosses.ValueKind == JsonValueKind.Array)
            foreach (var b in bosses.EnumerateArray())
                _rows.Add(new ScanRow
                {
                    Name = S(b, "name"), Type = L(b, "type"), Resource = L(b, "resource"),
                    Count = I(b, "count"), Distance = I(b, "distance"),
                });
        Title = _mapName.Length > 0 ? $"Dò boss — {_mapName}" : "Dò boss";
        Hint.Text = _rows.Count == 0
            ? "Không thấy con nào — kiểm tra nhân vật đã vào map chưa."
            : $"{_mapName}: {_rows.Count} loại. Chọn một dòng, ĐÁNH THỬ cho chắc, "
              + "rồi đặt tên và THÊM.";
    }

    /// <summary>Live state of the try, so the button visibly does something.</summary>
    public void ShowTest(JsonElement m)
        => Hint.Text = $"Đánh thử: {S(m, "state")} — đã hạ {S(m, "clears")}, "
                       + $"thấy {S(m, "targets_found")} con. {S(m, "detail")}";

    AccountRow? Account() => CbAccount.SelectedItem as AccountRow;

    ScanRow? Picked() => ScanList.SelectedItem as ScanRow;

    // Prefill the name box with what the client draws. It is right most of the
    // time, and when it is not, it is still the best starting point to edit.
    void OnPicked(object? s, SelectionChangedEventArgs e)
    {
        if (Picked() is ScanRow row) TName.Text = row.Name;
    }

    void OnScan(object? s, RoutedEventArgs e)
    {
        var acc = Account();
        if (acc == null) { Hint.Text = "Chưa có client nào đang mở."; return; }
        Hint.Text = $"Đang quét trên {acc.Name}…";
        Command?.Invoke("scan_bosses", new Dictionary<string, object> { ["id"] = acc.Id });
    }

    void OnTest(object? s, RoutedEventArgs e)
    {
        var acc = Account();
        var row = Picked();
        if (acc == null) { Hint.Text = "Chưa có client nào đang mở."; return; }
        if (row == null) { Hint.Text = "Chọn một dòng trong danh sách trước."; return; }
        Command?.Invoke("boss_test_start", new Dictionary<string, object>
        {
            ["id"] = acc.Id, ["name"] = row.Name,
            ["type"] = row.Type, ["resource"] = row.Resource,
        });
        Hint.Text = $"{acc.Name} đang đi đánh \"{row.Name}\" — hạ một con là tự dừng.";
    }

    void OnTestStop(object? s, RoutedEventArgs e)
    {
        Command?.Invoke("boss_test_stop", null);
        Hint.Text = "Đã dừng đánh thử.";
    }

    void OnAdd(object? s, RoutedEventArgs e)
    {
        var row = Picked();
        if (row == null) { Hint.Text = "Chọn một dòng trong danh sách trước."; return; }
        var name = (TName.Text ?? "").Trim();
        if (name.Length == 0) name = row.Name;

        // One flat catalogue - this boss shows up in Auto Boss Team no matter
        // which map is picked there.
        Command?.Invoke("add_boss", new Dictionary<string, object>
        {
            ["boss"] = new Dictionary<string, object>
            {
                ["name"] = name, ["type"] = row.Type,
                ["resource"] = row.Resource, ["count"] = row.Count,
            },
        });
        Hint.Text = $"Đã thêm \"{name}\" vào danh sách boss.";
    }
}
