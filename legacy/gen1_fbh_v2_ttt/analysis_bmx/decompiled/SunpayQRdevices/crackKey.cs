using System;
using System.ComponentModel;
using System.Configuration;
using System.Diagnostics;
using System.Drawing;
using System.Windows.Forms;
using AutoTool;
using AutoTool.Properties;

namespace SunpayQRdevices;

public class crackKey : Form
{
	private IContainer components = null;

	private Button button1;

	private TextBox textBox1;

	private Label label1;

	private DateTimePicker date;

	private Button button2;

	private TextBox textBox2;

	private Label label2;

	private TextBox textBox3;

	private Label label3;

	private LinkLabel linkLabel1;

	private Button button3;

	private TextBox textBox4;

	private Label label4;

	private TextBox textBox5;

	private Label label5;

	public crackKey()
	{
		InitializeComponent();
	}

	private void button1_Click(object sender, EventArgs e)
	{
		//IL_0028: Unknown result type (might be due to invalid IL or missing references)
		//IL_005c: Unknown result type (might be due to invalid IL or missing references)
		if (((Control)textBox4).Text != "naminh97@gmail.com")
		{
			MessageBox.Show("Sai ID", "Kích Hoạt", (MessageBoxButtons)0, (MessageBoxIcon)16);
			return;
		}
		if (((Control)textBox5).Text != "autotoolbmx")
		{
			MessageBox.Show("Sai PASS", "Kích Hoạt", (MessageBoxButtons)0, (MessageBoxIcon)16);
			return;
		}
		int year = date.Value.Year;
		int i = year / 100;
		int i2 = year % 100;
		((Control)textBox1).Text = string.Concat(new string[8]
		{
			"240397Y",
			Program.AppMain.GetKeyActive(i),
			"M",
			Program.AppMain.GetKeyActive(i2),
			"M",
			Program.AppMain.GetKeyActive(date.Value.Month),
			"M",
			Program.AppMain.GetKeyActive(date.Value.Day)
		});
	}

	private void button2_Click(object sender, EventArgs e)
	{
		string text = ((Control)textBox2).Text;
		text = text.Remove(0, 7);
		string[] array = text.Split('M', (StringSplitOptions)0);
		int num = Program.AppMain.KeyActive.IndexOf(array[0]);
		int num2 = Program.AppMain.KeyActive.IndexOf(array[1]);
		int num3 = Program.AppMain.KeyActive.IndexOf(array[2]);
		int num4 = Program.AppMain.KeyActive.IndexOf(array[3]);
		((Control)textBox3).Text = string.Concat(new string[6]
		{
			num.ToString(),
			num2.ToString(),
			"  ",
			num3.ToString(),
			"  ",
			num4.ToString()
		});
	}

