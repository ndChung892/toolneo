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
using System.Timers;
using System.Windows.Forms;
using AutoTool.Properties;
using KAutoHelper;

namespace AutoTool;

public class Control : Form
{
	public static string linkApp = Application.StartupPath;

	public string pathAutoPhuBan = ((object)linkApp).ToString() + "Anh/AutoPhuBan";

	public string pathTacVu = ((object)linkApp).ToString() + "Anh/TacVu";

	public string pathAutoNhanNVPB = ((object)linkApp).ToString() + "Anh/NhanNVPB";

	public string pathKhac = ((object)linkApp).ToString() + "Anh/Khac";

	public string pathMaps = ((object)linkApp).ToString() + "Anh/Maps";

	public string pathData = linkApp + "/AccData";

	public string pathLuyenPet = ((object)linkApp).ToString() + "Anh/LuyenPet";

	public string pathBangHoi = ((object)linkApp).ToString() + "Anh/BangHoi";

	public string pathTruMa = ((object)linkApp).ToString() + "Anh/TruMa";

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

	public string link;

	public string[] charError;

	public char[] charServer;

	public char[] charNotifyErr;

	public int checkTimerTick;

	public bool isTLCH;

	public string accCheck;

	public bool breakEvent;

	public string nameUser;

	private static Timer myTimer = new Timer(1000.0);

	public int countTimer;

	private Rectangle dragBoxFromMouseDown2;

	private int rowIndexFromMouseDown2;

	private int rowIndexOfItemUnderMouseToDrop2;

	public string pathTheme;

	private string fileName;

	private FontConverter fC;

	private DataGridViewCellStyle TableThemeColor;

	private ImageLayout layout;

	private IContainer components;

	private GroupBox groupBox4;

	private Label label12;

	private ComboBox comboBoxE;

	private Label label6;

	private ComboBox comboBoxJ;

	private NumericUpDown numericUpDownKenh;

	private Label label13;

	private NumericUpDown numericUpDownS_h;

	private NumericUpDown numericUpDownNV;

	private Label label14;

	private Label label9;

	private Label label16;

	private Label label8;

	private Label label1;

	private NumericUpDown numericUpDownS_m;

	private Button buttonAL_add;

	private Button buttonAL_clear;

	private Button buttonAL_save;

	private Label label10;

	private DataGridView dataGridView2;

	private CheckBox ButtonRunAuto;

	private DataGridViewTextBoxColumn Start;

	private DataGridViewTextBoxColumn Job;

	private DataGridViewTextBoxColumn End;

	private DataGridViewTextBoxColumn FL;

	private DataGridViewTextBoxColumn Class;

	private DataGridViewButtonColumn Now;

	private DataGridViewButtonColumn Del;

	private Button buttonPause;

	public Control()
	{
		//IL_02a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ac: Expected O, but got Unknown
		//IL_02ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b7: Expected O, but got Unknown
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
		link = "";
		charError = new string[7] { "", " ", "  ", "   ", "    ", "     ", "      " };
		charServer = new char[1] { 's' };
		charNotifyErr = new char[1] { ':' };
		checkTimerTick = 0;
		isTLCH = false;
		accCheck = "";
		breakEvent = false;
		nameUser = "";
		countTimer = 0;
		pathTheme = linkApp + "/Theme";
		fC = new FontConverter();
		TableThemeColor = new DataGridViewCellStyle();
		components = null;
		((Form)this)._002Ector();
		InitializeComponent();
	}

	[DllImport("user32.dll")]
	public static extern System.IntPtr SetWindowPos(System.IntPtr hWnd, int hWndInsertAfter, int x, int Y, int cx, int cy, int wFlags);

	[DllImport("user32.dll", CharSet = (CharSet)4, SetLastError = true)]
	private static extern System.IntPtr FindWindow(string lpClassName, string lpWindowName);

	public static System.IntPtr FindWindowHandle(string className, string windowName)
	{
		System.IntPtr zero = System.IntPtr.Zero;
		return FindWindow(className, windowName);
	}

	private bool CheckHandleWindows(string DisplayName)
	{
		System.IntPtr zero = System.IntPtr.Zero;
		zero = FindWindowHandle(null, DisplayName);
		if (zero != System.IntPtr.Zero)
		{
			return true;
		}
		return false;
	}

	[DllImport("user32.dll", SetLastError = true)]
	private static extern uint GetWindowThreadProcessId(System.IntPtr hWnd, out uint processId);

	[DllImport("user32.dll", CharSet = (CharSet)4)]
	private static extern bool DestroyIcon(System.IntPtr handle);

	[DllImport("kernel32.dll", SetLastError = true)]
	public static extern bool WriteProcessMemory(System.IntPtr hProcess, System.IntPtr lpBaseAddress, byte[] lpBuffer, int nSize, out System.IntPtr lpNumberOfBytesWritten);

	[DllImport("kernel32.dll")]
	private static extern bool ReadProcessMemory(System.IntPtr hProcess, System.IntPtr lpBaseAddress, byte[] lpBuffer, System.UIntPtr nSize, uint lpNumberOfBytesWritten);

	[DllImport("kernel32.dll", CharSet = (CharSet)4)]
	private static extern System.IntPtr OpenProcess(uint dwDesiredAccess, bool bInheritHandle, uint dwProcessId);

