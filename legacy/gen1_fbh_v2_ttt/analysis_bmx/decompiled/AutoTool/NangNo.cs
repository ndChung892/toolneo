using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using AutoTool.Properties;
using KAutoHelper;

namespace AutoTool;

public class NangNo : Form
{
	public static string linkApp = Application.StartupPath;

	public string pathAutoPhuBan = ((object)linkApp).ToString() + "Anh/AutoPhuBan";

	public string pathTacVu = ((object)linkApp).ToString() + "Anh/TacVu";

	public string pathAutoNhanNVPB = ((object)linkApp).ToString() + "Anh/NhanNVPB";

	public string pathKhac = ((object)linkApp).ToString() + "Anh/Khac";

	public string pathMaps = ((object)linkApp).ToString() + "Anh/Maps";

	public string pathData = linkApp + "/AccData";

	public string pathTruMa = ((object)linkApp).ToString() + "Anh/TruMa";

	public Bitmap AvatarNV;

	private System.IntPtr hWnd = System.IntPtr.Zero;

	public bool IsPause = false;

	public bool IsPauseTV_PT = true;

	public bool IsPauseNN = true;

	private System.Threading.Tasks.Task T_NN;

	private System.Threading.Tasks.Task T_Chat;

	private System.Threading.Tasks.Task T_Tele;

	private System.Threading.Tasks.Task T_pet;

	private System.Threading.Tasks.Task T_TV;

	public uint processID;

	private uint[] offset_ToaDoX;

	private uint[] offset_ToaDoY;

	private uint[] offset_FPS;

	private uint myPointer;

	public int ViTriNhanVat_X;

	public int ViTriNhanVat_Y;

	public int VIP;

	public string accMain;

	public bool autoRun;

	public string nameUser;

	public string pathTheme;

	private string fileName;

	private FontConverter fC;

	private DataGridViewCellStyle TableThemeColor;

	private ImageLayout layout;

	public int TieuDe;

	private uint myPointer_map_id;

	private uint[] offset_map_id;

	private uint myPointer_map_load_data;

	private uint[] offset_map_load;

	private uint[] offset_map_data;

	private double dataMapOld;

	private IContainer components;

	private GroupBox groupBox1;

	private PictureBox pictureBox1;

	private NumericUpDown numericUpDownFPS;

	private Button buttonReset;

	private Label label2;

	private Label label1;

	private CheckBox checkBoxNL5;

	private TextBox textBox1;

	private ComboBox comboBoxNL5;

	private CheckBox checkBoxNL4;

	private ComboBox comboBoxNL4;

	private CheckBox checkBoxRuongCam;

	private GroupBox groupBox2;

	private CheckBox ButtonRunNN;

	private Label label9;

	private Label label17;

	private Label label18;

	private Label label4;

	private Button buttonSave;

	private Button buttonPause;

	[field: CompilerGenerated]
	[field: DebuggerBrowsable(/*Could not decode attribute arguments.*/)]
	public bool IsStop
	{
		[CompilerGenerated]
		get;
		[CompilerGenerated]
		set;
	}

