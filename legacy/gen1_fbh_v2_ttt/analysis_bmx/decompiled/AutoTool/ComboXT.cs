using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Resources;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using AutoTool.Properties;
using KAutoHelper;

namespace AutoTool;

public class ComboXT : Form
{
	public Bitmap AvatarNV;

	private System.IntPtr hWnd = System.IntPtr.Zero;

	public bool IsPause = false;

	public bool IsStop_Click = true;

	public bool checkClick = false;

	private System.Threading.Tasks.Task T;

	public uint processID;

	public uint processID_click;

	private uint[] offset_MP;

	private uint[] offset_MPmax;

	private uint[] offset_HP;

	private uint[] offset_HPmax;

	private uint[] offset_FPS;

	private uint myPointer;

	private uint myPointer2;

	private int MP_nv;

	private int[] MP_PV;

	private int[] MP_aoe3;

	private int[] MP_aoe5;

	private int[] MP_tinhha;

	private string[] LV_skill;

	private IContainer components;

	private Label labelAOE5;

	private Label labelAOE3;

	private Label labelPV;

	private Button button1;

	private ContextMenuStrip contextMenuStrip1;

	private TextBox textBox1;

	private GroupBox groupBox1;

	private Button buttonReset;

	private NumericUpDown numericUpDownFPS;

	private PictureBox pictureBox1;

	private ComboBox comboBox1;

	private Label label12;

	private Label label13;

	private Button button3;

	private Label label15;

	private Label labelTH;

	private CheckBox checkBox1;

	private Timer timer1;

	private Label label1;

	private Label label3;

	private Label label4;

	private Label label5;

	private Label label6;

