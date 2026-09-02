using System;
using System.IO;
using System.Linq;
using Avalonia.Controls;
using Avalonia.Interactivity;
using Avalonia.Platform.Storage;

namespace VptAvalonia;

public partial class SettingsWindow : Window
{
    /// <summary>Raised with the new flash.exe path when the user presses LƯU.</summary>
    public event Action<string>? Saved;

    public SettingsWindow() : this("") { }

    public SettingsWindow(string flashExe)
    {
        InitializeComponent();
        TFlash.Text = flashExe;
        UpdateHint();
        TFlash.TextChanged += (_, _) => UpdateHint();
    }

    void UpdateHint()
    {
        var p = (TFlash.Text ?? "").Trim();
        if (p.Length == 0)
            LblHint.Text = "Chưa cấu hình — không đăng nhập được cho tới khi chọn flash.exe.";
        else if (File.Exists(p))
            LblHint.Text = "✔ Đường dẫn hợp lệ.";
        else
            LblHint.Text = "⚠ Không tìm thấy file ở đường dẫn này.";
    }

    async void OnBrowse(object? s, RoutedEventArgs e)
    {
        var files = await StorageProvider.OpenFilePickerAsync(new FilePickerOpenOptions
        {
            Title = "Chọn flash.exe",
            AllowMultiple = false,
            FileTypeFilter = new[]
            {
                new FilePickerFileType("Chương trình") { Patterns = new[] { "*.exe" } },
                FilePickerFileTypes.All,
            },
        });
        var f = files.FirstOrDefault();
        if (f?.TryGetLocalPath() is string path) { TFlash.Text = path; UpdateHint(); }
    }

    void OnSave(object? s, RoutedEventArgs e)
    {
        Saved?.Invoke((TFlash.Text ?? "").Trim());
        Close();
    }

    void OnCancel(object? s, RoutedEventArgs e) => Close();
}
