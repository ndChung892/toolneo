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
using System.Timers;
using System.Windows.Forms;
using AutoTool.Properties;
using KAutoHelper;

namespace AutoTool;

public class Train : Form
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

	public bool IsStop = true;

	public bool IsPause = false;

	public bool IsPauseTV_PT = true;

	public bool IsPauseNN = true;

	private System.Threading.Tasks.Task T_NN;

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

	public int TieuDe;

	private uint myPointer_map_id;

	private uint[] offset_map_id;

	private uint myPointer_map_load_data;

	private uint[] offset_map_load;

	private uint[] offset_map_data;

	private double dataMapOld;

	public int ViTriTrain1_X;

	public int ViTriTrain1_Y;

	public int ViTriTrain2_X;

	public int ViTriTrain2_Y;

	public string map;

	public int HeSoHoiPhuc;

	private uint[] offset_MP;

	private uint[] offset_MPmax;

	private uint[] offset_HP;

	private uint[] offset_HPmax;

	private uint[] offset_MP2;

	private uint[] offset_MPmax2;

	private uint[] offset_HP2;

	private uint[] offset_HPmax2;

	private uint[] offset_Turn;

	private uint myPointer2;

	private int checkNgoaiTran;

	private int Turn_Count;

	private int Turn_Count2;

	private int TurnReset;

	private int TurnPet;

	private bool TrongTran;

	private bool TurnID;

	private static Timer myTimer;

	public int counter;

	public int countTimer_pet;

	public int countTimer_trong;

	public int countTimer_end;

	public bool userTimer;

	private int thoigian;

	public string pathAutoClick;

	public string[] charError;

	private static bool isClick = false;

	private static bool isDoubleClick = true;

	private IContainer components;

	private CheckBox ButtonDebug;

	private GroupBox groupBox2;

	private NumericUpDown numericUpDownFPS;

	private PictureBox pictureBox1;

	private Button buttonReset;

	private Label label3;

	private Label label8;

	private CheckBox ButtonRunAuto;

	private TextBox textBox2;

	private Button buttonPause;

	private Button button7;

	private Label labelAcccheck;

	private CheckBox checkBoxMapTrain;

	private Button button3;

	private Button button5;

	private TrackBar trackBar1;

	private Label label17;

	private Label label18;

	private Button button1;

	private ComboBox comboBox1;

	private CheckBox checkBoxPhuToiMap;

	private Button button2;

	private Label labelpt1;

	private Label label11;

	private CheckBox checkBoxBay;

	private GroupBox groupBox1;

	private Button button6;

	private ComboBox comboBoxTrong;

	private NumericUpDown numericUpDownDaPet;

	private CheckBox checkBoxDaPet;

	private Label label9;

	private CheckBox checkBoxTrong;

	private Label label1;

	private CheckBox checkBoxAutoClick;

	private ComboBox comboBoxFile;

	private ComboBox comboBoxEnd;

	private CheckBox checkBoxEnd;

	private Label label2;

	private Label label5;

	private Label label4;

	private NumericUpDown numericUpDownS_m;

	private NumericUpDown numericUpDownS_h;

	private Label label6;

	private NumericUpDown numericUpDownNV;

	private Label label7;

	private NumericUpDown numericUpDown1;

	public Train()
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
		VIP = 0;
		accMain = "null";
		autoRun = false;
		nameUser = "";
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
		ViTriTrain1_X = 0;
		ViTriTrain1_Y = 0;
		ViTriTrain2_X = 0;
		ViTriTrain2_Y = 0;
		map = "null";
		HeSoHoiPhuc = 50;
		uint[] array7 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array7, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_MP = array7;
		uint[] array8 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array8, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_MPmax = array8;
		uint[] array9 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array9, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_HP = array9;
		uint[] array10 = new uint[4];
		RuntimeHelpers.InitializeArray((System.Array)array10, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_HPmax = array10;
		uint[] array11 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array11, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_MP2 = array11;
		uint[] array12 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array12, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_MPmax2 = array12;
		uint[] array13 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array13, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_HP2 = array13;
		uint[] array14 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array14, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_HPmax2 = array14;
		uint[] array15 = new uint[7];
		RuntimeHelpers.InitializeArray((System.Array)array15, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_Turn = array15;
		myPointer2 = 11180660u;
		checkNgoaiTran = 0;
		Turn_Count = 0;
		Turn_Count2 = 0;
		TurnReset = 0;
		TurnPet = 0;
		TrongTran = false;
		TurnID = false;
		counter = 0;
		countTimer_pet = 0;
		countTimer_trong = 0;
		countTimer_end = 0;
		userTimer = false;
		thoigian = 9999;
		pathAutoClick = linkApp + "AutoClick";
		charError = new string[1] { "BMxToolAutoClickData" };
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

	private void debugText(string x)
	{
		if (x == "ClearDebugText")
		{
			((Control)textBox2).Text = "";
		}
		else if (x == "End_Line")
		{
			((Control)textBox2).Text = "-----------------------";
		}
		else
		{
			((TextBoxBase)textBox2).AppendText(x + "\r\n");
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
		case 3524005078u:
			if (x == "W")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)87);
			}
			break;
		}
		delay2_100ms(5);
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

	private void loadSetting()
	{
		nameUser = Program.AppMain.nameUser;
		if (!File.Exists(pathData + "/Setting/" + nameUser + "/Trn_train.txt"))
		{
			Directory.CreateDirectory(pathData + "/Setting/" + nameUser);
			return;
		}
		string[] array = File.ReadAllLines(pathData + "/Setting/" + nameUser + "/Trn_train.txt");
		for (int i = 0; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array); i++)
		{
			string[] array2 = array[i].Split(':', (StringSplitOptions)0);
			string text = array2[0];
			string text2 = text;
			switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text2))
			{
			case 1151856721u:
				if (text2 == "Map")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxMapTrain.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxMapTrain.CheckState = (CheckState)0;
					}
				}
				break;
			case 3142168944u:
				if (text2 == "Phu")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxPhuToiMap.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxPhuToiMap.CheckState = (CheckState)0;
					}
				}
				break;
			case 3535564687u:
				if (text2 == "Bay")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxBay.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxBay.CheckState = (CheckState)0;
					}
				}
				break;
			case 2649000816u:
				if (text2 == "Đa\u0301 Pet")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxDaPet.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxDaPet.CheckState = (CheckState)0;
					}
				}
				break;
			case 2704694752u:
				if (text2 == "Lươ\u0323t Đa\u0301 Pet")
				{
					numericUpDownDaPet.Value = decimal.op_Implicit(int.Parse(array2[1].Trim()));
				}
				break;
			case 3869294812u:
				if (text2 == "Trô\u0300ng")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxTrong.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxTrong.CheckState = (CheckState)0;
					}
				}
				break;
			case 174324892u:
				if (text2 == "NL Trô\u0300ng")
				{
					((Control)comboBoxTrong).Text = array2[1].Trim();
				}
				break;
			case 2925011340u:
				if (text2 == "Vi\u0323 Tri\u0301 1X")
				{
					ViTriTrain1_X = int.Parse(array2[1].Trim());
				}
				break;
			case 2941788959u:
				if (text2 == "Vi\u0323 Tri\u0301 1Y")
				{
					ViTriTrain1_Y = int.Parse(array2[1].Trim());
				}
				break;
			case 2959007863u:
				if (text2 == "Vi\u0323 Tri\u0301 2X")
				{
					ViTriTrain2_X = int.Parse(array2[1].Trim());
				}
				break;
			case 2942230244u:
				if (text2 == "Vi\u0323 Tri\u0301 2Y")
				{
					ViTriTrain2_Y = int.Parse(array2[1].Trim());
				}
				break;
			case 2909505883u:
				if (text2 == "Hô\u0300i Phu\u0323c")
				{
					trackBar1.Value = int.Parse(array2[1].Trim());
					((Control)label17).Text = trackBar1.Value + " %";
					HeSoHoiPhuc = trackBar1.Value;
				}
				break;
			case 496183594u:
				if (text2 == "MapName")
				{
					map = array2[1].Trim();
				}
				break;
			case 1086587366u:
				if (text2 == "AutoClick")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxAutoClick.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxAutoClick.CheckState = (CheckState)0;
					}
				}
				break;
			case 1610471560u:
				if (text2 == "FileName")
				{
					((Control)comboBoxFile).Text = array2[1].Trim();
				}
				break;
			case 3482547786u:
				if (text2 == "End")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxEnd.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxEnd.CheckState = (CheckState)0;
					}
				}
				break;
			case 2003025303u:
				if (text2 == "runEnd")
				{
					((Control)comboBoxEnd).Text = array2[1].Trim();
				}
				break;
			case 3318290782u:
				if (text2 == "Nhân Vâ\u0323t")
				{
					numericUpDownNV.Value = decimal.op_Implicit(int.Parse(array2[1].Trim()));
				}
				break;
			case 4175455727u:
				if (text2 == "End Giơ\u0300")
				{
					numericUpDownS_h.Value = decimal.op_Implicit(int.Parse(array2[1].Trim()));
				}
				break;
			case 1462243012u:
				if (text2 == "End Phu\u0301t")
				{
					numericUpDownS_m.Value = decimal.op_Implicit(int.Parse(array2[1].Trim()));
				}
				break;
			}
		}
		CapNhatThongTin();
		debugText("Đa\u0303 a\u0301p du\u0323ng ba\u0309n lưu");
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

	private void PhuToiMap2(System.IntPtr hWnd, string maps, double X = 0.0, double Y = 0.0, bool team = true)
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

	private void Train_Load(object sender, EventArgs e)
	{
		//IL_0035: Unknown result type (might be due to invalid IL or missing references)
		//IL_00b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c5: Unknown result type (might be due to invalid IL or missing references)
		//IL_00cd: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_012b: Unknown result type (might be due to invalid IL or missing references)
		//IL_015b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0323: Unknown result type (might be due to invalid IL or missing references)
		//IL_0328: Unknown result type (might be due to invalid IL or missing references)
		bool flag = Program.AppMain.autoRun;
		Program.AppMain.autoRun = false;
		string nameFlash = Program.AppMain.nameFlash;
		((Control)this).Text = "[" + nameFlash + "] BMx Train";
		((Form)this).Size = new Size(387, 167);
		if (Settings.Default.freeSize)
		{
			((Form)this).FormBorderStyle = (FormBorderStyle)4;
		}
		else
		{
			((Form)this).FormBorderStyle = (FormBorderStyle)1;
		}
		hWnd = FindWindowHandle(null, nameFlash);
		debugText("Tìm Flash");
		GetWindowThreadProcessId(hWnd, out processID);
		((Control)label3).Text = "ID: " + processID;
		RECT val = default(RECT);
		val = AutoControl.GetWindowRect(hWnd);
		SetWindowPos(hWnd, 0, val.Left, val.Top, 1066, 724, 2);
		((Control)groupBox2).Text = "Vị Trí Flash: " + val.Top + " x " + val.Left;
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
		int num = (int)ReadMemoryData(processID, myPointer, offset_FPS);
		if (num != 0)
		{
			numericUpDownFPS.Value = decimal.op_Implicit(num);
		}
		else
		{
			debugText("Memory False");
		}
		if (!Directory.Exists(linkApp + "/Train"))
		{
			Directory.CreateDirectory(linkApp + "/Train");
		}
		else
		{
			string[] files = Directory.GetFiles(linkApp + "/Train", "*.txt");
			string[] array = files;
			foreach (string text in array)
			{
				string text2 = text.Substring((linkApp + "/Train").Length + 1, text.Length - (linkApp + "/Train").Length - 5);
				comboBox1.Items.Add((object)text2);
			}
		}
		if (!Directory.Exists(pathAutoClick + "/CMD"))
		{
			Directory.CreateDirectory(pathAutoClick + "/CMD");
		}
		else
		{
			string[] files2 = Directory.GetFiles(pathAutoClick + "/CMD", "*.txt");
			List<string> val6 = new List<string>();
			val6.AddRange((System.Collections.Generic.IEnumerable<string>)files2);
			Enumerator<string> enumerator = val6.GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					string current = enumerator.Current;
					string text3 = current.Substring((pathAutoClick + "/CMD").Length + 1, current.Length - (pathAutoClick + "/CMD").Length - 5);
					if (!text3.Contains(charError[0]))
					{
						comboBoxFile.Items.Add((object)text3);
					}
				}
			}
			finally
			{
				((System.IDisposable)enumerator/*cast due to .constrained prefix*/).Dispose();
			}
		}
		loadSetting();
		debugText("begin");
		if (flag)
		{
			ButtonRunAuto.CheckState = (CheckState)1;
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
		//IL_013f: Unknown result type (might be due to invalid IL or missing references)
		RECT val = default(RECT);
		val = AutoControl.GetWindowRect(hWnd);
		SetWindowPos(hWnd, 0, val.Left, val.Top, 1066, 724, 2);
		((Control)groupBox2).Text = "Vị Trí Flash: " + val.Top + " x " + val.Left;
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
			debugText("Write FPS: " + numericUpDownFPS.Value);
		}
		else
		{
			debugText("Write FPS False");
		}
		debugText("begin");
	}

	private void button5_MouseDown(object sender, MouseEventArgs e)
	{
		Cursor.Current = Cursors.Cross;
	}

	private void button3_MouseDown(object sender, MouseEventArgs e)
	{
		Cursor.Current = Cursors.Cross;
	}

	private void button5_MouseUp(object sender, MouseEventArgs e)
	{
		//IL_001c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0021: Unknown result type (might be due to invalid IL or missing references)
		//IL_0032: Unknown result type (might be due to invalid IL or missing references)
		//IL_0037: Unknown result type (might be due to invalid IL or missing references)
		//IL_0041: Unknown result type (might be due to invalid IL or missing references)
		//IL_0046: Unknown result type (might be due to invalid IL or missing references)
		//IL_0076: Unknown result type (might be due to invalid IL or missing references)
		Cursor.Current = Cursors.Default;
		Point globalPoint = AutoControl.GetGlobalPoint(hWnd, (Point?)null);
		int x = ((Point)(ref globalPoint)).X;
		int y = ((Point)(ref globalPoint)).Y;
		Point position = Cursor.Position;
		int x2 = ((Point)(ref position)).X;
		position = Cursor.Position;
		int y2 = ((Point)(ref position)).Y;
		ViTriTrain1_X = x2 - x;
		ViTriTrain1_Y = y2 - y;
		map = checkTenMap();
		((Control)button5).BackColor = Color.Green;
		CapNhatThongTin();
	}

	private void button3_MouseUp(object sender, MouseEventArgs e)
	{
		//IL_001c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0021: Unknown result type (might be due to invalid IL or missing references)
		//IL_0032: Unknown result type (might be due to invalid IL or missing references)
		//IL_0037: Unknown result type (might be due to invalid IL or missing references)
		//IL_0041: Unknown result type (might be due to invalid IL or missing references)
		//IL_0046: Unknown result type (might be due to invalid IL or missing references)
		//IL_0076: Unknown result type (might be due to invalid IL or missing references)
		Cursor.Current = Cursors.Default;
		Point globalPoint = AutoControl.GetGlobalPoint(hWnd, (Point?)null);
		int x = ((Point)(ref globalPoint)).X;
		int y = ((Point)(ref globalPoint)).Y;
		Point position = Cursor.Position;
		int x2 = ((Point)(ref position)).X;
		position = Cursor.Position;
		int y2 = ((Point)(ref position)).Y;
		ViTriTrain2_X = x2 - x;
		ViTriTrain2_Y = y2 - y;
		map = checkTenMap();
		((Control)button3).BackColor = Color.Green;
		CapNhatThongTin();
	}

	private void CapNhatThongTin()
	{
		((Control)labelAcccheck).Text = string.Concat(new string[10]
		{
			"Map:",
			map,
			"\r\nVi\u0323 Tri\u0301 1: ",
			ViTriTrain1_X.ToString(),
			" x ",
			ViTriTrain1_Y.ToString(),
			"\r\nVi\u0323 Tri\u0301 2: ",
			ViTriTrain2_X.ToString(),
			" x ",
			ViTriTrain2_Y.ToString()
		});
	}

	private void trackBar1_Scroll(object sender, EventArgs e)
	{
		HeSoHoiPhuc = trackBar1.Value;
		((Control)label17).Text = HeSoHoiPhuc + " %";
	}

	private void button7_Click(object sender, EventArgs e)
	{
		//IL_0308: Unknown result type (might be due to invalid IL or missing references)
		//IL_030e: Expected O, but got Unknown
		string text = "";
		text = ((!checkBoxMapTrain.Checked) ? (text + "Map:0\r\n") : (text + "Map:1\r\n"));
		text = ((!checkBoxPhuToiMap.Checked) ? (text + "Phu:0\r\n") : (text + "Phu:1\r\n"));
		text = ((!checkBoxBay.Checked) ? (text + "Bay:0\r\n") : (text + "Bay:1\r\n"));
		text = ((!checkBoxDaPet.Checked) ? (text + "Đa\u0301 Pet:0\r\n") : (text + "Đa\u0301 Pet:1\r\n"));
		text = text + "Lươ\u0323t Đa\u0301 Pet:" + (int)numericUpDownDaPet.Value + "\r\n";
		text = ((!checkBoxTrong.Checked) ? (text + "Trô\u0300ng:0\r\n") : (text + "Trô\u0300ng:1\r\n"));
		text = text + "NL Trô\u0300ng:" + ((Control)comboBoxTrong).Text + "\r\n";
		text = string.Concat(new string[14]
		{
			text,
			"Vi\u0323 Tri\u0301 1X:",
			ViTriTrain1_X.ToString(),
			"\r\nVi\u0323 Tri\u0301 1Y:",
			ViTriTrain1_Y.ToString(),
			"\r\nVi\u0323 Tri\u0301 2X:",
			ViTriTrain2_X.ToString(),
			"\r\nVi\u0323 Tri\u0301 2Y:",
			ViTriTrain2_Y.ToString(),
			"\r\nHô\u0300i Phu\u0323c:",
			trackBar1.Value.ToString(),
			"\r\nMapName:",
			map,
			"\r\n"
		});
		text = ((!checkBoxAutoClick.Checked) ? (text + "AutoClick:0\r\n") : (text + "AutoClick:1\r\n"));
		text = text + "FileName:" + ((Control)comboBoxFile).Text + "\r\n";
		text = ((!checkBoxEnd.Checked) ? (text + "End:0\r\n") : (text + "End:1\r\n"));
		text = text + "runEnd:" + ((Control)comboBoxEnd).Text + "\r\n";
		text = text + "Nhân Vâ\u0323t:" + (int)numericUpDownNV.Value + "\r\n";
		text = text + "End Giơ\u0300:" + (int)numericUpDownS_h.Value + "\r\n";
		text = text + "End Phu\u0301:" + (int)numericUpDownS_m.Value;
		TextWriter val = (TextWriter)new StreamWriter(linkApp + "/Train/" + ((Control)comboBox1).Text + ".txt");
		val.Write(text);
		val.Close();
	}

	private void button1_Click(object sender, EventArgs e)
	{
		//IL_0a97: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a9d: Expected O, but got Unknown
		nameUser = Program.AppMain.nameUser;
		if (!File.Exists(linkApp + "/Train/" + ((Control)comboBox1).Text + ".txt"))
		{
			Directory.CreateDirectory(linkApp + "/Train");
			return;
		}
		string[] array = File.ReadAllLines(linkApp + "/Train/" + ((Control)comboBox1).Text + ".txt");
		for (int i = 0; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array); i++)
		{
			string[] array2 = array[i].Split(':', (StringSplitOptions)0);
			string text = array2[0];
			string text2 = text;
			switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text2))
			{
			case 1151856721u:
				if (text2 == "Map")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxMapTrain.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxMapTrain.CheckState = (CheckState)0;
					}
				}
				break;
			case 3142168944u:
				if (text2 == "Phu")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxPhuToiMap.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxPhuToiMap.CheckState = (CheckState)0;
					}
				}
				break;
			case 3535564687u:
				if (text2 == "Bay")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxBay.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxBay.CheckState = (CheckState)0;
					}
				}
				break;
			case 2649000816u:
				if (text2 == "Đa\u0301 Pet")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxDaPet.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxDaPet.CheckState = (CheckState)0;
					}
				}
				break;
			case 2704694752u:
				if (text2 == "Lươ\u0323t Đa\u0301 Pet")
				{
					numericUpDownDaPet.Value = decimal.op_Implicit(int.Parse(array2[1].Trim()));
				}
				break;
			case 3869294812u:
				if (text2 == "Trô\u0300ng")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxTrong.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxTrong.CheckState = (CheckState)0;
					}
				}
				break;
			case 174324892u:
				if (text2 == "NL Trô\u0300ng")
				{
					((Control)comboBoxTrong).Text = array2[1].Trim();
				}
				break;
			case 2925011340u:
				if (text2 == "Vi\u0323 Tri\u0301 1X")
				{
					ViTriTrain1_X = int.Parse(array2[1].Trim());
				}
				break;
			case 2941788959u:
				if (text2 == "Vi\u0323 Tri\u0301 1Y")
				{
					ViTriTrain1_Y = int.Parse(array2[1].Trim());
				}
				break;
			case 2959007863u:
				if (text2 == "Vi\u0323 Tri\u0301 2X")
				{
					ViTriTrain2_X = int.Parse(array2[1].Trim());
				}
				break;
			case 2942230244u:
				if (text2 == "Vi\u0323 Tri\u0301 2Y")
				{
					ViTriTrain2_Y = int.Parse(array2[1].Trim());
				}
				break;
			case 2909505883u:
				if (text2 == "Hô\u0300i Phu\u0323c")
				{
					trackBar1.Value = int.Parse(array2[1].Trim());
					((Control)label17).Text = trackBar1.Value + " %";
					HeSoHoiPhuc = trackBar1.Value;
				}
				break;
			case 496183594u:
				if (text2 == "MapName")
				{
					map = array2[1].Trim();
				}
				break;
			case 1086587366u:
				if (text2 == "AutoClick")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxAutoClick.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxAutoClick.CheckState = (CheckState)0;
					}
				}
				break;
			case 1610471560u:
				if (text2 == "FileName")
				{
					((Control)comboBoxFile).Text = array2[1].Trim();
				}
				break;
			case 3482547786u:
				if (text2 == "End")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxEnd.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxEnd.CheckState = (CheckState)0;
					}
				}
				break;
			case 2003025303u:
				if (text2 == "runEnd")
				{
					((Control)comboBoxEnd).Text = array2[1].Trim();
				}
				break;
			case 3318290782u:
				if (text2 == "Nhân Vâ\u0323t")
				{
					numericUpDownNV.Value = decimal.op_Implicit(int.Parse(array2[1].Trim()));
				}
				break;
			case 4175455727u:
				if (text2 == "End Giơ\u0300")
				{
					numericUpDownS_h.Value = decimal.op_Implicit(int.Parse(array2[1].Trim()));
				}
				break;
			case 1462243012u:
				if (text2 == "End Phu\u0301t")
				{
					numericUpDownS_m.Value = decimal.op_Implicit(int.Parse(array2[1].Trim()));
				}
				break;
			}
		}
		CapNhatThongTin();
		debugText("Đa\u0303 a\u0301p du\u0323ng ba\u0309n lưu");
		string text3 = "";
		text3 = ((!checkBoxMapTrain.Checked) ? (text3 + "Map:0\r\n") : (text3 + "Map:1\r\n"));
		text3 = ((!checkBoxPhuToiMap.Checked) ? (text3 + "Phu:0\r\n") : (text3 + "Phu:1\r\n"));
		text3 = ((!checkBoxBay.Checked) ? (text3 + "Bay:0\r\n") : (text3 + "Bay:1\r\n"));
		text3 = ((!checkBoxDaPet.Checked) ? (text3 + "Đa\u0301 Pet:0\r\n") : (text3 + "Đa\u0301 Pet:1\r\n"));
		text3 = text3 + "Lươ\u0323t Đa\u0301 Pet:" + (int)numericUpDownDaPet.Value + "\r\n";
		text3 = ((!checkBoxTrong.Checked) ? (text3 + "Trô\u0300ng:0\r\n") : (text3 + "Trô\u0300ng:1\r\n"));
		text3 = text3 + "NL Trô\u0300ng:" + ((Control)comboBoxTrong).Text + "\r\n";
		text3 = string.Concat(new string[14]
		{
			text3,
			"Vi\u0323 Tri\u0301 1X:",
			ViTriTrain1_X.ToString(),
			"\r\nVi\u0323 Tri\u0301 1Y:",
			ViTriTrain1_Y.ToString(),
			"\r\nVi\u0323 Tri\u0301 2X:",
			ViTriTrain2_X.ToString(),
			"\r\nVi\u0323 Tri\u0301 2Y:",
			ViTriTrain2_Y.ToString(),
			"\r\nHô\u0300i Phu\u0323c:",
			trackBar1.Value.ToString(),
			"\r\nMapName:",
			map,
			"\r\n"
		});
		text3 = ((!checkBoxAutoClick.Checked) ? (text3 + "AutoClick:0\r\n") : (text3 + "AutoClick:1\r\n"));
		text3 = text3 + "FileName:" + ((Control)comboBoxFile).Text + "\r\n";
		text3 = ((!checkBoxEnd.Checked) ? (text3 + "End:0\r\n") : (text3 + "End:1\r\n"));
		text3 = text3 + "runEnd:" + ((Control)comboBoxEnd).Text + "\r\n";
		text3 = text3 + "Nhân Vâ\u0323t:" + (int)numericUpDownNV.Value + "\r\n";
		text3 = text3 + "End Giơ\u0300:" + (int)numericUpDownS_h.Value + "\r\n";
		text3 = text3 + "End Phu\u0301:" + (int)numericUpDownS_m.Value;
		if (!File.Exists(pathData + "/Setting/" + nameUser + "/SPQ_train.txt"))
		{
			Directory.CreateDirectory(pathData + "/Setting/" + nameUser);
		}
		TextWriter val = (TextWriter)new StreamWriter(pathData + "/Setting/" + nameUser + "/Trn_train.txt");
		val.Write(text3);
		val.Close();
	}

	private void ButtonDebug_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		//IL_0044: Unknown result type (might be due to invalid IL or missing references)
		//IL_004a: Invalid comparison between Unknown and I4
		//IL_0030: Unknown result type (might be due to invalid IL or missing references)
		//IL_006d: Unknown result type (might be due to invalid IL or missing references)
		if ((int)ButtonDebug.CheckState == 1)
		{
			((Control)ButtonDebug).Text = "Thu Gọn";
			((Form)this).Size = new Size(387, 450);
		}
		else if ((int)ButtonDebug.CheckState == 0)
		{
			((Control)ButtonDebug).Text = "Chi Tiết";
			((Form)this).Size = new Size(387, 167);
		}
	}

	private void button2_Click(object sender, EventArgs e)
	{
		if (!Directory.Exists(linkApp + "/Train"))
		{
			Directory.CreateDirectory(linkApp + "/Train");
			return;
		}
		comboBox1.Items.Clear();
		string[] files = Directory.GetFiles(linkApp + "/Train", "*.txt");
		string[] array = files;
		foreach (string text in array)
		{
			string text2 = text.Substring((linkApp + "/Train").Length + 1, text.Length - (linkApp + "/Train").Length - 5);
			comboBox1.Items.Add((object)text2);
		}
	}

	private void ButtonRunAuto_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		//IL_008f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0095: Invalid comparison between Unknown and I4
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_006b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0075: Expected O, but got Unknown
		//IL_00a2: Unknown result type (might be due to invalid IL or missing references)
		if ((int)ButtonRunAuto.CheckState == 1)
		{
			((Control)ButtonRunAuto).BackColor = Color.Green;
			((Control)ButtonRunAuto).Text = "Stop";
			((Control)buttonPause).Enabled = true;
			((Control)groupBox1).Enabled = false;
			debugText("start");
			IsStop = false;
			T_NN = new System.Threading.Tasks.Task((Action)([CompilerGenerated] () =>
			{
				//IL_017e: Unknown result type (might be due to invalid IL or missing references)
				//IL_0211: Unknown result type (might be due to invalid IL or missing references)
				//IL_0217: Invalid comparison between Unknown and I4
				//IL_028d: Unknown result type (might be due to invalid IL or missing references)
				//IL_0293: Invalid comparison between Unknown and I4
				if (checkBoxAutoClick.Checked)
				{
					run_autoClick();
				}
				if (checkBoxPhuToiMap.Checked)
				{
					PhuToiMap2(hWnd, map);
				}
				if (checkBoxBay.Checked)
				{
					Bay();
					Bay();
					Bay();
				}
				else
				{
					Xuong();
					Xuong();
					Xuong();
				}
				delay_100ms(5);
				int num = (int)ReadMemoryData(processID, myPointer, offset_ToaDoX);
				int num2 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoY);
				while (num == 0 && num2 == 0)
				{
					num = (int)ReadMemoryData(processID, myPointer, offset_ToaDoX);
					num2 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoY);
					delay_100ms(5);
					debugText("Memory False!");
				}
				ViTriNhanVat_X = num;
				ViTriNhanVat_Y = num2;
				if (WriteMemoryData(processID, myPointer, offset_FPS, 50.0))
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
				if (checkBoxDaPet.Checked || checkBoxTrong.Checked || checkBoxEnd.Checked)
				{
					startTimer();
				}
				if ((int)checkBoxDaPet.CheckState == 1 && numericUpDownDaPet.Value > 0m)
				{
					DaPet();
					delay_100ms(5);
					NumericUpDown obj = numericUpDownDaPet;
					decimal value = obj.Value;
					obj.Value = value - 1m;
					PressKey("ESC");
					countTimer_pet = 0;
				}
				debugText("End_Line");
				if ((int)checkBoxTrong.CheckState == 1)
				{
					Trong();
					delay_100ms(5);
					PressKey("ESC");
					countTimer_trong = 0;
				}
				debugText("End_Line");
				if (checkBoxEnd.Checked)
				{
					thoigian = (int)numericUpDownS_h.Value * 60 * 60 + (int)numericUpDownS_m.Value * 60;
				}
				setupRun();
				checkPhucHoi(hWnd);
				TrongTran = false;
				if (checkBoxMapTrain.Checked)
				{
					PressKey("`");
				}
				TurnPet = (int)numericUpDown1.Value;
				while (!IsStop)
				{
					debugText("End_Line");
					train();
					checkTimer();
				}
			}));
			T_NN.Start();
		}
		else if ((int)ButtonRunAuto.CheckState == 0)
		{
			((Control)ButtonRunAuto).BackColor = Control.DefaultBackColor;
			((Control)ButtonRunAuto).Text = "Start";
			((Control)buttonPause).Enabled = false;
			((Control)groupBox1).Enabled = true;
			debugText("stop");
			IsStop = true;
			if (autoRun)
			{
				((Form)this).Close();
			}
		}
	}

	private void button6_Click(object sender, EventArgs e)
	{
		//IL_001c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0021: Unknown result type (might be due to invalid IL or missing references)
		//IL_0022: Unknown result type (might be due to invalid IL or missing references)
		//IL_0024: Invalid comparison between Unknown and I4
		DialogResult val = MessageBox.Show("Xa\u0301c Nhâ\u0323n Xo\u0301a Ba\u0309n Lưu " + ((Control)comboBox1).Text, "BMx Tool", (MessageBoxButtons)4);
		if ((int)val == 6)
		{
			File.Delete(linkApp + "/Train/" + ((Control)comboBox1).Text + ".txt");
		}
	}

	private void checkBoxDaPet_CheckedChanged(object sender, EventArgs e)
	{
		//IL_0015: Unknown result type (might be due to invalid IL or missing references)
		//IL_0022: Unknown result type (might be due to invalid IL or missing references)
		//IL_002f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0035: Invalid comparison between Unknown and I4
		if (!IsStop)
		{
			if ((int)checkBoxDaPet.CheckState == 0 && (int)checkBoxTrong.CheckState == 0 && (int)checkBoxEnd.CheckState == 0)
			{
				stopTimer();
			}
			else
			{
				startTimer();
			}
		}
		countTimer_end = 0;
		thoigian = (int)numericUpDownS_h.Value * 60 * 60 + (int)numericUpDownS_m.Value * 60;
	}

	private void buttonPause_Click(object sender, EventArgs e)
	{
		if (IsPause)
		{
			IsPause = false;
			((Control)buttonPause).Text = "Pause";
			((Control)groupBox1).Enabled = false;
		}
		else
		{
			IsPause = true;
			((Control)buttonPause).Text = "Next";
			((Control)groupBox1).Enabled = true;
		}
		debugText("Tạm Dừng " + IsPause);
	}

	private void Train_FormClosed(object sender, FormClosedEventArgs e)
	{
		//IL_000f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0019: Expected O, but got Unknown
		Login login = new Login();
		((Form)login).Closed += (EventHandler)([CompilerGenerated] (object? s, EventArgs args) =>
		{
			((Form)this).Close();
		});
	}

	private bool checkTrongTran()
	{
		if (FindPoint(hWnd, pathKhac + "/Log_ChuyenKenh.png").HasValue)
		{
			return false;
		}
		return true;
	}

	private void train()
	{
		//IL_01de: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0220: Unknown result type (might be due to invalid IL or missing references)
		//IL_0225: Unknown result type (might be due to invalid IL or missing references)
		//IL_0236: Unknown result type (might be due to invalid IL or missing references)
		//IL_023b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0262: Unknown result type (might be due to invalid IL or missing references)
		//IL_0267: Unknown result type (might be due to invalid IL or missing references)
		//IL_0278: Unknown result type (might be due to invalid IL or missing references)
		//IL_027d: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a9: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_02bf: Unknown result type (might be due to invalid IL or missing references)
		if (!checkTrongTran())
		{
			if (TrongTran)
			{
				TrongTran = false;
				Turn_Count++;
				if (Turn_Count >= TurnReset)
				{
					SendClickOnPosition(hWnd, 1033, 642, (EMouseKey)0);
					delay_100ms(2);
					SendClickOnPosition(hWnd, 1033, 642, (EMouseKey)0);
					delay_100ms(2);
					Turn_Count = 0;
				}
				Turn_Count2++;
				if (Turn_Count2 >= TurnPet)
				{
					resetPet();
					Turn_Count2 = 0;
				}
				checkPhucHoi(hWnd);
				if (checkBoxMapTrain.Checked)
				{
					PressKey("`");
				}
			}
			checkNgoaiTran++;
			debugText("Ở Ngoài " + checkNgoaiTran);
			if (checkNgoaiTran >= 16)
			{
				PressKey("Enter");
				bool flag = WriteMemoryData(processID, myPointer, offset_ToaDoX, ViTriNhanVat_X);
				bool flag2 = WriteMemoryData(processID, myPointer, offset_ToaDoY, ViTriNhanVat_Y);
				if (flag && flag2)
				{
					PressKey("P");
					delay_100ms(5);
					Point? val = FindPoint(hWnd, pathTacVu + "/ChienDau.png");
					if (val.HasValue)
					{
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
					}
					PressKey("ESC");
					PressKey("`");
				}
				else
				{
					debugText("Location False");
				}
				int viTriTrain1_X = ViTriTrain1_X;
				int viTriTrain2_X = ViTriTrain2_X;
				int viTriTrain1_Y = ViTriTrain1_Y;
				int viTriTrain2_Y = ViTriTrain2_Y;
				delay_100ms(2);
				AutoControl.SendClickOnPosition(hWnd, viTriTrain1_X + 10, viTriTrain1_Y - 30, (EMouseKey)0, 1);
				delay_100ms(2);
				AutoControl.SendClickOnPosition(hWnd, viTriTrain2_X + 10, viTriTrain2_Y - 30, (EMouseKey)0, 1);
				delay_100ms(2);
				checkNgoaiTran = 0;
			}
			switch (checkNgoaiTran)
			{
			case 0:
			case 1:
			case 2:
			case 3:
				AutoControl.SendClickOnPosition(hWnd, ViTriTrain1_X, ViTriTrain1_Y - 30, (EMouseKey)0, 1);
				break;
			case 4:
			case 5:
			case 6:
			case 7:
				AutoControl.SendClickOnPosition(hWnd, ViTriTrain2_X, ViTriTrain2_Y - 30, (EMouseKey)0, 1);
				break;
			case 8:
			case 9:
			case 10:
			case 11:
				AutoControl.SendClickOnPosition(hWnd, ViTriTrain1_X, ViTriTrain1_Y - 30, (EMouseKey)0, 1);
				break;
			case 12:
			case 13:
			case 14:
			case 15:
				AutoControl.SendClickOnPosition(hWnd, ViTriTrain2_X, ViTriTrain2_Y - 30, (EMouseKey)0, 1);
				break;
			}
			delay_100ms(3);
		}
		delay_100ms(5);
		if (checkTrongTran())
		{
			checkNgoaiTran = 0;
			if (!TrongTran)
			{
				TrongTran = true;
				debugText("Trong Trận");
			}
			FindAndClick(hWnd, pathTruMa + "/Auto.png", 2, 2, "Auto");
		}
	}

	private double CheckDataMemory(System.IntPtr hWnd2, uint[] offset)
	{
		GetWindowThreadProcessId(hWnd2, out var processId);
		return ReadMemoryData(processId, myPointer2, offset);
	}

	private void checkPhucHoi(System.IntPtr acc)
	{
		int num = 0;
		double num2 = CheckDataMemory(acc, offset_HP);
		double num3 = CheckDataMemory(acc, offset_HPmax);
		double num4 = CheckDataMemory(acc, offset_MP);
		double num5 = CheckDataMemory(acc, offset_MPmax);
		double num6 = CheckDataMemory(acc, offset_HP2);
		double num7 = CheckDataMemory(acc, offset_HPmax2);
		double num8 = CheckDataMemory(acc, offset_MP2);
		double num9 = CheckDataMemory(acc, offset_MPmax2);
		((Control)labelpt1).Text = string.Concat(new string[15]
		{
			num2.ToString(),
			" / ",
			num3.ToString(),
			"\r\n",
			num4.ToString(),
			" / ",
			num5.ToString(),
			"\r\n",
			num6.ToString(),
			" / ",
			num7.ToString(),
			"\r\n",
			num8.ToString(),
			" / ",
			num9.ToString()
		});
		if (num2 < (double)((float)num3 * (float)HeSoHoiPhuc / 100f) || num4 < (double)((float)num5 * (float)HeSoHoiPhuc / 100f))
		{
			num = 1;
		}
		if (num6 < (double)((float)num7 * (float)HeSoHoiPhuc / 100f) || num8 < (double)((float)num9 * (float)HeSoHoiPhuc / 100f))
		{
			num = num * 10 + 2;
		}
		switch (num)
		{
		case 1:
			SendClickOnPosition(acc, 127, 58, (EMouseKey)0);
			delay_100ms(10);
			debugText("NV");
			break;
		case 2:
			SendClickOnPosition(acc, 127, 118, (EMouseKey)0);
			delay_100ms(10);
			debugText("Pet");
			break;
		case 12:
			SendClickOnPosition(acc, 127, 58, (EMouseKey)0);
			delay_100ms(10);
			SendClickOnPosition(acc, 127, 118, (EMouseKey)0);
			delay_100ms(10);
			debugText("NV+Pet");
			break;
		}
	}

	private void setupRun()
	{
		//IL_0082: Unknown result type (might be due to invalid IL or missing references)
		//IL_0087: Unknown result type (might be due to invalid IL or missing references)
		//IL_0092: Unknown result type (might be due to invalid IL or missing references)
		//IL_0097: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fa: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ff: Unknown result type (might be due to invalid IL or missing references)
		//IL_0116: Unknown result type (might be due to invalid IL or missing references)
		//IL_011b: Unknown result type (might be due to invalid IL or missing references)
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
		delay_100ms(2);
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
		delay_100ms(2);
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

	private unsafe void Trong()
	{
		//IL_04bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_04c4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0583: Unknown result type (might be due to invalid IL or missing references)
		//IL_0588: Unknown result type (might be due to invalid IL or missing references)
		//IL_04ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_04cf: Unknown result type (might be due to invalid IL or missing references)
		//IL_058e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0593: Unknown result type (might be due to invalid IL or missing references)
		int num = 0;
		List<Point> val;
		while (true)
		{
			PressKey("null");
			while (!FindAndClick(hWnd, pathKhac + "/TrangVien_Icon.png", 5, 1, "Trang Viên").HasValue)
			{
				FindsAndClick(hWnd, pathTacVu + "/MuiTenIcon.png", 0, 0, "Show");
			}
			delay_100ms(5);
			if (FindPoint(hWnd, pathKhac + "/TrangVien_Err.png").HasValue)
			{
				num++;
				PressKey("ESC");
				delay_100ms(5);
				if (num > 5)
				{
					debugText("Check trang viên lô\u0303i");
					return;
				}
				continue;
			}
			val = FindPoints(hWnd, pathKhac + "/TrangVien_DatTrong.png");
			while (!FindAndClick(hWnd, pathKhac + "/TrangVien_NuoiTrong.png", 5, 1, "Chọn NL").HasValue)
			{
				delay_100ms(5);
			}
			delay_100ms(5);
			Point? val2 = null;
			string text = ((Control)comboBoxTrong).Text;
			string text2 = text;
			switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text2))
			{
			case 1573425055u:
				if (text2 == "Kim Loại")
				{
					val2 = FindAndClick(hWnd, pathKhac + "/TrangVien_KL.png", 5, 1, "Kim Loại");
				}
				break;
			case 3922118883u:
				if (text2 == "Gỗ")
				{
					val2 = FindAndClick(hWnd, pathKhac + "/TrangVien_G.png", 5, 1, "Gỗ");
				}
				break;
			case 1688086040u:
				if (text2 == "Lông Thú")
				{
					val2 = FindAndClick(hWnd, pathKhac + "/TrangVien_LT.png", 5, 1, "Lông Thú");
				}
				break;
			case 3368508570u:
				if (text2 == "Ngọc")
				{
					val2 = FindAndClick(hWnd, pathKhac + "/TrangVien_N.png", 5, 1, "Ngọc");
				}
				break;
			case 4084119917u:
				if (text2 == "Vải Thô")
				{
					val2 = FindAndClick(hWnd, pathKhac + "/TrangVien_VT.png", 5, 1, "Vải Thô");
				}
				break;
			case 1221161470u:
				if (text2 == "Kim Loại Hiếm")
				{
					val2 = FindAndClick(hWnd, pathKhac + "/TrangVien_KLH.png", 5, 1, "Kim Loại Hiếm");
				}
				break;
			case 3389700338u:
				if (text2 == "Gỗ Tốt")
				{
					val2 = FindAndClick(hWnd, pathKhac + "/TrangVien_GT.png", 5, 1, "Gỗ Tốt");
				}
				break;
			case 2458332588u:
				if (text2 == "Da Thú")
				{
					val2 = FindAndClick(hWnd, pathKhac + "/TrangVien_DT.png", 5, 1, "Da Thú");
				}
				break;
			case 4235749110u:
				if (text2 == "Pha Lê")
				{
					val2 = FindAndClick(hWnd, pathKhac + "/TrangVien_PL.png", 5, 1, "Pha Lê");
				}
				break;
			case 4165754756u:
				if (text2 == "Gấm Vóc")
				{
					val2 = FindAndClick(hWnd, pathKhac + "/TrangVien_GV.png", 5, 1, "Gấm Vóc ");
				}
				break;
			}
			if (val2.HasValue)
			{
				break;
			}
			PressKey("ESC");
			delay_100ms(5);
		}
		delay_100ms(3);
		if (val.Count != 0)
		{
			Enumerator<Point> enumerator = val.GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					Point current = enumerator.Current;
					AutoControl.SendClickOnPosition(hWnd, ((Point)(ref current)).X, ((Point)(ref current)).Y - 30, (EMouseKey)0, 1);
					debugText("Trồng " + ((object)(*(Point*)(&current))/*cast due to .constrained prefix*/).ToString());
					delay_100ms(5);
					AutoControl.SendClickUpOnPosition(hWnd, 20, 20, (EMouseKey)0, 1);
					delay_100ms(5);
				}
			}
			finally
			{
				((System.IDisposable)enumerator/*cast due to .constrained prefix*/).Dispose();
			}
		}
		FindAndClick(hWnd, pathKhac + "/TrangVien_ToanBo.png", 0, 0, "Toàn Bộ");
		if (val.Count != 0)
		{
			Enumerator<Point> enumerator2 = val.GetEnumerator();
			try
			{
				while (enumerator2.MoveNext())
				{
					Point current2 = enumerator2.Current;
					AutoControl.SendClickOnPosition(hWnd, ((Point)(ref current2)).X, ((Point)(ref current2)).Y - 30, (EMouseKey)0, 1);
					debugText("Thu Hoạch " + ((object)(*(Point*)(&current2))/*cast due to .constrained prefix*/).ToString());
					delay_100ms(5);
				}
			}
			finally
			{
				((System.IDisposable)enumerator2/*cast due to .constrained prefix*/).Dispose();
			}
		}
		debugText("Trồng Xong");
	}

	private void DaPet()
	{
		PressKey("null");
		while (true)
		{
			if (!FindAndClick(hWnd, pathKhac + "/DaPet_Icon.png", 5, 1, "Đá Pet").HasValue)
			{
				FindsAndClick(hWnd, pathTacVu + "/MuiTenIcon.png", 0, 0, "Show");
				PressKey("OK");
				delay_100ms(30);
				continue;
			}
			if (!FindPoint(hWnd, pathKhac + "/DaPet_KhieuChien.png").HasValue)
			{
				FindAndClick(hWnd, pathKhac + "/DaPet_BaoDanh.png", 5, 1, "Báo Danh");
				FindAndClick(hWnd, pathKhac + "/DaPet_XacNhanBaoDanh.png", 5, 1, "Xác Nhận Báo Danh");
				PressKey("Enter");
			}
			delay_100ms(5);
			if (FindsAndClickRandom(hWnd, pathKhac + "/DaPet_KhieuChien.png", 5, 1, "Khiêu Chiến", Settings.Default.kickPet))
			{
				break;
			}
		}
		debugText("Đá Pet Xong");
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

	private void resetPet()
	{
		PressKey("ESC");
		delay_100ms(5);
		PressKey("ESC");
		delay_100ms(5);
		PressKey("ESC");
		delay_100ms(5);
		PressKey("W");
		delay_100ms(10);
		if (FindAndClick(hWnd, pathKhac + "/setupRun_1.png", 34, 189, "Nghỉ").HasValue)
		{
			delay_100ms(30);
			PressKey("ESC");
			delay_100ms(5);
			PressKey("ESC");
			delay_100ms(5);
			PressKey("ESC");
			delay_100ms(5);
			PressKey("W");
			delay_100ms(10);
			FindAndClick(hWnd, pathKhac + "/setupRun_1.png", 34, 189, "Đấu");
			delay_100ms(5);
		}
	}

	private void startTimer()
	{
		//IL_0018: Unknown result type (might be due to invalid IL or missing references)
		//IL_0022: Expected O, but got Unknown
		//IL_002e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0038: Expected O, but got Unknown
		if (!userTimer)
		{
			myTimer = new Timer(1000.0);
			myTimer.Elapsed += new ElapsedEventHandler(myTimerEvent);
			myTimer.AutoReset = true;
			myTimer.Start();
			userTimer = true;
		}
	}

	private void stopTimer()
	{
		if (userTimer)
		{
			myTimer.Stop();
			((Component)myTimer).Dispose();
			userTimer = false;
		}
	}

	private void myTimerEvent(object source, ElapsedEventArgs e)
	{
		//IL_000d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0013: Invalid comparison between Unknown and I4
		//IL_0056: Unknown result type (might be due to invalid IL or missing references)
		//IL_005c: Invalid comparison between Unknown and I4
		//IL_0086: Unknown result type (might be due to invalid IL or missing references)
		//IL_008c: Invalid comparison between Unknown and I4
		int num = 0;
		int num2 = 0;
		int num3 = 0;
		if ((int)checkBoxDaPet.CheckState == 1 && !IsStop && (int)numericUpDownDaPet.Value > 0)
		{
			countTimer_pet++;
		}
		if ((int)checkBoxTrong.CheckState == 1 && !IsStop)
		{
			countTimer_trong++;
		}
		if ((int)checkBoxEnd.CheckState == 1 && !IsStop)
		{
			countTimer_end++;
			num = countTimer_end / 3600;
			num2 = countTimer_end / 60 - num * 60;
			num3 = countTimer_end - num2 * 60 - num * 3600;
			((Control)label7).Text = string.Concat(new string[6]
			{
				"Timer: ",
				num.ToString("D2"),
				":",
				num2.ToString("D2"),
				":",
				num3.ToString("D2")
			});
			if (countTimer_end >= thoigian)
			{
				ButtonRunAuto.CheckState = (CheckState)0;
				runEnd();
				((Form)this).Close();
			}
		}
		if (!IsStop)
		{
			counter++;
		}
		num = counter / 3600;
		num2 = counter / 60 - num * 60;
		num3 = counter - num2 * 60 - num * 3600;
		((Control)label1).Text = string.Concat(new string[6]
		{
			"Run: ",
			num.ToString("D2"),
			":",
			num2.ToString("D2"),
			":",
			num3.ToString("D2")
		});
	}

	private void checkTimer()
	{
		int num = (int)numericUpDownDaPet.Value;
		if (num > 0)
		{
			if (countTimer_pet >= 600)
			{
				DaPet();
				PressKey("ESC");
				countTimer_pet = 0;
				numericUpDownDaPet.Value = decimal.op_Implicit(num - 1);
			}
		}
		else
		{
			countTimer_pet = 0;
		}
		if (countTimer_trong >= 610)
		{
			Trong();
			PressKey("ESC");
			countTimer_trong = 0;
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
		if (IsStop)
		{
			T_NN.Wait();
		}
		while (IsPause && !IsStop)
		{
		}
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
		long num = default(long);
		long.TryParse(time_delay, ref num);
		bool flag = false;
		switch (cmd[2])
		{
		case 'P':
		{
			string[] array3 = cmd.Substring(5, cmd.Length - 6).Split(';', (StringSplitOptions)0);
			int x2 = default(int);
			int.TryParse(array3[0], ref x2);
			int y = default(int);
			int.TryParse(array3[1], ref y);
			if (cmd[0] == 'C')
			{
				Click_Point(x2, y, isClick);
			}
			else
			{
				Click_Point(x2, y, isDoubleClick);
			}
			delay_20ms(num);
			break;
		}
		case 'I':
		{
			string text3 = cmd.Substring(5, cmd.Length - 10);
			if (FindsAndClick_center(doubleClick: (cmd[0] != 'C') ? isDoubleClick : isClick, img: pathAutoClick + "/" + text3 + ".png"))
			{
				delay_20ms(num);
			}
			break;
		}
		case 'W':
		{
			string text4 = cmd.Substring(5, cmd.Length - 10);
			flag = ((cmd[0] != 'C') ? isDoubleClick : isClick);
			while (FindsAndClick_center(pathAutoClick + "/" + text4 + ".png", flag))
			{
				delay_20ms(num);
			}
			break;
		}
		case 'i':
		{
			string text5 = cmd.Substring(5, cmd.Length - 10);
			if (cmd[0] == 'C')
			{
				flag = isClick;
			}
			else
			{
				flag = isDoubleClick;
			}
			if (Enumerable.Count<Point>((System.Collections.Generic.IEnumerable<Point>)FindPoints_center(hWnd, pathAutoClick + "/" + text5 + ".png")) == 0)
			{
				delay_20ms(num);
			}
			break;
		}
		case 'w':
		{
			string text2 = cmd.Substring(5, cmd.Length - 10);
			if (cmd[0] == 'C')
			{
				flag = isClick;
			}
			else
			{
				flag = isDoubleClick;
			}
			while (Enumerable.Count<Point>((System.Collections.Generic.IEnumerable<Point>)FindPoints_center(hWnd, pathAutoClick + "/" + text2 + ".png")) == 0)
			{
				delay_20ms(num);
			}
			break;
		}
		case 'K':
		{
			string x = cmd.Substring(6, cmd.Length - 7);
			PressKey(x);
			delay_20ms(num);
			break;
		}
		case 'A':
		{
			string[] array2 = cmd.Substring(5, cmd.Length - 6).Split(';', (StringSplitOptions)0);
			PhuToiMap2(array2[0].Trim(), int.Parse(array2[1]), int.Parse(array2[2]));
			delay_20ms(num);
			break;
		}
		case 'T':
		{
			string[] array = cmd.Substring(5, cmd.Length - 6).Split(';', (StringSplitOptions)0);
			PhuToiMap2(array[0].Trim(), int.Parse(array[1]), int.Parse(array[2]), team: true);
			delay_20ms(num);
			break;
		}
		case 'F':
		{
			string text = cmd.Substring(5, cmd.Length - 10);
			FindItem(hWnd, pathAutoClick + "/" + text + ".png", text);
			delay_20ms(num);
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

	private void PhuToiMap2(string maps, double X, double Y, bool team = false)
	{
		//IL_026d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0272: Unknown result type (might be due to invalid IL or missing references)
		//IL_0283: Unknown result type (might be due to invalid IL or missing references)
		//IL_0288: Unknown result type (might be due to invalid IL or missing references)
		//IL_02af: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c5: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f1: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0307: Unknown result type (might be due to invalid IL or missing references)
		//IL_030c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0333: Unknown result type (might be due to invalid IL or missing references)
		//IL_0338: Unknown result type (might be due to invalid IL or missing references)
		//IL_0349: Unknown result type (might be due to invalid IL or missing references)
		//IL_034e: Unknown result type (might be due to invalid IL or missing references)
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
			while (!FindPoint(hWnd, pathMaps + "/map.png").HasValue)
			{
				PressKey("M");
				delay_100ms(2);
			}
			if (X != 0.0 && Y != 0.0)
			{
				WriteMemoryData(processId, myPointer, offset_ToaDoX, X * 10.0);
				WriteMemoryData(processId, myPointer, offset_ToaDoY, Y * 10.0);
			}
			if (num3 == 1)
			{
				if (!FindPoint(hWnd, pathMaps + "/checkmap.png").HasValue)
				{
					AutoControl.SendClickOnPosition(hWnd, 917, 562, (EMouseKey)0, 1);
					delay_100ms(5);
				}
			}
			else if (FindPoint(hWnd, pathMaps + "/checkmap.png").HasValue)
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
				double num4 = CheckLoadMap();
				debugText("ClearDebugText");
				debugText("Map - " + ((int)num4).ToString("D2") + "%");
				if (num4 == 100.0)
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
				int num5 = ((Point)(ref value)).X + 200;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr, num5, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
				delay_100ms(2);
				System.IntPtr intPtr2 = hWnd;
				value = val.Value;
				int num6 = ((Point)(ref value)).X + 200;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr2, num6, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
				delay_100ms(5);
				System.IntPtr intPtr3 = hWnd;
				value = val.Value;
				int num7 = ((Point)(ref value)).X + 200;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr3, num7, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
				delay_100ms(2);
				System.IntPtr intPtr4 = hWnd;
				value = val.Value;
				int num8 = ((Point)(ref value)).X + 200;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr4, num8, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
				delay_100ms(5);
			}
			PressKey("ESC");
		}
	}

	private void runEnd()
	{
		//IL_00bd: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_00cd: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0532: Unknown result type (might be due to invalid IL or missing references)
		//IL_0537: Unknown result type (might be due to invalid IL or missing references)
		//IL_0542: Unknown result type (might be due to invalid IL or missing references)
		//IL_0547: Unknown result type (might be due to invalid IL or missing references)
		string text = ((Control)comboBoxEnd).Text;
		string text2 = text;
		if (!(text2 == "Off"))
		{
			if (!(text2 == "BugOnl"))
			{
				return;
			}
			PressKey("ESC");
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
			switch ((int)numericUpDownNV.Value)
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
			default:
				AutoControl.SendClickOnPosition(hWnd, 291, 465, (EMouseKey)0, 1);
				delay_100ms(3);
				num2 = 400;
				num3 = 500;
				debugText("Lô\u0303i");
				break;
			}
			delay_100ms(20);
			AutoControl.SendClickOnPosition(hWnd, num2, num3 - 30, (EMouseKey)0, 1);
			delay_100ms(20);
			AutoControl.SendClickOnPosition(hWnd, num2, num3 - 30, (EMouseKey)0, 1);
			delay_100ms(10);
			Point? val2 = FindPoint(hWnd, pathKhac + "/Log_VaoGame.png");
			if (val2.HasValue)
			{
				System.IntPtr intPtr2 = hWnd;
				value = val2.Value;
				int x2 = ((Point)(ref value)).X;
				value = val2.Value;
				AutoControl.SendClickOnPosition(intPtr2, x2, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
			}
			delay_100ms(25);
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
		//IL_00de: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e8: Expected O, but got Unknown
		//IL_00e9: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f3: Expected O, but got Unknown
		//IL_00f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fe: Expected O, but got Unknown
		//IL_00ff: Unknown result type (might be due to invalid IL or missing references)
		//IL_0109: Expected O, but got Unknown
		//IL_010a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0114: Expected O, but got Unknown
		//IL_0115: Unknown result type (might be due to invalid IL or missing references)
		//IL_011f: Expected O, but got Unknown
		//IL_0120: Unknown result type (might be due to invalid IL or missing references)
		//IL_012a: Expected O, but got Unknown
		//IL_012b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0135: Expected O, but got Unknown
		//IL_0136: Unknown result type (might be due to invalid IL or missing references)
		//IL_0140: Expected O, but got Unknown
		//IL_0141: Unknown result type (might be due to invalid IL or missing references)
		//IL_014b: Expected O, but got Unknown
		//IL_014c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0156: Expected O, but got Unknown
		//IL_0157: Unknown result type (might be due to invalid IL or missing references)
		//IL_0161: Expected O, but got Unknown
		//IL_0162: Unknown result type (might be due to invalid IL or missing references)
		//IL_016c: Expected O, but got Unknown
		//IL_016d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0177: Expected O, but got Unknown
		//IL_0178: Unknown result type (might be due to invalid IL or missing references)
		//IL_0182: Expected O, but got Unknown
		//IL_0183: Unknown result type (might be due to invalid IL or missing references)
		//IL_018d: Expected O, but got Unknown
		//IL_018e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0198: Expected O, but got Unknown
		//IL_0199: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a3: Expected O, but got Unknown
		//IL_01a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ae: Expected O, but got Unknown
		//IL_01af: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b9: Expected O, but got Unknown
		//IL_01ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c4: Expected O, but got Unknown
		//IL_01c5: Unknown result type (might be due to invalid IL or missing references)
		//IL_01cf: Expected O, but got Unknown
		//IL_01d0: Unknown result type (might be due to invalid IL or missing references)
		//IL_01da: Expected O, but got Unknown
		//IL_01db: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e5: Expected O, but got Unknown
		//IL_01e6: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f0: Expected O, but got Unknown
		//IL_01f1: Unknown result type (might be due to invalid IL or missing references)
		//IL_01fb: Expected O, but got Unknown
		//IL_02a1: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c7: Unknown result type (might be due to invalid IL or missing references)
		//IL_030b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0315: Expected O, but got Unknown
		//IL_03a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_03d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0423: Unknown result type (might be due to invalid IL or missing references)
		//IL_0449: Unknown result type (might be due to invalid IL or missing references)
		//IL_0480: Unknown result type (might be due to invalid IL or missing references)
		//IL_048a: Expected O, but got Unknown
		//IL_0495: Unknown result type (might be due to invalid IL or missing references)
		//IL_04da: Unknown result type (might be due to invalid IL or missing references)
		//IL_051c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0542: Unknown result type (might be due to invalid IL or missing references)
		//IL_0586: Unknown result type (might be due to invalid IL or missing references)
		//IL_0590: Expected O, but got Unknown
		//IL_05a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_05ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_060f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0635: Unknown result type (might be due to invalid IL or missing references)
		//IL_0676: Unknown result type (might be due to invalid IL or missing references)
		//IL_069c: Unknown result type (might be due to invalid IL or missing references)
		//IL_06dc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0702: Unknown result type (might be due to invalid IL or missing references)
		//IL_0754: Unknown result type (might be due to invalid IL or missing references)
		//IL_075e: Expected O, but got Unknown
		//IL_076b: Unknown result type (might be due to invalid IL or missing references)
		//IL_07bb: Unknown result type (might be due to invalid IL or missing references)
		//IL_07fc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0822: Unknown result type (might be due to invalid IL or missing references)
		//IL_0866: Unknown result type (might be due to invalid IL or missing references)
		//IL_0870: Expected O, but got Unknown
		//IL_0881: Unknown result type (might be due to invalid IL or missing references)
		//IL_08a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_08eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_08f5: Expected O, but got Unknown
		//IL_0910: Unknown result type (might be due to invalid IL or missing references)
		//IL_0936: Unknown result type (might be due to invalid IL or missing references)
		//IL_0976: Unknown result type (might be due to invalid IL or missing references)
		//IL_099c: Unknown result type (might be due to invalid IL or missing references)
		//IL_09e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a06: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a4a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a54: Expected O, but got Unknown
		//IL_0a62: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a6c: Expected O, but got Unknown
		//IL_0a7a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0aa0: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ae4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0aee: Expected O, but got Unknown
		//IL_0afc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b06: Expected O, but got Unknown
		//IL_0b21: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b55: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b97: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ba1: Expected O, but got Unknown
		//IL_0bbc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0be2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c26: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c4c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c86: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cac: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cf0: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cfa: Expected O, but got Unknown
		//IL_0d14: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d3a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d7b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0da1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0de5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e0b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e4f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e59: Expected O, but got Unknown
		//IL_0e71: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e97: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ed7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0efd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f3d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f63: Unknown result type (might be due to invalid IL or missing references)
		//IL_129d: Unknown result type (might be due to invalid IL or missing references)
		//IL_12c9: Unknown result type (might be due to invalid IL or missing references)
		//IL_1319: Unknown result type (might be due to invalid IL or missing references)
		//IL_133f: Unknown result type (might be due to invalid IL or missing references)
		//IL_1393: Unknown result type (might be due to invalid IL or missing references)
		//IL_13b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_140d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1433: Unknown result type (might be due to invalid IL or missing references)
		//IL_1484: Unknown result type (might be due to invalid IL or missing references)
		//IL_14aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_14fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_1521: Unknown result type (might be due to invalid IL or missing references)
		//IL_155b: Unknown result type (might be due to invalid IL or missing references)
		//IL_159d: Unknown result type (might be due to invalid IL or missing references)
		//IL_15c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_1623: Unknown result type (might be due to invalid IL or missing references)
		//IL_1664: Unknown result type (might be due to invalid IL or missing references)
		//IL_16a6: Unknown result type (might be due to invalid IL or missing references)
		//IL_1708: Unknown result type (might be due to invalid IL or missing references)
		//IL_172e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1771: Unknown result type (might be due to invalid IL or missing references)
		//IL_1797: Unknown result type (might be due to invalid IL or missing references)
		//IL_17db: Unknown result type (might be due to invalid IL or missing references)
		//IL_17e5: Expected O, but got Unknown
		//IL_17ff: Unknown result type (might be due to invalid IL or missing references)
		//IL_1825: Unknown result type (might be due to invalid IL or missing references)
		//IL_1876: Unknown result type (might be due to invalid IL or missing references)
		//IL_189f: Unknown result type (might be due to invalid IL or missing references)
		//IL_194c: Unknown result type (might be due to invalid IL or missing references)
		//IL_1972: Unknown result type (might be due to invalid IL or missing references)
		//IL_19ae: Unknown result type (might be due to invalid IL or missing references)
		//IL_19b8: Expected O, but got Unknown
		//IL_19c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_1a0b: Unknown result type (might be due to invalid IL or missing references)
		//IL_1a50: Unknown result type (might be due to invalid IL or missing references)
		//IL_1a76: Unknown result type (might be due to invalid IL or missing references)
		//IL_1aba: Unknown result type (might be due to invalid IL or missing references)
		//IL_1ac4: Expected O, but got Unknown
		//IL_1adf: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b05: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b49: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b53: Expected O, but got Unknown
		//IL_1b6e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b94: Unknown result type (might be due to invalid IL or missing references)
		//IL_1bd8: Unknown result type (might be due to invalid IL or missing references)
		//IL_1bfe: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c42: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c4c: Expected O, but got Unknown
		//IL_1c5f: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c69: Expected O, but got Unknown
		//IL_1c7a: Unknown result type (might be due to invalid IL or missing references)
		//IL_1cbf: Unknown result type (might be due to invalid IL or missing references)
		//IL_1cff: Unknown result type (might be due to invalid IL or missing references)
		//IL_1d1d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1dde: Unknown result type (might be due to invalid IL or missing references)
		//IL_1de8: Expected O, but got Unknown
		//IL_1df1: Unknown result type (might be due to invalid IL or missing references)
		//IL_1dfb: Expected O, but got Unknown
		ButtonDebug = new CheckBox();
		groupBox2 = new GroupBox();
		pictureBox1 = new PictureBox();
		numericUpDownFPS = new NumericUpDown();
		buttonReset = new Button();
		label8 = new Label();
		label3 = new Label();
		label1 = new Label();
		ButtonRunAuto = new CheckBox();
		textBox2 = new TextBox();
		buttonPause = new Button();
		button7 = new Button();
		labelAcccheck = new Label();
		checkBoxMapTrain = new CheckBox();
		button3 = new Button();
		button5 = new Button();
		trackBar1 = new TrackBar();
		label17 = new Label();
		label18 = new Label();
		button1 = new Button();
		comboBox1 = new ComboBox();
		checkBoxPhuToiMap = new CheckBox();
		button2 = new Button();
		labelpt1 = new Label();
		label11 = new Label();
		checkBoxBay = new CheckBox();
		groupBox1 = new GroupBox();
		label7 = new Label();
		label2 = new Label();
		label6 = new Label();
		label5 = new Label();
		label4 = new Label();
		numericUpDownS_m = new NumericUpDown();
		numericUpDownNV = new NumericUpDown();
		numericUpDownS_h = new NumericUpDown();
		comboBoxEnd = new ComboBox();
		checkBoxEnd = new CheckBox();
		checkBoxAutoClick = new CheckBox();
		comboBoxFile = new ComboBox();
		comboBoxTrong = new ComboBox();
		numericUpDownDaPet = new NumericUpDown();
		button6 = new Button();
		checkBoxDaPet = new CheckBox();
		label9 = new Label();
		checkBoxTrong = new CheckBox();
		numericUpDown1 = new NumericUpDown();
		((Control)groupBox2).SuspendLayout();
		((ISupportInitialize)pictureBox1).BeginInit();
		((ISupportInitialize)numericUpDownFPS).BeginInit();
		((ISupportInitialize)trackBar1).BeginInit();
		((Control)groupBox1).SuspendLayout();
		((ISupportInitialize)numericUpDownS_m).BeginInit();
		((ISupportInitialize)numericUpDownNV).BeginInit();
		((ISupportInitialize)numericUpDownS_h).BeginInit();
		((ISupportInitialize)numericUpDownDaPet).BeginInit();
		((ISupportInitialize)numericUpDown1).BeginInit();
		((Control)this).SuspendLayout();
		ButtonDebug.Appearance = (Appearance)1;
		((Control)ButtonDebug).AutoSize = true;
		((Control)ButtonDebug).Location = new Point(148, 97);
		((Control)ButtonDebug).Name = "ButtonDebug";
		((Control)ButtonDebug).Size = new Size(58, 25);
		((Control)ButtonDebug).TabIndex = 40;
		((Control)ButtonDebug).Text = "Chi Tiết";
		((ButtonBase)ButtonDebug).UseVisualStyleBackColor = true;
		ButtonDebug.CheckStateChanged += new EventHandler(ButtonDebug_CheckStateChanged);
		((Control)groupBox2).Controls.Add((Control)(object)pictureBox1);
		((Control)groupBox2).Controls.Add((Control)(object)numericUpDownFPS);
		((Control)groupBox2).Controls.Add((Control)(object)buttonReset);
		((Control)groupBox2).Controls.Add((Control)(object)label8);
		((Control)groupBox2).Controls.Add((Control)(object)label3);
		((Control)groupBox2).Controls.Add((Control)(object)label1);
		((Control)groupBox2).Location = new Point(6, 6);
		((Control)groupBox2).Name = "groupBox2";
		((Control)groupBox2).Size = new Size(208, 85);
		((Control)groupBox2).TabIndex = 39;
		groupBox2.TabStop = false;
		((Control)groupBox2).Text = "Vị Trí Flash : xxx - yyy";
		pictureBox1.Image = (Image)(object)Resources.anhNVr;
		((Control)pictureBox1).Location = new Point(10, 22);
		((Control)pictureBox1).Name = "pictureBox1";
		((Control)pictureBox1).Size = new Size(55, 54);
		pictureBox1.TabIndex = 0;
		pictureBox1.TabStop = false;
		((Control)numericUpDownFPS).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownFPS).Location = new Point(105, 54);
		numericUpDownFPS.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownFPS).Name = "numericUpDownFPS";
		((Control)numericUpDownFPS).Size = new Size(36, 23);
		((Control)numericUpDownFPS).TabIndex = 17;
		numericUpDownFPS.Value = new decimal(new int[4] { 50, 0, 0, 0 });
		((Control)buttonReset).Location = new Point(147, 54);
		((Control)buttonReset).Name = "buttonReset";
		((Control)buttonReset).Size = new Size(56, 25);
		((Control)buttonReset).TabIndex = 12;
		((Control)buttonReset).Text = "Reset";
		((ButtonBase)buttonReset).UseVisualStyleBackColor = true;
		((Control)buttonReset).Click += new EventHandler(buttonReset_Click);
		((Control)label8).AutoSize = true;
		((Control)label8).Location = new Point(70, 56);
		((Control)label8).Name = "label8";
		((Control)label8).Size = new Size(29, 15);
		((Control)label8).TabIndex = 16;
		((Control)label8).Text = "FPS:";
		((Control)label3).AutoSize = true;
		((Control)label3).Location = new Point(71, 22);
		((Control)label3).Name = "label3";
		((Control)label3).Size = new Size(60, 15);
		((Control)label3).TabIndex = 9;
		((Control)label3).Text = "ID: 000000";
		((Control)label1).AutoSize = true;
		((Control)label1).Location = new Point(126, 36);
		((Control)label1).Name = "label1";
		((Control)label1).Size = new Size(76, 15);
		((Control)label1).TabIndex = 64;
		((Control)label1).Text = "Run: 00:00:00";
		ButtonRunAuto.Appearance = (Appearance)1;
		((Control)ButtonRunAuto).Location = new Point(6, 97);
		((Control)ButtonRunAuto).Name = "ButtonRunAuto";
		((Control)ButtonRunAuto).Size = new Size(65, 25);
		((Control)ButtonRunAuto).TabIndex = 36;
		((Control)ButtonRunAuto).Text = "Start";
		((ButtonBase)ButtonRunAuto).TextAlign = (ContentAlignment)32;
		((ButtonBase)ButtonRunAuto).UseVisualStyleBackColor = true;
		ButtonRunAuto.CheckStateChanged += new EventHandler(ButtonRunAuto_CheckStateChanged);
		((Control)textBox2).Location = new Point(220, 6);
		((TextBoxBase)textBox2).Multiline = true;
		((Control)textBox2).Name = "textBox2";
		((TextBoxBase)textBox2).ReadOnly = true;
		textBox2.ScrollBars = (ScrollBars)2;
		((Control)textBox2).Size = new Size(145, 71);
		((Control)textBox2).TabIndex = 38;
		((Control)textBox2).Text = "-----------------------";
		((Control)buttonPause).Enabled = false;
		((Control)buttonPause).Location = new Point(77, 97);
		((Control)buttonPause).Name = "buttonPause";
		((Control)buttonPause).Size = new Size(65, 25);
		((Control)buttonPause).TabIndex = 37;
		((Control)buttonPause).Text = "Pause";
		((ButtonBase)buttonPause).UseVisualStyleBackColor = true;
		((Control)buttonPause).Click += new EventHandler(buttonPause_Click);
		((Control)button7).Location = new Point(179, 253);
		((Control)button7).Name = "button7";
		((Control)button7).Size = new Size(50, 23);
		((Control)button7).TabIndex = 53;
		((Control)button7).Text = "Lưu";
		((ButtonBase)button7).UseVisualStyleBackColor = true;
		((Control)button7).Click += new EventHandler(button7_Click);
		((Control)labelAcccheck).AutoSize = true;
		((Control)labelAcccheck).Location = new Point(220, 80);
		((Control)labelAcccheck).Name = "labelAcccheck";
		((Control)labelAcccheck).Size = new Size(89, 45);
		((Control)labelAcccheck).TabIndex = 52;
		((Control)labelAcccheck).Text = "Map: xxx\r\nVi\u0323 Tri\u0301 1: 000x000\r\nVi\u0323 Tri\u0301 2: 000x000";
		((Control)checkBoxMapTrain).AutoSize = true;
		((Control)checkBoxMapTrain).Location = new Point(6, 22);
		((Control)checkBoxMapTrain).Name = "checkBoxMapTrain";
		((Control)checkBoxMapTrain).Size = new Size(64, 19);
		((Control)checkBoxMapTrain).TabIndex = 50;
		((Control)checkBoxMapTrain).Text = "Bản Đồ";
		((ButtonBase)checkBoxMapTrain).UseVisualStyleBackColor = true;
		((Control)button3).Location = new Point(266, 22);
		((Control)button3).Name = "button3";
		((Control)button3).Size = new Size(90, 23);
		((Control)button3).TabIndex = 48;
		((Control)button3).Text = "Di Chuyển 2";
		((ButtonBase)button3).UseVisualStyleBackColor = true;
		((Control)button3).MouseDown += new MouseEventHandler(button3_MouseDown);
		((Control)button3).MouseUp += new MouseEventHandler(button3_MouseUp);
		((Control)button5).Location = new Point(170, 22);
		((Control)button5).Name = "button5";
		((Control)button5).Size = new Size(90, 23);
		((Control)button5).TabIndex = 49;
		((Control)button5).Text = "Di Chuyển 1";
		((ButtonBase)button5).UseVisualStyleBackColor = true;
		((Control)button5).MouseDown += new MouseEventHandler(button5_MouseDown);
		((Control)button5).MouseUp += new MouseEventHandler(button5_MouseUp);
		((Control)trackBar1).AutoSize = false;
		((Control)trackBar1).Location = new Point(203, 108);
		trackBar1.Maximum = 100;
		((Control)trackBar1).Name = "trackBar1";
		((Control)trackBar1).Size = new Size(117, 23);
		((Control)trackBar1).TabIndex = 56;
		trackBar1.TickFrequency = 10;
		trackBar1.Value = 50;
		trackBar1.Scroll += new EventHandler(trackBar1_Scroll);
		((Control)label17).AutoSize = true;
		((Control)label17).Location = new Point(320, 108);
		((Control)label17).Name = "label17";
		((Control)label17).Size = new Size(32, 15);
		((Control)label17).TabIndex = 54;
		((Control)label17).Text = "50 %";
		((Control)label18).AutoSize = true;
		((Control)label18).Location = new Point(141, 108);
		((Control)label18).Name = "label18";
		((Control)label18).Size = new Size(59, 15);
		((Control)label18).TabIndex = 55;
		((Control)label18).Text = "Phục Hồi:";
		((Control)button1).Location = new Point(285, 253);
		((Control)button1).Name = "button1";
		((Control)button1).Size = new Size(68, 23);
		((Control)button1).TabIndex = 53;
		((Control)button1).Text = "A\u0301p Du\u0323ng";
		((ButtonBase)button1).UseVisualStyleBackColor = true;
		((Control)button1).Click += new EventHandler(button1_Click);
		((ListControl)comboBox1).FormattingEnabled = true;
		((Control)comboBox1).Location = new Point(6, 253);
		((Control)comboBox1).Name = "comboBox1";
		((Control)comboBox1).Size = new Size(106, 23);
		((Control)comboBox1).TabIndex = 57;
		((Control)comboBox1).Text = "Cho\u0323n ba\u0309n lưu";
		((Control)checkBoxPhuToiMap).AutoSize = true;
		((Control)checkBoxPhuToiMap).Location = new Point(76, 22);
		((Control)checkBoxPhuToiMap).Name = "checkBoxPhuToiMap";
		((Control)checkBoxPhuToiMap).Size = new Size(94, 19);
		((Control)checkBoxPhuToiMap).TabIndex = 50;
		((Control)checkBoxPhuToiMap).Text = "Phu\u0300 Tơ\u0301i Map";
		((ButtonBase)checkBoxPhuToiMap).UseVisualStyleBackColor = true;
		((Control)button2).Location = new Point(118, 253);
		((Control)button2).Name = "button2";
		((Control)button2).Size = new Size(55, 23);
		((Control)button2).TabIndex = 58;
		((Control)button2).Text = "Rescan";
		((ButtonBase)button2).UseVisualStyleBackColor = true;
		((Control)button2).Click += new EventHandler(button2_Click);
		((Control)labelpt1).AutoSize = true;
		((Control)labelpt1).Location = new Point(36, 71);
		((Control)labelpt1).Name = "labelpt1";
		((Control)labelpt1).Size = new Size(48, 60);
		((Control)labelpt1).TabIndex = 59;
		((Control)labelpt1).Text = "HP/HP\r\nMP/MP\r\nHP/HP\r\nMP/MP";
		((Control)label11).AutoSize = true;
		((Control)label11).Location = new Point(7, 71);
		((Control)label11).Name = "label11";
		((Control)label11).Size = new Size(29, 45);
		((Control)label11).TabIndex = 60;
		((Control)label11).Text = "NV :\r\n\r\nPet:";
		((Control)checkBoxBay).AutoSize = true;
		((Control)checkBoxBay).Location = new Point(6, 47);
		((Control)checkBoxBay).Name = "checkBoxBay";
		((Control)checkBoxBay).Size = new Size(45, 19);
		((Control)checkBoxBay).TabIndex = 50;
		((Control)checkBoxBay).Text = "Bay";
		((ButtonBase)checkBoxBay).UseVisualStyleBackColor = true;
		((Control)groupBox1).Controls.Add((Control)(object)label7);
		((Control)groupBox1).Controls.Add((Control)(object)label2);
		((Control)groupBox1).Controls.Add((Control)(object)label6);
		((Control)groupBox1).Controls.Add((Control)(object)label5);
		((Control)groupBox1).Controls.Add((Control)(object)label4);
		((Control)groupBox1).Controls.Add((Control)(object)numericUpDownS_m);
		((Control)groupBox1).Controls.Add((Control)(object)numericUpDownNV);
		((Control)groupBox1).Controls.Add((Control)(object)numericUpDownS_h);
		((Control)groupBox1).Controls.Add((Control)(object)comboBoxEnd);
		((Control)groupBox1).Controls.Add((Control)(object)checkBoxEnd);
		((Control)groupBox1).Controls.Add((Control)(object)checkBoxAutoClick);
		((Control)groupBox1).Controls.Add((Control)(object)comboBoxFile);
		((Control)groupBox1).Controls.Add((Control)(object)comboBoxTrong);
		((Control)groupBox1).Controls.Add((Control)(object)labelpt1);
		((Control)groupBox1).Controls.Add((Control)(object)numericUpDown1);
		((Control)groupBox1).Controls.Add((Control)(object)numericUpDownDaPet);
		((Control)groupBox1).Controls.Add((Control)(object)button6);
		((Control)groupBox1).Controls.Add((Control)(object)checkBoxDaPet);
		((Control)groupBox1).Controls.Add((Control)(object)trackBar1);
		((Control)groupBox1).Controls.Add((Control)(object)label9);
		((Control)groupBox1).Controls.Add((Control)(object)label11);
		((Control)groupBox1).Controls.Add((Control)(object)label17);
		((Control)groupBox1).Controls.Add((Control)(object)checkBoxTrong);
		((Control)groupBox1).Controls.Add((Control)(object)checkBoxMapTrain);
		((Control)groupBox1).Controls.Add((Control)(object)label18);
		((Control)groupBox1).Controls.Add((Control)(object)button5);
		((Control)groupBox1).Controls.Add((Control)(object)button3);
		((Control)groupBox1).Controls.Add((Control)(object)button2);
		((Control)groupBox1).Controls.Add((Control)(object)checkBoxPhuToiMap);
		((Control)groupBox1).Controls.Add((Control)(object)comboBox1);
		((Control)groupBox1).Controls.Add((Control)(object)checkBoxBay);
		((Control)groupBox1).Controls.Add((Control)(object)button7);
		((Control)groupBox1).Controls.Add((Control)(object)button1);
		((Control)groupBox1).Location = new Point(6, 128);
		((Control)groupBox1).Name = "groupBox1";
		((Control)groupBox1).Size = new Size(359, 281);
		((Control)groupBox1).TabIndex = 61;
		groupBox1.TabStop = false;
		((Control)label7).AutoSize = true;
		label7.ImeMode = (ImeMode)0;
		((Control)label7).Location = new Point(262, 209);
		((Control)label7).Name = "label7";
		((Control)label7).Size = new Size(91, 15);
		((Control)label7).TabIndex = 71;
		((Control)label7).Text = "[Timer 00:00:00]";
		((Control)label2).AutoSize = true;
		label2.ImeMode = (ImeMode)0;
		((Control)label2).Location = new Point(170, 209);
		((Control)label2).Name = "label2";
		((Control)label2).Size = new Size(62, 15);
		((Control)label2).TabIndex = 71;
		((Control)label2).Text = "Phút Cha\u0323y";
		((Control)label6).AutoSize = true;
		label6.ImeMode = (ImeMode)0;
		((Control)label6).Location = new Point(143, 181);
		((Control)label6).Name = "label6";
		((Control)label6).Size = new Size(56, 15);
		((Control)label6).TabIndex = 72;
		((Control)label6).Text = "Nhân Vâ\u0323t";
		((Control)label5).AutoSize = true;
		label5.ImeMode = (ImeMode)0;
		((Control)label5).Location = new Point(32, 209);
		((Control)label5).Name = "label5";
		((Control)label5).Size = new Size(26, 15);
		((Control)label5).TabIndex = 72;
		((Control)label5).Text = "Sau";
		((Control)label4).AutoSize = true;
		label4.ImeMode = (ImeMode)0;
		((Control)label4).Location = new Point(101, 209);
		((Control)label4).Name = "label4";
		((Control)label4).Size = new Size(25, 15);
		((Control)label4).TabIndex = 72;
		((Control)label4).Text = "Giơ\u0300";
		((Control)numericUpDownS_m).Location = new Point(135, 207);
		numericUpDownS_m.Maximum = new decimal(new int[4] { 59, 0, 0, 0 });
		((Control)numericUpDownS_m).Name = "numericUpDownS_m";
		((Control)numericUpDownS_m).Size = new Size(34, 23);
		((Control)numericUpDownS_m).TabIndex = 69;
		((Control)numericUpDownNV).Location = new Point(205, 179);
		numericUpDownNV.Maximum = new decimal(new int[4] { 9, 0, 0, 0 });
		numericUpDownNV.Minimum = new decimal(new int[4] { 1, 0, 0, 0 });
		((Control)numericUpDownNV).Name = "numericUpDownNV";
		((Control)numericUpDownNV).Size = new Size(36, 23);
		((Control)numericUpDownNV).TabIndex = 70;
		numericUpDownNV.Value = new decimal(new int[4] { 1, 0, 0, 0 });
		((Control)numericUpDownS_h).Location = new Point(62, 207);
		numericUpDownS_h.Maximum = new decimal(new int[4] { 23, 0, 0, 0 });
		((Control)numericUpDownS_h).Name = "numericUpDownS_h";
		((Control)numericUpDownS_h).Size = new Size(36, 23);
		((Control)numericUpDownS_h).TabIndex = 70;
		((ListControl)comboBoxEnd).FormattingEnabled = true;
		comboBoxEnd.Items.AddRange(new object[3] { "Nothing!", "BugOnl", "Off" });
		((Control)comboBoxEnd).Location = new Point(62, 178);
		((Control)comboBoxEnd).Name = "comboBoxEnd";
		((Control)comboBoxEnd).Size = new Size(69, 23);
		((Control)comboBoxEnd).TabIndex = 68;
		((Control)comboBoxEnd).Text = "Nothing!";
		((Control)checkBoxEnd).AutoSize = true;
		((Control)checkBoxEnd).Location = new Point(7, 180);
		((Control)checkBoxEnd).Name = "checkBoxEnd";
		((Control)checkBoxEnd).Size = new Size(57, 19);
		((Control)checkBoxEnd).TabIndex = 67;
		((Control)checkBoxEnd).Text = "End - ";
		((ButtonBase)checkBoxEnd).UseVisualStyleBackColor = true;
		checkBoxEnd.CheckStateChanged += new EventHandler(checkBoxDaPet_CheckedChanged);
		((Control)checkBoxAutoClick).AutoSize = true;
		((Control)checkBoxAutoClick).Location = new Point(6, 144);
		((Control)checkBoxAutoClick).Name = "checkBoxAutoClick";
		((Control)checkBoxAutoClick).Size = new Size(78, 19);
		((Control)checkBoxAutoClick).TabIndex = 63;
		((Control)checkBoxAutoClick).Text = "AutoClick";
		((ButtonBase)checkBoxAutoClick).UseVisualStyleBackColor = true;
		((ListControl)comboBoxFile).FormattingEnabled = true;
		((Control)comboBoxFile).Location = new Point(105, 142);
		((Control)comboBoxFile).Name = "comboBoxFile";
		((Control)comboBoxFile).Size = new Size(175, 23);
		((Control)comboBoxFile).TabIndex = 62;
		((Control)comboBoxFile).Text = "File";
		((ListControl)comboBoxTrong).FormattingEnabled = true;
		comboBoxTrong.Items.AddRange(new object[10] { "Kim Loại", "Gỗ", "Lông Thú", "Ngọc", "Vải Thô", "Kim Loại Hiếm", "Gỗ Tốt", "Da Thú", "Pha Lê", "Gấm Vóc" });
		((Control)comboBoxTrong).Location = new Point(250, 77);
		((Control)comboBoxTrong).Name = "comboBoxTrong";
		((Control)comboBoxTrong).Size = new Size(70, 23);
		((Control)comboBoxTrong).TabIndex = 65;
		((Control)comboBoxTrong).Text = "Kim Loại";
		((Control)numericUpDownDaPet).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownDaPet).Location = new Point(236, 50);
		numericUpDownDaPet.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownDaPet).Name = "numericUpDownDaPet";
		((Control)numericUpDownDaPet).Size = new Size(34, 23);
		((Control)numericUpDownDaPet).TabIndex = 66;
		numericUpDownDaPet.Value = new decimal(new int[4] { 20, 0, 0, 0 });
		((Control)button6).Location = new Point(235, 253);
		((Control)button6).Name = "button6";
		((Control)button6).Size = new Size(44, 23);
		((Control)button6).TabIndex = 62;
		((Control)button6).Text = "Xo\u0301a";
		((ButtonBase)button6).UseVisualStyleBackColor = true;
		((Control)button6).Click += new EventHandler(button6_Click);
		((Control)checkBoxDaPet).AutoSize = true;
		((Control)checkBoxDaPet).Location = new Point(170, 51);
		((Control)checkBoxDaPet).Name = "checkBoxDaPet";
		((Control)checkBoxDaPet).Size = new Size(60, 19);
		((Control)checkBoxDaPet).TabIndex = 62;
		((Control)checkBoxDaPet).Text = "Đá Pet";
		((ButtonBase)checkBoxDaPet).UseVisualStyleBackColor = true;
		checkBoxDaPet.CheckStateChanged += new EventHandler(checkBoxDaPet_CheckedChanged);
		((Control)label9).AutoSize = true;
		((Control)label9).Location = new Point(276, 52);
		((Control)label9).Name = "label9";
		((Control)label9).Size = new Size(31, 15);
		((Control)label9).TabIndex = 64;
		((Control)label9).Text = "Lượt";
		((Control)checkBoxTrong).AutoSize = true;
		((Control)checkBoxTrong).Location = new Point(170, 79);
		((Control)checkBoxTrong).Name = "checkBoxTrong";
		((Control)checkBoxTrong).Size = new Size(82, 19);
		((Control)checkBoxTrong).TabIndex = 63;
		((Control)checkBoxTrong).Text = "Trang Viên";
		((ButtonBase)checkBoxTrong).UseVisualStyleBackColor = true;
		checkBoxTrong.CheckStateChanged += new EventHandler(checkBoxDaPet_CheckedChanged);
		((Control)numericUpDown1).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDown1).Location = new Point(301, 156);
		numericUpDown1.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDown1).Name = "numericUpDown1";
		((Control)numericUpDown1).Size = new Size(34, 23);
		((Control)numericUpDown1).TabIndex = 66;
		numericUpDown1.Value = new decimal(new int[4] { 10, 0, 0, 0 });
		((ContainerControl)this).AutoScaleDimensions = new SizeF(7f, 15f);
		((ContainerControl)this).AutoScaleMode = (AutoScaleMode)1;
		((Form)this).ClientSize = new Size(534, 469);
		((Control)this).Controls.Add((Control)(object)groupBox1);
		((Control)this).Controls.Add((Control)(object)ButtonDebug);
		((Control)this).Controls.Add((Control)(object)labelAcccheck);
		((Control)this).Controls.Add((Control)(object)groupBox2);
		((Control)this).Controls.Add((Control)(object)ButtonRunAuto);
		((Control)this).Controls.Add((Control)(object)textBox2);
		((Control)this).Controls.Add((Control)(object)buttonPause);
		((Form)this).FormBorderStyle = (FormBorderStyle)1;
		((Form)this).MaximizeBox = false;
		((Control)this).Name = "Train";
		((Form)this).StartPosition = (FormStartPosition)1;
		((Control)this).Text = "Train";
		((Form)this).FormClosed += new FormClosedEventHandler(Train_FormClosed);
		((Form)this).Load += new EventHandler(Train_Load);
		((Control)groupBox2).ResumeLayout(false);
		((Control)groupBox2).PerformLayout();
		((ISupportInitialize)pictureBox1).EndInit();
		((ISupportInitialize)numericUpDownFPS).EndInit();
		((ISupportInitialize)trackBar1).EndInit();
		((Control)groupBox1).ResumeLayout(false);
		((Control)groupBox1).PerformLayout();
		((ISupportInitialize)numericUpDownS_m).EndInit();
		((ISupportInitialize)numericUpDownNV).EndInit();
		((ISupportInitialize)numericUpDownS_h).EndInit();
		((ISupportInitialize)numericUpDownDaPet).EndInit();
		((ISupportInitialize)numericUpDown1).EndInit();
		((Control)this).ResumeLayout(false);
		((Control)this).PerformLayout();
	}
}
