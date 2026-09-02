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

public class CheckErr232 : Form
{
	public string pathAutoPhuBan = ((object)Application.StartupPath).ToString() + "Anh/AutoPhuBan";

	public string pathTacVu = ((object)Application.StartupPath).ToString() + "Anh/TacVu";

	public string pathAutoNhanNVPB = ((object)Application.StartupPath).ToString() + "Anh/NhanNVPB";

	public string pathKhac = ((object)Application.StartupPath).ToString() + "Anh/Khac";

	public string pathMaps = ((object)Application.StartupPath).ToString() + "Anh/Maps";

	public string pathData = Application.StartupPath + "/AccData";

	public string pathLuyenPet = ((object)Application.StartupPath).ToString() + "Anh/LuyenPet";

	public string pathBangHoi = ((object)Application.StartupPath).ToString() + "Anh/BangHoi";

	public string pathTruMa = ((object)Application.StartupPath).ToString() + "Anh/TruMa";

	public Bitmap AvatarNV;

	public Point? KetQua_Point;

	public List<Point> KetQua_Points;

	private System.IntPtr hWnd = System.IntPtr.Zero;

	public bool IsStop = true;

	public bool IsPause = false;

	private System.Threading.Tasks.Task T;

	public uint processID;

	private uint[] offset_ToaDoX;

	private uint[] offset_ToaDoY;

	private uint[] offset_FPS;

	private uint myPointer;

	public int ViTriNhanVat_X;

	public int ViTriNhanVat_Y;

	public int Level;

	public int VIP;

	public string accMain;

	private uint myPointer_lv;

	private uint[] offset_lv;

	private uint myPointer_HPMP;

	private uint[] offset_MP;

	private uint[] offset_HP;

	private List<string> pb;

	public int NhiemVuLuyenPet;

	public int NhiemVuBangHoi;

	public int NhiemVuTuHanh;

	public bool autoRun;

	private IContainer components;

	private GroupBox groupBox4;

	private PictureBox pictureBox1;

	private NumericUpDown numericUpDownFPS;

	private Label label1;

	private Button buttonReset;

	private Label label6;

	private Button buttonPause;

	private CheckBox ButtonRunAuto;

	private TextBox textBox3;

	private Label label2;

	private Label label3;

	private Label label5;

	private ComboBox comboBox1;

	private Button button1;

	private NumericUpDown numericUpDown1;

	public CheckErr232()
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
		Level = 0;
		VIP = 0;
		accMain = "null";
		myPointer_lv = 11180668u;
		uint[] array4 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array4, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_lv = array4;
		myPointer_HPMP = 11180664u;
		uint[] array5 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array5, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_MP = array5;
		uint[] array6 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array6, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_HP = array6;
		pb = new List<string>();
		NhiemVuLuyenPet = 0;
		NhiemVuBangHoi = 0;
		NhiemVuTuHanh = 20;
		autoRun = false;
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

	[DllImport("kernel32.dll", CharSet = (CharSet)4)]
	private static extern System.IntPtr OpenProcess(uint dwDesiredAccess, bool bInheritHandle, uint dwProcessId);