	private void crackKey_FormClosing(object sender, FormClosingEventArgs e)
	{
		Application.Exit();
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

	private void button3_Click(object sender, EventArgs e)
	{
		//IL_0028: Unknown result type (might be due to invalid IL or missing references)
		//IL_008d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0057: Unknown result type (might be due to invalid IL or missing references)
		if (((Control)textBox4).Text != "naminh97@gmail.com")
		{
			MessageBox.Show("Sai ID", "Kích Hoạt", (MessageBoxButtons)0, (MessageBoxIcon)16);
			return;
		}
		if (((Control)textBox5).Text != "autotoolbmx")
		{
			MessageBox.Show("Sai PASS", "Kích Hoạt", (MessageBoxButtons)0, (MessageBoxIcon)16);
			return;
		}
		Settings.Default.active = ((Control)textBox1).Text;
		((SettingsBase)Settings.Default).Save();
		MessageBox.Show("Xong", "Kích Hoạt", (MessageBoxButtons)0, (MessageBoxIcon)64);
		Application.Exit();
	}

	private void crackKey_Load(object sender, EventArgs e)
	{
		((Control)textBox1).Text = Settings.Default.active;
		((Control)textBox2).Text = ((Control)textBox1).Text;
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
		//IL_0002: Unknown result type (might be due to invalid IL or missing references)
		//IL_000c: Expected O, but got Unknown
		//IL_000d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0017: Expected O, but got Unknown
		//IL_0018: Unknown result type (might be due to invalid IL or missing references)
		//IL_0022: Expected O, but got Unknown
		//IL_0023: Unknown result type (might be due to invalid IL or missing references)
		//IL_002d: Expected O, but got Unknown
		//IL_002e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0038: Expected O, but got Unknown
		//IL_0039: Unknown result type (might be due to invalid IL or missing references)
		//IL_0043: Expected O, but got Unknown
		//IL_0044: Unknown result type (might be due to invalid IL or missing references)
		//IL_004e: Expected O, but got Unknown
		//IL_004f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0059: Expected O, but got Unknown
		//IL_005a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0064: Expected O, but got Unknown
		//IL_0065: Unknown result type (might be due to invalid IL or missing references)
		//IL_006f: Expected O, but got Unknown
		//IL_0070: Unknown result type (might be due to invalid IL or missing references)
		//IL_007a: Expected O, but got Unknown
		//IL_007b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0085: Expected O, but got Unknown
		//IL_0086: Unknown result type (might be due to invalid IL or missing references)
		//IL_0090: Expected O, but got Unknown
		//IL_0091: Unknown result type (might be due to invalid IL or missing references)
		//IL_009b: Expected O, but got Unknown
		//IL_009c: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a6: Expected O, but got Unknown
		//IL_00b7: Unknown result type (might be due to invalid IL or missing references)
		//IL_00cc: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0135: Unknown result type (might be due to invalid IL or missing references)
		//IL_013f: Expected O, but got Unknown
		//IL_014a: Unknown result type (might be due to invalid IL or missing references)
		//IL_015f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0188: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b7: Unknown result type (might be due to invalid IL or missing references)
		//IL_01cc: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0232: Unknown result type (might be due to invalid IL or missing references)
		//IL_0247: Unknown result type (might be due to invalid IL or missing references)
		//IL_026d: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_032f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0339: Expected O, but got Unknown
		//IL_0347: Unknown result type (might be due to invalid IL or missing references)
		//IL_035c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0385: Unknown result type (might be due to invalid IL or missing references)
		//IL_03b7: Unknown result type (might be due to invalid IL or missing references)
		//IL_03cc: Unknown result type (might be due to invalid IL or missing references)
		//IL_03f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0428: Unknown result type (might be due to invalid IL or missing references)
		//IL_043d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0463: Unknown result type (might be due to invalid IL or missing references)
		//IL_0495: Unknown result type (might be due to invalid IL or missing references)
		//IL_04aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_04d0: Unknown result type (might be due to invalid IL or missing references)
		//IL_0518: Unknown result type (might be due to invalid IL or missing references)
		//IL_0522: Expected O, but got Unknown
		//IL_0533: Unknown result type (might be due to invalid IL or missing references)
		//IL_0548: Unknown result type (might be due to invalid IL or missing references)
		//IL_0571: Unknown result type (might be due to invalid IL or missing references)
		//IL_05b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_05be: Expected O, but got Unknown
		//IL_05cc: Unknown result type (might be due to invalid IL or missing references)
		//IL_05e1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0607: Unknown result type (might be due to invalid IL or missing references)
		//IL_064a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0654: Expected O, but got Unknown
		//IL_0662: Unknown result type (might be due to invalid IL or missing references)
		//IL_0677: Unknown result type (might be due to invalid IL or missing references)
		//IL_06a0: Unknown result type (might be due to invalid IL or missing references)
		//IL_06d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_06e7: Unknown result type (might be due to invalid IL or missing references)
		//IL_070d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0743: Unknown result type (might be due to invalid IL or missing references)
		//IL_0758: Unknown result type (might be due to invalid IL or missing references)
		//IL_077e: Unknown result type (might be due to invalid IL or missing references)
		//IL_07b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_07c5: Unknown result type (might be due to invalid IL or missing references)
		//IL_07eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_081f: Unknown result type (might be due to invalid IL or missing references)
		//IL_083d: Unknown result type (might be due to invalid IL or missing references)
		//IL_095b: Unknown result type (might be due to invalid IL or missing references)
		//IL_098e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0998: Expected O, but got Unknown
		//IL_09a1: Unknown result type (might be due to invalid IL or missing references)
		//IL_09ab: Expected O, but got Unknown
		button1 = new Button();
		textBox1 = new TextBox();
		label1 = new Label();
		date = new DateTimePicker();
		button2 = new Button();
		textBox2 = new TextBox();
		label2 = new Label();
		textBox3 = new TextBox();
		label3 = new Label();
		linkLabel1 = new LinkLabel();
		button3 = new Button();
		textBox4 = new TextBox();
		label4 = new Label();
		textBox5 = new TextBox();
		label5 = new Label();
		((Control)this).SuspendLayout();
		((Control)button1).Location = new Point(69, 74);
		((Control)button1).Margin = new Padding(4, 3, 4, 3);
		((Control)button1).Name = "button1";
		((Control)button1).Size = new Size(88, 27);
		((Control)button1).TabIndex = 1;
		((Control)button1).Text = "Tạo mã";
		((ButtonBase)button1).UseVisualStyleBackColor = true;
		((Control)button1).Click += new EventHandler(button1_Click);
		((Control)textBox1).Location = new Point(69, 44);
		((Control)textBox1).Margin = new Padding(4, 3, 4, 3);
		((Control)textBox1).Name = "textBox1";
		((Control)textBox1).Size = new Size(506, 23);
		((Control)textBox1).TabIndex = 2;
		((Control)label1).AutoSize = true;
		((Control)label1).Location = new Point(33, 47);
		((Control)label1).Margin = new Padding(4, 0, 4, 0);
		((Control)label1).Name = "label1";
		((Control)label1).Size = new Size(26, 15);
		((Control)label1).TabIndex = 3;
		((Control)label1).Text = "Key";
		date.Format = (DateTimePickerFormat)2;
		((Control)date).Location = new Point(69, 14);
		((Control)date).Margin = new Padding(4, 3, 4, 3);
		((Control)date).Name = "date";
		((Control)date).Size = new Size(125, 23);
		((Control)date).TabIndex = 4;
		date.Value = new System.DateTime(2021, 6, 2, 23, 57, 57, 0);
		((Control)button2).Location = new Point(69, 212);
		((Control)button2).Margin = new Padding(4, 3, 4, 3);
		((Control)button2).Name = "button2";
		((Control)button2).Size = new Size(88, 27);
		((Control)button2).TabIndex = 1;
		((Control)button2).Text = "dịch mã";
		((ButtonBase)button2).UseVisualStyleBackColor = true;
		((Control)button2).Click += new EventHandler(button2_Click);
		((Control)textBox2).Location = new Point(69, 152);
		((Control)textBox2).Margin = new Padding(4, 3, 4, 3);
		((Control)textBox2).Name = "textBox2";
		((Control)textBox2).Size = new Size(506, 23);
		((Control)textBox2).TabIndex = 2;
		((Control)label2).AutoSize = true;
		((Control)label2).Location = new Point(33, 152);
		((Control)label2).Margin = new Padding(4, 0, 4, 0);
		((Control)label2).Name = "label2";
		((Control)label2).Size = new Size(26, 15);
		((Control)label2).TabIndex = 3;
		((Control)label2).Text = "Key";
		((Control)textBox3).Location = new Point(69, 182);
		((Control)textBox3).Margin = new Padding(4, 3, 4, 3);
		((Control)textBox3).Name = "textBox3";
		((Control)textBox3).Size = new Size(125, 23);
		((Control)textBox3).TabIndex = 2;
		((Control)label3).AutoSize = true;
		((Control)label3).Location = new Point(33, 186);
		((Control)label3).Margin = new Padding(4, 0, 4, 0);
		((Control)label3).Name = "label3";
		((Control)label3).Size = new Size(27, 15);
		((Control)label3).TabIndex = 3;
		((Control)label3).Text = "Day";
		((Control)linkLabel1).AutoSize = true;
		((Control)linkLabel1).Font = new Font("Microsoft Sans Serif", 11.25f, (FontStyle)0, (GraphicsUnit)3);
		((Control)linkLabel1).Location = new Point(329, 239);
		((Control)linkLabel1).Margin = new Padding(4, 0, 4, 0);
		((Control)linkLabel1).Name = "linkLabel1";
		((Control)linkLabel1).Size = new Size(211, 18);
		((Control)linkLabel1).TabIndex = 5;
		linkLabel1.TabStop = true;
		((Control)linkLabel1).Text = "Liên hệ: naminh97@gmail.com";
		linkLabel1.LinkClicked += new LinkLabelLinkClickedEventHandler(linkLabel1_LinkClicked);
		((Control)button3).Location = new Point(190, 74);
		((Control)button3).Margin = new Padding(4, 3, 4, 3);
		((Control)button3).Name = "button3";
		((Control)button3).Size = new Size(88, 27);
		((Control)button3).TabIndex = 1;
		((Control)button3).Text = "Kích Hoạt";
		((ButtonBase)button3).UseVisualStyleBackColor = true;
		((Control)button3).Click += new EventHandler(button3_Click);
		((Control)textBox4).Location = new Point(233, 14);
		((Control)textBox4).Margin = new Padding(4, 3, 4, 3);
		((Control)textBox4).Name = "textBox4";
		((Control)textBox4).Size = new Size(148, 23);
		((Control)textBox4).TabIndex = 2;
		((Control)label4).AutoSize = true;
		((Control)label4).Location = new Point(202, 17);
		((Control)label4).Margin = new Padding(4, 0, 4, 0);
		((Control)label4).Name = "label4";
		((Control)label4).Size = new Size(21, 15);
		((Control)label4).TabIndex = 3;
		((Control)label4).Text = "ID:";
		((Control)textBox5).Location = new Point(442, 14);
		((Control)textBox5).Margin = new Padding(4, 3, 4, 3);
		((Control)textBox5).Name = "textBox5";
		((Control)textBox5).Size = new Size(104, 23);
		((Control)textBox5).TabIndex = 2;
		((Control)label5).AutoSize = true;
		((Control)label5).Location = new Point(391, 17);
		((Control)label5).Margin = new Padding(4, 0, 4, 0);
		((Control)label5).Name = "label5";
		((Control)label5).Size = new Size(36, 15);
		((Control)label5).TabIndex = 3;
		((Control)label5).Text = "PASS:";
		((ContainerControl)this).AutoScaleDimensions = new SizeF(7f, 15f);
		((ContainerControl)this).AutoScaleMode = (AutoScaleMode)1;
		((Form)this).ClientSize = new Size(587, 270);
		((Control)this).Controls.Add((Control)(object)linkLabel1);
		((Control)this).Controls.Add((Control)(object)date);
		((Control)this).Controls.Add((Control)(object)label3);
		((Control)this).Controls.Add((Control)(object)label2);
		((Control)this).Controls.Add((Control)(object)label5);
		((Control)this).Controls.Add((Control)(object)label4);
		((Control)this).Controls.Add((Control)(object)label1);
		((Control)this).Controls.Add((Control)(object)textBox3);
		((Control)this).Controls.Add((Control)(object)textBox2);
		((Control)this).Controls.Add((Control)(object)button3);
		((Control)this).Controls.Add((Control)(object)button2);
		((Control)this).Controls.Add((Control)(object)textBox5);
		((Control)this).Controls.Add((Control)(object)textBox4);
		((Control)this).Controls.Add((Control)(object)textBox1);
		((Control)this).Controls.Add((Control)(object)button1);
		((Form)this).Margin = new Padding(4, 3, 4, 3);
		((Control)this).Name = "crackKey";
		((Form)this).StartPosition = (FormStartPosition)1;
		((Control)this).Text = "crackKey";
		((Form)this).FormClosing += new FormClosingEventHandler(crackKey_FormClosing);
		((Form)this).Load += new EventHandler(crackKey_Load);
		((Control)this).ResumeLayout(false);
		((Control)this).PerformLayout();
	}
}
