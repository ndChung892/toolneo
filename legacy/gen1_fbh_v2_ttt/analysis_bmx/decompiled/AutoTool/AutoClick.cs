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
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using AutoTool.Properties;
using KAutoHelper;

namespace AutoTool;

public class AutoClick : Form
{
	public static string linkApp = Application.StartupPath;

	public string pathAutoPhuBan = ((object)linkApp).ToString() + "Anh/AutoPhuBan";

	public string pathTacVu = ((object)linkApp).ToString() + "Anh/TacVu";

	public string pathAutoNhanNVPB = ((object)linkApp).ToString() + "Anh/NhanNVPB";

	public string pathKhac = ((object)linkApp).ToString() + "Anh/Khac";

	public string pathMaps = ((object)linkApp).ToString() + "Anh/Maps";

	public string pathData = linkApp + "/AccData";

	public string pathAutoClick = linkApp + "/AutoClick";

	public string pathLuyenPet = ((object)linkApp).ToString() + "Anh/LuyenPet";

	public string pathBangHoi = ((object)linkApp).ToString() + "Anh/BangHoi";

	public string pathTruMa = ((object)linkApp).ToString() + "Anh/TruMa";

	public string pathBatPet = linkApp + "Anh/AutoBatPet";

	public string pathIconBatPet = linkApp + "Anh/AutoBatPet/Icon";

	public Bitmap AvatarNV;

	private System.IntPtr hWnd = System.IntPtr.Zero;

	private System.IntPtr hWnd_click = System.IntPtr.Zero;

	public bool IsPause = false;

	public bool IsStop_Click = true;

	public bool checkClick = false;

	private System.Threading.Tasks.Task T_NN;

	private System.Threading.Tasks.Task T_Click;

	private System.Threading.Tasks.Task T_Tele;

	public uint processID;

	public uint processID_click;

	private uint[] offset_ToaDoX;

	private uint[] offset_ToaDoY;

	private uint[] offset_FPS;

	private uint myPointer;

	public int ViTriNhanVat_X;

	public int ViTriNhanVat_Y;

	public int VIP;

	public string accMain;

	public string[] charError;

	private static bool isClick = false;

	private static bool isDoubleClick = true;

	public int TieuDe;

	private bool Stop_Soft;

	private Rectangle dragBoxFromMouseDown;

	private int rowIndexFromMouseDown;

	private int rowIndexOfItemUnderMouseToDrop;

	public string pathTheme;

	private string fileName;

	private FontConverter fC;

	private DataGridViewCellStyle TableThemeColor;

	private ImageLayout layout;

	private uint myPointer_map_id;

	private uint[] offset_map_id;

	private uint myPointer_map_load_data;

	private uint[] offset_map_load;

	private uint[] offset_map_data;

	private double dataMapOld;

	private IContainer components;

	private GroupBox groupBox1;

	private Button buttonReset;

	private NumericUpDown numericUpDownFPS;

	private PictureBox pictureBox1;

	private Label label1;

	private Label label2;

	private ComboBox comboBox1;

	private Button button1;

	private NumericUpDown numericUpDownX;

	private NumericUpDown numericUpDownY;

	private Label label7;

	private Label label8;

	private GroupBox groupBox5;

	private Button button3;

	private Button button4;

	private Button button2;

	private Label label5;

	private NumericUpDown numericUpDownDelay;

	private CheckBox ButtonRunAuto;

	private CheckBox ButtonDebug;

	private Button buttonPause;

	private Label label6;

	private CheckBox checkBoxLoop;

	private CheckBox checkBoxD;

	private ComboBox comboBoxImg;

	private Button buttonClick1;

	private CheckBox checkBoxWH;

	private CheckBox checkBoxIF;

	private CheckBox checkBoxP;

	private DataGridView dataGridView1;

	private TextBox textBox1;

	private ComboBox comboBox2;

	private Button button5;

	private Button button6;

	private CheckBox checkBoxWH2;

	private CheckBox checkBoxIF2;

	private Button button7;

	private Button button8;

	private Button button9;

	private CheckBox checkBoxKey;

	private ComboBox comboBoxKey;

	private TextBox textBoxTeleMap;

	private CheckBox checkBoxTeleTeam;

	private NumericUpDown numericUpDownTeleX;

	private Label label3;

	private NumericUpDown numericUpDownTeleY;

	private Label label4;

	private TabControl tabControl1;

	private TabPage tabPage1;

	private TabPage tabPage2;

	private TabPage tabPage3;

	private CheckBox checkBoxItem;

	private TextBox textBox2;

	private TabControl tabControl2;

	private TabPage tabPage4;

	private TabPage tabPage5;

	private Button button13;

	private ComboBox comboBox3;

	private Button button10;

	private Button button11;

	private Button button12;

	private TextBox textBox3;

	private TabPage tabPage8;

	private CheckBox checkBoxEndOff;

	private CheckBox checkBoxEndBugOnl;

	private NumericUpDown numericUpDownEndNV;

	private Label label9;

	private TabPage tabPage9;

	private TextBox textBoxSMS;

	private Label label10;

	private Button button14;

	private Button button15;

	private BackgroundWorker backgroundWorker1;

	private TabControl tabControl3;

	private TabPage tabPage10;

	private TabPage tabPage11;

	private TabPage tabPage12;

	private TextBox textBox4;

	private GroupBox groupBox2;

	private Label label12;

	private Button button16;

	private Label label11;

	private TextBox textBox5;

	private Label label13;

	private Label label15;

	private Label label14;

	private NumericUpDown numericUpDown1;

	private Label label16;

	private CheckBox checkBox1;

	private DataGridViewTextBoxColumn dataGridViewTextBoxColumn1;

	private DataGridViewTextBoxColumn dataGridViewTextBoxColumn3;

	private DataGridViewTextBoxColumn Note;

	private DataGridViewButtonColumn Click;

	private DataGridViewButtonColumn Delete;

	private TabPage tabPage13;

	private TextBox textBox6;

	private LinkLabel linkLabel1;

	private LinkLabel linkLabel2;

	private Button button17;

	[field: CompilerGenerated]
	[field: DebuggerBrowsable(/*Could not decode attribute arguments.*/)]
	public bool IsStop
	{
		[CompilerGenerated]
		get;
		[CompilerGenerated]
		set;
	}