	public NangNo()
	{
		//IL_0169: Unknown result type (might be due to invalid IL or missing references)
		//IL_0173: Expected O, but got Unknown
		//IL_0174: Unknown result type (might be due to invalid IL or missing references)
		//IL_017e: Expected O, but got Unknown
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
		autoRun = false;
		nameUser = "";
		pathTheme = linkApp + "/Theme";
		fC = new FontConverter();
		TableThemeColor = new DataGridViewCellStyle();
		TieuDe = 30;
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

	private bool FindItem(System.IntPtr hWnd, string pathItem, string nameItem)
	{
		//IL_003d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0042: Unknown result type (might be due to invalid IL or missing references)
		//IL_004c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0051: Unknown result type (might be due to invalid IL or missing references)
		//IL_0093: Unknown result type (might be due to invalid IL or missing references)
		//IL_0098: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0136: Unknown result type (might be due to invalid IL or missing references)
		//IL_013b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0145: Unknown result type (might be due to invalid IL or missing references)
		//IL_014a: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a1: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a6: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b5: Unknown result type (might be due to invalid IL or missing references)
		int num = 0;
		while (true)
		{
			debugText("Tìm Item " + nameItem);
			Point? val = FindPoint(hWnd, pathAutoPhuBan + "/MuiTenIcon.png");
			Point value;
			if (val.HasValue)
			{
				value = val.Value;
				int x = ((Point)(ref value)).X;
				value = val.Value;
				AutoControl.SendClickOnPosition(hWnd, x, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
				debugText("Mở bảng icon");
				delay_100ms(5);
			}
			val = FindPoint(hWnd, pathItem);
			if (val.HasValue)
			{
				value = val.Value;
				int x2 = ((Point)(ref value)).X;
				value = val.Value;
				AutoControl.SendClickOnPosition(hWnd, x2, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
				debugText("Mở " + nameItem);
				delay_100ms(5);
				num = 0;
				return true;
			}
			val = FindPoint(hWnd, pathAutoPhuBan + "/NutXuong.png");
			num++;
			if (num >= 4)
			{
				debugText("Không Tìm Thấy Item " + nameItem + " Sau 4 Lần Check");
				break;
			}
			if (val.HasValue)
			{
				value = val.Value;
				int x3 = ((Point)(ref value)).X;
				value = val.Value;
				AutoControl.SendClickOnPosition(hWnd, x3, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
				debugText("Nhấn nút xuống");
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
		((TextBoxBase)textBox1).AppendText(x + "\r\n");
	}

	private void PhuToiMap(System.IntPtr hWnd, string pathMap, int offsetX, int offsetY, string textDebug)
	{
		int num = int.Parse(pathMap.Substring(pathMap.Length - 5, 1));
		string text = pathMap.Substring(0, pathMap.Length - 5);
		string pathCanTim = text + (num + 1) + ".png";
		if (!FindPoint(hWnd, pathCanTim).HasValue)
		{
			PressKey("M");
			debugText("M : mở bản đồ thế giới");
			delay_100ms(2);
			FindAndClick(hWnd, pathMaps + "/ChuyenMap2.png", 560, 460, "trang 1");
			delay_100ms(1);
			debugText("Tìm " + textDebug);
			FindAndClick(hWnd, pathMap, offsetX, offsetY, "Phù Vào " + textDebug);
			delay_100ms(5);
			PressKey("Enter");
			debugText("Đợi Phù Xong");
			while (!WaitAvatar(hWnd))
			{
			}
			debugText("Đã Đến Thành");
			delay_100ms(30);
			FindAndClick(hWnd, pathTacVu + "/GuiChat.png", 2, 2, "Gửi Chat");
		}
		else
		{
			debugText("Đang Ở " + textDebug);
			PressKey("ESC");
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
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)80);
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
		debugText("Đã Nhấn " + x);
		delay2_100ms(5);
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

	private void Tele(double X, double Y)
	{
		//IL_00eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f0: Unknown result type (might be due to invalid IL or missing references)
		//IL_0101: Unknown result type (might be due to invalid IL or missing references)
		//IL_0106: Unknown result type (might be due to invalid IL or missing references)
		//IL_012d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0132: Unknown result type (might be due to invalid IL or missing references)
		//IL_0143: Unknown result type (might be due to invalid IL or missing references)
		//IL_0148: Unknown result type (might be due to invalid IL or missing references)
		//IL_016f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0174: Unknown result type (might be due to invalid IL or missing references)
		//IL_0185: Unknown result type (might be due to invalid IL or missing references)
		//IL_018a: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c7: Unknown result type (might be due to invalid IL or missing references)
		//IL_01cc: Unknown result type (might be due to invalid IL or missing references)
		X *= 10.0;
		Y *= 10.0;
		delay_100ms(10);
		debugText("Đi Đến Tọa Độ Chỉ Định");
		bool flag = WriteMemoryData(processID, myPointer, offset_ToaDoX, X);
		bool flag2 = WriteMemoryData(processID, myPointer, offset_ToaDoY, Y);
		while (!flag || !flag2)
		{
			flag = WriteMemoryData(processID, myPointer, offset_ToaDoX, X);
			flag2 = WriteMemoryData(processID, myPointer, offset_ToaDoY, Y);
			delay_100ms(5);
		}
		delay_100ms(5);
		PressKey("P");
		Point? val = FindPoint(hWnd, pathTacVu + "/ChienDau.png");
		System.IntPtr intPtr = hWnd;
		Point value = val.Value;
		int num = ((Point)(ref value)).X + 200;
		value = val.Value;
		AutoControl.SendClickOnPosition(intPtr, num, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
		delay_100ms(2);
		System.IntPtr intPtr2 = hWnd;
		value = val.Value;
		int num2 = ((Point)(ref value)).X + 200;
		value = val.Value;
		AutoControl.SendClickOnPosition(intPtr2, num2, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
		delay_100ms(5);
		System.IntPtr intPtr3 = hWnd;
		value = val.Value;
		int num3 = ((Point)(ref value)).X + 200;
		value = val.Value;
		AutoControl.SendClickOnPosition(intPtr3, num3, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
		delay_100ms(2);
		System.IntPtr intPtr4 = hWnd;
		value = val.Value;
		int num4 = ((Point)(ref value)).X + 200;
		value = val.Value;
		AutoControl.SendClickOnPosition(intPtr4, num4, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
		delay_100ms(5);
		PressKey("ESC");
		AutoControl.SendClickOnPosition(hWnd, 620, 330, (EMouseKey)0, 1);
		delay_100ms(10);
	}

	private void DoiDiemNangNo()
	{
		//IL_002c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0032: Invalid comparison between Unknown and I4
		//IL_00a0: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a6: Invalid comparison between Unknown and I4
		//IL_08ac: Unknown result type (might be due to invalid IL or missing references)
		//IL_08b2: Invalid comparison between Unknown and I4
		int num = 0;
		bool flag = false;
		Xuong();
		Xuong();
		Xuong();
		PressKey("ESC");
		if ((int)checkBoxRuongCam.CheckState == 1)
		{
			PressKey("Z");
			FindAndClick(hWnd, pathKhac + "/NangNo_icon.png", 5, 1, "Mở Năng Nổ");
			FindAndClick(hWnd, pathKhac + "/NangNo_RuongCam.png", 137, 10, "Nhận Rương Cam");
		}
		int num2 = 0;
		int num3 = 0;
		while ((int)checkBoxNL5.CheckState == 1)
		{
			string text = ((Control)comboBoxNL5).Text;
			string text2 = text;
			switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text2))
			{
			case 4235749110u:
				if (!(text2 == "Pha Lê"))
				{
					break;
				}
				goto IL_022b;
			case 4165754756u:
				if (!(text2 == "Gấm Vóc"))
				{
					break;
				}
				goto IL_022b;
			case 2458332588u:
				if (!(text2 == "Da Thú"))
				{
					break;
				}
				goto IL_022b;
			case 3389700338u:
				if (!(text2 == "Gỗ Tốt"))
				{
					break;
				}
				goto IL_022b;
			case 1221161470u:
				if (!(text2 == "Kim Loại Hiếm"))
				{
					break;
				}
				goto IL_022b;
			case 3368508570u:
				if (!(text2 == "Ngọc"))
				{
					break;
				}
				goto IL_024e;
			case 109479093u:
				if (!(text2 == "Vải"))
				{
					break;
				}
				goto IL_024e;
			case 3922118883u:
				if (!(text2 == "Gỗ"))
				{
					break;
				}
				goto IL_024e;
			case 1573425055u:
				if (!(text2 == "Kim Loại"))
				{
					break;
				}
				goto IL_024e;
			case 1688086040u:
				{
					if (!(text2 == "Lông Thú"))
					{
						break;
					}
					goto IL_024e;
				}
				IL_024e:
				flag = false;
				PhuToiMap2("Tinh Linh Thành", 252.0, 56.0);
				break;
				IL_022b:
				flag = true;
				PhuToiMap2("Bàng Bối Thành", 179.0, 145.0);
				break;
			}
			while (true)
			{
				num2 = 0;
				if (flag)
				{
					while (!FindPoint(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png").HasValue)
					{
						num2++;
						if (num2 >= 10)
						{
							goto end_IL_0273;
						}
						AutoControl.SendClickOnPosition(hWnd, 685, 170, (EMouseKey)0, 1);
						delay2_100ms(5);
						AutoControl.SendClickOnPosition(hWnd, 685, 338, (EMouseKey)0, 1);
						delay2_100ms(5);
					}
				}
				else
				{
					while (!FindPoint(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png").HasValue)
					{
						num2++;
						if (num2 < 10)
						{
							AutoControl.SendClickOnPosition(hWnd, 817, 570, (EMouseKey)0, 1);
							delay2_100ms(5);
							AutoControl.SendClickOnPosition(hWnd, 817, 461, (EMouseKey)0, 1);
							delay2_100ms(5);
							continue;
						}
						goto IL_0370;
					}
				}
				string text3 = ((Control)comboBoxNL5).Text;
				string text4 = text3;
				switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text4))
				{
				case 4235749110u:
					if (text4 == "Pha Lê")
					{
						FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -112, "Pha Lê");
					}
					break;
				case 4165754756u:
					if (text4 == "Gấm Vóc")
					{
						FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -92, "Gấm Vóc");
					}
					break;
				case 2458332588u:
					if (text4 == "Da Thú")
					{
						FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -62, "Da Thú");
					}
					break;
				case 3389700338u:
					if (text4 == "Gỗ Tốt")
					{
						FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -42, "Gỗ Tốt");
					}
					break;
				case 1221161470u:
					if (text4 == "Kim Loại Hiếm")
					{
						FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -22, "Kim Loại Hiếm");
					}
					break;
				case 3368508570u:
					if (text4 == "Ngọc")
					{
						FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -112, "Ngọc");
					}
					break;
				case 109479093u:
					if (text4 == "Vải")
					{
						FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -92, "Vải");
					}
					break;
				case 3922118883u:
					if (text4 == "Gỗ")
					{
						FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -62, "Gỗ");
					}
					break;
				case 1573425055u:
					if (text4 == "Kim Loại")
					{
						FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -42, "Kim Loại");
					}
					break;
				case 1688086040u:
					if (text4 == "Lông Thú")
					{
						FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -22, "Lông Thú");
					}
					break;
				}
				debugText("Nhận Nhiệm Vụ");
				if (!FindAndClick(hWnd, pathAutoNhanNVPB + "/Nhan.png", 1, 1, "Nhận").HasValue)
				{
					debugText("Không Tìm Thấy Nút Nhận");
				}
				delay_100ms(5);
				debugText("Trả Nhiệm Vụ");
				if (FindAndClick(hWnd, pathAutoNhanNVPB + "/Xong.png", 1, 1, "Xong").HasValue)
				{
					num = ((!flag) ? (num + 30) : (num + 40));
					((Control)label9).Text = "Kim Phiếu: " + num;
					continue;
				}
				delay2_100ms(10);
				if (!FindPoint(hWnd, pathKhac + "/NangNo_Huy2.png").HasValue)
				{
					debugText("Không Tìm Thấy Nút Xong");
					PressKey("ESC");
					num3++;
					if (num3 < 3)
					{
						continue;
					}
				}
				goto IL_0894;
				continue;
				end_IL_0273:
				break;
			}
			PhuToiMap2("Quyến Cố Thành", 115.0, 125.0);
			AutoControl.SendClickOnPosition(hWnd, 685, 470, (EMouseKey)0, 1);
			delay2_100ms(5);
			continue;
			IL_0370:
			PhuToiMap2("Quyến Cố Thành", 115.0, 125.0);
			AutoControl.SendClickOnPosition(hWnd, 685, 470, (EMouseKey)0, 1);
			delay2_100ms(5);
			continue;
			IL_0894:
			debugText("Đổi NL Cấp 5 Xong");
			break;
		}
		num3 = 0;
		while ((int)checkBoxNL4.CheckState == 1)
		{
			string text5 = ((Control)comboBoxNL4).Text;
			string text6 = text5;
			switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text6))
			{
			case 4235749110u:
				if (!(text6 == "Pha Lê"))
				{
					break;
				}
				goto IL_0a37;
			case 4165754756u:
				if (!(text6 == "Gấm Vóc"))
				{
					break;
				}
				goto IL_0a37;
			case 2458332588u:
				if (!(text6 == "Da Thú"))
				{
					break;
				}
				goto IL_0a37;
			case 3389700338u:
				if (!(text6 == "Gỗ Tốt"))
				{
					break;
				}
				goto IL_0a37;
			case 1221161470u:
				if (!(text6 == "Kim Loại Hiếm"))
				{
					break;
				}
				goto IL_0a37;
			case 3368508570u:
				if (!(text6 == "Ngọc"))
				{
					break;
				}
				goto IL_0a5a;
			case 109479093u:
				if (!(text6 == "Vải"))
				{
					break;
				}
				goto IL_0a5a;
			case 3922118883u:
				if (!(text6 == "Gỗ"))
				{
					break;
				}
				goto IL_0a5a;
			case 1573425055u:
				if (!(text6 == "Kim Loại"))
				{
					break;
				}
				goto IL_0a5a;
			case 1688086040u:
				{
					if (!(text6 == "Lông Thú"))
					{
						break;
					}
					goto IL_0a5a;
				}
				IL_0a5a:
				flag = false;
				PhuToiMap2("Đông Huyền Thành", 108.0, 24.0);
				break;
				IL_0a37:
				flag = true;
				PhuToiMap2("Tiên Lạp Thành", 112.0, 234.0);
				break;
			}
			while (true)
			{
				num2 = 0;
				if (flag)
				{
					while (!FindPoint(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png").HasValue)
					{
						num2++;
						if (num2 < 10)
						{
							AutoControl.SendClickOnPosition(hWnd, 600, 370, (EMouseKey)0, 1);
							delay2_100ms(5);
							AutoControl.SendClickOnPosition(hWnd, 717, 501, (EMouseKey)0, 1);
							delay2_100ms(5);
							continue;
						}
						goto IL_0aa6;
					}
				}
				else
				{
					while (!FindPoint(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png").HasValue)
					{
						num2++;
						if (num2 < 10)
						{
							AutoControl.SendClickOnPosition(hWnd, 200, 296, (EMouseKey)0, 1);
							delay2_100ms(5);
							AutoControl.SendClickOnPosition(hWnd, 389, 296, (EMouseKey)0, 1);
							delay2_100ms(5);
							continue;
						}
						goto IL_0b7c;
					}
				}
				string text7 = ((Control)comboBoxNL4).Text;
				string text8 = text7;
				switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text8))
				{
				case 4235749110u:
					if (text8 == "Pha Lê")
					{
						FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -112, "Pha Lê");
					}
					break;
				case 4165754756u:
					if (text8 == "Gấm Vóc")
					{
						FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -92, "Gấm Vóc");
					}
					break;
				case 2458332588u:
					if (text8 == "Da Thú")
					{
						FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -62, "Da Thú");
					}
					break;
				case 3389700338u:
					if (text8 == "Gỗ Tốt")
					{
						FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -42, "Gỗ Tốt");
					}
					break;
				case 1221161470u:
					if (text8 == "Kim Loại Hiếm")
					{
						FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -22, "Kim Loại Hiếm");
					}
					break;
				case 3368508570u:
					if (text8 == "Ngọc")
					{
						FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -112, "Ngọc");
					}
					break;
				case 109479093u:
					if (text8 == "Vải")
					{
						FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -92, "Vải");
					}
					break;
				case 3922118883u:
					if (text8 == "Gỗ")
					{
						FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -62, "Gỗ");
					}
					break;
				case 1573425055u:
					if (text8 == "Kim Loại")
					{
						FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -42, "Kim Loại");
					}
					break;
				case 1688086040u:
					if (text8 == "Lông Thú")
					{
						FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -22, "Lông Thú");
					}
					break;
				}
				debugText("Nhận Nhiệm Vụ");
				if (!FindAndClick(hWnd, pathAutoNhanNVPB + "/Nhan.png", 1, 1, "Nhận").HasValue)
				{
					debugText("Không Tìm Thấy Nút Nhận");
				}
				delay_100ms(5);
				debugText("Trả Nhiệm Vụ");
				if (!FindAndClick(hWnd, pathAutoNhanNVPB + "/Xong.png", 1, 1, "Xong").HasValue)
				{
					delay2_100ms(10);
					if (!FindPoint(hWnd, pathKhac + "/NangNo_Huy2.png").HasValue)
					{
						debugText("Không Tìm Thấy Nút Xong");
						PressKey("ESC");
						num3++;
						if (num3 < 3)
						{
							continue;
						}
					}
					debugText("Đổi NL Cấp 4 Xong");
					return;
				}
				num = ((!flag) ? (num + 6) : (num + 8));
				((Control)label9).Text = "Kim Phiếu: " + num;
				continue;
				IL_0b7c:
				PhuToiMap2("Quyến Cố Thành", 115.0, 125.0);
				AutoControl.SendClickOnPosition(hWnd, 685, 470, (EMouseKey)0, 1);
				delay2_100ms(5);
				break;
				IL_0aa6:
				PhuToiMap2("Quyến Cố Thành", 115.0, 125.0);
				AutoControl.SendClickOnPosition(hWnd, 685, 470, (EMouseKey)0, 1);
				delay2_100ms(5);
				break;
			}
		}
	}

	private unsafe void HideIconECT()
	{
		//IL_0060: Unknown result type (might be due to invalid IL or missing references)
		//IL_0065: Unknown result type (might be due to invalid IL or missing references)
		//IL_006f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0074: Unknown result type (might be due to invalid IL or missing references)
		//IL_00df: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ee: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_015e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0163: Unknown result type (might be due to invalid IL or missing references)
		//IL_016d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0172: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a9: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ae: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b8: Unknown result type (might be due to invalid IL or missing references)
		//IL_02bd: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e8: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f8: Unknown result type (might be due to invalid IL or missing references)
		//IL_01fd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0225: Unknown result type (might be due to invalid IL or missing references)
		//IL_022a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0328: Unknown result type (might be due to invalid IL or missing references)
		//IL_032d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0337: Unknown result type (might be due to invalid IL or missing references)
		//IL_033c: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_03b2: Unknown result type (might be due to invalid IL or missing references)
		//IL_03bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_03c4: Unknown result type (might be due to invalid IL or missing references)
		AutoControl.SendKeyBoardPress(hWnd, (VKeys)27);
		debugText("ESC");
		delay_100ms(1);
		debugText("Ản Bảng Nhiệm Vụ Nhanh");
		Point? val = FindPoint(hWnd, pathTacVu + "/TatNhiemVu.png");
		Point val2;
		if (val.HasValue)
		{
			System.IntPtr intPtr = hWnd;
			val2 = val.Value;
			int x = ((Point)(ref val2)).X;
			val2 = val.Value;
			AutoControl.SendClickOnPosition(intPtr, x, ((Point)(ref val2)).Y - 30, (EMouseKey)0, 1);
			debugText("Đã tắt bảng Nhiệm Vụ Nhanh");
			delay_100ms(5);
		}
		else
		{
			debugText("Không Thấy Bảng Nhiệm Vụ Nhanh");
		}
		val = FindPoint(hWnd, pathTacVu + "/AnSkill.png");
		if (val.HasValue)
		{
			System.IntPtr intPtr2 = hWnd;
			val2 = val.Value;
			int x2 = ((Point)(ref val2)).X;
			val2 = val.Value;
			AutoControl.SendClickOnPosition(intPtr2, x2, ((Point)(ref val2)).Y - 30, (EMouseKey)0, 1);
			debugText("Đã Ẩn Thanh Skill");
			delay_100ms(5);
		}
		else
		{
			debugText("Không Thấy Thanh Skill");
		}
		val = FindPoint(hWnd, pathTacVu + "/MuiTenThietLap1.png");
		if (val.HasValue)
		{
			System.IntPtr intPtr3 = hWnd;
			val2 = val.Value;
			int x3 = ((Point)(ref val2)).X;
			val2 = val.Value;
			AutoControl.SendClickOnPosition(intPtr3, x3, ((Point)(ref val2)).Y - 30, (EMouseKey)0, 1);
			debugText("Đã Ẩn Cụm Thiết Lập");
			delay_100ms(5);
		}
		else
		{
			debugText("Không Thấy Thanh Skill");
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
				string text = i.ToString();
				val2 = val3[i];
				debugText("Ẩn Lần " + text + "tại " + ((object)(*(Point*)(&val2))/*cast due to .constrained prefix*/).ToString());
				delay_100ms(5);
			}
		}
		else
		{
			debugText("Không Tìm Thấy Mũi Tên Ẩn Icon");
		}
		val = FindPoint(hWnd, pathTacVu + "/GuiChat.png");
		if (val.HasValue)
		{
			System.IntPtr intPtr5 = hWnd;
			val2 = val.Value;
			int x5 = ((Point)(ref val2)).X;
			val2 = val.Value;
			AutoControl.SendClickOnPosition(intPtr5, x5, ((Point)(ref val2)).Y - 30, (EMouseKey)0, 1);
			debugText("Đã Gửi Khung Chat");
			delay_100ms(5);
		}
		else
		{
			debugText("Không Thấy Gửi Khung Chat");
		}
		val = FindPoint(hWnd, pathTacVu + "/XoaChat.png");
		if (val.HasValue)
		{
			System.IntPtr intPtr6 = hWnd;
			val2 = val.Value;
			int x6 = ((Point)(ref val2)).X;
			val2 = val.Value;
			AutoControl.SendClickOnPosition(intPtr6, x6, ((Point)(ref val2)).Y - 30, (EMouseKey)0, 1);
			debugText("Đã Xóa Khung Chat");
			delay_100ms(5);
		}
		else
		{
			debugText("Không Thấy Xóa Khung Chat");
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

	private Point? FindSubsPoint2(System.IntPtr hWnd, string pathKhungAnhLon, int offSetX, int offSetY, int offSetW, int offSetH, string pathKhungAnhNho)
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

	private List<Point>? FindsSubsPoint2(System.IntPtr hWnd, string pathKhungAnhLon, int offSetX, int offSetY, int offSetW, int offSetH, string pathKhungAnhNho)
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
		return ImageScanOpenCV.FindOutPoints(val5, image2, 0.9);
	}

	private bool FindAndClick2(System.IntPtr hWnd, string pathKhungAnhLon, int offSetX, int offSetY, int offSetW, int offSetH, string pathKhungAnhNho, string textDebug)
	{
		//IL_003c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0041: Unknown result type (might be due to invalid IL or missing references)
		//IL_004c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0051: Unknown result type (might be due to invalid IL or missing references)
		//IL_0061: Unknown result type (might be due to invalid IL or missing references)
		//IL_0066: Unknown result type (might be due to invalid IL or missing references)
		//IL_0071: Unknown result type (might be due to invalid IL or missing references)
		//IL_0076: Unknown result type (might be due to invalid IL or missing references)
		Point? val = FindPoint(hWnd, pathKhungAnhLon);
		if (val.HasValue)
		{
			Point? val2 = FindSubsPoint2(hWnd, pathKhungAnhLon, offSetX, offSetY, offSetW, offSetH, pathKhungAnhNho);
			if (val2.HasValue)
			{
				Point value = val2.Value;
				int x = ((Point)(ref value)).X;
				value = val.Value;
				int num = x + ((Point)(ref value)).X + offSetX;
				value = val2.Value;
				int y = ((Point)(ref value)).Y;
				value = val.Value;
				int num2 = y + ((Point)(ref value)).Y + offSetY;
				AutoControl.SendClickOnPosition(hWnd, num + 5, num2 + 5 - 30, (EMouseKey)0, 1);
				delay_100ms(5);
				debugText(string.Concat(new string[5]
				{
					textDebug,
					" ",
					num.ToString(),
					" - ",
					num2.ToString()
				}));
				return true;
			}
		}
		return false;
	}

	private bool FindsAndClick2(System.IntPtr hWnd, string pathKhungAnhLon, int offSetX, int offSetY, int offSetW, int offSetH, string pathKhungAnhNho, string textDebug)
	{
		//IL_0048: Unknown result type (might be due to invalid IL or missing references)
		//IL_004d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0058: Unknown result type (might be due to invalid IL or missing references)
		//IL_005d: Unknown result type (might be due to invalid IL or missing references)
		//IL_006e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0073: Unknown result type (might be due to invalid IL or missing references)
		//IL_007e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0083: Unknown result type (might be due to invalid IL or missing references)
		Point? val = FindPoint(hWnd, pathKhungAnhLon);
		if (val.HasValue)
		{
			List<Point> val2 = FindsSubsPoint2(hWnd, pathKhungAnhLon, offSetX, offSetY, offSetW, offSetH, pathKhungAnhNho);
			if (val2.Count != 0)
			{
				for (int i = 0; i < Enumerable.Count<Point>((System.Collections.Generic.IEnumerable<Point>)val2); i++)
				{
					Point val3 = val2[i];
					int x = ((Point)(ref val3)).X;
					val3 = val.Value;
					int num = x + ((Point)(ref val3)).X + offSetX;
					val3 = val2[i];
					int y = ((Point)(ref val3)).Y;
					val3 = val.Value;
					int num2 = y + ((Point)(ref val3)).Y + offSetY;
					AutoControl.SendClickOnPosition(hWnd, num + 20, num2 + 5 - 30, (EMouseKey)0, 1);
					delay_100ms(5);
					debugText(string.Concat(new string[5]
					{
						textDebug,
						" ",
						num.ToString(),
						" - ",
						num2.ToString()
					}));
				}
				return true;
			}
		}
		return false;
	}

	private void setupRun()
	{
		//IL_0082: Unknown result type (might be due to invalid IL or missing references)
		//IL_0087: Unknown result type (might be due to invalid IL or missing references)
		//IL_0092: Unknown result type (might be due to invalid IL or missing references)
		//IL_0097: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0100: Unknown result type (might be due to invalid IL or missing references)
		//IL_0117: Unknown result type (might be due to invalid IL or missing references)
		//IL_011c: Unknown result type (might be due to invalid IL or missing references)
		int setupStepX = Settings.Default.setupStepX;
		int setupStepY = Settings.Default.setupStepY;
		double num = (double)Settings.Default.setupDelay / 1000.0;
		PressKey("ESC");
		PressKey("P");
		delay_100ms(10);
		Point? val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
		Point value;
		if (val.HasValue)
		{
			System.IntPtr intPtr = hWnd;
			value = val.Value;
			int x = ((Point)(ref value)).X;
			value = val.Value;
			AutoControl.SendDragAndDropOnPosition(intPtr, x, ((Point)(ref value)).Y - 30, 458, 290, setupStepX, setupStepY, num);
		}
		delay_100ms(10);
		Point? val2 = FindPoint(hWnd, pathTacVu + "/ChienDau.png");
		if (val2.HasValue)
		{
			System.IntPtr intPtr2 = hWnd;
			value = val2.Value;
			int num2 = ((Point)(ref value)).X + 261 - 232;
			value = val2.Value;
			AutoControl.SendClickOnPosition(intPtr2, num2, ((Point)(ref value)).Y + 320 - 384 - 30, (EMouseKey)0, 1);
			delay_100ms(5);
			FindsAndClick2(hWnd, pathTacVu + "/ChienDau.png", 120, -230, 50, 75, pathTruMa + "/Err2.png", "Click");
			FindsAndClick2(hWnd, pathTacVu + "/ChienDau.png", 120, -150, 50, 50, pathTruMa + "/Err1.png", "Click");
			FindsAndClick2(hWnd, pathTacVu + "/ChienDau.png", -10, -230, 50, 60, pathTruMa + "/Err2.png", "Click");
			FindsAndClick2(hWnd, pathTacVu + "/ChienDau.png", -10, -170, 50, 35, pathTruMa + "/Err1.png", "Click");
		}
		delay_100ms(5);
		debugText("Hoàn Tất Setup");
	}

	private void TienIch_Load(object sender, EventArgs e)
	{
		//IL_003a: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_00cc: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_00df: Unknown result type (might be due to invalid IL or missing references)
		//IL_0137: Unknown result type (might be due to invalid IL or missing references)
		//IL_0167: Unknown result type (might be due to invalid IL or missing references)
		autoRun = Program.AppMain.autoRun;
		Program.AppMain.autoRun = false;
		string nameFlash = Program.AppMain.nameFlash;
		((Control)this).Text = "[" + nameFlash + "] BMx Nang No";
		((Form)this).Size = new Size(386, 272);
		if (Settings.Default.freeSize)
		{
			((Form)this).FormBorderStyle = (FormBorderStyle)4;
		}
		else
		{
			((Form)this).FormBorderStyle = (FormBorderStyle)1;
		}
		loadTheme();
		hWnd = FindWindowHandle(null, nameFlash);
		debugText("Tìm Flash");
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
		for (int num = 9; num > 0; num--)
		{
			Bitmap image = ImageScanOpenCV.GetImage(pathKhac + "/VIP_" + num + ".png");
			if (ImageScanOpenCV.FindOutPoint(AvatarNV, image, 0.9).HasValue)
			{
				VIP = num;
				break;
			}
		}
		((Control)label17).Text = "VIP " + VIP;
		for (int i = 1; i < 13; i++)
		{
			Bitmap image2 = ImageScanOpenCV.GetImage(pathKhac + "/Avatar_Main" + i + ".png");
			if (ImageScanOpenCV.FindOutPoint(AvatarNV, image2, 0.9).HasValue)
			{
				switch (i)
				{
				case 1:
					accMain = "Chiến Binh - Nam";
					break;
				case 2:
					accMain = "Chiến Binh - Nữ";
					break;
				case 3:
					accMain = "Danh Y - Nam";
					break;
				case 4:
					accMain = "Danh Y - Nữ";
					break;
				case 5:
					accMain = "Thợ Săn - Nam";
					break;
				case 6:
					accMain = "Thợ Săn - Nữ";
					break;
				case 7:
					accMain = "Nhạc Công - Nam";
					break;
				case 8:
					accMain = "Nhạc Công - Nữ";
					break;
				case 9:
					accMain = "Xạ Thủ - Nam";
					break;
				case 10:
					accMain = "Xạ Thủ - Nữ";
					break;
				case 11:
					accMain = "Hiệp Sĩ - Nam";
					break;
				case 12:
					accMain = "Hiệp Sĩ - Nữ";
					break;
				}
				break;
			}
		}
		((Control)label18).Text = accMain;
		int num2 = (int)ReadMemoryData(processID, myPointer, offset_FPS);
		if (num2 != 0)
		{
			numericUpDownFPS.Value = decimal.op_Implicit(num2);
		}
		else
		{
			debugText("Memory False");
		}
		loadSetting();
		debugText("begin");
		if (autoRun)
		{
			ButtonRunNN.CheckState = (CheckState)1;
		}
	}

	private void buttonReset_Click(object sender, EventArgs e)
	{
		//IL_0003: Unknown result type (might be due to invalid IL or missing references)
		//IL_000f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		//IL_001c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0022: Unknown result type (might be due to invalid IL or missing references)
		//IL_007a: Unknown result type (might be due to invalid IL or missing references)
		//IL_00aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_035d: Unknown result type (might be due to invalid IL or missing references)
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
		for (int num = 9; num > 0; num--)
		{
			Bitmap image = ImageScanOpenCV.GetImage(pathKhac + "/VIP_" + num + ".png");
			if (ImageScanOpenCV.FindOutPoint(AvatarNV, image, 0.9).HasValue)
			{
				VIP = num;
				break;
			}
		}
		((Control)label17).Text = "VIP " + VIP;
		for (int i = 1; i < 13; i++)
		{
			Bitmap image2 = ImageScanOpenCV.GetImage(pathKhac + "/Avatar_Main" + i + ".png");
			if (ImageScanOpenCV.FindOutPoint(AvatarNV, image2, 0.9).HasValue)
			{
				switch (i)
				{
				case 1:
					accMain = "Chiến Binh - Nam";
					break;
				case 2:
					accMain = "Chiến Binh - Nữ";
					break;
				case 3:
					accMain = "Danh Y - Nam";
					break;
				case 4:
					accMain = "Danh Y - Nữ";
					break;
				case 5:
					accMain = "Thợ Săn - Nam";
					break;
				case 6:
					accMain = "Thợ Săn - Nữ";
					break;
				case 7:
					accMain = "Nhạc Công - Nam";
					break;
				case 8:
					accMain = "Nhạc Công - Nữ";
					break;
				case 9:
					accMain = "Xạ Thủ - Nam";
					break;
				case 10:
					accMain = "Xạ Thủ - Nữ";
					break;
				case 11:
					accMain = "Hiệp Sĩ - Nam";
					break;
				case 22:
					accMain = "Hiệp Sĩ - Nữ";
					break;
				}
				break;
			}
		}
		((Control)label18).Text = accMain;
		if (WriteMemoryData(processID, myPointer, offset_FPS, (double)numericUpDownFPS.Value))
		{
			AutoControl.SendClickOnPosition(hWnd, 58, 406, (EMouseKey)0, 1);
			Thread.Sleep(TimeSpan.FromSeconds(0.1));
			AutoControl.SendClickOnPosition(hWnd, 58, 470, (EMouseKey)0, 1);
			debugText("Write FPS: " + numericUpDownFPS.Value);
		}
		else
		{
			debugText("Write FPS False");
		}
		debugText("begin");
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

	private void ButtonRunNN_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		//IL_00d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d7: Invalid comparison between Unknown and I4
		//IL_001d: Unknown result type (might be due to invalid IL or missing references)
		//IL_00aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_00b4: Expected O, but got Unknown
		//IL_00e7: Unknown result type (might be due to invalid IL or missing references)
		if ((int)ButtonRunNN.CheckState == 1)
		{
			((Control)ButtonRunNN).BackColor = Color.Green;
			((Control)ButtonRunNN).Text = "Dừng";
			((Control)checkBoxNL5).Enabled = false;
			((Control)checkBoxNL4).Enabled = false;
			((Control)checkBoxRuongCam).Enabled = false;
			((Control)comboBoxNL4).Enabled = false;
			((Control)comboBoxNL5).Enabled = false;
			((Control)buttonPause).Enabled = true;
			debugText("start [Năng Nổ]");
			IsStop = false;
			IsPause = false;
			T_NN = new System.Threading.Tasks.Task((Action)([CompilerGenerated] () =>
			{
				setupRun();
				while (!IsStop)
				{
					while (!IsPauseTV_PT)
					{
					}
					IsPauseNN = false;
					HideIconECT();
					DoiDiemNangNo();
					if (autoRun)
					{
						ButtonRunNN.CheckState = (CheckState)0;
						((Form)this).Close();
					}
					IsPauseNN = true;
					IsStop = true;
					ButtonRunNN.CheckState = (CheckState)0;
				}
			}));
			T_NN.Start();
		}
		else if ((int)ButtonRunNN.CheckState == 0)
		{
			((Control)ButtonRunNN).BackColor = Control.DefaultBackColor;
			((Control)ButtonRunNN).Text = "Chạy";
			((Control)checkBoxNL5).Enabled = true;
			((Control)checkBoxNL4).Enabled = true;
			((Control)checkBoxRuongCam).Enabled = true;
			((Control)comboBoxNL4).Enabled = true;
			((Control)comboBoxNL5).Enabled = true;
			((Control)buttonPause).Enabled = false;
			debugText("stop [Năng Nổ]");
			IsPauseNN = true;
			IsStop = true;
			if (autoRun)
			{
				((Form)this).Close();
			}
		}
	}

	private void buttonPause_Click(object sender, EventArgs e)
	{
		if (IsPause)
		{
			IsPause = false;
			((Control)buttonPause).Text = "Pause";
			((Control)checkBoxNL5).Enabled = false;
			((Control)checkBoxNL4).Enabled = false;
			((Control)checkBoxRuongCam).Enabled = false;
			((Control)comboBoxNL4).Enabled = false;
			((Control)comboBoxNL5).Enabled = false;
		}
		else
		{
			IsPause = true;
			((Control)buttonPause).Text = "Next";
			((Control)checkBoxNL5).Enabled = true;
			((Control)checkBoxNL4).Enabled = true;
			((Control)checkBoxRuongCam).Enabled = true;
			((Control)comboBoxNL4).Enabled = true;
			((Control)comboBoxNL5).Enabled = true;
		}
		debugText("Tạm Dừng " + IsPause);
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

	private string scanSetting()
	{
		string text = "";
		text = ((!checkBoxRuongCam.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxNL5.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + ((Control)comboBoxNL5).Text + "\n";
		text = ((!checkBoxNL4.Checked) ? (text + "0\n") : (text + "1\n"));
		return text + ((Control)comboBoxNL4).Text + "\n";
	}

	private void loadSetting()
	{
		//IL_00c1: Unknown result type (might be due to invalid IL or missing references)
		nameUser = Program.AppMain.nameUser;
		if (!File.Exists(pathData + "/Setting/" + nameUser + "/NangNo.txt"))
		{
			Directory.CreateDirectory(pathData + "/Setting/" + nameUser);
			return;
		}
		System.DateTime lastWriteTime = File.GetLastWriteTime(pathData + "/Setting/" + nameUser + "/NangNo.txt");
		if (lastWriteTime.Year * 10000 + lastWriteTime.Month * 100 + lastWriteTime.Day < 20230318)
		{
			MessageBox.Show("Bản Lưu Thiết Lập " + ((Control)this).Text + " Đã Cũ Do Có Thay Đổi/Thêm Các Tùy Chọn.\r\nVui Lòng Lưu Lại Thiết Lập Năng Nổ!", "BMx-Tool: Daily", (MessageBoxButtons)0, (MessageBoxIcon)64);
			return;
		}
		string[] array = File.ReadAllLines(pathData + "/Setting/" + nameUser + "/NangNo.txt");
		int num = 0;
		if (array[num].Trim() == "1")
		{
			checkBoxRuongCam.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxRuongCam.CheckState = (CheckState)0;
		}
		if (array[++num].Trim() == "1")
		{
			checkBoxNL5.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxNL5.CheckState = (CheckState)0;
		}
		((Control)comboBoxNL5).Text = array[++num].Trim();
		if (array[++num].Trim() == "1")
		{
			checkBoxNL4.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxNL4.CheckState = (CheckState)0;
		}
		((Control)comboBoxNL4).Text = array[++num].Trim();
		((Control)label4).Text = "Lần cuối lúc\r\n" + lastWriteTime.ToString("g");
		debugText("Đã Áp Dụng Cài Đặt \"Năng Nổ\" Lần Cuối Lúc\r\n" + lastWriteTime.ToString("g"));
	}

	private void buttonSave_Click(object sender, EventArgs e)
	{
		//IL_001c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0022: Expected O, but got Unknown
		TextWriter val = (TextWriter)new StreamWriter(pathData + "/Setting/" + nameUser + "/NangNo.txt");
		val.Write(scanSetting());
		val.Close();
		System.DateTime lastWriteTime = File.GetLastWriteTime(pathData + "/Setting/" + nameUser + "/NangNo.txt");
		((Control)label4).Text = "Lần cuối lúc\r\n" + lastWriteTime.ToString("g");
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
		//IL_02cd: Unknown result type (might be due to invalid IL or missing references)
		//IL_02df: Unknown result type (might be due to invalid IL or missing references)
		//IL_030b: Unknown result type (might be due to invalid IL or missing references)
		//IL_031d: Unknown result type (might be due to invalid IL or missing references)
		//IL_032f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0341: Unknown result type (might be due to invalid IL or missing references)
		//IL_0353: Unknown result type (might be due to invalid IL or missing references)
		//IL_0365: Unknown result type (might be due to invalid IL or missing references)
		//IL_0377: Unknown result type (might be due to invalid IL or missing references)
		//IL_03c5: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_03d4: Expected O, but got Unknown
		//IL_03f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_03f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0403: Expected O, but got Unknown
		//IL_0423: Unknown result type (might be due to invalid IL or missing references)
		//IL_0428: Unknown result type (might be due to invalid IL or missing references)
		//IL_0432: Expected O, but got Unknown
		//IL_0452: Unknown result type (might be due to invalid IL or missing references)
		//IL_0457: Unknown result type (might be due to invalid IL or missing references)
		//IL_0461: Expected O, but got Unknown
		//IL_0481: Unknown result type (might be due to invalid IL or missing references)
		//IL_0486: Unknown result type (might be due to invalid IL or missing references)
		//IL_0490: Expected O, but got Unknown
		//IL_04b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_04b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_04bf: Expected O, but got Unknown
		//IL_04df: Unknown result type (might be due to invalid IL or missing references)
		//IL_04e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_04ee: Expected O, but got Unknown
		//IL_0516: Unknown result type (might be due to invalid IL or missing references)
		//IL_0528: Unknown result type (might be due to invalid IL or missing references)
		//IL_053a: Unknown result type (might be due to invalid IL or missing references)
		//IL_054c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0578: Unknown result type (might be due to invalid IL or missing references)
		//IL_058a: Unknown result type (might be due to invalid IL or missing references)
		//IL_059c: Unknown result type (might be due to invalid IL or missing references)
		//IL_05ae: Unknown result type (might be due to invalid IL or missing references)
		//IL_05fc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0601: Unknown result type (might be due to invalid IL or missing references)
		//IL_060b: Expected O, but got Unknown
		//IL_062b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0630: Unknown result type (might be due to invalid IL or missing references)
		//IL_063a: Expected O, but got Unknown
		//IL_065a: Unknown result type (might be due to invalid IL or missing references)
		//IL_065f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0669: Expected O, but got Unknown
		//IL_0689: Unknown result type (might be due to invalid IL or missing references)
		//IL_068e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0698: Expected O, but got Unknown
		//IL_06c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_06d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_06e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0710: Unknown result type (might be due to invalid IL or missing references)
		//IL_0722: Unknown result type (might be due to invalid IL or missing references)
		//IL_0734: Unknown result type (might be due to invalid IL or missing references)
		//IL_0782: Unknown result type (might be due to invalid IL or missing references)
		//IL_0787: Unknown result type (might be due to invalid IL or missing references)
		//IL_0791: Expected O, but got Unknown
		//IL_07b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_07b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_07c0: Expected O, but got Unknown
		//IL_07e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_07e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_07ef: Expected O, but got Unknown
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
					((Control)groupBox2).BackgroundImage = Image.FromFile(fileName);
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
					((Control)groupBox2).BackgroundImageLayout = layout;
				}
				else
				{
					((Control)groupBox1).BackColor = Color.FromArgb(num2);
					((Control)groupBox2).BackColor = Color.FromArgb(num2);
				}
				int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
				((Control)label1).BackColor = Color.FromArgb(num2);
				((Control)label2).BackColor = Color.FromArgb(num2);
				((Control)label9).BackColor = Color.FromArgb(num2);
				((Control)label4).BackColor = Color.FromArgb(num2);
				((Control)checkBoxRuongCam).BackColor = Color.FromArgb(num2);
				((Control)checkBoxNL4).BackColor = Color.FromArgb(num2);
				((Control)checkBoxNL5).BackColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
				((Control)label1).ForeColor = Color.FromArgb(num2);
				((Control)label2).ForeColor = Color.FromArgb(num2);
				((Control)label9).ForeColor = Color.FromArgb(num2);
				((Control)label4).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxRuongCam).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxNL4).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxNL5).ForeColor = Color.FromArgb(num2);
				object obj = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
				Font val = (Font)((obj is Font) ? obj : null);
				((Control)label1).Font = new Font(val.FontFamily, ((Control)label1).Font.Size, val.Style);
				((Control)label2).Font = new Font(val.FontFamily, ((Control)label2).Font.Size, val.Style);
				((Control)label9).Font = new Font(val.FontFamily, ((Control)label9).Font.Size, val.Style);
				((Control)label4).Font = new Font(val.FontFamily, ((Control)label4).Font.Size, val.Style);
				((Control)checkBoxRuongCam).Font = new Font(val.FontFamily, ((Control)checkBoxRuongCam).Font.Size, val.Style);
				((Control)checkBoxNL4).Font = new Font(val.FontFamily, ((Control)checkBoxNL4).Font.Size, val.Style);
				((Control)checkBoxNL5).Font = new Font(val.FontFamily, ((Control)checkBoxNL5).Font.Size, val.Style);
				int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
				((Control)ButtonRunNN).BackColor = Color.FromArgb(num2);
				((Control)buttonReset).BackColor = Color.FromArgb(num2);
				((Control)buttonSave).BackColor = Color.FromArgb(num2);
				((Control)buttonPause).BackColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
				((Control)ButtonRunNN).ForeColor = Color.FromArgb(num2);
				((Control)buttonReset).ForeColor = Color.FromArgb(num2);
				((Control)buttonSave).ForeColor = Color.FromArgb(num2);
				((Control)buttonPause).ForeColor = Color.FromArgb(num2);
				object obj2 = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
				val = (Font)((obj2 is Font) ? obj2 : null);
				((Control)ButtonRunNN).Font = new Font(val.FontFamily, ((Control)ButtonRunNN).Font.Size, val.Style);
				((Control)buttonReset).Font = new Font(val.FontFamily, ((Control)buttonReset).Font.Size, val.Style);
				((Control)buttonSave).Font = new Font(val.FontFamily, ((Control)buttonSave).Font.Size, val.Style);
				((Control)buttonPause).Font = new Font(val.FontFamily, ((Control)buttonPause).Font.Size, val.Style);
				int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
				((Control)textBox1).BackColor = Color.FromArgb(num2);
				((Control)comboBoxNL4).BackColor = Color.FromArgb(num2);
				((Control)comboBoxNL5).BackColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
				((Control)textBox1).ForeColor = Color.FromArgb(num2);
				((Control)comboBoxNL4).ForeColor = Color.FromArgb(num2);
				((Control)comboBoxNL5).ForeColor = Color.FromArgb(num2);
				object obj3 = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
				val = (Font)((obj3 is Font) ? obj3 : null);
				((Control)textBox1).Font = new Font(val.FontFamily, ((Control)textBox1).Font.Size, val.Style);
				((Control)comboBoxNL4).Font = new Font(val.FontFamily, ((Control)comboBoxNL4).Font.Size, val.Style);
				((Control)comboBoxNL5).Font = new Font(val.FontFamily, ((Control)comboBoxNL5).Font.Size, val.Style);
				return true;
			}
		}
		catch (System.Exception)
		{
			return false;
		}
		return false;
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

	private int checkIDMap()
	{
		return (int)ReadMemoryData(processID, myPointer_map_id, offset_map_id);
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

	private void PhuToiMap2(string maps, double X, double Y, bool team = false)
	{
		//IL_0215: Unknown result type (might be due to invalid IL or missing references)
		//IL_021a: Unknown result type (might be due to invalid IL or missing references)
		//IL_022b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0230: Unknown result type (might be due to invalid IL or missing references)
		//IL_0257: Unknown result type (might be due to invalid IL or missing references)
		//IL_025c: Unknown result type (might be due to invalid IL or missing references)
		//IL_026d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0272: Unknown result type (might be due to invalid IL or missing references)
		//IL_0299: Unknown result type (might be due to invalid IL or missing references)
		//IL_029e: Unknown result type (might be due to invalid IL or missing references)
		//IL_02af: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_02db: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f1: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f6: Unknown result type (might be due to invalid IL or missing references)
		GetWindowThreadProcessId(hWnd, out var processId);
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
					WriteMemoryData(processId, myPointer, offset_ToaDoX, X * 10.0);
					WriteMemoryData(processId, myPointer, offset_ToaDoY, Y * 10.0);
					AutoControl.SendKeyBoardPress(hWnd, (VKeys)13);
				}
			}
			debugText("Map - 0%");
			while (true)
			{
				if (num > 0)
				{
					WriteMemoryData(processId, myPointer, offset_ToaDoX, X * 10.0);
					WriteMemoryData(processId, myPointer, offset_ToaDoY, Y * 10.0);
					num--;
					continue;
				}
				double num6 = CheckLoadMap();
				debugText("ClearDebugText");
				debugText("Map - " + ((int)num6).ToString("D2") + "%");
				if (num6 == 100.0)
				{
					break;
				}
				num = 500 + 500 * timeDelay;
				PressKey("OK");
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
				WriteMemoryData(processId, myPointer, offset_ToaDoX, X * 10.0);
				WriteMemoryData(processId, myPointer, offset_ToaDoY, Y * 10.0);
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
		//IL_01be: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e7: Unknown result type (might be due to invalid IL or missing references)
		//IL_023d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0247: Expected O, but got Unknown
		//IL_0252: Unknown result type (might be due to invalid IL or missing references)
		//IL_0278: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c1: Unknown result type (might be due to invalid IL or missing references)
		//IL_02cb: Expected O, but got Unknown
		//IL_02d6: Unknown result type (might be due to invalid IL or missing references)
		//IL_02fc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0340: Unknown result type (might be due to invalid IL or missing references)
		//IL_0366: Unknown result type (might be due to invalid IL or missing references)
		//IL_039d: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a7: Expected O, but got Unknown
		//IL_03b2: Unknown result type (might be due to invalid IL or missing references)
		//IL_03f7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0439: Unknown result type (might be due to invalid IL or missing references)
		//IL_045f: Unknown result type (might be due to invalid IL or missing references)
		//IL_04a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_04ac: Expected O, but got Unknown
		//IL_04c3: Unknown result type (might be due to invalid IL or missing references)
		//IL_04e9: Unknown result type (might be due to invalid IL or missing references)
		//IL_052a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0550: Unknown result type (might be due to invalid IL or missing references)
		//IL_05ae: Unknown result type (might be due to invalid IL or missing references)
		//IL_05d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0618: Unknown result type (might be due to invalid IL or missing references)
		//IL_0668: Unknown result type (might be due to invalid IL or missing references)
		//IL_0715: Unknown result type (might be due to invalid IL or missing references)
		//IL_073b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0799: Unknown result type (might be due to invalid IL or missing references)
		//IL_07bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_0879: Unknown result type (might be due to invalid IL or missing references)
		//IL_089f: Unknown result type (might be due to invalid IL or missing references)
		//IL_08df: Unknown result type (might be due to invalid IL or missing references)
		//IL_0905: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a2b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a54: Unknown result type (might be due to invalid IL or missing references)
		//IL_0aa2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ac8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b0c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b16: Expected O, but got Unknown
		//IL_0b36: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b40: Expected O, but got Unknown
		//IL_0b4e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b74: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bb4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bda: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c2c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c36: Expected O, but got Unknown
		//IL_0c44: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c6a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cae: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cb8: Expected O, but got Unknown
		//IL_0cd0: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cf6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d2b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d49: Unknown result type (might be due to invalid IL or missing references)
		//IL_0dc2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0dcc: Expected O, but got Unknown
		//IL_0dd5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ddf: Expected O, but got Unknown
		groupBox1 = new GroupBox();
		label17 = new Label();
		label18 = new Label();
		pictureBox1 = new PictureBox();
		numericUpDownFPS = new NumericUpDown();
		buttonReset = new Button();
		label2 = new Label();
		label1 = new Label();
		checkBoxNL5 = new CheckBox();
		textBox1 = new TextBox();
		comboBoxNL5 = new ComboBox();
		checkBoxNL4 = new CheckBox();
		comboBoxNL4 = new ComboBox();
		checkBoxRuongCam = new CheckBox();
		groupBox2 = new GroupBox();
		buttonPause = new Button();
		label4 = new Label();
		ButtonRunNN = new CheckBox();
		buttonSave = new Button();
		label9 = new Label();
		((Control)groupBox1).SuspendLayout();
		((ISupportInitialize)pictureBox1).BeginInit();
		((ISupportInitialize)numericUpDownFPS).BeginInit();
		((Control)groupBox2).SuspendLayout();
		((Control)this).SuspendLayout();
		((Control)groupBox1).Controls.Add((Control)(object)label17);
		((Control)groupBox1).Controls.Add((Control)(object)label18);
		((Control)groupBox1).Controls.Add((Control)(object)pictureBox1);
		((Control)groupBox1).Controls.Add((Control)(object)numericUpDownFPS);
		((Control)groupBox1).Controls.Add((Control)(object)buttonReset);
		((Control)groupBox1).Controls.Add((Control)(object)label2);
		((Control)groupBox1).Controls.Add((Control)(object)label1);
		((Control)groupBox1).Location = new Point(6, 12);
		((Control)groupBox1).Name = "groupBox1";
		((Control)groupBox1).Size = new Size(208, 106);
		((Control)groupBox1).TabIndex = 17;
		groupBox1.TabStop = false;
		((Control)groupBox1).Text = "groupBox4";
		((Control)label17).AutoSize = true;
		((Control)label17).Font = new Font("Segoe UI Semibold", 12f, (FontStyle)3, (GraphicsUnit)3);
		((Control)label17).Location = new Point(66, 22);
		((Control)label17).Name = "label17";
		((Control)label17).Size = new Size(45, 21);
		((Control)label17).TabIndex = 35;
		((Control)label17).Text = "null?";
		((Control)label18).AutoSize = true;
		((Control)label18).Font = new Font("Segoe UI Semibold", 12f, (FontStyle)3, (GraphicsUnit)3);
		((Control)label18).Location = new Point(65, 43);
		((Control)label18).Name = "label18";
		((Control)label18).Size = new Size(45, 21);
		((Control)label18).TabIndex = 36;
		((Control)label18).Text = "null?";
		pictureBox1.Image = (Image)(object)Resources.anhNVr;
		((Control)pictureBox1).Location = new Point(6, 22);
		((Control)pictureBox1).Name = "pictureBox1";
		((Control)pictureBox1).Size = new Size(54, 52);
		pictureBox1.TabIndex = 0;
		pictureBox1.TabStop = false;
		((Control)numericUpDownFPS).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownFPS).Location = new Point(107, 77);
		numericUpDownFPS.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownFPS).Name = "numericUpDownFPS";
		((Control)numericUpDownFPS).Size = new Size(36, 23);
		((Control)numericUpDownFPS).TabIndex = 15;
		numericUpDownFPS.Value = new decimal(new int[4] { 20, 0, 0, 0 });
		((Control)buttonReset).Location = new Point(149, 77);
		((Control)buttonReset).Name = "buttonReset";
		((Control)buttonReset).Size = new Size(56, 25);
		((Control)buttonReset).TabIndex = 8;
		((Control)buttonReset).Text = "Reset";
		((ButtonBase)buttonReset).UseVisualStyleBackColor = true;
		((Control)buttonReset).Click += new EventHandler(buttonReset_Click);
		((Control)label2).AutoSize = true;
		((Control)label2).Location = new Point(6, 79);
		((Control)label2).Name = "label2";
		((Control)label2).Size = new Size(60, 15);
		((Control)label2).TabIndex = 13;
		((Control)label2).Text = "ID: 000000";
		((Control)label1).AutoSize = true;
		((Control)label1).Location = new Point(72, 79);
		((Control)label1).Name = "label1";
		((Control)label1).Size = new Size(29, 15);
		((Control)label1).TabIndex = 13;
		((Control)label1).Text = "FPS:";
		((Control)checkBoxNL5).AutoSize = true;
		checkBoxNL5.Checked = true;
		checkBoxNL5.CheckState = (CheckState)1;
		((Control)checkBoxNL5).Location = new Point(159, 23);
		((Control)checkBoxNL5).Name = "checkBoxNL5";
		((Control)checkBoxNL5).Size = new Size(74, 19);
		((Control)checkBoxNL5).TabIndex = 18;
		((Control)checkBoxNL5).Text = "NL Cấp 5";
		((ButtonBase)checkBoxNL5).UseVisualStyleBackColor = true;
		((Control)textBox1).Location = new Point(220, 12);
		((TextBoxBase)textBox1).Multiline = true;
		((Control)textBox1).Name = "textBox1";
		((TextBoxBase)textBox1).ReadOnly = true;
		textBox1.ScrollBars = (ScrollBars)2;
		((Control)textBox1).Size = new Size(144, 106);
		((Control)textBox1).TabIndex = 21;
		((Control)textBox1).Text = "-----------------------";
		((ListControl)comboBoxNL5).FormattingEnabled = true;
		comboBoxNL5.Items.AddRange(new object[10] { "Kim Loại", "Gỗ", "Lông Thú", "Ngọc", "Vải Thô", "Kim Loại Hiếm", "Gỗ Tốt", "Da Thú", "Pha Lê", "Gấm Vóc" });
		((Control)comboBoxNL5).Location = new Point(239, 21);
		((Control)comboBoxNL5).Name = "comboBoxNL5";
		((Control)comboBoxNL5).Size = new Size(111, 23);
		((Control)comboBoxNL5).TabIndex = 22;
		((Control)comboBoxNL5).Text = "Gỗ Tốt";
		((Control)checkBoxNL4).AutoSize = true;
		checkBoxNL4.Checked = true;
		checkBoxNL4.CheckState = (CheckState)1;
		((Control)checkBoxNL4).Location = new Point(159, 52);
		((Control)checkBoxNL4).Name = "checkBoxNL4";
		((Control)checkBoxNL4).Size = new Size(74, 19);
		((Control)checkBoxNL4).TabIndex = 18;
		((Control)checkBoxNL4).Text = "NL Cấp 4";
		((ButtonBase)checkBoxNL4).UseVisualStyleBackColor = true;
		((ListControl)comboBoxNL4).FormattingEnabled = true;
		comboBoxNL4.Items.AddRange(new object[10] { "Kim Loại", "Gỗ", "Lông Thú", "Ngọc", "Vải Thô", "Kim Loại Hiếm", "Gỗ Tốt", "Da Thú", "Pha Lê", "Gấm Vóc" });
		((Control)comboBoxNL4).Location = new Point(239, 50);
		((Control)comboBoxNL4).Name = "comboBoxNL4";
		((Control)comboBoxNL4).Size = new Size(111, 23);
		((Control)comboBoxNL4).TabIndex = 22;
		((Control)comboBoxNL4).Text = "Gỗ Tốt";
		((Control)checkBoxRuongCam).AutoSize = true;
		((Control)checkBoxRuongCam).Location = new Point(6, 23);
		((Control)checkBoxRuongCam).Name = "checkBoxRuongCam";
		((Control)checkBoxRuongCam).Size = new Size(121, 19);
		((Control)checkBoxRuongCam).TabIndex = 18;
		((Control)checkBoxRuongCam).Text = "Nhận Rương Cam";
		((ButtonBase)checkBoxRuongCam).UseVisualStyleBackColor = true;
		((Control)groupBox2).Controls.Add((Control)(object)buttonPause);
		((Control)groupBox2).Controls.Add((Control)(object)label4);
		((Control)groupBox2).Controls.Add((Control)(object)ButtonRunNN);
		((Control)groupBox2).Controls.Add((Control)(object)buttonSave);
		((Control)groupBox2).Controls.Add((Control)(object)label9);
		((Control)groupBox2).Controls.Add((Control)(object)checkBoxNL5);
		((Control)groupBox2).Controls.Add((Control)(object)checkBoxRuongCam);
		((Control)groupBox2).Controls.Add((Control)(object)checkBoxNL4);
		((Control)groupBox2).Controls.Add((Control)(object)comboBoxNL5);
		((Control)groupBox2).Controls.Add((Control)(object)comboBoxNL4);
		((Control)groupBox2).Location = new Point(6, 125);
		((Control)groupBox2).Name = "groupBox2";
		((Control)groupBox2).Size = new Size(358, 106);
		((Control)groupBox2).TabIndex = 28;
		groupBox2.TabStop = false;
		((Control)groupBox2).Text = "Đổi Điểm Năng Nổ";
		((Control)buttonPause).Enabled = false;
		((Control)buttonPause).Location = new Point(86, 75);
		((Control)buttonPause).Name = "buttonPause";
		((Control)buttonPause).Size = new Size(65, 25);
		((Control)buttonPause).TabIndex = 29;
		((Control)buttonPause).Text = "Pause";
		((ButtonBase)buttonPause).UseVisualStyleBackColor = true;
		((Control)buttonPause).Click += new EventHandler(buttonPause_Click);
		((Control)label4).AutoSize = true;
		((Control)label4).Font = new Font("Segoe UI", 7f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label4).Location = new Point(221, 77);
		((Control)label4).Name = "label4";
		((Control)label4).Size = new Size(25, 12);
		((Control)label4).TabIndex = 42;
		((Control)label4).Text = "null?";
		ButtonRunNN.Appearance = (Appearance)1;
		((Control)ButtonRunNN).Location = new Point(6, 75);
		((Control)ButtonRunNN).Name = "ButtonRunNN";
		((Control)ButtonRunNN).Size = new Size(74, 25);
		((Control)ButtonRunNN).TabIndex = 23;
		((Control)ButtonRunNN).Text = "Chạy";
		((ButtonBase)ButtonRunNN).TextAlign = (ContentAlignment)32;
		((ButtonBase)ButtonRunNN).UseVisualStyleBackColor = true;
		ButtonRunNN.CheckStateChanged += new EventHandler(ButtonRunNN_CheckStateChanged);
		((Control)buttonSave).Location = new Point(159, 77);
		((Control)buttonSave).Name = "buttonSave";
		((Control)buttonSave).Size = new Size(56, 25);
		((Control)buttonSave).TabIndex = 41;
		((Control)buttonSave).Text = "Lưu";
		((ButtonBase)buttonSave).UseVisualStyleBackColor = true;
		((Control)buttonSave).Click += new EventHandler(buttonSave_Click);
		((Control)label9).AutoSize = true;
		((Control)label9).Location = new Point(16, 53);
		((Control)label9).Name = "label9";
		((Control)label9).Size = new Size(85, 15);
		((Control)label9).TabIndex = 13;
		((Control)label9).Text = "Kim Phiếu: 000";
		((ContainerControl)this).AutoScaleDimensions = new SizeF(7f, 15f);
		((ContainerControl)this).AutoScaleMode = (AutoScaleMode)1;
		((Form)this).ClientSize = new Size(372, 234);
		((Control)this).Controls.Add((Control)(object)groupBox2);
		((Control)this).Controls.Add((Control)(object)textBox1);
		((Control)this).Controls.Add((Control)(object)groupBox1);
		((Form)this).FormBorderStyle = (FormBorderStyle)1;
		((Form)this).MaximizeBox = false;
		((Control)this).Name = "NangNo";
		((Form)this).StartPosition = (FormStartPosition)1;
		((Control)this).Text = "[BMx-Tool] Tien Ich";
		((Form)this).FormClosed += new FormClosedEventHandler(TienIch_FormClosed);
		((Form)this).Load += new EventHandler(TienIch_Load);
		((Control)groupBox1).ResumeLayout(false);
		((Control)groupBox1).PerformLayout();
		((ISupportInitialize)pictureBox1).EndInit();
		((ISupportInitialize)numericUpDownFPS).EndInit();
		((Control)groupBox2).ResumeLayout(false);
		((Control)groupBox2).PerformLayout();
		((Control)this).ResumeLayout(false);
		((Control)this).PerformLayout();
	}
}
