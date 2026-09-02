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

public class TienIch : Form
{
	public static string linkApp = Application.StartupPath;

	public string pathAutoPhuBan = ((object)linkApp).ToString() + "Anh/AutoPhuBan";

	public string pathTacVu = ((object)linkApp).ToString() + "Anh/TacVu";

	public string pathAutoNhanNVPB = ((object)linkApp).ToString() + "Anh/NhanNVPB";

	public string pathKhac = ((object)linkApp).ToString() + "Anh/Khac";

	public string pathMaps = ((object)linkApp).ToString() + "Anh/Maps";

	public string pathData = linkApp + "/AccData";

	public string pathAutoClick = linkApp + "/AutoClick";

	public string pathAutoNotes = linkApp + "/Notes";

	public string pathLuyenPet = ((object)linkApp).ToString() + "Anh/LuyenPet";

	private System.IntPtr hWnd = System.IntPtr.Zero;

	private System.IntPtr hWnd_click = System.IntPtr.Zero;

	public bool IsPause = false;

	public bool IsPause_click = false;

	public bool IsStop_Click = true;

	public bool checkClick = false;

	private System.Threading.Tasks.Task T_NN;

	private System.Threading.Tasks.Task T_Click;

	public uint processID;

	public uint processID_click;

	private uint[] offset_ToaDoX;

	private uint[] offset_ToaDoY;

	private uint[] offset_FPS;

	private uint myPointer;

	public int ViTriNhanVat_X;

	public int ViTriNhanVat_Y;

	private uint[] offset_MaTam;

	private uint myPointer_MaTam;

	public int VIP;

	public string accMain;

	public string[] charError;

	public int teleRow;

	private List<string> Map_Data;

	private List<string> Tele_Map_Data;

	public int TieuDe;

	private Rectangle dragBoxFromMouseDown;

	private int rowIndexFromMouseDown;

	private int rowIndexOfItemUnderMouseToDrop;

	private bool IsStop_hide;

	private uint myPointer_map_id;

	private uint[] offset_map_id;

	private uint myPointer_map_load_data;

	private uint[] offset_map_load;

	private uint[] offset_map_data;

	private double dataMapOld;

	private static bool isClick = false;

	private static bool isDoubleClick = true;

	private string tenMapHienTai;

	private string tenNPCHienTai;

	private uint myPointer2;

	private uint[] offset_MP;

	private int MP_nv;

	private int[] MP_PV;

	private int[] MP_aoe3;

	private int[] MP_aoe5;

	private int[] MP_tinhha;

	private string[] LV_skill;

	public uint processID2;

	private string[] dataFind;

	private IContainer components;

	private PictureBox pictureBox1;

	private NumericUpDown numericUpDownFPS;

	private Button button1;

	private GroupBox groupBox2;

	private CheckBox checkBox1;

	private CheckBox checkBox7;

	private Button button4;

	private Label label10;

	private Button button6;

	private Button button3;

	private Button button5;

	private DataGridView dataGridView1;

	private Button button7;

	private ComboBox comboBox2;

	private Button button8;

	private TextBox textBox1;

	private Button button9;

	private TabControl tabControl1;

	private TabPage tabPage1;

	private RadioButton radioButton5;

	private ComboBox comboBox3;

	private RadioButton radioButton4;

	private ComboBox comboBox5;

	private RadioButton radioButton1;

	private ComboBox comboBox7;

	private ComboBox comboBox4;

	private RadioButton radioButton3;

	private ComboBox comboBox6;

	private RadioButton radioButton2;

	private CheckBox checkBoxXQV;

	private CheckBox checkBoxXuQue;

	private CheckBox checkBoxXQT;

	private TabPage tabPage2;

	private Button button10;

	private Button button2;

	private GroupBox groupBox6;

	private CheckBox checkBoxLoop;

	private CheckBox checkBoxAutoClick;

	private ComboBox comboBoxFile;

	private CheckBox ButtonRunAuto;

	private Button buttonPause;

	private CheckBox checkBoxPGH;

	private CheckBox checkBoxPGT;

	private Button button11;

	private GroupBox groupBox3;

	private GroupBox groupBox4;

	private Button button12;

	private CheckBox checkBoxMaTam;

	private Label label3;

	private GroupBox groupBox5;

	private RadioButton radioButton8;

	private RadioButton radioButton7;

	private RadioButton radioButton6;

	private ComboBox comboBox10;

	private ComboBox comboBox9;

	private ComboBox comboBox8;

	private RadioButton radioButton10;

	private RadioButton radioButton9;

	private ComboBox comboBox12;

	private ComboBox comboBox11;

	private Button button13;

	private ComboBox comboBox1;

	private Button button15;

	private Button button14;

	private ComboBox comboBox13;

	private Button button16;

	private Button button17;

	private Button button18;

	private TabPage tabPage3;

	private CheckBox checkBox2;

	private CheckBox checkBox4;

	private TextBox textBox3;

	private Timer timer1;

	private TabControl tabControl2;

	private TabPage tabPage4;

	private TabPage tabPage5;

	private CheckBox checkBox3;

	private GroupBox groupBox7;

	private Button buttonReset;

	private ComboBox comboBox14;

	private NumericUpDown numericUpDown1;

	private Label label12;

	private Label label15;

	private Button button19;

	private Button button20;

	private TextBox textBox2;

	private Label label7;

	private Label label6;

	private Label labelPV;

	private Label labelAOE5;

	private Label labelAOE3;

	private Label label5;

	private Label label4;

	private Label labelTH;

	private TabControl tabControl3;

	private TabPage tabPage6;

	private TabPage tabPage7;

	private TabPage tabPage8;

	private ComboBox comboBox15;

	private CheckBox checkBox6;

	private CheckBox checkBox5;

	private TabPage tabPage9;

	private Button button21;

	private Button button22;

	private DataGridViewTextBoxColumn Column1;

	private DataGridViewTextBoxColumn X;

	private DataGridViewTextBoxColumn Y;

	private DataGridViewTextBoxColumn Note;

	private DataGridViewButtonColumn Tele;

	private DataGridViewButtonColumn Team;

	private DataGridViewButtonColumn Delete;

	[field: CompilerGenerated]
	[field: DebuggerBrowsable(/*Could not decode attribute arguments.*/)]
	public bool IsStop
	{
		[CompilerGenerated]
		get;
		[CompilerGenerated]
		set;
	}