	public AutoClick()
	{
		//IL_0200: Unknown result type (might be due to invalid IL or missing references)
		//IL_020a: Expected O, but got Unknown
		//IL_020b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0215: Expected O, but got Unknown
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
		VIP = 0;
		accMain = "null";
		charError = new string[2] { "BMxToolAutoClickData", "BMxToolAutoClickCodeData" };
		TieuDe = 30;
		Stop_Soft = false;
		pathTheme = linkApp + "/Theme";
		fC = new FontConverter();
		TableThemeColor = new DataGridViewCellStyle();
		myPointer_map_id = 11180660u;
		uint[] array4 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array4, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_map_id = array4;
		myPointer_map_load_data = 11170512u;
		uint[] array5 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array5, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_map_load = array5;
		uint[] array6 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array6, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_map_data = array6;
		dataMapOld = -1.0;
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

	private bool FindItem(System.IntPtr hWnd, string pathItem)
	{
		//IL_003b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0040: Unknown result type (might be due to invalid IL or missing references)
		//IL_004a: Unknown result type (might be due to invalid IL or missing references)
		//IL_004f: Unknown result type (might be due to invalid IL or missing references)
		//IL_00b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c4: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c9: Unknown result type (might be due to invalid IL or missing references)
		//IL_011e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0123: Unknown result type (might be due to invalid IL or missing references)
		//IL_012f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0134: Unknown result type (might be due to invalid IL or missing references)
		int num = 0;
		while (true)
		{
			FindsAndClick(hWnd, pathAutoPhuBan + "/MuiTenIcon.png", 1, 1, "mũi tên mở icon");
			Point? val = FindPoint(hWnd, pathItem);
			Point val2;
			if (val.HasValue)
			{
				val2 = val.Value;
				int x = ((Point)(ref val2)).X;
				val2 = val.Value;
				AutoControl.SendClickOnPosition(hWnd, x, ((Point)(ref val2)).Y - 30, (EMouseKey)0, 1);
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
				val2 = val.Value;
				int x2 = ((Point)(ref val2)).X;
				val2 = val.Value;
				AutoControl.SendClickOnPosition(hWnd, x2, ((Point)(ref val2)).Y - 30, (EMouseKey)0, 1);
				delay_100ms(5);
				continue;
			}
			List<Point> val3 = FindPoints(hWnd, pathTacVu + "/MuiTenSangPhai.png");
			if (val3.Count != 0)
			{
				for (int i = 0; i < val3.Count; i++)
				{
					val2 = val3[i];
					int x3 = ((Point)(ref val2)).X;
					val2 = val3[i];
					AutoControl.SendClickOnPosition(hWnd, x3, ((Point)(ref val2)).Y - 30, (EMouseKey)0, 1);
					delay_100ms(5);
				}
			}
			while (FindAndClick(hWnd, pathAutoPhuBan + "/NutLen.png", 2, 2, "Lên").HasValue)
			{
				PressKey("ESC");
				delay_100ms(5);
			}
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
			delay_100ms(2);
			return result;
		}
		return null;
	}

	private bool FindsAndClick(System.IntPtr hWnd, string pathFind, int offsetX, int offsetY, string textDebug)
	{
		//IL_001f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0024: Unknown result type (might be due to invalid IL or missing references)
		//IL_0030: Unknown result type (might be due to invalid IL or missing references)
		//IL_0035: Unknown result type (might be due to invalid IL or missing references)
		List<Point> val = FindPoints(hWnd, pathFind);
		if (val.Count != 0)
		{
			for (int i = 0; i < val.Count; i++)
			{
				Point val2 = val[i];
				int num = ((Point)(ref val2)).X + offsetX;
				val2 = val[i];
				AutoControl.SendClickOnPosition(hWnd, num, ((Point)(ref val2)).Y + offsetY - 30, (EMouseKey)0, 1);
				delay_100ms(5);
			}
			return true;
		}
		return false;
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

	private void delay_20ms(double x)
	{
		//IL_0028: Unknown result type (might be due to invalid IL or missing references)
		double num = 0.0;
		for (x += (double)Program.AppMain.delay_System; num < x; num += 1.0)
		{
			Thread.Sleep(TimeSpan.FromMilliseconds(20.0));
		}
		if (IsStop_Click)
		{
			T_Click.Wait();
		}
		while (IsPause && !IsStop_Click)
		{
		}
	}

	private void delay_100ms2(double x)
	{
		//IL_0028: Unknown result type (might be due to invalid IL or missing references)
		double num = 0.0;
		for (x += (double)Program.AppMain.delay_System; num < x; num += 1.0)
		{
			Thread.Sleep(TimeSpan.FromMilliseconds(100.0));
		}
		if (IsStop_Click)
		{
			T_Click.Wait();
		}
		while (IsPause && !IsStop_Click)
		{
		}
	}

	private bool WaitAvatar(System.IntPtr hWnd)
	{
		//IL_0009: Unknown result type (might be due to invalid IL or missing references)
		//IL_0022: Expected O, but got Unknown
		Image val = CaptureHelper.CaptureWindow(hWnd);
		Bitmap val2 = ImageScanOpenCV.Find((Bitmap)val, AvatarNV, 0.9);
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

	private static List<Point>? FindPoints(System.IntPtr hWnd, string pathCanTim)
	{
		//IL_0010: Unknown result type (might be due to invalid IL or missing references)
		//IL_0024: Expected O, but got Unknown
		Image val = CaptureHelper.CaptureWindow(hWnd);
		Bitmap image = ImageScanOpenCV.GetImage(pathCanTim);
		return ImageScanOpenCV.FindOutPoints((Bitmap)val, image, 0.9);
	}

	private static List<Point>? FindPoints2(Image chupWindow, string pathCanTim)
	{
		//IL_0009: Unknown result type (might be due to invalid IL or missing references)
		//IL_001d: Expected O, but got Unknown
		Bitmap image = ImageScanOpenCV.GetImage(pathCanTim);
		return ImageScanOpenCV.FindOutPoints((Bitmap)chupWindow, image, 0.9);
	}

	private void debugText(string x)
	{
		if (x == "ClearDebugText")
		{
			((Control)textBox6).Text = "";
			return;
		}
		if (x == "End_Line")
		{
			((Control)textBox6).Text = "-----------------------";
			return;
		}
		((Control)groupBox2).Text = "Debug - " + ((TextBoxBase)textBox6).TextLength.ToString("D6") + " / 999999";
		((TextBoxBase)textBox6).AppendText(x + "\r\n");
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

	private void Auto_Click(int row)
	{
		//IL_002a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0051: Unknown result type (might be due to invalid IL or missing references)
		//IL_0549: Unknown result type (might be due to invalid IL or missing references)
		//IL_0570: Unknown result type (might be due to invalid IL or missing references)
		dataGridView1.FirstDisplayedScrollingRowIndex = row;
		((DataGridViewBand)dataGridView1.Rows[row]).DefaultCellStyle.BackColor = TableThemeColor.SelectionBackColor;
		((DataGridViewBand)dataGridView1.Rows[row]).DefaultCellStyle.ForeColor = TableThemeColor.SelectionForeColor;
		int num = default(int);
		int.TryParse(dataGridView1.Rows[row].Cells[1].Value.ToString(), ref num);
		string text = dataGridView1.Rows[row].Cells[0].Value.ToString();
		bool flag = false;
		switch (text[2])
		{
		case 'P':
		{
			string[] array2 = text.Substring(5, text.Length - 6).Split(';', (StringSplitOptions)0);
			int x = default(int);
			int.TryParse(array2[0], ref x);
			int y = default(int);
			int.TryParse(array2[1], ref y);
			if (text[0] == 'C')
			{
				Click_Point(x, y, isClick);
			}
			else
			{
				Click_Point(x, y, isDoubleClick);
			}
			delay_20ms(num);
			break;
		}
		case 'I':
		{
			string text8 = text.Substring(5, text.Length - 10);
			if (FindsAndClick_center(doubleClick: (text[0] != 'C') ? isDoubleClick : isClick, img: pathAutoClick + "/" + text8 + ".png"))
			{
				delay_20ms(num);
			}
			break;
		}
		case 'W':
		{
			string text5 = text.Substring(5, text.Length - 10);
			flag = ((text[0] != 'C') ? isDoubleClick : isClick);
			while (FindsAndClick_center(pathAutoClick + "/" + text5 + ".png", flag))
			{
				delay_20ms(num);
			}
			break;
		}
		case 'i':
		{
			string text4 = text.Substring(5, text.Length - 10);
			if (text[0] == 'C')
			{
				flag = isClick;
			}
			else
			{
				flag = isDoubleClick;
			}
			if (Enumerable.Count<Point>((System.Collections.Generic.IEnumerable<Point>)FindPoints_center(hWnd, pathAutoClick + "/" + text4 + ".png")) == 0)
			{
				delay_20ms(num);
			}
			break;
		}
		case 'w':
		{
			string text7 = text.Substring(5, text.Length - 10);
			if (text[0] == 'C')
			{
				flag = isClick;
			}
			else
			{
				flag = isDoubleClick;
			}
			while (Enumerable.Count<Point>((System.Collections.Generic.IEnumerable<Point>)FindPoints_center(hWnd, pathAutoClick + "/" + text7 + ".png")) == 0)
			{
				delay_20ms(num);
			}
			break;
		}
		case 'K':
		{
			string x2 = text.Substring(6, text.Length - 7);
			PressKey(x2);
			delay_20ms(num);
			break;
		}
		case 'A':
		{
			string[] array4 = text.Substring(5, text.Length - 6).Split(';', (StringSplitOptions)0);
			PhuToiMap2(array4[0].Trim(), int.Parse(array4[1]), int.Parse(array4[2]), team: false);
			delay_20ms(num);
			break;
		}
		case 'T':
		{
			string[] array3 = text.Substring(5, text.Length - 6).Split(';', (StringSplitOptions)0);
			PhuToiMap2(array3[0].Trim(), int.Parse(array3[1]), int.Parse(array3[2]), team: true);
			delay_20ms(num);
			break;
		}
		case 'F':
		{
			string text6 = text.Substring(5, text.Length - 10);
			FindItem(hWnd, pathAutoClick + "/" + text6 + ".png");
			delay_20ms(num);
			break;
		}
		case 'E':
		{
			string[] array = text.Split('-', (StringSplitOptions)0);
			string text2 = array[1];
			string text3 = text2;
			if (!(text3 == "Off"))
			{
				if (text3 == "BugOnl")
				{
					RunEnd("BugOnl", int.Parse(array[2]));
					Stop_Soft = true;
				}
			}
			else
			{
				RunEnd("Off");
				Stop_Soft = true;
			}
			break;
		}
		case 'S':
			SendTextKeyBoard(hWnd, text.Split('(', (StringSplitOptions)0)[1].Substring(0, text.Split('(', (StringSplitOptions)0)[1].Length - 1));
			break;
		}
		SendClickUpOnPosition(hWnd, 20, 20, (EMouseKey)0);
		((DataGridViewBand)dataGridView1.Rows[row]).DefaultCellStyle.BackColor = TableThemeColor.BackColor;
		((DataGridViewBand)dataGridView1.Rows[row]).DefaultCellStyle.ForeColor = TableThemeColor.ForeColor;
	}

	private void Click_Point(int X, int Y, bool doubleClick)
	{
		if (doubleClick)
		{
			SendClickOnPosition(hWnd, X, Y, (EMouseKey)0);
			delay_20ms(4.0);
		}
		SendClickOnPosition(hWnd, X, Y, (EMouseKey)0);
	}

	private bool FindsAndClick_center(string img, bool doubleClick)
	{
		//IL_0076: Unknown result type (might be due to invalid IL or missing references)
		//IL_007b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0086: Unknown result type (might be due to invalid IL or missing references)
		//IL_008b: Unknown result type (might be due to invalid IL or missing references)
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
					delay_20ms(5.0);
				}
				System.IntPtr controlHandle2 = hWnd;
				val2 = val[i];
				int x2 = ((Point)(ref val2)).X;
				val2 = val[i];
				SendClickOnPosition(controlHandle2, x2, ((Point)(ref val2)).Y, (EMouseKey)0);
				delay_20ms(5.0);
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
		List<Point> val2 = ImageScanOpenCV.FindOutPoints((Bitmap)val, image, 0.95);
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

	private void PressKey(string x)
	{
		string text = x.ToUpper();
		string text2 = text;
		switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text2))
		{
		case 3044644013u:
			if (text2 == "ENTER")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)13);
			}
			break;
		case 3289118412u:
			if (text2 == "A")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)65);
			}
			break;
		case 3356228888u:
			if (text2 == "M")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)77);
			}
			break;
		case 3842779839u:
			if (text2 == "`")
			{
				FindAndClick(hWnd, pathTacVu + "/MuiTenChucNang.png", 1, 1, "show~");
				FindAndClick(hWnd, pathTacVu + "/BanDo.png", 2, 2, "bản đồ");
				FindAndClick(hWnd, pathTacVu + "/MuiTenThietLap1.png", 1, 1, "hide~");
			}
			break;
		case 3931159262u:
			if (text2 == "ESC")
			{
				FindAndClick(hWnd, pathTacVu + "/Tat.png", 2, 2, "Tắt");
				FindAndClick(hWnd, pathTruMa + "/Boss_Tat.png", 2, 2, "Tắt");
				AutoControl.SendClickOnPosition(hWnd, 390, 657, (EMouseKey)0, 1);
				delay_100ms(2);
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)27);
			}
			break;
		case 3272340793u:
			if (text2 == "F")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)70);
			}
			break;
		case 3574337935u:
			if (text2 == "P")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)80);
			}
			break;
		case 3557560316u:
			if (text2 == "Q")
			{
				while (!FindAndClick(hWnd, pathLuyenPet + "/key_Q.png", 2, 2, "Q").HasValue)
				{
					AutoControl.SendKeyBoardPress(hWnd, (VKeys)27);
					delay_100ms(5);
				}
			}
			break;
		case 3742114125u:
			if (text2 == "Z")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)90);
			}
			break;
		case 3339451269u:
			if (text2 == "B")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)66);
			}
			break;
		case 3322673650u:
			if (text2 == "C")
			{
				FindAndClick(hWnd, pathKhac + "/Icon_NhanVat.png", 0, 0, "Mở Nhân Vật");
			}
			break;
		case 403239141u:
			if (text2 == "SPACE")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)32);
			}
			break;
		}
	}

	private void Auto_Click_command(string line)
	{
		try
		{
			bool flag = false;
			string text = line.Split('(', (StringSplitOptions)0)[0].ToUpper();
			string text2 = text;
			string[] array;
			int x = default(int);
			int num2 = default(int);
			switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text2))
			{
			case 2455310409u:
				if (!(text2 == "C-PT"))
				{
					break;
				}
				goto IL_018d;
			case 1561051550u:
				if (!(text2 == "D-PT"))
				{
					break;
				}
				goto IL_018d;
			case 1491660422u:
				if (text2 == "IF")
				{
				}
				break;
			case 2583867822u:
				if (text2 == "WHILE")
				{
				}
				break;
			case 53029398u:
				if (text2 == "IF-NOT")
				{
				}
				break;
			case 2611866318u:
				if (text2 == "WHILE-NOT")
				{
				}
				break;
			case 3012135421u:
				if (text2 == "P-KEY")
				{
					string x2 = line.Split("_", (StringSplitOptions)0)[0].Substring(6, line.Split("_", (StringSplitOptions)0)[0].Length - 7);
					PressKey(x2);
					int num5 = default(int);
					if (int.TryParse(line.Split("delay20ms(", (StringSplitOptions)0)[1].Substring(0, line.Split("delay20ms(", (StringSplitOptions)0)[1].Length - 1), ref num5))
					{
						delay_20ms(num5);
					}
				}
				break;
			case 83494004u:
				if (text2 == "T-AM")
				{
					string[] array3 = line.Split("_", (StringSplitOptions)0)[0].Substring(5, line.Split("_", (StringSplitOptions)0)[0].Length - 6).Split(';', (StringSplitOptions)0);
					int num4 = default(int);
					if (int.TryParse(line.Split("delay20ms(", (StringSplitOptions)0)[1].Substring(0, line.Split("delay20ms(", (StringSplitOptions)0)[1].Length - 1), ref num4))
					{
						delay_20ms(num4);
					}
				}
				break;
			case 3374908469u:
				if (text2 == "T-TM")
				{
					string[] array2 = line.Split("_", (StringSplitOptions)0)[0].Substring(5, line.Split("_", (StringSplitOptions)0)[0].Length - 6).Split(';', (StringSplitOptions)0);
					int num3 = default(int);
					if (int.TryParse(line.Split("delay20ms(", (StringSplitOptions)0)[1].Substring(0, line.Split("delay20ms(", (StringSplitOptions)0)[1].Length - 1), ref num3))
					{
						delay_20ms(num3);
					}
				}
				break;
			case 1966197253u:
				{
					if (text2 == "F-FI")
					{
						FindItem(hWnd, pathAutoClick + "/" + line.Split("_", (StringSplitOptions)0)[0].Substring(5, line.Split("_", (StringSplitOptions)0)[0].Length - 10) + ".png");
						int num = default(int);
						if (int.TryParse(line.Split("delay20ms(", (StringSplitOptions)0)[1].Substring(0, line.Split("delay20ms(", (StringSplitOptions)0)[1].Length - 1), ref num))
						{
							delay_20ms(num);
						}
					}
					break;
				}
				IL_018d:
				flag = ((line[0] != 'C') ? isDoubleClick : isClick);
				array = line.Split("_", (StringSplitOptions)0)[0].Substring(5, line.Split("_", (StringSplitOptions)0)[0].Length - 6).Split(';', (StringSplitOptions)0);
				if (int.TryParse(array[0], ref x))
				{
					int y = default(int);
					int.TryParse(array[1], ref y);
					Click_Point(x, y, flag);
				}
				else
				{
					FindsAndClick_center(pathAutoClick + "/" + line.Split("_", (StringSplitOptions)0)[0].Substring(5, line.Split("_", (StringSplitOptions)0)[0].Length - 10) + ".png", flag);
				}
				if (int.TryParse(line.Split("delay20ms(", (StringSplitOptions)0)[1].Substring(0, line.Split("delay20ms(", (StringSplitOptions)0)[1].Length - 1), ref num2))
				{
					delay_20ms(num2);
				}
				break;
			}
		}
		catch (System.Exception)
		{
		}
	}

	private void Auto_Click_command2(string line)
	{
		//IL_075f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0764: Unknown result type (might be due to invalid IL or missing references)
		//IL_076f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0774: Unknown result type (might be due to invalid IL or missing references)
		try
		{
			bool flag = false;
			string text = line.Split('(', (StringSplitOptions)0)[0].ToUpper();
			string text2 = text;
			string[] array3;
			string x2;
			string[] array5;
			int x3 = default(int);
			string[] array6;
			switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text2))
			{
			case 2455310409u:
				if (!(text2 == "C-PT"))
				{
					break;
				}
				goto IL_0326;
			case 1561051550u:
				if (!(text2 == "D-PT"))
				{
					break;
				}
				goto IL_0326;
			case 3575312935u:
				if (!(text2 == "CLICKPOINT"))
				{
					break;
				}
				goto IL_0326;
			case 182171030u:
				if (!(text2 == "DOUBLECLICKPOINT"))
				{
					break;
				}
				goto IL_0326;
			case 3012135421u:
				if (!(text2 == "P-KEY"))
				{
					break;
				}
				goto IL_0400;
			case 1053148531u:
				if (!(text2 == "KEYPRESS"))
				{
					break;
				}
				goto IL_0400;
			case 3060589203u:
				if (!(text2 == "PRESSKEY"))
				{
					break;
				}
				goto IL_0400;
			case 83494004u:
				if (!(text2 == "T-AM"))
				{
					break;
				}
				goto IL_0443;
			case 4063247858u:
				if (!(text2 == "TELEALONEMAP"))
				{
					break;
				}
				goto IL_0443;
			case 3374908469u:
				if (!(text2 == "T-TM"))
				{
					break;
				}
				goto IL_04aa;
			case 993387914u:
				if (!(text2 == "TELETEAMMAP"))
				{
					break;
				}
				goto IL_04aa;
			case 1966197253u:
				if (!(text2 == "F-FI"))
				{
					break;
				}
				goto IL_0511;
			case 3194491057u:
				if (!(text2 == "FINDITEM"))
				{
					break;
				}
				goto IL_0511;
			case 2179045026u:
			{
				int num8 = default(int);
				if (text2 == "DELAY20MS" && int.TryParse(line.Substring(10, line.Length - 11), ref num8))
				{
					delay_20ms(num8);
					debugText(line);
				}
				break;
			}
			case 293106427u:
			{
				int num7 = default(int);
				if (text2 == "DELAY100MS" && int.TryParse(line.Substring(11, line.Length - 12), ref num7))
				{
					delay_100ms2(num7);
					debugText(line);
				}
				break;
			}
			case 3305896031u:
			{
				if (!(text2 == "@"))
				{
					break;
				}
				string[] array4 = line.Split("(", (StringSplitOptions)0)[1].Substring(0, line.Split("(", (StringSplitOptions)0)[1].Length - 1).Split('-', (StringSplitOptions)0);
				string text5 = array4[1].ToUpper();
				string text6 = text5;
				if (!(text6 == "OFF"))
				{
					if (text6 == "BUGONL")
					{
						RunEnd("BugOnl", int.Parse(array4[2]));
						debugText(line);
						Stop_Soft = true;
					}
				}
				else
				{
					RunEnd("Off");
					debugText(line);
					Stop_Soft = true;
				}
				break;
			}
			case 1578445738u:
				if (text2 == "SMS")
				{
					SendTextKeyBoard(hWnd, line.Split('(', (StringSplitOptions)0)[1].Substring(0, line.Split('(', (StringSplitOptions)0)[1].Length - 1));
					debugText(line);
				}
				break;
			case 2170861626u:
				if (text2 == "DRAGDROP")
				{
					string text4 = line.Split("(", (StringSplitOptions)0)[1].Substring(0, line.Split("(", (StringSplitOptions)0)[1].Length - 1);
					string[] array2 = text4.Split(",", (StringSplitOptions)0);
					Point? val = FindPoint(hWnd, pathAutoClick + "/" + array2[0].Substring(0, array2[0].Length - 4) + ".png");
					if (val.HasValue)
					{
						int num5 = default(int);
						int.TryParse(array2[1], ref num5);
						int num6 = default(int);
						int.TryParse(array2[2], ref num6);
						System.IntPtr intPtr = hWnd;
						Point value = val.Value;
						int x = ((Point)(ref value)).X;
						value = val.Value;
						AutoControl.SendDragAndDropOnPosition(intPtr, x, ((Point)(ref value)).Y - 30, num5, num6 - 30, 10, 10, 0.05);
						debugText(line);
					}
				}
				break;
			case 3386010572u:
				{
					if (text2 == "DRAGDROPPOINT")
					{
						string text3 = line.Split("(", (StringSplitOptions)0)[1].Substring(0, line.Split("(", (StringSplitOptions)0)[1].Length - 1);
						string[] array = text3.Split(",", (StringSplitOptions)0);
						int num = default(int);
						int.TryParse(array[0], ref num);
						int num2 = default(int);
						int.TryParse(array[1], ref num2);
						int num3 = default(int);
						int.TryParse(array[2], ref num3);
						int num4 = default(int);
						int.TryParse(array[3], ref num4);
						AutoControl.SendDragAndDropOnPosition(hWnd, num, num2 - 30, num3, num4 - 30, 10, 10, 0.05);
						debugText(line);
					}
					break;
				}
				IL_0443:
				array3 = line.Split("(", (StringSplitOptions)0)[1].Substring(0, line.Split("(", (StringSplitOptions)0)[1].Length - 1).Split(';', (StringSplitOptions)0);
				PhuToiMap2(array3[0].Trim(), int.Parse(array3[1]), int.Parse(array3[2]), team: false);
				debugText(line);
				break;
				IL_0400:
				x2 = line.Split("(", (StringSplitOptions)0)[1].Substring(0, line.Split("(", (StringSplitOptions)0)[1].Length - 1);
				PressKey(x2);
				debugText(line);
				break;
				IL_0326:
				flag = ((line[0] != 'C') ? isDoubleClick : isClick);
				array5 = line.Split("(", (StringSplitOptions)0)[1].Substring(0, line.Split("(", (StringSplitOptions)0)[1].Length - 1).Split(';', (StringSplitOptions)0);
				if (int.TryParse(array5[0], ref x3))
				{
					int y = default(int);
					int.TryParse(array5[1], ref y);
					Click_Point(x3, y, flag);
				}
				else
				{
					FindsAndClick_center(pathAutoClick + "/" + line.Split("(", (StringSplitOptions)0)[1].Substring(0, line.Split("(", (StringSplitOptions)0)[1].Length - 5) + ".png", flag);
				}
				debugText(line);
				break;
				IL_0511:
				FindItem(hWnd, pathAutoClick + "/" + line.Split("(", (StringSplitOptions)0)[1].Substring(0, line.Split("(", (StringSplitOptions)0)[1].Length - 5) + ".png");
				debugText(line);
				break;
				IL_04aa:
				array6 = line.Split("(", (StringSplitOptions)0)[1].Substring(0, line.Split("(", (StringSplitOptions)0)[1].Length - 1).Split(';', (StringSplitOptions)0);
				PhuToiMap2(array6[0].Trim(), int.Parse(array6[1]), int.Parse(array6[2]), team: true);
				debugText(line);
				break;
			}
		}
		catch (System.Exception)
		{
		}
	}

	private void Auto_Click_command3(string line)
	{
		try
		{
			string text = line.Split('(', (StringSplitOptions)0)[0].ToUpper();
			string text2 = text;
			int num = default(int);
			string text3;
			switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text2))
			{
			case 1491660422u:
				if (!(text2 == "IF"))
				{
					break;
				}
				if (FindPoint(hWnd, pathAutoClick + "/" + line.Split("_", (StringSplitOptions)0)[0].Split("(", (StringSplitOptions)0)[1].Substring(0, line.Split("_", (StringSplitOptions)0)[0].Split("(", (StringSplitOptions)0)[1].Length - 5) + ".png").HasValue)
				{
					string[] array5 = line.Split("{", (StringSplitOptions)0)[1].Substring(0, line.Split("{", (StringSplitOptions)0)[1].Length - 1).Split("_", (StringSplitOptions)0);
					for (int n = 0; n < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array5); n++)
					{
						Auto_Click_command2(array5[n]);
					}
				}
				return;
			case 2583867822u:
				if (!(text2 == "WHILE"))
				{
					break;
				}
				goto IL_02cd;
			case 1190649018u:
				if (!(text2 == "WH"))
				{
					break;
				}
				goto IL_02cd;
			case 53029398u:
				if (!(text2 == "IF-NOT"))
				{
					break;
				}
				goto IL_0349;
			case 2549159419u:
				if (!(text2 == "!IF"))
				{
					break;
				}
				goto IL_0349;
			case 2611866318u:
				if (!(text2 == "WHILE-NOT"))
				{
					break;
				}
				goto IL_049d;
			case 3593091905u:
				if (!(text2 == "!WHILE"))
				{
					break;
				}
				goto IL_049d;
			case 1780934539u:
				if (!(text2 == "!WH"))
				{
					break;
				}
				goto IL_049d;
			case 2028102945u:
				if (!(text2 == "LP"))
				{
					break;
				}
				goto IL_051c;
			case 3688922219u:
				{
					if (!(text2 == "LOOP"))
					{
						break;
					}
					goto IL_051c;
				}
				IL_051c:
				if (!int.TryParse(line.Split("_", (StringSplitOptions)0)[0].Split("(", (StringSplitOptions)0)[1].Substring(0, line.Split("_", (StringSplitOptions)0)[0].Split("(", (StringSplitOptions)0)[1].Length - 1), ref num))
				{
					return;
				}
				for (int i = 0; i < num; i++)
				{
					string[] array = line.Split("{", (StringSplitOptions)0)[1].Substring(0, line.Split("{", (StringSplitOptions)0)[1].Length - 1).Split("_", (StringSplitOptions)0);
					for (int j = 0; j < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array); j++)
					{
						Auto_Click_command2(array[j]);
					}
				}
				return;
				IL_049d:
				while (!FindPoint(hWnd, pathAutoClick + "/" + line.Split("_", (StringSplitOptions)0)[0].Split("(", (StringSplitOptions)0)[1].Substring(0, line.Split("_", (StringSplitOptions)0)[0].Split("(", (StringSplitOptions)0)[1].Length - 5) + ".png").HasValue)
				{
					string[] array2 = line.Split("{", (StringSplitOptions)0)[1].Substring(0, line.Split("{", (StringSplitOptions)0)[1].Length - 1).Split("_", (StringSplitOptions)0);
					for (int k = 0; k < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array2); k++)
					{
						Auto_Click_command2(array2[k]);
					}
				}
				return;
				IL_0349:
				text3 = line.Split("_", (StringSplitOptions)0)[0];
				if (!FindPoint(hWnd, pathAutoClick + "/" + line.Split("_", (StringSplitOptions)0)[0].Split("(", (StringSplitOptions)0)[1].Substring(0, line.Split("_", (StringSplitOptions)0)[0].Split("(", (StringSplitOptions)0)[1].Length - 5) + ".png").HasValue)
				{
					string[] array3 = line.Split("{", (StringSplitOptions)0)[1].Substring(0, line.Split("{", (StringSplitOptions)0)[1].Length - 1).Split("_", (StringSplitOptions)0);
					for (int l = 0; l < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array3); l++)
					{
						Auto_Click_command2(array3[l]);
					}
				}
				return;
				IL_02cd:
				while (FindPoint(hWnd, pathAutoClick + "/" + line.Split("_", (StringSplitOptions)0)[0].Split("(", (StringSplitOptions)0)[1].Substring(0, line.Split("_", (StringSplitOptions)0)[0].Split("(", (StringSplitOptions)0)[1].Length - 5) + ".png").HasValue)
				{
					string[] array4 = line.Split("{", (StringSplitOptions)0)[1].Substring(0, line.Split("{", (StringSplitOptions)0)[1].Length - 1).Split("_", (StringSplitOptions)0);
					for (int m = 0; m < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array4); m++)
					{
						Auto_Click_command2(array4[m]);
					}
				}
				return;
			}
			Auto_Click_command2(line);
		}
		catch (System.Exception)
		{
		}
	}

	private void ButtonDebug_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		//IL_001a: Invalid comparison between Unknown and I4
		//IL_005e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0064: Invalid comparison between Unknown and I4
		//IL_004a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0094: Unknown result type (might be due to invalid IL or missing references)
		checkBox1.Checked = false;
		if ((int)ButtonDebug.CheckState == 1)
		{
			((Control)ButtonDebug).Text = "Thu Gọn";
			((Control)groupBox5).Visible = true;
			((Form)this).Size = new Size(742, 639);
		}
		else if ((int)ButtonDebug.CheckState == 0)
		{
			((Control)ButtonDebug).Text = "Công Cụ";
			((Control)groupBox5).Visible = false;
			((Form)this).Size = new Size(520, 639);
		}
	}

	private void button4_MouseUp(object sender, MouseEventArgs e)
	{
		//IL_001c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0021: Unknown result type (might be due to invalid IL or missing references)
		//IL_0032: Unknown result type (might be due to invalid IL or missing references)
		//IL_0037: Unknown result type (might be due to invalid IL or missing references)
		//IL_0041: Unknown result type (might be due to invalid IL or missing references)
		//IL_0046: Unknown result type (might be due to invalid IL or missing references)
		//IL_0080: Unknown result type (might be due to invalid IL or missing references)
		Cursor.Current = Cursors.Default;
		Point globalPoint = AutoControl.GetGlobalPoint(hWnd, (Point?)null);
		int x = ((Point)(ref globalPoint)).X;
		int y = ((Point)(ref globalPoint)).Y;
		Point position = Cursor.Position;
		int x2 = ((Point)(ref position)).X;
		position = Cursor.Position;
		int y2 = ((Point)(ref position)).Y;
		numericUpDownX.Value = decimal.op_Implicit(x2 - x);
		numericUpDownY.Value = decimal.op_Implicit(y2 - y);
		((Control)button4).BackColor = Color.Green;
	}

	private void button4_MouseDown(object sender, MouseEventArgs e)
	{
		Cursor.Current = Cursors.Cross;
	}

	private void button2_Click(object sender, EventArgs e)
	{
		//IL_0172: Unknown result type (might be due to invalid IL or missing references)
		string[] array = new string[11]
		{
			"ESC", "Enter", "`", "B", "F", "M", "P", "C", "Z", "Q",
			"Space"
		};
		string text = "";
		text = ((!checkBoxD.Checked) ? "C-" : "D-");
		switch (tabControl1.SelectedIndex)
		{
		default:
			return;
		case 0:
			if (checkBoxP.Checked)
			{
				text = string.Concat(new string[6]
				{
					text,
					"PT(",
					numericUpDownX.Value.ToString(),
					";",
					numericUpDownY.Value.ToString(),
					")"
				});
				break;
			}
			if (checkBoxKey.Checked)
			{
				if (Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)array, ((Control)comboBoxKey).Text))
				{
					text = "P-Key(" + ((Control)comboBoxKey).Text + ")";
					break;
				}
				MessageBox.Show("Key Chưa Cập Nhật");
				return;
			}
			return;
		case 1:
			if (checkBoxIF.Checked)
			{
				text = text + "IF(" + ((Control)comboBoxImg).Text + ".png)";
				break;
			}
			if (checkBoxWH.Checked)
			{
				text = text + "WH(" + ((Control)comboBoxImg).Text + ".png)";
				break;
			}
			if (checkBoxIF2.Checked)
			{
				text = text + "iF(" + ((Control)comboBoxImg).Text + ".png)";
				break;
			}
			if (checkBoxWH2.Checked)
			{
				text = text + "wH(" + ((Control)comboBoxImg).Text + ".png)";
				break;
			}
			if (checkBoxItem.Checked)
			{
				text = "F-FI(" + ((Control)comboBoxImg).Text + ".png)";
				break;
			}
			return;
		case 2:
			text = ((!checkBoxTeleTeam.Checked) ? "T-AM" : "T-TM");
			text = string.Concat(new string[8]
			{
				text,
				"(",
				((Control)textBoxTeleMap).Text,
				";",
				numericUpDownTeleX.Value.ToString(),
				";",
				numericUpDownTeleY.Value.ToString(),
				")"
			});
			break;
		case 3:
			if (checkBoxEndBugOnl.Checked)
			{
				text = "@:End-BugOnl-" + numericUpDownEndNV.Value;
			}
			else if (checkBoxEndOff.Checked)
			{
				text = "@:End-Off";
			}
			break;
		case 4:
			text = "SMS(" + ((Control)textBoxSMS).Text + ")";
			break;
		}
		dataGridView1.Rows.Add(new object[2]
		{
			text,
			(int)numericUpDownDelay.Value
		});
	}

	private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
	{
		//IL_0002: Unknown result type (might be due to invalid IL or missing references)
		//IL_0008: Expected O, but got Unknown
		//IL_004a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0050: Invalid comparison between Unknown and I4
		//IL_0085: Unknown result type (might be due to invalid IL or missing references)
		DataGridView val = (DataGridView)sender;
		string name = val.Columns[e.ColumnIndex].Name;
		string text = name;
		if (!(text == "Delete"))
		{
			if (text == "Click")
			{
				IsStop_Click = false;
				Auto_Click(e.RowIndex);
				IsStop_Click = true;
			}
		}
		else if ((int)MessageBox.Show("Chắc chắn Xóa ?", "Cảnh Báo", (MessageBoxButtons)4, (MessageBoxIcon)48) == 6)
		{
			dataGridView1.Rows.RemoveAt(((DataGridViewBand)dataGridView1.CurrentRow).Index);
			MessageBox.Show("Xong", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)64);
		}
	}

	private void button3_Click(object sender, EventArgs e)
	{
		//IL_004e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0054: Expected O, but got Unknown
		//IL_0071: Unknown result type (might be due to invalid IL or missing references)
		//IL_0077: Expected O, but got Unknown
		//IL_00a1: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a7: Invalid comparison between Unknown and I4
		//IL_002d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0236: Unknown result type (might be due to invalid IL or missing references)
		string text = ((Control)comboBox2).Text;
		if (text.Contains(charError[0]))
		{
			MessageBox.Show("Không được sử dụng tên này", "err", (MessageBoxButtons)0, (MessageBoxIcon)64);
			return;
		}
		TextWriter val = (TextWriter)new StreamWriter(pathAutoClick + "/CMD/" + text + ".txt");
		TextWriter val2 = (TextWriter)new StreamWriter(pathAutoClick + "/CMD/" + charError[0] + ".txt");
		val.WriteLine(((Control)comboBox2).Text);
		val2.WriteLine(((Control)comboBox2).Text);
		if ((int)checkBoxLoop.CheckState == 1)
		{
			val.WriteLine("1");
			val2.WriteLine("1");
		}
		else
		{
			val.WriteLine("0");
			val2.WriteLine("0");
		}
		for (int i = 0; i < dataGridView1.Rows.Count - 1; i++)
		{
			for (int j = 0; j < ((BaseCollection)dataGridView1.Columns).Count - 2; j++)
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

	private void ButtonRunAuto_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		//IL_00c8: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ce: Invalid comparison between Unknown and I4
		//IL_00de: Unknown result type (might be due to invalid IL or missing references)
		//IL_0042: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a1: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ab: Expected O, but got Unknown
		//IL_0031: Unknown result type (might be due to invalid IL or missing references)
		//IL_014f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0176: Unknown result type (might be due to invalid IL or missing references)
		if ((int)ButtonRunAuto.CheckState == 1)
		{
			if (hWnd == System.IntPtr.Zero)
			{
				MessageBox.Show("Chưa chọn Acc");
				return;
			}
			((Control)ButtonRunAuto).BackColor = Color.Green;
			((Control)ButtonRunAuto).Text = "Stop";
			((Control)buttonPause).Enabled = true;
			((Control)groupBox5).Enabled = false;
			((Control)comboBox1).Enabled = false;
			((Control)button1).Enabled = false;
			IsStop_Click = false;
			T_Click = new System.Threading.Tasks.Task((Action)([CompilerGenerated] () =>
			{
				//IL_01dc: Unknown result type (might be due to invalid IL or missing references)
				//IL_01e2: Invalid comparison between Unknown and I4
				int rowCount = dataGridView1.RowCount;
				bool flag = true;
				string[] array = ((Control)textBox5).Text.Split("\r\n", (StringSplitOptions)0);
				for (int i = 0; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array); i++)
				{
					array[i] = array[i].Trim();
				}
				string[] array2 = ((Control)textBox2).Text.Split("\r\n", (StringSplitOptions)0);
				for (int j = 0; j < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array2); j++)
				{
					array2[j] = array2[j].Trim();
				}
				debugText("ClearDebugText");
				while (!IsStop_Click)
				{
					string text = ((Control)tabControl2.SelectedTab).Text;
					string text2 = text;
					if (!(text2 == "Normal"))
					{
						if (text2 == "Code")
						{
							if (flag)
							{
								for (int k = 0; k < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array); k++)
								{
									((Control)label6).Text = array[k];
									Auto_Click_command3(array[k]);
									if (Stop_Soft)
									{
										ButtonRunAuto.CheckState = (CheckState)0;
									}
								}
								flag = false;
							}
							for (int l = 0; l < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array2); l++)
							{
								((Control)label6).Text = array2[l];
								Auto_Click_command3(array2[l]);
								if (Stop_Soft)
								{
									ButtonRunAuto.CheckState = (CheckState)0;
								}
							}
						}
					}
					else
					{
						for (int m = 0; m < rowCount - 1; m++)
						{
							Auto_Click(m);
							if (Stop_Soft)
							{
								ButtonRunAuto.CheckState = (CheckState)0;
							}
						}
					}
					if ((int)checkBoxLoop.CheckState == 0)
					{
						IsStop_Click = true;
						ButtonRunAuto.CheckState = (CheckState)0;
					}
				}
			}));
			T_Click.Start();
		}
		else if ((int)ButtonRunAuto.CheckState == 0)
		{
			((Control)ButtonRunAuto).BackColor = Control.DefaultBackColor;
			((Control)ButtonRunAuto).Text = "Start";
			((Control)buttonPause).Enabled = false;
			((Control)groupBox5).Enabled = true;
			((Control)comboBox1).Enabled = true;
			((Control)button1).Enabled = true;
			for (int num = 0; num < dataGridView1.RowCount; num++)
			{
				((DataGridViewBand)dataGridView1.Rows[num]).DefaultCellStyle.BackColor = TableThemeColor.BackColor;
				((DataGridViewBand)dataGridView1.Rows[num]).DefaultCellStyle.ForeColor = TableThemeColor.ForeColor;
			}
			IsStop_Click = true;
		}
	}

	private void buttonPause_Click(object sender, EventArgs e)
	{
		if (IsPause)
		{
			IsPause = false;
			((Control)buttonPause).Text = "Pause";
			((Control)groupBox5).Enabled = true;
		}
		else
		{
			IsPause = true;
			((Control)buttonPause).Text = "Next";
			((Control)groupBox5).Enabled = true;
		}
	}

	private void checkBoxP_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBoxP.Checked)
		{
			checkBoxKey.CheckState = (CheckState)0;
		}
	}

	private void checkBoxIF_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBoxIF.Checked)
		{
			checkBoxWH.CheckState = (CheckState)0;
			checkBoxIF2.CheckState = (CheckState)0;
			checkBoxWH2.CheckState = (CheckState)0;
			checkBoxItem.CheckState = (CheckState)0;
		}
	}

	private void checkBoxWH_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBoxWH.Checked)
		{
			checkBoxIF.CheckState = (CheckState)0;
			checkBoxIF2.CheckState = (CheckState)0;
			checkBoxWH2.CheckState = (CheckState)0;
			checkBoxItem.CheckState = (CheckState)0;
		}
	}

	private void button5_Click(object sender, EventArgs e)
	{
		//IL_0299: Unknown result type (might be due to invalid IL or missing references)
		//IL_0140: Unknown result type (might be due to invalid IL or missing references)
		//IL_0146: Expected O, but got Unknown
		//IL_015e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0164: Invalid comparison between Unknown and I4
		if (File.Exists(pathAutoClick + "/CMD/" + ((Control)comboBox2).Text + ".txt"))
		{
			dataGridView1.Rows.Clear();
			string[] array = File.ReadAllLines(pathAutoClick + "/CMD/" + ((Control)comboBox2).Text + ".txt");
			((Control)comboBox2).Text = array[0].Trim();
			if (array[1] == "1")
			{
				checkBoxLoop.CheckState = (CheckState)1;
			}
			else
			{
				checkBoxLoop.CheckState = (CheckState)0;
			}
			for (int i = 2; i < array.Length; i++)
			{
				string[] array2 = ((object)array[i]).ToString().Split('\t', (StringSplitOptions)0);
				string[] array3 = new string[array2.Length];
				for (int j = 0; j < array2.Length - 1; j++)
				{
					array3[j] = array2[j].Trim();
				}
				DataGridViewRowCollection rows = dataGridView1.Rows;
				object[] array4 = array3;
				rows.Add(array4);
			}
			TextWriter val = (TextWriter)new StreamWriter(pathAutoClick + "/CMD/" + charError[0] + ".txt");
			val.WriteLine(((Control)comboBox2).Text);
			if ((int)checkBoxLoop.CheckState == 1)
			{
				val.WriteLine("1");
			}
			else
			{
				val.WriteLine("0");
			}
			for (int k = 0; k < dataGridView1.Rows.Count - 1; k++)
			{
				for (int l = 0; l < ((BaseCollection)dataGridView1.Columns).Count - 2; l++)
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

	private void buttonClick1_Click(object sender, EventArgs e)
	{
		//IL_0033: Unknown result type (might be due to invalid IL or missing references)
		//IL_0038: Unknown result type (might be due to invalid IL or missing references)
		comboBoxImg.Items.Clear();
		string[] files = Directory.GetFiles(pathAutoClick, "*.png");
		List<string> val = new List<string>();
		val.AddRange((System.Collections.Generic.IEnumerable<string>)files);
		Enumerator<string> enumerator = val.GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				string current = enumerator.Current;
				string text = current.Substring(pathAutoClick.Length + 1, current.Length - pathAutoClick.Length - 5);
				comboBoxImg.Items.Add((object)text);
			}
		}
		finally
		{
			((System.IDisposable)enumerator/*cast due to .constrained prefix*/).Dispose();
		}
	}

	private void button6_Click(object sender, EventArgs e)
	{
		//IL_003d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0042: Unknown result type (might be due to invalid IL or missing references)
		comboBox2.Items.Clear();
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

	private void checkBoxKey_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBoxKey.Checked)
		{
			checkBoxP.CheckState = (CheckState)0;
		}
	}

	private void checkBoxIF2_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBoxIF2.Checked)
		{
			checkBoxIF.CheckState = (CheckState)0;
			checkBoxWH.CheckState = (CheckState)0;
			checkBoxWH2.CheckState = (CheckState)0;
			checkBoxItem.CheckState = (CheckState)0;
		}
	}

	private void checkBoxWH2_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBoxWH2.Checked)
		{
			checkBoxIF.CheckState = (CheckState)0;
			checkBoxWH.CheckState = (CheckState)0;
			checkBoxIF2.CheckState = (CheckState)0;
			checkBoxItem.CheckState = (CheckState)0;
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
			File.Delete(pathAutoClick + "/CMD/" + ((Control)comboBox2).Text + ".txt");
			MessageBox.Show("Đã Xóa");
		}
	}

	private void button8_Click(object sender, EventArgs e)
	{
		//IL_000e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0013: Unknown result type (might be due to invalid IL or missing references)
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		//IL_0016: Invalid comparison between Unknown and I4
		DialogResult val = MessageBox.Show("Xóa Bảng", "BMx-Tool", (MessageBoxButtons)4, (MessageBoxIcon)32);
		if ((int)val == 6)
		{
			dataGridView1.Rows.Clear();
		}
	}

	private void AutoClick_Load(object sender, EventArgs e)
	{
		//IL_0027: Unknown result type (might be due to invalid IL or missing references)
		//IL_007e: Unknown result type (might be due to invalid IL or missing references)
		//IL_008f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0293: Unknown result type (might be due to invalid IL or missing references)
		//IL_0298: Unknown result type (might be due to invalid IL or missing references)
		//IL_05c9: Unknown result type (might be due to invalid IL or missing references)
		//IL_05ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_032f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0334: Unknown result type (might be due to invalid IL or missing references)
		((Control)this).Text = "[BMx v" + Program.AppMain.version + "] Click";
		((Form)this).Size = new Size(520, 639);
		if (Settings.Default.freeSize)
		{
			((Form)this).FormBorderStyle = (FormBorderStyle)4;
		}
		else
		{
			((Form)this).FormBorderStyle = (FormBorderStyle)1;
		}
		numericUpDown1.Value = decimal.op_Implicit((int)((Control)textBox2).Font.Size);
		TableThemeColor.SelectionBackColor = Color.Gold;
		TableThemeColor.SelectionForeColor = Color.Black;
		dataGridView1.EnableHeadersVisualStyles = false;
		dataGridView1.RowsDefaultCellStyle = TableThemeColor;
		dataGridView1.RowHeadersDefaultCellStyle = TableThemeColor;
		dataGridView1.ColumnHeadersDefaultCellStyle = TableThemeColor;
		loadTheme();
		Process[] processesByName = Process.GetProcessesByName("FlashGame");
		if (Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)processesByName) > 0)
		{
			Process[] array = processesByName;
			foreach (Process val in array)
			{
				comboBox1.Items.Add((object)val.MainWindowTitle);
			}
		}
		if (File.Exists(pathAutoClick + "/CMD/" + charError[0] + ".txt"))
		{
			string[] array2 = File.ReadAllLines(pathAutoClick + "/CMD/" + charError[0] + ".txt");
			((Control)comboBox2).Text = array2[0].Trim();
			if (array2[1] == "1")
			{
				checkBoxLoop.CheckState = (CheckState)1;
			}
			else
			{
				checkBoxLoop.CheckState = (CheckState)0;
			}
			for (int j = 2; j < array2.Length; j++)
			{
				string[] array3 = ((object)array2[j]).ToString().Split('\t', (StringSplitOptions)0);
				string[] array4 = new string[array3.Length];
				for (int k = 0; k < array3.Length - 1; k++)
				{
					array4[k] = array3[k].Trim();
				}
				DataGridViewRowCollection rows = dataGridView1.Rows;
				object[] array5 = array4;
				rows.Add(array5);
			}
			System.DateTime lastWriteTime = File.GetLastWriteTime(pathAutoClick + "/CMD/" + charError[0] + ".txt");
			string[] files = Directory.GetFiles(pathAutoClick, "*.png");
			List<string> val2 = new List<string>();
			val2.AddRange((System.Collections.Generic.IEnumerable<string>)files);
			Enumerator<string> enumerator = val2.GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					string current = enumerator.Current;
					string text = current.Substring(pathAutoClick.Length + 1, current.Length - pathAutoClick.Length - 5);
					comboBoxImg.Items.Add((object)text);
				}
			}
			finally
			{
				((System.IDisposable)enumerator/*cast due to .constrained prefix*/).Dispose();
			}
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
					if (!text2.Contains(charError[0]))
					{
						comboBox2.Items.Add((object)text2);
					}
				}
			}
			finally
			{
				((System.IDisposable)enumerator2/*cast due to .constrained prefix*/).Dispose();
			}
		}
		else
		{
			Directory.CreateDirectory(pathAutoClick + "/CMD");
		}
		if (File.Exists(pathAutoClick + "/CODE/" + charError[0] + ".txt"))
		{
			((Control)textBox2).Text = "";
			string[] array6 = File.ReadAllLines(pathAutoClick + "/CODE/" + charError[0] + ".txt");
			((Control)comboBox3).Text = array6[0].Trim();
			if (array6[1] == "1")
			{
				checkBoxLoop.CheckState = (CheckState)1;
			}
			else
			{
				checkBoxLoop.CheckState = (CheckState)0;
			}
			for (int l = 2; l < array6.Length; l++)
			{
				TextBox obj = textBox2;
				((Control)obj).Text = ((Control)obj).Text + array6[l].Trim() + "\r\n";
			}
			((Control)textBox2).Text = ((Control)textBox2).Text.Trim();
			if (File.Exists(pathAutoClick + "/CODE/" + charError[0] + "_main.txt"))
			{
				string[] array7 = File.ReadAllLines(pathAutoClick + "/CODE/" + charError[0] + "_main.txt");
				for (int m = 0; m < array7.Length; m++)
				{
					TextBox obj2 = textBox5;
					((Control)obj2).Text = ((Control)obj2).Text + array7[m].Trim() + "\r\n";
				}
				((Control)textBox5).Text = ((Control)textBox5).Text.Trim();
			}
			string[] files3 = Directory.GetFiles(pathAutoClick + "/CODE", "*.txt");
			List<string> val4 = new List<string>();
			val4.AddRange((System.Collections.Generic.IEnumerable<string>)files3);
			Enumerator<string> enumerator3 = val4.GetEnumerator();
			try
			{
				while (enumerator3.MoveNext())
				{
					string current3 = enumerator3.Current;
					string text3 = current3.Substring((pathAutoClick + "/CODE").Length + 1, current3.Length - (pathAutoClick + "/CODE").Length - 5);
					if (!text3.Contains(charError[0]) && (text3.Length < 5 || !(text3.Substring(text3.Length - 5) == "_main")))
					{
						comboBox3.Items.Add((object)text3);
					}
				}
				return;
			}
			finally
			{
				((System.IDisposable)enumerator3/*cast due to .constrained prefix*/).Dispose();
			}
		}
		Directory.CreateDirectory(pathAutoClick + "/CODE");
	}

	private void buttonReset_Click(object sender, EventArgs e)
	{
		//IL_0075: Unknown result type (might be due to invalid IL or missing references)
		//IL_0081: Unknown result type (might be due to invalid IL or missing references)
		//IL_0086: Unknown result type (might be due to invalid IL or missing references)
		//IL_008e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0094: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_011c: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b3: Unknown result type (might be due to invalid IL or missing references)
		System.IntPtr intPtr = FindWindowHandle(null, ((Control)comboBox1).Text);
		hWnd = intPtr;
		((Control)this).Text = "[BMx v" + Program.AppMain.version + "] Click >>> " + ((Control)comboBox1).Text;
		GetWindowThreadProcessId(hWnd, out processID);
		((Control)label2).Text = "ID: " + processID;
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
	}

	private void AutoClick_FormClosed(object sender, FormClosedEventArgs e)
	{
		//IL_000f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0019: Expected O, but got Unknown
		Login login = new Login();
		((Form)login).Closed += (EventHandler)([CompilerGenerated] (object? s, EventArgs args) =>
		{
			((Form)this).Close();
		});
	}

	private void checkBoxItem_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBoxItem.Checked)
		{
			checkBoxIF.CheckState = (CheckState)0;
			checkBoxWH.CheckState = (CheckState)0;
			checkBoxIF2.CheckState = (CheckState)0;
			checkBoxWH2.CheckState = (CheckState)0;
		}
	}

	private void button12_Click(object sender, EventArgs e)
	{
		//IL_003d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0042: Unknown result type (might be due to invalid IL or missing references)
		comboBox3.Items.Clear();
		string[] files = Directory.GetFiles(pathAutoClick + "/CODE", "*.txt");
		List<string> val = new List<string>();
		val.AddRange((System.Collections.Generic.IEnumerable<string>)files);
		Enumerator<string> enumerator = val.GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				string current = enumerator.Current;
				string text = current.Substring((pathAutoClick + "/CODE").Length + 1, current.Length - (pathAutoClick + "/CODE").Length - 5);
				if (!text.Contains(charError[0]) && (text.Length < 5 || !(text.Substring(text.Length - 5) == "_main")))
				{
					comboBox3.Items.Add((object)text);
				}
			}
		}
		finally
		{
			((System.IDisposable)enumerator/*cast due to .constrained prefix*/).Dispose();
		}
	}

	private void button11_Click(object sender, EventArgs e)
	{
		//IL_02b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e9: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ef: Expected O, but got Unknown
		//IL_020c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0213: Expected O, but got Unknown
		//IL_022b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0231: Invalid comparison between Unknown and I4
		if (File.Exists(pathAutoClick + "/CODE/" + ((Control)comboBox3).Text + ".txt"))
		{
			((Control)textBox2).Text = "";
			((Control)textBox5).Text = "";
			string[] array = File.ReadAllLines(pathAutoClick + "/CODE/" + ((Control)comboBox3).Text + ".txt");
			((Control)comboBox3).Text = array[0].Trim();
			if (array[1] == "1")
			{
				checkBoxLoop.CheckState = (CheckState)1;
			}
			else
			{
				checkBoxLoop.CheckState = (CheckState)0;
			}
			for (int i = 2; i < array.Length; i++)
			{
				TextBox obj = textBox2;
				((Control)obj).Text = ((Control)obj).Text + array[i].Trim() + "\r\n";
			}
			((Control)textBox2).Text = ((Control)textBox2).Text.Trim();
			if (File.Exists(pathAutoClick + "/CODE/" + ((Control)comboBox3).Text + "_main.txt"))
			{
				string[] array2 = File.ReadAllLines(pathAutoClick + "/CODE/" + ((Control)comboBox3).Text + "_main.txt");
				for (int j = 0; j < array2.Length; j++)
				{
					TextBox obj2 = textBox5;
					((Control)obj2).Text = ((Control)obj2).Text + array2[j].Trim() + "\r\n";
				}
				((Control)textBox5).Text = ((Control)textBox5).Text.Trim();
			}
			TextWriter val = (TextWriter)new StreamWriter(pathAutoClick + "/CODE/" + charError[0] + ".txt");
			TextWriter val2 = (TextWriter)new StreamWriter(pathAutoClick + "/CODE/" + charError[0] + "_main.txt");
			val.WriteLine(((Control)comboBox3).Text);
			if ((int)checkBoxLoop.CheckState == 1)
			{
				val.WriteLine("1");
			}
			else
			{
				val.WriteLine("0");
			}
			val.Write(((Control)textBox2).Text.Trim());
			val2.Write(((Control)textBox5).Text.Trim());
			val.Close();
			val2.Close();
		}
		else
		{
			MessageBox.Show("Không tìm thấy File " + ((Control)comboBox3).Text, "err", (MessageBoxButtons)0, (MessageBoxIcon)16);
		}
	}

	private void button10_Click(object sender, EventArgs e)
	{
		//IL_0065: Unknown result type (might be due to invalid IL or missing references)
		//IL_006b: Expected O, but got Unknown
		//IL_0081: Unknown result type (might be due to invalid IL or missing references)
		//IL_0087: Expected O, but got Unknown
		//IL_00a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_00aa: Expected O, but got Unknown
		//IL_00c7: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ce: Expected O, but got Unknown
		//IL_00f8: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fe: Invalid comparison between Unknown and I4
		//IL_0044: Unknown result type (might be due to invalid IL or missing references)
		//IL_01bb: Unknown result type (might be due to invalid IL or missing references)
		string text = ((Control)comboBox3).Text;
		if (text.Contains(charError[0]) || text.Trim() == "")
		{
			MessageBox.Show("Không được sử dụng tên này", "err", (MessageBoxButtons)0, (MessageBoxIcon)64);
			return;
		}
		TextWriter val = (TextWriter)new StreamWriter(pathAutoClick + "/CODE/" + text + ".txt");
		TextWriter val2 = (TextWriter)new StreamWriter(pathAutoClick + "/CODE/" + text + "_main.txt");
		TextWriter val3 = (TextWriter)new StreamWriter(pathAutoClick + "/CODE/" + charError[0] + ".txt");
		TextWriter val4 = (TextWriter)new StreamWriter(pathAutoClick + "/CODE/" + charError[0] + "_main.txt");
		val.WriteLine(((Control)comboBox3).Text);
		val3.WriteLine(((Control)comboBox3).Text);
		if ((int)checkBoxLoop.CheckState == 1)
		{
			val.WriteLine("1");
			val3.WriteLine("1");
		}
		else
		{
			val.WriteLine("0");
			val3.WriteLine("0");
		}
		val.Write(((Control)textBox2).Text.Trim());
		val2.Write(((Control)textBox5).Text.Trim());
		val3.Write(((Control)textBox2).Text.Trim());
		val4.Write(((Control)textBox5).Text.Trim());
		val.Close();
		val2.Close();
		val3.Close();
		val4.Close();
		MessageBox.Show("Đã Lưu");
	}

	private void button13_Click(object sender, EventArgs e)
	{
		//IL_001e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0023: Unknown result type (might be due to invalid IL or missing references)
		//IL_0024: Unknown result type (might be due to invalid IL or missing references)
		//IL_0026: Invalid comparison between Unknown and I4
		//IL_0058: Unknown result type (might be due to invalid IL or missing references)
		DialogResult val = MessageBox.Show("Xóa File " + ((Control)comboBox3).Text, "AutoClick", (MessageBoxButtons)4, (MessageBoxIcon)32);
		if ((int)val == 6)
		{
			File.Delete(pathAutoClick + "/CODE/" + ((Control)comboBox3).Text + ".txt");
			MessageBox.Show("Đã Xóa");
		}
	}

	private void AutoClick_FormClosing(object sender, FormClosingEventArgs e)
	{
		//IL_001e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0024: Expected O, but got Unknown
		//IL_003c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0042: Invalid comparison between Unknown and I4
		//IL_016b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0171: Expected O, but got Unknown
		//IL_0189: Unknown result type (might be due to invalid IL or missing references)
		//IL_018f: Invalid comparison between Unknown and I4
		TextWriter val = (TextWriter)new StreamWriter(pathAutoClick + "/CMD/" + charError[0] + ".txt");
		val.WriteLine(((Control)comboBox2).Text);
		if ((int)checkBoxLoop.CheckState == 1)
		{
			val.WriteLine("1");
		}
		else
		{
			val.WriteLine("0");
		}
		for (int i = 0; i < dataGridView1.Rows.Count - 1; i++)
		{
			for (int j = 0; j < ((BaseCollection)dataGridView1.Columns).Count - 2; j++)
			{
				if (dataGridView1.Rows[i].Cells[j].Value == null)
				{
					val.Write(" ");
				}
				else
				{
					val.Write(dataGridView1.Rows[i].Cells[j].Value.ToString() ?? "");
				}
				val.Write("\t");
			}
			val.WriteLine();
		}
		val.Close();
		TextWriter val2 = (TextWriter)new StreamWriter(pathAutoClick + "/CODE/" + charError[0] + ".txt");
		val2.WriteLine(((Control)comboBox3).Text);
		if ((int)checkBoxLoop.CheckState == 1)
		{
			val2.WriteLine("1");
		}
		else
		{
			val2.WriteLine("0");
		}
		val2.Write(((Control)textBox2).Text.Trim());
		val2.Close();
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

	private void button9_Click(object sender, EventArgs e)
	{
		string text = Path.Combine(linkApp, "AutoClick");
		if (!Directory.Exists(text))
		{
			Directory.CreateDirectory(text);
		}
		Process.Start("explorer.exe", text);
	}

	private bool loadTheme()
	{
		//IL_010f: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_022f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0241: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_00da: Unknown result type (might be due to invalid IL or missing references)
		//IL_0273: Unknown result type (might be due to invalid IL or missing references)
		//IL_0285: Unknown result type (might be due to invalid IL or missing references)
		//IL_0297: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a9: Unknown result type (might be due to invalid IL or missing references)
		//IL_02bb: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e7: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_030b: Unknown result type (might be due to invalid IL or missing references)
		//IL_031d: Unknown result type (might be due to invalid IL or missing references)
		//IL_032f: Unknown result type (might be due to invalid IL or missing references)
		//IL_037d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0382: Unknown result type (might be due to invalid IL or missing references)
		//IL_038c: Expected O, but got Unknown
		//IL_03ac: Unknown result type (might be due to invalid IL or missing references)
		//IL_03b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_03bb: Expected O, but got Unknown
		//IL_03db: Unknown result type (might be due to invalid IL or missing references)
		//IL_03e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ea: Expected O, but got Unknown
		//IL_040a: Unknown result type (might be due to invalid IL or missing references)
		//IL_040f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0419: Expected O, but got Unknown
		//IL_0439: Unknown result type (might be due to invalid IL or missing references)
		//IL_043e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0448: Expected O, but got Unknown
		//IL_0470: Unknown result type (might be due to invalid IL or missing references)
		//IL_0482: Unknown result type (might be due to invalid IL or missing references)
		//IL_0494: Unknown result type (might be due to invalid IL or missing references)
		//IL_04a6: Unknown result type (might be due to invalid IL or missing references)
		//IL_04b8: Unknown result type (might be due to invalid IL or missing references)
		//IL_04ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_04dc: Unknown result type (might be due to invalid IL or missing references)
		//IL_04ee: Unknown result type (might be due to invalid IL or missing references)
		//IL_0500: Unknown result type (might be due to invalid IL or missing references)
		//IL_0512: Unknown result type (might be due to invalid IL or missing references)
		//IL_0524: Unknown result type (might be due to invalid IL or missing references)
		//IL_0550: Unknown result type (might be due to invalid IL or missing references)
		//IL_0562: Unknown result type (might be due to invalid IL or missing references)
		//IL_0574: Unknown result type (might be due to invalid IL or missing references)
		//IL_0586: Unknown result type (might be due to invalid IL or missing references)
		//IL_0598: Unknown result type (might be due to invalid IL or missing references)
		//IL_05aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_05bc: Unknown result type (might be due to invalid IL or missing references)
		//IL_05ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_05e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_05f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0604: Unknown result type (might be due to invalid IL or missing references)
		//IL_0652: Unknown result type (might be due to invalid IL or missing references)
		//IL_0657: Unknown result type (might be due to invalid IL or missing references)
		//IL_0661: Expected O, but got Unknown
		//IL_0681: Unknown result type (might be due to invalid IL or missing references)
		//IL_0686: Unknown result type (might be due to invalid IL or missing references)
		//IL_0690: Expected O, but got Unknown
		//IL_06b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_06b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_06bf: Expected O, but got Unknown
		//IL_06df: Unknown result type (might be due to invalid IL or missing references)
		//IL_06e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_06ee: Expected O, but got Unknown
		//IL_070e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0713: Unknown result type (might be due to invalid IL or missing references)
		//IL_071d: Expected O, but got Unknown
		//IL_073d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0742: Unknown result type (might be due to invalid IL or missing references)
		//IL_074c: Expected O, but got Unknown
		//IL_076c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0771: Unknown result type (might be due to invalid IL or missing references)
		//IL_077b: Expected O, but got Unknown
		//IL_079b: Unknown result type (might be due to invalid IL or missing references)
		//IL_07a0: Unknown result type (might be due to invalid IL or missing references)
		//IL_07aa: Expected O, but got Unknown
		//IL_07ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_07cf: Unknown result type (might be due to invalid IL or missing references)
		//IL_07d9: Expected O, but got Unknown
		//IL_07f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_07fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_0808: Expected O, but got Unknown
		//IL_0828: Unknown result type (might be due to invalid IL or missing references)
		//IL_082d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0837: Expected O, but got Unknown
		//IL_085f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0871: Unknown result type (might be due to invalid IL or missing references)
		//IL_0883: Unknown result type (might be due to invalid IL or missing references)
		//IL_0895: Unknown result type (might be due to invalid IL or missing references)
		//IL_08a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_08b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_08cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_08dd: Unknown result type (might be due to invalid IL or missing references)
		//IL_08ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_091b: Unknown result type (might be due to invalid IL or missing references)
		//IL_092d: Unknown result type (might be due to invalid IL or missing references)
		//IL_093f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0951: Unknown result type (might be due to invalid IL or missing references)
		//IL_0963: Unknown result type (might be due to invalid IL or missing references)
		//IL_0975: Unknown result type (might be due to invalid IL or missing references)
		//IL_0987: Unknown result type (might be due to invalid IL or missing references)
		//IL_0999: Unknown result type (might be due to invalid IL or missing references)
		//IL_09e7: Unknown result type (might be due to invalid IL or missing references)
		//IL_09ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_09f6: Expected O, but got Unknown
		//IL_0a16: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a1b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a25: Expected O, but got Unknown
		//IL_0a45: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a4a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a54: Expected O, but got Unknown
		//IL_0a74: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a79: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a83: Expected O, but got Unknown
		//IL_0aa3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0aa8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ab2: Expected O, but got Unknown
		//IL_0ad2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ad7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ae1: Expected O, but got Unknown
		//IL_0b01: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b06: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b10: Expected O, but got Unknown
		//IL_0b30: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b35: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b3f: Expected O, but got Unknown
		//IL_0b67: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b93: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bbf: Unknown result type (might be due to invalid IL or missing references)
		//IL_0beb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c17: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d5: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0207: Unknown result type (might be due to invalid IL or missing references)
		//IL_0219: Unknown result type (might be due to invalid IL or missing references)
		//IL_01de: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e7: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f0: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f9: Unknown result type (might be due to invalid IL or missing references)
		try
		{
			if (File.Exists(pathTheme + "/BMxSkinSetting.txt"))
			{
				int num = 0;
				string[] array = File.ReadAllLines(pathTheme + "/BMxSkinSetting.txt");
				int num2 = default(int);
				if (!int.TryParse(array[num].Trim(), ref num2))
				{
					fileName = array[num].Trim().Split('\t', (StringSplitOptions)0)[0];
					((Control)this).BackgroundImage = Image.FromFile(fileName);
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
									layout = (ImageLayout)4;
								}
								else
								{
									layout = (ImageLayout)0;
								}
							}
							else
							{
								layout = (ImageLayout)3;
							}
						}
						else
						{
							layout = (ImageLayout)2;
						}
					}
					else
					{
						layout = (ImageLayout)1;
					}
					((Control)this).BackgroundImageLayout = layout;
				}
				else
				{
					((Control)this).BackColor = Color.FromArgb(num2);
				}
				if (!int.TryParse(array[++num].Trim(), ref num2))
				{
					fileName = array[num].Trim().Split('\t', (StringSplitOptions)0)[0];
					((Control)groupBox1).BackgroundImage = Image.FromFile(fileName);
					((Control)groupBox5).BackgroundImage = Image.FromFile(fileName);
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
									layout = (ImageLayout)4;
								}
								else
								{
									layout = (ImageLayout)0;
								}
							}
							else
							{
								layout = (ImageLayout)3;
							}
						}
						else
						{
							layout = (ImageLayout)2;
						}
					}
					else
					{
						layout = (ImageLayout)1;
					}
					((Control)groupBox1).BackgroundImageLayout = layout;
					((Control)groupBox5).BackgroundImageLayout = layout;
				}
				else
				{
					((Control)groupBox1).BackColor = Color.FromArgb(num2);
					((Control)groupBox5).BackColor = Color.FromArgb(num2);
				}
				int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
				((Control)label2).BackColor = Color.FromArgb(num2);
				((Control)label1).BackColor = Color.FromArgb(num2);
				((Control)label6).BackColor = Color.FromArgb(num2);
				((Control)label5).BackColor = Color.FromArgb(num2);
				((Control)checkBoxLoop).BackColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
				((Control)label2).ForeColor = Color.FromArgb(num2);
				((Control)label1).ForeColor = Color.FromArgb(num2);
				((Control)label6).ForeColor = Color.FromArgb(num2);
				((Control)label5).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxLoop).ForeColor = Color.FromArgb(num2);
				object obj = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
				Font val = (Font)((obj is Font) ? obj : null);
				((Control)label2).Font = new Font(val.FontFamily, ((Control)label2).Font.Size, val.Style);
				((Control)label1).Font = new Font(val.FontFamily, ((Control)label1).Font.Size, val.Style);
				((Control)label6).Font = new Font(val.FontFamily, ((Control)label6).Font.Size, val.Style);
				((Control)label5).Font = new Font(val.FontFamily, ((Control)label5).Font.Size, val.Style);
				((Control)checkBoxLoop).Font = new Font(val.FontFamily, ((Control)checkBoxLoop).Font.Size, val.Style);
				int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
				((Control)buttonReset).BackColor = Color.FromArgb(num2);
				((Control)button1).BackColor = Color.FromArgb(num2);
				((Control)ButtonDebug).BackColor = Color.FromArgb(num2);
				((Control)ButtonRunAuto).BackColor = Color.FromArgb(num2);
				((Control)buttonPause).BackColor = Color.FromArgb(num2);
				((Control)button3).BackColor = Color.FromArgb(num2);
				((Control)button5).BackColor = Color.FromArgb(num2);
				((Control)button7).BackColor = Color.FromArgb(num2);
				((Control)button6).BackColor = Color.FromArgb(num2);
				((Control)button8).BackColor = Color.FromArgb(num2);
				((Control)button2).BackColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
				((Control)buttonReset).ForeColor = Color.FromArgb(num2);
				((Control)button1).ForeColor = Color.FromArgb(num2);
				((Control)ButtonDebug).ForeColor = Color.FromArgb(num2);
				((Control)ButtonRunAuto).ForeColor = Color.FromArgb(num2);
				((Control)buttonPause).ForeColor = Color.FromArgb(num2);
				((Control)button3).ForeColor = Color.FromArgb(num2);
				((Control)button5).ForeColor = Color.FromArgb(num2);
				((Control)button7).ForeColor = Color.FromArgb(num2);
				((Control)button6).ForeColor = Color.FromArgb(num2);
				((Control)button8).ForeColor = Color.FromArgb(num2);
				((Control)button2).ForeColor = Color.FromArgb(num2);
				object obj2 = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
				val = (Font)((obj2 is Font) ? obj2 : null);
				((Control)buttonReset).Font = new Font(val.FontFamily, ((Control)buttonReset).Font.Size, val.Style);
				((Control)button1).Font = new Font(val.FontFamily, ((Control)button1).Font.Size, val.Style);
				((Control)ButtonDebug).Font = new Font(val.FontFamily, ((Control)ButtonDebug).Font.Size, val.Style);
				((Control)ButtonRunAuto).Font = new Font(val.FontFamily, ((Control)ButtonRunAuto).Font.Size, val.Style);
				((Control)buttonPause).Font = new Font(val.FontFamily, ((Control)buttonPause).Font.Size, val.Style);
				((Control)button3).Font = new Font(val.FontFamily, ((Control)button3).Font.Size, val.Style);
				((Control)button5).Font = new Font(val.FontFamily, ((Control)button5).Font.Size, val.Style);
				((Control)button7).Font = new Font(val.FontFamily, ((Control)button7).Font.Size, val.Style);
				((Control)button6).Font = new Font(val.FontFamily, ((Control)button6).Font.Size, val.Style);
				((Control)button8).Font = new Font(val.FontFamily, ((Control)button8).Font.Size, val.Style);
				((Control)button2).Font = new Font(val.FontFamily, ((Control)button2).Font.Size, val.Style);
				int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
				((Control)comboBox1).BackColor = Color.FromArgb(num2);
				((Control)comboBox2).BackColor = Color.FromArgb(num2);
				((Control)comboBox3).BackColor = Color.FromArgb(num2);
				((Control)comboBoxImg).BackColor = Color.FromArgb(num2);
				((Control)comboBoxKey).BackColor = Color.FromArgb(num2);
				((Control)textBox1).BackColor = Color.FromArgb(num2);
				((Control)textBox1).BackColor = Color.FromArgb(num2);
				((Control)textBox2).BackColor = Color.FromArgb(num2);
				((Control)textBox3).BackColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
				((Control)comboBox1).ForeColor = Color.FromArgb(num2);
				((Control)comboBox2).ForeColor = Color.FromArgb(num2);
				((Control)comboBox3).ForeColor = Color.FromArgb(num2);
				((Control)comboBoxImg).ForeColor = Color.FromArgb(num2);
				((Control)comboBoxKey).ForeColor = Color.FromArgb(num2);
				((Control)textBox1).ForeColor = Color.FromArgb(num2);
				((Control)textBox2).ForeColor = Color.FromArgb(num2);
				((Control)textBox3).ForeColor = Color.FromArgb(num2);
				object obj3 = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
				val = (Font)((obj3 is Font) ? obj3 : null);
				((Control)comboBox1).Font = new Font(val.FontFamily, ((Control)comboBox1).Font.Size, val.Style);
				((Control)comboBox2).Font = new Font(val.FontFamily, ((Control)comboBox2).Font.Size, val.Style);
				((Control)comboBox3).Font = new Font(val.FontFamily, ((Control)comboBox2).Font.Size, val.Style);
				((Control)comboBoxImg).Font = new Font(val.FontFamily, ((Control)comboBoxImg).Font.Size, val.Style);
				((Control)comboBoxKey).Font = new Font(val.FontFamily, ((Control)comboBoxImg).Font.Size, val.Style);
				((Control)textBox1).Font = new Font(val.FontFamily, ((Control)textBox1).Font.Size, val.Style);
				((Control)textBox2).Font = new Font(val.FontFamily, ((Control)textBox1).Font.Size, val.Style);
				((Control)textBox3).Font = new Font(val.FontFamily, ((Control)textBox1).Font.Size, val.Style);
				int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
				dataGridView1.BackgroundColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
				TableThemeColor.BackColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[2], ref num2);
				TableThemeColor.ForeColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[3], ref num2);
				TableThemeColor.SelectionBackColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[4], ref num2);
				TableThemeColor.SelectionForeColor = Color.FromArgb(num2);
				_003F val2 = TableThemeColor;
				object obj4 = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[5]);
				((DataGridViewCellStyle)val2).Font = (Font)((obj4 is Font) ? obj4 : null);
				dataGridView1.EnableHeadersVisualStyles = false;
				dataGridView1.RowsDefaultCellStyle = TableThemeColor;
				dataGridView1.RowHeadersDefaultCellStyle = TableThemeColor;
				dataGridView1.ColumnHeadersDefaultCellStyle = TableThemeColor;
				return true;
			}
		}
		catch (System.Exception)
		{
			return false;
		}
		return false;
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

	private void PhuToiMap2(string maps, double X, double Y, bool team)
	{
		//IL_01f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_01fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_020f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0214: Unknown result type (might be due to invalid IL or missing references)
		//IL_023b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0240: Unknown result type (might be due to invalid IL or missing references)
		//IL_0251: Unknown result type (might be due to invalid IL or missing references)
		//IL_0256: Unknown result type (might be due to invalid IL or missing references)
		//IL_027d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0282: Unknown result type (might be due to invalid IL or missing references)
		//IL_0293: Unknown result type (might be due to invalid IL or missing references)
		//IL_0298: Unknown result type (might be due to invalid IL or missing references)
		//IL_02bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c4: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d5: Unknown result type (might be due to invalid IL or missing references)
		//IL_02da: Unknown result type (might be due to invalid IL or missing references)
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
			WriteMemoryData(processID, myPointer, offset_ToaDoX, X * 10.0);
			WriteMemoryData(processID, myPointer, offset_ToaDoY, Y * 10.0);
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
					WriteMemoryData(processID, myPointer, offset_ToaDoX, X * 10.0);
					WriteMemoryData(processID, myPointer, offset_ToaDoY, Y * 10.0);
					AutoControl.SendKeyBoardPress(hWnd, (VKeys)13);
				}
			}
			while (true)
			{
				if (num > 0)
				{
					WriteMemoryData(processID, myPointer, offset_ToaDoX, X * 10.0);
					WriteMemoryData(processID, myPointer, offset_ToaDoY, Y * 10.0);
					num--;
					continue;
				}
				double num6 = CheckLoadMap();
				if (num6 == 100.0)
				{
					break;
				}
				num = 500 + 500 * timeDelay;
			}
			delay_100ms(5);
		}
		else
		{
			PressKey("P");
			delay_100ms(5);
			Point? val = FindPoint(hWnd, pathTacVu + "/ChienDau.png");
			if (val.HasValue)
			{
				WriteMemoryData(processID, myPointer, offset_ToaDoX, X * 10.0);
				WriteMemoryData(processID, myPointer, offset_ToaDoY, Y * 10.0);
				System.IntPtr intPtr = hWnd;
				Point value = val.Value;
				int num7 = ((Point)(ref value)).X + 200;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr, num7, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
				delay_100ms(2);
				System.IntPtr intPtr2 = hWnd;
				value = val.Value;
				int num8 = ((Point)(ref value)).X + 200;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr2, num8, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
				delay_100ms(5);
				System.IntPtr intPtr3 = hWnd;
				value = val.Value;
				int num9 = ((Point)(ref value)).X + 200;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr3, num9, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
				delay_100ms(2);
				System.IntPtr intPtr4 = hWnd;
				value = val.Value;
				int num10 = ((Point)(ref value)).X + 200;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr4, num10, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
				delay_100ms(5);
			}
			PressKey("ESC");
			PressKey("ESC");
		}
	}

	private void RunEnd(string end, int acc = 0)
	{
		//IL_00ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_00bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_00cf: Unknown result type (might be due to invalid IL or missing references)
		//IL_0507: Unknown result type (might be due to invalid IL or missing references)
		//IL_050c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0517: Unknown result type (might be due to invalid IL or missing references)
		//IL_051c: Unknown result type (might be due to invalid IL or missing references)
		if (!(end == "Off"))
		{
			if (!(end == "BugOnl"))
			{
				return;
			}
			PressKey("ESC");
			PressKey("ESC");
			PressKey("P");
			delay_20ms(50.0);
			Point? val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
			Point value;
			if (val.HasValue)
			{
				System.IntPtr intPtr = hWnd;
				value = val.Value;
				int x = ((Point)(ref value)).X;
				value = val.Value;
				AutoControl.SendDragAndDropOnPosition(intPtr, x, ((Point)(ref value)).Y - 30, 458, 290, 10, 10, 0.05);
			}
			delay_20ms(50.0);
			FindAndClick(hWnd, pathTacVu + "/ChienDau.png", 334, -175, "Nhân Vật");
			delay_20ms(150.0);
			int num = 0;
			while (!FindPoint(hWnd, pathKhac + "/Log_QuayLai.png").HasValue)
			{
				num++;
				if (num >= 20)
				{
					break;
				}
				delay_20ms(25.0);
			}
			delay_20ms(100.0);
			switch (acc)
			{
			case 1:
				AutoControl.SendClickOnPosition(hWnd, 291, 465, (EMouseKey)0, 1);
				delay_20ms(15.0);
				AutoControl.SendClickOnPosition(hWnd, 400, 470, (EMouseKey)0, 1);
				break;
			case 2:
				AutoControl.SendClickOnPosition(hWnd, 291, 465, (EMouseKey)0, 1);
				delay_20ms(15.0);
				AutoControl.SendClickOnPosition(hWnd, 530, 470, (EMouseKey)0, 1);
				break;
			case 3:
				AutoControl.SendClickOnPosition(hWnd, 291, 465, (EMouseKey)0, 1);
				delay_20ms(15.0);
				AutoControl.SendClickOnPosition(hWnd, 670, 470, (EMouseKey)0, 1);
				break;
			case 4:
				AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
				delay_20ms(15.0);
				AutoControl.SendClickOnPosition(hWnd, 400, 470, (EMouseKey)0, 1);
				break;
			case 5:
				AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
				delay_20ms(15.0);
				AutoControl.SendClickOnPosition(hWnd, 530, 470, (EMouseKey)0, 1);
				break;
			case 6:
				AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
				delay_20ms(15.0);
				AutoControl.SendClickOnPosition(hWnd, 670, 470, (EMouseKey)0, 1);
				break;
			case 7:
				AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
				delay_20ms(15.0);
				AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
				delay_20ms(15.0);
				AutoControl.SendClickOnPosition(hWnd, 400, 470, (EMouseKey)0, 1);
				break;
			case 8:
				AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
				delay_20ms(15.0);
				AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
				delay_20ms(15.0);
				AutoControl.SendClickOnPosition(hWnd, 530, 470, (EMouseKey)0, 1);
				break;
			case 9:
				AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
				delay_20ms(15.0);
				AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
				delay_20ms(15.0);
				AutoControl.SendClickOnPosition(hWnd, 670, 470, (EMouseKey)0, 1);
				break;
			}
			delay_20ms(100.0);
			Point? val2 = FindPoint(hWnd, pathKhac + "/Log_VaoGame.png");
			if (val2.HasValue)
			{
				System.IntPtr intPtr2 = hWnd;
				value = val2.Value;
				int x2 = ((Point)(ref value)).X;
				value = val2.Value;
				AutoControl.SendClickOnPosition(intPtr2, x2, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
			}
			delay_20ms(125.0);
			GetWindowThreadProcessId(hWnd, out processID);
			Process processById = Process.GetProcessById((int)processID);
			processById.Kill();
		}
		else
		{
			GetWindowThreadProcessId(hWnd, out processID);
			Process processById2 = Process.GetProcessById((int)processID);
			processById2.Kill();
		}
	}

	private void checkBoxEndBugOnl_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBoxEndBugOnl.Checked)
		{
			checkBoxEndOff.CheckState = (CheckState)0;
		}
	}

	private void checkBoxEndOff_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBoxEndOff.Checked)
		{
			checkBoxEndBugOnl.CheckState = (CheckState)0;
		}
	}

	public static void SendTextKeyBoard(System.IntPtr handle, string text, float delay = 0.1f)
	{
		foreach (char key in text)
		{
			SendKeyChar(handle, key);
		}
	}

	public static void SendKeyChar(System.IntPtr handle, int key)
	{
		PostMessage(handle, 6, new System.IntPtr(1), new System.IntPtr(0));
		PostMessage(handle, 258, new System.IntPtr(key), new System.IntPtr(0));
	}

	private void button14_Click(object sender, EventArgs e)
	{
		//IL_0077: Unknown result type (might be due to invalid IL or missing references)
		//IL_008b: Expected O, but got Unknown
		//IL_00ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0126: Unknown result type (might be due to invalid IL or missing references)
		//IL_0132: Unknown result type (might be due to invalid IL or missing references)
		//IL_0137: Unknown result type (might be due to invalid IL or missing references)
		//IL_014c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0151: Unknown result type (might be due to invalid IL or missing references)
		//IL_0179: Unknown result type (might be due to invalid IL or missing references)
		if (!Directory.Exists(Application.StartupPath + "AutoClick\\GetData"))
		{
			Directory.CreateDirectory(Application.StartupPath + "AutoClick\\GetData");
		}
		Image val = CaptureHelper.CaptureWindow(hWnd);
		val.Save(Application.StartupPath + "AutoClick\\GetData\\ChupManHinhFlash.png");
		Bitmap image = ImageScanOpenCV.GetImage(((Control)textBox4).Text);
		int width = ((Image)image).Width;
		int height = ((Image)image).Height;
		List<Point> val2 = ImageScanOpenCV.FindOutPoints((Bitmap)val, image, 0.9);
		string text = "";
		for (int i = 0; i < Enumerable.Count<Point>((System.Collections.Generic.IEnumerable<Point>)val2); i++)
		{
			string[] obj = new string[8]
			{
				text,
				"\tVi\u0323 Tri\u0301 ",
				(i + 1).ToString(),
				" : ",
				null,
				null,
				null,
				null
			};
			Point val3 = val2[i];
			obj[4] = ((Point)(ref val3)).X.ToString();
			obj[5] = " - ";
			val3 = val2[i];
			obj[6] = ((Point)(ref val3)).Y.ToString();
			obj[7] = " (Chưa Trư\u0300 Tiêu Đê\u0300)\r\n";
			text = string.Concat(obj);
			Graphics val4 = Graphics.FromImage(val);
			try
			{
				Rectangle val5 = default(Rectangle);
				val3 = val2[i];
				((Rectangle)(ref val5)).X = ((Point)(ref val3)).X;
				val3 = val2[i];
				((Rectangle)(ref val5)).Y = ((Point)(ref val3)).Y;
				((Rectangle)(ref val5)).Width = width;
				((Rectangle)(ref val5)).Height = height;
				val4.FillRectangle(Brushes.Red, val5);
			}
			finally
			{
				((System.IDisposable)val4)?.Dispose();
			}
			val.Save(Application.StartupPath + "AutoClick\\GetData\\KetQuaTimKiem.png");
		}
		ThongTin thongTin = new ThongTin();
		Settings.Default.inforWindow = string.Concat(new string[11]
		{
			"- Flash Cho\u0323n : ",
			((Control)comboBox1).Text,
			"\r\n\r\n- A\u0309nh Mâ\u0303u : ",
			((Control)textBox4).Text,
			"\r\n\r\n- Co\u0301 ",
			Enumerable.Count<Point>((System.Collections.Generic.IEnumerable<Point>)val2).ToString(),
			" Điê\u0309m Đươ\u0323c Ti\u0300m Thâ\u0301y\r\n\r\n\tTiêu Đê\u0300 Y = 30 (Xem A\u0309nh Kê\u0301t Qua\u0309)\r\n",
			text,
			"\r\n- A\u0309nh Chu\u0323p Flash Đươ\u0323c Lưu Ta\u0323i ",
			Application.StartupPath,
			"AutoClick\\GetData\\ChupManHinhFlash.png\r\n"
		});
		if (Enumerable.Count<Point>((System.Collections.Generic.IEnumerable<Point>)val2) > 0)
		{
			Settings settings = Settings.Default;
			settings.inforWindow = settings.inforWindow + "\r\n- A\u0309nh Kê\u0301t Qua\u0309 Ti\u0300m Kiê\u0301m Đươ\u0323c Lưu Ta\u0323i " + Application.StartupPath + "AutoClick\\GetData\\KetQuaTimKiem.png\r\n";
		}
		((Control)thongTin).Show();
	}

	private void button15_Click(object sender, EventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0007: Expected O, but got Unknown
		//IL_002e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0034: Invalid comparison between Unknown and I4
		OpenFileDialog val = new OpenFileDialog();
		((FileDialog)val).Filter = "PNG (*.PNG)|*.png|All files (*.*)|*.*";
		((FileDialog)val).Title = "Chọn A\u0309nh";
		((FileDialog)val).InitialDirectory = pathAutoClick;
		if ((int)((CommonDialog)val).ShowDialog() == 1)
		{
			((Control)textBox4).Text = ((FileDialog)val).FileName;
		}
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

	private void button16_Click(object sender, EventArgs e)
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
		((Control)textBoxTeleMap).Text = checkTenMap();
		numericUpDownTeleX.Value = decimal.op_Implicit(num);
		numericUpDownTeleY.Value = decimal.op_Implicit(num2);
	}

	private void textBox5_TextChanged(object sender, EventArgs e)
	{
		((Control)label14).Text = ((TextBoxBase)textBox5).TextLength.ToString("D6") + "/999999";
	}

	private void textBox2_TextChanged(object sender, EventArgs e)
	{
		((Control)label15).Text = ((TextBoxBase)textBox2).TextLength.ToString("D6") + "/999999";
	}

	private void numericUpDown1_ValueChanged(object sender, EventArgs e)
	{
		//IL_0033: Unknown result type (might be due to invalid IL or missing references)
		//IL_0038: Unknown result type (might be due to invalid IL or missing references)
		//IL_0042: Expected O, but got Unknown
		//IL_0075: Unknown result type (might be due to invalid IL or missing references)
		//IL_007a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0084: Expected O, but got Unknown
		((Control)textBox2).Font = new Font(((Control)textBox2).Font.FontFamily, (float)numericUpDown1.Value, ((Control)textBox2).Font.Style);
		((Control)textBox5).Font = new Font(((Control)textBox2).Font.FontFamily, (float)numericUpDown1.Value, ((Control)textBox2).Font.Style);
	}

	private void checkBox1_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		//IL_001a: Invalid comparison between Unknown and I4
		//IL_005e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0064: Invalid comparison between Unknown and I4
		//IL_004a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0094: Unknown result type (might be due to invalid IL or missing references)
		ButtonDebug.Checked = false;
		if ((int)checkBox1.CheckState == 1)
		{
			((Control)checkBox1).Text = "Chi Tiết";
			((Control)groupBox5).Visible = true;
			((Form)this).Size = new Size(519, 133);
		}
		else if ((int)checkBox1.CheckState == 0)
		{
			((Control)checkBox1).Text = "Ẩn";
			((Control)groupBox5).Visible = false;
			((Form)this).Size = new Size(520, 639);
		}
	}

	private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
	{
		ThongTin thongTin = new ThongTin();
		Settings.Default.inforWindow = "Hướng Dẫn Các Lệnh Trong AutoClick-Normal:\r\nHƯỚNG DẪN LỆNH AUTOCLICK-NORMAL\r\n\r\nLê\u0323nh: C-PT(300;200) \r\nNô\u0323i Dung: CLICK POINT [X = 300 ; Y = 200] SAU ĐÓ DELAY.\r\n\r\nLê\u0323nh: D-PT(300;200) \r\nNô\u0323i Dung: DOUBLECLICK POINT [ X = 300 ; Y = 200 ] SAU ĐÓ DELAY .\r\n\r\nLê\u0323nh: C-IF(IMG.PNG) \r\nNô\u0323i Dung: NẾU SCAN THẤY ẢNH \"IMG.PNG\" THÌ CLICK SAU ĐÓ DELAY, NẾU KHÔNG THẤY THÌ BỎ QUA.\r\n\r\nLê\u0323nh: D-IF(IMG.PNG) \r\nNô\u0323i Dung: NẾU SCAN THẤY ẢNH \"IMG.PNG\" THÌ DOUBLE CLICK SAU ĐÓ DELAY, NẾU KHÔNG THẤY THÌ BỎ QUA.\r\n\r\nLê\u0323nh: C-WH(IMG.PNG) \r\nNô\u0323i Dung: TRONG KHI SCAN THẤY ẢNH \"IMG.PNG\" THÌ CLICK SAU ĐÓ DELAY, LẶP LẠI CHO TỚI KHI KHÔNG SCAN THẤY ẢNH. NẾU KHÔNG THÌ BỎ QUA.\r\n\r\nLê\u0323nh: D-WH(IMG.PNG) \r\nNô\u0323i Dung: TRONG KHI SCAN THẤY ẢNH \"IMG.PNG\" THÌ DOUBLE CLICK SAU ĐÓ DELAY, CHO TỚI KHI KHÔNG SCAN THẤY ẢNH. NẾU KHÔNG THÌ BỎ QUA.\r\n\r\nLê\u0323nh: C-iF(IMG.PNG) \r\nNô\u0323i Dung: NẾU SCAN KHÔNG THẤY ẢNH \"IMG.PNG\" THÌ DELAY, NẾU CÓ THÌ BỎ QUA.\r\n\r\nLê\u0323nh: D-iF(IMG.PNG) \r\nNô\u0323i Dung: NẾU SCAN KHÔNG THẤY ẢNH \"IMG.PNG\" THÌ DELAY, NẾU CÓ THÌ BỎ QUA.\r\n\r\nLê\u0323nh: C-wH(IMG.PNG) \r\nNô\u0323i Dung: TRONG KHI SCAN KHÔNG THẤY ẢNH \"IMG.PNG\" THÌ DELAY, CHO TỚI KHI SCAN THẤY ẢNH. NẾU CÓ THÌ BỎ QUA.\r\n\r\nLê\u0323nh: D-wH(IMG.PNG) \r\nNô\u0323i Dung: TRONG KHI SCAN KHÔNG THẤY ẢNH \"IMG.PNG\" THÌ DELAY, CHO TỚI KHI SCAN THẤY ẢNH. NẾU CÓ THÌ BỎ QUA.\r\n\r\nLê\u0323nh: P-KEY(ESC) \r\nNô\u0323i Dung: NHẤN NÚT \"ESC\" SAU ĐÓ DELAY.\r\n\r\nLê\u0323nh: T-AM(MAP;300;200) \r\nNô\u0323i Dung: PHÙ CÁ NHÂN TỚI \"MAP\" VÀ TELE TỚI VỊ TRÍ [ X = 300 ; Y = 200 ] SAU ĐÓ DELAY.\r\n \t  NẾU TÊN BẢN ĐỒ PHÙ TỚI (MAP) SAI THÌ CHỈ TELE TỚI VỊ TRÍ (X,Y) TRONG BẢN ĐỒ HIỆN TẠI.\r\n\r\nLê\u0323nh: T-TM(MAP;300;200) \r\nNô\u0323i Dung: PHÙ TEAM TỚI \"MAP\" VÀ TELE TỚI VỊ TRÍ [ X = 300 ; Y = 200 ] SAU ĐÓ DELAY.\r\n \t  NẾU TÊN BẢN ĐỒ PHÙ TỚI (MAP) SAI THÌ CHỈ TELE TỚI VỊ TRÍ (X,Y) TRONG BẢN ĐỒ HIỆN TẠI.\r\n\r\nLê\u0323nh: F-FI(IMG.PNG) \r\nNô\u0323i Dung: TÌM VÀ MỞ ITEM \"IMG.PNG\" SAU ĐÓ DELAY. BỎ QUA NẾU TÌM 2 LẦN KHÔNG THẤY\r\n \t  TÌM ITEM Ở KHU VỰC BẢNG TÍNH NĂNG, HOẠT ĐỘNG ...\r\n\r\nLê\u0323nh: @End-Off / @End-BugOnl-1 \r\nNô\u0323i Dung: Tă\u0301t Acc / BugOnl Nhân Vâ\u0323t 1 ( Sau Khi Cha\u0323y Lê\u0323nh Na\u0300y AutoClck Se\u0303 Dư\u0300ng )\r\n\r\nLê\u0323nh: SMS(xxx)\r\nNô\u0323i Dung: Gư\u0309i Chuô\u0303i Ky\u0301 tư\u0323 / Sô\u0301 Tư\u0300 Ba\u0300n Phi\u0301m";
		((Control)thongTin).Show();
	}

	private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
	{
		ThongTin thongTin = new ThongTin();
		Settings.Default.inforWindow = "Hướng Dẫn Các Lệnh Trong AutoClick-Code:\r\nLƯU Ý CHO AUTOCLICK-CODE\r\n\r\nMỖI LỆNH CÁCH NHAU BẰNG DẤU XUỐNG DÒNG. SAI CÚ PHÁP SẼ BỎ QUA TỪ VỊ TRÍ SAI TỚI HẾT DÒNG VÀ CHUYỂN QUA DÒNG KHÁC.\r\nTOÀN BỘ KÝ TỰ TRONG KHUNG LỆNH KHÔNG PHÂN BIỆT CHỮ HOA, CHỮ THƯỜNG TRỪ TÊN CỦA ẢNH (IMG.PNG) PHẢI GIỐNG VỚI ẢNH MẪU.\r\n\r\nHƯỚNG DẪN LỆNH AUTOCLICK-CODE\r\n\r\nCẤU TRÚC LỆNH THAO TÁC\r\nLê\u0323nh: C-PT(300;200)\r\n      hoặc ClickPoint(300;200)\r\nNô\u0323i Dung: Click điểm [ X = 300 ; Y = 200 ]\r\n\r\nLê\u0323nh: D-PT(300;200)\r\n      hoặc DoubleClickPoint(300;200)\r\nNô\u0323i Dung: Double click điểm [ X = 300 ; Y = 200 ]\r\n\r\nLê\u0323nh: C-PT(IMG.PNG)\r\n      hoặc ClickPoint(IMG.PNG)\r\nNô\u0323i Dung: Tìm và click ảnh IMG.PNG\r\n\r\nLê\u0323nh: D-PT(IMG.PNG)\r\n      hoặc DoubleClickPoint(IMG.PNG)\r\nNô\u0323i Dung: Tìm và double click ảnh IMG.PNG\r\n\r\nLê\u0323nh: DELAY20MS(10)\r\nNô\u0323i Dung: Delay 20ms 10 lần\r\n\r\nLê\u0323nh: DELAY100MS(10)\r\nNô\u0323i Dung: Delay 100ms 10 lần\r\n\r\nLê\u0323nh: P-KEY(ESC)\r\n      hoặc PressKey(ESC) /  KeyPress(ESC)\r\nNô\u0323i Dung: Nhấn nút \"ESC\"\r\n\r\nLê\u0323nh: T-AM(MAP;300;200)\r\n      hoặc TeleAloneMap(MAP;300;200)\r\nNô\u0323i Dung: Phù cá nhân tới \"MAP\" vị trí [ X = 300 ; Y = 200 ] \r\n\r\nLê\u0323nh: T-TM(MAP;300;200)\r\n      hoặc TeleTeamMap(MAP;300;200)\r\nNô\u0323i Dung: Phù team tới \"MAP\" vị trí [ X = 300 ; Y = 200 ] \r\n\r\nLê\u0323nh: F-FI(IMG.PNG)\r\n      hoặc FindItem(IMG.PNG)\r\nNô\u0323i Dung: Tìm và mở item IMG.PNG ở khu vực hoạt động\r\n\r\nLê\u0323nh: @(End-Off) / @(End-BugOnl-1)\r\nNô\u0323i Dung: Tă\u0301t Acc / BugOnl Nhân Vâ\u0323t 1 ( Sau Khi Cha\u0323y Lê\u0323nh Na\u0300y AutoClck Se\u0303 Dư\u0300ng )\r\n\r\nLê\u0323nh: SMS(xxx)\r\nNô\u0323i Dung: Gư\u0309i Chuô\u0303i Ky\u0301 Tự / Sô\u0301 Tư\u0300  Ba\u0300n Phi\u0301m\r\n\r\nLệnh: DragDrop(IMG.PNG,X,Y)\r\nNội Dung: Kéo Thả Ảnh \"IMG.PNG\" Tới Tọa Độ X, Y\r\n\r\nLệnh: DragDropPoint(Ax,Ay,Bx,By)\r\nNội Dung: Kéo Thả Từ Vị Trí Ax-Ay Đến Vị Trí Bx-By\r\n\r\nCẤU TRÚC LỆNH ĐIỀU KIỆN (IF - WHILE)\r\n[ĐIỀU KIỆN](IMG.PNG)_{[CMD1]_[CMD2]_...[CMDn]}\r\n[ĐIỀU KIỆN]: [IF] - [WHILE / WH] - [IF-NOT / !IF ] - [WHILE-NOT / !WHILE / !WH]\r\n[CMD]: các lệnh thao tác\r\n\r\nCẤU TRÚC VÒNG LẶP\r\nLP(5)_{[CMD1]_[CMD2]_...[CMDn]}\r\nhoặc LOOP(5)_{[CMD1]_[CMD2]_...[CMDn]}\r\n[CMD]: các lệnh thao tác\r\nThực hiện vòng lặp các lệnh trong {...} 5 lần\r\n";
		((Control)thongTin).Show();
	}

	private void button17_Click(object sender, EventArgs e)
	{
		SendClickOnPosition(hWnd, (int)numericUpDownX.Value, (int)numericUpDownY.Value, (EMouseKey)0);
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
		//IL_0335: Unknown result type (might be due to invalid IL or missing references)
		//IL_033f: Expected O, but got Unknown
		//IL_0340: Unknown result type (might be due to invalid IL or missing references)
		//IL_034a: Expected O, but got Unknown
		//IL_034b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0355: Expected O, but got Unknown
		//IL_0356: Unknown result type (might be due to invalid IL or missing references)
		//IL_0360: Expected O, but got Unknown
		//IL_0361: Unknown result type (might be due to invalid IL or missing references)
		//IL_036b: Expected O, but got Unknown
		//IL_036c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0376: Expected O, but got Unknown
		//IL_0377: Unknown result type (might be due to invalid IL or missing references)
		//IL_0381: Expected O, but got Unknown
		//IL_0382: Unknown result type (might be due to invalid IL or missing references)
		//IL_038c: Expected O, but got Unknown
		//IL_038d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0397: Expected O, but got Unknown
		//IL_0398: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a2: Expected O, but got Unknown
		//IL_03a3: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ad: Expected O, but got Unknown
		//IL_03ae: Unknown result type (might be due to invalid IL or missing references)
		//IL_03b8: Expected O, but got Unknown
		//IL_03b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_03c3: Expected O, but got Unknown
		//IL_03c4: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ce: Expected O, but got Unknown
		//IL_03cf: Unknown result type (might be due to invalid IL or missing references)
		//IL_03d9: Expected O, but got Unknown
		//IL_03da: Unknown result type (might be due to invalid IL or missing references)
		//IL_03e4: Expected O, but got Unknown
		//IL_03e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ef: Expected O, but got Unknown
		//IL_03f0: Unknown result type (might be due to invalid IL or missing references)
		//IL_03fa: Expected O, but got Unknown
		//IL_03fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0405: Expected O, but got Unknown
		//IL_0406: Unknown result type (might be due to invalid IL or missing references)
		//IL_0410: Expected O, but got Unknown
		//IL_0411: Unknown result type (might be due to invalid IL or missing references)
		//IL_041b: Expected O, but got Unknown
		//IL_041c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0426: Expected O, but got Unknown
		//IL_0427: Unknown result type (might be due to invalid IL or missing references)
		//IL_0431: Expected O, but got Unknown
		//IL_0432: Unknown result type (might be due to invalid IL or missing references)
		//IL_043c: Expected O, but got Unknown
		//IL_043d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0447: Expected O, but got Unknown
		//IL_0448: Unknown result type (might be due to invalid IL or missing references)
		//IL_0452: Expected O, but got Unknown
		//IL_06b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_06e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0733: Unknown result type (might be due to invalid IL or missing references)
		//IL_0759: Unknown result type (might be due to invalid IL or missing references)
		//IL_07ab: Unknown result type (might be due to invalid IL or missing references)
		//IL_07b5: Expected O, but got Unknown
		//IL_07c8: Unknown result type (might be due to invalid IL or missing references)
		//IL_07d2: Expected O, but got Unknown
		//IL_07e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_0825: Unknown result type (might be due to invalid IL or missing references)
		//IL_0874: Unknown result type (might be due to invalid IL or missing references)
		//IL_089a: Unknown result type (might be due to invalid IL or missing references)
		//IL_08ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_08f6: Expected O, but got Unknown
		//IL_0911: Unknown result type (might be due to invalid IL or missing references)
		//IL_0937: Unknown result type (might be due to invalid IL or missing references)
		//IL_097b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0985: Expected O, but got Unknown
		//IL_0990: Unknown result type (might be due to invalid IL or missing references)
		//IL_09b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_09f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a03: Expected O, but got Unknown
		//IL_0a1e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a44: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a95: Unknown result type (might be due to invalid IL or missing references)
		//IL_0abb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b0d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b17: Expected O, but got Unknown
		//IL_0b36: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b5c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b9b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bc1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c01: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c2a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c5d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c83: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cc7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cd1: Expected O, but got Unknown
		//IL_0cec: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d12: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d48: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d6e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0db2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0dbc: Expected O, but got Unknown
		//IL_0dd2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0df8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e2e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e54: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e98: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ea2: Expected O, but got Unknown
		//IL_0eaf: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ed5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f19: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f23: Expected O, but got Unknown
		//IL_0f43: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f4d: Expected O, but got Unknown
		//IL_0f5a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f80: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fb6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fdc: Unknown result type (might be due to invalid IL or missing references)
		//IL_1020: Unknown result type (might be due to invalid IL or missing references)
		//IL_102a: Expected O, but got Unknown
		//IL_103d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1047: Expected O, but got Unknown
		//IL_1052: Unknown result type (might be due to invalid IL or missing references)
		//IL_1097: Unknown result type (might be due to invalid IL or missing references)
		//IL_10e1: Unknown result type (might be due to invalid IL or missing references)
		//IL_10eb: Expected O, but got Unknown
		//IL_10f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_113b: Unknown result type (might be due to invalid IL or missing references)
		//IL_1189: Unknown result type (might be due to invalid IL or missing references)
		//IL_11af: Unknown result type (might be due to invalid IL or missing references)
		//IL_11f0: Unknown result type (might be due to invalid IL or missing references)
		//IL_1216: Unknown result type (might be due to invalid IL or missing references)
		//IL_12d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_1303: Unknown result type (might be due to invalid IL or missing references)
		//IL_13da: Unknown result type (might be due to invalid IL or missing references)
		//IL_1420: Unknown result type (might be due to invalid IL or missing references)
		//IL_1511: Unknown result type (might be due to invalid IL or missing references)
		//IL_1534: Unknown result type (might be due to invalid IL or missing references)
		//IL_154f: Unknown result type (might be due to invalid IL or missing references)
		//IL_158f: Unknown result type (might be due to invalid IL or missing references)
		//IL_15b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_15f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_1603: Expected O, but got Unknown
		//IL_1611: Unknown result type (might be due to invalid IL or missing references)
		//IL_161b: Expected O, but got Unknown
		//IL_1632: Unknown result type (might be due to invalid IL or missing references)
		//IL_1658: Unknown result type (might be due to invalid IL or missing references)
		//IL_169c: Unknown result type (might be due to invalid IL or missing references)
		//IL_16a6: Expected O, but got Unknown
		//IL_16bd: Unknown result type (might be due to invalid IL or missing references)
		//IL_16e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_1727: Unknown result type (might be due to invalid IL or missing references)
		//IL_1731: Expected O, but got Unknown
		//IL_17be: Unknown result type (might be due to invalid IL or missing references)
		//IL_17f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_1883: Unknown result type (might be due to invalid IL or missing references)
		//IL_18a6: Unknown result type (might be due to invalid IL or missing references)
		//IL_18c1: Unknown result type (might be due to invalid IL or missing references)
		//IL_1946: Unknown result type (might be due to invalid IL or missing references)
		//IL_197c: Unknown result type (might be due to invalid IL or missing references)
		//IL_19cc: Unknown result type (might be due to invalid IL or missing references)
		//IL_19ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_1a07: Unknown result type (might be due to invalid IL or missing references)
		//IL_1a52: Unknown result type (might be due to invalid IL or missing references)
		//IL_1a78: Unknown result type (might be due to invalid IL or missing references)
		//IL_1abc: Unknown result type (might be due to invalid IL or missing references)
		//IL_1ac6: Expected O, but got Unknown
		//IL_1add: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b03: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b47: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b51: Expected O, but got Unknown
		//IL_1b89: Unknown result type (might be due to invalid IL or missing references)
		//IL_1bac: Unknown result type (might be due to invalid IL or missing references)
		//IL_1bc4: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c0f: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c35: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c79: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c83: Expected O, but got Unknown
		//IL_1c9a: Unknown result type (might be due to invalid IL or missing references)
		//IL_1cc3: Unknown result type (might be due to invalid IL or missing references)
		//IL_1d07: Unknown result type (might be due to invalid IL or missing references)
		//IL_1d11: Expected O, but got Unknown
		//IL_1d32: Unknown result type (might be due to invalid IL or missing references)
		//IL_1d5b: Unknown result type (might be due to invalid IL or missing references)
		//IL_1da8: Unknown result type (might be due to invalid IL or missing references)
		//IL_1dce: Unknown result type (might be due to invalid IL or missing references)
		//IL_1e12: Unknown result type (might be due to invalid IL or missing references)
		//IL_1e1c: Expected O, but got Unknown
		//IL_1e26: Unknown result type (might be due to invalid IL or missing references)
		//IL_1e4c: Unknown result type (might be due to invalid IL or missing references)
		//IL_1e90: Unknown result type (might be due to invalid IL or missing references)
		//IL_1e9a: Expected O, but got Unknown
		//IL_1ea5: Unknown result type (might be due to invalid IL or missing references)
		//IL_1ecb: Unknown result type (might be due to invalid IL or missing references)
		//IL_1f0f: Unknown result type (might be due to invalid IL or missing references)
		//IL_1f19: Expected O, but got Unknown
		//IL_1f30: Unknown result type (might be due to invalid IL or missing references)
		//IL_1f66: Unknown result type (might be due to invalid IL or missing references)
		//IL_203a: Unknown result type (might be due to invalid IL or missing references)
		//IL_205d: Unknown result type (might be due to invalid IL or missing references)
		//IL_2078: Unknown result type (might be due to invalid IL or missing references)
		//IL_20b8: Unknown result type (might be due to invalid IL or missing references)
		//IL_20de: Unknown result type (might be due to invalid IL or missing references)
		//IL_2122: Unknown result type (might be due to invalid IL or missing references)
		//IL_212c: Expected O, but got Unknown
		//IL_2136: Unknown result type (might be due to invalid IL or missing references)
		//IL_215f: Unknown result type (might be due to invalid IL or missing references)
		//IL_21a0: Unknown result type (might be due to invalid IL or missing references)
		//IL_21c9: Unknown result type (might be due to invalid IL or missing references)
		//IL_2217: Unknown result type (might be due to invalid IL or missing references)
		//IL_223d: Unknown result type (might be due to invalid IL or missing references)
		//IL_2279: Unknown result type (might be due to invalid IL or missing references)
		//IL_2283: Expected O, but got Unknown
		//IL_228e: Unknown result type (might be due to invalid IL or missing references)
		//IL_22d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_2322: Unknown result type (might be due to invalid IL or missing references)
		//IL_2348: Unknown result type (might be due to invalid IL or missing references)
		//IL_2384: Unknown result type (might be due to invalid IL or missing references)
		//IL_238e: Expected O, but got Unknown
		//IL_2399: Unknown result type (might be due to invalid IL or missing references)
		//IL_23de: Unknown result type (might be due to invalid IL or missing references)
		//IL_247b: Unknown result type (might be due to invalid IL or missing references)
		//IL_249e: Unknown result type (might be due to invalid IL or missing references)
		//IL_24b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_2506: Unknown result type (might be due to invalid IL or missing references)
		//IL_2539: Unknown result type (might be due to invalid IL or missing references)
		//IL_257d: Unknown result type (might be due to invalid IL or missing references)
		//IL_2587: Expected O, but got Unknown
		//IL_259f: Unknown result type (might be due to invalid IL or missing references)
		//IL_25d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_2616: Unknown result type (might be due to invalid IL or missing references)
		//IL_2620: Expected O, but got Unknown
		//IL_2633: Unknown result type (might be due to invalid IL or missing references)
		//IL_263d: Expected O, but got Unknown
		//IL_264b: Unknown result type (might be due to invalid IL or missing references)
		//IL_26a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_26ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_2704: Unknown result type (might be due to invalid IL or missing references)
		//IL_272d: Unknown result type (might be due to invalid IL or missing references)
		//IL_278e: Unknown result type (might be due to invalid IL or missing references)
		//IL_27b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_27cc: Unknown result type (might be due to invalid IL or missing references)
		//IL_280a: Unknown result type (might be due to invalid IL or missing references)
		//IL_2840: Unknown result type (might be due to invalid IL or missing references)
		//IL_286b: Unknown result type (might be due to invalid IL or missing references)
		//IL_2880: Unknown result type (might be due to invalid IL or missing references)
		//IL_28a9: Unknown result type (might be due to invalid IL or missing references)
		//IL_2938: Unknown result type (might be due to invalid IL or missing references)
		//IL_295b: Unknown result type (might be due to invalid IL or missing references)
		//IL_2976: Unknown result type (might be due to invalid IL or missing references)
		//IL_29b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_29eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_2a1a: Unknown result type (might be due to invalid IL or missing references)
		//IL_2a40: Unknown result type (might be due to invalid IL or missing references)
		//IL_2a73: Unknown result type (might be due to invalid IL or missing references)
		//IL_2a99: Unknown result type (might be due to invalid IL or missing references)
		//IL_2add: Unknown result type (might be due to invalid IL or missing references)
		//IL_2ae7: Expected O, but got Unknown
		//IL_2af1: Unknown result type (might be due to invalid IL or missing references)
		//IL_2b17: Unknown result type (might be due to invalid IL or missing references)
		//IL_2b5b: Unknown result type (might be due to invalid IL or missing references)
		//IL_2b65: Expected O, but got Unknown
		//IL_2b76: Unknown result type (might be due to invalid IL or missing references)
		//IL_2b9c: Unknown result type (might be due to invalid IL or missing references)
		//IL_2be0: Unknown result type (might be due to invalid IL or missing references)
		//IL_2bea: Expected O, but got Unknown
		//IL_2c04: Unknown result type (might be due to invalid IL or missing references)
		//IL_2c37: Unknown result type (might be due to invalid IL or missing references)
		//IL_2c80: Unknown result type (might be due to invalid IL or missing references)
		//IL_2c8a: Expected O, but got Unknown
		//IL_2c98: Unknown result type (might be due to invalid IL or missing references)
		//IL_2cdd: Unknown result type (might be due to invalid IL or missing references)
		//IL_2d1f: Unknown result type (might be due to invalid IL or missing references)
		//IL_2d45: Unknown result type (might be due to invalid IL or missing references)
		//IL_2d89: Unknown result type (might be due to invalid IL or missing references)
		//IL_2d93: Expected O, but got Unknown
		//IL_2dae: Unknown result type (might be due to invalid IL or missing references)
		//IL_2dd4: Unknown result type (might be due to invalid IL or missing references)
		//IL_2e18: Unknown result type (might be due to invalid IL or missing references)
		//IL_2e68: Unknown result type (might be due to invalid IL or missing references)
		//IL_2f0c: Unknown result type (might be due to invalid IL or missing references)
		//IL_2f4b: Unknown result type (might be due to invalid IL or missing references)
		//IL_2f71: Unknown result type (might be due to invalid IL or missing references)
		//IL_2f7b: Expected O, but got Unknown
		//IL_2f89: Unknown result type (might be due to invalid IL or missing references)
		//IL_2f93: Expected O, but got Unknown
		//IL_2fa1: Unknown result type (might be due to invalid IL or missing references)
		//IL_2fab: Expected O, but got Unknown
		//IL_2fb9: Unknown result type (might be due to invalid IL or missing references)
		//IL_2fc3: Expected O, but got Unknown
		//IL_2fd1: Unknown result type (might be due to invalid IL or missing references)
		//IL_2fdb: Expected O, but got Unknown
		//IL_318d: Unknown result type (might be due to invalid IL or missing references)
		//IL_31e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_320a: Unknown result type (might be due to invalid IL or missing references)
		//IL_3214: Expected O, but got Unknown
		//IL_324c: Unknown result type (might be due to invalid IL or missing references)
		//IL_3285: Unknown result type (might be due to invalid IL or missing references)
		//IL_3348: Unknown result type (might be due to invalid IL or missing references)
		//IL_336b: Unknown result type (might be due to invalid IL or missing references)
		//IL_3386: Unknown result type (might be due to invalid IL or missing references)
		//IL_33db: Unknown result type (might be due to invalid IL or missing references)
		//IL_33e5: Expected O, but got Unknown
		//IL_33f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_3418: Unknown result type (might be due to invalid IL or missing references)
		//IL_345c: Unknown result type (might be due to invalid IL or missing references)
		//IL_3466: Expected O, but got Unknown
		//IL_35c9: Unknown result type (might be due to invalid IL or missing references)
		//IL_35ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_3607: Unknown result type (might be due to invalid IL or missing references)
		//IL_365c: Unknown result type (might be due to invalid IL or missing references)
		//IL_3666: Expected O, but got Unknown
		//IL_3673: Unknown result type (might be due to invalid IL or missing references)
		//IL_3699: Unknown result type (might be due to invalid IL or missing references)
		//IL_36dd: Unknown result type (might be due to invalid IL or missing references)
		//IL_36e7: Expected O, but got Unknown
		//IL_36f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_373a: Unknown result type (might be due to invalid IL or missing references)
		//IL_3760: Unknown result type (might be due to invalid IL or missing references)
		//IL_376a: Expected O, but got Unknown
		//IL_3784: Unknown result type (might be due to invalid IL or missing references)
		//IL_37ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_37f1: Unknown result type (might be due to invalid IL or missing references)
		//IL_3817: Unknown result type (might be due to invalid IL or missing references)
		//IL_385e: Unknown result type (might be due to invalid IL or missing references)
		//IL_3884: Unknown result type (might be due to invalid IL or missing references)
		//IL_38c8: Unknown result type (might be due to invalid IL or missing references)
		//IL_38ee: Unknown result type (might be due to invalid IL or missing references)
		//IL_392e: Unknown result type (might be due to invalid IL or missing references)
		//IL_3957: Unknown result type (might be due to invalid IL or missing references)
		//IL_3997: Unknown result type (might be due to invalid IL or missing references)
		//IL_39ee: Unknown result type (might be due to invalid IL or missing references)
		//IL_3a14: Unknown result type (might be due to invalid IL or missing references)
		//IL_3a1e: Expected O, but got Unknown
		//IL_3a2b: Unknown result type (might be due to invalid IL or missing references)
		//IL_3a51: Unknown result type (might be due to invalid IL or missing references)
		//IL_3a95: Unknown result type (might be due to invalid IL or missing references)
		//IL_3a9f: Expected O, but got Unknown
		//IL_3ab5: Unknown result type (might be due to invalid IL or missing references)
		//IL_3adb: Unknown result type (might be due to invalid IL or missing references)
		//IL_3b11: Unknown result type (might be due to invalid IL or missing references)
		//IL_3b37: Unknown result type (might be due to invalid IL or missing references)
		//IL_3b7b: Unknown result type (might be due to invalid IL or missing references)
		//IL_3b85: Expected O, but got Unknown
		//IL_3b92: Unknown result type (might be due to invalid IL or missing references)
		//IL_3bb8: Unknown result type (might be due to invalid IL or missing references)
		//IL_3bfc: Unknown result type (might be due to invalid IL or missing references)
		//IL_3c06: Expected O, but got Unknown
		//IL_3c13: Unknown result type (might be due to invalid IL or missing references)
		//IL_3c39: Unknown result type (might be due to invalid IL or missing references)
		//IL_3c7d: Unknown result type (might be due to invalid IL or missing references)
		//IL_3c87: Expected O, but got Unknown
		//IL_3ca2: Unknown result type (might be due to invalid IL or missing references)
		//IL_3cf2: Unknown result type (might be due to invalid IL or missing references)
		//IL_3d56: Unknown result type (might be due to invalid IL or missing references)
		//IL_3d8f: Unknown result type (might be due to invalid IL or missing references)
		//IL_3dcf: Unknown result type (might be due to invalid IL or missing references)
		//IL_3e33: Unknown result type (might be due to invalid IL or missing references)
		//IL_3e67: Unknown result type (might be due to invalid IL or missing references)
		//IL_3e8d: Unknown result type (might be due to invalid IL or missing references)
		//IL_3ed1: Unknown result type (might be due to invalid IL or missing references)
		//IL_3edb: Expected O, but got Unknown
		//IL_3ee7: Unknown result type (might be due to invalid IL or missing references)
		//IL_3f05: Unknown result type (might be due to invalid IL or missing references)
		//IL_3f90: Unknown result type (might be due to invalid IL or missing references)
		//IL_3f9a: Expected O, but got Unknown
		//IL_3fcb: Unknown result type (might be due to invalid IL or missing references)
		//IL_3fd5: Expected O, but got Unknown
		//IL_3fde: Unknown result type (might be due to invalid IL or missing references)
		//IL_3fe8: Expected O, but got Unknown
		//IL_3ff1: Unknown result type (might be due to invalid IL or missing references)
		//IL_3ffb: Expected O, but got Unknown
		ComponentResourceManager val = new ComponentResourceManager(typeof(AutoClick));
		groupBox1 = new GroupBox();
		ButtonDebug = new CheckBox();
		numericUpDownFPS = new NumericUpDown();
		checkBox1 = new CheckBox();
		buttonPause = new Button();
		buttonReset = new Button();
		checkBoxLoop = new CheckBox();
		ButtonRunAuto = new CheckBox();
		pictureBox1 = new PictureBox();
		label1 = new Label();
		comboBox1 = new ComboBox();
		button1 = new Button();
		label2 = new Label();
		button7 = new Button();
		comboBox2 = new ComboBox();
		button3 = new Button();
		button5 = new Button();
		label6 = new Label();
		button6 = new Button();
		numericUpDownX = new NumericUpDown();
		numericUpDownY = new NumericUpDown();
		label7 = new Label();
		label8 = new Label();
		groupBox5 = new GroupBox();
		tabControl1 = new TabControl();
		tabPage1 = new TabPage();
		button4 = new Button();
		checkBoxKey = new CheckBox();
		checkBoxP = new CheckBox();
		comboBoxKey = new ComboBox();
		tabPage2 = new TabPage();
		tabControl3 = new TabControl();
		tabPage10 = new TabPage();
		checkBoxIF = new CheckBox();
		checkBoxIF2 = new CheckBox();
		tabPage11 = new TabPage();
		checkBoxWH = new CheckBox();
		checkBoxWH2 = new CheckBox();
		tabPage12 = new TabPage();
		checkBoxItem = new CheckBox();
		button9 = new Button();
		buttonClick1 = new Button();
		comboBoxImg = new ComboBox();
		tabPage3 = new TabPage();
		button16 = new Button();
		textBoxTeleMap = new TextBox();
		checkBoxTeleTeam = new CheckBox();
		label4 = new Label();
		numericUpDownTeleY = new NumericUpDown();
		label3 = new Label();
		numericUpDownTeleX = new NumericUpDown();
		tabPage8 = new TabPage();
		checkBoxEndOff = new CheckBox();
		checkBoxEndBugOnl = new CheckBox();
		numericUpDownEndNV = new NumericUpDown();
		label9 = new Label();
		tabPage9 = new TabPage();
		textBoxSMS = new TextBox();
		label10 = new Label();
		tabPage13 = new TabPage();
		textBox4 = new TextBox();
		label12 = new Label();
		button15 = new Button();
		button14 = new Button();
		button8 = new Button();
		checkBoxD = new CheckBox();
		numericUpDownDelay = new NumericUpDown();
		button2 = new Button();
		label5 = new Label();
		textBox1 = new TextBox();
		dataGridView1 = new DataGridView();
		dataGridViewTextBoxColumn1 = new DataGridViewTextBoxColumn();
		dataGridViewTextBoxColumn3 = new DataGridViewTextBoxColumn();
		Note = new DataGridViewTextBoxColumn();
		Click = new DataGridViewButtonColumn();
		Delete = new DataGridViewButtonColumn();
		textBox2 = new TextBox();
		tabControl2 = new TabControl();
		tabPage4 = new TabPage();
		linkLabel1 = new LinkLabel();
		tabPage5 = new TabPage();
		linkLabel2 = new LinkLabel();
		numericUpDown1 = new NumericUpDown();
		label13 = new Label();
		label16 = new Label();
		label15 = new Label();
		label14 = new Label();
		label11 = new Label();
		textBox5 = new TextBox();
		button13 = new Button();
		comboBox3 = new ComboBox();
		button10 = new Button();
		button11 = new Button();
		button12 = new Button();
		textBox3 = new TextBox();
		backgroundWorker1 = new BackgroundWorker();
		groupBox2 = new GroupBox();
		textBox6 = new TextBox();
		button17 = new Button();
		((Control)groupBox1).SuspendLayout();
		((ISupportInitialize)numericUpDownFPS).BeginInit();
		((ISupportInitialize)pictureBox1).BeginInit();
		((ISupportInitialize)numericUpDownX).BeginInit();
		((ISupportInitialize)numericUpDownY).BeginInit();
		((Control)groupBox5).SuspendLayout();
		((Control)tabControl1).SuspendLayout();
		((Control)tabPage1).SuspendLayout();
		((Control)tabPage2).SuspendLayout();
		((Control)tabControl3).SuspendLayout();
		((Control)tabPage10).SuspendLayout();
		((Control)tabPage11).SuspendLayout();
		((Control)tabPage12).SuspendLayout();
		((Control)tabPage3).SuspendLayout();
		((ISupportInitialize)numericUpDownTeleY).BeginInit();
		((ISupportInitialize)numericUpDownTeleX).BeginInit();
		((Control)tabPage8).SuspendLayout();
		((ISupportInitialize)numericUpDownEndNV).BeginInit();
		((Control)tabPage9).SuspendLayout();
		((Control)tabPage13).SuspendLayout();
		((ISupportInitialize)numericUpDownDelay).BeginInit();
		((ISupportInitialize)dataGridView1).BeginInit();
		((Control)tabControl2).SuspendLayout();
		((Control)tabPage4).SuspendLayout();
		((Control)tabPage5).SuspendLayout();
		((ISupportInitialize)numericUpDown1).BeginInit();
		((Control)groupBox2).SuspendLayout();
		((Control)this).SuspendLayout();
		((Control)groupBox1).Controls.Add((Control)(object)ButtonDebug);
		((Control)groupBox1).Controls.Add((Control)(object)numericUpDownFPS);
		((Control)groupBox1).Controls.Add((Control)(object)checkBox1);
		((Control)groupBox1).Controls.Add((Control)(object)buttonPause);
		((Control)groupBox1).Controls.Add((Control)(object)buttonReset);
		((Control)groupBox1).Controls.Add((Control)(object)checkBoxLoop);
		((Control)groupBox1).Controls.Add((Control)(object)ButtonRunAuto);
		((Control)groupBox1).Controls.Add((Control)(object)pictureBox1);
		((Control)groupBox1).Controls.Add((Control)(object)label1);
		((Control)groupBox1).Controls.Add((Control)(object)comboBox1);
		((Control)groupBox1).Controls.Add((Control)(object)button1);
		((Control)groupBox1).Controls.Add((Control)(object)label2);
		((Control)groupBox1).Location = new Point(4, 4);
		((Control)groupBox1).Name = "groupBox1";
		((Control)groupBox1).Size = new Size(497, 82);
		((Control)groupBox1).TabIndex = 38;
		groupBox1.TabStop = false;
		((Control)groupBox1).Text = "null?";
		ButtonDebug.Appearance = (Appearance)1;
		((Control)ButtonDebug).Location = new Point(443, 17);
		((Control)ButtonDebug).Name = "ButtonDebug";
		((Control)ButtonDebug).Size = new Size(44, 56);
		((Control)ButtonDebug).TabIndex = 45;
		((Control)ButtonDebug).Text = "Công Cụ";
		((ButtonBase)ButtonDebug).TextAlign = (ContentAlignment)32;
		((ButtonBase)ButtonDebug).UseVisualStyleBackColor = true;
		ButtonDebug.CheckStateChanged += new EventHandler(ButtonDebug_CheckStateChanged);
		((Control)numericUpDownFPS).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownFPS).Location = new Point(246, 21);
		numericUpDownFPS.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownFPS).Name = "numericUpDownFPS";
		((Control)numericUpDownFPS).Size = new Size(37, 23);
		((Control)numericUpDownFPS).TabIndex = 15;
		numericUpDownFPS.Value = new decimal(new int[4] { 50, 0, 0, 0 });
		checkBox1.Appearance = (Appearance)1;
		((Control)checkBox1).Location = new Point(360, 48);
		((Control)checkBox1).Name = "checkBox1";
		((Control)checkBox1).Size = new Size(73, 25);
		((Control)checkBox1).TabIndex = 45;
		((Control)checkBox1).Text = "Ẩn";
		((ButtonBase)checkBox1).TextAlign = (ContentAlignment)32;
		((ButtonBase)checkBox1).UseVisualStyleBackColor = true;
		checkBox1.CheckStateChanged += new EventHandler(checkBox1_CheckStateChanged);
		((Control)buttonPause).Enabled = false;
		((Control)buttonPause).Location = new Point(289, 48);
		((Control)buttonPause).Name = "buttonPause";
		((Control)buttonPause).Size = new Size(65, 25);
		((Control)buttonPause).TabIndex = 44;
		((Control)buttonPause).Text = "Pause";
		((ButtonBase)buttonPause).UseVisualStyleBackColor = true;
		((Control)buttonPause).Click += new EventHandler(buttonPause_Click);
		((Control)buttonReset).Location = new Point(78, 51);
		((Control)buttonReset).Name = "buttonReset";
		((Control)buttonReset).Size = new Size(66, 22);
		((Control)buttonReset).TabIndex = 8;
		((Control)buttonReset).Text = "Reset";
		((ButtonBase)buttonReset).UseVisualStyleBackColor = true;
		((Control)buttonReset).Click += new EventHandler(buttonReset_Click);
		((Control)checkBoxLoop).AutoSize = true;
		((Control)checkBoxLoop).Location = new Point(360, 22);
		((Control)checkBoxLoop).Name = "checkBoxLoop";
		((Control)checkBoxLoop).Size = new Size(63, 19);
		((Control)checkBoxLoop).TabIndex = 44;
		((Control)checkBoxLoop).Text = "Lặp Lại";
		((ButtonBase)checkBoxLoop).UseVisualStyleBackColor = true;
		ButtonRunAuto.Appearance = (Appearance)1;
		((Control)ButtonRunAuto).Location = new Point(289, 19);
		((Control)ButtonRunAuto).Name = "ButtonRunAuto";
		((Control)ButtonRunAuto).Size = new Size(65, 25);
		((Control)ButtonRunAuto).TabIndex = 43;
		((Control)ButtonRunAuto).Text = "Start";
		((ButtonBase)ButtonRunAuto).TextAlign = (ContentAlignment)32;
		((ButtonBase)ButtonRunAuto).UseVisualStyleBackColor = true;
		ButtonRunAuto.CheckStateChanged += new EventHandler(ButtonRunAuto_CheckStateChanged);
		pictureBox1.Image = (Image)(object)Resources.anhNVr;
		((Control)pictureBox1).Location = new Point(151, 21);
		((Control)pictureBox1).Name = "pictureBox1";
		((Control)pictureBox1).Size = new Size(55, 52);
		pictureBox1.TabIndex = 0;
		pictureBox1.TabStop = false;
		((Control)label1).AutoSize = true;
		((Control)label1).Location = new Point(212, 25);
		((Control)label1).Name = "label1";
		((Control)label1).Size = new Size(29, 15);
		((Control)label1).TabIndex = 13;
		((Control)label1).Text = "FPS:";
		((ListControl)comboBox1).FormattingEnabled = true;
		((Control)comboBox1).Location = new Point(4, 22);
		((Control)comboBox1).Name = "comboBox1";
		((Control)comboBox1).Size = new Size(140, 23);
		((Control)comboBox1).TabIndex = 41;
		((Control)comboBox1).Text = "Select Display Name";
		((Control)button1).Location = new Point(4, 51);
		((Control)button1).Name = "button1";
		((Control)button1).Size = new Size(66, 22);
		((Control)button1).TabIndex = 35;
		((Control)button1).Text = "ReScan";
		((ButtonBase)button1).UseVisualStyleBackColor = true;
		((Control)button1).Click += new EventHandler(button1_Click);
		((Control)label2).AutoSize = true;
		((Control)label2).Location = new Point(212, 55);
		((Control)label2).Name = "label2";
		((Control)label2).Size = new Size(60, 15);
		((Control)label2).TabIndex = 13;
		((Control)label2).Text = "ID: 000000";
		((Control)button7).Location = new Point(324, 6);
		((Control)button7).Name = "button7";
		((Control)button7).Size = new Size(76, 23);
		((Control)button7).TabIndex = 50;
		((Control)button7).Text = "Delete File";
		((ButtonBase)button7).UseVisualStyleBackColor = true;
		((Control)button7).Click += new EventHandler(button7_Click);
		((ListControl)comboBox2).FormattingEnabled = true;
		((Control)comboBox2).Location = new Point(6, 6);
		((Control)comboBox2).Name = "comboBox2";
		((Control)comboBox2).Size = new Size(124, 23);
		((Control)comboBox2).TabIndex = 47;
		((Control)comboBox2).Text = "Name";
		((Control)button3).Location = new Point(198, 6);
		((Control)button3).Name = "button3";
		((Control)button3).Size = new Size(57, 23);
		((Control)button3).TabIndex = 16;
		((Control)button3).Text = "Lưu";
		((ButtonBase)button3).UseVisualStyleBackColor = true;
		((Control)button3).Click += new EventHandler(button3_Click);
		((Control)button5).Location = new Point(261, 6);
		((Control)button5).Name = "button5";
		((Control)button5).Size = new Size(57, 23);
		((Control)button5).TabIndex = 48;
		((Control)button5).Text = "Tải";
		((ButtonBase)button5).UseVisualStyleBackColor = true;
		((Control)button5).Click += new EventHandler(button5_Click);
		((Control)label6).AutoSize = true;
		((Control)label6).Font = new Font("Segoe UI", 10f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label6).Location = new Point(6, 450);
		((Control)label6).Name = "label6";
		((Control)label6).Size = new Size(37, 19);
		((Control)label6).TabIndex = 13;
		((Control)label6).Text = "null?";
		((Control)button6).Location = new Point(136, 6);
		((Control)button6).Name = "button6";
		((Control)button6).Size = new Size(56, 23);
		((Control)button6).TabIndex = 35;
		((Control)button6).Text = "Rescan";
		((ButtonBase)button6).UseVisualStyleBackColor = true;
		((Control)button6).Click += new EventHandler(button6_Click);
		((Control)numericUpDownX).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownX).Location = new Point(38, 67);
		numericUpDownX.Maximum = new decimal(new int[4] { 99999, 0, 0, 0 });
		((Control)numericUpDownX).Name = "numericUpDownX";
		((Control)numericUpDownX).Size = new Size(44, 23);
		((Control)numericUpDownX).TabIndex = 15;
		numericUpDownX.Value = new decimal(new int[4] { 300, 0, 0, 0 });
		((Control)numericUpDownY).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownY).Location = new Point(125, 67);
		numericUpDownY.Maximum = new decimal(new int[4] { 99999, 0, 0, 0 });
		((Control)numericUpDownY).Name = "numericUpDownY";
		((Control)numericUpDownY).Size = new Size(44, 23);
		((Control)numericUpDownY).TabIndex = 15;
		numericUpDownY.Value = new decimal(new int[4] { 200, 0, 0, 0 });
		((Control)label7).AutoSize = true;
		((Control)label7).Location = new Point(6, 69);
		((Control)label7).Name = "label7";
		((Control)label7).Size = new Size(30, 15);
		((Control)label7).TabIndex = 13;
		((Control)label7).Text = "X ->";
		((Control)label8).AutoSize = true;
		((Control)label8).Location = new Point(92, 69);
		((Control)label8).Name = "label8";
		((Control)label8).Size = new Size(30, 15);
		((Control)label8).TabIndex = 13;
		((Control)label8).Text = "Y ->";
		((Control)groupBox5).Controls.Add((Control)(object)tabControl1);
		((Control)groupBox5).Controls.Add((Control)(object)button8);
		((Control)groupBox5).Controls.Add((Control)(object)checkBoxD);
		((Control)groupBox5).Controls.Add((Control)(object)numericUpDownDelay);
		((Control)groupBox5).Controls.Add((Control)(object)button2);
		((Control)groupBox5).Controls.Add((Control)(object)label5);
		((Control)groupBox5).Location = new Point(511, 12);
		((Control)groupBox5).Name = "groupBox5";
		((Control)groupBox5).Size = new Size(212, 321);
		((Control)groupBox5).TabIndex = 39;
		groupBox5.TabStop = false;
		((Control)groupBox5).Text = "Công Cụ";
		((Control)groupBox5).Visible = false;
		((Control)tabControl1).Controls.Add((Control)(object)tabPage1);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage2);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage3);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage8);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage9);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage13);
		((Control)tabControl1).Location = new Point(6, 22);
		tabControl1.Multiline = true;
		((Control)tabControl1).Name = "tabControl1";
		tabControl1.SelectedIndex = 0;
		((Control)tabControl1).Size = new Size(198, 213);
		((Control)tabControl1).TabIndex = 47;
		((Control)tabPage1).Controls.Add((Control)(object)button17);
		((Control)tabPage1).Controls.Add((Control)(object)button4);
		((Control)tabPage1).Controls.Add((Control)(object)numericUpDownX);
		((Control)tabPage1).Controls.Add((Control)(object)label7);
		((Control)tabPage1).Controls.Add((Control)(object)checkBoxKey);
		((Control)tabPage1).Controls.Add((Control)(object)numericUpDownY);
		((Control)tabPage1).Controls.Add((Control)(object)label8);
		((Control)tabPage1).Controls.Add((Control)(object)checkBoxP);
		((Control)tabPage1).Controls.Add((Control)(object)comboBoxKey);
		tabPage1.Location = new Point(4, 44);
		((Control)tabPage1).Name = "tabPage1";
		((Control)tabPage1).Padding = new Padding(3);
		((Control)tabPage1).Size = new Size(190, 165);
		tabPage1.TabIndex = 0;
		((Control)tabPage1).Text = "Point";
		tabPage1.UseVisualStyleBackColor = true;
		((Control)button4).Location = new Point(113, 12);
		((Control)button4).Name = "button4";
		((Control)button4).Size = new Size(55, 32);
		((Control)button4).TabIndex = 16;
		((Control)button4).Text = "<<+>>";
		((ButtonBase)button4).UseVisualStyleBackColor = true;
		((Control)button4).MouseDown += new MouseEventHandler(button4_MouseDown);
		((Control)button4).MouseUp += new MouseEventHandler(button4_MouseUp);
		((Control)checkBoxKey).AutoSize = true;
		((Control)checkBoxKey).Location = new Point(6, 110);
		((Control)checkBoxKey).Name = "checkBoxKey";
		((Control)checkBoxKey).Size = new Size(75, 19);
		((Control)checkBoxKey).TabIndex = 37;
		((Control)checkBoxKey).Text = "Press Key";
		((ButtonBase)checkBoxKey).UseVisualStyleBackColor = true;
		checkBoxKey.CheckedChanged += new EventHandler(checkBoxKey_CheckedChanged);
		((Control)checkBoxP).AutoSize = true;
		((Control)checkBoxP).Location = new Point(6, 36);
		((Control)checkBoxP).Name = "checkBoxP";
		((Control)checkBoxP).Size = new Size(57, 19);
		((Control)checkBoxP).TabIndex = 17;
		((Control)checkBoxP).Text = "Point:";
		((ButtonBase)checkBoxP).UseVisualStyleBackColor = true;
		checkBoxP.CheckedChanged += new EventHandler(checkBoxP_CheckedChanged);
		((ListControl)comboBoxKey).FormattingEnabled = true;
		comboBoxKey.Items.AddRange(new object[11]
		{
			"ESC", "Enter", "`", "M", "B", "F", "P", "C", "Z", "Q",
			"Space"
		});
		((Control)comboBoxKey).Location = new Point(24, 135);
		((Control)comboBoxKey).Name = "comboBoxKey";
		((Control)comboBoxKey).RightToLeft = (RightToLeft)0;
		((Control)comboBoxKey).Size = new Size(128, 23);
		((Control)comboBoxKey).TabIndex = 38;
		((Control)comboBoxKey).Text = "Select Keyboard";
		((Control)tabPage2).Controls.Add((Control)(object)tabControl3);
		((Control)tabPage2).Controls.Add((Control)(object)button9);
		((Control)tabPage2).Controls.Add((Control)(object)buttonClick1);
		((Control)tabPage2).Controls.Add((Control)(object)comboBoxImg);
		tabPage2.Location = new Point(4, 44);
		((Control)tabPage2).Name = "tabPage2";
		((Control)tabPage2).Padding = new Padding(3);
		((Control)tabPage2).Size = new Size(190, 165);
		tabPage2.TabIndex = 1;
		((Control)tabPage2).Text = "Image";
		tabPage2.UseVisualStyleBackColor = true;
		((Control)tabControl3).Controls.Add((Control)(object)tabPage10);
		((Control)tabControl3).Controls.Add((Control)(object)tabPage11);
		((Control)tabControl3).Controls.Add((Control)(object)tabPage12);
		((Control)tabControl3).Location = new Point(9, 9);
		((Control)tabControl3).Name = "tabControl3";
		tabControl3.SelectedIndex = 0;
		((Control)tabControl3).Size = new Size(175, 79);
		((Control)tabControl3).TabIndex = 49;
		((Control)tabPage10).Controls.Add((Control)(object)checkBoxIF);
		((Control)tabPage10).Controls.Add((Control)(object)checkBoxIF2);
		tabPage10.Location = new Point(4, 24);
		((Control)tabPage10).Name = "tabPage10";
		((Control)tabPage10).Padding = new Padding(3);
		((Control)tabPage10).Size = new Size(167, 51);
		tabPage10.TabIndex = 0;
		((Control)tabPage10).Text = "Lê\u0323nh If";
		tabPage10.UseVisualStyleBackColor = true;
		((Control)checkBoxIF).AutoSize = true;
		((Control)checkBoxIF).Location = new Point(6, 6);
		((Control)checkBoxIF).Name = "checkBoxIF";
		((Control)checkBoxIF).Size = new Size(85, 19);
		((Control)checkBoxIF).TabIndex = 17;
		((Control)checkBoxIF).Text = "Image [ IF ]";
		((ButtonBase)checkBoxIF).UseVisualStyleBackColor = true;
		checkBoxIF.CheckedChanged += new EventHandler(checkBoxIF_CheckedChanged);
		((Control)checkBoxIF2).AutoSize = true;
		((Control)checkBoxIF2).Location = new Point(6, 31);
		((Control)checkBoxIF2).Name = "checkBoxIF2";
		((Control)checkBoxIF2).Size = new Size(120, 19);
		((Control)checkBoxIF2).TabIndex = 17;
		((Control)checkBoxIF2).Text = "Image [ iF - NOT ]";
		((ButtonBase)checkBoxIF2).UseVisualStyleBackColor = true;
		checkBoxIF2.CheckedChanged += new EventHandler(checkBoxIF2_CheckedChanged);
		((Control)tabPage11).Controls.Add((Control)(object)checkBoxWH);
		((Control)tabPage11).Controls.Add((Control)(object)checkBoxWH2);
		tabPage11.Location = new Point(4, 24);
		((Control)tabPage11).Name = "tabPage11";
		((Control)tabPage11).Padding = new Padding(3);
		((Control)tabPage11).Size = new Size(167, 51);
		tabPage11.TabIndex = 1;
		((Control)tabPage11).Text = "Lê\u0323nh While";
		tabPage11.UseVisualStyleBackColor = true;
		((Control)checkBoxWH).AutoSize = true;
		((Control)checkBoxWH).Location = new Point(6, 6);
		((Control)checkBoxWH).Name = "checkBoxWH";
		((Control)checkBoxWH).Size = new Size(96, 19);
		((Control)checkBoxWH).TabIndex = 17;
		((Control)checkBoxWH).Text = "Image [ WH ]";
		((ButtonBase)checkBoxWH).UseVisualStyleBackColor = true;
		checkBoxWH.CheckedChanged += new EventHandler(checkBoxWH_CheckedChanged);
		((Control)checkBoxWH2).AutoSize = true;
		((Control)checkBoxWH2).Location = new Point(6, 31);
		((Control)checkBoxWH2).Name = "checkBoxWH2";
		((Control)checkBoxWH2).Size = new Size(129, 19);
		((Control)checkBoxWH2).TabIndex = 17;
		((Control)checkBoxWH2).Text = "Image [ wH - NOT ]";
		((ButtonBase)checkBoxWH2).UseVisualStyleBackColor = true;
		checkBoxWH2.CheckedChanged += new EventHandler(checkBoxWH2_CheckedChanged);
		((Control)tabPage12).Controls.Add((Control)(object)checkBoxItem);
		tabPage12.Location = new Point(4, 24);
		((Control)tabPage12).Name = "tabPage12";
		((Control)tabPage12).Size = new Size(167, 51);
		tabPage12.TabIndex = 2;
		((Control)tabPage12).Text = "Item";
		tabPage12.UseVisualStyleBackColor = true;
		((Control)checkBoxItem).AutoSize = true;
		((Control)checkBoxItem).Location = new Point(10, 12);
		((Control)checkBoxItem).Name = "checkBoxItem";
		((Control)checkBoxItem).Size = new Size(50, 19);
		((Control)checkBoxItem).TabIndex = 37;
		((Control)checkBoxItem).Text = "Item";
		((ButtonBase)checkBoxItem).UseVisualStyleBackColor = true;
		checkBoxItem.CheckedChanged += new EventHandler(checkBoxItem_CheckedChanged);
		((Control)button9).Location = new Point(6, 123);
		((Control)button9).Name = "button9";
		((Control)button9).Size = new Size(91, 23);
		((Control)button9).TabIndex = 35;
		((Control)button9).Text = "Open Folder";
		((ButtonBase)button9).UseVisualStyleBackColor = true;
		((Control)button9).Click += new EventHandler(button9_Click);
		((Control)buttonClick1).Location = new Point(124, 123);
		((Control)buttonClick1).Name = "buttonClick1";
		((Control)buttonClick1).Size = new Size(56, 23);
		((Control)buttonClick1).TabIndex = 35;
		((Control)buttonClick1).Text = "Rescan";
		((ButtonBase)buttonClick1).UseVisualStyleBackColor = true;
		((Control)buttonClick1).Click += new EventHandler(buttonClick1_Click);
		((ListControl)comboBoxImg).FormattingEnabled = true;
		((Control)comboBoxImg).Location = new Point(6, 94);
		((Control)comboBoxImg).Name = "comboBoxImg";
		((Control)comboBoxImg).RightToLeft = (RightToLeft)0;
		((Control)comboBoxImg).Size = new Size(174, 23);
		((Control)comboBoxImg).TabIndex = 36;
		((Control)comboBoxImg).Text = "Select Image";
		((Control)tabPage3).Controls.Add((Control)(object)button16);
		((Control)tabPage3).Controls.Add((Control)(object)textBoxTeleMap);
		((Control)tabPage3).Controls.Add((Control)(object)checkBoxTeleTeam);
		((Control)tabPage3).Controls.Add((Control)(object)label4);
		((Control)tabPage3).Controls.Add((Control)(object)numericUpDownTeleY);
		((Control)tabPage3).Controls.Add((Control)(object)label3);
		((Control)tabPage3).Controls.Add((Control)(object)numericUpDownTeleX);
		tabPage3.Location = new Point(4, 44);
		((Control)tabPage3).Name = "tabPage3";
		((Control)tabPage3).Padding = new Padding(3);
		((Control)tabPage3).Size = new Size(190, 165);
		tabPage3.TabIndex = 2;
		((Control)tabPage3).Text = "Tele";
		tabPage3.UseVisualStyleBackColor = true;
		((Control)button16).Location = new Point(99, 79);
		((Control)button16).Name = "button16";
		((Control)button16).Size = new Size(75, 23);
		((Control)button16).TabIndex = 49;
		((Control)button16).Text = "Lâ\u0301y Vi\u0323 Tri\u0301";
		((ButtonBase)button16).UseVisualStyleBackColor = true;
		((Control)button16).Click += new EventHandler(button16_Click);
		((Control)textBoxTeleMap).Location = new Point(6, 40);
		((Control)textBoxTeleMap).Name = "textBoxTeleMap";
		((Control)textBoxTeleMap).Size = new Size(168, 23);
		((Control)textBoxTeleMap).TabIndex = 48;
		((Control)textBoxTeleMap).Text = "Map";
		((Control)checkBoxTeleTeam).AutoSize = true;
		((Control)checkBoxTeleTeam).Location = new Point(12, 12);
		((Control)checkBoxTeleTeam).Name = "checkBoxTeleTeam";
		((Control)checkBoxTeleTeam).Size = new Size(135, 19);
		((Control)checkBoxTeleTeam).TabIndex = 47;
		((Control)checkBoxTeleTeam).Text = "Tele Team (Phù Cao)";
		((ButtonBase)checkBoxTeleTeam).UseVisualStyleBackColor = true;
		((Control)label4).AutoSize = true;
		((Control)label4).Location = new Point(11, 110);
		((Control)label4).Name = "label4";
		((Control)label4).Size = new Size(30, 15);
		((Control)label4).TabIndex = 13;
		((Control)label4).Text = "Y ->";
		((Control)numericUpDownTeleY).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownTeleY).Location = new Point(44, 108);
		numericUpDownTeleY.Maximum = new decimal(new int[4] { 99999, 0, 0, 0 });
		((Control)numericUpDownTeleY).Name = "numericUpDownTeleY";
		((Control)numericUpDownTeleY).Size = new Size(44, 23);
		((Control)numericUpDownTeleY).TabIndex = 15;
		numericUpDownTeleY.Value = new decimal(new int[4] { 200, 0, 0, 0 });
		((Control)label3).AutoSize = true;
		((Control)label3).Location = new Point(12, 81);
		((Control)label3).Name = "label3";
		((Control)label3).Size = new Size(30, 15);
		((Control)label3).TabIndex = 13;
		((Control)label3).Text = "X ->";
		((Control)numericUpDownTeleX).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownTeleX).Location = new Point(44, 79);
		numericUpDownTeleX.Maximum = new decimal(new int[4] { 99999, 0, 0, 0 });
		((Control)numericUpDownTeleX).Name = "numericUpDownTeleX";
		((Control)numericUpDownTeleX).Size = new Size(44, 23);
		((Control)numericUpDownTeleX).TabIndex = 15;
		numericUpDownTeleX.Value = new decimal(new int[4] { 300, 0, 0, 0 });
		((Control)tabPage8).Controls.Add((Control)(object)checkBoxEndOff);
		((Control)tabPage8).Controls.Add((Control)(object)checkBoxEndBugOnl);
		((Control)tabPage8).Controls.Add((Control)(object)numericUpDownEndNV);
		((Control)tabPage8).Controls.Add((Control)(object)label9);
		tabPage8.Location = new Point(4, 44);
		((Control)tabPage8).Name = "tabPage8";
		((Control)tabPage8).Padding = new Padding(3);
		((Control)tabPage8).Size = new Size(190, 165);
		tabPage8.TabIndex = 3;
		((Control)tabPage8).Text = "End";
		tabPage8.UseVisualStyleBackColor = true;
		((Control)checkBoxEndOff).AutoSize = true;
		((Control)checkBoxEndOff).Location = new Point(9, 59);
		((Control)checkBoxEndOff).Name = "checkBoxEndOff";
		((Control)checkBoxEndOff).RightToLeft = (RightToLeft)0;
		((Control)checkBoxEndOff).Size = new Size(43, 19);
		((Control)checkBoxEndOff).TabIndex = 37;
		((Control)checkBoxEndOff).Text = "Off";
		((ButtonBase)checkBoxEndOff).UseVisualStyleBackColor = true;
		checkBoxEndOff.CheckedChanged += new EventHandler(checkBoxEndOff_CheckedChanged);
		((Control)checkBoxEndBugOnl).AutoSize = true;
		((Control)checkBoxEndBugOnl).Location = new Point(9, 25);
		((Control)checkBoxEndBugOnl).Name = "checkBoxEndBugOnl";
		((Control)checkBoxEndBugOnl).RightToLeft = (RightToLeft)0;
		((Control)checkBoxEndBugOnl).Size = new Size(116, 19);
		((Control)checkBoxEndBugOnl).TabIndex = 37;
		((Control)checkBoxEndBugOnl).Text = "Bugonl Nhân Vâ\u0323t";
		((ButtonBase)checkBoxEndBugOnl).UseVisualStyleBackColor = true;
		checkBoxEndBugOnl.CheckedChanged += new EventHandler(checkBoxEndBugOnl_CheckedChanged);
		((Control)numericUpDownEndNV).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownEndNV).Location = new Point(131, 24);
		numericUpDownEndNV.Maximum = new decimal(new int[4] { 9, 0, 0, 0 });
		numericUpDownEndNV.Minimum = new decimal(new int[4] { 1, 0, 0, 0 });
		((Control)numericUpDownEndNV).Name = "numericUpDownEndNV";
		((Control)numericUpDownEndNV).Size = new Size(31, 23);
		((Control)numericUpDownEndNV).TabIndex = 15;
		numericUpDownEndNV.Value = new decimal(new int[4] { 1, 0, 0, 0 });
		((Control)label9).AutoSize = true;
		((Control)label9).ForeColor = Color.Crimson;
		((Control)label9).Location = new Point(9, 84);
		((Control)label9).Name = "label9";
		((Control)label9).Size = new Size(128, 30);
		((Control)label9).TabIndex = 13;
		((Control)label9).Text = "Sau Khi Cha\u0323y Lê\u0323nh End\r\nAuto Click Se\u0303 Dư\u0300ng";
		((Control)tabPage9).Controls.Add((Control)(object)textBoxSMS);
		((Control)tabPage9).Controls.Add((Control)(object)label10);
		tabPage9.Location = new Point(4, 44);
		((Control)tabPage9).Name = "tabPage9";
		((Control)tabPage9).Padding = new Padding(3);
		((Control)tabPage9).Size = new Size(190, 165);
		tabPage9.TabIndex = 4;
		((Control)tabPage9).Text = "Text";
		tabPage9.UseVisualStyleBackColor = true;
		((Control)textBoxSMS).Location = new Point(6, 6);
		((TextBoxBase)textBoxSMS).Multiline = true;
		((Control)textBoxSMS).Name = "textBoxSMS";
		((Control)textBoxSMS).Size = new Size(178, 68);
		((Control)textBoxSMS).TabIndex = 0;
		((Control)label10).AutoSize = true;
		((Control)label10).ForeColor = Color.Crimson;
		((Control)label10).Location = new Point(10, 98);
		((Control)label10).Name = "label10";
		((Control)label10).Size = new Size(151, 30);
		((Control)label10).TabIndex = 13;
		((Control)label10).Text = "Gư\u0309i Mô\u0323t Chuô\u0303i Ky\u0301 Tư\u0323, Sô\u0301 ... \r\nTư\u0300 Ba\u0300n Phi\u0301m";
		((Control)tabPage13).Controls.Add((Control)(object)textBox4);
		((Control)tabPage13).Controls.Add((Control)(object)label12);
		((Control)tabPage13).Controls.Add((Control)(object)button15);
		((Control)tabPage13).Controls.Add((Control)(object)button14);
		tabPage13.Location = new Point(4, 44);
		((Control)tabPage13).Name = "tabPage13";
		((Control)tabPage13).Padding = new Padding(3);
		((Control)tabPage13).Size = new Size(190, 165);
		tabPage13.TabIndex = 5;
		((Control)tabPage13).Text = "GetData";
		tabPage13.UseVisualStyleBackColor = true;
		((Control)textBox4).Location = new Point(6, 40);
		((Control)textBox4).Name = "textBox4";
		((TextBoxBase)textBox4).ReadOnly = true;
		((Control)textBox4).Size = new Size(178, 23);
		((Control)textBox4).TabIndex = 49;
		((Control)label12).AutoSize = true;
		((Control)label12).Location = new Point(6, 22);
		((Control)label12).Name = "label12";
		((Control)label12).Size = new Size(57, 15);
		((Control)label12).TabIndex = 13;
		((Control)label12).Text = "FileName";
		((Control)button15).Location = new Point(6, 69);
		((Control)button15).Name = "button15";
		((Control)button15).Size = new Size(47, 23);
		((Control)button15).TabIndex = 39;
		((Control)button15).Text = "Cho\u0323n";
		((ButtonBase)button15).UseVisualStyleBackColor = true;
		((Control)button15).Click += new EventHandler(button15_Click);
		((Control)button14).Location = new Point(6, 116);
		((Control)button14).Name = "button14";
		((Control)button14).Size = new Size(67, 23);
		((Control)button14).TabIndex = 38;
		((Control)button14).Text = "Get Data";
		((ButtonBase)button14).UseVisualStyleBackColor = true;
		((Control)button14).Click += new EventHandler(button14_Click);
		((Control)button8).Location = new Point(131, 290);
		((Control)button8).Name = "button8";
		((Control)button8).Size = new Size(69, 23);
		((Control)button8).TabIndex = 50;
		((Control)button8).Text = "Xo\u0301a Ba\u0309ng";
		((ButtonBase)button8).UseVisualStyleBackColor = true;
		((Control)button8).Click += new EventHandler(button8_Click);
		((Control)checkBoxD).AutoSize = true;
		((Control)checkBoxD).Location = new Point(6, 241);
		((Control)checkBoxD).Name = "checkBoxD";
		((Control)checkBoxD).RightToLeft = (RightToLeft)0;
		((Control)checkBoxD).Size = new Size(93, 19);
		((Control)checkBoxD).TabIndex = 37;
		((Control)checkBoxD).Text = "Double Click";
		((ButtonBase)checkBoxD).UseVisualStyleBackColor = true;
		((Control)numericUpDownDelay).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownDelay).Location = new Point(118, 261);
		numericUpDownDelay.Maximum = new decimal(new int[4] { 99999, 0, 0, 0 });
		((Control)numericUpDownDelay).Name = "numericUpDownDelay";
		((Control)numericUpDownDelay).Size = new Size(48, 23);
		((Control)numericUpDownDelay).TabIndex = 15;
		numericUpDownDelay.Value = new decimal(new int[4] { 50, 0, 0, 0 });
		((Control)button2).Location = new Point(10, 290);
		((Control)button2).Name = "button2";
		((Control)button2).Size = new Size(102, 23);
		((Control)button2).TabIndex = 16;
		((Control)button2).Text = "Add Command";
		((ButtonBase)button2).UseVisualStyleBackColor = true;
		((Control)button2).Click += new EventHandler(button2_Click);
		((Control)label5).AutoSize = true;
		((Control)label5).Location = new Point(15, 263);
		((Control)label5).Name = "label5";
		((Control)label5).Size = new Size(96, 15);
		((Control)label5).TabIndex = 13;
		((Control)label5).Text = "Delay (x20ms) ->";
		((TextBoxBase)textBox1).BorderStyle = (BorderStyle)1;
		((Control)textBox1).Location = new Point(760, 12);
		((TextBoxBase)textBox1).Multiline = true;
		((Control)textBox1).Name = "textBox1";
		((TextBoxBase)textBox1).ReadOnly = true;
		textBox1.ScrollBars = (ScrollBars)2;
		((Control)textBox1).Size = new Size(149, 30);
		((Control)textBox1).TabIndex = 46;
		((Control)textBox1).Text = ((ResourceManager)val).GetString("textBox1.Text");
		((Control)textBox1).Visible = false;
		((Control)dataGridView1).AllowDrop = true;
		dataGridView1.ColumnHeadersHeightSizeMode = (DataGridViewColumnHeadersHeightSizeMode)2;
		dataGridView1.Columns.AddRange((DataGridViewColumn[])(object)new DataGridViewColumn[5]
		{
			(DataGridViewColumn)dataGridViewTextBoxColumn1,
			(DataGridViewColumn)dataGridViewTextBoxColumn3,
			(DataGridViewColumn)Note,
			(DataGridViewColumn)Click,
			(DataGridViewColumn)Delete
		});
		((Control)dataGridView1).Location = new Point(6, 35);
		((Control)dataGridView1).Name = "dataGridView1";
		dataGridView1.RowTemplate.Height = 25;
		((Control)dataGridView1).Size = new Size(473, 423);
		((Control)dataGridView1).TabIndex = 45;
		dataGridView1.CellContentClick += new DataGridViewCellEventHandler(dataGridView1_CellContentClick);
		((Control)dataGridView1).DragDrop += new DragEventHandler(dataGridView1_DragDrop);
		((Control)dataGridView1).DragOver += new DragEventHandler(dataGridView1_DragOver);
		((Control)dataGridView1).MouseDown += new MouseEventHandler(dataGridView1_MouseDown);
		((Control)dataGridView1).MouseMove += new MouseEventHandler(dataGridView1_MouseMove);
		((DataGridViewColumn)dataGridViewTextBoxColumn1).FillWeight = 140f;
		((DataGridViewColumn)dataGridViewTextBoxColumn1).HeaderText = "Command";
		((DataGridViewColumn)dataGridViewTextBoxColumn1).Name = "dataGridViewTextBoxColumn1";
		((DataGridViewColumn)dataGridViewTextBoxColumn1).Width = 140;
		((DataGridViewColumn)dataGridViewTextBoxColumn3).FillWeight = 50f;
		((DataGridViewColumn)dataGridViewTextBoxColumn3).HeaderText = "Delay (x20ms)";
		((DataGridViewColumn)dataGridViewTextBoxColumn3).Name = "dataGridViewTextBoxColumn3";
		((DataGridViewColumn)dataGridViewTextBoxColumn3).Width = 50;
		((DataGridViewColumn)Note).FillWeight = 140f;
		((DataGridViewColumn)Note).HeaderText = "Note";
		((DataGridViewColumn)Note).Name = "Note";
		((DataGridViewColumn)Note).Width = 140;
		((DataGridViewColumn)Click).FillWeight = 40f;
		((DataGridViewColumn)Click).HeaderText = "Click";
		((DataGridViewColumn)Click).Name = "Click";
		Click.Text = "Click";
		Click.UseColumnTextForButtonValue = true;
		((DataGridViewColumn)Click).Width = 40;
		((DataGridViewColumn)Delete).FillWeight = 30f;
		((DataGridViewColumn)Delete).HeaderText = "Xóa";
		((DataGridViewColumn)Delete).Name = "Delete";
		Delete.Text = "Xóa";
		Delete.UseColumnTextForButtonValue = true;
		((DataGridViewColumn)Delete).Width = 30;
		((TextBoxBase)textBox2).BorderStyle = (BorderStyle)1;
		((Control)textBox2).Cursor = Cursors.IBeam;
		((Control)textBox2).Location = new Point(6, 223);
		((TextBoxBase)textBox2).MaxLength = 999999;
		((TextBoxBase)textBox2).Multiline = true;
		((Control)textBox2).Name = "textBox2";
		textBox2.ScrollBars = (ScrollBars)2;
		((Control)textBox2).Size = new Size(473, 224);
		((Control)textBox2).TabIndex = 47;
		((Control)textBox2).TextChanged += new EventHandler(textBox2_TextChanged);
		((Control)tabControl2).Controls.Add((Control)(object)tabPage4);
		((Control)tabControl2).Controls.Add((Control)(object)tabPage5);
		((Control)tabControl2).Location = new Point(4, 105);
		((Control)tabControl2).Name = "tabControl2";
		tabControl2.SelectedIndex = 0;
		((Control)tabControl2).Size = new Size(501, 489);
		((Control)tabControl2).TabIndex = 48;
		((Control)tabPage4).Controls.Add((Control)(object)linkLabel1);
		((Control)tabPage4).Controls.Add((Control)(object)dataGridView1);
		((Control)tabPage4).Controls.Add((Control)(object)button7);
		((Control)tabPage4).Controls.Add((Control)(object)comboBox2);
		((Control)tabPage4).Controls.Add((Control)(object)button6);
		((Control)tabPage4).Controls.Add((Control)(object)button5);
		((Control)tabPage4).Controls.Add((Control)(object)button3);
		tabPage4.Location = new Point(4, 24);
		((Control)tabPage4).Name = "tabPage4";
		((Control)tabPage4).Padding = new Padding(3);
		((Control)tabPage4).Size = new Size(493, 461);
		tabPage4.TabIndex = 0;
		((Control)tabPage4).Text = "Normal";
		tabPage4.UseVisualStyleBackColor = true;
		((Control)linkLabel1).AutoSize = true;
		((Control)linkLabel1).Font = new Font("Segoe UI", 10f, (FontStyle)0, (GraphicsUnit)3);
		((Control)linkLabel1).Location = new Point(403, 8);
		((Control)linkLabel1).Name = "linkLabel1";
		((Control)linkLabel1).Size = new Size(80, 19);
		((Control)linkLabel1).TabIndex = 51;
		linkLabel1.TabStop = true;
		((Control)linkLabel1).Text = "Hướng Dẫn";
		linkLabel1.LinkClicked += new LinkLabelLinkClickedEventHandler(linkLabel1_LinkClicked);
		((Control)tabPage5).Controls.Add((Control)(object)linkLabel2);
		((Control)tabPage5).Controls.Add((Control)(object)numericUpDown1);
		((Control)tabPage5).Controls.Add((Control)(object)label13);
		((Control)tabPage5).Controls.Add((Control)(object)label16);
		((Control)tabPage5).Controls.Add((Control)(object)label15);
		((Control)tabPage5).Controls.Add((Control)(object)label14);
		((Control)tabPage5).Controls.Add((Control)(object)label11);
		((Control)tabPage5).Controls.Add((Control)(object)textBox5);
		((Control)tabPage5).Controls.Add((Control)(object)textBox2);
		((Control)tabPage5).Controls.Add((Control)(object)button13);
		((Control)tabPage5).Controls.Add((Control)(object)comboBox3);
		((Control)tabPage5).Controls.Add((Control)(object)label6);
		((Control)tabPage5).Controls.Add((Control)(object)button10);
		((Control)tabPage5).Controls.Add((Control)(object)button11);
		((Control)tabPage5).Controls.Add((Control)(object)button12);
		tabPage5.Location = new Point(4, 24);
		((Control)tabPage5).Name = "tabPage5";
		((Control)tabPage5).Padding = new Padding(3);
		((Control)tabPage5).Size = new Size(493, 461);
		tabPage5.TabIndex = 1;
		((Control)tabPage5).Text = "Code";
		tabPage5.UseVisualStyleBackColor = true;
		((Control)linkLabel2).AutoSize = true;
		((Control)linkLabel2).Font = new Font("Segoe UI", 10f, (FontStyle)0, (GraphicsUnit)3);
		((Control)linkLabel2).Location = new Point(402, 8);
		((Control)linkLabel2).Name = "linkLabel2";
		((Control)linkLabel2).Size = new Size(80, 19);
		((Control)linkLabel2).TabIndex = 51;
		linkLabel2.TabStop = true;
		((Control)linkLabel2).Text = "Hướng Dẫn";
		linkLabel2.LinkClicked += new LinkLabelLinkClickedEventHandler(linkLabel2_LinkClicked);
		((Control)numericUpDown1).Location = new Point(356, 35);
		numericUpDown1.Maximum = new decimal(new int[4] { 9999, 0, 0, 0 });
		((Control)numericUpDown1).Name = "numericUpDown1";
		((Control)numericUpDown1).Size = new Size(37, 23);
		((Control)numericUpDown1).TabIndex = 52;
		numericUpDown1.ValueChanged += new EventHandler(numericUpDown1_ValueChanged);
		((Control)label13).AutoSize = true;
		((Control)label13).Location = new Point(6, 205);
		((Control)label13).Name = "label13";
		((Control)label13).Size = new Size(306, 15);
		((Control)label13).TabIndex = 52;
		((Control)label13).Text = "Loop: Chạy Tiếp Sau Và Lặp Lại Nếu Tích Chọn \"Lặp Lại\".";
		((Control)label16).AutoSize = true;
		((Control)label16).Location = new Point(320, 37);
		((Control)label16).Name = "label16";
		((Control)label16).Size = new Size(30, 15);
		((Control)label16).TabIndex = 52;
		((Control)label16).Text = "Size:";
		((Control)label15).AutoSize = true;
		((Control)label15).Location = new Point(395, 205);
		((Control)label15).Name = "label15";
		((Control)label15).Size = new Size(84, 15);
		((Control)label15).TabIndex = 52;
		((Control)label15).Text = "000000/999999";
		((Control)label14).AutoSize = true;
		((Control)label14).Location = new Point(395, 43);
		((Control)label14).Name = "label14";
		((Control)label14).Size = new Size(84, 15);
		((Control)label14).TabIndex = 52;
		((Control)label14).Text = "000000/999999";
		((Control)label11).AutoSize = true;
		((Control)label11).Location = new Point(6, 43);
		((Control)label11).Name = "label11";
		((Control)label11).Size = new Size(217, 15);
		((Control)label11).TabIndex = 52;
		((Control)label11).Text = "Main: Chạy Đầu Tiên Và Chỉ Chạy 1 Lần.";
		((TextBoxBase)textBox5).BorderStyle = (BorderStyle)1;
		((Control)textBox5).Location = new Point(6, 61);
		((TextBoxBase)textBox5).MaxLength = 999999;
		((TextBoxBase)textBox5).Multiline = true;
		((Control)textBox5).Name = "textBox5";
		textBox5.ScrollBars = (ScrollBars)2;
		((Control)textBox5).Size = new Size(473, 137);
		((Control)textBox5).TabIndex = 51;
		((Control)textBox5).TextChanged += new EventHandler(textBox5_TextChanged);
		((Control)button13).Location = new Point(324, 6);
		((Control)button13).Name = "button13";
		((Control)button13).Size = new Size(76, 23);
		((Control)button13).TabIndex = 50;
		((Control)button13).Text = "Delete File";
		((ButtonBase)button13).UseVisualStyleBackColor = true;
		((Control)button13).Click += new EventHandler(button13_Click);
		((ListControl)comboBox3).FormattingEnabled = true;
		((Control)comboBox3).Location = new Point(6, 6);
		((Control)comboBox3).Name = "comboBox3";
		((Control)comboBox3).Size = new Size(124, 23);
		((Control)comboBox3).TabIndex = 47;
		((Control)comboBox3).Text = "Name";
		((Control)button10).Location = new Point(261, 6);
		((Control)button10).Name = "button10";
		((Control)button10).Size = new Size(57, 23);
		((Control)button10).TabIndex = 16;
		((Control)button10).Text = "Save";
		((ButtonBase)button10).UseVisualStyleBackColor = true;
		((Control)button10).Click += new EventHandler(button10_Click);
		((Control)button11).Location = new Point(198, 6);
		((Control)button11).Name = "button11";
		((Control)button11).Size = new Size(57, 23);
		((Control)button11).TabIndex = 48;
		((Control)button11).Text = "Load";
		((ButtonBase)button11).UseVisualStyleBackColor = true;
		((Control)button11).Click += new EventHandler(button11_Click);
		((Control)button12).Location = new Point(136, 6);
		((Control)button12).Name = "button12";
		((Control)button12).Size = new Size(56, 23);
		((Control)button12).TabIndex = 35;
		((Control)button12).Text = "Rescan";
		((ButtonBase)button12).UseVisualStyleBackColor = true;
		((Control)button12).Click += new EventHandler(button12_Click);
		((TextBoxBase)textBox3).BorderStyle = (BorderStyle)1;
		((Control)textBox3).Location = new Point(760, 52);
		((TextBoxBase)textBox3).Multiline = true;
		((Control)textBox3).Name = "textBox3";
		((TextBoxBase)textBox3).ReadOnly = true;
		textBox3.ScrollBars = (ScrollBars)2;
		((Control)textBox3).Size = new Size(208, 22);
		((Control)textBox3).TabIndex = 47;
		((Control)textBox3).Text = ((ResourceManager)val).GetString("textBox3.Text");
		((Control)textBox3).Visible = false;
		((Control)groupBox2).Controls.Add((Control)(object)textBox6);
		((Control)groupBox2).Location = new Point(511, 339);
		((Control)groupBox2).Name = "groupBox2";
		((Control)groupBox2).RightToLeft = (RightToLeft)0;
		((Control)groupBox2).Size = new Size(212, 251);
		((Control)groupBox2).TabIndex = 51;
		groupBox2.TabStop = false;
		((Control)groupBox2).Text = "Debug";
		((Control)textBox6).Location = new Point(6, 22);
		((TextBoxBase)textBox6).MaxLength = 999999;
		((TextBoxBase)textBox6).Multiline = true;
		((Control)textBox6).Name = "textBox6";
		((TextBoxBase)textBox6).ReadOnly = true;
		textBox6.ScrollBars = (ScrollBars)2;
		((Control)textBox6).Size = new Size(204, 223);
		((Control)textBox6).TabIndex = 15;
		((Control)textBox6).Text = "----------------------------------";
		((Control)button17).Location = new Point(113, 96);
		((Control)button17).Name = "button17";
		((Control)button17).Size = new Size(56, 23);
		((Control)button17).TabIndex = 39;
		((Control)button17).Text = "Click";
		((ButtonBase)button17).UseVisualStyleBackColor = true;
		((Control)button17).Click += new EventHandler(button17_Click);
		((ContainerControl)this).AutoScaleDimensions = new SizeF(7f, 15f);
		((ContainerControl)this).AutoScaleMode = (AutoScaleMode)1;
		((Form)this).ClientSize = new Size(763, 600);
		((Control)this).Controls.Add((Control)(object)tabControl2);
		((Control)this).Controls.Add((Control)(object)groupBox1);
		((Control)this).Controls.Add((Control)(object)groupBox2);
		((Control)this).Controls.Add((Control)(object)groupBox5);
		((Control)this).Controls.Add((Control)(object)textBox3);
		((Control)this).Controls.Add((Control)(object)textBox1);
		((Form)this).FormBorderStyle = (FormBorderStyle)1;
		((Form)this).Icon = (Icon)((ResourceManager)val).GetObject("$this.Icon");
		((Form)this).MaximizeBox = false;
		((Control)this).Name = "AutoClick";
		((Form)this).StartPosition = (FormStartPosition)1;
		((Control)this).Text = "xxx";
		((Form)this).FormClosing += new FormClosingEventHandler(AutoClick_FormClosing);
		((Form)this).FormClosed += new FormClosedEventHandler(AutoClick_FormClosed);
		((Form)this).Load += new EventHandler(AutoClick_Load);
		((Control)groupBox1).ResumeLayout(false);
		((Control)groupBox1).PerformLayout();
		((ISupportInitialize)numericUpDownFPS).EndInit();
		((ISupportInitialize)pictureBox1).EndInit();
		((ISupportInitialize)numericUpDownX).EndInit();
		((ISupportInitialize)numericUpDownY).EndInit();
		((Control)groupBox5).ResumeLayout(false);
		((Control)groupBox5).PerformLayout();
		((Control)tabControl1).ResumeLayout(false);
		((Control)tabPage1).ResumeLayout(false);
		((Control)tabPage1).PerformLayout();
		((Control)tabPage2).ResumeLayout(false);
		((Control)tabControl3).ResumeLayout(false);
		((Control)tabPage10).ResumeLayout(false);
		((Control)tabPage10).PerformLayout();
		((Control)tabPage11).ResumeLayout(false);
		((Control)tabPage11).PerformLayout();
		((Control)tabPage12).ResumeLayout(false);
		((Control)tabPage12).PerformLayout();
		((Control)tabPage3).ResumeLayout(false);
		((Control)tabPage3).PerformLayout();
		((ISupportInitialize)numericUpDownTeleY).EndInit();
		((ISupportInitialize)numericUpDownTeleX).EndInit();
		((Control)tabPage8).ResumeLayout(false);
		((Control)tabPage8).PerformLayout();
		((ISupportInitialize)numericUpDownEndNV).EndInit();
		((Control)tabPage9).ResumeLayout(false);
		((Control)tabPage9).PerformLayout();
		((Control)tabPage13).ResumeLayout(false);
		((Control)tabPage13).PerformLayout();
		((ISupportInitialize)numericUpDownDelay).EndInit();
		((ISupportInitialize)dataGridView1).EndInit();
		((Control)tabControl2).ResumeLayout(false);
		((Control)tabPage4).ResumeLayout(false);
		((Control)tabPage4).PerformLayout();
		((Control)tabPage5).ResumeLayout(false);
		((Control)tabPage5).PerformLayout();
		((ISupportInitialize)numericUpDown1).EndInit();
		((Control)groupBox2).ResumeLayout(false);
		((Control)groupBox2).PerformLayout();
		((Control)this).ResumeLayout(false);
		((Control)this).PerformLayout();
	}
}
