using System;
using System.Collections.Generic;
using System.Linq;
using Avalonia.Controls;
using Avalonia.Interactivity;

namespace VptAvalonia;

/// <summary>
/// Câu/Hái settings for ONE account - the one highlighted in the main grid.
///
/// This lives in its own window rather than a tab because the settings belong
/// to an account, not to the tool: two accounts are meant to be set to
/// different spots (one herbs, one fishing), and a single shared tab made that
/// impossible to express. The title carries the account name so there is never
/// a doubt about which character is being configured.
/// </summary>
public partial class GatherWindow : Window
{
    /// <summary>Send a command to the Python backend (owned by MainWindow).</summary>
    public event Action<string, Dictionary<string, object>?>? Command;

    readonly string _accountId;
    readonly List<Dictionary<string, string>> _herbs = new();
    readonly List<Dictionary<string, string>> _fish = new();

    public GatherWindow() : this("", "", null, null) { }

    public GatherWindow(string accountId, string accountName,
                        IEnumerable<Dictionary<string, string>>? herbs,
                        IEnumerable<Dictionary<string, string>>? fish)
    {
        InitializeComponent();
        _accountId = accountId;
        Title = $"Hái/Câu — {(accountName.Length > 0 ? accountName : accountId)}";
        SetSpots(herbs, fish);
    }

    public void SetSpots(IEnumerable<Dictionary<string, string>>? herbs,
                         IEnumerable<Dictionary<string, string>>? fish)
    {
        _herbs.Clear();
        _fish.Clear();
        if (herbs != null) _herbs.AddRange(herbs);
        if (fish != null) _fish.AddRange(fish);
        FillPick();
    }

    void FillPick()
    {
        var rows = RbFish?.IsChecked == true ? _fish : _herbs;
        CbPick.ItemsSource = rows.Select(r => r["text"]).ToList();
        if (rows.Count > 0) CbPick.SelectedIndex = 0;
    }

    void OnKindChanged(object? s, RoutedEventArgs e) => FillPick();

    void OnStart(object? s, RoutedEventArgs e)
    {
        bool fish = RbFish?.IsChecked == true;
        var rows = fish ? _fish : _herbs;
        int i = CbPick.SelectedIndex;
        if (i < 0 || i >= rows.Count)
        {
            // Nothing to start from, so refresh the catalogue instead of
            // scolding the user - that is what the "Dò lại" button used to be
            // for, and pressing start already says "do the thing".
            Command?.Invoke("list_spots", null);
            return;
        }
        Command?.Invoke("spot_start", new Dictionary<string, object>
        {
            ["kind"] = fish ? "ca" : "duoc",
            ["level"] = int.TryParse(rows[i]["level"], out var lv) ? lv : 1,
            ["fish"] = fish ? rows[i]["fish"] : "",
            ["account_ids"] = new List<string> { _accountId },
            ["mode"] = RbFull?.IsChecked == true ? "full" : "attach",
            ["end_minutes"] = int.TryParse(TMinutes.Text, out var m) ? m : 0,
        });
        // The job is handed off; progress shows in the main window's log.
        Close();
    }

    void OnStop(object? s, RoutedEventArgs e)
    {
        Command?.Invoke("spot_stop", new Dictionary<string, object>
        {
            ["account_ids"] = new List<string> { _accountId },
        });
        Close();
    }
}
