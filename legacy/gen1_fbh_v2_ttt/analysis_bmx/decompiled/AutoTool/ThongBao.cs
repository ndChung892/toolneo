using System;
using System.ComponentModel;
using System.Drawing;
using System.Media;
using System.Resources;
using System.Windows.Forms;
using AutoTool.Properties;

namespace AutoTool;

public class ThongBao : Form
{
	private string music = "";

	public string returnValue = "";

	private int button = 0;

	private IContainer components = null;

	private Label label1;

	private PictureBox pictureBox1;

	private TextBox textBox1;

	private Button button1;

	private Button button2;

	private Panel panel1;

	public ThongBao()
	{
		InitializeComponent();
	}

	private void ThongBao_Load(object sender, EventArgs e)
	{
		//IL_0027: Unknown result type (might be due to invalid IL or missing references)
		//IL_010f: Unknown result type (might be due to invalid IL or missing references)
		((Control)this).Text = "BMx-Tool VPT [v" + Program.AppMain.version + "] - Thông Ba\u0301o";
		((Form)this).Size = new Size(451, 211);
		music = Program.AppMain.iconNoti;
		string text = music;
		string text2 = text;
		if (!(text2 == "info"))
		{
			if (!(text2 == "warn"))
			{
				if (text2 == "err")
				{
					pictureBox1.Image = (Image)(object)Resources.error;
					SystemSounds.Asterisk.Play();
				}
			}
			else
			{
				pictureBox1.Image = (Image)(object)Resources.war;
				SystemSounds.Asterisk.Play();
			}
		}
		else
		{
			pictureBox1.Image = (Image)(object)Resources.infor;
			SystemSounds.Hand.Play();
		}
		((Control)label1).Text = Program.AppMain.titleNoti;
		((Control)textBox1).Text = Program.AppMain.contentNoti;
		string buttonNoti = Program.AppMain.buttonNoti;
		string text3 = buttonNoti;
		if (text3 == "YesNo")
		{
			((Form)this).Size = new Size(451, 265);
		}
		if (Program.AppMain.txtNoti != "null")
		{
			string[] array = Program.AppMain.txtNoti.Split('-', (StringSplitOptions)0);
			((Control)button1).Text = array[0];
			((Control)button2).Text = array[1];
		}
	}

	private void button1_Click(object sender, EventArgs e)
	{
		((Form)this).DialogResult = (DialogResult)6;
		((Form)this).Close();
	}

	private void button2_Click(object sender, EventArgs e)
	{
		((Form)this).DialogResult = (DialogResult)7;
		((Form)this).Close();
	}

