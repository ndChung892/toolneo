using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Resources;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using AutoTool.Properties;
using KAutoHelper;

namespace AutoTool;

public class AutoLogAndRun : Form
{
	private const uint WM_CLOSE = 16u;

	public static string linkApp = Application.StartupPath;

	public string pathAutoPhuBan = linkApp + "/Anh/AutoPhuBan";

	public string pathTacVu = linkApp + "/Anh/TacVu";

	public string pathAutoNhanNVPB = linkApp + "/Anh/NhanNVPB";

	public string pathKhac = linkApp + "/Anh/Khac";

	public string pathMaps = linkApp + "/Anh/Maps";

	public string pathData = linkApp + "/AccData";

	public string pathGroup = linkApp + "/AccData/Group";

	public string pathLuyenPet = linkApp + "/Anh/LuyenPet";

	public string pathBangHoi = linkApp + "/Anh/BangHoi";

	public string pathTruMa = linkApp + "/Anh/TruMa";

	public string pathAutoNotes = linkApp + "/Notes";

	public string nameFlash;

	public string nameUser;

	public string link;

	public string Job;

	public string End;

	public string NhanVat;

	public string KenhAuto;

	public string Source;

	public string VaoLaiGame;

	public string DangNhapLai;

	public string Daily_ThongTin;

	public bool IsStop = true;

	public bool IsPause = false;

	private System.Threading.Tasks.Task T;

	private System.IntPtr hWnd = System.IntPtr.Zero;

	public uint processID;

	private uint[] offset_FPS;

	private uint myPointer;

	public bool autolog_Log;

	public int TieuDe;

	private IContainer components;

	private TextBox textBox1;

	private Label label1;

	public AutoLogAndRun()
	{
		uint[] array = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_FPS = array;
		myPointer = 11180660u;
		autolog_Log = false;
		TieuDe = 30;
		components = null;
		((Form)this)._002Ector();
		InitializeComponent();
	}

	[DllImport("user32.dll")]
	public static extern System.IntPtr SetWindowPos(System.IntPtr hWnd, int hWndInsertAfter, int x, int Y, int cx, int cy, int wFlags);

	[DllImport("user32.dll", CharSet = (CharSet)3, SetLastError = true)]
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

	[DllImport("user32.dll", CharSet = (CharSet)4)]
	private static extern System.IntPtr SendMessage(System.IntPtr hWnd, uint Msg, System.IntPtr wParam, System.IntPtr lParam);

	private void CloseWindow(System.IntPtr hwnd)
	{
		SendMessage(hwnd, 16u, System.IntPtr.Zero, System.IntPtr.Zero);
	}

	[DllImport("user32.dll")]
	private static extern System.IntPtr SetParent(System.IntPtr hWndChild, System.IntPtr hWndNewParent);

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

