using System;
using System.ComponentModel;
using System.Drawing;
using System.Resources;
using System.Windows.Forms;

namespace AutoTool;

public class GioiThieuTool : Form
{
	private IContainer components = null;

	private TabControl tabControl1;

	private TabPage tabPage1;

	private TabPage tabPage2;

	private TabPage tabPage3;

	private TabPage tabPage4;

	private TabPage tabPage5;

	private TabPage tabPage6;

	private TabPage tabPage7;

	private TabPage tabPage8;

	private TabPage tabPage9;

	private TabPage tabPage10;

	private TabPage tabPage11;

	private TabPage tabPage12;

	private TabPage tabPage13;

	public GioiThieuTool()
	{
		InitializeComponent();
	}

	private void GioiThieuTool_Load(object sender, EventArgs e)
	{
		((Control)this).Text = "[BMx v" + Program.AppMain.version + "] Giơ\u0301i Thiê\u0323u Tool";
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
		//IL_000b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0011: Expected O, but got Unknown
		//IL_0012: Unknown result type (might be due to invalid IL or missing references)
		//IL_001c: Expected O, but got Unknown
		//IL_001d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0027: Expected O, but got Unknown
		//IL_0028: Unknown result type (might be due to invalid IL or missing references)
		//IL_0032: Expected O, but got Unknown
		//IL_0033: Unknown result type (might be due to invalid IL or missing references)
		//IL_003d: Expected O, but got Unknown
		//IL_003e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0048: Expected O, but got Unknown
		//IL_0049: Unknown result type (might be due to invalid IL or missing references)
		//IL_0053: Expected O, but got Unknown
		//IL_0054: Unknown result type (might be due to invalid IL or missing references)
		//IL_005e: Expected O, but got Unknown
		//IL_005f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0069: Expected O, but got Unknown
		//IL_006a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0074: Expected O, but got Unknown
		//IL_0075: Unknown result type (might be due to invalid IL or missing references)
		//IL_007f: Expected O, but got Unknown
		//IL_0080: Unknown result type (might be due to invalid IL or missing references)
		//IL_008a: Expected O, but got Unknown
		//IL_008b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0095: Expected O, but got Unknown
		//IL_0096: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a0: Expected O, but got Unknown
		//IL_00a1: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ab: Expected O, but got Unknown
		//IL_01f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0239: Unknown result type (might be due to invalid IL or missing references)
		//IL_025a: Unknown result type (might be due to invalid IL or missing references)
		//IL_027d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0298: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_02fa: Unknown result type (might be due to invalid IL or missing references)
		//IL_0315: Unknown result type (might be due to invalid IL or missing references)
		//IL_0354: Unknown result type (might be due to invalid IL or missing references)
		//IL_0380: Unknown result type (might be due to invalid IL or missing references)
		//IL_03bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_03eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_042a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0456: Unknown result type (might be due to invalid IL or missing references)
		//IL_0495: Unknown result type (might be due to invalid IL or missing references)
		//IL_04c1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0500: Unknown result type (might be due to invalid IL or missing references)
		//IL_052c: Unknown result type (might be due to invalid IL or missing references)
		//IL_056b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0597: Unknown result type (might be due to invalid IL or missing references)
		//IL_05d6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0602: Unknown result type (might be due to invalid IL or missing references)
		//IL_0641: Unknown result type (might be due to invalid IL or missing references)
		//IL_066d: Unknown result type (might be due to invalid IL or missing references)
		//IL_06ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_06d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0719: Unknown result type (might be due to invalid IL or missing references)
		//IL_0745: Unknown result type (might be due to invalid IL or missing references)
		//IL_0785: Unknown result type (might be due to invalid IL or missing references)
		//IL_07b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_07f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0811: Unknown result type (might be due to invalid IL or missing references)
		//IL_0842: Unknown result type (might be due to invalid IL or missing references)
		//IL_084c: Expected O, but got Unknown
		//IL_087d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0887: Expected O, but got Unknown
		ComponentResourceManager val = new ComponentResourceManager(typeof(GioiThieuTool));
		tabControl1 = new TabControl();
		tabPage1 = new TabPage();
		tabPage2 = new TabPage();
		tabPage3 = new TabPage();
		tabPage4 = new TabPage();
		tabPage5 = new TabPage();
		tabPage6 = new TabPage();
		tabPage7 = new TabPage();
		tabPage8 = new TabPage();
		tabPage9 = new TabPage();
		tabPage10 = new TabPage();
		tabPage11 = new TabPage();
		tabPage12 = new TabPage();
		tabPage13 = new TabPage();
		((Control)tabControl1).SuspendLayout();
		((Control)this).SuspendLayout();
		((Control)tabControl1).Controls.Add((Control)(object)tabPage1);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage2);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage3);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage4);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage5);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage6);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage7);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage8);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage9);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage10);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage11);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage12);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage13);
		((Control)tabControl1).Location = new Point(12, 12);
		tabControl1.Multiline = true;
		((Control)tabControl1).Name = "tabControl1";
		tabControl1.SelectedIndex = 0;
		((Control)tabControl1).Size = new Size(464, 534);
		((Control)tabControl1).TabIndex = 0;
		tabPage1.Location = new Point(4, 44);
		((Control)tabPage1).Name = "tabPage1";
		((Control)tabPage1).Padding = new Padding(3);
		((Control)tabPage1).Size = new Size(456, 486);
		tabPage1.TabIndex = 0;
		((Control)tabPage1).Text = "Login";
		tabPage1.UseVisualStyleBackColor = true;
		tabPage2.Location = new Point(4, 64);
		((Control)tabPage2).Name = "tabPage2";
		((Control)tabPage2).Padding = new Padding(3);
		((Control)tabPage2).Size = new Size(370, 466);
		tabPage2.TabIndex = 1;
		((Control)tabPage2).Text = "Ca\u0300i Đă\u0323t";
		tabPage2.UseVisualStyleBackColor = true;
		tabPage3.Location = new Point(4, 64);
		((Control)tabPage3).Name = "tabPage3";
		((Control)tabPage3).Size = new Size(370, 466);
		tabPage3.TabIndex = 2;
		((Control)tabPage3).Text = "Tiê\u0323n I\u0301ch";
		tabPage3.UseVisualStyleBackColor = true;
		tabPage4.Location = new Point(4, 64);
		((Control)tabPage4).Name = "tabPage4";
		((Control)tabPage4).Size = new Size(370, 466);
		tabPage4.TabIndex = 3;
		((Control)tabPage4).Text = "AutoClick";
		tabPage4.UseVisualStyleBackColor = true;
		tabPage5.Location = new Point(4, 64);
		((Control)tabPage5).Name = "tabPage5";
		((Control)tabPage5).Size = new Size(370, 466);
		tabPage5.TabIndex = 4;
		((Control)tabPage5).Text = "AutoLog";
		tabPage5.UseVisualStyleBackColor = true;
		tabPage6.Location = new Point(4, 64);
		((Control)tabPage6).Name = "tabPage6";
		((Control)tabPage6).Size = new Size(370, 466);
		tabPage6.TabIndex = 5;
		((Control)tabPage6).Text = "Daily";
		tabPage6.UseVisualStyleBackColor = true;
		tabPage7.Location = new Point(4, 64);
		((Control)tabPage7).Name = "tabPage7";
		((Control)tabPage7).Size = new Size(370, 466);
		tabPage7.TabIndex = 6;
		((Control)tabPage7).Text = "Trư\u0300 Ma";
		tabPage7.UseVisualStyleBackColor = true;
		tabPage8.Location = new Point(4, 64);
		((Control)tabPage8).Name = "tabPage8";
		((Control)tabPage8).Size = new Size(370, 466);
		tabPage8.TabIndex = 7;
		((Control)tabPage8).Text = "Bă\u0301t Pet";
		tabPage8.UseVisualStyleBackColor = true;
		tabPage9.Location = new Point(4, 64);
		((Control)tabPage9).Name = "tabPage9";
		((Control)tabPage9).Size = new Size(370, 466);
		tabPage9.TabIndex = 8;
		((Control)tabPage9).Text = "Đô\u0309i Năng Nô\u0309";
		tabPage9.UseVisualStyleBackColor = true;
		tabPage10.Location = new Point(4, 64);
		((Control)tabPage10).Name = "tabPage10";
		((Control)tabPage10).Size = new Size(370, 466);
		tabPage10.TabIndex = 9;
		((Control)tabPage10).Text = "Train";
		tabPage10.UseVisualStyleBackColor = true;
		tabPage11.Location = new Point(4, 64);
		((Control)tabPage11).Name = "tabPage11";
		((Control)tabPage11).Size = new Size(370, 466);
		tabPage11.TabIndex = 10;
		((Control)tabPage11).Text = "Hô\u0303 Trơ\u0323 Nhiê\u0323m Vu\u0323";
		tabPage11.UseVisualStyleBackColor = true;
		tabPage12.Location = new Point(4, 64);
		((Control)tabPage12).Name = "tabPage12";
		((Control)tabPage12).Size = new Size(370, 466);
		tabPage12.TabIndex = 11;
		((Control)tabPage12).Text = "Calendar";
		tabPage12.UseVisualStyleBackColor = true;
		tabPage13.Location = new Point(4, 44);
		((Control)tabPage13).Name = "tabPage13";
		((Control)tabPage13).Size = new Size(456, 486);
		tabPage13.TabIndex = 12;
		((Control)tabPage13).Text = "Ha\u0301i - Trô\u0300ng - Câu";
		tabPage13.UseVisualStyleBackColor = true;
		((ContainerControl)this).AutoScaleDimensions = new SizeF(7f, 15f);
		((ContainerControl)this).AutoScaleMode = (AutoScaleMode)1;
		((Form)this).ClientSize = new Size(487, 558);
		((Control)this).Controls.Add((Control)(object)tabControl1);
		((Form)this).FormBorderStyle = (FormBorderStyle)1;
		((Form)this).Icon = (Icon)((ResourceManager)val).GetObject("$this.Icon");
		((Form)this).MaximizeBox = false;
		((Control)this).Name = "GioiThieuTool";
		((Form)this).StartPosition = (FormStartPosition)1;
		((Control)this).Text = " ";
		((Form)this).Load += new EventHandler(GioiThieuTool_Load);
		((Control)tabControl1).ResumeLayout(false);
		((Control)this).ResumeLayout(false);
	}
}