	[field: CompilerGenerated]
	[field: DebuggerBrowsable(/*Could not decode attribute arguments.*/)]
	public bool IsStop
	{
		[CompilerGenerated]
		get;
		[CompilerGenerated]
		set;
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

	public ComboXT()
	{
		uint[] array = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_MP = array;
		uint[] array2 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array2, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_MPmax = array2;
		uint[] array3 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array3, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_HP = array3;
		uint[] array4 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array4, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_HPmax = array4;
		uint[] array5 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array5, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_FPS = array5;
		myPointer = 11180660u;
		myPointer2 = 11180660u;
		MP_nv = 0;
		int[] array6 = new int[6];
		RuntimeHelpers.InitializeArray((System.Array)array6, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		MP_PV = array6;
		int[] array7 = new int[6];
		RuntimeHelpers.InitializeArray((System.Array)array7, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		MP_aoe3 = array7;
		int[] array8 = new int[6];
		RuntimeHelpers.InitializeArray((System.Array)array8, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		MP_aoe5 = array8;
		int[] array9 = new int[6];
		RuntimeHelpers.InitializeArray((System.Array)array9, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		MP_tinhha = array9;
		LV_skill = new string[6] { "1", "2  3", "4  5", "6  7", "8  9", "10" };
		components = null;
		((Form)this)._002Ector();
		InitializeComponent();
	}

	private void button1_Click(object sender, EventArgs e)
	{
		MP_nv = int.Parse(((Control)textBox1).Text);
		int mana = MP_nv % 3;
		TinhManaSkill(mana);
	}

	private void TinhManaSkill(int Mana)
	{
		int num = Mana % 3;
		((Control)labelPV).Text = "-->";
		((Control)labelAOE3).Text = "-->";
		((Control)labelAOE5).Text = "-->";
		((Control)labelTH).Text = "-->";
		for (int i = 0; i < 6; i++)
		{
			int num2 = MP_PV[i] + 2;
			num2 %= 3;
			if (num2 == num)
			{
				Label obj = labelPV;
				((Control)obj).Text = ((Control)obj).Text + "  " + ((object)LV_skill[i]).ToString();
			}
		}
		for (int j = 0; j < 6; j++)
		{
			int num3 = MP_aoe3[j] + 1;
			num3 %= 3;
			if (num3 == num)
			{
				Label obj2 = labelAOE3;
				((Control)obj2).Text = ((Control)obj2).Text + "  " + ((object)LV_skill[j]).ToString();
			}
		}
		for (int k = 0; k < 6; k++)
		{
			int num4 = MP_aoe5[k];
			num4 %= 3;
			if (num4 == num)
			{
				Label obj3 = labelAOE5;
				((Control)obj3).Text = ((Control)obj3).Text + "  " + ((object)LV_skill[k]).ToString();
			}
		}
		for (int l = 0; l < 6; l++)
		{
			int num5 = MP_tinhha[l];
			num5 %= 3;
			if (num5 == num)
			{
				Label obj4 = labelTH;
				((Control)obj4).Text = ((Control)obj4).Text + "  " + ((object)LV_skill[l]).ToString();
			}
		}
	}

	private void ComboXT_FormClosed(object sender, FormClosedEventArgs e)
	{
		//IL_000f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0019: Expected O, but got Unknown
		Login login = new Login();
		((Form)login).Closed += (EventHandler)([CompilerGenerated] (object? s, EventArgs args) =>
		{
			((Form)this).Close();
		});
	}

	private void ComboXT_Load(object sender, EventArgs e)
	{
		//IL_0027: Unknown result type (might be due to invalid IL or missing references)
		((Control)this).Text = "[BMx v" + Program.AppMain.version + "] Tính Mốc Xạ Thủ";
		((Form)this).Size = new Size(380, 220);
		if (Settings.Default.freeSize)
		{
			((Form)this).FormBorderStyle = (FormBorderStyle)4;
		}
		else
		{
			((Form)this).FormBorderStyle = (FormBorderStyle)1;
		}
		Process[] processesByName = Process.GetProcessesByName("FlashGame");
		if (Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)processesByName) > 0)
		{
			Process[] array = processesByName;
			foreach (Process val in array)
			{
				comboBox1.Items.Add((object)val.MainWindowTitle);
			}
		}
		checkBox1.CheckState = (CheckState)1;
	}

	private void button3_Click(object sender, EventArgs e)
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
		//IL_00c4: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0189: Unknown result type (might be due to invalid IL or missing references)
		hWnd = FindWindowHandle(null, ((Control)comboBox1).Text);
		GetWindowThreadProcessId(hWnd, out processID);
		((Control)label13).Text = "ID: " + processID;
		RECT val = default(RECT);
		val = AutoControl.GetWindowRect(hWnd);
		SetWindowPos(hWnd, 0, val.Left, val.Top, 1066, 724, 2);
		((Control)groupBox1).Text = "Vị Trí Flash: " + val.Top + " x " + val.Left;
		Image val2 = CaptureHelper.CaptureWindow(hWnd);
		Rectangle val3 = default(Rectangle);
		((Rectangle)(ref val3)).X = 13;
		((Rectangle)(ref val3)).Y = 49;
		((Rectangle)(ref val3)).Width = 54;
		((Rectangle)(ref val3)).Height = 52;
		AvatarNV = CaptureHelper.CropImage(val2, val3);
		pictureBox1.Image = (Image)(object)AvatarNV;
		System.IntPtr hicon = AvatarNV.GetHicon();
		Icon val4 = (((Form)this).Icon = Icon.FromHandle(hicon));
		DestroyIcon(val4.Handle);
		if (WriteMemoryData(processID, myPointer, offset_FPS, (double)numericUpDownFPS.Value))
		{
			AutoControl.SendClickOnPosition(hWnd, 58, 406, (EMouseKey)0, 1);
			Thread.Sleep(TimeSpan.FromSeconds(0.1));
			AutoControl.SendClickOnPosition(hWnd, 58, 470, (EMouseKey)0, 1);
		}
		try
		{
			int num = (int)ReadMemoryData(processID, myPointer2, offset_MP);
			if (num < 99999 && num > 0 && num != MP_nv)
			{
				MP_nv = num;
				((Control)textBox1).Text = MP_nv.ToString();
				TinhManaSkill(MP_nv);
			}
		}
		catch (System.Exception)
		{
		}
	}

	private void timer1_Tick(object sender, EventArgs e)
	{
		try
		{
			int num = (int)ReadMemoryData(processID, myPointer2, offset_MP);
			if (num < 99999 && num > 0 && num != MP_nv)
			{
				MP_nv = num;
				((Control)textBox1).Text = MP_nv.ToString();
				TinhManaSkill(MP_nv);
			}
		}
		catch (System.Exception)
		{
		}
	}

	private void checkBox1_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBox1.Checked)
		{
			try
			{
				int num = (int)ReadMemoryData(processID, myPointer2, offset_MP);
				if (num < 99999 && num > 0 && num != MP_nv)
				{
					MP_nv = num;
					((Control)textBox1).Text = MP_nv.ToString();
					TinhManaSkill(MP_nv);
				}
			}
			catch (System.Exception)
			{
			}
			timer1.Enabled = true;
			timer1.Interval = 500;
			timer1.Start();
			((Control)textBox1).Enabled = false;
		}
		else
		{
			timer1.Stop();
			((Control)textBox1).Enabled = true;
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
		//IL_0002: Unknown result type (might be due to invalid IL or missing references)
		//IL_000c: Expected O, but got Unknown
		//IL_0016: Unknown result type (might be due to invalid IL or missing references)
		//IL_001c: Expected O, but got Unknown
		//IL_001d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0027: Expected O, but got Unknown
		//IL_0028: Unknown result type (might be due to invalid IL or missing references)
		//IL_0032: Expected O, but got Unknown
		//IL_0033: Unknown result type (might be due to invalid IL or missing references)
		//IL_003d: Expected O, but got Unknown
		//IL_003e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0048: Expected O, but got Unknown
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
		//IL_00a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_00b1: Expected O, but got Unknown
		//IL_00b2: Unknown result type (might be due to invalid IL or missing references)
		//IL_00bc: Expected O, but got Unknown
		//IL_00bd: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c7: Expected O, but got Unknown
		//IL_00c8: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d2: Expected O, but got Unknown
		//IL_00d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_00dd: Expected O, but got Unknown
		//IL_00e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ee: Expected O, but got Unknown
		//IL_00ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f9: Expected O, but got Unknown
		//IL_00fa: Unknown result type (might be due to invalid IL or missing references)
		//IL_0104: Expected O, but got Unknown
		//IL_0105: Unknown result type (might be due to invalid IL or missing references)
		//IL_010f: Expected O, but got Unknown
		//IL_0110: Unknown result type (might be due to invalid IL or missing references)
		//IL_011a: Expected O, but got Unknown
		//IL_011b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0125: Expected O, but got Unknown
		//IL_016f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0179: Expected O, but got Unknown
		//IL_0187: Unknown result type (might be due to invalid IL or missing references)
		//IL_019c: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_020b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0215: Expected O, but got Unknown
		//IL_0223: Unknown result type (might be due to invalid IL or missing references)
		//IL_0238: Unknown result type (might be due to invalid IL or missing references)
		//IL_025e: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b1: Expected O, but got Unknown
		//IL_02bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_02fa: Unknown result type (might be due to invalid IL or missing references)
		//IL_0334: Unknown result type (might be due to invalid IL or missing references)
		//IL_0349: Unknown result type (might be due to invalid IL or missing references)
		//IL_036f: Unknown result type (might be due to invalid IL or missing references)
		//IL_03b2: Unknown result type (might be due to invalid IL or missing references)
		//IL_03bc: Expected O, but got Unknown
		//IL_03d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_0404: Unknown result type (might be due to invalid IL or missing references)
		//IL_042a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0519: Unknown result type (might be due to invalid IL or missing references)
		//IL_0545: Unknown result type (might be due to invalid IL or missing references)
		//IL_0586: Unknown result type (might be due to invalid IL or missing references)
		//IL_05ac: Unknown result type (might be due to invalid IL or missing references)
		//IL_05ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_05f9: Expected O, but got Unknown
		//IL_060c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0616: Expected O, but got Unknown
		//IL_0621: Unknown result type (might be due to invalid IL or missing references)
		//IL_0666: Unknown result type (might be due to invalid IL or missing references)
		//IL_06b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_06db: Unknown result type (might be due to invalid IL or missing references)
		//IL_0716: Unknown result type (might be due to invalid IL or missing references)
		//IL_073f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0780: Unknown result type (might be due to invalid IL or missing references)
		//IL_07a6: Unknown result type (might be due to invalid IL or missing references)
		//IL_07e6: Unknown result type (might be due to invalid IL or missing references)
		//IL_080c: Unknown result type (might be due to invalid IL or missing references)
		//IL_084f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0864: Unknown result type (might be due to invalid IL or missing references)
		//IL_088a: Unknown result type (might be due to invalid IL or missing references)
		//IL_08be: Unknown result type (might be due to invalid IL or missing references)
		//IL_08e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0927: Unknown result type (might be due to invalid IL or missing references)
		//IL_0931: Expected O, but got Unknown
		//IL_0951: Unknown result type (might be due to invalid IL or missing references)
		//IL_095b: Expected O, but got Unknown
		//IL_0969: Unknown result type (might be due to invalid IL or missing references)
		//IL_097e: Unknown result type (might be due to invalid IL or missing references)
		//IL_09a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_09eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a11: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a55: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a5f: Expected O, but got Unknown
		//IL_0a7e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a88: Expected O, but got Unknown
		//IL_0aa6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0abb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ae1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b2a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b34: Expected O, but got Unknown
		//IL_0b42: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b57: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b7d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bc6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bd0: Expected O, but got Unknown
		//IL_0bde: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bf3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c19: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c62: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c6c: Expected O, but got Unknown
		//IL_0c7a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c8f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cb5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cfe: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d08: Expected O, but got Unknown
		//IL_0d16: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d2b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d51: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d86: Unknown result type (might be due to invalid IL or missing references)
		//IL_0da4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e9b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ea5: Expected O, but got Unknown
		//IL_0ed6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ee0: Expected O, but got Unknown
		//IL_0ee9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ef3: Expected O, but got Unknown
		components = (IContainer)new Container();
		ComponentResourceManager val = new ComponentResourceManager(typeof(ComboXT));
		labelAOE5 = new Label();
		labelAOE3 = new Label();
		labelPV = new Label();
		button1 = new Button();
		contextMenuStrip1 = new ContextMenuStrip(components);
		textBox1 = new TextBox();
		groupBox1 = new GroupBox();
		buttonReset = new Button();
		numericUpDownFPS = new NumericUpDown();
		pictureBox1 = new PictureBox();
		comboBox1 = new ComboBox();
		label12 = new Label();
		label13 = new Label();
		label15 = new Label();
		button3 = new Button();
		labelTH = new Label();
		checkBox1 = new CheckBox();
		timer1 = new Timer(components);
		label1 = new Label();
		label3 = new Label();
		label4 = new Label();
		label5 = new Label();
		label6 = new Label();
		((Control)groupBox1).SuspendLayout();
		((ISupportInitialize)numericUpDownFPS).BeginInit();
		((ISupportInitialize)pictureBox1).BeginInit();
		((Control)this).SuspendLayout();
		((Control)labelAOE5).AutoSize = true;
		((Control)labelAOE5).Font = new Font("Segoe UI", 11f, (FontStyle)0, (GraphicsUnit)3);
		((Control)labelAOE5).Location = new Point(223, 83);
		((Control)labelAOE5).Margin = new Padding(4, 0, 4, 0);
		((Control)labelAOE5).Name = "labelAOE5";
		((Control)labelAOE5).Size = new Size(31, 20);
		((Control)labelAOE5).TabIndex = 15;
		((Control)labelAOE5).Text = "-->";
		((Control)labelAOE3).AutoSize = true;
		((Control)labelAOE3).Font = new Font("Segoe UI", 11f, (FontStyle)0, (GraphicsUnit)3);
		((Control)labelAOE3).Location = new Point(223, 55);
		((Control)labelAOE3).Margin = new Padding(4, 0, 4, 0);
		((Control)labelAOE3).Name = "labelAOE3";
		((Control)labelAOE3).Size = new Size(31, 20);
		((Control)labelAOE3).TabIndex = 21;
		((Control)labelAOE3).Text = "-->";
		((Control)labelPV).AutoSize = true;
		((Control)labelPV).Font = new Font("Segoe UI", 11f, (FontStyle)0, (GraphicsUnit)3);
		((Control)labelPV).Location = new Point(223, 28);
		((Control)labelPV).Margin = new Padding(4, 0, 4, 0);
		((Control)labelPV).Name = "labelPV";
		((Control)labelPV).Size = new Size(31, 20);
		((Control)labelPV).TabIndex = 13;
		((Control)labelPV).Text = "-->";
		((Control)button1).Location = new Point(165, 139);
		((Control)button1).Margin = new Padding(4, 3, 4, 3);
		((Control)button1).Name = "button1";
		((Control)button1).Size = new Size(51, 23);
		((Control)button1).TabIndex = 8;
		((Control)button1).Text = "check";
		((ButtonBase)button1).UseVisualStyleBackColor = true;
		((Control)button1).Click += new EventHandler(button1_Click);
		((Control)contextMenuStrip1).Name = "contextMenuStrip1";
		((Control)contextMenuStrip1).Size = new Size(61, 4);
		((Control)textBox1).Location = new Point(43, 137);
		((Control)textBox1).Margin = new Padding(4, 3, 4, 3);
		((Control)textBox1).Name = "textBox1";
		((Control)textBox1).Size = new Size(100, 23);
		((Control)textBox1).TabIndex = 6;
		((Control)groupBox1).Controls.Add((Control)(object)buttonReset);
		((Control)groupBox1).Controls.Add((Control)(object)numericUpDownFPS);
		((Control)groupBox1).Controls.Add((Control)(object)pictureBox1);
		((Control)groupBox1).Controls.Add((Control)(object)comboBox1);
		((Control)groupBox1).Controls.Add((Control)(object)label12);
		((Control)groupBox1).Controls.Add((Control)(object)label13);
		((Control)groupBox1).Controls.Add((Control)(object)label15);
		((Control)groupBox1).Controls.Add((Control)(object)button3);
		((Control)groupBox1).Controls.Add((Control)(object)textBox1);
		((Control)groupBox1).Location = new Point(6, 6);
		((Control)groupBox1).Name = "groupBox1";
		((Control)groupBox1).Size = new Size(152, 170);
		((Control)groupBox1).TabIndex = 31;
		groupBox1.TabStop = false;
		((Control)groupBox1).Text = "null?";
		((Control)buttonReset).Location = new Point(87, 51);
		((Control)buttonReset).Name = "buttonReset";
		((Control)buttonReset).Size = new Size(56, 23);
		((Control)buttonReset).TabIndex = 8;
		((Control)buttonReset).Text = "Reset";
		((ButtonBase)buttonReset).UseVisualStyleBackColor = true;
		((Control)buttonReset).Click += new EventHandler(buttonReset_Click);
		((Control)numericUpDownFPS).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownFPS).Location = new Point(106, 22);
		numericUpDownFPS.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownFPS).Name = "numericUpDownFPS";
		((Control)numericUpDownFPS).Size = new Size(37, 23);
		((Control)numericUpDownFPS).TabIndex = 15;
		numericUpDownFPS.Value = new decimal(new int[4] { 50, 0, 0, 0 });
		pictureBox1.Image = (Image)(object)Resources.anhNVr;
		((Control)pictureBox1).Location = new Point(6, 22);
		((Control)pictureBox1).Name = "pictureBox1";
		((Control)pictureBox1).Size = new Size(55, 52);
		pictureBox1.TabIndex = 0;
		pictureBox1.TabStop = false;
		((ListControl)comboBox1).FormattingEnabled = true;
		((Control)comboBox1).Location = new Point(6, 108);
		((Control)comboBox1).Name = "comboBox1";
		((Control)comboBox1).Size = new Size(137, 23);
		((Control)comboBox1).TabIndex = 32;
		((Control)comboBox1).Text = "Select Display Name";
		((Control)label12).AutoSize = true;
		((Control)label12).Location = new Point(72, 26);
		((Control)label12).Name = "label12";
		((Control)label12).Size = new Size(29, 15);
		((Control)label12).TabIndex = 13;
		((Control)label12).Text = "FPS:";
		((Control)label13).AutoSize = true;
		((Control)label13).Location = new Point(6, 79);
		((Control)label13).Name = "label13";
		((Control)label13).Size = new Size(60, 15);
		((Control)label13).TabIndex = 13;
		((Control)label13).Text = "ID: 000000";
		((Control)label15).AutoSize = true;
		((Control)label15).Location = new Point(6, 141);
		((Control)label15).Margin = new Padding(4, 0, 4, 0);
		((Control)label15).Name = "label15";
		((Control)label15).Size = new Size(28, 15);
		((Control)label15).TabIndex = 18;
		((Control)label15).Text = "MP:";
		((Control)button3).Location = new Point(87, 79);
		((Control)button3).Name = "button3";
		((Control)button3).Size = new Size(56, 23);
		((Control)button3).TabIndex = 8;
		((Control)button3).Text = "Rescan";
		((ButtonBase)button3).UseVisualStyleBackColor = true;
		((Control)button3).Click += new EventHandler(button3_Click);
		((Control)labelTH).AutoSize = true;
		((Control)labelTH).Font = new Font("Segoe UI", 11f, (FontStyle)0, (GraphicsUnit)3);
		((Control)labelTH).Location = new Point(223, 109);
		((Control)labelTH).Margin = new Padding(4, 0, 4, 0);
		((Control)labelTH).Name = "labelTH";
		((Control)labelTH).Size = new Size(31, 20);
		((Control)labelTH).TabIndex = 21;
		((Control)labelTH).Text = "-->";
		((Control)checkBox1).AutoSize = true;
		((Control)checkBox1).Location = new Point(223, 142);
		((Control)checkBox1).Name = "checkBox1";
		((Control)checkBox1).Size = new Size(74, 19);
		((Control)checkBox1).TabIndex = 32;
		((Control)checkBox1).Text = "RealTime";
		((ButtonBase)checkBox1).UseVisualStyleBackColor = true;
		checkBox1.CheckedChanged += new EventHandler(checkBox1_CheckedChanged);
		timer1.Interval = 1000;
		timer1.Tick += new EventHandler(timer1_Tick);
		((Control)label1).AutoSize = true;
		((Control)label1).Location = new Point(383, 302);
		((Control)label1).Margin = new Padding(4, 0, 4, 0);
		((Control)label1).Name = "label1";
		((Control)label1).Size = new Size(80, 15);
		((Control)label1).TabIndex = 21;
		((Control)label1).Text = "Tinh Hà LV - x";
		((Control)label3).AutoSize = true;
		((Control)label3).Font = new Font("Segoe UI", 11f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label3).Location = new Point(165, 28);
		((Control)label3).Margin = new Padding(4, 0, 4, 0);
		((Control)label3).Name = "label3";
		((Control)label3).Size = new Size(50, 20);
		((Control)label3).TabIndex = 13;
		((Control)label3).Text = "Phi Vũ";
		((Control)label4).AutoSize = true;
		((Control)label4).Font = new Font("Segoe UI", 11f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label4).Location = new Point(165, 55);
		((Control)label4).Margin = new Padding(4, 0, 4, 0);
		((Control)label4).Name = "label4";
		((Control)label4).Size = new Size(46, 20);
		((Control)label4).TabIndex = 21;
		((Control)label4).Text = "AOE3";
		((Control)label5).AutoSize = true;
		((Control)label5).Font = new Font("Segoe UI", 11f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label5).Location = new Point(165, 109);
		((Control)label5).Margin = new Padding(4, 0, 4, 0);
		((Control)label5).Name = "label5";
		((Control)label5).Size = new Size(60, 20);
		((Control)label5).TabIndex = 21;
		((Control)label5).Text = "Tinh Hà";
		((Control)label6).AutoSize = true;
		((Control)label6).Font = new Font("Segoe UI", 11f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label6).Location = new Point(165, 83);
		((Control)label6).Margin = new Padding(4, 0, 4, 0);
		((Control)label6).Name = "label6";
		((Control)label6).Size = new Size(46, 20);
		((Control)label6).TabIndex = 15;
		((Control)label6).Text = "AOE5";
		((ContainerControl)this).AutoScaleDimensions = new SizeF(7f, 15f);
		((ContainerControl)this).AutoScaleMode = (AutoScaleMode)1;
		((Form)this).ClientSize = new Size(364, 181);
		((Control)this).Controls.Add((Control)(object)checkBox1);
		((Control)this).Controls.Add((Control)(object)groupBox1);
		((Control)this).Controls.Add((Control)(object)label6);
		((Control)this).Controls.Add((Control)(object)labelAOE5);
		((Control)this).Controls.Add((Control)(object)label1);
		((Control)this).Controls.Add((Control)(object)label5);
		((Control)this).Controls.Add((Control)(object)labelTH);
		((Control)this).Controls.Add((Control)(object)label4);
		((Control)this).Controls.Add((Control)(object)labelAOE3);
		((Control)this).Controls.Add((Control)(object)label3);
		((Control)this).Controls.Add((Control)(object)labelPV);
		((Control)this).Controls.Add((Control)(object)button1);
		((Form)this).FormBorderStyle = (FormBorderStyle)1;
		((Form)this).Icon = (Icon)((ResourceManager)val).GetObject("$this.Icon");
		((Form)this).MaximizeBox = false;
		((Control)this).Name = "ComboXT";
		((Form)this).StartPosition = (FormStartPosition)1;
		((Control)this).Text = "ComboXT";
		((Form)this).FormClosed += new FormClosedEventHandler(ComboXT_FormClosed);
		((Form)this).Load += new EventHandler(ComboXT_Load);
		((Control)groupBox1).ResumeLayout(false);
		((Control)groupBox1).PerformLayout();
		((ISupportInitialize)numericUpDownFPS).EndInit();
		((ISupportInitialize)pictureBox1).EndInit();
		((Control)this).ResumeLayout(false);
		((Control)this).PerformLayout();
	}
}