	public TienIch()
	{
		uint[] array = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_ToaDoX = array;
		uint[] array2 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array2, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_ToaDoY = array2;
		uint[] array3 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array3, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_FPS = array3;
		myPointer = 11180660u;
		ViTriNhanVat_X = 0;
		ViTriNhanVat_Y = 0;
		uint[] array4 = new uint[4];
		RuntimeHelpers.InitializeArray((System.Array)array4, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_MaTam = array4;
		myPointer_MaTam = 11177888u;
		VIP = 0;
		accMain = "null";
		charError = new string[2] { "BMxToolTeleData", "BMxToolAutoClickData" };
		teleRow = 0;
		Map_Data = new List<string>();
		Tele_Map_Data = new List<string>();
		TieuDe = 30;
		IsStop_hide = false;
		myPointer_map_id = 11180660u;
		uint[] array5 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array5, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_map_id = array5;
		myPointer_map_load_data = 11170512u;
		uint[] array6 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array6, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_map_load = array6;
		uint[] array7 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array7, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_map_data = array7;
		dataMapOld = -1.0;
		tenMapHienTai = "";
		tenNPCHienTai = "";
		myPointer2 = 11180660u;
		uint[] array8 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array8, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_MP = array8;
		MP_nv = 0;
		int[] array9 = new int[6];
		RuntimeHelpers.InitializeArray((System.Array)array9, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		MP_PV = array9;
		int[] array10 = new int[6];
		RuntimeHelpers.InitializeArray((System.Array)array10, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		MP_aoe3 = array10;
		int[] array11 = new int[6];
		RuntimeHelpers.InitializeArray((System.Array)array11, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		MP_aoe5 = array11;
		int[] array12 = new int[6];
		RuntimeHelpers.InitializeArray((System.Array)array12, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		MP_tinhha = array12;
		LV_skill = new string[6] { "1", "2  3", "4  5", "6  7", "8  9", "10" };
		processID2 = 0u;
		dataFind = File.ReadAllLines(Application.StartupPath + "/Anh/System/Data1/1.txt");
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

	[DllImport("user32.dll", SetLastError = true)]
	[return: MarshalAs((UnmanagedType)2)]
	private static extern bool GetWindowRect(System.IntPtr hWnd, ref RECT lpRect);

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

	public static bool WriteInt(System.IntPtr Handle, uint pointer, uint[] offset, int value)
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

	public static int ReadInt(System.IntPtr Handle, uint pointer, uint[] offset)
	{
		byte[] array = new byte[24];
		uint num = pointer;
		foreach (uint num2 in offset)
		{
			num = (uint)ReadPointer(Handle, (System.IntPtr)(long)num) + num2;
		}
		if (ReadProcessMemory(Handle, (System.IntPtr)(long)num, array, (System.UIntPtr)8uL, 0u))
		{
			return BitConverter.ToInt32(array, 0);
		}
		return 0;
	}

	public double ReadMemoryData_Int(uint pID, uint pointer, uint[] offset)
	{
		System.IntPtr handle = MemoryHelper.OpenProcess(pID, (ProcessAccessFlags)2035711);
		Process processById = Process.GetProcessById((int)pID);
		long num = processById.MainModule.BaseAddress.ToInt64() + pointer;
		return ReadInt(handle, (uint)num, offset);
	}

	public bool WriteMemoryData_Int(uint pID, uint pointer, uint[] offset, int value)
	{
		System.IntPtr handle = MemoryHelper.OpenProcess(pID, (ProcessAccessFlags)2035711);
		Process processById = Process.GetProcessById((int)pID);
		long num = processById.MainModule.BaseAddress.ToInt64() + pointer;
		return WriteInt(handle, (uint)num, offset, value);
	}

	private bool FindItem(System.IntPtr hWnd, string pathItem, string nameItem)
	{
		//IL_002b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0030: Unknown result type (might be due to invalid IL or missing references)
		//IL_003a: Unknown result type (might be due to invalid IL or missing references)
		//IL_003f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0075: Unknown result type (might be due to invalid IL or missing references)
		//IL_007a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0084: Unknown result type (might be due to invalid IL or missing references)
		//IL_0089: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_0103: Unknown result type (might be due to invalid IL or missing references)
		//IL_014e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0153: Unknown result type (might be due to invalid IL or missing references)
		//IL_015d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0162: Unknown result type (might be due to invalid IL or missing references)
		int num = 0;
		while (true)
		{
			Point? val = FindPoint(hWnd, pathAutoPhuBan + "/MuiTenIcon.png");
			Point value;
			if (val.HasValue)
			{
				value = val.Value;
				int x = ((Point)(ref value)).X;
				value = val.Value;
				AutoControl.SendClickOnPosition(hWnd, x, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
				delay_100ms(5);
			}
			val = FindPoint(hWnd, pathItem);
			if (val.HasValue)
			{
				value = val.Value;
				int x2 = ((Point)(ref value)).X;
				value = val.Value;
				AutoControl.SendClickOnPosition(hWnd, x2, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
				delay_100ms(5);
				num = 0;
				return true;
			}
			val = FindPoint(hWnd, pathAutoPhuBan + "/NutXuong.png");
			num++;
			if (num >= 4)
			{
				break;
			}
			if (val.HasValue)
			{
				value = val.Value;
				int x3 = ((Point)(ref value)).X;
				value = val.Value;
				AutoControl.SendClickOnPosition(hWnd, x3, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
				delay_100ms(5);
				continue;
			}
			val = FindPoint(hWnd, pathAutoPhuBan + "/NutLen.png");
			if (!val.HasValue)
			{
				break;
			}
			value = val.Value;
			int x4 = ((Point)(ref value)).X;
			value = val.Value;
			AutoControl.SendClickOnPosition(hWnd, x4, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
			delay_100ms(5);
		}
		return false;
	}

	private Point? FindAndClick(System.IntPtr hWnd, string pathFind, int offsetX, int offsetY, string textDebug)
	{
		//IL_0019: Unknown result type (might be due to invalid IL or missing references)
		//IL_001e: Unknown result type (might be due to invalid IL or missing references)
		//IL_002a: Unknown result type (might be due to invalid IL or missing references)
		//IL_002f: Unknown result type (might be due to invalid IL or missing references)
		Point? result = FindPoint(hWnd, pathFind);
		if (result.HasValue)
		{
			Point value = result.Value;
			int num = ((Point)(ref value)).X + offsetX;
			value = result.Value;
			AutoControl.SendClickOnPosition(hWnd, num, ((Point)(ref value)).Y + offsetY - 30, (EMouseKey)0, 1);
			delay_100ms(5);
			delay_100ms(5);
			return result;
		}
		return null;
	}

	private void delay_100ms(int x)
	{
		//IL_0028: Unknown result type (might be due to invalid IL or missing references)
		double num = 0.0;
		for (x += Program.AppMain.delay_System; num < (double)x; num += 1.0)
		{
			Thread.Sleep(TimeSpan.FromSeconds(0.1));
		}
		if (IsStop)
		{
			T_NN.Wait();
		}
		while (IsPause && !IsStop)
		{
		}
	}

	private void delay2_100ms(int x)
	{
		//IL_0028: Unknown result type (might be due to invalid IL or missing references)
		double num = 0.0;
		for (x += Program.AppMain.delay_System; num < (double)x; num += 1.0)
		{
			Thread.Sleep(TimeSpan.FromSeconds(0.1));
		}
	}

	private void delay_20ms(int x)
	{
		//IL_0028: Unknown result type (might be due to invalid IL or missing references)
		double num = 0.0;
		for (x += Program.AppMain.delay_System; num < (double)x; num += 1.0)
		{
			Thread.Sleep(TimeSpan.FromMilliseconds(20.0));
		}
		if (IsStop_Click)
		{
			T_Click.Wait();
		}
		while (IsPause_click && !IsStop_Click)
		{
		}
	}

	private bool WaitAvatar(System.IntPtr hWnd, Bitmap avatar)
	{
		//IL_0009: Unknown result type (might be due to invalid IL or missing references)
		//IL_001d: Expected O, but got Unknown
		Image val = CaptureHelper.CaptureWindow(hWnd);
		Bitmap val2 = ImageScanOpenCV.Find((Bitmap)val, avatar, 0.9);
		if (val2 != null)
		{
			return true;
		}
		return false;
	}

	private Point? FindSubPoint(System.IntPtr hWnd, string pathKhungAnhLon, string pathKhungAnhNho)
	{
		//IL_0017: Unknown result type (might be due to invalid IL or missing references)
		//IL_002b: Expected O, but got Unknown
		//IL_002d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0041: Expected O, but got Unknown
		//IL_0045: Unknown result type (might be due to invalid IL or missing references)
		//IL_004f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0054: Unknown result type (might be due to invalid IL or missing references)
		//IL_0067: Unknown result type (might be due to invalid IL or missing references)
		//IL_006c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0098: Unknown result type (might be due to invalid IL or missing references)
		Image val = CaptureHelper.CaptureWindow(hWnd);
		Bitmap image = ImageScanOpenCV.GetImage(pathKhungAnhLon);
		Bitmap image2 = ImageScanOpenCV.GetImage(pathKhungAnhNho);
		Bitmap val2 = ImageScanOpenCV.Find((Bitmap)val, image, 0.9);
		Point? val3 = ImageScanOpenCV.FindOutPoint((Bitmap)val, image, 0.9);
		Rectangle val4 = default(Rectangle);
		Point value = val3.Value;
		((Rectangle)(ref val4)).X = ((Point)(ref value)).X;
		value = val3.Value;
		((Rectangle)(ref val4)).Y = ((Point)(ref value)).Y;
		((Rectangle)(ref val4)).Width = ((Image)image).Width;
		((Rectangle)(ref val4)).Height = ((Image)image).Height;
		Bitmap val5 = CaptureHelper.CropImage(val2, val4);
		return ImageScanOpenCV.FindOutPoint(val5, image2, 0.9);
	}

	private Point? FindPoint(System.IntPtr hWnd, string pathCanTim)
	{
		//IL_0010: Unknown result type (might be due to invalid IL or missing references)
		//IL_0024: Expected O, but got Unknown
		Image val = CaptureHelper.CaptureWindow(hWnd);
		Bitmap image = ImageScanOpenCV.GetImage(pathCanTim);
		return ImageScanOpenCV.FindOutPoint((Bitmap)val, image, 0.9);
	}

	private Point? FindPoint_center(System.IntPtr hWnd, string pathCanTim)
	{
		//IL_0010: Unknown result type (might be due to invalid IL or missing references)
		//IL_0024: Expected O, but got Unknown
		//IL_0033: Unknown result type (might be due to invalid IL or missing references)
		//IL_0038: Unknown result type (might be due to invalid IL or missing references)
		//IL_004c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0051: Unknown result type (might be due to invalid IL or missing references)
		//IL_0063: Unknown result type (might be due to invalid IL or missing references)
		Image val = CaptureHelper.CaptureWindow(hWnd);
		Bitmap image = ImageScanOpenCV.GetImage(pathCanTim);
		Point? result = ImageScanOpenCV.FindOutPoint((Bitmap)val, image, 0.9);
		if (result.HasValue)
		{
			Point value = result.Value;
			int num = ((Point)(ref value)).X + ((Image)image).Width / 2;
			value = result.Value;
			return new Point(num, ((Point)(ref value)).Y + ((Image)image).Height / 2);
		}
		return result;
	}

	private static List<Point>? FindPoints(System.IntPtr hWnd, string pathCanTim)
	{
		//IL_0010: Unknown result type (might be due to invalid IL or missing references)
		//IL_0024: Expected O, but got Unknown
		Image val = CaptureHelper.CaptureWindow(hWnd);
		Bitmap image = ImageScanOpenCV.GetImage(pathCanTim);
		return ImageScanOpenCV.FindOutPoints((Bitmap)val, image, 0.9);
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

	private void dataGridView1_MouseMove(object sender, MouseEventArgs e)
	{
		//IL_0002: Unknown result type (might be due to invalid IL or missing references)
		//IL_000c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0012: Invalid comparison between Unknown and I4
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_001f: Unknown result type (might be due to invalid IL or missing references)
		//IL_006a: Unknown result type (might be due to invalid IL or missing references)
		//IL_006f: Unknown result type (might be due to invalid IL or missing references)
		if ((e.Button & 0x100000) == 1048576 && dragBoxFromMouseDown != Rectangle.Empty && !((Rectangle)(ref dragBoxFromMouseDown)).Contains(e.X, e.Y))
		{
			DragDropEffects val = ((Control)dataGridView1).DoDragDrop((object)dataGridView1.Rows[rowIndexFromMouseDown], (DragDropEffects)2);
		}
	}

	private void dataGridView1_MouseDown(object sender, MouseEventArgs e)
	{
		//IL_006f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0074: Unknown result type (might be due to invalid IL or missing references)
		//IL_0034: Unknown result type (might be due to invalid IL or missing references)
		//IL_0039: Unknown result type (might be due to invalid IL or missing references)
		//IL_005b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0060: Unknown result type (might be due to invalid IL or missing references)
		//IL_0061: Unknown result type (might be due to invalid IL or missing references)
		//IL_0066: Unknown result type (might be due to invalid IL or missing references)
		rowIndexFromMouseDown = dataGridView1.HitTest(e.X, e.Y).RowIndex;
		if (rowIndexFromMouseDown != -1)
		{
			Size dragSize = SystemInformation.DragSize;
			dragBoxFromMouseDown = new Rectangle(new Point(e.X - ((Size)(ref dragSize)).Width / 2, e.Y - ((Size)(ref dragSize)).Height / 2), dragSize);
		}
		else
		{
			dragBoxFromMouseDown = Rectangle.Empty;
		}
	}

	private void dataGridView1_DragOver(object sender, DragEventArgs e)
	{
		e.Effect = (DragDropEffects)2;
	}

	private void dataGridView1_DragDrop(object sender, DragEventArgs e)
	{
		//IL_0013: Unknown result type (might be due to invalid IL or missing references)
		//IL_0018: Unknown result type (might be due to invalid IL or missing references)
		//IL_001d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0043: Unknown result type (might be due to invalid IL or missing references)
		//IL_0049: Invalid comparison between Unknown and I4
		Point val = ((Control)dataGridView1).PointToClient(new Point(e.X, e.Y));
		rowIndexOfItemUnderMouseToDrop = dataGridView1.HitTest(((Point)(ref val)).X, ((Point)(ref val)).Y).RowIndex;
		if ((int)e.Effect == 2)
		{
			object data = e.Data.GetData(typeof(DataGridViewRow));
			DataGridViewRow val2 = (DataGridViewRow)((data is DataGridViewRow) ? data : null);
			if (rowIndexOfItemUnderMouseToDrop >= 0)
			{
				dataGridView1.Rows.RemoveAt(rowIndexFromMouseDown);
				dataGridView1.Rows.Insert(rowIndexOfItemUnderMouseToDrop, val2);
			}
		}
	}

	private void PressKey(string x)
	{
		FindAndClick(hWnd, pathTacVu + "/ThongBaoCuongDaoBangHoi.png", 2, 2, "Cường Đạo Bang Hội");
		AutoControl.SendClickOnPosition(hWnd, 390, 657, (EMouseKey)0, 1);
		delay_100ms(2);
		switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(x))
		{
		case 2952291245u:
			if (x == "Enter")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)13);
			}
			break;
		case 3356228888u:
			if (x == "M")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)77);
			}
			break;
		case 3842779839u:
			if (x == "`")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)192);
			}
			break;
		case 3931159262u:
			if (x == "ESC")
			{
				FindAndClick(hWnd, pathTacVu + "/Tat.png", 2, 2, "Tắt");
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)27);
			}
			break;
		case 3272340793u:
			if (x == "F")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)70);
			}
			break;
		case 3574337935u:
			if (x == "P")
			{
				SendKeyBoardPress(hWnd, (VKeys)80);
			}
			break;
		case 3742114125u:
			if (x == "Z")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)90);
			}
			break;
		}
		delay2_100ms(5);
	}

	private void checkBox1_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0003: Unknown result type (might be due to invalid IL or missing references)
		//IL_000f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		//IL_001c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0022: Unknown result type (might be due to invalid IL or missing references)
		//IL_004e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0054: Invalid comparison between Unknown and I4
		//IL_00a3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0061: Unknown result type (might be due to invalid IL or missing references)
		//IL_0087: Unknown result type (might be due to invalid IL or missing references)
		//IL_0091: Expected O, but got Unknown
		RECT val = default(RECT);
		val = AutoControl.GetWindowRect(hWnd);
		SetWindowPos(hWnd, 0, val.Left, val.Top, 1066, 724, 2);
		delay2_100ms(3);
		IsStop_hide = false;
		if ((int)checkBox1.CheckState == 1)
		{
			((Control)checkBox1).BackColor = Color.Green;
			((Control)groupBox4).Enabled = false;
			IsStop_hide = false;
			System.Threading.Tasks.Task task = new System.Threading.Tasks.Task((Action)([CompilerGenerated] () =>
			{
				while (!IsStop_hide)
				{
					HideIconECT();
					IsStop_hide = true;
					checkBox1.CheckState = (CheckState)0;
				}
			}));
			task.Start();
		}
		else
		{
			((Control)checkBox1).BackColor = Color.Transparent;
			((Control)groupBox4).Enabled = true;
			IsStop_hide = true;
		}
	}

	private void checkBox7_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		//IL_0044: Unknown result type (might be due to invalid IL or missing references)
		//IL_004a: Invalid comparison between Unknown and I4
		//IL_0030: Unknown result type (might be due to invalid IL or missing references)
		//IL_006d: Unknown result type (might be due to invalid IL or missing references)
		if ((int)checkBox7.CheckState == 1)
		{
			((Control)checkBox7).Text = "Â\u0309n";
			((Form)this).Size = new Size(537, 586);
		}
		else if ((int)checkBox7.CheckState == 0)
		{
			((Control)checkBox7).Text = "Thêm";
			((Form)this).Size = new Size(537, 219);
		}
	}

	private void TienIch_Load(object sender, EventArgs e)
	{
		//IL_0027: Unknown result type (might be due to invalid IL or missing references)
		//IL_0062: Unknown result type (might be due to invalid IL or missing references)
		//IL_007a: Unknown result type (might be due to invalid IL or missing references)
		//IL_07d6: Unknown result type (might be due to invalid IL or missing references)
		//IL_07db: Unknown result type (might be due to invalid IL or missing references)
		//IL_0945: Unknown result type (might be due to invalid IL or missing references)
		//IL_094a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a49: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a4e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b11: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b16: Unknown result type (might be due to invalid IL or missing references)
		((Control)this).Text = "[BMx v" + Program.AppMain.version + "] Tiện Ích";
		((Form)this).Size = new Size(537, 219);
		if (Settings.Default.freeSize)
		{
			((Form)this).FormBorderStyle = (FormBorderStyle)4;
		}
		else
		{
			((Form)this).FormBorderStyle = (FormBorderStyle)1;
		}
		((Control)dataGridView1).Location = new Point(6, 274);
		((Control)tabControl1).Size = new Size(501, 94);
		Process[] processesByName = Process.GetProcessesByName("FlashGame");
		if (Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)processesByName) > 0)
		{
			Process[] array = processesByName;
			foreach (Process val in array)
			{
				comboBox3.Items.Add((object)val.MainWindowTitle);
				comboBox4.Items.Add((object)val.MainWindowTitle);
				comboBox5.Items.Add((object)val.MainWindowTitle);
				comboBox6.Items.Add((object)val.MainWindowTitle);
				comboBox7.Items.Add((object)val.MainWindowTitle);
				comboBox8.Items.Add((object)val.MainWindowTitle);
				comboBox9.Items.Add((object)val.MainWindowTitle);
				comboBox10.Items.Add((object)val.MainWindowTitle);
				comboBox11.Items.Add((object)val.MainWindowTitle);
				comboBox12.Items.Add((object)val.MainWindowTitle);
				comboBox14.Items.Add((object)val.MainWindowTitle);
			}
			switch (Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)processesByName))
			{
			case 1:
				((Control)comboBox3).Text = processesByName[0].MainWindowTitle;
				break;
			case 2:
				((Control)comboBox3).Text = processesByName[0].MainWindowTitle;
				((Control)comboBox4).Text = processesByName[1].MainWindowTitle;
				break;
			case 3:
				((Control)comboBox3).Text = processesByName[0].MainWindowTitle;
				((Control)comboBox4).Text = processesByName[1].MainWindowTitle;
				((Control)comboBox5).Text = processesByName[2].MainWindowTitle;
				break;
			case 4:
				((Control)comboBox3).Text = processesByName[0].MainWindowTitle;
				((Control)comboBox4).Text = processesByName[1].MainWindowTitle;
				((Control)comboBox5).Text = processesByName[2].MainWindowTitle;
				((Control)comboBox6).Text = processesByName[3].MainWindowTitle;
				break;
			case 5:
				((Control)comboBox3).Text = processesByName[0].MainWindowTitle;
				((Control)comboBox4).Text = processesByName[1].MainWindowTitle;
				((Control)comboBox5).Text = processesByName[2].MainWindowTitle;
				((Control)comboBox6).Text = processesByName[3].MainWindowTitle;
				((Control)comboBox7).Text = processesByName[4].MainWindowTitle;
				break;
			case 6:
				((Control)comboBox3).Text = processesByName[0].MainWindowTitle;
				((Control)comboBox4).Text = processesByName[1].MainWindowTitle;
				((Control)comboBox5).Text = processesByName[2].MainWindowTitle;
				((Control)comboBox6).Text = processesByName[3].MainWindowTitle;
				((Control)comboBox7).Text = processesByName[4].MainWindowTitle;
				((Control)comboBox8).Text = processesByName[5].MainWindowTitle;
				break;
			case 7:
				((Control)comboBox3).Text = processesByName[0].MainWindowTitle;
				((Control)comboBox4).Text = processesByName[1].MainWindowTitle;
				((Control)comboBox5).Text = processesByName[2].MainWindowTitle;
				((Control)comboBox6).Text = processesByName[3].MainWindowTitle;
				((Control)comboBox7).Text = processesByName[4].MainWindowTitle;
				((Control)comboBox8).Text = processesByName[5].MainWindowTitle;
				((Control)comboBox9).Text = processesByName[6].MainWindowTitle;
				break;
			case 8:
				((Control)comboBox3).Text = processesByName[0].MainWindowTitle;
				((Control)comboBox4).Text = processesByName[1].MainWindowTitle;
				((Control)comboBox5).Text = processesByName[2].MainWindowTitle;
				((Control)comboBox6).Text = processesByName[3].MainWindowTitle;
				((Control)comboBox7).Text = processesByName[4].MainWindowTitle;
				((Control)comboBox8).Text = processesByName[5].MainWindowTitle;
				((Control)comboBox9).Text = processesByName[6].MainWindowTitle;
				((Control)comboBox10).Text = processesByName[7].MainWindowTitle;
				break;
			case 9:
				((Control)comboBox3).Text = processesByName[0].MainWindowTitle;
				((Control)comboBox4).Text = processesByName[1].MainWindowTitle;
				((Control)comboBox5).Text = processesByName[2].MainWindowTitle;
				((Control)comboBox6).Text = processesByName[3].MainWindowTitle;
				((Control)comboBox7).Text = processesByName[4].MainWindowTitle;
				((Control)comboBox8).Text = processesByName[5].MainWindowTitle;
				((Control)comboBox9).Text = processesByName[6].MainWindowTitle;
				((Control)comboBox10).Text = processesByName[7].MainWindowTitle;
				((Control)comboBox11).Text = processesByName[8].MainWindowTitle;
				break;
			default:
				((Control)comboBox3).Text = processesByName[0].MainWindowTitle;
				((Control)comboBox4).Text = processesByName[1].MainWindowTitle;
				((Control)comboBox5).Text = processesByName[2].MainWindowTitle;
				((Control)comboBox6).Text = processesByName[3].MainWindowTitle;
				((Control)comboBox7).Text = processesByName[4].MainWindowTitle;
				((Control)comboBox8).Text = processesByName[5].MainWindowTitle;
				((Control)comboBox9).Text = processesByName[6].MainWindowTitle;
				((Control)comboBox10).Text = processesByName[7].MainWindowTitle;
				((Control)comboBox11).Text = processesByName[8].MainWindowTitle;
				((Control)comboBox12).Text = processesByName[9].MainWindowTitle;
				break;
			}
		}
		if (File.Exists(pathAutoClick + "/Tele/" + charError[0] + ".txt"))
		{
			string[] array2 = File.ReadAllLines(pathAutoClick + "/Tele/" + charError[0] + ".txt");
			int num2 = default(int);
			for (int j = 0; j < array2.Length; j++)
			{
				bool flag = false;
				string[] array3 = ((object)array2[j]).ToString().Split('\t', (StringSplitOptions)0);
				int num = array3.Length;
				if (int.TryParse(array3[0], ref num2))
				{
					flag = true;
				}
				if (flag)
				{
					num++;
				}
				string[] array4 = new string[num];
				int num3 = 0;
				if (flag)
				{
					array4[0] = " ";
					num3 = 1;
				}
				for (int k = 0; k < array3.Length - 1; k++)
				{
					array4[num3] = array3[k].Trim();
					num3++;
				}
				DataGridViewRowCollection rows = dataGridView1.Rows;
				object[] array5 = array4;
				rows.Add(array5);
			}
			string[] files = Directory.GetFiles(pathAutoClick + "/Tele", "*.txt");
			List<string> val2 = new List<string>();
			val2.AddRange((System.Collections.Generic.IEnumerable<string>)files);
			Enumerator<string> enumerator = val2.GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					string current = enumerator.Current;
					string text = current.Substring((pathAutoClick + "/Tele").Length + 1, current.Length - (pathAutoClick + "/Tele").Length - 5);
					if (!text.Contains(charError[0]))
					{
						comboBox2.Items.Add((object)text);
					}
				}
			}
			finally
			{
				((System.IDisposable)enumerator/*cast due to .constrained prefix*/).Dispose();
			}
		}
		else
		{
			Directory.CreateDirectory(pathAutoClick + "/Tele");
		}
		if (File.Exists(pathAutoNotes + "/notes.txt"))
		{
			((Control)textBox1).Text = File.ReadAllText(pathAutoNotes + "/notes.txt");
		}
		else
		{
			Directory.CreateDirectory(pathAutoNotes);
		}
		if (!Directory.Exists(pathAutoClick + "/CMD"))
		{
			Directory.CreateDirectory(pathAutoClick + "/CMD");
		}
		else
		{
			string[] files2 = Directory.GetFiles(pathAutoClick + "/CMD", "*.txt");
			List<string> val3 = new List<string>();
			val3.AddRange((System.Collections.Generic.IEnumerable<string>)files2);
			Enumerator<string> enumerator2 = val3.GetEnumerator();
			try
			{
				while (enumerator2.MoveNext())
				{
					string current2 = enumerator2.Current;
					string text2 = current2.Substring((pathAutoClick + "/CMD").Length + 1, current2.Length - (pathAutoClick + "/CMD").Length - 5);
					if (!text2.Contains(charError[1]))
					{
						comboBoxFile.Items.Add((object)text2);
					}
				}
			}
			finally
			{
				((System.IDisposable)enumerator2/*cast due to .constrained prefix*/).Dispose();
			}
		}
		if (!Directory.Exists(linkApp + "/Anh/System/Data2"))
		{
			Directory.CreateDirectory(linkApp + "/Anh/System/Data2");
		}
		else
		{
			string[] files3 = Directory.GetFiles(linkApp + "/Anh/System/Data2", "*.txt");
			List<string> val4 = new List<string>();
			val4.AddRange((System.Collections.Generic.IEnumerable<string>)files3);
			Enumerator<string> enumerator3 = val4.GetEnumerator();
			try
			{
				while (enumerator3.MoveNext())
				{
					string current3 = enumerator3.Current;
					string text3 = current3.Substring((linkApp + "/Anh/System/Data2").Length + 1, current3.Length - (linkApp + "/Anh/System/Data2").Length - 5);
					comboBox13.Items.Add((object)text3);
				}
			}
			finally
			{
				((System.IDisposable)enumerator3/*cast due to .constrained prefix*/).Dispose();
			}
		}
		if (File.Exists(Application.StartupPath + "/Anh/System/Data1/1.txt"))
		{
			string[] array6 = File.ReadAllLines(Application.StartupPath + "/Anh/System/Data1/1.txt");
			Tele_Map_Data.AddRange((System.Collections.Generic.IEnumerable<string>)array6);
			Enumerator<string> enumerator4 = Tele_Map_Data.GetEnumerator();
			try
			{
				while (enumerator4.MoveNext())
				{
					string current4 = enumerator4.Current;
					string text4 = current4.Split('\t', (StringSplitOptions)0)[0];
					if (!Map_Data.Contains(text4))
					{
						Map_Data.Add(text4);
					}
				}
			}
			finally
			{
				((System.IDisposable)enumerator4/*cast due to .constrained prefix*/).Dispose();
			}
		}
		string[] dataMaps = Program.AppMain.dataMaps;
		foreach (string text5 in dataMaps)
		{
			comboBox1.Items.Add((object)text5.Split('\t', (StringSplitOptions)0)[2]);
		}
		timer1.Start();
	}

	private void button1_Click(object sender, EventArgs e)
	{
		comboBox3.Items.Clear();
		comboBox4.Items.Clear();
		comboBox5.Items.Clear();
		comboBox6.Items.Clear();
		comboBox7.Items.Clear();
		comboBox8.Items.Clear();
		comboBox9.Items.Clear();
		comboBox10.Items.Clear();
		comboBox11.Items.Clear();
		comboBox12.Items.Clear();
		comboBox14.Items.Clear();
		Process[] processesByName = Process.GetProcessesByName("FlashGame");
		if (Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)processesByName) > 0)
		{
			Process[] array = processesByName;
			foreach (Process val in array)
			{
				comboBox3.Items.Add((object)val.MainWindowTitle);
				comboBox4.Items.Add((object)val.MainWindowTitle);
				comboBox5.Items.Add((object)val.MainWindowTitle);
				comboBox6.Items.Add((object)val.MainWindowTitle);
				comboBox7.Items.Add((object)val.MainWindowTitle);
				comboBox8.Items.Add((object)val.MainWindowTitle);
				comboBox9.Items.Add((object)val.MainWindowTitle);
				comboBox10.Items.Add((object)val.MainWindowTitle);
				comboBox11.Items.Add((object)val.MainWindowTitle);
				comboBox12.Items.Add((object)val.MainWindowTitle);
				comboBox14.Items.Add((object)val.MainWindowTitle);
			}
			switch (Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)processesByName))
			{
			case 1:
				((Control)comboBox3).Text = processesByName[0].MainWindowTitle;
				break;
			case 2:
				((Control)comboBox3).Text = processesByName[0].MainWindowTitle;
				((Control)comboBox4).Text = processesByName[1].MainWindowTitle;
				break;
			case 3:
				((Control)comboBox3).Text = processesByName[0].MainWindowTitle;
				((Control)comboBox4).Text = processesByName[1].MainWindowTitle;
				((Control)comboBox5).Text = processesByName[2].MainWindowTitle;
				break;
			case 4:
				((Control)comboBox3).Text = processesByName[0].MainWindowTitle;
				((Control)comboBox4).Text = processesByName[1].MainWindowTitle;
				((Control)comboBox5).Text = processesByName[2].MainWindowTitle;
				((Control)comboBox6).Text = processesByName[3].MainWindowTitle;
				break;
			case 5:
				((Control)comboBox3).Text = processesByName[0].MainWindowTitle;
				((Control)comboBox4).Text = processesByName[1].MainWindowTitle;
				((Control)comboBox5).Text = processesByName[2].MainWindowTitle;
				((Control)comboBox6).Text = processesByName[3].MainWindowTitle;
				((Control)comboBox7).Text = processesByName[4].MainWindowTitle;
				break;
			case 6:
				((Control)comboBox3).Text = processesByName[0].MainWindowTitle;
				((Control)comboBox4).Text = processesByName[1].MainWindowTitle;
				((Control)comboBox5).Text = processesByName[2].MainWindowTitle;
				((Control)comboBox6).Text = processesByName[3].MainWindowTitle;
				((Control)comboBox7).Text = processesByName[4].MainWindowTitle;
				((Control)comboBox8).Text = processesByName[5].MainWindowTitle;
				break;
			case 7:
				((Control)comboBox3).Text = processesByName[0].MainWindowTitle;
				((Control)comboBox4).Text = processesByName[1].MainWindowTitle;
				((Control)comboBox5).Text = processesByName[2].MainWindowTitle;
				((Control)comboBox6).Text = processesByName[3].MainWindowTitle;
				((Control)comboBox7).Text = processesByName[4].MainWindowTitle;
				((Control)comboBox8).Text = processesByName[5].MainWindowTitle;
				((Control)comboBox9).Text = processesByName[6].MainWindowTitle;
				break;
			case 8:
				((Control)comboBox3).Text = processesByName[0].MainWindowTitle;
				((Control)comboBox4).Text = processesByName[1].MainWindowTitle;
				((Control)comboBox5).Text = processesByName[2].MainWindowTitle;
				((Control)comboBox6).Text = processesByName[3].MainWindowTitle;
				((Control)comboBox7).Text = processesByName[4].MainWindowTitle;
				((Control)comboBox8).Text = processesByName[5].MainWindowTitle;
				((Control)comboBox9).Text = processesByName[6].MainWindowTitle;
				((Control)comboBox10).Text = processesByName[7].MainWindowTitle;
				break;
			case 9:
				((Control)comboBox3).Text = processesByName[0].MainWindowTitle;
				((Control)comboBox4).Text = processesByName[1].MainWindowTitle;
				((Control)comboBox5).Text = processesByName[2].MainWindowTitle;
				((Control)comboBox6).Text = processesByName[3].MainWindowTitle;
				((Control)comboBox7).Text = processesByName[4].MainWindowTitle;
				((Control)comboBox8).Text = processesByName[5].MainWindowTitle;
				((Control)comboBox9).Text = processesByName[6].MainWindowTitle;
				((Control)comboBox10).Text = processesByName[7].MainWindowTitle;
				((Control)comboBox11).Text = processesByName[8].MainWindowTitle;
				break;
			default:
				((Control)comboBox3).Text = processesByName[0].MainWindowTitle;
				((Control)comboBox4).Text = processesByName[1].MainWindowTitle;
				((Control)comboBox5).Text = processesByName[2].MainWindowTitle;
				((Control)comboBox6).Text = processesByName[3].MainWindowTitle;
				((Control)comboBox7).Text = processesByName[4].MainWindowTitle;
				((Control)comboBox8).Text = processesByName[5].MainWindowTitle;
				((Control)comboBox9).Text = processesByName[6].MainWindowTitle;
				((Control)comboBox10).Text = processesByName[7].MainWindowTitle;
				((Control)comboBox11).Text = processesByName[8].MainWindowTitle;
				((Control)comboBox12).Text = processesByName[9].MainWindowTitle;
				break;
			}
		}
	}

	private void button5_Click(object sender, EventArgs e)
	{
		//IL_0279: Unknown result type (might be due to invalid IL or missing references)
		//IL_0164: Unknown result type (might be due to invalid IL or missing references)
		//IL_016a: Expected O, but got Unknown
		if (File.Exists(pathAutoClick + "/Tele/" + ((Control)comboBox2).Text + ".txt"))
		{
			checkBox2.CheckState = (CheckState)0;
			checkBox4.CheckState = (CheckState)0;
			dataGridView1.Rows.Clear();
			string[] array = File.ReadAllLines(pathAutoClick + "/Tele/" + ((Control)comboBox2).Text + ".txt");
			int num2 = default(int);
			for (int i = 0; i < array.Length; i++)
			{
				bool flag = false;
				string[] array2 = ((object)array[i]).ToString().Split('\t', (StringSplitOptions)0);
				int num = array2.Length;
				if (int.TryParse(array2[0], ref num2))
				{
					flag = true;
				}
				if (flag)
				{
					num++;
				}
				string[] array3 = new string[num];
				int num3 = 0;
				if (flag)
				{
					array3[0] = " ";
					num3 = 1;
				}
				for (int j = 0; j < array2.Length - 1; j++)
				{
					array3[num3] = array2[j].Trim();
					num3++;
				}
				DataGridViewRowCollection rows = dataGridView1.Rows;
				object[] array4 = array3;
				rows.Add(array4);
			}
			TextWriter val = (TextWriter)new StreamWriter(pathAutoClick + "/Tele/" + charError[0] + ".txt");
			for (int k = 0; k < dataGridView1.Rows.Count - 1; k++)
			{
				for (int l = 0; l < ((BaseCollection)dataGridView1.Columns).Count - 3; l++)
				{
					if (dataGridView1.Rows[k].Cells[l].Value == null)
					{
						val.Write(" ");
					}
					else
					{
						val.Write(dataGridView1.Rows[k].Cells[l].Value.ToString() ?? "");
					}
					val.Write("\t");
				}
				val.WriteLine();
			}
			val.Close();
		}
		else
		{
			MessageBox.Show("Không tìm thấy File " + ((Control)comboBox2).Text, "err", (MessageBoxButtons)0, (MessageBoxIcon)16);
		}
	}

	private void button7_Click(object sender, EventArgs e)
	{
		//IL_001e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0023: Unknown result type (might be due to invalid IL or missing references)
		//IL_0024: Unknown result type (might be due to invalid IL or missing references)
		//IL_0026: Invalid comparison between Unknown and I4
		//IL_0058: Unknown result type (might be due to invalid IL or missing references)
		DialogResult val = MessageBox.Show("Xóa File " + ((Control)comboBox2).Text, "AutoClick", (MessageBoxButtons)4, (MessageBoxIcon)32);
		if ((int)val == 6)
		{
			File.Delete(pathAutoClick + "/Tele/" + ((Control)comboBox2).Text + ".txt");
			MessageBox.Show("Đã Xóa");
		}
	}

	private void button6_Click(object sender, EventArgs e)
	{
		//IL_003d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0042: Unknown result type (might be due to invalid IL or missing references)
		comboBox2.Items.Clear();
		string[] files = Directory.GetFiles(pathAutoClick + "/Tele", "*.txt");
		List<string> val = new List<string>();
		val.AddRange((System.Collections.Generic.IEnumerable<string>)files);
		Enumerator<string> enumerator = val.GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				string current = enumerator.Current;
				string text = current.Substring((pathAutoClick + "/Tele").Length + 1, current.Length - (pathAutoClick + "/Tele").Length - 5);
				if (!text.Contains(charError[0]))
				{
					comboBox2.Items.Add((object)text);
				}
			}
		}
		finally
		{
			((System.IDisposable)enumerator/*cast due to .constrained prefix*/).Dispose();
		}
	}

	private void button3_Click(object sender, EventArgs e)
	{
		//IL_004e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0054: Expected O, but got Unknown
		//IL_0071: Unknown result type (might be due to invalid IL or missing references)
		//IL_0077: Expected O, but got Unknown
		//IL_002d: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c8: Unknown result type (might be due to invalid IL or missing references)
		string text = ((Control)comboBox2).Text;
		if (text.Contains(charError[0]))
		{
			MessageBox.Show("Không được sử dụng tên này", "err", (MessageBoxButtons)0, (MessageBoxIcon)64);
			return;
		}
		TextWriter val = (TextWriter)new StreamWriter(pathAutoClick + "/Tele/" + text + ".txt");
		TextWriter val2 = (TextWriter)new StreamWriter(pathAutoClick + "/Tele/" + charError[0] + ".txt");
		for (int i = 0; i < dataGridView1.Rows.Count - 1; i++)
		{
			for (int j = 0; j < ((BaseCollection)dataGridView1.Columns).Count - 3; j++)
			{
				if (dataGridView1.Rows[i].Cells[j].Value == null)
				{
					val.Write(" ");
					val2.Write(" ");
				}
				else
				{
					val.Write(dataGridView1.Rows[i].Cells[j].Value.ToString() ?? "");
					val2.Write(dataGridView1.Rows[i].Cells[j].Value.ToString() ?? "");
				}
				val.Write("\t");
				val2.Write("\t");
			}
			val.WriteLine();
			val2.WriteLine();
		}
		val.Close();
		val2.Close();
		MessageBox.Show("Đã Lưu");
	}

	private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
	{
		//IL_0002: Unknown result type (might be due to invalid IL or missing references)
		//IL_0008: Expected O, but got Unknown
		//IL_0070: Unknown result type (might be due to invalid IL or missing references)
		//IL_0076: Invalid comparison between Unknown and I4
		//IL_00ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_0118: Unknown result type (might be due to invalid IL or missing references)
		//IL_0122: Expected O, but got Unknown
		//IL_00dd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0188: Unknown result type (might be due to invalid IL or missing references)
		//IL_0192: Expected O, but got Unknown
		//IL_0150: Unknown result type (might be due to invalid IL or missing references)
		DataGridView val = (DataGridView)sender;
		string name = val.Columns[e.ColumnIndex].Name;
		string text = name;
		if (!(text == "Delete"))
		{
			if (!(text == "Tele"))
			{
				if (!(text == "Team"))
				{
					return;
				}
				if (hWnd == System.IntPtr.Zero)
				{
					MessageBox.Show("Không Tìm Thấy Flash", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)48);
					return;
				}
				teleRow = ((DataGridViewBand)dataGridView1.CurrentRow).Index;
				int row2 = teleRow;
				bool IsStop_tele2 = false;
				System.Threading.Tasks.Task task = new System.Threading.Tasks.Task((Action)delegate
				{
					//IL_0097: Unknown result type (might be due to invalid IL or missing references)
					//IL_00c2: Unknown result type (might be due to invalid IL or missing references)
					//IL_0179: Unknown result type (might be due to invalid IL or missing references)
					//IL_01a4: Unknown result type (might be due to invalid IL or missing references)
					int num = default(int);
					int num2 = default(int);
					while (!IsStop_tele2)
					{
						int.TryParse(dataGridView1.Rows[row2].Cells[1].Value.ToString(), ref num);
						int.TryParse(dataGridView1.Rows[row2].Cells[2].Value.ToString(), ref num2);
						((DataGridViewBand)dataGridView1.Rows[row2]).DefaultCellStyle.BackColor = Color.Teal;
						((DataGridViewBand)dataGridView1.Rows[row2]).DefaultCellStyle.ForeColor = Color.White;
						string maps = ((dataGridView1.Rows[row2].Cells[0].Value != null) ? dataGridView1.Rows[row2].Cells[0].Value.ToString() : " ");
						PhuToiMap2(hWnd, maps, num, num2, team: true);
						((DataGridViewBand)dataGridView1.Rows[row2]).DefaultCellStyle.BackColor = Color.White;
						((DataGridViewBand)dataGridView1.Rows[row2]).DefaultCellStyle.ForeColor = Color.Black;
						IsStop_tele2 = true;
					}
				});
				task.Start();
				return;
			}
			if (hWnd == System.IntPtr.Zero)
			{
				MessageBox.Show("Không Tìm Thấy Flash", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)48);
				return;
			}
			teleRow = ((DataGridViewBand)dataGridView1.CurrentRow).Index;
			int row3 = teleRow;
			bool IsStop_tele3 = false;
			System.Threading.Tasks.Task task2 = new System.Threading.Tasks.Task((Action)delegate
			{
				//IL_0097: Unknown result type (might be due to invalid IL or missing references)
				//IL_00c2: Unknown result type (might be due to invalid IL or missing references)
				//IL_0179: Unknown result type (might be due to invalid IL or missing references)
				//IL_01a4: Unknown result type (might be due to invalid IL or missing references)
				int num = default(int);
				int num2 = default(int);
				while (!IsStop_tele3)
				{
					int.TryParse(dataGridView1.Rows[row3].Cells[1].Value.ToString(), ref num);
					int.TryParse(dataGridView1.Rows[row3].Cells[2].Value.ToString(), ref num2);
					((DataGridViewBand)dataGridView1.Rows[row3]).DefaultCellStyle.BackColor = Color.Teal;
					((DataGridViewBand)dataGridView1.Rows[row3]).DefaultCellStyle.ForeColor = Color.White;
					string maps = ((dataGridView1.Rows[row3].Cells[0].Value != null) ? dataGridView1.Rows[row3].Cells[0].Value.ToString() : " ");
					PhuToiMap2(hWnd, maps, num, num2);
					((DataGridViewBand)dataGridView1.Rows[row3]).DefaultCellStyle.BackColor = Color.White;
					((DataGridViewBand)dataGridView1.Rows[row3]).DefaultCellStyle.ForeColor = Color.Black;
					IsStop_tele3 = true;
				}
			});
			task2.Start();
		}
		else if ((int)MessageBox.Show("Chắc chắn Xóa ?", "Cảnh Báo", (MessageBoxButtons)4, (MessageBoxIcon)48) == 6)
		{
			dataGridView1.Rows.RemoveAt(((DataGridViewBand)dataGridView1.CurrentRow).Index);
			MessageBox.Show("Xong", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)64);
		}
	}

	private void button4_Click(object sender, EventArgs e)
	{
		//IL_0046: Unknown result type (might be due to invalid IL or missing references)
		//IL_0050: Expected O, but got Unknown
		//IL_0030: Unknown result type (might be due to invalid IL or missing references)
		if (hWnd == System.IntPtr.Zero)
		{
			MessageBox.Show("Không Tìm Thấy Flash", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)48);
			return;
		}
		bool IsStop_tele = false;
		System.Threading.Tasks.Task task = new System.Threading.Tasks.Task((Action)delegate
		{
			//IL_00f2: Unknown result type (might be due to invalid IL or missing references)
			//IL_0122: Unknown result type (might be due to invalid IL or missing references)
			//IL_01ea: Unknown result type (might be due to invalid IL or missing references)
			//IL_021a: Unknown result type (might be due to invalid IL or missing references)
			int num = default(int);
			int num2 = default(int);
			while (!IsStop_tele)
			{
				teleRow++;
				if (teleRow >= dataGridView1.RowCount - 1)
				{
					teleRow = 0;
				}
				int.TryParse(dataGridView1.Rows[teleRow].Cells[1].Value.ToString(), ref num);
				int.TryParse(dataGridView1.Rows[teleRow].Cells[2].Value.ToString(), ref num2);
				((DataGridViewBand)dataGridView1.Rows[teleRow]).DefaultCellStyle.BackColor = Color.Teal;
				((DataGridViewBand)dataGridView1.Rows[teleRow]).DefaultCellStyle.ForeColor = Color.White;
				string maps = ((dataGridView1.Rows[teleRow].Cells[0].Value != null) ? dataGridView1.Rows[teleRow].Cells[0].Value.ToString() : " ");
				PhuToiMap2(hWnd, maps, num, num2);
				((DataGridViewBand)dataGridView1.Rows[teleRow]).DefaultCellStyle.BackColor = Color.White;
				((DataGridViewBand)dataGridView1.Rows[teleRow]).DefaultCellStyle.ForeColor = Color.Black;
				IsStop_tele = true;
			}
		});
		task.Start();
	}

	private void TienIch_KeyDown(object sender, KeyEventArgs e)
	{
		//IL_0002: Unknown result type (might be due to invalid IL or missing references)
		//IL_0009: Invalid comparison between Unknown and I4
		//IL_0055: Unknown result type (might be due to invalid IL or missing references)
		//IL_005f: Expected O, but got Unknown
		//IL_003f: Unknown result type (might be due to invalid IL or missing references)
		if ((int)e.KeyCode != 112)
		{
			return;
		}
		if (hWnd == System.IntPtr.Zero)
		{
			MessageBox.Show("Không Tìm Thấy Flash", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)48);
			return;
		}
		bool IsStop_tele = false;
		System.Threading.Tasks.Task task = new System.Threading.Tasks.Task((Action)delegate
		{
			//IL_00f2: Unknown result type (might be due to invalid IL or missing references)
			//IL_0122: Unknown result type (might be due to invalid IL or missing references)
			//IL_01ea: Unknown result type (might be due to invalid IL or missing references)
			//IL_021a: Unknown result type (might be due to invalid IL or missing references)
			int num = default(int);
			int num2 = default(int);
			while (!IsStop_tele)
			{
				teleRow++;
				if (teleRow >= dataGridView1.RowCount - 1)
				{
					teleRow = 0;
				}
				int.TryParse(dataGridView1.Rows[teleRow].Cells[1].Value.ToString(), ref num);
				int.TryParse(dataGridView1.Rows[teleRow].Cells[2].Value.ToString(), ref num2);
				((DataGridViewBand)dataGridView1.Rows[teleRow]).DefaultCellStyle.BackColor = Color.Teal;
				((DataGridViewBand)dataGridView1.Rows[teleRow]).DefaultCellStyle.ForeColor = Color.White;
				string maps = ((dataGridView1.Rows[teleRow].Cells[0].Value != null) ? dataGridView1.Rows[teleRow].Cells[0].Value.ToString() : " ");
				PhuToiMap2(hWnd, maps, num, num2);
				((DataGridViewBand)dataGridView1.Rows[teleRow]).DefaultCellStyle.BackColor = Color.White;
				((DataGridViewBand)dataGridView1.Rows[teleRow]).DefaultCellStyle.ForeColor = Color.Black;
				IsStop_tele = true;
			}
		});
		task.Start();
	}

	private void button8_Click(object sender, EventArgs e)
	{
		//IL_000e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0013: Unknown result type (might be due to invalid IL or missing references)
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		//IL_0016: Invalid comparison between Unknown and I4
		DialogResult val = MessageBox.Show("Xóa Bảng", "AutoClick", (MessageBoxButtons)4, (MessageBoxIcon)32);
		if ((int)val == 6)
		{
			dataGridView1.Rows.Clear();
		}
	}

	private void button9_Click(object sender, EventArgs e)
	{
		//IL_0011: Unknown result type (might be due to invalid IL or missing references)
		//IL_0017: Expected O, but got Unknown
		//IL_0035: Unknown result type (might be due to invalid IL or missing references)
		TextWriter val = (TextWriter)new StreamWriter(pathAutoNotes + "/notes.txt");
		val.Write(((Control)textBox1).Text);
		val.Close();
		MessageBox.Show("Đã Lưu");
	}

	private void HideIconECT()
	{
		//IL_0048: Unknown result type (might be due to invalid IL or missing references)
		//IL_004d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0057: Unknown result type (might be due to invalid IL or missing references)
		//IL_005c: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ab: Unknown result type (might be due to invalid IL or missing references)
		//IL_00b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_00bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_010e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0113: Unknown result type (might be due to invalid IL or missing references)
		//IL_011d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0122: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0203: Unknown result type (might be due to invalid IL or missing references)
		//IL_0208: Unknown result type (might be due to invalid IL or missing references)
		//IL_0257: Unknown result type (might be due to invalid IL or missing references)
		//IL_025c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0266: Unknown result type (might be due to invalid IL or missing references)
		//IL_026b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0179: Unknown result type (might be due to invalid IL or missing references)
		//IL_017e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0189: Unknown result type (might be due to invalid IL or missing references)
		//IL_018e: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c5: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d7: Unknown result type (might be due to invalid IL or missing references)
		AutoControl.SendKeyBoardPress(hWnd, (VKeys)27);
		delay_100ms(1);
		Point? val = FindPoint(hWnd, pathTacVu + "/TatNhiemVu.png");
		Point val2;
		if (val.HasValue)
		{
			System.IntPtr intPtr = hWnd;
			val2 = val.Value;
			int x = ((Point)(ref val2)).X;
			val2 = val.Value;
			AutoControl.SendClickOnPosition(intPtr, x, ((Point)(ref val2)).Y - 30, (EMouseKey)0, 1);
			delay_100ms(5);
		}
		val = FindPoint(hWnd, pathTacVu + "/AnSkill.png");
		if (val.HasValue)
		{
			System.IntPtr intPtr2 = hWnd;
			val2 = val.Value;
			int x2 = ((Point)(ref val2)).X;
			val2 = val.Value;
			AutoControl.SendClickOnPosition(intPtr2, x2, ((Point)(ref val2)).Y - 30, (EMouseKey)0, 1);
			delay_100ms(5);
		}
		val = FindPoint(hWnd, pathTacVu + "/MuiTenThietLap1.png");
		if (val.HasValue)
		{
			System.IntPtr intPtr3 = hWnd;
			val2 = val.Value;
			int x3 = ((Point)(ref val2)).X;
			val2 = val.Value;
			AutoControl.SendClickOnPosition(intPtr3, x3, ((Point)(ref val2)).Y - 30, (EMouseKey)0, 1);
			delay_100ms(5);
		}
		List<Point> val3 = FindPoints(hWnd, pathTacVu + "/MuiTenSangPhai.png");
		if (val3.Count != 0)
		{
			for (int i = 0; i < val3.Count; i++)
			{
				System.IntPtr intPtr4 = hWnd;
				val2 = val3[i];
				int x4 = ((Point)(ref val2)).X;
				val2 = val3[i];
				AutoControl.SendClickOnPosition(intPtr4, x4, ((Point)(ref val2)).Y - 30, (EMouseKey)0, 1);
				delay_100ms(5);
			}
		}
		val = FindPoint(hWnd, pathTacVu + "/GuiChat.png");
		if (val.HasValue)
		{
			System.IntPtr intPtr5 = hWnd;
			val2 = val.Value;
			int x5 = ((Point)(ref val2)).X;
			val2 = val.Value;
			AutoControl.SendClickOnPosition(intPtr5, x5, ((Point)(ref val2)).Y - 30, (EMouseKey)0, 1);
			delay_100ms(5);
		}
		val = FindPoint(hWnd, pathTacVu + "/XoaChat.png");
		if (val.HasValue)
		{
			System.IntPtr intPtr6 = hWnd;
			val2 = val.Value;
			int x6 = ((Point)(ref val2)).X;
			val2 = val.Value;
			AutoControl.SendClickOnPosition(intPtr6, x6, ((Point)(ref val2)).Y - 30, (EMouseKey)0, 1);
			delay_100ms(5);
		}
		val = FindPoint(hWnd, pathTacVu + "/XoaChat.png");
		if (val.HasValue)
		{
			for (int j = 0; j < 10; j++)
			{
				System.IntPtr intPtr7 = hWnd;
				val2 = val.Value;
				int num = ((Point)(ref val2)).X + 50;
				val2 = val.Value;
				AutoControl.SendClickOnPosition(intPtr7, num, ((Point)(ref val2)).Y - 30, (EMouseKey)0, 1);
				delay_100ms(5);
			}
		}
	}

	private void TienIch_FormClosed(object sender, FormClosedEventArgs e)
	{
		//IL_000f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0019: Expected O, but got Unknown
		Login login = new Login();
		((Form)login).Closed += (EventHandler)([CompilerGenerated] (object? s, EventArgs args) =>
		{
			((Form)this).Close();
		});
	}

	private void ResetHWND(string WindowName)
	{
		//IL_0022: Unknown result type (might be due to invalid IL or missing references)
		//IL_002e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0033: Unknown result type (might be due to invalid IL or missing references)
		//IL_003b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0041: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a4: Unknown result type (might be due to invalid IL or missing references)
		hWnd = FindWindowHandle(null, WindowName);
		GetWindowThreadProcessId(hWnd, out processID);
		RECT val = default(RECT);
		val = AutoControl.GetWindowRect(hWnd);
		SetWindowPos(hWnd, 0, val.Left, val.Top, 1066, 724, 2);
		if (WriteMemoryData(processID, myPointer, offset_FPS, (double)numericUpDownFPS.Value))
		{
			AutoControl.SendClickOnPosition(hWnd, 58, 406, (EMouseKey)0, 1);
			Thread.Sleep(TimeSpan.FromSeconds(0.1));
			AutoControl.SendClickOnPosition(hWnd, 58, 470, (EMouseKey)0, 1);
		}
	}

	private string ChuyenKenh(string WindowName, string Kenh)
	{
		//IL_0023: Unknown result type (might be due to invalid IL or missing references)
		//IL_002d: Expected O, but got Unknown
		System.Threading.Tasks.Task task = new System.Threading.Tasks.Task((Action)delegate
		{
			System.IntPtr zero = System.IntPtr.Zero;
			zero = ((WindowName == null) ? hWnd : FindWindowHandle(null, WindowName));
			SendClickOnPosition(zero, 882, 54, (EMouseKey)0);
			delay2_100ms(10);
			string text = Kenh;
			string text2 = text;
			switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text2))
			{
			case 381957209u:
				if (text2 == "Kênh 1")
				{
					SendClickOnPosition(zero, 524, 264, (EMouseKey)0);
				}
				break;
			case 331624352u:
				if (text2 == "Kênh 2")
				{
					SendClickOnPosition(zero, 524, 298, (EMouseKey)0);
				}
				break;
			case 348401971u:
				if (text2 == "Kênh 3")
				{
					SendClickOnPosition(zero, 524, 332, (EMouseKey)0);
				}
				break;
			case 432290066u:
				if (text2 == "Kênh 4")
				{
					SendClickOnPosition(zero, 524, 366, (EMouseKey)0);
				}
				break;
			case 449067685u:
				if (text2 == "Kênh 5")
				{
					SendClickOnPosition(zero, 524, 400, (EMouseKey)0);
				}
				break;
			case 398734828u:
				if (text2 == "Kênh 6")
				{
					SendClickOnPosition(zero, 524, 434, (EMouseKey)0);
				}
				break;
			case 415512447u:
				if (text2 == "Kênh 7")
				{
					SendClickOnPosition(zero, 524, 468, (EMouseKey)0);
				}
				break;
			case 499400542u:
				if (text2 == "Kênh 8")
				{
					SendClickOnPosition(zero, 524, 502, (EMouseKey)0);
				}
				break;
			}
		});
		task.Start();
		return "ok";
	}

	private void ReSize(string WindowName, bool mini = false)
	{
		//IL_0022: Unknown result type (might be due to invalid IL or missing references)
		//IL_002e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0033: Unknown result type (might be due to invalid IL or missing references)
		//IL_0069: Unknown result type (might be due to invalid IL or missing references)
		//IL_006f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0041: Unknown result type (might be due to invalid IL or missing references)
		//IL_0047: Unknown result type (might be due to invalid IL or missing references)
		hWnd = FindWindowHandle(null, WindowName);
		GetWindowThreadProcessId(hWnd, out processID);
		RECT val = default(RECT);
		val = AutoControl.GetWindowRect(hWnd);
		if (mini)
		{
			SetWindowPos(hWnd, 0, val.Left, val.Top, 533, 362, 2);
		}
		else
		{
			SetWindowPos(hWnd, 0, val.Left, val.Top, 1066, 724, 2);
		}
	}

	private void radioButton1_CheckedChanged(object sender, EventArgs e)
	{
		//IL_00ae: Unknown result type (might be due to invalid IL or missing references)
		if (radioButton1.Checked)
		{
			radioButton2.Checked = false;
			radioButton3.Checked = false;
			radioButton4.Checked = false;
			radioButton5.Checked = false;
			radioButton6.Checked = false;
			radioButton7.Checked = false;
			radioButton8.Checked = false;
			radioButton9.Checked = false;
			radioButton10.Checked = false;
			try
			{
				ResetHWND(((Control)comboBox3).Text);
			}
			catch (System.Exception)
			{
				MessageBox.Show("Không Tìm Thấy Flash", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)48);
			}
		}
	}

	private void radioButton2_CheckedChanged(object sender, EventArgs e)
	{
		//IL_00ae: Unknown result type (might be due to invalid IL or missing references)
		if (radioButton2.Checked)
		{
			radioButton1.Checked = false;
			radioButton3.Checked = false;
			radioButton4.Checked = false;
			radioButton5.Checked = false;
			radioButton6.Checked = false;
			radioButton7.Checked = false;
			radioButton8.Checked = false;
			radioButton9.Checked = false;
			radioButton10.Checked = false;
			try
			{
				ResetHWND(((Control)comboBox4).Text);
			}
			catch (System.Exception)
			{
				MessageBox.Show("Không Tìm Thấy Flash", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)48);
			}
		}
	}

	private void radioButton3_CheckedChanged(object sender, EventArgs e)
	{
		//IL_00ae: Unknown result type (might be due to invalid IL or missing references)
		if (radioButton3.Checked)
		{
			radioButton2.Checked = false;
			radioButton1.Checked = false;
			radioButton4.Checked = false;
			radioButton5.Checked = false;
			radioButton6.Checked = false;
			radioButton7.Checked = false;
			radioButton8.Checked = false;
			radioButton9.Checked = false;
			radioButton10.Checked = false;
			try
			{
				ResetHWND(((Control)comboBox5).Text);
			}
			catch (System.Exception)
			{
				MessageBox.Show("Không Tìm Thấy Flash", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)48);
			}
		}
	}

	private void radioButton4_CheckedChanged(object sender, EventArgs e)
	{
		//IL_00ae: Unknown result type (might be due to invalid IL or missing references)
		if (radioButton4.Checked)
		{
			radioButton2.Checked = false;
			radioButton3.Checked = false;
			radioButton1.Checked = false;
			radioButton5.Checked = false;
			radioButton6.Checked = false;
			radioButton7.Checked = false;
			radioButton8.Checked = false;
			radioButton9.Checked = false;
			radioButton10.Checked = false;
			try
			{
				ResetHWND(((Control)comboBox6).Text);
			}
			catch (System.Exception)
			{
				MessageBox.Show("Không Tìm Thấy Flash", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)48);
			}
		}
	}

	private void radioButton5_CheckedChanged(object sender, EventArgs e)
	{
		//IL_00ae: Unknown result type (might be due to invalid IL or missing references)
		if (radioButton5.Checked)
		{
			radioButton2.Checked = false;
			radioButton3.Checked = false;
			radioButton4.Checked = false;
			radioButton1.Checked = false;
			radioButton6.Checked = false;
			radioButton7.Checked = false;
			radioButton8.Checked = false;
			radioButton9.Checked = false;
			radioButton10.Checked = false;
			try
			{
				ResetHWND(((Control)comboBox7).Text);
			}
			catch (System.Exception)
			{
				MessageBox.Show("Không Tìm Thấy Flash", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)48);
			}
		}
	}

	private void radioButton6_CheckedChanged(object sender, EventArgs e)
	{
		//IL_00ae: Unknown result type (might be due to invalid IL or missing references)
		if (radioButton6.Checked)
		{
			radioButton2.Checked = false;
			radioButton3.Checked = false;
			radioButton4.Checked = false;
			radioButton5.Checked = false;
			radioButton1.Checked = false;
			radioButton7.Checked = false;
			radioButton8.Checked = false;
			radioButton9.Checked = false;
			radioButton10.Checked = false;
			try
			{
				ResetHWND(((Control)comboBox8).Text);
			}
			catch (System.Exception)
			{
				MessageBox.Show("Không Tìm Thấy Flash", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)48);
			}
		}
	}

	private void radioButton7_CheckedChanged(object sender, EventArgs e)
	{
		//IL_00ae: Unknown result type (might be due to invalid IL or missing references)
		if (radioButton7.Checked)
		{
			radioButton2.Checked = false;
			radioButton3.Checked = false;
			radioButton4.Checked = false;
			radioButton5.Checked = false;
			radioButton6.Checked = false;
			radioButton1.Checked = false;
			radioButton8.Checked = false;
			radioButton9.Checked = false;
			radioButton10.Checked = false;
			try
			{
				ResetHWND(((Control)comboBox9).Text);
			}
			catch (System.Exception)
			{
				MessageBox.Show("Không Tìm Thấy Flash", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)48);
			}
		}
	}

	private void radioButton8_CheckedChanged(object sender, EventArgs e)
	{
		//IL_00ae: Unknown result type (might be due to invalid IL or missing references)
		if (radioButton8.Checked)
		{
			radioButton2.Checked = false;
			radioButton3.Checked = false;
			radioButton4.Checked = false;
			radioButton5.Checked = false;
			radioButton6.Checked = false;
			radioButton7.Checked = false;
			radioButton1.Checked = false;
			radioButton9.Checked = false;
			radioButton10.Checked = false;
			try
			{
				ResetHWND(((Control)comboBox10).Text);
			}
			catch (System.Exception)
			{
				MessageBox.Show("Không Tìm Thấy Flash", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)48);
			}
		}
	}

	private void radioButton9_CheckedChanged(object sender, EventArgs e)
	{
		//IL_00ae: Unknown result type (might be due to invalid IL or missing references)
		if (radioButton9.Checked)
		{
			radioButton2.Checked = false;
			radioButton3.Checked = false;
			radioButton4.Checked = false;
			radioButton5.Checked = false;
			radioButton6.Checked = false;
			radioButton7.Checked = false;
			radioButton8.Checked = false;
			radioButton1.Checked = false;
			radioButton10.Checked = false;
			try
			{
				ResetHWND(((Control)comboBox11).Text);
			}
			catch (System.Exception)
			{
				MessageBox.Show("Không Tìm Thấy Flash", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)48);
			}
		}
	}

	private void radioButton10_CheckedChanged(object sender, EventArgs e)
	{
		//IL_00ae: Unknown result type (might be due to invalid IL or missing references)
		if (radioButton10.Checked)
		{
			radioButton2.Checked = false;
			radioButton3.Checked = false;
			radioButton4.Checked = false;
			radioButton5.Checked = false;
			radioButton6.Checked = false;
			radioButton7.Checked = false;
			radioButton8.Checked = false;
			radioButton9.Checked = false;
			radioButton1.Checked = false;
			try
			{
				ResetHWND(((Control)comboBox12).Text);
			}
			catch (System.Exception)
			{
				MessageBox.Show("Không Tìm Thấy Flash", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)48);
			}
		}
	}

	private int[] ToaDoMap2(string map)
	{
		int num = 1;
		string text = map.ToLower();
		string text2 = text;
		switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text2))
		{
		case 3090510130u:
			if (!(text2 == "thành phố chìm"))
			{
				break;
			}
			goto IL_0111;
		case 3524001323u:
			if (!(text2 == "tứ tức đảo"))
			{
				break;
			}
			goto IL_0111;
		case 2213748702u:
			if (!(text2 == "vĩnh dạ cảng"))
			{
				break;
			}
			goto IL_0111;
		case 2493701944u:
			if (!(text2 == "mã thạch tuyết"))
			{
				break;
			}
			goto IL_0111;
		case 2640176833u:
			if (!(text2 == "thiên đường thần thánh"))
			{
				break;
			}
			goto IL_0111;
		case 3182312008u:
			if (!(text2 == "thiên không thành"))
			{
				break;
			}
			goto IL_0111;
		case 4281863825u:
			if (!(text2 == "mị hoặc lâm"))
			{
				break;
			}
			goto IL_0111;
		case 4141296587u:
			{
				if (!(text2 == "điêu linh thôn"))
				{
					break;
				}
				goto IL_0111;
			}
			IL_0111:
			num = 2;
			break;
		}
		string[] dataMaps = Program.AppMain.dataMaps;
		foreach (string text3 in dataMaps)
		{
			if (text3.Split('\t', (StringSplitOptions)0)[2].ToUpper().CompareTo(map.Trim().ToUpper()) == 0)
			{
				return new int[4]
				{
					int.Parse(text3.Split('\t', (StringSplitOptions)0)[0]),
					int.Parse(text3.Split('\t', (StringSplitOptions)0)[1]),
					int.Parse(text3.Split('\t', (StringSplitOptions)0)[3]),
					num
				};
			}
		}
		return new int[4] { 0, 0, 999, 0 };
	}

	private void debugText(string x)
	{
		((Control)label3).Text = x;
	}

	private void GetDataMap()
	{
		dataMapOld = ReadMemoryData(processID, myPointer_map_load_data, offset_map_data);
	}

	private double CheckLoadMap()
	{
		double num = ReadMemoryData(processID, myPointer_map_load_data, offset_map_data);
		double num2 = ReadMemoryData(processID, myPointer_map_load_data, offset_map_load);
		if (num == 100.0 || num == dataMapOld)
		{
			return 0.0;
		}
		dataMapOld = -1.0;
		return num2 / num * 100.0;
	}

	private int checkIDMap()
	{
		return (int)ReadMemoryData(processID, myPointer_map_id, offset_map_id);
	}

	private int vitriMapTrongMang()
	{
		for (int i = 0; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)Program.AppMain.dataMaps); i++)
		{
			if (Program.AppMain.dataMaps[i].Split('\t', (StringSplitOptions)0)[3].ToUpper().CompareTo(checkIDMap().ToString().ToUpper()) == 0)
			{
				return i;
			}
		}
		return 0;
	}

	private string checkTenMap()
	{
		string[] dataMaps = Program.AppMain.dataMaps;
		foreach (string text in dataMaps)
		{
			if (text.Split('\t', (StringSplitOptions)0)[3].ToUpper().CompareTo(checkIDMap().ToString().ToUpper()) == 0)
			{
				return text.Split('\t', (StringSplitOptions)0)[2];
			}
		}
		return " ";
	}

	private void PhuToiMap2(System.IntPtr hWnd, string maps, double X = 0.0, double Y = 0.0, bool team = false)
	{
		//IL_0228: Unknown result type (might be due to invalid IL or missing references)
		//IL_022d: Unknown result type (might be due to invalid IL or missing references)
		//IL_023e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0243: Unknown result type (might be due to invalid IL or missing references)
		//IL_0266: Unknown result type (might be due to invalid IL or missing references)
		//IL_026b: Unknown result type (might be due to invalid IL or missing references)
		//IL_027c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0281: Unknown result type (might be due to invalid IL or missing references)
		GetWindowThreadProcessId(hWnd, out var processId);
		GetDataMap();
		int timeDelay = Settings.Default.timeDelay;
		int num = 500 + 500 * timeDelay;
		int[] array = ToaDoMap2(maps);
		int num2 = array[2];
		if (num2 == checkIDMap() || num2 == 999)
		{
			array = null;
		}
		if (array != null)
		{
			int x = array[0];
			int y = array[1];
			int num3 = array[3];
			while (!FindPoint(hWnd, pathMaps + "/map2.png").HasValue)
			{
				PressKey("M");
				delay_100ms(2);
			}
			if (X != 0.0 && Y != 0.0)
			{
				WriteMemoryData(processId, myPointer, offset_ToaDoX, X * 10.0);
				WriteMemoryData(processId, myPointer, offset_ToaDoY, Y * 10.0);
			}
			int num4 = vitriMapTrongMang();
			int num5 = 1;
			if (num4 > 39 && num4 < 48)
			{
				num5 = 2;
			}
			if (num3 != num5)
			{
				AutoControl.SendClickOnPosition(hWnd, 917, 562, (EMouseKey)0, 1);
				delay_100ms(5);
			}
			SendClickOnPosition(hWnd, x, y, (EMouseKey)0);
			if (team)
			{
				delay_100ms(2);
				if (FindAndClick_tele2(hWnd, pathKhac + "/Auto_Nhom.png", 1, 1, "Nhóm").HasValue)
				{
					if (X != 0.0 && Y != 0.0)
					{
						WriteMemoryData(processId, myPointer, offset_ToaDoX, X * 10.0);
						WriteMemoryData(processId, myPointer, offset_ToaDoY, Y * 10.0);
					}
					AutoControl.SendKeyBoardPress(hWnd, (VKeys)13);
				}
			}
			debugText("Map - 0%");
			while (true)
			{
				if (num > 0)
				{
					if (X != 0.0 && Y != 0.0)
					{
						WriteMemoryData(processId, myPointer, offset_ToaDoX, X * 10.0);
						WriteMemoryData(processId, myPointer, offset_ToaDoY, Y * 10.0);
					}
					num--;
					continue;
				}
				double num6 = CheckLoadMap();
				debugText("Map - " + ((int)num6).ToString("D2") + "%");
				if (num6 == 100.0)
				{
					break;
				}
				num = 500 + 500 * timeDelay;
			}
			delay_100ms(5);
			return;
		}
		PressKey("P");
		delay_100ms(5);
		Point? val = FindPoint(hWnd, pathTacVu + "/ChienDau.png");
		if (val.HasValue)
		{
			if (X != 0.0 && Y != 0.0)
			{
				WriteMemoryData(processId, myPointer, offset_ToaDoX, X * 10.0);
				WriteMemoryData(processId, myPointer, offset_ToaDoY, Y * 10.0);
			}
			Point value = val.Value;
			int num7 = ((Point)(ref value)).X + 200;
			value = val.Value;
			AutoControl.SendClickOnPosition(hWnd, num7, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
			delay_100ms(10);
			value = val.Value;
			int num8 = ((Point)(ref value)).X + 200;
			value = val.Value;
			AutoControl.SendClickOnPosition(hWnd, num8, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
			delay_100ms(10);
		}
		PressKey("ESC");
	}

	private void PhuToiMap3(System.IntPtr hWnd, string maps, double X = 0.0, double Y = 0.0, bool team = false)
	{
		//IL_02a5: Unknown result type (might be due to invalid IL or missing references)
		//IL_02aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b7: Unknown result type (might be due to invalid IL or missing references)
		//IL_02bc: Unknown result type (might be due to invalid IL or missing references)
		//IL_02dc: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e1: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ee: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0313: Unknown result type (might be due to invalid IL or missing references)
		//IL_0318: Unknown result type (might be due to invalid IL or missing references)
		//IL_0325: Unknown result type (might be due to invalid IL or missing references)
		//IL_032a: Unknown result type (might be due to invalid IL or missing references)
		//IL_034a: Unknown result type (might be due to invalid IL or missing references)
		//IL_034f: Unknown result type (might be due to invalid IL or missing references)
		//IL_035c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0361: Unknown result type (might be due to invalid IL or missing references)
		GetWindowThreadProcessId(hWnd, out var processId);
		GetDataMap();
		int timeDelay = Settings.Default.timeDelay;
		int num = 500 + 500 * timeDelay;
		int[] array = ToaDoMap2(maps);
		int num2 = array[2];
		if (num2 == checkIDMap() || num2 == 999)
		{
			array = null;
		}
		if (array != null)
		{
			int x = array[0];
			int y = array[1];
			int num3 = array[3];
			while (!FindPoint(hWnd, pathMaps + "/map2.png").HasValue)
			{
				PressKey("M");
				delay_100ms(2);
			}
			if (X != 0.0 && Y != 0.0)
			{
				WriteMemoryData(processId, myPointer, offset_ToaDoX, X * 10.0);
				WriteMemoryData(processId, myPointer, offset_ToaDoY, Y * 10.0);
			}
			int num4 = vitriMapTrongMang();
			int num5 = 1;
			if (num4 > 39 && num4 < 48)
			{
				num5 = 2;
			}
			if (num3 != num5)
			{
				AutoControl.SendClickOnPosition(hWnd, 917, 562, (EMouseKey)0, 1);
				delay_100ms(5);
			}
			SendClickOnPosition(hWnd, x, y, (EMouseKey)0);
			if (team)
			{
				delay_100ms(2);
				if (FindAndClick_tele2(hWnd, pathKhac + "/Auto_Nhom.png", 1, 1, "Nhóm").HasValue)
				{
					if (X != 0.0 && Y != 0.0)
					{
						WriteMemoryData(processId, myPointer, offset_ToaDoX, X * 10.0);
						WriteMemoryData(processId, myPointer, offset_ToaDoY, Y * 10.0);
					}
					AutoControl.SendKeyBoardPress(hWnd, (VKeys)13);
				}
			}
			debugText("Map - 0%");
			while (true)
			{
				if (num > 0)
				{
					if (X != 0.0 && Y != 0.0)
					{
						WriteMemoryData(processId, myPointer, offset_ToaDoX, X * 10.0);
						WriteMemoryData(processId, myPointer, offset_ToaDoY, Y * 10.0);
					}
					num--;
					continue;
				}
				double num6 = CheckLoadMap();
				debugText("Map - " + ((int)num6).ToString("D2") + "%");
				if (num6 == 100.0)
				{
					break;
				}
				num = 500 + 500 * timeDelay;
			}
			delay_100ms(5);
			return;
		}
		int num7 = 0;
		do
		{
			FindAndClick(hWnd, pathKhac + "/Skin_TrangBi.png", 0, 0, "Tìm tab Trang Bị");
			if (!FindPoint(hWnd, pathKhac + "/Skin_TuDo.png").HasValue)
			{
				FindAndClick(hWnd, pathKhac + "/Icon_NhanVat.png", 0, 0, "Mở Nhân Vật");
				num7++;
				continue;
			}
			Point? val = FindPoint(hWnd, pathKhac + "/Skin_TuDo.png");
			if (val.HasValue)
			{
				if (X != 0.0 && Y != 0.0)
				{
					WriteMemoryData(processId, myPointer, offset_ToaDoX, X * 10.0);
					WriteMemoryData(processId, myPointer, offset_ToaDoY, Y * 10.0);
				}
				Point value = val.Value;
				int x2 = ((Point)(ref value)).X - 5;
				value = val.Value;
				SendClickOnPosition(hWnd, x2, ((Point)(ref value)).Y - 90, (EMouseKey)0);
				delay_100ms(2);
				value = val.Value;
				int x3 = ((Point)(ref value)).X - 5;
				value = val.Value;
				SendClickOnPosition(hWnd, x3, ((Point)(ref value)).Y - 90, (EMouseKey)0);
				delay_100ms(5);
				value = val.Value;
				int x4 = ((Point)(ref value)).X - 5;
				value = val.Value;
				SendClickOnPosition(hWnd, x4, ((Point)(ref value)).Y - 90, (EMouseKey)0);
				delay_100ms(2);
				value = val.Value;
				int x5 = ((Point)(ref value)).X - 5;
				value = val.Value;
				SendClickOnPosition(hWnd, x5, ((Point)(ref value)).Y - 90, (EMouseKey)0);
				delay_100ms(5);
			}
			break;
		}
		while (num7 < 300);
		PressKey("ESC");
	}

	private void PressKey_tele(System.IntPtr hWnd, string x)
	{
		SendClickOnPosition(hWnd, 390, 687, (EMouseKey)0);
		delay2_100ms(2);
		switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(x))
		{
		case 2952291245u:
			if (x == "Enter")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)13);
			}
			break;
		case 3356228888u:
			if (x == "M")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)77);
			}
			break;
		case 3842779839u:
			if (x == "`")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)192);
			}
			break;
		case 3322673650u:
			if (x == "C")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)67);
			}
			break;
		case 3931159262u:
			if (x == "ESC")
			{
				FindAndClick_tele(hWnd, pathTacVu + "/Tat.png", 2, 2, "Tắt");
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)27);
			}
			break;
		case 3272340793u:
			if (x == "F")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)70);
			}
			break;
		case 3574337935u:
			if (x == "P")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)80);
			}
			break;
		}
		delay2_100ms(2);
	}

	private Point? FindAndClick_tele(System.IntPtr hWnd, string pathFind, int offsetX, int offsetY, string textDebug)
	{
		//IL_0019: Unknown result type (might be due to invalid IL or missing references)
		//IL_001e: Unknown result type (might be due to invalid IL or missing references)
		//IL_002a: Unknown result type (might be due to invalid IL or missing references)
		//IL_002f: Unknown result type (might be due to invalid IL or missing references)
		Point? result = FindPoint(hWnd, pathFind);
		if (result.HasValue)
		{
			Point value = result.Value;
			int num = ((Point)(ref value)).X + offsetX;
			value = result.Value;
			AutoControl.SendClickOnPosition(hWnd, num, ((Point)(ref value)).Y + offsetY - 30, (EMouseKey)0, 1);
			delay2_100ms(5);
			return result;
		}
		return null;
	}

	private Point? FindAndClick_tele2(System.IntPtr hWnd, string pathFind, int offsetX, int offsetY, string textDebug)
	{
		//IL_0019: Unknown result type (might be due to invalid IL or missing references)
		//IL_001e: Unknown result type (might be due to invalid IL or missing references)
		//IL_002a: Unknown result type (might be due to invalid IL or missing references)
		//IL_002f: Unknown result type (might be due to invalid IL or missing references)
		Point? result = FindPoint(hWnd, pathFind);
		if (result.HasValue)
		{
			Point value = result.Value;
			int num = ((Point)(ref value)).X + offsetX;
			value = result.Value;
			AutoControl.SendClickOnPosition(hWnd, num, ((Point)(ref value)).Y + offsetY - 30, (EMouseKey)0, 1);
			delay2_100ms(2);
			return result;
		}
		return null;
	}

	private bool WaitTele(System.IntPtr hWnd)
	{
		//IL_001f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0033: Expected O, but got Unknown
		Image val = CaptureHelper.CaptureWindow(hWnd);
		Bitmap image = ImageScanOpenCV.GetImage(pathLuyenPet + "/key_Q.png");
		Bitmap val2 = ImageScanOpenCV.Find((Bitmap)val, image, 0.9);
		if (val2 != null)
		{
			return true;
		}
		return false;
	}

	private void run_autoClick()
	{
		if (!File.Exists(pathAutoClick + "/CMD/" + ((Control)comboBoxFile).Text + ".txt"))
		{
			return;
		}
		string[] array = File.ReadAllLines(pathAutoClick + "/CMD/" + ((Control)comboBoxFile).Text + ".txt");
		for (int i = 2; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array); i++)
		{
			string[] array2 = array[i].Split('\t', (StringSplitOptions)0);
			try
			{
				Auto_Click(array2[0], array2[1]);
			}
			catch (System.Exception)
			{
				break;
			}
		}
	}

	private void Auto_Click(string cmd, string time_delay)
	{
		int x = default(int);
		int.TryParse(time_delay, ref x);
		bool flag = false;
		switch (cmd[2])
		{
		case 'P':
		{
			string[] array3 = cmd.Substring(5, cmd.Length - 6).Split(';', (StringSplitOptions)0);
			int x3 = default(int);
			int.TryParse(array3[0], ref x3);
			int y = default(int);
			int.TryParse(array3[1], ref y);
			if (cmd[0] == 'C')
			{
				Click_Point(x3, y, isClick);
			}
			else
			{
				Click_Point(x3, y, isDoubleClick);
			}
			delay_20ms(x);
			break;
		}
		case 'I':
		{
			string text3 = cmd.Substring(5, cmd.Length - 10);
			if (FindsAndClick_center(doubleClick: (cmd[0] != 'C') ? isDoubleClick : isClick, img: pathAutoClick + "/" + text3 + ".png"))
			{
				delay_20ms(x);
			}
			break;
		}
		case 'W':
		{
			string text5 = cmd.Substring(5, cmd.Length - 10);
			flag = ((cmd[0] != 'C') ? isDoubleClick : isClick);
			while (FindsAndClick_center(pathAutoClick + "/" + text5 + ".png", flag))
			{
				delay_20ms(x);
			}
			break;
		}
		case 'i':
		{
			string text4 = cmd.Substring(5, cmd.Length - 10);
			if (Enumerable.Count<Point>((System.Collections.Generic.IEnumerable<Point>)FindPoints_center(hWnd, pathAutoClick + "/" + text4 + ".png")) == 0)
			{
				delay_20ms(x);
			}
			break;
		}
		case 'w':
		{
			string text2 = cmd.Substring(5, cmd.Length - 10);
			while (Enumerable.Count<Point>((System.Collections.Generic.IEnumerable<Point>)FindPoints_center(hWnd, pathAutoClick + "/" + text2 + ".png")) == 0)
			{
				delay_20ms(x);
			}
			break;
		}
		case 'K':
		{
			string x2 = cmd.Substring(6, cmd.Length - 7);
			PressKey(x2);
			delay_20ms(x);
			break;
		}
		case 'A':
		{
			string[] array2 = cmd.Substring(5, cmd.Length - 6).Split(';', (StringSplitOptions)0);
			PhuToiMap2(hWnd, array2[0].Trim(), int.Parse(array2[1]), int.Parse(array2[2]));
			delay_20ms(x);
			break;
		}
		case 'T':
		{
			string[] array = cmd.Substring(5, cmd.Length - 6).Split(';', (StringSplitOptions)0);
			PhuToiMap2(hWnd, array[0].Trim(), int.Parse(array[1]), int.Parse(array[2]), team: true);
			delay_20ms(x);
			break;
		}
		case 'F':
		{
			string text = cmd.Substring(5, cmd.Length - 10);
			FindItem(hWnd, pathAutoClick + "/" + text + ".png", text);
			delay_20ms(x);
			break;
		}
		}
		SendClickUpOnPosition(hWnd, 20, 20, (EMouseKey)0);
	}

	private void Click_Point(int X, int Y, bool doubleClick)
	{
		if (doubleClick)
		{
			SendClickOnPosition(hWnd, X, Y, (EMouseKey)0);
			delay_20ms(4);
		}
		SendClickOnPosition(hWnd, X, Y, (EMouseKey)0);
	}

	private bool FindsAndClick_center(string img, bool doubleClick)
	{
		//IL_006e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0073: Unknown result type (might be due to invalid IL or missing references)
		//IL_007e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0083: Unknown result type (might be due to invalid IL or missing references)
		//IL_0036: Unknown result type (might be due to invalid IL or missing references)
		//IL_003b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0046: Unknown result type (might be due to invalid IL or missing references)
		//IL_004b: Unknown result type (might be due to invalid IL or missing references)
		List<Point> val = FindPoints_center(hWnd, img);
		if (val.Count != 0)
		{
			for (int i = 0; i < val.Count; i++)
			{
				Point val2;
				if (doubleClick)
				{
					System.IntPtr controlHandle = hWnd;
					val2 = val[i];
					int x = ((Point)(ref val2)).X;
					val2 = val[i];
					SendClickOnPosition(controlHandle, x, ((Point)(ref val2)).Y, (EMouseKey)0);
					delay_20ms(5);
				}
				System.IntPtr controlHandle2 = hWnd;
				val2 = val[i];
				int x2 = ((Point)(ref val2)).X;
				val2 = val[i];
				SendClickOnPosition(controlHandle2, x2, ((Point)(ref val2)).Y, (EMouseKey)0);
				delay_20ms(5);
				AutoControl.SendClickUpOnPosition(hWnd, 10, -20, (EMouseKey)0, 1);
			}
			return true;
		}
		return false;
	}

	private static List<Point>? FindPoints_center(System.IntPtr hWnd, string pathCanTim)
	{
		//IL_0010: Unknown result type (might be due to invalid IL or missing references)
		//IL_0024: Expected O, but got Unknown
		//IL_003c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0041: Unknown result type (might be due to invalid IL or missing references)
		//IL_0047: Unknown result type (might be due to invalid IL or missing references)
		//IL_004c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0071: Unknown result type (might be due to invalid IL or missing references)
		Image val = CaptureHelper.CaptureWindow(hWnd);
		Bitmap image = ImageScanOpenCV.GetImage(pathCanTim);
		List<Point> val2 = ImageScanOpenCV.FindOutPoints((Bitmap)val, image, 0.9);
		if (val2.Count != 0)
		{
			List<Point> val3 = new List<Point>();
			Enumerator<Point> enumerator = val2.GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					Point current = enumerator.Current;
					val3.Add(new Point(((Point)(ref current)).X + ((Image)image).Width / 2, ((Point)(ref current)).Y + ((Image)image).Height / 2));
				}
			}
			finally
			{
				((System.IDisposable)enumerator/*cast due to .constrained prefix*/).Dispose();
			}
			return val3;
		}
		return val2;
	}

	private void checkBoxAutoClick_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBoxAutoClick.Checked)
		{
			checkBoxXuQue.CheckState = (CheckState)0;
			checkBoxMaTam.CheckState = (CheckState)0;
		}
	}

	private void checkBoxXuQue_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBoxXuQue.Checked)
		{
			checkBoxAutoClick.CheckState = (CheckState)0;
			checkBoxMaTam.CheckState = (CheckState)0;
		}
	}

	private void checkBoxXQT_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBoxXQT.Checked)
		{
			checkBoxXQV.CheckState = (CheckState)0;
		}
	}

	private void checkBoxXQV_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBoxXQV.Checked)
		{
			checkBoxXQT.CheckState = (CheckState)0;
		}
	}

	private void checkBoxPGT_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBoxPGT.Checked)
		{
			checkBoxPGH.CheckState = (CheckState)0;
		}
	}

	private void checkBoxPGH_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBoxPGH.Checked)
		{
			checkBoxPGT.CheckState = (CheckState)0;
		}
	}

	private void button11_Click(object sender, EventArgs e)
	{
		//IL_003d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0042: Unknown result type (might be due to invalid IL or missing references)
		comboBoxFile.Items.Clear();
		string[] files = Directory.GetFiles(pathAutoClick + "/CMD", "*.txt");
		List<string> val = new List<string>();
		val.AddRange((System.Collections.Generic.IEnumerable<string>)files);
		Enumerator<string> enumerator = val.GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				string current = enumerator.Current;
				string text = current.Substring((pathAutoClick + "/CMD").Length + 1, current.Length - (pathAutoClick + "/CMD").Length - 5);
				if (!text.Contains(charError[1]))
				{
					comboBoxFile.Items.Add((object)text);
				}
			}
		}
		finally
		{
			((System.IDisposable)enumerator/*cast due to .constrained prefix*/).Dispose();
		}
	}

	private void ButtonRunAuto_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_00a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_007f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0089: Expected O, but got Unknown
		if (ButtonRunAuto.Checked)
		{
			((Control)ButtonRunAuto).BackColor = Color.Green;
			((Control)ButtonRunAuto).Text = "Stop";
			((Control)buttonPause).Enabled = true;
			((Control)groupBox6).Enabled = false;
			((Control)groupBox3).Enabled = false;
			((Control)groupBox2).Enabled = false;
			((Control)checkBoxMaTam).Enabled = false;
			T_Click = new System.Threading.Tasks.Task((Action)([CompilerGenerated] () =>
			{
				IsStop_Click = false;
				while (!IsStop_Click)
				{
					if (checkBoxAutoClick.Checked)
					{
						do
						{
							run_autoClick();
						}
						while (checkBoxLoop.Checked);
						IsStop_Click = true;
					}
					else if (checkBoxXuQue.Checked)
					{
						XuQue();
					}
					else if (checkBoxMaTam.Checked)
					{
						MaTam();
					}
				}
			}));
			T_Click.Start();
		}
		else
		{
			((Control)ButtonRunAuto).BackColor = Control.DefaultBackColor;
			((Control)ButtonRunAuto).Text = "Start";
			((Control)buttonPause).Enabled = false;
			((Control)groupBox6).Enabled = true;
			((Control)groupBox3).Enabled = true;
			((Control)groupBox2).Enabled = true;
			((Control)checkBoxMaTam).Enabled = true;
			IsStop_Click = true;
		}
	}

	private void buttonPause_Click(object sender, EventArgs e)
	{
		if (IsPause_click)
		{
			IsPause_click = false;
			((Control)buttonPause).Text = "Pause";
			((Control)groupBox6).Enabled = false;
			((Control)groupBox3).Enabled = false;
			((Control)groupBox2).Enabled = false;
			((Control)checkBoxMaTam).Enabled = false;
		}
		else
		{
			IsPause_click = true;
			((Control)buttonPause).Text = "Next";
			((Control)groupBox6).Enabled = true;
			((Control)groupBox3).Enabled = true;
			((Control)groupBox2).Enabled = true;
			((Control)checkBoxMaTam).Enabled = true;
		}
	}

	private void button2_Click(object sender, EventArgs e)
	{
		//IL_0003: Unknown result type (might be due to invalid IL or missing references)
		//IL_000f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		//IL_001c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0022: Unknown result type (might be due to invalid IL or missing references)
		RECT val = default(RECT);
		val = AutoControl.GetWindowRect(hWnd);
		SetWindowPos(hWnd, 0, val.Left, val.Top, 533, 362, 2);
	}

	private void button10_Click(object sender, EventArgs e)
	{
		//IL_0003: Unknown result type (might be due to invalid IL or missing references)
		//IL_000f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		//IL_001c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0022: Unknown result type (might be due to invalid IL or missing references)
		RECT val = default(RECT);
		val = AutoControl.GetWindowRect(hWnd);
		SetWindowPos(hWnd, 0, val.Left, val.Top, 1066, 724, 2);
	}

	private void XuQue()
	{
		//IL_0198: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ad: Expected O, but got Unknown
		//IL_01c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_01cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d8: Unknown result type (might be due to invalid IL or missing references)
		//IL_01dd: Unknown result type (might be due to invalid IL or missing references)
		if (checkBoxXQV.Checked)
		{
			SendClickOnPosition(hWnd, 684, 493, (EMouseKey)0);
			PressKey_tele(hWnd, "ESC");
			if (checkBoxPGT.Checked)
			{
				SendClickOnPosition(hWnd, 907, 494, (EMouseKey)0);
				delay_20ms(50);
			}
			else
			{
				if (!checkBoxPGH.Checked)
				{
					return;
				}
				SendClickOnPosition(hWnd, 907, 494, (EMouseKey)0);
				delay_20ms(50);
				while (true)
				{
					SendClickOnPosition(hWnd, 213, 225, (EMouseKey)0);
					delay_20ms(10);
					if (FindPoint(hWnd, pathKhac + "/Auto_Co.png").HasValue)
					{
						PressKey_tele(hWnd, "Enter");
						continue;
					}
					break;
				}
			}
		}
		else
		{
			if (!checkBoxXQT.Checked)
			{
				return;
			}
			do
			{
				Image val = CaptureHelper.CaptureWindow(hWnd);
				for (int num = 5; num > 0; num--)
				{
					if (num == 1)
					{
						SendClickOnPosition(hWnd, 189, 584, (EMouseKey)0);
						delay_20ms(25);
						break;
					}
					Bitmap image = ImageScanOpenCV.GetImage(pathKhac + "/XuQue" + num + ".png");
					Point? val2 = ImageScanOpenCV.FindOutPoint((Bitmap)val, image, 0.9);
					if (val2.HasValue)
					{
						System.IntPtr controlHandle = hWnd;
						Point value = val2.Value;
						int x = ((Point)(ref value)).X + 5;
						value = val2.Value;
						SendClickOnPosition(controlHandle, x, ((Point)(ref value)).Y + 5, (EMouseKey)0);
						if (num != 5)
						{
							delay_20ms(25);
							break;
						}
						delay_20ms(25);
					}
				}
				SendClickUpOnPosition(hWnd, 20, 50, (EMouseKey)0);
				delay_20ms(25);
			}
			while (!FindPoint(hWnd, pathKhac + "/XuQueHet.png").HasValue);
			PressKey_tele(hWnd, "ESC");
			if (checkBoxPGT.Checked)
			{
				int num2 = 0;
				int num3 = 0;
				for (int i = 0; i < 14; i++)
				{
					SendClickOnPosition(hWnd, 213 + 115 * num2, 225 + 115 * num3, (EMouseKey)0);
					delay_20ms(25);
					if (FindPoint(hWnd, pathKhac + "/XuQueDB.png").HasValue)
					{
						PressKey_tele(hWnd, "ESC");
						num2++;
						if (num2 == 7)
						{
							num2 = 0;
							num3 = 1;
						}
					}
				}
			}
			else if (checkBoxPGH.Checked)
			{
				int num4 = 0;
				int num5 = 0;
				for (int j = 0; j < 14; j++)
				{
					SendClickOnPosition(hWnd, 213 + 115 * num4, 225 + 115 * num5, (EMouseKey)0);
					delay_20ms(25);
					PressKey_tele(hWnd, "Enter");
				}
			}
		}
	}

	private void MaTam()
	{
		GetWindowThreadProcessId(hWnd, out var processId);
		WriteMemoryData_Int(processId, myPointer_MaTam, offset_MaTam, 1);
	}

	private void button12_Click(object sender, EventArgs e)
	{
		//IL_0023: Unknown result type (might be due to invalid IL or missing references)
		if (hWnd == System.IntPtr.Zero)
		{
			MessageBox.Show("Không Tìm Thấy Flash", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)48);
			return;
		}
		GetWindowThreadProcessId(hWnd, out var processId);
		int num = 0;
		int num2 = 0;
		try
		{
			num = (int)ReadMemoryData(processId, myPointer, offset_ToaDoX) / 10;
			num2 = (int)ReadMemoryData(processId, myPointer, offset_ToaDoY) / 10;
		}
		catch (System.Exception)
		{
		}
		dataGridView1.Rows.Add(new object[4]
		{
			checkTenMap(),
			num.ToString(),
			num2.ToString(),
			" "
		});
	}

	private void checkBoxMaTam_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBoxMaTam.Checked)
		{
			checkBoxAutoClick.CheckState = (CheckState)0;
			checkBoxXuQue.CheckState = (CheckState)0;
		}
	}

	private void button15_Click(object sender, EventArgs e)
	{
		//IL_008a: Unknown result type (might be due to invalid IL or missing references)
		//IL_00cc: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d3: Expected O, but got Unknown
		//IL_00f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0147: Unknown result type (might be due to invalid IL or missing references)
		//IL_014d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0168: Unknown result type (might be due to invalid IL or missing references)
		//IL_016e: Unknown result type (might be due to invalid IL or missing references)
		//IL_028b: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d8: Unknown result type (might be due to invalid IL or missing references)
		//IL_01dd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0229: Unknown result type (might be due to invalid IL or missing references)
		//IL_022f: Unknown result type (might be due to invalid IL or missing references)
		//IL_024a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0250: Unknown result type (might be due to invalid IL or missing references)
		string[] array = new string[4]
		{
			string.Concat(new string[5]
			{
				"BMx-Tool VPT [v",
				Program.AppMain.version,
				"-",
				Settings.Default.NameTool,
				"]"
			}),
			"[BMx v" + Program.AppMain.version + "] Tiện Ích",
			"BMx-Tool VPT [v" + Program.AppMain.version + "] - Cài Đặt",
			"[BMx v" + Program.AppMain.version + "] Click"
		};
		RECT val = default(RECT);
		System.IntPtr zero = System.IntPtr.Zero;
		Process[] processesByName = Process.GetProcessesByName("FlashGame");
		Process[] processesByName2 = Process.GetProcessesByName("BMxTool");
		TextWriter val2 = (TextWriter)new StreamWriter(linkApp + "/Anh/System/Data2/" + ((Control)comboBox13).Text + ".txt");
		Process[] array2 = processesByName;
		foreach (Process val3 in array2)
		{
			zero = FindWindowHandle(null, val3.MainWindowTitle);
			val = AutoControl.GetWindowRect(zero);
			val2.WriteLine(string.Concat(new string[9]
			{
				val3.MainWindowTitle,
				"\t",
				val.Left.ToString(),
				"\t",
				val.Top.ToString(),
				"\t",
				(val.Right - val.Left).ToString(),
				"\t",
				(val.Bottom - val.Top).ToString()
			}));
		}
		Process[] array3 = processesByName2;
		foreach (Process val4 in array3)
		{
			string mainWindowTitle = val4.MainWindowTitle;
			if (!Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)array, mainWindowTitle))
			{
				zero = FindWindowHandle(null, mainWindowTitle);
				val = AutoControl.GetWindowRect(zero);
				val2.WriteLine(string.Concat(new string[9]
				{
					val4.MainWindowTitle,
					"\t",
					val.Left.ToString(),
					"\t",
					val.Top.ToString(),
					"\t",
					(val.Right - val.Left).ToString(),
					"\t",
					(val.Bottom - val.Top).ToString()
				}));
			}
		}
		val2.Close();
		MessageBox.Show("Đa\u0303 Lưu");
	}

	private void button14_Click(object sender, EventArgs e)
	{
		//IL_0003: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b1: Unknown result type (might be due to invalid IL or missing references)
		RECT val = default(RECT);
		System.IntPtr zero = System.IntPtr.Zero;
		Process[] processesByName = Process.GetProcessesByName("FlashGame");
		Process[] processesByName2 = Process.GetProcessesByName("BMxTool");
		if (File.Exists(linkApp + "/Anh/System/Data2/" + ((Control)comboBox13).Text + ".txt"))
		{
			string[] array = File.ReadAllLines(linkApp + "/Anh/System/Data2/" + ((Control)comboBox13).Text + ".txt");
			string[] array2 = array;
			foreach (string text in array2)
			{
				string[] array3 = text.Split('\t', (StringSplitOptions)0);
				Process[] array4 = processesByName;
				foreach (Process val2 in array4)
				{
					if (val2.MainWindowTitle == array3[0])
					{
						zero = FindWindowHandle(null, array3[0]);
						SetWindowPos(zero, 0, int.Parse(array3[1]), int.Parse(array3[2]), int.Parse(array3[3]), int.Parse(array3[4]), 32);
						break;
					}
				}
				Process[] array5 = processesByName2;
				foreach (Process val3 in array5)
				{
					if (val3.MainWindowTitle == array3[0])
					{
						zero = FindWindowHandle(null, array3[0]);
						SetWindowPos(zero, 0, int.Parse(array3[1]), int.Parse(array3[2]), int.Parse(array3[3]), int.Parse(array3[4]), 32);
						break;
					}
				}
			}
		}
		else
		{
			MessageBox.Show("Không tìm thấy File " + ((Control)comboBox13).Text, "err", (MessageBoxButtons)0, (MessageBoxIcon)16);
		}
	}

	private void button16_Click(object sender, EventArgs e)
	{
		//IL_001e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0023: Unknown result type (might be due to invalid IL or missing references)
		//IL_0024: Unknown result type (might be due to invalid IL or missing references)
		//IL_0026: Invalid comparison between Unknown and I4
		//IL_0057: Unknown result type (might be due to invalid IL or missing references)
		DialogResult val = MessageBox.Show("Xóa File " + ((Control)comboBox13).Text, "AutoClick", (MessageBoxButtons)4, (MessageBoxIcon)32);
		if ((int)val == 6)
		{
			File.Delete(linkApp + "/Anh/System/Data2/" + ((Control)comboBox13).Text + ".txt");
			MessageBox.Show("Đã Xóa");
		}
	}

	private void button17_Click(object sender, EventArgs e)
	{
		//IL_0003: Unknown result type (might be due to invalid IL or missing references)
		//IL_0147: Unknown result type (might be due to invalid IL or missing references)
		RECT val = default(RECT);
		System.IntPtr zero = System.IntPtr.Zero;
		Process[] processesByName = Process.GetProcessesByName("FlashGame");
		string text = "";
		bool flag = false;
		if (File.Exists(linkApp + "/Anh/System/Data2/" + ((Control)comboBox13).Text + ".txt"))
		{
			string[] array = File.ReadAllLines(linkApp + "/Anh/System/Data2/" + ((Control)comboBox13).Text + ".txt");
			string[] array2 = array;
			foreach (string text2 in array2)
			{
				string[] array3 = text2.Split('\t', (StringSplitOptions)0);
				Process[] array4 = processesByName;
				foreach (Process val2 in array4)
				{
					if (val2.MainWindowTitle == array3[0])
					{
						zero = FindWindowHandle(null, array3[0]);
						SetWindowPos(zero, 0, 20, 20, 1066, 724, 32);
						flag = false;
						break;
					}
					flag = true;
				}
				if (flag)
				{
					text = text + text2 + "\r\n";
				}
			}
		}
		else
		{
			MessageBox.Show("Không tìm thấy File " + ((Control)comboBox13).Text, "err", (MessageBoxButtons)0, (MessageBoxIcon)16);
		}
	}

	private void button18_Click(object sender, EventArgs e)
	{
		try
		{
			ResetHWND(((Control)comboBox3).Text);
			ResetHWND(((Control)comboBox4).Text);
			ResetHWND(((Control)comboBox5).Text);
			ResetHWND(((Control)comboBox6).Text);
			ResetHWND(((Control)comboBox7).Text);
			ResetHWND(((Control)comboBox8).Text);
			ResetHWND(((Control)comboBox9).Text);
			ResetHWND(((Control)comboBox10).Text);
			ResetHWND(((Control)comboBox11).Text);
			ResetHWND(((Control)comboBox12).Text);
		}
		catch (System.Exception)
		{
		}
	}

	private void tabControl1_Selected(object sender, TabControlEventArgs e)
	{
		//IL_005c: Unknown result type (might be due to invalid IL or missing references)
		//IL_009d: Unknown result type (might be due to invalid IL or missing references)
		string text = ((Control)tabControl1.SelectedTab).Text;
		string text2 = text;
		string text3 = text2;
		if (text3 == "Khác")
		{
			((Control)label3).Visible = false;
			((Control)label10).Visible = false;
			((Control)dataGridView1).Visible = false;
			((Control)tabControl1).Size = new Size(501, 368);
		}
		else
		{
			((Control)label3).Visible = true;
			((Control)label10).Visible = true;
			((Control)dataGridView1).Visible = true;
			((Control)tabControl1).Size = new Size(501, 94);
		}
	}

	private void checkBox2_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBox2.Checked)
		{
			checkBox4.CheckState = (CheckState)0;
		}
	}

	private void checkBox4_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBox4.Checked)
		{
			checkBox2.CheckState = (CheckState)0;
			((TextBoxBase)textBox3).ReadOnly = false;
			((Control)textBox3).Text = ((Control)textBox3).Text;
		}
		else
		{
			((TextBoxBase)textBox3).ReadOnly = true;
		}
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

	private void timer1_Tick(object sender, EventArgs e)
	{
		if (((Control)tabControl2.SelectedTab).Text == "Combo Xa\u0323 Thu\u0309")
		{
			if (!checkBox3.Checked)
			{
				return;
			}
			try
			{
				if (processID2 != 0)
				{
					int num = (int)ReadMemoryData(processID2, myPointer2, offset_MP);
					if (num < 99999 && num > 0 && num != MP_nv)
					{
						MP_nv = num;
						((Control)textBox2).Text = MP_nv.ToString();
						TinhManaSkill(MP_nv);
					}
				}
				return;
			}
			catch (System.Exception)
			{
				return;
			}
		}
		if (checkBox2.Checked)
		{
			if (hWnd == System.IntPtr.Zero)
			{
				return;
			}
			if (tenMapHienTai == checkTenMap())
			{
				((Control)label3).Text = checkIDMap().ToString();
				return;
			}
			tenMapHienTai = checkTenMap();
			if (!File.Exists(Application.StartupPath + "/Anh/System/Data1/1.txt"))
			{
				return;
			}
			dataGridView1.Rows.Clear();
			string[] array = File.ReadAllLines(Application.StartupPath + "/Anh/System/Data1/1.txt");
			string[] array2 = array;
			foreach (string text in array2)
			{
				string[] array3 = text.Split('\t', (StringSplitOptions)0);
				if (array3[0].ToLower().CompareTo(tenMapHienTai.ToLower()) == 0)
				{
					dataGridView1.Rows.Add(new object[4]
					{
						array3[0],
						array3[1],
						array3[2],
						array3[3]
					});
				}
			}
		}
		else if (checkBox4.Checked && !(hWnd == System.IntPtr.Zero) && !(tenNPCHienTai == ((Control)textBox3).Text))
		{
			tenNPCHienTai = ((Control)textBox3).Text;
			TimKiem2(tenNPCHienTai);
		}
	}

	private void TimKiem2(string text)
	{
		//IL_0032: Unknown result type (might be due to invalid IL or missing references)
		//IL_0038: Expected O, but got Unknown
		dataGridView1.Rows.Clear();
		string text2 = "";
		Regex val = new Regex("(?:" + text.Trim().ToLower() + ")");
		for (int i = 0; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)dataFind); i++)
		{
			string[] array = dataFind[i].Trim().Split('\t', (StringSplitOptions)0);
			text2 = array[0].Trim().ToLower();
			if (array[0].Trim().ToLower().IndexOf(text.Trim().ToLower()) > -1)
			{
				dataGridView1.Rows.Add(new object[4]
				{
					array[0],
					array[1],
					array[2],
					array[3]
				});
			}
			else if (array[3].Trim().ToLower().IndexOf(text.Trim().ToLower()) > -1)
			{
				dataGridView1.Rows.Add(new object[4]
				{
					array[0],
					array[1],
					array[2],
					array[3]
				});
			}
		}
	}

	private void button13_Click(object sender, EventArgs e)
	{
		//IL_0023: Unknown result type (might be due to invalid IL or missing references)
		if (hWnd == System.IntPtr.Zero)
		{
			MessageBox.Show("Không Tìm Thấy Flash", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)48);
		}
		else
		{
			PhuToiMap2(hWnd, ((Control)comboBox1).Text);
		}
	}

	private void tabControl2_Selected(object sender, TabControlEventArgs e)
	{
		string text = ((Control)tabControl2.SelectedTab).Text;
		string text2 = text;
		string text3 = text2;
		if (text3 == "Combo Xa\u0323 Thu\u0309")
		{
			checkBox7.CheckState = (CheckState)0;
		}
	}

	private void button20_Click(object sender, EventArgs e)
	{
		MP_nv = int.Parse(((Control)textBox1).Text);
		int mana = MP_nv % 3;
		TinhManaSkill(mana);
	}

	private void buttonReset_Click(object sender, EventArgs e)
	{
		//IL_0022: Unknown result type (might be due to invalid IL or missing references)
		//IL_0029: Unknown result type (might be due to invalid IL or missing references)
		//IL_002e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0031: Unknown result type (might be due to invalid IL or missing references)
		//IL_0037: Unknown result type (might be due to invalid IL or missing references)
		//IL_0057: Unknown result type (might be due to invalid IL or missing references)
		//IL_008c: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e1: Unknown result type (might be due to invalid IL or missing references)
		System.IntPtr intPtr = FindWindowHandle(null, ((Control)comboBox14).Text);
		GetWindowThreadProcessId(intPtr, out processID2);
		RECT val = default(RECT);
		val = AutoControl.GetWindowRect(intPtr);
		SetWindowPos(intPtr, 0, val.Left, val.Top, 1066, 724, 2);
		Image val2 = CaptureHelper.CaptureWindow(intPtr);
		Rectangle val3 = default(Rectangle);
		((Rectangle)(ref val3)).X = 13;
		((Rectangle)(ref val3)).Y = 49;
		((Rectangle)(ref val3)).Width = 54;
		((Rectangle)(ref val3)).Height = 52;
		pictureBox1.Image = (Image)(object)CaptureHelper.CropImage(val2, val3);
		if (WriteMemoryData(processID2, myPointer, offset_FPS, (double)numericUpDown1.Value))
		{
			AutoControl.SendClickOnPosition(intPtr, 58, 406, (EMouseKey)0, 1);
			Thread.Sleep(TimeSpan.FromSeconds(0.1));
			AutoControl.SendClickOnPosition(intPtr, 58, 470, (EMouseKey)0, 1);
		}
	}

	private void checkBox3_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBox3.Checked)
		{
			((TextBoxBase)textBox2).ReadOnly = true;
			((Control)button20).Enabled = false;
		}
		else
		{
			((TextBoxBase)textBox2).ReadOnly = false;
			((Control)button20).Enabled = true;
		}
	}

	private void checkBox5_CheckedChanged(object sender, EventArgs e)
	{
		//IL_0166: Unknown result type (might be due to invalid IL or missing references)
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		if (checkBox5.Checked)
		{
			((Control)checkBox5).BackColor = Color.Green;
			try
			{
				ChuyenKenh(((Control)comboBox3).Text, ((Control)comboBox15).Text);
				ChuyenKenh(((Control)comboBox4).Text, ((Control)comboBox15).Text);
				ChuyenKenh(((Control)comboBox5).Text, ((Control)comboBox15).Text);
				ChuyenKenh(((Control)comboBox6).Text, ((Control)comboBox15).Text);
				ChuyenKenh(((Control)comboBox7).Text, ((Control)comboBox15).Text);
				ChuyenKenh(((Control)comboBox8).Text, ((Control)comboBox15).Text);
				ChuyenKenh(((Control)comboBox9).Text, ((Control)comboBox15).Text);
				ChuyenKenh(((Control)comboBox10).Text, ((Control)comboBox15).Text);
				ChuyenKenh(((Control)comboBox11).Text, ((Control)comboBox15).Text);
				ChuyenKenh(((Control)comboBox12).Text, ((Control)comboBox15).Text);
			}
			catch (System.Exception)
			{
				return;
			}
			checkBox5.CheckState = (CheckState)0;
		}
		else
		{
			((Control)checkBox5).BackColor = Control.DefaultBackColor;
		}
	}

	private void checkBox6_CheckedChanged(object sender, EventArgs e)
	{
		//IL_0054: Unknown result type (might be due to invalid IL or missing references)
		//IL_0017: Unknown result type (might be due to invalid IL or missing references)
		if (checkBox6.Checked)
		{
			((Control)checkBox6).BackColor = Color.Green;
			try
			{
				string text = ChuyenKenh(null, ((Control)comboBox15).Text);
			}
			catch (System.Exception)
			{
				return;
			}
			checkBox6.CheckState = (CheckState)0;
		}
		else
		{
			((Control)checkBox6).BackColor = Control.DefaultBackColor;
		}
	}

	private void button21_Click(object sender, EventArgs e)
	{
		try
		{
			ReSize(((Control)comboBox3).Text, mini: true);
			ReSize(((Control)comboBox4).Text, mini: true);
			ReSize(((Control)comboBox5).Text, mini: true);
			ReSize(((Control)comboBox6).Text, mini: true);
			ReSize(((Control)comboBox7).Text, mini: true);
			ReSize(((Control)comboBox8).Text, mini: true);
			ReSize(((Control)comboBox9).Text, mini: true);
			ReSize(((Control)comboBox10).Text, mini: true);
			ReSize(((Control)comboBox11).Text, mini: true);
			ReSize(((Control)comboBox12).Text, mini: true);
		}
		catch (System.Exception)
		{
		}
	}

	private void button22_Click(object sender, EventArgs e)
	{
		try
		{
			ReSize(((Control)comboBox3).Text);
			ReSize(((Control)comboBox4).Text);
			ReSize(((Control)comboBox5).Text);
			ReSize(((Control)comboBox6).Text);
			ReSize(((Control)comboBox7).Text);
			ReSize(((Control)comboBox8).Text);
			ReSize(((Control)comboBox9).Text);
			ReSize(((Control)comboBox10).Text);
			ReSize(((Control)comboBox11).Text);
			ReSize(((Control)comboBox12).Text);
		}
		catch (System.Exception)
		{
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
		//IL_013b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0145: Expected O, but got Unknown
		//IL_0146: Unknown result type (might be due to invalid IL or missing references)
		//IL_0150: Expected O, but got Unknown
		//IL_0151: Unknown result type (might be due to invalid IL or missing references)
		//IL_015b: Expected O, but got Unknown
		//IL_015c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0166: Expected O, but got Unknown
		//IL_0167: Unknown result type (might be due to invalid IL or missing references)
		//IL_0171: Expected O, but got Unknown
		//IL_0172: Unknown result type (might be due to invalid IL or missing references)
		//IL_017c: Expected O, but got Unknown
		//IL_017d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0187: Expected O, but got Unknown
		//IL_0188: Unknown result type (might be due to invalid IL or missing references)
		//IL_0192: Expected O, but got Unknown
		//IL_0193: Unknown result type (might be due to invalid IL or missing references)
		//IL_019d: Expected O, but got Unknown
		//IL_019e: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a8: Expected O, but got Unknown
		//IL_01a9: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b3: Expected O, but got Unknown
		//IL_01b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_01be: Expected O, but got Unknown
		//IL_01bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c9: Expected O, but got Unknown
		//IL_01ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d4: Expected O, but got Unknown
		//IL_01d5: Unknown result type (might be due to invalid IL or missing references)
		//IL_01df: Expected O, but got Unknown
		//IL_01e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ea: Expected O, but got Unknown
		//IL_01eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f5: Expected O, but got Unknown
		//IL_01f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0200: Expected O, but got Unknown
		//IL_0201: Unknown result type (might be due to invalid IL or missing references)
		//IL_020b: Expected O, but got Unknown
		//IL_020c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0216: Expected O, but got Unknown
		//IL_0217: Unknown result type (might be due to invalid IL or missing references)
		//IL_0221: Expected O, but got Unknown
		//IL_0222: Unknown result type (might be due to invalid IL or missing references)
		//IL_022c: Expected O, but got Unknown
		//IL_022d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0237: Expected O, but got Unknown
		//IL_0238: Unknown result type (might be due to invalid IL or missing references)
		//IL_0242: Expected O, but got Unknown
		//IL_0243: Unknown result type (might be due to invalid IL or missing references)
		//IL_024d: Expected O, but got Unknown
		//IL_024e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0258: Expected O, but got Unknown
		//IL_0259: Unknown result type (might be due to invalid IL or missing references)
		//IL_0263: Expected O, but got Unknown
		//IL_0264: Unknown result type (might be due to invalid IL or missing references)
		//IL_026e: Expected O, but got Unknown
		//IL_026f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0279: Expected O, but got Unknown
		//IL_027a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0284: Expected O, but got Unknown
		//IL_0285: Unknown result type (might be due to invalid IL or missing references)
		//IL_028f: Expected O, but got Unknown
		//IL_0290: Unknown result type (might be due to invalid IL or missing references)
		//IL_029a: Expected O, but got Unknown
		//IL_029b: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a5: Expected O, but got Unknown
		//IL_02a6: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b0: Expected O, but got Unknown
		//IL_02b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_02bb: Expected O, but got Unknown
		//IL_02bc: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c6: Expected O, but got Unknown
		//IL_02c7: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d1: Expected O, but got Unknown
		//IL_02d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_02dc: Expected O, but got Unknown
		//IL_02dd: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e7: Expected O, but got Unknown
		//IL_02e8: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f2: Expected O, but got Unknown
		//IL_02f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_02fd: Expected O, but got Unknown
		//IL_02fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_0308: Expected O, but got Unknown
		//IL_0309: Unknown result type (might be due to invalid IL or missing references)
		//IL_0313: Expected O, but got Unknown
		//IL_0314: Unknown result type (might be due to invalid IL or missing references)
		//IL_031e: Expected O, but got Unknown
		//IL_031f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0329: Expected O, but got Unknown
		//IL_032a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0334: Expected O, but got Unknown
		//IL_033b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0345: Expected O, but got Unknown
		//IL_0346: Unknown result type (might be due to invalid IL or missing references)
		//IL_0350: Expected O, but got Unknown
		//IL_0351: Unknown result type (might be due to invalid IL or missing references)
		//IL_035b: Expected O, but got Unknown
		//IL_035c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0366: Expected O, but got Unknown
		//IL_0367: Unknown result type (might be due to invalid IL or missing references)
		//IL_0371: Expected O, but got Unknown
		//IL_0372: Unknown result type (might be due to invalid IL or missing references)
		//IL_037c: Expected O, but got Unknown
		//IL_037d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0387: Expected O, but got Unknown
		//IL_0388: Unknown result type (might be due to invalid IL or missing references)
		//IL_0392: Expected O, but got Unknown
		//IL_0393: Unknown result type (might be due to invalid IL or missing references)
		//IL_039d: Expected O, but got Unknown
		//IL_039e: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a8: Expected O, but got Unknown
		//IL_03a9: Unknown result type (might be due to invalid IL or missing references)
		//IL_03b3: Expected O, but got Unknown
		//IL_03b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_03be: Expected O, but got Unknown
		//IL_03bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_03c9: Expected O, but got Unknown
		//IL_03ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_03d4: Expected O, but got Unknown
		//IL_03d5: Unknown result type (might be due to invalid IL or missing references)
		//IL_03df: Expected O, but got Unknown
		//IL_03e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ea: Expected O, but got Unknown
		//IL_03eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_03f5: Expected O, but got Unknown
		//IL_03f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0400: Expected O, but got Unknown
		//IL_0401: Unknown result type (might be due to invalid IL or missing references)
		//IL_040b: Expected O, but got Unknown
		//IL_040c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0416: Expected O, but got Unknown
		//IL_0417: Unknown result type (might be due to invalid IL or missing references)
		//IL_0421: Expected O, but got Unknown
		//IL_0422: Unknown result type (might be due to invalid IL or missing references)
		//IL_042c: Expected O, but got Unknown
		//IL_042d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0437: Expected O, but got Unknown
		//IL_0438: Unknown result type (might be due to invalid IL or missing references)
		//IL_0442: Expected O, but got Unknown
		//IL_0443: Unknown result type (might be due to invalid IL or missing references)
		//IL_044d: Expected O, but got Unknown
		//IL_044e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0458: Expected O, but got Unknown
		//IL_0459: Unknown result type (might be due to invalid IL or missing references)
		//IL_0463: Expected O, but got Unknown
		//IL_0464: Unknown result type (might be due to invalid IL or missing references)
		//IL_046e: Expected O, but got Unknown
		//IL_046f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0479: Expected O, but got Unknown
		//IL_047a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0484: Expected O, but got Unknown
		//IL_0485: Unknown result type (might be due to invalid IL or missing references)
		//IL_048f: Expected O, but got Unknown
		//IL_0490: Unknown result type (might be due to invalid IL or missing references)
		//IL_049a: Expected O, but got Unknown
		//IL_049b: Unknown result type (might be due to invalid IL or missing references)
		//IL_04a5: Expected O, but got Unknown
		//IL_04a6: Unknown result type (might be due to invalid IL or missing references)
		//IL_04b0: Expected O, but got Unknown
		//IL_04b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_04bb: Expected O, but got Unknown
		//IL_04bc: Unknown result type (might be due to invalid IL or missing references)
		//IL_04c6: Expected O, but got Unknown
		//IL_04c7: Unknown result type (might be due to invalid IL or missing references)
		//IL_04d1: Expected O, but got Unknown
		//IL_04d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_04dc: Expected O, but got Unknown
		//IL_04dd: Unknown result type (might be due to invalid IL or missing references)
		//IL_04e7: Expected O, but got Unknown
		//IL_0600: Unknown result type (might be due to invalid IL or missing references)
		//IL_0626: Unknown result type (might be due to invalid IL or missing references)
		//IL_066a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0674: Expected O, but got Unknown
		//IL_0687: Unknown result type (might be due to invalid IL or missing references)
		//IL_0691: Expected O, but got Unknown
		//IL_069c: Unknown result type (might be due to invalid IL or missing references)
		//IL_06e1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0733: Unknown result type (might be due to invalid IL or missing references)
		//IL_0759: Unknown result type (might be due to invalid IL or missing references)
		//IL_0799: Unknown result type (might be due to invalid IL or missing references)
		//IL_07a3: Expected O, but got Unknown
		//IL_07be: Unknown result type (might be due to invalid IL or missing references)
		//IL_07e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0836: Unknown result type (might be due to invalid IL or missing references)
		//IL_0840: Expected O, but got Unknown
		//IL_084b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0871: Unknown result type (might be due to invalid IL or missing references)
		//IL_08b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_08be: Expected O, but got Unknown
		//IL_08c8: Unknown result type (might be due to invalid IL or missing references)
		//IL_08ee: Unknown result type (might be due to invalid IL or missing references)
		//IL_0931: Unknown result type (might be due to invalid IL or missing references)
		//IL_093b: Expected O, but got Unknown
		//IL_0946: Unknown result type (might be due to invalid IL or missing references)
		//IL_096c: Unknown result type (might be due to invalid IL or missing references)
		//IL_09af: Unknown result type (might be due to invalid IL or missing references)
		//IL_09b9: Expected O, but got Unknown
		//IL_09c3: Unknown result type (might be due to invalid IL or missing references)
		//IL_09e9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a2c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a36: Expected O, but got Unknown
		//IL_0a51: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a77: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ab7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ac1: Expected O, but got Unknown
		//IL_0adc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b02: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b42: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b4c: Expected O, but got Unknown
		//IL_0b67: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b90: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bd4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bfa: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c3a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c44: Expected O, but got Unknown
		//IL_0c5f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c88: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ccc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cf2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d32: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d3c: Expected O, but got Unknown
		//IL_0d52: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d78: Unknown result type (might be due to invalid IL or missing references)
		//IL_0daf: Unknown result type (might be due to invalid IL or missing references)
		//IL_0dd5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e18: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e22: Expected O, but got Unknown
		//IL_0e40: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e66: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ea6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0eb0: Expected O, but got Unknown
		//IL_0ec6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0eef: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f33: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f59: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f99: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fa3: Expected O, but got Unknown
		//IL_0fba: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fe3: Unknown result type (might be due to invalid IL or missing references)
		//IL_1027: Unknown result type (might be due to invalid IL or missing references)
		//IL_104d: Unknown result type (might be due to invalid IL or missing references)
		//IL_108d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1097: Expected O, but got Unknown
		//IL_10b2: Unknown result type (might be due to invalid IL or missing references)
		//IL_10db: Unknown result type (might be due to invalid IL or missing references)
		//IL_111f: Unknown result type (might be due to invalid IL or missing references)
		//IL_1148: Unknown result type (might be due to invalid IL or missing references)
		//IL_118b: Unknown result type (might be due to invalid IL or missing references)
		//IL_11b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_11f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_121d: Unknown result type (might be due to invalid IL or missing references)
		//IL_125d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1286: Unknown result type (might be due to invalid IL or missing references)
		//IL_12ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_12f0: Unknown result type (might be due to invalid IL or missing references)
		//IL_1330: Unknown result type (might be due to invalid IL or missing references)
		//IL_133a: Expected O, but got Unknown
		//IL_1351: Unknown result type (might be due to invalid IL or missing references)
		//IL_137a: Unknown result type (might be due to invalid IL or missing references)
		//IL_13be: Unknown result type (might be due to invalid IL or missing references)
		//IL_13e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_1424: Unknown result type (might be due to invalid IL or missing references)
		//IL_142e: Expected O, but got Unknown
		//IL_1449: Unknown result type (might be due to invalid IL or missing references)
		//IL_146f: Unknown result type (might be due to invalid IL or missing references)
		//IL_1513: Unknown result type (might be due to invalid IL or missing references)
		//IL_153c: Unknown result type (might be due to invalid IL or missing references)
		//IL_158a: Unknown result type (might be due to invalid IL or missing references)
		//IL_15b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_15f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_15fe: Expected O, but got Unknown
		//IL_1616: Unknown result type (might be due to invalid IL or missing references)
		//IL_163c: Unknown result type (might be due to invalid IL or missing references)
		//IL_1680: Unknown result type (might be due to invalid IL or missing references)
		//IL_168a: Expected O, but got Unknown
		//IL_16a1: Unknown result type (might be due to invalid IL or missing references)
		//IL_16c7: Unknown result type (might be due to invalid IL or missing references)
		//IL_170b: Unknown result type (might be due to invalid IL or missing references)
		//IL_1715: Expected O, but got Unknown
		//IL_172b: Unknown result type (might be due to invalid IL or missing references)
		//IL_1751: Unknown result type (might be due to invalid IL or missing references)
		//IL_1795: Unknown result type (might be due to invalid IL or missing references)
		//IL_179f: Expected O, but got Unknown
		//IL_17b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_17dc: Unknown result type (might be due to invalid IL or missing references)
		//IL_1820: Unknown result type (might be due to invalid IL or missing references)
		//IL_182a: Expected O, but got Unknown
		//IL_184f: Unknown result type (might be due to invalid IL or missing references)
		//IL_1875: Unknown result type (might be due to invalid IL or missing references)
		//IL_18b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_18c3: Expected O, but got Unknown
		//IL_18ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_18f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_1938: Unknown result type (might be due to invalid IL or missing references)
		//IL_1942: Expected O, but got Unknown
		//IL_1962: Unknown result type (might be due to invalid IL or missing references)
		//IL_196c: Expected O, but got Unknown
		//IL_197a: Unknown result type (might be due to invalid IL or missing references)
		//IL_19a3: Unknown result type (might be due to invalid IL or missing references)
		//IL_19d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_19fd: Unknown result type (might be due to invalid IL or missing references)
		//IL_1a41: Unknown result type (might be due to invalid IL or missing references)
		//IL_1a4b: Expected O, but got Unknown
		//IL_1a59: Unknown result type (might be due to invalid IL or missing references)
		//IL_1a7f: Unknown result type (might be due to invalid IL or missing references)
		//IL_1ac3: Unknown result type (might be due to invalid IL or missing references)
		//IL_1acd: Expected O, but got Unknown
		//IL_1adb: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b01: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b45: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b4f: Expected O, but got Unknown
		//IL_1bd1: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c1e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c44: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c4e: Expected O, but got Unknown
		//IL_1c5c: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c66: Expected O, but got Unknown
		//IL_1c74: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c7e: Expected O, but got Unknown
		//IL_1c8c: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c96: Expected O, but got Unknown
		//IL_1ca4: Unknown result type (might be due to invalid IL or missing references)
		//IL_1cae: Expected O, but got Unknown
		//IL_1cbc: Unknown result type (might be due to invalid IL or missing references)
		//IL_1ce2: Unknown result type (might be due to invalid IL or missing references)
		//IL_1d26: Unknown result type (might be due to invalid IL or missing references)
		//IL_1d30: Expected O, but got Unknown
		//IL_1d48: Unknown result type (might be due to invalid IL or missing references)
		//IL_1d6e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1da5: Unknown result type (might be due to invalid IL or missing references)
		//IL_1dcb: Unknown result type (might be due to invalid IL or missing references)
		//IL_1e0f: Unknown result type (might be due to invalid IL or missing references)
		//IL_1e19: Expected O, but got Unknown
		//IL_1e23: Unknown result type (might be due to invalid IL or missing references)
		//IL_1e69: Unknown result type (might be due to invalid IL or missing references)
		//IL_1e8e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1eb4: Unknown result type (might be due to invalid IL or missing references)
		//IL_1ef8: Unknown result type (might be due to invalid IL or missing references)
		//IL_1f02: Expected O, but got Unknown
		//IL_1f54: Unknown result type (might be due to invalid IL or missing references)
		//IL_1f8d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1fb3: Unknown result type (might be due to invalid IL or missing references)
		//IL_1fbd: Expected O, but got Unknown
		//IL_20ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_20d0: Unknown result type (might be due to invalid IL or missing references)
		//IL_20eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_212b: Unknown result type (might be due to invalid IL or missing references)
		//IL_2151: Unknown result type (might be due to invalid IL or missing references)
		//IL_2195: Unknown result type (might be due to invalid IL or missing references)
		//IL_219f: Expected O, but got Unknown
		//IL_21ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_21d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_2217: Unknown result type (might be due to invalid IL or missing references)
		//IL_2221: Expected O, but got Unknown
		//IL_223c: Unknown result type (might be due to invalid IL or missing references)
		//IL_2265: Unknown result type (might be due to invalid IL or missing references)
		//IL_22ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_230d: Unknown result type (might be due to invalid IL or missing references)
		//IL_2328: Unknown result type (might be due to invalid IL or missing references)
		//IL_2373: Unknown result type (might be due to invalid IL or missing references)
		//IL_239c: Unknown result type (might be due to invalid IL or missing references)
		//IL_23e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_23ea: Expected O, but got Unknown
		//IL_2401: Unknown result type (might be due to invalid IL or missing references)
		//IL_242a: Unknown result type (might be due to invalid IL or missing references)
		//IL_246e: Unknown result type (might be due to invalid IL or missing references)
		//IL_2478: Expected O, but got Unknown
		//IL_2486: Unknown result type (might be due to invalid IL or missing references)
		//IL_24bc: Unknown result type (might be due to invalid IL or missing references)
		//IL_2519: Unknown result type (might be due to invalid IL or missing references)
		//IL_253c: Unknown result type (might be due to invalid IL or missing references)
		//IL_2557: Unknown result type (might be due to invalid IL or missing references)
		//IL_2608: Unknown result type (might be due to invalid IL or missing references)
		//IL_2634: Unknown result type (might be due to invalid IL or missing references)
		//IL_2685: Unknown result type (might be due to invalid IL or missing references)
		//IL_26ab: Unknown result type (might be due to invalid IL or missing references)
		//IL_26ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_26f9: Expected O, but got Unknown
		//IL_2711: Unknown result type (might be due to invalid IL or missing references)
		//IL_2737: Unknown result type (might be due to invalid IL or missing references)
		//IL_277b: Unknown result type (might be due to invalid IL or missing references)
		//IL_2785: Expected O, but got Unknown
		//IL_279d: Unknown result type (might be due to invalid IL or missing references)
		//IL_27c3: Unknown result type (might be due to invalid IL or missing references)
		//IL_2815: Unknown result type (might be due to invalid IL or missing references)
		//IL_281f: Expected O, but got Unknown
		//IL_2885: Unknown result type (might be due to invalid IL or missing references)
		//IL_28ae: Unknown result type (might be due to invalid IL or missing references)
		//IL_28ff: Unknown result type (might be due to invalid IL or missing references)
		//IL_2925: Unknown result type (might be due to invalid IL or missing references)
		//IL_2971: Unknown result type (might be due to invalid IL or missing references)
		//IL_2997: Unknown result type (might be due to invalid IL or missing references)
		//IL_29db: Unknown result type (might be due to invalid IL or missing references)
		//IL_29e5: Expected O, but got Unknown
		//IL_29f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_2a19: Unknown result type (might be due to invalid IL or missing references)
		//IL_2a5d: Unknown result type (might be due to invalid IL or missing references)
		//IL_2a67: Expected O, but got Unknown
		//IL_2a7e: Unknown result type (might be due to invalid IL or missing references)
		//IL_2aa7: Unknown result type (might be due to invalid IL or missing references)
		//IL_2b18: Unknown result type (might be due to invalid IL or missing references)
		//IL_2b44: Unknown result type (might be due to invalid IL or missing references)
		//IL_2b9f: Unknown result type (might be due to invalid IL or missing references)
		//IL_2bc8: Unknown result type (might be due to invalid IL or missing references)
		//IL_2c08: Unknown result type (might be due to invalid IL or missing references)
		//IL_2c2e: Unknown result type (might be due to invalid IL or missing references)
		//IL_2c72: Unknown result type (might be due to invalid IL or missing references)
		//IL_2c7c: Expected O, but got Unknown
		//IL_2c86: Unknown result type (might be due to invalid IL or missing references)
		//IL_2cac: Unknown result type (might be due to invalid IL or missing references)
		//IL_2cf0: Unknown result type (might be due to invalid IL or missing references)
		//IL_2cfa: Expected O, but got Unknown
		//IL_2d14: Unknown result type (might be due to invalid IL or missing references)
		//IL_2d3a: Unknown result type (might be due to invalid IL or missing references)
		//IL_2d8f: Unknown result type (might be due to invalid IL or missing references)
		//IL_2d99: Expected O, but got Unknown
		//IL_2dd0: Unknown result type (might be due to invalid IL or missing references)
		//IL_2e09: Unknown result type (might be due to invalid IL or missing references)
		//IL_2e2f: Unknown result type (might be due to invalid IL or missing references)
		//IL_2e39: Expected O, but got Unknown
		//IL_3054: Unknown result type (might be due to invalid IL or missing references)
		//IL_3077: Unknown result type (might be due to invalid IL or missing references)
		//IL_3092: Unknown result type (might be due to invalid IL or missing references)
		//IL_3130: Unknown result type (might be due to invalid IL or missing references)
		//IL_3173: Unknown result type (might be due to invalid IL or missing references)
		//IL_31c3: Unknown result type (might be due to invalid IL or missing references)
		//IL_31e6: Unknown result type (might be due to invalid IL or missing references)
		//IL_31fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_32b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_32d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_32eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_336f: Unknown result type (might be due to invalid IL or missing references)
		//IL_3392: Unknown result type (might be due to invalid IL or missing references)
		//IL_33aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_344c: Unknown result type (might be due to invalid IL or missing references)
		//IL_3472: Unknown result type (might be due to invalid IL or missing references)
		//IL_34b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_34d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_3529: Unknown result type (might be due to invalid IL or missing references)
		//IL_3533: Expected O, but got Unknown
		//IL_354b: Unknown result type (might be due to invalid IL or missing references)
		//IL_3571: Unknown result type (might be due to invalid IL or missing references)
		//IL_35c3: Unknown result type (might be due to invalid IL or missing references)
		//IL_35cd: Expected O, but got Unknown
		//IL_3633: Unknown result type (might be due to invalid IL or missing references)
		//IL_3656: Unknown result type (might be due to invalid IL or missing references)
		//IL_366e: Unknown result type (might be due to invalid IL or missing references)
		//IL_36ae: Unknown result type (might be due to invalid IL or missing references)
		//IL_36d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_3718: Unknown result type (might be due to invalid IL or missing references)
		//IL_3722: Expected O, but got Unknown
		//IL_372d: Unknown result type (might be due to invalid IL or missing references)
		//IL_3753: Unknown result type (might be due to invalid IL or missing references)
		//IL_3797: Unknown result type (might be due to invalid IL or missing references)
		//IL_37a1: Expected O, but got Unknown
		//IL_38bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_38e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_38fd: Unknown result type (might be due to invalid IL or missing references)
		//IL_3967: Unknown result type (might be due to invalid IL or missing references)
		//IL_398d: Unknown result type (might be due to invalid IL or missing references)
		//IL_39d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_39db: Expected O, but got Unknown
		//IL_3a85: Unknown result type (might be due to invalid IL or missing references)
		//IL_3ab1: Unknown result type (might be due to invalid IL or missing references)
		//IL_3af2: Unknown result type (might be due to invalid IL or missing references)
		//IL_3b18: Unknown result type (might be due to invalid IL or missing references)
		//IL_3b5b: Unknown result type (might be due to invalid IL or missing references)
		//IL_3b65: Expected O, but got Unknown
		//IL_3b7c: Unknown result type (might be due to invalid IL or missing references)
		//IL_3ba5: Unknown result type (might be due to invalid IL or missing references)
		//IL_3be1: Unknown result type (might be due to invalid IL or missing references)
		//IL_3beb: Expected O, but got Unknown
		//IL_3bf6: Unknown result type (might be due to invalid IL or missing references)
		//IL_3c3b: Unknown result type (might be due to invalid IL or missing references)
		//IL_3c86: Unknown result type (might be due to invalid IL or missing references)
		//IL_3cac: Unknown result type (might be due to invalid IL or missing references)
		//IL_3cef: Unknown result type (might be due to invalid IL or missing references)
		//IL_3d04: Unknown result type (might be due to invalid IL or missing references)
		//IL_3d2a: Unknown result type (might be due to invalid IL or missing references)
		//IL_3d5e: Unknown result type (might be due to invalid IL or missing references)
		//IL_3d84: Unknown result type (might be due to invalid IL or missing references)
		//IL_3dc7: Unknown result type (might be due to invalid IL or missing references)
		//IL_3dd1: Expected O, but got Unknown
		//IL_3ddf: Unknown result type (might be due to invalid IL or missing references)
		//IL_3df4: Unknown result type (might be due to invalid IL or missing references)
		//IL_3e1a: Unknown result type (might be due to invalid IL or missing references)
		//IL_3e5e: Unknown result type (might be due to invalid IL or missing references)
		//IL_3e68: Expected O, but got Unknown
		//IL_3e76: Unknown result type (might be due to invalid IL or missing references)
		//IL_3e8b: Unknown result type (might be due to invalid IL or missing references)
		//IL_3ebe: Unknown result type (might be due to invalid IL or missing references)
		//IL_3ef5: Unknown result type (might be due to invalid IL or missing references)
		//IL_3eff: Expected O, but got Unknown
		//IL_3f0c: Unknown result type (might be due to invalid IL or missing references)
		//IL_3f21: Unknown result type (might be due to invalid IL or missing references)
		//IL_3f47: Unknown result type (might be due to invalid IL or missing references)
		//IL_3f90: Unknown result type (might be due to invalid IL or missing references)
		//IL_3f9a: Expected O, but got Unknown
		//IL_3fa8: Unknown result type (might be due to invalid IL or missing references)
		//IL_3fbd: Unknown result type (might be due to invalid IL or missing references)
		//IL_3fe3: Unknown result type (might be due to invalid IL or missing references)
		//IL_402c: Unknown result type (might be due to invalid IL or missing references)
		//IL_4036: Expected O, but got Unknown
		//IL_4043: Unknown result type (might be due to invalid IL or missing references)
		//IL_4058: Unknown result type (might be due to invalid IL or missing references)
		//IL_407e: Unknown result type (might be due to invalid IL or missing references)
		//IL_40c7: Unknown result type (might be due to invalid IL or missing references)
		//IL_40d1: Expected O, but got Unknown
		//IL_40df: Unknown result type (might be due to invalid IL or missing references)
		//IL_40f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_411a: Unknown result type (might be due to invalid IL or missing references)
		//IL_4163: Unknown result type (might be due to invalid IL or missing references)
		//IL_416d: Expected O, but got Unknown
		//IL_417b: Unknown result type (might be due to invalid IL or missing references)
		//IL_4190: Unknown result type (might be due to invalid IL or missing references)
		//IL_41b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_41ff: Unknown result type (might be due to invalid IL or missing references)
		//IL_4209: Expected O, but got Unknown
		//IL_4217: Unknown result type (might be due to invalid IL or missing references)
		//IL_422c: Unknown result type (might be due to invalid IL or missing references)
		//IL_4252: Unknown result type (might be due to invalid IL or missing references)
		//IL_429b: Unknown result type (might be due to invalid IL or missing references)
		//IL_42a5: Expected O, but got Unknown
		//IL_42b3: Unknown result type (might be due to invalid IL or missing references)
		//IL_42c8: Unknown result type (might be due to invalid IL or missing references)
		//IL_42ee: Unknown result type (might be due to invalid IL or missing references)
		//IL_4337: Unknown result type (might be due to invalid IL or missing references)
		//IL_4341: Expected O, but got Unknown
		//IL_434f: Unknown result type (might be due to invalid IL or missing references)
		//IL_4364: Unknown result type (might be due to invalid IL or missing references)
		//IL_438a: Unknown result type (might be due to invalid IL or missing references)
		//IL_460a: Unknown result type (might be due to invalid IL or missing references)
		//IL_4628: Unknown result type (might be due to invalid IL or missing references)
		//IL_46b3: Unknown result type (might be due to invalid IL or missing references)
		//IL_46bd: Expected O, but got Unknown
		//IL_46f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_4700: Expected O, but got Unknown
		//IL_4709: Unknown result type (might be due to invalid IL or missing references)
		//IL_4713: Expected O, but got Unknown
		//IL_471c: Unknown result type (might be due to invalid IL or missing references)
		//IL_4726: Expected O, but got Unknown
		components = (IContainer)new Container();
		ComponentResourceManager val = new ComponentResourceManager(typeof(TienIch));
		button18 = new Button();
		numericUpDownFPS = new NumericUpDown();
		radioButton10 = new RadioButton();
		checkBox7 = new CheckBox();
		button17 = new Button();
		button15 = new Button();
		button16 = new Button();
		button14 = new Button();
		radioButton8 = new RadioButton();
		radioButton7 = new RadioButton();
		comboBox11 = new ComboBox();
		radioButton9 = new RadioButton();
		comboBox12 = new ComboBox();
		radioButton6 = new RadioButton();
		comboBox13 = new ComboBox();
		button1 = new Button();
		radioButton5 = new RadioButton();
		comboBox3 = new ComboBox();
		radioButton4 = new RadioButton();
		comboBox5 = new ComboBox();
		radioButton1 = new RadioButton();
		comboBox10 = new ComboBox();
		comboBox9 = new ComboBox();
		comboBox8 = new ComboBox();
		comboBox7 = new ComboBox();
		comboBox4 = new ComboBox();
		radioButton3 = new RadioButton();
		comboBox6 = new ComboBox();
		radioButton2 = new RadioButton();
		pictureBox1 = new PictureBox();
		groupBox2 = new GroupBox();
		checkBoxPGH = new CheckBox();
		checkBoxPGT = new CheckBox();
		checkBoxXQV = new CheckBox();
		checkBoxXuQue = new CheckBox();
		checkBoxXQT = new CheckBox();
		checkBox1 = new CheckBox();
		button4 = new Button();
		label10 = new Label();
		button6 = new Button();
		button3 = new Button();
		button5 = new Button();
		dataGridView1 = new DataGridView();
		button7 = new Button();
		comboBox2 = new ComboBox();
		button8 = new Button();
		textBox1 = new TextBox();
		button9 = new Button();
		tabControl1 = new TabControl();
		tabPage1 = new TabPage();
		button12 = new Button();
		button13 = new Button();
		comboBox1 = new ComboBox();
		tabPage3 = new TabPage();
		checkBox2 = new CheckBox();
		checkBox4 = new CheckBox();
		textBox3 = new TextBox();
		tabPage2 = new TabPage();
		groupBox4 = new GroupBox();
		checkBoxMaTam = new CheckBox();
		buttonPause = new Button();
		ButtonRunAuto = new CheckBox();
		groupBox6 = new GroupBox();
		checkBoxLoop = new CheckBox();
		checkBoxAutoClick = new CheckBox();
		button11 = new Button();
		comboBoxFile = new ComboBox();
		groupBox5 = new GroupBox();
		groupBox3 = new GroupBox();
		button2 = new Button();
		button10 = new Button();
		label3 = new Label();
		timer1 = new Timer(components);
		tabControl2 = new TabControl();
		tabPage4 = new TabPage();
		tabControl3 = new TabControl();
		tabPage8 = new TabPage();
		tabPage6 = new TabPage();
		tabPage7 = new TabPage();
		comboBox15 = new ComboBox();
		checkBox6 = new CheckBox();
		checkBox5 = new CheckBox();
		tabPage9 = new TabPage();
		button21 = new Button();
		button22 = new Button();
		tabPage5 = new TabPage();
		checkBox3 = new CheckBox();
		groupBox7 = new GroupBox();
		buttonReset = new Button();
		comboBox14 = new ComboBox();
		numericUpDown1 = new NumericUpDown();
		label12 = new Label();
		label15 = new Label();
		button19 = new Button();
		button20 = new Button();
		textBox2 = new TextBox();
		label7 = new Label();
		label6 = new Label();
		labelPV = new Label();
		labelAOE5 = new Label();
		labelAOE3 = new Label();
		label5 = new Label();
		label4 = new Label();
		labelTH = new Label();
		Column1 = new DataGridViewTextBoxColumn();
		X = new DataGridViewTextBoxColumn();
		Y = new DataGridViewTextBoxColumn();
		Note = new DataGridViewTextBoxColumn();
		Tele = new DataGridViewButtonColumn();
		Team = new DataGridViewButtonColumn();
		Delete = new DataGridViewButtonColumn();
		((ISupportInitialize)numericUpDownFPS).BeginInit();
		((ISupportInitialize)pictureBox1).BeginInit();
		((Control)groupBox2).SuspendLayout();
		((ISupportInitialize)dataGridView1).BeginInit();
		((Control)tabControl1).SuspendLayout();
		((Control)tabPage1).SuspendLayout();
		((Control)tabPage3).SuspendLayout();
		((Control)tabPage2).SuspendLayout();
		((Control)groupBox4).SuspendLayout();
		((Control)groupBox6).SuspendLayout();
		((Control)groupBox5).SuspendLayout();
		((Control)groupBox3).SuspendLayout();
		((Control)tabControl2).SuspendLayout();
		((Control)tabPage4).SuspendLayout();
		((Control)tabControl3).SuspendLayout();
		((Control)tabPage8).SuspendLayout();
		((Control)tabPage6).SuspendLayout();
		((Control)tabPage7).SuspendLayout();
		((Control)tabPage9).SuspendLayout();
		((Control)tabPage5).SuspendLayout();
		((Control)groupBox7).SuspendLayout();
		((ISupportInitialize)numericUpDown1).BeginInit();
		((Control)this).SuspendLayout();
		((Control)button18).Location = new Point(54, 18);
		((Control)button18).Name = "button18";
		((Control)button18).Size = new Size(97, 23);
		((Control)button18).TabIndex = 59;
		((Control)button18).Text = "Chi\u0309nh Toa\u0300n Bô\u0323";
		((ButtonBase)button18).UseVisualStyleBackColor = true;
		((Control)button18).Click += new EventHandler(button18_Click);
		((Control)numericUpDownFPS).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownFPS).Location = new Point(11, 18);
		numericUpDownFPS.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownFPS).Name = "numericUpDownFPS";
		((Control)numericUpDownFPS).Size = new Size(37, 23);
		((Control)numericUpDownFPS).TabIndex = 15;
		numericUpDownFPS.Value = new decimal(new int[4] { 50, 0, 0, 0 });
		((Control)radioButton10).AutoSize = true;
		((Control)radioButton10).Location = new Point(312, 128);
		((Control)radioButton10).Name = "radioButton10";
		((Control)radioButton10).Size = new Size(14, 13);
		((Control)radioButton10).TabIndex = 58;
		radioButton10.TabStop = true;
		((ButtonBase)radioButton10).UseVisualStyleBackColor = true;
		radioButton10.CheckedChanged += new EventHandler(radioButton10_CheckedChanged);
		checkBox7.Appearance = (Appearance)1;
		((Control)checkBox7).Location = new Point(436, 122);
		((Control)checkBox7).Name = "checkBox7";
		((Control)checkBox7).Size = new Size(54, 23);
		((Control)checkBox7).TabIndex = 24;
		((Control)checkBox7).Text = "Thêm";
		((ButtonBase)checkBox7).TextAlign = (ContentAlignment)32;
		((ButtonBase)checkBox7).UseVisualStyleBackColor = true;
		checkBox7.CheckStateChanged += new EventHandler(checkBox7_CheckStateChanged);
		((Control)button17).Location = new Point(94, 35);
		((Control)button17).Name = "button17";
		((Control)button17).Size = new Size(64, 23);
		((Control)button17).TabIndex = 8;
		((Control)button17).Text = "Vi\u0323 Tri\u0301 Log";
		((ButtonBase)button17).UseVisualStyleBackColor = true;
		((Control)button17).Click += new EventHandler(button17_Click);
		((Control)button15).Location = new Point(6, 35);
		((Control)button15).Name = "button15";
		((Control)button15).Size = new Size(39, 23);
		((Control)button15).TabIndex = 8;
		((Control)button15).Text = "Lưu";
		((ButtonBase)button15).UseVisualStyleBackColor = true;
		((Control)button15).Click += new EventHandler(button15_Click);
		((Control)button16).Location = new Point(47, 35);
		((Control)button16).Name = "button16";
		((Control)button16).Size = new Size(44, 23);
		((Control)button16).TabIndex = 8;
		((Control)button16).Text = "Xo\u0301a";
		((ButtonBase)button16).UseVisualStyleBackColor = true;
		((Control)button16).Click += new EventHandler(button16_Click);
		((Control)button14).Location = new Point(95, 6);
		((Control)button14).Name = "button14";
		((Control)button14).Size = new Size(64, 23);
		((Control)button14).TabIndex = 8;
		((Control)button14).Text = "A\u0301p Du\u0323ng";
		((ButtonBase)button14).UseVisualStyleBackColor = true;
		((Control)button14).Click += new EventHandler(button14_Click);
		((Control)radioButton8).AutoSize = true;
		((Control)radioButton8).Location = new Point(312, 70);
		((Control)radioButton8).Name = "radioButton8";
		((Control)radioButton8).Size = new Size(14, 13);
		((Control)radioButton8).TabIndex = 58;
		radioButton8.TabStop = true;
		((ButtonBase)radioButton8).UseVisualStyleBackColor = true;
		radioButton8.CheckedChanged += new EventHandler(radioButton8_CheckedChanged);
		((Control)radioButton7).AutoSize = true;
		((Control)radioButton7).Location = new Point(312, 41);
		((Control)radioButton7).Name = "radioButton7";
		((Control)radioButton7).Size = new Size(14, 13);
		((Control)radioButton7).TabIndex = 58;
		radioButton7.TabStop = true;
		((ButtonBase)radioButton7).UseVisualStyleBackColor = true;
		radioButton7.CheckedChanged += new EventHandler(radioButton7_CheckedChanged);
		((ListControl)comboBox11).FormattingEnabled = true;
		((Control)comboBox11).Location = new Point(169, 93);
		((Control)comboBox11).Name = "comboBox11";
		((Control)comboBox11).Size = new Size(137, 23);
		((Control)comboBox11).TabIndex = 32;
		((Control)comboBox11).Text = "Select Display Name";
		((Control)radioButton9).AutoSize = true;
		((Control)radioButton9).Location = new Point(312, 99);
		((Control)radioButton9).Name = "radioButton9";
		((Control)radioButton9).Size = new Size(14, 13);
		((Control)radioButton9).TabIndex = 58;
		radioButton9.TabStop = true;
		((ButtonBase)radioButton9).UseVisualStyleBackColor = true;
		radioButton9.CheckedChanged += new EventHandler(radioButton9_CheckedChanged);
		((ListControl)comboBox12).FormattingEnabled = true;
		((Control)comboBox12).Location = new Point(169, 122);
		((Control)comboBox12).Name = "comboBox12";
		((Control)comboBox12).Size = new Size(137, 23);
		((Control)comboBox12).TabIndex = 32;
		((Control)comboBox12).Text = "Select Display Name";
		((Control)radioButton6).AutoSize = true;
		((Control)radioButton6).Location = new Point(312, 12);
		((Control)radioButton6).Name = "radioButton6";
		((Control)radioButton6).Size = new Size(14, 13);
		((Control)radioButton6).TabIndex = 58;
		radioButton6.TabStop = true;
		((ButtonBase)radioButton6).UseVisualStyleBackColor = true;
		radioButton6.CheckedChanged += new EventHandler(radioButton6_CheckedChanged);
		((ListControl)comboBox13).FormattingEnabled = true;
		((Control)comboBox13).Location = new Point(6, 6);
		((Control)comboBox13).Name = "comboBox13";
		((Control)comboBox13).Size = new Size(87, 23);
		((Control)comboBox13).TabIndex = 32;
		((Control)comboBox13).Text = "Style Name";
		((Control)button1).Location = new Point(332, 122);
		((Control)button1).Name = "button1";
		((Control)button1).Size = new Size(89, 23);
		((Control)button1).TabIndex = 8;
		((Control)button1).Text = "Rescan Flash";
		((ButtonBase)button1).UseVisualStyleBackColor = true;
		((Control)button1).Click += new EventHandler(button1_Click);
		((Control)radioButton5).AutoSize = true;
		((Control)radioButton5).Location = new Point(149, 128);
		((Control)radioButton5).Name = "radioButton5";
		((Control)radioButton5).Size = new Size(14, 13);
		((Control)radioButton5).TabIndex = 58;
		radioButton5.TabStop = true;
		((ButtonBase)radioButton5).UseVisualStyleBackColor = true;
		radioButton5.CheckedChanged += new EventHandler(radioButton5_CheckedChanged);
		((ListControl)comboBox3).FormattingEnabled = true;
		((Control)comboBox3).Location = new Point(6, 6);
		((Control)comboBox3).Name = "comboBox3";
		((Control)comboBox3).Size = new Size(137, 23);
		((Control)comboBox3).TabIndex = 32;
		((Control)comboBox3).Text = "Select Display Name";
		((Control)radioButton4).AutoSize = true;
		((Control)radioButton4).Location = new Point(149, 99);
		((Control)radioButton4).Name = "radioButton4";
		((Control)radioButton4).Size = new Size(14, 13);
		((Control)radioButton4).TabIndex = 58;
		radioButton4.TabStop = true;
		((ButtonBase)radioButton4).UseVisualStyleBackColor = true;
		radioButton4.CheckedChanged += new EventHandler(radioButton4_CheckedChanged);
		((ListControl)comboBox5).FormattingEnabled = true;
		((Control)comboBox5).Location = new Point(6, 64);
		((Control)comboBox5).Name = "comboBox5";
		((Control)comboBox5).Size = new Size(137, 23);
		((Control)comboBox5).TabIndex = 32;
		((Control)comboBox5).Text = "Select Display Name";
		((Control)radioButton1).AutoSize = true;
		((Control)radioButton1).Location = new Point(149, 12);
		((Control)radioButton1).Name = "radioButton1";
		((Control)radioButton1).Size = new Size(14, 13);
		((Control)radioButton1).TabIndex = 58;
		radioButton1.TabStop = true;
		((ButtonBase)radioButton1).UseVisualStyleBackColor = true;
		radioButton1.CheckedChanged += new EventHandler(radioButton1_CheckedChanged);
		((ListControl)comboBox10).FormattingEnabled = true;
		((Control)comboBox10).Location = new Point(169, 64);
		((Control)comboBox10).Name = "comboBox10";
		((Control)comboBox10).Size = new Size(137, 23);
		((Control)comboBox10).TabIndex = 32;
		((Control)comboBox10).Text = "Select Display Name";
		((ListControl)comboBox9).FormattingEnabled = true;
		((Control)comboBox9).Location = new Point(169, 35);
		((Control)comboBox9).Name = "comboBox9";
		((Control)comboBox9).Size = new Size(137, 23);
		((Control)comboBox9).TabIndex = 32;
		((Control)comboBox9).Text = "Select Display Name";
		((ListControl)comboBox8).FormattingEnabled = true;
		((Control)comboBox8).Location = new Point(169, 6);
		((Control)comboBox8).Name = "comboBox8";
		((Control)comboBox8).Size = new Size(137, 23);
		((Control)comboBox8).TabIndex = 32;
		((Control)comboBox8).Text = "Select Display Name";
		((ListControl)comboBox7).FormattingEnabled = true;
		((Control)comboBox7).Location = new Point(6, 122);
		((Control)comboBox7).Name = "comboBox7";
		((Control)comboBox7).Size = new Size(137, 23);
		((Control)comboBox7).TabIndex = 32;
		((Control)comboBox7).Text = "Select Display Name";
		((ListControl)comboBox4).FormattingEnabled = true;
		((Control)comboBox4).Location = new Point(6, 35);
		((Control)comboBox4).Name = "comboBox4";
		((Control)comboBox4).Size = new Size(137, 23);
		((Control)comboBox4).TabIndex = 32;
		((Control)comboBox4).Text = "Select Display Name";
		((Control)radioButton3).AutoSize = true;
		((Control)radioButton3).Location = new Point(149, 70);
		((Control)radioButton3).Name = "radioButton3";
		((Control)radioButton3).Size = new Size(14, 13);
		((Control)radioButton3).TabIndex = 58;
		radioButton3.TabStop = true;
		((ButtonBase)radioButton3).UseVisualStyleBackColor = true;
		radioButton3.CheckedChanged += new EventHandler(radioButton3_CheckedChanged);
		((ListControl)comboBox6).FormattingEnabled = true;
		((Control)comboBox6).Location = new Point(6, 93);
		((Control)comboBox6).Name = "comboBox6";
		((Control)comboBox6).Size = new Size(137, 23);
		((Control)comboBox6).TabIndex = 32;
		((Control)comboBox6).Text = "Select Display Name";
		((Control)radioButton2).AutoSize = true;
		((Control)radioButton2).Location = new Point(149, 41);
		((Control)radioButton2).Name = "radioButton2";
		((Control)radioButton2).Size = new Size(14, 13);
		((Control)radioButton2).TabIndex = 58;
		radioButton2.TabStop = true;
		((ButtonBase)radioButton2).UseVisualStyleBackColor = true;
		radioButton2.CheckedChanged += new EventHandler(radioButton2_CheckedChanged);
		pictureBox1.Image = (Image)(object)Resources.anhNVr;
		((Control)pictureBox1).Location = new Point(6, 49);
		((Control)pictureBox1).Name = "pictureBox1";
		((Control)pictureBox1).Size = new Size(55, 52);
		pictureBox1.TabIndex = 0;
		pictureBox1.TabStop = false;
		((Control)groupBox2).Controls.Add((Control)(object)checkBoxPGH);
		((Control)groupBox2).Controls.Add((Control)(object)checkBoxPGT);
		((Control)groupBox2).Controls.Add((Control)(object)checkBoxXQV);
		((Control)groupBox2).Controls.Add((Control)(object)checkBoxXuQue);
		((Control)groupBox2).Controls.Add((Control)(object)checkBoxXQT);
		((Control)groupBox2).Location = new Point(7, 180);
		((Control)groupBox2).Name = "groupBox2";
		((Control)groupBox2).Size = new Size(212, 76);
		((Control)groupBox2).TabIndex = 33;
		groupBox2.TabStop = false;
		((Control)groupBox2).Text = "                     ";
		((Control)checkBoxPGH).AutoSize = true;
		((Control)checkBoxPGH).Location = new Point(103, 50);
		((Control)checkBoxPGH).Name = "checkBoxPGH";
		((Control)checkBoxPGH).Size = new Size(92, 19);
		((Control)checkBoxPGH).TabIndex = 21;
		((Control)checkBoxPGH).Text = "Giải Toàn Bộ";
		((ButtonBase)checkBoxPGH).UseVisualStyleBackColor = true;
		checkBoxPGH.CheckedChanged += new EventHandler(checkBoxPGH_CheckedChanged);
		((Control)checkBoxPGT).AutoSize = true;
		((Control)checkBoxPGT).Location = new Point(103, 25);
		((Control)checkBoxPGT).Name = "checkBoxPGT";
		((Control)checkBoxPGT).Size = new Size(91, 19);
		((Control)checkBoxPGT).TabIndex = 21;
		((Control)checkBoxPGT).Text = "Giải Thường";
		((ButtonBase)checkBoxPGT).UseVisualStyleBackColor = true;
		checkBoxPGT.CheckedChanged += new EventHandler(checkBoxPGT_CheckedChanged);
		((Control)checkBoxXQV).AutoSize = true;
		((Control)checkBoxXQV).Location = new Point(6, 50);
		((Control)checkBoxXQV).Name = "checkBoxXQV";
		((Control)checkBoxXQV).Size = new Size(43, 19);
		((Control)checkBoxXQV).TabIndex = 20;
		((Control)checkBoxXQV).Text = "VIP";
		((ButtonBase)checkBoxXQV).UseVisualStyleBackColor = true;
		checkBoxXQV.CheckedChanged += new EventHandler(checkBoxXQV_CheckedChanged);
		((Control)checkBoxXuQue).AutoSize = true;
		((Control)checkBoxXuQue).Location = new Point(6, 0);
		((Control)checkBoxXuQue).Name = "checkBoxXuQue";
		((Control)checkBoxXuQue).Size = new Size(65, 19);
		((Control)checkBoxXuQue).TabIndex = 20;
		((Control)checkBoxXuQue).Text = "Xù Quẻ";
		((ButtonBase)checkBoxXuQue).UseVisualStyleBackColor = true;
		checkBoxXuQue.CheckedChanged += new EventHandler(checkBoxXuQue_CheckedChanged);
		((Control)checkBoxXQT).AutoSize = true;
		((Control)checkBoxXQT).Location = new Point(6, 25);
		((Control)checkBoxXQT).Name = "checkBoxXQT";
		((Control)checkBoxXQT).Size = new Size(68, 19);
		((Control)checkBoxXQT).TabIndex = 20;
		((Control)checkBoxXQT).Text = "Thường";
		((ButtonBase)checkBoxXQT).UseVisualStyleBackColor = true;
		checkBoxXQT.CheckedChanged += new EventHandler(checkBoxXQT_CheckedChanged);
		checkBox1.Appearance = (Appearance)1;
		((Control)checkBox1).AutoSize = true;
		((Control)checkBox1).Location = new Point(13, 19);
		((Control)checkBox1).Name = "checkBox1";
		((Control)checkBox1).Size = new Size(76, 25);
		((Control)checkBox1).TabIndex = 23;
		((Control)checkBox1).Text = " Ẩn Tác Vụ ";
		((ButtonBase)checkBox1).UseVisualStyleBackColor = true;
		checkBox1.CheckStateChanged += new EventHandler(checkBox1_CheckStateChanged);
		((Control)button4).Location = new Point(90, 38);
		((Control)button4).Name = "button4";
		((Control)button4).Size = new Size(74, 23);
		((Control)button4).TabIndex = 51;
		((Control)button4).Text = "Tele - Next";
		((ButtonBase)button4).UseVisualStyleBackColor = true;
		((Control)button4).Click += new EventHandler(button4_Click);
		((Control)label10).AutoSize = true;
		((Control)label10).Font = new Font("Segoe UI", 8f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label10).Location = new Point(125, 530);
		((Control)label10).Name = "label10";
		((Control)label10).Size = new Size(375, 13);
		((Control)label10).TabIndex = 13;
		((Control)label10).Text = "Tele NV Phải Có Skin    F1 (Next): Phím Tele - Tele Theo Thư\u0301 Tư\u0323 Trên Xuô\u0301ng";
		((Control)button6).Location = new Point(108, 9);
		((Control)button6).Name = "button6";
		((Control)button6).Size = new Size(56, 23);
		((Control)button6).TabIndex = 52;
		((Control)button6).Text = "Rescan";
		((ButtonBase)button6).UseVisualStyleBackColor = true;
		((Control)button6).Click += new EventHandler(button6_Click);
		((Control)button3).Location = new Point(170, 9);
		((Control)button3).Name = "button3";
		((Control)button3).Size = new Size(43, 23);
		((Control)button3).TabIndex = 51;
		((Control)button3).Text = "Lưu";
		((ButtonBase)button3).UseVisualStyleBackColor = true;
		((Control)button3).Click += new EventHandler(button3_Click);
		((Control)button5).Location = new Point(219, 9);
		((Control)button5).Name = "button5";
		((Control)button5).Size = new Size(47, 23);
		((Control)button5).TabIndex = 54;
		((Control)button5).Text = "Ta\u0309i";
		((ButtonBase)button5).UseVisualStyleBackColor = true;
		((Control)button5).Click += new EventHandler(button5_Click);
		((Control)dataGridView1).AllowDrop = true;
		dataGridView1.ColumnHeadersHeight = 30;
		dataGridView1.Columns.AddRange((DataGridViewColumn[])(object)new DataGridViewColumn[7]
		{
			(DataGridViewColumn)Column1,
			(DataGridViewColumn)X,
			(DataGridViewColumn)Y,
			(DataGridViewColumn)Note,
			(DataGridViewColumn)Tele,
			(DataGridViewColumn)Team,
			(DataGridViewColumn)Delete
		});
		((Control)dataGridView1).Location = new Point(538, 322);
		((Control)dataGridView1).Name = "dataGridView1";
		dataGridView1.RowHeadersWidth = 10;
		dataGridView1.RowTemplate.Height = 25;
		((Control)dataGridView1).Size = new Size(503, 254);
		((Control)dataGridView1).TabIndex = 42;
		dataGridView1.CellContentClick += new DataGridViewCellEventHandler(dataGridView1_CellContentClick);
		((Control)dataGridView1).DragDrop += new DragEventHandler(dataGridView1_DragDrop);
		((Control)dataGridView1).DragOver += new DragEventHandler(dataGridView1_DragOver);
		((Control)dataGridView1).MouseDown += new MouseEventHandler(dataGridView1_MouseDown);
		((Control)dataGridView1).MouseMove += new MouseEventHandler(dataGridView1_MouseMove);
		((Control)button7).Location = new Point(272, 10);
		((Control)button7).Name = "button7";
		((Control)button7).Size = new Size(57, 22);
		((Control)button7).TabIndex = 55;
		((Control)button7).Text = "Xo\u0301a File";
		((ButtonBase)button7).UseVisualStyleBackColor = true;
		((Control)button7).Click += new EventHandler(button7_Click);
		((ListControl)comboBox2).FormattingEnabled = true;
		((Control)comboBox2).Location = new Point(9, 10);
		((Control)comboBox2).Name = "comboBox2";
		((Control)comboBox2).Size = new Size(93, 23);
		((Control)comboBox2).TabIndex = 53;
		((Control)comboBox2).Text = "Name";
		((Control)button8).Location = new Point(170, 38);
		((Control)button8).Name = "button8";
		((Control)button8).Size = new Size(65, 23);
		((Control)button8).TabIndex = 55;
		((Control)button8).Text = "Xo\u0301a Ba\u0309ng";
		((ButtonBase)button8).UseVisualStyleBackColor = true;
		((Control)button8).Click += new EventHandler(button8_Click);
		((Control)textBox1).Location = new Point(6, 22);
		((TextBoxBase)textBox1).Multiline = true;
		((Control)textBox1).Name = "textBox1";
		textBox1.ScrollBars = (ScrollBars)2;
		((Control)textBox1).Size = new Size(248, 269);
		((Control)textBox1).TabIndex = 56;
		((Control)button9).Location = new Point(6, 297);
		((Control)button9).Name = "button9";
		((Control)button9).Size = new Size(57, 23);
		((Control)button9).TabIndex = 51;
		((Control)button9).Text = "Save";
		((ButtonBase)button9).UseVisualStyleBackColor = true;
		((Control)button9).Click += new EventHandler(button9_Click);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage1);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage3);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage2);
		((Control)tabControl1).Location = new Point(6, 178);
		((Control)tabControl1).Name = "tabControl1";
		tabControl1.SelectedIndex = 0;
		((Control)tabControl1).Size = new Size(511, 378);
		((Control)tabControl1).TabIndex = 57;
		tabControl1.Selected += new TabControlEventHandler(tabControl1_Selected);
		((Control)tabPage1).Controls.Add((Control)(object)button12);
		((Control)tabPage1).Controls.Add((Control)(object)button5);
		((Control)tabPage1).Controls.Add((Control)(object)button3);
		((Control)tabPage1).Controls.Add((Control)(object)button13);
		((Control)tabPage1).Controls.Add((Control)(object)comboBox2);
		((Control)tabPage1).Controls.Add((Control)(object)button7);
		((Control)tabPage1).Controls.Add((Control)(object)button6);
		((Control)tabPage1).Controls.Add((Control)(object)button4);
		((Control)tabPage1).Controls.Add((Control)(object)button8);
		((Control)tabPage1).Controls.Add((Control)(object)comboBox1);
		tabPage1.Location = new Point(4, 24);
		((Control)tabPage1).Name = "tabPage1";
		((Control)tabPage1).Padding = new Padding(3);
		((Control)tabPage1).Size = new Size(503, 350);
		tabPage1.TabIndex = 0;
		((Control)tabPage1).Text = "Dịch Chuyển";
		tabPage1.UseVisualStyleBackColor = true;
		((Control)button12).Location = new Point(9, 39);
		((Control)button12).Name = "button12";
		((Control)button12).Size = new Size(75, 22);
		((Control)button12).TabIndex = 56;
		((Control)button12).Text = "Lấy Vị Trí";
		((ButtonBase)button12).UseVisualStyleBackColor = true;
		((Control)button12).Click += new EventHandler(button12_Click);
		((Control)button13).Location = new Point(347, 37);
		((Control)button13).Name = "button13";
		((Control)button13).Size = new Size(82, 24);
		((Control)button13).TabIndex = 33;
		((Control)button13).Text = "Phu\u0300 Tơ\u0301i Map";
		((ButtonBase)button13).UseVisualStyleBackColor = true;
		((Control)button13).Click += new EventHandler(button13_Click);
		((ListControl)comboBox1).FormattingEnabled = true;
		((Control)comboBox1).Location = new Point(347, 9);
		((Control)comboBox1).Name = "comboBox1";
		((Control)comboBox1).Size = new Size(140, 23);
		comboBox1.Sorted = true;
		((Control)comboBox1).TabIndex = 32;
		((Control)comboBox1).Text = "Cho\u0323n Map";
		((Control)tabPage3).Controls.Add((Control)(object)checkBox2);
		((Control)tabPage3).Controls.Add((Control)(object)checkBox4);
		((Control)tabPage3).Controls.Add((Control)(object)textBox3);
		tabPage3.Location = new Point(4, 24);
		((Control)tabPage3).Name = "tabPage3";
		((Control)tabPage3).Padding = new Padding(3);
		((Control)tabPage3).Size = new Size(503, 350);
		tabPage3.TabIndex = 4;
		((Control)tabPage3).Text = "NPC - Map";
		tabPage3.UseVisualStyleBackColor = true;
		((Control)checkBox2).AutoSize = true;
		((Control)checkBox2).Location = new Point(6, 8);
		((Control)checkBox2).Name = "checkBox2";
		((Control)checkBox2).Size = new Size(236, 19);
		((Control)checkBox2).TabIndex = 58;
		((Control)checkBox2).Text = "Danh Sa\u0301ch Vi\u0323 Tri\u0301 NPC Cu\u0309a Map Hiê\u0323n Ta\u0323i";
		((ButtonBase)checkBox2).UseVisualStyleBackColor = true;
		checkBox2.CheckedChanged += new EventHandler(checkBox2_CheckedChanged);
		((Control)checkBox4).AutoSize = true;
		((Control)checkBox4).Location = new Point(6, 33);
		((Control)checkBox4).Name = "checkBox4";
		((Control)checkBox4).Size = new Size(265, 19);
		((Control)checkBox4).TabIndex = 58;
		((Control)checkBox4).Text = "Danh Sa\u0301ch Vi\u0323 Tri\u0301 NPC Theo Tên NPC va\u0300 Map :";
		((ButtonBase)checkBox4).UseVisualStyleBackColor = true;
		checkBox4.CheckedChanged += new EventHandler(checkBox4_CheckedChanged);
		((Control)textBox3).Location = new Point(274, 31);
		((Control)textBox3).Name = "textBox3";
		((TextBoxBase)textBox3).ReadOnly = true;
		((Control)textBox3).Size = new Size(207, 23);
		((Control)textBox3).TabIndex = 59;
		((Control)tabPage2).BackgroundImageLayout = (ImageLayout)4;
		((Control)tabPage2).Controls.Add((Control)(object)groupBox4);
		((Control)tabPage2).Controls.Add((Control)(object)groupBox5);
		tabPage2.Location = new Point(4, 24);
		((Control)tabPage2).Name = "tabPage2";
		((Control)tabPage2).Padding = new Padding(3);
		((Control)tabPage2).Size = new Size(503, 350);
		tabPage2.TabIndex = 3;
		((Control)tabPage2).Text = "Khác";
		tabPage2.UseVisualStyleBackColor = true;
		((Control)groupBox4).Controls.Add((Control)(object)checkBoxMaTam);
		((Control)groupBox4).Controls.Add((Control)(object)buttonPause);
		((Control)groupBox4).Controls.Add((Control)(object)ButtonRunAuto);
		((Control)groupBox4).Controls.Add((Control)(object)groupBox6);
		((Control)groupBox4).Controls.Add((Control)(object)groupBox2);
		((Control)groupBox4).Location = new Point(6, 6);
		((Control)groupBox4).Name = "groupBox4";
		((Control)groupBox4).Size = new Size(225, 335);
		((Control)groupBox4).TabIndex = 58;
		groupBox4.TabStop = false;
		((Control)groupBox4).Text = "Thao Tác";
		((Control)checkBoxMaTam).AutoSize = true;
		((Control)checkBoxMaTam).Location = new Point(14, 272);
		((Control)checkBoxMaTam).Name = "checkBoxMaTam";
		((Control)checkBoxMaTam).Size = new Size(127, 19);
		((Control)checkBoxMaTam).TabIndex = 59;
		((Control)checkBoxMaTam).Text = "Dung Hơ\u0323p Ma Tâm";
		((ButtonBase)checkBoxMaTam).UseVisualStyleBackColor = true;
		checkBoxMaTam.CheckedChanged += new EventHandler(checkBoxMaTam_CheckedChanged);
		((Control)buttonPause).Enabled = false;
		((Control)buttonPause).Location = new Point(124, 22);
		((Control)buttonPause).Name = "buttonPause";
		((Control)buttonPause).Size = new Size(65, 25);
		((Control)buttonPause).TabIndex = 47;
		((Control)buttonPause).Text = "Pause";
		((ButtonBase)buttonPause).UseVisualStyleBackColor = true;
		((Control)buttonPause).Click += new EventHandler(buttonPause_Click);
		ButtonRunAuto.Appearance = (Appearance)1;
		((Control)ButtonRunAuto).Location = new Point(31, 22);
		((Control)ButtonRunAuto).Name = "ButtonRunAuto";
		((Control)ButtonRunAuto).Size = new Size(65, 25);
		((Control)ButtonRunAuto).TabIndex = 46;
		((Control)ButtonRunAuto).Text = "Start";
		((ButtonBase)ButtonRunAuto).TextAlign = (ContentAlignment)32;
		((ButtonBase)ButtonRunAuto).UseVisualStyleBackColor = true;
		ButtonRunAuto.CheckStateChanged += new EventHandler(ButtonRunAuto_CheckStateChanged);
		((Control)groupBox6).Controls.Add((Control)(object)checkBoxLoop);
		((Control)groupBox6).Controls.Add((Control)(object)checkBoxAutoClick);
		((Control)groupBox6).Controls.Add((Control)(object)button11);
		((Control)groupBox6).Controls.Add((Control)(object)comboBoxFile);
		((Control)groupBox6).Location = new Point(6, 70);
		((Control)groupBox6).Name = "groupBox6";
		((Control)groupBox6).Size = new Size(212, 92);
		((Control)groupBox6).TabIndex = 44;
		groupBox6.TabStop = false;
		((Control)groupBox6).Text = "                          ";
		((Control)checkBoxLoop).AutoSize = true;
		((Control)checkBoxLoop).Location = new Point(143, 56);
		((Control)checkBoxLoop).Name = "checkBoxLoop";
		((Control)checkBoxLoop).Size = new Size(63, 19);
		((Control)checkBoxLoop).TabIndex = 20;
		((Control)checkBoxLoop).Text = "Lặp Lại";
		((ButtonBase)checkBoxLoop).UseVisualStyleBackColor = true;
		((Control)checkBoxAutoClick).AutoSize = true;
		((Control)checkBoxAutoClick).Location = new Point(8, 0);
		((Control)checkBoxAutoClick).Name = "checkBoxAutoClick";
		((Control)checkBoxAutoClick).Size = new Size(78, 19);
		((Control)checkBoxAutoClick).TabIndex = 19;
		((Control)checkBoxAutoClick).Text = "AutoClick";
		((ButtonBase)checkBoxAutoClick).UseVisualStyleBackColor = true;
		checkBoxAutoClick.CheckedChanged += new EventHandler(checkBoxAutoClick_CheckedChanged);
		((Control)button11).Location = new Point(149, 25);
		((Control)button11).Name = "button11";
		((Control)button11).Size = new Size(57, 25);
		((Control)button11).TabIndex = 45;
		((Control)button11).Text = "Rescan";
		((ButtonBase)button11).UseVisualStyleBackColor = true;
		((Control)button11).Click += new EventHandler(button11_Click);
		((ListControl)comboBoxFile).FormattingEnabled = true;
		((Control)comboBoxFile).Location = new Point(8, 25);
		((Control)comboBoxFile).Name = "comboBoxFile";
		((Control)comboBoxFile).Size = new Size(135, 23);
		((Control)comboBoxFile).TabIndex = 18;
		((Control)comboBoxFile).Text = "File";
		((Control)groupBox5).BackgroundImageLayout = (ImageLayout)4;
		((Control)groupBox5).Controls.Add((Control)(object)textBox1);
		((Control)groupBox5).Controls.Add((Control)(object)button9);
		((Control)groupBox5).Location = new Point(237, 6);
		((Control)groupBox5).Name = "groupBox5";
		((Control)groupBox5).Size = new Size(260, 329);
		((Control)groupBox5).TabIndex = 60;
		groupBox5.TabStop = false;
		((Control)groupBox5).Text = "Ghi Chu\u0301";
		((Control)groupBox3).Controls.Add((Control)(object)checkBox1);
		((Control)groupBox3).Location = new Point(30, 562);
		((Control)groupBox3).Name = "groupBox3";
		((Control)groupBox3).Size = new Size(225, 54);
		((Control)groupBox3).TabIndex = 58;
		groupBox3.TabStop = false;
		((Control)groupBox3).Text = "Ẩn Tác Vụ";
		((Control)button2).Location = new Point(15, 6);
		((Control)button2).Name = "button2";
		((Control)button2).Size = new Size(63, 25);
		((Control)button2).TabIndex = 45;
		((Control)button2).Text = "Mini";
		((ButtonBase)button2).UseVisualStyleBackColor = true;
		((Control)button2).Click += new EventHandler(button2_Click);
		((Control)button10).Location = new Point(84, 6);
		((Control)button10).Name = "button10";
		((Control)button10).Size = new Size(63, 25);
		((Control)button10).TabIndex = 45;
		((Control)button10).Text = "Normal";
		((ButtonBase)button10).UseVisualStyleBackColor = true;
		((Control)button10).Click += new EventHandler(button10_Click);
		((Control)label3).AutoSize = true;
		((Control)label3).Location = new Point(6, 530);
		((Control)label3).Name = "label3";
		((Control)label3).Size = new Size(64, 15);
		((Control)label3).TabIndex = 57;
		((Control)label3).Text = "Map - 00%";
		timer1.Enabled = true;
		timer1.Interval = 1000;
		timer1.Tick += new EventHandler(timer1_Tick);
		((Control)tabControl2).Controls.Add((Control)(object)tabPage4);
		((Control)tabControl2).Controls.Add((Control)(object)tabPage5);
		((Control)tabControl2).Location = new Point(6, 0);
		((Control)tabControl2).Name = "tabControl2";
		tabControl2.SelectedIndex = 0;
		((Control)tabControl2).Size = new Size(511, 179);
		((Control)tabControl2).TabIndex = 58;
		tabControl2.Selected += new TabControlEventHandler(tabControl2_Selected);
		((Control)tabPage4).Controls.Add((Control)(object)comboBox3);
		((Control)tabPage4).Controls.Add((Control)(object)tabControl3);
		((Control)tabPage4).Controls.Add((Control)(object)radioButton2);
		((Control)tabPage4).Controls.Add((Control)(object)radioButton10);
		((Control)tabPage4).Controls.Add((Control)(object)comboBox6);
		((Control)tabPage4).Controls.Add((Control)(object)checkBox7);
		((Control)tabPage4).Controls.Add((Control)(object)radioButton3);
		((Control)tabPage4).Controls.Add((Control)(object)comboBox4);
		((Control)tabPage4).Controls.Add((Control)(object)comboBox7);
		((Control)tabPage4).Controls.Add((Control)(object)comboBox8);
		((Control)tabPage4).Controls.Add((Control)(object)comboBox9);
		((Control)tabPage4).Controls.Add((Control)(object)comboBox10);
		((Control)tabPage4).Controls.Add((Control)(object)radioButton8);
		((Control)tabPage4).Controls.Add((Control)(object)radioButton1);
		((Control)tabPage4).Controls.Add((Control)(object)radioButton7);
		((Control)tabPage4).Controls.Add((Control)(object)comboBox5);
		((Control)tabPage4).Controls.Add((Control)(object)comboBox11);
		((Control)tabPage4).Controls.Add((Control)(object)radioButton4);
		((Control)tabPage4).Controls.Add((Control)(object)radioButton9);
		((Control)tabPage4).Controls.Add((Control)(object)comboBox12);
		((Control)tabPage4).Controls.Add((Control)(object)radioButton5);
		((Control)tabPage4).Controls.Add((Control)(object)radioButton6);
		((Control)tabPage4).Controls.Add((Control)(object)button1);
		tabPage4.Location = new Point(4, 24);
		((Control)tabPage4).Name = "tabPage4";
		((Control)tabPage4).Padding = new Padding(3);
		((Control)tabPage4).Size = new Size(503, 151);
		tabPage4.TabIndex = 0;
		((Control)tabPage4).Text = "Control";
		tabPage4.UseVisualStyleBackColor = true;
		((Control)tabControl3).Controls.Add((Control)(object)tabPage8);
		((Control)tabControl3).Controls.Add((Control)(object)tabPage6);
		((Control)tabControl3).Controls.Add((Control)(object)tabPage7);
		((Control)tabControl3).Controls.Add((Control)(object)tabPage9);
		((Control)tabControl3).Location = new Point(332, 6);
		tabControl3.Multiline = true;
		((Control)tabControl3).Name = "tabControl3";
		tabControl3.SelectedIndex = 0;
		((Control)tabControl3).Size = new Size(169, 110);
		((Control)tabControl3).TabIndex = 59;
		((Control)tabPage8).Controls.Add((Control)(object)button18);
		((Control)tabPage8).Controls.Add((Control)(object)numericUpDownFPS);
		tabPage8.Location = new Point(4, 44);
		((Control)tabPage8).Name = "tabPage8";
		((Control)tabPage8).Padding = new Padding(3);
		((Control)tabPage8).Size = new Size(161, 62);
		tabPage8.TabIndex = 2;
		((Control)tabPage8).Text = "FPS";
		tabPage8.UseVisualStyleBackColor = true;
		((Control)tabPage6).Controls.Add((Control)(object)comboBox13);
		((Control)tabPage6).Controls.Add((Control)(object)button14);
		((Control)tabPage6).Controls.Add((Control)(object)button16);
		((Control)tabPage6).Controls.Add((Control)(object)button15);
		((Control)tabPage6).Controls.Add((Control)(object)button17);
		tabPage6.Location = new Point(4, 44);
		((Control)tabPage6).Name = "tabPage6";
		((Control)tabPage6).Padding = new Padding(3);
		((Control)tabPage6).Size = new Size(161, 62);
		tabPage6.TabIndex = 0;
		((Control)tabPage6).Text = "Să\u0301p Xê\u0301p Cư\u0309a Sô\u0309";
		tabPage6.UseVisualStyleBackColor = true;
		((Control)tabPage7).Controls.Add((Control)(object)comboBox15);
		((Control)tabPage7).Controls.Add((Control)(object)checkBox6);
		((Control)tabPage7).Controls.Add((Control)(object)checkBox5);
		tabPage7.Location = new Point(4, 44);
		((Control)tabPage7).Name = "tabPage7";
		((Control)tabPage7).Padding = new Padding(3);
		((Control)tabPage7).Size = new Size(161, 62);
		tabPage7.TabIndex = 1;
		((Control)tabPage7).Text = "Chuyê\u0309n Kênh";
		tabPage7.UseVisualStyleBackColor = true;
		((ListControl)comboBox15).FormattingEnabled = true;
		comboBox15.Items.AddRange(new object[8] { "Kênh 1", "Kênh 2", "Kênh 3", "Kênh 4", "Kênh 5", "Kênh 6", "Kênh 7", "Kênh 8" });
		((Control)comboBox15).Location = new Point(6, 6);
		((Control)comboBox15).Name = "comboBox15";
		((Control)comboBox15).Size = new Size(64, 23);
		((Control)comboBox15).TabIndex = 0;
		((Control)comboBox15).Text = "Kênh 5";
		checkBox6.Appearance = (Appearance)1;
		((Control)checkBox6).Location = new Point(85, 6);
		((Control)checkBox6).Name = "checkBox6";
		((Control)checkBox6).Size = new Size(66, 23);
		((Control)checkBox6).TabIndex = 24;
		((Control)checkBox6).Text = "Chuyê\u0309n";
		((ButtonBase)checkBox6).TextAlign = (ContentAlignment)32;
		((ButtonBase)checkBox6).UseVisualStyleBackColor = true;
		checkBox6.CheckedChanged += new EventHandler(checkBox6_CheckedChanged);
		checkBox5.Appearance = (Appearance)1;
		((Control)checkBox5).Location = new Point(43, 35);
		((Control)checkBox5).Name = "checkBox5";
		((Control)checkBox5).Size = new Size(108, 23);
		((Control)checkBox5).TabIndex = 24;
		((Control)checkBox5).Text = "Chuyê\u0309n Toa\u0300n Bô\u0323";
		((ButtonBase)checkBox5).TextAlign = (ContentAlignment)32;
		((ButtonBase)checkBox5).UseVisualStyleBackColor = true;
		checkBox5.CheckedChanged += new EventHandler(checkBox5_CheckedChanged);
		((Control)tabPage9).Controls.Add((Control)(object)button21);
		((Control)tabPage9).Controls.Add((Control)(object)button2);
		((Control)tabPage9).Controls.Add((Control)(object)button22);
		((Control)tabPage9).Controls.Add((Control)(object)button10);
		tabPage9.Location = new Point(4, 44);
		((Control)tabPage9).Name = "tabPage9";
		((Control)tabPage9).Padding = new Padding(3);
		((Control)tabPage9).Size = new Size(161, 62);
		tabPage9.TabIndex = 3;
		((Control)tabPage9).Text = "Flash Size";
		tabPage9.UseVisualStyleBackColor = true;
		((Control)button21).Location = new Point(15, 31);
		((Control)button21).Name = "button21";
		((Control)button21).Size = new Size(63, 25);
		((Control)button21).TabIndex = 45;
		((Control)button21).Text = "Mini All";
		((ButtonBase)button21).UseVisualStyleBackColor = true;
		((Control)button21).Click += new EventHandler(button21_Click);
		((Control)button22).Location = new Point(84, 31);
		((Control)button22).Name = "button22";
		((Control)button22).Size = new Size(63, 25);
		((Control)button22).TabIndex = 45;
		((Control)button22).Text = "Nor All";
		((ButtonBase)button22).UseVisualStyleBackColor = true;
		((Control)button22).Click += new EventHandler(button22_Click);
		((Control)tabPage5).Controls.Add((Control)(object)checkBox3);
		((Control)tabPage5).Controls.Add((Control)(object)groupBox7);
		((Control)tabPage5).Controls.Add((Control)(object)button20);
		((Control)tabPage5).Controls.Add((Control)(object)textBox2);
		((Control)tabPage5).Controls.Add((Control)(object)label7);
		((Control)tabPage5).Controls.Add((Control)(object)label6);
		((Control)tabPage5).Controls.Add((Control)(object)labelPV);
		((Control)tabPage5).Controls.Add((Control)(object)labelAOE5);
		((Control)tabPage5).Controls.Add((Control)(object)labelAOE3);
		((Control)tabPage5).Controls.Add((Control)(object)label5);
		((Control)tabPage5).Controls.Add((Control)(object)label4);
		((Control)tabPage5).Controls.Add((Control)(object)labelTH);
		tabPage5.Location = new Point(4, 24);
		((Control)tabPage5).Name = "tabPage5";
		((Control)tabPage5).Padding = new Padding(3);
		((Control)tabPage5).Size = new Size(503, 151);
		tabPage5.TabIndex = 1;
		((Control)tabPage5).Text = "Combo Xa\u0323 Thu\u0309";
		tabPage5.UseVisualStyleBackColor = true;
		((Control)checkBox3).AutoSize = true;
		checkBox3.Checked = true;
		checkBox3.CheckState = (CheckState)1;
		((Control)checkBox3).Location = new Point(331, 124);
		((Control)checkBox3).Name = "checkBox3";
		((Control)checkBox3).Size = new Size(75, 19);
		((Control)checkBox3).TabIndex = 69;
		((Control)checkBox3).Text = "RealTime";
		((ButtonBase)checkBox3).UseVisualStyleBackColor = true;
		checkBox3.CheckedChanged += new EventHandler(checkBox3_CheckedChanged);
		((Control)groupBox7).Controls.Add((Control)(object)pictureBox1);
		((Control)groupBox7).Controls.Add((Control)(object)buttonReset);
		((Control)groupBox7).Controls.Add((Control)(object)comboBox14);
		((Control)groupBox7).Controls.Add((Control)(object)numericUpDown1);
		((Control)groupBox7).Controls.Add((Control)(object)label12);
		((Control)groupBox7).Controls.Add((Control)(object)label15);
		((Control)groupBox7).Controls.Add((Control)(object)button19);
		((Control)groupBox7).Location = new Point(6, 6);
		((Control)groupBox7).Name = "groupBox7";
		((Control)groupBox7).Size = new Size(152, 139);
		((Control)groupBox7).TabIndex = 68;
		groupBox7.TabStop = false;
		((Control)groupBox7).Text = "Cho\u0323n Acc";
		((Control)buttonReset).Location = new Point(87, 106);
		((Control)buttonReset).Name = "buttonReset";
		((Control)buttonReset).Size = new Size(56, 23);
		((Control)buttonReset).TabIndex = 8;
		((Control)buttonReset).Text = "Reset";
		((ButtonBase)buttonReset).UseVisualStyleBackColor = true;
		((Control)buttonReset).Click += new EventHandler(buttonReset_Click);
		((ListControl)comboBox14).FormattingEnabled = true;
		((Control)comboBox14).Location = new Point(6, 20);
		((Control)comboBox14).Name = "comboBox14";
		((Control)comboBox14).Size = new Size(137, 23);
		((Control)comboBox14).TabIndex = 32;
		((Control)comboBox14).Text = "Select Display Name";
		((Control)numericUpDown1).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDown1).Location = new Point(40, 107);
		numericUpDown1.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDown1).Name = "numericUpDown1";
		((Control)numericUpDown1).Size = new Size(37, 23);
		((Control)numericUpDown1).TabIndex = 15;
		numericUpDown1.Value = new decimal(new int[4] { 50, 0, 0, 0 });
		((Control)label12).AutoSize = true;
		((Control)label12).Location = new Point(6, 111);
		((Control)label12).Name = "label12";
		((Control)label12).Size = new Size(29, 15);
		((Control)label12).TabIndex = 13;
		((Control)label12).Text = "FPS:";
		((Control)label15).AutoSize = true;
		((Control)label15).Location = new Point(6, 141);
		((Control)label15).Margin = new Padding(4, 0, 4, 0);
		((Control)label15).Name = "label15";
		((Control)label15).Size = new Size(28, 15);
		((Control)label15).TabIndex = 18;
		((Control)label15).Text = "MP:";
		((Control)button19).Location = new Point(87, 46);
		((Control)button19).Name = "button19";
		((Control)button19).Size = new Size(56, 23);
		((Control)button19).TabIndex = 8;
		((Control)button19).Text = "Rescan";
		((ButtonBase)button19).UseVisualStyleBackColor = true;
		((Control)button19).Click += new EventHandler(button1_Click);
		((Control)button20).Location = new Point(273, 121);
		((Control)button20).Margin = new Padding(4, 3, 4, 3);
		((Control)button20).Name = "button20";
		((Control)button20).Size = new Size(51, 23);
		((Control)button20).TabIndex = 59;
		((Control)button20).Text = "check";
		((ButtonBase)button20).UseVisualStyleBackColor = true;
		((Control)button20).Click += new EventHandler(button20_Click);
		((Control)textBox2).Location = new Point(165, 122);
		((Control)textBox2).Margin = new Padding(4, 3, 4, 3);
		((Control)textBox2).Name = "textBox2";
		((TextBoxBase)textBox2).ReadOnly = true;
		((Control)textBox2).Size = new Size(100, 23);
		((Control)textBox2).TabIndex = 6;
		((Control)label7).AutoSize = true;
		((Control)label7).Font = new Font("Segoe UI", 11f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label7).Location = new Point(181, 6);
		((Control)label7).Margin = new Padding(4, 0, 4, 0);
		((Control)label7).Name = "label7";
		((Control)label7).Size = new Size(50, 20);
		((Control)label7).TabIndex = 60;
		((Control)label7).Text = "Phi Vũ";
		((Control)label6).AutoSize = true;
		((Control)label6).Font = new Font("Segoe UI", 11f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label6).Location = new Point(181, 61);
		((Control)label6).Margin = new Padding(4, 0, 4, 0);
		((Control)label6).Name = "label6";
		((Control)label6).Size = new Size(46, 20);
		((Control)label6).TabIndex = 62;
		((Control)label6).Text = "AOE5";
		((Control)labelPV).AutoSize = true;
		((Control)labelPV).Font = new Font("Segoe UI", 11f, (FontStyle)0, (GraphicsUnit)3);
		((Control)labelPV).Location = new Point(239, 6);
		((Control)labelPV).Margin = new Padding(4, 0, 4, 0);
		((Control)labelPV).Name = "labelPV";
		((Control)labelPV).Size = new Size(31, 20);
		((Control)labelPV).TabIndex = 61;
		((Control)labelPV).Text = "-->";
		((Control)labelAOE5).AutoSize = true;
		((Control)labelAOE5).Font = new Font("Segoe UI", 11f, (FontStyle)0, (GraphicsUnit)3);
		((Control)labelAOE5).Location = new Point(239, 61);
		((Control)labelAOE5).Margin = new Padding(4, 0, 4, 0);
		((Control)labelAOE5).Name = "labelAOE5";
		((Control)labelAOE5).Size = new Size(31, 20);
		((Control)labelAOE5).TabIndex = 63;
		((Control)labelAOE5).Text = "-->";
		((Control)labelAOE3).AutoSize = true;
		((Control)labelAOE3).Font = new Font("Segoe UI", 11f, (FontStyle)0, (GraphicsUnit)3);
		((Control)labelAOE3).Location = new Point(239, 33);
		((Control)labelAOE3).Margin = new Padding(4, 0, 4, 0);
		((Control)labelAOE3).Name = "labelAOE3";
		((Control)labelAOE3).Size = new Size(31, 20);
		((Control)labelAOE3).TabIndex = 67;
		((Control)labelAOE3).Text = "-->";
		((Control)label5).AutoSize = true;
		((Control)label5).Font = new Font("Segoe UI", 11f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label5).Location = new Point(181, 87);
		((Control)label5).Margin = new Padding(4, 0, 4, 0);
		((Control)label5).Name = "label5";
		((Control)label5).Size = new Size(60, 20);
		((Control)label5).TabIndex = 64;
		((Control)label5).Text = "Tinh Hà";
		((Control)label4).AutoSize = true;
		((Control)label4).Font = new Font("Segoe UI", 11f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label4).Location = new Point(181, 33);
		((Control)label4).Margin = new Padding(4, 0, 4, 0);
		((Control)label4).Name = "label4";
		((Control)label4).Size = new Size(46, 20);
		((Control)label4).TabIndex = 66;
		((Control)label4).Text = "AOE3";
		((Control)labelTH).AutoSize = true;
		((Control)labelTH).Font = new Font("Segoe UI", 11f, (FontStyle)0, (GraphicsUnit)3);
		((Control)labelTH).Location = new Point(239, 87);
		((Control)labelTH).Margin = new Padding(4, 0, 4, 0);
		((Control)labelTH).Name = "labelTH";
		((Control)labelTH).Size = new Size(31, 20);
		((Control)labelTH).TabIndex = 65;
		((Control)labelTH).Text = "-->";
		((DataGridViewColumn)Column1).FillWeight = 110f;
		((DataGridViewBand)Column1).Frozen = true;
		((DataGridViewColumn)Column1).HeaderText = "Map";
		((DataGridViewColumn)Column1).Name = "Column1";
		((DataGridViewColumn)Column1).Width = 110;
		((DataGridViewColumn)X).FillWeight = 40f;
		((DataGridViewBand)X).Frozen = true;
		((DataGridViewColumn)X).HeaderText = "X";
		((DataGridViewColumn)X).Name = "X";
		((DataGridViewColumn)X).Width = 40;
		((DataGridViewColumn)Y).FillWeight = 40f;
		((DataGridViewColumn)Y).HeaderText = "Y";
		((DataGridViewColumn)Y).Name = "Y";
		((DataGridViewColumn)Y).Width = 40;
		((DataGridViewColumn)Note).FillWeight = 180f;
		((DataGridViewColumn)Note).HeaderText = "Note";
		((DataGridViewColumn)Note).Name = "Note";
		((DataGridViewBand)Note).Resizable = (DataGridViewTriState)2;
		((DataGridViewColumn)Note).Width = 180;
		((DataGridViewColumn)Tele).FillWeight = 30f;
		((DataGridViewColumn)Tele).HeaderText = "Tele";
		((DataGridViewColumn)Tele).Name = "Tele";
		Tele.Text = "Tele";
		Tele.UseColumnTextForButtonValue = true;
		((DataGridViewColumn)Tele).Width = 30;
		((DataGridViewColumn)Team).FillWeight = 40f;
		((DataGridViewColumn)Team).HeaderText = "Team";
		((DataGridViewColumn)Team).Name = "Team";
		Team.Text = "Team";
		Team.UseColumnTextForButtonValue = true;
		((DataGridViewColumn)Team).Width = 40;
		((DataGridViewColumn)Delete).FillWeight = 30f;
		((DataGridViewColumn)Delete).HeaderText = "Del";
		((DataGridViewColumn)Delete).Name = "Delete";
		Delete.Text = "Del";
		Delete.UseColumnTextForButtonValue = true;
		((DataGridViewColumn)Delete).Width = 30;
		((ContainerControl)this).AutoScaleDimensions = new SizeF(7f, 15f);
		((ContainerControl)this).AutoScaleMode = (AutoScaleMode)1;
		((Form)this).ClientSize = new Size(873, 637);
		((Control)this).Controls.Add((Control)(object)groupBox3);
		((Control)this).Controls.Add((Control)(object)tabControl2);
		((Control)this).Controls.Add((Control)(object)label3);
		((Control)this).Controls.Add((Control)(object)label10);
		((Control)this).Controls.Add((Control)(object)dataGridView1);
		((Control)this).Controls.Add((Control)(object)tabControl1);
		((Form)this).FormBorderStyle = (FormBorderStyle)1;
		((Form)this).Icon = (Icon)((ResourceManager)val).GetObject("$this.Icon");
		((Form)this).KeyPreview = true;
		((Form)this).MaximizeBox = false;
		((Control)this).Name = "TienIch";
		((Form)this).StartPosition = (FormStartPosition)1;
		((Control)this).Text = "xxx";
		((Form)this).FormClosed += new FormClosedEventHandler(TienIch_FormClosed);
		((Form)this).Load += new EventHandler(TienIch_Load);
		((Control)this).KeyDown += new KeyEventHandler(TienIch_KeyDown);
		((ISupportInitialize)numericUpDownFPS).EndInit();
		((ISupportInitialize)pictureBox1).EndInit();
		((Control)groupBox2).ResumeLayout(false);
		((Control)groupBox2).PerformLayout();
		((ISupportInitialize)dataGridView1).EndInit();
		((Control)tabControl1).ResumeLayout(false);
		((Control)tabPage1).ResumeLayout(false);
		((Control)tabPage3).ResumeLayout(false);
		((Control)tabPage3).PerformLayout();
		((Control)tabPage2).ResumeLayout(false);
		((Control)groupBox4).ResumeLayout(false);
		((Control)groupBox4).PerformLayout();
		((Control)groupBox6).ResumeLayout(false);
		((Control)groupBox6).PerformLayout();
		((Control)groupBox5).ResumeLayout(false);
		((Control)groupBox5).PerformLayout();
		((Control)groupBox3).ResumeLayout(false);
		((Control)groupBox3).PerformLayout();
		((Control)tabControl2).ResumeLayout(false);
		((Control)tabPage4).ResumeLayout(false);
		((Control)tabPage4).PerformLayout();
		((Control)tabControl3).ResumeLayout(false);
		((Control)tabPage8).ResumeLayout(false);
		((Control)tabPage6).ResumeLayout(false);
		((Control)tabPage7).ResumeLayout(false);
		((Control)tabPage9).ResumeLayout(false);
		((Control)tabPage5).ResumeLayout(false);
		((Control)tabPage5).PerformLayout();
		((Control)groupBox7).ResumeLayout(false);
		((Control)groupBox7).PerformLayout();
		((ISupportInitialize)numericUpDown1).EndInit();
		((Control)this).ResumeLayout(false);
		((Control)this).PerformLayout();
	}
}