	public static System.IntPtr OpenProcess(uint pId, ProcessAccessFlags ProcessAccess = (ProcessAccessFlags)2035711u)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0009: Expected I4, but got Unknown
		return OpenProcess((uint)(int)ProcessAccess, bInheritHandle: false, pId);
	}

	private bool FindItem(System.IntPtr hWnd, string pathItem, string nameItem)
	{
		//IL_004a: Unknown result type (might be due to invalid IL or missing references)
		//IL_004f: Unknown result type (might be due to invalid IL or missing references)
		//IL_005d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0062: Unknown result type (might be due to invalid IL or missing references)
		//IL_00af: Unknown result type (might be due to invalid IL or missing references)
		//IL_00b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0163: Unknown result type (might be due to invalid IL or missing references)
		//IL_0168: Unknown result type (might be due to invalid IL or missing references)
		//IL_0176: Unknown result type (might be due to invalid IL or missing references)
		//IL_017b: Unknown result type (might be due to invalid IL or missing references)
		//IL_01df: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f7: Unknown result type (might be due to invalid IL or missing references)
		int num = 0;
		while (true)
		{
			debugText("Tìm Item " + nameItem);
			KetQua_Point = FindPoint(hWnd, pathAutoPhuBan + "/MuiTenIcon.png");
			Point value;
			if (KetQua_Point.HasValue)
			{
				value = KetQua_Point.Value;
				int x = ((Point)(ref value)).X;
				value = KetQua_Point.Value;
				AutoControl.SendClickOnPosition(hWnd, x, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
				debugText("Mở bảng icon");
				delay_100ms(5);
			}
			KetQua_Point = FindPoint(hWnd, pathItem);
			if (KetQua_Point.HasValue)
			{
				value = KetQua_Point.Value;
				int x2 = ((Point)(ref value)).X;
				value = KetQua_Point.Value;
				AutoControl.SendClickOnPosition(hWnd, x2, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
				debugText("Mở " + nameItem);
				delay_100ms(5);
				num = 0;
				return true;
			}
			KetQua_Point = FindPoint(hWnd, pathAutoPhuBan + "/NutXuong.png");
			num++;
			if (num >= 4)
			{
				debugText("Không Tìm Thấy Item " + nameItem + " Sau 4 Lần Check");
				break;
			}
			if (KetQua_Point.HasValue)
			{
				value = KetQua_Point.Value;
				int x3 = ((Point)(ref value)).X;
				value = KetQua_Point.Value;
				AutoControl.SendClickOnPosition(hWnd, x3, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
				debugText("Nhấn nút xuống");
				delay_100ms(5);
				continue;
			}
			KetQua_Point = FindPoint(hWnd, pathAutoPhuBan + "/NutLen.png");
			if (!KetQua_Point.HasValue)
			{
				break;
			}
			value = KetQua_Point.Value;
			int x4 = ((Point)(ref value)).X;
			value = KetQua_Point.Value;
			AutoControl.SendClickOnPosition(hWnd, x4, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
			debugText("Nhấn nút lên");
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
			debugText(textDebug);
			delay_100ms(5);
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
				debugText(textDebug + i);
				delay_100ms(5);
			}
			return true;
		}
		return false;
	}

	private Point? FindAndMove(System.IntPtr hWnd, string pathFind, int offsetX, int offsetY, string textDebug)
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
			AutoControl.SendClickUpOnPosition(hWnd, num, ((Point)(ref value)).Y + offsetY - 30, (EMouseKey)0, 1);
			delay_100ms(5);
			debugText(textDebug);
			delay_100ms(5);
			return result;
		}
		return null;
	}

	private void delay_100ms(int x)
	{
		//IL_0017: Unknown result type (might be due to invalid IL or missing references)
		for (double num = 0.0; num < (double)x; num += 1.0)
		{
			Thread.Sleep(TimeSpan.FromSeconds(0.1));
		}
		if (IsStop)
		{
			T.Wait();
		}
		while (IsPause && !IsStop)
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

	private Point? FindSubPoint2(System.IntPtr hWnd, string pathKhungAnhLon, int offSetX, int offSetY, int offSetW, int offSetH, string pathKhungAnhNho)
	{
		//IL_0018: Unknown result type (might be due to invalid IL or missing references)
		//IL_002c: Expected O, but got Unknown
		//IL_002e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0042: Expected O, but got Unknown
		//IL_0046: Unknown result type (might be due to invalid IL or missing references)
		//IL_0050: Unknown result type (might be due to invalid IL or missing references)
		//IL_0055: Unknown result type (might be due to invalid IL or missing references)
		//IL_006a: Unknown result type (might be due to invalid IL or missing references)
		//IL_006f: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a4: Unknown result type (might be due to invalid IL or missing references)
		Image val = CaptureHelper.CaptureWindow(hWnd);
		Bitmap image = ImageScanOpenCV.GetImage(pathKhungAnhLon);
		Bitmap image2 = ImageScanOpenCV.GetImage(pathKhungAnhNho);
		Bitmap val2 = ImageScanOpenCV.Find((Bitmap)val, image, 0.9);
		Point? val3 = ImageScanOpenCV.FindOutPoint((Bitmap)val, image, 0.9);
		Rectangle val4 = default(Rectangle);
		Point value = val3.Value;
		((Rectangle)(ref val4)).X = ((Point)(ref value)).X + offSetX;
		value = val3.Value;
		((Rectangle)(ref val4)).Y = ((Point)(ref value)).Y + offSetY;
		((Rectangle)(ref val4)).Width = ((Image)image).Width + offSetW;
		((Rectangle)(ref val4)).Height = ((Image)image).Height + offSetH;
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

	private static List<Point>? FindPoints2(Image chupWindow, Bitmap imgSoSanh)
	{
		//IL_0002: Unknown result type (might be due to invalid IL or missing references)
		//IL_0016: Expected O, but got Unknown
		return ImageScanOpenCV.FindOutPoints((Bitmap)chupWindow, imgSoSanh, 0.9);
	}

	private void debugText(string x)
	{
		((Control)label5).Text = x;
	}

	private void PressKey(string x)
	{
		FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 2, 2, "Press");
		FindAndClick(hWnd, pathKhac + "/Log_OK.png", 2, 2, "Press");
		FindAndClick(hWnd, pathTacVu + "/GuiChat.png", 2, 2, "Press");
		switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(x))
		{
		case 2952291245u:
			if (x == "Enter")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)13);
			}
			break;
		case 3289118412u:
			if (x == "A")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)65);
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
				FindAndClick(hWnd, pathTacVu + "/MuiTenChucNang.png", 1, 1, "show~");
				FindAndClick(hWnd, pathTacVu + "/BanDo.png", 2, 2, "bản đồ");
				FindAndClick(hWnd, pathTacVu + "/MuiTenThietLap1.png", 1, 1, "hide~");
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
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)80);
			}
			break;
		case 3557560316u:
			if (x == "Q")
			{
				while (!FindAndClick(hWnd, pathLuyenPet + "/key_Q.png", 2, 2, "Q").HasValue)
				{
					AutoControl.SendKeyBoardPress(hWnd, (VKeys)27);
					delay_100ms(5);
				}
			}
			break;
		case 3742114125u:
			if (x == "Z")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)90);
			}
			break;
		case 3339451269u:
			if (x == "B")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)66);
			}
			break;
		}
		delay_100ms(1);
	}

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
		System.IntPtr handle = OpenProcess(pID, (ProcessAccessFlags)2035711);
		Process processById = Process.GetProcessById((int)pID);
		long num = processById.MainModule.BaseAddress.ToInt64() + pointer;
		return ReadDouble(handle, (uint)num, offset);
	}

	public bool WriteMemoryData(uint pID, uint pointer, uint[] offset, double value)
	{
		System.IntPtr handle = OpenProcess(pID, (ProcessAccessFlags)2035711);
		Process processById = Process.GetProcessById((int)pID);
		long num = processById.MainModule.BaseAddress.ToInt64() + pointer;
		return WriteDouble(handle, (uint)num, offset, value);
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

	public int ReadMemoryData2(uint pID, uint pointer, uint[] offset)
	{
		System.IntPtr handle = OpenProcess(pID, (ProcessAccessFlags)2035711);
		Process processById = Process.GetProcessById((int)pID);
		long num = processById.MainModule.BaseAddress.ToInt64() + pointer;
		return ReadInt(handle, (uint)num, offset);
	}

	[DllImport("user32.dll", CharSet = (CharSet)3)]
	[return: MarshalAs((UnmanagedType)2)]
	public static extern bool PostMessage(System.IntPtr hWnd, int msg, System.IntPtr wParam, System.IntPtr lParam);

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

	private void Chat(string x, string kenh)
	{
		//IL_010c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0111: Unknown result type (might be due to invalid IL or missing references)
		//IL_011e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0123: Unknown result type (might be due to invalid IL or missing references)
		FindAndClick(hWnd, pathTacVu + "/GuiChat.png", -350, 5, "Chọn Kênh");
		if (!(kenh == "Hiện Tại"))
		{
			if (!(kenh == "Thế Giới"))
			{
				if (kenh == "Bang")
				{
					FindAndClick(hWnd, pathTacVu + "/GuiChat.png", -344, -50, "BH");
				}
			}
			else
			{
				FindAndClick(hWnd, pathTacVu + "/GuiChat.png", -344, -70, "TG");
			}
		}
		else
		{
			FindAndClick(hWnd, pathTacVu + "/GuiChat.png", -344, -91, "HT");
		}
		Point? val = FindAndClick(hWnd, pathTacVu + "/GuiChat.png", -30, 5, "sms");
		while (!FindPoint(hWnd, pathTacVu + "/checkchat1.png").HasValue || !FindPoint(hWnd, pathTacVu + "/checkchat2.png").HasValue)
		{
			System.IntPtr intPtr = hWnd;
			Point value = val.Value;
			int num = ((Point)(ref value)).X - 30;
			value = val.Value;
			AutoControl.SendClickOnPosition(intPtr, num, ((Point)(ref value)).Y + 5 - 30, (EMouseKey)0, 1);
			AutoControl.SendKeyBoardDown(hWnd, (VKeys)8);
			delay_100ms(3);
		}
		SendTextKeyBoard(hWnd, x);
		FindAndClick(hWnd, pathTacVu + "/GuiChat.png", 2, 2, "Gửi Chat");
	}

	private void PassKho_Load(object sender, EventArgs e)
	{
		((Control)this).Text = "[BMx v" + Program.AppMain.version + "] Pass Kho";
		Process[] processesByName = Process.GetProcessesByName("FL");
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
		((Control)label2).Text = "ID: " + processID;
		RECT val = default(RECT);
		val = AutoControl.GetWindowRect(hWnd);
		SetWindowPos(hWnd, 0, val.Left, val.Top, 1066, 724, 2);
		((Control)groupBox4).Text = "Vị Trí Flash: " + val.Top + " x " + val.Left;
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

	private void buttonPause_Click(object sender, EventArgs e)
	{
		if (IsPause)
		{
			IsPause = false;
			((Control)buttonPause).Text = "Pause";
		}
		else
		{
			IsPause = true;
			((Control)buttonPause).Text = "Next";
		}
		debugText(IsPause.ToString());
	}

	private void ButtonRunAuto_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		//IL_0082: Unknown result type (might be due to invalid IL or missing references)
		//IL_0088: Invalid comparison between Unknown and I4
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_005e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0068: Expected O, but got Unknown
		//IL_0095: Unknown result type (might be due to invalid IL or missing references)
		if ((int)ButtonRunAuto.CheckState == 1)
		{
			((Control)ButtonRunAuto).BackColor = Color.Green;
			((Control)ButtonRunAuto).Text = "Stop";
			((Control)buttonPause).Enabled = true;
			debugText("start");
			IsStop = false;
			T = new System.Threading.Tasks.Task((Action)([CompilerGenerated] () =>
			{
				//IL_01d8: Unknown result type (might be due to invalid IL or missing references)
				//IL_0075: Unknown result type (might be due to invalid IL or missing references)
				//IL_007a: Unknown result type (might be due to invalid IL or missing references)
				//IL_0086: Unknown result type (might be due to invalid IL or missing references)
				//IL_008b: Unknown result type (might be due to invalid IL or missing references)
				//IL_010f: Unknown result type (might be due to invalid IL or missing references)
				//IL_0114: Unknown result type (might be due to invalid IL or missing references)
				//IL_0120: Unknown result type (might be due to invalid IL or missing references)
				//IL_0125: Unknown result type (might be due to invalid IL or missing references)
				//IL_0170: Unknown result type (might be due to invalid IL or missing references)
				//IL_0175: Unknown result type (might be due to invalid IL or missing references)
				//IL_0182: Unknown result type (might be due to invalid IL or missing references)
				//IL_0187: Unknown result type (might be due to invalid IL or missing references)
				int num = (int)numericUpDown1.Value;
				while (!IsStop)
				{
					PressKey("OK");
					debugText("Check -> " + num.ToString("D6"));
					Point? val = FindPoint(hWnd, pathKhac + "/Err232.png");
					if (val.HasValue)
					{
						System.IntPtr intPtr = hWnd;
						Point value = val.Value;
						int num2 = ((Point)(ref value)).X + 1;
						value = val.Value;
						AutoControl.SendClickOnPosition(intPtr, num2, ((Point)(ref value)).Y + 1 - 30, (EMouseKey)0, 1);
						delay_100ms(5);
						while (!FindPoint(hWnd, pathKhac + "/Err231.png").HasValue)
						{
						}
						val = FindPoint(hWnd, pathKhac + "/Err231.png");
						if (val.HasValue)
						{
							System.IntPtr intPtr2 = hWnd;
							value = val.Value;
							int num3 = ((Point)(ref value)).X + 1;
							value = val.Value;
							AutoControl.SendClickOnPosition(intPtr2, num3, ((Point)(ref value)).Y + 50 - 30, (EMouseKey)0, 1);
							delay_100ms(5);
							SendTextKeyBoard(hWnd, num.ToString("D6"));
							delay_100ms(5);
							System.IntPtr intPtr3 = hWnd;
							value = val.Value;
							int num4 = ((Point)(ref value)).X + 30;
							value = val.Value;
							AutoControl.SendClickOnPosition(intPtr3, num4, ((Point)(ref value)).Y + 84 - 30, (EMouseKey)0, 1);
							delay_100ms(10);
						}
					}
					else
					{
						num--;
						((Control)textBox3).Text = num.ToString("D6");
						debugText("Done!");
						MessageBox.Show("Đã unlock");
						IsStop = true;
					}
					num++;
				}
			}));
			T.Start();
		}
		else if ((int)ButtonRunAuto.CheckState == 0)
		{
			((Control)ButtonRunAuto).BackColor = Control.DefaultBackColor;
			((Control)ButtonRunAuto).Text = "Start";
			((Control)buttonPause).Enabled = false;
			debugText("stop");
			IsStop = true;
		}
	}

	private void button1_Click(object sender, EventArgs e)
	{
		comboBox1.Items.Clear();
		Process[] processesByName = Process.GetProcessesByName("FL");
		if (Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)processesByName) > 0)
		{
			Process[] array = processesByName;
			foreach (Process val in array)
			{
				comboBox1.Items.Add((object)val.MainWindowTitle);
			}
		}
	}

	private void CheckErr232_FormClosed(object sender, FormClosedEventArgs e)
	{
		//IL_000f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0019: Expected O, but got Unknown
		Login login = new Login();
		((Form)login).Closed += (EventHandler)([CompilerGenerated] (object? s, EventArgs args) =>
		{
			((Form)this).Close();
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
		//IL_016a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0193: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0217: Unknown result type (might be due to invalid IL or missing references)
		//IL_024e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0258: Expected O, but got Unknown
		//IL_0263: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_031a: Unknown result type (might be due to invalid IL or missing references)
		//IL_034e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0374: Unknown result type (might be due to invalid IL or missing references)
		//IL_03b7: Unknown result type (might be due to invalid IL or missing references)
		//IL_03c1: Expected O, but got Unknown
		//IL_03d8: Unknown result type (might be due to invalid IL or missing references)
		//IL_03fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_0442: Unknown result type (might be due to invalid IL or missing references)
		//IL_0468: Unknown result type (might be due to invalid IL or missing references)
		//IL_04ac: Unknown result type (might be due to invalid IL or missing references)
		//IL_04d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0516: Unknown result type (might be due to invalid IL or missing references)
		//IL_0520: Expected O, but got Unknown
		//IL_0548: Unknown result type (might be due to invalid IL or missing references)
		//IL_056e: Unknown result type (might be due to invalid IL or missing references)
		//IL_05b2: Unknown result type (might be due to invalid IL or missing references)
		//IL_05bc: Expected O, but got Unknown
		//IL_05ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_05fd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0630: Unknown result type (might be due to invalid IL or missing references)
		//IL_0656: Unknown result type (might be due to invalid IL or missing references)
		//IL_069d: Unknown result type (might be due to invalid IL or missing references)
		//IL_06c3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0704: Unknown result type (might be due to invalid IL or missing references)
		//IL_072d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0764: Unknown result type (might be due to invalid IL or missing references)
		//IL_078a: Unknown result type (might be due to invalid IL or missing references)
		//IL_07ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_07d8: Expected O, but got Unknown
		//IL_07eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_07f5: Expected O, but got Unknown
		//IL_0803: Unknown result type (might be due to invalid IL or missing references)
		//IL_0848: Unknown result type (might be due to invalid IL or missing references)
		//IL_088b: Unknown result type (might be due to invalid IL or missing references)
		//IL_08a9: Unknown result type (might be due to invalid IL or missing references)
		//IL_097c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0986: Expected O, but got Unknown
		//IL_09b7: Unknown result type (might be due to invalid IL or missing references)
		//IL_09c1: Expected O, but got Unknown
		//IL_09ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_09d4: Expected O, but got Unknown
		ComponentResourceManager val = new ComponentResourceManager(typeof(CheckErr232));
		groupBox4 = new GroupBox();
		pictureBox1 = new PictureBox();
		numericUpDownFPS = new NumericUpDown();
		label1 = new Label();
		buttonReset = new Button();
		label2 = new Label();
		label6 = new Label();
		buttonPause = new Button();
		ButtonRunAuto = new CheckBox();
		textBox3 = new TextBox();
		label3 = new Label();
		label5 = new Label();
		comboBox1 = new ComboBox();
		button1 = new Button();
		numericUpDown1 = new NumericUpDown();
		((Control)groupBox4).SuspendLayout();
		((ISupportInitialize)pictureBox1).BeginInit();
		((ISupportInitialize)numericUpDownFPS).BeginInit();
		((ISupportInitialize)numericUpDown1).BeginInit();
		((Control)this).SuspendLayout();
		((Control)groupBox4).Controls.Add((Control)(object)pictureBox1);
		((Control)groupBox4).Controls.Add((Control)(object)numericUpDownFPS);
		((Control)groupBox4).Controls.Add((Control)(object)label1);
		((Control)groupBox4).Controls.Add((Control)(object)buttonReset);
		((Control)groupBox4).Controls.Add((Control)(object)label2);
		((Control)groupBox4).Location = new Point(12, 41);
		((Control)groupBox4).Name = "groupBox4";
		((Control)groupBox4).Size = new Size(153, 106);
		((Control)groupBox4).TabIndex = 21;
		groupBox4.TabStop = false;
		((Control)groupBox4).Text = "groupBox4";
		pictureBox1.BorderStyle = (BorderStyle)1;
		pictureBox1.Image = (Image)(object)Resources.anhNVr;
		((Control)pictureBox1).Location = new Point(6, 22);
		((Control)pictureBox1).Name = "pictureBox1";
		((Control)pictureBox1).Size = new Size(54, 52);
		pictureBox1.TabIndex = 0;
		pictureBox1.TabStop = false;
		((Control)numericUpDownFPS).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownFPS).Location = new Point(103, 27);
		numericUpDownFPS.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownFPS).Name = "numericUpDownFPS";
		((Control)numericUpDownFPS).Size = new Size(36, 23);
		((Control)numericUpDownFPS).TabIndex = 15;
		numericUpDownFPS.Value = new decimal(new int[4] { 20, 0, 0, 0 });
		((Control)label1).AutoSize = true;
		((Control)label1).Location = new Point(68, 29);
		((Control)label1).Name = "label1";
		((Control)label1).Size = new Size(29, 15);
		((Control)label1).TabIndex = 13;
		((Control)label1).Text = "FPS:";
		((Control)buttonReset).Location = new Point(83, 72);
		((Control)buttonReset).Name = "buttonReset";
		((Control)buttonReset).Size = new Size(56, 25);
		((Control)buttonReset).TabIndex = 8;
		((Control)buttonReset).Text = "Reset";
		((ButtonBase)buttonReset).UseVisualStyleBackColor = true;
		((Control)buttonReset).Click += new EventHandler(buttonReset_Click);
		((Control)label2).AutoSize = true;
		((Control)label2).Location = new Point(6, 82);
		((Control)label2).Name = "label2";
		((Control)label2).Size = new Size(47, 15);
		((Control)label2).TabIndex = 13;
		((Control)label2).Text = "Start ->";
		((Control)label6).AutoSize = true;
		((Control)label6).Location = new Point(191, 74);
		((Control)label6).Name = "label6";
		((Control)label6).Size = new Size(47, 15);
		((Control)label6).TabIndex = 13;
		((Control)label6).Text = "Start ->";
		((Control)buttonPause).Enabled = false;
		((Control)buttonPause).Location = new Point(263, 39);
		((Control)buttonPause).Name = "buttonPause";
		((Control)buttonPause).Size = new Size(65, 25);
		((Control)buttonPause).TabIndex = 19;
		((Control)buttonPause).Text = "Pause";
		((ButtonBase)buttonPause).UseVisualStyleBackColor = true;
		((Control)buttonPause).Click += new EventHandler(buttonPause_Click);
		ButtonRunAuto.Appearance = (Appearance)1;
		((Control)ButtonRunAuto).AutoSize = true;
		((Control)ButtonRunAuto).Location = new Point(192, 39);
		((Control)ButtonRunAuto).Name = "ButtonRunAuto";
		((Control)ButtonRunAuto).Size = new Size(65, 25);
		((Control)ButtonRunAuto).TabIndex = 18;
		((Control)ButtonRunAuto).Text = "Start";
		((ButtonBase)ButtonRunAuto).UseVisualStyleBackColor = true;
		ButtonRunAuto.CheckStateChanged += new EventHandler(ButtonRunAuto_CheckStateChanged);
		((Control)textBox3).Location = new Point(262, 100);
		((Control)textBox3).Name = "textBox3";
		((TextBoxBase)textBox3).ReadOnly = true;
		((Control)textBox3).Size = new Size(72, 23);
		((Control)textBox3).TabIndex = 22;
		((Control)label3).AutoSize = true;
		((Control)label3).Location = new Point(191, 103);
		((Control)label3).Name = "label3";
		((Control)label3).Size = new Size(46, 15);
		((Control)label3).TabIndex = 13;
		((Control)label3).Text = "Pass ->";
		((Control)label5).AutoSize = true;
		((Control)label5).Location = new Point(192, 130);
		((Control)label5).Name = "label5";
		((Control)label5).Size = new Size(20, 15);
		((Control)label5).TabIndex = 13;
		((Control)label5).Text = "stt";
		((ListControl)comboBox1).FormattingEnabled = true;
		((Control)comboBox1).Location = new Point(38, 10);
		((Control)comboBox1).Name = "comboBox1";
		((Control)comboBox1).Size = new Size(171, 23);
		((Control)comboBox1).TabIndex = 34;
		((Control)comboBox1).Text = "Select Display Name";
		((Control)button1).Location = new Point(232, 10);
		((Control)button1).Name = "button1";
		((Control)button1).Size = new Size(56, 23);
		((Control)button1).TabIndex = 33;
		((Control)button1).Text = "Rescan";
		((ButtonBase)button1).UseVisualStyleBackColor = true;
		((Control)button1).Click += new EventHandler(button1_Click);
		((Control)numericUpDown1).Font = new Font("Segoe UI", 10f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDown1).Location = new Point(262, 70);
		numericUpDown1.Maximum = new decimal(new int[4] { 999999, 0, 0, 0 });
		((Control)numericUpDown1).Name = "numericUpDown1";
		((Control)numericUpDown1).Size = new Size(72, 25);
		((Control)numericUpDown1).TabIndex = 35;
		numericUpDown1.Value = new decimal(new int[4] { 999999, 0, 0, 0 });
		((ContainerControl)this).AutoScaleDimensions = new SizeF(7f, 15f);
		((ContainerControl)this).AutoScaleMode = (AutoScaleMode)1;
		((Form)this).ClientSize = new Size(354, 154);
		((Control)this).Controls.Add((Control)(object)numericUpDown1);
		((Control)this).Controls.Add((Control)(object)comboBox1);
		((Control)this).Controls.Add((Control)(object)button1);
		((Control)this).Controls.Add((Control)(object)textBox3);
		((Control)this).Controls.Add((Control)(object)label6);
		((Control)this).Controls.Add((Control)(object)groupBox4);
		((Control)this).Controls.Add((Control)(object)buttonPause);
		((Control)this).Controls.Add((Control)(object)label5);
		((Control)this).Controls.Add((Control)(object)label3);
		((Control)this).Controls.Add((Control)(object)ButtonRunAuto);
		((Form)this).FormBorderStyle = (FormBorderStyle)1;
		((Form)this).Icon = (Icon)((ResourceManager)val).GetObject("$this.Icon");
		((Form)this).MaximizeBox = false;
		((Control)this).Name = "CheckErr232";
		((Form)this).StartPosition = (FormStartPosition)1;
		((Control)this).Text = "PassKho";
		((Form)this).FormClosed += new FormClosedEventHandler(CheckErr232_FormClosed);
		((Form)this).Load += new EventHandler(PassKho_Load);
		((Control)groupBox4).ResumeLayout(false);
		((Control)groupBox4).PerformLayout();
		((ISupportInitialize)pictureBox1).EndInit();
		((ISupportInitialize)numericUpDownFPS).EndInit();
		((ISupportInitialize)numericUpDown1).EndInit();
		((Control)this).ResumeLayout(false);
		((Control)this).PerformLayout();
	}
}
