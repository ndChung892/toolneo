using System;
using System.ComponentModel;
using System.Configuration;
using System.Drawing;
using System.Resources;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using AutoTool.Properties;

namespace AutoTool;

public class ThongTin : Form
{
	private IContainer components = null;

	private TextBox textBox1;

	private Button button1;

	private Button button2;

	private Button button3;

	private Button button4;

	private Panel panel1;

	private Panel panel2;

	private Panel panel4;

	private Panel panel3;

	private Label label1;

	private Label label2;

	public ThongTin()
	{
		InitializeComponent();
	}

	private void ThongTin_Load(object sender, EventArgs e)
	{
		//IL_0060: Unknown result type (might be due to invalid IL or missing references)
		((Control)this).Text = "[BMx v" + Program.AppMain.version + "] Thông Tin";
		((Control)textBox1).Text = Settings.Default.inforWindow;
		Settings.Default.inforWindow = "";
		((SettingsBase)Settings.Default).Save();
		((TextBoxBase)textBox1).ReadOnly = true;
		((Control)textBox1).BackColor = Color.White;
	}

	private void ThongTin_FormClosed(object sender, FormClosedEventArgs e)
	{
		//IL_000f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0019: Expected O, but got Unknown
		Login login = new Login();
		((Form)login).Closed += (EventHandler)([CompilerGenerated] (object? s, EventArgs args) =>
		{
			((Form)this).Close();
		});
	}

	private void button1_Click(object sender, EventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0007: Expected O, but got Unknown
		//IL_0033: Unknown result type (might be due to invalid IL or missing references)
		//IL_0038: Unknown result type (might be due to invalid IL or missing references)
		//IL_0042: Expected O, but got Unknown
		//IL_0044: Unknown result type (might be due to invalid IL or missing references)
		//IL_004a: Invalid comparison between Unknown and I4
		FontDialog val = new FontDialog();
		val.Font = new Font(((Control)textBox1).Font.FontFamily, ((Control)textBox1).Font.Size, ((Control)textBox1).Font.Style);
		if ((int)((CommonDialog)val).ShowDialog() == 1)
		{
			((Control)textBox1).Font = val.Font;
		}
	}

	private void button2_Click(object sender, EventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0007: Expected O, but got Unknown
		//IL_0008: Unknown result type (might be due to invalid IL or missing references)
		//IL_000e: Invalid comparison between Unknown and I4
		//IL_001c: Unknown result type (might be due to invalid IL or missing references)
		ColorDialog val = new ColorDialog();
		if ((int)((CommonDialog)val).ShowDialog() == 1)
		{
			((Control)textBox1).ForeColor = val.Color;
		}
	}

	private void button3_Click(object sender, EventArgs e)
	{
		((Control)textBox1).Text = ((Control)textBox1).Text.ToUpper();
	}