	private bool FindsAndClickRandom(System.IntPtr hWnd, string pathFind, int offsetX, int offsetY, string textDebug, string check)
	{
		//IL_0048: Unknown result type (might be due to invalid IL or missing references)
		//IL_004d: Unknown result type (might be due to invalid IL or missing references)
		//IL_005b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0060: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c1: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_012d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0134: Expected O, but got Unknown
		//IL_014a: Unknown result type (might be due to invalid IL or missing references)
		//IL_014f: Unknown result type (might be due to invalid IL or missing references)
		//IL_015d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0162: Unknown result type (might be due to invalid IL or missing references)
		List<Point> val = FindPoints(hWnd, pathFind);
		if (val.Count != 0)
		{
			Point val2;
			if (!(check == "UpToDw"))
			{
				if (check == "DwToUp")
				{
					for (int num = val.Count - 1; num >= 0; num--)
					{
						val2 = val[num];
						int num2 = ((Point)(ref val2)).X + offsetX;
						val2 = val[num];
						AutoControl.SendClickOnPosition(hWnd, num2, ((Point)(ref val2)).Y + offsetY - 30, (EMouseKey)0, 1);
						debugText(textDebug + num);
						delay_100ms(5);
					}
				}
				else
				{
					for (int i = 0; i < val.Count; i++)
					{
						Random val3 = new Random();
						int num3 = val3.Next(0, val.Count - 1);
						val2 = val[num3];
						int num4 = ((Point)(ref val2)).X + offsetX;
						val2 = val[num3];
						AutoControl.SendClickOnPosition(hWnd, num4, ((Point)(ref val2)).Y + offsetY - 30, (EMouseKey)0, 1);
						debugText(textDebug + num3);
						delay_100ms(5);
					}
				}
			}
			else
			{
				for (int j = 0; j < val.Count; j++)
				{
					val2 = val[j];
					int num5 = ((Point)(ref val2)).X + offsetX;
					val2 = val[j];
					AutoControl.SendClickOnPosition(hWnd, num5, ((Point)(ref val2)).Y + offsetY - 30, (EMouseKey)0, 1);
					debugText(textDebug + j);
					delay_100ms(5);
				}
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
		((Control)label1).Text = x;
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

	private void AutoLogAndRun_Load(object sender, EventArgs e)
	{
		//IL_0173: Unknown result type (might be due to invalid IL or missing references)
		//IL_017d: Expected O, but got Unknown
		nameFlash = Program.AppMain.nameFlash;
		nameUser = Program.AppMain.nameUser;
		link = Program.AppMain.link;
		Job = Program.AppMain.Job;
		End = Program.AppMain.End;
		NhanVat = Program.AppMain.NhanVat;
		KenhAuto = Program.AppMain.Kenh;
		Source = Program.AppMain.Source;
		VaoLaiGame = Program.AppMain.VaoLaiGame;
		DangNhapLai = Program.AppMain.DangNhapLai;
		Daily_ThongTin = Program.AppMain.Daily_ThongTin;
		((Control)this).Text = "[" + nameFlash + "] AutoLog";
		string text = string.Concat(new string[20]
		{
			"Tên Flash: ", nameFlash, "\r\nUser: ", nameUser, "\r\nLink: ", link, "\r\nJob: ", Job, "\r\nEnd: ", End,
			"\r\nNhân Vâ\u0323t: ", NhanVat, "\r\nKênh: ", KenhAuto, "\r\nVa\u0300o La\u0323i Game: ", VaoLaiGame, "\r\nĐăng Nhâ\u0323p La\u0323i: ", DangNhapLai, "\r\nSource: ", Source
		});
		((Control)textBox1).Text = text;
		IsStop = false;
		System.Threading.Tasks.Task task = new System.Threading.Tasks.Task((Action)([CompilerGenerated] () =>
		{
			while (!IsStop)
			{
				debugText("Begin!");
				checkFlash();
				while (!Auto_LogAcc())
				{
				}
				delay_100ms(18);
				int num = 0;
				string job = Job;
				string text2 = job;
				switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text2))
				{
				case 3157821886u:
					if (text2 == "Daily")
					{
						while (true)
						{
							if (!CheckHandleWindows("[" + nameFlash + "] BMx Daily"))
							{
								Program.AppMain.autoRun = true;
								if (Daily_ThongTin == "Trô\u0300ng")
								{
									Program.AppMain.onlyTrong = true;
								}
								else
								{
									Program.AppMain.onlyTrong = false;
								}
								string text3 = Program.AppMain.autoRun.ToString();
								if (End == "Ha\u0301i-Trô\u0300ng-Câu" || End == "Trồng-Nông Trại" || End == "Câu Cá")
								{
									text3 = "H_T_C_end";
								}
								debugText("mở Tool Daily");
								Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[11]
								{
									"BMx_Daily \"",
									Program.AppMain.nameFlash,
									"\" \"",
									Program.AppMain.nameUser,
									"\" \"",
									Program.AppMain.link,
									"\" \"",
									text3,
									"\" \"",
									Program.AppMain.onlyTrong.ToString(),
									"\""
								}));
								delay_100ms(50);
								if (CheckHandleWindows("[" + nameFlash + "] BMx Daily"))
								{
									break;
								}
								GetWindowThreadProcessId(FindWindowHandle(null, "[" + nameFlash + "] BMx Daily"), out var processId);
								Process processById = Process.GetProcessById((int)processId);
								processById.Kill();
								num++;
								if (num >= 20)
								{
									((Form)this).Close();
								}
							}
							else
							{
								GetWindowThreadProcessId(FindWindowHandle(null, "[" + nameFlash + "] BMx Daily"), out var processId2);
								Process processById2 = Process.GetProcessById((int)processId2);
								processById2.Kill();
								delay_100ms(2);
							}
						}
						while (CheckHandleWindows("[" + nameFlash + "] BMx Daily"))
						{
							delay_100ms(50);
						}
					}
					break;
				case 486563695u:
					if (text2 == "Bắt Pet")
					{
						while (true)
						{
							if (CheckHandleWindows("[" + nameFlash + "] BMx Bắt Pet"))
							{
								AutoControl.BringToFront(FindWindowHandle(null, "[" + nameFlash + "] BMx Bắt Pet"));
								break;
							}
							bool flag4 = true;
							Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[9]
							{
								"BMx_BatPet \"",
								nameFlash,
								"\" \"",
								nameUser,
								"\" \"",
								link,
								"\" \"",
								flag4.ToString(),
								"\""
							}));
							delay_100ms(50);
							if (CheckHandleWindows("[" + nameFlash + "] BMx Bắt Pet"))
							{
								break;
							}
							GetWindowThreadProcessId(FindWindowHandle(null, "[" + nameFlash + "] BMx Bắt Pet"), out var processId8);
							Process processById8 = Process.GetProcessById((int)processId8);
							processById8.Kill();
							num++;
							if (num >= 20)
							{
								((Form)this).Close();
							}
						}
					}
					break;
				case 4245491132u:
					if (text2 == "Đổi Năng Nổ")
					{
						while (true)
						{
							if (!CheckHandleWindows("[" + nameFlash + "] BMx Nang No"))
							{
								Program.AppMain.autoRun = true;
								debugText("mở Tool Đô\u0309i Năng Nô\u0309");
								Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[9]
								{
									"BMx_NangNo \"",
									Program.AppMain.nameFlash,
									"\" \"",
									Program.AppMain.nameUser,
									"\" \"",
									Program.AppMain.link,
									"\" \"",
									Program.AppMain.autoRun.ToString(),
									"\""
								}));
								delay_100ms(50);
								if (CheckHandleWindows("[" + nameFlash + "] BMx Nang No"))
								{
									break;
								}
								GetWindowThreadProcessId(FindWindowHandle(null, "[" + nameFlash + "] BMx Nang No"), out var processId4);
								Process processById4 = Process.GetProcessById((int)processId4);
								processById4.Kill();
								num++;
								if (num >= 20)
								{
									((Form)this).Close();
								}
							}
							else
							{
								GetWindowThreadProcessId(FindWindowHandle(null, "[" + nameFlash + "] BMx Nang No"), out var processId5);
								Process processById5 = Process.GetProcessById((int)processId5);
								processById5.Kill();
								delay_100ms(2);
							}
						}
						while (CheckHandleWindows("[" + nameFlash + "] BMx Nang No"))
						{
							delay_100ms(50);
						}
					}
					break;
				case 3431945722u:
					if (text2 == "Trừ Ma")
					{
						while (true)
						{
							if (!CheckHandleWindows("[" + nameFlash + "] BMx Tru Ma"))
							{
								Program.AppMain.autoRun = true;
								debugText("mở Tool Trừ Ma");
								Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[9]
								{
									"BMx_TruMa \"",
									Program.AppMain.nameFlash,
									"\" \"",
									Program.AppMain.nameUser,
									"\" \"",
									Program.AppMain.link,
									"\" \"",
									Program.AppMain.autoRun.ToString(),
									"\""
								}));
								delay_100ms(50);
								if (CheckHandleWindows("[" + nameFlash + "] BMx Tru Ma"))
								{
									break;
								}
								GetWindowThreadProcessId(FindWindowHandle(null, "[" + nameFlash + "] BMx Tru Ma"), out var processId6);
								Process processById6 = Process.GetProcessById((int)processId6);
								processById6.Kill();
								num++;
								if (num >= 20)
								{
									((Form)this).Close();
								}
							}
							else
							{
								GetWindowThreadProcessId(FindWindowHandle(null, "[" + nameFlash + "] BMx Trư\u0300 Ma"), out var processId7);
								Process processById7 = Process.GetProcessById((int)processId7);
								processById7.Kill();
								delay_100ms(2);
							}
						}
						while (CheckHandleWindows("[" + nameFlash + "] BMx Tru Ma"))
						{
							delay_100ms(50);
						}
					}
					break;
				case 504525065u:
					if (text2 == "Train")
					{
						while (true)
						{
							if (CheckHandleWindows("[" + nameFlash + "] BMx Train"))
							{
								AutoControl.BringToFront(FindWindowHandle(null, "[" + nameFlash + "] BMx Train"));
								break;
							}
							bool flag2 = true;
							Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[9]
							{
								"BMx_Train \"",
								nameFlash,
								"\" \"",
								nameUser,
								"\" \"",
								link,
								"\" \"",
								flag2.ToString(),
								"\""
							}));
							delay_100ms(50);
							if (CheckHandleWindows("[" + nameFlash + "] BMx Train"))
							{
								break;
							}
							GetWindowThreadProcessId(FindWindowHandle(null, "[" + nameFlash + "] BMx Train"), out var processId3);
							Process processById3 = Process.GetProcessById((int)processId3);
							processById3.Kill();
							num++;
							if (num >= 20)
							{
								((Form)this).Close();
							}
						}
					}
					break;
				case 3057882787u:
					if (text2 == "Autolog-Log")
					{
						autolog_Log = true;
					}
					break;
				case 562599623u:
					if (text2 == "Trồng")
					{
						if (!CheckHandleWindows("BMx Nông Dân [" + nameFlash + "]"))
						{
							bool flag3 = true;
							Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[9]
							{
								"BMx_HaiTrongCau \"",
								nameFlash,
								"\" \"",
								nameUser,
								"\" \"",
								link,
								"\" \"Trồng\" \"",
								flag3.ToString(),
								"\""
							}));
						}
						else
						{
							AutoControl.BringToFront(FindWindowHandle(null, "BMx Nông Dân [" + nameFlash + "]"));
						}
					}
					break;
				case 1455089823u:
					if (text2 == "Câu")
					{
						if (!CheckHandleWindows("BMx Nông Dân [" + nameFlash + "]"))
						{
							bool flag = true;
							Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[9]
							{
								"BMx_HaiTrongCau \"",
								nameFlash,
								"\" \"",
								nameUser,
								"\" \"",
								link,
								"\" \"Câu\" \"",
								flag.ToString(),
								"\""
							}));
						}
						else
						{
							AutoControl.BringToFront(FindWindowHandle(null, "BMx Nông Dân [" + nameFlash + "]"));
						}
					}
					break;
				}
				runEnd(End);
				IsStop = true;
				((Form)this).Close();
			}
		}));
		task.Start();
	}

	private void logAcc(string DisplayNameLog, string linkLog)
	{
		Process val = Process.Start(linkApp + "/APPS/FlashGame.exe", linkLog);
		val.WaitForInputIdle();
		System.IntPtr intPtr = AutoControl.FindWindowHandle((string)null, "Adobe Flash Player 20");
		SetWindowPos(intPtr, 0, 20, 20, 1066, 724, 32);
		AutoControl.SendText(intPtr, DisplayNameLog);
	}

	private bool Auto_LogAcc(bool AffterJob = false, bool onlyLog = false)
	{
		//IL_0228: Unknown result type (might be due to invalid IL or missing references)
		//IL_022d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0238: Unknown result type (might be due to invalid IL or missing references)
		//IL_023d: Unknown result type (might be due to invalid IL or missing references)
		//IL_046f: Unknown result type (might be due to invalid IL or missing references)
		bool flag = false;
		if (onlyLog)
		{
			if (!CheckHandleWindows(nameFlash))
			{
				logAcc(nameFlash, link);
			}
			return true;
		}
		if (!CheckHandleWindows(nameFlash))
		{
			logAcc(nameFlash, link);
			hWnd = FindWindowHandle(null, nameFlash);
		}
		else
		{
			if (DangNhapLai == "True")
			{
				DangNhapLai = "False";
				hWnd = FindWindowHandle(null, nameFlash);
				GetWindowThreadProcessId(hWnd, out processID);
				Process processById = Process.GetProcessById((int)processID);
				processById.Kill();
				delay_100ms(10);
				hWnd = System.IntPtr.Zero;
				hWnd = FindWindowHandle(null, "Adobe Flash Player 20");
				if (hWnd != System.IntPtr.Zero)
				{
					GetWindowThreadProcessId(hWnd, out processID);
					processById = Process.GetProcessById((int)processID);
					processById.Kill();
					delay_100ms(10);
				}
				return false;
			}
			if (!(VaoLaiGame == "True") || AffterJob)
			{
				hWnd = FindWindowHandle(null, nameFlash);
				try
				{
					int num = int.Parse(KenhAuto);
					if (num >= 1 && num <= 8)
					{
						while (!ChuyenKenh(num))
						{
						}
					}
				}
				catch (System.Exception)
				{
				}
				return true;
			}
			hWnd = FindWindowHandle(null, nameFlash);
			GetWindowThreadProcessId(hWnd, out processID);
			Bay();
			Bay();
			Bay();
			delay_100ms(10);
			Xuong();
			Xuong();
			Xuong();
			PressKey("ESC");
			PressKey("ESC");
			PressKey("P");
			delay_100ms(10);
			Point? val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
			if (val.HasValue)
			{
				System.IntPtr intPtr = hWnd;
				Point value = val.Value;
				int x = ((Point)(ref value)).X;
				value = val.Value;
				AutoControl.SendDragAndDropOnPosition(intPtr, x, ((Point)(ref value)).Y - 30, 458, 290, 10, 10, 0.05);
			}
			delay_100ms(10);
			FindAndClick(hWnd, pathTacVu + "/ChienDau.png", 334, -175, "Nhân Vật");
			flag = true;
		}
		int num2 = 0;
		if (!flag)
		{
			debugText("tải game");
			while (!FindPoint(hWnd, pathKhac + "/Log_iconVPT.png").HasValue)
			{
				num2++;
				if (num2 >= 100)
				{
					return false;
				}
				delay_100ms(30);
				hWnd = FindWindowHandle(null, nameFlash);
				_ = hWnd;
				if (false)
				{
					return false;
				}
			}
		}
		debugText("đang đăng nhập");
		delay_100ms(30);
		num2 = 0;
		while (!reConnect(flag))
		{
			num2++;
			if (!autolog_Log && num2 >= 12)
			{
				return false;
			}
			debugText("kết nối - " + num2);
			delay_100ms(30);
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
		delay_100ms(100);
		return true;
	}

	private bool reConnect(bool VaoLaiGame = false)
	{
		//IL_00eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f2: Expected O, but got Unknown
		//IL_0542: Unknown result type (might be due to invalid IL or missing references)
		//IL_0547: Unknown result type (might be due to invalid IL or missing references)
		//IL_0555: Unknown result type (might be due to invalid IL or missing references)
		//IL_055a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0576: Unknown result type (might be due to invalid IL or missing references)
		//IL_057b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0589: Unknown result type (might be due to invalid IL or missing references)
		//IL_058e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0496: Unknown result type (might be due to invalid IL or missing references)
		//IL_049b: Unknown result type (might be due to invalid IL or missing references)
		//IL_04a9: Unknown result type (might be due to invalid IL or missing references)
		//IL_04ae: Unknown result type (might be due to invalid IL or missing references)
		//IL_04ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_04cf: Unknown result type (might be due to invalid IL or missing references)
		//IL_04dd: Unknown result type (might be due to invalid IL or missing references)
		//IL_04e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_014e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0153: Unknown result type (might be due to invalid IL or missing references)
		//IL_016a: Unknown result type (might be due to invalid IL or missing references)
		//IL_016f: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c4: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0202: Unknown result type (might be due to invalid IL or missing references)
		//IL_0207: Unknown result type (might be due to invalid IL or missing references)
		//IL_021e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0223: Unknown result type (might be due to invalid IL or missing references)
		//IL_025c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0261: Unknown result type (might be due to invalid IL or missing references)
		//IL_0278: Unknown result type (might be due to invalid IL or missing references)
		//IL_027d: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_02bb: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0310: Unknown result type (might be due to invalid IL or missing references)
		//IL_0315: Unknown result type (might be due to invalid IL or missing references)
		//IL_032c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0331: Unknown result type (might be due to invalid IL or missing references)
		//IL_036a: Unknown result type (might be due to invalid IL or missing references)
		//IL_036f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0386: Unknown result type (might be due to invalid IL or missing references)
		//IL_038b: Unknown result type (might be due to invalid IL or missing references)
		//IL_03c4: Unknown result type (might be due to invalid IL or missing references)
		//IL_03c9: Unknown result type (might be due to invalid IL or missing references)
		//IL_03e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_03e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0427: Unknown result type (might be due to invalid IL or missing references)
		//IL_042e: Expected O, but got Unknown
		//IL_0956: Unknown result type (might be due to invalid IL or missing references)
		//IL_095b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0966: Unknown result type (might be due to invalid IL or missing references)
		//IL_096b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c80: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cb0: Unknown result type (might be due to invalid IL or missing references)
		if (FindAndClick(hWnd, pathKhac + "/Log_OK.png", 2, 2, "OK").HasValue)
		{
			delay_100ms(25);
		}
		if (FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 2, 2, "Có").HasValue)
		{
			delay_100ms(25);
		}
		Point value;
		if (!VaoLaiGame)
		{
			if (!FindPoint(hWnd, pathKhac + "/Log_BatBuoc.png").HasValue)
			{
				return false;
			}
			Point? val = FindPoint(hWnd, pathKhac + "/Log_ChonKenh.png");
			int num = 1;
			try
			{
				num = int.Parse(KenhAuto);
			}
			catch (System.Exception)
			{
				Random val2 = new Random();
				num = val2.Next(1, 8);
			}
			if (val.HasValue)
			{
				while (true)
				{
					switch (num)
					{
					case 1:
					{
						System.IntPtr intPtr8 = hWnd;
						value = val.Value;
						int num9 = ((Point)(ref value)).X - 622 + 530;
						value = val.Value;
						AutoControl.SendClickOnPosition(intPtr8, num9, ((Point)(ref value)).Y - 227 + 268 - 30, (EMouseKey)0, 1);
						debugText("Kênh 1");
						break;
					}
					case 2:
					{
						System.IntPtr intPtr7 = hWnd;
						value = val.Value;
						int num8 = ((Point)(ref value)).X - 622 + 530;
						value = val.Value;
						AutoControl.SendClickOnPosition(intPtr7, num8, ((Point)(ref value)).Y - 227 + 301 - 30, (EMouseKey)0, 1);
						debugText("Kênh 2");
						break;
					}
					case 3:
					{
						System.IntPtr intPtr6 = hWnd;
						value = val.Value;
						int num7 = ((Point)(ref value)).X - 622 + 530;
						value = val.Value;
						AutoControl.SendClickOnPosition(intPtr6, num7, ((Point)(ref value)).Y - 227 + 336 - 30, (EMouseKey)0, 1);
						debugText("Kênh 3");
						break;
					}
					case 4:
					{
						System.IntPtr intPtr5 = hWnd;
						value = val.Value;
						int num6 = ((Point)(ref value)).X - 622 + 530;
						value = val.Value;
						AutoControl.SendClickOnPosition(intPtr5, num6, ((Point)(ref value)).Y - 227 + 370 - 30, (EMouseKey)0, 1);
						debugText("Kênh 4");
						break;
					}
					case 5:
					{
						System.IntPtr intPtr4 = hWnd;
						value = val.Value;
						int num5 = ((Point)(ref value)).X - 622 + 530;
						value = val.Value;
						AutoControl.SendClickOnPosition(intPtr4, num5, ((Point)(ref value)).Y - 227 + 404 - 30, (EMouseKey)0, 1);
						debugText("Kênh 5");
						break;
					}
					case 6:
					{
						System.IntPtr intPtr3 = hWnd;
						value = val.Value;
						int num4 = ((Point)(ref value)).X - 622 + 530;
						value = val.Value;
						AutoControl.SendClickOnPosition(intPtr3, num4, ((Point)(ref value)).Y - 227 + 438 - 30, (EMouseKey)0, 1);
						debugText("Kênh 6");
						break;
					}
					case 7:
					{
						System.IntPtr intPtr2 = hWnd;
						value = val.Value;
						int num3 = ((Point)(ref value)).X - 622 + 530;
						value = val.Value;
						AutoControl.SendClickOnPosition(intPtr2, num3, ((Point)(ref value)).Y - 227 + 471 - 30, (EMouseKey)0, 1);
						debugText("Kênh 7");
						break;
					}
					case 8:
					{
						System.IntPtr intPtr = hWnd;
						value = val.Value;
						int num2 = ((Point)(ref value)).X - 622 + 530;
						value = val.Value;
						AutoControl.SendClickOnPosition(intPtr, num2, ((Point)(ref value)).Y - 227 + 506 - 30, (EMouseKey)0, 1);
						debugText("Kênh 8");
						break;
					}
					default:
						goto IL_0413;
					}
					break;
					IL_0413:
					debugText("random");
					delay_100ms(5);
					Random val3 = new Random();
					num = val3.Next(1, 8);
				}
				delay_100ms(50);
			}
			if (Settings.Default.logAutoLog)
			{
				Point? val4 = FindAndClick(hWnd, pathKhac + "/Log_BatBuoc.png", 2, 2, "Log - bắt buộc");
				if (val4.HasValue)
				{
					System.IntPtr intPtr9 = hWnd;
					value = val4.Value;
					int num10 = ((Point)(ref value)).X - 50;
					value = val4.Value;
					AutoControl.SendClickOnPosition(intPtr9, num10, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
					System.IntPtr intPtr10 = hWnd;
					value = val4.Value;
					int num11 = ((Point)(ref value)).X - 50;
					value = val4.Value;
					AutoControl.SendClickOnPosition(intPtr10, num11, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
					delay_100ms(50);
				}
			}
			else
			{
				Point? val5 = FindAndClick(hWnd, pathKhac + "/Log_BatDau.png", 2, 2, "Log - bắt đâ\u0300u");
				if (val5.HasValue)
				{
					System.IntPtr intPtr11 = hWnd;
					value = val5.Value;
					int num12 = ((Point)(ref value)).X - 50;
					value = val5.Value;
					AutoControl.SendClickOnPosition(intPtr11, num12, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
					System.IntPtr intPtr12 = hWnd;
					value = val5.Value;
					int num13 = ((Point)(ref value)).X - 50;
					value = val5.Value;
					AutoControl.SendClickOnPosition(intPtr12, num13, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
					delay_100ms(50);
				}
			}
		}
		if (FindPoint(hWnd, pathKhac + "/Log_QuayLai.png").HasValue)
		{
			Point? val6;
			do
			{
				delay_100ms(10);
				switch (int.Parse(NhanVat))
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
				case 7:
					AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
					delay_100ms(3);
					AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
					delay_100ms(3);
					AutoControl.SendClickOnPosition(hWnd, 400, 470, (EMouseKey)0, 1);
					debugText("Nhân Vật 7");
					break;
				case 8:
					AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
					delay_100ms(3);
					AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
					delay_100ms(3);
					AutoControl.SendClickOnPosition(hWnd, 530, 470, (EMouseKey)0, 1);
					debugText("Nhân Vật 8");
					break;
				case 9:
					AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
					delay_100ms(3);
					AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
					delay_100ms(3);
					AutoControl.SendClickOnPosition(hWnd, 670, 470, (EMouseKey)0, 1);
					debugText("Nhân Vật 9");
					break;
				}
				delay_100ms(10);
				val6 = FindPoint(hWnd, pathKhac + "/Log_VaoGame.png");
			}
			while (!val6.HasValue);
			System.IntPtr intPtr13 = hWnd;
			value = val6.Value;
			int x = ((Point)(ref value)).X;
			value = val6.Value;
			AutoControl.SendClickOnPosition(intPtr13, x, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
			int num14 = 0;
			while (!FindPoint(hWnd, pathMaps + "/map.png").HasValue)
			{
				num14++;
				if (num14 >= 25 || FindPoint(hWnd, pathKhac + "/Log_RatTot.png").HasValue || FindPoint(hWnd, pathKhac + "/Log_BinhThuong.png").HasValue || FindPoint(hWnd, pathKhac + "/Log_Tot.png").HasValue)
				{
					break;
				}
				debugText("chơ\u0300 vào game1 - " + num14);
				delay_100ms(2);
			}
			num14 = 0;
			delay_100ms(10);
			while (!FindPoint(hWnd, pathMaps + "/map.png").HasValue)
			{
				num14++;
				if (num14 >= 25 || FindPoint(hWnd, pathKhac + "/Log_RatTot.png").HasValue || FindPoint(hWnd, pathKhac + "/Log_BinhThuong.png").HasValue || FindPoint(hWnd, pathKhac + "/Log_Tot.png").HasValue)
				{
					break;
				}
				debugText("chơ\u0300 vào game2 - " + num14);
				delay_100ms(2);
			}
			num14 = 0;
			delay_100ms(10);
			while (!FindPoint(hWnd, pathKhac + "/Log_RatTot.png").HasValue && !FindPoint(hWnd, pathKhac + "/Log_BinhThuong.png").HasValue && !FindPoint(hWnd, pathKhac + "/Log_Tot.png").HasValue)
			{
				num14++;
				if (num14 >= 35)
				{
					DangNhapLai = "True";
					return false;
				}
				debugText("check vào game - " + num14);
				delay_100ms(30);
			}
			num14 = 0;
			GetWindowThreadProcessId(hWnd, out processID);
			while (true)
			{
				PressKey("ESC");
				PressKey("ESC");
				Image val7 = CaptureHelper.CaptureWindow(hWnd);
				Rectangle val8 = default(Rectangle);
				((Rectangle)(ref val8)).X = 100;
				((Rectangle)(ref val8)).Y = 100;
				((Rectangle)(ref val8)).Width = 100;
				((Rectangle)(ref val8)).Height = 50;
				Bitmap val9 = CaptureHelper.CropImage(val7, val8);
				Bitmap image = ImageScanOpenCV.GetImage(pathKhac + "/checklog.png");
				if (ImageScanOpenCV.FindOutPoint(val9, image, 0.9).HasValue)
				{
					break;
				}
				num14++;
				if (num14 >= 40)
				{
					DangNhapLai = "True";
					return false;
				}
				debugText("check vào load game - " + num14);
				delay_100ms(30);
			}
			debugText("Vào Game Xong");
			delay_100ms(10);
			return true;
		}
		return false;
	}

	private void runEnd(string end)
	{
		//IL_0137: Unknown result type (might be due to invalid IL or missing references)
		//IL_013c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0147: Unknown result type (might be due to invalid IL or missing references)
		//IL_014c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0577: Unknown result type (might be due to invalid IL or missing references)
		//IL_057c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0587: Unknown result type (might be due to invalid IL or missing references)
		//IL_058c: Unknown result type (might be due to invalid IL or missing references)
		if (!CheckHandleWindows(nameFlash))
		{
			return;
		}
		if (!(end == "Off"))
		{
			if (!(end == "BugOnl"))
			{
				if (!(end == "Ha\u0301i-Trô\u0300ng-Câu"))
				{
					if (!(end == "Trồng-Nông Trại"))
					{
						if (!(end == "Câu Cá"))
						{
							if (end == "Hái Thuốc")
							{
								if (!CheckHandleWindows("BMx Nông Dân [" + nameFlash + "]"))
								{
									bool flag = true;
									Process val = Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[9]
									{
										"BMx_HaiTrongCau \"",
										nameFlash,
										"\" \"",
										nameUser,
										"\" \"",
										link,
										"\" \"Hái\" \"",
										flag.ToString(),
										"\""
									}));
									val.WaitForInputIdle();
								}
								else
								{
									AutoControl.BringToFront(FindWindowHandle(null, "BMx Nông Dân [" + nameFlash + "]"));
								}
							}
						}
						else if (!CheckHandleWindows("BMx Nông Dân [" + nameFlash + "]"))
						{
							bool flag2 = true;
							Process val2 = Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[9]
							{
								"BMx_HaiTrongCau \"",
								nameFlash,
								"\" \"",
								nameUser,
								"\" \"",
								link,
								"\" \"Câu\" \"",
								flag2.ToString(),
								"\""
							}));
							val2.WaitForInputIdle();
						}
						else
						{
							AutoControl.BringToFront(FindWindowHandle(null, "BMx Nông Dân [" + nameFlash + "]"));
						}
					}
					else if (!CheckHandleWindows("BMx Nông Dân [" + nameFlash + "]"))
					{
						bool flag3 = true;
						Process val3 = Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[9]
						{
							"BMx_HaiTrongCau \"",
							nameFlash,
							"\" \"",
							nameUser,
							"\" \"",
							link,
							"\" \"Trồng\" \"",
							flag3.ToString(),
							"\""
						}));
						val3.WaitForInputIdle();
					}
					else
					{
						AutoControl.BringToFront(FindWindowHandle(null, "BMx Nông Dân [" + nameFlash + "]"));
					}
				}
				else if (!CheckHandleWindows("BMx Nông Dân [" + nameFlash + "]"))
				{
					bool flag4 = true;
					Process val4 = Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[9]
					{
						"BMx_HaiTrongCau \"",
						nameFlash,
						"\" \"",
						nameUser,
						"\" \"",
						link,
						"\" \"Trồng\" \"",
						flag4.ToString(),
						"\""
					}));
					val4.WaitForInputIdle();
				}
				else
				{
					AutoControl.BringToFront(FindWindowHandle(null, "BMx Nông Dân [" + nameFlash + "]"));
				}
				return;
			}
			hWnd = FindWindowHandle(null, nameFlash);
			PressKey("ESC");
			PressKey("ESC");
			PressKey("P");
			delay_100ms(10);
			Point? val5 = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
			Point value;
			if (val5.HasValue)
			{
				System.IntPtr intPtr = hWnd;
				value = val5.Value;
				int x = ((Point)(ref value)).X;
				value = val5.Value;
				AutoControl.SendDragAndDropOnPosition(intPtr, x, ((Point)(ref value)).Y - 30, 458, 290, 10, 10, 0.05);
			}
			delay_100ms(10);
			FindAndClick(hWnd, pathTacVu + "/ChienDau.png", 334, -175, "Nhân Vật");
			delay_100ms(30);
			int num = 0;
			while (!FindPoint(hWnd, pathKhac + "/Log_QuayLai.png").HasValue)
			{
				num++;
				if (num >= 20)
				{
					break;
				}
				debugText("check " + num);
				delay_100ms(5);
			}
			delay_100ms(20);
			int num2 = 0;
			int num3 = 0;
			switch (int.Parse(NhanVat))
			{
			case 1:
				AutoControl.SendClickOnPosition(hWnd, 291, 465, (EMouseKey)0, 1);
				delay_100ms(3);
				num2 = 400;
				num3 = 500;
				debugText("Nhân Vật 1");
				break;
			case 2:
				AutoControl.SendClickOnPosition(hWnd, 291, 465, (EMouseKey)0, 1);
				delay_100ms(3);
				num2 = 530;
				num3 = 500;
				debugText("Nhân Vật 2");
				break;
			case 3:
				AutoControl.SendClickOnPosition(hWnd, 291, 465, (EMouseKey)0, 1);
				delay_100ms(3);
				num2 = 670;
				num3 = 500;
				debugText("Nhân Vật 3");
				break;
			case 4:
				AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
				delay_100ms(3);
				num2 = 400;
				num3 = 500;
				debugText("Nhân Vật 4");
				break;
			case 5:
				AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
				delay_100ms(3);
				num2 = 530;
				num3 = 500;
				debugText("Nhân Vật 5");
				break;
			case 6:
				AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
				delay_100ms(3);
				num2 = 670;
				num3 = 500;
				debugText("Nhân Vật 6");
				break;
			case 7:
				AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
				delay_100ms(3);
				AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
				delay_100ms(3);
				num2 = 400;
				num3 = 500;
				debugText("Nhân Vật 7");
				break;
			case 8:
				AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
				delay_100ms(3);
				AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
				delay_100ms(3);
				num2 = 530;
				num3 = 500;
				debugText("Nhân Vật 8");
				break;
			case 9:
				AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
				delay_100ms(3);
				AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
				delay_100ms(3);
				num2 = 670;
				num3 = 500;
				debugText("Nhân Vật 9");
				break;
			}
			delay_100ms(20);
			AutoControl.SendClickOnPosition(hWnd, num2, num3 - 30, (EMouseKey)0, 1);
			delay_100ms(20);
			AutoControl.SendClickOnPosition(hWnd, num2, num3 - 30, (EMouseKey)0, 1);
			delay_100ms(10);
			Point? val6 = FindPoint(hWnd, pathKhac + "/Log_VaoGame.png");
			if (val6.HasValue)
			{
				System.IntPtr intPtr2 = hWnd;
				value = val6.Value;
				int x2 = ((Point)(ref value)).X;
				value = val6.Value;
				AutoControl.SendClickOnPosition(intPtr2, x2, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
			}
			delay_100ms(25);
			GetWindowThreadProcessId(hWnd, out processID);
			Process processById = Process.GetProcessById((int)processID);
			processById.Kill();
		}
		else
		{
			hWnd = FindWindowHandle(null, nameFlash);
			GetWindowThreadProcessId(hWnd, out processID);
			Process processById2 = Process.GetProcessById((int)processID);
			processById2.Kill();
		}
	}

	private void AutoLogAndRun_FormClosed(object sender, FormClosedEventArgs e)
	{
		//IL_000f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0019: Expected O, but got Unknown
		Login login = new Login();
		((Form)login).Closed += (EventHandler)([CompilerGenerated] (object? s, EventArgs args) =>
		{
			((Form)this).Close();
		});
	}

	private bool Xuong()
	{
		FindsAndClick(hWnd, pathTacVu + "/MuiTenIcon.png", 0, 0, "Show");
		FindsAndClick(hWnd, pathTacVu + "/MuiTenIcon.png", 0, 0, "Show");
		if (FindPoint(hWnd, pathTacVu + "/Xuong.png").HasValue)
		{
			PressKey("F");
			delay_100ms(10);
			return true;
		}
		if (FindPoint(hWnd, pathTacVu + "/Bay.png").HasValue)
		{
			return true;
		}
		return false;
	}

	private bool Bay()
	{
		FindsAndClick(hWnd, pathTacVu + "/MuiTenIcon.png", 0, 0, "Show");
		FindsAndClick(hWnd, pathTacVu + "/MuiTenIcon.png", 0, 0, "Show");
		if (FindPoint(hWnd, pathTacVu + "/Bay.png").HasValue)
		{
			PressKey("F");
			delay_100ms(10);
			return true;
		}
		if (FindPoint(hWnd, pathTacVu + "/Xuong.png").HasValue)
		{
			return true;
		}
		return false;
	}

	private bool ChuyenKenh(int chonKenh)
	{
		//IL_00ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_00b2: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c9: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_0107: Unknown result type (might be due to invalid IL or missing references)
		//IL_010c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0123: Unknown result type (might be due to invalid IL or missing references)
		//IL_0128: Unknown result type (might be due to invalid IL or missing references)
		//IL_0161: Unknown result type (might be due to invalid IL or missing references)
		//IL_0166: Unknown result type (might be due to invalid IL or missing references)
		//IL_017d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0182: Unknown result type (might be due to invalid IL or missing references)
		//IL_01bb: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_01dc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0215: Unknown result type (might be due to invalid IL or missing references)
		//IL_021a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0231: Unknown result type (might be due to invalid IL or missing references)
		//IL_0236: Unknown result type (might be due to invalid IL or missing references)
		//IL_026f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0274: Unknown result type (might be due to invalid IL or missing references)
		//IL_028b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0290: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c9: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_0320: Unknown result type (might be due to invalid IL or missing references)
		//IL_0325: Unknown result type (might be due to invalid IL or missing references)
		//IL_033c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0341: Unknown result type (might be due to invalid IL or missing references)
		//IL_05b7: Unknown result type (might be due to invalid IL or missing references)
		PressKey("ESC");
		delay_100ms(3);
		PressKey("ESC");
		delay_100ms(3);
		SendClickOnPosition(hWnd, 882, 54, (EMouseKey)0);
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

	private void checkFlash()
	{
		Process val = Process.Start(Application.StartupPath + "/APPS/FlashGame.exe");
		val.WaitForInputIdle();
		System.IntPtr intPtr = AutoControl.FindWindowHandle((string)null, "Adobe Flash Player 20");
		SetWindowPos(intPtr, 0, 20, 20, 400, 100, 32);
		AutoControl.SendText(intPtr, "CheckFlash_isOK");
		delay_100ms(10);
		val.Kill();
		delay_100ms(2);
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
		//IL_0038: Unknown result type (might be due to invalid IL or missing references)
		//IL_007e: Unknown result type (might be due to invalid IL or missing references)
		//IL_00cc: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d6: Expected O, but got Unknown
		//IL_00e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_010a: Unknown result type (might be due to invalid IL or missing references)
		//IL_013e: Unknown result type (might be due to invalid IL or missing references)
		//IL_015c: Unknown result type (might be due to invalid IL or missing references)
		//IL_019f: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a9: Expected O, but got Unknown
		//IL_01da: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e4: Expected O, but got Unknown
		//IL_01ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f7: Expected O, but got Unknown
		ComponentResourceManager val = new ComponentResourceManager(typeof(AutoLogAndRun));
		textBox1 = new TextBox();
		label1 = new Label();
		((Control)this).SuspendLayout();
		((Control)textBox1).Location = new Point(12, 12);
		((TextBoxBase)textBox1).Multiline = true;
		((Control)textBox1).Name = "textBox1";
		((TextBoxBase)textBox1).ReadOnly = true;
		((Control)textBox1).Size = new Size(508, 207);
		((Control)textBox1).TabIndex = 0;
		((Control)textBox1).Text = ((ResourceManager)val).GetString("textBox1.Text");
		((Control)label1).AutoSize = true;
		((Control)label1).Font = new Font("Segoe UI", 11f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label1).Location = new Point(12, 222);
		((Control)label1).Name = "label1";
		((Control)label1).Size = new Size(82, 20);
		((Control)label1).TabIndex = 1;
		((Control)label1).Text = "Tra\u0323ng Tha\u0301i!";
		((ContainerControl)this).AutoScaleDimensions = new SizeF(7f, 15f);
		((ContainerControl)this).AutoScaleMode = (AutoScaleMode)1;
		((Form)this).ClientSize = new Size(532, 246);
		((Control)this).Controls.Add((Control)(object)label1);
		((Control)this).Controls.Add((Control)(object)textBox1);
		((Form)this).FormBorderStyle = (FormBorderStyle)1;
		((Form)this).Icon = (Icon)((ResourceManager)val).GetObject("$this.Icon");
		((Form)this).MaximizeBox = false;
		((Control)this).Name = "AutoLogAndRun";
		((Form)this).StartPosition = (FormStartPosition)1;
		((Control)this).Text = "AutoLogAndRun";
		((Form)this).FormClosed += new FormClosedEventHandler(AutoLogAndRun_FormClosed);
		((Form)this).Load += new EventHandler(AutoLogAndRun_Load);
		((Control)this).ResumeLayout(false);
		((Control)this).PerformLayout();
	}
}
