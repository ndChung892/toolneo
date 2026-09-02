"""One-off: compact the Train tab (waypoint chips + drop the status box)."""
from pathlib import Path

XAML = Path(__file__).resolve().parent / "VptAvalonia" / "MainWindow.axaml"


def chip(slot: int) -> str:
    return f'''                  <Border BorderBrush="{{StaticResource Border}}" BorderThickness="1" CornerRadius="2" Padding="5,1">
                    <StackPanel Orientation="Horizontal" Spacing="3">
                      <TextBlock Text="{slot}" Foreground="{{StaticResource Dim}}" VerticalAlignment="Center"/>
                      <TextBlock x:Name="TPos{slot}" Text="—" VerticalAlignment="Center" MinWidth="60"/>
                      <Button Content="◎" Classes="tool" Height="20" Padding="4,0" FontSize="12" Tag="{slot}"
                              Click="OnCapturePos" ToolTip.Tip="Ghi vị trí key đang đứng"/>
                      <Button Content="✕" Classes="tool" Height="20" Padding="4,0" FontSize="10" Tag="{slot}"
                              Click="OnClearPos" ToolTip.Tip="Xóa vị trí"/>
                    </StackPanel>
                  </Border>
'''


def main() -> None:
    text = XAML.read_text(encoding="utf-8")

    start = text.index("<!-- waypoints -->")
    end = text.index("<!-- options -->")
    block = (
        '<!-- waypoints -->\n'
        '                <TextBlock Grid.Row="2" Grid.Column="0" Text="Vị trí" '
        'VerticalAlignment="Center" Margin="0,0,8,5"/>\n'
        '                <StackPanel Grid.Row="2" Grid.Column="1" Orientation="Horizontal" '
        'Spacing="4" Margin="0,0,0,5">\n'
        + chip(1) + chip(2) + chip(3) +
        '                  <TextBlock Text="ô trống thì bỏ qua" '
        'Foreground="{StaticResource Dim}" FontSize="11" VerticalAlignment="Center" '
        'Margin="4,0,0,0"/>\n'
        '                </StackPanel>\n\n                '
    )
    text = text[:start] + block + text[end:]

    # The Train tab no longer carries its own status box: messages go to the
    # window-wide status bar at the bottom, so the tab stays short.
    s = text.index("<!-- status -->")
    e = text.index("</Grid>", text.index("TrainWarnings"))
    text = text[:s] + text[e:]

    XAML.write_text(text, encoding="utf-8")
    print("waypoints compacted, Train status box removed")


if __name__ == "__main__":
    main()
