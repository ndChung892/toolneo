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

public class HaiTrongCau : Form
{
	public static string linkApp = Application.StartupPath;

	public List<string> items = new List<string>();

	public string pathBatPet = linkApp + "Anh/AutoBatPet";

	public string pathIconBatPet = linkApp + "Anh/AutoBatPet/Icon";

	public string pathDungHop = linkApp + "Anh/AutoBatPet/DungHop";

	public string pathTacVu = ((object)linkApp).ToString() + "Anh/TacVu";

	public string pathKhac = ((object)linkApp).ToString() + "Anh/Khac";

	public string pathData = linkApp + "/AccData";

	public string pathAutoPhuBan = ((object)linkApp).ToString() + "Anh/AutoPhuBan";

	public string pathAutoNhanNVPB = ((object)linkApp).ToString() + "Anh/NhanNVPB";

	public string pathMaps = ((object)linkApp).ToString() + "Anh/Maps";

	public string pathLuyenPet = ((object)linkApp).ToString() + "Anh/LuyenPet";

	public string pathBangHoi = ((object)linkApp).ToString() + "Anh/BangHoi";

	public string pathTruMa = ((object)linkApp).ToString() + "Anh/TruMa";

	public int ViTriNhanVat_X = 0;

	public int ViTriNhanVat_Y = 0;

	public int HaiThuoc1_X = 0;

	public int HaiThuoc1_Y = 0;

	public int HaiThuoc2_X = 0;

	public int HaiThuoc2_Y = 0;

	public int HaiThuoc3_X = 0;

	public int HaiThuoc3_Y = 0;

	public int HaiThuoc4_X = 0;

	public int HaiThuoc4_Y = 0;

	public int NPC1_X = 0;

	public int NPC1_Y = 0;

	public int NPC2_X = 0;

	public int NPC2_Y = 0;

	public int Cau1_X = 0;

	public int Cau1_Y = 0;

	public int Cau2_X = 0;

	public int Cau2_Y = 0;

	public int NguoiRom_X = 0;

	public int NguoiRom_Y = 0;

	public int ThuHoach_X = 0;

	public int ThuHoach_Y = 0;

	public Bitmap AvatarNV;

	public Point? KetQua_Point;

	public List<Point> KetQua_Points;

	private System.IntPtr hWnd = System.IntPtr.Zero;

	public uint processID;

	private uint[] offset_ToaDoX;

	private uint[] offset_ToaDoY;

	private uint[] offset_FPS;

	private uint myPointer;

	public bool IsStop;

	public bool IsPause;

	private System.Threading.Tasks.Task T;

	private int lineChat;

	public int VIP;

	public string accMain;

	public int step;

	private bool checkKimTien;

	private static Timer myTimer;

	public int counter;

	public int countTimer_chat;

	public int countTimer_pet;

	public int countTimer_trong;

	public bool userTimer;

	public string nameUser;

	public int TieuDe;

	public bool autorun;

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

	public const bool di_Cau = true;

	public const bool di_Hai = false;

	public string map_luu;

	public int NVLuu;

	public int vitriLuu1;

	public int vitriLuu2;

	public int vitriLuu3;

	public int KenhHienTai;

	public int Kenh;

	private IContainer components;

	private TextBox textBox2;

	private Label label8;

	private Label label17;

	private Button buttonSave;

	private GroupBox groupBox4;

	private Label label10;

	private PictureBox pictureBox1;

	private NumericUpDown numericUpDownFPS;

	private Label label4;

	private Label label1;

	private Button buttonReset;

	private Label label6;

	private Button buttonPause;

	private CheckBox ButtonDebug;

	private CheckBox ButtonRunAuto;

	private CheckBox checkBoxNongTrai;

	private CheckBox checkBoxHaiThuoc;

	private CheckBox checkBoxCauCa;

	private Button buttonRom;

	private Button buttonH1;

	private Button buttonH2;

	private Button buttonH3;

	private Button buttonH4;

	private ComboBox comboBox1;

	private Button button10;

	private GroupBox groupBox1;

	private ComboBox comboBoxChat;

	private Label label9;

	private NumericUpDown numericUpDownChat;

	private CheckBox CheckboxTrong;

	private Label label2;

	private ComboBox comboBoxTrong;

	private CheckBox CheckboxChat;

	private NumericUpDown numericUpDownGio;

	private TextBox textBoxChat;

	private CheckBox CheckboxDaPet;

	private Label label11;

	private NumericUpDown numericUpDownDaPet;

	private GroupBox groupBox2;

	private Button buttonNPC2;

	private Button buttonNPC1;

	private Button buttonC2;

	private Button buttonC1;

	private ComboBox comboBox2;

	private CheckBox checkBoxTele;

	private Label label5;

	private Label label3;

	private NumericUpDown numericUpDownY;

	private NumericUpDown numericUpDownX;

	private CheckBox checkBoxTrongDai;

	private CheckBox checkBoxTrongDacBiet;

	private ComboBox comboBox3;

	private Button button2;

	private Button button1;

	private ComboBox comboBox5;

	private ComboBox comboBox4;

	private ComboBox comboBox6;

	private TabControl tabControl1;

	private TabPage tabPage1;

	private TabPage tabPage3;

	private CheckBox checkBox2;

	private CheckBox checkBox1;

	private CheckBox checkBox3;