	private void button4_Click(object sender, EventArgs e)
	{
		((Control)textBox1).Text = ((Control)textBox1).Text.ToLower();
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
		//IL_00ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f7: Expected O, but got Unknown
		//IL_0100: Unknown result type (might be due to invalid IL or missing references)
		//IL_0146: Unknown result type (might be due to invalid IL or missing references)
		//IL_0168: Unknown result type (might be due to invalid IL or missing references)
		//IL_018e: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_01db: Expected O, but got Unknown
		//IL_01e9: Unknown result type (might be due to invalid IL or missing references)
		//IL_020f: Unknown result type (might be due to invalid IL or missing references)
		//IL_025f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0269: Expected O, but got Unknown
		//IL_0274: Unknown result type (might be due to invalid IL or missing references)
		//IL_029a: Unknown result type (might be due to invalid IL or missing references)
		//IL_02dd: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e7: Expected O, but got Unknown
		//IL_02f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_031b: Unknown result type (might be due to invalid IL or missing references)
		//IL_035e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0368: Expected O, but got Unknown
		//IL_03f1: Unknown result type (might be due to invalid IL or missing references)
		//IL_041a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0476: Unknown result type (might be due to invalid IL or missing references)
		//IL_04a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_04e6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0512: Unknown result type (might be due to invalid IL or missing references)
		//IL_055a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0583: Unknown result type (might be due to invalid IL or missing references)
		//IL_05ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_05c4: Expected O, but got Unknown
		//IL_05cd: Unknown result type (might be due to invalid IL or missing references)
		//IL_05f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_063e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0648: Expected O, but got Unknown
		//IL_064f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0667: Unknown result type (might be due to invalid IL or missing references)
		//IL_0690: Unknown result type (might be due to invalid IL or missing references)
		//IL_06c4: Unknown result type (might be due to invalid IL or missing references)
		//IL_06e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_071d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0727: Expected O, but got Unknown
		//IL_0750: Unknown result type (might be due to invalid IL or missing references)
		//IL_075a: Expected O, but got Unknown
		//IL_0763: Unknown result type (might be due to invalid IL or missing references)
		//IL_076d: Expected O, but got Unknown
		ComponentResourceManager val = new ComponentResourceManager(typeof(ThongTin));
		textBox1 = new TextBox();
		button1 = new Button();
		button2 = new Button();
		button3 = new Button();
		button4 = new Button();
		panel1 = new Panel();
		panel2 = new Panel();
		panel4 = new Panel();
		panel3 = new Panel();
		label1 = new Label();
		label2 = new Label();
		((Control)panel1).SuspendLayout();
		((Control)panel2).SuspendLayout();
		((Control)panel4).SuspendLayout();
		((Control)panel3).SuspendLayout();
		((Control)this).SuspendLayout();
		((TextBoxBase)textBox1).BorderStyle = (BorderStyle)1;
		((Control)textBox1).Dock = (DockStyle)5;
		((Control)textBox1).Font = new Font("Segoe UI", 11f, (FontStyle)0, (GraphicsUnit)3);
		((Control)textBox1).Location = new Point(0, 0);
		((TextBoxBase)textBox1).Multiline = true;
		((Control)textBox1).Name = "textBox1";
		textBox1.ScrollBars = (ScrollBars)2;
		((Control)textBox1).Size = new Size(533, 401);
		((Control)textBox1).TabIndex = 0;
		((Control)button1).Location = new Point(12, 12);
		((Control)button1).Name = "button1";
		((Control)button1).Size = new Size(75, 23);
		((Control)button1).TabIndex = 1;
		((Control)button1).Text = "Font";
		((ButtonBase)button1).UseVisualStyleBackColor = true;
		((Control)button1).Click += new EventHandler(button1_Click);
		((Control)button2).Location = new Point(255, 12);
		((Control)button2).Name = "button2";
		((Control)button2).Size = new Size(75, 23);
		((Control)button2).TabIndex = 1;
		((Control)button2).Text = "Color";
		((ButtonBase)button2).UseVisualStyleBackColor = true;
		((Control)button2).Visible = false;
		((Control)button2).Click += new EventHandler(button2_Click);
		((Control)button3).Location = new Point(93, 12);
		((Control)button3).Name = "button3";
		((Control)button3).Size = new Size(75, 23);
		((Control)button3).TabIndex = 1;
		((Control)button3).Text = "Upper";
		((ButtonBase)button3).UseVisualStyleBackColor = true;
		((Control)button3).Click += new EventHandler(button3_Click);
		((Control)button4).Location = new Point(174, 12);
		((Control)button4).Name = "button4";
		((Control)button4).Size = new Size(75, 23);
		((Control)button4).TabIndex = 1;
		((Control)button4).Text = "Lower";
		((ButtonBase)button4).UseVisualStyleBackColor = true;
		((Control)button4).Click += new EventHandler(button4_Click);
		((Control)panel1).Controls.Add((Control)(object)label2);
		((Control)panel1).Controls.Add((Control)(object)button1);
		((Control)panel1).Controls.Add((Control)(object)button4);
		((Control)panel1).Controls.Add((Control)(object)button2);
		((Control)panel1).Controls.Add((Control)(object)button3);
		((Control)panel1).Dock = (DockStyle)1;
		((Control)panel1).Location = new Point(0, 0);
		((Control)panel1).Name = "panel1";
		((Control)panel1).Size = new Size(533, 47);
		((Control)panel1).TabIndex = 2;
		((Control)panel2).Controls.Add((Control)(object)panel4);
		((Control)panel2).Controls.Add((Control)(object)panel3);
		((Control)panel2).Dock = (DockStyle)5;
		((Control)panel2).Location = new Point(0, 47);
		((Control)panel2).Name = "panel2";
		((Control)panel2).Size = new Size(533, 429);
		((Control)panel2).TabIndex = 3;
		((Control)panel4).Controls.Add((Control)(object)textBox1);
		((Control)panel4).Dock = (DockStyle)5;
		((Control)panel4).Location = new Point(0, 0);
		((Control)panel4).Name = "panel4";
		((Control)panel4).Size = new Size(533, 401);
		((Control)panel4).TabIndex = 1;
		((Control)panel3).Controls.Add((Control)(object)label1);
		((Control)panel3).Dock = (DockStyle)2;
		((Control)panel3).Location = new Point(0, 401);
		((Control)panel3).Name = "panel3";
		((Control)panel3).Size = new Size(533, 28);
		((Control)panel3).TabIndex = 1;
		((Control)label1).AutoSize = true;
		((Control)label1).Font = new Font("Segoe UI", 8f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label1).Location = new Point(8, 8);
		((Control)label1).Name = "label1";
		((Control)label1).Size = new Size(306, 13);
		((Control)label1).TabIndex = 0;
		((Control)label1).Text = "[ BMxTool-VPT ] naminh97@gmail.com - Nguyễn Anh Minh";
		((Control)label2).AutoSize = true;
		((Control)label2).Font = new Font("Segoe UI", 8f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label2).ForeColor = Color.Blue;
		((Control)label2).Location = new Point(336, 17);
		((Control)label2).Name = "label2";
		((Control)label2).Size = new Size(186, 13);
		((Control)label2).TabIndex = 0;
		((Control)label2).Text = "*Kéo 4 cạnh để thay đổi kích thước";
		((ContainerControl)this).AutoScaleDimensions = new SizeF(7f, 15f);
		((ContainerControl)this).AutoScaleMode = (AutoScaleMode)1;
		((Form)this).ClientSize = new Size(533, 476);
		((Control)this).Controls.Add((Control)(object)panel2);
		((Control)this).Controls.Add((Control)(object)panel1);
		((Form)this).Icon = (Icon)((ResourceManager)val).GetObject("$this.Icon");
		((Control)this).Name = "ThongTin";
		((Form)this).StartPosition = (FormStartPosition)1;
		((Control)this).Text = "ThongTin";
		((Form)this).FormClosed += new FormClosedEventHandler(ThongTin_FormClosed);
		((Form)this).Load += new EventHandler(ThongTin_Load);
		((Control)panel1).ResumeLayout(false);
		((Control)panel1).PerformLayout();
		((Control)panel2).ResumeLayout(false);
		((Control)panel4).ResumeLayout(false);
		((Control)panel4).PerformLayout();
		((Control)panel3).ResumeLayout(false);
		((Control)panel3).PerformLayout();
		((Control)this).ResumeLayout(false);
	}
}
