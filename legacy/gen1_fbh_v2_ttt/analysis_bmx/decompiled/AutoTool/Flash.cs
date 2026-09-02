using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Windows.Forms;

namespace AutoTool;

public class Flash : Form
{
	private IContainer components = null;

	public Flash()
	{
		InitializeComponent();
	}

	private void button1_Click(object sender, EventArgs e)
	{
	}

	[DllImport("user32.dll")]
	private static extern System.IntPtr SetParent(System.IntPtr hWndChild, System.IntPtr hWndNewParent);

	[DllImport("user32.dll")]
	public static extern System.IntPtr SetWindowPos(System.IntPtr hWnd, int hWndInsertAfter, int x, int Y, int cx, int cy, int wFlags);

	private void Flash_Load(object sender, EventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0007: Expected O, but got Unknown
		ProcessStartInfo val = new ProcessStartInfo();
		val.FileName = Application.StartupPath + "/APPS/FL.exe";
		val.Arguments = "http://s3-vuaphapthuat.goplay.vn/s/sound/Assound.swf";
		val.UseShellExecute = false;
		val.CreateNoWindow = true;
		val.WindowStyle = (ProcessWindowStyle)1;
		Process val2 = Process.Start(val);
		val2.WaitForInputIdle();
		SetParent(val2.MainWindowHandle, ((Control)this).Handle);
	}

	protected override void Dispose(bool disposing)
	{
		if (disposing && components != null)
		{
			((System.IDisposable)components).Dispose();
		}
		((Form)this).Dispose(disposing);
	}

	private void InitializeComponent()
	{
		//IL_0013: Unknown result type (might be due to invalid IL or missing references)
		//IL_002d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0058: Unknown result type (might be due to invalid IL or missing references)
		//IL_0062: Expected O, but got Unknown
		((Control)this).SuspendLayout();
		((ContainerControl)this).AutoScaleDimensions = new SizeF(7f, 15f);
		((ContainerControl)this).AutoScaleMode = (AutoScaleMode)1;
		((Form)this).ClientSize = new Size(166, 0);
		((Control)this).Name = "Flash";
		((Control)this).Text = "Flash";
		((Form)this).Load += new EventHandler(Flash_Load);
		((Control)this).ResumeLayout(false);
	}
}