	public HaiTrongCau()
	{
		//IL_02ac: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b6: Expected O, but got Unknown
		//IL_02b7: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c1: Expected O, but got Unknown
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
		IsStop = true;
		IsPause = false;
		lineChat = 0;
		VIP = 0;
		accMain = "null";
		step = 0;
		checkKimTien = true;
		counter = 0;
		countTimer_chat = 0;
		countTimer_pet = 0;
		countTimer_trong = 0;
		userTimer = false;
		nameUser = "";
		TieuDe = 30;
		autorun = false;
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
		map_luu = "null";
		NVLuu = 999999;
		vitriLuu1 = 999999;
		vitriLuu2 = 999999;
		vitriLuu3 = 999999;
		KenhHienTai = 0;
		Kenh = 0;
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

	private bool FindsAndDoubleClick(System.IntPtr hWnd, string pathFind, int offsetX, int offsetY, string textDebug)
	{
		//IL_0025: Unknown result type (might be due to invalid IL or missing references)
		//IL_002a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0036: Unknown result type (might be due to invalid IL or missing references)
		//IL_003b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0054: Unknown result type (might be due to invalid IL or missing references)
		//IL_0059: Unknown result type (might be due to invalid IL or missing references)
		//IL_0065: Unknown result type (might be due to invalid IL or missing references)
		//IL_006a: Unknown result type (might be due to invalid IL or missing references)
		List<Point> val = FindPoints(hWnd, pathFind);
		if (val.Count != 0)
		{
			for (int i = 0; i < val.Count; i++)
			{
				Point val2 = val[i];
				int num = ((Point)(ref val2)).X + offsetX;
				val2 = val[i];
				AutoControl.SendClickOnPosition(hWnd, num, ((Point)(ref val2)).Y + offsetY - 30, (EMouseKey)0, 1);
				val2 = val[i];
				int num2 = ((Point)(ref val2)).X + offsetX;
				val2 = val[i];
				AutoControl.SendClickOnPosition(hWnd, num2, ((Point)(ref val2)).Y + offsetY - 30, (EMouseKey)0, 1);
				debugText(textDebug + i);
				delay_100ms(5);
			}
			return true;
		}
		return false;
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

	private Point? FindAndClick2(System.IntPtr hWnd, Image chupwindow, string pathFind, int offsetX, int offsetY)
	{
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_001f: Unknown result type (might be due to invalid IL or missing references)
		//IL_002c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0031: Unknown result type (might be due to invalid IL or missing references)
		Point? result = FindPoint2(hWnd, chupwindow, pathFind);
		if (result.HasValue)
		{
			Point value = result.Value;
			int num = ((Point)(ref value)).X + offsetX;
			value = result.Value;
			AutoControl.SendClickOnPosition(hWnd, num, ((Point)(ref value)).Y + offsetY - 30, (EMouseKey)0, 1);
			delay_100ms(3);
			return result;
		}
		return null;
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

	private Point? FindPoint2(System.IntPtr hWnd, Image chupWindow, string pathCanTim)
	{
		//IL_0009: Unknown result type (might be due to invalid IL or missing references)
		//IL_001d: Expected O, but got Unknown
		Bitmap image = ImageScanOpenCV.GetImage(pathCanTim);
		return ImageScanOpenCV.FindOutPoint((Bitmap)chupWindow, image, 0.9);
	}

	private static List<Point>? FindPoints(System.IntPtr hWnd, string pathCanTim)
	{
		//IL_0010: Unknown result type (might be due to invalid IL or missing references)
		//IL_0024: Expected O, but got Unknown
		Image val = CaptureHelper.CaptureWindow(hWnd);
		Bitmap image = ImageScanOpenCV.GetImage(pathCanTim);
		return ImageScanOpenCV.FindOutPoints((Bitmap)val, image, 0.9);
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
		System.IntPtr handle = MemoryHelper.OpenProcess(pID, (ProcessAccessFlags)2035711);
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
		//IL_0170: Unknown result type (might be due to invalid IL or missing references)
		//IL_0175: Unknown result type (might be due to invalid IL or missing references)
		//IL_0183: Unknown result type (might be due to invalid IL or missing references)
		//IL_0188: Unknown result type (might be due to invalid IL or missing references)
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
		while (true)
		{
			Image chupWindow = CaptureHelper.CaptureWindow(hWnd);
			if (FindPoint2(hWnd, chupWindow, pathTacVu + "/checkchat1.png").HasValue && FindPoint2(hWnd, chupWindow, pathTacVu + "/checkchat2.png").HasValue)
			{
				break;
			}
			Point? val = FindAndClick(hWnd, pathTacVu + "/GuiChat.png", -30, 5, "sms");
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

	private void startTimer()
	{
		//IL_001f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0029: Expected O, but got Unknown
		//IL_0035: Unknown result type (might be due to invalid IL or missing references)
		//IL_003f: Expected O, but got Unknown
		if (!userTimer)
		{
			counter = 0;
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
			counter = 0;
			myTimer.Stop();
			((Component)myTimer).Dispose();
			userTimer = false;
		}
	}

	private void myTimerEvent(object source, ElapsedEventArgs e)
	{
		//IL_000d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0013: Invalid comparison between Unknown and I4
		//IL_003b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0041: Invalid comparison between Unknown and I4
		//IL_0086: Unknown result type (might be due to invalid IL or missing references)
		//IL_008c: Invalid comparison between Unknown and I4
		int num = 0;
		int num2 = 0;
		int num3 = 0;
		if ((int)CheckboxChat.CheckState == 1 && !IsStop)
		{
			countTimer_chat++;
		}
		if ((int)CheckboxDaPet.CheckState == 1 && !IsStop && (int)numericUpDownDaPet.Value > 0)
		{
			countTimer_pet++;
		}
		if ((int)CheckboxTrong.CheckState == 1 && !IsStop)
		{
			countTimer_trong++;
		}
		if (!IsStop)
		{
			counter++;
		}
		num = counter / 3600;
		num2 = counter / 60 - num * 60;
		num3 = counter - num2 * 60 - num * 3600;
		((Control)label10).Text = string.Concat(new string[6]
		{
			"Timer: ",
			num.ToString("D2"),
			":",
			num2.ToString("D2"),
			":",
			num3.ToString("D2")
		});
	}

	private void checkChat()
	{
		int num = (int)numericUpDownGio.Value * 60;
		int num2 = (int)numericUpDownDaPet.Value;
		if (num2 > 0)
		{
			if (countTimer_pet >= 600)
			{
				DaPet();
				PressKey("ESC");
				countTimer_pet = 0;
				numericUpDownDaPet.Value = decimal.op_Implicit(num2 - 1);
			}
		}
		else
		{
			countTimer_pet = 0;
		}
		if (countTimer_trong >= num * 60)
		{
			Trong();
			PressKey("ESC");
			countTimer_trong = 0;
		}
		if (countTimer_chat >= (int)numericUpDownChat.Value * 60)
		{
			string[] array = ((Control)textBoxChat).Text.Split('\n', (StringSplitOptions)0);
			Chat(array[lineChat], ((Control)comboBoxChat).Text);
			lineChat++;
			if (lineChat >= Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array))
			{
				lineChat = 0;
			}
			countTimer_chat = 0;
		}
	}

	private void buttonSave_Click(object sender, EventArgs e)
	{
		//IL_001c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0022: Expected O, but got Unknown
		TextWriter val = (TextWriter)new StreamWriter(pathData + "/Setting/" + nameUser + "/HTC_V7.txt");
		val.Write(scanSettingV7());
		val.Close();
		System.DateTime lastWriteTime = File.GetLastWriteTime(pathData + "/Setting/" + nameUser + "/HTC_V7.txt");
		((Control)label17).Text = "Lần cuối lúc\r\n" + lastWriteTime.ToString("g");
	}

	private string scanSetting()
	{
		string text = "";
		text = ((!checkBoxHaiThuoc.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxTrongDai.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + NPC1_X + "\n";
		text = text + NPC1_Y + "\n";
		text = text + HaiThuoc1_X + "\n";
		text = text + HaiThuoc1_Y + "\n";
		text = text + HaiThuoc2_X + "\n";
		text = text + HaiThuoc2_Y + "\n";
		text = text + NPC2_X + "\n";
		text = text + NPC2_Y + "\n";
		text = text + HaiThuoc3_X + "\n";
		text = text + HaiThuoc3_Y + "\n";
		text = text + HaiThuoc4_X + "\n";
		text = text + HaiThuoc4_Y + "\n";
		text = ((!checkBoxCauCa.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxTrongDacBiet.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + Cau1_X + "\n";
		text = text + Cau1_Y + "\n";
		text = text + Cau2_X + "\n";
		text = text + Cau2_Y + "\n";
		text = ((!checkBoxNongTrai.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxTele.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxTrongDai.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxTrongDacBiet.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + numericUpDownX.Value + "\n";
		text = text + numericUpDownY.Value + "\n";
		text = text + NguoiRom_X + "\n";
		text = text + NguoiRom_Y + "\n";
		text = text + ThuHoach_X + "\n";
		text = text + ThuHoach_Y + "\n";
		text = text + ((Control)comboBox1).Text + "\n";
		text = text + ((Control)comboBox2).Text + "\n";
		text = ((!CheckboxDaPet.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + numericUpDownDaPet.Value + "\n";
		text = ((!CheckboxTrong.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + ((Control)comboBoxTrong).Text + "\n";
		text = text + numericUpDownGio.Value + "\n";
		text = ((!CheckboxChat.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + ((Control)comboBoxChat).Text + "\n";
		text = text + numericUpDownChat.Value + "\n";
		return text + ((Control)textBoxChat).Text;
	}

	private bool loadSetting()
	{
		if (!File.Exists(pathData + "/Setting/" + nameUser + "/HTC.txt"))
		{
			Directory.CreateDirectory(pathData + "/Setting/" + nameUser);
		}
		else
		{
			System.DateTime lastWriteTime = File.GetLastWriteTime(pathData + "/Setting/" + nameUser + "/HTC.txt");
			int num = 0;
			int num2 = 0;
			string[] array = File.ReadAllLines(pathData + "/Setting/" + nameUser + "/HTC.txt");
			if (array[num2].Trim() == "1")
			{
				checkBoxHaiThuoc.CheckState = (CheckState)1;
			}
			else
			{
				checkBoxHaiThuoc.CheckState = (CheckState)0;
			}
			if (array[++num2].Trim() == "1")
			{
				checkBoxTrongDai.CheckState = (CheckState)1;
			}
			else
			{
				checkBoxTrongDai.CheckState = (CheckState)0;
			}
			int.TryParse(array[++num2].Trim(), ref NPC1_X);
			int.TryParse(array[++num2].Trim(), ref NPC1_Y);
			int.TryParse(array[++num2].Trim(), ref HaiThuoc1_X);
			int.TryParse(array[++num2].Trim(), ref HaiThuoc1_Y);
			int.TryParse(array[++num2].Trim(), ref HaiThuoc2_X);
			int.TryParse(array[++num2].Trim(), ref HaiThuoc2_Y);
			int.TryParse(array[++num2].Trim(), ref NPC2_X);
			int.TryParse(array[++num2].Trim(), ref NPC2_Y);
			int.TryParse(array[++num2].Trim(), ref HaiThuoc3_X);
			int.TryParse(array[++num2].Trim(), ref HaiThuoc3_Y);
			int.TryParse(array[++num2].Trim(), ref HaiThuoc4_X);
			int.TryParse(array[++num2].Trim(), ref HaiThuoc4_Y);
			if (array[++num2].Trim() == "1")
			{
				checkBoxCauCa.CheckState = (CheckState)1;
			}
			else
			{
				checkBoxCauCa.CheckState = (CheckState)0;
			}
			if (array[++num2].Trim() == "1")
			{
				checkBoxTrongDacBiet.CheckState = (CheckState)1;
			}
			else
			{
				checkBoxTrongDacBiet.CheckState = (CheckState)0;
			}
			int.TryParse(array[++num2].Trim(), ref Cau1_X);
			int.TryParse(array[++num2].Trim(), ref Cau1_Y);
			int.TryParse(array[++num2].Trim(), ref Cau2_X);
			int.TryParse(array[++num2].Trim(), ref Cau2_Y);
			if (array[++num2].Trim() == "1")
			{
				checkBoxNongTrai.CheckState = (CheckState)1;
			}
			else
			{
				checkBoxNongTrai.CheckState = (CheckState)0;
			}
			if (array[++num2].Trim() == "1")
			{
				checkBoxTele.CheckState = (CheckState)1;
			}
			else
			{
				checkBoxTele.CheckState = (CheckState)0;
			}
			if (array[++num2].Trim() == "1")
			{
				checkBoxTrongDai.CheckState = (CheckState)1;
			}
			else
			{
				checkBoxTrongDai.CheckState = (CheckState)0;
			}
			if (array[++num2].Trim() == "1")
			{
				checkBoxTrongDacBiet.CheckState = (CheckState)1;
			}
			else
			{
				checkBoxTrongDacBiet.CheckState = (CheckState)0;
			}
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownX.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownY.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref NguoiRom_X);
			int.TryParse(array[++num2].Trim(), ref NguoiRom_Y);
			int.TryParse(array[++num2].Trim(), ref ThuHoach_X);
			int.TryParse(array[++num2].Trim(), ref ThuHoach_Y);
			((Control)comboBox1).Text = array[++num2].Trim();
			((Control)comboBox2).Text = array[++num2].Trim();
			if (array[++num2].Trim() == "1")
			{
				CheckboxDaPet.CheckState = (CheckState)1;
			}
			else
			{
				CheckboxDaPet.CheckState = (CheckState)0;
			}
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownDaPet.Value = decimal.op_Implicit(num);
			if (array[++num2].Trim() == "1")
			{
				CheckboxTrong.CheckState = (CheckState)1;
			}
			else
			{
				CheckboxTrong.CheckState = (CheckState)0;
			}
			((Control)comboBoxTrong).Text = array[++num2].Trim();
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownGio.Value = decimal.op_Implicit(num);
			if (array[++num2].Trim() == "1")
			{
				CheckboxChat.CheckState = (CheckState)1;
			}
			else
			{
				CheckboxChat.CheckState = (CheckState)0;
			}
			((Control)comboBoxChat).Text = array[++num2].Trim();
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownChat.Value = decimal.op_Implicit(num);
			((Control)textBoxChat).Text = "";
			for (int i = ++num2; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array); i++)
			{
				TextBox obj = textBoxChat;
				((Control)obj).Text = ((Control)obj).Text + array[i] + "\r\n";
			}
			((Control)label17).Text = "Lần cuối lúc\r\n" + lastWriteTime.ToString("g");
			debugText("Đã Áp Dụng Cài Đặt \"Hái Trồng Câu\" Lần Cuối Lúc\r\n" + lastWriteTime.ToString("g"));
		}
		return true;
	}

	private void loadSetting_old()
	{
		if (!File.Exists(pathData + "/Setting/" + nameUser + "/HTC.txt"))
		{
			Directory.CreateDirectory(pathData + "/Setting/" + nameUser);
			return;
		}
		System.DateTime lastWriteTime = File.GetLastWriteTime(pathData + "/Setting/" + nameUser + "/HTC.txt");
		int num = 0;
		int num2 = 0;
		string[] array = File.ReadAllLines(pathData + "/Setting/" + nameUser + "/HTC.txt");
		if (array[num2].Trim() == "1")
		{
			checkBoxHaiThuoc.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxHaiThuoc.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxTrongDai.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxTrongDai.CheckState = (CheckState)0;
		}
		int.TryParse(array[++num2].Trim(), ref NPC1_X);
		int.TryParse(array[++num2].Trim(), ref NPC1_Y);
		int.TryParse(array[++num2].Trim(), ref HaiThuoc1_X);
		int.TryParse(array[++num2].Trim(), ref HaiThuoc1_Y);
		int.TryParse(array[++num2].Trim(), ref HaiThuoc2_X);
		int.TryParse(array[++num2].Trim(), ref HaiThuoc2_Y);
		int.TryParse(array[++num2].Trim(), ref NPC2_X);
		int.TryParse(array[++num2].Trim(), ref NPC2_Y);
		int.TryParse(array[++num2].Trim(), ref HaiThuoc3_X);
		int.TryParse(array[++num2].Trim(), ref HaiThuoc3_Y);
		int.TryParse(array[++num2].Trim(), ref HaiThuoc4_X);
		int.TryParse(array[++num2].Trim(), ref HaiThuoc4_Y);
		if (array[++num2].Trim() == "1")
		{
			checkBoxCauCa.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxCauCa.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxTrongDacBiet.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxTrongDacBiet.CheckState = (CheckState)0;
		}
		int.TryParse(array[++num2].Trim(), ref Cau1_X);
		int.TryParse(array[++num2].Trim(), ref Cau1_Y);
		int.TryParse(array[++num2].Trim(), ref Cau2_X);
		int.TryParse(array[++num2].Trim(), ref Cau2_Y);
		if (array[++num2].Trim() == "1")
		{
			checkBoxNongTrai.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxNongTrai.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxTele.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxTele.CheckState = (CheckState)0;
		}
		int.TryParse(array[++num2].Trim(), ref num);
		numericUpDownX.Value = decimal.op_Implicit(num);
		int.TryParse(array[++num2].Trim(), ref num);
		numericUpDownY.Value = decimal.op_Implicit(num);
		int.TryParse(array[++num2].Trim(), ref NguoiRom_X);
		int.TryParse(array[++num2].Trim(), ref NguoiRom_Y);
		int.TryParse(array[++num2].Trim(), ref ThuHoach_X);
		int.TryParse(array[++num2].Trim(), ref ThuHoach_Y);
		((Control)comboBox1).Text = array[++num2].Trim();
		((Control)comboBox2).Text = array[++num2].Trim();
		if (array[++num2].Trim() == "1")
		{
			CheckboxDaPet.CheckState = (CheckState)1;
		}
		else
		{
			CheckboxDaPet.CheckState = (CheckState)0;
		}
		int.TryParse(array[++num2].Trim(), ref num);
		numericUpDownDaPet.Value = decimal.op_Implicit(num);
		if (array[++num2].Trim() == "1")
		{
			CheckboxTrong.CheckState = (CheckState)1;
		}
		else
		{
			CheckboxTrong.CheckState = (CheckState)0;
		}
		((Control)comboBoxTrong).Text = array[++num2].Trim();
		int.TryParse(array[++num2].Trim(), ref num);
		numericUpDownGio.Value = decimal.op_Implicit(num);
		if (array[++num2].Trim() == "1")
		{
			CheckboxChat.CheckState = (CheckState)1;
		}
		else
		{
			CheckboxChat.CheckState = (CheckState)0;
		}
		((Control)comboBoxChat).Text = array[++num2].Trim();
		int.TryParse(array[++num2].Trim(), ref num);
		numericUpDownChat.Value = decimal.op_Implicit(num);
		((Control)textBoxChat).Text = "";
		for (int i = ++num2; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array); i++)
		{
			TextBox obj = textBoxChat;
			((Control)obj).Text = ((Control)obj).Text + array[i] + "\r\n";
		}
		((Control)label17).Text = "Lần cuối lúc\r\n" + lastWriteTime.ToString("g");
		debugText("Đã Áp Dụng Cài Đặt \"Hái Trồng Câu\" Lần Cuối Lúc\r\n" + lastWriteTime.ToString("g"));
	}

	private string scanSettingV7()
	{
		string text = "Ha\u0301i Thuô\u0301c:";
		text = ((!checkBoxHaiThuoc.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "NPC1 X:";
		text = text + NPC1_X + "\n";
		text += "NPC1 Y:";
		text = text + NPC1_Y + "\n";
		text += "Ha\u0301i Thuô\u0301c1 X:";
		text = text + HaiThuoc1_X + "\n";
		text += "Ha\u0301i Thuô\u0301c1 Y:";
		text = text + HaiThuoc1_Y + "\n";
		text += "Ha\u0301i Thuô\u0301c2 X:";
		text = text + HaiThuoc2_X + "\n";
		text += "Ha\u0301i Thuô\u0301c2 Y:";
		text = text + HaiThuoc2_Y + "\n";
		text += "NPC2 X:";
		text = text + NPC2_X + "\n";
		text += "NPC2 Y:";
		text = text + NPC2_Y + "\n";
		text += "Ha\u0301i Thuô\u0301c3 X:";
		text = text + HaiThuoc3_X + "\n";
		text += "Ha\u0301i Thuô\u0301c3 Y:";
		text = text + HaiThuoc3_Y + "\n";
		text += "Ha\u0301i Thuô\u0301c4 X:";
		text = text + HaiThuoc4_X + "\n";
		text += "Ha\u0301i Thuô\u0301c4 Y:";
		text = text + HaiThuoc4_Y + "\n";
		text += "Vi\u0323 Tri\u0301 Ha\u0301i Thuô\u0301c:";
		text = text + ((Control)comboBox6).Text + "\n";
		text += "Câu Ca\u0301:";
		text = ((!checkBoxCauCa.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Câu1 X:";
		text = text + Cau1_X + "\n";
		text += "Câu1 Y:";
		text = text + Cau1_Y + "\n";
		text += "Câu2 X:";
		text = text + Cau2_X + "\n";
		text += "Câu2 Y:";
		text = text + Cau2_Y + "\n";
		text += "Vi\u0323 Tri\u0301 Câu Ca\u0301:";
		text = text + ((Control)comboBox5).Text + "\n";
		text += "Nông Tra\u0323i:";
		text = ((!checkBoxNongTrai.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Trô\u0300ng Da\u0300i:";
		text = ((!checkBoxTrongDai.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Trô\u0300ng Đă\u0323c Biê\u0323t:";
		text = ((!checkBoxTrongDacBiet.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Vi\u0323 Tri\u0301 Trô\u0300ng:";
		text = text + ((Control)comboBox4).Text + "\n";
		text += "Tele:";
		text = ((!checkBoxTele.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Tele X:";
		text = text + numericUpDownX.Value + "\n";
		text += "Tele Y:";
		text = text + numericUpDownY.Value + "\n";
		text += "Ngươ\u0300i Rơm X:";
		text = text + NguoiRom_X + "\n";
		text += "Ngươ\u0300i Rơm Y:";
		text = text + NguoiRom_Y + "\n";
		text += "Thu Hoa\u0323ch X:";
		text = text + ThuHoach_X + "\n";
		text += "Thu Hoa\u0323ch Y:";
		text = text + ThuHoach_Y + "\n";
		text += "Nông Sa\u0309n1:";
		text = text + ((Control)comboBox1).Text + "\n";
		text += "Nông Sa\u0309n2:";
		text = text + ((Control)comboBox2).Text + "\n";
		text += "Vi\u0323 Tri\u0301 Nông Trươ\u0300ng:";
		text = text + ((Control)comboBox3).Text + "\n";
		text += "Kim Tiê\u0300n:";
		text = ((!checkBox3.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Đa\u0301 Pet:";
		text = ((!CheckboxDaPet.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Lươ\u0323t Đa\u0301 Pet:";
		text = text + numericUpDownDaPet.Value + "\n";
		text += "Trô\u0300ng:";
		text = ((!CheckboxTrong.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Loa\u0323i Trô\u0300ng:";
		text = text + ((Control)comboBoxTrong).Text + "\n";
		text += "Giơ\u0300 Trô\u0300ng:";
		text = text + numericUpDownGio.Value + "\n";
		text += "Chat:";
		text = ((!CheckboxChat.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Kênh Chat:";
		text = text + ((Control)comboBoxChat).Text + "\n";
		text += "Phu\u0301t Chat:";
		text = text + numericUpDownChat.Value + "\n";
		text += "Nô\u0323i Dung Chat:";
		return text + ((Control)textBoxChat).Text;
	}

	private bool loadSettingV7()
	{
		if (!File.Exists(pathData + "/Setting/" + nameUser + "/HTC_V7.txt"))
		{
			Directory.CreateDirectory(pathData + "/Setting/" + nameUser);
			return false;
		}
		int num = 0;
		string[] array = File.ReadAllLines(pathData + "/Setting/" + nameUser + "/HTC_V7.txt");
		for (int i = 0; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array); i++)
		{
			string[] array2 = array[i].Split(':', (StringSplitOptions)0);
			string text = array2[0];
			string text2 = text;
			switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text2))
			{
			case 2923658933u:
				if (text2 == "Ha\u0301i Thuô\u0301c")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxHaiThuoc.CheckState = (CheckState)1;
						tabControl1.SelectTab(0);
					}
					else
					{
						checkBoxHaiThuoc.CheckState = (CheckState)0;
					}
				}
				break;
			case 3593914115u:
				if (text2 == "NPC1 X")
				{
					int.TryParse(array2[1].Trim(), ref num);
					NPC1_X = num;
				}
				break;
			case 3577136496u:
				if (text2 == "NPC1 Y")
				{
					int.TryParse(array2[1].Trim(), ref num);
					NPC1_Y = num;
				}
				break;
			case 4196676692u:
				if (text2 == "Ha\u0301i Thuô\u0301c1 X")
				{
					int.TryParse(array2[1].Trim(), ref num);
					HaiThuoc1_X = num;
				}
				break;
			case 4213454311u:
				if (text2 == "Ha\u0301i Thuô\u0301c1 Y")
				{
					int.TryParse(array2[1].Trim(), ref num);
					HaiThuoc1_Y = num;
				}
				break;
			case 2262303397u:
				if (text2 == "Ha\u0301i Thuô\u0301c2 X")
				{
					int.TryParse(array2[1].Trim(), ref num);
					HaiThuoc2_X = num;
				}
				break;
			case 2245525778u:
				if (text2 == "Ha\u0301i Thuô\u0301c2 Y")
				{
					int.TryParse(array2[1].Trim(), ref num);
					HaiThuoc2_Y = num;
				}
				break;
			case 2222900958u:
				if (text2 == "NPC2 X")
				{
					int.TryParse(array2[1].Trim(), ref num);
					NPC2_X = num;
				}
				break;
			case 2239678577u:
				if (text2 == "NPC2 Y")
				{
					int.TryParse(array2[1].Trim(), ref num);
					NPC2_Y = num;
				}
				break;
			case 3612528202u:
				if (text2 == "Ha\u0301i Thuô\u0301c3 X")
				{
					int.TryParse(array2[1].Trim(), ref num);
					HaiThuoc3_X = num;
				}
				break;
			case 3629305821u:
				if (text2 == "Ha\u0301i Thuô\u0301c3 Y")
				{
					int.TryParse(array2[1].Trim(), ref num);
					HaiThuoc3_Y = num;
				}
				break;
			case 2909747139u:
				if (text2 == "Ha\u0301i Thuô\u0301c4 X")
				{
					int.TryParse(array2[1].Trim(), ref num);
					HaiThuoc4_X = num;
				}
				break;
			case 2892969520u:
				if (text2 == "Ha\u0301i Thuô\u0301c4 Y")
				{
					int.TryParse(array2[1].Trim(), ref num);
					HaiThuoc4_Y = num;
				}
				break;
			case 1271489589u:
				if (text2 == "Vi\u0323 Tri\u0301 Ha\u0301i Thuô\u0301c")
				{
					((Control)comboBox6).Text = array2[1].Trim();
				}
				break;
			case 1349211312u:
				if (text2 == "Câu Ca\u0301")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxCauCa.CheckState = (CheckState)1;
						tabControl1.SelectTab(0);
					}
					else
					{
						checkBoxCauCa.CheckState = (CheckState)0;
					}
				}
				break;
			case 829947218u:
				if (text2 == "Câu1 X")
				{
					int.TryParse(array2[1].Trim(), ref num);
					Cau1_X = num;
				}
				break;
			case 846724837u:
				if (text2 == "Câu1 Y")
				{
					int.TryParse(array2[1].Trim(), ref num);
					Cau1_Y = num;
				}
				break;
			case 2200960375u:
				if (text2 == "Câu2 X")
				{
					int.TryParse(array2[1].Trim(), ref num);
					Cau2_X = num;
				}
				break;
			case 2184182756u:
				if (text2 == "Câu2 Y")
				{
					int.TryParse(array2[1].Trim(), ref num);
					Cau2_Y = num;
				}
				break;
			case 3219012656u:
				if (text2 == "Vi\u0323 Tri\u0301 Câu Ca\u0301")
				{
					((Control)comboBox5).Text = array2[1].Trim();
				}
				break;
			case 661108737u:
				if (text2 == "Nông Tra\u0323i")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxNongTrai.CheckState = (CheckState)1;
						tabControl1.SelectTab(1);
					}
					else
					{
						checkBoxNongTrai.CheckState = (CheckState)0;
					}
				}
				break;
			case 2487674832u:
				if (text2 == "Trô\u0300ng Da\u0300i")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxTrongDai.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxTrongDai.CheckState = (CheckState)0;
					}
				}
				break;
			case 3164822681u:
				if (text2 == "Trô\u0300ng Đă\u0323c Biê\u0323t")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxTrongDacBiet.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxTrongDacBiet.CheckState = (CheckState)0;
					}
				}
				break;
			case 3619914588u:
				if (text2 == "Vi\u0323 Tri\u0301 Trô\u0300ng")
				{
					((Control)comboBox4).Text = array2[1].Trim();
				}
				break;
			case 1329980653u:
				if (text2 == "Tele")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxTele.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxTele.CheckState = (CheckState)0;
					}
				}
				break;
			case 1112465981u:
				if (text2 == "Tele X")
				{
					int.TryParse(array2[1].Trim(), ref num);
					numericUpDownX.Value = decimal.op_Implicit(num);
				}
				break;
			case 1095688362u:
				if (text2 == "Tele Y")
				{
					int.TryParse(array2[1].Trim(), ref num);
					numericUpDownY.Value = decimal.op_Implicit(num);
				}
				break;
			case 2618593398u:
				if (text2 == "Ngươ\u0300i Rơm X")
				{
					int.TryParse(array2[1].Trim(), ref num);
					NguoiRom_X = num;
				}
				break;
			case 2635371017u:
				if (text2 == "Ngươ\u0300i Rơm Y")
				{
					int.TryParse(array2[1].Trim(), ref num);
					NguoiRom_Y = num;
				}
				break;
			case 4281483066u:
				if (text2 == "Thu Hoa\u0323ch X")
				{
					int.TryParse(array2[1].Trim(), ref num);
					ThuHoach_X = num;
				}
				break;
			case 3293389u:
				if (text2 == "Thu Hoa\u0323ch Y")
				{
					int.TryParse(array2[1].Trim(), ref num);
					ThuHoach_Y = num;
				}
				break;
			case 3485978982u:
				if (text2 == "Nông Sa\u0309n1")
				{
					((Control)comboBox1).Text = array2[1].Trim();
				}
				break;
			case 3469201363u:
				if (text2 == "Nông Sa\u0309n2")
				{
					((Control)comboBox2).Text = array2[1].Trim();
				}
				break;
			case 1387199640u:
				if (text2 == "Vi\u0323 Tri\u0301 Nông Trươ\u0300ng")
				{
					((Control)comboBox3).Text = array2[1].Trim();
				}
				break;
			case 397038981u:
				if (text2 == "Kim Tiê\u0300n")
				{
					if (array2[1].Trim() == "1")
					{
						checkBox3.CheckState = (CheckState)1;
					}
					else
					{
						checkBox3.CheckState = (CheckState)0;
					}
				}
				break;
			case 2649000816u:
				if (text2 == "Đa\u0301 Pet")
				{
					if (array2[1].Trim() == "1")
					{
						CheckboxDaPet.CheckState = (CheckState)1;
					}
					else
					{
						CheckboxDaPet.CheckState = (CheckState)0;
					}
				}
				break;
			case 2704694752u:
				if (text2 == "Lươ\u0323t Đa\u0301 Pet")
				{
					int.TryParse(array2[1].Trim(), ref num);
					numericUpDownDaPet.Value = decimal.op_Implicit(num);
				}
				break;
			case 3869294812u:
				if (text2 == "Trô\u0300ng")
				{
					if (array2[1].Trim() == "1")
					{
						CheckboxTrong.CheckState = (CheckState)1;
					}
					else
					{
						CheckboxTrong.CheckState = (CheckState)0;
					}
				}
				break;
			case 738252996u:
				if (text2 == "Loa\u0323i Trô\u0300ng")
				{
					((Control)comboBoxTrong).Text = array2[1].Trim();
				}
				break;
			case 3819265737u:
				if (text2 == "Giơ\u0300 Trô\u0300ng")
				{
					int.TryParse(array2[1].Trim(), ref num);
					numericUpDownGio.Value = decimal.op_Implicit(num);
				}
				break;
			case 578410699u:
				if (text2 == "Chat")
				{
					if (array2[1].Trim() == "1")
					{
						CheckboxChat.CheckState = (CheckState)1;
					}
					else
					{
						CheckboxChat.CheckState = (CheckState)0;
					}
				}
				break;
			case 210417484u:
				if (text2 == "Kênh Chat")
				{
					((Control)comboBoxChat).Text = array2[1].Trim();
				}
				break;
			case 3009561713u:
				if (text2 == "Phu\u0301t Chat")
				{
					int.TryParse(array2[1].Trim(), ref num);
					numericUpDownChat.Value = decimal.op_Implicit(num);
				}
				break;
			case 1435291125u:
			{
				if (!(text2 == "Nô\u0323i Dung Chat"))
				{
					break;
				}
				((Control)textBoxChat).Text = array2[1].Trim() + "\r\n";
				for (int j = i + 1; j < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array); j++)
				{
					TextBox obj = textBoxChat;
					((Control)obj).Text = ((Control)obj).Text + array[j] + "\r\n";
				}
				System.DateTime lastWriteTime = File.GetLastWriteTime(pathData + "/Setting/" + nameUser + "/HTC_V7.txt");
				((Control)label17).Text = "Lần cuối lúc\r\n" + lastWriteTime.ToString("g");
				debugText("Đã Áp Dụng Cài Đặt \"Hái Trồng Câu V7\" Lần Cuối Lúc\r\n" + lastWriteTime.ToString("g"));
				return true;
			}
			}
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

	private unsafe void HideIconECT()
	{
		//IL_006d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0072: Unknown result type (might be due to invalid IL or missing references)
		//IL_0080: Unknown result type (might be due to invalid IL or missing references)
		//IL_0085: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0100: Unknown result type (might be due to invalid IL or missing references)
		//IL_010e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0113: Unknown result type (might be due to invalid IL or missing references)
		//IL_0189: Unknown result type (might be due to invalid IL or missing references)
		//IL_018e: Unknown result type (might be due to invalid IL or missing references)
		//IL_019c: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0306: Unknown result type (might be due to invalid IL or missing references)
		//IL_030b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0319: Unknown result type (might be due to invalid IL or missing references)
		//IL_031e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0229: Unknown result type (might be due to invalid IL or missing references)
		//IL_022e: Unknown result type (might be due to invalid IL or missing references)
		//IL_023e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0243: Unknown result type (might be due to invalid IL or missing references)
		//IL_0270: Unknown result type (might be due to invalid IL or missing references)
		//IL_0275: Unknown result type (might be due to invalid IL or missing references)
		AutoControl.SendKeyBoardPress(hWnd, (VKeys)27);
		debugText("ESC");
		delay_100ms(1);
		debugText("Ản Bảng Nhiệm Vụ Nhanh");
		KetQua_Point = FindPoint(hWnd, pathTacVu + "/TatNhiemVu.png");
		Point val;
		if (KetQua_Point.HasValue)
		{
			System.IntPtr intPtr = hWnd;
			val = KetQua_Point.Value;
			int x = ((Point)(ref val)).X;
			val = KetQua_Point.Value;
			AutoControl.SendClickOnPosition(intPtr, x, ((Point)(ref val)).Y - 30, (EMouseKey)0, 1);
			debugText("Đã tắt bảng Nhiệm Vụ Nhanh");
			delay_100ms(5);
		}
		else
		{
			debugText("Không Thấy Bảng Nhiệm Vụ Nhanh");
		}
		KetQua_Point = FindPoint(hWnd, pathTacVu + "/AnSkill.png");
		if (KetQua_Point.HasValue)
		{
			System.IntPtr intPtr2 = hWnd;
			val = KetQua_Point.Value;
			int x2 = ((Point)(ref val)).X;
			val = KetQua_Point.Value;
			AutoControl.SendClickOnPosition(intPtr2, x2, ((Point)(ref val)).Y - 30, (EMouseKey)0, 1);
			debugText("Đã Ẩn Thanh Skill");
			delay_100ms(5);
		}
		else
		{
			debugText("Không Thấy Thanh Skill");
		}
		KetQua_Point = FindPoint(hWnd, pathTacVu + "/MuiTenThietLap1.png");
		if (KetQua_Point.HasValue)
		{
			System.IntPtr intPtr3 = hWnd;
			val = KetQua_Point.Value;
			int x3 = ((Point)(ref val)).X;
			val = KetQua_Point.Value;
			AutoControl.SendClickOnPosition(intPtr3, x3, ((Point)(ref val)).Y - 30, (EMouseKey)0, 1);
			debugText("Đã Ẩn Cụm Thiết Lập");
			delay_100ms(5);
		}
		else
		{
			debugText("Không Thấy Thanh Skill");
		}
		KetQua_Points = FindPoints(hWnd, pathTacVu + "/MuiTenSangPhai.png");
		if (KetQua_Points.Count != 0)
		{
			for (int i = 0; i < KetQua_Points.Count; i++)
			{
				System.IntPtr intPtr4 = hWnd;
				val = KetQua_Points[i];
				int x4 = ((Point)(ref val)).X;
				val = KetQua_Points[i];
				AutoControl.SendClickOnPosition(intPtr4, x4, ((Point)(ref val)).Y - 30, (EMouseKey)0, 1);
				string text = i.ToString();
				val = KetQua_Points[i];
				debugText("Ẩn Lần " + text + "tại " + ((object)(*(Point*)(&val))/*cast due to .constrained prefix*/).ToString());
				delay_100ms(5);
			}
		}
		else
		{
			debugText("Không Tìm Thấy Mũi Tên Ẩn Icon");
		}
		KetQua_Point = FindPoint(hWnd, pathTacVu + "/GuiChat.png");
		if (KetQua_Point.HasValue)
		{
			System.IntPtr intPtr5 = hWnd;
			val = KetQua_Point.Value;
			int x5 = ((Point)(ref val)).X;
			val = KetQua_Point.Value;
			AutoControl.SendClickOnPosition(intPtr5, x5, ((Point)(ref val)).Y - 30, (EMouseKey)0, 1);
			debugText("Đã Gửi Khung Chat");
			delay_100ms(5);
		}
		else
		{
			debugText("Không Thấy Gửi Khung Chat");
		}
	}

	private void ShowIconECT()
	{
		FindAndClick(hWnd, pathIconBatPet + "/AutoSkill.png", 5, 5, "Tắt Auto");
		FindAndClick(hWnd, pathIconBatPet + "/Skill.png", 3, 3, "Mở Thanh Skill");
	}

	private void PressKey(string x)
	{
		FindAndClick(hWnd, pathKhac + "/Log_OK.png", 2, 2, "Press");
		FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 2, 2, "Press");
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
		case 3322673650u:
			if (x == "C")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)67);
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
		}
		debugText("Đã Nhấn " + x);
		delay_100ms(5);
	}

	private void DaPet()
	{
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
				delay_100ms(10);
				PressKey("Enter");
			}
			delay_100ms(5);
			if (FindsAndClickRandom(hWnd, pathKhac + "/DaPet_KhieuChien.png", 5, 1, "Khiêu Chiến", Settings.Default.kickPet))
			{
				break;
			}
			PressKey("ESC");
			delay_100ms(5);
		}
		debugText("Đá Pet Xong");
	}

	private unsafe void Trong()
	{
		//IL_03df: Unknown result type (might be due to invalid IL or missing references)
		//IL_03e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_04a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_04a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_04ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_04b2: Unknown result type (might be due to invalid IL or missing references)
		while (!FindAndClick(hWnd, pathKhac + "/TrangVien_Icon.png", 5, 1, "Trang Viên").HasValue)
		{
			FindsAndClick(hWnd, pathTacVu + "/MuiTenIcon.png", 0, 0, "Show");
		}
		List<Point> val = FindPoints(hWnd, pathKhac + "/TrangVien_DatTrong.png");
		FindAndClick(hWnd, pathKhac + "/TrangVien_NuoiTrong.png", 5, 1, "Chọn NL");
		string text = ((Control)comboBoxTrong).Text;
		string text2 = text;
		switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text2))
		{
		case 1573425055u:
			if (text2 == "Kim Loại")
			{
				FindAndClick(hWnd, pathKhac + "/TrangVien_KL.png", 5, 1, "Kim Loại");
			}
			break;
		case 3922118883u:
			if (text2 == "Gỗ")
			{
				FindAndClick(hWnd, pathKhac + "/TrangVien_G.png", 5, 1, "Gỗ");
			}
			break;
		case 1688086040u:
			if (text2 == "Lông Thú")
			{
				FindAndClick(hWnd, pathKhac + "/TrangVien_LT.png", 5, 1, "Lông Thú");
			}
			break;
		case 3368508570u:
			if (text2 == "Ngọc")
			{
				FindAndClick(hWnd, pathKhac + "/TrangVien_N.png", 5, 1, "Ngọc");
			}
			break;
		case 4084119917u:
			if (text2 == "Vải Thô")
			{
				FindAndClick(hWnd, pathKhac + "/TrangVien_VT.png", 5, 1, "Vải Thô");
			}
			break;
		case 1221161470u:
			if (text2 == "Kim Loại Hiếm")
			{
				FindAndClick(hWnd, pathKhac + "/TrangVien_KLH.png", 5, 1, "Kim Loại Hiếm");
			}
			break;
		case 3389700338u:
			if (text2 == "Gỗ Tốt")
			{
				FindAndClick(hWnd, pathKhac + "/TrangVien_GT.png", 5, 1, "Gỗ Tốt");
			}
			break;
		case 2458332588u:
			if (text2 == "Da Thú")
			{
				FindAndClick(hWnd, pathKhac + "/TrangVien_DT.png", 5, 1, "Da Thú");
			}
			break;
		case 4235749110u:
			if (text2 == "Pha Lê")
			{
				FindAndClick(hWnd, pathKhac + "/TrangVien_PL.png", 5, 1, "Pha Lê");
			}
			break;
		case 4165754756u:
			if (text2 == "Gấm Vóc")
			{
				FindAndClick(hWnd, pathKhac + "/TrangVien_GV.png", 5, 1, "Gấm Vóc ");
			}
			break;
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
					AutoControl.SendClickUpOnPosition(hWnd, 30, 0, (EMouseKey)0, 1);
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
		while (!FindAndClick(hWnd, pathKhac + "/TrangVien_Icon.png", 5, 1, "Trang Viên").HasValue)
		{
			FindsAndClick(hWnd, pathTacVu + "/MuiTenIcon.png", 0, 0, "Show");
		}
		debugText("Trồng Xong");
	}

	private void HaiThuoc(string cap = "Vi\u0323 Tri\u0301 Đa\u0303 Lưu")
	{
		int num = 0;
		Image chupwindow = CaptureHelper.CaptureWindow(hWnd);
		FindAndClick2(hWnd, chupwindow, pathTacVu + "/ThongBaoCuongDaoBangHoi.png", 2, 2);
		FindAndClick2(hWnd, chupwindow, pathKhac + "/Log_OK.png", 2, 2);
		FindAndClick2(hWnd, chupwindow, pathKhac + "/Auto_Co.png", 2, 2);
		if (FindPoint(hWnd, pathKhac + "/HTC_DauX.png").HasValue)
		{
			return;
		}
		switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(cap))
		{
		case 3323161270u:
			if (!(cap == "Ti\u0300m TD Câ\u0301p 1"))
			{
				break;
			}
			DiCauHai(1, loai: false);
			return;
		case 3306383651u:
			if (!(cap == "Ti\u0300m TD Câ\u0301p 2"))
			{
				break;
			}
			DiCauHai(2, loai: false);
			return;
		case 3289606032u:
			if (!(cap == "Ti\u0300m TD Câ\u0301p 3"))
			{
				break;
			}
			DiCauHai(3, loai: false);
			return;
		case 3407049365u:
			if (!(cap == "Ti\u0300m TD Câ\u0301p 4"))
			{
				break;
			}
			DiCauHai(4, loai: false);
			return;
		case 3390271746u:
			if (!(cap == "Ti\u0300m TD Câ\u0301p 5"))
			{
				break;
			}
			DiCauHai(5, loai: false);
			return;
		case 3373494127u:
			if (!(cap == "Ti\u0300m TD Câ\u0301p 6"))
			{
				break;
			}
			DiCauHai(6, loai: false);
			return;
		case 3356716508u:
			if (!(cap == "Ti\u0300m TD Câ\u0301p 7"))
			{
				break;
			}
			DiCauHai(7, loai: false);
			return;
		}
		while (WaitAvatar(hWnd))
		{
			Image chupwindow2 = CaptureHelper.CaptureWindow(hWnd);
			FindAndClick2(hWnd, chupwindow2, pathTacVu + "/ThongBaoCuongDaoBangHoi.png", 2, 2);
			FindAndClick2(hWnd, chupwindow2, pathKhac + "/Log_OK.png", 2, 2);
			FindAndClick2(hWnd, chupwindow2, pathKhac + "/Auto_Co.png", 2, 2);
			switch (step)
			{
			case 0:
			case 1:
				SendClickOnPosition(hWnd, NPC1_X, NPC1_Y, (EMouseKey)0);
				break;
			case 2:
			case 3:
				SendClickOnPosition(hWnd, NPC2_X, NPC2_Y, (EMouseKey)0);
				break;
			}
			num++;
			if (num >= 10)
			{
				num = 0;
				break;
			}
		}
		while (!FindPoint(hWnd, pathKhac + "/HTC_DauX.png").HasValue)
		{
			PressKey("ESC");
			switch (step)
			{
			case 0:
				SendClickOnPosition(hWnd, HaiThuoc1_X, HaiThuoc1_Y, (EMouseKey)0);
				break;
			case 1:
				SendClickOnPosition(hWnd, HaiThuoc2_X, HaiThuoc2_Y, (EMouseKey)0);
				break;
			case 2:
				SendClickOnPosition(hWnd, HaiThuoc3_X, HaiThuoc3_Y, (EMouseKey)0);
				break;
			case 3:
				SendClickOnPosition(hWnd, HaiThuoc4_X, HaiThuoc4_Y, (EMouseKey)0);
				break;
			}
			delay_100ms(3);
			num++;
			if (num >= 50)
			{
				num = 0;
				debugText("ClearDebugText");
				break;
			}
		}
		step++;
		if (step >= 4)
		{
			step = 0;
			debugText("ClearDebugText");
		}
	}

	private void CauCa(string cap = "Vi\u0323 Tri\u0301 Đa\u0303 Lưu")
	{
		int num = 0;
		Image chupwindow = CaptureHelper.CaptureWindow(hWnd);
		FindAndClick2(hWnd, chupwindow, pathTacVu + "/ThongBaoCuongDaoBangHoi.png", 2, 2);
		FindAndClick2(hWnd, chupwindow, pathKhac + "/Log_OK.png", 2, 2);
		FindAndClick2(hWnd, chupwindow, pathKhac + "/Auto_Co.png", 2, 2);
		if (FindPoint(hWnd, pathKhac + "/HTC_DauX.png").HasValue)
		{
			return;
		}
		switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(cap))
		{
		case 3414378913u:
			if (!(cap == "Ti\u0300m Ca\u0301 Câ\u0301p 1"))
			{
				break;
			}
			DiCauHai(1, loai: true);
			return;
		case 3364046056u:
			if (!(cap == "Ti\u0300m Ca\u0301 Câ\u0301p 2"))
			{
				break;
			}
			DiCauHai(2, loai: true);
			return;
		case 3380823675u:
			if (!(cap == "Ti\u0300m Ca\u0301 Câ\u0301p 3"))
			{
				break;
			}
			DiCauHai(3, loai: true);
			return;
		case 3464711770u:
			if (!(cap == "Ti\u0300m Ca\u0301 Câ\u0301p 4"))
			{
				break;
			}
			DiCauHai(4, loai: true);
			return;
		case 3481489389u:
			if (!(cap == "Ti\u0300m Ca\u0301 Câ\u0301p 5"))
			{
				break;
			}
			DiCauHai(5, loai: true);
			return;
		case 3431156532u:
			if (!(cap == "Ti\u0300m Ca\u0301 Câ\u0301p 6"))
			{
				break;
			}
			DiCauHai(6, loai: true);
			return;
		case 3447934151u:
			if (!(cap == "Ti\u0300m Ca\u0301 Câ\u0301p 7"))
			{
				break;
			}
			DiCauHai(7, loai: true);
			return;
		}
		while (!FindPoint(hWnd, pathKhac + "/HTC_DauX.png").HasValue)
		{
			PressKey("ESC");
			switch (step)
			{
			case 0:
				SendClickOnPosition(hWnd, Cau1_X, Cau1_Y, (EMouseKey)0);
				break;
			case 1:
				SendClickOnPosition(hWnd, Cau2_X, Cau2_Y, (EMouseKey)0);
				break;
			}
			delay_100ms(3);
			num++;
			if (num >= 50)
			{
				num = 0;
				debugText("ClearDebugText");
				break;
			}
		}
		step++;
		if (step >= 2)
		{
			step = 0;
		}
	}

	private void NongTrai()
	{
		//IL_0131: Unknown result type (might be due to invalid IL or missing references)
		//IL_0136: Unknown result type (might be due to invalid IL or missing references)
		//IL_0141: Unknown result type (might be due to invalid IL or missing references)
		//IL_0146: Unknown result type (might be due to invalid IL or missing references)
		//IL_017e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0183: Unknown result type (might be due to invalid IL or missing references)
		//IL_018e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0193: Unknown result type (might be due to invalid IL or missing references)
		//IL_0201: Unknown result type (might be due to invalid IL or missing references)
		//IL_0206: Unknown result type (might be due to invalid IL or missing references)
		//IL_0211: Unknown result type (might be due to invalid IL or missing references)
		//IL_0216: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c8: Unknown result type (might be due to invalid IL or missing references)
		//IL_01cd: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d8: Unknown result type (might be due to invalid IL or missing references)
		//IL_01dd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0520: Unknown result type (might be due to invalid IL or missing references)
		//IL_0525: Unknown result type (might be due to invalid IL or missing references)
		//IL_0530: Unknown result type (might be due to invalid IL or missing references)
		//IL_0535: Unknown result type (might be due to invalid IL or missing references)
		if (checkBox3.Checked && checkKimTien)
		{
			HideIconECT();
		}
		PressKey("ESC");
		Point? val = FindPoint(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png");
		while (!val.HasValue)
		{
			Image chupwindow = CaptureHelper.CaptureWindow(hWnd);
			FindAndClick2(hWnd, chupwindow, pathTacVu + "/ThongBaoCuongDaoBangHoi.png", 2, 2);
			FindAndClick2(hWnd, chupwindow, pathKhac + "/Log_OK.png", 2, 2);
			FindAndClick2(hWnd, chupwindow, pathKhac + "/Auto_Co.png", 2, 2);
			ClickNguoiRom();
			delay_100ms(5);
			val = FindPoint(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png");
		}
		delay_100ms(5);
		Point value;
		if (checkBox3.Checked && checkKimTien)
		{
			System.IntPtr controlHandle = hWnd;
			value = val.Value;
			int x = ((Point)(ref value)).X;
			value = val.Value;
			SendClickOnPosition(controlHandle, x, ((Point)(ref value)).Y - 117 + 40, (EMouseKey)0);
		}
		else if (checkBoxTrongDacBiet.Checked)
		{
			System.IntPtr controlHandle2 = hWnd;
			value = val.Value;
			int x2 = ((Point)(ref value)).X;
			value = val.Value;
			SendClickOnPosition(controlHandle2, x2, ((Point)(ref value)).Y - 117 + 40, (EMouseKey)0);
		}
		else if (checkBoxTrongDai.Checked)
		{
			System.IntPtr controlHandle3 = hWnd;
			value = val.Value;
			int x3 = ((Point)(ref value)).X;
			value = val.Value;
			SendClickOnPosition(controlHandle3, x3, ((Point)(ref value)).Y - 117 + 20, (EMouseKey)0);
		}
		else
		{
			System.IntPtr controlHandle4 = hWnd;
			value = val.Value;
			int x4 = ((Point)(ref value)).X;
			value = val.Value;
			SendClickOnPosition(controlHandle4, x4, ((Point)(ref value)).Y - 117, (EMouseKey)0);
		}
		delay_100ms(5);
		val = FindPoint(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png");
		while (!val.HasValue)
		{
			Image chupwindow2 = CaptureHelper.CaptureWindow(hWnd);
			FindAndClick2(hWnd, chupwindow2, pathTacVu + "/ThongBaoCuongDaoBangHoi.png", 2, 2);
			FindAndClick2(hWnd, chupwindow2, pathKhac + "/Log_OK.png", 2, 2);
			FindAndClick2(hWnd, chupwindow2, pathKhac + "/Auto_Co.png", 2, 2);
			val = FindPoint(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png");
		}
		delay_100ms(3);
		string text = "";
		text = ((checkBox3.Checked && checkKimTien) ? "Kim Tiê\u0300n" : ((step != 0) ? ((Control)comboBox2).Text : ((Control)comboBox1).Text));
		if (checkNongTrai(text, val))
		{
			int num = 1;
			int num2 = 0;
			Point? val2 = FindPoint(hWnd, pathKhac + "/HTC_ThuHoach.png");
			int num3 = 0;
			num3 = ((!checkBoxTrongDai.Checked) ? 360 : 2460);
			while (true)
			{
				if (!val2.HasValue)
				{
					Image val3 = CaptureHelper.CaptureWindow(hWnd);
					FindAndClick2(hWnd, val3, pathTacVu + "/ThongBaoCuongDaoBangHoi.png", 2, 2);
					FindAndClick2(hWnd, val3, pathKhac + "/Log_OK.png", 2, 2);
					FindAndClick2(hWnd, val3, pathKhac + "/Auto_Co.png", 2, 2);
					val2 = FindPoint2(hWnd, val3, pathKhac + "/HTC_ThuHoach.png");
					ClickUpThuHoach(num);
					delay_100ms(10);
					ClickUpNguoiRom();
					checkChat();
					num++;
					if (num >= 5)
					{
						num = 1;
					}
					num2++;
					if (num2 < num3)
					{
						continue;
					}
					for (int i = 1; i < 5; i++)
					{
						ClickThuHoach(i);
						ClickThuHoach(i);
						if (FindPoint(hWnd, pathKhac + "/HTC_DauX.png").HasValue)
						{
							goto end_IL_04f6;
						}
					}
				}
				if (val2.HasValue)
				{
					System.IntPtr controlHandle5 = hWnd;
					value = val2.Value;
					int x5 = ((Point)(ref value)).X;
					value = val2.Value;
					SendClickOnPosition(controlHandle5, x5, ((Point)(ref value)).Y, (EMouseKey)0);
					delay_100ms(5);
				}
				break;
				continue;
				end_IL_04f6:
				break;
			}
			num = 1;
			num2 = 0;
			while (!FindPoint(hWnd, pathKhac + "/HTC_DauX.png").HasValue)
			{
				Image chupwindow3 = CaptureHelper.CaptureWindow(hWnd);
				FindAndClick2(hWnd, chupwindow3, pathTacVu + "/ThongBaoCuongDaoBangHoi.png", 2, 2);
				FindAndClick2(hWnd, chupwindow3, pathKhac + "/Log_OK.png", 2, 2);
				FindAndClick2(hWnd, chupwindow3, pathKhac + "/Auto_Co.png", 2, 2);
				PressKey("ESC");
				delay_100ms(5);
				ClickThuHoach(num);
				debugText("Thu Hoạch");
				ClickUpNguoiRom();
				num++;
				if (num >= 5)
				{
					num = 1;
				}
				delay_100ms(10);
				num2++;
				if (num2 >= 5)
				{
					delay_100ms(30);
					break;
				}
			}
			num2 = 0;
			while (FindPoint(hWnd, pathKhac + "/HTC_DauX.png").HasValue)
			{
				num2++;
				if (num2 >= 840)
				{
					break;
				}
			}
		}
		else
		{
			PressKey("ESC");
		}
		Image chupwindow4 = CaptureHelper.CaptureWindow(hWnd);
		FindAndClick2(hWnd, chupwindow4, pathTacVu + "/ThongBaoCuongDaoBangHoi.png", 2, 2);
		FindAndClick2(hWnd, chupwindow4, pathKhac + "/Log_OK.png", 2, 2);
		FindAndClick2(hWnd, chupwindow4, pathKhac + "/Auto_Co.png", 2, 2);
		delay_100ms(5);
		step++;
		if (step >= 2)
		{
			step = 0;
			debugText("ClearDebugText");
		}
	}

	private void Tele2(double X, double Y)
	{
		//IL_016f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0174: Unknown result type (might be due to invalid IL or missing references)
		//IL_0185: Unknown result type (might be due to invalid IL or missing references)
		//IL_018a: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b2: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b7: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c8: Unknown result type (might be due to invalid IL or missing references)
		//IL_01cd: Unknown result type (might be due to invalid IL or missing references)
		debugText("Đi Đến Tọa Độ Chỉ Định");
		bool flag = WriteMemoryData(processID, myPointer, offset_ToaDoX, X * 10.0);
		bool flag2 = WriteMemoryData(processID, myPointer, offset_ToaDoY, Y * 10.0);
		while (!flag || !flag2)
		{
			flag = WriteMemoryData(processID, myPointer, offset_ToaDoX, X * 10.0);
			flag2 = WriteMemoryData(processID, myPointer, offset_ToaDoY, Y * 10.0);
			delay_100ms(5);
		}
		PressKey("P");
		delay_100ms(5);
		Point? val = FindPoint(hWnd, pathTacVu + "/ChienDau.png");
		if (val.HasValue)
		{
			if (X != 0.0 && Y != 0.0)
			{
				WriteMemoryData(processID, myPointer, offset_ToaDoX, X * 10.0);
				WriteMemoryData(processID, myPointer, offset_ToaDoY, Y * 10.0);
			}
			System.IntPtr intPtr = hWnd;
			Point value = val.Value;
			int num = ((Point)(ref value)).X + 200;
			value = val.Value;
			AutoControl.SendClickOnPosition(intPtr, num, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
			delay_100ms(10);
			System.IntPtr intPtr2 = hWnd;
			value = val.Value;
			int num2 = ((Point)(ref value)).X + 200;
			value = val.Value;
			AutoControl.SendClickOnPosition(intPtr2, num2, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
			delay_100ms(10);
		}
		PressKey("ESC");
	}

	private void Tele3(double X, double Y)
	{
		//IL_0184: Unknown result type (might be due to invalid IL or missing references)
		//IL_0189: Unknown result type (might be due to invalid IL or missing references)
		//IL_0196: Unknown result type (might be due to invalid IL or missing references)
		//IL_019b: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c5: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_01fc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0201: Unknown result type (might be due to invalid IL or missing references)
		//IL_020e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0213: Unknown result type (might be due to invalid IL or missing references)
		//IL_0238: Unknown result type (might be due to invalid IL or missing references)
		//IL_023d: Unknown result type (might be due to invalid IL or missing references)
		//IL_024a: Unknown result type (might be due to invalid IL or missing references)
		//IL_024f: Unknown result type (might be due to invalid IL or missing references)
		X *= 10.0;
		Y *= 10.0;
		IsStop = false;
		debugText("Đi Đến Tọa Độ Chỉ Định");
		bool flag = WriteMemoryData(processID, myPointer, offset_ToaDoX, X);
		bool flag2 = WriteMemoryData(processID, myPointer, offset_ToaDoY, Y);
		while (!flag || !flag2)
		{
			flag = WriteMemoryData(processID, myPointer, offset_ToaDoX, X);
			flag2 = WriteMemoryData(processID, myPointer, offset_ToaDoY, Y);
			delay_100ms(5);
		}
		int num = 0;
		do
		{
			FindAndClick(hWnd, pathKhac + "/Skin_TrangBi.png", 0, 0, "Tìm tab Trang Bị");
			if (!FindPoint(hWnd, pathKhac + "/Skin_TuDo.png").HasValue)
			{
				FindAndClick(hWnd, pathKhac + "/Icon_NhanVat.png", 0, 0, "Mở Nhân Vật");
				num++;
				continue;
			}
			Point? val = FindPoint(hWnd, pathKhac + "/Skin_TuDo.png");
			if (val.HasValue)
			{
				System.IntPtr controlHandle = hWnd;
				Point value = val.Value;
				int x = ((Point)(ref value)).X - 5;
				value = val.Value;
				SendClickOnPosition(controlHandle, x, ((Point)(ref value)).Y - 90, (EMouseKey)0);
				delay_100ms(2);
				System.IntPtr controlHandle2 = hWnd;
				value = val.Value;
				int x2 = ((Point)(ref value)).X - 5;
				value = val.Value;
				SendClickOnPosition(controlHandle2, x2, ((Point)(ref value)).Y - 90, (EMouseKey)0);
				delay_100ms(5);
				System.IntPtr controlHandle3 = hWnd;
				value = val.Value;
				int x3 = ((Point)(ref value)).X - 5;
				value = val.Value;
				SendClickOnPosition(controlHandle3, x3, ((Point)(ref value)).Y - 90, (EMouseKey)0);
				delay_100ms(2);
				System.IntPtr controlHandle4 = hWnd;
				value = val.Value;
				int x4 = ((Point)(ref value)).X - 5;
				value = val.Value;
				SendClickOnPosition(controlHandle4, x4, ((Point)(ref value)).Y - 90, (EMouseKey)0);
				delay_100ms(5);
			}
			break;
		}
		while (num < 300);
		PressKey("ESC");
		IsStop = true;
	}

	private bool checkNongTrai(string NongSan, Point? NutRoiKhoi)
	{
		//IL_0397: Unknown result type (might be due to invalid IL or missing references)
		//IL_039c: Unknown result type (might be due to invalid IL or missing references)
		//IL_03b3: Unknown result type (might be due to invalid IL or missing references)
		//IL_03b8: Unknown result type (might be due to invalid IL or missing references)
		//IL_04b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_04b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_04c1: Unknown result type (might be due to invalid IL or missing references)
		//IL_04c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0534: Unknown result type (might be due to invalid IL or missing references)
		//IL_0539: Unknown result type (might be due to invalid IL or missing references)
		//IL_0544: Unknown result type (might be due to invalid IL or missing references)
		//IL_0549: Unknown result type (might be due to invalid IL or missing references)
		//IL_0574: Unknown result type (might be due to invalid IL or missing references)
		//IL_0579: Unknown result type (might be due to invalid IL or missing references)
		//IL_0584: Unknown result type (might be due to invalid IL or missing references)
		//IL_0589: Unknown result type (might be due to invalid IL or missing references)
		//IL_05b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_05b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_05c1: Unknown result type (might be due to invalid IL or missing references)
		//IL_05c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_05ee: Unknown result type (might be due to invalid IL or missing references)
		//IL_05f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_05fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_0603: Unknown result type (might be due to invalid IL or missing references)
		int num = 0;
		int num2 = 0;
		switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(NongSan))
		{
		case 433236260u:
			if (NongSan == "Lúa Mạch Cấp 1")
			{
				goto IL_02a6;
			}
			goto default;
		case 3049358724u:
			if (NongSan == "Loa\u0323i 1")
			{
				goto IL_02a6;
			}
			goto default;
		case 397038981u:
			if (NongSan == "Kim Tiê\u0300n")
			{
				goto IL_02a6;
			}
			goto default;
		case 37972012u:
			if (NongSan == "Lúa Gạo Cấp 1")
			{
				goto IL_02ac;
			}
			goto default;
		case 3099691581u:
			if (NongSan == "Loa\u0323i 2")
			{
				goto IL_02ac;
			}
			goto default;
		case 2713391836u:
			if (!(NongSan == "Bắp Cấp 2"))
			{
				goto default;
			}
			num = 1;
			num2 = 3;
			break;
		case 3278070411u:
			if (!(NongSan == "Khoai Cấp 2"))
			{
				goto default;
			}
			num = 1;
			num2 = 4;
			break;
		case 3636741664u:
			if (!(NongSan == "Đậu Phộng Cấp 3"))
			{
				goto default;
			}
			num = 1;
			num2 = 5;
			break;
		case 1799876142u:
			if (!(NongSan == "Đậu Nành Cấp 3"))
			{
				goto default;
			}
			num = 2;
			num2 = 1;
			break;
		case 3922343168u:
			if (!(NongSan == "Cải Thảo Cấp 4"))
			{
				goto default;
			}
			num = 2;
			num2 = 2;
			break;
		case 4248552610u:
			if (!(NongSan == "Củ Cải Cấp 4"))
			{
				goto default;
			}
			num = 2;
			num2 = 3;
			break;
		case 564934693u:
			if (!(NongSan == "Cacao Cấp 5"))
			{
				goto default;
			}
			num = 2;
			num2 = 4;
			break;
		case 2470018381u:
			if (!(NongSan == "Cao Lương Cấp 5"))
			{
				goto default;
			}
			num = 2;
			num2 = 5;
			break;
		case 1190166965u:
			if (!(NongSan == "Mướp Cấp 6"))
			{
				goto default;
			}
			num = 3;
			num2 = 1;
			break;
		case 861880475u:
			if (!(NongSan == "Bầu Cấp 6"))
			{
				goto default;
			}
			num = 3;
			num2 = 2;
			break;
		case 3330695300u:
			if (!(NongSan == "Bông Cải Cấp 7"))
			{
				goto default;
			}
			num = 3;
			num2 = 3;
			break;
		case 3439099286u:
			if (!(NongSan == "Hoàng Kim Quả Cấp 7"))
			{
				goto default;
			}
			num = 3;
			num2 = 4;
			break;
		default:
			{
				return false;
			}
			IL_02a6:
			num = 1;
			num2 = 1;
			break;
			IL_02ac:
			num = 1;
			num2 = 2;
			break;
		}
		if (num != 0)
		{
			Point value;
			for (int i = 1; i < num; i++)
			{
				for (int j = 0; j < 5; j++)
				{
					FindAndClick(hWnd, pathTacVu + "/ThongBaoCuongDaoBangHoi.png", 2, 2, "CĐBH");
					FindAndClick(hWnd, pathKhac + "/Log_OK.png", 2, 2, "OK");
					FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 2, 2, "CO");
					System.IntPtr controlHandle = hWnd;
					value = NutRoiKhoi.Value;
					int x = ((Point)(ref value)).X + 435 - 326;
					value = NutRoiKhoi.Value;
					SendClickOnPosition(controlHandle, x, ((Point)(ref value)).Y + 465 - 482, (EMouseKey)0);
					delay_100ms(2);
				}
			}
			FindAndClick(hWnd, pathTacVu + "/ThongBaoCuongDaoBangHoi.png", 2, 2, "CĐBH");
			FindAndClick(hWnd, pathKhac + "/Log_OK.png", 2, 2, "OK");
			FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 2, 2, "CO");
			switch (num2)
			{
			case 1:
			{
				System.IntPtr controlHandle6 = hWnd;
				value = NutRoiKhoi.Value;
				int x6 = ((Point)(ref value)).X;
				value = NutRoiKhoi.Value;
				SendClickOnPosition(controlHandle6, x6, ((Point)(ref value)).Y + 366 - 482, (EMouseKey)0);
				delay_100ms(3);
				if (FindPoint(hWnd, pathKhac + "/HTC_KT.png").HasValue)
				{
					checkKimTien = false;
					return false;
				}
				break;
			}
			case 2:
			{
				System.IntPtr controlHandle5 = hWnd;
				value = NutRoiKhoi.Value;
				int x5 = ((Point)(ref value)).X;
				value = NutRoiKhoi.Value;
				SendClickOnPosition(controlHandle5, x5, ((Point)(ref value)).Y + 390 - 482, (EMouseKey)0);
				break;
			}
			case 3:
			{
				System.IntPtr controlHandle4 = hWnd;
				value = NutRoiKhoi.Value;
				int x4 = ((Point)(ref value)).X;
				value = NutRoiKhoi.Value;
				SendClickOnPosition(controlHandle4, x4, ((Point)(ref value)).Y + 415 - 482, (EMouseKey)0);
				break;
			}
			case 4:
			{
				System.IntPtr controlHandle3 = hWnd;
				value = NutRoiKhoi.Value;
				int x3 = ((Point)(ref value)).X;
				value = NutRoiKhoi.Value;
				SendClickOnPosition(controlHandle3, x3, ((Point)(ref value)).Y + 440 - 482, (EMouseKey)0);
				break;
			}
			case 5:
			{
				System.IntPtr controlHandle2 = hWnd;
				value = NutRoiKhoi.Value;
				int x2 = ((Point)(ref value)).X;
				value = NutRoiKhoi.Value;
				SendClickOnPosition(controlHandle2, x2, ((Point)(ref value)).Y + 465 - 482, (EMouseKey)0);
				break;
			}
			}
			return true;
		}
		return false;
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
		PressKey("ESC");
	}

	private void CapNhatViTriXY()
	{
		((Control)checkBoxTele).Text = "Tele Đê\u0301n X: " + (int)numericUpDownX.Value + " - Y: " + (int)numericUpDownY.Value;
	}

	private void ViTriNongTruong()
	{
		//IL_02c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c6: Invalid comparison between Unknown and I4
		Xuong();
		Xuong();
		Xuong();
		string text = ((Control)comboBox4).Text;
		string text2 = text;
		switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text2))
		{
		case 385337595u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 1"))
			{
				break;
			}
			Tele2(150.0, 12.0);
			return;
		case 402115214u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 2"))
			{
				break;
			}
			Tele2(115.0, 37.0);
			return;
		case 418892833u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 3"))
			{
				break;
			}
			Tele2(167.0, 50.0);
			return;
		case 435670452u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 4"))
			{
				break;
			}
			Tele2(242.0, 103.0);
			return;
		case 452448071u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 5"))
			{
				break;
			}
			Tele2(276.0, 119.0);
			return;
		case 469225690u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 6"))
			{
				break;
			}
			Tele2(28.0, 95.0);
			return;
		case 486003309u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 7"))
			{
				break;
			}
			Tele2(53.0, 121.0);
			return;
		case 234339024u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 8"))
			{
				break;
			}
			Tele2(163.0, 155.0);
			return;
		case 251116643u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 9"))
			{
				break;
			}
			Tele2(194.0, 174.0);
			return;
		case 4077983633u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 10"))
			{
				break;
			}
			Tele2(98.0, 184.0);
			return;
		}
		if ((int)checkBoxTele.CheckState == 1)
		{
			Tele2((int)numericUpDownX.Value, (int)numericUpDownY.Value);
		}
	}

	private void ClickUpNguoiRom()
	{
		string text = ((Control)comboBox4).Text;
		string text2 = text;
		switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text2))
		{
		case 385337595u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 1"))
			{
				break;
			}
			SendClickUpOnPosition(hWnd, 468, 223, (EMouseKey)0);
			return;
		case 402115214u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 2"))
			{
				break;
			}
			SendClickUpOnPosition(hWnd, 479, 438, (EMouseKey)0);
			return;
		case 418892833u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 3"))
			{
				break;
			}
			SendClickUpOnPosition(hWnd, 475, 427, (EMouseKey)0);
			return;
		case 435670452u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 4"))
			{
				break;
			}
			SendClickUpOnPosition(hWnd, 470, 437, (EMouseKey)0);
			return;
		case 452448071u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 5"))
			{
				break;
			}
			SendClickUpOnPosition(hWnd, 768, 433, (EMouseKey)0);
			return;
		case 469225690u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 6"))
			{
				break;
			}
			SendClickUpOnPosition(hWnd, 227, 439, (EMouseKey)0);
			return;
		case 486003309u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 7"))
			{
				break;
			}
			SendClickUpOnPosition(hWnd, 486, 433, (EMouseKey)0);
			return;
		case 234339024u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 8"))
			{
				break;
			}
			SendClickUpOnPosition(hWnd, 483, 435, (EMouseKey)0);
			return;
		case 251116643u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 9"))
			{
				break;
			}
			SendClickUpOnPosition(hWnd, 476, 502, (EMouseKey)0);
			return;
		case 4077983633u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 10"))
			{
				break;
			}
			SendClickUpOnPosition(hWnd, 477, 610, (EMouseKey)0);
			return;
		}
		SendClickUpOnPosition(hWnd, NguoiRom_X, NguoiRom_Y, (EMouseKey)0);
	}

	private void ClickNguoiRom()
	{
		string text = ((Control)comboBox4).Text;
		string text2 = text;
		switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text2))
		{
		case 385337595u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 1"))
			{
				break;
			}
			SendClickOnPosition(hWnd, 468, 223, (EMouseKey)0);
			return;
		case 402115214u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 2"))
			{
				break;
			}
			SendClickOnPosition(hWnd, 479, 438, (EMouseKey)0);
			return;
		case 418892833u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 3"))
			{
				break;
			}
			SendClickOnPosition(hWnd, 475, 427, (EMouseKey)0);
			return;
		case 435670452u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 4"))
			{
				break;
			}
			SendClickOnPosition(hWnd, 470, 437, (EMouseKey)0);
			return;
		case 452448071u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 5"))
			{
				break;
			}
			SendClickOnPosition(hWnd, 768, 433, (EMouseKey)0);
			return;
		case 469225690u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 6"))
			{
				break;
			}
			SendClickOnPosition(hWnd, 227, 439, (EMouseKey)0);
			return;
		case 486003309u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 7"))
			{
				break;
			}
			SendClickOnPosition(hWnd, 486, 433, (EMouseKey)0);
			return;
		case 234339024u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 8"))
			{
				break;
			}
			SendClickOnPosition(hWnd, 483, 435, (EMouseKey)0);
			return;
		case 251116643u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 9"))
			{
				break;
			}
			SendClickOnPosition(hWnd, 476, 502, (EMouseKey)0);
			return;
		case 4077983633u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 10"))
			{
				break;
			}
			SendClickOnPosition(hWnd, 477, 610, (EMouseKey)0);
			return;
		}
		SendClickOnPosition(hWnd, NguoiRom_X, NguoiRom_Y, (EMouseKey)0);
	}

	private void ClickUpThuHoach(int turn)
	{
		string text = ((Control)comboBox4).Text;
		string text2 = text;
		switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text2))
		{
		case 385337595u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 1"))
			{
				break;
			}
			switch (turn)
			{
			case 1:
				SendClickUpOnPosition(hWnd, 638, 167, (EMouseKey)0);
				break;
			case 2:
				SendClickUpOnPosition(hWnd, 602, 208, (EMouseKey)0);
				break;
			case 3:
				SendClickUpOnPosition(hWnd, 594, 163, (EMouseKey)0);
				break;
			case 4:
				SendClickUpOnPosition(hWnd, 594, 163, (EMouseKey)0);
				break;
			}
			return;
		case 402115214u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 2"))
			{
				break;
			}
			switch (turn)
			{
			case 1:
				SendClickUpOnPosition(hWnd, 641, 379, (EMouseKey)0);
				break;
			case 2:
				SendClickUpOnPosition(hWnd, 609, 409, (EMouseKey)0);
				break;
			case 3:
				SendClickUpOnPosition(hWnd, 604, 368, (EMouseKey)0);
				break;
			case 4:
				SendClickUpOnPosition(hWnd, 604, 378, (EMouseKey)0);
				break;
			}
			return;
		case 418892833u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 3"))
			{
				break;
			}
			switch (turn)
			{
			case 1:
				SendClickUpOnPosition(hWnd, 636, 368, (EMouseKey)0);
				break;
			case 2:
				SendClickUpOnPosition(hWnd, 597, 394, (EMouseKey)0);
				break;
			case 3:
				SendClickUpOnPosition(hWnd, 596, 367, (EMouseKey)0);
				break;
			case 4:
				SendClickUpOnPosition(hWnd, 598, 351, (EMouseKey)0);
				break;
			}
			return;
		case 435670452u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 4"))
			{
				break;
			}
			switch (turn)
			{
			case 1:
				SendClickUpOnPosition(hWnd, 633, 374, (EMouseKey)0);
				break;
			case 2:
				SendClickUpOnPosition(hWnd, 600, 401, (EMouseKey)0);
				break;
			case 3:
				SendClickUpOnPosition(hWnd, 597, 375, (EMouseKey)0);
				break;
			case 4:
				SendClickUpOnPosition(hWnd, 598, 354, (EMouseKey)0);
				break;
			}
			return;
		case 452448071u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 5"))
			{
				break;
			}
			switch (turn)
			{
			case 1:
				SendClickUpOnPosition(hWnd, 927, 374, (EMouseKey)0);
				break;
			case 2:
				SendClickUpOnPosition(hWnd, 896, 400, (EMouseKey)0);
				break;
			case 3:
				SendClickUpOnPosition(hWnd, 894, 352, (EMouseKey)0);
				break;
			case 4:
				SendClickUpOnPosition(hWnd, 893, 373, (EMouseKey)0);
				break;
			}
			return;
		case 469225690u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 6"))
			{
				break;
			}
			switch (turn)
			{
			case 1:
				SendClickUpOnPosition(hWnd, 389, 376, (EMouseKey)0);
				break;
			case 2:
				SendClickUpOnPosition(hWnd, 357, 403, (EMouseKey)0);
				break;
			case 3:
				SendClickUpOnPosition(hWnd, 355, 361, (EMouseKey)0);
				break;
			case 4:
				SendClickUpOnPosition(hWnd, 356, 376, (EMouseKey)0);
				break;
			}
			return;
		case 486003309u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 7"))
			{
				break;
			}
			switch (turn)
			{
			case 1:
				SendClickUpOnPosition(hWnd, 638, 372, (EMouseKey)0);
				break;
			case 2:
				SendClickUpOnPosition(hWnd, 607, 397, (EMouseKey)0);
				break;
			case 3:
				SendClickUpOnPosition(hWnd, 605, 356, (EMouseKey)0);
				break;
			case 4:
				SendClickUpOnPosition(hWnd, 609, 371, (EMouseKey)0);
				break;
			}
			return;
		case 234339024u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 8"))
			{
				break;
			}
			switch (turn)
			{
			case 1:
				SendClickUpOnPosition(hWnd, 651, 380, (EMouseKey)0);
				break;
			case 2:
				SendClickUpOnPosition(hWnd, 615, 401, (EMouseKey)0);
				break;
			case 3:
				SendClickUpOnPosition(hWnd, 611, 355, (EMouseKey)0);
				break;
			case 4:
				SendClickUpOnPosition(hWnd, 613, 378, (EMouseKey)0);
				break;
			}
			return;
		case 251116643u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 9"))
			{
				break;
			}
			switch (turn)
			{
			case 1:
				SendClickUpOnPosition(hWnd, 645, 444, (EMouseKey)0);
				break;
			case 2:
				SendClickUpOnPosition(hWnd, 604, 469, (EMouseKey)0);
				break;
			case 3:
				SendClickUpOnPosition(hWnd, 603, 420, (EMouseKey)0);
				break;
			case 4:
				SendClickUpOnPosition(hWnd, 606, 442, (EMouseKey)0);
				break;
			}
			return;
		case 4077983633u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 10"))
			{
				break;
			}
			switch (turn)
			{
			case 1:
				SendClickUpOnPosition(hWnd, 644, 550, (EMouseKey)0);
				break;
			case 2:
				SendClickUpOnPosition(hWnd, 605, 581, (EMouseKey)0);
				break;
			case 3:
				SendClickUpOnPosition(hWnd, 600, 527, (EMouseKey)0);
				break;
			case 4:
				SendClickUpOnPosition(hWnd, 602, 549, (EMouseKey)0);
				break;
			}
			return;
		}
		SendClickUpOnPosition(hWnd, ThuHoach_X, ThuHoach_Y, (EMouseKey)0);
	}

	private void ClickThuHoach(int turn)
	{
		string text = ((Control)comboBox4).Text;
		string text2 = text;
		switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text2))
		{
		case 385337595u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 1"))
			{
				break;
			}
			switch (turn)
			{
			case 1:
				SendClickOnPosition(hWnd, 638, 167, (EMouseKey)0);
				break;
			case 2:
				SendClickOnPosition(hWnd, 602, 208, (EMouseKey)0);
				break;
			case 3:
				SendClickOnPosition(hWnd, 594, 163, (EMouseKey)0);
				break;
			case 4:
				SendClickOnPosition(hWnd, 594, 163, (EMouseKey)0);
				break;
			}
			return;
		case 402115214u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 2"))
			{
				break;
			}
			switch (turn)
			{
			case 1:
				SendClickOnPosition(hWnd, 641, 379, (EMouseKey)0);
				break;
			case 2:
				SendClickOnPosition(hWnd, 609, 409, (EMouseKey)0);
				break;
			case 3:
				SendClickOnPosition(hWnd, 604, 368, (EMouseKey)0);
				break;
			case 4:
				SendClickOnPosition(hWnd, 604, 378, (EMouseKey)0);
				break;
			}
			return;
		case 418892833u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 3"))
			{
				break;
			}
			switch (turn)
			{
			case 1:
				SendClickOnPosition(hWnd, 636, 368, (EMouseKey)0);
				break;
			case 2:
				SendClickOnPosition(hWnd, 597, 394, (EMouseKey)0);
				break;
			case 3:
				SendClickOnPosition(hWnd, 596, 367, (EMouseKey)0);
				break;
			case 4:
				SendClickOnPosition(hWnd, 598, 351, (EMouseKey)0);
				break;
			}
			return;
		case 435670452u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 4"))
			{
				break;
			}
			switch (turn)
			{
			case 1:
				SendClickOnPosition(hWnd, 633, 374, (EMouseKey)0);
				break;
			case 2:
				SendClickOnPosition(hWnd, 600, 401, (EMouseKey)0);
				break;
			case 3:
				SendClickOnPosition(hWnd, 597, 375, (EMouseKey)0);
				break;
			case 4:
				SendClickOnPosition(hWnd, 598, 354, (EMouseKey)0);
				break;
			}
			return;
		case 452448071u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 5"))
			{
				break;
			}
			switch (turn)
			{
			case 1:
				SendClickOnPosition(hWnd, 927, 374, (EMouseKey)0);
				break;
			case 2:
				SendClickOnPosition(hWnd, 896, 400, (EMouseKey)0);
				break;
			case 3:
				SendClickOnPosition(hWnd, 894, 352, (EMouseKey)0);
				break;
			case 4:
				SendClickOnPosition(hWnd, 893, 373, (EMouseKey)0);
				break;
			}
			return;
		case 469225690u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 6"))
			{
				break;
			}
			switch (turn)
			{
			case 1:
				SendClickOnPosition(hWnd, 389, 376, (EMouseKey)0);
				break;
			case 2:
				SendClickOnPosition(hWnd, 357, 403, (EMouseKey)0);
				break;
			case 3:
				SendClickOnPosition(hWnd, 355, 361, (EMouseKey)0);
				break;
			case 4:
				SendClickOnPosition(hWnd, 356, 376, (EMouseKey)0);
				break;
			}
			return;
		case 486003309u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 7"))
			{
				break;
			}
			switch (turn)
			{
			case 1:
				SendClickOnPosition(hWnd, 638, 372, (EMouseKey)0);
				break;
			case 2:
				SendClickOnPosition(hWnd, 607, 397, (EMouseKey)0);
				break;
			case 3:
				SendClickOnPosition(hWnd, 605, 356, (EMouseKey)0);
				break;
			case 4:
				SendClickOnPosition(hWnd, 609, 371, (EMouseKey)0);
				break;
			}
			return;
		case 234339024u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 8"))
			{
				break;
			}
			switch (turn)
			{
			case 1:
				SendClickOnPosition(hWnd, 651, 380, (EMouseKey)0);
				break;
			case 2:
				SendClickOnPosition(hWnd, 615, 401, (EMouseKey)0);
				break;
			case 3:
				SendClickOnPosition(hWnd, 611, 355, (EMouseKey)0);
				break;
			case 4:
				SendClickOnPosition(hWnd, 613, 378, (EMouseKey)0);
				break;
			}
			return;
		case 251116643u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 9"))
			{
				break;
			}
			switch (turn)
			{
			case 1:
				SendClickOnPosition(hWnd, 645, 444, (EMouseKey)0);
				break;
			case 2:
				SendClickOnPosition(hWnd, 604, 469, (EMouseKey)0);
				break;
			case 3:
				SendClickOnPosition(hWnd, 603, 420, (EMouseKey)0);
				break;
			case 4:
				SendClickOnPosition(hWnd, 606, 442, (EMouseKey)0);
				break;
			}
			return;
		case 4077983633u:
			if (!(text2 == "Vi\u0323 Tri\u0301 Tool - 10"))
			{
				break;
			}
			switch (turn)
			{
			case 1:
				SendClickOnPosition(hWnd, 644, 550, (EMouseKey)0);
				break;
			case 2:
				SendClickOnPosition(hWnd, 605, 581, (EMouseKey)0);
				break;
			case 3:
				SendClickOnPosition(hWnd, 600, 527, (EMouseKey)0);
				break;
			case 4:
				SendClickOnPosition(hWnd, 602, 549, (EMouseKey)0);
				break;
			}
			return;
		}
		SendClickOnPosition(hWnd, ThuHoach_X, ThuHoach_Y, (EMouseKey)0);
	}

	private void checkBox1_CheckedChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		if ((int)checkBoxNongTrai.CheckState == 1)
		{
			checkBoxHaiThuoc.CheckState = (CheckState)0;
			checkBoxCauCa.CheckState = (CheckState)0;
		}
	}

	private void checkBox3_CheckedChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		if ((int)checkBoxCauCa.CheckState == 1)
		{
			checkBoxNongTrai.CheckState = (CheckState)0;
			checkBoxHaiThuoc.CheckState = (CheckState)0;
		}
	}

	private void checkBox2_CheckedChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		if ((int)checkBoxHaiThuoc.CheckState == 1)
		{
			checkBoxNongTrai.CheckState = (CheckState)0;
			checkBoxCauCa.CheckState = (CheckState)0;
		}
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
			((Form)this).Size = new Size(558, 435);
		}
		else if ((int)ButtonDebug.CheckState == 0)
		{
			((Control)ButtonDebug).Text = "Chi Tiết";
			((Form)this).Size = new Size(386, 194);
		}
	}

	private void CheckboxDaPet_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		//IL_0021: Unknown result type (might be due to invalid IL or missing references)
		//IL_0027: Invalid comparison between Unknown and I4
		if ((int)CheckboxDaPet.CheckState == 0 && (int)CheckboxTrong.CheckState == 0 && (int)CheckboxChat.CheckState == 0)
		{
			stopTimer();
		}
		else
		{
			startTimer();
		}
	}

	private void CheckboxTrong_CheckedChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		//IL_0021: Unknown result type (might be due to invalid IL or missing references)
		//IL_0027: Invalid comparison between Unknown and I4
		if ((int)CheckboxDaPet.CheckState == 0 && (int)CheckboxTrong.CheckState == 0 && (int)CheckboxChat.CheckState == 0)
		{
			stopTimer();
		}
		else
		{
			startTimer();
		}
	}

	private void CheckboxChat_CheckedChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		//IL_0021: Unknown result type (might be due to invalid IL or missing references)
		//IL_0027: Invalid comparison between Unknown and I4
		if ((int)CheckboxDaPet.CheckState == 0 && (int)CheckboxTrong.CheckState == 0 && (int)CheckboxChat.CheckState == 0)
		{
			stopTimer();
		}
		else
		{
			startTimer();
		}
	}

	private void buttonPause_Click(object sender, EventArgs e)
	{
		if (IsPause)
		{
			IsPause = false;
			((Control)buttonPause).Text = "Pause";
			HideAllSelect();
		}
		else
		{
			IsPause = true;
			((Control)buttonPause).Text = "Next";
			ShowAllSelect();
		}
		debugText(IsPause.ToString());
	}

	private void HideAllSelect()
	{
		((Control)groupBox1).Enabled = false;
		((Control)groupBox2).Enabled = false;
		((Control)tabControl1).Enabled = false;
	}

	private void ShowAllSelect()
	{
		((Control)groupBox1).Enabled = true;
		((Control)groupBox2).Enabled = true;
		((Control)tabControl1).Enabled = true;
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
		((Control)groupBox4).Text = "Vị Trí Flash: " + val.Top + " x " + val.Left;
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
		((Control)label8).Text = "VIP " + VIP;
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
		((Control)label4).Text = accMain;
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

	private void ButtonRunAuto_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		//IL_0089: Unknown result type (might be due to invalid IL or missing references)
		//IL_008f: Invalid comparison between Unknown and I4
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0065: Unknown result type (might be due to invalid IL or missing references)
		//IL_006f: Expected O, but got Unknown
		//IL_009c: Unknown result type (might be due to invalid IL or missing references)
		if ((int)ButtonRunAuto.CheckState == 1)
		{
			((Control)ButtonRunAuto).BackColor = Color.Green;
			((Control)ButtonRunAuto).Text = "Stop";
			((Control)buttonPause).Enabled = true;
			HideAllSelect();
			debugText("start");
			IsStop = false;
			T = new System.Threading.Tasks.Task((Action)([CompilerGenerated] () =>
			{
				//IL_004d: Unknown result type (might be due to invalid IL or missing references)
				//IL_00a8: Unknown result type (might be due to invalid IL or missing references)
				//IL_00ae: Invalid comparison between Unknown and I4
				//IL_0126: Unknown result type (might be due to invalid IL or missing references)
				//IL_012c: Invalid comparison between Unknown and I4
				//IL_016a: Unknown result type (might be due to invalid IL or missing references)
				//IL_0170: Invalid comparison between Unknown and I4
				//IL_01e8: Unknown result type (might be due to invalid IL or missing references)
				//IL_01ee: Invalid comparison between Unknown and I4
				//IL_0218: Unknown result type (might be due to invalid IL or missing references)
				//IL_021e: Invalid comparison between Unknown and I4
				//IL_0248: Unknown result type (might be due to invalid IL or missing references)
				//IL_024e: Invalid comparison between Unknown and I4
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
				if ((int)CheckboxChat.CheckState == 1)
				{
					string[] array = ((Control)textBoxChat).Text.Split('\n', (StringSplitOptions)0);
					Chat(array[lineChat], ((Control)comboBoxChat).Text);
					lineChat++;
					if (lineChat >= Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array))
					{
						lineChat = 0;
					}
					countTimer_chat = 0;
					startTimer();
				}
				if ((int)CheckboxDaPet.CheckState == 1)
				{
					DaPet();
					countTimer_pet = 0;
					NumericUpDown obj = numericUpDownDaPet;
					decimal value = obj.Value;
					obj.Value = value - 1m;
					startTimer();
				}
				if ((int)CheckboxTrong.CheckState == 1)
				{
					Trong();
					countTimer_trong = 0;
					startTimer();
				}
				PressKey("ESC");
				step = 0;
				setupRun();
				if (checkBoxNongTrai.Checked)
				{
					checkKimTien = true;
					CheckVaPhuToiMap(((Control)comboBox3).Text);
					ViTriNongTruong();
				}
				while (!IsStop)
				{
					if ((int)checkBoxHaiThuoc.CheckState == 1)
					{
						HaiThuoc(((Control)comboBox6).Text);
						delay_100ms(5);
					}
					if ((int)checkBoxCauCa.CheckState == 1)
					{
						CauCa(((Control)comboBox5).Text);
						delay_100ms(5);
					}
					if ((int)checkBoxNongTrai.CheckState == 1)
					{
						NongTrai();
					}
					checkChat();
				}
			}));
			T.Start();
		}
		else if ((int)ButtonRunAuto.CheckState == 0)
		{
			((Control)ButtonRunAuto).BackColor = Control.DefaultBackColor;
			((Control)ButtonRunAuto).Text = "Start";
			((Control)buttonPause).Enabled = false;
			ShowAllSelect();
			stopTimer();
			debugText("stop");
			IsStop = true;
		}
	}

	private void button3_MouseUp(object sender, MouseEventArgs e)
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
		HaiThuoc2_X = x2 - x;
		HaiThuoc2_Y = y2 - y;
		((Control)buttonH2).BackColor = Color.Green;
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
		HaiThuoc3_X = x2 - x;
		HaiThuoc3_Y = y2 - y;
		((Control)buttonH3).BackColor = Color.Green;
	}

	private void button5_MouseUp(object sender, MouseEventArgs e)
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
		HaiThuoc4_X = x2 - x;
		HaiThuoc4_Y = y2 - y;
		((Control)buttonH4).BackColor = Color.Green;
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
		NPC1_X = x2 - x;
		NPC1_Y = y2 - y;
		((Control)buttonNPC1).BackColor = Color.Green;
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
		Cau2_X = x2 - x;
		Cau2_Y = y2 - y;
		((Control)buttonC2).BackColor = Color.Green;
		debugText("C2: " + Cau2_X + ", " + Cau2_Y);
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
		NPC2_X = x2 - x;
		NPC2_Y = y2 - y;
		((Control)buttonNPC2).BackColor = Color.Green;
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
		Cau1_X = x2 - x;
		Cau1_Y = y2 - y;
		((Control)buttonC1).BackColor = Color.Green;
		debugText("C1: " + Cau1_X + ", " + Cau1_Y);
	}

	private void button1_MouseUp(object sender, MouseEventArgs e)
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
		NguoiRom_X = x2 - x;
		NguoiRom_Y = y2 - y;
		((Control)buttonRom).BackColor = Color.Green;
		debugText("NR: " + NguoiRom_X + ", " + NguoiRom_Y);
	}

	private void button10_MouseUp(object sender, MouseEventArgs e)
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
		ThuHoach_X = x2 - x;
		ThuHoach_Y = y2 - y;
		((Control)button10).BackColor = Color.Green;
		debugText("TH: " + ThuHoach_X + ", " + ThuHoach_Y);
	}

	private void button2_MouseUp(object sender, MouseEventArgs e)
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
		HaiThuoc1_X = x2 - x;
		HaiThuoc1_Y = y2 - y;
		((Control)buttonH1).BackColor = Color.Green;
	}

	private void HaiTrongCau_Load(object sender, EventArgs e)
	{
		//IL_003f: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c5: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d6: Unknown result type (might be due to invalid IL or missing references)
		//IL_00de: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_013c: Unknown result type (might be due to invalid IL or missing references)
		//IL_016c: Unknown result type (might be due to invalid IL or missing references)
		string nameFlash = Program.AppMain.nameFlash;
		nameUser = Program.AppMain.nameUser;
		((Control)this).Text = "BMx Nông Dân [" + nameFlash + "]";
		autorun = Program.AppMain.autoRun;
		((Form)this).Size = new Size(386, 194);
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
		((Control)label6).Text = "ID: " + processID;
		RECT val = default(RECT);
		val = AutoControl.GetWindowRect(hWnd);
		SetWindowPos(hWnd, 0, val.Left, val.Top, 1066, 724, 2);
		((Control)groupBox4).Text = "Vị Trí Flash: " + val.Top + " x " + val.Left;
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
		((Control)label8).Text = "VIP " + VIP;
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
		((Control)label4).Text = accMain;
		int num2 = (int)ReadMemoryData(processID, myPointer, offset_FPS);
		if (num2 != 0)
		{
			numericUpDownFPS.Value = decimal.op_Implicit(num2);
		}
		else
		{
			debugText("Memory False");
		}
		if (!loadSettingV7())
		{
			try
			{
				loadSetting();
			}
			catch (System.Exception)
			{
				try
				{
					loadSetting_old();
				}
				catch (System.Exception)
				{
				}
			}
		}
		debugText("begin");
		if (!autorun)
		{
			return;
		}
		string h_T_C_job = Program.AppMain.H_T_C_job;
		string text = h_T_C_job;
		if (!(text == "Câu"))
		{
			if (text == "Hái")
			{
				checkBoxCauCa.CheckState = (CheckState)0;
				checkBoxNongTrai.CheckState = (CheckState)0;
				checkBoxHaiThuoc.CheckState = (CheckState)1;
				tabControl1.SelectTab(0);
			}
			else
			{
				checkBoxCauCa.CheckState = (CheckState)0;
				checkBoxNongTrai.CheckState = (CheckState)1;
				checkBoxHaiThuoc.CheckState = (CheckState)0;
				tabControl1.SelectTab(1);
			}
		}
		else
		{
			checkBoxCauCa.CheckState = (CheckState)1;
			checkBoxNongTrai.CheckState = (CheckState)0;
			checkBoxHaiThuoc.CheckState = (CheckState)0;
			tabControl1.SelectTab(0);
		}
		checkBox3.CheckState = (CheckState)1;
		ButtonRunAuto.CheckState = (CheckState)1;
	}

	private void button2_MouseDown(object sender, MouseEventArgs e)
	{
		Cursor.Current = Cursors.Cross;
	}

	private bool loadTheme()
	{
		//IL_010f: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0258: Unknown result type (might be due to invalid IL or missing references)
		//IL_026a: Unknown result type (might be due to invalid IL or missing references)
		//IL_027c: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_00da: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ae: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0308: Unknown result type (might be due to invalid IL or missing references)
		//IL_031a: Unknown result type (might be due to invalid IL or missing references)
		//IL_032c: Unknown result type (might be due to invalid IL or missing references)
		//IL_033e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0350: Unknown result type (might be due to invalid IL or missing references)
		//IL_0362: Unknown result type (might be due to invalid IL or missing references)
		//IL_0374: Unknown result type (might be due to invalid IL or missing references)
		//IL_0386: Unknown result type (might be due to invalid IL or missing references)
		//IL_0398: Unknown result type (might be due to invalid IL or missing references)
		//IL_03aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_03bc: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_03e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_03f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0404: Unknown result type (might be due to invalid IL or missing references)
		//IL_0416: Unknown result type (might be due to invalid IL or missing references)
		//IL_0442: Unknown result type (might be due to invalid IL or missing references)
		//IL_0454: Unknown result type (might be due to invalid IL or missing references)
		//IL_0466: Unknown result type (might be due to invalid IL or missing references)
		//IL_0478: Unknown result type (might be due to invalid IL or missing references)
		//IL_048a: Unknown result type (might be due to invalid IL or missing references)
		//IL_049c: Unknown result type (might be due to invalid IL or missing references)
		//IL_04ae: Unknown result type (might be due to invalid IL or missing references)
		//IL_04c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_04d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_04e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_04f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0508: Unknown result type (might be due to invalid IL or missing references)
		//IL_051a: Unknown result type (might be due to invalid IL or missing references)
		//IL_052c: Unknown result type (might be due to invalid IL or missing references)
		//IL_053e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0550: Unknown result type (might be due to invalid IL or missing references)
		//IL_0562: Unknown result type (might be due to invalid IL or missing references)
		//IL_0574: Unknown result type (might be due to invalid IL or missing references)
		//IL_0586: Unknown result type (might be due to invalid IL or missing references)
		//IL_0598: Unknown result type (might be due to invalid IL or missing references)
		//IL_05aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_05f8: Unknown result type (might be due to invalid IL or missing references)
		//IL_05fd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0607: Expected O, but got Unknown
		//IL_0627: Unknown result type (might be due to invalid IL or missing references)
		//IL_062c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0636: Expected O, but got Unknown
		//IL_0656: Unknown result type (might be due to invalid IL or missing references)
		//IL_065b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0665: Expected O, but got Unknown
		//IL_0685: Unknown result type (might be due to invalid IL or missing references)
		//IL_068a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0694: Expected O, but got Unknown
		//IL_06b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_06b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_06c3: Expected O, but got Unknown
		//IL_06e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_06e8: Unknown result type (might be due to invalid IL or missing references)
		//IL_06f2: Expected O, but got Unknown
		//IL_0712: Unknown result type (might be due to invalid IL or missing references)
		//IL_0717: Unknown result type (might be due to invalid IL or missing references)
		//IL_0721: Expected O, but got Unknown
		//IL_0741: Unknown result type (might be due to invalid IL or missing references)
		//IL_0746: Unknown result type (might be due to invalid IL or missing references)
		//IL_0750: Expected O, but got Unknown
		//IL_0770: Unknown result type (might be due to invalid IL or missing references)
		//IL_0775: Unknown result type (might be due to invalid IL or missing references)
		//IL_077f: Expected O, but got Unknown
		//IL_079f: Unknown result type (might be due to invalid IL or missing references)
		//IL_07a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_07ae: Expected O, but got Unknown
		//IL_07ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_07d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_07dd: Expected O, but got Unknown
		//IL_07fd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0802: Unknown result type (might be due to invalid IL or missing references)
		//IL_080c: Expected O, but got Unknown
		//IL_082c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0831: Unknown result type (might be due to invalid IL or missing references)
		//IL_083b: Expected O, but got Unknown
		//IL_085b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0860: Unknown result type (might be due to invalid IL or missing references)
		//IL_086a: Expected O, but got Unknown
		//IL_088a: Unknown result type (might be due to invalid IL or missing references)
		//IL_088f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0899: Expected O, but got Unknown
		//IL_08b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_08be: Unknown result type (might be due to invalid IL or missing references)
		//IL_08c8: Expected O, but got Unknown
		//IL_08e8: Unknown result type (might be due to invalid IL or missing references)
		//IL_08ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_08f7: Expected O, but got Unknown
		//IL_0917: Unknown result type (might be due to invalid IL or missing references)
		//IL_091c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0926: Expected O, but got Unknown
		//IL_0946: Unknown result type (might be due to invalid IL or missing references)
		//IL_094b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0955: Expected O, but got Unknown
		//IL_0975: Unknown result type (might be due to invalid IL or missing references)
		//IL_097a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0984: Expected O, but got Unknown
		//IL_09a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_09a9: Unknown result type (might be due to invalid IL or missing references)
		//IL_09b3: Expected O, but got Unknown
		//IL_09db: Unknown result type (might be due to invalid IL or missing references)
		//IL_09ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_09ff: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a11: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a23: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a35: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a47: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a59: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a6b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a7d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a8f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0aa1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ab3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ac5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ad7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ae9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0afb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b27: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b39: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b4b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b5d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b6f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b81: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b93: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ba5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bb7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bc9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bdb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bed: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bff: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c11: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c23: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c35: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c47: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c95: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c9a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ca4: Expected O, but got Unknown
		//IL_0cc4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cc9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cd3: Expected O, but got Unknown
		//IL_0cf3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cf8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d02: Expected O, but got Unknown
		//IL_0d22: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d27: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d31: Expected O, but got Unknown
		//IL_0d51: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d56: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d60: Expected O, but got Unknown
		//IL_0d80: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d85: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d8f: Expected O, but got Unknown
		//IL_0daf: Unknown result type (might be due to invalid IL or missing references)
		//IL_0db4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0dbe: Expected O, but got Unknown
		//IL_0dde: Unknown result type (might be due to invalid IL or missing references)
		//IL_0de3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ded: Expected O, but got Unknown
		//IL_0e0d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e12: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e1c: Expected O, but got Unknown
		//IL_0e3c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e41: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e4b: Expected O, but got Unknown
		//IL_0e6b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e70: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e7a: Expected O, but got Unknown
		//IL_0e9a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e9f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ea9: Expected O, but got Unknown
		//IL_0ec9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ece: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ed8: Expected O, but got Unknown
		//IL_0ef8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0efd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f07: Expected O, but got Unknown
		//IL_0f27: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f2c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f36: Expected O, but got Unknown
		//IL_0f56: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f5b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f65: Expected O, but got Unknown
		//IL_0f85: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f8a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f94: Expected O, but got Unknown
		//IL_0fbc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fce: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fe0: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ff2: Unknown result type (might be due to invalid IL or missing references)
		//IL_1004: Unknown result type (might be due to invalid IL or missing references)
		//IL_1016: Unknown result type (might be due to invalid IL or missing references)
		//IL_1028: Unknown result type (might be due to invalid IL or missing references)
		//IL_103a: Unknown result type (might be due to invalid IL or missing references)
		//IL_104c: Unknown result type (might be due to invalid IL or missing references)
		//IL_1078: Unknown result type (might be due to invalid IL or missing references)
		//IL_108a: Unknown result type (might be due to invalid IL or missing references)
		//IL_109c: Unknown result type (might be due to invalid IL or missing references)
		//IL_10ae: Unknown result type (might be due to invalid IL or missing references)
		//IL_10c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_10d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_10e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_10f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_1108: Unknown result type (might be due to invalid IL or missing references)
		//IL_1156: Unknown result type (might be due to invalid IL or missing references)
		//IL_115b: Unknown result type (might be due to invalid IL or missing references)
		//IL_1165: Expected O, but got Unknown
		//IL_1185: Unknown result type (might be due to invalid IL or missing references)
		//IL_118a: Unknown result type (might be due to invalid IL or missing references)
		//IL_1194: Expected O, but got Unknown
		//IL_11b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_11b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_11c3: Expected O, but got Unknown
		//IL_11e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_11e8: Unknown result type (might be due to invalid IL or missing references)
		//IL_11f2: Expected O, but got Unknown
		//IL_1212: Unknown result type (might be due to invalid IL or missing references)
		//IL_1217: Unknown result type (might be due to invalid IL or missing references)
		//IL_1221: Expected O, but got Unknown
		//IL_1241: Unknown result type (might be due to invalid IL or missing references)
		//IL_1246: Unknown result type (might be due to invalid IL or missing references)
		//IL_1250: Expected O, but got Unknown
		//IL_1270: Unknown result type (might be due to invalid IL or missing references)
		//IL_1275: Unknown result type (might be due to invalid IL or missing references)
		//IL_127f: Expected O, but got Unknown
		//IL_129f: Unknown result type (might be due to invalid IL or missing references)
		//IL_12a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_12ae: Expected O, but got Unknown
		//IL_12ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_12d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_12dd: Expected O, but got Unknown
		//IL_01ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_021e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0230: Unknown result type (might be due to invalid IL or missing references)
		//IL_0242: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_01fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0207: Unknown result type (might be due to invalid IL or missing references)
		//IL_0210: Unknown result type (might be due to invalid IL or missing references)
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
					((Control)groupBox1).BackgroundImageLayout = layout;
					((Control)groupBox2).BackgroundImageLayout = layout;
					((Control)groupBox4).BackgroundImageLayout = layout;
				}
				else
				{
					((Control)groupBox1).BackColor = Color.FromArgb(num2);
					((Control)groupBox2).BackColor = Color.FromArgb(num2);
					((Control)groupBox4).BackColor = Color.FromArgb(num2);
				}
				int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
				((Control)label11).BackColor = Color.FromArgb(num2);
				((Control)label9).BackColor = Color.FromArgb(num2);
				((Control)label2).BackColor = Color.FromArgb(num2);
				((Control)label1).BackColor = Color.FromArgb(num2);
				((Control)label6).BackColor = Color.FromArgb(num2);
				((Control)label10).BackColor = Color.FromArgb(num2);
				((Control)label17).BackColor = Color.FromArgb(num2);
				((Control)checkBoxHaiThuoc).BackColor = Color.FromArgb(num2);
				((Control)checkBoxNongTrai).BackColor = Color.FromArgb(num2);
				((Control)checkBoxCauCa).BackColor = Color.FromArgb(num2);
				((Control)checkBoxTele).BackColor = Color.FromArgb(num2);
				((Control)label3).BackColor = Color.FromArgb(num2);
				((Control)label5).BackColor = Color.FromArgb(num2);
				((Control)CheckboxDaPet).BackColor = Color.FromArgb(num2);
				((Control)CheckboxTrong).BackColor = Color.FromArgb(num2);
				((Control)CheckboxChat).BackColor = Color.FromArgb(num2);
				((Control)checkBoxTrongDai).BackColor = Color.FromArgb(num2);
				((Control)checkBoxTrongDacBiet).BackColor = Color.FromArgb(num2);
				((Control)checkBox1).BackColor = Color.FromArgb(num2);
				((Control)checkBox2).BackColor = Color.FromArgb(num2);
				((Control)checkBox3).BackColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
				((Control)label11).ForeColor = Color.FromArgb(num2);
				((Control)label9).ForeColor = Color.FromArgb(num2);
				((Control)label2).ForeColor = Color.FromArgb(num2);
				((Control)label1).ForeColor = Color.FromArgb(num2);
				((Control)label6).ForeColor = Color.FromArgb(num2);
				((Control)label10).ForeColor = Color.FromArgb(num2);
				((Control)label17).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxHaiThuoc).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxNongTrai).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxCauCa).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxTele).ForeColor = Color.FromArgb(num2);
				((Control)label3).ForeColor = Color.FromArgb(num2);
				((Control)label5).ForeColor = Color.FromArgb(num2);
				((Control)CheckboxDaPet).ForeColor = Color.FromArgb(num2);
				((Control)CheckboxTrong).ForeColor = Color.FromArgb(num2);
				((Control)CheckboxChat).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxTrongDai).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxTrongDacBiet).ForeColor = Color.FromArgb(num2);
				((Control)checkBox1).ForeColor = Color.FromArgb(num2);
				((Control)checkBox2).ForeColor = Color.FromArgb(num2);
				((Control)checkBox3).ForeColor = Color.FromArgb(num2);
				object obj = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
				Font val = (Font)((obj is Font) ? obj : null);
				((Control)label11).Font = new Font(val.FontFamily, ((Control)label11).Font.Size, val.Style);
				((Control)label9).Font = new Font(val.FontFamily, ((Control)label9).Font.Size, val.Style);
				((Control)label2).Font = new Font(val.FontFamily, ((Control)label2).Font.Size, val.Style);
				((Control)label1).Font = new Font(val.FontFamily, ((Control)label1).Font.Size, val.Style);
				((Control)label6).Font = new Font(val.FontFamily, ((Control)label6).Font.Size, val.Style);
				((Control)label10).Font = new Font(val.FontFamily, ((Control)label10).Font.Size, val.Style);
				((Control)label17).Font = new Font(val.FontFamily, ((Control)label17).Font.Size, val.Style);
				((Control)checkBoxHaiThuoc).Font = new Font(val.FontFamily, ((Control)checkBoxHaiThuoc).Font.Size, val.Style);
				((Control)checkBoxNongTrai).Font = new Font(val.FontFamily, ((Control)checkBoxNongTrai).Font.Size, val.Style);
				((Control)checkBoxCauCa).Font = new Font(val.FontFamily, ((Control)checkBoxCauCa).Font.Size, val.Style);
				((Control)checkBoxTele).Font = new Font(val.FontFamily, ((Control)checkBoxTele).Font.Size, val.Style);
				((Control)label3).Font = new Font(val.FontFamily, ((Control)label3).Font.Size, val.Style);
				((Control)label5).Font = new Font(val.FontFamily, ((Control)label5).Font.Size, val.Style);
				((Control)CheckboxDaPet).Font = new Font(val.FontFamily, ((Control)CheckboxDaPet).Font.Size, val.Style);
				((Control)CheckboxTrong).Font = new Font(val.FontFamily, ((Control)CheckboxTrong).Font.Size, val.Style);
				((Control)CheckboxChat).Font = new Font(val.FontFamily, ((Control)CheckboxChat).Font.Size, val.Style);
				((Control)checkBoxTrongDai).Font = new Font(val.FontFamily, ((Control)checkBoxTrongDai).Font.Size, val.Style);
				((Control)checkBoxTrongDacBiet).Font = new Font(val.FontFamily, ((Control)checkBoxTrongDacBiet).Font.Size, val.Style);
				((Control)checkBox1).Font = new Font(val.FontFamily, ((Control)checkBox1).Font.Size, val.Style);
				((Control)checkBox2).Font = new Font(val.FontFamily, ((Control)checkBox2).Font.Size, val.Style);
				((Control)checkBox3).Font = new Font(val.FontFamily, ((Control)checkBox3).Font.Size, val.Style);
				int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
				((Control)ButtonRunAuto).BackColor = Color.FromArgb(num2);
				((Control)buttonPause).BackColor = Color.FromArgb(num2);
				((Control)ButtonDebug).BackColor = Color.FromArgb(num2);
				((Control)buttonReset).BackColor = Color.FromArgb(num2);
				((Control)buttonNPC1).BackColor = Color.FromArgb(num2);
				((Control)buttonH1).BackColor = Color.FromArgb(num2);
				((Control)buttonH2).BackColor = Color.FromArgb(num2);
				((Control)buttonNPC2).BackColor = Color.FromArgb(num2);
				((Control)buttonH3).BackColor = Color.FromArgb(num2);
				((Control)buttonH4).BackColor = Color.FromArgb(num2);
				((Control)buttonC1).BackColor = Color.FromArgb(num2);
				((Control)buttonC2).BackColor = Color.FromArgb(num2);
				((Control)buttonRom).BackColor = Color.FromArgb(num2);
				((Control)button10).BackColor = Color.FromArgb(num2);
				((Control)buttonSave).BackColor = Color.FromArgb(num2);
				((Control)button1).BackColor = Color.FromArgb(num2);
				((Control)button2).BackColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
				((Control)ButtonRunAuto).ForeColor = Color.FromArgb(num2);
				((Control)buttonPause).ForeColor = Color.FromArgb(num2);
				((Control)ButtonDebug).ForeColor = Color.FromArgb(num2);
				((Control)buttonReset).ForeColor = Color.FromArgb(num2);
				((Control)buttonNPC1).ForeColor = Color.FromArgb(num2);
				((Control)buttonH1).ForeColor = Color.FromArgb(num2);
				((Control)buttonH2).ForeColor = Color.FromArgb(num2);
				((Control)buttonNPC2).ForeColor = Color.FromArgb(num2);
				((Control)buttonH3).ForeColor = Color.FromArgb(num2);
				((Control)buttonH4).ForeColor = Color.FromArgb(num2);
				((Control)buttonC1).ForeColor = Color.FromArgb(num2);
				((Control)buttonC2).ForeColor = Color.FromArgb(num2);
				((Control)buttonRom).ForeColor = Color.FromArgb(num2);
				((Control)button10).ForeColor = Color.FromArgb(num2);
				((Control)buttonSave).ForeColor = Color.FromArgb(num2);
				((Control)button1).ForeColor = Color.FromArgb(num2);
				((Control)button2).ForeColor = Color.FromArgb(num2);
				object obj2 = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
				val = (Font)((obj2 is Font) ? obj2 : null);
				((Control)ButtonRunAuto).Font = new Font(val.FontFamily, ((Control)ButtonRunAuto).Font.Size, val.Style);
				((Control)buttonPause).Font = new Font(val.FontFamily, ((Control)buttonPause).Font.Size, val.Style);
				((Control)ButtonDebug).Font = new Font(val.FontFamily, ((Control)ButtonDebug).Font.Size, val.Style);
				((Control)buttonReset).Font = new Font(val.FontFamily, ((Control)buttonReset).Font.Size, val.Style);
				((Control)buttonNPC1).Font = new Font(val.FontFamily, ((Control)buttonNPC1).Font.Size, val.Style);
				((Control)buttonH1).Font = new Font(val.FontFamily, ((Control)buttonH1).Font.Size, val.Style);
				((Control)buttonH2).Font = new Font(val.FontFamily, ((Control)buttonH2).Font.Size, val.Style);
				((Control)buttonNPC2).Font = new Font(val.FontFamily, ((Control)buttonNPC2).Font.Size, val.Style);
				((Control)buttonH3).Font = new Font(val.FontFamily, ((Control)buttonH3).Font.Size, val.Style);
				((Control)buttonH4).Font = new Font(val.FontFamily, ((Control)buttonH4).Font.Size, val.Style);
				((Control)buttonC1).Font = new Font(val.FontFamily, ((Control)buttonC1).Font.Size, val.Style);
				((Control)buttonC2).Font = new Font(val.FontFamily, ((Control)buttonC2).Font.Size, val.Style);
				((Control)buttonRom).Font = new Font(val.FontFamily, ((Control)buttonRom).Font.Size, val.Style);
				((Control)button10).Font = new Font(val.FontFamily, ((Control)button10).Font.Size, val.Style);
				((Control)buttonSave).Font = new Font(val.FontFamily, ((Control)buttonSave).Font.Size, val.Style);
				((Control)button1).Font = new Font(val.FontFamily, ((Control)buttonSave).Font.Size, val.Style);
				((Control)button2).Font = new Font(val.FontFamily, ((Control)buttonSave).Font.Size, val.Style);
				int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
				((Control)comboBox1).BackColor = Color.FromArgb(num2);
				((Control)comboBox2).BackColor = Color.FromArgb(num2);
				((Control)comboBox3).BackColor = Color.FromArgb(num2);
				((Control)comboBox4).BackColor = Color.FromArgb(num2);
				((Control)comboBox5).BackColor = Color.FromArgb(num2);
				((Control)comboBoxTrong).BackColor = Color.FromArgb(num2);
				((Control)comboBoxChat).BackColor = Color.FromArgb(num2);
				((Control)textBoxChat).BackColor = Color.FromArgb(num2);
				((Control)textBox2).BackColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
				((Control)comboBox1).ForeColor = Color.FromArgb(num2);
				((Control)comboBox2).ForeColor = Color.FromArgb(num2);
				((Control)comboBox3).ForeColor = Color.FromArgb(num2);
				((Control)comboBox4).ForeColor = Color.FromArgb(num2);
				((Control)comboBox5).ForeColor = Color.FromArgb(num2);
				((Control)comboBoxTrong).ForeColor = Color.FromArgb(num2);
				((Control)comboBoxChat).ForeColor = Color.FromArgb(num2);
				((Control)textBoxChat).ForeColor = Color.FromArgb(num2);
				((Control)textBox2).ForeColor = Color.FromArgb(num2);
				object obj3 = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
				val = (Font)((obj3 is Font) ? obj3 : null);
				((Control)comboBox1).Font = new Font(val.FontFamily, ((Control)comboBox1).Font.Size, val.Style);
				((Control)comboBox2).Font = new Font(val.FontFamily, ((Control)comboBox2).Font.Size, val.Style);
				((Control)comboBox3).Font = new Font(val.FontFamily, ((Control)comboBox3).Font.Size, val.Style);
				((Control)comboBox4).Font = new Font(val.FontFamily, ((Control)comboBox4).Font.Size, val.Style);
				((Control)comboBox5).Font = new Font(val.FontFamily, ((Control)comboBox5).Font.Size, val.Style);
				((Control)comboBoxTrong).Font = new Font(val.FontFamily, ((Control)comboBoxTrong).Font.Size, val.Style);
				((Control)comboBoxChat).Font = new Font(val.FontFamily, ((Control)comboBoxChat).Font.Size, val.Style);
				((Control)textBoxChat).Font = new Font(val.FontFamily, ((Control)textBoxChat).Font.Size, val.Style);
				((Control)textBox2).Font = new Font(val.FontFamily, ((Control)textBox2).Font.Size, val.Style);
				return true;
			}
		}
		catch (System.Exception)
		{
			return false;
		}
		return false;
	}

	private void HaiTrongCau_FormClosed(object sender, FormClosedEventArgs e)
	{
		//IL_000f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0019: Expected O, but got Unknown
		Login login = new Login();
		((Form)login).Closed += (EventHandler)([CompilerGenerated] (object? s, EventArgs args) =>
		{
			((Form)this).Close();
		});
	}

	private void checkBoxQCau_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBoxTrongDacBiet.Checked)
		{
			checkBoxTrongDai.CheckState = (CheckState)0;
			comboBox1.Items.Clear();
			comboBox2.Items.Clear();
			((Control)comboBox1).Text = "Nông Sa\u0309n";
			comboBox1.Items.Add((object)"Loa\u0323i 1");
			comboBox1.Items.Add((object)"Loa\u0323i 2");
			((Control)comboBox2).Text = "Nông Sa\u0309n";
			comboBox2.Items.Add((object)"Loa\u0323i 1");
			comboBox2.Items.Add((object)"Loa\u0323i 2");
			return;
		}
		comboBox1.Items.Clear();
		comboBox2.Items.Clear();
		((Control)comboBox1).Text = "Nông Sa\u0309n";
		comboBox1.Items.Add((object)"Lúa Mạch Cấp 1");
		comboBox1.Items.Add((object)"Lúa Gạo Cấp 1");
		comboBox1.Items.Add((object)"Bắp Cấp 2");
		comboBox1.Items.Add((object)"Khoai Cấp 2");
		comboBox1.Items.Add((object)"Đậu Phộng Cấp 3");
		comboBox1.Items.Add((object)"Đậu Nành Cấp 3");
		comboBox1.Items.Add((object)"Cải Thảo Cấp 4");
		comboBox1.Items.Add((object)"Củ Cải Cấp 4");
		comboBox1.Items.Add((object)"Cacao Cấp 5");
		comboBox1.Items.Add((object)"Cao Lương Cấp 5");
		comboBox1.Items.Add((object)"Mướp Cấp 6");
		comboBox1.Items.Add((object)"Bầu Cấp 6");
		comboBox1.Items.Add((object)"Bông Cải Cấp 7");
		comboBox1.Items.Add((object)"Hoàng Kim Quả Cấp 7");
		((Control)comboBox2).Text = "Nông Sa\u0309n";
		comboBox2.Items.Add((object)"Lúa Mạch Cấp 1");
		comboBox2.Items.Add((object)"Lúa Gạo Cấp 1");
		comboBox2.Items.Add((object)"Bắp Cấp 2");
		comboBox2.Items.Add((object)"Khoai Cấp 2");
		comboBox2.Items.Add((object)"Đậu Phộng Cấp 3");
		comboBox2.Items.Add((object)"Đậu Nành Cấp 3");
		comboBox2.Items.Add((object)"Cải Thảo Cấp 4");
		comboBox2.Items.Add((object)"Củ Cải Cấp 4");
		comboBox2.Items.Add((object)"Cacao Cấp 5");
		comboBox2.Items.Add((object)"Cao Lương Cấp 5");
		comboBox2.Items.Add((object)"Mướp Cấp 6");
		comboBox2.Items.Add((object)"Bầu Cấp 6");
		comboBox2.Items.Add((object)"Bông Cải Cấp 7");
		comboBox2.Items.Add((object)"Hoàng Kim Quả Cấp 7");
	}

	private void textBoxChat_TabStopChanged(object sender, EventArgs e)
	{
		string[] array = ((Control)textBoxChat).Text.Split("\r\n", (StringSplitOptions)0);
		if (array.Length != 0)
		{
			debugText("ClearDebugText");
			debugText("AutoChat:");
			for (int i = 0; i < array.Length; i++)
			{
				debugText("Line " + i + " = " + array[i].Length);
			}
		}
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

	private bool PhuToiMap(string maps, double X = 0.0, double Y = 0.0, bool team = false)
	{
		if (checkIDMap() == ToaDoMap2(maps)[2])
		{
			debugText("Đang ở " + maps);
			if (X != 0.0 && Y != 0.0)
			{
				Tele2(X, Y);
				delay_100ms(5);
			}
			return false;
		}
		string text = checkTenMap();
		debugText(text + " -> ? : 00%");
		GetDataMap();
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
			FindsAndClick(hWnd, pathTruMa + "/Boss_Tat.png", 1, 1, "X");
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
		}
		if (team)
		{
			delay_100ms(2);
			if (FindAndClick_tele2(hWnd, pathKhac + "/Auto_Nhom.png", 1, 1, "Nhóm").HasValue)
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)13);
			}
		}
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
			debugText("ClearDebugText");
			debugText(string.Concat(new string[6]
			{
				text,
				" -> ",
				maps,
				" : ",
				((int)num6).ToString("D2"),
				"%"
			}));
			SendClickOnPosition(hWnd, 495, 406, (EMouseKey)0);
			if (num6 == 100.0)
			{
				break;
			}
			PressKey("OK");
		}
		delay_100ms(10);
		return true;
	}

	private void PhuToiMap2(string maps, double X = 0.0, double Y = 0.0, bool team = false)
	{
		//IL_023b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0240: Unknown result type (might be due to invalid IL or missing references)
		//IL_0251: Unknown result type (might be due to invalid IL or missing references)
		//IL_0256: Unknown result type (might be due to invalid IL or missing references)
		//IL_027e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0283: Unknown result type (might be due to invalid IL or missing references)
		//IL_0294: Unknown result type (might be due to invalid IL or missing references)
		//IL_0299: Unknown result type (might be due to invalid IL or missing references)
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
				if (FindAndClick_tele2(hWnd, pathKhac + "/Auto_Nhom.png", 1, 1, "Nhóm").HasValue && X != 0.0 && Y != 0.0)
				{
					WriteMemoryData(processId, myPointer, offset_ToaDoX, X * 10.0);
					WriteMemoryData(processId, myPointer, offset_ToaDoY, Y * 10.0);
				}
			}
			delay_100ms(2);
			AutoControl.SendKeyBoardPress(hWnd, (VKeys)13);
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
			System.IntPtr intPtr = hWnd;
			Point value = val.Value;
			int num7 = ((Point)(ref value)).X + 200;
			value = val.Value;
			AutoControl.SendClickOnPosition(intPtr, num7, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
			delay_100ms(10);
			System.IntPtr intPtr2 = hWnd;
			value = val.Value;
			int num8 = ((Point)(ref value)).X + 200;
			value = val.Value;
			AutoControl.SendClickOnPosition(intPtr2, num8, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
			delay_100ms(10);
		}
		PressKey("ESC");
	}

	private void PhuToiMap3(string maps, bool team = false)
	{
		if (checkIDMap() == ToaDoMap2(maps)[2])
		{
			debugText("Đang ở " + maps);
			return;
		}
		debugText("Map - 0%");
		GetDataMap();
		GetWindowThreadProcessId(hWnd, out var _);
		int timeDelay = Settings.Default.timeDelay;
		int[] array = ToaDoMap2(maps);
		int num = array[2];
		if (num == checkIDMap() || num == 999)
		{
			array = null;
		}
		if (array == null)
		{
			return;
		}
		int x = array[0];
		int y = array[1];
		int num2 = array[3];
		while (!FindPoint(hWnd, pathMaps + "/map2.png").HasValue)
		{
			PressKey("M");
			delay_100ms(2);
		}
		FindsAndClick(hWnd, pathTruMa + "/Boss_Tat.png", 1, 1, "X");
		int num3 = vitriMapTrongMang();
		int num4 = 1;
		if (num3 > 39 && num3 < 48)
		{
			num4 = 2;
		}
		if (num2 != num4)
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
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)13);
			}
		}
		while (true)
		{
			double num5 = CheckLoadMap();
			debugText("ClearDebugText");
			debugText("Map - " + ((int)num5).ToString("D2") + "%");
			SendClickOnPosition(hWnd, 495, 406, (EMouseKey)0);
			if (num5 == 100.0)
			{
				break;
			}
			PressKey("OK");
			delay_100ms(3);
		}
		delay_100ms(10);
	}

	private void CheckVaPhuToiMap()
	{
		//IL_00a5: Unknown result type (might be due to invalid IL or missing references)
		//IL_00aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_00b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ba: Unknown result type (might be due to invalid IL or missing references)
		int setupStepX = Settings.Default.setupStepX;
		int setupStepY = Settings.Default.setupStepY;
		double num = (double)Settings.Default.setupDelay / 1000.0;
		while (checkIDMap() != 57 && checkIDMap() != 58)
		{
			PressKey("ESC");
			PressKey("Z");
			delay_100ms(5);
			Point? val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
			if (val.HasValue)
			{
				System.IntPtr intPtr = hWnd;
				Point value = val.Value;
				int x = ((Point)(ref value)).X;
				value = val.Value;
				AutoControl.SendDragAndDropOnPosition(intPtr, x, ((Point)(ref value)).Y - 30, 84, 26, setupStepX, setupStepY, num);
			}
			delay_100ms(5);
			debugText("Hoàn Tất Setup");
			GetDataMap();
			PressKey("ESC");
			PressKey("Z");
			delay_100ms(5);
			SendClickOnPosition(hWnd, 218, 106, (EMouseKey)0);
			delay_100ms(5);
			SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
			delay_100ms(5);
			SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
			delay_100ms(5);
			SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
			delay_100ms(5);
			SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
			delay_100ms(5);
			SendClickOnPosition(hWnd, 696, 246, (EMouseKey)0);
			delay_100ms(5);
			SendClickOnPosition(hWnd, 696, 246, (EMouseKey)0);
			delay_100ms(8);
			SendClickOnPosition(hWnd, 500, 138, (EMouseKey)0);
			delay_100ms(8);
			SendClickOnPosition(hWnd, 487, 138, (EMouseKey)0);
			delay_100ms(20);
			while (true)
			{
				double num2 = CheckLoadMap();
				debugText("ClearDebugText");
				debugText("Map - " + ((int)num2).ToString("D2") + "%");
				if (num2 != 100.0)
				{
					PressKey("Enter");
					delay_100ms(10);
					continue;
				}
				break;
			}
		}
	}

	private void CheckVaPhuToiMap(string map)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0006: Unknown result type (might be due to invalid IL or missing references)
		//IL_0280: Unknown result type (might be due to invalid IL or missing references)
		//IL_0285: Unknown result type (might be due to invalid IL or missing references)
		//IL_0298: Unknown result type (might be due to invalid IL or missing references)
		//IL_029d: Unknown result type (might be due to invalid IL or missing references)
		//IL_024b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0250: Unknown result type (might be due to invalid IL or missing references)
		//IL_0263: Unknown result type (might be due to invalid IL or missing references)
		//IL_0268: Unknown result type (might be due to invalid IL or missing references)
		Point empty = Point.Empty;
		while (true)
		{
			Xuong();
			Xuong();
			Xuong();
			int num = 57;
			bool flag = true;
			if (map == "Nông Trường 2")
			{
				num = 58;
				flag = false;
			}
			if (checkIDMap() == num)
			{
				break;
			}
			PhuToiMap("Điêu Linh Thôn", 160.0, 30.0);
			SendClickOnPosition(hWnd, 560, 395, (EMouseKey)0);
			delay_100ms(10);
			SendClickOnPosition(hWnd, 930, 509, (EMouseKey)0);
			delay_100ms(10);
			SendClickOnPosition(hWnd, 832, 453, (EMouseKey)0);
			delay_100ms(10);
			Point? val = FindPoint(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png");
			Point value;
			if (!val.HasValue)
			{
				PhuToiMap("Điêu Linh Thôn", 160.0, 30.0);
				SendClickOnPosition(hWnd, 560, 395, (EMouseKey)0);
				delay_100ms(10);
				SendClickOnPosition(hWnd, 930, 509, (EMouseKey)0);
				delay_100ms(10);
				SendClickOnPosition(hWnd, 832, 453, (EMouseKey)0);
				delay_100ms(10);
				Point? val2 = FindPoint(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png");
				if (!val2.HasValue)
				{
					PhuToiMap("Xuất Vân Thôn");
					SendClickOnPosition(hWnd, 636, 443, (EMouseKey)0);
					delay_100ms(10);
					SendClickOnPosition(hWnd, 636, 443, (EMouseKey)0);
					delay_100ms(10);
					SendClickOnPosition(hWnd, 636, 443, (EMouseKey)0);
					delay_100ms(10);
					continue;
				}
				value = val2.Value;
				((Point)(ref empty)).X = ((Point)(ref value)).X;
				value = val2.Value;
				((Point)(ref empty)).Y = ((Point)(ref value)).Y;
			}
			else
			{
				value = val.Value;
				((Point)(ref empty)).X = ((Point)(ref value)).X;
				value = val.Value;
				((Point)(ref empty)).Y = ((Point)(ref value)).Y;
			}
			GetDataMap();
			if (!flag)
			{
				SendClickOnPosition(hWnd, ((Point)(ref empty)).X, ((Point)(ref empty)).Y + 390 - 482, (EMouseKey)0);
			}
			else
			{
				SendClickOnPosition(hWnd, ((Point)(ref empty)).X, ((Point)(ref empty)).Y + 366 - 482, (EMouseKey)0);
			}
			delay_100ms(10);
			while (true)
			{
				double num2 = CheckLoadMap();
				debugText("ClearDebugText");
				debugText("Map - " + ((int)num2).ToString("D2") + "%");
				if (num2 != 100.0)
				{
					PressKey("Enter");
					delay_100ms(10);
					continue;
				}
				break;
			}
		}
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

	private void button1_Click(object sender, EventArgs e)
	{
		//IL_0023: Unknown result type (might be due to invalid IL or missing references)
		if (hWnd == System.IntPtr.Zero)
		{
			MessageBox.Show("Không Tìm Thấy Flash", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)48);
			return;
		}
		GetWindowThreadProcessId(hWnd, out var processId);
		try
		{
			numericUpDownX.Value = decimal.op_Implicit((int)ReadMemoryData(processId, myPointer, offset_ToaDoX) / 10);
			numericUpDownY.Value = decimal.op_Implicit((int)ReadMemoryData(processId, myPointer, offset_ToaDoY) / 10);
		}
		catch (System.Exception)
		{
		}
	}

	private void button2_Click(object sender, EventArgs e)
	{
		//IL_0008: Unknown result type (might be due to invalid IL or missing references)
		//IL_0012: Expected O, but got Unknown
		System.Threading.Tasks.Task task = new System.Threading.Tasks.Task((Action)([CompilerGenerated] () =>
		{
			Tele3((int)numericUpDownX.Value, (int)numericUpDownY.Value);
		}));
		task.Start();
	}

	private void numericUpDownX_ValueChanged(object sender, EventArgs e)
	{
		CapNhatViTriXY();
	}

	private void numericUpDownY_ValueChanged(object sender, EventArgs e)
	{
		CapNhatViTriXY();
	}

	private void Tele2(double X, double Y, bool BayCheck = true)
	{
		//IL_013a: Unknown result type (might be due to invalid IL or missing references)
		//IL_013f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0150: Unknown result type (might be due to invalid IL or missing references)
		//IL_0155: Unknown result type (might be due to invalid IL or missing references)
		//IL_017d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0182: Unknown result type (might be due to invalid IL or missing references)
		//IL_0193: Unknown result type (might be due to invalid IL or missing references)
		//IL_0198: Unknown result type (might be due to invalid IL or missing references)
		X *= 10.0;
		Y *= 10.0;
		PressKey("ESC");
		if (BayCheck)
		{
			while (!Bay())
			{
			}
			delay_100ms(10);
		}
		delay2_100ms(2);
		checkvaoBoss();
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
		int num = 0;
		int num2 = 0;
		Point? val;
		while (true)
		{
			PressKey("P");
			val = FindPoint(hWnd, pathTacVu + "/ChienDau.png");
			if (val.HasValue)
			{
				break;
			}
			PressKey("ESC");
		}
		System.IntPtr intPtr = hWnd;
		Point value = val.Value;
		int num3 = ((Point)(ref value)).X + 200;
		value = val.Value;
		AutoControl.SendClickOnPosition(intPtr, num3, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
		delay_100ms(10);
		System.IntPtr intPtr2 = hWnd;
		value = val.Value;
		int num4 = ((Point)(ref value)).X + 200;
		value = val.Value;
		AutoControl.SendClickOnPosition(intPtr2, num4, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
		delay_100ms(10);
		PressKey("ESC");
		AutoControl.SendClickOnPosition(hWnd, 620, 330, (EMouseKey)0, 1);
		delay_100ms(10);
	}

	private bool DiCauHai(int cap, bool loai)
	{
		Bay();
		Bay();
		Bay();
		SendClickOnPosition(hWnd, 239, 656, (EMouseKey)0);
		delay_100ms(3);
		SendClickOnPosition(hWnd, 373, 660, (EMouseKey)0);
		delay_100ms(3);
		if (map_luu != "null" && NVLuu != 999999 && vitriLuu1 != 999999 && vitriLuu2 != 999999 && vitriLuu3 != 999999)
		{
			debugText("Tới Vị Trí Cũ");
			if (checkViTriCauHai(map_luu, NVLuu / 1000, NVLuu % 1000, vitriLuu1 / 1000, vitriLuu1 % 1000, vitriLuu2 / 1000, vitriLuu2 % 1000, vitriLuu3 / 1000, vitriLuu3 % 1000))
			{
				goto IL_4a56;
			}
		}
		if (loai)
		{
			switch (cap)
			{
			case 1:
				if (checkViTriCauHai("Đông Xuất Vân", 201, 22, 557, 324, 559, 304) || checkViTriCauHai("Đông Xuất Vân", 165, 56, 641, 410, 642, 391) || checkViTriCauHai("Đông Xuất Vân", 83, 60, 398, 393, 398, 372) || checkViTriCauHai("Đông Xuất Vân", 155, 81, 354, 398, 350, 382) || checkViTriCauHai("Đông Xuất Vân", 220, 93, 793, 485, 794, 452) || checkViTriCauHai("Lê Dương Bắc", 10, 99, 222, 430, 222, 416) || checkViTriCauHai("Lê Dương Bắc", 43, 175, 588, 487, 587, 474) || checkViTriCauHai("Lê Dương Bắc", 43, 175, 304, 555, 303, 542) || checkViTriCauHai("Lê Dương Bắc", 20, 176, 73, 418, 89, 415, 75, 405))
				{
					break;
				}
				debugText("Không Câu Được Cá");
				return false;
			case 2:
				if (checkViTriCauHai("Thiên Lục Châu", 143, 31, 546, 497, 546, 497, 566, 501) || checkViTriCauHai("Thiên Lục Châu", 143, 31, 353, 220, 354, 247, 368, 235) || checkViTriCauHai("Thiên Lục Châu", 208, 89, 340, 374, 359, 373, 345, 362) || checkViTriCauHai("Thiên Lục Châu", 218, 108, 711, 371, 710, 356, 690, 373))
				{
					break;
				}
				debugText("Không Câu Được Cá");
				return false;
			case 3:
				if (checkViTriCauHai("Quang Bình Nguyên", 68, 48, 708, 389, 689, 388, 709, 378) || checkViTriCauHai("Quang Bình Nguyên", 160, 111, 721, 323, 719, 303, 705, 321) || checkViTriCauHai("Quang Bình Nguyên", 67, 117, 384, 327, 402, 328, 385, 313))
				{
					break;
				}
				debugText("Không Câu Được Cá");
				return false;
			case 4:
				if (checkViTriCauHai("Lê Dương Thôn", 31, 25, 168, 295, 186, 293, 168, 286) || checkViTriCauHai("Lê Dương Thôn", 31, 25, 393, 409, 379, 410, 393, 400) || checkViTriCauHai("Lê Dương Thôn", 109, 49, 707, 309, 689, 308, 706, 299) || checkViTriCauHai("Lê Dương Thôn", 185, 100, 839, 444, 857, 437, 835, 428))
				{
					break;
				}
				debugText("Không Câu Được Cá");
				return false;
			case 5:
				if (checkViTriCauHai("Vân Lộc Sơn", 222, 51, 433, 469, 434, 453, 453, 461) || checkViTriCauHai("Vân Lộc Sơn", 142, 156, 407, 441, 423, 440, 409, 430) || checkViTriCauHai("Vân Lộc Sơn", 142, 156, 683, 429, 666, 427, 681, 416) || checkViTriCauHai("Vân Lộc Sơn", 148, 116, 528, 449, 547, 443, 532, 431))
				{
					break;
				}
				debugText("Không Câu Được Cá");
				return false;
			case 6:
				if (checkViTriCauHai("Tuyết Lâm", 126, 114, 475, 461, 472, 445, 488, 454) || checkViTriCauHai("Tuyết Lâm", 126, 151, 405, 452, 402, 440, 419, 451) || checkViTriCauHai("Tuyết Lâm", 169, 124, 660, 416, 641, 412, 661, 405))
				{
					break;
				}
				debugText("Không Câu Được Cá");
				return false;
			case 7:
				if (checkViTriCauHai("Linh Lan", 80, 154, 363, 300, 363, 281, 378, 290) || checkViTriCauHai("Linh Lan", 80, 154, 651, 378, 637, 371, 651, 363) || checkViTriCauHai("Linh Lan", 105, 162, 661, 420, 647, 416, 663, 408) || checkViTriCauHai("Linh Lan", 105, 162, 398, 297, 400, 283, 413, 292))
				{
					break;
				}
				debugText("Không Câu Được Cá");
				return false;
			default:
				debugText("Không Đi Câu Cá");
				return true;
			}
		}
		else
		{
			switch (cap)
			{
			case 1:
				if (checkViTriCauHai("Đông Xuất Vân", 235, 62, 834, 355) || checkViTriCauHai("Đông Xuất Vân", 86, 150, 331, 557) || checkViTriCauHai("Đông Xuất Vân", 90, 48, 668, 248) || checkViTriCauHai("Đông Xuất Vân", 232, 139, 829, 373) || checkViTriCauHai("Đông Xuất Vân", 221, 23, 809, 402) || checkViTriCauHai("Đông Xuất Vân", 48, 86, 437, 435) || checkViTriCauHai("Đông Xuất Vân", 165, 91, 688, 348) || checkViTriCauHai("Đông Xuất Vân", 46, 117, 350, 362) || checkViTriCauHai("Đông Xuất Vân", 146, 37, 408, 294) || checkViTriCauHai("Đông Xuất Vân", 71, 18, 620, 298) || checkViTriCauHai("Đông Xuất Vân", 60, 120, 586, 491) || checkViTriCauHai("Đông Xuất Vân", 48, 86, 629, 338) || checkViTriCauHai("Lê Dương Bắc", 141, 35, 385, 278) || checkViTriCauHai("Lê Dương Bắc", 224, 22, 467, 389) || checkViTriCauHai("Lê Dương Bắc", 144, 185, 443, 398) || checkViTriCauHai("Lê Dương Bắc", 102, 148, 389, 362) || checkViTriCauHai("Lê Dương Bắc", 157, 58, 392, 363) || checkViTriCauHai("Lê Dương Bắc", 265, 166, 814, 475) || checkViTriCauHai("Lê Dương Bắc", 228, 167, 404, 351) || checkViTriCauHai("Lê Dương Bắc", 47, 79, 451, 438) || checkViTriCauHai("Lê Dương Bắc", 75, 93, 630, 433) || checkViTriCauHai("Lê Dương Bắc", 256, 159, 488, 375) || checkViTriCauHai("Lê Dương Bắc", 282, 53, 752, 296) || checkViTriCauHai("Lê Dương Bắc", 167, 188, 649, 440) || checkViTriCauHai("Lê Dương Bắc", 215, 47, 422, 473) || checkViTriCauHai("Lê Dương Bắc", 157, 58, 381, 370) || checkViTriCauHai("Lê Dương Bắc", 157, 58, 540, 448) || checkViTriCauHai("Lê Dương Bắc", 300, 124, 850, 311))
				{
					break;
				}
				debugText("Không Hái Được Thuốc");
				return false;
			case 2:
				if (checkViTriCauHai("Lê Dương Đảo", 238, 22, 572, 361, 639, 374, 609, 353) || checkViTriCauHai("Lê Dương Đảo", 152, 35, 552, 477, 486, 473, 524, 461) || checkViTriCauHai("Lê Dương Đảo", 152, 35, 542, 450, 513, 428, 473, 448) || checkViTriCauHai("Lê Dương Đảo", 296, 48, 1010, 471, 946, 456, 984, 449) || checkViTriCauHai("Lê Dương Đảo", 75, 50, 588, 509, 516, 504, 557, 488) || checkViTriCauHai("Lê Dương Đảo", 167, 63, 406, 351, 454, 357, 442, 344) || checkViTriCauHai("Lê Dương Đảo", 295, 69, 914, 308, 847, 300, 888, 285) || checkViTriCauHai("Lê Dương Đảo", 117, 73, 393, 263, 327, 252, 369, 235) || checkViTriCauHai("Lê Dương Đảo", 39, 74, 552, 419, 486, 412, 524, 399) || checkViTriCauHai("Lê Dương Đảo", 39, 74, 558, 435, 497, 441, 530, 417) || checkViTriCauHai("Lê Dương Đảo", 39, 74, 630, 484, 560, 483, 599, 461) || checkViTriCauHai("Lê Dương Đảo", 211, 89, 726, 343, 665, 332, 702, 319) || checkViTriCauHai("Lê Dương Đảo", 248, 95, 433, 388, 370, 370, 404, 366) || checkViTriCauHai("Lê Dương Đảo", 274, 104, 632, 364, 698, 373, 669, 350) || checkViTriCauHai("Lê Dương Đảo", 226, 125, 407, 401, 335, 391, 376, 379) || checkViTriCauHai("Lê Dương Đảo", 226, 125, 429, 357, 369, 349, 402, 338) || checkViTriCauHai("Lê Dương Đảo", 148, 126, 655, 316, 717, 334, 692, 314) || checkViTriCauHai("Lê Dương Đảo", 40, 134, 571, 351, 643, 358, 615, 337) || checkViTriCauHai("Lê Dương Đảo", 160, 143, 674, 448, 602, 434, 643, 427) || checkViTriCauHai("Lê Dương Đảo", 227, 144, 395, 362, 327, 351, 367, 344) || checkViTriCauHai("Lê Dương Đảo", 118, 160, 644, 461, 575, 452, 611, 440) || checkViTriCauHai("Lê Dương Đảo", 56, 176, 617, 287, 573, 294, 606, 271) || checkViTriCauHai("Lê Dương Đảo", 114, 183, 700, 565, 632, 554, 668, 546) || checkViTriCauHai("Lê Dương Đảo", 114, 183, 601, 435, 666, 442, 643, 422) || checkViTriCauHai("Lê Dương Đảo", 114, 183, 661, 420, 726, 430, 699, 403) || checkViTriCauHai("Lê Dương Đảo", 114, 184, 656, 475, 656, 475, 656, 475) || checkViTriCauHai("Lê Dương Đảo", 114, 184, 676, 531, 676, 531, 676, 531) || checkViTriCauHai("Kỵ Bình Nguyên", 50, 21, 511, 344, 553, 328, 576, 353) || checkViTriCauHai("Kỵ Bình Nguyên", 181, 23, 415, 338, 488, 344, 454, 323) || checkViTriCauHai("Kỵ Bình Nguyên", 3, 51, 100, 302, 76, 280, 76, 280) || checkViTriCauHai("Kỵ Bình Nguyên", 230, 70, 556, 379, 556, 379, 556, 379) || checkViTriCauHai("Kỵ Bình Nguyên", 288, 71, 743, 308, 743, 308, 743, 308) || checkViTriCauHai("Kỵ Bình Nguyên", 90, 79, 357, 230, 422, 236, 397, 209) || checkViTriCauHai("Kỵ Bình Nguyên", 56, 88, 644, 300, 644, 300, 644, 300) || checkViTriCauHai("Kỵ Bình Nguyên", 134, 119, 357, 471, 424, 478, 394, 456) || checkViTriCauHai("Kỵ Bình Nguyên", 6, 119, 195, 374, 131, 366, 171, 351) || checkViTriCauHai("Kỵ Bình Nguyên", 219, 125, 388, 223, 429, 206, 453, 231) || checkViTriCauHai("Kỵ Bình Nguyên", 169, 127, 383, 387, 424, 374, 452, 398) || checkViTriCauHai("Kỵ Bình Nguyên", 97, 138, 408, 336, 446, 314, 470, 338) || checkViTriCauHai("Kỵ Bình Nguyên", 97, 138, 403, 356, 444, 342, 469, 367) || checkViTriCauHai("Kỵ Bình Nguyên", 171, 140, 323, 373, 362, 354, 385, 373) || checkViTriCauHai("Kỵ Bình Nguyên", 259, 148, 517, 434, 517, 434, 517, 434) || checkViTriCauHai("Kỵ Bình Nguyên", 176, 158, 355, 345, 397, 326, 426, 348) || checkViTriCauHai("Kỵ Bình Nguyên", 290, 180, 824, 532, 891, 538, 859, 522) || checkViTriCauHai("Kỵ Bình Nguyên", 290, 180, 819, 494, 886, 502, 858, 480) || checkViTriCauHai("Kỵ Bình Nguyên", 182, 182, 411, 536, 476, 546, 449, 525) || checkViTriCauHai("Kỵ Bình Nguyên", 95, 182, 319, 519, 388, 527, 358, 501) || checkViTriCauHai("Kỵ Bình Nguyên", 26, 185, 362, 623, 428, 627, 398, 603))
				{
					break;
				}
				debugText("Không Hái Được Thuốc");
				return false;
			case 3:
				if (checkViTriCauHai("Anh Vũ Cảnh", 80, 50, 504, 460, 441, 441, 480, 445) || checkViTriCauHai("Anh Vũ Cảnh", 80, 50, 630, 478, 564, 468, 603, 464) || checkViTriCauHai("Anh Vũ Cảnh", 80, 50, 648, 401, 590, 379, 624, 379) || checkViTriCauHai("Anh Vũ Cảnh", 80, 50, 660, 420, 610, 430, 633, 400) || checkViTriCauHai("Anh Vũ Cảnh", 132, 56, 596, 482, 572, 492, 571, 456) || checkViTriCauHai("Anh Vũ Cảnh", 15, 57, 74, 409, 19, 395, 57, 391) || checkViTriCauHai("Anh Vũ Cảnh", 106, 82, 536, 559, 470, 542, 511, 542) || checkViTriCauHai("Anh Vũ Cảnh", 106, 82, 432, 406, 368, 391, 407, 390) || checkViTriCauHai("Anh Vũ Cảnh", 106, 82, 463, 534, 398, 517, 420, 534) || checkViTriCauHai("Anh Vũ Cảnh", 213, 89, 739, 523, 675, 511, 715, 504) || checkViTriCauHai("Anh Vũ Cảnh", 213, 89, 345, 408, 281, 400, 322, 390) || checkViTriCauHai("Anh Vũ Cảnh", 213, 89, 367, 437, 304, 424, 341, 416) || checkViTriCauHai("Anh Vũ Cảnh", 213, 89, 696, 522, 634, 507, 676, 504) || checkViTriCauHai("Anh Vũ Cảnh", 296, 90, 869, 466, 813, 455, 848, 449) || checkViTriCauHai("Anh Vũ Cảnh", 52, 114, 671, 207, 604, 195, 644, 187) || checkViTriCauHai("Anh Vũ Cảnh", 24, 117, 96, 278, 33, 260, 72, 261) || checkViTriCauHai("Anh Vũ Cảnh", 24, 117, 209, 194, 161, 204, 136, 187) || checkViTriCauHai("Anh Vũ Cảnh", 296, 119, 926, 506, 865, 492, 902, 493) || checkViTriCauHai("Anh Vũ Cảnh", 295, 121, 932, 480, 865, 466, 904, 464) || checkViTriCauHai("Anh Vũ Cảnh", 295, 121, 923, 589, 859, 572, 899, 570) || checkViTriCauHai("Anh Vũ Cảnh", 74, 124, 781, 253, 717, 242, 755, 234) || checkViTriCauHai("Anh Vũ Cảnh", 131, 155, 733, 347, 666, 333, 708, 327) || checkViTriCauHai("Anh Vũ Cảnh", 211, 167, 392, 294, 333, 277, 369, 276) || checkViTriCauHai("Anh Vũ Cảnh", 180, 170, 706, 282, 642, 269, 680, 264) || checkViTriCauHai("Trầm Thụy Lâm", 235, 48, 649, 445, 581, 433, 619, 429) || checkViTriCauHai("Trầm Thụy Lâm", 235, 48, 680, 421, 625, 411, 655, 408) || checkViTriCauHai("Trầm Thụy Lâm", 19, 48, 52, 278, 23, 292, 28, 263) || checkViTriCauHai("Trầm Thụy Lâm", 59, 50, 678, 456, 613, 442, 652, 445) || checkViTriCauHai("Trầm Thụy Lâm", 59, 50, 676, 485, 608, 466, 645, 466) || checkViTriCauHai("Trầm Thụy Lâm", 154, 76, 402, 404, 342, 383, 368, 385) || checkViTriCauHai("Trầm Thụy Lâm", 154, 76, 439, 441, 376, 434, 415, 426) || checkViTriCauHai("Trầm Thụy Lâm", 176, 80, 763, 422, 698, 415, 735, 407) || checkViTriCauHai("Trầm Thụy Lâm", 176, 80, 709, 380, 649, 376, 686, 370) || checkViTriCauHai("Trầm Thụy Lâm", 75, 90, 791, 276, 727, 263, 762, 257) || checkViTriCauHai("Trầm Thụy Lâm", 160, 104, 390, 326, 329, 311, 363, 310) || checkViTriCauHai("Trầm Thụy Lâm", 257, 125, 469, 438, 406, 422, 446, 419) || checkViTriCauHai("Trầm Thụy Lâm", 31, 130, 517, 342, 452, 333, 484, 334) || checkViTriCauHai("Trầm Thụy Lâm", 31, 130, 542, 373, 483, 364, 514, 355) || checkViTriCauHai("Trầm Thụy Lâm", 31, 130, 524, 330, 476, 323, 510, 319) || checkViTriCauHai("Trầm Thụy Lâm", 31, 130, 610, 436, 541, 423, 585, 421) || checkViTriCauHai("Trầm Thụy Lâm", 276, 131, 644, 398, 595, 393, 620, 403) || checkViTriCauHai("Trầm Thụy Lâm", 120, 150, 393, 379, 327, 370, 367, 362) || checkViTriCauHai("Trầm Thụy Lâm", 169, 151, 766, 356, 697, 340, 738, 341) || checkViTriCauHai("Trầm Thụy Lâm", 290, 158, 757, 326, 691, 310, 731, 309) || checkViTriCauHai("Trầm Thụy Lâm", 200, 160, 466, 480, 403, 468, 442, 461) || checkViTriCauHai("Trầm Thụy Lâm", 250, 166, 735, 250, 673, 236, 710, 233) || checkViTriCauHai("Trầm Thụy Lâm", 22, 168, 405, 418, 339, 404, 382, 397) || checkViTriCauHai("Trầm Thụy Lâm", 90, 179, 722, 402, 650, 392, 702, 387) || checkViTriCauHai("Trầm Thụy Lâm", 90, 179, 361, 521, 426, 537, 399, 523) || checkViTriCauHai("Trầm Thụy Lâm", 90, 179, 321, 442, 251, 428, 291, 422) || checkViTriCauHai("Trầm Thụy Lâm", 90, 179, 747, 364, 689, 347, 726, 344) || checkViTriCauHai("Trầm Thụy Lâm", 295, 200, 1027, 548, 963, 537, 1005, 530))
				{
					break;
				}
				debugText("Không Hái Được Thuốc");
				return false;
			case 4:
				if (checkViTriCauHai("Lê Dương Thôn", 34, 43, 491, 445, 432, 431, 465, 428) || checkViTriCauHai("Lê Dương Thôn", 82, 53, 407, 424, 347, 413, 389, 409) || checkViTriCauHai("Lê Dương Thôn", 82, 53, 409, 383, 345, 371, 380, 366) || checkViTriCauHai("Lê Dương Thôn", 190, 70, 815, 511, 752, 491, 791, 495) || checkViTriCauHai("Lê Dương Thôn", 190, 70, 880, 402, 828, 393, 863, 383) || checkViTriCauHai("Lê Dương Thôn", 190, 70, 869, 366, 809, 350, 844, 347) || checkViTriCauHai("Lê Dương Thôn", 120, 81, 391, 379, 332, 369, 367, 364) || checkViTriCauHai("Lê Dương Thôn", 158, 126, 740, 509, 682, 498, 718, 494) || checkViTriCauHai("Lê Dương Thôn", 32, 126, 174, 437, 113, 429, 151, 423) || checkViTriCauHai("Lê Dương Thôn", 32, 126, 350, 167, 290, 156, 328, 153) || checkViTriCauHai("Lê Dương Thôn", 32, 126, 478, 537, 412, 521, 452, 517) || checkViTriCauHai("Lê Dương Thôn", 32, 126, 164, 372, 101, 367, 141, 359) || checkViTriCauHai("Lê Dương Thôn", 32, 126, 327, 203, 262, 186, 300, 187) || checkViTriCauHai("Lê Dương Thôn", 32, 126, 506, 466, 437, 448, 473, 447) || checkViTriCauHai("Lê Dương Thôn", 158, 126, 459, 442, 400, 434, 435, 427) || checkViTriCauHai("Lê Dương Thôn", 99, 134, 372, 300, 314, 284, 350, 282) || checkViTriCauHai("Lê Dương Thôn", 99, 134, 372, 325, 308, 313, 348, 309) || checkViTriCauHai("Lê Dương Thôn", 99, 134, 651, 444, 590, 441, 628, 439) || checkViTriCauHai("Lê Dương Thôn", 99, 134, 690, 507, 626, 490, 663, 491) || checkViTriCauHai("Lê Dương Thôn", 99, 134, 687, 232, 629, 226, 666, 206) || checkViTriCauHai("Lê Dương Thôn", 22, 158, 420, 594, 366, 575, 407, 571) || checkViTriCauHai("Lê Dương Thôn", 150, 164, 786, 522, 724, 517, 765, 507) || checkViTriCauHai("Tháp Khắc Nguyên", 52, 27, 711, 330, 452, 428, 492, 439) || checkViTriCauHai("Tháp Khắc Nguyên", 52, 27, 702, 307, 405, 386, 443, 385) || checkViTriCauHai("Tháp Khắc Nguyên", 159, 48, 345, 442, 279, 417, 318, 412) || checkViTriCauHai("Tháp Khắc Nguyên", 159, 48, 727, 452, 573, 449, 613, 438) || checkViTriCauHai("Tháp Khắc Nguyên", 159, 48, 330, 453, 64, 349, 101, 346) || checkViTriCauHai("Tháp Khắc Nguyên", 159, 48, 373, 502, 698, 262, 732, 254) || checkViTriCauHai("Tháp Khắc Nguyên", 272, 58, 636, 456, 726, 513, 760, 519) || checkViTriCauHai("Tháp Khắc Nguyên", 76, 63, 517, 447, 695, 509, 717, 504) || checkViTriCauHai("Tháp Khắc Nguyên", 224, 63, 403, 336, 686, 314, 720, 311) || checkViTriCauHai("Tháp Khắc Nguyên", 224, 63, 635, 296, 341, 326, 379, 321) || checkViTriCauHai("Tháp Khắc Nguyên", 224, 63, 334, 338, 649, 317, 687, 314) || checkViTriCauHai("Tháp Khắc Nguyên", 153, 79, 632, 454, 667, 443, 704, 442) || checkViTriCauHai("Tháp Khắc Nguyên", 190, 95, 464, 334, 164, 575, 204, 570) || checkViTriCauHai("Tháp Khắc Nguyên", 270, 105, 557, 377, 569, 289, 601, 280) || checkViTriCauHai("Tháp Khắc Nguyên", 127, 115, 462, 402, 495, 367, 533, 369) || checkViTriCauHai("Tháp Khắc Nguyên", 109, 122, 420, 162, 491, 359, 490, 317) || checkViTriCauHai("Tháp Khắc Nguyên", 288, 126, 741, 274, 568, 443, 608, 439) || checkViTriCauHai("Tháp Khắc Nguyên", 288, 126, 801, 306, 639, 295, 676, 286) || checkViTriCauHai("Tháp Khắc Nguyên", 187, 140, 672, 168, 606, 153, 648, 154) || checkViTriCauHai("Tháp Khắc Nguyên", 187, 140, 664, 191, 596, 177, 633, 173) || checkViTriCauHai("Tháp Khắc Nguyên", 50, 144, 746, 331, 273, 438, 309, 432) || checkViTriCauHai("Tháp Khắc Nguyên", 30, 147, 124, 361, 356, 154, 394, 142) || checkViTriCauHai("Tháp Khắc Nguyên", 164, 183, 780, 528, 741, 299, 778, 293) || checkViTriCauHai("Tháp Khắc Nguyên", 164, 183, 737, 518, 276, 319, 314, 319) || checkViTriCauHai("Tháp Khắc Nguyên", 4, 191, 226, 589, 305, 493, 346, 480) || checkViTriCauHai("Tháp Khắc Nguyên", 101, 194, 423, 623, 360, 611, 402, 612))
				{
					break;
				}
				debugText("Không Hái Được Thuốc");
				return false;
			case 5:
				if (checkViTriCauHai("Cổ Đạo", 34, 39, 511, 349, 562, 527, 594, 523) || checkViTriCauHai("Cổ Đạo", 272, 45, 910, 465, 570, 575, 605, 578) || checkViTriCauHai("Cổ Đạo", 139, 49, 697, 378, 497, 325, 534, 327) || checkViTriCauHai("Cổ Đạo", 297, 67, 902, 443, 358, 274, 397, 277) || checkViTriCauHai("Cổ Đạo", 219, 99, 393, 417, 387, 373, 425, 371) || checkViTriCauHai("Cổ Đạo", 167, 120, 416, 290, 626, 560, 659, 559) || checkViTriCauHai("Cổ Đạo", 38, 122, 560, 343, 328, 405, 370, 401) || checkViTriCauHai("Cổ Đạo", 38, 122, 571, 380, 464, 610, 455, 640) || checkViTriCauHai("Cổ Đạo", 157, 157, 436, 344, 448, 334, 485, 354) || checkViTriCauHai("Cổ Đạo", 170, 162, 450, 388, 836, 430, 880, 428) || checkViTriCauHai("Cổ Đạo", 192, 181, 683, 577, 503, 373, 546, 355) || checkViTriCauHai("Cổ Đạo", 267, 186, 620, 541, 632, 363, 665, 356) || checkViTriCauHai("Cổ Đạo", 40, 187, 627, 590, 851, 451, 885, 452) || checkViTriCauHai("Cổ Đạo", 40, 187, 481, 621, 381, 338, 411, 333) || checkViTriCauHai("Ngọc Phong Lâm", 141, 28, 374, 338, 311, 322, 350, 329) || checkViTriCauHai("Ngọc Phong Lâm", 141, 28, 394, 303, 336, 293, 370, 285) || checkViTriCauHai("Ngọc Phong Lâm", 66, 43, 418, 397, 359, 388, 392, 385) || checkViTriCauHai("Ngọc Phong Lâm", 66, 43, 402, 424, 343, 412, 379, 414) || checkViTriCauHai("Ngọc Phong Lâm", 213, 58, 554, 309, 497, 296, 532, 288) || checkViTriCauHai("Ngọc Phong Lâm", 213, 58, 776, 207, 715, 195, 749, 188) || checkViTriCauHai("Ngọc Phong Lâm", 213, 58, 747, 170, 686, 156, 720, 158) || checkViTriCauHai("Ngọc Phong Lâm", 213, 58, 568, 343, 510, 330, 550, 328) || checkViTriCauHai("Ngọc Phong Lâm", 18, 61, 145, 447, 97, 439, 125, 436) || checkViTriCauHai("Ngọc Phong Lâm", 18, 61, 238, 445, 174, 439, 206, 458) || checkViTriCauHai("Ngọc Phong Lâm", 124, 86, 523, 514, 463, 505, 500, 501) || checkViTriCauHai("Ngọc Phong Lâm", 33, 111, 192, 303, 134, 294, 169, 287) || checkViTriCauHai("Ngọc Phong Lâm", 106, 130, 713, 470, 654, 452, 693, 454) || checkViTriCauHai("Ngọc Phong Lâm", 173, 136, 604, 600, 543, 584, 580, 590) || checkViTriCauHai("Ngọc Phong Lâm", 217, 141, 862, 601, 803, 582, 841, 588) || checkViTriCauHai("Ngọc Phong Lâm", 217, 141, 814, 549, 843, 542, 829, 574))
				{
					break;
				}
				debugText("Không Hái Được Thuốc");
				return false;
			case 6:
				if (checkViTriCauHai("Băng Tuyết Nguyên", 115, 42, 731, 343, 668, 324, 705, 322) || checkViTriCauHai("Băng Tuyết Nguyên", 286, 53, 812, 387, 749, 377, 786, 366) || checkViTriCauHai("Băng Tuyết Nguyên", 286, 53, 848, 340, 782, 335, 825, 322) || checkViTriCauHai("Băng Tuyết Nguyên", 103, 64, 356, 402, 393, 423, 398, 389) || checkViTriCauHai("Băng Tuyết Nguyên", 182, 97, 404, 415, 334, 413, 377, 395) || checkViTriCauHai("Băng Tuyết Nguyên", 213, 102, 715, 389, 690, 375, 647, 385) || checkViTriCauHai("Băng Tuyết Nguyên", 1, 111, 73, 292, 16, 286, 46, 307) || checkViTriCauHai("Băng Tuyết Nguyên", 1, 111, 199, 432, 132, 420, 172, 411) || checkViTriCauHai("Băng Tuyết Nguyên", 1, 111, 200, 469, 138, 451, 176, 448) || checkViTriCauHai("Băng Tuyết Nguyên", 293, 149, 905, 449, 841, 436, 875, 432) || checkViTriCauHai("Băng Tuyết Nguyên", 293, 149, 860, 442, 803, 426, 841, 420) || checkViTriCauHai("Băng Tuyết Nguyên", 1, 150, 76, 353, 46, 365, 53, 329) || checkViTriCauHai("Băng Tuyết Nguyên", 92, 151, 550, 157, 518, 170, 490, 155) || checkViTriCauHai("Băng Tuyết Nguyên", 92, 151, 513, 149, 513, 149, 513, 149) || checkViTriCauHai("Băng Tuyết Nguyên", 92, 151, 345, 320, 283, 312, 319, 298) || checkViTriCauHai("Băng Tuyết Nguyên", 37, 178, 314, 372, 251, 356, 288, 351) || checkViTriCauHai("Băng Tuyết Nguyên", 295, 179, 851, 454, 819, 422, 855, 415) || checkViTriCauHai("Băng Tuyết Nguyên", 153, 180, 431, 384, 368, 366, 408, 362) || checkViTriCauHai("Băng Tuyết Nguyên", 118, 186, 431, 545, 360, 534, 406, 524) || checkViTriCauHai("Băng Tuyết Nguyên", 176, 194, 718, 565, 657, 555, 695, 548) || checkViTriCauHai("Băng Tuyết Nguyên", 176, 194, 723, 592, 660, 574, 698, 571) || checkViTriCauHai("Băng Tuyết Nguyên", 245, 199, 465, 652, 470, 620, 457, 634) || checkViTriCauHai("Quân Cổ Đạo", 216, 23, 961, 413, 941, 397, 963, 388) || checkViTriCauHai("Quân Cổ Đạo", 153, 35, 726, 317, 662, 311, 699, 297) || checkViTriCauHai("Quân Cổ Đạo", 12, 36, 219, 279, 164, 259, 201, 262) || checkViTriCauHai("Quân Cổ Đạo", 96, 38, 756, 319, 733, 310, 735, 297) || checkViTriCauHai("Quân Cổ Đạo", 218, 58, 933, 437, 872, 429, 908, 422) || checkViTriCauHai("Quân Cổ Đạo", 134, 70, 683, 455, 624, 444, 659, 439) || checkViTriCauHai("Quân Cổ Đạo", 218, 78, 966, 437, 912, 420, 953, 421) || checkViTriCauHai("Quân Cổ Đạo", 30, 90, 136, 348, 75, 331, 112, 325) || checkViTriCauHai("Quân Cổ Đạo", 63, 91, 428, 283, 370, 268, 403, 267) || checkViTriCauHai("Quân Cổ Đạo", 63, 91, 425, 309, 372, 299, 409, 293) || checkViTriCauHai("Quân Cổ Đạo", 180, 110, 711, 535, 652, 525, 690, 516) || checkViTriCauHai("Quân Cổ Đạo", 142, 116, 441, 308, 385, 299, 420, 284) || checkViTriCauHai("Quân Cổ Đạo", 142, 116, 426, 347, 361, 336, 399, 328) || checkViTriCauHai("Quân Cổ Đạo", 112, 142, 600, 574, 535, 565, 572, 555) || checkViTriCauHai("Quân Cổ Đạo", 7, 150, 220, 445, 157, 431, 195, 428) || checkViTriCauHai("Quân Cổ Đạo", 108, 170, 474, 681, 459, 663, 479, 650))
				{
					break;
				}
				debugText("Không Hái Được Thuốc");
				return false;
			case 7:
				if (checkViTriCauHai("Kỳ Thạch Địa", 170, 74, 515, 435, 450, 429, 487, 415) || checkViTriCauHai("Kỳ Thạch Địa", 195, 42, 678, 340, 614, 330, 653, 326) || checkViTriCauHai("Kỳ Thạch Địa", 130, 26, 738, 291, 672, 282, 709, 272) || checkViTriCauHai("Kỳ Thạch Địa", 247, 66, 942, 342, 877, 330, 914, 323) || checkViTriCauHai("Kỳ Thạch Địa", 110, 180, 497, 491, 427, 479, 469, 476) || checkViTriCauHai("Kỳ Thạch Địa", 23, 132, 300, 468, 233, 453, 267, 452) || checkViTriCauHai("Kỳ Thạch Địa", 76, 10, 499, 252, 431, 241, 473, 235) || checkViTriCauHai("Kỳ Thạch Địa", 246, 80, 939, 470, 872, 463, 912, 452) || checkViTriCauHai("Kỳ Thạch Địa", 30, 46, 232, 321, 168, 309, 208, 304) || checkViTriCauHai("Kỳ Thạch Địa", 173, 124, 667, 321, 607, 303, 643, 300) || checkViTriCauHai("Tuyết Lâm", 55, 20, 713, 263, 648, 256, 681, 246) || checkViTriCauHai("Tuyết Lâm", 55, 20, 675, 290, 604, 282, 646, 269) || checkViTriCauHai("Tuyết Lâm", 258, 21, 725, 467, 658, 461, 698, 448) || checkViTriCauHai("Tuyết Lâm", 139, 37, 452, 396, 423, 373, 428, 377) || checkViTriCauHai("Tuyết Lâm", 4, 49, 248, 379, 187, 378, 223, 362) || checkViTriCauHai("Tuyết Lâm", 4, 49, 234, 345, 167, 351, 199, 323) || checkViTriCauHai("Tuyết Lâm", 15, 56, 331, 299, 270, 289, 306, 282) || checkViTriCauHai("Tuyết Lâm", 90, 69, 754, 348, 685, 345, 730, 327) || checkViTriCauHai("Tuyết Lâm", 41, 91, 539, 461, 468, 457, 484, 471) || checkViTriCauHai("Tuyết Lâm", 41, 91, 568, 443, 501, 424, 540, 424) || checkViTriCauHai("Tuyết Lâm", 212, 93, 663, 298, 597, 290, 639, 275) || checkViTriCauHai("Tuyết Lâm", 264, 104, 704, 485, 640, 482, 678, 465) || checkViTriCauHai("Tuyết Lâm", 177, 109, 704, 395, 638, 386, 677, 378) || checkViTriCauHai("Tuyết Lâm", 97, 133, 465, 364, 398, 359, 438, 344) || checkViTriCauHai("Tuyết Lâm", 97, 133, 365, 303, 297, 299, 342, 286) || checkViTriCauHai("Tuyết Lâm", 97, 133, 445, 335, 382, 331, 427, 323) || checkViTriCauHai("Tuyết Lâm", 97, 133, 319, 343, 253, 336, 297, 326) || checkViTriCauHai("Tuyết Lâm", 185, 146, 651, 441, 588, 435, 624, 423) || checkViTriCauHai("Tuyết Lâm", 52, 149, 708, 362, 768, 366, 742, 350) || checkViTriCauHai("Tuyết Lâm", 60, 188, 767, 523, 702, 522, 739, 511) || checkViTriCauHai("Tuyết Lâm", 252, 194, 842, 567, 776, 562, 814, 547) || checkViTriCauHai("Tuyết Lâm", 252, 194, 766, 591, 699, 578, 729, 564) || checkViTriCauHai("Tuyết Lâm", 269, 194, 825, 561, 793, 527, 830, 525) || checkViTriCauHai("Tuyết Lâm", 154, 202, 612, 638, 554, 626, 580, 623))
				{
					break;
				}
				debugText("Không Hái Được Thuốc");
				return false;
			default:
				debugText("Không Đi Hái Thuốc");
				return true;
			}
		}
		goto IL_4a56;
		IL_4a56:
		if (loai)
		{
			debugText("Đang câu cá cấp " + cap);
			return true;
		}
		debugText("Đang hái thuốc cấp " + cap);
		return true;
	}

	private bool checkViTriCauHai(string Map, int ViTriCauX, int ViTriCauY, int ViTriCaX1 = 0, int ViTriCaY1 = 0, int ViTriCaX2 = 0, int ViTriCaY2 = 0, int ViTriCaX3 = 0, int ViTriCaY3 = 0)
	{
		//IL_0257: Unknown result type (might be due to invalid IL or missing references)
		//IL_025c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0262: Unknown result type (might be due to invalid IL or missing references)
		//IL_0267: Unknown result type (might be due to invalid IL or missing references)
		if (map_luu != "null" && NVLuu != 999999 && vitriLuu1 != 999999 && vitriLuu2 != 999999 && vitriLuu3 != 999999)
		{
			xoaViTri();
			debugText("Đã Xóa Vị Trí Lưu");
		}
		checkvaoBoss();
		delayThongTin();
		PhuToiMap(Map);
		delay_100ms(5);
		checkvaoBoss();
		delayThongTin();
		Xuong();
		Xuong();
		Xuong();
		delay_100ms(3);
		PressKey("ESC");
		PressKey("ESC");
		delay_100ms(3);
		int num = (int)ReadMemoryData(processID, myPointer, offset_ToaDoX) / 10;
		int num2 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoY) / 10;
		if (num != ViTriCauX && num2 != ViTriCauY)
		{
			Tele2(ViTriCauX, ViTriCauY, BayCheck: false);
			debugText("ClearDebugText");
			debugText(ViTriCauX + "-" + ViTriCauY);
			delay_100ms(5);
		}
		if (ViTriCaX1 != 0)
		{
			debugText("Check~1");
			SendClickOnPosition(hWnd, ViTriCaX1, ViTriCaY1, (EMouseKey)0);
			delay_100ms(3);
		}
		checkvaoBoss();
		delayThongTin();
		if (FindPoint(hWnd, pathKhac + "/HTC_DauX.png").HasValue)
		{
			luuViTri(Map, ViTriCauX, ViTriCauY, ViTriCaX1, ViTriCaY1, ViTriCaX2, ViTriCaY2, ViTriCaX3, ViTriCaY3);
			return true;
		}
		PressKey("ESC");
		PressKey("ESC");
		for (int i = 1; i < 5; i++)
		{
			List<Point> val = FindPoints(hWnd, pathKhac + "/HTC_C" + i + ".png");
			if (val == null)
			{
				continue;
			}
			Enumerator<Point> enumerator = val.GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					Point current = enumerator.Current;
					SendClickOnPosition(hWnd, ((Point)(ref current)).X, ((Point)(ref current)).Y, (EMouseKey)0);
					delay_100ms(3);
					if (FindPoint(hWnd, pathKhac + "/HTC_DauX.png").HasValue)
					{
						luuViTri(Map, ViTriCauX, ViTriCauY, ViTriCaX1, ViTriCaY1, ViTriCaX2, ViTriCaY2, ViTriCaX3, ViTriCaY3);
						return true;
					}
				}
			}
			finally
			{
				((System.IDisposable)enumerator/*cast due to .constrained prefix*/).Dispose();
			}
		}
		for (int j = 0; j < 1; j++)
		{
			if (ViTriCaX1 != 0)
			{
				debugText("Check~2");
				SendClickOnPosition(hWnd, ViTriCaX1, ViTriCaY1, (EMouseKey)0);
				delay_100ms(3);
			}
			checkvaoBoss();
			delayThongTin();
			if (FindPoint(hWnd, pathKhac + "/HTC_DauX.png").HasValue)
			{
				luuViTri(Map, ViTriCauX, ViTriCauY, ViTriCaX1, ViTriCaY1, ViTriCaX2, ViTriCaY2, ViTriCaX3, ViTriCaY3);
				return true;
			}
			PressKey("ESC");
			PressKey("ESC");
			if (ViTriCaX2 != 0)
			{
				debugText("Check~3");
				SendClickOnPosition(hWnd, ViTriCaX2, ViTriCaY2, (EMouseKey)0);
				delay_100ms(3);
			}
			checkvaoBoss();
			delayThongTin();
			if (FindPoint(hWnd, pathKhac + "/HTC_DauX.png").HasValue)
			{
				luuViTri(Map, ViTriCauX, ViTriCauY, ViTriCaX1, ViTriCaY1, ViTriCaX2, ViTriCaY2, ViTriCaX3, ViTriCaY3);
				return true;
			}
			PressKey("ESC");
			PressKey("ESC");
			if (ViTriCaX3 != 0)
			{
				debugText("Check~4");
				SendClickOnPosition(hWnd, ViTriCaX3, ViTriCaY3, (EMouseKey)0);
				delay_100ms(3);
			}
			checkvaoBoss();
			delayThongTin();
			if (FindPoint(hWnd, pathKhac + "/HTC_DauX.png").HasValue)
			{
				luuViTri(Map, ViTriCauX, ViTriCauY, ViTriCaX1, ViTriCaY1, ViTriCaX2, ViTriCaY2, ViTriCaX3, ViTriCaY3);
				return true;
			}
		}
		return false;
	}

	private bool checkvaoBoss()
	{
		while (true)
		{
			delay_100ms(10);
			if (FindPoint(hWnd, pathKhac + "/checkTrTr.png").HasValue)
			{
				break;
			}
			FindAndClick(hWnd, pathBangHoi + "/Auto.png", 2, 2, "Auto");
		}
		return true;
	}

	private void delayThongTin()
	{
		SendClickUpOnPosition(hWnd, 947, 627, (EMouseKey)0);
		delay_100ms(3);
		SendClickUpOnPosition(hWnd, 915, 631, (EMouseKey)0);
		delay_100ms(3);
	}

	private void luuViTri(string maps, int nvX, int nvY, int X1, int Y1, int X2, int Y2, int X3, int Y3)
	{
		map_luu = maps;
		NVLuu = nvX * 1000 + nvY;
		vitriLuu1 = X1 * 1000 + Y1;
		vitriLuu2 = X2 * 1000 + Y2;
		vitriLuu3 = X3 * 1000 + Y3;
		debugText(string.Concat(new string[10]
		{
			"Lưu :",
			map_luu,
			" - ",
			NVLuu.ToString(),
			" - ",
			vitriLuu1.ToString(),
			" - ",
			vitriLuu2.ToString(),
			" - ",
			vitriLuu3.ToString()
		}));
	}

	private void xoaViTri()
	{
		map_luu = "null";
		NVLuu = 999999;
		vitriLuu1 = 999999;
		vitriLuu2 = 999999;
		vitriLuu3 = 999999;
		debugText("Đã Xóa");
	}

	private void comboBox6_SelectedIndexChanged(object sender, EventArgs e)
	{
		xoaViTri();
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
		//IL_01fc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0206: Expected O, but got Unknown
		//IL_0207: Unknown result type (might be due to invalid IL or missing references)
		//IL_0211: Expected O, but got Unknown
		//IL_0212: Unknown result type (might be due to invalid IL or missing references)
		//IL_021c: Expected O, but got Unknown
		//IL_021d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0227: Expected O, but got Unknown
		//IL_0228: Unknown result type (might be due to invalid IL or missing references)
		//IL_0232: Expected O, but got Unknown
		//IL_0233: Unknown result type (might be due to invalid IL or missing references)
		//IL_023d: Expected O, but got Unknown
		//IL_023e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0248: Expected O, but got Unknown
		//IL_0249: Unknown result type (might be due to invalid IL or missing references)
		//IL_0253: Expected O, but got Unknown
		//IL_0254: Unknown result type (might be due to invalid IL or missing references)
		//IL_025e: Expected O, but got Unknown
		//IL_025f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0269: Expected O, but got Unknown
		//IL_026a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0274: Expected O, but got Unknown
		//IL_0275: Unknown result type (might be due to invalid IL or missing references)
		//IL_027f: Expected O, but got Unknown
		//IL_0280: Unknown result type (might be due to invalid IL or missing references)
		//IL_028a: Expected O, but got Unknown
		//IL_028b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0295: Expected O, but got Unknown
		//IL_0296: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a0: Expected O, but got Unknown
		//IL_02a1: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ab: Expected O, but got Unknown
		//IL_02ac: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b6: Expected O, but got Unknown
		//IL_0366: Unknown result type (might be due to invalid IL or missing references)
		//IL_03b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0402: Unknown result type (might be due to invalid IL or missing references)
		//IL_040c: Expected O, but got Unknown
		//IL_0417: Unknown result type (might be due to invalid IL or missing references)
		//IL_043d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0486: Unknown result type (might be due to invalid IL or missing references)
		//IL_0490: Expected O, but got Unknown
		//IL_04a1: Unknown result type (might be due to invalid IL or missing references)
		//IL_04c7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0501: Unknown result type (might be due to invalid IL or missing references)
		//IL_0527: Unknown result type (might be due to invalid IL or missing references)
		//IL_056b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0575: Expected O, but got Unknown
		//IL_0637: Unknown result type (might be due to invalid IL or missing references)
		//IL_0660: Unknown result type (might be due to invalid IL or missing references)
		//IL_06ae: Unknown result type (might be due to invalid IL or missing references)
		//IL_06d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0725: Unknown result type (might be due to invalid IL or missing references)
		//IL_074b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0782: Unknown result type (might be due to invalid IL or missing references)
		//IL_078c: Expected O, but got Unknown
		//IL_0797: Unknown result type (might be due to invalid IL or missing references)
		//IL_07dc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0830: Unknown result type (might be due to invalid IL or missing references)
		//IL_083a: Expected O, but got Unknown
		//IL_0845: Unknown result type (might be due to invalid IL or missing references)
		//IL_086b: Unknown result type (might be due to invalid IL or missing references)
		//IL_08ac: Unknown result type (might be due to invalid IL or missing references)
		//IL_08d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0909: Unknown result type (might be due to invalid IL or missing references)
		//IL_092f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0972: Unknown result type (might be due to invalid IL or missing references)
		//IL_097c: Expected O, but got Unknown
		//IL_0993: Unknown result type (might be due to invalid IL or missing references)
		//IL_09b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_09fa: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a20: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a64: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a6e: Expected O, but got Unknown
		//IL_0a96: Unknown result type (might be due to invalid IL or missing references)
		//IL_0abc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b00: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b0a: Expected O, but got Unknown
		//IL_0b21: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b47: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b99: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ba3: Expected O, but got Unknown
		//IL_0bb9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bdf: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c23: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c2d: Expected O, but got Unknown
		//IL_0c44: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c6a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cae: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cb8: Expected O, but got Unknown
		//IL_0cd2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cf8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d3c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d46: Expected O, but got Unknown
		//IL_0d54: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d7a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0dbe: Unknown result type (might be due to invalid IL or missing references)
		//IL_0dc8: Expected O, but got Unknown
		//IL_0dd6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0de0: Expected O, but got Unknown
		//IL_0deb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e11: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e55: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e5f: Expected O, but got Unknown
		//IL_0e6d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e77: Expected O, but got Unknown
		//IL_0e82: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ea8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0eec: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ef6: Expected O, but got Unknown
		//IL_0f04: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f0e: Expected O, but got Unknown
		//IL_0f19: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f3f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f83: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f8d: Expected O, but got Unknown
		//IL_0f9b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fa5: Expected O, but got Unknown
		//IL_0fb0: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fd6: Unknown result type (might be due to invalid IL or missing references)
		//IL_101a: Unknown result type (might be due to invalid IL or missing references)
		//IL_1024: Expected O, but got Unknown
		//IL_1032: Unknown result type (might be due to invalid IL or missing references)
		//IL_103c: Expected O, but got Unknown
		//IL_10e1: Unknown result type (might be due to invalid IL or missing references)
		//IL_110a: Unknown result type (might be due to invalid IL or missing references)
		//IL_1141: Unknown result type (might be due to invalid IL or missing references)
		//IL_1167: Unknown result type (might be due to invalid IL or missing references)
		//IL_11ab: Unknown result type (might be due to invalid IL or missing references)
		//IL_11b5: Expected O, but got Unknown
		//IL_11c3: Unknown result type (might be due to invalid IL or missing references)
		//IL_11cd: Expected O, but got Unknown
		//IL_12ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_131b: Unknown result type (might be due to invalid IL or missing references)
		//IL_139a: Unknown result type (might be due to invalid IL or missing references)
		//IL_13ac: Unknown result type (might be due to invalid IL or missing references)
		//IL_13d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_1416: Unknown result type (might be due to invalid IL or missing references)
		//IL_143c: Unknown result type (might be due to invalid IL or missing references)
		//IL_1478: Unknown result type (might be due to invalid IL or missing references)
		//IL_1482: Expected O, but got Unknown
		//IL_1490: Unknown result type (might be due to invalid IL or missing references)
		//IL_14d5: Unknown result type (might be due to invalid IL or missing references)
		//IL_1520: Unknown result type (might be due to invalid IL or missing references)
		//IL_1546: Unknown result type (might be due to invalid IL or missing references)
		//IL_158a: Unknown result type (might be due to invalid IL or missing references)
		//IL_1594: Expected O, but got Unknown
		//IL_15af: Unknown result type (might be due to invalid IL or missing references)
		//IL_15d5: Unknown result type (might be due to invalid IL or missing references)
		//IL_167e: Unknown result type (might be due to invalid IL or missing references)
		//IL_16a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_16e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_170a: Unknown result type (might be due to invalid IL or missing references)
		//IL_174e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1758: Expected O, but got Unknown
		//IL_176b: Unknown result type (might be due to invalid IL or missing references)
		//IL_1775: Expected O, but got Unknown
		//IL_1780: Unknown result type (might be due to invalid IL or missing references)
		//IL_17c5: Unknown result type (might be due to invalid IL or missing references)
		//IL_17ff: Unknown result type (might be due to invalid IL or missing references)
		//IL_1816: Unknown result type (might be due to invalid IL or missing references)
		//IL_186d: Unknown result type (might be due to invalid IL or missing references)
		//IL_18a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_18ae: Expected O, but got Unknown
		//IL_18c5: Unknown result type (might be due to invalid IL or missing references)
		//IL_18eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_192f: Unknown result type (might be due to invalid IL or missing references)
		//IL_1939: Expected O, but got Unknown
		//IL_1951: Unknown result type (might be due to invalid IL or missing references)
		//IL_1977: Unknown result type (might be due to invalid IL or missing references)
		//IL_19b3: Unknown result type (might be due to invalid IL or missing references)
		//IL_19bd: Expected O, but got Unknown
		//IL_19c8: Unknown result type (might be due to invalid IL or missing references)
		//IL_1a31: Unknown result type (might be due to invalid IL or missing references)
		//IL_1afc: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b25: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b69: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b8f: Unknown result type (might be due to invalid IL or missing references)
		//IL_1bd3: Unknown result type (might be due to invalid IL or missing references)
		//IL_1bdd: Expected O, but got Unknown
		//IL_1bf5: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c1b: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c52: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c78: Unknown result type (might be due to invalid IL or missing references)
		//IL_1cbc: Unknown result type (might be due to invalid IL or missing references)
		//IL_1cc6: Expected O, but got Unknown
		//IL_1cd9: Unknown result type (might be due to invalid IL or missing references)
		//IL_1ce3: Expected O, but got Unknown
		//IL_1cee: Unknown result type (might be due to invalid IL or missing references)
		//IL_1d33: Unknown result type (might be due to invalid IL or missing references)
		//IL_1d75: Unknown result type (might be due to invalid IL or missing references)
		//IL_1d7f: Expected O, but got Unknown
		//IL_1d92: Unknown result type (might be due to invalid IL or missing references)
		//IL_1d9c: Expected O, but got Unknown
		//IL_1daa: Unknown result type (might be due to invalid IL or missing references)
		//IL_1def: Unknown result type (might be due to invalid IL or missing references)
		//IL_1e31: Unknown result type (might be due to invalid IL or missing references)
		//IL_1e3b: Expected O, but got Unknown
		//IL_1e53: Unknown result type (might be due to invalid IL or missing references)
		//IL_1e79: Unknown result type (might be due to invalid IL or missing references)
		//IL_1f14: Unknown result type (might be due to invalid IL or missing references)
		//IL_1f3a: Unknown result type (might be due to invalid IL or missing references)
		//IL_1fef: Unknown result type (might be due to invalid IL or missing references)
		//IL_2015: Unknown result type (might be due to invalid IL or missing references)
		//IL_2080: Unknown result type (might be due to invalid IL or missing references)
		//IL_20a6: Unknown result type (might be due to invalid IL or missing references)
		//IL_20e7: Unknown result type (might be due to invalid IL or missing references)
		//IL_210d: Unknown result type (might be due to invalid IL or missing references)
		//IL_2151: Unknown result type (might be due to invalid IL or missing references)
		//IL_215b: Expected O, but got Unknown
		//IL_2173: Unknown result type (might be due to invalid IL or missing references)
		//IL_2199: Unknown result type (might be due to invalid IL or missing references)
		//IL_21ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_2213: Unknown result type (might be due to invalid IL or missing references)
		//IL_2254: Unknown result type (might be due to invalid IL or missing references)
		//IL_227a: Unknown result type (might be due to invalid IL or missing references)
		//IL_22be: Unknown result type (might be due to invalid IL or missing references)
		//IL_22c8: Expected O, but got Unknown
		//IL_22d6: Unknown result type (might be due to invalid IL or missing references)
		//IL_22e0: Expected O, but got Unknown
		//IL_22eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_2311: Unknown result type (might be due to invalid IL or missing references)
		//IL_2355: Unknown result type (might be due to invalid IL or missing references)
		//IL_235f: Expected O, but got Unknown
		//IL_236d: Unknown result type (might be due to invalid IL or missing references)
		//IL_2377: Expected O, but got Unknown
		//IL_2385: Unknown result type (might be due to invalid IL or missing references)
		//IL_23ab: Unknown result type (might be due to invalid IL or missing references)
		//IL_23ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_23f9: Expected O, but got Unknown
		//IL_2407: Unknown result type (might be due to invalid IL or missing references)
		//IL_2411: Expected O, but got Unknown
		//IL_24b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_24df: Unknown result type (might be due to invalid IL or missing references)
		//IL_2516: Unknown result type (might be due to invalid IL or missing references)
		//IL_253c: Unknown result type (might be due to invalid IL or missing references)
		//IL_2580: Unknown result type (might be due to invalid IL or missing references)
		//IL_258a: Expected O, but got Unknown
		//IL_2598: Unknown result type (might be due to invalid IL or missing references)
		//IL_25a2: Expected O, but got Unknown
		//IL_2611: Unknown result type (might be due to invalid IL or missing references)
		//IL_2637: Unknown result type (might be due to invalid IL or missing references)
		//IL_266e: Unknown result type (might be due to invalid IL or missing references)
		//IL_2678: Expected O, but got Unknown
		//IL_26b3: Unknown result type (might be due to invalid IL or missing references)
		//IL_26ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_2850: Unknown result type (might be due to invalid IL or missing references)
		//IL_2873: Unknown result type (might be due to invalid IL or missing references)
		//IL_288e: Unknown result type (might be due to invalid IL or missing references)
		//IL_28ee: Unknown result type (might be due to invalid IL or missing references)
		//IL_2917: Unknown result type (might be due to invalid IL or missing references)
		//IL_2975: Unknown result type (might be due to invalid IL or missing references)
		//IL_299e: Unknown result type (might be due to invalid IL or missing references)
		//IL_2adb: Unknown result type (might be due to invalid IL or missing references)
		//IL_2afe: Unknown result type (might be due to invalid IL or missing references)
		//IL_2b19: Unknown result type (might be due to invalid IL or missing references)
		//IL_2b66: Unknown result type (might be due to invalid IL or missing references)
		//IL_2b8c: Unknown result type (might be due to invalid IL or missing references)
		//IL_2bce: Unknown result type (might be due to invalid IL or missing references)
		//IL_2bec: Unknown result type (might be due to invalid IL or missing references)
		//IL_2ce3: Unknown result type (might be due to invalid IL or missing references)
		//IL_2ced: Expected O, but got Unknown
		//IL_2cf6: Unknown result type (might be due to invalid IL or missing references)
		//IL_2d00: Expected O, but got Unknown
		textBox2 = new TextBox();
		label8 = new Label();
		label17 = new Label();
		buttonSave = new Button();
		groupBox4 = new GroupBox();
		label10 = new Label();
		pictureBox1 = new PictureBox();
		numericUpDownFPS = new NumericUpDown();
		label4 = new Label();
		label1 = new Label();
		buttonReset = new Button();
		label6 = new Label();
		buttonPause = new Button();
		ButtonDebug = new CheckBox();
		ButtonRunAuto = new CheckBox();
		checkBoxNongTrai = new CheckBox();
		checkBoxHaiThuoc = new CheckBox();
		checkBoxCauCa = new CheckBox();
		buttonRom = new Button();
		buttonH1 = new Button();
		buttonH2 = new Button();
		buttonH3 = new Button();
		buttonH4 = new Button();
		comboBox1 = new ComboBox();
		button10 = new Button();
		groupBox1 = new GroupBox();
		comboBoxChat = new ComboBox();
		label9 = new Label();
		numericUpDownChat = new NumericUpDown();
		CheckboxTrong = new CheckBox();
		label2 = new Label();
		comboBoxTrong = new ComboBox();
		CheckboxChat = new CheckBox();
		numericUpDownGio = new NumericUpDown();
		textBoxChat = new TextBox();
		CheckboxDaPet = new CheckBox();
		label11 = new Label();
		numericUpDownDaPet = new NumericUpDown();
		groupBox2 = new GroupBox();
		button2 = new Button();
		label3 = new Label();
		button1 = new Button();
		numericUpDownX = new NumericUpDown();
		numericUpDownY = new NumericUpDown();
		label5 = new Label();
		comboBox5 = new ComboBox();
		comboBox4 = new ComboBox();
		comboBox3 = new ComboBox();
		checkBoxTrongDacBiet = new CheckBox();
		checkBoxTrongDai = new CheckBox();
		checkBoxTele = new CheckBox();
		buttonNPC2 = new Button();
		buttonNPC1 = new Button();
		buttonC2 = new Button();
		comboBox2 = new ComboBox();
		buttonC1 = new Button();
		comboBox6 = new ComboBox();
		tabControl1 = new TabControl();
		tabPage1 = new TabPage();
		checkBox2 = new CheckBox();
		checkBox1 = new CheckBox();
		tabPage3 = new TabPage();
		checkBox3 = new CheckBox();
		((Control)groupBox4).SuspendLayout();
		((ISupportInitialize)pictureBox1).BeginInit();
		((ISupportInitialize)numericUpDownFPS).BeginInit();
		((Control)groupBox1).SuspendLayout();
		((ISupportInitialize)numericUpDownChat).BeginInit();
		((ISupportInitialize)numericUpDownGio).BeginInit();
		((ISupportInitialize)numericUpDownDaPet).BeginInit();
		((Control)groupBox2).SuspendLayout();
		((ISupportInitialize)numericUpDownX).BeginInit();
		((ISupportInitialize)numericUpDownY).BeginInit();
		((Control)tabControl1).SuspendLayout();
		((Control)tabPage1).SuspendLayout();
		((Control)tabPage3).SuspendLayout();
		((Control)this).SuspendLayout();
		((Control)textBox2).Location = new Point(220, 12);
		((TextBoxBase)textBox2).Multiline = true;
		((Control)textBox2).Name = "textBox2";
		((TextBoxBase)textBox2).ReadOnly = true;
		textBox2.ScrollBars = (ScrollBars)2;
		((Control)textBox2).Size = new Size(144, 137);
		((Control)textBox2).TabIndex = 44;
		((Control)textBox2).Text = "-----------------------";
		((Control)label8).AutoSize = true;
		((Control)label8).Font = new Font("Segoe UI Semibold", 12f, (FontStyle)3, (GraphicsUnit)3);
		((Control)label8).Location = new Point(66, 22);
		((Control)label8).Name = "label8";
		((Control)label8).Size = new Size(45, 21);
		((Control)label8).TabIndex = 15;
		((Control)label8).Text = "null?";
		((Control)label17).AutoSize = true;
		((Control)label17).Font = new Font("Segoe UI", 7f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label17).Location = new Point(432, 368);
		((Control)label17).Name = "label17";
		((Control)label17).Size = new Size(25, 12);
		((Control)label17).TabIndex = 47;
		((Control)label17).Text = "null?";
		((Control)buttonSave).Location = new Point(375, 366);
		((Control)buttonSave).Name = "buttonSave";
		((Control)buttonSave).Size = new Size(56, 27);
		((Control)buttonSave).TabIndex = 46;
		((Control)buttonSave).Text = "Lưu";
		((ButtonBase)buttonSave).UseVisualStyleBackColor = true;
		((Control)buttonSave).Click += new EventHandler(buttonSave_Click);
		((Control)groupBox4).Controls.Add((Control)(object)label10);
		((Control)groupBox4).Controls.Add((Control)(object)pictureBox1);
		((Control)groupBox4).Controls.Add((Control)(object)numericUpDownFPS);
		((Control)groupBox4).Controls.Add((Control)(object)label8);
		((Control)groupBox4).Controls.Add((Control)(object)label4);
		((Control)groupBox4).Controls.Add((Control)(object)label1);
		((Control)groupBox4).Controls.Add((Control)(object)buttonReset);
		((Control)groupBox4).Controls.Add((Control)(object)label6);
		((Control)groupBox4).Location = new Point(6, 12);
		((Control)groupBox4).Name = "groupBox4";
		((Control)groupBox4).Size = new Size(208, 106);
		((Control)groupBox4).TabIndex = 45;
		groupBox4.TabStop = false;
		((Control)groupBox4).Text = "groupBox4";
		((Control)label10).AutoSize = true;
		((Control)label10).Location = new Point(120, 28);
		((Control)label10).Name = "label10";
		((Control)label10).Size = new Size(85, 15);
		((Control)label10).TabIndex = 27;
		((Control)label10).Text = "Timer: 00:00:00";
		pictureBox1.BorderStyle = (BorderStyle)1;
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
		((Control)label4).AutoSize = true;
		((Control)label4).Font = new Font("Segoe UI Semibold", 12f, (FontStyle)3, (GraphicsUnit)3);
		((Control)label4).Location = new Point(65, 43);
		((Control)label4).Name = "label4";
		((Control)label4).Size = new Size(45, 21);
		((Control)label4).TabIndex = 15;
		((Control)label4).Text = "null?";
		((Control)label1).AutoSize = true;
		((Control)label1).Location = new Point(72, 79);
		((Control)label1).Name = "label1";
		((Control)label1).Size = new Size(29, 15);
		((Control)label1).TabIndex = 13;
		((Control)label1).Text = "FPS:";
		((Control)buttonReset).Location = new Point(149, 75);
		((Control)buttonReset).Name = "buttonReset";
		((Control)buttonReset).Size = new Size(56, 25);
		((Control)buttonReset).TabIndex = 8;
		((Control)buttonReset).Text = "Reset";
		((ButtonBase)buttonReset).UseVisualStyleBackColor = true;
		((Control)buttonReset).Click += new EventHandler(buttonReset_Click);
		((Control)label6).AutoSize = true;
		((Control)label6).Location = new Point(6, 79);
		((Control)label6).Name = "label6";
		((Control)label6).Size = new Size(60, 15);
		((Control)label6).TabIndex = 13;
		((Control)label6).Text = "ID: 000000";
		((Control)buttonPause).Enabled = false;
		((Control)buttonPause).Location = new Point(78, 124);
		((Control)buttonPause).Name = "buttonPause";
		((Control)buttonPause).Size = new Size(65, 25);
		((Control)buttonPause).TabIndex = 43;
		((Control)buttonPause).Text = "Pause";
		((ButtonBase)buttonPause).UseVisualStyleBackColor = true;
		((Control)buttonPause).Click += new EventHandler(buttonPause_Click);
		ButtonDebug.Appearance = (Appearance)1;
		((Control)ButtonDebug).AutoSize = true;
		((Control)ButtonDebug).Location = new Point(149, 124);
		((Control)ButtonDebug).Name = "ButtonDebug";
		((Control)ButtonDebug).Size = new Size(57, 25);
		((Control)ButtonDebug).TabIndex = 41;
		((Control)ButtonDebug).Text = "Chi Tiết";
		((ButtonBase)ButtonDebug).UseVisualStyleBackColor = true;
		ButtonDebug.CheckStateChanged += new EventHandler(ButtonDebug_CheckStateChanged);
		ButtonRunAuto.Appearance = (Appearance)1;
		((Control)ButtonRunAuto).Location = new Point(6, 124);
		((Control)ButtonRunAuto).Name = "ButtonRunAuto";
		((Control)ButtonRunAuto).Size = new Size(65, 25);
		((Control)ButtonRunAuto).TabIndex = 42;
		((Control)ButtonRunAuto).Text = "Start";
		((ButtonBase)ButtonRunAuto).TextAlign = (ContentAlignment)32;
		((ButtonBase)ButtonRunAuto).UseVisualStyleBackColor = true;
		ButtonRunAuto.CheckStateChanged += new EventHandler(ButtonRunAuto_CheckStateChanged);
		((Control)checkBoxNongTrai).AutoSize = true;
		((Control)checkBoxNongTrai).Location = new Point(6, 6);
		((Control)checkBoxNongTrai).Name = "checkBoxNongTrai";
		((Control)checkBoxNongTrai).Size = new Size(77, 19);
		((Control)checkBoxNongTrai).TabIndex = 48;
		((Control)checkBoxNongTrai).Text = "Nông Trại";
		((ButtonBase)checkBoxNongTrai).UseVisualStyleBackColor = true;
		checkBoxNongTrai.CheckedChanged += new EventHandler(checkBox1_CheckedChanged);
		((Control)checkBoxHaiThuoc).AutoSize = true;
		((Control)checkBoxHaiThuoc).Location = new Point(17, 6);
		((Control)checkBoxHaiThuoc).Name = "checkBoxHaiThuoc";
		((Control)checkBoxHaiThuoc).Size = new Size(80, 19);
		((Control)checkBoxHaiThuoc).TabIndex = 48;
		((Control)checkBoxHaiThuoc).Text = "Hái Thuốc";
		((ButtonBase)checkBoxHaiThuoc).UseVisualStyleBackColor = true;
		checkBoxHaiThuoc.CheckedChanged += new EventHandler(checkBox2_CheckedChanged);
		((Control)checkBoxCauCa).AutoSize = true;
		((Control)checkBoxCauCa).Location = new Point(190, 6);
		((Control)checkBoxCauCa).Name = "checkBoxCauCa";
		((Control)checkBoxCauCa).Size = new Size(64, 19);
		((Control)checkBoxCauCa).TabIndex = 48;
		((Control)checkBoxCauCa).Text = "Câu Cá";
		((ButtonBase)checkBoxCauCa).UseVisualStyleBackColor = true;
		checkBoxCauCa.CheckedChanged += new EventHandler(checkBox3_CheckedChanged);
		((Control)buttonRom).Location = new Point(229, 35);
		((Control)buttonRom).Name = "buttonRom";
		((Control)buttonRom).Size = new Size(115, 25);
		((Control)buttonRom).TabIndex = 43;
		((Control)buttonRom).Text = "Vi\u0323 Tri\u0301 Ngươ\u0300i Rơm";
		((ButtonBase)buttonRom).UseVisualStyleBackColor = true;
		((Control)buttonRom).MouseDown += new MouseEventHandler(button2_MouseDown);
		((Control)buttonRom).MouseUp += new MouseEventHandler(button1_MouseUp);
		((Control)buttonH1).Location = new Point(17, 91);
		((Control)buttonH1).Name = "buttonH1";
		((Control)buttonH1).Size = new Size(59, 25);
		((Control)buttonH1).TabIndex = 43;
		((Control)buttonH1).Text = "TD1";
		((ButtonBase)buttonH1).UseVisualStyleBackColor = true;
		((Control)buttonH1).MouseDown += new MouseEventHandler(button2_MouseDown);
		((Control)buttonH1).MouseUp += new MouseEventHandler(button2_MouseUp);
		((Control)buttonH2).Location = new Point(17, 122);
		((Control)buttonH2).Name = "buttonH2";
		((Control)buttonH2).Size = new Size(59, 25);
		((Control)buttonH2).TabIndex = 43;
		((Control)buttonH2).Text = "TD2";
		((ButtonBase)buttonH2).UseVisualStyleBackColor = true;
		((Control)buttonH2).MouseDown += new MouseEventHandler(button2_MouseDown);
		((Control)buttonH2).MouseUp += new MouseEventHandler(button3_MouseUp);
		((Control)buttonH3).Location = new Point(103, 93);
		((Control)buttonH3).Name = "buttonH3";
		((Control)buttonH3).Size = new Size(59, 25);
		((Control)buttonH3).TabIndex = 43;
		((Control)buttonH3).Text = "TD1";
		((ButtonBase)buttonH3).UseVisualStyleBackColor = true;
		((Control)buttonH3).MouseDown += new MouseEventHandler(button2_MouseDown);
		((Control)buttonH3).MouseUp += new MouseEventHandler(button4_MouseUp);
		((Control)buttonH4).Location = new Point(103, 123);
		((Control)buttonH4).Name = "buttonH4";
		((Control)buttonH4).Size = new Size(59, 25);
		((Control)buttonH4).TabIndex = 43;
		((Control)buttonH4).Text = "TD2";
		((ButtonBase)buttonH4).UseVisualStyleBackColor = true;
		((Control)buttonH4).MouseDown += new MouseEventHandler(button2_MouseDown);
		((Control)buttonH4).MouseUp += new MouseEventHandler(button5_MouseUp);
		((ListControl)comboBox1).FormattingEnabled = true;
		comboBox1.Items.AddRange(new object[14]
		{
			"Lúa Mạch Cấp 1", "Lúa Gạo Cấp 1", "Bắp Cấp 2", "Khoai Cấp 2", "Đậu Phộng Cấp 3", "Đậu Nành Cấp 3", "Cải Thảo Cấp 4", "Củ Cải Cấp 4", "Cacao Cấp 5", "Cao Lương Cấp 5",
			"Mướp Cấp 6", "Bầu Cấp 6", "Bông Cải Cấp 7", "Hoàng Kim Quả Cấp 7"
		});
		((Control)comboBox1).Location = new Point(13, 118);
		((Control)comboBox1).Name = "comboBox1";
		((Control)comboBox1).Size = new Size(146, 23);
		((Control)comboBox1).TabIndex = 49;
		((Control)comboBox1).Text = "Nông Sản";
		((Control)button10).Location = new Point(229, 66);
		((Control)button10).Name = "button10";
		((Control)button10).Size = new Size(115, 25);
		((Control)button10).TabIndex = 43;
		((Control)button10).Text = "Vi\u0323 Tri\u0301 Thu Hoa\u0323ch";
		((ButtonBase)button10).UseVisualStyleBackColor = true;
		((Control)button10).MouseDown += new MouseEventHandler(button2_MouseDown);
		((Control)button10).MouseUp += new MouseEventHandler(button10_MouseUp);
		((Control)groupBox1).Controls.Add((Control)(object)comboBoxChat);
		((Control)groupBox1).Controls.Add((Control)(object)label9);
		((Control)groupBox1).Controls.Add((Control)(object)numericUpDownChat);
		((Control)groupBox1).Controls.Add((Control)(object)CheckboxTrong);
		((Control)groupBox1).Controls.Add((Control)(object)label2);
		((Control)groupBox1).Controls.Add((Control)(object)comboBoxTrong);
		((Control)groupBox1).Controls.Add((Control)(object)CheckboxChat);
		((Control)groupBox1).Controls.Add((Control)(object)numericUpDownGio);
		((Control)groupBox1).Controls.Add((Control)(object)textBoxChat);
		((Control)groupBox1).Controls.Add((Control)(object)CheckboxDaPet);
		((Control)groupBox1).Controls.Add((Control)(object)label11);
		((Control)groupBox1).Controls.Add((Control)(object)numericUpDownDaPet);
		((Control)groupBox1).Location = new Point(370, 12);
		((Control)groupBox1).Name = "groupBox1";
		((Control)groupBox1).Size = new Size(166, 348);
		((Control)groupBox1).TabIndex = 50;
		groupBox1.TabStop = false;
		((Control)groupBox1).Text = "Đá Pet - Trang Viên - Chat";
		((ListControl)comboBoxChat).FormattingEnabled = true;
		comboBoxChat.Items.AddRange(new object[3] { "Hiện Tại", "Thế Giới", "Bang" });
		((Control)comboBoxChat).Location = new Point(8, 131);
		((Control)comboBoxChat).Margin = new Padding(1);
		((Control)comboBoxChat).Name = "comboBoxChat";
		((Control)comboBoxChat).Size = new Size(67, 23);
		((Control)comboBoxChat).TabIndex = 33;
		((Control)comboBoxChat).Text = "Thế Giới";
		((Control)label9).AutoSize = true;
		((Control)label9).Location = new Point(131, 79);
		((Control)label9).Name = "label9";
		((Control)label9).Size = new Size(25, 15);
		((Control)label9).TabIndex = 13;
		((Control)label9).Text = "Giờ";
		((Control)numericUpDownChat).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownChat).Location = new Point(79, 132);
		numericUpDownChat.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownChat).Name = "numericUpDownChat";
		((Control)numericUpDownChat).Size = new Size(35, 23);
		((Control)numericUpDownChat).TabIndex = 15;
		numericUpDownChat.Value = new decimal(new int[4] { 20, 0, 0, 0 });
		((Control)CheckboxTrong).AutoSize = true;
		((Control)CheckboxTrong).Location = new Point(6, 52);
		((Control)CheckboxTrong).Name = "CheckboxTrong";
		((Control)CheckboxTrong).Size = new Size(81, 19);
		((Control)CheckboxTrong).TabIndex = 29;
		((Control)CheckboxTrong).Text = "Trang Viên";
		((ButtonBase)CheckboxTrong).UseVisualStyleBackColor = true;
		CheckboxTrong.CheckedChanged += new EventHandler(CheckboxTrong_CheckedChanged);
		((Control)label2).AutoSize = true;
		((Control)label2).Location = new Point(115, 135);
		((Control)label2).Name = "label2";
		((Control)label2).Size = new Size(32, 15);
		((Control)label2).TabIndex = 13;
		((Control)label2).Text = "Phút";
		((ListControl)comboBoxTrong).FormattingEnabled = true;
		comboBoxTrong.Items.AddRange(new object[10] { "Kim Loại", "Gỗ", "Lông Thú", "Ngọc", "Vải Thô", "Kim Loại Hiếm", "Gỗ Tốt", "Da Thú", "Pha Lê", "Gấm Vóc" });
		((Control)comboBoxTrong).Location = new Point(8, 77);
		((Control)comboBoxTrong).Name = "comboBoxTrong";
		((Control)comboBoxTrong).Size = new Size(83, 23);
		((Control)comboBoxTrong).TabIndex = 30;
		((Control)comboBoxTrong).Text = "Kim Loại";
		((Control)CheckboxChat).AutoSize = true;
		((Control)CheckboxChat).Location = new Point(6, 106);
		((Control)CheckboxChat).Name = "CheckboxChat";
		((Control)CheckboxChat).Size = new Size(51, 19);
		((Control)CheckboxChat).TabIndex = 31;
		((Control)CheckboxChat).Text = "Chat";
		((ButtonBase)CheckboxChat).UseVisualStyleBackColor = true;
		CheckboxChat.CheckedChanged += new EventHandler(CheckboxChat_CheckedChanged);
		((Control)numericUpDownGio).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownGio).Location = new Point(95, 77);
		numericUpDownGio.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownGio).Name = "numericUpDownGio";
		((Control)numericUpDownGio).Size = new Size(34, 23);
		((Control)numericUpDownGio).TabIndex = 28;
		numericUpDownGio.Value = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)textBoxChat).BackColor = Color.White;
		((Control)textBoxChat).Location = new Point(5, 165);
		((TextBoxBase)textBoxChat).MaxLength = 99999;
		((TextBoxBase)textBoxChat).Multiline = true;
		((Control)textBoxChat).Name = "textBoxChat";
		textBoxChat.ScrollBars = (ScrollBars)2;
		((Control)textBoxChat).Size = new Size(155, 177);
		((Control)textBoxChat).TabIndex = 32;
		((Control)textBoxChat).Text = "- Chọn Kênh chat và Thời Gian mỗi lần Chat.\r\n- Mỗi câu Chat cách nhau bằng dấu xuống dòng.\r\n- Mỗi câu Chat trong game tối đa 99 ký tự.";
		((Control)textBoxChat).TextChanged += new EventHandler(textBoxChat_TabStopChanged);
		((Control)CheckboxDaPet).AutoSize = true;
		((Control)CheckboxDaPet).Location = new Point(6, 22);
		((Control)CheckboxDaPet).Name = "CheckboxDaPet";
		((Control)CheckboxDaPet).Size = new Size(60, 19);
		((Control)CheckboxDaPet).TabIndex = 23;
		((Control)CheckboxDaPet).Text = "Đá Pet";
		((ButtonBase)CheckboxDaPet).UseVisualStyleBackColor = true;
		CheckboxDaPet.CheckStateChanged += new EventHandler(CheckboxDaPet_CheckStateChanged);
		((Control)label11).AutoSize = true;
		((Control)label11).Location = new Point(115, 23);
		((Control)label11).Name = "label11";
		((Control)label11).Size = new Size(31, 15);
		((Control)label11).TabIndex = 13;
		((Control)label11).Text = "Lượt";
		((Control)numericUpDownDaPet).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownDaPet).Location = new Point(72, 21);
		numericUpDownDaPet.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		numericUpDownDaPet.Minimum = new decimal(new int[4] { 10, 0, 0, -2147483648 });
		((Control)numericUpDownDaPet).Name = "numericUpDownDaPet";
		((Control)numericUpDownDaPet).Size = new Size(37, 23);
		((Control)numericUpDownDaPet).TabIndex = 15;
		numericUpDownDaPet.Value = new decimal(new int[4] { 20, 0, 0, 0 });
		((Control)groupBox2).Controls.Add((Control)(object)button2);
		((Control)groupBox2).Controls.Add((Control)(object)label3);
		((Control)groupBox2).Controls.Add((Control)(object)button1);
		((Control)groupBox2).Controls.Add((Control)(object)numericUpDownX);
		((Control)groupBox2).Controls.Add((Control)(object)numericUpDownY);
		((Control)groupBox2).Controls.Add((Control)(object)label5);
		((Control)groupBox2).Location = new Point(6, 345);
		((Control)groupBox2).Name = "groupBox2";
		((Control)groupBox2).Size = new Size(358, 48);
		((Control)groupBox2).TabIndex = 51;
		groupBox2.TabStop = false;
		((Control)groupBox2).Text = "Tele Trong Map";
		((Control)button2).Location = new Point(284, 16);
		((Control)button2).Name = "button2";
		((Control)button2).Size = new Size(49, 23);
		((Control)button2).TabIndex = 53;
		((Control)button2).Text = "Tele";
		((ButtonBase)button2).UseVisualStyleBackColor = true;
		((Control)button2).Click += new EventHandler(button2_Click);
		((Control)label3).AutoSize = true;
		((Control)label3).Location = new Point(35, 20);
		((Control)label3).Name = "label3";
		((Control)label3).Size = new Size(14, 15);
		((Control)label3).TabIndex = 13;
		((Control)label3).Text = "X";
		((Control)button1).Location = new Point(194, 16);
		((Control)button1).Name = "button1";
		((Control)button1).Size = new Size(75, 23);
		((Control)button1).TabIndex = 53;
		((Control)button1).Text = "Lâ\u0301y Vi\u0323 Tri\u0301";
		((ButtonBase)button1).UseVisualStyleBackColor = true;
		((Control)button1).Click += new EventHandler(button1_Click);
		((Control)numericUpDownX).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownX).Location = new Point(55, 18);
		numericUpDownX.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownX).Name = "numericUpDownX";
		((Control)numericUpDownX).Size = new Size(46, 23);
		((Control)numericUpDownX).TabIndex = 15;
		numericUpDownX.Value = new decimal(new int[4] { 20, 0, 0, 0 });
		numericUpDownX.ValueChanged += new EventHandler(numericUpDownX_ValueChanged);
		((Control)numericUpDownY).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownY).Location = new Point(130, 18);
		numericUpDownY.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownY).Name = "numericUpDownY";
		((Control)numericUpDownY).Size = new Size(46, 23);
		((Control)numericUpDownY).TabIndex = 15;
		numericUpDownY.Value = new decimal(new int[4] { 20, 0, 0, 0 });
		numericUpDownY.ValueChanged += new EventHandler(numericUpDownY_ValueChanged);
		((Control)label5).AutoSize = true;
		((Control)label5).Location = new Point(110, 20);
		((Control)label5).Name = "label5";
		((Control)label5).Size = new Size(14, 15);
		((Control)label5).TabIndex = 13;
		((Control)label5).Text = "Y";
		((ListControl)comboBox5).FormattingEnabled = true;
		comboBox5.Items.AddRange(new object[8] { "Vi\u0323 Tri\u0301 Post", "Ti\u0300m Ca\u0301 Câ\u0301p 1", "Ti\u0300m Ca\u0301 Câ\u0301p 2", "Ti\u0300m Ca\u0301 Câ\u0301p 3", "Ti\u0300m Ca\u0301 Câ\u0301p 4", "Ti\u0300m Ca\u0301 Câ\u0301p 5", "Ti\u0300m Ca\u0301 Câ\u0301p 6", "Ti\u0300m Ca\u0301 Câ\u0301p 7" });
		((Control)comboBox5).Location = new Point(190, 31);
		((Control)comboBox5).Name = "comboBox5";
		((Control)comboBox5).Size = new Size(108, 23);
		((Control)comboBox5).TabIndex = 52;
		((Control)comboBox5).Text = "Vi\u0323 Tri\u0301 Post";
		((ListControl)comboBox4).FormattingEnabled = true;
		comboBox4.Items.AddRange(new object[11]
		{
			"Vi\u0323 Tri\u0301 Post", "Vi\u0323 Tri\u0301 Tool - 1", "Vi\u0323 Tri\u0301 Tool - 2", "Vi\u0323 Tri\u0301 Tool - 3", "Vi\u0323 Tri\u0301 Tool - 4", "Vi\u0323 Tri\u0301 Tool - 5", "Vi\u0323 Tri\u0301 Tool - 6", "Vi\u0323 Tri\u0301 Tool - 7", "Vi\u0323 Tri\u0301 Tool - 8", "Vi\u0323 Tri\u0301 Tool - 9",
			"Vi\u0323 Tri\u0301 Tool - 10"
		});
		((Control)comboBox4).Location = new Point(229, 6);
		((Control)comboBox4).Name = "comboBox4";
		((Control)comboBox4).Size = new Size(108, 23);
		((Control)comboBox4).TabIndex = 52;
		((Control)comboBox4).Text = "Vi\u0323 Tri\u0301 Post";
		((ListControl)comboBox3).FormattingEnabled = true;
		comboBox3.Items.AddRange(new object[2] { "Nông Trường 1", "Nông Trường 2" });
		((Control)comboBox3).Location = new Point(190, 118);
		((Control)comboBox3).Name = "comboBox3";
		((Control)comboBox3).Size = new Size(108, 23);
		((Control)comboBox3).TabIndex = 52;
		((Control)comboBox3).Text = "Nông Trường 1";
		((Control)checkBoxTrongDacBiet).AutoSize = true;
		((Control)checkBoxTrongDacBiet).Location = new Point(13, 56);
		((Control)checkBoxTrongDacBiet).Name = "checkBoxTrongDacBiet";
		((Control)checkBoxTrongDacBiet).Size = new Size(102, 19);
		((Control)checkBoxTrongDacBiet).TabIndex = 50;
		((Control)checkBoxTrongDacBiet).Text = "Trô\u0300ng Đă\u0323c Biê\u0323t";
		((ButtonBase)checkBoxTrongDacBiet).UseVisualStyleBackColor = true;
		checkBoxTrongDacBiet.CheckedChanged += new EventHandler(checkBoxQCau_CheckedChanged);
		((Control)checkBoxTrongDai).AutoSize = true;
		((Control)checkBoxTrongDai).Location = new Point(13, 31);
		((Control)checkBoxTrongDai).Name = "checkBoxTrongDai";
		((Control)checkBoxTrongDai).Size = new Size(107, 19);
		((Control)checkBoxTrongDai).TabIndex = 50;
		((Control)checkBoxTrongDai).Text = "Trô\u0300ng Da\u0300i Nga\u0300y";
		((ButtonBase)checkBoxTrongDai).UseVisualStyleBackColor = true;
		((Control)checkBoxTele).AutoSize = true;
		((Control)checkBoxTele).Location = new Point(190, 97);
		((Control)checkBoxTele).Name = "checkBoxTele";
		((Control)checkBoxTele).Size = new Size(134, 19);
		((Control)checkBoxTele).TabIndex = 50;
		((Control)checkBoxTele).Text = "Tele Đê\u0301n X: 20 - Y: 20";
		((ButtonBase)checkBoxTele).UseVisualStyleBackColor = true;
		((Control)buttonNPC2).Location = new Point(103, 60);
		((Control)buttonNPC2).Name = "buttonNPC2";
		((Control)buttonNPC2).Size = new Size(59, 25);
		((Control)buttonNPC2).TabIndex = 43;
		((Control)buttonNPC2).Text = "NPC2";
		((ButtonBase)buttonNPC2).UseVisualStyleBackColor = true;
		((Control)buttonNPC2).MouseDown += new MouseEventHandler(button2_MouseDown);
		((Control)buttonNPC2).MouseUp += new MouseEventHandler(button9_MouseUp);
		((Control)buttonNPC1).Location = new Point(17, 60);
		((Control)buttonNPC1).Name = "buttonNPC1";
		((Control)buttonNPC1).Size = new Size(59, 25);
		((Control)buttonNPC1).TabIndex = 43;
		((Control)buttonNPC1).Text = "NPC1";
		((ButtonBase)buttonNPC1).UseVisualStyleBackColor = true;
		((Control)buttonNPC1).MouseDown += new MouseEventHandler(button2_MouseDown);
		((Control)buttonNPC1).MouseUp += new MouseEventHandler(button8_MouseUp);
		((Control)buttonC2).Location = new Point(268, 60);
		((Control)buttonC2).Name = "buttonC2";
		((Control)buttonC2).Size = new Size(68, 25);
		((Control)buttonC2).TabIndex = 43;
		((Control)buttonC2).Text = "Đàn Cá 2";
		((ButtonBase)buttonC2).UseVisualStyleBackColor = true;
		((Control)buttonC2).MouseDown += new MouseEventHandler(button2_MouseDown);
		((Control)buttonC2).MouseUp += new MouseEventHandler(button7_MouseUp);
		((ListControl)comboBox2).FormattingEnabled = true;
		comboBox2.Items.AddRange(new object[14]
		{
			"Lúa Mạch Cấp 1", "Lúa Gạo Cấp 1", "Bắp Cấp 2", "Khoai Cấp 2", "Đậu Phộng Cấp 3", "Đậu Nành Cấp 3", "Cải Thảo Cấp 4", "Củ Cải Cấp 4", "Cacao Cấp 5", "Cao Lương Cấp 5",
			"Mướp Cấp 6", "Bầu Cấp 6", "Bông Cải Cấp 7", "Hoàng Kim Quả Cấp 7"
		});
		((Control)comboBox2).Location = new Point(13, 89);
		((Control)comboBox2).Name = "comboBox2";
		((Control)comboBox2).Size = new Size(146, 23);
		((Control)comboBox2).TabIndex = 49;
		((Control)comboBox2).Text = "Nông Sản";
		((Control)buttonC1).Location = new Point(190, 60);
		((Control)buttonC1).Name = "buttonC1";
		((Control)buttonC1).Size = new Size(71, 25);
		((Control)buttonC1).TabIndex = 43;
		((Control)buttonC1).Text = "Đàn Cá 1";
		((ButtonBase)buttonC1).UseVisualStyleBackColor = true;
		((Control)buttonC1).MouseDown += new MouseEventHandler(button2_MouseDown);
		((Control)buttonC1).MouseUp += new MouseEventHandler(button6_MouseUp);
		((ListControl)comboBox6).FormattingEnabled = true;
		comboBox6.Items.AddRange(new object[8] { "Vi\u0323 Tri\u0301 Post", "Ti\u0300m TD Câ\u0301p 1", "Ti\u0300m TD Câ\u0301p 2", "Ti\u0300m TD Câ\u0301p 3", "Ti\u0300m TD Câ\u0301p 4", "Ti\u0300m TD Câ\u0301p 5", "Ti\u0300m TD Câ\u0301p 6", "Ti\u0300m TD Câ\u0301p 7" });
		((Control)comboBox6).Location = new Point(17, 31);
		((Control)comboBox6).Name = "comboBox6";
		((Control)comboBox6).Size = new Size(99, 23);
		((Control)comboBox6).TabIndex = 52;
		((Control)comboBox6).Text = "Vi\u0323 Tri\u0301 Post";
		comboBox6.SelectedIndexChanged += new EventHandler(comboBox6_SelectedIndexChanged);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage1);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage3);
		((Control)tabControl1).Location = new Point(6, 155);
		((Control)tabControl1).Name = "tabControl1";
		tabControl1.SelectedIndex = 0;
		((Control)tabControl1).Size = new Size(358, 184);
		((Control)tabControl1).TabIndex = 52;
		((Control)tabPage1).Controls.Add((Control)(object)checkBox2);
		((Control)tabPage1).Controls.Add((Control)(object)checkBoxHaiThuoc);
		((Control)tabPage1).Controls.Add((Control)(object)checkBoxCauCa);
		((Control)tabPage1).Controls.Add((Control)(object)checkBox1);
		((Control)tabPage1).Controls.Add((Control)(object)comboBox6);
		((Control)tabPage1).Controls.Add((Control)(object)buttonC2);
		((Control)tabPage1).Controls.Add((Control)(object)buttonH4);
		((Control)tabPage1).Controls.Add((Control)(object)buttonC1);
		((Control)tabPage1).Controls.Add((Control)(object)buttonH2);
		((Control)tabPage1).Controls.Add((Control)(object)comboBox5);
		((Control)tabPage1).Controls.Add((Control)(object)buttonNPC1);
		((Control)tabPage1).Controls.Add((Control)(object)buttonH1);
		((Control)tabPage1).Controls.Add((Control)(object)buttonH3);
		((Control)tabPage1).Controls.Add((Control)(object)buttonNPC2);
		tabPage1.Location = new Point(4, 24);
		((Control)tabPage1).Name = "tabPage1";
		((Control)tabPage1).Padding = new Padding(3);
		((Control)tabPage1).Size = new Size(350, 156);
		tabPage1.TabIndex = 0;
		((Control)tabPage1).Text = "Ha\u0301i - Câu";
		tabPage1.UseVisualStyleBackColor = true;
		((Control)checkBox2).AutoSize = true;
		((Control)checkBox2).Enabled = false;
		((Control)checkBox2).Location = new Point(190, 129);
		((Control)checkBox2).Name = "checkBox2";
		((Control)checkBox2).Size = new Size(128, 19);
		((Control)checkBox2).TabIndex = 53;
		((Control)checkBox2).Text = "Check Đô\u0309i Câ\u0300n Câu";
		((ButtonBase)checkBox2).UseVisualStyleBackColor = true;
		((Control)checkBox1).AutoSize = true;
		((Control)checkBox1).Enabled = false;
		((Control)checkBox1).Location = new Point(190, 97);
		((Control)checkBox1).Name = "checkBox1";
		((Control)checkBox1).Size = new Size(153, 19);
		((Control)checkBox1).TabIndex = 53;
		((Control)checkBox1).Text = "Check Du\u0300ng Tôm / Giun";
		((ButtonBase)checkBox1).UseVisualStyleBackColor = true;
		((Control)tabPage3).Controls.Add((Control)(object)checkBox3);
		((Control)tabPage3).Controls.Add((Control)(object)checkBoxNongTrai);
		((Control)tabPage3).Controls.Add((Control)(object)comboBox4);
		((Control)tabPage3).Controls.Add((Control)(object)checkBoxTrongDacBiet);
		((Control)tabPage3).Controls.Add((Control)(object)comboBox2);
		((Control)tabPage3).Controls.Add((Control)(object)comboBox3);
		((Control)tabPage3).Controls.Add((Control)(object)checkBoxTele);
		((Control)tabPage3).Controls.Add((Control)(object)buttonRom);
		((Control)tabPage3).Controls.Add((Control)(object)checkBoxTrongDai);
		((Control)tabPage3).Controls.Add((Control)(object)button10);
		((Control)tabPage3).Controls.Add((Control)(object)comboBox1);
		tabPage3.Location = new Point(4, 24);
		((Control)tabPage3).Name = "tabPage3";
		((Control)tabPage3).Padding = new Padding(3);
		((Control)tabPage3).Size = new Size(350, 156);
		tabPage3.TabIndex = 2;
		((Control)tabPage3).Text = "Trô\u0300ng";
		tabPage3.UseVisualStyleBackColor = true;
		((Control)checkBox3).AutoSize = true;
		((Control)checkBox3).Location = new Point(118, 56);
		((Control)checkBox3).Name = "checkBox3";
		((Control)checkBox3).Size = new Size(105, 19);
		((Control)checkBox3).TabIndex = 53;
		((Control)checkBox3).Text = "Trô\u0300ng Kim Tiê\u0300n";
		((ButtonBase)checkBox3).UseVisualStyleBackColor = true;
		((ContainerControl)this).AutoScaleDimensions = new SizeF(7f, 15f);
		((ContainerControl)this).AutoScaleMode = (AutoScaleMode)1;
		((Form)this).ClientSize = new Size(545, 396);
		((Control)this).Controls.Add((Control)(object)tabControl1);
		((Control)this).Controls.Add((Control)(object)groupBox2);
		((Control)this).Controls.Add((Control)(object)groupBox1);
		((Control)this).Controls.Add((Control)(object)textBox2);
		((Control)this).Controls.Add((Control)(object)label17);
		((Control)this).Controls.Add((Control)(object)groupBox4);
		((Control)this).Controls.Add((Control)(object)buttonPause);
		((Control)this).Controls.Add((Control)(object)buttonSave);
		((Control)this).Controls.Add((Control)(object)ButtonDebug);
		((Control)this).Controls.Add((Control)(object)ButtonRunAuto);
		((Form)this).FormBorderStyle = (FormBorderStyle)1;
		((Form)this).MaximizeBox = false;
		((Control)this).Name = "HaiTrongCau";
		((Form)this).StartPosition = (FormStartPosition)1;
		((Control)this).Text = "[BMx-Tool]Nông Dân Chăm Chỉ";
		((Form)this).FormClosed += new FormClosedEventHandler(HaiTrongCau_FormClosed);
		((Form)this).Load += new EventHandler(HaiTrongCau_Load);
		((Control)groupBox4).ResumeLayout(false);
		((Control)groupBox4).PerformLayout();
		((ISupportInitialize)pictureBox1).EndInit();
		((ISupportInitialize)numericUpDownFPS).EndInit();
		((Control)groupBox1).ResumeLayout(false);
		((Control)groupBox1).PerformLayout();
		((ISupportInitialize)numericUpDownChat).EndInit();
		((ISupportInitialize)numericUpDownGio).EndInit();
		((ISupportInitialize)numericUpDownDaPet).EndInit();
		((Control)groupBox2).ResumeLayout(false);
		((Control)groupBox2).PerformLayout();
		((ISupportInitialize)numericUpDownX).EndInit();
		((ISupportInitialize)numericUpDownY).EndInit();
		((Control)tabControl1).ResumeLayout(false);
		((Control)tabPage1).ResumeLayout(false);
		((Control)tabPage1).PerformLayout();
		((Control)tabPage3).ResumeLayout(false);
		((Control)tabPage3).PerformLayout();
		((Control)this).ResumeLayout(false);
		((Control)this).PerformLayout();
	}
}
