using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using Avalonia.Controls;
using Avalonia.Interactivity;

namespace VptAvalonia;

/// <summary>
/// Set several accounts gathering at once, each on its own produce, each with
/// its own time budget.
///
/// This is one FUNCTION behind the "Tự động hoàn toàn" tab, not the tab itself -
/// that tab is a home for several such functions, and more will be added beside
/// this one. Pressing BẮT ĐẦU starts the work immediately; nothing here opens
/// another dialog.
/// </summary>
public partial class AutoGatherWindow : Window
{
    /// <summary>Send a command to the Python backend (owned by MainWindow).</summary>
    public event Action<string, Dictionary<string, object>?>? Command;

    /// <summary>Turn a chosen produce label into a spot_start payload.</summary>
    public Func<string, Dictionary<string, object>?>? ResolveSpot;

    readonly ObservableCollection<PlanRow> _plan = new();
    readonly List<AccountRow> _accounts = new();
    List<string> _spots = new();

    public AutoGatherWindow() : this(null, null) { }

    public AutoGatherWindow(IEnumerable<AccountRow>? accounts, IEnumerable<string>? spots)
    {
        InitializeComponent();
        PlanGrid.ItemsSource = _plan;
        SetAccounts(accounts);
        SetSpots(spots);
    }

    public void SetAccounts(IEnumerable<AccountRow>? accounts)
    {
        _accounts.Clear();
        if (accounts != null) _accounts.AddRange(accounts);
        CbAccount.ItemsSource = _accounts.Select(a => a.Name).ToList();
        if (_accounts.Count > 0 && CbAccount.SelectedIndex < 0) CbAccount.SelectedIndex = 0;
    }

    public void SetSpots(IEnumerable<string>? spots)
    {
        _spots = spots?.ToList() ?? new List<string>();
        foreach (var p in _plan) p.Spots = _spots;
    }

    /// <summary>Update one account's running clock from a status message.</summary>
    public void ShowElapsed(string accountId, int seconds)
    {
        var row = _plan.FirstOrDefault(p => p.Id == accountId);
        if (row != null) row.Elapsed = $"{seconds / 60}:{seconds % 60:00}";
    }

    void OnAdd(object? s, RoutedEventArgs e)
    {
        int i = CbAccount.SelectedIndex;
        if (i < 0 || i >= _accounts.Count) { Hint.Text = "Chưa chọn tài khoản."; return; }
        var acc = _accounts[i];
        if (_plan.Any(p => p.Id == acc.Id)) { Hint.Text = $"{acc.Name} đã có trong dàn."; return; }
        _plan.Add(new PlanRow
        {
            Id = acc.Id, Name = acc.Name, Spots = _spots,
            Spot = _spots.FirstOrDefault() ?? "",
        });
        Hint.Text = "";
    }

    void OnRemove(object? s, RoutedEventArgs e)
    {
        if (PlanGrid.SelectedItem is PlanRow p) _plan.Remove(p);
    }

    // One spot_start per row, because every row is a different produce with a
    // different time budget - a single call carrying a list of accounts could
    // only ever describe one of them.
    void OnStart(object? s, RoutedEventArgs e)
    {
        if (_plan.Count == 0) { Hint.Text = "Dàn đang trống — thêm tài khoản trước."; return; }
        int minutes = int.TryParse(TMinutes.Text, out var m) ? m : 0;
        var skipped = new List<string>();
        int sent = 0;
        foreach (var p in _plan)
        {
            var payload = ResolveSpot?.Invoke(p.Spot);
            if (payload == null) { skipped.Add(p.Name); continue; }
            payload["account_ids"] = new List<string> { p.Id };
            // Always full: this window is the unattended path by definition.
            payload["mode"] = "full";
            payload["end_minutes"] = minutes;
            Command?.Invoke("spot_start", payload);
            p.Elapsed = "0:00";
            sent++;
        }
        // Say what was left out rather than reporting a clean start that wasn't.
        Hint.Text = skipped.Count > 0
            ? $"Đã chạy {sent} — bỏ qua (chưa chọn nông sản): {string.Join(", ", skipped)}"
            : $"Đã chạy {sent} tài khoản.";
    }

    void OnStop(object? s, RoutedEventArgs e)
    {
        Command?.Invoke("spot_stop", new Dictionary<string, object>
        {
            ["account_ids"] = _plan.Select(p => p.Id).ToList(),
        });
        Hint.Text = "Đã dừng.";
    }
}
