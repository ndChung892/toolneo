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

public class TruMa : Form
{
	public static string linkApp = Application.StartupPath;

	public string pathIconBatPet = linkApp + "Anh/AutoBatPet/Icon";

	public string pathAutoPhuBan = ((object)linkApp).ToString() + "Anh/AutoPhuBan";

	public string pathTacVu = ((object)linkApp).ToString() + "Anh/TacVu";

	public string pathAutoNhanNVPB = ((object)linkApp).ToString() + "Anh/NhanNVPB";

	public string pathKhac = ((object)linkApp).ToString() + "Anh/Khac";

	public string pathMaps = ((object)linkApp).ToString() + "Anh/Maps";

	public string pathData = linkApp + "/AccData";

	public string pathTruMa = ((object)linkApp).ToString() + "Anh/TruMa";

	public string pathLuyenPet = ((object)linkApp).ToString() + "Anh/LuyenPet";

	public string pathBangHoi = ((object)linkApp).ToString() + "Anh/BangHoi";

	public Bitmap AvatarNV;

	public List<Point> KetQua_Points;

	private System.IntPtr hWnd = System.IntPtr.Zero;

	public bool IsStop = true;

	public bool IsPause = false;

	private System.Threading.Tasks.Task T;

	public uint processID;

	private uint myPointer = 11180660u;

	private uint[] offset_ToaDoX;

	private uint[] offset_ToaDoY;

	private uint[] offset_FPS;

	public int ViTriNhanVat_X;

	public int ViTriNhanVat_Y;

	private uint myPointer_map_id;

	private uint[] offset_map_id;

	public double ToaDoMax_X;

	public double ToaDoMax_Y;

	public string boss;

	public int ViTri_Check_CMCT;

	public int ViTri_Check_PM;

	public int ViTri_TraQ_CMCT;

	public int ViTri_TraQ_PM;

	public int NPC_QQN_X;

	public int NPC_TTL_X;

	public int NPC_PM_X;

	public int NPC_QQN_Y;

	public int NPC_TTL_Y;

	public int NPC_PM_Y;

	public int NPC_DHT_X;

	public int NPC_DHT_Y;

	public int NhiemVu;

	public int Vong;

	public Point? ViTriCuoiCM;

	public Point? ViTriCuoiCT;

	public Point? ViTriCuoiPM;

	private int lineChat;

	public int VIP;

	public string accMain;

	public int daoVong;

	public bool autoRun;

	private string link;

	private string accCheck;

	public int luuCheckBoss;

	public int luuTraQ;

	public bool enableDebug;

	public string nameFileDebug;

	public string nameFolderDebug;

	private Bitmap? imgPhiMa1;

	private Bitmap? imgPhiMa2;

	private Bitmap? imgCuMa1;

	private Bitmap? imgCuMa2;

	private Bitmap? imgCuMa3;

	private Bitmap? imgCuMa4;

	private Bitmap? imgCuMa5;

	private Bitmap? imgCuMa6;

	private Bitmap? imgCuMa7;

	private Bitmap? imgCuMa8;

	private Bitmap? imgCuThu1;

	private Bitmap? imgCuThu2;

	private Bitmap? imgCuThu3;

	private Bitmap? imgCuThu4;

	private Bitmap? imgScanPhiMa1;

	private Bitmap? imgScanPhiMa2;

	private Bitmap? imgScanCuMa1;

	private Bitmap? imgScanCuMa2;

	private Bitmap? imgScanCuThu1;

	private Bitmap? imgScanCuThu2;

	private static Timer myTimer;

	public int counter;

	public int countTimer_chat;

	public int countTimer_pet;

	public int countTimer_trong;

	public bool userTimer;

	private static Timer watchdogTimer2;

	public double watchdogCounter2;

	public double watchdogCheck2;

	public string nameUser;

	public string pathTheme;

	private string fileName;

	private FontConverter fC;

	private DataGridViewCellStyle TableThemeColor;

	private ImageLayout layout;

	private IContainer components;

	private Button buttonPause;

	private CheckBox ButtonRunAuto;

	private Button buttonViTri1;

	private Button buttonViTri2;

	private Button buttonViTri3;

	private Label label2;

	private Button buttonViTri4;

	private ComboBox comboBox1;

	private CheckBox checkBox1;

	private GroupBox groupBox1;

	private GroupBox groupBox3;

	private Label label3;

	private CheckBox CheckboxTrong;

	private ComboBox comboBoxTrong;

	private NumericUpDown numericUpDownGio;

	private CheckBox CheckboxDaPet;

	private Label label4;

	private NumericUpDown numericUpDownDaPet;

	private CheckBox checkBoxClone;

	private CheckBox checkBoxNormal;

	private TextBox textBox1;

	private Label label1;

	private Label label6;

	private Button buttonReset;

	private NumericUpDown numericUpDownFPS;

	private PictureBox pictureBox1;

	private GroupBox groupBox4;

	private Label label11;

	private Label label12;

	private CheckBox ButtonDebug;

	private ComboBox comboBoxChat;

	private CheckBox checkBoxChat;

	private TextBox textBoxChat;

	private Label label7;

	private NumericUpDown numericUpDownChat;

	private GroupBox groupBox5;

	private NumericUpDown numericUpDownKenh;

	private NumericUpDown numericUpDownNV;

	private Label label16;

	private CheckBox checkBoxLog;

	private Label label15;

	private CheckBox checkBox2;

	private Label label17;

	private Button buttonSave;

	private Label label10;

	private CheckBox checkBoxLog_BB;

	private PictureBox pictureBox2;

