using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Resources;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using AutoTool.Properties;
using KAutoHelper;

namespace AutoTool;

public class DoVuiCoThuong : Form
{
	public static string linkApp = Application.StartupPath;

	public string pathData = linkApp + "DVCT";

	private string[] dapan = new string[4] { "A", "B", "C", "D" };

	private System.IntPtr hWnd = System.IntPtr.Zero;

	private uint[] offset_FPS;

	private uint myPointer;

	public uint processID;

	public Bitmap AvatarNV;

	public int vitriA_X;

	public int vitriA_Y;

	public int vitriB_X;

	public int vitriB_Y;

	public int vitriC_X;

	public int vitriC_Y;

	public int vitriD_X;

	public int vitriD_Y;

	public int vitriS_X;

	public int vitriS_Y;

	public int TieuDe;

	private IContainer components;

	private TextBox textBox1;

	private TextBox textBox2;

	private Label label1;

	private Label label3;

	private GroupBox groupBox1;

	private Button buttonReset;

	private NumericUpDown numericUpDownFPS;

	private PictureBox pictureBox1;

	private Label label6;

	private Label label7;

	private ComboBox comboBox1;

	private Button button1;

	private Button buttonA;

	private Button buttonB;

	private Button buttonC;

	private Button buttonD;

	private Button button6;

	private Button button7;

	private Button button8;

	private Button button9;

	private Label label8;

	private Label label9;

	private Button button2;

	private Button button3;

	private Button button4;

	private Label label2;

	private Label label4;

	public DoVuiCoThuong()
	{
		uint[] array = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_FPS = array;
		myPointer = 11180660u;
		vitriA_X = 0;
		vitriA_Y = 0;
		vitriB_X = 0;
		vitriB_Y = 0;
		vitriC_X = 0;
		vitriC_Y = 0;
		vitriD_X = 0;
		vitriD_Y = 0;
		vitriS_X = 0;
		vitriS_Y = 0;
		TieuDe = 30;
		components = null;
		((Form)this)._002Ector();
		InitializeComponent();
	}

	[DllImport("user32.dll", CharSet = (CharSet)4)]
	private static extern bool DestroyIcon(System.IntPtr handle);

	[DllImport("user32.dll")]
	public static extern System.IntPtr SetWindowPos(System.IntPtr hWnd, int hWndInsertAfter, int x, int y, int cx, int cy, int wFlags);

	[DllImport("kernel32.dll", SetLastError = true)]
	public static extern bool WriteProcessMemory(System.IntPtr hProcess, System.IntPtr lpBaseAddress, byte[] lpBuffer, int nSize, out System.IntPtr lpNumberOfBytesWritten);

	[DllImport("kernel32.dll")]
	private static extern bool ReadProcessMemory(System.IntPtr hProcess, System.IntPtr lpBaseAddress, byte[] lpBuffer, System.UIntPtr nSize, uint lpNumberOfBytesWritten);

	[DllImport("user32.dll", SetLastError = true)]
	private static extern uint GetWindowThreadProcessId(System.IntPtr hWnd, out uint processId);

	[DllImport("user32.dll", CharSet = (CharSet)4, SetLastError = true)]
	private static extern System.IntPtr FindWindow(string lpClassName, string lpWindowName);

	public static System.IntPtr FindWindowHandle(string className, string windowName)
	{
		System.IntPtr zero = System.IntPtr.Zero;
		return FindWindow(className, windowName);
	}

	[DllImport("user32.dll", CharSet = (CharSet)3)]
	[return: MarshalAs((UnmanagedType)2)]
	public static extern bool PostMessage(System.IntPtr hWnd, int msg, System.IntPtr wParam, System.IntPtr lParam);

	public static bool WriteDouble(System.IntPtr Handle, uint pointer, uint[] offset, double value)
	{
		byte[] bytes = BitConverter.GetBytes(value);
		uint num = pointer;
		System.IntPtr lpNumberOfBytesWritten = System.IntPtr.Zero;
		foreach (uint num2 in offset)
		{
			num = (uint)ReadPointer(Handle, (System.IntPtr)(long)num) + num2;
		}
		return WriteProcessMemory(Handle, (System.IntPtr)(long)num, bytes, bytes.Length, out lpNumberOfBytesWritten);
	}

	public static int ReadPointer(System.IntPtr Handle, System.IntPtr pointer)
	{
		byte[] array = new byte[24];
		ReadProcessMemory(Handle, pointer, array, (System.UIntPtr)4uL, 0u);
		return BitConverter.ToInt32(array, 0);
	}

	public static double ReadDouble(System.IntPtr Handle, uint pointer, uint[] offset)
	{
		byte[] array = new byte[24];
		uint num = pointer;
		foreach (uint num2 in offset)
		{
			num = (uint)ReadPointer(Handle, (System.IntPtr)(long)num) + num2;
		}
		if (ReadProcessMemory(Handle, (System.IntPtr)(long)num, array, (System.UIntPtr)8uL, 0u))
		{
			return BitConverter.ToDouble(array, 0);
		}
		return 0.0;
	}

	public double ReadMemoryData(uint pID, uint pointer, uint[] offset)
	{
		System.IntPtr handle = MemoryHelper.OpenProcess(pID, (ProcessAccessFlags)2035711);
		Process processById = Process.GetProcessById((int)pID);
		long num = processById.MainModule.BaseAddress.ToInt64() + pointer;
		return ReadDouble(handle, (uint)num, offset);
	}

	public bool WriteMemoryData(uint pID, uint pointer, uint[] offset, double value)
	{
		System.IntPtr handle = MemoryHelper.OpenProcess(pID, (ProcessAccessFlags)2035711);
		Process processById = Process.GetProcessById((int)pID);
		long num = processById.MainModule.BaseAddress.ToInt64() + pointer;
		return WriteDouble(handle, (uint)num, offset, value);
	}

	[DllImport("user32.dll")]
	public static extern System.IntPtr SendMessage(System.IntPtr hWnd, int Msg, System.IntPtr wParam, System.IntPtr lParam);

	public void SendKeyBoardDown(System.IntPtr handle, VKeys key)
	{
		//IL_001b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0021: Expected I4, but got Unknown
		PostMessage(handle, 6, new System.IntPtr(1), new System.IntPtr(0));
		PostMessage(handle, 256, new System.IntPtr((int)key), new System.IntPtr(0));
	}

	public void SendKeyBoardUp(System.IntPtr handle, VKeys key)
	{
		//IL_001b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0021: Expected I4, but got Unknown
		PostMessage(handle, 6, new System.IntPtr(1), new System.IntPtr(0));
		PostMessage(handle, 257, new System.IntPtr((int)key), new System.IntPtr(0));
	}