	private void ThongBao_KeyDown(object sender, KeyEventArgs e)
	{
		//IL_0002: Unknown result type (might be due to invalid IL or missing references)
		//IL_0009: Invalid comparison between Unknown and I4
		//IL_000c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0013: Invalid comparison between Unknown and I4
		if ((int)e.KeyCode == 13 || (int)e.KeyCode == 32)
		{
			((Form)this).DialogResult = (DialogResult)6;
			((Form)this).Close();
		}
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
		//IL_0091: Unknown result type (might be due to invalid IL or missing references)
		//IL_009b: Expected O, but got Unknown
		//IL_00a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0122: Unknown result type (might be due to invalid IL or missing references)
		//IL_014e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0185: Unknown result type (might be due to invalid IL or missing references)
		//IL_018f: Expected O, but got Unknown
		//IL_019d: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_0222: Unknown result type (might be due to invalid IL or missing references)
		//IL_0248: Unknown result type (might be due to invalid IL or missing references)
		//IL_028b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0295: Expected O, but got Unknown
		//IL_02a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c8: Unknown result type (might be due to invalid IL or missing references)
		//IL_030b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0315: Expected O, but got Unknown
		//IL_031c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0361: Unknown result type (might be due to invalid IL or missing references)
		//IL_038a: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_03cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0432: Unknown result type (might be due to invalid IL or missing references)
		//IL_043c: Expected O, but got Unknown
		//IL_047d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0487: Expected O, but got Unknown
		//IL_0490: Unknown result type (might be due to invalid IL or missing references)
		//IL_049a: Expected O, but got Unknown
		ComponentResourceManager val = new ComponentResourceManager(typeof(ThongBao));
		label1 = new Label();
		pictureBox1 = new PictureBox();
		textBox1 = new TextBox();
		button1 = new Button();
		button2 = new Button();
		panel1 = new Panel();
		((ISupportInitialize)pictureBox1).BeginInit();
		((Control)panel1).SuspendLayout();
		((Control)this).SuspendLayout();
		label1.BorderStyle = (BorderStyle)1;
		((Control)label1).Font = new Font("Segoe UI", 18f, (FontStyle)1, (GraphicsUnit)3);
		((Control)label1).Location = new Point(137, 3);
		((Control)label1).Name = "label1";
		((Control)label1).Size = new Size(292, 43);
		((Control)label1).TabIndex = 0;
		((Control)label1).Text = "Tiêu Đê\u0300";
		label1.TextAlign = (ContentAlignment)32;
		pictureBox1.Image = (Image)(object)Resources.error;
		((Control)pictureBox1).Location = new Point(3, 21);
		((Control)pictureBox1).Name = "pictureBox1";
		((Control)pictureBox1).Size = new Size(128, 128);
		pictureBox1.TabIndex = 1;
		pictureBox1.TabStop = false;
		((Control)textBox1).Font = new Font("Segoe UI", 12f, (FontStyle)0, (GraphicsUnit)3);
		((Control)textBox1).Location = new Point(137, 49);
		((TextBoxBase)textBox1).Multiline = true;
		((Control)textBox1).Name = "textBox1";
		((TextBoxBase)textBox1).ReadOnly = true;
		textBox1.ScrollBars = (ScrollBars)2;
		((Control)textBox1).Size = new Size(292, 116);
		((Control)textBox1).TabIndex = 2;
		((Control)textBox1).Text = "Nô\u0323i Dung";
		((Control)button1).Location = new Point(158, 5);
		((Control)button1).Name = "button1";
		((Control)button1).Size = new Size(102, 37);
		((Control)button1).TabIndex = 3;
		((Control)button1).Text = "Co\u0301";
		((ButtonBase)button1).UseVisualStyleBackColor = true;
		((Control)button1).Click += new EventHandler(button1_Click);
		((Control)button2).Location = new Point(303, 5);
		((Control)button2).Name = "button2";
		((Control)button2).Size = new Size(102, 37);
		((Control)button2).TabIndex = 3;
		((Control)button2).Text = "Không";
		((ButtonBase)button2).UseVisualStyleBackColor = true;
		((Control)button2).Click += new EventHandler(button2_Click);
		((Control)panel1).BackColor = SystemColors.ButtonShadow;
		((Control)panel1).Controls.Add((Control)(object)button2);
		((Control)panel1).Controls.Add((Control)(object)button1);
		((Control)panel1).Location = new Point(3, 171);
		((Control)panel1).Name = "panel1";
		((Control)panel1).Size = new Size(426, 48);
		((Control)panel1).TabIndex = 4;
		((ContainerControl)this).AutoScaleDimensions = new SizeF(7f, 15f);
		((ContainerControl)this).AutoScaleMode = (AutoScaleMode)1;
		((Form)this).ClientSize = new Size(431, 222);
		((Control)this).Controls.Add((Control)(object)panel1);
		((Control)this).Controls.Add((Control)(object)textBox1);
		((Control)this).Controls.Add((Control)(object)pictureBox1);
		((Control)this).Controls.Add((Control)(object)label1);
		((Form)this).FormBorderStyle = (FormBorderStyle)2;
		((Form)this).Icon = (Icon)((ResourceManager)val).GetObject("$this.Icon");
		((Form)this).KeyPreview = true;
		((Form)this).MaximizeBox = false;
		((Form)this).MinimizeBox = false;
		((Control)this).Name = "ThongBao";
		((Form)this).StartPosition = (FormStartPosition)1;
		((Control)this).Text = "ThongBao";
		((Form)this).Load += new EventHandler(ThongBao_Load);
		((Control)this).KeyDown += new KeyEventHandler(ThongBao_KeyDown);
		((ISupportInitialize)pictureBox1).EndInit();
		((Control)panel1).ResumeLayout(false);
		((Control)this).ResumeLayout(false);
		((Control)this).PerformLayout();
	}
}
