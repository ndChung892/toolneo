using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Management;
using System.Resources;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using AutoTool.Properties;
using Microsoft.Win32;

namespace AutoTool;

public class CaiDat : Form
{
	public static string linkApp = Application.StartupPath;

	private FontConverter fC = new FontConverter();

	public string pathTheme = linkApp + "/Theme";

	public string pathAutoNotes = linkApp + "/Notes";

	private bool defaultTheme = false;

	private string filenameGB;

	private ImageLayout layoutGB;

	private Font gridvewStyle;

	private DataGridViewCellStyle TableThemeColor = new DataGridViewCellStyle();

	private string filenameBG;

	private ImageLayout layoutBG;

	private int step = 1;

	private IContainer components = null;

	private CheckBox checkBoxNS2;

	private CheckBox checkBoxNS1;

	private Button button1;

	private GroupBox groupBox2;

	private TextBox textBox1;

	private Button button2;

	private Label label1;

	private Button button3;

	private TabControl tabControl1;

	private TabPage tabPage1;

	private ComboBox comboBox1;

	private TabPage tabPage2;

	private TabPage tabPage3;

	private TabPage tabPage4;

	private TabPage tabPage5;

	private CheckBox checkBox1;

	private CheckBox checkBox2;

	private Button button4;

	private Button button5;

	private Button button6;

	private CheckBox checkBox3;

	private Button button7;

	private Button button8;

	private Button button9;

	private Button button10;

	private Button button11;

	private Button button12;

	private CheckBox checkBox4;

	private Button button13;

	private Button button15;

	private Button buttonTextSelect;

	private Button buttonTextColor;

	private Button buttonBackSelect;

	private Button buttonBackColor;

	private DataGridView dataGridView1;

	private GroupBox groupBox3;

	private CheckBox checkBoxStartWin;

	private TabPage tabPage6;

	private ComboBox comboBox2;

	private Button buttonBGColor;

	private Button button16;

	private TabControl tabControl2;

	private TabPage tabPage7;

	private TabPage tabPage8;

	private DateTimePicker dateTimePickerDatetime;

	private Label label5;

	private Label label2;

	private TextBox textBoxNameTool;

	private TextBox textBoxNameAdmin;

	private CheckBox checkBoxDate;

	private Label label6;

	private Button button17;

	private ComboBox comboBox3;

	private DataGridViewTextBoxColumn Column1;

	private Button button18;

	private Button button14;

	private Button button19;

	private CheckBox checkBox5;

	private NumericUpDown numericUpDown1;

	private Label label7;

	private Label label4;

	private CheckBox checkBox7;

	private TabPage tabPage9;

	private CheckBox checkBox8;

	private Label label12;

	private TabPage tabPage10;

	private LinkLabel linkLabel5;

	private LinkLabel linkLabel4;

	private LinkLabel linkLabel3;

	private LinkLabel linkLabel2;

	private LinkLabel linkLabel1;

	private TextBox textBox5;

	private Label label11;

	private CheckBox checkBox9;

	private TabPage tabPage11;

	private Label label13;

	private Button button21;

	private TextBox textBox2;

	private Button button20;

	private ProgressBar progressBar1;

	private Label label14;

	private Timer timer1;

	private Label label15;

	private Label label16;

	private CheckBox checkBox10;

	private DataGridView dataGridView2;

	private DataGridViewTextBoxColumn Column2;

	private DataGridViewTextBoxColumn Column3;

	private DataGridViewTextBoxColumn Column4;

	private CheckBox checkBox11;

	private Label label8;

	private Button button22;

	private TextBox textBoxUrlApp;

	private TabControl tabControl3;

	private TabPage tabPage13;

	private TabPage tabPage14;

	private Label label9;

	private Label label10;

	private CheckBox checkBox12;

	private Label label17;

	private NumericUpDown numericUpDown2;

	private Label label18;

	private Label label19;

	private CheckBox checkBox15;

	private CheckBox checkBox14;

	private CheckBox checkBox13;

	private CheckBox checkBox16;

	private CheckBox checkBox18;

	private CheckBox checkBox17;

	private Label label20;

	private Label label22;

	private Label label21;

	private NumericUpDown numericUpDown3;

	private LinkLabel linkLabel6;

	private Label label26;

	private Label label25;

	private Label label24;

	private Label label23;

	private NumericUpDown numericUpDown6;

	private NumericUpDown numericUpDown5;

	private NumericUpDown numericUpDown4;

	private PictureBox pictureBox1;

	private TabPage tabPage12;

	private Label label27;

	private NumericUpDown numericUpDown7;

	private CheckBox checkBox21;

	private CheckBox checkBox20;

	private CheckBox checkBox19;

	private CheckBox checkBox6;

	private Label label3;

	private TextBox textBox3;

	private Label label28;

	private Label label30;

	private NumericUpDown numericUpDown8;

	private Label label29;