	public void SendKeyBoardPress(System.IntPtr handle, VKeys key)
	{
		//IL_001b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0021: Expected I4, but got Unknown
		//IL_0033: Unknown result type (might be due to invalid IL or missing references)
		//IL_0039: Expected I4, but got Unknown
		PostMessage(handle, 6, new System.IntPtr(1), new System.IntPtr(0));
		PostMessage(handle, 256, new System.IntPtr((int)key), new System.IntPtr(1));
		PostMessage(handle, 257, new System.IntPtr((int)key), new System.IntPtr(0));
	}

	public void SendClickUpOnPosition(System.IntPtr controlHandle, int x, int y, EMouseKey mouseButton = (EMouseKey)0, int clickTimes = 1)
	{
		//IL_0003: Unknown result type (might be due to invalid IL or missing references)
		//IL_0006: Invalid comparison between Unknown and I4
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		//IL_0017: Invalid comparison between Unknown and I4
		int msg = 0;
		if ((int)mouseButton == 0)
		{
			msg = 514;
		}
		if ((int)mouseButton == 1)
		{
			msg = 517;
		}
		System.IntPtr lParam = MakeLParamFromXY(x, y);
		for (int i = 0; i < clickTimes; i++)
		{
			PostMessage(controlHandle, 6, new System.IntPtr(1), lParam);
			SendMessage(controlHandle, msg, new System.IntPtr(0), lParam);
		}
	}

	public void SendClickDownOnPosition(System.IntPtr controlHandle, int x, int y, EMouseKey mouseButton = (EMouseKey)0, int clickTimes = 1)
	{
		//IL_0003: Unknown result type (might be due to invalid IL or missing references)
		//IL_0006: Invalid comparison between Unknown and I4
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		//IL_0017: Invalid comparison between Unknown and I4
		int msg = 0;
		if ((int)mouseButton == 0)
		{
			msg = 513;
		}
		if ((int)mouseButton == 1)
		{
			msg = 516;
		}
		System.IntPtr lParam = MakeLParamFromXY(x, y);
		for (int i = 0; i < clickTimes; i++)
		{
			PostMessage(controlHandle, 6, new System.IntPtr(1), lParam);
			PostMessage(controlHandle, msg, new System.IntPtr(1), lParam);
		}
	}

	public void SendClickOnPosition(System.IntPtr controlHandle, int x, int y, EMouseKey mouseButton = (EMouseKey)0, int clickTimes = 1)
	{
		//IL_0005: Unknown result type (might be due to invalid IL or missing references)
		//IL_0008: Invalid comparison between Unknown and I4
		//IL_001c: Unknown result type (might be due to invalid IL or missing references)
		//IL_001f: Invalid comparison between Unknown and I4
		//IL_003e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0042: Unknown result type (might be due to invalid IL or missing references)
		//IL_0045: Invalid comparison between Unknown and I4
		int msg = 0;
		int msg2 = 0;
		if ((int)mouseButton == 0)
		{
			msg = 513;
			msg2 = 514;
		}
		if ((int)mouseButton == 1)
		{
			msg = 516;
			msg2 = 517;
		}
		System.IntPtr lParam = MakeLParamFromXY(x, y);
		if ((int)mouseButton == 0 || (int)mouseButton == 1)
		{
			for (int i = 0; i < clickTimes; i++)
			{
				PostMessage(controlHandle, 6, new System.IntPtr(1), lParam);
				PostMessage(controlHandle, msg, new System.IntPtr(1), lParam);
				PostMessage(controlHandle, msg2, new System.IntPtr(1), lParam);
			}
		}
	}

	public System.IntPtr MakeLParamFromXY(int x, int y)
	{
		return (System.IntPtr)((y - TieuDe << 16) | x);
	}