	public TruMa()
	{
		//IL_0398: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a2: Expected O, but got Unknown
		//IL_03a3: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ad: Expected O, but got Unknown
		uint[] array = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_ToaDoX = array;
		uint[] array2 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array2, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_ToaDoY = array2;
		uint[] array3 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array3, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_FPS = array3;
		ViTriNhanVat_X = 0;
		ViTriNhanVat_Y = 0;
		myPointer_map_id = 11180660u;
		uint[] array4 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array4, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_map_id = array4;
		ToaDoMax_X = 0.0;
		ToaDoMax_Y = 0.0;
		boss = "Không";
		ViTri_Check_CMCT = 0;
		ViTri_Check_PM = 0;
		ViTri_TraQ_CMCT = 0;
		ViTri_TraQ_PM = 0;
		NPC_QQN_X = 0;
		NPC_TTL_X = 0;
		NPC_PM_X = 0;
		NPC_QQN_Y = 0;
		NPC_TTL_Y = 0;
		NPC_PM_Y = 0;
		NPC_DHT_X = 0;
		NPC_DHT_Y = 0;
		NhiemVu = 1;
		Vong = 0;
		ViTriCuoiCM = null;
		ViTriCuoiCT = null;
		ViTriCuoiPM = null;
		lineChat = 0;
		VIP = 0;
		accMain = "null";
		daoVong = 0;
		autoRun = false;
		link = null;
		accCheck = null;
		luuCheckBoss = 999;
		luuTraQ = 999;
		enableDebug = false;
		nameFileDebug = "";
		nameFolderDebug = "";
		imgPhiMa1 = null;
		imgPhiMa2 = null;
		imgCuMa1 = null;
		imgCuMa2 = null;
		imgCuMa3 = null;
		imgCuMa4 = null;
		imgCuMa5 = null;
		imgCuMa6 = null;
		imgCuMa7 = null;
		imgCuMa8 = null;
		imgCuThu1 = null;
		imgCuThu2 = null;
		imgCuThu3 = null;
		imgCuThu4 = null;
		imgScanPhiMa1 = null;
		imgScanPhiMa2 = null;
		imgScanCuMa1 = null;
		imgScanCuMa2 = null;
		imgScanCuThu1 = null;
		imgScanCuThu2 = null;
		counter = 0;
		countTimer_chat = 0;
		countTimer_pet = 0;
		countTimer_trong = 0;
		userTimer = false;
		watchdogCounter2 = 0.0;
		watchdogCheck2 = 0.0;
		nameUser = "";
		pathTheme = linkApp + "/Theme";
		fC = new FontConverter();
		TableThemeColor = new DataGridViewCellStyle();
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

	private void GetAllImage()
	{
		imgPhiMa1 = ImageScanOpenCV.GetImage(pathTruMa + "/PM1.png");
		imgPhiMa2 = ImageScanOpenCV.GetImage(pathTruMa + "/PM2.png");
		imgCuMa1 = ImageScanOpenCV.GetImage(pathTruMa + "/CM1.png");
		imgCuMa2 = ImageScanOpenCV.GetImage(pathTruMa + "/CM2.png");
		imgCuMa3 = ImageScanOpenCV.GetImage(pathTruMa + "/CM3.png");
		imgCuMa4 = ImageScanOpenCV.GetImage(pathTruMa + "/CM4.png");
		imgCuMa5 = ImageScanOpenCV.GetImage(pathTruMa + "/CM5.png");
		imgCuMa6 = ImageScanOpenCV.GetImage(pathTruMa + "/CM6.png");
		imgCuMa7 = ImageScanOpenCV.GetImage(pathTruMa + "/CM7.png");
		imgCuMa8 = ImageScanOpenCV.GetImage(pathTruMa + "/CM8.png");
		imgCuThu1 = ImageScanOpenCV.GetImage(pathTruMa + "/CT1.png");
		imgCuThu2 = ImageScanOpenCV.GetImage(pathTruMa + "/CT2.png");
		imgCuThu3 = ImageScanOpenCV.GetImage(pathTruMa + "/CT3.png");
		imgCuThu4 = ImageScanOpenCV.GetImage(pathTruMa + "/CT4.png");
		imgScanPhiMa1 = ImageScanOpenCV.GetImage(pathTruMa + "/BOSS/scan_PM1.png");
		imgScanPhiMa2 = ImageScanOpenCV.GetImage(pathTruMa + "/BOSS/scan_PM2.png");
		imgScanCuMa1 = ImageScanOpenCV.GetImage(pathTruMa + "/BOSS/scan_CM1.png");
		imgScanCuMa2 = ImageScanOpenCV.GetImage(pathTruMa + "/BOSS/scan_CM2.png");
		imgScanCuThu1 = ImageScanOpenCV.GetImage(pathTruMa + "/BOSS/scan_CT1.png");
		imgScanCuThu2 = ImageScanOpenCV.GetImage(pathTruMa + "/BOSS/scan_CT2.png");
	}

	private Point? getPointBoss(Image chupWindow, Bitmap imgSoSanh)
	{
		//IL_0002: Unknown result type (might be due to invalid IL or missing references)
		//IL_0016: Expected O, but got Unknown
		return ImageScanOpenCV.FindOutPoint((Bitmap)chupWindow, imgSoSanh, 0.9);
	}

	private Point? findAndClickBoss(Image chupWindow, Bitmap imgSoSanh, int offsetX, int offsetY)
	{
		//IL_001e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0023: Unknown result type (might be due to invalid IL or missing references)
		//IL_002f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0034: Unknown result type (might be due to invalid IL or missing references)
		Point? pointBoss = getPointBoss(chupWindow, imgSoSanh);
		if (pointBoss.HasValue)
		{
			System.IntPtr intPtr = hWnd;
			Point value = pointBoss.Value;
			int num = ((Point)(ref value)).X + offsetX;
			value = pointBoss.Value;
			AutoControl.SendClickOnPosition(intPtr, num, ((Point)(ref value)).Y + offsetY - 30, (EMouseKey)0, 1);
			delay_100ms(3);
			return pointBoss;
		}
		return null;
	}

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

	private bool WaitAvatar(System.IntPtr hWnd, Bitmap Anh_Avatar)
	{
		//IL_0009: Unknown result type (might be due to invalid IL or missing references)
		//IL_001d: Expected O, but got Unknown
		Image val = CaptureHelper.CaptureWindow(hWnd);
		Bitmap val2 = ImageScanOpenCV.Find((Bitmap)val, Anh_Avatar, 0.9);
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

	private static List<Point>? FindPoints2(Image chupWindow, Bitmap imgSoSanh)
	{
		//IL_0002: Unknown result type (might be due to invalid IL or missing references)
		//IL_0016: Expected O, but got Unknown
		return ImageScanOpenCV.FindOutPoints((Bitmap)chupWindow, imgSoSanh, 0.9);
	}

	private void debugText(string x)
	{
		if (x == "ClearDebugText")
		{
			((Control)textBox1).Text = "";
		}
		else
		{
			((TextBoxBase)textBox1).AppendText(x + "\r\n");
		}
		if (enableDebug)
		{
			System.DateTime now = System.DateTime.Now;
			File.AppendAllText(string.Concat(new string[7] { pathData, "/Debug/", nameFolderDebug, "/", nameUser, "/", nameFileDebug }), string.Concat(new string[7]
			{
				"[",
				now.Hour.ToString("D2"),
				":",
				now.Minute.ToString("D2"),
				"] >>> ",
				x,
				"\r\n"
			}));
		}
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

	private int checkIDMap()
	{
		return (int)ReadMemoryData(processID, myPointer_map_id, offset_map_id);
	}

	private void Tele_TruMa(double X, double Y)
	{
		//IL_00db: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f1: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_011e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0123: Unknown result type (might be due to invalid IL or missing references)
		//IL_0134: Unknown result type (might be due to invalid IL or missing references)
		//IL_0139: Unknown result type (might be due to invalid IL or missing references)
		debugText("Đi Đến Tọa Độ Chỉ Định");
		PressKey("P");
		try
		{
			bool flag = WriteMemoryData(processID, myPointer, offset_ToaDoX, X);
			bool flag2 = WriteMemoryData(processID, myPointer, offset_ToaDoY, Y);
			while (!flag || !flag2)
			{
				flag = WriteMemoryData(processID, myPointer, offset_ToaDoX, X);
				flag2 = WriteMemoryData(processID, myPointer, offset_ToaDoY, Y);
				delay_100ms(5);
			}
			delay_100ms(2);
			Point? val;
			while (true)
			{
				val = FindPoint(hWnd, pathTacVu + "/ChienDau.png");
				if (val.HasValue)
				{
					break;
				}
				PressKey("ESC");
				delay_100ms(3);
				PressKey("P");
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
		catch (System.Exception)
		{
		}
		PressKey("ESC");
		delay_100ms(3);
		AutoControl.SendClickOnPosition(hWnd, 535, 381, (EMouseKey)0, 1);
		delay_100ms(3);
		AutoControl.SendClickOnPosition(hWnd, 535, 381, (EMouseKey)0, 1);
		delay_100ms(3);
	}

	private void Tele_TruMa2(double X, double Y)
	{
		//IL_0129: Unknown result type (might be due to invalid IL or missing references)
		//IL_012e: Unknown result type (might be due to invalid IL or missing references)
		//IL_013b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0140: Unknown result type (might be due to invalid IL or missing references)
		//IL_0164: Unknown result type (might be due to invalid IL or missing references)
		//IL_0169: Unknown result type (might be due to invalid IL or missing references)
		//IL_0176: Unknown result type (might be due to invalid IL or missing references)
		//IL_017b: Unknown result type (might be due to invalid IL or missing references)
		//IL_019f: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_01da: Unknown result type (might be due to invalid IL or missing references)
		//IL_01df: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f1: Unknown result type (might be due to invalid IL or missing references)
		try
		{
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
					if (X != 0.0 && Y != 0.0)
					{
						WriteMemoryData(processID, myPointer, offset_ToaDoX, X);
						WriteMemoryData(processID, myPointer, offset_ToaDoY, Y);
					}
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
		}
		catch (System.Exception)
		{
		}
		AutoControl.SendClickOnPosition(hWnd, 535, 381, (EMouseKey)0, 1);
		delay_100ms(3);
		AutoControl.SendClickOnPosition(hWnd, 535, 381, (EMouseKey)0, 1);
		delay_100ms(3);
	}

	private unsafe void HideIconECT()
	{
		//IL_0054: Unknown result type (might be due to invalid IL or missing references)
		//IL_0059: Unknown result type (might be due to invalid IL or missing references)
		//IL_0063: Unknown result type (might be due to invalid IL or missing references)
		//IL_0068: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d6: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_023d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0242: Unknown result type (might be due to invalid IL or missing references)
		//IL_0252: Unknown result type (might be due to invalid IL or missing references)
		//IL_0257: Unknown result type (might be due to invalid IL or missing references)
		//IL_016d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0172: Unknown result type (might be due to invalid IL or missing references)
		//IL_0182: Unknown result type (might be due to invalid IL or missing references)
		//IL_0187: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b9: Unknown result type (might be due to invalid IL or missing references)
		AutoControl.SendKeyBoardPress(hWnd, (VKeys)27);
		debugText("ESC");
		delay_100ms(1);
		Point? val = FindPoint(hWnd, pathTacVu + "/AnSkill.png");
		Point val2;
		if (val.HasValue)
		{
			System.IntPtr intPtr = hWnd;
			val2 = val.Value;
			int x = ((Point)(ref val2)).X;
			val2 = val.Value;
			AutoControl.SendClickOnPosition(intPtr, x, ((Point)(ref val2)).Y - 30, (EMouseKey)0, 1);
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
			System.IntPtr intPtr2 = hWnd;
			val2 = val.Value;
			int x2 = ((Point)(ref val2)).X;
			val2 = val.Value;
			AutoControl.SendClickOnPosition(intPtr2, x2, ((Point)(ref val2)).Y - 30, (EMouseKey)0, 1);
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
				System.IntPtr intPtr3 = hWnd;
				val2 = KetQua_Points[i];
				int x3 = ((Point)(ref val2)).X;
				val2 = KetQua_Points[i];
				AutoControl.SendClickOnPosition(intPtr3, x3, ((Point)(ref val2)).Y - 30, (EMouseKey)0, 1);
				string text = i.ToString();
				val2 = KetQua_Points[i];
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
			System.IntPtr intPtr4 = hWnd;
			val2 = val.Value;
			int num = ((Point)(ref val2)).X - 200;
			val2 = val.Value;
			AutoControl.SendClickOnPosition(intPtr4, num, ((Point)(ref val2)).Y - 30 - 30, (EMouseKey)0, 1);
			debugText("Đã Gửi Khung Chat");
			delay_100ms(5);
		}
		else
		{
			debugText("Không Thấy Gửi Khung Chat");
		}
	}

	private void PressKey(string x)
	{
		Image chupwindow = CaptureHelper.CaptureWindow(hWnd);
		FindAndClick2(hWnd, chupwindow, pathTacVu + "/ThongBaoCuongDaoBangHoi.png", 2, 2);
		FindAndClick2(hWnd, chupwindow, pathKhac + "/Log_OK.png", 2, 2);
		FindAndClick2(hWnd, chupwindow, pathKhac + "/Auto_Co.png", 2, 2);
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
		{
			if (!(x == "Q"))
			{
				break;
			}
			int num = 0;
			while (!FindAndClick(hWnd, pathTruMa + "/key_Q.png", 2, 2, "Q").HasValue)
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)27);
				delay_100ms(5);
				num++;
				if (num >= 5)
				{
					setupRun2();
					num = 0;
				}
			}
			break;
		}
		case 3742114125u:
			if (x == "Z")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)90);
			}
			break;
		}
		delay_100ms(1);
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

	private bool TimBoss(string Boss)
	{
		//IL_0205: Unknown result type (might be due to invalid IL or missing references)
		//IL_020a: Unknown result type (might be due to invalid IL or missing references)
		//IL_021a: Unknown result type (might be due to invalid IL or missing references)
		//IL_021f: Unknown result type (might be due to invalid IL or missing references)
		//IL_026d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0272: Unknown result type (might be due to invalid IL or missing references)
		//IL_0282: Unknown result type (might be due to invalid IL or missing references)
		//IL_0287: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e7: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_065e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0664: Invalid comparison between Unknown and I4
		PressKey("ESC");
		AutoControl.SendClickOnPosition(hWnd, 600, 423, (EMouseKey)0, 1);
		delay_100ms(5);
		if (FindPoint(hWnd, pathTruMa + "/map_TTL.png").HasValue)
		{
			ToaDoMax_X = 3000.0;
			ToaDoMax_Y = 2000.0;
		}
		else if (FindPoint(hWnd, pathTruMa + "/map_TLT.png").HasValue || FindPoint(hWnd, pathTruMa + "/map_TLT2.png").HasValue)
		{
			ToaDoMax_X = 2800.0;
			ToaDoMax_Y = 2000.0;
		}
		else if (FindPoint(hWnd, pathTruMa + "/map_TLaT.png").HasValue)
		{
			ToaDoMax_X = 4500.0;
			ToaDoMax_Y = 2500.0;
		}
		else
		{
			if (!FindPoint(hWnd, pathTruMa + "/map_BBT.png").HasValue)
			{
				return false;
			}
			ToaDoMax_X = 3000.0;
			ToaDoMax_Y = 2000.0;
		}
		if (ScanBoss2(Boss))
		{
			goto IL_0684;
		}
		string text = boss;
		string text2 = text;
		Point value;
		if (!(text2 == "Phi Ma"))
		{
			if (!(text2 == "Cự Ma"))
			{
				if (text2 == "Cự Thú")
				{
					if (ViTriCuoiCT.HasValue)
					{
						value = ViTriCuoiCT.Value;
						double x = ((Point)(ref value)).X;
						value = ViTriCuoiCT.Value;
						Tele_TruMa(x, ((Point)(ref value)).Y);
						ViTriCuoiCT = null;
					}
					if (ScanBoss(Boss))
					{
						goto IL_0684;
					}
				}
			}
			else
			{
				if (ViTriCuoiCM.HasValue)
				{
					value = ViTriCuoiCM.Value;
					double x2 = ((Point)(ref value)).X;
					value = ViTriCuoiCM.Value;
					Tele_TruMa(x2, ((Point)(ref value)).Y);
					ViTriCuoiCM = null;
				}
				if (ScanBoss(Boss))
				{
					goto IL_0684;
				}
			}
		}
		else
		{
			if (ViTriCuoiPM.HasValue)
			{
				value = ViTriCuoiPM.Value;
				double x3 = ((Point)(ref value)).X;
				value = ViTriCuoiPM.Value;
				Tele_TruMa(x3, ((Point)(ref value)).Y);
				ViTriCuoiPM = null;
			}
			if (ScanBoss(Boss))
			{
				goto IL_0684;
			}
		}
		goto IL_0320;
		IL_0684:
		int num = 0;
		while (true)
		{
			reConnect();
			num++;
			if (num >= 10 || FindPoint(hWnd, pathTruMa + "/Boss_busy.png").HasValue)
			{
				break;
			}
			if (!FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -116, "Đánh Boss").HasValue)
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)27);
				AutoControl.SendClickOnPosition(hWnd, 550, 370, (EMouseKey)0, 1);
				delay_100ms(2);
				if (WaitAvatar(hWnd, AvatarNV))
				{
					AutoControl.SendClickOnPosition(hWnd, 550, 270, (EMouseKey)0, 1);
					delay_100ms(2);
					if (WaitAvatar(hWnd, AvatarNV))
					{
						ScanBoss(Boss);
						delay_100ms(1);
					}
				}
			}
			if (WaitAvatar(hWnd, AvatarNV))
			{
				continue;
			}
			do
			{
				reConnect();
				Image val = CaptureHelper.CaptureWindow(hWnd);
				if (FindPoint2(hWnd, val, pathKhac + "/Auto_99.png").HasValue)
				{
					FindAndClick2(hWnd, val, pathKhac + "/Auto_KetThucAuto.png", 2, 2);
				}
				else
				{
					FindAndClick2(hWnd, val, pathTruMa + "/Auto.png", 5, 5);
				}
				delay_100ms(3);
			}
			while (!WaitAvatar(hWnd, AvatarNV));
			PressKey("ESC");
			if (boss == "Cự Ma" || boss == "Cự Thú")
			{
				ScanViTriBoss("CM+CT");
			}
			else
			{
				ScanViTriBoss(boss);
			}
			daoVong = 0;
			return true;
		}
		daoVong++;
		goto IL_0320;
		IL_0320:
		int num2 = (int)(ToaDoMax_X / 525.0);
		int num3 = (int)(ToaDoMax_Y / 350.0);
		if ((NhiemVu + daoVong) % 2 == 0)
		{
			for (int num4 = 1; num4 <= num3; num4++)
			{
				Tele_TruMa(525.0, num4 * 350);
				bool flag = true;
				int num5 = 0;
				while (flag)
				{
					reConnect();
					if (ScanBoss2(Boss))
					{
						goto IL_0684;
					}
					AutoControl.SendClickOnPosition(hWnd, 750, 330, (EMouseKey)0, 1);
					delay_100ms(1);
					AutoControl.SendClickOnPosition(hWnd, 850, 330, (EMouseKey)0, 1);
					delay_100ms(1);
					if (boss == "Cự Ma" || boss == "Cự Thú")
					{
						ScanViTriBoss(boss);
					}
					AutoControl.SendKeyBoardPress(hWnd, (VKeys)27);
					try
					{
						ViTriNhanVat_X = (int)ReadMemoryData(processID, myPointer, offset_ToaDoX);
					}
					catch (System.Exception)
					{
					}
					if ((double)ViTriNhanVat_X > ToaDoMax_X - 525.0)
					{
						flag = false;
					}
					num5++;
					if (num5 >= 30)
					{
						PressKey("ESC");
						num5 = 0;
					}
				}
				delay_100ms(5);
				if (ScanBoss2(Boss))
				{
					goto IL_0684;
				}
			}
		}
		else
		{
			for (int num6 = num3; num6 > 0; num6--)
			{
				Tele_TruMa(num2 * 525, num6 * 350);
				bool flag2 = true;
				int num7 = 0;
				while (flag2)
				{
					reConnect();
					if (ScanBoss2(Boss))
					{
						goto IL_0684;
					}
					AutoControl.SendClickOnPosition(hWnd, 330, 330, (EMouseKey)0, 1);
					delay_100ms(1);
					AutoControl.SendClickOnPosition(hWnd, 230, 330, (EMouseKey)0, 1);
					delay_100ms(1);
					if (boss == "Cự Ma" || boss == "Cự Thú")
					{
						ScanViTriBoss(boss);
					}
					AutoControl.SendKeyBoardPress(hWnd, (VKeys)27);
					try
					{
						ViTriNhanVat_X = (int)ReadMemoryData(processID, myPointer, offset_ToaDoX);
					}
					catch (System.Exception)
					{
					}
					if (ViTriNhanVat_X < 525)
					{
						flag2 = false;
					}
					num7++;
					if (num7 >= 30)
					{
						PressKey("ESC");
						num7 = 0;
					}
				}
				delay_100ms(5);
				if (ScanBoss2(Boss))
				{
					goto IL_0684;
				}
			}
		}
		if ((int)checkBox2.CheckState == 1)
		{
			CheckSkin();
			setupRun2();
		}
		return false;
	}

	private bool ScanBoss(string boss)
	{
		Image chupWindow = CaptureHelper.CaptureWindow(hWnd);
		if (!(boss == "Phi Ma"))
		{
			if (!(boss == "Cự Ma"))
			{
				if (boss == "Cự Thú" && (findAndClickBoss(chupWindow, imgScanCuThu1, 2, 2).HasValue || findAndClickBoss(chupWindow, imgScanCuThu2, 2, 2).HasValue || findAndClickBoss(chupWindow, imgCuThu1, 2, 2).HasValue || findAndClickBoss(chupWindow, imgCuThu2, 2, 2).HasValue || findAndClickBoss(chupWindow, imgCuThu3, 2, 2).HasValue || findAndClickBoss(chupWindow, imgCuThu4, 2, 2).HasValue))
				{
					delay_100ms(8);
					return true;
				}
			}
			else if (findAndClickBoss(chupWindow, imgScanCuMa1, 2, 2).HasValue || findAndClickBoss(chupWindow, imgScanCuMa2, 2, 2).HasValue || findAndClickBoss(chupWindow, imgCuMa1, 2, 2).HasValue || findAndClickBoss(chupWindow, imgCuMa2, 2, 2).HasValue || findAndClickBoss(chupWindow, imgCuMa3, 2, 2).HasValue || findAndClickBoss(chupWindow, imgCuMa4, 2, 2).HasValue || findAndClickBoss(chupWindow, imgCuMa5, 2, 2).HasValue || findAndClickBoss(chupWindow, imgCuMa6, 2, 2).HasValue || findAndClickBoss(chupWindow, imgCuMa7, 2, 2).HasValue || findAndClickBoss(chupWindow, imgCuMa8, 2, 2).HasValue)
			{
				delay_100ms(8);
				return true;
			}
		}
		else if (findAndClickBoss(chupWindow, imgScanPhiMa1, 2, 2).HasValue || findAndClickBoss(chupWindow, imgScanPhiMa2, 2, 2).HasValue || findAndClickBoss(chupWindow, imgPhiMa1, 2, 2).HasValue || findAndClickBoss(chupWindow, imgPhiMa2, 2, 2).HasValue)
		{
			delay_100ms(8);
			return true;
		}
		return false;
	}

	private bool ScanBoss2(string boss)
	{
		Image chupWindow = CaptureHelper.CaptureWindow(hWnd);
		if (!(boss == "Phi Ma"))
		{
			if (!(boss == "Cự Ma"))
			{
				if (boss == "Cự Thú" && (findAndClickBoss(chupWindow, imgScanCuThu1, 2, 2).HasValue || findAndClickBoss(chupWindow, imgScanCuThu2, 2, 2).HasValue))
				{
					delay_100ms(8);
					return true;
				}
			}
			else if (findAndClickBoss(chupWindow, imgScanCuMa1, 2, 2).HasValue || findAndClickBoss(chupWindow, imgScanCuMa2, 2, 2).HasValue)
			{
				delay_100ms(8);
				return true;
			}
		}
		else if (findAndClickBoss(chupWindow, imgScanPhiMa1, 2, 2).HasValue || findAndClickBoss(chupWindow, imgScanPhiMa2, 2, 2).HasValue)
		{
			delay_100ms(8);
			return true;
		}
		return false;
	}

	private void ScanViTriBoss(string boss)
	{
		//IL_00ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_019d: Unknown result type (might be due to invalid IL or missing references)
		//IL_024e: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ff: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ab: Unknown result type (might be due to invalid IL or missing references)
		Image chupWindow = CaptureHelper.CaptureWindow(hWnd);
		if (!(boss == "Phi Ma"))
		{
			if (!(boss == "Cự Ma"))
			{
				if (!(boss == "Cự Thú"))
				{
					if (boss == "CM+CT")
					{
						if (!ViTriCuoiCT.HasValue && (getPointBoss(chupWindow, imgScanCuThu1).HasValue || getPointBoss(chupWindow, imgScanCuThu1).HasValue))
						{
							ViTriNhanVat_X = (int)ReadMemoryData(processID, myPointer, offset_ToaDoX);
							ViTriNhanVat_Y = (int)ReadMemoryData(processID, myPointer, offset_ToaDoY);
							ViTriCuoiCT = new Point(ViTriNhanVat_X, ViTriNhanVat_Y);
						}
						if (!ViTriCuoiCM.HasValue && (getPointBoss(chupWindow, imgScanCuMa1).HasValue || getPointBoss(chupWindow, imgScanCuMa2).HasValue))
						{
							ViTriNhanVat_X = (int)ReadMemoryData(processID, myPointer, offset_ToaDoX);
							ViTriNhanVat_Y = (int)ReadMemoryData(processID, myPointer, offset_ToaDoY);
							ViTriCuoiCM = new Point(ViTriNhanVat_X, ViTriNhanVat_Y);
						}
					}
				}
				else if (!ViTriCuoiCM.HasValue && (getPointBoss(chupWindow, imgScanCuMa1).HasValue || getPointBoss(chupWindow, imgScanCuMa2).HasValue))
				{
					ViTriNhanVat_X = (int)ReadMemoryData(processID, myPointer, offset_ToaDoX);
					ViTriNhanVat_Y = (int)ReadMemoryData(processID, myPointer, offset_ToaDoY);
					ViTriCuoiCM = new Point(ViTriNhanVat_X, ViTriNhanVat_Y);
				}
			}
			else if (!ViTriCuoiCT.HasValue && (getPointBoss(chupWindow, imgScanCuThu1).HasValue || getPointBoss(chupWindow, imgScanCuThu1).HasValue))
			{
				ViTriNhanVat_X = (int)ReadMemoryData(processID, myPointer, offset_ToaDoX);
				ViTriNhanVat_Y = (int)ReadMemoryData(processID, myPointer, offset_ToaDoY);
				ViTriCuoiCT = new Point(ViTriNhanVat_X, ViTriNhanVat_Y);
			}
		}
		else if (!ViTriCuoiPM.HasValue && (getPointBoss(chupWindow, imgScanPhiMa1).HasValue || getPointBoss(chupWindow, imgScanPhiMa2).HasValue))
		{
			ViTriNhanVat_X = (int)ReadMemoryData(processID, myPointer, offset_ToaDoX);
			ViTriNhanVat_Y = (int)ReadMemoryData(processID, myPointer, offset_ToaDoY);
			ViTriCuoiPM = new Point(ViTriNhanVat_X, ViTriNhanVat_Y);
		}
	}

	private string ScanNhiemVu2()
	{
		//IL_01ab: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b7: Unknown result type (might be due to invalid IL or missing references)
		//IL_01bc: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c5: Unknown result type (might be due to invalid IL or missing references)
		//IL_01cc: Unknown result type (might be due to invalid IL or missing references)
		//IL_04b2: Unknown result type (might be due to invalid IL or missing references)
		Image chupwindow = CaptureHelper.CaptureWindow(hWnd);
		if (!FindAndClick2(hWnd, chupwindow, pathTruMa + "/Q_NV_Nhanh.png", 30, 46).HasValue && !FindAndClick2(hWnd, chupwindow, pathTruMa + "/Q_NV_Nhanh3.png", 30, 46).HasValue)
		{
			FindAndClick(hWnd, pathTruMa + "/Q_NV_Nhanh2.png", 1, 1, "Mở 1");
			FindAndClick(hWnd, pathTruMa + "/Q_NV_Nhanh3.png", 1, 1, "Mở 2");
			delay_100ms(5);
			PressKey("ESC");
			MoQnhanh(stt: true);
			chupwindow = CaptureHelper.CaptureWindow(hWnd);
			if (!FindAndClick2(hWnd, chupwindow, pathTruMa + "/Q_NV_Nhanh.png", 30, 46).HasValue)
			{
				if (!FindAndClick2(hWnd, chupwindow, pathTruMa + "/Q_NV_Nhanh3.png", 30, 46).HasValue)
				{
					ReLog();
					hWnd = FindWindowHandle(null, accCheck);
					debugText("Tìm Flash");
					GetWindowThreadProcessId(hWnd, out processID);
					((Control)label6).Text = "ID: " + processID;
					RECT val = default(RECT);
					val = AutoControl.GetWindowRect(hWnd);
					SetWindowPos(hWnd, 0, val.Left, val.Top, 1066, 724, 2);
					((Control)groupBox4).Text = "Vị Trí Flash: " + val.Top + " x " + val.Left;
					for (int num = 9; num > 0; num--)
					{
						Bitmap image = ImageScanOpenCV.GetImage(pathKhac + "/VIP_" + num + ".png");
						if (ImageScanOpenCV.FindOutPoint(AvatarNV, image, 0.9).HasValue)
						{
							VIP = num;
							break;
						}
					}
					((Control)label11).Text = "VIP " + VIP;
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
					((Control)label12).Text = accMain;
					debugText("begin");
					bool flag = true;
					setupRun();
					while (!IsStop && flag)
					{
						while (!Bay())
						{
						}
						delay_100ms(10);
						if (WriteMemoryData(processID, myPointer, offset_FPS, 60.0))
						{
							AutoControl.SendClickOnPosition(hWnd, 58, 406, (EMouseKey)0, 1);
							Thread.Sleep(TimeSpan.FromSeconds(0.1));
							AutoControl.SendClickOnPosition(hWnd, 58, 470, (EMouseKey)0, 1);
							debugText("Write FPS: 60");
						}
						else
						{
							debugText("Write FPS False");
						}
						HideIconECT();
						FindAndClick(hWnd, pathKhac + "/Auto_button2.png", 5, 5, "X");
						PressKey("ESC");
						FindAndClick(hWnd, pathKhac + "/Auto_button1.png", 5, 5, "X");
						flag = false;
					}
					counter = 0;
				}
				return "Không";
			}
		}
		for (int j = 0; j < 5; j++)
		{
			delay_100ms(3);
			if (FindPoint(hWnd, pathTruMa + "/Boss_PhiMa.png").HasValue)
			{
				((Control)label2).Text = string.Concat(new string[5]
				{
					"Vòng-",
					Vong.ToString(),
					" Q-",
					NhiemVu.ToString(),
					" -Phi Ma"
				});
				return "Phi Ma";
			}
			if (FindPoint(hWnd, pathTruMa + "/Boss_CuMa.png").HasValue)
			{
				((Control)label2).Text = string.Concat(new string[5]
				{
					"Vòng-",
					Vong.ToString(),
					" Q-",
					NhiemVu.ToString(),
					" -Cự Ma"
				});
				return "Cự Ma";
			}
			if (FindPoint(hWnd, pathTruMa + "/Boss_CuThu.png").HasValue)
			{
				((Control)label2).Text = string.Concat(new string[5]
				{
					"Vòng-",
					Vong.ToString(),
					" Q-",
					NhiemVu.ToString(),
					" -Cự Thú"
				});
				return "Cự Thú";
			}
		}
		return "Không";
	}

	private string ScanNhiemVu()
	{
		FindAndClick(hWnd, pathTruMa + "/Boss_Tat.png", 1, 1, "Tă\u0301t");
		delay_100ms(3);
		FindAndClick(hWnd, pathTruMa + "/Boss_Tat.png", 1, 1, "Tă\u0301t");
		if (!FindPoint(hWnd, pathTruMa + "/Q_checkTruMa.png").HasValue)
		{
			PressKey("ESC");
			PressKey("Q");
			FindAndClick(hWnd, pathTruMa + "/Q_DaNhan.png", 5, 1, "NV đã nhận");
		}
		if (FindPoint(hWnd, pathTruMa + "/Q_checkTruMa.png").HasValue)
		{
			int num = 0;
			if (luuCheckBoss != 999)
			{
				num = luuCheckBoss - 1;
			}
			int i;
			while (true)
			{
				for (i = num; i < 30; i++)
				{
					AutoControl.SendClickOnPosition(hWnd, 417, 410 + i - 30, (EMouseKey)0, 1);
					delay_100ms(5);
					debugText(i.ToString());
					if (FindPoint(hWnd, pathTruMa + "/Boss_Tat.png").HasValue)
					{
						goto end_IL_010b;
					}
				}
				num = 0;
				PressKey("ESC");
				PressKey("Q");
				FindAndClick(hWnd, pathTruMa + "/Q_DaNhan.png", 5, 1, "NV đã nhận");
				continue;
				end_IL_010b:
				break;
			}
			luuCheckBoss = i;
			Image chupwindow = CaptureHelper.CaptureWindow(hWnd);
			if (FindPoint(hWnd, pathTruMa + "/Boss_PhiMa.png").HasValue)
			{
				FindAndClick2(hWnd, chupwindow, pathTruMa + "/Boss_Tat.png", 1, 1);
				debugText(string.Concat(new string[5]
				{
					"Vòng-",
					Vong.ToString(),
					" Q-",
					NhiemVu.ToString(),
					" -Phi Ma"
				}));
				((Control)label2).Text = string.Concat(new string[5]
				{
					"Vòng-",
					Vong.ToString(),
					" Q-",
					NhiemVu.ToString(),
					" -Phi Ma"
				});
				return "Phi Ma";
			}
			if (FindPoint(hWnd, pathTruMa + "/Boss_CuMa.png").HasValue)
			{
				FindAndClick2(hWnd, chupwindow, pathTruMa + "/Boss_Tat.png", 1, 1);
				debugText(string.Concat(new string[5]
				{
					"Vòng-",
					Vong.ToString(),
					" Q-",
					NhiemVu.ToString(),
					" -Cự Ma"
				}));
				((Control)label2).Text = string.Concat(new string[5]
				{
					"Vòng-",
					Vong.ToString(),
					" Q-",
					NhiemVu.ToString(),
					" -Cự Ma"
				});
				return "Cự Ma";
			}
			if (FindPoint(hWnd, pathTruMa + "/Boss_CuThu.png").HasValue)
			{
				FindAndClick2(hWnd, chupwindow, pathTruMa + "/Boss_Tat.png", 1, 1);
				debugText(string.Concat(new string[5]
				{
					"Vòng-",
					Vong.ToString(),
					" Q-",
					NhiemVu.ToString(),
					" -Cự Thú"
				}));
				((Control)label2).Text = string.Concat(new string[5]
				{
					"Vòng-",
					Vong.ToString(),
					" Q-",
					NhiemVu.ToString(),
					" -Cự Thú"
				});
				return "Cự Thú";
			}
		}
		return "Không";
	}

	private string ScanNhiemVu3()
	{
		int num = 0;
		while (true)
		{
			if (FindPoint(hWnd, pathTruMa + "/Q_PM.png").HasValue)
			{
				((Control)label2).Text = string.Concat(new string[5]
				{
					"Vòng-",
					Vong.ToString(),
					" Q-",
					NhiemVu.ToString(),
					" -Phi Ma"
				});
				return "Phi Ma";
			}
			if (FindPoint(hWnd, pathTruMa + "/Q_CM.png").HasValue)
			{
				((Control)label2).Text = string.Concat(new string[5]
				{
					"Vòng-",
					Vong.ToString(),
					" Q-",
					NhiemVu.ToString(),
					" -Cự Ma"
				});
				return "Cự Ma";
			}
			if (FindPoint(hWnd, pathTruMa + "/Q_CT.png").HasValue)
			{
				((Control)label2).Text = string.Concat(new string[5]
				{
					"Vòng-",
					Vong.ToString(),
					" Q-",
					NhiemVu.ToString(),
					" -Cự Thú"
				});
				return "Cự Thú";
			}
			num++;
			if (num >= 5)
			{
				break;
			}
			PressKey("Q");
		}
		return "Không";
	}

	private bool PhucHoi()
	{
		//IL_0055: Unknown result type (might be due to invalid IL or missing references)
		//IL_005a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0067: Unknown result type (might be due to invalid IL or missing references)
		//IL_006c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0092: Unknown result type (might be due to invalid IL or missing references)
		//IL_0097: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a9: Unknown result type (might be due to invalid IL or missing references)
		//IL_00cf: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e1: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0184: Unknown result type (might be due to invalid IL or missing references)
		//IL_0189: Unknown result type (might be due to invalid IL or missing references)
		//IL_0196: Unknown result type (might be due to invalid IL or missing references)
		//IL_019b: Unknown result type (might be due to invalid IL or missing references)
		//IL_01db: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_024a: Unknown result type (might be due to invalid IL or missing references)
		//IL_024f: Unknown result type (might be due to invalid IL or missing references)
		//IL_025c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0261: Unknown result type (might be due to invalid IL or missing references)
		PressKey("ESC");
		PressKey("Q");
		Point value;
		Point? val2;
		while (true)
		{
			Point? val = FindAndClick(hWnd, pathTruMa + "/Q_DaNhan.png", 5, 1, "NV đã nhận");
			if (val.HasValue)
			{
				System.IntPtr intPtr = hWnd;
				value = val.Value;
				int num = ((Point)(ref value)).X + 50;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr, num, ((Point)(ref value)).Y + 40 - 30, (EMouseKey)0, 1);
				delay_100ms(3);
				System.IntPtr intPtr2 = hWnd;
				value = val.Value;
				int num2 = ((Point)(ref value)).X + 50;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr2, num2, ((Point)(ref value)).Y + 60 - 30, (EMouseKey)0, 1);
				delay_100ms(3);
				System.IntPtr intPtr3 = hWnd;
				value = val.Value;
				int num3 = ((Point)(ref value)).X + 60;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr3, num3, ((Point)(ref value)).Y + 310 - 30, (EMouseKey)0, 1);
				delay_100ms(3);
				FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 2, 2, "Press");
				val2 = FindAndClick(hWnd, pathTruMa + "/Q_LienHoan.png", 5, 1, "NV liên hoàn");
				System.IntPtr intPtr4 = hWnd;
				value = val2.Value;
				int num4 = ((Point)(ref value)).X - 30;
				value = val2.Value;
				AutoControl.SendClickOnPosition(intPtr4, num4, ((Point)(ref value)).Y + 30 - 30, (EMouseKey)0, 1);
				delay_100ms(3);
				if (val2.HasValue)
				{
					break;
				}
			}
			else
			{
				FindAndClick(hWnd, pathTruMa + "/Q_LienHoan.png", 5, 1, "NV liên hoàn");
			}
		}
		for (int i = 2; i < 8; i++)
		{
			System.IntPtr intPtr5 = hWnd;
			value = val2.Value;
			int num5 = ((Point)(ref value)).X - 30;
			value = val2.Value;
			AutoControl.SendClickUpOnPosition(intPtr5, num5, ((Point)(ref value)).Y + 30 * i - 30, (EMouseKey)0, 1);
			delay_100ms(3);
			if (FindPoint(hWnd, pathTruMa + "/Q_TruMa.png").HasValue)
			{
				System.IntPtr intPtr6 = hWnd;
				value = val2.Value;
				int num6 = ((Point)(ref value)).X - 30;
				value = val2.Value;
				AutoControl.SendClickOnPosition(intPtr6, num6, ((Point)(ref value)).Y + 30 * i - 30, (EMouseKey)0, 1);
				delay_100ms(3);
				if (!FindPoint(hWnd, pathLuyenPet + "/Q_Bo.png").HasValue)
				{
					FindAndClick(hWnd, pathTruMa + "/Q_PhucHoi.png", 5, 1, "Phục Hồi");
					NhiemVu = 1;
					return true;
				}
				return false;
			}
		}
		return false;
	}

	private bool PhucHoi2()
	{
		//IL_009d: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_00af: Unknown result type (might be due to invalid IL or missing references)
		//IL_00b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_00da: Unknown result type (might be due to invalid IL or missing references)
		//IL_00df: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0117: Unknown result type (might be due to invalid IL or missing references)
		//IL_011c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0129: Unknown result type (might be due to invalid IL or missing references)
		//IL_012e: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c7: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d9: Unknown result type (might be due to invalid IL or missing references)
		Point value;
		Point? val2;
		while (true)
		{
			PressKey("ESC");
			PressKey("Q");
			FindAndClick(hWnd, pathTruMa + "/Q_DaNhan.png", 5, 1, "NV đã nhận");
			FindAndClick(hWnd, pathTruMa + "/Q_LienHoan.png", 5, 1, "NV liên hoàn");
			Point? val = FindAndClick(hWnd, pathTruMa + "/Q_DaNhan.png", 5, 1, "NV đã nhận");
			if (val.HasValue)
			{
				System.IntPtr intPtr = hWnd;
				value = val.Value;
				int num = ((Point)(ref value)).X + 50;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr, num, ((Point)(ref value)).Y + 40 - 30, (EMouseKey)0, 1);
				delay_100ms(3);
				System.IntPtr intPtr2 = hWnd;
				value = val.Value;
				int num2 = ((Point)(ref value)).X + 50;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr2, num2, ((Point)(ref value)).Y + 60 - 30, (EMouseKey)0, 1);
				delay_100ms(3);
				System.IntPtr intPtr3 = hWnd;
				value = val.Value;
				int num3 = ((Point)(ref value)).X + 60;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr3, num3, ((Point)(ref value)).Y + 310 - 30, (EMouseKey)0, 1);
				delay_100ms(3);
				FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 2, 2, "Press");
				val2 = FindAndClick(hWnd, pathTruMa + "/Q_LienHoan.png", 5, 1, "NV liên hoàn");
				if (val2.HasValue)
				{
					break;
				}
			}
		}
		for (int i = 1; i < 8; i++)
		{
			System.IntPtr intPtr4 = hWnd;
			value = val2.Value;
			int num4 = ((Point)(ref value)).X - 30;
			value = val2.Value;
			AutoControl.SendClickOnPosition(intPtr4, num4, ((Point)(ref value)).Y + 30 * i - 30, (EMouseKey)0, 1);
			delay_100ms(3);
			if (FindPoint(hWnd, pathTruMa + "/Q_TruMa.png").HasValue)
			{
				FindAndClick(hWnd, pathTruMa + "/Q_PhucHoi.png", 5, 1, "Phục Hồi");
				NhiemVu = 1;
				return true;
			}
		}
		return false;
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

	private void PhuToiMap(string maps)
	{
		while (!FindPoint(hWnd, pathMaps + "/map2.png").HasValue)
		{
			PressKey("M");
		}
		if (!(maps == "Trầm Thụy Lâm"))
		{
			if (!(maps == "Đông Huyền Thành"))
			{
				if (!(maps == "Bàng Bối Thành"))
				{
					if (!(maps == "Tiên Lạp Thành"))
					{
						if (maps == "Tinh Linh Thành")
						{
							SendClickUpOnPosition(hWnd, 590, 205, (EMouseKey)0);
							delay_100ms(2);
							SendClickOnPosition(hWnd, 590, 205, (EMouseKey)0);
						}
					}
					else
					{
						SendClickUpOnPosition(hWnd, 702, 435, (EMouseKey)0);
						delay_100ms(2);
						SendClickOnPosition(hWnd, 702, 435, (EMouseKey)0);
					}
				}
				else
				{
					SendClickUpOnPosition(hWnd, 341, 517, (EMouseKey)0);
					delay_100ms(2);
					SendClickOnPosition(hWnd, 341, 517, (EMouseKey)0);
				}
			}
			else
			{
				SendClickUpOnPosition(hWnd, 515, 315, (EMouseKey)0);
				delay_100ms(2);
				SendClickOnPosition(hWnd, 515, 315, (EMouseKey)0);
			}
		}
		else
		{
			SendClickUpOnPosition(hWnd, 617, 174, (EMouseKey)0);
			delay_100ms(2);
			SendClickOnPosition(hWnd, 617, 174, (EMouseKey)0);
		}
		delay_100ms(2);
		FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 1, 1, "Có");
		if (FindAndClick(hWnd, pathKhac + "/Auto_Nhom.png", 1, 1, "Nhóm").HasValue)
		{
			delay_100ms(5);
			FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 1, 1, "Có");
		}
	}

	private void CheckSkin()
	{
		PressKey("ESC");
		AutoControl.SendClickOnPosition(hWnd, 600, 423, (EMouseKey)0, 1);
		delay_100ms(5);
		PressKey("P");
		while (!FindPoint(hWnd, pathTacVu + "/ChienDau.png").HasValue)
		{
			PressKey("ESC");
			delay_100ms(3);
			PressKey("P");
		}
		FindAndClick2(hWnd, pathTacVu + "/ChienDau.png", -10, -75, 50, 10, pathTruMa + "/Err2.png", "Chất Lượng Cao");
		PressKey("ESC");
		AutoControl.SendClickOnPosition(hWnd, 600, 423, (EMouseKey)0, 1);
		delay_100ms(5);
		FindAndClick(hWnd, pathKhac + "/Icon_NhanVat.png", 0, 0, "Mở Nhân Vật");
		FindAndClick(hWnd, pathKhac + "/Skin_TrangBi.png", 0, 0, "Tìm tab Trang Bị");
		FindAndClick2(hWnd, pathKhac + "/Skin_TuDo.png", -10, -100, 50, 50, pathTruMa + "/Err1.png", "Mở Skin");
		PressKey("ESC");
		AutoControl.SendClickOnPosition(hWnd, 600, 423, (EMouseKey)0, 1);
		delay_100ms(5);
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
		//IL_010f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0114: Unknown result type (might be due to invalid IL or missing references)
		//IL_012b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0130: Unknown result type (might be due to invalid IL or missing references)
		//IL_02aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_02af: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_02bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_0355: Unknown result type (might be due to invalid IL or missing references)
		//IL_035a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0365: Unknown result type (might be due to invalid IL or missing references)
		//IL_036a: Unknown result type (might be due to invalid IL or missing references)
		//IL_03dc: Unknown result type (might be due to invalid IL or missing references)
		//IL_03e1: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_03f1: Unknown result type (might be due to invalid IL or missing references)
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
		debugText(((object)val2/*cast due to .constrained prefix*/).ToString());
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
		PressKey("ESC");
		PressKey("Q");
		delay_100ms(10);
		val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
		if (val.HasValue)
		{
			System.IntPtr intPtr3 = hWnd;
			value = val.Value;
			int x2 = ((Point)(ref value)).X;
			value = val.Value;
			AutoControl.SendDragAndDropOnPosition(intPtr3, x2, ((Point)(ref value)).Y - 30, 100, 230, setupStepX, setupStepY, num);
		}
		delay_100ms(5);
		PressKey("ESC");
		FindAndClick(hWnd, pathKhac + "/setupRun_TL.png", 1, 1, "Tinh Linh");
		delay_100ms(10);
		val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
		if (val.HasValue)
		{
			System.IntPtr intPtr4 = hWnd;
			value = val.Value;
			int x3 = ((Point)(ref value)).X;
			value = val.Value;
			AutoControl.SendDragAndDropOnPosition(intPtr4, x3, ((Point)(ref value)).Y - 30, 84, 26, setupStepX, setupStepY, num);
		}
		PressKey("ESC");
		PressKey("Z");
		delay_100ms(5);
		val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
		if (val.HasValue)
		{
			System.IntPtr intPtr5 = hWnd;
			value = val.Value;
			int x4 = ((Point)(ref value)).X;
			value = val.Value;
			AutoControl.SendDragAndDropOnPosition(intPtr5, x4, ((Point)(ref value)).Y - 30, 84, 26, setupStepX, setupStepY, num);
		}
		PressKey("ESC");
	}

	private void MoQnhanh(bool stt)
	{
		//IL_0056: Unknown result type (might be due to invalid IL or missing references)
		//IL_005b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0065: Unknown result type (might be due to invalid IL or missing references)
		//IL_006a: Unknown result type (might be due to invalid IL or missing references)
		PressKey("ESC");
		PressKey("Q");
		delay_100ms(10);
		Point? val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
		if (val.HasValue)
		{
			System.IntPtr intPtr = hWnd;
			Point value = val.Value;
			int x = ((Point)(ref value)).X;
			value = val.Value;
			AutoControl.SendDragAndDropOnPosition(intPtr, x, ((Point)(ref value)).Y - 30, 100, 230, 10, 10, 0.05);
			delay_100ms(5);
			if (stt)
			{
				FindAndClick(hWnd, pathKhac + "/setupRun_QN.png", 1, 1, "Q nhanh");
			}
			else if (!FindPoint(hWnd, pathKhac + "/setupRun_QN.png").HasValue)
			{
				SendClickOnPosition(hWnd, 530, 273, (EMouseKey)0);
			}
			delay_100ms(5);
			PressKey("ESC");
		}
	}

	private void setupRun2()
	{
		//IL_0082: Unknown result type (might be due to invalid IL or missing references)
		//IL_0087: Unknown result type (might be due to invalid IL or missing references)
		//IL_0092: Unknown result type (might be due to invalid IL or missing references)
		//IL_0097: Unknown result type (might be due to invalid IL or missing references)
		//IL_010b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0110: Unknown result type (might be due to invalid IL or missing references)
		//IL_0127: Unknown result type (might be due to invalid IL or missing references)
		//IL_012c: Unknown result type (might be due to invalid IL or missing references)
		//IL_020a: Unknown result type (might be due to invalid IL or missing references)
		//IL_020f: Unknown result type (might be due to invalid IL or missing references)
		//IL_021a: Unknown result type (might be due to invalid IL or missing references)
		//IL_021f: Unknown result type (might be due to invalid IL or missing references)
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
		debugText(((object)val2/*cast due to .constrained prefix*/).ToString());
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
		}
		delay_100ms(5);
		val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
		if (val.HasValue)
		{
			System.IntPtr intPtr3 = hWnd;
			value = val.Value;
			int x2 = ((Point)(ref value)).X;
			value = val.Value;
			AutoControl.SendDragAndDropOnPosition(intPtr3, x2, ((Point)(ref value)).Y - 30, 84, 26, setupStepX, setupStepY, num);
		}
	}

	private bool ReLog()
	{
		Process processById = Process.GetProcessById((int)processID);
		processById.Kill();
		delay_100ms(30);
		logAcc(accCheck, link);
		hWnd = FindWindowHandle(null, accCheck);
		debugText("tải game");
		int num = 0;
		while (!FindPoint(hWnd, pathKhac + "/Log_iconVPT.png").HasValue)
		{
			num++;
			if (num >= 240)
			{
				return false;
			}
			delay_100ms(5);
		}
		debugText("đang tải game");
		num = 0;
		while (FindPoint(hWnd, pathKhac + "/Log_iconVPT.png").HasValue)
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
		while (!reConnect())
		{
			num++;
			if (num >= 600)
			{
				return false;
			}
			debugText("kết nối - " + num);
			delay_100ms(5);
		}
		delay_100ms(5);
		return true;
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

	private bool reConnect()
	{
		//IL_052e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0533: Unknown result type (might be due to invalid IL or missing references)
		//IL_0541: Unknown result type (might be due to invalid IL or missing references)
		//IL_0546: Unknown result type (might be due to invalid IL or missing references)
		//IL_0562: Unknown result type (might be due to invalid IL or missing references)
		//IL_0567: Unknown result type (might be due to invalid IL or missing references)
		//IL_0575: Unknown result type (might be due to invalid IL or missing references)
		//IL_057a: Unknown result type (might be due to invalid IL or missing references)
		//IL_03d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_03d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_03f0: Unknown result type (might be due to invalid IL or missing references)
		//IL_03f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0320: Unknown result type (might be due to invalid IL or missing references)
		//IL_0325: Unknown result type (might be due to invalid IL or missing references)
		//IL_033c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0341: Unknown result type (might be due to invalid IL or missing references)
		//IL_026c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0271: Unknown result type (might be due to invalid IL or missing references)
		//IL_0288: Unknown result type (might be due to invalid IL or missing references)
		//IL_028d: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b8: Unknown result type (might be due to invalid IL or missing references)
		//IL_01bd: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_089b: Unknown result type (might be due to invalid IL or missing references)
		//IL_08a0: Unknown result type (might be due to invalid IL or missing references)
		//IL_08ab: Unknown result type (might be due to invalid IL or missing references)
		//IL_08b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_042e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0433: Unknown result type (might be due to invalid IL or missing references)
		//IL_044a: Unknown result type (might be due to invalid IL or missing references)
		//IL_044f: Unknown result type (might be due to invalid IL or missing references)
		//IL_037a: Unknown result type (might be due to invalid IL or missing references)
		//IL_037f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0396: Unknown result type (might be due to invalid IL or missing references)
		//IL_039b: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_02cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0212: Unknown result type (might be due to invalid IL or missing references)
		//IL_0217: Unknown result type (might be due to invalid IL or missing references)
		//IL_022e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0233: Unknown result type (might be due to invalid IL or missing references)
		//IL_0485: Unknown result type (might be due to invalid IL or missing references)
		//IL_048a: Unknown result type (might be due to invalid IL or missing references)
		//IL_04a1: Unknown result type (might be due to invalid IL or missing references)
		//IL_04a6: Unknown result type (might be due to invalid IL or missing references)
		//IL_09bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_09ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ad3: Unknown result type (might be due to invalid IL or missing references)
		if (FindAndClick(hWnd, pathKhac + "/Log_OK.png", 2, 2, "OK").HasValue || FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 2, 2, "Có").HasValue)
		{
			delay_100ms(50);
		}
		if (!FindPoint(hWnd, pathKhac + "/Log_Check.png").HasValue)
		{
			return false;
		}
		Point? val = FindPoint(hWnd, pathKhac + "/Log_ChonKenh.png");
		Point value2;
		if (val.HasValue)
		{
			decimal value = numericUpDownKenh.Value;
			decimal num = value;
			if (num <= 4m)
			{
				if (num <= 2m)
				{
					if (!(num == 1m))
					{
						if (!(num == 2m))
						{
							goto IL_047d;
						}
						System.IntPtr intPtr = hWnd;
						value2 = val.Value;
						int num2 = ((Point)(ref value2)).X - 622 + 530;
						value2 = val.Value;
						AutoControl.SendClickOnPosition(intPtr, num2, ((Point)(ref value2)).Y - 227 + 301 - 30, (EMouseKey)0, 1);
						debugText("Kênh 2");
					}
					else
					{
						System.IntPtr intPtr2 = hWnd;
						value2 = val.Value;
						int num3 = ((Point)(ref value2)).X - 622 + 530;
						value2 = val.Value;
						AutoControl.SendClickOnPosition(intPtr2, num3, ((Point)(ref value2)).Y - 227 + 268 - 30, (EMouseKey)0, 1);
						debugText("Kênh 1");
					}
				}
				else if (!(num == 3m))
				{
					if (!(num == 4m))
					{
						goto IL_047d;
					}
					System.IntPtr intPtr3 = hWnd;
					value2 = val.Value;
					int num4 = ((Point)(ref value2)).X - 622 + 530;
					value2 = val.Value;
					AutoControl.SendClickOnPosition(intPtr3, num4, ((Point)(ref value2)).Y - 227 + 370 - 30, (EMouseKey)0, 1);
					debugText("Kênh 4");
				}
				else
				{
					System.IntPtr intPtr4 = hWnd;
					value2 = val.Value;
					int num5 = ((Point)(ref value2)).X - 622 + 530;
					value2 = val.Value;
					AutoControl.SendClickOnPosition(intPtr4, num5, ((Point)(ref value2)).Y - 227 + 336 - 30, (EMouseKey)0, 1);
					debugText("Kênh 3");
				}
			}
			else if (num <= 6m)
			{
				if (!(num == 5m))
				{
					if (!(num == 6m))
					{
						goto IL_047d;
					}
					System.IntPtr intPtr5 = hWnd;
					value2 = val.Value;
					int num6 = ((Point)(ref value2)).X - 622 + 530;
					value2 = val.Value;
					AutoControl.SendClickOnPosition(intPtr5, num6, ((Point)(ref value2)).Y - 227 + 438 - 30, (EMouseKey)0, 1);
					debugText("Kênh 6");
				}
				else
				{
					System.IntPtr intPtr6 = hWnd;
					value2 = val.Value;
					int num7 = ((Point)(ref value2)).X - 622 + 530;
					value2 = val.Value;
					AutoControl.SendClickOnPosition(intPtr6, num7, ((Point)(ref value2)).Y - 227 + 404 - 30, (EMouseKey)0, 1);
					debugText("Kênh 5");
				}
			}
			else if (!(num == 7m))
			{
				if (!(num == 8m))
				{
					goto IL_047d;
				}
				System.IntPtr intPtr7 = hWnd;
				value2 = val.Value;
				int num8 = ((Point)(ref value2)).X - 622 + 530;
				value2 = val.Value;
				AutoControl.SendClickOnPosition(intPtr7, num8, ((Point)(ref value2)).Y - 227 + 506 - 30, (EMouseKey)0, 1);
				debugText("Kênh 8");
			}
			else
			{
				System.IntPtr intPtr8 = hWnd;
				value2 = val.Value;
				int num9 = ((Point)(ref value2)).X - 622 + 530;
				value2 = val.Value;
				AutoControl.SendClickOnPosition(intPtr8, num9, ((Point)(ref value2)).Y - 227 + 471 - 30, (EMouseKey)0, 1);
				debugText("Kênh 7");
			}
			goto IL_04d4;
		}
		goto IL_04de;
		IL_047d:
		System.IntPtr intPtr9 = hWnd;
		value2 = val.Value;
		int num10 = ((Point)(ref value2)).X - 622 + 530;
		value2 = val.Value;
		AutoControl.SendClickOnPosition(intPtr9, num10, ((Point)(ref value2)).Y - 227 + 268 - 30, (EMouseKey)0, 1);
		debugText("lỗi");
		goto IL_04d4;
		IL_04d4:
		delay_100ms(50);
		goto IL_04de;
		IL_04de:
		if (checkBoxLog_BB.Checked)
		{
			Point? val2 = FindAndClick(hWnd, pathKhac + "/Log_BatBuoc.png", 2, 2, "Log - bắt buộc");
			if (val2.HasValue)
			{
				System.IntPtr intPtr10 = hWnd;
				value2 = val2.Value;
				int num11 = ((Point)(ref value2)).X - 50;
				value2 = val2.Value;
				AutoControl.SendClickOnPosition(intPtr10, num11, ((Point)(ref value2)).Y - 30, (EMouseKey)0, 1);
				System.IntPtr intPtr11 = hWnd;
				value2 = val2.Value;
				int num12 = ((Point)(ref value2)).X - 50;
				value2 = val2.Value;
				AutoControl.SendClickOnPosition(intPtr11, num12, ((Point)(ref value2)).Y - 30, (EMouseKey)0, 1);
				delay_100ms(50);
			}
		}
		else
		{
			FindAndClick(hWnd, pathKhac + "/Log_BatDau.png", 2, 2, "Log - bắt đầu");
			PressKey("OK");
			PressKey("OK");
			delay_100ms(20);
		}
		if (FindPoint(hWnd, pathKhac + "/Log_RoiKhoi.png").HasValue)
		{
			decimal value3 = numericUpDownNV.Value;
			decimal num13 = value3;
			if (num13 <= 3m)
			{
				if (!(num13 == 1m))
				{
					if (!(num13 == 2m))
					{
						if (num13 == 3m)
						{
							AutoControl.SendClickOnPosition(hWnd, 291, 465, (EMouseKey)0, 1);
							delay_100ms(3);
							AutoControl.SendClickOnPosition(hWnd, 670, 470, (EMouseKey)0, 1);
							debugText("Nhân Vật 3");
						}
					}
					else
					{
						AutoControl.SendClickOnPosition(hWnd, 291, 465, (EMouseKey)0, 1);
						delay_100ms(3);
						AutoControl.SendClickOnPosition(hWnd, 530, 470, (EMouseKey)0, 1);
						debugText("Nhân Vật 2");
					}
				}
				else
				{
					AutoControl.SendClickOnPosition(hWnd, 291, 465, (EMouseKey)0, 1);
					delay_100ms(3);
					AutoControl.SendClickOnPosition(hWnd, 400, 470, (EMouseKey)0, 1);
					debugText("Nhân Vật 1");
				}
			}
			else if (!(num13 == 4m))
			{
				if (!(num13 == 5m))
				{
					if (num13 == 6m)
					{
						AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
						delay_100ms(3);
						AutoControl.SendClickOnPosition(hWnd, 670, 470, (EMouseKey)0, 1);
						debugText("Nhân Vật 6");
					}
				}
				else
				{
					AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
					delay_100ms(3);
					AutoControl.SendClickOnPosition(hWnd, 530, 470, (EMouseKey)0, 1);
					debugText("Nhân Vật 5");
				}
			}
			else
			{
				AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
				delay_100ms(3);
				AutoControl.SendClickOnPosition(hWnd, 400, 470, (EMouseKey)0, 1);
				debugText("Nhân Vật 4");
			}
			delay_100ms(5);
		}
		delay_100ms(5);
		Point? val3 = FindPoint(hWnd, pathKhac + "/Log_VaoGame.png");
		if (val3.HasValue)
		{
			System.IntPtr intPtr12 = hWnd;
			value2 = val3.Value;
			int x = ((Point)(ref value2)).X;
			value2 = val3.Value;
			AutoControl.SendClickOnPosition(intPtr12, x, ((Point)(ref value2)).Y - 30, (EMouseKey)0, 1);
			int num14 = 0;
			delay_100ms(30);
			while (!FindPoint(hWnd, pathKhac + "/Log_RatTot.png").HasValue && !FindPoint(hWnd, pathKhac + "/Log_BinhThuong.png").HasValue && !FindPoint(hWnd, pathKhac + "/Log_Tot.png").HasValue)
			{
				num14++;
				if (num14 >= 1200)
				{
					return false;
				}
				debugText("check vào game - " + num14);
				delay_100ms(5);
			}
			num14 = 0;
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
				if (ImageScanOpenCV.FindOutPoint(image, val6, 0.9).HasValue)
				{
					break;
				}
				num14++;
				if (num14 >= 100)
				{
					return false;
				}
				debugText("check vào load game - " + num14);
				delay_100ms(30);
			}
			debugText("Vào Game Xong");
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
			setupRun();
			return true;
		}
		return false;
	}

	private bool BoNVKhongLienQuan(string pathPhucHoi)
	{
		//IL_0085: Unknown result type (might be due to invalid IL or missing references)
		//IL_008a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0097: Unknown result type (might be due to invalid IL or missing references)
		//IL_009c: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c7: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a9: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_01bb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0216: Unknown result type (might be due to invalid IL or missing references)
		//IL_021b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0228: Unknown result type (might be due to invalid IL or missing references)
		//IL_022d: Unknown result type (might be due to invalid IL or missing references)
		Point? val;
		while (true)
		{
			FindAndClick(hWnd, pathLuyenPet + "/Q_DaNhan.png", 5, 1, "NV đã nhận");
			FindAndClick(hWnd, pathLuyenPet + "/Q_LienHoan.png", 5, 1, "NV liên hoàn");
			val = FindAndClick(hWnd, pathLuyenPet + "/Q_DaNhan.png", 5, 1, "NV đã nhận");
			if (val.HasValue)
			{
				break;
			}
			PressKey("ESC");
			PressKey("Q");
		}
		System.IntPtr intPtr = hWnd;
		Point value = val.Value;
		int num = ((Point)(ref value)).X + 50;
		value = val.Value;
		AutoControl.SendClickOnPosition(intPtr, num, ((Point)(ref value)).Y + 40 - 30, (EMouseKey)0, 1);
		delay_100ms(3);
		System.IntPtr intPtr2 = hWnd;
		value = val.Value;
		int num2 = ((Point)(ref value)).X + 50;
		value = val.Value;
		AutoControl.SendClickOnPosition(intPtr2, num2, ((Point)(ref value)).Y + 60 - 30, (EMouseKey)0, 1);
		delay_100ms(3);
		if (!FindPoint(hWnd, pathBangHoi + "/Q_Bang.png").HasValue && !FindPoint(hWnd, pathLuyenPet + "/Q_Pet.png").HasValue && !FindPoint(hWnd, pathTruMa + "/Q_TM.png").HasValue && !FindPoint(hWnd, pathTacVu + "/Q_200.png").HasValue)
		{
			System.IntPtr intPtr3 = hWnd;
			value = val.Value;
			int num3 = ((Point)(ref value)).X + 60;
			value = val.Value;
			AutoControl.SendClickOnPosition(intPtr3, num3, ((Point)(ref value)).Y + 310 - 30, (EMouseKey)0, 1);
			delay_100ms(3);
			FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 2, 2, "Press");
			return false;
		}
		for (int i = 0; i < 10; i++)
		{
			System.IntPtr intPtr4 = hWnd;
			value = val.Value;
			int num4 = ((Point)(ref value)).X + 50;
			value = val.Value;
			AutoControl.SendClickOnPosition(intPtr4, num4, ((Point)(ref value)).Y + i * 20 + 60 - 30, (EMouseKey)0, 1);
			delay_100ms(3);
			if (FindPoint(hWnd, pathPhucHoi).HasValue)
			{
				return true;
			}
		}
		return false;
	}

	private void TruMa_Load(object sender, EventArgs e)
	{
		//IL_000f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0019: Expected O, but got Unknown
		//IL_066a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0290: Unknown result type (might be due to invalid IL or missing references)
		//IL_073a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0744: Expected O, but got Unknown
		//IL_0750: Unknown result type (might be due to invalid IL or missing references)
		//IL_075a: Expected O, but got Unknown
		//IL_031b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0327: Unknown result type (might be due to invalid IL or missing references)
		//IL_032c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0334: Unknown result type (might be due to invalid IL or missing references)
		//IL_033a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0392: Unknown result type (might be due to invalid IL or missing references)
		//IL_03c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0232: Unknown result type (might be due to invalid IL or missing references)
		//IL_0239: Expected O, but got Unknown
		Login login = new Login();
		((Form)login).Closed += (EventHandler)([CompilerGenerated] (object? s, EventArgs args) =>
		{
			((Form)this).Close();
		});
		pictureBox2.Image = (Image)(object)ImageScanOpenCV.GetImage(pathKhac + "/AutoLog_iconV.png");
		autoRun = Program.AppMain.autoRun;
		Program.AppMain.autoRun = false;
		link = Program.AppMain.link;
		nameUser = Program.AppMain.nameUser;
		enableDebug = Settings.Default.enableDebug;
		if (enableDebug)
		{
			System.DateTime now = System.DateTime.Now;
			nameFolderDebug = now.Year + now.Month.ToString("D2") + now.Day.ToString("D2");
			if (Settings.Default.fileDebug)
			{
				nameFileDebug = "truma.txt";
			}
			else
			{
				nameFileDebug = string.Concat(new string[5]
				{
					"truma",
					now.Hour.ToString("D2"),
					now.Minute.ToString("D2"),
					now.Second.ToString("D2"),
					".txt"
				});
			}
			if (!File.Exists(string.Concat(new string[7] { pathData, "/Debug/", nameFolderDebug, "/", nameUser, "/", nameFileDebug })))
			{
				Directory.CreateDirectory(string.Concat(new string[5] { pathData, "/Debug/", nameFolderDebug, "/", nameUser }));
			}
			TextWriter val = (TextWriter)new StreamWriter(string.Concat(new string[7] { pathData, "/Debug/", nameFolderDebug, "/", nameUser, "/", nameFileDebug }));
			val.WriteLine("BMx-Tool VPT [v" + Program.AppMain.version + "]");
			val.Close();
		}
		accCheck = Program.AppMain.nameFlash;
		((Control)this).Text = "[" + accCheck + "] BMx Tru Ma";
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
		hWnd = FindWindowHandle(null, accCheck);
		debugText("Tìm Flash");
		GetWindowThreadProcessId(hWnd, out processID);
		((Control)label6).Text = "ID: " + processID;
		RECT val2 = default(RECT);
		val2 = AutoControl.GetWindowRect(hWnd);
		SetWindowPos(hWnd, 0, val2.Left, val2.Top, 1066, 724, 2);
		((Control)groupBox4).Text = "Vị Trí Flash: " + val2.Top + " x " + val2.Left;
		Image val3 = CaptureHelper.CaptureWindow(hWnd);
		Rectangle val4 = default(Rectangle);
		((Rectangle)(ref val4)).X = 13;
		((Rectangle)(ref val4)).Y = 49;
		((Rectangle)(ref val4)).Width = 54;
		((Rectangle)(ref val4)).Height = 52;
		AvatarNV = CaptureHelper.CropImage(val3, val4);
		pictureBox1.Image = (Image)(object)AvatarNV;
		System.IntPtr hicon = AvatarNV.GetHicon();
		Icon icon = Icon.FromHandle(hicon);
		((Form)this).Icon = icon;
		for (int num = 9; num > 0; num--)
		{
			Bitmap image = ImageScanOpenCV.GetImage(pathKhac + "/VIP_" + num + ".png");
			if (ImageScanOpenCV.FindOutPoint(AvatarNV, image, 0.9).HasValue)
			{
				VIP = num;
				break;
			}
		}
		((Control)label11).Text = "VIP " + VIP;
		for (int num2 = 1; num2 < 13; num2++)
		{
			Bitmap image2 = ImageScanOpenCV.GetImage(pathKhac + "/Avatar_Main" + num2 + ".png");
			if (ImageScanOpenCV.FindOutPoint(AvatarNV, image2, 0.9).HasValue)
			{
				switch (num2)
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
		((Control)label12).Text = accMain;
		int num3 = (int)ReadMemoryData(processID, myPointer, offset_FPS);
		if (num3 != 0)
		{
			numericUpDownFPS.Value = decimal.op_Implicit(num3);
		}
		else
		{
			debugText("Memory False");
		}
		try
		{
			loadSetting();
		}
		catch (System.Exception)
		{
			MessageBox.Show("Không Tìm Thấy Bản Lưu Thiết Lập " + ((Control)this).Text + ". Vui Lòng Lưu Lại Thiết Lập Trừ Ma!\r\nLưu Ý Cần Cài Tùy Chọn Đăng Nhập Để Tool Tự Xử Lý Lỗi", "BMx-Tool: Trừ Ma", (MessageBoxButtons)0, (MessageBoxIcon)64);
		}
		CheckboxTrong.CheckState = (CheckState)0;
		checkBoxChat.CheckState = (CheckState)0;
		checkBox1.CheckState = (CheckState)0;
		checkBox2.CheckState = (CheckState)0;
		checkBoxLog.CheckState = (CheckState)0;
		checkBoxLog_BB.CheckState = (CheckState)0;
		debugText("begin");
		if (autoRun)
		{
			checkBoxClone.CheckState = (CheckState)0;
			checkBoxNormal.CheckState = (CheckState)1;
			checkBox1.CheckState = (CheckState)0;
			checkBox2.CheckState = (CheckState)1;
			numericUpDownDaPet.Value = 20m;
			CheckboxDaPet.CheckState = (CheckState)0;
			watchdogTimer2 = new Timer(1000.0);
			watchdogTimer2.Elapsed += new ElapsedEventHandler(myWatchdogTimer2);
			watchdogTimer2.AutoReset = true;
			watchdogTimer2.Stop();
			ButtonRunAuto.CheckState = (CheckState)1;
		}
	}

	private void ButtonRunAuto_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		//IL_008c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0092: Invalid comparison between Unknown and I4
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0065: Unknown result type (might be due to invalid IL or missing references)
		//IL_006f: Expected O, but got Unknown
		//IL_009f: Unknown result type (might be due to invalid IL or missing references)
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
				//IL_00c2: Unknown result type (might be due to invalid IL or missing references)
				//IL_0137: Unknown result type (might be due to invalid IL or missing references)
				//IL_013d: Invalid comparison between Unknown and I4
				//IL_08e4: Unknown result type (might be due to invalid IL or missing references)
				//IL_08ea: Invalid comparison between Unknown and I4
				//IL_01ba: Unknown result type (might be due to invalid IL or missing references)
				//IL_01c0: Invalid comparison between Unknown and I4
				//IL_0df1: Unknown result type (might be due to invalid IL or missing references)
				//IL_0df7: Invalid comparison between Unknown and I4
				//IL_01fe: Unknown result type (might be due to invalid IL or missing references)
				//IL_0204: Invalid comparison between Unknown and I4
				//IL_0229: Unknown result type (might be due to invalid IL or missing references)
				//IL_022f: Invalid comparison between Unknown and I4
				//IL_04aa: Unknown result type (might be due to invalid IL or missing references)
				//IL_04b0: Invalid comparison between Unknown and I4
				//IL_0f59: Unknown result type (might be due to invalid IL or missing references)
				//IL_0f5f: Invalid comparison between Unknown and I4
				//IL_16b1: Unknown result type (might be due to invalid IL or missing references)
				//IL_16b7: Invalid comparison between Unknown and I4
				//IL_0522: Unknown result type (might be due to invalid IL or missing references)
				//IL_0527: Unknown result type (might be due to invalid IL or missing references)
				//IL_053b: Unknown result type (might be due to invalid IL or missing references)
				//IL_0540: Unknown result type (might be due to invalid IL or missing references)
				//IL_056a: Unknown result type (might be due to invalid IL or missing references)
				//IL_056f: Unknown result type (might be due to invalid IL or missing references)
				//IL_0583: Unknown result type (might be due to invalid IL or missing references)
				//IL_0588: Unknown result type (might be due to invalid IL or missing references)
				//IL_05e4: Unknown result type (might be due to invalid IL or missing references)
				//IL_05e9: Unknown result type (might be due to invalid IL or missing references)
				//IL_05fd: Unknown result type (might be due to invalid IL or missing references)
				//IL_0602: Unknown result type (might be due to invalid IL or missing references)
				//IL_03ba: Unknown result type (might be due to invalid IL or missing references)
				//IL_03bf: Unknown result type (might be due to invalid IL or missing references)
				//IL_03ca: Unknown result type (might be due to invalid IL or missing references)
				//IL_03cf: Unknown result type (might be due to invalid IL or missing references)
				//IL_1722: Unknown result type (might be due to invalid IL or missing references)
				//IL_1727: Unknown result type (might be due to invalid IL or missing references)
				//IL_173b: Unknown result type (might be due to invalid IL or missing references)
				//IL_1740: Unknown result type (might be due to invalid IL or missing references)
				//IL_176a: Unknown result type (might be due to invalid IL or missing references)
				//IL_176f: Unknown result type (might be due to invalid IL or missing references)
				//IL_1783: Unknown result type (might be due to invalid IL or missing references)
				//IL_1788: Unknown result type (might be due to invalid IL or missing references)
				//IL_17e4: Unknown result type (might be due to invalid IL or missing references)
				//IL_17e9: Unknown result type (might be due to invalid IL or missing references)
				//IL_17fd: Unknown result type (might be due to invalid IL or missing references)
				//IL_1802: Unknown result type (might be due to invalid IL or missing references)
				//IL_0434: Unknown result type (might be due to invalid IL or missing references)
				//IL_0439: Unknown result type (might be due to invalid IL or missing references)
				//IL_0444: Unknown result type (might be due to invalid IL or missing references)
				//IL_0449: Unknown result type (might be due to invalid IL or missing references)
				//IL_06d0: Unknown result type (might be due to invalid IL or missing references)
				//IL_06d5: Unknown result type (might be due to invalid IL or missing references)
				//IL_06e0: Unknown result type (might be due to invalid IL or missing references)
				//IL_06e5: Unknown result type (might be due to invalid IL or missing references)
				//IL_18d0: Unknown result type (might be due to invalid IL or missing references)
				//IL_18d5: Unknown result type (might be due to invalid IL or missing references)
				//IL_18e0: Unknown result type (might be due to invalid IL or missing references)
				//IL_18e5: Unknown result type (might be due to invalid IL or missing references)
				//IL_074a: Unknown result type (might be due to invalid IL or missing references)
				//IL_074f: Unknown result type (might be due to invalid IL or missing references)
				//IL_075a: Unknown result type (might be due to invalid IL or missing references)
				//IL_075f: Unknown result type (might be due to invalid IL or missing references)
				//IL_194a: Unknown result type (might be due to invalid IL or missing references)
				//IL_194f: Unknown result type (might be due to invalid IL or missing references)
				//IL_195a: Unknown result type (might be due to invalid IL or missing references)
				//IL_195f: Unknown result type (might be due to invalid IL or missing references)
				//IL_07e8: Unknown result type (might be due to invalid IL or missing references)
				//IL_07ed: Unknown result type (might be due to invalid IL or missing references)
				//IL_07f8: Unknown result type (might be due to invalid IL or missing references)
				//IL_07fd: Unknown result type (might be due to invalid IL or missing references)
				//IL_1600: Unknown result type (might be due to invalid IL or missing references)
				//IL_1605: Unknown result type (might be due to invalid IL or missing references)
				//IL_1610: Unknown result type (might be due to invalid IL or missing references)
				//IL_1615: Unknown result type (might be due to invalid IL or missing references)
				setupWDT2(30);
				bool flag = true;
				PressKey("ESC");
				AutoControl.SendClickOnPosition(hWnd, 111, 25, (EMouseKey)0, 1);
				delay_100ms(10);
				AutoControl.SendClickOnPosition(hWnd, 111, 90, (EMouseKey)0, 1);
				debugText("Hồi Phục");
				setupRun();
				CheckSkin();
				Point value2;
				while (!IsStop && flag)
				{
					while (!Bay())
					{
					}
					delay_100ms(10);
					if (WriteMemoryData(processID, myPointer, offset_FPS, 50.0))
					{
						AutoControl.SendClickOnPosition(hWnd, 58, 406, (EMouseKey)0, 1);
						Thread.Sleep(TimeSpan.FromSeconds(0.1));
						AutoControl.SendClickOnPosition(hWnd, 58, 470, (EMouseKey)0, 1);
						debugText("Write FPS: " + numericUpDownFPS.Value);
						numericUpDownFPS.Value = 60m;
					}
					else
					{
						debugText("Write FPS False");
					}
					GetAllImage();
					if ((int)checkBoxChat.CheckState == 1)
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
					if ((int)checkBoxClone.CheckState == 1)
					{
						PressKey("ESC");
						int num = 0;
						while (!FindPoint(hWnd, pathTruMa + "/Q_NPC1.png").HasValue)
						{
							reConnect();
							if (FindPoint(hWnd, pathTruMa + "/Q_NPC2.png").HasValue)
							{
								break;
							}
							num++;
							if (num >= 5)
							{
								debugText("không thấy NPC");
								break;
							}
						}
						AutoControl.SendClickOnPosition(hWnd, 535, 381, (EMouseKey)0, 1);
						delay_100ms(1);
						Point? val2;
						while (true)
						{
							reConnect();
							if (FindAndClick(hWnd, pathKhac + "/Auto_Nhom.png", 1, 1, "Nhóm").HasValue)
							{
								delay_100ms(5);
								FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 1, 1, "Có");
							}
							AutoControl.SendClickOnPosition(hWnd, NPC_QQN_X, NPC_QQN_Y - 30, (EMouseKey)0, 1);
							delay_100ms(1);
							Point? val = FindPoint(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png");
							if (val.HasValue)
							{
								System.IntPtr intPtr = hWnd;
								value2 = val.Value;
								int x = ((Point)(ref value2)).X;
								value2 = val.Value;
								AutoControl.SendClickOnPosition(intPtr, x, ((Point)(ref value2)).Y + 366 - 482 - 30, (EMouseKey)0, 1);
								delay_100ms(3);
								val2 = FindPoint(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png");
								if (val2.HasValue)
								{
									break;
								}
							}
						}
						System.IntPtr intPtr2 = hWnd;
						value2 = val2.Value;
						int x2 = ((Point)(ref value2)).X;
						value2 = val2.Value;
						AutoControl.SendClickOnPosition(intPtr2, x2, ((Point)(ref value2)).Y + 366 - 482 - 30, (EMouseKey)0, 1);
						delay_100ms(3);
						FindAndClick(hWnd, pathTruMa + "/Xong.png", 1, 1, "Xong");
					}
					else if ((int)checkBoxNormal.CheckState == 1)
					{
						Point? val6;
						while (true)
						{
							int num2 = 0;
							int num3 = 0;
							PressKey("ESC");
							PressKey("Z");
							delay_100ms(5);
							while (true)
							{
								reConnect();
								Point? val3 = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
								if (!val3.HasValue)
								{
									break;
								}
								System.IntPtr intPtr3 = hWnd;
								value2 = val3.Value;
								int num4 = ((Point)(ref value2)).X + 319 - 84;
								value2 = val3.Value;
								AutoControl.SendClickOnPosition(intPtr3, num4, ((Point)(ref value2)).Y + 104 - 56 - 30, (EMouseKey)0, 1);
								delay_100ms(5);
								System.IntPtr intPtr4 = hWnd;
								value2 = val3.Value;
								int num5 = ((Point)(ref value2)).X + 695 - 84;
								value2 = val3.Value;
								AutoControl.SendClickOnPosition(intPtr4, num5, ((Point)(ref value2)).Y + 386 - 56 - 30, (EMouseKey)0, 1);
								delay_100ms(5);
								Point? val4 = FindPoint(hWnd, pathTruMa + "/Q_NPC4.png");
								if (!val4.HasValue)
								{
									break;
								}
								System.IntPtr intPtr5 = hWnd;
								value2 = val4.Value;
								int num6 = ((Point)(ref value2)).X + 496 - 117;
								value2 = val4.Value;
								AutoControl.SendClickOnPosition(intPtr5, num6, ((Point)(ref value2)).Y + 137 - 146 - 30, (EMouseKey)0, 1);
								delay_100ms(5);
								if (FindAndClick(hWnd, pathKhac + "/Auto_Nhom.png", 1, 1, "Nhóm").HasValue)
								{
									delay_100ms(5);
									FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 1, 1, "Có");
								}
								Point? val5 = FindPoint(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png");
								if (val5.HasValue)
								{
									System.IntPtr intPtr6 = hWnd;
									value2 = val5.Value;
									int x3 = ((Point)(ref value2)).X;
									value2 = val5.Value;
									AutoControl.SendClickOnPosition(intPtr6, x3, ((Point)(ref value2)).Y + 366 - 482 - 30, (EMouseKey)0, 1);
									delay_100ms(5);
									val6 = FindPoint(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png");
									if (val6.HasValue)
									{
										goto end_IL_04bc;
									}
								}
							}
							continue;
							end_IL_04bc:
							break;
						}
						System.IntPtr intPtr7 = hWnd;
						value2 = val6.Value;
						int x4 = ((Point)(ref value2)).X;
						value2 = val6.Value;
						AutoControl.SendClickOnPosition(intPtr7, x4, ((Point)(ref value2)).Y + 366 - 482 - 30, (EMouseKey)0, 1);
						delay_100ms(5);
						FindAndClick(hWnd, pathTruMa + "/Xong.png", 1, 1, "Xong");
						Point? val7 = FindPoint(hWnd, pathTacVu + "/XoaChat.png");
						if (val7.HasValue)
						{
							System.IntPtr intPtr8 = hWnd;
							value2 = val7.Value;
							int x5 = ((Point)(ref value2)).X;
							value2 = val7.Value;
							AutoControl.SendClickOnPosition(intPtr8, x5, ((Point)(ref value2)).Y - 30, (EMouseKey)0, 1);
							debugText("Đã Xóa Khung Chat");
							delay_100ms(5);
						}
						else
						{
							debugText("Không Thấy Xóa Khung Chat");
						}
					}
					HideIconECT();
					FindAndClick(hWnd, pathKhac + "/Auto_button2.png", 5, 5, "X");
					PressKey("ESC");
					FindAndClick(hWnd, pathKhac + "/Auto_button1.png", 5, 5, "X");
					flag = false;
				}
				counter = 0;
				while (!IsStop)
				{
					while (true)
					{
						reConnect();
						checkChat();
						boss = ScanNhiemVu();
						PressKey("ESC");
						while (true)
						{
							if ((int)checkBoxClone.CheckState == 1)
							{
								string text = boss;
								string text2 = text;
								if (!(text2 == "Phi Ma"))
								{
									if (!(text2 == "Cự Ma") && !(text2 == "Cự Thú"))
									{
										if (text2 == "Không")
										{
											countTimer_chat = 0;
											int num7 = 0;
											while (!BoNVKhongLienQuan(pathTruMa + "/Q_TM.png"))
											{
												num7++;
												delay_100ms(10);
												if (num7 <= 10)
												{
													continue;
												}
												goto IL_0d56;
											}
											break;
										}
									}
									else
									{
										while (!FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -116, "Trầm Thụy Lâm").HasValue)
										{
											if (FindAndClick(hWnd, pathKhac + "/Auto_Nhom.png", 1, 1, "Nhóm").HasValue)
											{
												delay_100ms(5);
												FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 1, 1, "Có");
											}
											AutoControl.SendClickOnPosition(hWnd, NPC_DHT_X, NPC_DHT_Y - 30, (EMouseKey)0, 1);
											AutoControl.SendClickOnPosition(hWnd, NPC_DHT_X, NPC_DHT_Y - 30, (EMouseKey)0, 1);
											delay_100ms(5);
										}
									}
								}
								else
								{
									string text3 = ((Control)comboBox1).Text;
									string text4 = text3;
									if (!(text4 == "Tinh Linh Thành"))
									{
										if (!(text4 == "Bàng Bối Thành"))
										{
											if (text4 == "Tiên Lạp Thành")
											{
												while (!FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -21, "Tiên Lạp").HasValue)
												{
													if (FindAndClick(hWnd, pathKhac + "/Auto_Nhom.png", 1, 1, "Nhóm").HasValue)
													{
														delay_100ms(5);
														FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 1, 1, "Có");
													}
													AutoControl.SendClickOnPosition(hWnd, NPC_DHT_X, NPC_DHT_Y - 30, (EMouseKey)0, 1);
													AutoControl.SendClickOnPosition(hWnd, NPC_DHT_X, NPC_DHT_Y - 30, (EMouseKey)0, 1);
													delay_100ms(5);
												}
											}
										}
										else
										{
											while (!FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -41, "Bàng Bối").HasValue)
											{
												if (FindAndClick(hWnd, pathKhac + "/Auto_Nhom.png", 1, 1, "Nhóm").HasValue)
												{
													delay_100ms(5);
													FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 1, 1, "Có");
												}
												AutoControl.SendClickOnPosition(hWnd, NPC_DHT_X, NPC_DHT_Y - 30, (EMouseKey)0, 1);
												AutoControl.SendClickOnPosition(hWnd, NPC_DHT_X, NPC_DHT_Y - 30, (EMouseKey)0, 1);
												delay_100ms(5);
											}
										}
									}
									else
									{
										while (!FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -61, "Tinh Linh").HasValue)
										{
											if (FindAndClick(hWnd, pathKhac + "/Auto_Nhom.png", 1, 1, "Nhóm").HasValue)
											{
												delay_100ms(5);
												FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 1, 1, "Có");
											}
											AutoControl.SendClickOnPosition(hWnd, NPC_DHT_X, NPC_DHT_Y - 30, (EMouseKey)0, 1);
											AutoControl.SendClickOnPosition(hWnd, NPC_DHT_X, NPC_DHT_Y - 30, (EMouseKey)0, 1);
											delay_100ms(5);
										}
									}
								}
							}
							else if ((int)checkBoxNormal.CheckState == 1)
							{
								string text5 = boss;
								string text6 = text5;
								if (!(text6 == "Phi Ma"))
								{
									if (!(text6 == "Cự Ma") && !(text6 == "Cự Thú"))
									{
										if (text6 == "Không")
										{
											int num8 = 0;
											while (!BoNVKhongLienQuan(pathTruMa + "/Q_TM.png"))
											{
												num8++;
												delay_100ms(10);
												if (num8 <= 10)
												{
													continue;
												}
												goto IL_0e95;
											}
											break;
										}
									}
									else
									{
										PhuToiMap("Trầm Thụy Lâm");
									}
								}
								else
								{
									PhuToiMap(((Control)comboBox1).Text);
								}
							}
							goto IL_0efd;
							IL_0d56:
							debugText("Không Thấy Nhiệm Vụ");
							debugText("End!");
							IsStop = true;
							if (autoRun)
							{
								ButtonRunAuto.CheckState = (CheckState)0;
								AutoControl.BringToFront(FindWindowHandle(null, "[" + accCheck + "] BMx Trừ Ma"));
								((Form)this).Close();
							}
							goto IL_0efd;
							IL_0e95:
							debugText("Không Thấy Nhiệm Vụ");
							debugText("End!");
							IsStop = true;
							if (autoRun)
							{
								ButtonRunAuto.CheckState = (CheckState)0;
							}
							goto IL_0efd;
							IL_0efd:
							delay_100ms(8);
							if (!WaitAvatar(hWnd, AvatarNV))
							{
								continue;
							}
							goto IL_0f26;
						}
						continue;
						IL_1681:
						FindAndClick(hWnd, pathTruMa + "/Xong.png", 1, 1, "Xong");
						break;
						IL_0f26:
						if (TimBoss(boss))
						{
							delay_100ms(2);
							checkChat();
							int num9 = 0;
							if ((int)checkBoxClone.CheckState != 1)
							{
								if ((int)checkBoxNormal.CheckState == 1)
								{
									Point? val11;
									while (true)
									{
										int num10 = 0;
										int num11 = 0;
										PressKey("ESC");
										PressKey("Z");
										delay_100ms(5);
										while (true)
										{
											Point? val8 = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
											if (!val8.HasValue)
											{
												break;
											}
											System.IntPtr intPtr9 = hWnd;
											value2 = val8.Value;
											int num12 = ((Point)(ref value2)).X + 319 - 84;
											value2 = val8.Value;
											AutoControl.SendClickOnPosition(intPtr9, num12, ((Point)(ref value2)).Y + 104 - 56 - 30, (EMouseKey)0, 1);
											delay_100ms(5);
											System.IntPtr intPtr10 = hWnd;
											value2 = val8.Value;
											int num13 = ((Point)(ref value2)).X + 695 - 84;
											value2 = val8.Value;
											AutoControl.SendClickOnPosition(intPtr10, num13, ((Point)(ref value2)).Y + 386 - 56 - 30, (EMouseKey)0, 1);
											delay_100ms(5);
											Point? val9 = FindPoint(hWnd, pathTruMa + "/Q_NPC4.png");
											if (!val9.HasValue)
											{
												break;
											}
											System.IntPtr intPtr11 = hWnd;
											value2 = val9.Value;
											int num14 = ((Point)(ref value2)).X + 496 - 117;
											value2 = val9.Value;
											AutoControl.SendClickOnPosition(intPtr11, num14, ((Point)(ref value2)).Y + 137 - 146 - 30, (EMouseKey)0, 1);
											delay_100ms(5);
											if (FindAndClick(hWnd, pathKhac + "/Auto_Nhom.png", 1, 1, "Nhóm").HasValue)
											{
												delay_100ms(5);
												FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 1, 1, "Có");
											}
											Point? val10 = FindPoint(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png");
											if (val10.HasValue)
											{
												System.IntPtr intPtr12 = hWnd;
												value2 = val10.Value;
												int x6 = ((Point)(ref value2)).X;
												value2 = val10.Value;
												AutoControl.SendClickOnPosition(intPtr12, x6, ((Point)(ref value2)).Y + 366 - 482 - 30, (EMouseKey)0, 1);
												delay_100ms(5);
												val11 = FindPoint(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png");
												if (val11.HasValue)
												{
													goto end_IL_16c3;
												}
											}
										}
										continue;
										end_IL_16c3:
										break;
									}
									System.IntPtr intPtr13 = hWnd;
									value2 = val11.Value;
									int x7 = ((Point)(ref value2)).X;
									value2 = val11.Value;
									AutoControl.SendClickOnPosition(intPtr13, x7, ((Point)(ref value2)).Y + 366 - 482 - 30, (EMouseKey)0, 1);
									delay_100ms(5);
									FindAndClick(hWnd, pathTruMa + "/Xong.png", 1, 1, "Xong");
								}
								break;
							}
							string text7 = boss;
							string text8 = text7;
							if (!(text8 == "Phi Ma"))
							{
								if (text8 == "Cự Ma" || text8 == "Cự Thú")
								{
									while (!FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -116, "-> ĐHT").HasValue)
									{
										if (FindAndClick(hWnd, pathKhac + "/Auto_Nhom.png", 1, 1, "Nhóm").HasValue)
										{
											delay_100ms(5);
											FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 1, 1, "Có");
										}
										AutoControl.SendClickOnPosition(hWnd, NPC_TTL_X, NPC_TTL_Y - 30, (EMouseKey)0, 1);
										delay_100ms(2);
										ScanViTriBoss(boss);
										PressKey("OK");
									}
								}
							}
							else
							{
								while (!FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -61, "-> ĐHT").HasValue)
								{
									if (FindAndClick(hWnd, pathKhac + "/Auto_Nhom.png", 1, 1, "Nhóm").HasValue)
									{
										delay_100ms(5);
										FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 1, 1, "Có");
									}
									AutoControl.SendClickOnPosition(hWnd, NPC_PM_X, NPC_PM_Y - 30, (EMouseKey)0, 1);
								}
							}
							while (true)
							{
								int num15 = 0;
								while (!BoNVKhongLienQuan(pathTruMa + "/Q_TM.png"))
								{
									num15++;
									delay_100ms(10);
									if (num15 > 10)
									{
										goto end_IL_114d;
									}
								}
								int num16 = 0;
								int num17 = 0;
								if (luuTraQ != 999)
								{
									num17 = luuTraQ - 1;
								}
								int num18 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoX);
								int num19 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoY);
								while (num18 == 0 && num19 == 0)
								{
									num18 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoX);
									num19 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoY);
									delay_100ms(5);
									debugText("Memory False!");
								}
								ViTriNhanVat_X = num18;
								ViTriNhanVat_Y = num19;
								bool flag2 = false;
								while (FindPoint(hWnd, pathLuyenPet + "/Q_Bo.png").HasValue && !FindPoint(hWnd, pathLuyenPet + "/NPC_NV_RoiKhoi.png").HasValue)
								{
									AutoControl.SendClickUpOnPosition(hWnd, 477, 440 + num17 - 30, (EMouseKey)0, 1);
									delay_100ms(1);
									AutoControl.SendClickOnPosition(hWnd, 477, 440 + num17 - 30, (EMouseKey)0, 1);
									delay_100ms(1);
									AutoControl.SendClickOnPosition(hWnd, 477, 440 + num17 - 30, (EMouseKey)0, 1);
									delay_100ms(1);
									AutoControl.SendClickOnPosition(hWnd, 477, 440 + num17 - 30, (EMouseKey)0, 1);
									delay_100ms(3);
									FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 1, 1, "Có");
									if (FindAndClick(hWnd, pathKhac + "/Auto_Nhom.png", 1, 1, "Nhóm").HasValue)
									{
										delay_100ms(5);
										FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 1, 1, "Có");
									}
									debugText(num17.ToString());
									if (!flag2)
									{
										int num20 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoX);
										int num21 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoY);
										while (num20 == 0 && num21 == 0)
										{
											num20 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoX);
											num21 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoY);
											delay_100ms(5);
											debugText("Memory False!");
										}
										if (ViTriNhanVat_X != num20 || ViTriNhanVat_Y != num21)
										{
											flag2 = true;
											luuTraQ = num17;
										}
										else
										{
											num17++;
										}
									}
									if (num17 > 60)
									{
										num17 = 0;
										PressKey("ESC");
										FindAndClick(hWnd, pathTruMa + "/Q_TM.png", 1, 1, "X");
										PressKey("Q");
									}
									num16++;
									if (num16 <= 200)
									{
										continue;
									}
									goto IL_14e1;
								}
								delay_100ms(5);
								while (!WaitAvatar(hWnd, AvatarNV))
								{
									delay_100ms(10);
								}
								if (FindPoint(hWnd, pathLuyenPet + "/NPC_NV_RoiKhoi.png").HasValue)
								{
									num9 = 0;
									while (true)
									{
										reConnect();
										Point? val12 = FindPoint(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png");
										if (!val12.HasValue)
										{
											break;
										}
										System.IntPtr intPtr14 = hWnd;
										value2 = val12.Value;
										int x8 = ((Point)(ref value2)).X;
										value2 = val12.Value;
										AutoControl.SendClickOnPosition(intPtr14, x8, ((Point)(ref value2)).Y + 366 - 482 - 30, (EMouseKey)0, 1);
										delay_100ms(5);
										if (!FindAndClick(hWnd, pathTruMa + "/Xong.png", 1, 1, "Xong").HasValue)
										{
											continue;
										}
										goto IL_1681;
									}
								}
								continue;
								end_IL_114d:
								break;
							}
							debugText("Không Thấy Nhiệm Vụ >  check lại");
						}
						continue;
						IL_14e1:
						PressKey("ESC");
						luuTraQ = 999;
					}
					NhiemVu++;
					if (NhiemVu > 10)
					{
						if (autoRun)
						{
							ButtonRunAuto.CheckState = (CheckState)0;
							((Form)this).Close();
						}
						Vong++;
						NhiemVu = 1;
						AutoControl.SendClickOnPosition(hWnd, 111, 25, (EMouseKey)0, 1);
						delay_100ms(10);
						AutoControl.SendClickOnPosition(hWnd, 111, 90, (EMouseKey)0, 1);
						debugText("Hồi Phục");
					}
					debugText("Vòng-" + Vong + " Q-" + NhiemVu);
					((Control)label2).Text = "Vòng-" + Vong + " Q-" + NhiemVu;
					debugText("ClearDebugText");
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
			if (autoRun)
			{
				watchdogTimer2.Stop();
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
		((Control)label11).Text = "VIP " + VIP;
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
		((Control)label12).Text = accMain;
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
		NPC_PM_X = x2 - x;
		NPC_PM_Y = y2 - y;
		((Control)buttonViTri3).BackColor = Color.Green;
	}

	private void button2_MouseDown(object sender, MouseEventArgs e)
	{
		Cursor.Current = Cursors.Cross;
	}

	private void button1_MouseDown(object sender, MouseEventArgs e)
	{
		Cursor.Current = Cursors.Cross;
	}

	private void buttonViTri1_MouseDown(object sender, MouseEventArgs e)
	{
		Cursor.Current = Cursors.Cross;
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
		NPC_TTL_X = x2 - x;
		NPC_TTL_Y = y2 - y;
		((Control)buttonViTri2).BackColor = Color.Green;
	}

	private void buttonViTri1_MouseUp(object sender, MouseEventArgs e)
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
		NPC_QQN_X = x2 - x;
		NPC_QQN_Y = y2 - y;
		((Control)buttonViTri1).BackColor = Color.Green;
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
		NPC_DHT_X = x2 - x;
		NPC_DHT_Y = y2 - y;
		((Control)buttonViTri4).BackColor = Color.Green;
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
			((Form)this).Size = new Size(386, 376);
		}
		else if ((int)ButtonDebug.CheckState == 0)
		{
			((Control)ButtonDebug).Text = "Chi Tiết";
			((Form)this).Size = new Size(386, 194);
		}
	}

	private void checkBoxClone_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		//IL_005e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0064: Invalid comparison between Unknown and I4
		if ((int)checkBoxClone.CheckState == 1)
		{
			checkBoxNormal.CheckState = (CheckState)0;
			((Control)buttonViTri1).Enabled = true;
			((Control)buttonViTri2).Enabled = true;
			((Control)buttonViTri3).Enabled = true;
			((Control)buttonViTri4).Enabled = true;
		}
		else if ((int)checkBoxClone.CheckState == 0)
		{
			checkBoxNormal.CheckState = (CheckState)1;
			((Control)buttonViTri1).Enabled = false;
			((Control)buttonViTri2).Enabled = false;
			((Control)buttonViTri3).Enabled = false;
			((Control)buttonViTri4).Enabled = false;
		}
	}

	private void checkBoxNormal_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		//IL_005e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0064: Invalid comparison between Unknown and I4
		if ((int)checkBoxNormal.CheckState == 1)
		{
			checkBoxClone.CheckState = (CheckState)0;
			((Control)buttonViTri1).Enabled = false;
			((Control)buttonViTri2).Enabled = false;
			((Control)buttonViTri3).Enabled = false;
			((Control)buttonViTri4).Enabled = false;
		}
		else if ((int)checkBoxNormal.CheckState == 0)
		{
			checkBoxClone.CheckState = (CheckState)1;
			((Control)buttonViTri1).Enabled = true;
			((Control)buttonViTri2).Enabled = true;
			((Control)buttonViTri3).Enabled = true;
			((Control)buttonViTri4).Enabled = true;
		}
	}

	private void CheckboxDaPet_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		//IL_0021: Unknown result type (might be due to invalid IL or missing references)
		//IL_0027: Invalid comparison between Unknown and I4
		if ((int)CheckboxDaPet.CheckState == 0 && (int)CheckboxTrong.CheckState == 0 && (int)checkBoxChat.CheckState == 0)
		{
			stopTimer();
		}
		else
		{
			startTimer();
		}
	}

	private void HideAllSelect()
	{
		((Control)groupBox1).Enabled = false;
		((Control)groupBox3).Enabled = false;
		((Control)groupBox5).Enabled = false;
	}

	private void ShowAllSelect()
	{
		((Control)groupBox1).Enabled = true;
		((Control)groupBox3).Enabled = true;
		((Control)groupBox5).Enabled = true;
	}

	private void setupWDT2(int minute)
	{
	}

	private void myWatchdogTimer2(object source, ElapsedEventArgs e)
	{
		if (autoRun)
		{
			watchdogCounter2 += 1.0;
			debugText("WDT2: " + watchdogCounter2);
			if (watchdogCounter2 > watchdogCheck2)
			{
				ButtonRunAuto.CheckState = (CheckState)0;
			}
		}
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
		if ((int)checkBoxChat.CheckState == 1 && !IsStop)
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
				HideIconECT();
				countTimer_pet = 0;
				numericUpDownDaPet.Value = decimal.op_Implicit(num2 - 1);
			}
		}
		else
		{
			countTimer_pet = 0;
		}
		if (countTimer_trong > num * 60)
		{
			Trong();
			PressKey("ESC");
			HideIconECT();
			countTimer_trong = 0;
		}
		if (countTimer_chat > (int)numericUpDownChat.Value * 60)
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
		TextWriter val = (TextWriter)new StreamWriter(pathData + "/Setting/" + nameUser + "/truma.txt");
		val.Write(scanSetting());
		val.Close();
		System.DateTime lastWriteTime = File.GetLastWriteTime(pathData + "/Setting/" + nameUser + "/truma.txt");
		((Control)label17).Text = "Lần cuối lúc\r\n" + lastWriteTime.ToString("g");
	}

	private string scanSetting()
	{
		string text = "";
		text = ((!checkBoxNormal.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + NPC_QQN_X + "\n";
		text = text + NPC_QQN_Y + "\n";
		text = text + NPC_TTL_X + "\n";
		text = text + NPC_TTL_Y + "\n";
		text = text + NPC_PM_X + "\n";
		text = text + NPC_PM_Y + "\n";
		text = text + ((Control)comboBox1).Text + "\n";
		text = text + NPC_DHT_X + "\n";
		text = text + NPC_DHT_Y + "\n";
		text = ((!checkBox1.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBox2.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxLog.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxLog_BB.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + numericUpDownNV.Value + "\n";
		text = text + numericUpDownKenh.Value + "\n";
		text = ((!CheckboxDaPet.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + numericUpDownDaPet.Value + "\n";
		text = ((!CheckboxTrong.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + ((Control)comboBoxTrong).Text + "\n";
		text = text + numericUpDownGio.Value + "\n";
		text = ((!checkBoxChat.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + ((Control)comboBoxChat).Text + "\n";
		text = text + numericUpDownChat.Value + "\n";
		return text + ((Control)textBoxChat).Text;
	}

	private void loadSetting()
	{
		if (!File.Exists(pathData + "/Setting/" + nameUser + "/truma.txt"))
		{
			Directory.CreateDirectory(pathData + "/Setting/" + nameUser);
			return;
		}
		string[] array = File.ReadAllLines(pathData + "/Setting/" + nameUser + "/truma.txt");
		int num = 0;
		int num2 = 0;
		if (array[num2].Trim() == "1")
		{
			checkBoxNormal.CheckState = (CheckState)1;
			checkBoxClone.CheckState = (CheckState)0;
		}
		else
		{
			checkBoxNormal.CheckState = (CheckState)0;
			checkBoxClone.CheckState = (CheckState)1;
		}
		int.TryParse(array[++num2].Trim(), ref NPC_QQN_X);
		int.TryParse(array[++num2].Trim(), ref NPC_QQN_Y);
		int.TryParse(array[++num2].Trim(), ref NPC_TTL_X);
		int.TryParse(array[++num2].Trim(), ref NPC_TTL_Y);
		int.TryParse(array[++num2].Trim(), ref NPC_PM_X);
		int.TryParse(array[++num2].Trim(), ref NPC_PM_Y);
		((Control)comboBox1).Text = array[++num2].Trim();
		int.TryParse(array[++num2].Trim(), ref NPC_DHT_X);
		int.TryParse(array[++num2].Trim(), ref NPC_DHT_Y);
		if (array[++num2].Trim() == "1")
		{
			checkBox1.CheckState = (CheckState)1;
		}
		else
		{
			checkBox1.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBox2.CheckState = (CheckState)1;
		}
		else
		{
			checkBox2.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxLog.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxLog.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxLog_BB.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxLog_BB.CheckState = (CheckState)0;
		}
		int.TryParse(array[++num2].Trim(), ref num);
		numericUpDownNV.Value = decimal.op_Implicit(num);
		int.TryParse(array[++num2].Trim(), ref num);
		numericUpDownKenh.Value = decimal.op_Implicit(num);
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
			checkBoxChat.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxChat.CheckState = (CheckState)0;
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
		System.DateTime lastWriteTime = File.GetLastWriteTime(pathData + "/Setting/" + nameUser + "/truma.txt");
		((Control)label17).Text = "Lần cuối lúc\r\n" + lastWriteTime.ToString("g");
		debugText("Đã Áp Dụng Cài Đặt \"Trừ Ma\" Lần Cuối Lúc\r\n" + lastWriteTime.ToString("g"));
	}

	[DllImport("user32.dll")]
	public static extern System.IntPtr SendMessage(System.IntPtr hWnd, int Msg, System.IntPtr wParam, System.IntPtr lParam);

	public static void SendKeyBoardDown(System.IntPtr handle, VKeys key)
	{
		//IL_001b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0021: Expected I4, but got Unknown
		PostMessage(handle, 6, new System.IntPtr(1), new System.IntPtr(0));
		PostMessage(handle, 256, new System.IntPtr((int)key), new System.IntPtr(0));
	}

	public static void SendKeyBoardUp(System.IntPtr handle, VKeys key)
	{
		//IL_001b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0021: Expected I4, but got Unknown
		PostMessage(handle, 6, new System.IntPtr(1), new System.IntPtr(0));
		PostMessage(handle, 257, new System.IntPtr((int)key), new System.IntPtr(0));
	}

	public static void SendKeyBoardPress(System.IntPtr handle, VKeys key)
	{
		//IL_001b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0021: Expected I4, but got Unknown
		//IL_0033: Unknown result type (might be due to invalid IL or missing references)
		//IL_0039: Expected I4, but got Unknown
		PostMessage(handle, 6, new System.IntPtr(1), new System.IntPtr(0));
		PostMessage(handle, 256, new System.IntPtr((int)key), new System.IntPtr(1));
		PostMessage(handle, 257, new System.IntPtr((int)key), new System.IntPtr(0));
	}

	public static void SendClickUpOnPosition(System.IntPtr controlHandle, int x, int y, EMouseKey mouseButton = (EMouseKey)0, int clickTimes = 1)
	{
		//IL_0003: Unknown result type (might be due to invalid IL or missing references)
		//IL_0005: Invalid comparison between Unknown and I4
		//IL_0013: Unknown result type (might be due to invalid IL or missing references)
		//IL_0015: Invalid comparison between Unknown and I4
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

	public static void SendClickDownOnPosition(System.IntPtr controlHandle, int x, int y, EMouseKey mouseButton = (EMouseKey)0, int clickTimes = 1)
	{
		//IL_0003: Unknown result type (might be due to invalid IL or missing references)
		//IL_0005: Invalid comparison between Unknown and I4
		//IL_0013: Unknown result type (might be due to invalid IL or missing references)
		//IL_0015: Invalid comparison between Unknown and I4
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

	public static void SendClickOnPosition(System.IntPtr controlHandle, int x, int y, EMouseKey mouseButton = (EMouseKey)0, int clickTimes = 1)
	{
		//IL_0005: Unknown result type (might be due to invalid IL or missing references)
		//IL_0007: Invalid comparison between Unknown and I4
		//IL_001b: Unknown result type (might be due to invalid IL or missing references)
		//IL_001d: Invalid comparison between Unknown and I4
		//IL_003b: Unknown result type (might be due to invalid IL or missing references)
		//IL_003e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0040: Invalid comparison between Unknown and I4
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

	public static System.IntPtr MakeLParamFromXY(int x, int y)
	{
		return (System.IntPtr)((y - 30 << 16) | x);
	}

	private bool loadTheme()
	{
		//IL_010f: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0281: Unknown result type (might be due to invalid IL or missing references)
		//IL_0293: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a5: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b7: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_00da: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e9: Unknown result type (might be due to invalid IL or missing references)
		//IL_02fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_030d: Unknown result type (might be due to invalid IL or missing references)
		//IL_031f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0331: Unknown result type (might be due to invalid IL or missing references)
		//IL_0343: Unknown result type (might be due to invalid IL or missing references)
		//IL_0355: Unknown result type (might be due to invalid IL or missing references)
		//IL_0367: Unknown result type (might be due to invalid IL or missing references)
		//IL_0379: Unknown result type (might be due to invalid IL or missing references)
		//IL_038b: Unknown result type (might be due to invalid IL or missing references)
		//IL_039d: Unknown result type (might be due to invalid IL or missing references)
		//IL_03af: Unknown result type (might be due to invalid IL or missing references)
		//IL_03c1: Unknown result type (might be due to invalid IL or missing references)
		//IL_03d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_03e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_03f7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0409: Unknown result type (might be due to invalid IL or missing references)
		//IL_041b: Unknown result type (might be due to invalid IL or missing references)
		//IL_042d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0459: Unknown result type (might be due to invalid IL or missing references)
		//IL_046b: Unknown result type (might be due to invalid IL or missing references)
		//IL_047d: Unknown result type (might be due to invalid IL or missing references)
		//IL_048f: Unknown result type (might be due to invalid IL or missing references)
		//IL_04a1: Unknown result type (might be due to invalid IL or missing references)
		//IL_04b3: Unknown result type (might be due to invalid IL or missing references)
		//IL_04c5: Unknown result type (might be due to invalid IL or missing references)
		//IL_04d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_04e9: Unknown result type (might be due to invalid IL or missing references)
		//IL_04fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_050d: Unknown result type (might be due to invalid IL or missing references)
		//IL_051f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0531: Unknown result type (might be due to invalid IL or missing references)
		//IL_0543: Unknown result type (might be due to invalid IL or missing references)
		//IL_0555: Unknown result type (might be due to invalid IL or missing references)
		//IL_0567: Unknown result type (might be due to invalid IL or missing references)
		//IL_0579: Unknown result type (might be due to invalid IL or missing references)
		//IL_058b: Unknown result type (might be due to invalid IL or missing references)
		//IL_059d: Unknown result type (might be due to invalid IL or missing references)
		//IL_05eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_05f0: Unknown result type (might be due to invalid IL or missing references)
		//IL_05fa: Expected O, but got Unknown
		//IL_061a: Unknown result type (might be due to invalid IL or missing references)
		//IL_061f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0629: Expected O, but got Unknown
		//IL_0649: Unknown result type (might be due to invalid IL or missing references)
		//IL_064e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0658: Expected O, but got Unknown
		//IL_0678: Unknown result type (might be due to invalid IL or missing references)
		//IL_067d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0687: Expected O, but got Unknown
		//IL_06a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_06ac: Unknown result type (might be due to invalid IL or missing references)
		//IL_06b6: Expected O, but got Unknown
		//IL_06d6: Unknown result type (might be due to invalid IL or missing references)
		//IL_06db: Unknown result type (might be due to invalid IL or missing references)
		//IL_06e5: Expected O, but got Unknown
		//IL_0705: Unknown result type (might be due to invalid IL or missing references)
		//IL_070a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0714: Expected O, but got Unknown
		//IL_0734: Unknown result type (might be due to invalid IL or missing references)
		//IL_0739: Unknown result type (might be due to invalid IL or missing references)
		//IL_0743: Expected O, but got Unknown
		//IL_0763: Unknown result type (might be due to invalid IL or missing references)
		//IL_0768: Unknown result type (might be due to invalid IL or missing references)
		//IL_0772: Expected O, but got Unknown
		//IL_0792: Unknown result type (might be due to invalid IL or missing references)
		//IL_0797: Unknown result type (might be due to invalid IL or missing references)
		//IL_07a1: Expected O, but got Unknown
		//IL_07c1: Unknown result type (might be due to invalid IL or missing references)
		//IL_07c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_07d0: Expected O, but got Unknown
		//IL_07f0: Unknown result type (might be due to invalid IL or missing references)
		//IL_07f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_07ff: Expected O, but got Unknown
		//IL_081f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0824: Unknown result type (might be due to invalid IL or missing references)
		//IL_082e: Expected O, but got Unknown
		//IL_084e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0853: Unknown result type (might be due to invalid IL or missing references)
		//IL_085d: Expected O, but got Unknown
		//IL_087d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0882: Unknown result type (might be due to invalid IL or missing references)
		//IL_088c: Expected O, but got Unknown
		//IL_08ac: Unknown result type (might be due to invalid IL or missing references)
		//IL_08b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_08bb: Expected O, but got Unknown
		//IL_08db: Unknown result type (might be due to invalid IL or missing references)
		//IL_08e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_08ea: Expected O, but got Unknown
		//IL_090a: Unknown result type (might be due to invalid IL or missing references)
		//IL_090f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0919: Expected O, but got Unknown
		//IL_0939: Unknown result type (might be due to invalid IL or missing references)
		//IL_093e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0948: Expected O, but got Unknown
		//IL_0970: Unknown result type (might be due to invalid IL or missing references)
		//IL_0982: Unknown result type (might be due to invalid IL or missing references)
		//IL_0994: Unknown result type (might be due to invalid IL or missing references)
		//IL_09a6: Unknown result type (might be due to invalid IL or missing references)
		//IL_09b8: Unknown result type (might be due to invalid IL or missing references)
		//IL_09ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_09dc: Unknown result type (might be due to invalid IL or missing references)
		//IL_09ee: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a00: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a2c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a3e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a50: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a62: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a74: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a86: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a98: Unknown result type (might be due to invalid IL or missing references)
		//IL_0aaa: Unknown result type (might be due to invalid IL or missing references)
		//IL_0abc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b0a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b0f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b19: Expected O, but got Unknown
		//IL_0b39: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b3e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b48: Expected O, but got Unknown
		//IL_0b68: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b6d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b77: Expected O, but got Unknown
		//IL_0b97: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b9c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ba6: Expected O, but got Unknown
		//IL_0bc6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bcb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bd5: Expected O, but got Unknown
		//IL_0bf5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bfa: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c04: Expected O, but got Unknown
		//IL_0c24: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c29: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c33: Expected O, but got Unknown
		//IL_0c53: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c58: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c62: Expected O, but got Unknown
		//IL_0c82: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c87: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c91: Expected O, but got Unknown
		//IL_0cb9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ccb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cdd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cef: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d01: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d2d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d3f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d51: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d63: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d75: Unknown result type (might be due to invalid IL or missing references)
		//IL_0dc3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0dc8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0dd2: Expected O, but got Unknown
		//IL_0df2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0df7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e01: Expected O, but got Unknown
		//IL_0e21: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e26: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e30: Expected O, but got Unknown
		//IL_0e50: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e55: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e5f: Expected O, but got Unknown
		//IL_0e7f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e84: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e8e: Expected O, but got Unknown
		//IL_0203: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0235: Unknown result type (might be due to invalid IL or missing references)
		//IL_0247: Unknown result type (might be due to invalid IL or missing references)
		//IL_0259: Unknown result type (might be due to invalid IL or missing references)
		//IL_026b: Unknown result type (might be due to invalid IL or missing references)
		//IL_020c: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_0215: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_021e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0227: Unknown result type (might be due to invalid IL or missing references)
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
					((Control)groupBox3).BackgroundImage = Image.FromFile(fileName);
					((Control)groupBox4).BackgroundImage = Image.FromFile(fileName);
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
					((Control)groupBox3).BackgroundImageLayout = layout;
					((Control)groupBox4).BackgroundImageLayout = layout;
					((Control)groupBox5).BackgroundImageLayout = layout;
				}
				else
				{
					((Control)groupBox1).BackColor = Color.FromArgb(num2);
					((Control)groupBox3).BackColor = Color.FromArgb(num2);
					((Control)groupBox4).BackColor = Color.FromArgb(num2);
					((Control)groupBox5).BackColor = Color.FromArgb(num2);
				}
				int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
				((Control)label6).BackColor = Color.FromArgb(num2);
				((Control)label1).BackColor = Color.FromArgb(num2);
				((Control)label10).BackColor = Color.FromArgb(num2);
				((Control)label2).BackColor = Color.FromArgb(num2);
				((Control)label3).BackColor = Color.FromArgb(num2);
				((Control)label4).BackColor = Color.FromArgb(num2);
				((Control)label7).BackColor = Color.FromArgb(num2);
				((Control)label15).BackColor = Color.FromArgb(num2);
				((Control)label16).BackColor = Color.FromArgb(num2);
				((Control)label17).BackColor = Color.FromArgb(num2);
				((Control)CheckboxDaPet).BackColor = Color.FromArgb(num2);
				((Control)CheckboxTrong).BackColor = Color.FromArgb(num2);
				((Control)checkBoxChat).BackColor = Color.FromArgb(num2);
				((Control)checkBoxLog).BackColor = Color.FromArgb(num2);
				((Control)checkBoxLog_BB).BackColor = Color.FromArgb(num2);
				((Control)checkBoxClone).BackColor = Color.FromArgb(num2);
				((Control)checkBoxNormal).BackColor = Color.FromArgb(num2);
				((Control)checkBox1).BackColor = Color.FromArgb(num2);
				((Control)checkBox2).BackColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
				((Control)label6).ForeColor = Color.FromArgb(num2);
				((Control)label1).ForeColor = Color.FromArgb(num2);
				((Control)label10).ForeColor = Color.FromArgb(num2);
				((Control)label2).ForeColor = Color.FromArgb(num2);
				((Control)label3).ForeColor = Color.FromArgb(num2);
				((Control)label4).ForeColor = Color.FromArgb(num2);
				((Control)label7).ForeColor = Color.FromArgb(num2);
				((Control)label15).ForeColor = Color.FromArgb(num2);
				((Control)label16).ForeColor = Color.FromArgb(num2);
				((Control)label17).ForeColor = Color.FromArgb(num2);
				((Control)CheckboxDaPet).ForeColor = Color.FromArgb(num2);
				((Control)CheckboxTrong).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxChat).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxLog).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxLog_BB).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxClone).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxNormal).ForeColor = Color.FromArgb(num2);
				((Control)checkBox1).ForeColor = Color.FromArgb(num2);
				((Control)checkBox2).ForeColor = Color.FromArgb(num2);
				object obj = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
				Font val = (Font)((obj is Font) ? obj : null);
				((Control)label6).Font = new Font(val.FontFamily, ((Control)label6).Font.Size, val.Style);
				((Control)label1).Font = new Font(val.FontFamily, ((Control)label1).Font.Size, val.Style);
				((Control)label10).Font = new Font(val.FontFamily, ((Control)label10).Font.Size, val.Style);
				((Control)label2).Font = new Font(val.FontFamily, ((Control)label2).Font.Size, val.Style);
				((Control)label3).Font = new Font(val.FontFamily, ((Control)label3).Font.Size, val.Style);
				((Control)label4).Font = new Font(val.FontFamily, ((Control)label4).Font.Size, val.Style);
				((Control)label7).Font = new Font(val.FontFamily, ((Control)label7).Font.Size, val.Style);
				((Control)label15).Font = new Font(val.FontFamily, ((Control)label15).Font.Size, val.Style);
				((Control)label16).Font = new Font(val.FontFamily, ((Control)label16).Font.Size, val.Style);
				((Control)label17).Font = new Font(val.FontFamily, ((Control)label17).Font.Size, val.Style);
				((Control)CheckboxDaPet).Font = new Font(val.FontFamily, ((Control)CheckboxDaPet).Font.Size, val.Style);
				((Control)CheckboxTrong).Font = new Font(val.FontFamily, ((Control)CheckboxTrong).Font.Size, val.Style);
				((Control)checkBoxChat).Font = new Font(val.FontFamily, ((Control)checkBoxChat).Font.Size, val.Style);
				((Control)checkBoxLog).Font = new Font(val.FontFamily, ((Control)checkBoxLog).Font.Size, val.Style);
				((Control)checkBoxLog_BB).Font = new Font(val.FontFamily, ((Control)checkBoxLog_BB).Font.Size, val.Style);
				((Control)checkBoxClone).Font = new Font(val.FontFamily, ((Control)checkBoxClone).Font.Size, val.Style);
				((Control)checkBoxNormal).Font = new Font(val.FontFamily, ((Control)checkBoxNormal).Font.Size, val.Style);
				((Control)checkBox1).Font = new Font(val.FontFamily, ((Control)checkBox1).Font.Size, val.Style);
				((Control)checkBox2).Font = new Font(val.FontFamily, ((Control)checkBox2).Font.Size, val.Style);
				int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
				((Control)buttonReset).BackColor = Color.FromArgb(num2);
				((Control)ButtonRunAuto).BackColor = Color.FromArgb(num2);
				((Control)buttonPause).BackColor = Color.FromArgb(num2);
				((Control)ButtonDebug).BackColor = Color.FromArgb(num2);
				((Control)buttonViTri1).BackColor = Color.FromArgb(num2);
				((Control)buttonViTri2).BackColor = Color.FromArgb(num2);
				((Control)buttonViTri3).BackColor = Color.FromArgb(num2);
				((Control)buttonViTri4).BackColor = Color.FromArgb(num2);
				((Control)buttonSave).BackColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
				((Control)buttonReset).ForeColor = Color.FromArgb(num2);
				((Control)ButtonRunAuto).ForeColor = Color.FromArgb(num2);
				((Control)buttonPause).ForeColor = Color.FromArgb(num2);
				((Control)ButtonDebug).ForeColor = Color.FromArgb(num2);
				((Control)buttonViTri1).ForeColor = Color.FromArgb(num2);
				((Control)buttonViTri2).ForeColor = Color.FromArgb(num2);
				((Control)buttonViTri3).ForeColor = Color.FromArgb(num2);
				((Control)buttonViTri4).ForeColor = Color.FromArgb(num2);
				((Control)buttonSave).ForeColor = Color.FromArgb(num2);
				object obj2 = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
				val = (Font)((obj2 is Font) ? obj2 : null);
				((Control)buttonReset).Font = new Font(val.FontFamily, ((Control)buttonReset).Font.Size, val.Style);
				((Control)ButtonRunAuto).Font = new Font(val.FontFamily, ((Control)ButtonRunAuto).Font.Size, val.Style);
				((Control)buttonPause).Font = new Font(val.FontFamily, ((Control)buttonPause).Font.Size, val.Style);
				((Control)ButtonDebug).Font = new Font(val.FontFamily, ((Control)ButtonDebug).Font.Size, val.Style);
				((Control)buttonViTri1).Font = new Font(val.FontFamily, ((Control)buttonViTri1).Font.Size, val.Style);
				((Control)buttonViTri2).Font = new Font(val.FontFamily, ((Control)buttonViTri2).Font.Size, val.Style);
				((Control)buttonViTri3).Font = new Font(val.FontFamily, ((Control)buttonViTri3).Font.Size, val.Style);
				((Control)buttonViTri4).Font = new Font(val.FontFamily, ((Control)buttonViTri4).Font.Size, val.Style);
				((Control)buttonSave).Font = new Font(val.FontFamily, ((Control)buttonSave).Font.Size, val.Style);
				int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
				((Control)textBox1).BackColor = Color.FromArgb(num2);
				((Control)textBoxChat).BackColor = Color.FromArgb(num2);
				((Control)comboBoxTrong).BackColor = Color.FromArgb(num2);
				((Control)comboBoxChat).BackColor = Color.FromArgb(num2);
				((Control)comboBox1).BackColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
				((Control)textBox1).ForeColor = Color.FromArgb(num2);
				((Control)textBoxChat).ForeColor = Color.FromArgb(num2);
				((Control)comboBoxTrong).ForeColor = Color.FromArgb(num2);
				((Control)comboBoxChat).ForeColor = Color.FromArgb(num2);
				((Control)comboBox1).ForeColor = Color.FromArgb(num2);
				object obj3 = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
				val = (Font)((obj3 is Font) ? obj3 : null);
				((Control)textBox1).Font = new Font(val.FontFamily, ((Control)textBox1).Font.Size, val.Style);
				((Control)textBoxChat).Font = new Font(val.FontFamily, ((Control)textBoxChat).Font.Size, val.Style);
				((Control)comboBoxTrong).Font = new Font(val.FontFamily, ((Control)comboBoxTrong).Font.Size, val.Style);
				((Control)comboBoxChat).Font = new Font(val.FontFamily, ((Control)comboBoxChat).Font.Size, val.Style);
				((Control)comboBox1).Font = new Font(val.FontFamily, ((Control)comboBox1).Font.Size, val.Style);
				return true;
			}
		}
		catch (System.Exception)
		{
			return false;
		}
		return false;
	}

	private void TruMa_FormClosed(object sender, FormClosedEventArgs e)
	{
		//IL_000f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0019: Expected O, but got Unknown
		Login login = new Login();
		((Form)login).Closed += (EventHandler)([CompilerGenerated] (object? s, EventArgs args) =>
		{
			((Form)this).Close();
		});
	}

	private void textBoxChat_TextChanged(object sender, EventArgs e)
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
		//IL_02b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_02da: Unknown result type (might be due to invalid IL or missing references)
		//IL_031e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0328: Expected O, but got Unknown
		//IL_0340: Unknown result type (might be due to invalid IL or missing references)
		//IL_0366: Unknown result type (might be due to invalid IL or missing references)
		//IL_03b8: Unknown result type (might be due to invalid IL or missing references)
		//IL_03c2: Expected O, but got Unknown
		//IL_03d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0402: Unknown result type (might be due to invalid IL or missing references)
		//IL_0446: Unknown result type (might be due to invalid IL or missing references)
		//IL_0450: Expected O, but got Unknown
		//IL_045e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0468: Expected O, but got Unknown
		//IL_047f: Unknown result type (might be due to invalid IL or missing references)
		//IL_04a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_04ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_04f6: Expected O, but got Unknown
		//IL_0504: Unknown result type (might be due to invalid IL or missing references)
		//IL_050e: Expected O, but got Unknown
		//IL_0525: Unknown result type (might be due to invalid IL or missing references)
		//IL_054b: Unknown result type (might be due to invalid IL or missing references)
		//IL_058f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0599: Expected O, but got Unknown
		//IL_05a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_05b1: Expected O, but got Unknown
		//IL_05cf: Unknown result type (might be due to invalid IL or missing references)
		//IL_05f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0635: Unknown result type (might be due to invalid IL or missing references)
		//IL_065e: Unknown result type (might be due to invalid IL or missing references)
		//IL_06a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_06ac: Expected O, but got Unknown
		//IL_06ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_06c4: Expected O, but got Unknown
		//IL_070e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0734: Unknown result type (might be due to invalid IL or missing references)
		//IL_077b: Unknown result type (might be due to invalid IL or missing references)
		//IL_07a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_08da: Unknown result type (might be due to invalid IL or missing references)
		//IL_0906: Unknown result type (might be due to invalid IL or missing references)
		//IL_0971: Unknown result type (might be due to invalid IL or missing references)
		//IL_0997: Unknown result type (might be due to invalid IL or missing references)
		//IL_09db: Unknown result type (might be due to invalid IL or missing references)
		//IL_09e5: Expected O, but got Unknown
		//IL_0a00: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a26: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a6a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a74: Expected O, but got Unknown
		//IL_0a8f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ab5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0af9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b03: Expected O, but got Unknown
		//IL_0b1e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b44: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b80: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b8a: Expected O, but got Unknown
		//IL_0b98: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bdd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c2f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c58: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d78: Unknown result type (might be due to invalid IL or missing references)
		//IL_0da4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0df1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e45: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e7c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e86: Expected O, but got Unknown
		//IL_0ea1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ec7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f0b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f31: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f71: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f97: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fdb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fe5: Expected O, but got Unknown
		//IL_1066: Unknown result type (might be due to invalid IL or missing references)
		//IL_108c: Unknown result type (might be due to invalid IL or missing references)
		//IL_10fc: Unknown result type (might be due to invalid IL or missing references)
		//IL_1122: Unknown result type (might be due to invalid IL or missing references)
		//IL_115e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1168: Expected O, but got Unknown
		//IL_1173: Unknown result type (might be due to invalid IL or missing references)
		//IL_11b8: Unknown result type (might be due to invalid IL or missing references)
		//IL_11fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_1208: Expected O, but got Unknown
		//IL_1213: Unknown result type (might be due to invalid IL or missing references)
		//IL_1258: Unknown result type (might be due to invalid IL or missing references)
		//IL_12a3: Unknown result type (might be due to invalid IL or missing references)
		//IL_12c9: Unknown result type (might be due to invalid IL or missing references)
		//IL_12fc: Unknown result type (might be due to invalid IL or missing references)
		//IL_1306: Expected O, but got Unknown
		//IL_1314: Unknown result type (might be due to invalid IL or missing references)
		//IL_1364: Unknown result type (might be due to invalid IL or missing references)
		//IL_13a5: Unknown result type (might be due to invalid IL or missing references)
		//IL_13cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_140b: Unknown result type (might be due to invalid IL or missing references)
		//IL_1431: Unknown result type (might be due to invalid IL or missing references)
		//IL_1468: Unknown result type (might be due to invalid IL or missing references)
		//IL_148e: Unknown result type (might be due to invalid IL or missing references)
		//IL_14d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_14db: Expected O, but got Unknown
		//IL_14ee: Unknown result type (might be due to invalid IL or missing references)
		//IL_14f8: Expected O, but got Unknown
		//IL_1503: Unknown result type (might be due to invalid IL or missing references)
		//IL_1548: Unknown result type (might be due to invalid IL or missing references)
		//IL_1597: Unknown result type (might be due to invalid IL or missing references)
		//IL_15bd: Unknown result type (might be due to invalid IL or missing references)
		//IL_16b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_16d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_1727: Unknown result type (might be due to invalid IL or missing references)
		//IL_174d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1796: Unknown result type (might be due to invalid IL or missing references)
		//IL_17a0: Expected O, but got Unknown
		//IL_17ab: Unknown result type (might be due to invalid IL or missing references)
		//IL_17d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_181a: Unknown result type (might be due to invalid IL or missing references)
		//IL_1824: Expected O, but got Unknown
		//IL_182f: Unknown result type (might be due to invalid IL or missing references)
		//IL_1855: Unknown result type (might be due to invalid IL or missing references)
		//IL_18a6: Unknown result type (might be due to invalid IL or missing references)
		//IL_18cc: Unknown result type (might be due to invalid IL or missing references)
		//IL_1910: Unknown result type (might be due to invalid IL or missing references)
		//IL_191a: Expected O, but got Unknown
		//IL_19b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_19de: Unknown result type (might be due to invalid IL or missing references)
		//IL_1a34: Unknown result type (might be due to invalid IL or missing references)
		//IL_1a3e: Expected O, but got Unknown
		//IL_1a4c: Unknown result type (might be due to invalid IL or missing references)
		//IL_1a8d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1ad3: Unknown result type (might be due to invalid IL or missing references)
		//IL_1add: Expected O, but got Unknown
		//IL_1ae8: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b29: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b74: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b9a: Unknown result type (might be due to invalid IL or missing references)
		//IL_1bda: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c00: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c4d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c73: Unknown result type (might be due to invalid IL or missing references)
		//IL_1cb0: Unknown result type (might be due to invalid IL or missing references)
		//IL_1cd6: Unknown result type (might be due to invalid IL or missing references)
		//IL_1d1f: Unknown result type (might be due to invalid IL or missing references)
		//IL_1d29: Expected O, but got Unknown
		//IL_1d37: Unknown result type (might be due to invalid IL or missing references)
		//IL_1d5d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1d93: Unknown result type (might be due to invalid IL or missing references)
		//IL_1db9: Unknown result type (might be due to invalid IL or missing references)
		//IL_1dfd: Unknown result type (might be due to invalid IL or missing references)
		//IL_1e07: Expected O, but got Unknown
		//IL_1e26: Unknown result type (might be due to invalid IL or missing references)
		//IL_1e4c: Unknown result type (might be due to invalid IL or missing references)
		//IL_1e97: Unknown result type (might be due to invalid IL or missing references)
		//IL_1eb5: Unknown result type (might be due to invalid IL or missing references)
		//IL_1ff4: Unknown result type (might be due to invalid IL or missing references)
		//IL_1ffe: Expected O, but got Unknown
		//IL_2007: Unknown result type (might be due to invalid IL or missing references)
		//IL_2011: Expected O, but got Unknown
		buttonPause = new Button();
		ButtonRunAuto = new CheckBox();
		buttonViTri1 = new Button();
		buttonViTri2 = new Button();
		buttonViTri3 = new Button();
		label2 = new Label();
		buttonViTri4 = new Button();
		comboBox1 = new ComboBox();
		checkBox1 = new CheckBox();
		groupBox1 = new GroupBox();
		checkBoxNormal = new CheckBox();
		checkBoxClone = new CheckBox();
		CheckboxDaPet = new CheckBox();
		label4 = new Label();
		numericUpDownDaPet = new NumericUpDown();
		checkBox2 = new CheckBox();
		groupBox3 = new GroupBox();
		textBoxChat = new TextBox();
		label3 = new Label();
		label7 = new Label();
		CheckboxTrong = new CheckBox();
		comboBoxTrong = new ComboBox();
		comboBoxChat = new ComboBox();
		numericUpDownGio = new NumericUpDown();
		numericUpDownChat = new NumericUpDown();
		checkBoxChat = new CheckBox();
		textBox1 = new TextBox();
		label1 = new Label();
		label6 = new Label();
		buttonReset = new Button();
		numericUpDownFPS = new NumericUpDown();
		pictureBox1 = new PictureBox();
		groupBox4 = new GroupBox();
		label10 = new Label();
		label11 = new Label();
		label12 = new Label();
		ButtonDebug = new CheckBox();
		groupBox5 = new GroupBox();
		numericUpDownKenh = new NumericUpDown();
		numericUpDownNV = new NumericUpDown();
		label16 = new Label();
		checkBoxLog_BB = new CheckBox();
		checkBoxLog = new CheckBox();
		label15 = new Label();
		label17 = new Label();
		buttonSave = new Button();
		pictureBox2 = new PictureBox();
		((Control)groupBox1).SuspendLayout();
		((ISupportInitialize)numericUpDownDaPet).BeginInit();
		((Control)groupBox3).SuspendLayout();
		((ISupportInitialize)numericUpDownGio).BeginInit();
		((ISupportInitialize)numericUpDownChat).BeginInit();
		((ISupportInitialize)numericUpDownFPS).BeginInit();
		((ISupportInitialize)pictureBox1).BeginInit();
		((Control)groupBox4).SuspendLayout();
		((Control)groupBox5).SuspendLayout();
		((ISupportInitialize)numericUpDownKenh).BeginInit();
		((ISupportInitialize)numericUpDownNV).BeginInit();
		((ISupportInitialize)pictureBox2).BeginInit();
		((Control)this).SuspendLayout();
		((Control)buttonPause).Enabled = false;
		((Control)buttonPause).Location = new Point(81, 124);
		((Control)buttonPause).Name = "buttonPause";
		((Control)buttonPause).Size = new Size(66, 25);
		((Control)buttonPause).TabIndex = 18;
		((Control)buttonPause).Text = "Pause";
		((ButtonBase)buttonPause).UseVisualStyleBackColor = true;
		((Control)buttonPause).Click += new EventHandler(buttonPause_Click);
		ButtonRunAuto.Appearance = (Appearance)1;
		((Control)ButtonRunAuto).Location = new Point(10, 124);
		((Control)ButtonRunAuto).Name = "ButtonRunAuto";
		((Control)ButtonRunAuto).Size = new Size(65, 25);
		((Control)ButtonRunAuto).TabIndex = 17;
		((Control)ButtonRunAuto).Text = "Start";
		((ButtonBase)ButtonRunAuto).TextAlign = (ContentAlignment)32;
		((ButtonBase)ButtonRunAuto).UseVisualStyleBackColor = true;
		ButtonRunAuto.CheckStateChanged += new EventHandler(ButtonRunAuto_CheckStateChanged);
		((Control)buttonViTri1).Enabled = false;
		((Control)buttonViTri1).Location = new Point(6, 50);
		((Control)buttonViTri1).Name = "buttonViTri1";
		((Control)buttonViTri1).Size = new Size(158, 23);
		((Control)buttonViTri1).TabIndex = 21;
		((Control)buttonViTri1).Text = "Quan Quân Nhu";
		((ButtonBase)buttonViTri1).UseVisualStyleBackColor = true;
		((Control)buttonViTri1).MouseDown += new MouseEventHandler(buttonViTri1_MouseDown);
		((Control)buttonViTri1).MouseUp += new MouseEventHandler(buttonViTri1_MouseUp);
		((Control)buttonViTri2).Enabled = false;
		((Control)buttonViTri2).Location = new Point(6, 79);
		((Control)buttonViTri2).Name = "buttonViTri2";
		((Control)buttonViTri2).Size = new Size(158, 23);
		((Control)buttonViTri2).TabIndex = 21;
		((Control)buttonViTri2).Text = "Dịch Chuyển Terry TTL";
		((ButtonBase)buttonViTri2).UseVisualStyleBackColor = true;
		((Control)buttonViTri2).MouseDown += new MouseEventHandler(button1_MouseDown);
		((Control)buttonViTri2).MouseUp += new MouseEventHandler(button1_MouseUp);
		((Control)buttonViTri3).Enabled = false;
		((Control)buttonViTri3).Location = new Point(6, 22);
		((Control)buttonViTri3).Name = "buttonViTri3";
		((Control)buttonViTri3).Size = new Size(118, 24);
		((Control)buttonViTri3).TabIndex = 21;
		((Control)buttonViTri3).Text = "NPC Dịch Chuyển";
		((ButtonBase)buttonViTri3).UseVisualStyleBackColor = true;
		((Control)buttonViTri3).MouseDown += new MouseEventHandler(button2_MouseDown);
		((Control)buttonViTri3).MouseUp += new MouseEventHandler(button2_MouseUp);
		((Control)label2).AutoSize = true;
		((Control)label2).Location = new Point(220, 129);
		((Control)label2).Name = "label2";
		((Control)label2).Size = new Size(32, 15);
		((Control)label2).TabIndex = 13;
		((Control)label2).Text = "null?";
		((Control)buttonViTri4).Enabled = false;
		((Control)buttonViTri4).Location = new Point(6, 108);
		((Control)buttonViTri4).Name = "buttonViTri4";
		((Control)buttonViTri4).Size = new Size(158, 23);
		((Control)buttonViTri4).TabIndex = 21;
		((Control)buttonViTri4).Text = "Dịch Chuyển Mark ĐHT";
		((ButtonBase)buttonViTri4).UseVisualStyleBackColor = true;
		((Control)buttonViTri4).MouseDown += new MouseEventHandler(button2_MouseDown);
		((Control)buttonViTri4).MouseUp += new MouseEventHandler(button3_MouseUp);
		((ListControl)comboBox1).FormattingEnabled = true;
		comboBox1.Items.AddRange(new object[3] { "Tinh Linh Thành", "Bàng Bối Thành", "Tiên Lạp Thành" });
		((Control)comboBox1).Location = new Point(133, 23);
		((Control)comboBox1).Name = "comboBox1";
		((Control)comboBox1).Size = new Size(118, 23);
		((Control)comboBox1).TabIndex = 22;
		((Control)comboBox1).Text = "Tinh Linh Thành";
		((Control)checkBox1).AutoSize = true;
		((Control)checkBox1).Location = new Point(515, 381);
		((Control)checkBox1).Name = "checkBox1";
		((Control)checkBox1).Size = new Size(131, 19);
		((Control)checkBox1).TabIndex = 23;
		((Control)checkBox1).Text = "Phục Hồi Nhiệm Vụ";
		((ButtonBase)checkBox1).UseVisualStyleBackColor = true;
		((Control)checkBox1).Visible = false;
		((Control)groupBox1).Controls.Add((Control)(object)checkBoxNormal);
		((Control)groupBox1).Controls.Add((Control)(object)checkBoxClone);
		((Control)groupBox1).Controls.Add((Control)(object)comboBox1);
		((Control)groupBox1).Controls.Add((Control)(object)buttonViTri2);
		((Control)groupBox1).Controls.Add((Control)(object)buttonViTri3);
		((Control)groupBox1).Controls.Add((Control)(object)buttonViTri4);
		((Control)groupBox1).Controls.Add((Control)(object)buttonViTri1);
		((Control)groupBox1).Controls.Add((Control)(object)CheckboxDaPet);
		((Control)groupBox1).Controls.Add((Control)(object)label4);
		((Control)groupBox1).Controls.Add((Control)(object)numericUpDownDaPet);
		((Control)groupBox1).Location = new Point(6, 155);
		((Control)groupBox1).Name = "groupBox1";
		((Control)groupBox1).Size = new Size(358, 144);
		((Control)groupBox1).TabIndex = 24;
		groupBox1.TabStop = false;
		((Control)groupBox1).Text = "Thiết Lập ( Post và Kéo Thả Nút Tới Tên NPC Tương Ứng)";
		((Control)checkBoxNormal).AutoSize = true;
		checkBoxNormal.Checked = true;
		checkBoxNormal.CheckState = (CheckState)1;
		((Control)checkBoxNormal).Location = new Point(203, 83);
		((Control)checkBoxNormal).Name = "checkBoxNormal";
		((Control)checkBoxNormal).Size = new Size(118, 19);
		((Control)checkBoxNormal).TabIndex = 23;
		((Control)checkBoxNormal).Text = "Dịch Chuyển Phù";
		((ButtonBase)checkBoxNormal).UseVisualStyleBackColor = true;
		checkBoxNormal.CheckStateChanged += new EventHandler(checkBoxNormal_CheckStateChanged);
		((Control)checkBoxClone).AutoSize = true;
		((Control)checkBoxClone).Location = new Point(203, 108);
		((Control)checkBoxClone).Name = "checkBoxClone";
		((Control)checkBoxClone).Size = new Size(101, 34);
		((Control)checkBoxClone).TabIndex = 23;
		((Control)checkBoxClone).Text = "Click Tên NPC\r\nĐể Di Chuyển";
		((ButtonBase)checkBoxClone).UseVisualStyleBackColor = true;
		checkBoxClone.CheckStateChanged += new EventHandler(checkBoxClone_CheckStateChanged);
		((Control)CheckboxDaPet).AutoSize = true;
		((Control)CheckboxDaPet).Location = new Point(203, 54);
		((Control)CheckboxDaPet).Name = "CheckboxDaPet";
		((Control)CheckboxDaPet).Size = new Size(60, 19);
		((Control)CheckboxDaPet).TabIndex = 23;
		((Control)CheckboxDaPet).Text = "Đá Pet";
		((ButtonBase)CheckboxDaPet).UseVisualStyleBackColor = true;
		CheckboxDaPet.CheckStateChanged += new EventHandler(CheckboxDaPet_CheckStateChanged);
		((Control)label4).AutoSize = true;
		((Control)label4).Location = new Point(309, 55);
		((Control)label4).Name = "label4";
		((Control)label4).Size = new Size(31, 15);
		((Control)label4).TabIndex = 13;
		((Control)label4).Text = "Lượt";
		((Control)numericUpDownDaPet).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownDaPet).Location = new Point(269, 53);
		numericUpDownDaPet.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownDaPet).Name = "numericUpDownDaPet";
		((Control)numericUpDownDaPet).Size = new Size(34, 23);
		((Control)numericUpDownDaPet).TabIndex = 15;
		numericUpDownDaPet.Value = new decimal(new int[4] { 20, 0, 0, 0 });
		((Control)checkBox2).AutoSize = true;
		((Control)checkBox2).Location = new Point(500, 414);
		((Control)checkBox2).Name = "checkBox2";
		((Control)checkBox2).Size = new Size(151, 19);
		((Control)checkBox2).TabIndex = 23;
		((Control)checkBox2).Text = "Fix Độ Phân Giải và Skin";
		((ButtonBase)checkBox2).UseVisualStyleBackColor = true;
		((Control)checkBox2).Visible = false;
		((Control)groupBox3).Controls.Add((Control)(object)textBoxChat);
		((Control)groupBox3).Controls.Add((Control)(object)label3);
		((Control)groupBox3).Controls.Add((Control)(object)label7);
		((Control)groupBox3).Controls.Add((Control)(object)CheckboxTrong);
		((Control)groupBox3).Controls.Add((Control)(object)comboBoxTrong);
		((Control)groupBox3).Controls.Add((Control)(object)comboBoxChat);
		((Control)groupBox3).Controls.Add((Control)(object)numericUpDownGio);
		((Control)groupBox3).Controls.Add((Control)(object)numericUpDownChat);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxChat);
		((Control)groupBox3).Location = new Point(515, 55);
		((Control)groupBox3).Name = "groupBox3";
		((Control)groupBox3).Size = new Size(182, 208);
		((Control)groupBox3).TabIndex = 29;
		groupBox3.TabStop = false;
		((Control)groupBox3).Text = "Đá Pet - Trang Viên - Chat";
		((Control)groupBox3).Visible = false;
		((Control)textBoxChat).Location = new Point(6, 109);
		((TextBoxBase)textBoxChat).MaxLength = 99999;
		((TextBoxBase)textBoxChat).Multiline = true;
		((Control)textBoxChat).Name = "textBoxChat";
		textBoxChat.ScrollBars = (ScrollBars)2;
		((Control)textBoxChat).Size = new Size(168, 93);
		((Control)textBoxChat).TabIndex = 30;
		((Control)textBoxChat).Text = "- Chọn Kênh chat và Thời Gian mỗi lần Chat.\r\n- Mỗi câu Chat cách nhau bằng dấu xuống dòng.\r\n- Mỗi câu Chat trong game tối đa 99 ký tự.\r\n";
		((Control)textBoxChat).TextChanged += new EventHandler(textBoxChat_TextChanged);
		((Control)label3).AutoSize = true;
		((Control)label3).Location = new Point(147, 53);
		((Control)label3).Name = "label3";
		((Control)label3).Size = new Size(25, 15);
		((Control)label3).TabIndex = 13;
		((Control)label3).Text = "Giờ";
		((Control)label7).AutoSize = true;
		((Control)label7).Location = new Point(144, 83);
		((Control)label7).Name = "label7";
		((Control)label7).Size = new Size(32, 15);
		((Control)label7).TabIndex = 34;
		((Control)label7).Text = "Phút";
		((Control)CheckboxTrong).AutoSize = true;
		((Control)CheckboxTrong).Location = new Point(6, 52);
		((Control)CheckboxTrong).Name = "CheckboxTrong";
		((Control)CheckboxTrong).Size = new Size(40, 19);
		((Control)CheckboxTrong).TabIndex = 29;
		((Control)CheckboxTrong).Text = "TV";
		((ButtonBase)CheckboxTrong).UseVisualStyleBackColor = true;
		CheckboxTrong.CheckStateChanged += new EventHandler(CheckboxDaPet_CheckStateChanged);
		((ListControl)comboBoxTrong).FormattingEnabled = true;
		comboBoxTrong.Items.AddRange(new object[10] { "Kim Loại", "Gỗ", "Lông Thú", "Ngọc", "Vải Thô", "Kim Loại Hiếm", "Gỗ Tốt", "Da Thú", "Pha Lê", "Gấm Vóc" });
		((Control)comboBoxTrong).Location = new Point(51, 50);
		((Control)comboBoxTrong).Name = "comboBoxTrong";
		((Control)comboBoxTrong).Size = new Size(60, 23);
		((Control)comboBoxTrong).TabIndex = 30;
		((Control)comboBoxTrong).Text = "Kim Loại";
		((ListControl)comboBoxChat).FormattingEnabled = true;
		comboBoxChat.Items.AddRange(new object[3] { "Hiện Tại", "Thế Giới", "Bang" });
		((Control)comboBoxChat).Location = new Point(27, 79);
		((Control)comboBoxChat).Name = "comboBoxChat";
		((Control)comboBoxChat).Size = new Size(68, 23);
		((Control)comboBoxChat).TabIndex = 30;
		((Control)comboBoxChat).Text = "Thế Giới";
		((Control)numericUpDownGio).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownGio).Location = new Point(117, 51);
		numericUpDownGio.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownGio).Name = "numericUpDownGio";
		((Control)numericUpDownGio).Size = new Size(26, 23);
		((Control)numericUpDownGio).TabIndex = 28;
		numericUpDownGio.Value = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownChat).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownChat).Location = new Point(106, 80);
		numericUpDownChat.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownChat).Name = "numericUpDownChat";
		((Control)numericUpDownChat).Size = new Size(35, 23);
		((Control)numericUpDownChat).TabIndex = 35;
		numericUpDownChat.Value = new decimal(new int[4] { 20, 0, 0, 0 });
		((Control)checkBoxChat).AutoSize = true;
		((Control)checkBoxChat).Location = new Point(6, 83);
		((Control)checkBoxChat).Name = "checkBoxChat";
		((Control)checkBoxChat).Size = new Size(15, 14);
		((Control)checkBoxChat).TabIndex = 23;
		((ButtonBase)checkBoxChat).UseVisualStyleBackColor = true;
		checkBoxChat.CheckStateChanged += new EventHandler(CheckboxDaPet_CheckStateChanged);
		((Control)textBox1).Location = new Point(220, 12);
		((TextBoxBase)textBox1).Multiline = true;
		((Control)textBox1).Name = "textBox1";
		((TextBoxBase)textBox1).ReadOnly = true;
		textBox1.ScrollBars = (ScrollBars)2;
		((Control)textBox1).Size = new Size(144, 106);
		((Control)textBox1).TabIndex = 19;
		((Control)textBox1).Text = "-----------------------";
		((Control)label1).AutoSize = true;
		((Control)label1).Location = new Point(72, 80);
		((Control)label1).Name = "label1";
		((Control)label1).Size = new Size(29, 15);
		((Control)label1).TabIndex = 13;
		((Control)label1).Text = "FPS:";
		((Control)label6).AutoSize = true;
		((Control)label6).Location = new Point(6, 80);
		((Control)label6).Name = "label6";
		((Control)label6).Size = new Size(60, 15);
		((Control)label6).TabIndex = 13;
		((Control)label6).Text = "ID: 000000";
		((Control)buttonReset).Location = new Point(149, 77);
		((Control)buttonReset).Name = "buttonReset";
		((Control)buttonReset).Size = new Size(56, 25);
		((Control)buttonReset).TabIndex = 8;
		((Control)buttonReset).Text = "Reset";
		((ButtonBase)buttonReset).UseVisualStyleBackColor = true;
		((Control)buttonReset).Click += new EventHandler(buttonReset_Click);
		((Control)numericUpDownFPS).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownFPS).Location = new Point(107, 78);
		numericUpDownFPS.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownFPS).Name = "numericUpDownFPS";
		((Control)numericUpDownFPS).Size = new Size(36, 23);
		((Control)numericUpDownFPS).TabIndex = 15;
		numericUpDownFPS.Value = new decimal(new int[4] { 20, 0, 0, 0 });
		pictureBox1.Image = (Image)(object)Resources.anhNVr;
		((Control)pictureBox1).Location = new Point(6, 22);
		((Control)pictureBox1).Name = "pictureBox1";
		((Control)pictureBox1).Size = new Size(50, 50);
		pictureBox1.SizeMode = (PictureBoxSizeMode)2;
		pictureBox1.TabIndex = 0;
		pictureBox1.TabStop = false;
		((Control)groupBox4).Controls.Add((Control)(object)label10);
		((Control)groupBox4).Controls.Add((Control)(object)label11);
		((Control)groupBox4).Controls.Add((Control)(object)label12);
		((Control)groupBox4).Controls.Add((Control)(object)pictureBox1);
		((Control)groupBox4).Controls.Add((Control)(object)buttonReset);
		((Control)groupBox4).Controls.Add((Control)(object)label6);
		((Control)groupBox4).Controls.Add((Control)(object)numericUpDownFPS);
		((Control)groupBox4).Controls.Add((Control)(object)label1);
		((Control)groupBox4).Location = new Point(6, 12);
		((Control)groupBox4).Name = "groupBox4";
		((Control)groupBox4).Size = new Size(208, 106);
		((Control)groupBox4).TabIndex = 20;
		groupBox4.TabStop = false;
		((Control)groupBox4).Text = "groupBox4";
		((Control)label10).AutoSize = true;
		((Control)label10).Location = new Point(120, 27);
		((Control)label10).Name = "label10";
		((Control)label10).Size = new Size(86, 15);
		((Control)label10).TabIndex = 35;
		((Control)label10).Text = "Timer: 00:00:00";
		((Control)label11).AutoSize = true;
		((Control)label11).Font = new Font("Segoe UI Semibold", 12f, (FontStyle)3, (GraphicsUnit)3);
		((Control)label11).Location = new Point(66, 22);
		((Control)label11).Name = "label11";
		((Control)label11).Size = new Size(45, 21);
		((Control)label11).TabIndex = 33;
		((Control)label11).Text = "null?";
		((Control)label12).AutoSize = true;
		((Control)label12).Font = new Font("Segoe UI Semibold", 12f, (FontStyle)3, (GraphicsUnit)3);
		((Control)label12).Location = new Point(65, 43);
		((Control)label12).Name = "label12";
		((Control)label12).Size = new Size(45, 21);
		((Control)label12).TabIndex = 34;
		((Control)label12).Text = "null?";
		ButtonDebug.Appearance = (Appearance)1;
		((Control)ButtonDebug).AutoSize = true;
		((Control)ButtonDebug).Location = new Point(153, 124);
		((Control)ButtonDebug).Name = "ButtonDebug";
		((Control)ButtonDebug).Size = new Size(58, 25);
		((Control)ButtonDebug).TabIndex = 31;
		((Control)ButtonDebug).Text = "Chi Tiết";
		((ButtonBase)ButtonDebug).UseVisualStyleBackColor = true;
		ButtonDebug.CheckStateChanged += new EventHandler(ButtonDebug_CheckStateChanged);
		((Control)groupBox5).Controls.Add((Control)(object)numericUpDownKenh);
		((Control)groupBox5).Controls.Add((Control)(object)numericUpDownNV);
		((Control)groupBox5).Controls.Add((Control)(object)label16);
		((Control)groupBox5).Controls.Add((Control)(object)checkBoxLog_BB);
		((Control)groupBox5).Controls.Add((Control)(object)checkBoxLog);
		((Control)groupBox5).Controls.Add((Control)(object)label15);
		((Control)groupBox5).Location = new Point(500, 289);
		((Control)groupBox5).Name = "groupBox5";
		((Control)groupBox5).Size = new Size(182, 68);
		((Control)groupBox5).TabIndex = 37;
		groupBox5.TabStop = false;
		((Control)groupBox5).Text = "Đặng Nhập Lại";
		((Control)groupBox5).Visible = false;
		((Control)numericUpDownKenh).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownKenh).Location = new Point(131, 42);
		numericUpDownKenh.Maximum = new decimal(new int[4] { 8, 0, 0, 0 });
		((Control)numericUpDownKenh).Name = "numericUpDownKenh";
		((Control)numericUpDownKenh).Size = new Size(27, 23);
		((Control)numericUpDownKenh).TabIndex = 38;
		numericUpDownKenh.Value = new decimal(new int[4] { 1, 0, 0, 0 });
		((Control)numericUpDownNV).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownNV).Location = new Point(59, 42);
		numericUpDownNV.Maximum = new decimal(new int[4] { 6, 0, 0, 0 });
		((Control)numericUpDownNV).Name = "numericUpDownNV";
		((Control)numericUpDownNV).Size = new Size(27, 23);
		((Control)numericUpDownNV).TabIndex = 38;
		numericUpDownNV.Value = new decimal(new int[4] { 1, 0, 0, 0 });
		((Control)label16).AutoSize = true;
		((Control)label16).Location = new Point(27, 44);
		((Control)label16).Name = "label16";
		((Control)label16).Size = new Size(26, 15);
		((Control)label16).TabIndex = 37;
		((Control)label16).Text = "NV:";
		((Control)checkBoxLog_BB).AutoSize = true;
		((Control)checkBoxLog_BB).Location = new Point(6, 17);
		((Control)checkBoxLog_BB).Name = "checkBoxLog_BB";
		((Control)checkBoxLog_BB).Size = new Size(79, 19);
		((Control)checkBoxLog_BB).TabIndex = 19;
		((Control)checkBoxLog_BB).Text = "  Bắt Buộc";
		((ButtonBase)checkBoxLog_BB).UseVisualStyleBackColor = true;
		((Control)checkBoxLog).AutoSize = true;
		((Control)checkBoxLog).Location = new Point(6, 46);
		((Control)checkBoxLog).Name = "checkBoxLog";
		((Control)checkBoxLog).Size = new Size(15, 14);
		((Control)checkBoxLog).TabIndex = 19;
		((ButtonBase)checkBoxLog).UseVisualStyleBackColor = true;
		((Control)label15).AutoSize = true;
		((Control)label15).Location = new Point(88, 44);
		((Control)label15).Name = "label15";
		((Control)label15).Size = new Size(37, 15);
		((Control)label15).TabIndex = 20;
		((Control)label15).Text = "Kênh:";
		((Control)label17).AutoSize = true;
		((Control)label17).Font = new Font("Segoe UI", 7f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label17).Location = new Point(62, 308);
		((Control)label17).Name = "label17";
		((Control)label17).Size = new Size(25, 12);
		((Control)label17).TabIndex = 42;
		((Control)label17).Text = "null?";
		((Control)buttonSave).Location = new Point(6, 306);
		((Control)buttonSave).Name = "buttonSave";
		((Control)buttonSave).Size = new Size(56, 27);
		((Control)buttonSave).TabIndex = 41;
		((Control)buttonSave).Text = "Lưu";
		((ButtonBase)buttonSave).UseVisualStyleBackColor = true;
		((Control)buttonSave).Click += new EventHandler(buttonSave_Click);
		pictureBox2.Image = (Image)(object)Resources.icon;
		((Control)pictureBox2).Location = new Point(412, 124);
		((Control)pictureBox2).Name = "pictureBox2";
		((Control)pictureBox2).Size = new Size(32, 32);
		pictureBox2.SizeMode = (PictureBoxSizeMode)2;
		pictureBox2.TabIndex = 43;
		pictureBox2.TabStop = false;
		((Control)pictureBox2).Visible = false;
		((ContainerControl)this).AutoScaleDimensions = new SizeF(7f, 15f);
		((ContainerControl)this).AutoScaleMode = (AutoScaleMode)1;
		((Form)this).ClientSize = new Size(370, 337);
		((Control)this).Controls.Add((Control)(object)pictureBox2);
		((Control)this).Controls.Add((Control)(object)label17);
		((Control)this).Controls.Add((Control)(object)checkBox2);
		((Control)this).Controls.Add((Control)(object)groupBox5);
		((Control)this).Controls.Add((Control)(object)buttonSave);
		((Control)this).Controls.Add((Control)(object)ButtonDebug);
		((Control)this).Controls.Add((Control)(object)label2);
		((Control)this).Controls.Add((Control)(object)checkBox1);
		((Control)this).Controls.Add((Control)(object)groupBox3);
		((Control)this).Controls.Add((Control)(object)buttonPause);
		((Control)this).Controls.Add((Control)(object)groupBox1);
		((Control)this).Controls.Add((Control)(object)ButtonRunAuto);
		((Control)this).Controls.Add((Control)(object)groupBox4);
		((Control)this).Controls.Add((Control)(object)textBox1);
		((Form)this).FormBorderStyle = (FormBorderStyle)1;
		((Form)this).MaximizeBox = false;
		((Control)this).Name = "TruMa";
		((Form)this).StartPosition = (FormStartPosition)1;
		((Control)this).Text = "[s32.๖Kunㄨ] BMx Trừ Ma";
		((Form)this).FormClosed += new FormClosedEventHandler(TruMa_FormClosed);
		((Form)this).Load += new EventHandler(TruMa_Load);
		((Control)groupBox1).ResumeLayout(false);
		((Control)groupBox1).PerformLayout();
		((ISupportInitialize)numericUpDownDaPet).EndInit();
		((Control)groupBox3).ResumeLayout(false);
		((Control)groupBox3).PerformLayout();
		((ISupportInitialize)numericUpDownGio).EndInit();
		((ISupportInitialize)numericUpDownChat).EndInit();
		((ISupportInitialize)numericUpDownFPS).EndInit();
		((ISupportInitialize)pictureBox1).EndInit();
		((Control)groupBox4).ResumeLayout(false);
		((Control)groupBox4).PerformLayout();
		((Control)groupBox5).ResumeLayout(false);
		((Control)groupBox5).PerformLayout();
		((ISupportInitialize)numericUpDownKenh).EndInit();
		((ISupportInitialize)numericUpDownNV).EndInit();
		((ISupportInitialize)pictureBox2).EndInit();
		((Control)this).ResumeLayout(false);
		((Control)this).PerformLayout();
	}
}
