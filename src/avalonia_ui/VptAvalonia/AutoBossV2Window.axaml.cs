using System;
using System.Collections.Generic;
using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.Markup.Xaml;
using Avalonia.Threading;

namespace VptAvalonia;

/// <summary>
/// AUTO BOSS (MỚI) — THỬ NGHIỆM / CHƯA NGHIỆM THU.
///
/// Sends only bossteam_v2_* commands. It shares no state, no config write and
/// no ledger with AutoBossWindow, so the shipped Auto Boss keeps working while
/// this one is built and tested (FEAT-031, chốt 2026-08-29).
/// </summary>
public partial class AutoBossV2Window : Window
{
    public event Action<string, Dictionary<string, object>?>? Command;

    public AutoBossV2Window()
    {
        InitializeComponent();
    }

    void InitializeComponent() => AvaloniaXamlLoader.Load(this);

    void Send(string command) => Command?.Invoke(command, null);

    void OnStatus(object? s, RoutedEventArgs e) => Send("bossteam_v2_status");
    void OnStart(object? s, RoutedEventArgs e) => Send("bossteam_v2_start");
    void OnStop(object? s, RoutedEventArgs e) => Send("bossteam_v2_stop");

    /// <summary>Append one backend line; the window never invents status text.</summary>
    public void AppendLog(string line)
    {
        Dispatcher.UIThread.Post(() =>
        {
            var box = this.FindControl<TextBlock>("LogBox");
            if (box == null) return;
            if (box.Text == "Chưa có phiên nào.") box.Text = "";
            box.Text += (box.Text!.Length > 0 ? "\n" : "") + line;
        });
    }
}