	public CaiDat()
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_000b: Expected O, but got Unknown
		//IL_003d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0047: Expected O, but got Unknown
		InitializeComponent();
	}

	private void CaiDat_FormClosed(object sender, FormClosedEventArgs e)
	{
		//IL_000f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0019: Expected O, but got Unknown
		Login login = new Login();
		((Form)login).Closed += (EventHandler)([CompilerGenerated] (object? s, EventArgs args) =>
		{
			((Form)this).Close();
		});
	}

	private void CaiDat_Load(object sender, EventArgs e)
	{
		//IL_0041: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ee: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0196: Unknown result type (might be due to invalid IL or missing references)
		//IL_019c: Expected O, but got Unknown
		((Control)this).Text = "BMx-Tool VPT [v" + Program.AppMain.version + "] - Cài Đặt";
		try
		{
			pictureBox1.LoadAsync("https://scontent-nrt1-1.xx.fbcdn.net/v/t39.30808-6/313322054_2425300944290157_1096635899284335386_n.jpg?_nc_cat=111&ccb=1-7&_nc_sid=a2f6c7&_nc_ohc=LovdSYLq7bwAX892Lo0&_nc_ht=scontent-nrt1-1.xx&oh=00_AfAvY29nnknGNUKaPSLGENMdk2WM_RaSjSuVyC6xCP7EBw&oe=652395B0");
		}
		catch (System.Exception)
		{
		}
		((Form)this).Size = new Size(656, 270);
		if (Settings.Default.freeSize)
		{
			((Form)this).FormBorderStyle = (FormBorderStyle)4;
		}
		else
		{
			((Form)this).FormBorderStyle = (FormBorderStyle)1;
		}
		if (!Directory.Exists(pathTheme + " / Files"))
		{
			Directory.CreateDirectory(pathTheme + "/Files");
		}
		else
		{
			string[] files = Directory.GetFiles(pathTheme + "/Files", "*.txt");
			List<string> val = new List<string>();
			if (Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)files) > 0)
			{
				val.AddRange((System.Collections.Generic.IEnumerable<string>)files);
				Enumerator<string> enumerator = val.GetEnumerator();
				try
				{
					while (enumerator.MoveNext())
					{
						string current = enumerator.Current;
						string text = current.Substring((pathTheme + "/Files").Length + 1, current.Length - (pathTheme + "/Files").Length - 1 - 4);
						comboBox3.Items.Add((object)text);
					}
				}
				finally
				{
					((System.IDisposable)enumerator/*cast due to .constrained prefix*/).Dispose();
				}
			}
		}
		gridvewStyle = ((Control)dataGridView1).Font;
		LoadSetting();
		bool flag = LoadTheme("/BMxSkinSetting.txt");
		DataGridViewButtonColumn val2 = new DataGridViewButtonColumn();
		((DataGridViewColumn)val2).Name = "Delete";
		((DataGridViewColumn)val2).HeaderText = "Delete";
		val2.Text = "Xóa";
		val2.UseColumnTextForButtonValue = true;
		((DataGridViewColumn)val2).Width = 50;
		((DataGridViewColumn)val2).FillWeight = 50f;
		if (flag)
		{
			val2.FlatStyle = (FlatStyle)1;
			((DataGridViewBand)val2).DefaultCellStyle = TableThemeColor;
		}
		dataGridView1.Columns.Add((DataGridViewColumn)(object)val2);
		dataGridView1.Rows.Add(new object[1] { "Hàng 1" });
		dataGridView1.Rows.Add(new object[1] { "Hàng 2" });
		((Control)linkLabel6).Text = string.Concat(new string[7]
		{
			"\"",
			Program.AppMain.nameVIP,
			"\" \"",
			Program.AppMain.model,
			"\" \"",
			Program.AppMain.serial,
			"\""
		});
		if (((Control)linkLabel6).Text.Length > 80)
		{
			((Control)linkLabel6).Text = ((Control)linkLabel6).Text.Substring(0, 60) + " ... Click Đê\u0309 Xem Chi Tiê\u0301t";
		}
	}

	private void checkBoxNS1_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBoxNS1.Checked)
		{
			checkBoxNS2.CheckState = (CheckState)0;
		}
		else
		{
			checkBoxNS2.CheckState = (CheckState)1;
		}
	}

	private void checkBoxNS2_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBoxNS2.Checked)
		{
			checkBoxNS1.CheckState = (CheckState)0;
		}
		else
		{
			checkBoxNS1.CheckState = (CheckState)1;
		}
	}

	private void button17_Click_1(object sender, EventArgs e)
	{
		//IL_001e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0024: Invalid comparison between Unknown and I4
		if ((int)MessageBox.Show("Áp Dụng Chủ Đề " + ((Control)comboBox3).Text, "Cài Đặt", (MessageBoxButtons)1, (MessageBoxIcon)32) == 1)
		{
			LoadTheme("/Files/" + ((Control)comboBox3).Text + ".txt");
		}
	}

	private void button14_Click_1(object sender, EventArgs e)
	{
		//IL_006f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0074: Unknown result type (might be due to invalid IL or missing references)
		SaveTheme("/Files/" + ((Control)comboBox3).Text + ".txt");
		comboBox3.Items.Clear();
		string[] files = Directory.GetFiles(pathTheme + "/Files", "*.txt");
		List<string> val = new List<string>();
		if (Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)files) <= 0)
		{
			return;
		}
		val.AddRange((System.Collections.Generic.IEnumerable<string>)files);
		Enumerator<string> enumerator = val.GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				string current = enumerator.Current;
				string text = current.Substring((pathTheme + "/Files").Length + 1, current.Length - (pathTheme + "/Files").Length - 1 - 4);
				comboBox3.Items.Add((object)text);
			}
		}
		finally
		{
			((System.IDisposable)enumerator/*cast due to .constrained prefix*/).Dispose();
		}
	}

	private void button18_Click_1(object sender, EventArgs e)
	{
		//IL_0045: Unknown result type (might be due to invalid IL or missing references)
		//IL_004b: Invalid comparison between Unknown and I4
		//IL_0020: Unknown result type (might be due to invalid IL or missing references)
		if (((Control)comboBox3).Text == "Default")
		{
			MessageBox.Show("Không Thể Xóa");
		}
		else if ((int)MessageBox.Show("Xác Nhận Xóa Theme " + ((Control)comboBox3).Text, "Cài Đặt", (MessageBoxButtons)1, (MessageBoxIcon)32) == 1)
		{
			File.Delete(pathTheme + "/Files/" + ((Control)comboBox3).Text + ".txt");
			comboBox3.Items.Remove((object)((Control)comboBox3).Text);
		}
	}

	private void button19_Click_1(object sender, EventArgs e)
	{
		//IL_004e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0053: Unknown result type (might be due to invalid IL or missing references)
		comboBox3.Items.Clear();
		string[] files = Directory.GetFiles(pathTheme + "/Files", "*.txt");
		List<string> val = new List<string>();
		if (Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)files) <= 0)
		{
			return;
		}
		val.AddRange((System.Collections.Generic.IEnumerable<string>)files);
		Enumerator<string> enumerator = val.GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				string current = enumerator.Current;
				string text = current.Substring((pathTheme + "/Files").Length + 1, current.Length - (pathTheme + "/Files").Length - 1 - 4);
				comboBox3.Items.Add((object)text);
			}
		}
		finally
		{
			((System.IDisposable)enumerator/*cast due to .constrained prefix*/).Dispose();
		}
	}

	private void CaiDat_FormClosing(object sender, FormClosingEventArgs e)
	{
		//IL_002b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0030: Unknown result type (might be due to invalid IL or missing references)
		//IL_0031: Unknown result type (might be due to invalid IL or missing references)
		//IL_0033: Invalid comparison between Unknown and I4
		//IL_00a9: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ab: Invalid comparison between Unknown and I4
		if (defaultTheme)
		{
			return;
		}
		DialogResult val = Program.AppMain.ThongBao(Program.AppMain.warnNoti, "Tu\u0300y Cho\u0323n Lưu", "Co\u0301 -> Lưu Và Thoát\r\nKhông -> Thoát Không Lưu\r\nTă\u0301t -> Hủy", Program.AppMain.YesNoNoti);
		if ((int)val == 6)
		{
			SaveSetting();
			SaveTheme("/BMxSkinSetting.txt");
			if (checkBoxStartWin.Checked)
			{
				RegistryKey val2 = Registry.CurrentUser.OpenSubKey("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run", true);
				val2.SetValue("BMx-Tool", (object)Application.ExecutablePath);
			}
			else
			{
				RegistryKey val3 = Registry.CurrentUser.OpenSubKey("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run", true);
				val3.DeleteValue("BMx-Tool", false);
			}
		}
		else if ((int)val != 7)
		{
			((CancelEventArgs)e).Cancel = true;
		}
	}

	private void button1_Click(object sender, EventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0007: Expected O, but got Unknown
		//IL_000e: Unknown result type (might be due to invalid IL or missing references)
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0020: Invalid comparison between Unknown and I4
		//IL_003b: Unknown result type (might be due to invalid IL or missing references)
		ColorDialog val = new ColorDialog();
		val.Color = ((Control)groupBox2).BackColor;
		if ((int)((CommonDialog)val).ShowDialog() == 1)
		{
			((Control)groupBox2).BackgroundImage = null;
			((Control)groupBox2).BackColor = val.Color;
			checkBox1.CheckState = (CheckState)0;
		}
	}

	private void button3_Click(object sender, EventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0007: Expected O, but got Unknown
		//IL_002c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0032: Invalid comparison between Unknown and I4
		//IL_003f: Unknown result type (might be due to invalid IL or missing references)
		OpenFileDialog val = new OpenFileDialog();
		((FileDialog)val).Filter = "image|*.jpg;*.jpeg;*.png;...";
		((FileDialog)val).Title = "Chọn Ảnh Nền";
		((FileDialog)val).InitialDirectory = linkApp;
		if ((int)((CommonDialog)val).ShowDialog() == 1)
		{
			((Control)groupBox2).BackColor = Control.DefaultBackColor;
			((Control)groupBox2).BackgroundImage = Image.FromFile(((FileDialog)val).FileName);
			filenameGB = ((FileDialog)val).FileName;
		}
	}

	private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_003a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0043: Unknown result type (might be due to invalid IL or missing references)
		//IL_004c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0055: Unknown result type (might be due to invalid IL or missing references)
		//IL_006c: Unknown result type (might be due to invalid IL or missing references)
		//IL_005e: Unknown result type (might be due to invalid IL or missing references)
		((Control)groupBox2).BackColor = Control.DefaultBackColor;
		switch (((ListControl)comboBox1).SelectedIndex)
		{
		case 0:
			layoutGB = (ImageLayout)1;
			break;
		case 1:
			layoutGB = (ImageLayout)2;
			break;
		case 2:
			layoutGB = (ImageLayout)3;
			break;
		case 3:
			layoutGB = (ImageLayout)4;
			break;
		default:
			layoutGB = (ImageLayout)0;
			break;
		}
		((Control)groupBox2).BackgroundImageLayout = layoutGB;
	}

	private void checkBox1_CheckedChanged(object sender, EventArgs e)
	{
		//IL_0024: Unknown result type (might be due to invalid IL or missing references)
		if (checkBox1.Checked)
		{
			((Control)groupBox2).BackgroundImage = null;
			((Control)groupBox2).BackColor = Color.Transparent;
		}
	}

	private void button4_Click_1(object sender, EventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0007: Expected O, but got Unknown
		//IL_000e: Unknown result type (might be due to invalid IL or missing references)
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0020: Invalid comparison between Unknown and I4
		//IL_002e: Unknown result type (might be due to invalid IL or missing references)
		ColorDialog val = new ColorDialog();
		val.Color = ((Control)label1).BackColor;
		if ((int)((CommonDialog)val).ShowDialog() == 1)
		{
			((Control)label1).BackColor = val.Color;
			checkBox2.CheckState = (CheckState)0;
		}
	}

	private void checkBox2_CheckedChanged(object sender, EventArgs e)
	{
		//IL_0017: Unknown result type (might be due to invalid IL or missing references)
		if (checkBox2.Checked)
		{
			((Control)label1).BackColor = Color.Transparent;
		}
	}

	private void button5_Click(object sender, EventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0007: Expected O, but got Unknown
		//IL_000e: Unknown result type (might be due to invalid IL or missing references)
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0020: Invalid comparison between Unknown and I4
		//IL_002e: Unknown result type (might be due to invalid IL or missing references)
		ColorDialog val = new ColorDialog();
		val.Color = ((Control)label1).ForeColor;
		if ((int)((CommonDialog)val).ShowDialog() == 1)
		{
			((Control)label1).ForeColor = val.Color;
		}
	}

	private void button6_Click(object sender, EventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0007: Expected O, but got Unknown
		//IL_0033: Unknown result type (might be due to invalid IL or missing references)
		//IL_0038: Unknown result type (might be due to invalid IL or missing references)
		//IL_0042: Expected O, but got Unknown
		//IL_0044: Unknown result type (might be due to invalid IL or missing references)
		//IL_004a: Invalid comparison between Unknown and I4
		FontDialog val = new FontDialog();
		val.Font = new Font(((Control)label1).Font.FontFamily, ((Control)label1).Font.Size, ((Control)label1).Font.Style);
		if ((int)((CommonDialog)val).ShowDialog() == 1)
		{
			((Control)label1).Font = val.Font;
		}
	}

	private void button9_Click(object sender, EventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0007: Expected O, but got Unknown
		//IL_000e: Unknown result type (might be due to invalid IL or missing references)
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0020: Invalid comparison between Unknown and I4
		//IL_002e: Unknown result type (might be due to invalid IL or missing references)
		ColorDialog val = new ColorDialog();
		val.Color = ((Control)button2).BackColor;
		if ((int)((CommonDialog)val).ShowDialog() == 1)
		{
			((Control)button2).BackColor = val.Color;
			checkBox3.CheckState = (CheckState)0;
		}
	}

	private void checkBox3_CheckedChanged(object sender, EventArgs e)
	{
		//IL_0017: Unknown result type (might be due to invalid IL or missing references)
		if (checkBox3.Checked)
		{
			((Control)button2).BackColor = Color.Transparent;
		}
	}

	private void button8_Click(object sender, EventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0007: Expected O, but got Unknown
		//IL_000e: Unknown result type (might be due to invalid IL or missing references)
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0020: Invalid comparison between Unknown and I4
		//IL_002e: Unknown result type (might be due to invalid IL or missing references)
		ColorDialog val = new ColorDialog();
		val.Color = ((Control)button2).ForeColor;
		if ((int)((CommonDialog)val).ShowDialog() == 1)
		{
			((Control)button2).ForeColor = val.Color;
		}
	}

	private void button7_Click(object sender, EventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0007: Expected O, but got Unknown
		//IL_0033: Unknown result type (might be due to invalid IL or missing references)
		//IL_0038: Unknown result type (might be due to invalid IL or missing references)
		//IL_0042: Expected O, but got Unknown
		//IL_0044: Unknown result type (might be due to invalid IL or missing references)
		//IL_004a: Invalid comparison between Unknown and I4
		FontDialog val = new FontDialog();
		val.Font = new Font(((Control)button2).Font.FontFamily, ((Control)button2).Font.Size, ((Control)button2).Font.Style);
		if ((int)((CommonDialog)val).ShowDialog() == 1)
		{
			((Control)button2).Font = val.Font;
		}
	}

	private void button12_Click(object sender, EventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0007: Expected O, but got Unknown
		//IL_000e: Unknown result type (might be due to invalid IL or missing references)
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0020: Invalid comparison between Unknown and I4
		//IL_002e: Unknown result type (might be due to invalid IL or missing references)
		ColorDialog val = new ColorDialog();
		val.Color = ((Control)textBox1).BackColor;
		if ((int)((CommonDialog)val).ShowDialog() == 1)
		{
			((Control)textBox1).BackColor = val.Color;
		}
	}

	private void button11_Click(object sender, EventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0007: Expected O, but got Unknown
		//IL_000e: Unknown result type (might be due to invalid IL or missing references)
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0020: Invalid comparison between Unknown and I4
		//IL_002e: Unknown result type (might be due to invalid IL or missing references)
		ColorDialog val = new ColorDialog();
		val.Color = ((Control)textBox1).ForeColor;
		if ((int)((CommonDialog)val).ShowDialog() == 1)
		{
			((Control)textBox1).ForeColor = val.Color;
		}
	}

	private void button10_Click(object sender, EventArgs e)
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

	private void checkBox4_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBox4.Checked)
		{
			((TextBoxBase)textBox1).ReadOnly = true;
		}
		else
		{
			((TextBoxBase)textBox1).ReadOnly = false;
		}
	}

	private void button15_Click(object sender, EventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0007: Expected O, but got Unknown
		//IL_000e: Unknown result type (might be due to invalid IL or missing references)
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0020: Invalid comparison between Unknown and I4
		//IL_002e: Unknown result type (might be due to invalid IL or missing references)
		ColorDialog val = new ColorDialog();
		val.Color = dataGridView1.BackgroundColor;
		if ((int)((CommonDialog)val).ShowDialog() == 1)
		{
			dataGridView1.BackgroundColor = val.Color;
		}
	}

	private void button13_Click(object sender, EventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0007: Expected O, but got Unknown
		//IL_0033: Unknown result type (might be due to invalid IL or missing references)
		//IL_0038: Unknown result type (might be due to invalid IL or missing references)
		//IL_0042: Expected O, but got Unknown
		//IL_0044: Unknown result type (might be due to invalid IL or missing references)
		//IL_004a: Invalid comparison between Unknown and I4
		FontDialog val = new FontDialog();
		val.Font = new Font(((Control)dataGridView1).Font.FontFamily, ((Control)dataGridView1).Font.Size, ((Control)dataGridView1).Font.Style);
		if ((int)((CommonDialog)val).ShowDialog() == 1)
		{
			gridvewStyle = val.Font;
			applie();
		}
	}

	private void button16_Click(object sender, EventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0007: Expected O, but got Unknown
		//IL_000e: Unknown result type (might be due to invalid IL or missing references)
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0020: Invalid comparison between Unknown and I4
		//IL_002e: Unknown result type (might be due to invalid IL or missing references)
		ColorDialog val = new ColorDialog();
		val.Color = ((Control)buttonBackColor).BackColor;
		if ((int)((CommonDialog)val).ShowDialog() == 1)
		{
			((Control)buttonBackColor).BackColor = val.Color;
			applie();
		}
	}

	private void button18_Click(object sender, EventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0007: Expected O, but got Unknown
		//IL_000e: Unknown result type (might be due to invalid IL or missing references)
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0020: Invalid comparison between Unknown and I4
		//IL_002e: Unknown result type (might be due to invalid IL or missing references)
		ColorDialog val = new ColorDialog();
		val.Color = ((Control)buttonTextColor).BackColor;
		if ((int)((CommonDialog)val).ShowDialog() == 1)
		{
			((Control)buttonTextColor).BackColor = val.Color;
			applie();
		}
	}

	private void button17_Click(object sender, EventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0007: Expected O, but got Unknown
		//IL_000e: Unknown result type (might be due to invalid IL or missing references)
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0020: Invalid comparison between Unknown and I4
		//IL_002e: Unknown result type (might be due to invalid IL or missing references)
		ColorDialog val = new ColorDialog();
		val.Color = ((Control)buttonBackSelect).BackColor;
		if ((int)((CommonDialog)val).ShowDialog() == 1)
		{
			((Control)buttonBackSelect).BackColor = val.Color;
			applie();
		}
	}

	private void button19_Click(object sender, EventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0007: Expected O, but got Unknown
		//IL_000e: Unknown result type (might be due to invalid IL or missing references)
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0020: Invalid comparison between Unknown and I4
		//IL_002e: Unknown result type (might be due to invalid IL or missing references)
		ColorDialog val = new ColorDialog();
		val.Color = ((Control)buttonTextSelect).BackColor;
		if ((int)((CommonDialog)val).ShowDialog() == 1)
		{
			((Control)buttonTextSelect).BackColor = val.Color;
			applie();
		}
	}

	private void button20_Click(object sender, EventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0007: Expected O, but got Unknown
		//IL_000e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0020: Unknown result type (might be due to invalid IL or missing references)
		//IL_0032: Unknown result type (might be due to invalid IL or missing references)
		//IL_0044: Unknown result type (might be due to invalid IL or missing references)
		DataGridViewCellStyle val = new DataGridViewCellStyle();
		val.BackColor = ((Control)buttonBackColor).BackColor;
		val.ForeColor = ((Control)buttonTextColor).BackColor;
		val.SelectionBackColor = ((Control)buttonBackSelect).BackColor;
		val.SelectionForeColor = ((Control)buttonTextSelect).BackColor;
		val.Font = gridvewStyle;
		dataGridView1.RowsDefaultCellStyle = val;
		dataGridView1.RowHeadersDefaultCellStyle = val;
		dataGridView1.ColumnHeadersDefaultCellStyle = val;
	}

	private void applie()
	{
		//IL_000d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0024: Unknown result type (might be due to invalid IL or missing references)
		//IL_003b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0052: Unknown result type (might be due to invalid IL or missing references)
		TableThemeColor.BackColor = ((Control)buttonBackColor).BackColor;
		TableThemeColor.ForeColor = ((Control)buttonTextColor).BackColor;
		TableThemeColor.SelectionBackColor = ((Control)buttonBackSelect).BackColor;
		TableThemeColor.SelectionForeColor = ((Control)buttonTextSelect).BackColor;
		TableThemeColor.Font = gridvewStyle;
		dataGridView1.EnableHeadersVisualStyles = false;
		dataGridView1.RowsDefaultCellStyle = TableThemeColor;
		dataGridView1.RowHeadersDefaultCellStyle = TableThemeColor;
		dataGridView1.ColumnHeadersDefaultCellStyle = TableThemeColor;
	}

	private void button14_Click(object sender, EventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0007: Expected O, but got Unknown
		//IL_000e: Unknown result type (might be due to invalid IL or missing references)
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0020: Invalid comparison between Unknown and I4
		//IL_003b: Unknown result type (might be due to invalid IL or missing references)
		ColorDialog val = new ColorDialog();
		val.Color = ((Control)groupBox3).BackColor;
		if ((int)((CommonDialog)val).ShowDialog() == 1)
		{
			((Control)groupBox3).BackgroundImage = null;
			((Control)groupBox3).BackColor = val.Color;
		}
	}

	private void button16_Click_1(object sender, EventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0007: Expected O, but got Unknown
		//IL_002c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0032: Invalid comparison between Unknown and I4
		//IL_003f: Unknown result type (might be due to invalid IL or missing references)
		OpenFileDialog val = new OpenFileDialog();
		((FileDialog)val).Filter = "image|*.jpg;*.jpeg;*.png;...";
		((FileDialog)val).Title = "Chọn Ảnh Nền";
		((FileDialog)val).InitialDirectory = linkApp;
		if ((int)((CommonDialog)val).ShowDialog() == 1)
		{
			((Control)groupBox3).BackColor = Control.DefaultBackColor;
			((Control)groupBox3).BackgroundImage = Image.FromFile(((FileDialog)val).FileName);
			filenameBG = ((FileDialog)val).FileName;
		}
	}

	private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_003a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0043: Unknown result type (might be due to invalid IL or missing references)
		//IL_004c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0055: Unknown result type (might be due to invalid IL or missing references)
		//IL_006c: Unknown result type (might be due to invalid IL or missing references)
		//IL_005e: Unknown result type (might be due to invalid IL or missing references)
		((Control)groupBox3).BackColor = Control.DefaultBackColor;
		switch (((ListControl)comboBox2).SelectedIndex)
		{
		case 0:
			layoutBG = (ImageLayout)1;
			break;
		case 1:
			layoutBG = (ImageLayout)2;
			break;
		case 2:
			layoutBG = (ImageLayout)3;
			break;
		case 3:
			layoutBG = (ImageLayout)4;
			break;
		default:
			layoutBG = (ImageLayout)0;
			break;
		}
		((Control)groupBox3).BackgroundImageLayout = layoutBG;
	}

	private void SaveSetting()
	{
		//IL_04bb: Unknown result type (might be due to invalid IL or missing references)
		//IL_04c1: Expected O, but got Unknown
		if (checkBoxNS1.Checked)
		{
			Settings.Default.nameStyle = false;
		}
		else
		{
			Settings.Default.nameStyle = true;
		}
		if (checkBoxStartWin.Checked)
		{
			Settings.Default.startWithWin = true;
		}
		else
		{
			Settings.Default.startWithWin = false;
		}
		Settings.Default.NameUser = ((Control)textBoxNameAdmin).Text;
		if (checkBoxDate.Checked)
		{
			Settings.Default.Date = true;
		}
		else
		{
			Settings.Default.Date = false;
		}
		if (checkBox5.Checked)
		{
			Settings.Default.freeSize = true;
		}
		else
		{
			Settings.Default.freeSize = false;
		}
		if (checkBox6.Checked)
		{
			Settings.Default.enableDebug = true;
		}
		else
		{
			Settings.Default.enableDebug = false;
		}
		if (checkBox7.Checked)
		{
			Settings.Default.chat = true;
		}
		else
		{
			Settings.Default.chat = false;
		}
		if (checkBox8.Checked)
		{
			Settings.Default.userNoti = true;
		}
		else
		{
			Settings.Default.userNoti = false;
		}
		if (checkBox9.Checked)
		{
			Settings.Default.focusWindow = true;
		}
		else
		{
			Settings.Default.focusWindow = false;
		}
		if (checkBox10.Checked)
		{
			Settings.Default.notify = true;
		}
		else
		{
			Settings.Default.notify = false;
		}
		if (checkBox11.Checked)
		{
			Settings.Default.runAutoLog = true;
		}
		else
		{
			Settings.Default.runAutoLog = false;
		}
		if (checkBox12.Checked)
		{
			Settings.Default.newProcess = true;
		}
		else
		{
			Settings.Default.newProcess = false;
		}
		if (checkBox14.Checked)
		{
			Settings.Default.kickPet = "UpToDw";
		}
		else if (checkBox15.Checked)
		{
			Settings.Default.kickPet = "DwToUp";
		}
		else
		{
			Settings.Default.kickPet = "Rd";
		}
		if (checkBox17.Checked)
		{
			Settings.Default.logAutoLog = true;
		}
		else
		{
			Settings.Default.logAutoLog = false;
		}
		if (checkBox20.Checked)
		{
			Settings.Default.fileDebug = true;
		}
		else
		{
			Settings.Default.fileDebug = false;
		}
		if (checkBox19.Checked)
		{
			Settings.Default.delDebug = true;
		}
		else
		{
			Settings.Default.delDebug = false;
		}
		Settings.Default.dayDelDebug = (int)numericUpDown7.Value;
		Settings.Default.timeDelay = (int)numericUpDown1.Value;
		Settings.Default.dateTime = dateTimePickerDatetime.Value;
		Settings.Default.NameTool = ((Control)textBoxNameTool).Text;
		Settings.Default.urlAutoTool = ((Control)textBox2).Text;
		Settings.Default.urlApp = ((Control)textBoxUrlApp).Text;
		Settings.Default.accAutoLog = (int)numericUpDown2.Value;
		Settings.Default.delayKickPet = (int)numericUpDown3.Value;
		Settings.Default.setupDelay = (int)numericUpDown4.Value;
		Settings.Default.setupStepY = (int)numericUpDown5.Value;
		Settings.Default.setupStepX = (int)numericUpDown6.Value;
		Settings.Default.linkMG = ((Control)textBox3).Text;
		Settings.Default.delaySys = (int)numericUpDown8.Value;
		Program.AppMain.delay_System = Settings.Default.delaySys * 10;
		try
		{
			Program.AppMain.link1 = "http://" + Settings.Default.linkMG + "/s/";
		}
		catch (System.Exception)
		{
		}
		((SettingsBase)Settings.Default).Save();
		if (!Directory.Exists(pathAutoNotes))
		{
			Directory.CreateDirectory(pathAutoNotes);
		}
		TextWriter val = (TextWriter)new StreamWriter(pathAutoNotes + "/memos.txt");
		for (int i = 0; i < dataGridView2.RowCount - 1; i++)
		{
			val.WriteLine(string.Concat(new string[5]
			{
				dataGridView2.Rows[i].Cells[0].Value.ToString().Trim(),
				" : ",
				dataGridView2.Rows[i].Cells[1].Value.ToString().Trim(),
				" [M] ",
				dataGridView2.Rows[i].Cells[2].Value.ToString().Trim()
			}));
		}
		val.Close();
	}

	private void LoadSetting()
	{
		if (Settings.Default.nameStyle)
		{
			checkBoxNS2.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxNS1.CheckState = (CheckState)1;
		}
		((Control)checkBoxNS1).Text = "s" + Program.AppMain.nameVIP.Substring(0, 2) + ".[Name]";
		((Control)checkBoxNS2).Text = "[Name] s" + Program.AppMain.nameVIP.Substring(0, 2);
		if (Settings.Default.startWithWin)
		{
			checkBoxStartWin.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxStartWin.CheckState = (CheckState)0;
		}
		((Control)textBoxNameAdmin).Text = Settings.Default.NameUser;
		if (Settings.Default.Date)
		{
			checkBoxDate.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxDate.CheckState = (CheckState)0;
		}
		if (Settings.Default.freeSize)
		{
			checkBox5.CheckState = (CheckState)1;
		}
		else
		{
			checkBox5.CheckState = (CheckState)0;
		}
		if (Settings.Default.enableDebug)
		{
			checkBox6.CheckState = (CheckState)1;
		}
		else
		{
			checkBox6.CheckState = (CheckState)0;
		}
		if (Settings.Default.chat)
		{
			checkBox7.CheckState = (CheckState)1;
		}
		else
		{
			checkBox7.CheckState = (CheckState)0;
		}
		if (Settings.Default.userNoti)
		{
			checkBox8.CheckState = (CheckState)1;
		}
		else
		{
			checkBox8.CheckState = (CheckState)0;
		}
		if (Settings.Default.focusWindow)
		{
			checkBox9.CheckState = (CheckState)1;
		}
		else
		{
			checkBox9.CheckState = (CheckState)0;
		}
		if (Settings.Default.notify)
		{
			checkBox10.CheckState = (CheckState)1;
		}
		else
		{
			checkBox10.CheckState = (CheckState)0;
		}
		if (Settings.Default.runAutoLog)
		{
			checkBox11.CheckState = (CheckState)1;
		}
		else
		{
			checkBox11.CheckState = (CheckState)0;
		}
		if (Settings.Default.newProcess)
		{
			checkBox12.CheckState = (CheckState)1;
		}
		else
		{
			checkBox12.CheckState = (CheckState)0;
		}
		string kickPet = Settings.Default.kickPet;
		string text = kickPet;
		if (!(text == "UpToDw"))
		{
			if (text == "DwToUp")
			{
				checkBox15.CheckState = (CheckState)1;
			}
			else
			{
				checkBox13.CheckState = (CheckState)1;
			}
		}
		else
		{
			checkBox14.CheckState = (CheckState)1;
		}
		if (Settings.Default.logAutoLog)
		{
			checkBox17.CheckState = (CheckState)1;
		}
		else
		{
			checkBox18.CheckState = (CheckState)1;
		}
		if (Settings.Default.fileDebug)
		{
			checkBox20.CheckState = (CheckState)1;
		}
		else
		{
			checkBox21.CheckState = (CheckState)1;
		}
		if (Settings.Default.delDebug)
		{
			checkBox19.CheckState = (CheckState)1;
		}
		else
		{
			checkBox19.CheckState = (CheckState)0;
		}
		numericUpDown7.Value = decimal.op_Implicit(Settings.Default.dayDelDebug);
		numericUpDown1.Value = decimal.op_Implicit(Settings.Default.timeDelay);
		dateTimePickerDatetime.Value = Settings.Default.dateTime;
		((Control)textBoxNameTool).Text = Settings.Default.NameTool;
		((Control)textBox2).Text = Settings.Default.urlAutoTool;
		((Control)textBoxUrlApp).Text = Settings.Default.urlApp;
		numericUpDown2.Value = decimal.op_Implicit(Settings.Default.accAutoLog);
		numericUpDown3.Value = decimal.op_Implicit(Settings.Default.delayKickPet);
		numericUpDown4.Value = decimal.op_Implicit(Settings.Default.setupDelay);
		numericUpDown5.Value = decimal.op_Implicit(Settings.Default.setupStepY);
		numericUpDown6.Value = decimal.op_Implicit(Settings.Default.setupStepX);
		((Control)textBox3).Text = Settings.Default.linkMG;
		numericUpDown8.Value = decimal.op_Implicit(Settings.Default.delaySys);
		if (File.Exists(pathAutoNotes + "/memos.txt"))
		{
			string[] array = File.ReadAllLines(pathAutoNotes + "/memos.txt");
			for (int i = 0; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array); i++)
			{
				string text2 = array[i].Trim().Split(" [M] ", (StringSplitOptions)0)[0];
				string text3 = array[i].Trim().Split(" [M] ", (StringSplitOptions)0)[1];
				string text4 = text2.Trim().Split(" : ", (StringSplitOptions)0)[0];
				string text5 = text2.Trim().Split(" : ", (StringSplitOptions)0)[1];
				dataGridView2.Rows.Add(new object[3] { text4, text5, text3 });
			}
		}
	}

	private bool SaveTheme(string file)
	{
		//IL_000d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0013: Expected O, but got Unknown
		//IL_0019: Unknown result type (might be due to invalid IL or missing references)
		//IL_001e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0060: Unknown result type (might be due to invalid IL or missing references)
		//IL_0065: Unknown result type (might be due to invalid IL or missing references)
		//IL_0082: Unknown result type (might be due to invalid IL or missing references)
		//IL_0087: Unknown result type (might be due to invalid IL or missing references)
		//IL_00cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d0: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_011c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0121: Unknown result type (might be due to invalid IL or missing references)
		//IL_016d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0172: Unknown result type (might be due to invalid IL or missing references)
		//IL_0193: Unknown result type (might be due to invalid IL or missing references)
		//IL_0198: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e9: Unknown result type (might be due to invalid IL or missing references)
		//IL_020a: Unknown result type (might be due to invalid IL or missing references)
		//IL_020f: Unknown result type (might be due to invalid IL or missing references)
		//IL_025c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0261: Unknown result type (might be due to invalid IL or missing references)
		//IL_0282: Unknown result type (might be due to invalid IL or missing references)
		//IL_0287: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f9: Unknown result type (might be due to invalid IL or missing references)
		TextWriter val = (TextWriter)new StreamWriter(pathTheme + file);
		Color val2;
		if (((Control)groupBox3).BackColor == Control.DefaultBackColor)
		{
			val.WriteLine(filenameBG + "\t" + ((object)System.Runtime.CompilerServices.Unsafe.As<ImageLayout, ImageLayout>(ref layoutBG)/*cast due to .constrained prefix*/).ToString());
		}
		else
		{
			val2 = ((Control)groupBox3).BackColor;
			val.WriteLine(((Color)(ref val2)).ToArgb().ToString());
		}
		if (((Control)groupBox2).BackColor == Control.DefaultBackColor)
		{
			val.WriteLine(filenameGB + "\t" + ((object)System.Runtime.CompilerServices.Unsafe.As<ImageLayout, ImageLayout>(ref layoutBG)/*cast due to .constrained prefix*/).ToString());
		}
		else
		{
			val2 = ((Control)groupBox2).BackColor;
			val.WriteLine(((Color)(ref val2)).ToArgb().ToString());
		}
		string[] array = new string[5];
		val2 = ((Control)label1).BackColor;
		array[0] = ((Color)(ref val2)).ToArgb().ToString();
		array[1] = "\t";
		val2 = ((Control)label1).ForeColor;
		array[2] = ((Color)(ref val2)).ToArgb().ToString();
		array[3] = "\t";
		array[4] = ((TypeConverter)fC).ConvertToString((object)((Control)label1).Font);
		val.WriteLine(string.Concat(array));
		string[] array2 = new string[5];
		val2 = ((Control)button2).BackColor;
		array2[0] = ((Color)(ref val2)).ToArgb().ToString();
		array2[1] = "\t";
		val2 = ((Control)button2).ForeColor;
		array2[2] = ((Color)(ref val2)).ToArgb().ToString();
		array2[3] = "\t";
		array2[4] = ((TypeConverter)fC).ConvertToString((object)((Control)button2).Font);
		val.WriteLine(string.Concat(array2));
		string[] array3 = new string[5];
		val2 = ((Control)textBox1).BackColor;
		array3[0] = ((Color)(ref val2)).ToArgb().ToString();
		array3[1] = "\t";
		val2 = ((Control)textBox1).ForeColor;
		array3[2] = ((Color)(ref val2)).ToArgb().ToString();
		array3[3] = "\t";
		array3[4] = ((TypeConverter)fC).ConvertToString((object)((Control)textBox1).Font);
		val.WriteLine(string.Concat(array3));
		string[] array4 = new string[11];
		val2 = dataGridView1.BackgroundColor;
		array4[0] = ((Color)(ref val2)).ToArgb().ToString();
		array4[1] = "\t";
		val2 = ((Control)buttonBackColor).BackColor;
		array4[2] = ((Color)(ref val2)).ToArgb().ToString();
		array4[3] = "\t";
		val2 = ((Control)buttonTextColor).BackColor;
		array4[4] = ((Color)(ref val2)).ToArgb().ToString();
		array4[5] = "\t";
		val2 = ((Control)buttonBackSelect).BackColor;
		array4[6] = ((Color)(ref val2)).ToArgb().ToString();
		array4[7] = "\t";
		val2 = ((Control)buttonTextSelect).BackColor;
		array4[8] = ((Color)(ref val2)).ToArgb().ToString();
		array4[9] = "\t";
		array4[10] = ((TypeConverter)fC).ConvertToString((object)gridvewStyle);
		val.WriteLine(string.Concat(array4));
		val.Close();
		return true;
	}

	private bool LoadTheme(string file)
	{
		//IL_0148: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_025d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0114: Unknown result type (might be due to invalid IL or missing references)
		//IL_00eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_028f: Unknown result type (might be due to invalid IL or missing references)
		//IL_02bc: Unknown result type (might be due to invalid IL or missing references)
		//IL_030a: Unknown result type (might be due to invalid IL or missing references)
		//IL_030f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0319: Expected O, but got Unknown
		//IL_0340: Unknown result type (might be due to invalid IL or missing references)
		//IL_036d: Unknown result type (might be due to invalid IL or missing references)
		//IL_03bb: Unknown result type (might be due to invalid IL or missing references)
		//IL_03c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ca: Expected O, but got Unknown
		//IL_03f1: Unknown result type (might be due to invalid IL or missing references)
		//IL_041e: Unknown result type (might be due to invalid IL or missing references)
		//IL_046c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0471: Unknown result type (might be due to invalid IL or missing references)
		//IL_047b: Expected O, but got Unknown
		//IL_04a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_04cf: Unknown result type (might be due to invalid IL or missing references)
		//IL_04fc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0529: Unknown result type (might be due to invalid IL or missing references)
		//IL_0556: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f7: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0229: Unknown result type (might be due to invalid IL or missing references)
		//IL_0200: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0209: Unknown result type (might be due to invalid IL or missing references)
		//IL_0106: Unknown result type (might be due to invalid IL or missing references)
		//IL_0212: Unknown result type (might be due to invalid IL or missing references)
		//IL_021b: Unknown result type (might be due to invalid IL or missing references)
		try
		{
			if (!File.Exists(pathTheme + file))
			{
				Directory.CreateDirectory(pathTheme);
				return false;
			}
			int num = 0;
			string[] array = File.ReadAllLines(pathTheme + file);
			int num2 = default(int);
			if (!int.TryParse(array[num].Trim(), ref num2))
			{
				filenameBG = array[num].Trim().Split('\t', (StringSplitOptions)0)[0];
				((Control)groupBox3).BackgroundImage = Image.FromFile(filenameBG);
				string text = array[num].Trim().Split('\t', (StringSplitOptions)0)[1];
				string text2 = text;
				if (!(text2 == "Tile"))
				{
					if (!(text2 == "Center"))
					{
						if (!(text2 == "Stretch"))
						{
							if (text2 == "Zoom")
							{
								layoutBG = (ImageLayout)4;
							}
							else
							{
								layoutBG = (ImageLayout)0;
							}
						}
						else
						{
							layoutBG = (ImageLayout)3;
						}
					}
					else
					{
						layoutBG = (ImageLayout)2;
					}
				}
				else
				{
					layoutBG = (ImageLayout)1;
				}
				((Control)groupBox3).BackgroundImageLayout = layoutBG;
				((Control)comboBox2).Text = ((object)System.Runtime.CompilerServices.Unsafe.As<ImageLayout, ImageLayout>(ref layoutBG)/*cast due to .constrained prefix*/).ToString();
			}
			else
			{
				((Control)groupBox3).BackColor = Color.FromArgb(num2);
			}
			if (!int.TryParse(array[++num].Trim(), ref num2))
			{
				filenameGB = array[num].Trim().Split('\t', (StringSplitOptions)0)[0];
				((Control)groupBox2).BackgroundImage = Image.FromFile(filenameGB);
				string text3 = array[num].Trim().Split('\t', (StringSplitOptions)0)[1];
				string text4 = text3;
				if (!(text4 == "Tile"))
				{
					if (!(text4 == "Center"))
					{
						if (!(text4 == "Stretch"))
						{
							if (text4 == "Zoom")
							{
								layoutGB = (ImageLayout)4;
							}
							else
							{
								layoutGB = (ImageLayout)0;
							}
						}
						else
						{
							layoutGB = (ImageLayout)3;
						}
					}
					else
					{
						layoutGB = (ImageLayout)2;
					}
				}
				else
				{
					layoutGB = (ImageLayout)1;
				}
				((Control)groupBox2).BackgroundImageLayout = layoutGB;
				((Control)comboBox1).Text = ((object)System.Runtime.CompilerServices.Unsafe.As<ImageLayout, ImageLayout>(ref layoutGB)/*cast due to .constrained prefix*/).ToString();
			}
			else
			{
				((Control)groupBox2).BackColor = Color.FromArgb(num2);
			}
			int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
			((Control)label1).BackColor = Color.FromArgb(num2);
			int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
			((Control)label1).ForeColor = Color.FromArgb(num2);
			object obj = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
			Font val = (Font)((obj is Font) ? obj : null);
			((Control)label1).Font = new Font(val.FontFamily, ((Control)label1).Font.Size, val.Style);
			int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
			((Control)button2).BackColor = Color.FromArgb(num2);
			int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
			((Control)button2).ForeColor = Color.FromArgb(num2);
			object obj2 = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
			val = (Font)((obj2 is Font) ? obj2 : null);
			((Control)button2).Font = new Font(val.FontFamily, ((Control)button2).Font.Size, val.Style);
			int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
			((Control)textBox1).BackColor = Color.FromArgb(num2);
			int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
			((Control)textBox1).ForeColor = Color.FromArgb(num2);
			object obj3 = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
			val = (Font)((obj3 is Font) ? obj3 : null);
			((Control)textBox1).Font = new Font(val.FontFamily, ((Control)textBox1).Font.Size, val.Style);
			int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
			dataGridView1.BackgroundColor = Color.FromArgb(num2);
			int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
			((Control)buttonBackColor).BackColor = Color.FromArgb(num2);
			int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[2], ref num2);
			((Control)buttonTextColor).BackColor = Color.FromArgb(num2);
			int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[3], ref num2);
			((Control)buttonBackSelect).BackColor = Color.FromArgb(num2);
			int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[4], ref num2);
			((Control)buttonTextSelect).BackColor = Color.FromArgb(num2);
			ref Font reference = ref gridvewStyle;
			object obj4 = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[5]);
			reference = (Font)((obj4 is Font) ? obj4 : null);
			applie();
			return true;
		}
		catch (System.Exception)
		{
			return false;
		}
	}

	private void button21_Click(object sender, EventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0007: Expected O, but got Unknown
		//IL_002c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0032: Invalid comparison between Unknown and I4
		OpenFileDialog val = new OpenFileDialog();
		((FileDialog)val).Filter = "exe|*.exe";
		((FileDialog)val).Title = "Chọn Ứng Dụng";
		((FileDialog)val).InitialDirectory = linkApp;
		if ((int)((CommonDialog)val).ShowDialog() == 1)
		{
			((Control)textBox2).Text = ((FileDialog)val).FileName;
		}
	}

	private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0006: Unknown result type (might be due to invalid IL or missing references)
		//IL_0012: Unknown result type (might be due to invalid IL or missing references)
		//IL_001f: Expected O, but got Unknown
		Process.Start(new ProcessStartInfo
		{
			FileName = "https://www.youtube.com/playlist?list=PLTnHdNsXIn8ozxK_lsrsbML8lWhfVlWku",
			UseShellExecute = true
		});
	}

	private void linkLabel3_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0006: Unknown result type (might be due to invalid IL or missing references)
		//IL_0012: Unknown result type (might be due to invalid IL or missing references)
		//IL_001f: Expected O, but got Unknown
		Process.Start(new ProcessStartInfo
		{
			FileName = "https://www.facebook.com/bmx.tool.vpt/",
			UseShellExecute = true
		});
	}

	private void linkLabel4_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
	{
		ThongTin thongTin = new ThongTin();
		Settings.Default.inforWindow = "Login:\r\n- Thêm tài khoản bằng Link hoặc điền thông tin SV, User, Pass (mã pass từ trang web đăng nhập)\r\n- Phân loại acc theo nhóm\r\n- Bảng thông báo sự kiện (kèm múi giờ hiện tại và múi giờ VN). Thông báo trước sự kiện diễn ra 20 phút và 5 phút\r\n- Khu vực chức năng chứa các chức năng tiện ích hỗ trợ thêm\r\n\r\nAutoLogin:\r\n- Hẹn giờ chạy hoặc chạy ngay tức thì\r\n- Thực hiện các Job tuần tự từ trên xuống dưới theo bảng\r\n- Các Job và End đa dạng, thuận tiện\r\n- Sau khi kết thúc chạy Job có thể tiếp tục đá pet, tu tháp và trồng trang viên\r\n- Ký hiệu cho cột Loop:\r\n\t\t\">>>\" chạy bình thường\r\n\t\t\"xxx\" chạy Job không chạy hành động sau khi kết thúc vòng Job\r\n\t\t\"Skip\" bỏ qua Job, có chạy hành động sau khi kết thúc vòng Job\r\n- Tùy chọn tắt máy sau khi hoàn Tất AutoLog\r\n\r\nCombo Xạ Thủ:\r\n- Chọn acc và tool sẽ tính mốc dựa theo MP hiện tại\r\n- Sau khi tính sẽ đưa ra gợi ý các skill AOE tương ứng. Sử dụng skill đó sẽ kích hệ hoặc nối chuỗi\r\n\r\nTiện Ích:\r\n- Thuận tiện chuyển đổi qua lại linh hoạt giữa các acc (hiện tại tối đa là 5)\r\n- Các tiên ích như dịch chuyển, auto click, thay đổi Size, Xù quẻ và Ghi Chú\r\n\r\nAutoClick:\r\n- Có 2 loại là AutoClick Normal và AutoClick Code\r\n- AutoClick Normal có thể sử dụng bảng hỗ trợ để add lệnh, hoặc ghi lệnh trực tiếp vào bẳng ( yêu cầu đúng cấu trúc, quy luật. Xem chi tiết ở mục Hướng Dẫn trong tool)\r\n- AutoClick Code đa dạng và linh hoạt hơn, lệnh được viết thủ công không qua bảng hỗ trợ. Mô tả các lệnh, cấu trúc lệnh xem thêm ở Hướng Dẫn.\r\n- Hoàn toàn có thể xây dưng một tool riêng khi sử dụng AutoClick Code\r\n\r\nĐố Vui Có Thưởng:\r\n- Kết hợp phương pháp lọc kết quả và tìm kết đáp án đầu tiên xuất hiện để đưa ra gợi ý\r\n- Sử dụng phím tắt nhanh để click vào kết quả\r\n- Điểm click kết quả được thiết lập thủ công và có thể lưu\r\n\r\nCài Đặt:\r\n- Gồm các thiết lập, hiệu chỉnh cho các tính năng\r\n- Cài đặt được Chủ đề cho ứng dụng (gồm màu, kiểu chữ ...)\r\n- Tùy chọn lưu trạng thái để phục vụ cho debug. Sẽ lưu toàn bộ thông tin có trong khung trạng thái lúc chạy tool daily và trừ ma. Lúc bị lỗi sẽ dễ kiếm tra hơn kẹt ở bước nào\r\n- Chi Tiết:\r\n\t+ Kiểu tên Flash\r\n\t+ Khởi động cùng Windows\r\n\t+ Chạy AutoLog sau khi mở Tool\r\n\t+ Free Size: kéo mở rộng kích thước font\r\n\t+ Lưu trạng thái: lưu toàn bộ thông tin trong khung trạng thái vào folder Debug\r\n\t+ Chat kênh bang khi kẹt / hoàn thành q bang\r\n\t+ Tên người dùng\r\n\t+ Ngày tháng năm sinh: thông báo sinh nhật\r\n\t+ Delay Tele: hệ số delay cho quá trình tele kèm map\r\n\t+ Tên cho Tool\r\n\t+ FocusWindow: làm nổi cửa sổ tool khi chạy daily, khắc phục tình trạng không tự tắt tool khi hoàn thành\r\n\t+ New Process: cha\u0323y ca\u0301c tool trên Process mơ\u0301i, ha\u0323n chê\u0301 lô\u0303i khi cha\u0323y cu\u0300ng lu\u0301c nhiê\u0300u acc";
		((Control)thongTin).Show();
	}

	private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
	{
		ThongTin thongTin = new ThongTin();
		Settings.Default.inforWindow = "Login:\r\n- Giao diện trực quan hơn\r\n- Thông báo event 2 lần, lần 1 trước 20 phút, lần 2 trước 5 phút\r\n- Chức năng thêm Đố vui có thưởng, Cài đặt\r\n- Thêm module Hỗ trợ nhiệm vụ\r\n\r\nAutoLog:\r\n- Cài giờ chạy ngay trên setup\r\n- Thêm tùy chọn hành động sau khi kết thúc vòng Job (trang viên sẽ trồng nl được setup trong module daily)\r\n- Thêm Job \"Nothing!\" : bỏ qua \r\n- Đổi cột Start thành Loop.\r\n  Ký hiệu cho cột Loop:\r\n\t\t\">>>\" chạy bình thường\r\n\t\t\"xxx\" chạy Job không chạy hành động sau khi kết thúc vòng Job\r\n\t\t\"Skip\" bỏ qua Job, có chạy hành động sau khi kết thúc vòng Job\r\n- Thêm tùy chọn tắt máy sau khi xong autolog và relog mỗi lần chạy job\r\n- Có thể lưu các file thiết lập\r\n\r\nCombo Xạ Thủ:\r\n- Thay đổi giao diện trực quan hơn\r\n- Tự động cập nhật Mana nhân vật theo thời gian thực\r\n\r\nAutoClick:\r\n- Tối ưu giao diện\r\n- Thêm Tele, nhấn nút và tìm mở Icon\r\n- Thêm chức năng AutoClick Code, giúp linh hoạt hơn cho các câu lệnh điều kiện\r\n- AutoClick (Normal / Code) được xây dựng sẵn các tệp lệnh click điểm / scan ảnh / click ảnh... gần như đầy đủ để người dùng có thể xây dưng được một tool cho riêng mình\r\n- Cấu trúc lệnh xem thêm phần Hướng Dẫn (Sẽ tiếp tục cập nhật thêm tệp lệnh)\r\n\r\nTiện Ích:\r\n- Tối ưu giao diện\r\n- Tele cập nhật thêm có thể tele đến map kèm tọa độ\r\n- Linh hoạt hơn khi có thể lấy nhanh vị trí nhân vật\r\n- Chuyển đổi qua lại giữa cac acc linh hoạt hơn (chọn nhanh 5 acc)\r\n- Tích hợp thêm AutoClick (Normal), đổi Size, Xù quẻ\r\n\r\nCài Đặt: (mới)\r\n- Gồm các thiết lập, hiệu chỉnh cho các tính năng\r\n- Cài đặt được Chủ đề cho ứng dụng (gồm màu, kiểu chữ ...)\r\n- Tùy chọn lưu trạng thái để phục vụ cho debug. Sẽ lưu toàn bộ thông tin có trong khung trạng thái lúc chạy tool daily và trừ ma. Lúc bị lỗi sẽ dễ kiếm tra hơn kẹt ở bước nào\r\n- Chi Tiết:\r\n\t+ Kiểu tên Flash\r\n\t+ Khởi động cùng Windows\r\n\t+ Free Size: kéo mở rộng kích thước font\r\n\t+ Lưu trạng thái: lưu toàn bộ thông tin trong khung trạng thái vào folder Debug\r\n\t+ Chat kênh bang khi kẹt / hoàn thành q bang\r\n\t+ Tên người dùng\r\n\t+ Ngày tháng năm sinh: thông báo sinh nhật\r\n\t+ Delay Tele: hệ số delay cho quá trình tele kèm map\r\n\t+ Tên cho Tool\r\n\t+ FocusWindow: làm nổi cửa sổ tool khi chạy daily, khắc phục tình trạng không tự tắt tool khi hoàn thành\r\n\r\nDaily:\r\n- Tính năng acc lv thấp được phát hiện tự động\r\n- Bỏ tu hành đánh tay\r\n- Thêm chạy file AutoClick (Normal) trước khi chạy chương trình daily\r\n- Thêm chạy trừ ma cá nhân\r\n- Cập nhật Q bang/pet chạy full Q (tự đi mua thuốc, đồ ăn, shop pet, bắt pet)\r\n- Quá trình bắt pet:\r\n\t+ nhân vật chỉ bắt\r\n\t+ pet turn 1 buff luyện thú đơn cao ( tăng % bắt pet)\r\n\t+ pet turn 2 buff kẹp bắt thú ( thường hoặc cao)\r\n\t+ pet turn 3 buff tinh linh cầu\r\n\t+ pet turn 4 trở đi phòng ngự\r\n\t+ đến turn nào mà không tìm được vật phẩm tương ứng thì sẽ phòng ngự\r\n\t+ các vật phẩm muốn sử dụng phải để xuống thanh skill\r\n\t+ gặp pet k cần bắt sẽ Auto\r\n- Thêm nút Chạy tiếp Q bang/pet (chạy theo tùy chọn ở dưới)\r\n\r\nBắt Pet:\r\n- Thêm tùy chọn bỏ qua AutoSetup\r\n- Thêm hành động buff cho pet (Kẹp > L.Thú > T.L.Cầu > Deff / L.Thú > Kẹp > T.L.Cầu > Deff ...)\r\n\r\nTrừ Ma:\r\n- Thêm phù team cho di chuyển bằng phù và npc";
		((Control)thongTin).Show();
	}

	private void linkLabel5_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0006: Unknown result type (might be due to invalid IL or missing references)
		//IL_0012: Unknown result type (might be due to invalid IL or missing references)
		//IL_001f: Expected O, but got Unknown
		Process.Start(new ProcessStartInfo
		{
			FileName = "https://www.facebook.com/nguyenanhminh.97/",
			UseShellExecute = true
		});
	}

	private void button20_Click_1(object sender, EventArgs e)
	{
		step = 1;
		((Control)this).Cursor = Cursors.WaitCursor;
		((Control)progressBar1).Visible = true;
		((Control)label14).Visible = true;
		percentage(3);
		timer1.Start();
	}

	private void percentage(int value)
	{
		((Control)label14).Text = value + " %";
		progressBar1.Value = value;
	}

	private void DeleteFile(string path)
	{
		if (File.Exists(path))
		{
			File.Delete(path);
		}
	}

	public static void DeleteDirectory(string target_dir)
	{
		string[] files = Directory.GetFiles(target_dir);
		string[] directories = Directory.GetDirectories(target_dir);
		string[] array = files;
		foreach (string text in array)
		{
			File.SetAttributes(text, (FileAttributes)128);
			File.Delete(text);
		}
		string[] array2 = directories;
		foreach (string target_dir2 in array2)
		{
			DeleteDirectory(target_dir2);
		}
		Directory.Delete(target_dir, false);
	}

	public static void CopyFolder(string sourceFolder, string destFolder)
	{
		if (!Directory.Exists(sourceFolder))
		{
			return;
		}
		if (!Directory.Exists(destFolder))
		{
			Directory.CreateDirectory(destFolder);
		}
		string[] files = Directory.GetFiles(sourceFolder);
		string[] array = files;
		foreach (string text in array)
		{
			string fileName = Path.GetFileName(text);
			string text2 = Path.Combine(destFolder, fileName);
			if (File.Exists(text2))
			{
				File.Delete(text2);
			}
			File.Copy(text, text2);
		}
		string[] directories = Directory.GetDirectories(sourceFolder);
		string[] array2 = directories;
		foreach (string text3 in array2)
		{
			string fileName2 = Path.GetFileName(text3);
			string destFolder2 = Path.Combine(destFolder, fileName2);
			CopyFolder(text3, destFolder2);
		}
	}

	private void timer1_Tick(object sender, EventArgs e)
	{
		//IL_028f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0223: Unknown result type (might be due to invalid IL or missing references)
		timer1.Stop();
		try
		{
			string text = linkApp;
			string text2 = ((Control)textBox2).Text.Substring(0, ((Control)textBox2).Text.LastIndexOf('\\'));
			switch (step)
			{
			case 1:
				CopyFolder(text2 + "\\AccData", text + "\\AccData");
				percentage(15);
				step = 2;
				break;
			case 2:
				DeleteFile(text + "\\AccData\\BMxAutoLog.txt");
				percentage(30);
				step = 3;
				break;
			case 3:
				if (!checkBox16.Checked)
				{
					DeleteDirectory(text + "\\AccData\\Setting");
				}
				percentage(50);
				step = 4;
				break;
			case 4:
				CopyFolder(text2 + "\\AutoClick", text + "\\AutoClick");
				percentage(60);
				step = 5;
				break;
			case 5:
				CopyFolder(text2 + "\\HoTroQ", text + "\\HoTroQ");
				percentage(70);
				step = 6;
				break;
			case 6:
				CopyFolder(text2 + "\\Theme", text + "\\Theme");
				percentage(80);
				step = 7;
				break;
			case 7:
				CopyFolder(text2 + "\\Notes", text + "\\Notes");
				CopyFolder(text2 + "\\Train", text + "\\Train");
				percentage(90);
				step = 8;
				break;
			case 8:
				CopyFolder(text2 + "\\Anh\\System", text + "\\Anh\\System");
				percentage(100);
				step = 9;
				break;
			case 9:
				((Control)this).Cursor = Cursors.Default;
				MessageBox.Show("Sao chép Xong");
				((Control)progressBar1).Visible = false;
				((Control)label14).Visible = false;
				return;
			}
			timer1.Start();
		}
		catch (System.Exception)
		{
			timer1.Stop();
			((Control)progressBar1).Visible = false;
			((Control)label14).Visible = false;
			((Control)this).Cursor = Cursors.Default;
			MessageBox.Show("Xảy ra lỗi trong quá trình sao chép");
		}
	}

	private void button22_Click(object sender, EventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0007: Expected O, but got Unknown
		//IL_002c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0032: Invalid comparison between Unknown and I4
		OpenFileDialog val = new OpenFileDialog();
		((FileDialog)val).Filter = "exe|*.exe";
		((FileDialog)val).Title = "Chọn Ứng Dụng";
		((FileDialog)val).InitialDirectory = linkApp;
		if ((int)((CommonDialog)val).ShowDialog() == 1)
		{
			((Control)textBoxUrlApp).Text = ((FileDialog)val).FileName;
		}
	}

	private void checkBox13_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBox13.Checked)
		{
			checkBox14.Checked = false;
			checkBox15.Checked = false;
		}
	}

	private void checkBox15_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBox15.Checked)
		{
			checkBox14.Checked = false;
			checkBox13.Checked = false;
		}
	}

	private void checkBox14_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBox14.Checked)
		{
			checkBox13.Checked = false;
			checkBox15.Checked = false;
		}
	}

	private void checkBox17_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBox17.Checked)
		{
			checkBox18.CheckState = (CheckState)0;
		}
		else if (!checkBox17.Checked && !checkBox18.Checked)
		{
			checkBox17.CheckState = (CheckState)1;
		}
	}

	private void checkBox18_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBox18.Checked)
		{
			checkBox17.CheckState = (CheckState)0;
		}
		else if (!checkBox17.Checked && !checkBox18.Checked)
		{
			checkBox17.CheckState = (CheckState)1;
		}
	}

	private void linkLabel6_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
	{
		//IL_005b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0061: Expected O, but got Unknown
		//IL_007b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0082: Expected O, but got Unknown
		//IL_00e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ec: Expected O, but got Unknown
		//IL_0104: Unknown result type (might be due to invalid IL or missing references)
		//IL_010b: Expected O, but got Unknown
		ThongTin thongTin = new ThongTin();
		Settings.Default.inforWindow = string.Concat(new string[7]
		{
			"Thông Tin Ngươ\u0300i Du\u0300ng Đã Kích Hoạt (Từ API Google):\r\n- Name: ",
			Program.AppMain.nameVIP,
			"\r\n- Model: ",
			Program.AppMain.model,
			"\r\n- Serial: ",
			Program.AppMain.serial,
			"\r\n\r\nThông Tin ID Có Sẵn Trên máy:\r\n"
		});
		try
		{
			ManagementObjectSearcher val = new ManagementObjectSearcher("SELECT * FROM Win32_DiskDrive");
			int num = 0;
			ManagementObjectEnumerator enumerator = val.Get().GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					ManagementObject val2 = (ManagementObject)enumerator.Current;
					string text = ((ManagementBaseObject)val2)["Model"]?.ToString().Trim() ?? "Unknown";
					string text2 = "Unknown";
					string text3 = ((ManagementBaseObject)val2)["DeviceID"]?.ToString();
					if (!string.IsNullOrEmpty(text3))
					{
						ManagementObjectSearcher val3 = new ManagementObjectSearcher("SELECT * FROM Win32_PhysicalMedia");
						ManagementObjectEnumerator enumerator2 = val3.Get().GetEnumerator();
						try
						{
							while (enumerator2.MoveNext())
							{
								ManagementObject val4 = (ManagementObject)enumerator2.Current;
								if (((ManagementBaseObject)val4)["Tag"]?.ToString() == text3)
								{
									text2 = ((ManagementBaseObject)val4)["SerialNumber"]?.ToString().Trim() ?? "Unknown";
									break;
								}
							}
						}
						finally
						{
							((System.IDisposable)enumerator2)?.Dispose();
						}
					}
					Settings.Default.inforWindow += $"ID{num}:\r\n[{text}]\r\n[{text2}]\r\n";
					num++;
				}
			}
			finally
			{
				((System.IDisposable)enumerator)?.Dispose();
			}
		}
		catch (System.Exception ex)
		{
			Settings settings = Settings.Default;
			settings.inforWindow = settings.inforWindow + "Lỗi khi đọc thông tin ổ cứng: " + ex.Message + "\r\n";
		}
		((Control)thongTin).Show();
	}

	private void tabControl2_Selected(object sender, TabControlEventArgs e)
	{
		if (e.TabPageIndex != 4)
		{
		}
	}

	private void pictureBox1_Click(object sender, EventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0006: Unknown result type (might be due to invalid IL or missing references)
		//IL_0012: Unknown result type (might be due to invalid IL or missing references)
		//IL_001f: Expected O, but got Unknown
		Process.Start(new ProcessStartInfo
		{
			FileName = "https://www.facebook.com/nguyenanhminh.97/",
			UseShellExecute = true
		});
	}

	private void checkBox20_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBox20.Checked)
		{
			checkBox21.CheckState = (CheckState)0;
		}
		else
		{
			checkBox21.CheckState = (CheckState)1;
		}
	}

	private void checkBox21_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBox21.Checked)
		{
			checkBox20.CheckState = (CheckState)0;
		}
		else
		{
			checkBox20.CheckState = (CheckState)1;
		}
	}

	private void tabPage10_Click(object sender, EventArgs e)
	{
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
		//IL_000c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0012: Expected O, but got Unknown
		//IL_0012: Unknown result type (might be due to invalid IL or missing references)
		//IL_0018: Expected O, but got Unknown
		//IL_0018: Unknown result type (might be due to invalid IL or missing references)
		//IL_001e: Expected O, but got Unknown
		//IL_001e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0024: Expected O, but got Unknown
		//IL_0024: Unknown result type (might be due to invalid IL or missing references)
		//IL_002b: Expected O, but got Unknown
		//IL_0035: Unknown result type (might be due to invalid IL or missing references)
		//IL_003c: Expected O, but got Unknown
		//IL_003d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0047: Expected O, but got Unknown
		//IL_0048: Unknown result type (might be due to invalid IL or missing references)
		//IL_0052: Expected O, but got Unknown
		//IL_0053: Unknown result type (might be due to invalid IL or missing references)
		//IL_005d: Expected O, but got Unknown
		//IL_005e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0068: Expected O, but got Unknown
		//IL_0069: Unknown result type (might be due to invalid IL or missing references)
		//IL_0073: Expected O, but got Unknown
		//IL_0074: Unknown result type (might be due to invalid IL or missing references)
		//IL_007e: Expected O, but got Unknown
		//IL_007f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0089: Expected O, but got Unknown
		//IL_008a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0094: Expected O, but got Unknown
		//IL_0095: Unknown result type (might be due to invalid IL or missing references)
		//IL_009f: Expected O, but got Unknown
		//IL_00a0: Unknown result type (might be due to invalid IL or missing references)
		//IL_00aa: Expected O, but got Unknown
		//IL_00ab: Unknown result type (might be due to invalid IL or missing references)
		//IL_00b5: Expected O, but got Unknown
		//IL_00b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c0: Expected O, but got Unknown
		//IL_00c1: Unknown result type (might be due to invalid IL or missing references)
		//IL_00cb: Expected O, but got Unknown
		//IL_00cc: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d6: Expected O, but got Unknown
		//IL_00d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e1: Expected O, but got Unknown
		//IL_00e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ec: Expected O, but got Unknown
		//IL_00ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f7: Expected O, but got Unknown
		//IL_00f8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0102: Expected O, but got Unknown
		//IL_0103: Unknown result type (might be due to invalid IL or missing references)
		//IL_010d: Expected O, but got Unknown
		//IL_010e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0118: Expected O, but got Unknown
		//IL_0119: Unknown result type (might be due to invalid IL or missing references)
		//IL_0123: Expected O, but got Unknown
		//IL_0124: Unknown result type (might be due to invalid IL or missing references)
		//IL_012e: Expected O, but got Unknown
		//IL_012f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0139: Expected O, but got Unknown
		//IL_013a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0144: Expected O, but got Unknown
		//IL_0145: Unknown result type (might be due to invalid IL or missing references)
		//IL_014f: Expected O, but got Unknown
		//IL_0150: Unknown result type (might be due to invalid IL or missing references)
		//IL_015a: Expected O, but got Unknown
		//IL_015b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0165: Expected O, but got Unknown
		//IL_0166: Unknown result type (might be due to invalid IL or missing references)
		//IL_0170: Expected O, but got Unknown
		//IL_0171: Unknown result type (might be due to invalid IL or missing references)
		//IL_017b: Expected O, but got Unknown
		//IL_017c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0186: Expected O, but got Unknown
		//IL_0187: Unknown result type (might be due to invalid IL or missing references)
		//IL_0191: Expected O, but got Unknown
		//IL_0192: Unknown result type (might be due to invalid IL or missing references)
		//IL_019c: Expected O, but got Unknown
		//IL_019d: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a7: Expected O, but got Unknown
		//IL_01a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b2: Expected O, but got Unknown
		//IL_01b3: Unknown result type (might be due to invalid IL or missing references)
		//IL_01bd: Expected O, but got Unknown
		//IL_01be: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c8: Expected O, but got Unknown
		//IL_01c9: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d3: Expected O, but got Unknown
		//IL_01d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_01de: Expected O, but got Unknown
		//IL_01df: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e9: Expected O, but got Unknown
		//IL_01ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f4: Expected O, but got Unknown
		//IL_01f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ff: Expected O, but got Unknown
		//IL_0200: Unknown result type (might be due to invalid IL or missing references)
		//IL_020a: Expected O, but got Unknown
		//IL_020b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0215: Expected O, but got Unknown
		//IL_0216: Unknown result type (might be due to invalid IL or missing references)
		//IL_0220: Expected O, but got Unknown
		//IL_0221: Unknown result type (might be due to invalid IL or missing references)
		//IL_022b: Expected O, but got Unknown
		//IL_022c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0236: Expected O, but got Unknown
		//IL_0237: Unknown result type (might be due to invalid IL or missing references)
		//IL_0241: Expected O, but got Unknown
		//IL_0242: Unknown result type (might be due to invalid IL or missing references)
		//IL_024c: Expected O, but got Unknown
		//IL_024d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0257: Expected O, but got Unknown
		//IL_0258: Unknown result type (might be due to invalid IL or missing references)
		//IL_0262: Expected O, but got Unknown
		//IL_0263: Unknown result type (might be due to invalid IL or missing references)
		//IL_026d: Expected O, but got Unknown
		//IL_026e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0278: Expected O, but got Unknown
		//IL_0279: Unknown result type (might be due to invalid IL or missing references)
		//IL_0283: Expected O, but got Unknown
		//IL_0284: Unknown result type (might be due to invalid IL or missing references)
		//IL_028e: Expected O, but got Unknown
		//IL_028f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0299: Expected O, but got Unknown
		//IL_029a: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a4: Expected O, but got Unknown
		//IL_02a5: Unknown result type (might be due to invalid IL or missing references)
		//IL_02af: Expected O, but got Unknown
		//IL_02b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ba: Expected O, but got Unknown
		//IL_02bb: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c5: Expected O, but got Unknown
		//IL_02c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d0: Expected O, but got Unknown
		//IL_02d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_02db: Expected O, but got Unknown
		//IL_02dc: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e6: Expected O, but got Unknown
		//IL_02e7: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f1: Expected O, but got Unknown
		//IL_02f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_02fc: Expected O, but got Unknown
		//IL_02fd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0307: Expected O, but got Unknown
		//IL_0308: Unknown result type (might be due to invalid IL or missing references)
		//IL_0312: Expected O, but got Unknown
		//IL_0313: Unknown result type (might be due to invalid IL or missing references)
		//IL_031d: Expected O, but got Unknown
		//IL_031e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0328: Expected O, but got Unknown
		//IL_0329: Unknown result type (might be due to invalid IL or missing references)
		//IL_0333: Expected O, but got Unknown
		//IL_0334: Unknown result type (might be due to invalid IL or missing references)
		//IL_033e: Expected O, but got Unknown
		//IL_033f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0349: Expected O, but got Unknown
		//IL_034a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0354: Expected O, but got Unknown
		//IL_0355: Unknown result type (might be due to invalid IL or missing references)
		//IL_035f: Expected O, but got Unknown
		//IL_0360: Unknown result type (might be due to invalid IL or missing references)
		//IL_036a: Expected O, but got Unknown
		//IL_036b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0375: Expected O, but got Unknown
		//IL_0376: Unknown result type (might be due to invalid IL or missing references)
		//IL_0380: Expected O, but got Unknown
		//IL_0381: Unknown result type (might be due to invalid IL or missing references)
		//IL_038b: Expected O, but got Unknown
		//IL_038c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0396: Expected O, but got Unknown
		//IL_0397: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a1: Expected O, but got Unknown
		//IL_03a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ac: Expected O, but got Unknown
		//IL_03ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_03b7: Expected O, but got Unknown
		//IL_03b8: Unknown result type (might be due to invalid IL or missing references)
		//IL_03c2: Expected O, but got Unknown
		//IL_03c3: Unknown result type (might be due to invalid IL or missing references)
		//IL_03cd: Expected O, but got Unknown
		//IL_03ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_03d8: Expected O, but got Unknown
		//IL_03d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_03e3: Expected O, but got Unknown
		//IL_03e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ee: Expected O, but got Unknown
		//IL_03ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_03f9: Expected O, but got Unknown
		//IL_03fa: Unknown result type (might be due to invalid IL or missing references)
		//IL_0404: Expected O, but got Unknown
		//IL_0405: Unknown result type (might be due to invalid IL or missing references)
		//IL_040f: Expected O, but got Unknown
		//IL_0410: Unknown result type (might be due to invalid IL or missing references)
		//IL_041a: Expected O, but got Unknown
		//IL_041b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0425: Expected O, but got Unknown
		//IL_0426: Unknown result type (might be due to invalid IL or missing references)
		//IL_0430: Expected O, but got Unknown
		//IL_0431: Unknown result type (might be due to invalid IL or missing references)
		//IL_043b: Expected O, but got Unknown
		//IL_043c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0446: Expected O, but got Unknown
		//IL_0447: Unknown result type (might be due to invalid IL or missing references)
		//IL_0451: Expected O, but got Unknown
		//IL_0452: Unknown result type (might be due to invalid IL or missing references)
		//IL_045c: Expected O, but got Unknown
		//IL_045d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0467: Expected O, but got Unknown
		//IL_0468: Unknown result type (might be due to invalid IL or missing references)
		//IL_0472: Expected O, but got Unknown
		//IL_0473: Unknown result type (might be due to invalid IL or missing references)
		//IL_047d: Expected O, but got Unknown
		//IL_047e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0488: Expected O, but got Unknown
		//IL_0489: Unknown result type (might be due to invalid IL or missing references)
		//IL_0493: Expected O, but got Unknown
		//IL_0494: Unknown result type (might be due to invalid IL or missing references)
		//IL_049e: Expected O, but got Unknown
		//IL_049f: Unknown result type (might be due to invalid IL or missing references)
		//IL_04a9: Expected O, but got Unknown
		//IL_04aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_04b4: Expected O, but got Unknown
		//IL_04b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_04bf: Expected O, but got Unknown
		//IL_04c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_04ca: Expected O, but got Unknown
		//IL_04cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_04d5: Expected O, but got Unknown
		//IL_04d6: Unknown result type (might be due to invalid IL or missing references)
		//IL_04e0: Expected O, but got Unknown
		//IL_04e1: Unknown result type (might be due to invalid IL or missing references)
		//IL_04eb: Expected O, but got Unknown
		//IL_04ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_04f6: Expected O, but got Unknown
		//IL_04f7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0501: Expected O, but got Unknown
		//IL_0502: Unknown result type (might be due to invalid IL or missing references)
		//IL_050c: Expected O, but got Unknown
		//IL_050d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0517: Expected O, but got Unknown
		//IL_0518: Unknown result type (might be due to invalid IL or missing references)
		//IL_0522: Expected O, but got Unknown
		//IL_0523: Unknown result type (might be due to invalid IL or missing references)
		//IL_052d: Expected O, but got Unknown
		//IL_052e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0538: Expected O, but got Unknown
		//IL_0539: Unknown result type (might be due to invalid IL or missing references)
		//IL_0543: Expected O, but got Unknown
		//IL_0544: Unknown result type (might be due to invalid IL or missing references)
		//IL_054e: Expected O, but got Unknown
		//IL_054f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0559: Expected O, but got Unknown
		//IL_055a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0564: Expected O, but got Unknown
		//IL_0565: Unknown result type (might be due to invalid IL or missing references)
		//IL_056f: Expected O, but got Unknown
		//IL_0570: Unknown result type (might be due to invalid IL or missing references)
		//IL_057a: Expected O, but got Unknown
		//IL_057b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0585: Expected O, but got Unknown
		//IL_0586: Unknown result type (might be due to invalid IL or missing references)
		//IL_0590: Expected O, but got Unknown
		//IL_0591: Unknown result type (might be due to invalid IL or missing references)
		//IL_059b: Expected O, but got Unknown
		//IL_059c: Unknown result type (might be due to invalid IL or missing references)
		//IL_05a6: Expected O, but got Unknown
		//IL_05a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_05b1: Expected O, but got Unknown
		//IL_05b2: Unknown result type (might be due to invalid IL or missing references)
		//IL_05bc: Expected O, but got Unknown
		//IL_05bd: Unknown result type (might be due to invalid IL or missing references)
		//IL_05c7: Expected O, but got Unknown
		//IL_05c8: Unknown result type (might be due to invalid IL or missing references)
		//IL_05d2: Expected O, but got Unknown
		//IL_05d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_05dd: Expected O, but got Unknown
		//IL_05de: Unknown result type (might be due to invalid IL or missing references)
		//IL_05e8: Expected O, but got Unknown
		//IL_05e9: Unknown result type (might be due to invalid IL or missing references)
		//IL_05f3: Expected O, but got Unknown
		//IL_05f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_05fe: Expected O, but got Unknown
		//IL_0605: Unknown result type (might be due to invalid IL or missing references)
		//IL_060f: Expected O, but got Unknown
		//IL_0798: Unknown result type (might be due to invalid IL or missing references)
		//IL_07be: Unknown result type (might be due to invalid IL or missing references)
		//IL_0801: Unknown result type (might be due to invalid IL or missing references)
		//IL_080b: Expected O, but got Unknown
		//IL_0823: Unknown result type (might be due to invalid IL or missing references)
		//IL_0849: Unknown result type (might be due to invalid IL or missing references)
		//IL_088c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0896: Expected O, but got Unknown
		//IL_08a1: Unknown result type (might be due to invalid IL or missing references)
		//IL_08c7: Unknown result type (might be due to invalid IL or missing references)
		//IL_090a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0914: Expected O, but got Unknown
		//IL_091b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0995: Unknown result type (might be due to invalid IL or missing references)
		//IL_09aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_09d6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a16: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a2e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a38: Expected O, but got Unknown
		//IL_0a3a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a46: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a52: Unknown result type (might be due to invalid IL or missing references)
		//IL_0aa9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ac1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0acb: Expected O, but got Unknown
		//IL_0acd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ad9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ae5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b0f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b35: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b4d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b57: Expected O, but got Unknown
		//IL_0b59: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b65: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b71: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bb1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c10: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c25: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c4b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c94: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ca9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ccf: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d02: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d28: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d5b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d81: Unknown result type (might be due to invalid IL or missing references)
		//IL_0dc4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0dce: Expected O, but got Unknown
		//IL_0e61: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ea7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f0d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f39: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fc5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0feb: Unknown result type (might be due to invalid IL or missing references)
		//IL_1021: Unknown result type (might be due to invalid IL or missing references)
		//IL_102b: Expected O, but got Unknown
		//IL_1036: Unknown result type (might be due to invalid IL or missing references)
		//IL_105c: Unknown result type (might be due to invalid IL or missing references)
		//IL_109f: Unknown result type (might be due to invalid IL or missing references)
		//IL_10a9: Expected O, but got Unknown
		//IL_10b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_10da: Unknown result type (might be due to invalid IL or missing references)
		//IL_111d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1127: Expected O, but got Unknown
		//IL_118d: Unknown result type (might be due to invalid IL or missing references)
		//IL_11b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_11cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_1218: Unknown result type (might be due to invalid IL or missing references)
		//IL_123e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1281: Unknown result type (might be due to invalid IL or missing references)
		//IL_128b: Expected O, but got Unknown
		//IL_12e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_1308: Unknown result type (might be due to invalid IL or missing references)
		//IL_133e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1348: Expected O, but got Unknown
		//IL_13ae: Unknown result type (might be due to invalid IL or missing references)
		//IL_13d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_13ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_1439: Unknown result type (might be due to invalid IL or missing references)
		//IL_145f: Unknown result type (might be due to invalid IL or missing references)
		//IL_14a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_14ac: Expected O, but got Unknown
		//IL_14b7: Unknown result type (might be due to invalid IL or missing references)
		//IL_14dd: Unknown result type (might be due to invalid IL or missing references)
		//IL_1520: Unknown result type (might be due to invalid IL or missing references)
		//IL_152a: Expected O, but got Unknown
		//IL_1535: Unknown result type (might be due to invalid IL or missing references)
		//IL_155b: Unknown result type (might be due to invalid IL or missing references)
		//IL_159e: Unknown result type (might be due to invalid IL or missing references)
		//IL_15a8: Expected O, but got Unknown
		//IL_15b3: Unknown result type (might be due to invalid IL or missing references)
		//IL_15d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_161c: Unknown result type (might be due to invalid IL or missing references)
		//IL_1626: Expected O, but got Unknown
		//IL_168c: Unknown result type (might be due to invalid IL or missing references)
		//IL_16b8: Unknown result type (might be due to invalid IL or missing references)
		//IL_1705: Unknown result type (might be due to invalid IL or missing references)
		//IL_172b: Unknown result type (might be due to invalid IL or missing references)
		//IL_176f: Unknown result type (might be due to invalid IL or missing references)
		//IL_1779: Expected O, but got Unknown
		//IL_1784: Unknown result type (might be due to invalid IL or missing references)
		//IL_17aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_17ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_17f7: Expected O, but got Unknown
		//IL_1802: Unknown result type (might be due to invalid IL or missing references)
		//IL_1828: Unknown result type (might be due to invalid IL or missing references)
		//IL_186c: Unknown result type (might be due to invalid IL or missing references)
		//IL_1876: Expected O, but got Unknown
		//IL_1881: Unknown result type (might be due to invalid IL or missing references)
		//IL_18a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_18eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_18f5: Expected O, but got Unknown
		//IL_195b: Unknown result type (might be due to invalid IL or missing references)
		//IL_1987: Unknown result type (might be due to invalid IL or missing references)
		//IL_19d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_19fa: Unknown result type (might be due to invalid IL or missing references)
		//IL_1a3e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1a48: Expected O, but got Unknown
		//IL_1a53: Unknown result type (might be due to invalid IL or missing references)
		//IL_1a79: Unknown result type (might be due to invalid IL or missing references)
		//IL_1abd: Unknown result type (might be due to invalid IL or missing references)
		//IL_1ac7: Expected O, but got Unknown
		//IL_1ad2: Unknown result type (might be due to invalid IL or missing references)
		//IL_1af8: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b3c: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b46: Expected O, but got Unknown
		//IL_1b51: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b77: Unknown result type (might be due to invalid IL or missing references)
		//IL_1bbb: Unknown result type (might be due to invalid IL or missing references)
		//IL_1bc5: Expected O, but got Unknown
		//IL_1c59: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c85: Unknown result type (might be due to invalid IL or missing references)
		//IL_1cc5: Unknown result type (might be due to invalid IL or missing references)
		//IL_1ceb: Unknown result type (might be due to invalid IL or missing references)
		//IL_1d2f: Unknown result type (might be due to invalid IL or missing references)
		//IL_1d39: Expected O, but got Unknown
		//IL_1d44: Unknown result type (might be due to invalid IL or missing references)
		//IL_1d6a: Unknown result type (might be due to invalid IL or missing references)
		//IL_1dae: Unknown result type (might be due to invalid IL or missing references)
		//IL_1db8: Expected O, but got Unknown
		//IL_1dc3: Unknown result type (might be due to invalid IL or missing references)
		//IL_1de9: Unknown result type (might be due to invalid IL or missing references)
		//IL_1e2d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1e37: Expected O, but got Unknown
		//IL_1e42: Unknown result type (might be due to invalid IL or missing references)
		//IL_1e68: Unknown result type (might be due to invalid IL or missing references)
		//IL_1eac: Unknown result type (might be due to invalid IL or missing references)
		//IL_1eb6: Expected O, but got Unknown
		//IL_1ec1: Unknown result type (might be due to invalid IL or missing references)
		//IL_1ee7: Unknown result type (might be due to invalid IL or missing references)
		//IL_1f2b: Unknown result type (might be due to invalid IL or missing references)
		//IL_1f35: Expected O, but got Unknown
		//IL_1f40: Unknown result type (might be due to invalid IL or missing references)
		//IL_1f66: Unknown result type (might be due to invalid IL or missing references)
		//IL_1faa: Unknown result type (might be due to invalid IL or missing references)
		//IL_1fb4: Expected O, but got Unknown
		//IL_1fd9: Unknown result type (might be due to invalid IL or missing references)
		//IL_2005: Unknown result type (might be due to invalid IL or missing references)
		//IL_2041: Unknown result type (might be due to invalid IL or missing references)
		//IL_206a: Unknown result type (might be due to invalid IL or missing references)
		//IL_2140: Unknown result type (might be due to invalid IL or missing references)
		//IL_2179: Unknown result type (might be due to invalid IL or missing references)
		//IL_219f: Unknown result type (might be due to invalid IL or missing references)
		//IL_21a9: Expected O, but got Unknown
		//IL_226b: Unknown result type (might be due to invalid IL or missing references)
		//IL_228e: Unknown result type (might be due to invalid IL or missing references)
		//IL_22a9: Unknown result type (might be due to invalid IL or missing references)
		//IL_22f8: Unknown result type (might be due to invalid IL or missing references)
		//IL_231e: Unknown result type (might be due to invalid IL or missing references)
		//IL_234e: Unknown result type (might be due to invalid IL or missing references)
		//IL_2365: Unknown result type (might be due to invalid IL or missing references)
		//IL_238b: Unknown result type (might be due to invalid IL or missing references)
		//IL_23ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_23d8: Expected O, but got Unknown
		//IL_23df: Unknown result type (might be due to invalid IL or missing references)
		//IL_23f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_241c: Unknown result type (might be due to invalid IL or missing references)
		//IL_245f: Unknown result type (might be due to invalid IL or missing references)
		//IL_2469: Expected O, but got Unknown
		//IL_2470: Unknown result type (might be due to invalid IL or missing references)
		//IL_2487: Unknown result type (might be due to invalid IL or missing references)
		//IL_24ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_24f0: Unknown result type (might be due to invalid IL or missing references)
		//IL_24fa: Expected O, but got Unknown
		//IL_2501: Unknown result type (might be due to invalid IL or missing references)
		//IL_2518: Unknown result type (might be due to invalid IL or missing references)
		//IL_253e: Unknown result type (might be due to invalid IL or missing references)
		//IL_2581: Unknown result type (might be due to invalid IL or missing references)
		//IL_258b: Expected O, but got Unknown
		//IL_25a5: Unknown result type (might be due to invalid IL or missing references)
		//IL_25cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_26ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_270d: Unknown result type (might be due to invalid IL or missing references)
		//IL_2728: Unknown result type (might be due to invalid IL or missing references)
		//IL_2768: Unknown result type (might be due to invalid IL or missing references)
		//IL_2791: Unknown result type (might be due to invalid IL or missing references)
		//IL_27f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_282e: Unknown result type (might be due to invalid IL or missing references)
		//IL_2915: Unknown result type (might be due to invalid IL or missing references)
		//IL_2938: Unknown result type (might be due to invalid IL or missing references)
		//IL_2953: Unknown result type (might be due to invalid IL or missing references)
		//IL_299f: Unknown result type (might be due to invalid IL or missing references)
		//IL_29c8: Unknown result type (might be due to invalid IL or missing references)
		//IL_2a15: Unknown result type (might be due to invalid IL or missing references)
		//IL_2a3b: Unknown result type (might be due to invalid IL or missing references)
		//IL_2a88: Unknown result type (might be due to invalid IL or missing references)
		//IL_2aae: Unknown result type (might be due to invalid IL or missing references)
		//IL_2b04: Unknown result type (might be due to invalid IL or missing references)
		//IL_2b0e: Expected O, but got Unknown
		//IL_2b15: Unknown result type (might be due to invalid IL or missing references)
		//IL_2b2a: Unknown result type (might be due to invalid IL or missing references)
		//IL_2b53: Unknown result type (might be due to invalid IL or missing references)
		//IL_2b96: Unknown result type (might be due to invalid IL or missing references)
		//IL_2bbc: Unknown result type (might be due to invalid IL or missing references)
		//IL_2c09: Unknown result type (might be due to invalid IL or missing references)
		//IL_2c32: Unknown result type (might be due to invalid IL or missing references)
		//IL_2c88: Unknown result type (might be due to invalid IL or missing references)
		//IL_2c92: Expected O, but got Unknown
		//IL_2c99: Unknown result type (might be due to invalid IL or missing references)
		//IL_2cb1: Unknown result type (might be due to invalid IL or missing references)
		//IL_2cd7: Unknown result type (might be due to invalid IL or missing references)
		//IL_2ff7: Unknown result type (might be due to invalid IL or missing references)
		//IL_3023: Unknown result type (might be due to invalid IL or missing references)
		//IL_3076: Unknown result type (might be due to invalid IL or missing references)
		//IL_309c: Unknown result type (might be due to invalid IL or missing references)
		//IL_30e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_30ea: Expected O, but got Unknown
		//IL_3104: Unknown result type (might be due to invalid IL or missing references)
		//IL_312a: Unknown result type (might be due to invalid IL or missing references)
		//IL_316b: Unknown result type (might be due to invalid IL or missing references)
		//IL_3191: Unknown result type (might be due to invalid IL or missing references)
		//IL_31d5: Unknown result type (might be due to invalid IL or missing references)
		//IL_31fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_323f: Unknown result type (might be due to invalid IL or missing references)
		//IL_3249: Expected O, but got Unknown
		//IL_3261: Unknown result type (might be due to invalid IL or missing references)
		//IL_3287: Unknown result type (might be due to invalid IL or missing references)
		//IL_32cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_32f1: Unknown result type (might be due to invalid IL or missing references)
		//IL_3335: Unknown result type (might be due to invalid IL or missing references)
		//IL_335e: Unknown result type (might be due to invalid IL or missing references)
		//IL_339f: Unknown result type (might be due to invalid IL or missing references)
		//IL_33c5: Unknown result type (might be due to invalid IL or missing references)
		//IL_3409: Unknown result type (might be due to invalid IL or missing references)
		//IL_342f: Unknown result type (might be due to invalid IL or missing references)
		//IL_3470: Unknown result type (might be due to invalid IL or missing references)
		//IL_3496: Unknown result type (might be due to invalid IL or missing references)
		//IL_34da: Unknown result type (might be due to invalid IL or missing references)
		//IL_3500: Unknown result type (might be due to invalid IL or missing references)
		//IL_3543: Unknown result type (might be due to invalid IL or missing references)
		//IL_354d: Expected O, but got Unknown
		//IL_356d: Unknown result type (might be due to invalid IL or missing references)
		//IL_3577: Expected O, but got Unknown
		//IL_357e: Unknown result type (might be due to invalid IL or missing references)
		//IL_3599: Unknown result type (might be due to invalid IL or missing references)
		//IL_35c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_3603: Unknown result type (might be due to invalid IL or missing references)
		//IL_3629: Unknown result type (might be due to invalid IL or missing references)
		//IL_366c: Unknown result type (might be due to invalid IL or missing references)
		//IL_3676: Expected O, but got Unknown
		//IL_3681: Unknown result type (might be due to invalid IL or missing references)
		//IL_36c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_36f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_371f: Unknown result type (might be due to invalid IL or missing references)
		//IL_3768: Unknown result type (might be due to invalid IL or missing references)
		//IL_3772: Expected O, but got Unknown
		//IL_3779: Unknown result type (might be due to invalid IL or missing references)
		//IL_3791: Unknown result type (might be due to invalid IL or missing references)
		//IL_37ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_37f1: Unknown result type (might be due to invalid IL or missing references)
		//IL_3836: Unknown result type (might be due to invalid IL or missing references)
		//IL_386c: Unknown result type (might be due to invalid IL or missing references)
		//IL_3892: Unknown result type (might be due to invalid IL or missing references)
		//IL_38c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_3907: Unknown result type (might be due to invalid IL or missing references)
		//IL_3948: Unknown result type (might be due to invalid IL or missing references)
		//IL_3971: Unknown result type (might be due to invalid IL or missing references)
		//IL_39ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_39c4: Expected O, but got Unknown
		//IL_39cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_39e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_3a0c: Unknown result type (might be due to invalid IL or missing references)
		//IL_3a55: Unknown result type (might be due to invalid IL or missing references)
		//IL_3a5f: Expected O, but got Unknown
		//IL_3a66: Unknown result type (might be due to invalid IL or missing references)
		//IL_3a81: Unknown result type (might be due to invalid IL or missing references)
		//IL_3aaa: Unknown result type (might be due to invalid IL or missing references)
		//IL_3aee: Unknown result type (might be due to invalid IL or missing references)
		//IL_3b14: Unknown result type (might be due to invalid IL or missing references)
		//IL_3b4b: Unknown result type (might be due to invalid IL or missing references)
		//IL_3b71: Unknown result type (might be due to invalid IL or missing references)
		//IL_3ba4: Unknown result type (might be due to invalid IL or missing references)
		//IL_3bca: Unknown result type (might be due to invalid IL or missing references)
		//IL_3c0d: Unknown result type (might be due to invalid IL or missing references)
		//IL_3c17: Expected O, but got Unknown
		//IL_3c32: Unknown result type (might be due to invalid IL or missing references)
		//IL_3c5b: Unknown result type (might be due to invalid IL or missing references)
		//IL_3c95: Unknown result type (might be due to invalid IL or missing references)
		//IL_3cf5: Unknown result type (might be due to invalid IL or missing references)
		//IL_3d43: Unknown result type (might be due to invalid IL or missing references)
		//IL_3d6c: Unknown result type (might be due to invalid IL or missing references)
		//IL_3db3: Unknown result type (might be due to invalid IL or missing references)
		//IL_3df4: Unknown result type (might be due to invalid IL or missing references)
		//IL_3e35: Unknown result type (might be due to invalid IL or missing references)
		//IL_3e7a: Unknown result type (might be due to invalid IL or missing references)
		//IL_3eaa: Unknown result type (might be due to invalid IL or missing references)
		//IL_3ed0: Unknown result type (might be due to invalid IL or missing references)
		//IL_3f17: Unknown result type (might be due to invalid IL or missing references)
		//IL_3f3d: Unknown result type (might be due to invalid IL or missing references)
		//IL_3f81: Unknown result type (might be due to invalid IL or missing references)
		//IL_3f8b: Expected O, but got Unknown
		//IL_3fa2: Unknown result type (might be due to invalid IL or missing references)
		//IL_3fc8: Unknown result type (might be due to invalid IL or missing references)
		//IL_4009: Unknown result type (might be due to invalid IL or missing references)
		//IL_4032: Unknown result type (might be due to invalid IL or missing references)
		//IL_408a: Unknown result type (might be due to invalid IL or missing references)
		//IL_4094: Expected O, but got Unknown
		//IL_409b: Unknown result type (might be due to invalid IL or missing references)
		//IL_40b2: Unknown result type (might be due to invalid IL or missing references)
		//IL_40db: Unknown result type (might be due to invalid IL or missing references)
		//IL_4111: Unknown result type (might be due to invalid IL or missing references)
		//IL_413a: Unknown result type (might be due to invalid IL or missing references)
		//IL_415d: Unknown result type (might be due to invalid IL or missing references)
		//IL_4186: Unknown result type (might be due to invalid IL or missing references)
		//IL_41b8: Unknown result type (might be due to invalid IL or missing references)
		//IL_41de: Unknown result type (might be due to invalid IL or missing references)
		//IL_421f: Unknown result type (might be due to invalid IL or missing references)
		//IL_4245: Unknown result type (might be due to invalid IL or missing references)
		//IL_4319: Unknown result type (might be due to invalid IL or missing references)
		//IL_4345: Unknown result type (might be due to invalid IL or missing references)
		//IL_4391: Unknown result type (might be due to invalid IL or missing references)
		//IL_43b7: Unknown result type (might be due to invalid IL or missing references)
		//IL_43fa: Unknown result type (might be due to invalid IL or missing references)
		//IL_4423: Unknown result type (might be due to invalid IL or missing references)
		//IL_4468: Unknown result type (might be due to invalid IL or missing references)
		//IL_4472: Expected O, but got Unknown
		//IL_447f: Unknown result type (might be due to invalid IL or missing references)
		//IL_44a5: Unknown result type (might be due to invalid IL or missing references)
		//IL_44fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_4505: Expected O, but got Unknown
		//IL_450f: Unknown result type (might be due to invalid IL or missing references)
		//IL_4538: Unknown result type (might be due to invalid IL or missing references)
		//IL_456f: Unknown result type (might be due to invalid IL or missing references)
		//IL_4595: Unknown result type (might be due to invalid IL or missing references)
		//IL_45d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_45e3: Expected O, but got Unknown
		//IL_45ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_4616: Unknown result type (might be due to invalid IL or missing references)
		//IL_463c: Unknown result type (might be due to invalid IL or missing references)
		//IL_4662: Unknown result type (might be due to invalid IL or missing references)
		//IL_46a6: Unknown result type (might be due to invalid IL or missing references)
		//IL_46b0: Expected O, but got Unknown
		//IL_46ff: Unknown result type (might be due to invalid IL or missing references)
		//IL_4722: Unknown result type (might be due to invalid IL or missing references)
		//IL_473d: Unknown result type (might be due to invalid IL or missing references)
		//IL_477d: Unknown result type (might be due to invalid IL or missing references)
		//IL_4795: Unknown result type (might be due to invalid IL or missing references)
		//IL_479f: Expected O, but got Unknown
		//IL_47a1: Unknown result type (might be due to invalid IL or missing references)
		//IL_47ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_47b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_4824: Unknown result type (might be due to invalid IL or missing references)
		//IL_483d: Unknown result type (might be due to invalid IL or missing references)
		//IL_4847: Expected O, but got Unknown
		//IL_484a: Unknown result type (might be due to invalid IL or missing references)
		//IL_4857: Unknown result type (might be due to invalid IL or missing references)
		//IL_4864: Unknown result type (might be due to invalid IL or missing references)
		//IL_4892: Unknown result type (might be due to invalid IL or missing references)
		//IL_48d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_49c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_49ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_4a44: Unknown result type (might be due to invalid IL or missing references)
		//IL_4a4e: Expected O, but got Unknown
		//IL_4a59: Unknown result type (might be due to invalid IL or missing references)
		//IL_4a82: Unknown result type (might be due to invalid IL or missing references)
		//IL_4b55: Unknown result type (might be due to invalid IL or missing references)
		//IL_4b78: Unknown result type (might be due to invalid IL or missing references)
		//IL_4b93: Unknown result type (might be due to invalid IL or missing references)
		//IL_4be3: Unknown result type (might be due to invalid IL or missing references)
		//IL_4c09: Unknown result type (might be due to invalid IL or missing references)
		//IL_4c40: Unknown result type (might be due to invalid IL or missing references)
		//IL_4c85: Unknown result type (might be due to invalid IL or missing references)
		//IL_4cd0: Unknown result type (might be due to invalid IL or missing references)
		//IL_4cf9: Unknown result type (might be due to invalid IL or missing references)
		//IL_4d3d: Unknown result type (might be due to invalid IL or missing references)
		//IL_4d47: Expected O, but got Unknown
		//IL_4d5e: Unknown result type (might be due to invalid IL or missing references)
		//IL_4d87: Unknown result type (might be due to invalid IL or missing references)
		//IL_4dcb: Unknown result type (might be due to invalid IL or missing references)
		//IL_4dd5: Expected O, but got Unknown
		//IL_4ded: Unknown result type (might be due to invalid IL or missing references)
		//IL_4e16: Unknown result type (might be due to invalid IL or missing references)
		//IL_4e62: Unknown result type (might be due to invalid IL or missing references)
		//IL_4e8b: Unknown result type (might be due to invalid IL or missing references)
		//IL_4ee1: Unknown result type (might be due to invalid IL or missing references)
		//IL_4eeb: Expected O, but got Unknown
		//IL_4ef2: Unknown result type (might be due to invalid IL or missing references)
		//IL_4f07: Unknown result type (might be due to invalid IL or missing references)
		//IL_4f30: Unknown result type (might be due to invalid IL or missing references)
		//IL_5032: Unknown result type (might be due to invalid IL or missing references)
		//IL_5055: Unknown result type (might be due to invalid IL or missing references)
		//IL_5070: Unknown result type (might be due to invalid IL or missing references)
		//IL_50b3: Unknown result type (might be due to invalid IL or missing references)
		//IL_50bd: Expected O, but got Unknown
		//IL_50ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_5115: Unknown result type (might be due to invalid IL or missing references)
		//IL_5154: Unknown result type (might be due to invalid IL or missing references)
		//IL_515e: Expected O, but got Unknown
		//IL_5172: Unknown result type (might be due to invalid IL or missing references)
		//IL_518f: Unknown result type (might be due to invalid IL or missing references)
		//IL_5199: Expected O, but got Unknown
		//IL_51a3: Unknown result type (might be due to invalid IL or missing references)
		//IL_51cc: Unknown result type (might be due to invalid IL or missing references)
		//IL_5214: Unknown result type (might be due to invalid IL or missing references)
		//IL_521e: Expected O, but got Unknown
		//IL_522b: Unknown result type (might be due to invalid IL or missing references)
		//IL_5271: Unknown result type (might be due to invalid IL or missing references)
		//IL_52b8: Unknown result type (might be due to invalid IL or missing references)
		//IL_52cf: Unknown result type (might be due to invalid IL or missing references)
		//IL_52f8: Unknown result type (might be due to invalid IL or missing references)
		//IL_5348: Unknown result type (might be due to invalid IL or missing references)
		//IL_5352: Expected O, but got Unknown
		//IL_536d: Unknown result type (might be due to invalid IL or missing references)
		//IL_5396: Unknown result type (might be due to invalid IL or missing references)
		//IL_53d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_53e3: Expected O, but got Unknown
		//IL_53fa: Unknown result type (might be due to invalid IL or missing references)
		//IL_5423: Unknown result type (might be due to invalid IL or missing references)
		//IL_5466: Unknown result type (might be due to invalid IL or missing references)
		//IL_5470: Expected O, but got Unknown
		//IL_548b: Unknown result type (might be due to invalid IL or missing references)
		//IL_54b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_5504: Unknown result type (might be due to invalid IL or missing references)
		//IL_550e: Expected O, but got Unknown
		//IL_5528: Unknown result type (might be due to invalid IL or missing references)
		//IL_5551: Unknown result type (might be due to invalid IL or missing references)
		//IL_5594: Unknown result type (might be due to invalid IL or missing references)
		//IL_559e: Expected O, but got Unknown
		//IL_55b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_55de: Unknown result type (might be due to invalid IL or missing references)
		//IL_5621: Unknown result type (might be due to invalid IL or missing references)
		//IL_562b: Expected O, but got Unknown
		//IL_564a: Unknown result type (might be due to invalid IL or missing references)
		//IL_5654: Expected O, but got Unknown
		//IL_5660: Unknown result type (might be due to invalid IL or missing references)
		//IL_5674: Unknown result type (might be due to invalid IL or missing references)
		//IL_568a: Unknown result type (might be due to invalid IL or missing references)
		//IL_56bc: Unknown result type (might be due to invalid IL or missing references)
		//IL_56c6: Expected O, but got Unknown
		//IL_56f7: Unknown result type (might be due to invalid IL or missing references)
		//IL_5701: Expected O, but got Unknown
		//IL_570a: Unknown result type (might be due to invalid IL or missing references)
		//IL_5714: Expected O, but got Unknown
		//IL_571d: Unknown result type (might be due to invalid IL or missing references)
		//IL_5727: Expected O, but got Unknown
		components = (IContainer)new Container();
		DataGridViewCellStyle val = new DataGridViewCellStyle();
		DataGridViewCellStyle val2 = new DataGridViewCellStyle();
		DataGridViewCellStyle val3 = new DataGridViewCellStyle();
		DataGridViewCellStyle val4 = new DataGridViewCellStyle();
		DataGridViewCellStyle val5 = new DataGridViewCellStyle();
		ComponentResourceManager val6 = new ComponentResourceManager(typeof(CaiDat));
		checkBoxNS2 = new CheckBox();
		checkBoxNS1 = new CheckBox();
		button1 = new Button();
		groupBox2 = new GroupBox();
		dataGridView1 = new DataGridView();
		Column1 = new DataGridViewTextBoxColumn();
		button2 = new Button();
		label1 = new Label();
		textBox1 = new TextBox();
		button3 = new Button();
		tabControl1 = new TabControl();
		tabPage6 = new TabPage();
		comboBox2 = new ComboBox();
		buttonBGColor = new Button();
		button16 = new Button();
		tabPage1 = new TabPage();
		checkBox1 = new CheckBox();
		comboBox1 = new ComboBox();
		tabPage2 = new TabPage();
		checkBox2 = new CheckBox();
		button6 = new Button();
		button5 = new Button();
		button4 = new Button();
		tabPage3 = new TabPage();
		checkBox3 = new CheckBox();
		button7 = new Button();
		button8 = new Button();
		button9 = new Button();
		tabPage4 = new TabPage();
		checkBox4 = new CheckBox();
		button10 = new Button();
		button11 = new Button();
		button12 = new Button();
		tabPage5 = new TabPage();
		buttonTextSelect = new Button();
		buttonTextColor = new Button();
		buttonBackSelect = new Button();
		buttonBackColor = new Button();
		button13 = new Button();
		button15 = new Button();
		groupBox3 = new GroupBox();
		checkBoxStartWin = new CheckBox();
		tabControl2 = new TabControl();
		tabPage7 = new TabPage();
		label6 = new Label();
		button19 = new Button();
		button18 = new Button();
		button14 = new Button();
		button17 = new Button();
		comboBox3 = new ComboBox();
		tabPage8 = new TabPage();
		textBoxNameAdmin = new TextBox();
		tabControl3 = new TabControl();
		tabPage13 = new TabPage();
		checkBox11 = new CheckBox();
		checkBox5 = new CheckBox();
		checkBox9 = new CheckBox();
		label11 = new Label();
		checkBox12 = new CheckBox();
		checkBox10 = new CheckBox();
		label16 = new Label();
		tabPage14 = new TabPage();
		checkBox18 = new CheckBox();
		label30 = new Label();
		label17 = new Label();
		checkBox17 = new CheckBox();
		label22 = new Label();
		label7 = new Label();
		label20 = new Label();
		label19 = new Label();
		label26 = new Label();
		label8 = new Label();
		checkBox15 = new CheckBox();
		label29 = new Label();
		checkBox14 = new CheckBox();
		numericUpDown3 = new NumericUpDown();
		label25 = new Label();
		label21 = new Label();
		numericUpDown8 = new NumericUpDown();
		label24 = new Label();
		numericUpDown2 = new NumericUpDown();
		textBox3 = new TextBox();
		label18 = new Label();
		label4 = new Label();
		label28 = new Label();
		numericUpDown1 = new NumericUpDown();
		checkBox13 = new CheckBox();
		label23 = new Label();
		numericUpDown4 = new NumericUpDown();
		checkBox7 = new CheckBox();
		numericUpDown5 = new NumericUpDown();
		numericUpDown6 = new NumericUpDown();
		checkBoxDate = new CheckBox();
		button22 = new Button();
		label2 = new Label();
		dateTimePickerDatetime = new DateTimePicker();
		label10 = new Label();
		textBoxUrlApp = new TextBox();
		textBoxNameTool = new TextBox();
		label9 = new Label();
		label5 = new Label();
		tabPage11 = new TabPage();
		checkBox16 = new CheckBox();
		progressBar1 = new ProgressBar();
		label14 = new Label();
		label13 = new Label();
		button21 = new Button();
		textBox2 = new TextBox();
		button20 = new Button();
		tabPage9 = new TabPage();
		dataGridView2 = new DataGridView();
		Column2 = new DataGridViewTextBoxColumn();
		Column3 = new DataGridViewTextBoxColumn();
		Column4 = new DataGridViewTextBoxColumn();
		checkBox8 = new CheckBox();
		label12 = new Label();
		tabPage12 = new TabPage();
		label27 = new Label();
		numericUpDown7 = new NumericUpDown();
		checkBox21 = new CheckBox();
		checkBox20 = new CheckBox();
		checkBox19 = new CheckBox();
		checkBox6 = new CheckBox();
		label3 = new Label();
		tabPage10 = new TabPage();
		pictureBox1 = new PictureBox();
		label15 = new Label();
		textBox5 = new TextBox();
		linkLabel5 = new LinkLabel();
		linkLabel4 = new LinkLabel();
		linkLabel3 = new LinkLabel();
		linkLabel2 = new LinkLabel();
		linkLabel6 = new LinkLabel();
		linkLabel1 = new LinkLabel();
		timer1 = new Timer(components);
		((Control)groupBox2).SuspendLayout();
		((ISupportInitialize)dataGridView1).BeginInit();
		((Control)tabControl1).SuspendLayout();
		((Control)tabPage6).SuspendLayout();
		((Control)tabPage1).SuspendLayout();
		((Control)tabPage2).SuspendLayout();
		((Control)tabPage3).SuspendLayout();
		((Control)tabPage4).SuspendLayout();
		((Control)tabPage5).SuspendLayout();
		((Control)groupBox3).SuspendLayout();
		((Control)tabControl2).SuspendLayout();
		((Control)tabPage7).SuspendLayout();
		((Control)tabPage8).SuspendLayout();
		((Control)tabControl3).SuspendLayout();
		((Control)tabPage13).SuspendLayout();
		((Control)tabPage14).SuspendLayout();
		((ISupportInitialize)numericUpDown3).BeginInit();
		((ISupportInitialize)numericUpDown8).BeginInit();
		((ISupportInitialize)numericUpDown2).BeginInit();
		((ISupportInitialize)numericUpDown1).BeginInit();
		((ISupportInitialize)numericUpDown4).BeginInit();
		((ISupportInitialize)numericUpDown5).BeginInit();
		((ISupportInitialize)numericUpDown6).BeginInit();
		((Control)tabPage11).SuspendLayout();
		((Control)tabPage9).SuspendLayout();
		((ISupportInitialize)dataGridView2).BeginInit();
		((Control)tabPage12).SuspendLayout();
		((ISupportInitialize)numericUpDown7).BeginInit();
		((Control)tabPage10).SuspendLayout();
		((ISupportInitialize)pictureBox1).BeginInit();
		((Control)this).SuspendLayout();
		((Control)checkBoxNS2).AutoSize = true;
		((Control)checkBoxNS2).Location = new Point(191, 15);
		((Control)checkBoxNS2).Name = "checkBoxNS2";
		((Control)checkBoxNS2).Size = new Size(82, 19);
		((Control)checkBoxNS2).TabIndex = 1;
		((Control)checkBoxNS2).Text = "checkBox1";
		((ButtonBase)checkBoxNS2).UseVisualStyleBackColor = true;
		checkBoxNS2.CheckedChanged += new EventHandler(checkBoxNS2_CheckedChanged);
		((Control)checkBoxNS1).AutoSize = true;
		((Control)checkBoxNS1).Location = new Point(102, 15);
		((Control)checkBoxNS1).Name = "checkBoxNS1";
		((Control)checkBoxNS1).Size = new Size(82, 19);
		((Control)checkBoxNS1).TabIndex = 1;
		((Control)checkBoxNS1).Text = "checkBox1";
		((ButtonBase)checkBoxNS1).UseVisualStyleBackColor = true;
		checkBoxNS1.CheckedChanged += new EventHandler(checkBoxNS1_CheckedChanged);
		((Control)button1).Location = new Point(57, 24);
		((Control)button1).Name = "button1";
		((Control)button1).Size = new Size(75, 23);
		((Control)button1).TabIndex = 1;
		((Control)button1).Text = "Color";
		((ButtonBase)button1).UseVisualStyleBackColor = true;
		((Control)button1).Click += new EventHandler(button1_Click);
		((Control)groupBox2).BackColor = Color.Transparent;
		((Control)groupBox2).Controls.Add((Control)(object)dataGridView1);
		((Control)groupBox2).Controls.Add((Control)(object)button2);
		((Control)groupBox2).Controls.Add((Control)(object)label1);
		((Control)groupBox2).Controls.Add((Control)(object)textBox1);
		groupBox2.FlatStyle = (FlatStyle)0;
		((Control)groupBox2).ForeColor = SystemColors.ControlText;
		((Control)groupBox2).Location = new Point(52, 11);
		((Control)groupBox2).Name = "groupBox2";
		((Control)groupBox2).Size = new Size(312, 146);
		((Control)groupBox2).TabIndex = 2;
		groupBox2.TabStop = false;
		((Control)groupBox2).Text = "GroupBox";
		val.Alignment = (DataGridViewContentAlignment)16;
		val.BackColor = SystemColors.Control;
		val.Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		val.ForeColor = SystemColors.WindowText;
		val.SelectionBackColor = SystemColors.Highlight;
		val.SelectionForeColor = SystemColors.HighlightText;
		val.WrapMode = (DataGridViewTriState)1;
		dataGridView1.ColumnHeadersDefaultCellStyle = val;
		dataGridView1.ColumnHeadersHeightSizeMode = (DataGridViewColumnHeadersHeightSizeMode)2;
		dataGridView1.Columns.AddRange((DataGridViewColumn[])(object)new DataGridViewColumn[1] { (DataGridViewColumn)Column1 });
		val2.Alignment = (DataGridViewContentAlignment)16;
		val2.BackColor = SystemColors.Window;
		val2.Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		val2.ForeColor = SystemColors.ControlText;
		val2.SelectionBackColor = SystemColors.Highlight;
		val2.SelectionForeColor = SystemColors.HighlightText;
		val2.WrapMode = (DataGridViewTriState)2;
		dataGridView1.DefaultCellStyle = val2;
		((Control)dataGridView1).Location = new Point(114, 22);
		((Control)dataGridView1).Name = "dataGridView1";
		val3.Alignment = (DataGridViewContentAlignment)16;
		val3.BackColor = SystemColors.Control;
		val3.Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		val3.ForeColor = SystemColors.WindowText;
		val3.SelectionBackColor = SystemColors.Highlight;
		val3.SelectionForeColor = SystemColors.HighlightText;
		val3.WrapMode = (DataGridViewTriState)1;
		dataGridView1.RowHeadersDefaultCellStyle = val3;
		dataGridView1.RowTemplate.Height = 25;
		((Control)dataGridView1).Size = new Size(188, 118);
		((Control)dataGridView1).TabIndex = 2;
		((DataGridViewColumn)Column1).FillWeight = 50f;
		((DataGridViewColumn)Column1).HeaderText = "Cột 1";
		((DataGridViewColumn)Column1).Name = "Column1";
		((DataGridViewColumn)Column1).Width = 50;
		((Control)button2).BackColor = Color.Transparent;
		((Control)button2).Location = new Point(18, 59);
		((Control)button2).Name = "button2";
		((Control)button2).Size = new Size(75, 23);
		((Control)button2).TabIndex = 1;
		((Control)button2).Text = "Button";
		((ButtonBase)button2).UseVisualStyleBackColor = false;
		((Control)label1).AutoSize = true;
		((Control)label1).ForeColor = SystemColors.ControlText;
		((Control)label1).Location = new Point(18, 29);
		((Control)label1).Name = "label1";
		((Control)label1).Size = new Size(35, 15);
		((Control)label1).TabIndex = 1;
		((Control)label1).Text = "Label";
		((Control)textBox1).Location = new Point(18, 99);
		((Control)textBox1).Name = "textBox1";
		((Control)textBox1).Size = new Size(75, 23);
		((Control)textBox1).TabIndex = 0;
		((Control)textBox1).Text = "TextBox";
		((Control)button3).Location = new Point(57, 82);
		((Control)button3).Name = "button3";
		((Control)button3).Size = new Size(75, 23);
		((Control)button3).TabIndex = 3;
		((Control)button3).Text = "image";
		((ButtonBase)button3).UseVisualStyleBackColor = true;
		((Control)button3).Click += new EventHandler(button3_Click);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage6);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage1);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage2);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage3);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage4);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage5);
		((Control)tabControl1).Location = new Point(8, 6);
		tabControl1.Multiline = true;
		((Control)tabControl1).Name = "tabControl1";
		tabControl1.SelectedIndex = 0;
		((Control)tabControl1).Size = new Size(198, 193);
		((Control)tabControl1).TabIndex = 4;
		((Control)tabPage6).Controls.Add((Control)(object)comboBox2);
		((Control)tabPage6).Controls.Add((Control)(object)buttonBGColor);
		((Control)tabPage6).Controls.Add((Control)(object)button16);
		tabPage6.Location = new Point(4, 44);
		((Control)tabPage6).Name = "tabPage6";
		((Control)tabPage6).Size = new Size(190, 145);
		tabPage6.TabIndex = 5;
		((Control)tabPage6).Text = "BackGround";
		tabPage6.UseVisualStyleBackColor = true;
		((ListControl)comboBox2).FormattingEnabled = true;
		comboBox2.Items.AddRange(new object[5] { "Tile", "Center", "Stretch", "Zoom", "None" });
		((Control)comboBox2).Location = new Point(57, 111);
		((Control)comboBox2).Name = "comboBox2";
		((Control)comboBox2).Size = new Size(75, 23);
		((Control)comboBox2).TabIndex = 8;
		((Control)comboBox2).Text = "Title";
		comboBox2.SelectedIndexChanged += new EventHandler(comboBox2_SelectedIndexChanged);
		((Control)buttonBGColor).Location = new Point(57, 24);
		((Control)buttonBGColor).Name = "buttonBGColor";
		((Control)buttonBGColor).Size = new Size(75, 23);
		((Control)buttonBGColor).TabIndex = 6;
		((Control)buttonBGColor).Text = "Color";
		((ButtonBase)buttonBGColor).UseVisualStyleBackColor = true;
		((Control)buttonBGColor).Click += new EventHandler(button14_Click);
		((Control)button16).Location = new Point(57, 82);
		((Control)button16).Name = "button16";
		((Control)button16).Size = new Size(75, 23);
		((Control)button16).TabIndex = 7;
		((Control)button16).Text = "image";
		((ButtonBase)button16).UseVisualStyleBackColor = true;
		((Control)button16).Click += new EventHandler(button16_Click_1);
		((Control)tabPage1).Controls.Add((Control)(object)checkBox1);
		((Control)tabPage1).Controls.Add((Control)(object)comboBox1);
		((Control)tabPage1).Controls.Add((Control)(object)button1);
		((Control)tabPage1).Controls.Add((Control)(object)button3);
		tabPage1.Location = new Point(4, 44);
		((Control)tabPage1).Name = "tabPage1";
		((Control)tabPage1).Padding = new Padding(3);
		((Control)tabPage1).Size = new Size(190, 145);
		tabPage1.TabIndex = 0;
		((Control)tabPage1).Text = "GroupBox";
		tabPage1.UseVisualStyleBackColor = true;
		((Control)checkBox1).AutoSize = true;
		((Control)checkBox1).Location = new Point(57, 57);
		((Control)checkBox1).Name = "checkBox1";
		((Control)checkBox1).Size = new Size(88, 19);
		((Control)checkBox1).TabIndex = 5;
		((Control)checkBox1).Text = "Transparent";
		((ButtonBase)checkBox1).UseVisualStyleBackColor = true;
		checkBox1.CheckedChanged += new EventHandler(checkBox1_CheckedChanged);
		((ListControl)comboBox1).FormattingEnabled = true;
		comboBox1.Items.AddRange(new object[5] { "Tile", "Center", "Stretch", "Zoom", "None" });
		((Control)comboBox1).Location = new Point(57, 111);
		((Control)comboBox1).Name = "comboBox1";
		((Control)comboBox1).Size = new Size(75, 23);
		((Control)comboBox1).TabIndex = 4;
		((Control)comboBox1).Text = "Title";
		comboBox1.SelectedIndexChanged += new EventHandler(comboBox1_SelectedIndexChanged);
		((Control)tabPage2).Controls.Add((Control)(object)checkBox2);
		((Control)tabPage2).Controls.Add((Control)(object)button6);
		((Control)tabPage2).Controls.Add((Control)(object)button5);
		((Control)tabPage2).Controls.Add((Control)(object)button4);
		tabPage2.Location = new Point(4, 44);
		((Control)tabPage2).Name = "tabPage2";
		((Control)tabPage2).Padding = new Padding(3);
		((Control)tabPage2).Size = new Size(190, 145);
		tabPage2.TabIndex = 1;
		((Control)tabPage2).Text = "Label";
		tabPage2.UseVisualStyleBackColor = true;
		((Control)checkBox2).AutoSize = true;
		((Control)checkBox2).Location = new Point(51, 50);
		((Control)checkBox2).Name = "checkBox2";
		((Control)checkBox2).Size = new Size(88, 19);
		((Control)checkBox2).TabIndex = 7;
		((Control)checkBox2).Text = "Transparent";
		((ButtonBase)checkBox2).UseVisualStyleBackColor = true;
		checkBox2.CheckedChanged += new EventHandler(checkBox2_CheckedChanged);
		((Control)button6).Location = new Point(51, 115);
		((Control)button6).Name = "button6";
		((Control)button6).Size = new Size(85, 23);
		((Control)button6).TabIndex = 6;
		((Control)button6).Text = "Text Font";
		((ButtonBase)button6).UseVisualStyleBackColor = true;
		((Control)button6).Click += new EventHandler(button6_Click);
		((Control)button5).Location = new Point(51, 80);
		((Control)button5).Name = "button5";
		((Control)button5).Size = new Size(85, 23);
		((Control)button5).TabIndex = 6;
		((Control)button5).Text = "Text Color";
		((ButtonBase)button5).UseVisualStyleBackColor = true;
		((Control)button5).Click += new EventHandler(button5_Click);
		((Control)button4).Location = new Point(51, 15);
		((Control)button4).Name = "button4";
		((Control)button4).Size = new Size(85, 23);
		((Control)button4).TabIndex = 6;
		((Control)button4).Text = "Background";
		((ButtonBase)button4).UseVisualStyleBackColor = true;
		((Control)button4).Click += new EventHandler(button4_Click_1);
		((Control)tabPage3).Controls.Add((Control)(object)checkBox3);
		((Control)tabPage3).Controls.Add((Control)(object)button7);
		((Control)tabPage3).Controls.Add((Control)(object)button8);
		((Control)tabPage3).Controls.Add((Control)(object)button9);
		tabPage3.Location = new Point(4, 44);
		((Control)tabPage3).Name = "tabPage3";
		((Control)tabPage3).Size = new Size(190, 145);
		tabPage3.TabIndex = 2;
		((Control)tabPage3).Text = "Button";
		tabPage3.UseVisualStyleBackColor = true;
		((Control)checkBox3).AutoSize = true;
		((Control)checkBox3).Location = new Point(51, 50);
		((Control)checkBox3).Name = "checkBox3";
		((Control)checkBox3).Size = new Size(88, 19);
		((Control)checkBox3).TabIndex = 11;
		((Control)checkBox3).Text = "Transparent";
		((ButtonBase)checkBox3).UseVisualStyleBackColor = true;
		checkBox3.CheckedChanged += new EventHandler(checkBox3_CheckedChanged);
		((Control)button7).Location = new Point(51, 115);
		((Control)button7).Name = "button7";
		((Control)button7).Size = new Size(85, 23);
		((Control)button7).TabIndex = 8;
		((Control)button7).Text = "Text Font";
		((ButtonBase)button7).UseVisualStyleBackColor = true;
		((Control)button7).Click += new EventHandler(button7_Click);
		((Control)button8).Location = new Point(51, 80);
		((Control)button8).Name = "button8";
		((Control)button8).Size = new Size(85, 23);
		((Control)button8).TabIndex = 9;
		((Control)button8).Text = "Text Color";
		((ButtonBase)button8).UseVisualStyleBackColor = true;
		((Control)button8).Click += new EventHandler(button8_Click);
		((Control)button9).Location = new Point(51, 15);
		((Control)button9).Name = "button9";
		((Control)button9).Size = new Size(85, 23);
		((Control)button9).TabIndex = 10;
		((Control)button9).Text = "Background";
		((ButtonBase)button9).UseVisualStyleBackColor = true;
		((Control)button9).Click += new EventHandler(button9_Click);
		((Control)tabPage4).Controls.Add((Control)(object)checkBox4);
		((Control)tabPage4).Controls.Add((Control)(object)button10);
		((Control)tabPage4).Controls.Add((Control)(object)button11);
		((Control)tabPage4).Controls.Add((Control)(object)button12);
		tabPage4.Location = new Point(4, 44);
		((Control)tabPage4).Name = "tabPage4";
		((Control)tabPage4).Size = new Size(190, 145);
		tabPage4.TabIndex = 3;
		((Control)tabPage4).Text = "TextBox";
		tabPage4.UseVisualStyleBackColor = true;
		((Control)checkBox4).AutoSize = true;
		((Control)checkBox4).Location = new Point(51, 50);
		((Control)checkBox4).Name = "checkBox4";
		((Control)checkBox4).Size = new Size(77, 19);
		((Control)checkBox4).TabIndex = 15;
		((Control)checkBox4).Text = "ReadOnly";
		((ButtonBase)checkBox4).UseVisualStyleBackColor = true;
		checkBox4.CheckedChanged += new EventHandler(checkBox4_CheckedChanged);
		((Control)button10).Location = new Point(51, 115);
		((Control)button10).Name = "button10";
		((Control)button10).Size = new Size(85, 23);
		((Control)button10).TabIndex = 12;
		((Control)button10).Text = "Text Font";
		((ButtonBase)button10).UseVisualStyleBackColor = true;
		((Control)button10).Click += new EventHandler(button10_Click);
		((Control)button11).Location = new Point(51, 80);
		((Control)button11).Name = "button11";
		((Control)button11).Size = new Size(85, 23);
		((Control)button11).TabIndex = 13;
		((Control)button11).Text = "Text Color";
		((ButtonBase)button11).UseVisualStyleBackColor = true;
		((Control)button11).Click += new EventHandler(button11_Click);
		((Control)button12).Location = new Point(51, 15);
		((Control)button12).Name = "button12";
		((Control)button12).Size = new Size(85, 23);
		((Control)button12).TabIndex = 14;
		((Control)button12).Text = "Background";
		((ButtonBase)button12).UseVisualStyleBackColor = true;
		((Control)button12).Click += new EventHandler(button12_Click);
		((Control)tabPage5).Controls.Add((Control)(object)buttonTextSelect);
		((Control)tabPage5).Controls.Add((Control)(object)buttonTextColor);
		((Control)tabPage5).Controls.Add((Control)(object)buttonBackSelect);
		((Control)tabPage5).Controls.Add((Control)(object)buttonBackColor);
		((Control)tabPage5).Controls.Add((Control)(object)button13);
		((Control)tabPage5).Controls.Add((Control)(object)button15);
		tabPage5.Location = new Point(4, 44);
		((Control)tabPage5).Name = "tabPage5";
		((Control)tabPage5).Size = new Size(190, 145);
		tabPage5.TabIndex = 4;
		((Control)tabPage5).Text = "Table";
		tabPage5.UseVisualStyleBackColor = true;
		((Control)buttonTextSelect).Location = new Point(101, 99);
		((Control)buttonTextSelect).Name = "buttonTextSelect";
		((Control)buttonTextSelect).Size = new Size(75, 23);
		((Control)buttonTextSelect).TabIndex = 20;
		((Control)buttonTextSelect).Text = "Text Select";
		((ButtonBase)buttonTextSelect).UseVisualStyleBackColor = true;
		((Control)buttonTextSelect).Click += new EventHandler(button19_Click);
		((Control)buttonTextColor).Location = new Point(101, 70);
		((Control)buttonTextColor).Name = "buttonTextColor";
		((Control)buttonTextColor).Size = new Size(75, 23);
		((Control)buttonTextColor).TabIndex = 20;
		((Control)buttonTextColor).Text = "TextColor";
		((ButtonBase)buttonTextColor).UseVisualStyleBackColor = true;
		((Control)buttonTextColor).Click += new EventHandler(button18_Click);
		((Control)buttonBackSelect).Location = new Point(10, 99);
		((Control)buttonBackSelect).Name = "buttonBackSelect";
		((Control)buttonBackSelect).Size = new Size(75, 23);
		((Control)buttonBackSelect).TabIndex = 20;
		((Control)buttonBackSelect).Text = "BackSelect";
		((ButtonBase)buttonBackSelect).UseVisualStyleBackColor = true;
		((Control)buttonBackSelect).Click += new EventHandler(button17_Click);
		((Control)buttonBackColor).Location = new Point(10, 70);
		((Control)buttonBackColor).Name = "buttonBackColor";
		((Control)buttonBackColor).Size = new Size(75, 23);
		((Control)buttonBackColor).TabIndex = 20;
		((Control)buttonBackColor).Text = "BackColor";
		((ButtonBase)buttonBackColor).UseVisualStyleBackColor = true;
		((Control)buttonBackColor).Click += new EventHandler(button16_Click);
		((Control)button13).Location = new Point(10, 41);
		((Control)button13).Name = "button13";
		((Control)button13).Size = new Size(75, 23);
		((Control)button13).TabIndex = 16;
		((Control)button13).Text = "Text Font";
		((ButtonBase)button13).UseVisualStyleBackColor = true;
		((Control)button13).Click += new EventHandler(button13_Click);
		((Control)button15).Location = new Point(50, 12);
		((Control)button15).Name = "button15";
		((Control)button15).Size = new Size(85, 23);
		((Control)button15).TabIndex = 18;
		((Control)button15).Text = "Background";
		((ButtonBase)button15).UseVisualStyleBackColor = true;
		((Control)button15).Click += new EventHandler(button15_Click);
		((Control)groupBox3).Controls.Add((Control)(object)groupBox2);
		((Control)groupBox3).Location = new Point(212, 36);
		((Control)groupBox3).Name = "groupBox3";
		((Control)groupBox3).Size = new Size(410, 163);
		((Control)groupBox3).TabIndex = 20;
		groupBox3.TabStop = false;
		((Control)checkBoxStartWin).AutoSize = true;
		((Control)checkBoxStartWin).Location = new Point(6, 15);
		((Control)checkBoxStartWin).Name = "checkBoxStartWin";
		((Control)checkBoxStartWin).Size = new Size(161, 19);
		((Control)checkBoxStartWin).TabIndex = 21;
		((Control)checkBoxStartWin).Text = "Khởi Động Cùng Window";
		((ButtonBase)checkBoxStartWin).UseVisualStyleBackColor = true;
		((Control)tabControl2).Controls.Add((Control)(object)tabPage7);
		((Control)tabControl2).Controls.Add((Control)(object)tabPage8);
		((Control)tabControl2).Controls.Add((Control)(object)tabPage11);
		((Control)tabControl2).Controls.Add((Control)(object)tabPage9);
		((Control)tabControl2).Controls.Add((Control)(object)tabPage12);
		((Control)tabControl2).Controls.Add((Control)(object)tabPage10);
		((Control)tabControl2).Dock = (DockStyle)5;
		((Control)tabControl2).Location = new Point(0, 0);
		((Control)tabControl2).Name = "tabControl2";
		tabControl2.SelectedIndex = 0;
		((Control)tabControl2).Size = new Size(644, 231);
		((Control)tabControl2).TabIndex = 22;
		tabControl2.Selected += new TabControlEventHandler(tabControl2_Selected);
		((Control)tabPage7).Controls.Add((Control)(object)label6);
		((Control)tabPage7).Controls.Add((Control)(object)button19);
		((Control)tabPage7).Controls.Add((Control)(object)button18);
		((Control)tabPage7).Controls.Add((Control)(object)button14);
		((Control)tabPage7).Controls.Add((Control)(object)button17);
		((Control)tabPage7).Controls.Add((Control)(object)comboBox3);
		((Control)tabPage7).Controls.Add((Control)(object)tabControl1);
		((Control)tabPage7).Controls.Add((Control)(object)groupBox3);
		tabPage7.Location = new Point(4, 24);
		((Control)tabPage7).Name = "tabPage7";
		((Control)tabPage7).Padding = new Padding(3);
		((Control)tabPage7).Size = new Size(636, 203);
		tabPage7.TabIndex = 0;
		((Control)tabPage7).Text = "Chủ Đề";
		tabPage7.UseVisualStyleBackColor = true;
		((Control)label6).AutoSize = true;
		((Control)label6).Location = new Point(212, 6);
		((Control)label6).Name = "label6";
		((Control)label6).Size = new Size(47, 15);
		((Control)label6).TabIndex = 22;
		((Control)label6).Text = "Theme:";
		((Control)button19).BackColor = Color.Transparent;
		((Control)button19).Location = new Point(556, 2);
		((Control)button19).Name = "button19";
		((Control)button19).Size = new Size(59, 23);
		((Control)button19).TabIndex = 1;
		((Control)button19).Text = "Rescan";
		((ButtonBase)button19).UseVisualStyleBackColor = false;
		((Control)button19).Click += new EventHandler(button19_Click_1);
		((Control)button18).BackColor = Color.Transparent;
		((Control)button18).Location = new Point(491, 2);
		((Control)button18).Name = "button18";
		((Control)button18).Size = new Size(59, 23);
		((Control)button18).TabIndex = 1;
		((Control)button18).Text = "Delete";
		((ButtonBase)button18).UseVisualStyleBackColor = false;
		((Control)button18).Click += new EventHandler(button18_Click_1);
		((Control)button14).BackColor = Color.Transparent;
		((Control)button14).Location = new Point(428, 2);
		((Control)button14).Name = "button14";
		((Control)button14).Size = new Size(59, 23);
		((Control)button14).TabIndex = 1;
		((Control)button14).Text = "Save";
		((ButtonBase)button14).UseVisualStyleBackColor = false;
		((Control)button14).Click += new EventHandler(button14_Click_1);
		((Control)button17).BackColor = Color.Transparent;
		((Control)button17).Location = new Point(363, 2);
		((Control)button17).Name = "button17";
		((Control)button17).Size = new Size(59, 23);
		((Control)button17).TabIndex = 1;
		((Control)button17).Text = "Applie";
		((ButtonBase)button17).UseVisualStyleBackColor = false;
		((Control)button17).Click += new EventHandler(button17_Click_1);
		((ListControl)comboBox3).FormattingEnabled = true;
		((Control)comboBox3).Location = new Point(264, 3);
		((Control)comboBox3).Name = "comboBox3";
		((Control)comboBox3).Size = new Size(93, 23);
		((Control)comboBox3).TabIndex = 21;
		((Control)tabPage8).Controls.Add((Control)(object)textBoxNameAdmin);
		((Control)tabPage8).Controls.Add((Control)(object)tabControl3);
		((Control)tabPage8).Controls.Add((Control)(object)checkBoxDate);
		((Control)tabPage8).Controls.Add((Control)(object)button22);
		((Control)tabPage8).Controls.Add((Control)(object)label2);
		((Control)tabPage8).Controls.Add((Control)(object)dateTimePickerDatetime);
		((Control)tabPage8).Controls.Add((Control)(object)label10);
		((Control)tabPage8).Controls.Add((Control)(object)textBoxUrlApp);
		((Control)tabPage8).Controls.Add((Control)(object)textBoxNameTool);
		((Control)tabPage8).Controls.Add((Control)(object)label9);
		((Control)tabPage8).Controls.Add((Control)(object)label5);
		tabPage8.Location = new Point(4, 24);
		((Control)tabPage8).Name = "tabPage8";
		((Control)tabPage8).Padding = new Padding(3);
		((Control)tabPage8).Size = new Size(636, 203);
		tabPage8.TabIndex = 1;
		((Control)tabPage8).Text = "Thiết Lập";
		tabPage8.UseVisualStyleBackColor = true;
		((Control)textBoxNameAdmin).Location = new Point(107, 27);
		((Control)textBoxNameAdmin).Name = "textBoxNameAdmin";
		((Control)textBoxNameAdmin).Size = new Size(161, 23);
		((Control)textBoxNameAdmin).TabIndex = 22;
		((Control)textBoxNameAdmin).Text = "admin";
		((Control)tabControl3).Controls.Add((Control)(object)tabPage13);
		((Control)tabControl3).Controls.Add((Control)(object)tabPage14);
		((Control)tabControl3).Location = new Point(282, 6);
		((Control)tabControl3).Name = "tabControl3";
		tabControl3.SelectedIndex = 0;
		((Control)tabControl3).Size = new Size(342, 189);
		((Control)tabControl3).TabIndex = 32;
		((ScrollableControl)tabPage13).AutoScroll = true;
		((Control)tabPage13).Controls.Add((Control)(object)checkBoxStartWin);
		((Control)tabPage13).Controls.Add((Control)(object)checkBox11);
		((Control)tabPage13).Controls.Add((Control)(object)checkBox5);
		((Control)tabPage13).Controls.Add((Control)(object)checkBox9);
		((Control)tabPage13).Controls.Add((Control)(object)label11);
		((Control)tabPage13).Controls.Add((Control)(object)checkBox12);
		((Control)tabPage13).Controls.Add((Control)(object)checkBox10);
		((Control)tabPage13).Controls.Add((Control)(object)label16);
		tabPage13.Location = new Point(4, 24);
		((Control)tabPage13).Name = "tabPage13";
		((Control)tabPage13).Padding = new Padding(3);
		((Control)tabPage13).Size = new Size(334, 161);
		tabPage13.TabIndex = 1;
		((Control)tabPage13).Text = "Tiện Ích Windows";
		tabPage13.UseVisualStyleBackColor = true;
		((Control)checkBox11).AutoSize = true;
		((Control)checkBox11).Location = new Point(6, 40);
		((Control)checkBox11).Name = "checkBox11";
		((Control)checkBox11).Size = new Size(191, 19);
		((Control)checkBox11).TabIndex = 29;
		((Control)checkBox11).Text = "Chạy AutoLog Sau Khi Mở Tool";
		((ButtonBase)checkBox11).UseVisualStyleBackColor = true;
		((Control)checkBox5).AutoSize = true;
		((Control)checkBox5).Location = new Point(6, 65);
		((Control)checkBox5).Name = "checkBox5";
		((Control)checkBox5).Size = new Size(71, 19);
		((Control)checkBox5).TabIndex = 21;
		((Control)checkBox5).Text = "Free Size";
		((ButtonBase)checkBox5).UseVisualStyleBackColor = true;
		((Control)checkBox9).AutoSize = true;
		((Control)checkBox9).Location = new Point(6, 90);
		((Control)checkBox9).Name = "checkBox9";
		((Control)checkBox9).Size = new Size(101, 19);
		((Control)checkBox9).TabIndex = 21;
		((Control)checkBox9).Text = "FocusWindow";
		((ButtonBase)checkBox9).UseVisualStyleBackColor = true;
		((Control)label11).AutoSize = true;
		((Control)label11).Font = new Font("Segoe UI", 8f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label11).ForeColor = Color.Red;
		((Control)label11).Location = new Point(103, 92);
		((Control)label11).Name = "label11";
		((Control)label11).Size = new Size(180, 13);
		((Control)label11).TabIndex = 23;
		((Control)label11).Text = "*Làm nổi cửa sổ khi chạy AutoLog";
		((Control)checkBox12).AutoSize = true;
		((Control)checkBox12).Location = new Point(6, 140);
		((Control)checkBox12).Name = "checkBox12";
		((Control)checkBox12).Size = new Size(93, 19);
		((Control)checkBox12).TabIndex = 21;
		((Control)checkBox12).Text = "New Process";
		((ButtonBase)checkBox12).UseVisualStyleBackColor = true;
		((Control)checkBox10).AutoSize = true;
		((Control)checkBox10).Location = new Point(6, 115);
		((Control)checkBox10).Name = "checkBox10";
		((Control)checkBox10).Size = new Size(182, 19);
		((Control)checkBox10).TabIndex = 21;
		((Control)checkBox10).Text = "Thông Báo Hoàn Thành Daily";
		((ButtonBase)checkBox10).UseVisualStyleBackColor = true;
		((Control)label16).AutoSize = true;
		((Control)label16).Font = new Font("Segoe UI", 8f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label16).ForeColor = Color.Red;
		((Control)label16).Location = new Point(183, 117);
		((Control)label16).Name = "label16";
		((Control)label16).Size = new Size(46, 13);
		((Control)label16).TabIndex = 23;
		((Control)label16).Text = "*Popup";
		((ScrollableControl)tabPage14).AutoScroll = true;
		((Control)tabPage14).Controls.Add((Control)(object)checkBox18);
		((Control)tabPage14).Controls.Add((Control)(object)label30);
		((Control)tabPage14).Controls.Add((Control)(object)label17);
		((Control)tabPage14).Controls.Add((Control)(object)checkBox17);
		((Control)tabPage14).Controls.Add((Control)(object)label22);
		((Control)tabPage14).Controls.Add((Control)(object)label7);
		((Control)tabPage14).Controls.Add((Control)(object)label20);
		((Control)tabPage14).Controls.Add((Control)(object)label19);
		((Control)tabPage14).Controls.Add((Control)(object)label26);
		((Control)tabPage14).Controls.Add((Control)(object)label8);
		((Control)tabPage14).Controls.Add((Control)(object)checkBox15);
		((Control)tabPage14).Controls.Add((Control)(object)label29);
		((Control)tabPage14).Controls.Add((Control)(object)checkBox14);
		((Control)tabPage14).Controls.Add((Control)(object)numericUpDown3);
		((Control)tabPage14).Controls.Add((Control)(object)label25);
		((Control)tabPage14).Controls.Add((Control)(object)label21);
		((Control)tabPage14).Controls.Add((Control)(object)checkBoxNS2);
		((Control)tabPage14).Controls.Add((Control)(object)numericUpDown8);
		((Control)tabPage14).Controls.Add((Control)(object)label24);
		((Control)tabPage14).Controls.Add((Control)(object)numericUpDown2);
		((Control)tabPage14).Controls.Add((Control)(object)textBox3);
		((Control)tabPage14).Controls.Add((Control)(object)label18);
		((Control)tabPage14).Controls.Add((Control)(object)label4);
		((Control)tabPage14).Controls.Add((Control)(object)label28);
		((Control)tabPage14).Controls.Add((Control)(object)numericUpDown1);
		((Control)tabPage14).Controls.Add((Control)(object)checkBox13);
		((Control)tabPage14).Controls.Add((Control)(object)label23);
		((Control)tabPage14).Controls.Add((Control)(object)checkBoxNS1);
		((Control)tabPage14).Controls.Add((Control)(object)numericUpDown4);
		((Control)tabPage14).Controls.Add((Control)(object)checkBox7);
		((Control)tabPage14).Controls.Add((Control)(object)numericUpDown5);
		((Control)tabPage14).Controls.Add((Control)(object)numericUpDown6);
		tabPage14.Location = new Point(4, 24);
		((Control)tabPage14).Name = "tabPage14";
		((Control)tabPage14).Size = new Size(334, 161);
		tabPage14.TabIndex = 2;
		((Control)tabPage14).Text = "Tiện Ích Game";
		tabPage14.UseVisualStyleBackColor = true;
		((Control)checkBox18).AutoSize = true;
		((Control)checkBox18).Location = new Point(202, 273);
		((Control)checkBox18).Name = "checkBox18";
		((Control)checkBox18).Size = new Size(67, 19);
		((Control)checkBox18).TabIndex = 31;
		((Control)checkBox18).Text = "Bă\u0301t Đâ\u0300u";
		((ButtonBase)checkBox18).UseVisualStyleBackColor = true;
		checkBox18.CheckedChanged += new EventHandler(checkBox18_CheckedChanged);
		((Control)label30).AutoSize = true;
		((Control)label30).Location = new Point(3, 194);
		((Control)label30).Name = "label30";
		((Control)label30).Size = new Size(65, 15);
		((Control)label30).TabIndex = 23;
		((Control)label30).Text = "Delay Click";
		((Control)label17).AutoSize = true;
		((Control)label17).Location = new Point(33, 125);
		((Control)label17).Name = "label17";
		((Control)label17).Size = new Size(53, 15);
		((Control)label17).TabIndex = 23;
		((Control)label17).Text = "AutoLog";
		((Control)checkBox17).AutoSize = true;
		((Control)checkBox17).Location = new Point(86, 273);
		((Control)checkBox17).Name = "checkBox17";
		((Control)checkBox17).Size = new Size(73, 19);
		((Control)checkBox17).TabIndex = 30;
		((Control)checkBox17).Text = "Bă\u0301t Buô\u0323c";
		((ButtonBase)checkBox17).UseVisualStyleBackColor = true;
		checkBox17.CheckedChanged += new EventHandler(checkBox17_CheckedChanged);
		((Control)label22).AutoSize = true;
		((Control)label22).Location = new Point(15, 80);
		((Control)label22).Name = "label22";
		((Control)label22).Size = new Size(73, 15);
		((Control)label22).TabIndex = 23;
		((Control)label22).Text = "Delay Đa\u0301 Pet";
		((Control)label7).AutoSize = true;
		((Control)label7).Location = new Point(27, 154);
		((Control)label7).Name = "label7";
		((Control)label7).Size = new Size(60, 15);
		((Control)label7).TabIndex = 23;
		((Control)label7).Text = "Delay Tele";
		((Control)label20).AutoSize = true;
		((Control)label20).Location = new Point(27, 255);
		((Control)label20).Name = "label20";
		((Control)label20).Size = new Size(165, 15);
		((Control)label20).TabIndex = 29;
		((Control)label20).Text = "Tu\u0300y Cho\u0323n LogAcc - AutoLog :";
		((Control)label19).AutoSize = true;
		((Control)label19).Location = new Point(15, 40);
		((Control)label19).Name = "label19";
		((Control)label19).Size = new Size(117, 15);
		((Control)label19).TabIndex = 28;
		((Control)label19).Text = "Kiê\u0309u Đa\u0301 Pet Ưu Tiên :";
		((Control)label26).AutoSize = true;
		((Control)label26).Location = new Point(118, 324);
		((Control)label26).Name = "label26";
		((Control)label26).Size = new Size(37, 15);
		((Control)label26).TabIndex = 23;
		((Control)label26).Text = "StepY";
		((Control)label8).AutoSize = true;
		((Control)label8).Location = new Point(15, 15);
		((Control)label8).Name = "label8";
		((Control)label8).Size = new Size(82, 15);
		((Control)label8).TabIndex = 28;
		((Control)label8).Text = "Kiểu Tên Flash";
		((Control)checkBox15).AutoSize = true;
		((Control)checkBox15).Location = new Point(129, 58);
		((Control)checkBox15).Name = "checkBox15";
		((Control)checkBox15).Size = new Size(73, 19);
		((Control)checkBox15).TabIndex = 1;
		((Control)checkBox15).Text = "Dươ\u0301i Lên";
		((ButtonBase)checkBox15).UseVisualStyleBackColor = true;
		checkBox15.CheckedChanged += new EventHandler(checkBox15_CheckedChanged);
		((Control)label29).AutoSize = true;
		((Control)label29).Font = new Font("Segoe UI", 8f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label29).ForeColor = Color.Red;
		((Control)label29).Location = new Point(141, 191);
		((Control)label29).Name = "label29";
		((Control)label29).Size = new Size(161, 52);
		((Control)label29).TabIndex = 23;
		((Control)label29).Text = "*Thêm hệ số delay\r\ntrong trường hợp click nhanh\r\ngame chưa kịp phản hồi\r\n(tính bằng mili giây)";
		((Control)checkBox14).AutoSize = true;
		((Control)checkBox14).Location = new Point(37, 58);
		((Control)checkBox14).Name = "checkBox14";
		((Control)checkBox14).Size = new Size(87, 19);
		((Control)checkBox14).TabIndex = 1;
		((Control)checkBox14).Text = "Trên Xuô\u0301ng";
		((ButtonBase)checkBox14).UseVisualStyleBackColor = true;
		checkBox14.CheckedChanged += new EventHandler(checkBox14_CheckedChanged);
		((Control)numericUpDown3).Location = new Point(92, 78);
		numericUpDown3.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDown3).Name = "numericUpDown3";
		((Control)numericUpDown3).Size = new Size(51, 23);
		((Control)numericUpDown3).TabIndex = 26;
		((Control)label25).AutoSize = true;
		((Control)label25).Location = new Point(31, 324);
		((Control)label25).Name = "label25";
		((Control)label25).Size = new Size(37, 15);
		((Control)label25).TabIndex = 23;
		((Control)label25).Text = "StepX";
		((Control)label21).AutoSize = true;
		((Control)label21).Font = new Font("Segoe UI", 8f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label21).ForeColor = Color.Red;
		((Control)label21).Location = new Point(149, 78);
		((Control)label21).Name = "label21";
		((Control)label21).Size = new Size(158, 39);
		((Control)label21).TabIndex = 23;
		((Control)label21).Text = "*Delay thêm thơ\u0300i gian đa\u0301 pet \r\n  ngoa\u0300i 10 phu\u0301t mă\u0323c đi\u0323nh\r\n  (ti\u0301nh bă\u0300ng giây)";
		((Control)numericUpDown8).Location = new Point(74, 191);
		numericUpDown8.Maximum = new decimal(new int[4] { 999999, 0, 0, 0 });
		((Control)numericUpDown8).Name = "numericUpDown8";
		((Control)numericUpDown8).Size = new Size(61, 23);
		((Control)numericUpDown8).TabIndex = 26;
		((Control)label24).AutoSize = true;
		((Control)label24).Location = new Point(203, 324);
		((Control)label24).Name = "label24";
		((Control)label24).Size = new Size(63, 15);
		((Control)label24).TabIndex = 23;
		((Control)label24).Text = "Delay (ms)";
		((Control)numericUpDown2).Location = new Point(92, 123);
		numericUpDown2.Minimum = new decimal(new int[4] { 1, 0, 0, 0 });
		((Control)numericUpDown2).Name = "numericUpDown2";
		((Control)numericUpDown2).Size = new Size(51, 23);
		((Control)numericUpDown2).TabIndex = 26;
		numericUpDown2.Value = new decimal(new int[4] { 1, 0, 0, 0 });
		((Control)textBox3).Location = new Point(72, 386);
		((Control)textBox3).Name = "textBox3";
		((Control)textBox3).Size = new Size(230, 23);
		((Control)textBox3).TabIndex = 22;
		((Control)textBox3).Text = "???";
		((Control)label18).AutoSize = true;
		((Control)label18).Font = new Font("Segoe UI", 8f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label18).ForeColor = Color.Red;
		((Control)label18).Location = new Point(149, 125);
		((Control)label18).Name = "label18";
		((Control)label18).Size = new Size(164, 13);
		((Control)label18).TabIndex = 23;
		((Control)label18).Text = "*Sô\u0301 Acc cha\u0323y autoLog cu\u0300ng lu\u0301c";
		((Control)label4).AutoSize = true;
		((Control)label4).Font = new Font("Segoe UI", 8f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label4).ForeColor = Color.Red;
		((Control)label4).Location = new Point(149, 152);
		((Control)label4).Name = "label4";
		((Control)label4).Size = new Size(145, 26);
		((Control)label4).TabIndex = 23;
		((Control)label4).Text = "*Tăng lên nếu Tele Map lỗi \r\n   không tới vị trí chỉ định";
		((Control)label28).AutoSize = true;
		((Control)label28).Location = new Point(27, 389);
		((Control)label28).Name = "label28";
		((Control)label28).Size = new Size(39, 15);
		((Control)label28).TabIndex = 23;
		((Control)label28).Text = "Server";
		((Control)numericUpDown1).Location = new Point(92, 152);
		((Control)numericUpDown1).Name = "numericUpDown1";
		((Control)numericUpDown1).Size = new Size(51, 23);
		((Control)numericUpDown1).TabIndex = 26;
		((Control)checkBox13).AutoSize = true;
		((Control)checkBox13).Location = new Point(208, 58);
		((Control)checkBox13).Name = "checkBox13";
		((Control)checkBox13).Size = new Size(71, 19);
		((Control)checkBox13).TabIndex = 1;
		((Control)checkBox13).Text = "Random";
		((ButtonBase)checkBox13).UseVisualStyleBackColor = true;
		checkBox13.CheckedChanged += new EventHandler(checkBox13_CheckedChanged);
		((Control)label23).AutoSize = true;
		((Control)label23).Location = new Point(31, 295);
		((Control)label23).Name = "label23";
		((Control)label23).Size = new Size(175, 15);
		((Control)label23).TabIndex = 28;
		((Control)label23).Text = "Thiê\u0301t Lâ\u0323p Ke\u0301o Tha\u0309 (AutoSetup) :";
		((Control)numericUpDown4).Location = new Point(272, 322);
		numericUpDown4.Maximum = new decimal(new int[4] { 99999, 0, 0, 0 });
		numericUpDown4.Minimum = new decimal(new int[4] { 1, 0, 0, 0 });
		((Control)numericUpDown4).Name = "numericUpDown4";
		((Control)numericUpDown4).Size = new Size(38, 23);
		((Control)numericUpDown4).TabIndex = 26;
		numericUpDown4.Value = new decimal(new int[4] { 1, 0, 0, 0 });
		((Control)checkBox7).AutoSize = true;
		((Control)checkBox7).Location = new Point(31, 361);
		((Control)checkBox7).Name = "checkBox7";
		((Control)checkBox7).Size = new Size(270, 19);
		((Control)checkBox7).TabIndex = 27;
		((Control)checkBox7).Text = "Chat Kênh Bang Khi Kẹt / Hoàn Thành Q Bang";
		((ButtonBase)checkBox7).UseVisualStyleBackColor = true;
		((Control)numericUpDown5).Location = new Point(159, 322);
		numericUpDown5.Minimum = new decimal(new int[4] { 1, 0, 0, 0 });
		((Control)numericUpDown5).Name = "numericUpDown5";
		((Control)numericUpDown5).Size = new Size(38, 23);
		((Control)numericUpDown5).TabIndex = 26;
		numericUpDown5.Value = new decimal(new int[4] { 1, 0, 0, 0 });
		((Control)numericUpDown6).Location = new Point(74, 322);
		numericUpDown6.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDown6).Name = "numericUpDown6";
		((Control)numericUpDown6).Size = new Size(38, 23);
		((Control)numericUpDown6).TabIndex = 26;
		((Control)checkBoxDate).AutoSize = true;
		((Control)checkBoxDate).Location = new Point(21, 58);
		((Control)checkBoxDate).Name = "checkBoxDate";
		((Control)checkBoxDate).Size = new Size(80, 19);
		((Control)checkBoxDate).TabIndex = 21;
		((Control)checkBoxDate).Text = "Ngày Sinh";
		((ButtonBase)checkBoxDate).UseVisualStyleBackColor = true;
		((Control)button22).Location = new Point(211, 150);
		((Control)button22).Name = "button22";
		((Control)button22).Size = new Size(57, 23);
		((Control)button22).TabIndex = 31;
		((Control)button22).Text = "Chọn";
		((ButtonBase)button22).UseVisualStyleBackColor = true;
		((Control)button22).Click += new EventHandler(button22_Click);
		((Control)label2).AutoSize = true;
		((Control)label2).Location = new Point(8, 30);
		((Control)label2).Name = "label2";
		((Control)label2).Size = new Size(94, 15);
		((Control)label2).TabIndex = 23;
		((Control)label2).Text = "Tên Người Dùng";
		dateTimePickerDatetime.Format = (DateTimePickerFormat)2;
		((Control)dateTimePickerDatetime).Location = new Point(107, 56);
		((Control)dateTimePickerDatetime).Name = "dateTimePickerDatetime";
		((Control)dateTimePickerDatetime).Size = new Size(161, 23);
		((Control)dateTimePickerDatetime).TabIndex = 24;
		dateTimePickerDatetime.Value = new System.DateTime(2023, 4, 20, 16, 52, 33, 0);
		((Control)label10).AutoSize = true;
		((Control)label10).Font = new Font("Segoe UI", 8f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label10).ForeColor = Color.Red;
		((Control)label10).Location = new Point(6, 176);
		((Control)label10).Name = "label10";
		((Control)label10).Size = new Size(265, 13);
		((Control)label10).TabIndex = 23;
		((Control)label10).Text = "*Chạy App đã liên kết bằng nút \"App\" trong Login";
		((Control)textBoxUrlApp).Location = new Point(8, 150);
		((Control)textBoxUrlApp).Name = "textBoxUrlApp";
		((Control)textBoxUrlApp).Size = new Size(193, 23);
		((Control)textBoxUrlApp).TabIndex = 30;
		((Control)textBoxNameTool).Location = new Point(107, 85);
		((Control)textBoxNameTool).Name = "textBoxNameTool";
		((Control)textBoxNameTool).Size = new Size(161, 23);
		((Control)textBoxNameTool).TabIndex = 22;
		((Control)label9).AutoSize = true;
		((Control)label9).Location = new Point(8, 132);
		((Control)label9).Name = "label9";
		((Control)label9).Size = new Size(49, 15);
		((Control)label9).TabIndex = 23;
		((Control)label9).Text = "Liên Kết";
		((Control)label5).AutoSize = true;
		((Control)label5).Location = new Point(26, 88);
		((Control)label5).Name = "label5";
		((Control)label5).Size = new Size(77, 15);
		((Control)label5).TabIndex = 23;
		((Control)label5).Text = "Tên Cho Tool";
		((Control)tabPage11).Controls.Add((Control)(object)checkBox16);
		((Control)tabPage11).Controls.Add((Control)(object)progressBar1);
		((Control)tabPage11).Controls.Add((Control)(object)label14);
		((Control)tabPage11).Controls.Add((Control)(object)label13);
		((Control)tabPage11).Controls.Add((Control)(object)button21);
		((Control)tabPage11).Controls.Add((Control)(object)textBox2);
		((Control)tabPage11).Controls.Add((Control)(object)button20);
		tabPage11.Location = new Point(4, 24);
		((Control)tabPage11).Name = "tabPage11";
		((Control)tabPage11).Size = new Size(636, 203);
		tabPage11.TabIndex = 4;
		((Control)tabPage11).Text = "Sao Chép Data";
		tabPage11.UseVisualStyleBackColor = true;
		((Control)checkBox16).AutoSize = true;
		((Control)checkBox16).Location = new Point(8, 62);
		((Control)checkBox16).Name = "checkBox16";
		((Control)checkBox16).Size = new Size(106, 19);
		((Control)checkBox16).TabIndex = 30;
		((Control)checkBox16).Text = "Copy file Setup";
		((ButtonBase)checkBox16).UseVisualStyleBackColor = true;
		((Control)progressBar1).Location = new Point(8, 143);
		((Control)progressBar1).Name = "progressBar1";
		((Control)progressBar1).Size = new Size(415, 13);
		((Control)progressBar1).TabIndex = 29;
		((Control)progressBar1).Visible = false;
		((Control)label14).AutoSize = true;
		((Control)label14).Font = new Font("Segoe UI", 10f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label14).Location = new Point(8, 159);
		((Control)label14).Name = "label14";
		((Control)label14).Size = new Size(28, 19);
		((Control)label14).TabIndex = 28;
		((Control)label14).Text = "0%";
		((Control)label14).Visible = false;
		((Control)label13).AutoSize = true;
		((Control)label13).Font = new Font("Segoe UI", 10f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label13).Location = new Point(8, 9);
		((Control)label13).Name = "label13";
		((Control)label13).Size = new Size(528, 38);
		((Control)label13).TabIndex = 28;
		((Control)label13).Text = "*Chọn đường dẫn tới thư mục Tool từ phiên bản cũ ( Full hoặc Beta ) va\u0300 cho\u0323n file .exe\r\n*Nên mơ\u0309 kiê\u0309m tra ca\u0301c ba\u0309n lưu đê\u0309 tra\u0301nh pha\u0301t sinh lô\u0303i";
		((Control)button21).Location = new Point(285, 99);
		((Control)button21).Name = "button21";
		((Control)button21).Size = new Size(57, 23);
		((Control)button21).TabIndex = 27;
		((Control)button21).Text = "Chọn";
		((ButtonBase)button21).UseVisualStyleBackColor = true;
		((Control)button21).Click += new EventHandler(button21_Click);
		((Control)textBox2).Location = new Point(8, 99);
		((Control)textBox2).Name = "textBox2";
		((Control)textBox2).Size = new Size(271, 23);
		((Control)textBox2).TabIndex = 26;
		((Control)button20).Location = new Point(348, 98);
		((Control)button20).Name = "button20";
		((Control)button20).Size = new Size(75, 23);
		((Control)button20).TabIndex = 21;
		((Control)button20).Text = "Copy";
		((ButtonBase)button20).UseVisualStyleBackColor = true;
		((Control)button20).Click += new EventHandler(button20_Click_1);
		((Control)tabPage9).Controls.Add((Control)(object)dataGridView2);
		((Control)tabPage9).Controls.Add((Control)(object)checkBox8);
		((Control)tabPage9).Controls.Add((Control)(object)label12);
		tabPage9.Location = new Point(4, 24);
		((Control)tabPage9).Name = "tabPage9";
		((Control)tabPage9).Padding = new Padding(3);
		((Control)tabPage9).Size = new Size(636, 203);
		tabPage9.TabIndex = 2;
		((Control)tabPage9).Text = "Nhắc Nhở";
		tabPage9.UseVisualStyleBackColor = true;
		val4.Alignment = (DataGridViewContentAlignment)16;
		val4.BackColor = SystemColors.Control;
		val4.Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		val4.ForeColor = SystemColors.WindowText;
		val4.SelectionBackColor = SystemColors.Highlight;
		val4.SelectionForeColor = SystemColors.HighlightText;
		val4.WrapMode = (DataGridViewTriState)1;
		dataGridView2.ColumnHeadersDefaultCellStyle = val4;
		dataGridView2.ColumnHeadersHeightSizeMode = (DataGridViewColumnHeadersHeightSizeMode)2;
		dataGridView2.Columns.AddRange((DataGridViewColumn[])(object)new DataGridViewColumn[3]
		{
			(DataGridViewColumn)Column2,
			(DataGridViewColumn)Column3,
			(DataGridViewColumn)Column4
		});
		val5.Alignment = (DataGridViewContentAlignment)16;
		val5.BackColor = SystemColors.Window;
		val5.Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		val5.ForeColor = SystemColors.ControlText;
		val5.SelectionBackColor = SystemColors.Highlight;
		val5.SelectionForeColor = SystemColors.HighlightText;
		val5.WrapMode = (DataGridViewTriState)2;
		dataGridView2.DefaultCellStyle = val5;
		((Control)dataGridView2).Location = new Point(265, 7);
		((Control)dataGridView2).Name = "dataGridView2";
		dataGridView2.RowTemplate.Height = 25;
		((Control)dataGridView2).Size = new Size(359, 190);
		((Control)dataGridView2).TabIndex = 5;
		((DataGridViewColumn)Column2).FillWeight = 40f;
		((DataGridViewColumn)Column2).HeaderText = "Giờ";
		((DataGridViewColumn)Column2).Name = "Column2";
		((DataGridViewColumn)Column2).Width = 40;
		((DataGridViewColumn)Column3).FillWeight = 40f;
		((DataGridViewColumn)Column3).HeaderText = "Phút";
		((DataGridViewColumn)Column3).Name = "Column3";
		((DataGridViewColumn)Column3).Width = 40;
		((DataGridViewColumn)Column4).FillWeight = 230f;
		((DataGridViewColumn)Column4).HeaderText = "Memos";
		((DataGridViewColumn)Column4).Name = "Column4";
		((DataGridViewColumn)Column4).Width = 230;
		((Control)checkBox8).AutoSize = true;
		((Control)checkBox8).Location = new Point(23, 18);
		((Control)checkBox8).Name = "checkBox8";
		((Control)checkBox8).Size = new Size(155, 19);
		((Control)checkBox8).TabIndex = 4;
		((Control)checkBox8).Text = "Thông Báo Cho Ghi Chú";
		((ButtonBase)checkBox8).UseVisualStyleBackColor = true;
		((Control)label12).AutoSize = true;
		((Control)label12).Font = new Font("Segoe UI", 8f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label12).Location = new Point(23, 59);
		((Control)label12).Name = "label12";
		((Control)label12).Size = new Size(224, 65);
		((Control)label12).TabIndex = 2;
		((Control)label12).Text = "- Mỗi Ghi Chú Sẽ Nhắc Nhở 2 Lần.\r\n- Lần 1 Trước 20 Phút, Lần 2 Trước 5 Phút.\r\n- Mỗi Ghi Chú Được Thể Hiện Trên 1 Hàng.\r\n- Sai Định Dạng Sẽ Không Thông Báo.\r\n- Ghi Chú Sử Dụng Giờ Hiện Tại Trên Máy.";
		((Control)tabPage12).Controls.Add((Control)(object)label27);
		((Control)tabPage12).Controls.Add((Control)(object)numericUpDown7);
		((Control)tabPage12).Controls.Add((Control)(object)checkBox21);
		((Control)tabPage12).Controls.Add((Control)(object)checkBox20);
		((Control)tabPage12).Controls.Add((Control)(object)checkBox19);
		((Control)tabPage12).Controls.Add((Control)(object)checkBox6);
		((Control)tabPage12).Controls.Add((Control)(object)label3);
		tabPage12.Location = new Point(4, 24);
		((Control)tabPage12).Name = "tabPage12";
		((Control)tabPage12).Padding = new Padding(3);
		((Control)tabPage12).Size = new Size(636, 203);
		tabPage12.TabIndex = 5;
		((Control)tabPage12).Text = "Debug - Lưu Khung Tra\u0323ng Tha\u0301i";
		tabPage12.UseVisualStyleBackColor = true;
		((Control)label27).AutoSize = true;
		((Control)label27).Location = new Point(268, 108);
		((Control)label27).Name = "label27";
		((Control)label27).Size = new Size(35, 15);
		((Control)label27).TabIndex = 28;
		((Control)label27).Text = "Nga\u0300y";
		((Control)numericUpDown7).Location = new Point(222, 106);
		numericUpDown7.Maximum = new decimal(new int[4] { 9999, 0, 0, 0 });
		((Control)numericUpDown7).Name = "numericUpDown7";
		((Control)numericUpDown7).Size = new Size(40, 23);
		((Control)numericUpDown7).TabIndex = 27;
		numericUpDown7.Value = new decimal(new int[4] { 30, 0, 0, 0 });
		((Control)checkBox21).AutoSize = true;
		((Control)checkBox21).Location = new Point(8, 82);
		((Control)checkBox21).Name = "checkBox21";
		((Control)checkBox21).Size = new Size(521, 19);
		((Control)checkBox21).TabIndex = 26;
		((Control)checkBox21).Text = "Lưu tha\u0300nh ca\u0301c file riêng cho mô\u0303i lâ\u0300n cha\u0323y, ca\u0301c file đươ\u0323c gô\u0323p chung va\u0300o 1 Folder lưu theo nga\u0300y";
		((ButtonBase)checkBox21).UseVisualStyleBackColor = true;
		checkBox21.CheckedChanged += new EventHandler(checkBox21_CheckedChanged);
		((Control)checkBox20).AutoSize = true;
		((Control)checkBox20).Location = new Point(8, 57);
		((Control)checkBox20).Name = "checkBox20";
		((Control)checkBox20).Size = new Size(253, 19);
		((Control)checkBox20).TabIndex = 26;
		((Control)checkBox20).Text = "Chi\u0309 Lưu 1 File Debug (daily.txt va\u0300 truma.txt)";
		((ButtonBase)checkBox20).UseVisualStyleBackColor = true;
		checkBox20.CheckedChanged += new EventHandler(checkBox20_CheckedChanged);
		((Control)checkBox19).AutoSize = true;
		((Control)checkBox19).Location = new Point(23, 107);
		((Control)checkBox19).Name = "checkBox19";
		((Control)checkBox19).Size = new Size(194, 19);
		((Control)checkBox19).TabIndex = 26;
		((Control)checkBox19).Text = "Tư\u0323 Đô\u0323ng Xo\u0301a Folder Debug Sau ";
		((ButtonBase)checkBox19).UseVisualStyleBackColor = true;
		((Control)checkBox6).AutoSize = true;
		((Control)checkBox6).Location = new Point(8, 6);
		((Control)checkBox6).Name = "checkBox6";
		((Control)checkBox6).Size = new Size(151, 19);
		((Control)checkBox6).TabIndex = 24;
		((Control)checkBox6).Text = "Lưu Trạng Thái - Debug";
		((ButtonBase)checkBox6).UseVisualStyleBackColor = true;
		((Control)label3).AutoSize = true;
		((Control)label3).Font = new Font("Segoe UI", 8f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label3).ForeColor = Color.Red;
		((Control)label3).Location = new Point(35, 28);
		((Control)label3).Name = "label3";
		((Control)label3).Size = new Size(206, 26);
		((Control)label3).TabIndex = 25;
		((Control)label3).Text = "*Lưu thông tin trong khung trạng thái\r\n*Chỉ áp dụng cho Daily và Trừ Ma";
		((Control)tabPage10).Controls.Add((Control)(object)pictureBox1);
		((Control)tabPage10).Controls.Add((Control)(object)label15);
		((Control)tabPage10).Controls.Add((Control)(object)textBox5);
		((Control)tabPage10).Controls.Add((Control)(object)linkLabel5);
		((Control)tabPage10).Controls.Add((Control)(object)linkLabel4);
		((Control)tabPage10).Controls.Add((Control)(object)linkLabel3);
		((Control)tabPage10).Controls.Add((Control)(object)linkLabel2);
		((Control)tabPage10).Controls.Add((Control)(object)linkLabel6);
		((Control)tabPage10).Controls.Add((Control)(object)linkLabel1);
		tabPage10.Location = new Point(4, 24);
		((Control)tabPage10).Name = "tabPage10";
		((Control)tabPage10).Padding = new Padding(3);
		((Control)tabPage10).Size = new Size(636, 203);
		tabPage10.TabIndex = 3;
		((Control)tabPage10).Text = "Giới Thiệu";
		tabPage10.UseVisualStyleBackColor = true;
		((Control)tabPage10).Click += new EventHandler(tabPage10_Click);
		pictureBox1.BorderStyle = (BorderStyle)2;
		((Control)pictureBox1).Cursor = Cursors.Hand;
		((Control)pictureBox1).Location = new Point(315, 258);
		((Control)pictureBox1).Name = "pictureBox1";
		((Control)pictureBox1).Size = new Size(155, 100);
		pictureBox1.SizeMode = (PictureBoxSizeMode)1;
		pictureBox1.TabIndex = 3;
		pictureBox1.TabStop = false;
		((Control)pictureBox1).Click += new EventHandler(pictureBox1_Click);
		((Control)label15).AutoSize = true;
		((Control)label15).BackColor = Color.Gold;
		((Control)label15).Font = new Font("Segoe UI", 8f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label15).Location = new Point(8, 62);
		((Control)label15).Name = "label15";
		((Control)label15).Size = new Size(180, 78);
		((Control)label15).TabIndex = 2;
		((Control)label15).Text = "Video demo và hướng dẫn được\r\nquay từ phiên bản cũ.\r\nCác phiên bản mới sau này đã\r\nđược cập nhật tự động setup.\r\nNgười dùng nên xem qua để nắm\r\nđược và tránh một số lỗi nhỏ.";
		((TextBoxBase)textBox5).BorderStyle = (BorderStyle)1;
		((Control)textBox5).Font = new Font("Segoe UI", 10f, (FontStyle)0, (GraphicsUnit)3);
		((Control)textBox5).Location = new Point(194, 3);
		((TextBoxBase)textBox5).Multiline = true;
		((Control)textBox5).Name = "textBox5";
		((TextBoxBase)textBox5).ReadOnly = true;
		((Control)textBox5).Size = new Size(421, 166);
		((Control)textBox5).TabIndex = 1;
		((Control)textBox5).Text = ((ResourceManager)val6).GetString("textBox5.Text");
		((Control)linkLabel5).AutoSize = true;
		linkLabel5.LinkArea = new LinkArea(10, 15);
		((Control)linkLabel5).Location = new Point(8, 147);
		((Control)linkLabel5).Name = "linkLabel5";
		((Control)linkLabel5).Size = new Size(168, 37);
		((Control)linkLabel5).TabIndex = 0;
		linkLabel5.TabStop = true;
		((Control)linkLabel5).Text = "Facebook: Nguyễn Anh Minh\r\nZalo: 0394808271";
		linkLabel5.UseCompatibleTextRendering = true;
		linkLabel5.LinkClicked += new LinkLabelLinkClickedEventHandler(linkLabel5_LinkClicked);
		((Control)linkLabel4).AutoSize = true;
		((Control)linkLabel4).Location = new Point(708, 65);
		((Control)linkLabel4).Name = "linkLabel4";
		((Control)linkLabel4).Size = new Size(176, 15);
		((Control)linkLabel4).TabIndex = 0;
		linkLabel4.TabStop = true;
		((Control)linkLabel4).Text = "Giới Thiệu Các Chức Năng Khác";
		linkLabel4.LinkClicked += new LinkLabelLinkClickedEventHandler(linkLabel4_LinkClicked);
		((Control)linkLabel3).AutoSize = true;
		((Control)linkLabel3).Location = new Point(8, 17);
		((Control)linkLabel3).Name = "linkLabel3";
		((Control)linkLabel3).Size = new Size(128, 15);
		((Control)linkLabel3).TabIndex = 0;
		linkLabel3.TabStop = true;
		((Control)linkLabel3).Text = "Giới Thiệu Các Module";
		linkLabel3.LinkClicked += new LinkLabelLinkClickedEventHandler(linkLabel3_LinkClicked);
		((Control)linkLabel2).AutoSize = true;
		((Control)linkLabel2).Location = new Point(700, 94);
		((Control)linkLabel2).Name = "linkLabel2";
		((Control)linkLabel2).Size = new Size(179, 15);
		((Control)linkLabel2).TabIndex = 0;
		linkLabel2.TabStop = true;
		((Control)linkLabel2).Text = "Thay Đổi So Với Phiên Bản Trước";
		((Control)linkLabel2).Visible = false;
		linkLabel2.LinkClicked += new LinkLabelLinkClickedEventHandler(linkLabel2_LinkClicked);
		((Control)linkLabel6).AutoSize = true;
		((Control)linkLabel6).Location = new Point(6, 184);
		((Control)linkLabel6).Name = "linkLabel6";
		((Control)linkLabel6).Size = new Size(575, 15);
		((Control)linkLabel6).TabIndex = 0;
		linkLabel6.TabStop = true;
		((Control)linkLabel6).Text = "XXXXXXXXX+XXXXXXXXX+XXXXXXXXX+XXXXXXXXX+XXXXXXXXX+XXXXXXXXX+XXXXXXXXX+XXXXXXXXX+";
		linkLabel6.LinkClicked += new LinkLabelLinkClickedEventHandler(linkLabel6_LinkClicked);
		((Control)linkLabel1).AutoSize = true;
		((Control)linkLabel1).Location = new Point(8, 47);
		((Control)linkLabel1).Name = "linkLabel1";
		((Control)linkLabel1).Size = new Size(151, 15);
		((Control)linkLabel1).TabIndex = 0;
		linkLabel1.TabStop = true;
		((Control)linkLabel1).Text = "Video Demo và Hướng Dẫn";
		linkLabel1.LinkClicked += new LinkLabelLinkClickedEventHandler(linkLabel1_LinkClicked);
		timer1.Interval = 1000;
		timer1.Tick += new EventHandler(timer1_Tick);
		((ContainerControl)this).AutoScaleDimensions = new SizeF(7f, 15f);
		((ContainerControl)this).AutoScaleMode = (AutoScaleMode)1;
		((Control)this).BackColor = SystemColors.Control;
		((Form)this).ClientSize = new Size(644, 231);
		((Control)this).Controls.Add((Control)(object)tabControl2);
		((Form)this).FormBorderStyle = (FormBorderStyle)1;
		((Form)this).Icon = (Icon)((ResourceManager)val6).GetObject("$this.Icon");
		((Form)this).MaximizeBox = false;
		((Control)this).Name = "CaiDat";
		((Form)this).StartPosition = (FormStartPosition)1;
		((Control)this).Text = "660, 270 - 342, 189";
		((Form)this).FormClosing += new FormClosingEventHandler(CaiDat_FormClosing);
		((Form)this).FormClosed += new FormClosedEventHandler(CaiDat_FormClosed);
		((Form)this).Load += new EventHandler(CaiDat_Load);
		((Control)groupBox2).ResumeLayout(false);
		((Control)groupBox2).PerformLayout();
		((ISupportInitialize)dataGridView1).EndInit();
		((Control)tabControl1).ResumeLayout(false);
		((Control)tabPage6).ResumeLayout(false);
		((Control)tabPage1).ResumeLayout(false);
		((Control)tabPage1).PerformLayout();
		((Control)tabPage2).ResumeLayout(false);
		((Control)tabPage2).PerformLayout();
		((Control)tabPage3).ResumeLayout(false);
		((Control)tabPage3).PerformLayout();
		((Control)tabPage4).ResumeLayout(false);
		((Control)tabPage4).PerformLayout();
		((Control)tabPage5).ResumeLayout(false);
		((Control)groupBox3).ResumeLayout(false);
		((Control)tabControl2).ResumeLayout(false);
		((Control)tabPage7).ResumeLayout(false);
		((Control)tabPage7).PerformLayout();
		((Control)tabPage8).ResumeLayout(false);
		((Control)tabPage8).PerformLayout();
		((Control)tabControl3).ResumeLayout(false);
		((Control)tabPage13).ResumeLayout(false);
		((Control)tabPage13).PerformLayout();
		((Control)tabPage14).ResumeLayout(false);
		((Control)tabPage14).PerformLayout();
		((ISupportInitialize)numericUpDown3).EndInit();
		((ISupportInitialize)numericUpDown8).EndInit();
		((ISupportInitialize)numericUpDown2).EndInit();
		((ISupportInitialize)numericUpDown1).EndInit();
		((ISupportInitialize)numericUpDown4).EndInit();
		((ISupportInitialize)numericUpDown5).EndInit();
		((ISupportInitialize)numericUpDown6).EndInit();
		((Control)tabPage11).ResumeLayout(false);
		((Control)tabPage11).PerformLayout();
		((Control)tabPage9).ResumeLayout(false);
		((Control)tabPage9).PerformLayout();
		((ISupportInitialize)dataGridView2).EndInit();
		((Control)tabPage12).ResumeLayout(false);
		((Control)tabPage12).PerformLayout();
		((ISupportInitialize)numericUpDown7).EndInit();
		((Control)tabPage10).ResumeLayout(false);
		((Control)tabPage10).PerformLayout();
		((ISupportInitialize)pictureBox1).EndInit();
		((Control)this).ResumeLayout(false);
	}
}