	public static System.IntPtr OpenProcess(uint pId, ProcessAccessFlags ProcessAccess = (ProcessAccessFlags)2035711u)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0009: Expected I4, but got Unknown
		return OpenProcess((uint)(int)ProcessAccess, bInheritHandle: false, pId);
	}

	private unsafe bool FindItem(System.IntPtr hWnd, string pathItem, string nameItem)
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
		//IL_01f0: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_021e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0223: Unknown result type (might be due to invalid IL or missing references)
		int num = 0;
		while (true)
		{
			debugText("Tìm Item " + nameItem);
			KetQua_Point = FindPoint(hWnd, pathAutoPhuBan + "/MuiTenIcon.png");
			Point val;
			if (KetQua_Point.HasValue)
			{
				val = KetQua_Point.Value;
				int x = ((Point)(ref val)).X;
				val = KetQua_Point.Value;
				AutoControl.SendClickOnPosition(hWnd, x, ((Point)(ref val)).Y - 30, (EMouseKey)0, 1);
				debugText("Mở bảng icon");
				delay_100ms(5);
			}
			KetQua_Point = FindPoint(hWnd, pathItem);
			if (KetQua_Point.HasValue)
			{
				val = KetQua_Point.Value;
				int x2 = ((Point)(ref val)).X;
				val = KetQua_Point.Value;
				AutoControl.SendClickOnPosition(hWnd, x2, ((Point)(ref val)).Y - 30, (EMouseKey)0, 1);
				debugText("Mở " + nameItem);
				delay_100ms(5);
				num = 0;
				return true;
			}
			KetQua_Point = FindPoint(hWnd, pathAutoPhuBan + "/NutXuong.png");
			num++;
			if (num >= 4)
			{
				break;
			}
			if (KetQua_Point.HasValue)
			{
				val = KetQua_Point.Value;
				int x3 = ((Point)(ref val)).X;
				val = KetQua_Point.Value;
				AutoControl.SendClickOnPosition(hWnd, x3, ((Point)(ref val)).Y - 30, (EMouseKey)0, 1);
				debugText("Nhấn nút xuống");
				delay_100ms(5);
				continue;
			}
			List<Point> val2 = FindPoints(hWnd, pathTacVu + "/MuiTenSangPhai.png");
			if (val2.Count != 0)
			{
				for (int i = 0; i < val2.Count; i++)
				{
					val = val2[i];
					int x4 = ((Point)(ref val)).X;
					val = val2[i];
					AutoControl.SendClickOnPosition(hWnd, x4, ((Point)(ref val)).Y - 30, (EMouseKey)0, 1);
					string text = i.ToString();
					val = val2[i];
					debugText("Ẩn Lần " + text + "tại " + ((object)(*(Point*)(&val))/*cast due to .constrained prefix*/).ToString());
					delay_100ms(5);
				}
			}
			else
			{
				debugText("Không Tìm Thấy Mũi Tên Ẩn Icon");
			}
			while (FindAndClick(hWnd, pathAutoPhuBan + "/NutLen.png", 2, 2, "Lên").HasValue)
			{
				PressKey("ESC");
				delay_100ms(5);
			}
		}
		debugText("Không Tìm Thấy Item " + nameItem + " Sau 4 Lần Check");
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
		//IL_0028: Unknown result type (might be due to invalid IL or missing references)
		double num = 0.0;
		for (x += Program.AppMain.delay_System; num < (double)x; num += 1.0)
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
		((Control)label10).Text = x;
	}

	private void PressKey(string x)
	{
		FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 2, 2, "Press");
		FindAndClick(hWnd, pathKhac + "/Log_OK.png", 2, 2, "Press");
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
		}
		delay_100ms(1);
	}

	private void DaPet()
	{
		while (!FindAndClick(hWnd, pathKhac + "/DaPet_Icon.png", 5, 1, "Đá Pet").HasValue)
		{
			FindsAndClick(hWnd, pathTacVu + "/MuiTenIcon.png", 0, 0, "Show");
		}
		if (!FindsAndClick(hWnd, pathKhac + "/DaPet_KhieuChien.png", 5, 1, "Khiêu Chiến"))
		{
			FindAndClick(hWnd, pathKhac + "/DaPet_BaoDanh.png", 5, 1, "Báo Danh");
			FindAndClick(hWnd, pathKhac + "/DaPet_XacNhanBaoDanh.png", 5, 1, "Xác Nhận Báo Danh");
			PressKey("Enter");
			FindsAndClick(hWnd, pathKhac + "/DaPet_KhieuChien.png", 5, 1, "Khiêu Chiến");
		}
		debugText("Đá Pet Xong");
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

	private void buttonSave_Click(object sender, EventArgs e)
	{
		//IL_001c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0022: Expected O, but got Unknown
		//IL_0100: Unknown result type (might be due to invalid IL or missing references)
		TextWriter val = (TextWriter)new StreamWriter(pathData + "/Setting/" + nameUser + "/BMxToolControl.txt");
		for (int i = 0; i < dataGridView2.Rows.Count; i++)
		{
			for (int j = 0; j < dataGridView2.ColumnCount - 2; j++)
			{
				if (dataGridView2.Rows[i].Cells[j].Value == null)
				{
					val.Write(" ");
				}
				else
				{
					val.Write(dataGridView2.Rows[i].Cells[j].Value.ToString() ?? "");
				}
				val.Write("\t");
			}
			val.WriteLine();
		}
		val.Close();
		MessageBox.Show("Đã Lưu");
	}

	private void loadSetting()
	{
		nameUser = Program.AppMain.nameUser;
		if (File.Exists(pathData + "/Setting/" + nameUser + "/BMxToolControl.txt"))
		{
			string[] array = File.ReadAllLines(pathData + "/Setting/" + nameUser + "/BMxToolControl.txt");
			for (int i = 0; i < array.Length; i++)
			{
				string[] array2 = ((object)array[i]).ToString().Split('\t', (StringSplitOptions)0);
				string[] array3 = new string[array2.Length];
				for (int j = 0; j < array2.Length - 1; j++)
				{
					array3[j] = array2[j].Trim();
				}
				DataGridViewRowCollection rows = dataGridView2.Rows;
				object[] array4 = array3;
				rows.Add(array4);
			}
		}
		else
		{
			Directory.CreateDirectory(pathData + "/Setting/" + nameUser);
		}
	}

	private void myTimerEvent(object source, ElapsedEventArgs e)
	{
		System.DateTime now = System.DateTime.Now;
		((Control)label6).Text = string.Concat(new string[6]
		{
			"Now is ",
			now.Hour.ToString("D2"),
			" : ",
			now.Minute.ToString("D2"),
			" : ",
			now.Second.ToString("D2")
		});
		if (isTLCH && now.Hour == 20 && now.Minute == 20)
		{
			breakEvent = true;
		}
	}

	private bool reConnect(int row)
	{
		//IL_04a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_04a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_04b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_04ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_04d6: Unknown result type (might be due to invalid IL or missing references)
		//IL_04db: Unknown result type (might be due to invalid IL or missing references)
		//IL_04e9: Unknown result type (might be due to invalid IL or missing references)
		//IL_04ee: Unknown result type (might be due to invalid IL or missing references)
		//IL_0142: Unknown result type (might be due to invalid IL or missing references)
		//IL_0147: Unknown result type (might be due to invalid IL or missing references)
		//IL_015e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0163: Unknown result type (might be due to invalid IL or missing references)
		//IL_019c: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a1: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b8: Unknown result type (might be due to invalid IL or missing references)
		//IL_01bd: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_01fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0212: Unknown result type (might be due to invalid IL or missing references)
		//IL_0217: Unknown result type (might be due to invalid IL or missing references)
		//IL_0250: Unknown result type (might be due to invalid IL or missing references)
		//IL_0255: Unknown result type (might be due to invalid IL or missing references)
		//IL_026c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0271: Unknown result type (might be due to invalid IL or missing references)
		//IL_02aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_02af: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_02cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0304: Unknown result type (might be due to invalid IL or missing references)
		//IL_0309: Unknown result type (might be due to invalid IL or missing references)
		//IL_0320: Unknown result type (might be due to invalid IL or missing references)
		//IL_0325: Unknown result type (might be due to invalid IL or missing references)
		//IL_035e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0363: Unknown result type (might be due to invalid IL or missing references)
		//IL_037a: Unknown result type (might be due to invalid IL or missing references)
		//IL_037f: Unknown result type (might be due to invalid IL or missing references)
		//IL_03b8: Unknown result type (might be due to invalid IL or missing references)
		//IL_03bd: Unknown result type (might be due to invalid IL or missing references)
		//IL_03d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_03d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_040f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0414: Unknown result type (might be due to invalid IL or missing references)
		//IL_042b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0430: Unknown result type (might be due to invalid IL or missing references)
		//IL_078d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0792: Unknown result type (might be due to invalid IL or missing references)
		//IL_079d: Unknown result type (might be due to invalid IL or missing references)
		//IL_07a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_08b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_08e1: Unknown result type (might be due to invalid IL or missing references)
		if (FindAndClick(hWnd, pathKhac + "/Log_OK.png", 2, 2, "OK").HasValue)
		{
			delay_100ms(25);
		}
		if (FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 2, 2, "Có").HasValue)
		{
			delay_100ms(25);
		}
		if (!FindPoint(hWnd, pathKhac + "/Log_BatBuoc.png").HasValue)
		{
			return false;
		}
		Point? val = FindPoint(hWnd, pathKhac + "/Log_ChonKenh.png");
		Point value;
		if (val.HasValue)
		{
			switch (int.Parse(dataGridView2.Rows[row].Cells[3].Value.ToString()))
			{
			case 1:
			{
				System.IntPtr intPtr9 = hWnd;
				value = val.Value;
				int num9 = ((Point)(ref value)).X - 622 + 530;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr9, num9, ((Point)(ref value)).Y - 227 + 268 - 30, (EMouseKey)0, 1);
				debugText("Kênh 1");
				break;
			}
			case 2:
			{
				System.IntPtr intPtr8 = hWnd;
				value = val.Value;
				int num8 = ((Point)(ref value)).X - 622 + 530;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr8, num8, ((Point)(ref value)).Y - 227 + 301 - 30, (EMouseKey)0, 1);
				debugText("Kênh 2");
				break;
			}
			case 3:
			{
				System.IntPtr intPtr7 = hWnd;
				value = val.Value;
				int num7 = ((Point)(ref value)).X - 622 + 530;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr7, num7, ((Point)(ref value)).Y - 227 + 336 - 30, (EMouseKey)0, 1);
				debugText("Kênh 3");
				break;
			}
			case 4:
			{
				System.IntPtr intPtr6 = hWnd;
				value = val.Value;
				int num6 = ((Point)(ref value)).X - 622 + 530;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr6, num6, ((Point)(ref value)).Y - 227 + 370 - 30, (EMouseKey)0, 1);
				debugText("Kênh 4");
				break;
			}
			case 5:
			{
				System.IntPtr intPtr5 = hWnd;
				value = val.Value;
				int num5 = ((Point)(ref value)).X - 622 + 530;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr5, num5, ((Point)(ref value)).Y - 227 + 404 - 30, (EMouseKey)0, 1);
				debugText("Kênh 5");
				break;
			}
			case 6:
			{
				System.IntPtr intPtr4 = hWnd;
				value = val.Value;
				int num4 = ((Point)(ref value)).X - 622 + 530;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr4, num4, ((Point)(ref value)).Y - 227 + 438 - 30, (EMouseKey)0, 1);
				debugText("Kênh 6");
				break;
			}
			case 7:
			{
				System.IntPtr intPtr3 = hWnd;
				value = val.Value;
				int num3 = ((Point)(ref value)).X - 622 + 530;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr3, num3, ((Point)(ref value)).Y - 227 + 471 - 30, (EMouseKey)0, 1);
				debugText("Kênh 7");
				break;
			}
			case 8:
			{
				System.IntPtr intPtr2 = hWnd;
				value = val.Value;
				int num2 = ((Point)(ref value)).X - 622 + 530;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr2, num2, ((Point)(ref value)).Y - 227 + 506 - 30, (EMouseKey)0, 1);
				debugText("Kênh 8");
				break;
			}
			default:
			{
				System.IntPtr intPtr = hWnd;
				value = val.Value;
				int num = ((Point)(ref value)).X - 622 + 530;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr, num, ((Point)(ref value)).Y - 227 + 268 - 30, (EMouseKey)0, 1);
				debugText("lỗi");
				break;
			}
			}
			delay_100ms(50);
		}
		Point? val2 = FindAndClick(hWnd, pathKhac + "/Log_BatBuoc.png", 2, 2, "Log - bắt buộc");
		if (val2.HasValue)
		{
			System.IntPtr intPtr10 = hWnd;
			value = val2.Value;
			int num10 = ((Point)(ref value)).X - 50;
			value = val2.Value;
			AutoControl.SendClickOnPosition(intPtr10, num10, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
			System.IntPtr intPtr11 = hWnd;
			value = val2.Value;
			int num11 = ((Point)(ref value)).X - 50;
			value = val2.Value;
			AutoControl.SendClickOnPosition(intPtr11, num11, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
			delay_100ms(50);
		}
		if (FindPoint(hWnd, pathKhac + "/Log_QuayLai.png").HasValue)
		{
			Point? val3;
			do
			{
				delay_100ms(10);
				switch (int.Parse(dataGridView2.Rows[row].Cells[4].Value.ToString()))
				{
				case 1:
					AutoControl.SendClickOnPosition(hWnd, 291, 465, (EMouseKey)0, 1);
					delay_100ms(3);
					AutoControl.SendClickOnPosition(hWnd, 400, 470, (EMouseKey)0, 1);
					debugText("Nhân Vật 1");
					break;
				case 2:
					AutoControl.SendClickOnPosition(hWnd, 291, 465, (EMouseKey)0, 1);
					delay_100ms(3);
					AutoControl.SendClickOnPosition(hWnd, 530, 470, (EMouseKey)0, 1);
					debugText("Nhân Vật 2");
					break;
				case 3:
					AutoControl.SendClickOnPosition(hWnd, 291, 465, (EMouseKey)0, 1);
					delay_100ms(3);
					AutoControl.SendClickOnPosition(hWnd, 670, 470, (EMouseKey)0, 1);
					debugText("Nhân Vật 3");
					break;
				case 4:
					AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
					delay_100ms(3);
					AutoControl.SendClickOnPosition(hWnd, 400, 470, (EMouseKey)0, 1);
					debugText("Nhân Vật 4");
					break;
				case 5:
					AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
					delay_100ms(3);
					AutoControl.SendClickOnPosition(hWnd, 530, 470, (EMouseKey)0, 1);
					debugText("Nhân Vật 5");
					break;
				case 6:
					AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
					delay_100ms(3);
					AutoControl.SendClickOnPosition(hWnd, 670, 470, (EMouseKey)0, 1);
					debugText("Nhân Vật 6");
					break;
				}
				delay_100ms(10);
				val3 = FindPoint(hWnd, pathKhac + "/Log_VaoGame.png");
			}
			while (!val3.HasValue);
			System.IntPtr intPtr12 = hWnd;
			value = val3.Value;
			int x = ((Point)(ref value)).X;
			value = val3.Value;
			AutoControl.SendClickOnPosition(intPtr12, x, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
			int num12 = 0;
			delay_100ms(30);
			while (!FindPoint(hWnd, pathKhac + "/Log_RatTot.png").HasValue && !FindPoint(hWnd, pathKhac + "/Log_BinhThuong.png").HasValue && !FindPoint(hWnd, pathKhac + "/Log_Tot.png").HasValue)
			{
				num12++;
				if (num12 >= 1200)
				{
					return false;
				}
				debugText("check vào game - " + num12);
				delay_100ms(5);
			}
			num12 = 0;
			PressKey("ESC");
			PressKey("ESC");
			while (true)
			{
				Image val4 = CaptureHelper.CaptureWindow(hWnd);
				Rectangle val5 = default(Rectangle);
				((Rectangle)(ref val5)).X = 100;
				((Rectangle)(ref val5)).Y = 100;
				((Rectangle)(ref val5)).Width = 100;
				((Rectangle)(ref val5)).Height = 50;
				Bitmap val6 = CaptureHelper.CropImage(val4, val5);
				Bitmap image = ImageScanOpenCV.GetImage(pathKhac + "/checklog.png");
				if (ImageScanOpenCV.FindOutPoint(val6, image, 0.9).HasValue)
				{
					break;
				}
				num12++;
				if (num12 >= 100)
				{
					return false;
				}
				debugText("check vào load game - " + num12);
				delay_100ms(30);
			}
			debugText("Vào Game Xong");
			delay_100ms(30);
			return true;
		}
		return false;
	}

	private void setupRun()
	{
		//IL_0054: Unknown result type (might be due to invalid IL or missing references)
		//IL_0059: Unknown result type (might be due to invalid IL or missing references)
		//IL_0063: Unknown result type (might be due to invalid IL or missing references)
		//IL_0068: Unknown result type (might be due to invalid IL or missing references)
		//IL_0112: Unknown result type (might be due to invalid IL or missing references)
		//IL_0117: Unknown result type (might be due to invalid IL or missing references)
		//IL_0121: Unknown result type (might be due to invalid IL or missing references)
		//IL_0126: Unknown result type (might be due to invalid IL or missing references)
		//IL_01be: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c3: Unknown result type (might be due to invalid IL or missing references)
		//IL_01cd: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0267: Unknown result type (might be due to invalid IL or missing references)
		//IL_026c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0276: Unknown result type (might be due to invalid IL or missing references)
		//IL_027b: Unknown result type (might be due to invalid IL or missing references)
		Point? val;
		do
		{
			PressKey("ESC");
			PressKey("Q");
			delay_100ms(10);
			val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
		}
		while (!val.HasValue);
		System.IntPtr intPtr = hWnd;
		Point value = val.Value;
		int x = ((Point)(ref value)).X;
		value = val.Value;
		AutoControl.SendDragAndDropOnPosition(intPtr, x, ((Point)(ref value)).Y - 30, 84, 26, 10, 10, 0.05);
		delay_100ms(5);
		FindAndClick(hWnd, pathKhac + "/setupRun_QN.png", 1, 1, "Q nhanh");
		do
		{
			PressKey("ESC");
			PressKey("P");
			delay_100ms(10);
			val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
		}
		while (!val.HasValue);
		System.IntPtr intPtr2 = hWnd;
		value = val.Value;
		int x2 = ((Point)(ref value)).X;
		value = val.Value;
		AutoControl.SendDragAndDropOnPosition(intPtr2, x2, ((Point)(ref value)).Y - 30, 84, 26, 10, 10, 0.05);
		do
		{
			PressKey("ESC");
			FindAndClick(hWnd, pathKhac + "/setupRun_TL.png", 1, 1, "Tinh Linh");
			delay_100ms(10);
			val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
		}
		while (!val.HasValue);
		System.IntPtr intPtr3 = hWnd;
		value = val.Value;
		int x3 = ((Point)(ref value)).X;
		value = val.Value;
		AutoControl.SendDragAndDropOnPosition(intPtr3, x3, ((Point)(ref value)).Y - 30, 84, 26, 10, 10, 0.05);
		do
		{
			PressKey("ESC");
			FindItem(hWnd, pathAutoPhuBan + "/IconHoanThanhPhuBan.png", "HTPB");
			delay_100ms(5);
			val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
		}
		while (!val.HasValue);
		System.IntPtr intPtr4 = hWnd;
		value = val.Value;
		int x4 = ((Point)(ref value)).X;
		value = val.Value;
		AutoControl.SendDragAndDropOnPosition(intPtr4, x4, ((Point)(ref value)).Y - 30, 254, 182, 10, 10, 0.05);
		debugText("Hoàn Tất Setup");
	}

	private void logAcc(string DisplayNameLog, string linkLog)
	{
		int num = 300;
		Process.Start(linkApp + "/APPS/FlashGame.exe", linkLog);
		Thread.Sleep(200);
		System.IntPtr intPtr = AutoControl.FindWindowHandle((string)null, "Adobe Flash Player 20");
		SetWindowPos(intPtr, 0, 20, 20, 1066, 724, 32);
		AutoControl.SendText(intPtr, DisplayNameLog);
		Thread.Sleep(num);
	}

	private bool ChuyenKenh(int chonKenh)
	{
		//IL_00a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ac: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c3: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0101: Unknown result type (might be due to invalid IL or missing references)
		//IL_0106: Unknown result type (might be due to invalid IL or missing references)
		//IL_011d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0122: Unknown result type (might be due to invalid IL or missing references)
		//IL_015b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0160: Unknown result type (might be due to invalid IL or missing references)
		//IL_0177: Unknown result type (might be due to invalid IL or missing references)
		//IL_017c: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d6: Unknown result type (might be due to invalid IL or missing references)
		//IL_020f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0214: Unknown result type (might be due to invalid IL or missing references)
		//IL_022b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0230: Unknown result type (might be due to invalid IL or missing references)
		//IL_0269: Unknown result type (might be due to invalid IL or missing references)
		//IL_026e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0285: Unknown result type (might be due to invalid IL or missing references)
		//IL_028a: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c3: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c8: Unknown result type (might be due to invalid IL or missing references)
		//IL_02df: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_031a: Unknown result type (might be due to invalid IL or missing references)
		//IL_031f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0336: Unknown result type (might be due to invalid IL or missing references)
		//IL_033b: Unknown result type (might be due to invalid IL or missing references)
		//IL_05b7: Unknown result type (might be due to invalid IL or missing references)
		PressKey("ESC");
		delay_100ms(3);
		FindAndClick(hWnd, pathKhac + "/Log_ChuyenKenh.png", 2, 2, "Chuyển Kênh");
		delay_100ms(30);
		Point? val = FindPoint(hWnd, pathKhac + "/Log_ChonKenh.png");
		if (val.HasValue)
		{
			Point value;
			switch (chonKenh)
			{
			case 1:
			{
				System.IntPtr intPtr8 = hWnd;
				value = val.Value;
				int num8 = ((Point)(ref value)).X - 622 + 530;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr8, num8, ((Point)(ref value)).Y - 227 + 268 - 30, (EMouseKey)0, 1);
				debugText("Kênh 1");
				break;
			}
			case 2:
			{
				System.IntPtr intPtr7 = hWnd;
				value = val.Value;
				int num7 = ((Point)(ref value)).X - 622 + 530;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr7, num7, ((Point)(ref value)).Y - 227 + 301 - 30, (EMouseKey)0, 1);
				debugText("Kênh 2");
				break;
			}
			case 3:
			{
				System.IntPtr intPtr6 = hWnd;
				value = val.Value;
				int num6 = ((Point)(ref value)).X - 622 + 530;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr6, num6, ((Point)(ref value)).Y - 227 + 336 - 30, (EMouseKey)0, 1);
				debugText("Kênh 3");
				break;
			}
			case 4:
			{
				System.IntPtr intPtr5 = hWnd;
				value = val.Value;
				int num5 = ((Point)(ref value)).X - 622 + 530;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr5, num5, ((Point)(ref value)).Y - 227 + 370 - 30, (EMouseKey)0, 1);
				debugText("Kênh 4");
				break;
			}
			case 5:
			{
				System.IntPtr intPtr4 = hWnd;
				value = val.Value;
				int num4 = ((Point)(ref value)).X - 622 + 530;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr4, num4, ((Point)(ref value)).Y - 227 + 404 - 30, (EMouseKey)0, 1);
				debugText("Kênh 5");
				break;
			}
			case 6:
			{
				System.IntPtr intPtr3 = hWnd;
				value = val.Value;
				int num3 = ((Point)(ref value)).X - 622 + 530;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr3, num3, ((Point)(ref value)).Y - 227 + 438 - 30, (EMouseKey)0, 1);
				debugText("Kênh 6");
				break;
			}
			case 7:
			{
				System.IntPtr intPtr2 = hWnd;
				value = val.Value;
				int num2 = ((Point)(ref value)).X - 622 + 530;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr2, num2, ((Point)(ref value)).Y - 227 + 471 - 30, (EMouseKey)0, 1);
				debugText("Kênh 7");
				break;
			}
			case 8:
			{
				System.IntPtr intPtr = hWnd;
				value = val.Value;
				int num = ((Point)(ref value)).X - 622 + 530;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr, num, ((Point)(ref value)).Y - 227 + 506 - 30, (EMouseKey)0, 1);
				debugText("Kênh 8");
				break;
			}
			default:
				PressKey("ESC");
				debugText("không chuyển kênh");
				return true;
			}
			delay_100ms(10);
			if (!FindPoint(hWnd, pathKhac + "/Log_ChonKenh.png").HasValue)
			{
				int num9 = 0;
				debugText("Chờ Chuyển Kênh");
				while (!FindPoint(hWnd, pathKhac + "/Log_DangChuyenKenh.png").HasValue)
				{
					num9++;
					if (num9 >= 600)
					{
						break;
					}
					delay_100ms(5);
				}
				num9 = 0;
				debugText("Đang Chuyển Kênh");
				while (FindPoint(hWnd, pathKhac + "/Log_DangChuyenKenh.png").HasValue)
				{
					num9++;
					if (num9 >= 600)
					{
						break;
					}
					delay_100ms(5);
				}
				debugText("Đợi Tín Hiệu");
				delay_100ms(30);
				num9 = 0;
				while (!FindPoint(hWnd, pathKhac + "/Log_RatTot.png").HasValue && !FindPoint(hWnd, pathKhac + "/Log_BinhThuong.png").HasValue && !FindPoint(hWnd, pathKhac + "/Log_Tot.png").HasValue)
				{
					num9++;
					if (num9 >= 360)
					{
						return false;
					}
					debugText("check vào game - " + num9);
					delay_100ms(5);
				}
				delay_100ms(30);
				if (WriteMemoryData(processID, myPointer, offset_FPS, 50.0))
				{
					AutoControl.SendClickOnPosition(hWnd, 58, 406, (EMouseKey)0, 1);
					Thread.Sleep(TimeSpan.FromSeconds(0.1));
					AutoControl.SendClickOnPosition(hWnd, 58, 470, (EMouseKey)0, 1);
					debugText("Write FPS: 50");
				}
				else
				{
					debugText("Write FPS False");
				}
				debugText("Đang ở Kênh " + chonKenh);
				PressKey("ESC");
			}
			else
			{
				debugText("Đang ở Kênh " + chonKenh);
			}
			return true;
		}
		return false;
	}

	private bool checkLogAcc(int row)
	{
		//IL_0195: Unknown result type (might be due to invalid IL or missing references)
		if (!CheckHandleWindows(accCheck))
		{
			logAcc(accCheck, link);
			hWnd = FindWindowHandle(null, accCheck);
			GetWindowThreadProcessId(hWnd, out processID);
			debugText("tải game");
			int num = 0;
			while (!FindPoint(hWnd, pathKhac + "/Log_iconVPT.png").HasValue)
			{
				num++;
				if (num >= 600)
				{
					return false;
				}
				delay_100ms(5);
			}
			debugText("đang đăng nhập");
			num = 0;
			while (!reConnect(row))
			{
				num++;
				if (num >= 600)
				{
					return false;
				}
				debugText("kết nối - " + num);
				delay_100ms(5);
			}
			GetWindowThreadProcessId(hWnd, out processID);
			if (WriteMemoryData(processID, myPointer, offset_FPS, 50.0))
			{
				AutoControl.SendClickOnPosition(hWnd, 58, 406, (EMouseKey)0, 1);
				Thread.Sleep(TimeSpan.FromSeconds(0.1));
				AutoControl.SendClickOnPosition(hWnd, 58, 470, (EMouseKey)0, 1);
				debugText("Write FPS: 50");
			}
			else
			{
				debugText("Write FPS False");
			}
			delay_100ms(5);
			return true;
		}
		hWnd = FindWindowHandle(null, accCheck);
		GetWindowThreadProcessId(hWnd, out processID);
		return true;
	}

	private bool checkRun(int row)
	{
		//IL_0058: Unknown result type (might be due to invalid IL or missing references)
		//IL_005d: Unknown result type (might be due to invalid IL or missing references)
		string[] array = dataGridView2.Rows[row].Cells[0].Value.ToString().Split(':', (StringSplitOptions)0);
		int num = int.Parse(array[0]);
		int num2 = int.Parse(array[1]);
		if (((DataGridViewBand)dataGridView2.Rows[row]).DefaultCellStyle.BackColor == Color.Orange)
		{
			return true;
		}
		if (num == System.DateTime.Now.Hour && num2 == System.DateTime.Now.Minute)
		{
			return true;
		}
		return false;
	}

	private bool runJob(int row)
	{
		string text = dataGridView2.Rows[row].Cells[1].Value.ToString();
		string text2 = text;
		string text3 = text2;
		if (!(text3 == "Daily"))
		{
			if (!(text3 == "Đố Vui"))
			{
				if (!(text3 == "Trừ Ma"))
				{
					if (!(text3 == "Đổi Năng Nổ"))
					{
						if (!(text3 == "Tu Tháp Cao"))
						{
							if (text3 == "Trị An [Tân]")
							{
								TriAn_Tan();
							}
						}
						else
						{
							TuThapCao();
						}
					}
					else
					{
						DoiNangNo();
					}
				}
				else
				{
					TruMa();
				}
			}
			else
			{
				isTLCH = true;
				breakEvent = false;
				TraLoiCauHoi();
				isTLCH = false;
				breakEvent = false;
			}
		}
		else
		{
			Daily();
		}
		return true;
	}

	private bool runEnd(int row)
	{
		//IL_01a3: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b3: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b8: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e8: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_01fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_0203: Unknown result type (might be due to invalid IL or missing references)
		//IL_0230: Unknown result type (might be due to invalid IL or missing references)
		//IL_0235: Unknown result type (might be due to invalid IL or missing references)
		//IL_0246: Unknown result type (might be due to invalid IL or missing references)
		//IL_024b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0282: Unknown result type (might be due to invalid IL or missing references)
		//IL_0287: Unknown result type (might be due to invalid IL or missing references)
		//IL_0292: Unknown result type (might be due to invalid IL or missing references)
		//IL_0297: Unknown result type (might be due to invalid IL or missing references)
		string text = dataGridView2.Rows[row].Cells[2].Value.ToString();
		string text2 = text;
		if (!(text2 == "Off"))
		{
			if (text2 == "BugOnl")
			{
				hWnd = FindWindowHandle(null, accCheck);
				PressKey("P");
				FindAndClick(hWnd, pathTacVu + "/ChienDau.png", 334, -175, "Nhân Vật");
				int num = 0;
				while (!FindPoint(hWnd, pathKhac + "/Log_VaoGame.png").HasValue)
				{
					num++;
					if (num > 20)
					{
						break;
					}
					delay_100ms(5);
				}
				Point? val = FindPoint(hWnd, pathKhac + "/Log_VaoGame.png");
				if (val.HasValue)
				{
					Point value;
					switch (int.Parse(dataGridView2.Rows[row].Cells[4].Value.ToString()))
					{
					case 1:
					{
						System.IntPtr intPtr3 = hWnd;
						value = val.Value;
						int x = ((Point)(ref value)).X;
						value = val.Value;
						AutoControl.SendClickOnPosition(intPtr3, x, ((Point)(ref value)).Y - 70 - 30, (EMouseKey)0, 1);
						debugText("Nhân Vật 1");
						break;
					}
					case 2:
					{
						System.IntPtr intPtr2 = hWnd;
						value = val.Value;
						int num3 = ((Point)(ref value)).X + 200;
						value = val.Value;
						AutoControl.SendClickOnPosition(intPtr2, num3, ((Point)(ref value)).Y - 70 - 30, (EMouseKey)0, 1);
						debugText("Nhân Vật 2");
						break;
					}
					case 3:
					{
						System.IntPtr intPtr = hWnd;
						value = val.Value;
						int num2 = ((Point)(ref value)).X + 400;
						value = val.Value;
						AutoControl.SendClickOnPosition(intPtr, num2, ((Point)(ref value)).Y - 70 - 30, (EMouseKey)0, 1);
						debugText("Nhân Vật 3");
						break;
					}
					}
					delay_100ms(5);
					System.IntPtr intPtr4 = hWnd;
					value = val.Value;
					int x2 = ((Point)(ref value)).X;
					value = val.Value;
					AutoControl.SendClickOnPosition(intPtr4, x2, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
				}
				delay_100ms(10);
				GetWindowThreadProcessId(hWnd, out processID);
				Process processById = Process.GetProcessById((int)processID);
				processById.Kill();
			}
		}
		else
		{
			hWnd = FindWindowHandle(null, accCheck);
			GetWindowThreadProcessId(hWnd, out processID);
			Process processById2 = Process.GetProcessById((int)processID);
			processById2.Kill();
		}
		return true;
	}

	private bool Daily()
	{
		//IL_0036: Unknown result type (might be due to invalid IL or missing references)
		Program.AppMain.nameFlash = accCheck;
		Program.AppMain.nameUser = nameUser;
		Program.AppMain.autoRun = false;
		Program.AppMain.modeCalendar = true;
		debugText("mở Tool Daily");
		Daily daily = new Daily();
		((Form)daily).ShowDialog();
		debugText("tắt Tool Daily");
		delay_100ms(10);
		return true;
	}

	private bool TruMa()
	{
		//IL_003b: Unknown result type (might be due to invalid IL or missing references)
		Program.AppMain.nameFlash = accCheck;
		Program.AppMain.nameUser = nameUser;
		Program.AppMain.autoRun = true;
		Program.AppMain.link = link;
		debugText("mở Tool Trừ Ma");
		TruMa truMa = new TruMa();
		((Form)truMa).ShowDialog();
		debugText("tắt Tool Trừ Ma");
		delay_100ms(10);
		return true;
	}

	private bool DoiNangNo()
	{
		//IL_003b: Unknown result type (might be due to invalid IL or missing references)
		Program.AppMain.nameFlash = accCheck;
		Program.AppMain.nameUser = nameUser;
		Program.AppMain.autoRun = true;
		Program.AppMain.link = link;
		debugText("mở Tool Năng Nổ");
		NangNo nangNo = new NangNo();
		((Form)nangNo).ShowDialog();
		debugText("tắt Tool Năng Nổ");
		delay_100ms(10);
		return true;
	}

	private bool TraLoiCauHoi()
	{
		PressKey("ESC");
		while (!FindItem(hWnd, pathKhac + "/DVCT_icon.png", "icon DVCT") && !breakEvent)
		{
		}
		delay_100ms(8);
		if (FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 2, 2, "Có").HasValue)
		{
			delay_100ms(8);
			if (FindPoint(hWnd, pathKhac + "/DVCT_BoCau.png").HasValue)
			{
				while (!FindPoint(hWnd, pathKhac + "/DVCT_Chon.png").HasValue)
				{
				}
				while (!FindPoint(hWnd, pathKhac + "/Auto_OK.png").HasValue)
				{
					FindsAndClick(hWnd, pathKhac + "/DVCT_Chon.png", 2, 2, "Chọn");
					delay_100ms(10);
				}
				FindAndClick(hWnd, pathKhac + "/Auto_OK.png", 2, 2, "OK");
				return true;
			}
		}
		return false;
	}

	private bool TuThapCao()
	{
		//IL_01c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_01cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d6: Unknown result type (might be due to invalid IL or missing references)
		//IL_01db: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e9: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ee: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_01fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_02fd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0302: Unknown result type (might be due to invalid IL or missing references)
		//IL_0316: Unknown result type (might be due to invalid IL or missing references)
		//IL_031b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0326: Unknown result type (might be due to invalid IL or missing references)
		//IL_032b: Unknown result type (might be due to invalid IL or missing references)
		//IL_03de: Unknown result type (might be due to invalid IL or missing references)
		//IL_03e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ee: Unknown result type (might be due to invalid IL or missing references)
		//IL_03f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0407: Unknown result type (might be due to invalid IL or missing references)
		//IL_040c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0417: Unknown result type (might be due to invalid IL or missing references)
		//IL_041c: Unknown result type (might be due to invalid IL or missing references)
		System.DateTime now = System.DateTime.Now;
		int num = now.Hour * 60 + now.Minute;
		while (true)
		{
			PressKey("ESC");
			while (!FindItem(hWnd, pathKhac + "/TLAM_Icon.png", "Tu Luyện Ảo Ma"))
			{
			}
			delay_100ms(8);
			if (!FindAndClick(hWnd, pathKhac + "/TLAM_ThietLapPet.png", 2, 2, "Thiết Lập Pet").HasValue)
			{
				System.DateTime now2 = System.DateTime.Now;
				int num2 = now2.Hour * 60 + now2.Minute;
				if (num2 - num >= 60)
				{
					break;
				}
			}
			else
			{
				delay_100ms(10);
				if (FindAndClick(hWnd, pathKhac + "/TLAM_LuuThietLap.png", 2, 2, "Thiết Lập Pet").HasValue)
				{
					break;
				}
			}
		}
		PressKey("ESC");
		while (true)
		{
			PressKey("ESC");
			while (!FindItem(hWnd, pathKhac + "/TLAM_Icon.png", "Tu Luyện Ảo Ma"))
			{
			}
			Point? val = FindPoint(hWnd, pathKhac + "/TLAM_ThietLapPet.png");
			if (!val.HasValue)
			{
				continue;
			}
			Point? val2 = FindSubPoint2(hWnd, pathKhac + "/TLAM_ThietLapPet.png", 0, 0, 100, 200, pathKhac + "/TLAM_HuyBoTuLuyen.png");
			Point value;
			if (val2.HasValue)
			{
				value = val2.Value;
				int x = ((Point)(ref value)).X;
				value = val.Value;
				int num3 = x + ((Point)(ref value)).X;
				value = val2.Value;
				int y = ((Point)(ref value)).Y;
				value = val.Value;
				int num4 = y + ((Point)(ref value)).Y;
				AutoControl.SendClickOnPosition(hWnd, num3 + 5, num4 + 5 - 30, (EMouseKey)0, 1);
				delay_100ms(5);
				FindAndClick(hWnd, pathKhac + "/TLAM_Co.png", 1, 1, "Có Hủy");
			}
			FindAndClick(hWnd, pathKhac + "/TLAM_NhanTatCa.png", 1, 1, "Nhận Thưởng");
			FindAndClick(hWnd, pathKhac + "/TLAM_Co.png", 1, 1, "Có Nhận");
			val2 = FindSubPoint2(hWnd, pathKhac + "/TLAM_ThietLapPet.png", -270, -160, 250, 160, pathKhac + "/TLAM_TuLuyen.png");
			if (val2.HasValue)
			{
				value = val2.Value;
				int x2 = ((Point)(ref value)).X;
				value = val.Value;
				int num5 = x2 + ((Point)(ref value)).X - 270;
				value = val2.Value;
				int y2 = ((Point)(ref value)).Y;
				value = val.Value;
				int num6 = y2 + ((Point)(ref value)).Y - 160;
				AutoControl.SendClickOnPosition(hWnd, num5 + 5, num6 + 5 - 30, (EMouseKey)0, 1);
				delay_100ms(5);
				FindAndClick(hWnd, pathKhac + "/TLAM_Co.png", 1, 1, "Có Hủy");
			}
			else
			{
				val2 = FindSubPoint2(hWnd, pathKhac + "/TLAM_ThietLapPet.png", -270, -160, 250, 160, pathKhac + "/TLAM_TuLuyen2.png");
				if (val2.HasValue)
				{
					value = val2.Value;
					int x3 = ((Point)(ref value)).X;
					value = val.Value;
					int num7 = x3 + ((Point)(ref value)).X - 270;
					value = val2.Value;
					int y3 = ((Point)(ref value)).Y;
					value = val.Value;
					int num8 = y3 + ((Point)(ref value)).Y - 160;
					AutoControl.SendClickOnPosition(hWnd, num7 + 5, num8 + 5 - 30, (EMouseKey)0, 1);
					delay_100ms(5);
					FindAndClick(hWnd, pathKhac + "/TLAM_Co.png", 1, 1, "Có Hủy");
				}
			}
			delay_100ms(5);
			if (FindSubPoint2(hWnd, pathKhac + "/TLAM_ThietLapPet.png", -270, -160, 250, 160, pathKhac + "/TLAM_HuyBoTuLuyen.png").HasValue)
			{
				break;
			}
			System.DateTime now3 = System.DateTime.Now;
			int num9 = now3.Hour * 60 + now3.Minute;
			if (num9 - num >= 60)
			{
				break;
			}
		}
		return true;
	}

	private void TriAn_Tan()
	{
		//IL_00b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_00b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c5: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d8: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e8: Unknown result type (might be due to invalid IL or missing references)
		//IL_01cc: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_01dc: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e1: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ff: Unknown result type (might be due to invalid IL or missing references)
		//IL_0204: Unknown result type (might be due to invalid IL or missing references)
		if (!FindItem(hWnd, pathKhac + "/TLAM_Icon.png", "Tu Luyện Ảo Ma"))
		{
			debugText("Không Tìm Thấy Icon");
		}
		else
		{
			Point? val = FindPoint(hWnd, pathKhac + "/TLAM_ThietLapPet.png");
			if (val.HasValue)
			{
				Point? val2 = FindSubPoint2(hWnd, pathKhac + "/TLAM_ThietLapPet.png", 0, 0, 100, 200, pathKhac + "/TLAM_HuyBoTuLuyen.png");
				Point value;
				if (val2.HasValue)
				{
					value = val2.Value;
					int x = ((Point)(ref value)).X;
					value = val.Value;
					int num = x + ((Point)(ref value)).X;
					value = val2.Value;
					int y = ((Point)(ref value)).Y;
					value = val.Value;
					int num2 = y + ((Point)(ref value)).Y;
					AutoControl.SendClickOnPosition(hWnd, num + 5, num2 + 5 - 30, (EMouseKey)0, 1);
					delay_100ms(5);
					FindAndClick(hWnd, pathKhac + "/TLAM_Co.png", 1, 1, "Có Hủy");
				}
				FindAndClick(hWnd, pathKhac + "/TLAM_NhanTatCa.png", 1, 1, "Nhận Thưởng");
				FindAndClick(hWnd, pathKhac + "/TLAM_Co.png", 1, 1, "Có Nhận");
				Point? val3 = FindSubPoint2(hWnd, pathKhac + "/TLAM_ThietLapPet.png", 0, 0, 100, 200, pathKhac + "/TLAM_TuLuyen.png");
				if (val3.HasValue)
				{
					value = val3.Value;
					int x2 = ((Point)(ref value)).X;
					value = val.Value;
					int num3 = x2 + ((Point)(ref value)).X;
					value = val3.Value;
					int y2 = ((Point)(ref value)).Y;
					value = val.Value;
					int num4 = y2 + ((Point)(ref value)).Y;
					AutoControl.SendClickOnPosition(hWnd, num3 + 5, num4 + 5 - 30, (EMouseKey)0, 1);
					delay_100ms(5);
					FindAndClick(hWnd, pathKhac + "/TLAM_Co.png", 1, 1, "Có Hủy");
				}
			}
		}
		debugText("Hoàn Thành Tu Luyện Ảo Ma");
	}

	private bool ThamHiemBiCanh()
	{
		PressKey("ESC");
		while (!FindItem(hWnd, pathKhac + "/THBC-icon.png", "Thám Hiểm"))
		{
		}
		delay_100ms(30);
		if (FindPoint(hWnd, pathKhac + "/THBC-XN.png").HasValue)
		{
			while (!FindPoint(hWnd, pathKhac + "/Auto_OK.png").HasValue && !FindPoint(hWnd, pathKhac + "/Auto_Co.png").HasValue)
			{
			}
		}
		return true;
	}

	private void Control_Load(object sender, EventArgs e)
	{
		//IL_003e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0073: Unknown result type (might be due to invalid IL or missing references)
		//IL_0084: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f6: Expected O, but got Unknown
		accCheck = Program.AppMain.nameFlash;
		link = Program.AppMain.link;
		((Control)this).Text = "[" + accCheck + "] BMx Control";
		((Form)this).Size = new Size(553, 415);
		if (Settings.Default.freeSize)
		{
			((Form)this).FormBorderStyle = (FormBorderStyle)4;
		}
		else
		{
			((Form)this).FormBorderStyle = (FormBorderStyle)1;
		}
		TableThemeColor.SelectionBackColor = Color.Gold;
		TableThemeColor.SelectionForeColor = Color.Black;
		dataGridView2.EnableHeadersVisualStyles = false;
		dataGridView2.RowsDefaultCellStyle = TableThemeColor;
		dataGridView2.RowHeadersDefaultCellStyle = TableThemeColor;
		dataGridView2.ColumnHeadersDefaultCellStyle = TableThemeColor;
		loadTheme();
		loadSetting();
		myTimer.Elapsed += new ElapsedEventHandler(myTimerEvent);
		myTimer.AutoReset = true;
		myTimer.Start();
	}

	private void buttonAL_add_Click(object sender, EventArgs e)
	{
		string[] array = new string[5] { "Daily", "Đố Vui", "Trừ Ma", "Đổi Năng Nổ", "Tu Tháp Cao" };
		string[] array2 = new string[3] { "Off", "BugOnl", "Nothing!" };
		string[] array3 = new string[5]
		{
			((int)numericUpDownS_h.Value).ToString("D2") + ":" + ((int)numericUpDownS_m.Value).ToString("D2"),
			null,
			null,
			null,
			null
		};
		if (Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)array, ((Control)comboBoxJ).Text))
		{
			array3[1] = ((Control)comboBoxJ).Text;
		}
		else
		{
			array3[1] = "Lỗi - Job";
		}
		if (Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)array2, ((Control)comboBoxE).Text))
		{
			array3[2] = ((Control)comboBoxE).Text;
		}
		else
		{
			array3[2] = "Lỗi - End";
		}
		array3[3] = numericUpDownKenh.Value.ToString();
		array3[4] = numericUpDownNV.Value.ToString();
		dataGridView2.Rows.Add(new object[5]
		{
			array3[0],
			array3[1],
			array3[2],
			array3[3],
			array3[4]
		});
	}

	private void dataGridView2_CellContentClick(object sender, DataGridViewCellEventArgs e)
	{
		//IL_0002: Unknown result type (might be due to invalid IL or missing references)
		//IL_0008: Expected O, but got Unknown
		//IL_004d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0053: Invalid comparison between Unknown and I4
		//IL_0088: Unknown result type (might be due to invalid IL or missing references)
		//IL_009e: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a4: Invalid comparison between Unknown and I4
		//IL_00c8: Unknown result type (might be due to invalid IL or missing references)
		DataGridView val = (DataGridView)sender;
		string name = val.Columns[e.ColumnIndex].Name;
		string text = name;
		if (!(text == "Del"))
		{
			if (text == "Now" && (int)MessageBox.Show("Chạy Ngay Bây Giờ", "Cảnh Báo", (MessageBoxButtons)4, (MessageBoxIcon)48) == 6)
			{
				((DataGridViewBand)dataGridView2.Rows[e.RowIndex]).DefaultCellStyle.BackColor = Color.Orange;
			}
		}
		else if ((int)MessageBox.Show("Chắc chắn Xóa ?", "Cảnh Báo", (MessageBoxButtons)4, (MessageBoxIcon)48) == 6)
		{
			dataGridView2.Rows.RemoveAt(((DataGridViewBand)dataGridView2.CurrentRow).Index);
			MessageBox.Show("Xong", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)64);
		}
	}

	private void buttonAL_run_Click(object sender, EventArgs e)
	{
		//IL_000e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0014: Invalid comparison between Unknown and I4
		if ((int)MessageBox.Show("Xóa Bảng", "Cảnh Báo", (MessageBoxButtons)4, (MessageBoxIcon)48) == 6)
		{
			dataGridView2.Rows.Clear();
		}
	}

	private void buttonPause_Click(object sender, EventArgs e)
	{
		if (IsPause)
		{
			IsPause = false;
			((Control)buttonPause).Text = "Pause";
			debugText("Tiếp");
		}
		else
		{
			IsPause = true;
			((Control)buttonPause).Text = "Next";
			debugText("Tạm Dừng");
		}
	}

	private void ButtonRunAuto_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		//IL_0089: Unknown result type (might be due to invalid IL or missing references)
		//IL_008f: Invalid comparison between Unknown and I4
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_006b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0075: Expected O, but got Unknown
		//IL_009f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0103: Unknown result type (might be due to invalid IL or missing references)
		//IL_012a: Unknown result type (might be due to invalid IL or missing references)
		if ((int)ButtonRunAuto.CheckState == 1)
		{
			((Control)ButtonRunAuto).BackColor = Color.Green;
			((Control)ButtonRunAuto).Text = "Stop";
			((Control)buttonAL_add).Enabled = false;
			((Control)buttonAL_clear).Enabled = false;
			((Control)buttonPause).Enabled = true;
			IsStop = false;
			System.Threading.Tasks.Task task = new System.Threading.Tasks.Task((Action)([CompilerGenerated] () =>
			{
				//IL_0060: Unknown result type (might be due to invalid IL or missing references)
				//IL_0087: Unknown result type (might be due to invalid IL or missing references)
				//IL_00dc: Unknown result type (might be due to invalid IL or missing references)
				//IL_0103: Unknown result type (might be due to invalid IL or missing references)
				int rowCount = dataGridView2.RowCount;
				if (rowCount == 0)
				{
					debugText("Không Có Thông Tin Thiết Lập");
				}
				else
				{
					while (!IsStop)
					{
						for (int i = 0; i < rowCount; i++)
						{
							if (checkRun(i))
							{
								((DataGridViewBand)dataGridView2.Rows[i]).DefaultCellStyle.BackColor = TableThemeColor.SelectionBackColor;
								((DataGridViewBand)dataGridView2.Rows[i]).DefaultCellStyle.ForeColor = TableThemeColor.SelectionForeColor;
								checkLogAcc(i);
								while (!runJob(i))
								{
								}
								while (!runEnd(i))
								{
								}
								((DataGridViewBand)dataGridView2.Rows[i]).DefaultCellStyle.BackColor = TableThemeColor.BackColor;
								((DataGridViewBand)dataGridView2.Rows[i]).DefaultCellStyle.ForeColor = TableThemeColor.ForeColor;
							}
						}
						delay_100ms(50);
					}
				}
			}));
			task.Start();
		}
		else if ((int)ButtonRunAuto.CheckState == 0)
		{
			((Control)ButtonRunAuto).BackColor = Control.DefaultBackColor;
			((Control)ButtonRunAuto).Text = "Start";
			((Control)buttonAL_add).Enabled = true;
			((Control)buttonAL_clear).Enabled = true;
			((Control)buttonPause).Enabled = false;
			for (int num = 0; num < dataGridView2.RowCount; num++)
			{
				((DataGridViewBand)dataGridView2.Rows[num]).DefaultCellStyle.BackColor = TableThemeColor.BackColor;
				((DataGridViewBand)dataGridView2.Rows[num]).DefaultCellStyle.ForeColor = TableThemeColor.ForeColor;
			}
			IsStop = true;
		}
	}

	private void dataGridView2_RowHeaderMouseClick(object sender, DataGridViewCellMouseEventArgs e)
	{
		string text = "xx";
		string text2 = "xxx";
		string text3 = "xxx";
		string text4 = "goid";
		text = dataGridView2.CurrentRow.Cells[1].Value.ToString();
		text2 = dataGridView2.CurrentRow.Cells[2].Value.ToString();
		text3 = dataGridView2.CurrentRow.Cells[3].Value.ToString();
		text4 = dataGridView2.CurrentRow.Cells[4].Value.ToString();
		((Control)comboBoxJ).Text = text;
		((Control)comboBoxE).Text = text2;
		numericUpDownKenh.Value = decimal.op_Implicit(int.Parse(text3));
		numericUpDownNV.Value = decimal.op_Implicit(int.Parse(text4));
	}

	private void dataGridView2_MouseMove(object sender, MouseEventArgs e)
	{
		//IL_0002: Unknown result type (might be due to invalid IL or missing references)
		//IL_000c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0012: Invalid comparison between Unknown and I4
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_001f: Unknown result type (might be due to invalid IL or missing references)
		//IL_006a: Unknown result type (might be due to invalid IL or missing references)
		//IL_006f: Unknown result type (might be due to invalid IL or missing references)
		if ((e.Button & 0x100000) == 1048576 && dragBoxFromMouseDown2 != Rectangle.Empty && !((Rectangle)(ref dragBoxFromMouseDown2)).Contains(e.X, e.Y))
		{
			DragDropEffects val = ((Control)dataGridView2).DoDragDrop((object)dataGridView2.Rows[rowIndexFromMouseDown2], (DragDropEffects)2);
		}
	}

	private void dataGridView2_MouseDown(object sender, MouseEventArgs e)
	{
		//IL_006f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0074: Unknown result type (might be due to invalid IL or missing references)
		//IL_0034: Unknown result type (might be due to invalid IL or missing references)
		//IL_0039: Unknown result type (might be due to invalid IL or missing references)
		//IL_005b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0060: Unknown result type (might be due to invalid IL or missing references)
		//IL_0061: Unknown result type (might be due to invalid IL or missing references)
		//IL_0066: Unknown result type (might be due to invalid IL or missing references)
		rowIndexFromMouseDown2 = dataGridView2.HitTest(e.X, e.Y).RowIndex;
		if (rowIndexFromMouseDown2 != -1)
		{
			Size dragSize = SystemInformation.DragSize;
			dragBoxFromMouseDown2 = new Rectangle(new Point(e.X - ((Size)(ref dragSize)).Width / 2, e.Y - ((Size)(ref dragSize)).Height / 2), dragSize);
		}
		else
		{
			dragBoxFromMouseDown2 = Rectangle.Empty;
		}
	}

	private void dataGridView2_DragOver(object sender, DragEventArgs e)
	{
		e.Effect = (DragDropEffects)2;
	}

	private void dataGridView2_DragDrop(object sender, DragEventArgs e)
	{
		//IL_0013: Unknown result type (might be due to invalid IL or missing references)
		//IL_0018: Unknown result type (might be due to invalid IL or missing references)
		//IL_001d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0043: Unknown result type (might be due to invalid IL or missing references)
		//IL_0049: Invalid comparison between Unknown and I4
		Point val = ((Control)dataGridView2).PointToClient(new Point(e.X, e.Y));
		rowIndexOfItemUnderMouseToDrop2 = dataGridView2.HitTest(((Point)(ref val)).X, ((Point)(ref val)).Y).RowIndex;
		if ((int)e.Effect == 2)
		{
			object data = e.Data.GetData(typeof(DataGridViewRow));
			DataGridViewRow val2 = (DataGridViewRow)((data is DataGridViewRow) ? data : null);
			if (rowIndexOfItemUnderMouseToDrop2 >= 0)
			{
				dataGridView2.Rows.RemoveAt(rowIndexFromMouseDown2);
				dataGridView2.Rows.Insert(rowIndexOfItemUnderMouseToDrop2, val2);
			}
		}
	}

	private bool loadTheme()
	{
		//IL_010f: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0206: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_00da: Unknown result type (might be due to invalid IL or missing references)
		//IL_0238: Unknown result type (might be due to invalid IL or missing references)
		//IL_024a: Unknown result type (might be due to invalid IL or missing references)
		//IL_025c: Unknown result type (might be due to invalid IL or missing references)
		//IL_026e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0280: Unknown result type (might be due to invalid IL or missing references)
		//IL_0292: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c8: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0306: Unknown result type (might be due to invalid IL or missing references)
		//IL_0318: Unknown result type (might be due to invalid IL or missing references)
		//IL_032a: Unknown result type (might be due to invalid IL or missing references)
		//IL_033c: Unknown result type (might be due to invalid IL or missing references)
		//IL_034e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0360: Unknown result type (might be due to invalid IL or missing references)
		//IL_0372: Unknown result type (might be due to invalid IL or missing references)
		//IL_0384: Unknown result type (might be due to invalid IL or missing references)
		//IL_03d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_03d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_03e1: Expected O, but got Unknown
		//IL_0401: Unknown result type (might be due to invalid IL or missing references)
		//IL_0406: Unknown result type (might be due to invalid IL or missing references)
		//IL_0410: Expected O, but got Unknown
		//IL_0430: Unknown result type (might be due to invalid IL or missing references)
		//IL_0435: Unknown result type (might be due to invalid IL or missing references)
		//IL_043f: Expected O, but got Unknown
		//IL_045f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0464: Unknown result type (might be due to invalid IL or missing references)
		//IL_046e: Expected O, but got Unknown
		//IL_048e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0493: Unknown result type (might be due to invalid IL or missing references)
		//IL_049d: Expected O, but got Unknown
		//IL_04bd: Unknown result type (might be due to invalid IL or missing references)
		//IL_04c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_04cc: Expected O, but got Unknown
		//IL_04ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_04f1: Unknown result type (might be due to invalid IL or missing references)
		//IL_04fb: Expected O, but got Unknown
		//IL_051b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0520: Unknown result type (might be due to invalid IL or missing references)
		//IL_052a: Expected O, but got Unknown
		//IL_054a: Unknown result type (might be due to invalid IL or missing references)
		//IL_054f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0559: Expected O, but got Unknown
		//IL_0581: Unknown result type (might be due to invalid IL or missing references)
		//IL_0593: Unknown result type (might be due to invalid IL or missing references)
		//IL_05a5: Unknown result type (might be due to invalid IL or missing references)
		//IL_05b7: Unknown result type (might be due to invalid IL or missing references)
		//IL_05c9: Unknown result type (might be due to invalid IL or missing references)
		//IL_05f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0607: Unknown result type (might be due to invalid IL or missing references)
		//IL_0619: Unknown result type (might be due to invalid IL or missing references)
		//IL_062b: Unknown result type (might be due to invalid IL or missing references)
		//IL_063d: Unknown result type (might be due to invalid IL or missing references)
		//IL_068b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0690: Unknown result type (might be due to invalid IL or missing references)
		//IL_069a: Expected O, but got Unknown
		//IL_06ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_06bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_06c9: Expected O, but got Unknown
		//IL_06e9: Unknown result type (might be due to invalid IL or missing references)
		//IL_06ee: Unknown result type (might be due to invalid IL or missing references)
		//IL_06f8: Expected O, but got Unknown
		//IL_0718: Unknown result type (might be due to invalid IL or missing references)
		//IL_071d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0727: Expected O, but got Unknown
		//IL_0747: Unknown result type (might be due to invalid IL or missing references)
		//IL_074c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0756: Expected O, but got Unknown
		//IL_077e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0790: Unknown result type (might be due to invalid IL or missing references)
		//IL_07bc: Unknown result type (might be due to invalid IL or missing references)
		//IL_07ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_081c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0821: Unknown result type (might be due to invalid IL or missing references)
		//IL_082b: Expected O, but got Unknown
		//IL_084b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0850: Unknown result type (might be due to invalid IL or missing references)
		//IL_085a: Expected O, but got Unknown
		//IL_0882: Unknown result type (might be due to invalid IL or missing references)
		//IL_08ae: Unknown result type (might be due to invalid IL or missing references)
		//IL_08da: Unknown result type (might be due to invalid IL or missing references)
		//IL_0906: Unknown result type (might be due to invalid IL or missing references)
		//IL_0932: Unknown result type (might be due to invalid IL or missing references)
		//IL_01be: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f0: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c7: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d0: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e2: Unknown result type (might be due to invalid IL or missing references)
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
					((Control)groupBox4).BackgroundImage = Image.FromFile(fileName);
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
					((Control)groupBox4).BackgroundImageLayout = layout;
				}
				else
				{
					((Control)groupBox4).BackColor = Color.FromArgb(num2);
				}
				int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
				((Control)label12).BackColor = Color.FromArgb(num2);
				((Control)label8).BackColor = Color.FromArgb(num2);
				((Control)label9).BackColor = Color.FromArgb(num2);
				((Control)label1).BackColor = Color.FromArgb(num2);
				((Control)label16).BackColor = Color.FromArgb(num2);
				((Control)label13).BackColor = Color.FromArgb(num2);
				((Control)label14).BackColor = Color.FromArgb(num2);
				((Control)label6).BackColor = Color.FromArgb(num2);
				((Control)label10).BackColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
				((Control)label12).ForeColor = Color.FromArgb(num2);
				((Control)label8).ForeColor = Color.FromArgb(num2);
				((Control)label9).ForeColor = Color.FromArgb(num2);
				((Control)label1).ForeColor = Color.FromArgb(num2);
				((Control)label16).ForeColor = Color.FromArgb(num2);
				((Control)label13).ForeColor = Color.FromArgb(num2);
				((Control)label14).ForeColor = Color.FromArgb(num2);
				((Control)label6).ForeColor = Color.FromArgb(num2);
				((Control)label10).ForeColor = Color.FromArgb(num2);
				object obj = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
				Font val = (Font)((obj is Font) ? obj : null);
				((Control)label12).Font = new Font(val.FontFamily, ((Control)label12).Font.Size, val.Style);
				((Control)label8).Font = new Font(val.FontFamily, ((Control)label8).Font.Size, val.Style);
				((Control)label9).Font = new Font(val.FontFamily, ((Control)label9).Font.Size, val.Style);
				((Control)label1).Font = new Font(val.FontFamily, ((Control)label1).Font.Size, val.Style);
				((Control)label16).Font = new Font(val.FontFamily, ((Control)label16).Font.Size, val.Style);
				((Control)label13).Font = new Font(val.FontFamily, ((Control)label13).Font.Size, val.Style);
				((Control)label14).Font = new Font(val.FontFamily, ((Control)label14).Font.Size, val.Style);
				((Control)label6).Font = new Font(val.FontFamily, ((Control)label6).Font.Size, val.Style);
				((Control)label10).Font = new Font(val.FontFamily, ((Control)label10).Font.Size, val.Style);
				int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
				((Control)buttonAL_add).BackColor = Color.FromArgb(num2);
				((Control)buttonAL_save).BackColor = Color.FromArgb(num2);
				((Control)buttonAL_clear).BackColor = Color.FromArgb(num2);
				((Control)ButtonRunAuto).BackColor = Color.FromArgb(num2);
				((Control)buttonPause).BackColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
				((Control)buttonAL_add).ForeColor = Color.FromArgb(num2);
				((Control)buttonAL_save).ForeColor = Color.FromArgb(num2);
				((Control)buttonAL_clear).ForeColor = Color.FromArgb(num2);
				((Control)ButtonRunAuto).ForeColor = Color.FromArgb(num2);
				((Control)buttonPause).ForeColor = Color.FromArgb(num2);
				object obj2 = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
				val = (Font)((obj2 is Font) ? obj2 : null);
				((Control)buttonAL_add).Font = new Font(val.FontFamily, ((Control)buttonAL_add).Font.Size, val.Style);
				((Control)buttonAL_save).Font = new Font(val.FontFamily, ((Control)buttonAL_save).Font.Size, val.Style);
				((Control)buttonAL_clear).Font = new Font(val.FontFamily, ((Control)buttonAL_clear).Font.Size, val.Style);
				((Control)ButtonRunAuto).Font = new Font(val.FontFamily, ((Control)ButtonRunAuto).Font.Size, val.Style);
				((Control)buttonPause).Font = new Font(val.FontFamily, ((Control)buttonPause).Font.Size, val.Style);
				int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
				((Control)comboBoxJ).BackColor = Color.FromArgb(num2);
				((Control)comboBoxE).BackColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
				((Control)comboBoxJ).ForeColor = Color.FromArgb(num2);
				((Control)comboBoxE).ForeColor = Color.FromArgb(num2);
				object obj3 = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
				val = (Font)((obj3 is Font) ? obj3 : null);
				((Control)comboBoxJ).Font = new Font(val.FontFamily, ((Control)comboBoxJ).Font.Size, val.Style);
				((Control)comboBoxE).Font = new Font(val.FontFamily, ((Control)comboBoxE).Font.Size, val.Style);
				int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
				dataGridView2.BackgroundColor = Color.FromArgb(num2);
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
				dataGridView2.EnableHeadersVisualStyles = false;
				dataGridView2.RowsDefaultCellStyle = TableThemeColor;
				dataGridView2.RowHeadersDefaultCellStyle = TableThemeColor;
				dataGridView2.ColumnHeadersDefaultCellStyle = TableThemeColor;
				return true;
			}
		}
		catch (System.Exception)
		{
			return false;
		}
		return false;
	}

	private void Control_FormClosed(object sender, FormClosedEventArgs e)
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
		//IL_0333: Unknown result type (might be due to invalid IL or missing references)
		//IL_035f: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ac: Unknown result type (might be due to invalid IL or missing references)
		//IL_03d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0455: Unknown result type (might be due to invalid IL or missing references)
		//IL_047b: Unknown result type (might be due to invalid IL or missing references)
		//IL_04fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_0524: Unknown result type (might be due to invalid IL or missing references)
		//IL_0558: Unknown result type (might be due to invalid IL or missing references)
		//IL_0599: Unknown result type (might be due to invalid IL or missing references)
		//IL_05da: Unknown result type (might be due to invalid IL or missing references)
		//IL_0600: Unknown result type (might be due to invalid IL or missing references)
		//IL_0643: Unknown result type (might be due to invalid IL or missing references)
		//IL_064d: Expected O, but got Unknown
		//IL_0667: Unknown result type (might be due to invalid IL or missing references)
		//IL_068d: Unknown result type (might be due to invalid IL or missing references)
		//IL_06c1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0703: Unknown result type (might be due to invalid IL or missing references)
		//IL_0729: Unknown result type (might be due to invalid IL or missing references)
		//IL_074f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0792: Unknown result type (might be due to invalid IL or missing references)
		//IL_079c: Expected O, but got Unknown
		//IL_07aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_0806: Unknown result type (might be due to invalid IL or missing references)
		//IL_0853: Unknown result type (might be due to invalid IL or missing references)
		//IL_0879: Unknown result type (might be due to invalid IL or missing references)
		//IL_08ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_08e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_0924: Unknown result type (might be due to invalid IL or missing references)
		//IL_094a: Unknown result type (might be due to invalid IL or missing references)
		//IL_098b: Unknown result type (might be due to invalid IL or missing references)
		//IL_09b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_09f1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a17: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a4b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a8d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ab3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ae9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b22: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b48: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b8b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b95: Expected O, but got Unknown
		//IL_0bb0: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bd6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c87: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cc6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cec: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cf6: Expected O, but got Unknown
		//IL_0d04: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d0e: Expected O, but got Unknown
		//IL_0d1c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d26: Expected O, but got Unknown
		//IL_0d34: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d3e: Expected O, but got Unknown
		//IL_0d4c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d56: Expected O, but got Unknown
		//IL_0d64: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d6e: Expected O, but got Unknown
		//IL_0f8b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fb1: Unknown result type (might be due to invalid IL or missing references)
		//IL_1003: Unknown result type (might be due to invalid IL or missing references)
		//IL_100d: Expected O, but got Unknown
		//IL_1028: Unknown result type (might be due to invalid IL or missing references)
		//IL_104e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1092: Unknown result type (might be due to invalid IL or missing references)
		//IL_109c: Expected O, but got Unknown
		//IL_10a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_10c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_113f: Unknown result type (might be due to invalid IL or missing references)
		//IL_1149: Expected O, but got Unknown
		//IL_117a: Unknown result type (might be due to invalid IL or missing references)
		//IL_1184: Expected O, but got Unknown
		//IL_118d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1197: Expected O, but got Unknown
		ComponentResourceManager val = new ComponentResourceManager(typeof(Control));
		groupBox4 = new GroupBox();
		label12 = new Label();
		comboBoxE = new ComboBox();
		comboBoxJ = new ComboBox();
		numericUpDownKenh = new NumericUpDown();
		buttonAL_add = new Button();
		label13 = new Label();
		numericUpDownS_h = new NumericUpDown();
		buttonAL_save = new Button();
		numericUpDownNV = new NumericUpDown();
		label14 = new Label();
		label9 = new Label();
		label16 = new Label();
		label8 = new Label();
		label1 = new Label();
		numericUpDownS_m = new NumericUpDown();
		label6 = new Label();
		buttonAL_clear = new Button();
		label10 = new Label();
		dataGridView2 = new DataGridView();
		Start = new DataGridViewTextBoxColumn();
		Job = new DataGridViewTextBoxColumn();
		End = new DataGridViewTextBoxColumn();
		FL = new DataGridViewTextBoxColumn();
		Class = new DataGridViewTextBoxColumn();
		Now = new DataGridViewButtonColumn();
		Del = new DataGridViewButtonColumn();
		ButtonRunAuto = new CheckBox();
		buttonPause = new Button();
		((Control)groupBox4).SuspendLayout();
		((ISupportInitialize)numericUpDownKenh).BeginInit();
		((ISupportInitialize)numericUpDownS_h).BeginInit();
		((ISupportInitialize)numericUpDownNV).BeginInit();
		((ISupportInitialize)numericUpDownS_m).BeginInit();
		((ISupportInitialize)dataGridView2).BeginInit();
		((Control)this).SuspendLayout();
		((Control)groupBox4).Controls.Add((Control)(object)buttonPause);
		((Control)groupBox4).Controls.Add((Control)(object)label12);
		((Control)groupBox4).Controls.Add((Control)(object)comboBoxE);
		((Control)groupBox4).Controls.Add((Control)(object)comboBoxJ);
		((Control)groupBox4).Controls.Add((Control)(object)numericUpDownKenh);
		((Control)groupBox4).Controls.Add((Control)(object)ButtonRunAuto);
		((Control)groupBox4).Controls.Add((Control)(object)buttonAL_add);
		((Control)groupBox4).Controls.Add((Control)(object)label13);
		((Control)groupBox4).Controls.Add((Control)(object)numericUpDownS_h);
		((Control)groupBox4).Controls.Add((Control)(object)buttonAL_save);
		((Control)groupBox4).Controls.Add((Control)(object)numericUpDownNV);
		((Control)groupBox4).Controls.Add((Control)(object)label14);
		((Control)groupBox4).Controls.Add((Control)(object)label9);
		((Control)groupBox4).Controls.Add((Control)(object)label16);
		((Control)groupBox4).Controls.Add((Control)(object)label8);
		((Control)groupBox4).Controls.Add((Control)(object)label1);
		((Control)groupBox4).Controls.Add((Control)(object)numericUpDownS_m);
		((Control)groupBox4).Location = new Point(379, 32);
		((Control)groupBox4).Name = "groupBox4";
		((Control)groupBox4).Size = new Size(148, 337);
		((Control)groupBox4).TabIndex = 12;
		groupBox4.TabStop = false;
		((Control)groupBox4).Text = "Calendar";
		((Control)label12).AutoSize = true;
		((Control)label12).Location = new Point(6, 28);
		((Control)label12).Name = "label12";
		((Control)label12).Size = new Size(34, 15);
		((Control)label12).TabIndex = 15;
		((Control)label12).Text = "Chạy";
		((ListControl)comboBoxE).FormattingEnabled = true;
		comboBoxE.Items.AddRange(new object[5] { "Off", "BugOnl", "Daily", "Trừ Ma", "Nothing!" });
		((Control)comboBoxE).Location = new Point(36, 217);
		((Control)comboBoxE).Name = "comboBoxE";
		((Control)comboBoxE).Size = new Size(82, 23);
		((Control)comboBoxE).TabIndex = 14;
		((Control)comboBoxE).Text = "Nothing!";
		((ListControl)comboBoxJ).FormattingEnabled = true;
		comboBoxJ.Items.AddRange(new object[5] { "Daily", "Trừ Ma", "Đố Vui", "Đổi Năng Nổ", "Tu Tháp Cao" });
		((Control)comboBoxJ).Location = new Point(38, 181);
		((Control)comboBoxJ).Name = "comboBoxJ";
		((Control)comboBoxJ).Size = new Size(82, 23);
		((Control)comboBoxJ).TabIndex = 14;
		((Control)comboBoxJ).Text = "Daily";
		((Control)numericUpDownKenh).Location = new Point(46, 104);
		numericUpDownKenh.Maximum = new decimal(new int[4] { 8, 0, 0, 0 });
		((Control)numericUpDownKenh).Name = "numericUpDownKenh";
		((Control)numericUpDownKenh).Size = new Size(32, 23);
		((Control)numericUpDownKenh).TabIndex = 45;
		numericUpDownKenh.Value = new decimal(new int[4] { 1, 0, 0, 0 });
		((Control)buttonAL_add).Location = new Point(11, 257);
		((Control)buttonAL_add).Name = "buttonAL_add";
		((Control)buttonAL_add).Size = new Size(54, 25);
		((Control)buttonAL_add).TabIndex = 7;
		((Control)buttonAL_add).Text = "Thêm";
		((ButtonBase)buttonAL_add).UseVisualStyleBackColor = true;
		((Control)buttonAL_add).Click += new EventHandler(buttonAL_add_Click);
		((Control)label13).AutoSize = true;
		((Control)label13).Location = new Point(7, 184);
		((Control)label13).Name = "label13";
		((Control)label13).Size = new Size(25, 15);
		((Control)label13).TabIndex = 15;
		((Control)label13).Text = "Job";
		((Control)numericUpDownS_h).Location = new Point(43, 26);
		numericUpDownS_h.Maximum = new decimal(new int[4] { 23, 0, 0, 0 });
		((Control)numericUpDownS_h).Name = "numericUpDownS_h";
		((Control)numericUpDownS_h).Size = new Size(36, 23);
		((Control)numericUpDownS_h).TabIndex = 10;
		((Control)buttonAL_save).Location = new Point(71, 257);
		((Control)buttonAL_save).Name = "buttonAL_save";
		((Control)buttonAL_save).Size = new Size(54, 25);
		((Control)buttonAL_save).TabIndex = 7;
		((Control)buttonAL_save).Text = "Lưu";
		((ButtonBase)buttonAL_save).UseVisualStyleBackColor = true;
		((Control)buttonAL_save).Click += new EventHandler(buttonSave_Click);
		((Control)numericUpDownNV).Location = new Point(44, 143);
		numericUpDownNV.Maximum = new decimal(new int[4] { 6, 0, 0, 0 });
		numericUpDownNV.Minimum = new decimal(new int[4] { 1, 0, 0, 0 });
		((Control)numericUpDownNV).Name = "numericUpDownNV";
		((Control)numericUpDownNV).Size = new Size(32, 23);
		((Control)numericUpDownNV).TabIndex = 45;
		numericUpDownNV.Value = new decimal(new int[4] { 1, 0, 0, 0 });
		((Control)label14).AutoSize = true;
		((Control)label14).Location = new Point(5, 220);
		((Control)label14).Name = "label14";
		((Control)label14).Size = new Size(27, 15);
		((Control)label14).TabIndex = 15;
		((Control)label14).Text = "End";
		((Control)label9).AutoSize = true;
		((Control)label9).Location = new Point(84, 66);
		((Control)label9).Name = "label9";
		((Control)label9).Size = new Size(32, 15);
		((Control)label9).TabIndex = 11;
		((Control)label9).Text = "Phút";
		((Control)label16).AutoSize = true;
		((Control)label16).Location = new Point(11, 145);
		((Control)label16).Name = "label16";
		((Control)label16).Size = new Size(26, 15);
		((Control)label16).TabIndex = 15;
		((Control)label16).Text = "NV:";
		((Control)label8).AutoSize = true;
		((Control)label8).Location = new Point(85, 28);
		((Control)label8).Name = "label8";
		((Control)label8).Size = new Size(25, 15);
		((Control)label8).TabIndex = 11;
		((Control)label8).Text = "Giờ";
		((Control)label1).AutoSize = true;
		((Control)label1).Location = new Point(6, 106);
		((Control)label1).Name = "label1";
		((Control)label1).Size = new Size(34, 15);
		((Control)label1).TabIndex = 15;
		((Control)label1).Text = "Kênh";
		((Control)numericUpDownS_m).Location = new Point(44, 64);
		numericUpDownS_m.Maximum = new decimal(new int[4] { 59, 0, 0, 0 });
		((Control)numericUpDownS_m).Name = "numericUpDownS_m";
		((Control)numericUpDownS_m).Size = new Size(34, 23);
		((Control)numericUpDownS_m).TabIndex = 10;
		((Control)label6).Location = new Point(379, 12);
		((Control)label6).Name = "label6";
		((Control)label6).RightToLeft = (RightToLeft)1;
		((Control)label6).Size = new Size(148, 17);
		((Control)label6).TabIndex = 7;
		((Control)label6).Text = "Now is 99 : 99 : 99";
		((Control)buttonAL_clear).Location = new Point(294, 344);
		((Control)buttonAL_clear).Name = "buttonAL_clear";
		((Control)buttonAL_clear).Size = new Size(79, 25);
		((Control)buttonAL_clear).TabIndex = 7;
		((Control)buttonAL_clear).Text = "Clear All";
		((ButtonBase)buttonAL_clear).UseVisualStyleBackColor = true;
		((Control)buttonAL_clear).Click += new EventHandler(buttonAL_run_Click);
		((Control)label10).AutoSize = true;
		((Control)label10).Location = new Point(13, 349);
		((Control)label10).Name = "label10";
		((Control)label10).Size = new Size(32, 15);
		((Control)label10).TabIndex = 11;
		((Control)label10).Text = "null?";
		((Control)dataGridView2).AllowDrop = true;
		dataGridView2.AllowUserToAddRows = false;
		dataGridView2.ColumnHeadersHeightSizeMode = (DataGridViewColumnHeadersHeightSizeMode)2;
		dataGridView2.Columns.AddRange((DataGridViewColumn[])(object)new DataGridViewColumn[7]
		{
			(DataGridViewColumn)Start,
			(DataGridViewColumn)Job,
			(DataGridViewColumn)End,
			(DataGridViewColumn)FL,
			(DataGridViewColumn)Class,
			(DataGridViewColumn)Now,
			(DataGridViewColumn)Del
		});
		((Control)dataGridView2).Location = new Point(12, 12);
		((Control)dataGridView2).Name = "dataGridView2";
		dataGridView2.RowTemplate.Height = 25;
		((Control)dataGridView2).Size = new Size(361, 326);
		((Control)dataGridView2).TabIndex = 14;
		dataGridView2.CellContentClick += new DataGridViewCellEventHandler(dataGridView2_CellContentClick);
		dataGridView2.RowHeaderMouseClick += new DataGridViewCellMouseEventHandler(dataGridView2_RowHeaderMouseClick);
		((Control)dataGridView2).DragDrop += new DragEventHandler(dataGridView2_DragDrop);
		((Control)dataGridView2).DragOver += new DragEventHandler(dataGridView2_DragOver);
		((Control)dataGridView2).MouseDown += new MouseEventHandler(dataGridView2_MouseDown);
		((Control)dataGridView2).MouseMove += new MouseEventHandler(dataGridView2_MouseMove);
		((DataGridViewColumn)Start).FillWeight = 50f;
		((DataGridViewColumn)Start).HeaderText = "Start";
		((DataGridViewColumn)Start).Name = "Start";
		((DataGridViewColumn)Start).Width = 50;
		((DataGridViewColumn)Job).FillWeight = 50f;
		((DataGridViewColumn)Job).HeaderText = "Job";
		((DataGridViewColumn)Job).Name = "Job";
		((DataGridViewColumn)Job).Width = 50;
		((DataGridViewColumn)End).FillWeight = 50f;
		((DataGridViewColumn)End).HeaderText = "End";
		((DataGridViewColumn)End).Name = "End";
		((DataGridViewColumn)End).Width = 50;
		((DataGridViewColumn)FL).FillWeight = 40f;
		((DataGridViewColumn)FL).HeaderText = "Kênh";
		((DataGridViewColumn)FL).Name = "FL";
		((DataGridViewColumn)FL).Width = 40;
		((DataGridViewColumn)Class).FillWeight = 30f;
		((DataGridViewColumn)Class).HeaderText = "NV";
		((DataGridViewColumn)Class).Name = "Class";
		((DataGridViewColumn)Class).Width = 30;
		((DataGridViewColumn)Now).FillWeight = 50f;
		((DataGridViewColumn)Now).HeaderText = "Run";
		((DataGridViewColumn)Now).Name = "Now";
		Now.Text = "Now";
		Now.UseColumnTextForButtonValue = true;
		((DataGridViewColumn)Now).Width = 50;
		((DataGridViewColumn)Del).FillWeight = 30f;
		((DataGridViewColumn)Del).HeaderText = "Del";
		((DataGridViewColumn)Del).Name = "Del";
		Del.Text = "Del";
		Del.UseColumnTextForButtonValue = true;
		((DataGridViewColumn)Del).Width = 30;
		ButtonRunAuto.Appearance = (Appearance)1;
		((Control)ButtonRunAuto).Location = new Point(6, 306);
		((Control)ButtonRunAuto).Name = "ButtonRunAuto";
		((Control)ButtonRunAuto).Size = new Size(65, 25);
		((Control)ButtonRunAuto).TabIndex = 44;
		((Control)ButtonRunAuto).Text = "Start";
		((ButtonBase)ButtonRunAuto).TextAlign = (ContentAlignment)32;
		((ButtonBase)ButtonRunAuto).UseVisualStyleBackColor = true;
		ButtonRunAuto.CheckStateChanged += new EventHandler(ButtonRunAuto_CheckStateChanged);
		((Control)buttonPause).Enabled = false;
		((Control)buttonPause).Location = new Point(77, 306);
		((Control)buttonPause).Name = "buttonPause";
		((Control)buttonPause).Size = new Size(65, 25);
		((Control)buttonPause).TabIndex = 54;
		((Control)buttonPause).Text = "Pause";
		((ButtonBase)buttonPause).UseVisualStyleBackColor = true;
		((Control)buttonPause).Click += new EventHandler(buttonPause_Click);
		((ContainerControl)this).AutoScaleDimensions = new SizeF(7f, 15f);
		((ContainerControl)this).AutoScaleMode = (AutoScaleMode)1;
		((Form)this).ClientSize = new Size(537, 376);
		((Control)this).Controls.Add((Control)(object)groupBox4);
		((Control)this).Controls.Add((Control)(object)label6);
		((Control)this).Controls.Add((Control)(object)dataGridView2);
		((Control)this).Controls.Add((Control)(object)buttonAL_clear);
		((Control)this).Controls.Add((Control)(object)label10);
		((Form)this).FormBorderStyle = (FormBorderStyle)1;
		((Form)this).Icon = (Icon)((ResourceManager)val).GetObject("$this.Icon");
		((Form)this).MaximizeBox = false;
		((Control)this).Name = "Control";
		((Form)this).StartPosition = (FormStartPosition)1;
		((Control)this).Text = "Control";
		((Form)this).FormClosed += new FormClosedEventHandler(Control_FormClosed);
		((Form)this).Load += new EventHandler(Control_Load);
		((Control)groupBox4).ResumeLayout(false);
		((Control)groupBox4).PerformLayout();
		((ISupportInitialize)numericUpDownKenh).EndInit();
		((ISupportInitialize)numericUpDownS_h).EndInit();
		((ISupportInitialize)numericUpDownNV).EndInit();
		((ISupportInitialize)numericUpDownS_m).EndInit();
		((ISupportInitialize)dataGridView2).EndInit();
		((Control)this).ResumeLayout(false);
		((Control)this).PerformLayout();
	}
}
