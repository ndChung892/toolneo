using System;
using System.ComponentModel;
using System.Configuration;
using System.Diagnostics;
using System.Drawing;
using System.Resources;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using AutoTool;
using AutoTool.Properties;

namespace SunpayQRdevices;

public class ActiveKey : Form
{
	private bool restart = false;

	private IContainer components = null;

	private TextBox textBox1;

	private Label label1;

	private Button button1;

	private Button button2;

	private TextBox textBox2;

	private LinkLabel linkLabel1;

	public ActiveKey()
	{
		InitializeComponent();
	}

	private void button1_Click(object sender, EventArgs e)
	{
		//IL_0037: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0156: Unknown result type (might be due to invalid IL or missing references)
		string text = ((Control)textBox1).Text;
		string text2 = text.Substring(0, 7);
		if (text.Length != 58)
		{
			MessageBox.Show("ID không hợp lệ", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)16);
			((Control)textBox2).Text = "Số Ký Tự Không Hợp Lệ\r\n";
			((Control)button2).Enabled = false;
			return;
		}
		((Control)textBox2).Text = "Số Ký Tự Hợp Lệ\r\n";
		text = text.Remove(0, 7);
		string[] array = text.Split('M', (StringSplitOptions)0);
		if (array.Length != 4)
		{
			MessageBox.Show("ID không hợp lệ", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)16);
			TextBox obj = textBox2;
			((Control)obj).Text = ((Control)obj).Text + "ID Không Hợp Lệ\r\n";
			((Control)button2).Enabled = false;
			return;
		}
		TextBox obj2 = textBox2;
		((Control)obj2).Text = ((Control)obj2).Text + "ID Hợp Lệ\r\n";
		int num = Program.AppMain.KeyActive.IndexOf(array[0]);
		int num2 = Program.AppMain.KeyActive.IndexOf(array[1]);
		int num3 = Program.AppMain.KeyActive.IndexOf(array[2]);
		int num4 = Program.AppMain.KeyActive.IndexOf(array[3]);
		if (num < 0 || num2 < 0 || num3 < 0 || num4 < 0)
		{
			MessageBox.Show("ID Không Chính Xác", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)16);
			TextBox obj3 = textBox2;
			((Control)obj3).Text = ((Control)obj3).Text + "ID Không Chính Xác\r\n";
			((Control)button2).Enabled = false;
			return;
		}
		TextBox obj4 = textBox2;
		((Control)obj4).Text = ((Control)obj4).Text + "ID Chính Xác\r\n";
		if (text2 == "000000")
		{
			TextBox obj5 = textBox2;
			((Control)obj5).Text = ((Control)obj5).Text + "Key Người Dùng\r\n";
		}
		else
		{
			TextBox obj6 = textBox2;
			((Control)obj6).Text = ((Control)obj6).Text + "Key Dùng Thử\r\n";
		}
		TextBox val = textBox2;
		((Control)val).Text = string.Concat(new string[9]
		{
			((Control)val).Text,
			"Sử Dụng Tới Ngày: ",
			num4.ToString(),
			" Tháng: ",
			num3.ToString(),
			" Năm: ",
			num.ToString(),
			num2.ToString(),
			"\r\n"
		});
		TextBox obj7 = textBox2;
		((Control)obj7).Text = ((Control)obj7).Text + "Nhấn nút \"Kích Hoạt\" để xác nhận và sử dụng!";
		((Control)button2).Enabled = true;
	}

	private void button2_Click(object sender, EventArgs e)
	{
		//IL_002f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0057: Unknown result type (might be due to invalid IL or missing references)
		//IL_0061: Expected O, but got Unknown
		Settings.Default.active = ((Control)textBox1).Text;
		((SettingsBase)Settings.Default).Save();
		MessageBox.Show("Xong", "Kích Hoạt", (MessageBoxButtons)0, (MessageBoxIcon)64);
		restart = true;
		Program.AppMain.IsOff = true;
		Login login = new Login();
		((Control)this).Hide();
		((Form)login).Closed += (EventHandler)([CompilerGenerated] (object? s, EventArgs args) =>
		{
			((Form)this).Close();
		});
		((Control)login).Show();
	}

	private void Form1_FormClosing(object sender, FormClosingEventArgs e)
	{
		//IL_0025: Unknown result type (might be due to invalid IL or missing references)
		//IL_002f: Expected O, but got Unknown
		if (!restart)
		{
			Login login = new Login();
			((Control)this).Hide();
			((Form)login).Closed += (EventHandler)([CompilerGenerated] (object? s, EventArgs args) =>
			{
				((Form)this).Close();
			});
			((Control)login).Show();
		}
	}

	private void Form1_Load(object sender, EventArgs e)
	{
		((Control)textBox1).Text = Settings.Default.active;
	}

	private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0006: Unknown result type (might be due to invalid IL or missing references)
		//IL_0012: Unknown result type (might be due to invalid IL or missing references)
		//IL_001f: Expected O, but got Unknown
		Process.Start(new ProcessStartInfo
		{
			FileName = "https://www.facebook.com/nguyenanhminh.97",
			UseShellExecute = true
		});
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
		//IL_006d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0077: Expected O, but got Unknown
		//IL_0082: Unknown result type (might be due to invalid IL or missing references)
		//IL_00b8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0105: Unknown result type (might be due to invalid IL or missing references)
		//IL_012b: Unknown result type (might be due to invalid IL or missing references)
		//IL_015e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0187: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d4: Expected O, but got Unknown
		//IL_01ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_0215: Unknown result type (might be due to invalid IL or missing references)
		//IL_0258: Unknown result type (might be due to invalid IL or missing references)
		//IL_0262: Expected O, but got Unknown
		//IL_0276: Unknown result type (might be due to invalid IL or missing references)
		//IL_0280: Expected O, but got Unknown
		//IL_028b: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0309: Unknown result type (might be due to invalid IL or missing references)
		//IL_0313: Expected O, but got Unknown
		//IL_0321: Unknown result type (might be due to invalid IL or missing references)
		//IL_034a: Unknown result type (might be due to invalid IL or missing references)
		//IL_038d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0397: Expected O, but got Unknown
		//IL_03a3: Unknown result type (might be due to invalid IL or missing references)
		//IL_03c1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0444: Unknown result type (might be due to invalid IL or missing references)
		//IL_044e: Expected O, but got Unknown
		//IL_0477: Unknown result type (might be due to invalid IL or missing references)
		//IL_0481: Expected O, but got Unknown
		//IL_048a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0494: Expected O, but got Unknown
		ComponentResourceManager val = new ComponentResourceManager(typeof(ActiveKey));
		textBox1 = new TextBox();
		label1 = new Label();
		button1 = new Button();
		button2 = new Button();
		textBox2 = new TextBox();
		linkLabel1 = new LinkLabel();
		((Control)this).SuspendLayout();
		((Control)textBox1).Font = new Font("Microsoft Sans Serif", 9.75f, (FontStyle)0, (GraphicsUnit)3, (byte)0);
		((Control)textBox1).Location = new Point(12, 25);
		((TextBoxBase)textBox1).Multiline = true;
		((Control)textBox1).Name = "textBox1";
		((Control)textBox1).Size = new Size(414, 32);
		((Control)textBox1).TabIndex = 0;
		((Control)textBox1).Text = "240397Y2984-63E-565M5331-45Y-32FM3524-69W-00FM9332-10L-0IO";
		textBox1.TextAlign = (HorizontalAlignment)2;
		((Control)label1).AutoSize = true;
		((Control)label1).Location = new Point(12, 9);
		((Control)label1).Name = "label1";
		((Control)label1).Size = new Size(34, 13);
		((Control)label1).TabIndex = 1;
		((Control)label1).Text = "VerID";
		((Control)button1).Location = new Point(12, 63);
		((Control)button1).Name = "button1";
		((Control)button1).Size = new Size(129, 23);
		((Control)button1).TabIndex = 2;
		((Control)button1).Text = "Kiểm Tra ID Hợp Lệ";
		((ButtonBase)button1).UseVisualStyleBackColor = true;
		((Control)button1).Click += new EventHandler(button1_Click);
		((Control)button2).Enabled = false;
		((Control)button2).Location = new Point(12, 92);
		((Control)button2).Name = "button2";
		((Control)button2).Size = new Size(129, 23);
		((Control)button2).TabIndex = 2;
		((Control)button2).Text = "Lưu - Khởi Động Lại";
		((ButtonBase)button2).UseVisualStyleBackColor = true;
		((Control)button2).Click += new EventHandler(button2_Click);
		((Control)textBox2).Font = new Font("Microsoft Sans Serif", 11.25f, (FontStyle)2, (GraphicsUnit)3, (byte)0);
		((Control)textBox2).Location = new Point(12, 121);
		((TextBoxBase)textBox2).Multiline = true;
		((Control)textBox2).Name = "textBox2";
		((TextBoxBase)textBox2).ReadOnly = true;
		((Control)textBox2).Size = new Size(414, 158);
		((Control)textBox2).TabIndex = 0;
		((Control)linkLabel1).AutoSize = true;
		((Control)linkLabel1).Font = new Font("Microsoft Sans Serif", 11.25f, (FontStyle)0, (GraphicsUnit)3, (byte)0);
		((Control)linkLabel1).Location = new Point(220, 97);
		((Control)linkLabel1).Name = "linkLabel1";
		((Control)linkLabel1).Size = new Size(211, 18);
		((Control)linkLabel1).TabIndex = 3;
		linkLabel1.TabStop = true;
		((Control)linkLabel1).Text = "Liên hệ: naminh97@gmail.com";
		linkLabel1.LinkClicked += new LinkLabelLinkClickedEventHandler(linkLabel1_LinkClicked);
		((ContainerControl)this).AutoScaleDimensions = new SizeF(6f, 13f);
		((ContainerControl)this).AutoScaleMode = (AutoScaleMode)1;
		((Form)this).ClientSize = new Size(440, 287);
		((Control)this).Controls.Add((Control)(object)linkLabel1);
		((Control)this).Controls.Add((Control)(object)button2);
		((Control)this).Controls.Add((Control)(object)button1);
		((Control)this).Controls.Add((Control)(object)label1);
		((Control)this).Controls.Add((Control)(object)textBox2);
		((Control)this).Controls.Add((Control)(object)textBox1);
		((Form)this).Icon = (Icon)((ResourceManager)val).GetObject("$this.Icon");
		((Control)this).Name = "Form1";
		((Form)this).StartPosition = (FormStartPosition)1;
		((Control)this).Text = "Thông Tin Phiên Bản Phần Mềm";
		((Form)this).FormClosing += new FormClosingEventHandler(Form1_FormClosing);
		((Form)this).Load += new EventHandler(Form1_Load);
		((Control)this).ResumeLayout(false);
		((Control)this).PerformLayout();
	}
}