	private void TimKiem()
	{
		((Control)textBox2).Text = "";
		string[] array = File.ReadAllLines(pathData + "/CauHoi.txt");
		string[] array2 = File.ReadAllLines(pathData + "/TraLoi.txt");
		for (int i = 0; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array); i++)
		{
			if (array[i].StartsWith(((Control)textBox1).Text, (StringComparison)1))
			{
				TextBox val = textBox2;
				((Control)val).Text = string.Concat(new string[5]
				{
					((Control)val).Text,
					array[i],
					"=> ",
					array2[i],
					"\r\n"
				});
				if (((Control)textBox1).Text.Length <= 1)
				{
					((Control)textBox2).Text = "";
					break;
				}
			}
		}
	}

	private void TimKiem2()
	{
		//IL_005f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0065: Expected O, but got Unknown
		int num = 0;
		((Control)textBox2).Text = "";
		string[] array = File.ReadAllLines(pathData + "/CauHoi.txt");
		string[] array2 = File.ReadAllLines(pathData + "/TraLoi.txt");
		Regex val = new Regex("(?:" + ((Control)textBox1).Text.ToUpper() + ")");
		for (int i = 0; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array); i++)
		{
			Match val2 = val.Match(array[i].ToUpper());
			if (((Group)val2).Success)
			{
				TextBox val3 = textBox2;
				((Control)val3).Text = string.Concat(new string[5]
				{
					((Control)val3).Text,
					array[i],
					"=> ",
					array2[i],
					"\r\n"
				});
				if (((Control)textBox1).Text.Length <= 1)
				{
					((Control)textBox2).Text = "";
					break;
				}
				num++;
				if (num > 5)
				{
					break;
				}
			}
		}
		if (num > 5)
		{
			((Control)label2).Text = "Tìm Thấy Nhiều Hơn 5 Kết Quả";
		}
		else
		{
			((Control)label2).Text = "Tìm Thấy " + num + " Kết Quả";
		}
	}

	private void delay_100ms(int x)
	{
		//IL_0028: Unknown result type (might be due to invalid IL or missing references)
		double num = 0.0;
		for (x += Program.AppMain.delay_System; num < (double)x; num += 1.0)
		{
			Thread.Sleep(TimeSpan.FromSeconds(0.1));
		}
	}

	private void DoVuiCoThuong_Load(object sender, EventArgs e)
	{
		//IL_0027: Unknown result type (might be due to invalid IL or missing references)
		//IL_035f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0370: Unknown result type (might be due to invalid IL or missing references)
		//IL_0381: Unknown result type (might be due to invalid IL or missing references)
		//IL_0392: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a3: Unknown result type (might be due to invalid IL or missing references)
		//IL_01bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_019c: Unknown result type (might be due to invalid IL or missing references)
		//IL_020f: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_025f: Unknown result type (might be due to invalid IL or missing references)
		//IL_023c: Unknown result type (might be due to invalid IL or missing references)
		//IL_02af: Unknown result type (might be due to invalid IL or missing references)
		//IL_028c: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ff: Unknown result type (might be due to invalid IL or missing references)
		//IL_02dc: Unknown result type (might be due to invalid IL or missing references)
		((Control)this).Text = "[BMx v" + Program.AppMain.version + "] Đố Vui Có Thưởng";
		((Form)this).Size = new Size(835, 373);
		if (Settings.Default.freeSize)
		{
			((Form)this).FormBorderStyle = (FormBorderStyle)4;
		}
		else
		{
			((Form)this).FormBorderStyle = (FormBorderStyle)1;
		}
		((Form)this).KeyPreview = true;
		Process[] processesByName = Process.GetProcessesByName("FlashGame");
		if (Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)processesByName) > 0)
		{
			Process[] array = processesByName;
			foreach (Process val in array)
			{
				comboBox1.Items.Add((object)val.MainWindowTitle);
			}
		}
		if (!File.Exists(pathData + "/data.txt"))
		{
			return;
		}
		try
		{
			string[] array2 = File.ReadAllLines(pathData + "/data.txt");
			vitriA_X = int.Parse(array2[0]);
			vitriA_Y = int.Parse(array2[1]);
			vitriB_X = int.Parse(array2[2]);
			vitriB_Y = int.Parse(array2[3]);
			vitriC_X = int.Parse(array2[4]);
			vitriC_Y = int.Parse(array2[5]);
			vitriD_X = int.Parse(array2[6]);
			vitriD_Y = int.Parse(array2[7]);
			vitriS_X = int.Parse(array2[8]);
			vitriS_Y = int.Parse(array2[9]);
			if (vitriA_X != 0 && vitriA_Y != 0)
			{
				((Control)button6).BackColor = Color.Green;
			}
			else
			{
				vitriA_X = 0;
				vitriA_Y = 0;
				((Control)button6).BackColor = Color.Red;
			}
			if (vitriB_X != 0 && vitriB_Y != 0)
			{
				((Control)button7).BackColor = Color.Green;
			}
			else
			{
				vitriB_X = 0;
				vitriB_Y = 0;
				((Control)button7).BackColor = Color.Red;
			}
			if (vitriC_X != 0 && vitriC_Y != 0)
			{
				((Control)button8).BackColor = Color.Green;
			}
			else
			{
				vitriC_X = 0;
				vitriC_Y = 0;
				((Control)button8).BackColor = Color.Red;
			}
			if (vitriD_X != 0 && vitriD_Y != 0)
			{
				((Control)button9).BackColor = Color.Green;
			}
			else
			{
				vitriD_X = 0;
				vitriD_Y = 0;
				((Control)button9).BackColor = Color.Red;
			}
			if (vitriS_X != 0 && vitriS_Y != 0)
			{
				((Control)button4).BackColor = Color.Green;
				return;
			}
			vitriS_X = 0;
			vitriS_Y = 0;
			((Control)button4).BackColor = Color.Red;
		}
		catch (System.Exception)
		{
			vitriA_X = 0;
			vitriA_Y = 0;
			vitriB_X = 0;
			vitriB_Y = 0;
			vitriC_X = 0;
			vitriC_Y = 0;
			vitriD_X = 0;
			vitriD_Y = 0;
			vitriS_X = 0;
			vitriS_Y = 0;
			((Control)button6).BackColor = Color.Red;
			((Control)button7).BackColor = Color.Red;
			((Control)button8).BackColor = Color.Red;
			((Control)button9).BackColor = Color.Red;
			((Control)button4).BackColor = Color.Red;
		}
	}

	private void textBox1_TextChanged(object sender, EventArgs e)
	{
		//IL_0062: Unknown result type (might be due to invalid IL or missing references)
		//IL_006c: Expected O, but got Unknown
		if (((Control)textBox1).Text.Length <= 1)
		{
			((Control)textBox2).Text = "";
		}
		else if (((Control)textBox1).Text[((Control)textBox1).Text.Length - 1] == ' ')
		{
			System.Threading.Tasks.Task task = new System.Threading.Tasks.Task((Action)([CompilerGenerated] () =>
			{
				TimKiem2();
			}));
			task.Start();
		}
	}

	private void textBox2_TextChanged(object sender, EventArgs e)
	{
		//IL_001d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0023: Expected O, but got Unknown
		//IL_0028: Unknown result type (might be due to invalid IL or missing references)
		//IL_002e: Expected O, but got Unknown
		//IL_01fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_020c: Unknown result type (might be due to invalid IL or missing references)
		//IL_021d: Unknown result type (might be due to invalid IL or missing references)
		//IL_022e: Unknown result type (might be due to invalid IL or missing references)
		//IL_008d: Unknown result type (might be due to invalid IL or missing references)
		//IL_009e: Unknown result type (might be due to invalid IL or missing references)
		//IL_00af: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_010c: Unknown result type (might be due to invalid IL or missing references)
		//IL_011d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0147: Unknown result type (might be due to invalid IL or missing references)
		//IL_0158: Unknown result type (might be due to invalid IL or missing references)
		//IL_0169: Unknown result type (might be due to invalid IL or missing references)
		//IL_017a: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a1: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b2: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c3: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d4: Unknown result type (might be due to invalid IL or missing references)
		string[] array = ((Control)textBox2).Text.Split("\r\n", (StringSplitOptions)0);
		Regex val = new Regex("(?:=>)");
		Regex val2 = new Regex("(?:.....)");
		Match val3 = val.Match(array[0]);
		Match val4 = val2.Match(array[0]);
		if (((Group)val3).Success)
		{
			string text = array[0].Substring(((Capture)val3).Index + 3, 1);
			((Control)label4).Text = text;
			if (text == "A")
			{
				((Control)buttonA).BackColor = Color.Green;
				((Control)buttonB).BackColor = Color.Red;
				((Control)buttonC).BackColor = Color.Red;
				((Control)buttonD).BackColor = Color.Red;
			}
			else if (text == "B")
			{
				((Control)buttonA).BackColor = Color.Red;
				((Control)buttonB).BackColor = Color.Green;
				((Control)buttonC).BackColor = Color.Red;
				((Control)buttonD).BackColor = Color.Red;
			}
			else if (text == "C")
			{
				((Control)buttonA).BackColor = Color.Red;
				((Control)buttonB).BackColor = Color.Red;
				((Control)buttonC).BackColor = Color.Green;
				((Control)buttonD).BackColor = Color.Red;
			}
			else if (text == "D")
			{
				((Control)buttonA).BackColor = Color.Red;
				((Control)buttonB).BackColor = Color.Red;
				((Control)buttonC).BackColor = Color.Red;
				((Control)buttonD).BackColor = Color.Green;
			}
		}
		else
		{
			((Control)label4).Text = "X";
			((Control)buttonA).BackColor = Color.Red;
			((Control)buttonB).BackColor = Color.Red;
			((Control)buttonC).BackColor = Color.Red;
			((Control)buttonD).BackColor = Color.Red;
		}
	}

	private void button1_Click(object sender, EventArgs e)
	{
		comboBox1.Items.Clear();
		Process[] processesByName = Process.GetProcessesByName("FlashGame");
		if (Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)processesByName) > 0)
		{
			Process[] array = processesByName;
			foreach (Process val in array)
			{
				comboBox1.Items.Add((object)val.MainWindowTitle);
			}
		}
	}

	private void buttonReset_Click(object sender, EventArgs e)
	{
		//IL_004d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0059: Unknown result type (might be due to invalid IL or missing references)
		//IL_005e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0066: Unknown result type (might be due to invalid IL or missing references)
		//IL_006c: Unknown result type (might be due to invalid IL or missing references)
		//IL_00b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_00bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_011a: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0185: Unknown result type (might be due to invalid IL or missing references)
		hWnd = FindWindowHandle(null, ((Control)comboBox1).Text);
		GetWindowThreadProcessId(hWnd, out processID);
		((Control)label7).Text = "ID: " + processID;
		RECT val = default(RECT);
		val = AutoControl.GetWindowRect(hWnd);
		SetWindowPos(hWnd, 0, val.Left, val.Top, 1066, 724, 2);
		((Control)groupBox1).Text = "Vị Trí Flash: " + val.Top + " x " + val.Left;
		if (val.Top < 0 || val.Left < 0)
		{
			MessageBox.Show("Vị Trí Flash Đang Âm -> Kéo Vào Trong Màn Hình Và Reset Lại!");
		}
		Image val2 = CaptureHelper.CaptureWindow(hWnd);
		Rectangle val3 = default(Rectangle);
		((Rectangle)(ref val3)).X = 13;
		((Rectangle)(ref val3)).Y = 49;
		((Rectangle)(ref val3)).Width = 54;
		((Rectangle)(ref val3)).Height = 52;
		AvatarNV = CaptureHelper.CropImage(val2, val3);
		pictureBox1.Image = (Image)(object)AvatarNV;
		if (WriteMemoryData(processID, myPointer, offset_FPS, (double)numericUpDownFPS.Value))
		{
			AutoControl.SendClickOnPosition(hWnd, 58, 406, (EMouseKey)0, 1);
			Thread.Sleep(TimeSpan.FromSeconds(0.1));
			AutoControl.SendClickOnPosition(hWnd, 58, 470, (EMouseKey)0, 1);
		}
	}

	private void button6_MouseDown(object sender, MouseEventArgs e)
	{
		Cursor.Current = Cursors.Cross;
	}

	private void button6_MouseUp(object sender, MouseEventArgs e)
	{
		//IL_001c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0021: Unknown result type (might be due to invalid IL or missing references)
		//IL_0032: Unknown result type (might be due to invalid IL or missing references)
		//IL_0037: Unknown result type (might be due to invalid IL or missing references)
		//IL_0041: Unknown result type (might be due to invalid IL or missing references)
		//IL_0046: Unknown result type (might be due to invalid IL or missing references)
		//IL_006a: Unknown result type (might be due to invalid IL or missing references)
		Cursor.Current = Cursors.Default;
		Point globalPoint = AutoControl.GetGlobalPoint(hWnd, (Point?)null);
		int x = ((Point)(ref globalPoint)).X;
		int y = ((Point)(ref globalPoint)).Y;
		Point position = Cursor.Position;
		int x2 = ((Point)(ref position)).X;
		position = Cursor.Position;
		int y2 = ((Point)(ref position)).Y;
		vitriA_X = x2 - x;
		vitriA_Y = y2 - y;
		((Control)button6).BackColor = Color.Green;
	}

	private void button7_MouseUp(object sender, MouseEventArgs e)
	{
		//IL_001c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0021: Unknown result type (might be due to invalid IL or missing references)
		//IL_0032: Unknown result type (might be due to invalid IL or missing references)
		//IL_0037: Unknown result type (might be due to invalid IL or missing references)
		//IL_0041: Unknown result type (might be due to invalid IL or missing references)
		//IL_0046: Unknown result type (might be due to invalid IL or missing references)
		//IL_006a: Unknown result type (might be due to invalid IL or missing references)
		Cursor.Current = Cursors.Default;
		Point globalPoint = AutoControl.GetGlobalPoint(hWnd, (Point?)null);
		int x = ((Point)(ref globalPoint)).X;
		int y = ((Point)(ref globalPoint)).Y;
		Point position = Cursor.Position;
		int x2 = ((Point)(ref position)).X;
		position = Cursor.Position;
		int y2 = ((Point)(ref position)).Y;
		vitriB_X = x2 - x;
		vitriB_Y = y2 - y;
		((Control)button7).BackColor = Color.Green;
	}

	private void button8_MouseUp(object sender, MouseEventArgs e)
	{
		//IL_001c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0021: Unknown result type (might be due to invalid IL or missing references)
		//IL_0032: Unknown result type (might be due to invalid IL or missing references)
		//IL_0037: Unknown result type (might be due to invalid IL or missing references)
		//IL_0041: Unknown result type (might be due to invalid IL or missing references)
		//IL_0046: Unknown result type (might be due to invalid IL or missing references)
		//IL_006a: Unknown result type (might be due to invalid IL or missing references)
		Cursor.Current = Cursors.Default;
		Point globalPoint = AutoControl.GetGlobalPoint(hWnd, (Point?)null);
		int x = ((Point)(ref globalPoint)).X;
		int y = ((Point)(ref globalPoint)).Y;
		Point position = Cursor.Position;
		int x2 = ((Point)(ref position)).X;
		position = Cursor.Position;
		int y2 = ((Point)(ref position)).Y;
		vitriC_X = x2 - x;
		vitriC_Y = y2 - y;
		((Control)button8).BackColor = Color.Green;
	}

	private void button9_MouseUp(object sender, MouseEventArgs e)
	{
		//IL_001c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0021: Unknown result type (might be due to invalid IL or missing references)
		//IL_0032: Unknown result type (might be due to invalid IL or missing references)
		//IL_0037: Unknown result type (might be due to invalid IL or missing references)
		//IL_0041: Unknown result type (might be due to invalid IL or missing references)
		//IL_0046: Unknown result type (might be due to invalid IL or missing references)
		//IL_006a: Unknown result type (might be due to invalid IL or missing references)
		Cursor.Current = Cursors.Default;
		Point globalPoint = AutoControl.GetGlobalPoint(hWnd, (Point?)null);
		int x = ((Point)(ref globalPoint)).X;
		int y = ((Point)(ref globalPoint)).Y;
		Point position = Cursor.Position;
		int x2 = ((Point)(ref position)).X;
		position = Cursor.Position;
		int y2 = ((Point)(ref position)).Y;
		vitriD_X = x2 - x;
		vitriD_Y = y2 - y;
		((Control)button9).BackColor = Color.Green;
	}

	private void buttonA_Click(object sender, EventArgs e)
	{
		SendClickOnPosition(hWnd, vitriA_X, vitriA_Y, (EMouseKey)0);
		delay_100ms(2);
		SendClickUpOnPosition(hWnd, 20, 30, (EMouseKey)0);
	}

	private void buttonB_Click(object sender, EventArgs e)
	{
		SendClickOnPosition(hWnd, vitriB_X, vitriB_Y, (EMouseKey)0);
		delay_100ms(2);
		SendClickUpOnPosition(hWnd, 20, 30, (EMouseKey)0);
	}

	private void buttonC_Click(object sender, EventArgs e)
	{
		SendClickOnPosition(hWnd, vitriC_X, vitriC_Y, (EMouseKey)0);
		delay_100ms(2);
		SendClickUpOnPosition(hWnd, 20, 30, (EMouseKey)0);
	}

	private void buttonD_Click(object sender, EventArgs e)
	{
		SendClickOnPosition(hWnd, vitriD_X, vitriD_Y, (EMouseKey)0);
		delay_100ms(2);
		SendClickUpOnPosition(hWnd, 20, 30, (EMouseKey)0);
	}

	private void button2_Click(object sender, EventArgs e)
	{
		//IL_0011: Unknown result type (might be due to invalid IL or missing references)
		//IL_0017: Expected O, but got Unknown
		TextWriter val = (TextWriter)new StreamWriter(pathData + "/data.txt");
		val.WriteLine(vitriA_X.ToString());
		val.WriteLine(vitriA_Y.ToString());
		val.WriteLine(vitriB_X.ToString());
		val.WriteLine(vitriB_Y.ToString());
		val.WriteLine(vitriC_X.ToString());
		val.WriteLine(vitriC_Y.ToString());
		val.WriteLine(vitriD_X.ToString());
		val.WriteLine(vitriD_Y.ToString());
		val.WriteLine(vitriS_X.ToString());
		val.WriteLine(vitriS_Y.ToString());
		val.Close();
	}

	private void DoVuiCoThuong_KeyDown(object sender, KeyEventArgs e)
	{
		//IL_0002: Unknown result type (might be due to invalid IL or missing references)
		//IL_0009: Invalid comparison between Unknown and I4
		//IL_0147: Unknown result type (might be due to invalid IL or missing references)
		//IL_014e: Invalid comparison between Unknown and I4
		//IL_0192: Unknown result type (might be due to invalid IL or missing references)
		//IL_0199: Invalid comparison between Unknown and I4
		//IL_01df: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e6: Invalid comparison between Unknown and I4
		//IL_022c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0233: Invalid comparison between Unknown and I4
		//IL_0276: Unknown result type (might be due to invalid IL or missing references)
		//IL_027d: Invalid comparison between Unknown and I4
		//IL_0280: Unknown result type (might be due to invalid IL or missing references)
		//IL_0287: Invalid comparison between Unknown and I4
		if ((int)e.KeyCode == 123)
		{
			string text = ((Control)label4).Text;
			string text2 = text;
			if (!(text2 == "A"))
			{
				if (!(text2 == "B"))
				{
					if (!(text2 == "C"))
					{
						if (text2 == "D")
						{
							SendClickOnPosition(hWnd, vitriD_X, vitriD_Y, (EMouseKey)0);
							delay_100ms(2);
							SendClickUpOnPosition(hWnd, 20, 30, (EMouseKey)0);
						}
					}
					else
					{
						SendClickOnPosition(hWnd, vitriC_X, vitriC_Y, (EMouseKey)0);
						delay_100ms(2);
						SendClickUpOnPosition(hWnd, 20, 30, (EMouseKey)0);
					}
				}
				else
				{
					SendClickOnPosition(hWnd, vitriB_X, vitriB_Y, (EMouseKey)0);
					delay_100ms(2);
					SendClickUpOnPosition(hWnd, 20, 30, (EMouseKey)0);
				}
			}
			else
			{
				SendClickOnPosition(hWnd, vitriA_X, vitriA_Y, (EMouseKey)0);
				delay_100ms(2);
				SendClickUpOnPosition(hWnd, 20, 30, (EMouseKey)0);
			}
		}
		if ((int)e.KeyCode == 112)
		{
			SendClickOnPosition(hWnd, vitriA_X, vitriA_Y, (EMouseKey)0);
			delay_100ms(2);
			SendClickUpOnPosition(hWnd, 20, 30, (EMouseKey)0);
		}
		else if ((int)e.KeyCode == 113)
		{
			SendClickOnPosition(hWnd, vitriB_X, vitriB_Y, (EMouseKey)0);
			delay_100ms(2);
			SendClickUpOnPosition(hWnd, 20, 30, (EMouseKey)0);
		}
		else if ((int)e.KeyCode == 114)
		{
			SendClickOnPosition(hWnd, vitriC_X, vitriC_Y, (EMouseKey)0);
			delay_100ms(2);
			SendClickUpOnPosition(hWnd, 20, 30, (EMouseKey)0);
		}
		else if ((int)e.KeyCode == 115)
		{
			SendClickOnPosition(hWnd, vitriD_X, vitriD_Y, (EMouseKey)0);
			delay_100ms(2);
			SendClickUpOnPosition(hWnd, 20, 30, (EMouseKey)0);
		}
		else if ((int)e.KeyCode == 116 || (int)e.KeyCode == 122)
		{
			SendClickOnPosition(hWnd, vitriS_X, vitriS_Y, (EMouseKey)0);
			delay_100ms(2);
			SendClickUpOnPosition(hWnd, 20, 30, (EMouseKey)0);
		}
	}

	private void DoVuiCoThuong_FormClosed(object sender, FormClosedEventArgs e)
	{
		//IL_000f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0019: Expected O, but got Unknown
		Login login = new Login();
		((Form)login).Closed += (EventHandler)([CompilerGenerated] (object? s, EventArgs args) =>
		{
			((Form)this).Close();
		});
	}

	private void button4_MouseUp(object sender, MouseEventArgs e)
	{
		//IL_001c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0021: Unknown result type (might be due to invalid IL or missing references)
		//IL_0032: Unknown result type (might be due to invalid IL or missing references)
		//IL_0037: Unknown result type (might be due to invalid IL or missing references)
		//IL_0041: Unknown result type (might be due to invalid IL or missing references)
		//IL_0046: Unknown result type (might be due to invalid IL or missing references)
		//IL_006a: Unknown result type (might be due to invalid IL or missing references)
		Cursor.Current = Cursors.Default;
		Point globalPoint = AutoControl.GetGlobalPoint(hWnd, (Point?)null);
		int x = ((Point)(ref globalPoint)).X;
		int y = ((Point)(ref globalPoint)).Y;
		Point position = Cursor.Position;
		int x2 = ((Point)(ref position)).X;
		position = Cursor.Position;
		int y2 = ((Point)(ref position)).Y;
		vitriS_X = x2 - x;
		vitriS_Y = y2 - y;
		((Control)button4).BackColor = Color.Green;
	}

	private void button3_Click(object sender, EventArgs e)
	{
		SendClickOnPosition(hWnd, vitriS_Y, vitriS_Y, (EMouseKey)0);
		delay_100ms(2);
		SendClickUpOnPosition(hWnd, 20, 30, (EMouseKey)0);
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
		//IL_00ac: Unknown result type (might be due to invalid IL or missing references)
		//IL_00b6: Expected O, but got Unknown
		//IL_00b7: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c1: Expected O, but got Unknown
		//IL_00c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_00cc: Expected O, but got Unknown
		//IL_00cd: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d7: Expected O, but got Unknown
		//IL_00d8: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e2: Expected O, but got Unknown
		//IL_00e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ed: Expected O, but got Unknown
		//IL_00ee: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f8: Expected O, but got Unknown
		//IL_00f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0103: Expected O, but got Unknown
		//IL_0104: Unknown result type (might be due to invalid IL or missing references)
		//IL_010e: Expected O, but got Unknown
		//IL_010f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0119: Expected O, but got Unknown
		//IL_011a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0124: Expected O, but got Unknown
		//IL_0125: Unknown result type (might be due to invalid IL or missing references)
		//IL_012f: Expected O, but got Unknown
		//IL_0130: Unknown result type (might be due to invalid IL or missing references)
		//IL_013a: Expected O, but got Unknown
		//IL_017c: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a5: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d4: Expected O, but got Unknown
		//IL_01f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_01fe: Expected O, but got Unknown
		//IL_020c: Unknown result type (might be due to invalid IL or missing references)
		//IL_025f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0284: Unknown result type (might be due to invalid IL or missing references)
		//IL_028e: Expected O, but got Unknown
		//IL_02ae: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b8: Expected O, but got Unknown
		//IL_02c3: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_0334: Unknown result type (might be due to invalid IL or missing references)
		//IL_033e: Expected O, but got Unknown
		//IL_0349: Unknown result type (might be due to invalid IL or missing references)
		//IL_036f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0446: Unknown result type (might be due to invalid IL or missing references)
		//IL_046f: Unknown result type (might be due to invalid IL or missing references)
		//IL_04b3: Unknown result type (might be due to invalid IL or missing references)
		//IL_04d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_051c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0526: Expected O, but got Unknown
		//IL_0539: Unknown result type (might be due to invalid IL or missing references)
		//IL_0543: Expected O, but got Unknown
		//IL_0551: Unknown result type (might be due to invalid IL or missing references)
		//IL_0596: Unknown result type (might be due to invalid IL or missing references)
		//IL_05e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_060b: Unknown result type (might be due to invalid IL or missing references)
		//IL_064a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0670: Unknown result type (might be due to invalid IL or missing references)
		//IL_06b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_06d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0718: Unknown result type (might be due to invalid IL or missing references)
		//IL_0741: Unknown result type (might be due to invalid IL or missing references)
		//IL_0778: Unknown result type (might be due to invalid IL or missing references)
		//IL_079e: Unknown result type (might be due to invalid IL or missing references)
		//IL_07e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_07ec: Expected O, but got Unknown
		//IL_07f7: Unknown result type (might be due to invalid IL or missing references)
		//IL_081d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0860: Unknown result type (might be due to invalid IL or missing references)
		//IL_086a: Expected O, but got Unknown
		//IL_0875: Unknown result type (might be due to invalid IL or missing references)
		//IL_089b: Unknown result type (might be due to invalid IL or missing references)
		//IL_08de: Unknown result type (might be due to invalid IL or missing references)
		//IL_08e8: Expected O, but got Unknown
		//IL_08f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_091c: Unknown result type (might be due to invalid IL or missing references)
		//IL_095f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0969: Expected O, but got Unknown
		//IL_0977: Unknown result type (might be due to invalid IL or missing references)
		//IL_099d: Unknown result type (might be due to invalid IL or missing references)
		//IL_09e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_09ea: Expected O, but got Unknown
		//IL_09f8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a1e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a61: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a6b: Expected O, but got Unknown
		//IL_0a79: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a83: Expected O, but got Unknown
		//IL_0a91: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ab7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0afa: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b04: Expected O, but got Unknown
		//IL_0b12: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b1c: Expected O, but got Unknown
		//IL_0b2a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b50: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b93: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b9d: Expected O, but got Unknown
		//IL_0bab: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bb5: Expected O, but got Unknown
		//IL_0bc3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0be9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c2c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c36: Expected O, but got Unknown
		//IL_0c44: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c4e: Expected O, but got Unknown
		//IL_0c66: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c8f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cd3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cf9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d30: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d56: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d9a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0da4: Expected O, but got Unknown
		//IL_0db2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0dd8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e1b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e25: Expected O, but got Unknown
		//IL_0e33: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e59: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e9c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ea6: Expected O, but got Unknown
		//IL_0eb4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ebe: Expected O, but got Unknown
		//IL_0ed9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0eff: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f40: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f66: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f9b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fb9: Unknown result type (might be due to invalid IL or missing references)
		//IL_1140: Unknown result type (might be due to invalid IL or missing references)
		//IL_114a: Expected O, but got Unknown
		//IL_117b: Unknown result type (might be due to invalid IL or missing references)
		//IL_1185: Expected O, but got Unknown
		//IL_118e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1198: Expected O, but got Unknown
		//IL_11a1: Unknown result type (might be due to invalid IL or missing references)
		//IL_11ab: Expected O, but got Unknown
		ComponentResourceManager val = new ComponentResourceManager(typeof(DoVuiCoThuong));
		textBox1 = new TextBox();
		textBox2 = new TextBox();
		label1 = new Label();
		label3 = new Label();
		groupBox1 = new GroupBox();
		buttonReset = new Button();
		numericUpDownFPS = new NumericUpDown();
		pictureBox1 = new PictureBox();
		label6 = new Label();
		label7 = new Label();
		comboBox1 = new ComboBox();
		button1 = new Button();
		buttonA = new Button();
		buttonB = new Button();
		buttonC = new Button();
		buttonD = new Button();
		button6 = new Button();
		button7 = new Button();
		button8 = new Button();
		button9 = new Button();
		label8 = new Label();
		label9 = new Label();
		button2 = new Button();
		button3 = new Button();
		button4 = new Button();
		label2 = new Label();
		label4 = new Label();
		((Control)groupBox1).SuspendLayout();
		((ISupportInitialize)numericUpDownFPS).BeginInit();
		((ISupportInitialize)pictureBox1).BeginInit();
		((Control)this).SuspendLayout();
		((TextBoxBase)textBox1).BorderStyle = (BorderStyle)1;
		((Control)textBox1).Location = new Point(91, 112);
		((Control)textBox1).Name = "textBox1";
		((Control)textBox1).Size = new Size(375, 23);
		((Control)textBox1).TabIndex = 0;
		((Control)textBox1).TextChanged += new EventHandler(textBox1_TextChanged);
		((TextBoxBase)textBox2).BorderStyle = (BorderStyle)1;
		((Control)textBox2).Font = new Font("Segoe UI", 12f, (FontStyle)0, (GraphicsUnit)3);
		((Control)textBox2).Location = new Point(12, 144);
		((TextBoxBase)textBox2).Multiline = true;
		((Control)textBox2).Name = "textBox2";
		((TextBoxBase)textBox2).ReadOnly = true;
		textBox2.ScrollBars = (ScrollBars)3;
		((Control)textBox2).Size = new Size(809, 178);
		((Control)textBox2).TabIndex = 0;
		((Control)textBox2).TextChanged += new EventHandler(textBox2_TextChanged);
		((Control)label1).AutoSize = true;
		((Control)label1).Font = new Font("Segoe UI", 12f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label1).Location = new Point(12, 12);
		((Control)label1).Name = "label1";
		((Control)label1).Size = new Size(463, 42);
		((Control)label1).TabIndex = 1;
		((Control)label1).Text = "Bỏ Dấu Phẩy ( , ) Và Kết Thúc Bằng Dấu Cách (Space) Để Tìm Kiếm\r\n[Câu Hỏi] => [Trả Lời].....[A:~~~].....B:~~~].....[C:~~~].....[D:~~~].....";
		((Control)label3).AutoSize = true;
		((Control)label3).Font = new Font("Segoe UI", 12f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label3).Location = new Point(10, 114);
		((Control)label3).Name = "label3";
		((Control)label3).Size = new Size(75, 21);
		((Control)label3).TabIndex = 1;
		((Control)label3).Text = "Tìm Kiếm";
		((Control)groupBox1).Controls.Add((Control)(object)buttonReset);
		((Control)groupBox1).Controls.Add((Control)(object)numericUpDownFPS);
		((Control)groupBox1).Controls.Add((Control)(object)pictureBox1);
		((Control)groupBox1).Controls.Add((Control)(object)label6);
		((Control)groupBox1).Controls.Add((Control)(object)label7);
		((Control)groupBox1).Controls.Add((Control)(object)comboBox1);
		((Control)groupBox1).Controls.Add((Control)(object)button1);
		((Control)groupBox1).Location = new Point(521, 12);
		((Control)groupBox1).Name = "groupBox1";
		((Control)groupBox1).Size = new Size(286, 93);
		((Control)groupBox1).TabIndex = 39;
		groupBox1.TabStop = false;
		((Control)groupBox1).Text = "null?";
		((Control)buttonReset).Location = new Point(213, 22);
		((Control)buttonReset).Name = "buttonReset";
		((Control)buttonReset).Size = new Size(61, 25);
		((Control)buttonReset).TabIndex = 8;
		((Control)buttonReset).Text = "Reset";
		((ButtonBase)buttonReset).UseVisualStyleBackColor = true;
		((Control)buttonReset).Click += new EventHandler(buttonReset_Click);
		((Control)numericUpDownFPS).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownFPS).Location = new Point(167, 23);
		numericUpDownFPS.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownFPS).Name = "numericUpDownFPS";
		((Control)numericUpDownFPS).Size = new Size(37, 23);
		((Control)numericUpDownFPS).TabIndex = 15;
		numericUpDownFPS.Value = new decimal(new int[4] { 50, 0, 0, 0 });
		pictureBox1.Image = (Image)(object)Resources.anhNVr;
		((Control)pictureBox1).Location = new Point(6, 28);
		((Control)pictureBox1).Name = "pictureBox1";
		((Control)pictureBox1).Size = new Size(55, 52);
		pictureBox1.TabIndex = 0;
		pictureBox1.TabStop = false;
		((Control)label6).AutoSize = true;
		((Control)label6).Location = new Point(133, 27);
		((Control)label6).Name = "label6";
		((Control)label6).Size = new Size(29, 15);
		((Control)label6).TabIndex = 13;
		((Control)label6).Text = "FPS:";
		((Control)label7).AutoSize = true;
		((Control)label7).Location = new Point(67, 27);
		((Control)label7).Name = "label7";
		((Control)label7).Size = new Size(60, 15);
		((Control)label7).TabIndex = 13;
		((Control)label7).Text = "ID: 000000";
		((ListControl)comboBox1).FormattingEnabled = true;
		((Control)comboBox1).Location = new Point(67, 56);
		((Control)comboBox1).Name = "comboBox1";
		((Control)comboBox1).Size = new Size(140, 23);
		((Control)comboBox1).TabIndex = 41;
		((Control)comboBox1).Text = "Select Display Name";
		((Control)button1).Location = new Point(213, 54);
		((Control)button1).Name = "button1";
		((Control)button1).Size = new Size(61, 25);
		((Control)button1).TabIndex = 35;
		((Control)button1).Text = "ReScan";
		((ButtonBase)button1).UseVisualStyleBackColor = true;
		((Control)button1).Click += new EventHandler(button1_Click);
		((Control)buttonA).Location = new Point(90, 82);
		((Control)buttonA).Name = "buttonA";
		((Control)buttonA).Size = new Size(31, 25);
		((Control)buttonA).TabIndex = 8;
		((Control)buttonA).Text = "A";
		((ButtonBase)buttonA).UseVisualStyleBackColor = true;
		((Control)buttonA).Click += new EventHandler(buttonA_Click);
		((Control)buttonB).Location = new Point(127, 82);
		((Control)buttonB).Name = "buttonB";
		((Control)buttonB).Size = new Size(31, 25);
		((Control)buttonB).TabIndex = 8;
		((Control)buttonB).Text = "B";
		((ButtonBase)buttonB).UseVisualStyleBackColor = true;
		((Control)buttonB).Click += new EventHandler(buttonB_Click);
		((Control)buttonC).Location = new Point(164, 82);
		((Control)buttonC).Name = "buttonC";
		((Control)buttonC).Size = new Size(31, 25);
		((Control)buttonC).TabIndex = 8;
		((Control)buttonC).Text = "C";
		((ButtonBase)buttonC).UseVisualStyleBackColor = true;
		((Control)buttonC).Click += new EventHandler(buttonC_Click);
		((Control)buttonD).Location = new Point(201, 82);
		((Control)buttonD).Name = "buttonD";
		((Control)buttonD).Size = new Size(31, 25);
		((Control)buttonD).TabIndex = 8;
		((Control)buttonD).Text = "D";
		((ButtonBase)buttonD).UseVisualStyleBackColor = true;
		((Control)buttonD).Click += new EventHandler(buttonD_Click);
		((Control)button6).Location = new Point(285, 82);
		((Control)button6).Name = "button6";
		((Control)button6).Size = new Size(31, 25);
		((Control)button6).TabIndex = 8;
		((Control)button6).Text = "A";
		((ButtonBase)button6).UseVisualStyleBackColor = true;
		((Control)button6).MouseDown += new MouseEventHandler(button6_MouseDown);
		((Control)button6).MouseUp += new MouseEventHandler(button6_MouseUp);
		((Control)button7).Location = new Point(322, 82);
		((Control)button7).Name = "button7";
		((Control)button7).Size = new Size(31, 25);
		((Control)button7).TabIndex = 8;
		((Control)button7).Text = "B";
		((ButtonBase)button7).UseVisualStyleBackColor = true;
		((Control)button7).MouseDown += new MouseEventHandler(button6_MouseDown);
		((Control)button7).MouseUp += new MouseEventHandler(button7_MouseUp);
		((Control)button8).Location = new Point(359, 83);
		((Control)button8).Name = "button8";
		((Control)button8).Size = new Size(31, 25);
		((Control)button8).TabIndex = 8;
		((Control)button8).Text = "C";
		((ButtonBase)button8).UseVisualStyleBackColor = true;
		((Control)button8).MouseDown += new MouseEventHandler(button6_MouseDown);
		((Control)button8).MouseUp += new MouseEventHandler(button8_MouseUp);
		((Control)button9).Location = new Point(396, 83);
		((Control)button9).Name = "button9";
		((Control)button9).Size = new Size(31, 25);
		((Control)button9).TabIndex = 8;
		((Control)button9).Text = "D";
		((ButtonBase)button9).UseVisualStyleBackColor = true;
		((Control)button9).MouseDown += new MouseEventHandler(button6_MouseDown);
		((Control)button9).MouseUp += new MouseEventHandler(button9_MouseUp);
		((Control)label8).AutoSize = true;
		((Control)label8).Location = new Point(12, 63);
		((Control)label8).Name = "label8";
		((Control)label8).Size = new Size(269, 15);
		((Control)label8).TabIndex = 13;
		((Control)label8).Text = "Chọn:   (F12)    (F1)      (F2)     (F3)     (F4)    (F5/F11)";
		((Control)label9).AutoSize = true;
		((Control)label9).Location = new Point(285, 63);
		((Control)label9).Name = "label9";
		((Control)label9).Size = new Size(44, 15);
		((Control)label9).TabIndex = 13;
		((Control)label9).Text = "Tọa Độ";
		((Control)button2).Location = new Point(470, 84);
		((Control)button2).Name = "button2";
		((Control)button2).Size = new Size(45, 23);
		((Control)button2).TabIndex = 40;
		((Control)button2).Text = "Lưu";
		((ButtonBase)button2).UseVisualStyleBackColor = true;
		((Control)button2).Click += new EventHandler(button2_Click);
		((Control)button3).Location = new Point(238, 81);
		((Control)button3).Name = "button3";
		((Control)button3).Size = new Size(31, 25);
		((Control)button3).TabIndex = 8;
		((Control)button3).Text = "*";
		((ButtonBase)button3).UseVisualStyleBackColor = true;
		((Control)button3).Click += new EventHandler(button3_Click);
		((Control)button4).Location = new Point(433, 83);
		((Control)button4).Name = "button4";
		((Control)button4).Size = new Size(31, 25);
		((Control)button4).TabIndex = 8;
		((Control)button4).Text = "*";
		((ButtonBase)button4).UseVisualStyleBackColor = true;
		((Control)button4).MouseDown += new MouseEventHandler(button6_MouseDown);
		((Control)button4).MouseUp += new MouseEventHandler(button4_MouseUp);
		((Control)label2).AutoSize = true;
		((Control)label2).Location = new Point(473, 119);
		((Control)label2).Name = "label2";
		((Control)label2).Size = new Size(109, 15);
		((Control)label2).TabIndex = 13;
		((Control)label2).Text = "Tìm Thấy 1 Kết Quả";
		((Control)label4).AutoSize = true;
		((Control)label4).Location = new Point(61, 87);
		((Control)label4).Name = "label4";
		((Control)label4).Size = new Size(14, 15);
		((Control)label4).TabIndex = 13;
		((Control)label4).Text = "X";
		((ContainerControl)this).AutoScaleDimensions = new SizeF(7f, 15f);
		((ContainerControl)this).AutoScaleMode = (AutoScaleMode)1;
		((Form)this).ClientSize = new Size(819, 334);
		((Control)this).Controls.Add((Control)(object)button2);
		((Control)this).Controls.Add((Control)(object)button4);
		((Control)this).Controls.Add((Control)(object)button9);
		((Control)this).Controls.Add((Control)(object)groupBox1);
		((Control)this).Controls.Add((Control)(object)button3);
		((Control)this).Controls.Add((Control)(object)buttonD);
		((Control)this).Controls.Add((Control)(object)button8);
		((Control)this).Controls.Add((Control)(object)label3);
		((Control)this).Controls.Add((Control)(object)buttonC);
		((Control)this).Controls.Add((Control)(object)label1);
		((Control)this).Controls.Add((Control)(object)button7);
		((Control)this).Controls.Add((Control)(object)textBox2);
		((Control)this).Controls.Add((Control)(object)buttonB);
		((Control)this).Controls.Add((Control)(object)textBox1);
		((Control)this).Controls.Add((Control)(object)button6);
		((Control)this).Controls.Add((Control)(object)buttonA);
		((Control)this).Controls.Add((Control)(object)label8);
		((Control)this).Controls.Add((Control)(object)label4);
		((Control)this).Controls.Add((Control)(object)label2);
		((Control)this).Controls.Add((Control)(object)label9);
		((Form)this).FormBorderStyle = (FormBorderStyle)1;
		((Form)this).Icon = (Icon)((ResourceManager)val).GetObject("$this.Icon");
		((Form)this).MaximizeBox = false;
		((Control)this).Name = "DoVuiCoThuong";
		((Form)this).StartPosition = (FormStartPosition)1;
		((Control)this).Text = "DoVuiCoThuong";
		((Form)this).FormClosed += new FormClosedEventHandler(DoVuiCoThuong_FormClosed);
		((Form)this).Load += new EventHandler(DoVuiCoThuong_Load);
		((Control)this).KeyDown += new KeyEventHandler(DoVuiCoThuong_KeyDown);
		((Control)groupBox1).ResumeLayout(false);
		((Control)groupBox1).PerformLayout();
		((ISupportInitialize)numericUpDownFPS).EndInit();
		((ISupportInitialize)pictureBox1).EndInit();
		((Control)this).ResumeLayout(false);
		((Control)this).PerformLayout();
	}
}
