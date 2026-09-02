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
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;
using System.Windows.Forms;
using System.Windows.Forms.Layout;
using AutoTool.Properties;
using KAutoHelper;

namespace AutoTool;

public class Daily : Form
{
	public static string linkApp = Application.StartupPath;

	public string pathAutoPhuBan = linkApp + "Anh\\AutoPhuBan";

	public string pathTacVu = linkApp + "Anh\\TacVu";

	public string pathAutoNhanNVPB = linkApp + "Anh\\NhanNVPB";

	public string pathKhac = linkApp + "Anh\\Khac";

	public string pathMaps = linkApp + "Anh\\Maps";

	public string pathData = linkApp + "AccData";

	public string pathLuyenPet = linkApp + "Anh\\LuyenPet";

	public string pathBangHoi = linkApp + "Anh\\BangHoi";

	public string pathTruMa = linkApp + "Anh\\TruMa";

	public string pathBatPet = linkApp + "Anh/System/Data3";

	public string pathIconBatPet = linkApp + "Anh/System/Data3/Icon";

	public string pathAutoClick = linkApp + "AutoClick";

	public string pathPetBat;

	public bool? ViTriNhanVat;

	public Bitmap AvatarNV;

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

	public bool onlyTrong;

	public bool modeCalendar;

	public bool H_T_C_end;

	public string accCheck;

	public string link;

	private bool enableDebug;

	public string old_debug;

	public string[] charError;

	public string nameFileDebug;

	public string nameFolderDebug;

	private uint myPointer_map_id;

	private uint[] offset_map_id;

	private uint myPointer_map_load_data;

	private uint[] offset_map_load;

	private uint[] offset_map_data;

	private double dataMapOld;

	private Point? ViTri1;

	private Point? ViTri2;

	private int checkQ;

	private int luuTraQ;

	private int luuCheckPet;

	private int luuCheckVP;

	private int luuCheckThuoc;

	private static Timer myTimer;

	private static Timer watchdogTimer;

	private static Timer watchdogTimer2;

	public int counter;

	public int countTimer_pet;

	public int countTimer_thap;

	public bool userTimer;

	public double watchdogCounter;

	public double watchdogCheck;

	public double watchdogCounter2;

	public double watchdogCheck2;

	public bool Skip;

	public string nameUser;

	public string pathTheme;

	private string fileName;

	private FontConverter fC;

	private DataGridViewCellStyle TableThemeColor;

	private ImageLayout layout;

	public int TieuDe;

	private static bool isClick = false;

	private static bool isDoubleClick = true;

	private string MuaLanDau;

	private int luotST;

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

	private Label label4;

	private TextBox textBox1;

	private Button buttonReset;

	private CheckBox ButtonRunAuto;

	private GroupBox groupBox3;

	private ComboBox comboBoxMB_Loai;

	private ComboBox comboBoxMB_Cap;

	private ComboBox comboBoxTinhCung_Loai;

	private CheckBox checkBoxEXP;

	private CheckBox checkBoxMB;

	private CheckBox checkBoxSkinHanhLangKGDK;

	private CheckBox checkBoxVIP;

	private CheckBox checkBoxTranhBaPK;

	private CheckBox checkBoxNLTN;

	private CheckBox checkBoxTheBai;

	private CheckBox checkBoxTinhCung;

	private CheckBox checkBoxTuHanh;

	private CheckBox checkBoxThanTu;

	private CheckBox checkBoxLD2;

	private CheckBox checkBoxLTC2;

	private CheckBox checkBoxKBDM2;

	private CheckBox checkBoxMHD2;

	private CheckBox checkBoxAll1;

	private PictureBox pictureBox1;

	private CheckBox checkBoxTVLH2;

	private GroupBox groupBox2;

	private CheckBox checkBoxAll2;

	private CheckBox checkBoxTH2;

	private CheckBox checkBoxTGS2;

	private CheckBox checkBoxQHM2;

	private ComboBox comboBoxTinhCung_Cap;

	private NumericUpDown numericUpDownTinhCung;

	private Label label5;

	private CheckBox checkBoxNongTruong;

	private Button buttonPause;

	private CheckBox ButtonDebug;

	private ComboBox comboBoxTrong;

	private CheckBox checkBoxDaPet;

	private CheckBox checkBoxTrong;

	private GroupBox groupBox4;

	private NumericUpDown numericUpDownFPS;

	private Label label1;

	private Label label6;

	private Label label9;

	private NumericUpDown numericUpDownDaPet;

	private Label label7;

	private NumericUpDown numericUpDownTuThap;

	private CheckBox checkBoxTuThap;

	private Label label8;

	private CheckBox checkBoxAutoClick;

	private CheckBox checkBoxQBang;

	private CheckBox checkBoxQPet;

	private Label label11;

	private Label label10;

	private NumericUpDown numericUpDownPet;

	private NumericUpDown numericUpDownBang;

	private Label label17;

	private Button buttonSave;

	private Label label12;

	private CheckBox checkBoxTuHanh30P;

	private GroupBox groupBox6;

	private ComboBox comboBoxFile;

	private CheckBox checkBoxTM;

	private CheckBox checkBox1;

	private Label labelWDT;

	private NotifyIcon notifyIcon1;

	private Button buttonLoad2;

	private Button buttonSave2;

	private Button buttonLoad;

	private TabPage tabPage2;

	private TabPage tabPage1;

	private TabControl tabControl1;

	private NumericUpDown numericUpDownTinhLinh;

	private Label label3;

	private Label label2;

	private DataGridView dataGridView1;

	private Button button1;

	private CheckBox checkBoxNuoiDuongTinhLinh;

	private ComboBox comboBoxChoAnTinhLinh;

	private CheckBox checkBoxNuoiTinhLinh;

	private DataGridViewTextBoxColumn Column1;

	private DataGridViewTextBoxColumn Column2;

	private DataGridViewTextBoxColumn Column3;

	private DataGridViewButtonColumn Del;

	private Label label13;

	private TabPage tabPage0;

	private GroupBox groupBox1;

	private GroupBox groupBox5;

	private GroupBox groupBox7;

	private CheckBox checkBoxMuaPhu;

	private ComboBox comboBoxMuaPhu;

	private Label label14;

	private CheckBox checkBox3;

	private ComboBox comboBoxKiepNan;

	private CheckBox checkBoxKiepNan;

	private DateTimePicker dateTimePickerMuaPhu;

	private TabPage tabPage3;

	private Label label15;

	private Label labelLuuPhu;

	private Button buttonLuuPhu;

	private Label label16;

	private GroupBox groupBox8;

	private TabControl tabControl2;

	private TabPage tabPage4;

	private TabPage tabPage5;

	private TabPage tabPage6;

	private TabPage tabPage7;

	private TabPage tabPage8;

	private TabPage tabPage9;

	private NumericUpDown numericUpDownST1;

	private NumericUpDown numericUpDownST4;

	private NumericUpDown numericUpDownST3;

	private NumericUpDown numericUpDownST2;

	private Label label19;

	private Label label18;

	private NumericUpDown numericUpDownST5;

	private NumericUpDown numericUpDownST6;

	private NumericUpDown numericUpDownST7;

	private NumericUpDown numericUpDownST8;

	private NumericUpDown numericUpDownST16;

	private Label label22;

	private NumericUpDown numericUpDownST13;

	private NumericUpDown numericUpDownST12;

	private Label label23;

	private NumericUpDown numericUpDownST14;

	private NumericUpDown numericUpDownST11;

	private NumericUpDown numericUpDownST9;

	private NumericUpDown numericUpDownST10;

	private NumericUpDown numericUpDownST15;

	private NumericUpDown numericUpDownST24;

	private Label label25;

	private NumericUpDown numericUpDownST23;

	private NumericUpDown numericUpDownST18;

	private NumericUpDown numericUpDownST21;

	private NumericUpDown numericUpDownST17;

	private NumericUpDown numericUpDownST19;

	private NumericUpDown numericUpDownST20;

	private NumericUpDown numericUpDownST22;

	private Label label24;

	private NumericUpDown numericUpDownST32;

	private Label label27;

	private NumericUpDown numericUpDownST31;

	private NumericUpDown numericUpDownST26;

	private NumericUpDown numericUpDownST29;

	private NumericUpDown numericUpDownST25;

	private NumericUpDown numericUpDownST27;

	private NumericUpDown numericUpDownST28;

	private NumericUpDown numericUpDownST30;

	private Label label26;

	private NumericUpDown numericUpDownST53;

	private Label label20;

	private Label label21;

	private NumericUpDown numericUpDownST54;

	private NumericUpDown numericUpDownST49;

	private NumericUpDown numericUpDownST50;

	private NumericUpDown numericUpDownST55;

	private NumericUpDown numericUpDownST51;

	private NumericUpDown numericUpDownST52;

	private NumericUpDown numericUpDownST40;

	private Label label29;

	private NumericUpDown numericUpDownST39;

	private NumericUpDown numericUpDownST34;

	private NumericUpDown numericUpDownST37;

	private NumericUpDown numericUpDownST33;

	private NumericUpDown numericUpDownST35;

	private NumericUpDown numericUpDownST36;

	private NumericUpDown numericUpDownST38;

	private Label label28;

	private NumericUpDown numericUpDownST48;

	private Label label31;

	private NumericUpDown numericUpDownST47;

	private NumericUpDown numericUpDownST42;

	private NumericUpDown numericUpDownST45;

	private NumericUpDown numericUpDownST41;

	private NumericUpDown numericUpDownST43;

	private NumericUpDown numericUpDownST44;

	private NumericUpDown numericUpDownST46;

	private Label label30;

	private CheckBox checkBoxST;

	private NumericUpDown numericUpDownST63;

	private Label label33;

	private NumericUpDown numericUpDownST60;

	private NumericUpDown numericUpDownST59;

	private Label label32;

	private NumericUpDown numericUpDownST61;

	private NumericUpDown numericUpDownST58;

	private NumericUpDown numericUpDownST56;

	private NumericUpDown numericUpDownST57;

	private NumericUpDown numericUpDownST62;

	private NumericUpDown numericUpDownST71;

	private Label label35;

	private NumericUpDown numericUpDownST70;

	private NumericUpDown numericUpDownST65;

	private NumericUpDown numericUpDownST68;

	private NumericUpDown numericUpDownST64;

	private NumericUpDown numericUpDownST66;

	private NumericUpDown numericUpDownST67;

	private NumericUpDown numericUpDownST69;

	private Label label34;

	private Label label37;

	private NumericUpDown numericUpDownST73;

	private NumericUpDown numericUpDownST72;

	private NumericUpDown numericUpDownST74;

	private NumericUpDown numericUpDownST75;

	private Label label40;

	private Label label41;

	private Label label42;

	private Label label43;

	private Label label44;

	private Label label36;

	private CheckBox checkBoxQcauca;

	private Button button2;

	private CheckBox checkBoxQhaithuoc;

	private LinkLabel linkLabel1;

	private ComboBox comboBoxTuHanh;

	private CheckBox checkBoxSkipSetup;

	private CheckBox checkBox2;

	public Daily()
	{
		//IL_0395: Unknown result type (might be due to invalid IL or missing references)
		//IL_039f: Expected O, but got Unknown
		//IL_03a0: Unknown result type (might be due to invalid IL or missing references)
		//IL_03aa: Expected O, but got Unknown
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
		onlyTrong = false;
		modeCalendar = false;
		H_T_C_end = false;
		enableDebug = false;
		old_debug = "";
		charError = new string[1] { "BMxToolAutoClickData" };
		nameFileDebug = "";
		nameFolderDebug = "";
		myPointer_map_id = 11180660u;
		uint[] array7 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array7, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_map_id = array7;
		myPointer_map_load_data = 11170512u;
		uint[] array8 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array8, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_map_load = array8;
		uint[] array9 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array9, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_map_data = array9;
		dataMapOld = -1.0;
		ViTri1 = null;
		ViTri2 = null;
		checkQ = 0;
		luuTraQ = 999;
		luuCheckPet = 999;
		luuCheckVP = 999;
		luuCheckThuoc = 999;
		counter = 0;
		countTimer_pet = 0;
		countTimer_thap = 0;
		userTimer = false;
		watchdogCounter = 0.0;
		watchdogCheck = 0.0;
		watchdogCounter2 = 0.0;
		watchdogCheck2 = 0.0;
		Skip = false;
		nameUser = "";
		pathTheme = linkApp + "/Theme";
		fC = new FontConverter();
		TableThemeColor = new DataGridViewCellStyle();
		TieuDe = 30;
		MuaLanDau = "Chưa Mua";
		luotST = 0;
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

	[DllImport("kernel32.dll", CharSet = (CharSet)4)]
	private static extern System.IntPtr OpenProcess(uint dwDesiredAccess, bool bInheritHandle, uint dwProcessId);

	public static System.IntPtr OpenProcess(uint pId, ProcessAccessFlags ProcessAccess = (ProcessAccessFlags)2035711u)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0009: Expected I4, but got Unknown
		return OpenProcess((uint)(int)ProcessAccess, bInheritHandle: false, pId);
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

	private void AutoCLick_Load(object sender, EventArgs e)
	{
		//IL_000f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0019: Expected O, but got Unknown
		//IL_028a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0315: Unknown result type (might be due to invalid IL or missing references)
		//IL_0321: Unknown result type (might be due to invalid IL or missing references)
		//IL_0326: Unknown result type (might be due to invalid IL or missing references)
		//IL_032e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0334: Unknown result type (might be due to invalid IL or missing references)
		//IL_038c: Unknown result type (might be due to invalid IL or missing references)
		//IL_03bc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0237: Unknown result type (might be due to invalid IL or missing references)
		//IL_023e: Expected O, but got Unknown
		//IL_0787: Unknown result type (might be due to invalid IL or missing references)
		//IL_079f: Unknown result type (might be due to invalid IL or missing references)
		//IL_07a9: Expected O, but got Unknown
		//IL_0829: Unknown result type (might be due to invalid IL or missing references)
		//IL_082e: Unknown result type (might be due to invalid IL or missing references)
		Login login = new Login();
		((Form)login).Closed += (EventHandler)([CompilerGenerated] (object? s, EventArgs args) =>
		{
			((Form)this).Close();
		});
		autoRun = Program.AppMain.autoRun;
		onlyTrong = Program.AppMain.onlyTrong;
		modeCalendar = Program.AppMain.modeCalendar;
		H_T_C_end = Program.AppMain.H_T_C_end;
		accCheck = Program.AppMain.nameFlash;
		link = Program.AppMain.link;
		nameUser = Program.AppMain.nameUser;
		enableDebug = Settings.Default.enableDebug;
		if (enableDebug)
		{
			System.DateTime now = System.DateTime.Now;
			nameFolderDebug = now.Year + now.Month.ToString("D2") + now.Day.ToString("D2");
			if (Settings.Default.fileDebug)
			{
				nameFileDebug = "daily.txt";
			}
			else
			{
				nameFileDebug = string.Concat(new string[5]
				{
					"daily",
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
		((Control)this).Text = "[" + accCheck + "] BMx Daily";
		((Form)this).Size = new Size(472, 195);
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
		Icon val5 = (((Form)this).Icon = Icon.FromHandle(hicon));
		DestroyIcon(val5.Handle);
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
		int vIP = VIP;
		int num2 = vIP;
		if (num2 != 1)
		{
		}
		if (VIP < 1)
		{
			checkBoxThanTu.CheckState = (CheckState)0;
			checkBoxVIP.CheckState = (CheckState)0;
			checkBoxTH2.CheckState = (CheckState)0;
		}
		else
		{
			checkBoxThanTu.CheckState = (CheckState)1;
			checkBoxVIP.CheckState = (CheckState)1;
			checkBoxTH2.CheckState = (CheckState)1;
		}
		for (int num3 = 1; num3 < 13; num3++)
		{
			Bitmap image2 = ImageScanOpenCV.GetImage(pathKhac + "/Avatar_Main" + num3 + ".png");
			if (ImageScanOpenCV.FindOutPoint(AvatarNV, image2, 0.9).HasValue)
			{
				switch (num3)
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
		int num4 = (int)ReadMemoryData(processID, myPointer, offset_FPS);
		if (num4 != 0)
		{
			numericUpDownFPS.Value = decimal.op_Implicit(num4);
		}
		else
		{
			debugText("Memory False");
		}
		if (autoRun)
		{
			if (!loadSetting2("/dailyAutoLog_v7.txt") && !loadSetting("/dailyAutoLog.txt") && !loadSetting2())
			{
				loadSetting();
			}
			if (H_T_C_end)
			{
				checkBoxTuHanh30P.CheckState = (CheckState)1;
			}
		}
		else if (!loadSetting2())
		{
			loadSetting();
		}
		numericUpDownBang.Value = 15m;
		numericUpDownPet.Value = 20m;
		((Control)label10).ForeColor = Color.IndianRed;
		loadFileETC();
		demLuot(new object(), new EventArgs());
		debugText("begin");
		stopTimer();
		if (!Directory.Exists(pathAutoClick + "/CMD"))
		{
			Directory.CreateDirectory(pathAutoClick + "/CMD");
		}
		else
		{
			string[] files = Directory.GetFiles(pathAutoClick + "/CMD", "*.txt");
			List<string> val7 = new List<string>();
			val7.AddRange((System.Collections.Generic.IEnumerable<string>)files);
			Enumerator<string> enumerator = val7.GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					string current = enumerator.Current;
					string text = current.Substring((pathAutoClick + "/CMD").Length + 1, current.Length - (pathAutoClick + "/CMD").Length - 5);
					if (!text.Contains(charError[0]))
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
		if (autoRun || modeCalendar)
		{
			ButtonRunAuto.CheckState = (CheckState)1;
		}
	}

	private void ButtonRunAuto_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		//IL_0157: Unknown result type (might be due to invalid IL or missing references)
		//IL_015d: Invalid comparison between Unknown and I4
		//IL_001d: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a3: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ad: Expected O, but got Unknown
		//IL_00b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c3: Expected O, but got Unknown
		//IL_0180: Unknown result type (might be due to invalid IL or missing references)
		//IL_0130: Unknown result type (might be due to invalid IL or missing references)
		//IL_013a: Expected O, but got Unknown
		//IL_00ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f9: Expected O, but got Unknown
		//IL_0105: Unknown result type (might be due to invalid IL or missing references)
		//IL_010f: Expected O, but got Unknown
		if ((int)ButtonRunAuto.CheckState == 1)
		{
			((Control)ButtonRunAuto).BackColor = Color.Green;
			((Control)ButtonRunAuto).Text = "Stop";
			((Control)buttonPause).Enabled = true;
			((Control)checkBox1).Enabled = false;
			HideAllSelect();
			debugText("start");
			IsStop = false;
			userTimer = false;
			numericUpDownBang.Value = 15m;
			numericUpDownPet.Value = 20m;
			watchdogTimer = new Timer(1000.0);
			watchdogTimer.Elapsed += new ElapsedEventHandler(myWatchdogTimer);
			watchdogTimer.AutoReset = true;
			watchdogTimer.Stop();
			if (autoRun)
			{
				watchdogTimer2 = new Timer(1000.0);
				watchdogTimer2.Elapsed += new ElapsedEventHandler(myWatchdogTimer2);
				watchdogTimer2.AutoReset = true;
				watchdogTimer2.Stop();
			}
			T = new System.Threading.Tasks.Task((Action)([CompilerGenerated] () =>
			{
				//IL_0039: Unknown result type (might be due to invalid IL or missing references)
				//IL_003f: Invalid comparison between Unknown and I4
				//IL_0094: Unknown result type (might be due to invalid IL or missing references)
				//IL_014d: Unknown result type (might be due to invalid IL or missing references)
				//IL_0154: Expected O, but got Unknown
				setupWDT2(120);
				if (!onlyTrong)
				{
					if (checkBoxAutoClick.Checked)
					{
						run_autoClick();
					}
					if ((int)checkBoxSkipSetup.CheckState == 0)
					{
						setupRun();
					}
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
					PressKey("ESC");
					string text = checkNguyenLieuTrangVien();
					if (text != "" && ((Control)comboBoxTrong).Text != text)
					{
						((Control)comboBoxTrong).Text = text;
						TextWriter val = (TextWriter)new StreamWriter(pathData + "/Setting/" + nameUser + "/daily_v7.txt");
						val.Write(scanSetting2());
						val.Close();
					}
				}
				while (!IsStop)
				{
					if (onlyTrong)
					{
						Trong();
					}
					else
					{
						if (checkBoxDaPet.Checked || checkBoxTuThap.Checked)
						{
							startTimer();
						}
						debugText("End_Line");
						ChuongTrinhDaily4();
					}
					if (!autoRun)
					{
						debugText("Check Đá Pet Và Tu Tháp");
						while (true)
						{
							if (checkBoxDaPet.Checked && numericUpDownDaPet.Value > 0m)
							{
								checkTimer();
								delay_100ms(60);
							}
							else
							{
								if (!checkBoxTuThap.Checked || !(numericUpDownTuThap.Value > 0m))
								{
									break;
								}
								checkTimer();
								delay_100ms(60);
							}
						}
						debugText("Hoàn Thành Daily");
					}
					ButtonRunAuto.CheckState = (CheckState)0;
				}
			}));
			T.Start();
		}
		else if ((int)ButtonRunAuto.CheckState == 0)
		{
			debugText("stop");
			IsStop = true;
			((Control)ButtonRunAuto).BackColor = Control.DefaultBackColor;
			((Control)ButtonRunAuto).Text = "Start";
			((Control)buttonPause).Enabled = false;
			((Control)checkBox1).Enabled = true;
			ShowAllSelect();
			stopTimer();
			ThongBao("BMx Daily", "[" + accCheck + "] Hoàn Thành Daily");
			watchdogTimer.Stop();
			((Component)watchdogTimer).Dispose();
			if (autoRun)
			{
				watchdogTimer2.Stop();
				((Component)watchdogTimer2).Dispose();
				hWnd = FindWindowHandle(null, ((Control)this).Text);
				((Control)ButtonRunAuto).Enabled = false;
				AutoControl.BringToFront(hWnd);
				((Form)this).Close();
			}
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
			((Form)this).Size = new Size(472, 534);
		}
		else if ((int)ButtonDebug.CheckState == 0)
		{
			((Control)ButtonDebug).Text = "Chi Tiết";
			((Form)this).Size = new Size(472, 193);
		}
	}

	private void checkBoxAll1_CheckStateChanged(object sender, EventArgs e)
	{
	}

	private void checkBoxAll2_CheckStateChanged(object sender, EventArgs e)
	{
	}

	private void HideAllSelect()
	{
		((Control)groupBox2).Enabled = false;
		((Control)groupBox1).Enabled = false;
		((Control)groupBox5).Enabled = false;
		((Control)groupBox3).Enabled = false;
		((Control)groupBox6).Enabled = false;
		((Control)groupBox7).Enabled = false;
		((Control)groupBox8).Enabled = false;
	}

	private void ShowAllSelect()
	{
		((Control)groupBox2).Enabled = true;
		((Control)groupBox1).Enabled = true;
		((Control)groupBox5).Enabled = true;
		((Control)groupBox3).Enabled = true;
		((Control)groupBox6).Enabled = true;
		((Control)groupBox7).Enabled = true;
		((Control)groupBox8).Enabled = true;
	}

	private void checkBoxTuHanh30P_CheckedChanged(object sender, EventArgs e)
	{
		//IL_0017: Unknown result type (might be due to invalid IL or missing references)
		//IL_001d: Invalid comparison between Unknown and I4
		if (checkBoxTuHanh30P.Checked && (int)checkBoxTuHanh.CheckState == 0)
		{
			checkBoxTuHanh30P.CheckState = (CheckState)0;
		}
	}

	private void checkBoxDaPet_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0015: Unknown result type (might be due to invalid IL or missing references)
		//IL_0022: Unknown result type (might be due to invalid IL or missing references)
		//IL_0028: Invalid comparison between Unknown and I4
		if (!IsStop)
		{
			if ((int)checkBoxDaPet.CheckState == 0 && (int)checkBoxTuThap.CheckState == 0)
			{
				stopTimer();
			}
			else
			{
				startTimer();
			}
		}
	}

	private void buttonLoad_Click(object sender, EventArgs e)
	{
		if (!loadSetting2())
		{
			loadSetting();
		}
	}

	private void buttonSave2_Click(object sender, EventArgs e)
	{
		//IL_000e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0013: Unknown result type (might be due to invalid IL or missing references)
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		//IL_0016: Invalid comparison between Unknown and I4
		//IL_0038: Unknown result type (might be due to invalid IL or missing references)
		//IL_003e: Expected O, but got Unknown
		DialogResult val = MessageBox.Show("Lưu Thay Đổi AutoLog", "Daily", (MessageBoxButtons)4, (MessageBoxIcon)32);
		if ((int)val == 6)
		{
			TextWriter val2 = (TextWriter)new StreamWriter(pathData + "/Setting/" + nameUser + "/dailyAutoLog_v7.txt");
			val2.Write(scanSetting2());
			val2.Close();
		}
	}

	private void buttonLoad2_Click(object sender, EventArgs e)
	{
		if (!loadSetting2("/dailyAutoLog_v7.txt"))
		{
			loadSetting("/dailyAutoLog.txt");
		}
	}

	private unsafe void NhanHoanThanhPhuBan()
	{
		//IL_014f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0154: Unknown result type (might be due to invalid IL or missing references)
		//IL_015f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0164: Unknown result type (might be due to invalid IL or missing references)
		//IL_0172: Unknown result type (might be due to invalid IL or missing references)
		//IL_0177: Unknown result type (might be due to invalid IL or missing references)
		//IL_0182: Unknown result type (might be due to invalid IL or missing references)
		//IL_0187: Unknown result type (might be due to invalid IL or missing references)
		//IL_0239: Unknown result type (might be due to invalid IL or missing references)
		//IL_023e: Unknown result type (might be due to invalid IL or missing references)
		//IL_024a: Unknown result type (might be due to invalid IL or missing references)
		//IL_024f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0278: Unknown result type (might be due to invalid IL or missing references)
		//IL_027d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0340: Unknown result type (might be due to invalid IL or missing references)
		//IL_0345: Unknown result type (might be due to invalid IL or missing references)
		//IL_0350: Unknown result type (might be due to invalid IL or missing references)
		//IL_0355: Unknown result type (might be due to invalid IL or missing references)
		//IL_0363: Unknown result type (might be due to invalid IL or missing references)
		//IL_0368: Unknown result type (might be due to invalid IL or missing references)
		//IL_0373: Unknown result type (might be due to invalid IL or missing references)
		//IL_0378: Unknown result type (might be due to invalid IL or missing references)
		//IL_042a: Unknown result type (might be due to invalid IL or missing references)
		//IL_042f: Unknown result type (might be due to invalid IL or missing references)
		//IL_043b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0440: Unknown result type (might be due to invalid IL or missing references)
		//IL_0469: Unknown result type (might be due to invalid IL or missing references)
		//IL_046e: Unknown result type (might be due to invalid IL or missing references)
		int num = 0;
		while (true)
		{
			PressKey("ESC");
			delay_100ms(10);
			SendClickOnPosition(hWnd, 572, 678, (EMouseKey)0);
			delay_100ms(5);
			if (!FindAndClick(hWnd, pathAutoPhuBan + "/IconHoanThanhPhuBan.png", 1, 1, "Hoàn Thành Phụ Bản").HasValue)
			{
				debugText("Không Tìm Thấy Icon");
				num++;
				if (num >= 5)
				{
					break;
				}
				PressKey("ESC");
				delay_100ms(5);
				SendClickOnPosition(hWnd, 1057, 678, (EMouseKey)0);
				delay_100ms(5);
				continue;
			}
			num = 0;
			while (true)
			{
				debugText("Nhận Thưởng Auto PB");
				Point? val = FindPoint(hWnd, pathAutoPhuBan + "/MuiTenChuyenAutoPB2.png");
				Point val3;
				if (val.HasValue)
				{
					Point? val2 = FindSubPoint(hWnd, pathAutoPhuBan + "/MuiTenChuyenAutoPB2.png", pathAutoPhuBan + "/MuiTenChuyenAutoPB_Trai.png");
					if (!val2.HasValue)
					{
						debugText("Không tìm thấy nút tìm trang 1 => check lại");
						num++;
						if (num >= 3)
						{
							debugText("Không tìm thấy nút chuyển trang sau 3 lần check");
							break;
						}
						continue;
					}
					val3 = val2.Value;
					int x = ((Point)(ref val3)).X;
					val3 = val.Value;
					int num2 = x + ((Point)(ref val3)).X;
					val3 = val2.Value;
					int y = ((Point)(ref val3)).Y;
					val3 = val.Value;
					int num3 = y + ((Point)(ref val3)).Y;
					AutoControl.SendClickOnPosition(hWnd, num2 + 5, num3 + 5 - 30, (EMouseKey)0, 1);
					debugText("Chuyển trang 1");
					num = 0;
				}
				delay_100ms(5);
				List<Point> val4 = FindPoints(hWnd, pathAutoPhuBan + "/NutNhanPB.png");
				if (val4.Count != 0)
				{
					for (int i = 0; i < val4.Count; i++)
					{
						System.IntPtr intPtr = hWnd;
						val3 = val4[i];
						int x2 = ((Point)(ref val3)).X;
						val3 = val4[i];
						AutoControl.SendClickOnPosition(intPtr, x2, ((Point)(ref val3)).Y - 30, (EMouseKey)0, 1);
						string text = i.ToString();
						val3 = val4[i];
						debugText("Nhận Thưởng Lần " + text + "Tại " + ((object)(*(Point*)(&val3))/*cast due to .constrained prefix*/).ToString());
						delay_100ms(50);
					}
				}
				else
				{
					debugText("Không Tìm Thấy Nút Nhận Thưởng");
				}
				val = FindPoint(hWnd, pathAutoPhuBan + "/MuiTenChuyenAutoPB2.png");
				if (val.HasValue)
				{
					Point? val5 = FindSubPoint(hWnd, pathAutoPhuBan + "/MuiTenChuyenAutoPB2.png", pathAutoPhuBan + "/MuiTenChuyenAutoPB_Phai.png");
					if (!val5.HasValue)
					{
						debugText("Không thấy nút tìm trang 2 => check lại");
						num++;
						if (num >= 3)
						{
							debugText("Không tìm thấy nút chuyển trang sau 3 lần check");
							break;
						}
						continue;
					}
					val3 = val5.Value;
					int x3 = ((Point)(ref val3)).X;
					val3 = val.Value;
					int num4 = x3 + ((Point)(ref val3)).X;
					val3 = val5.Value;
					int y2 = ((Point)(ref val3)).Y;
					val3 = val.Value;
					int num5 = y2 + ((Point)(ref val3)).Y;
					AutoControl.SendClickOnPosition(hWnd, num4 + 5, num5 + 5 - 30, (EMouseKey)0, 1);
					debugText("Chuyển trang 2");
					num = 0;
				}
				delay_100ms(5);
				val4 = FindPoints(hWnd, pathAutoPhuBan + "/NutNhanPB.png");
				if (val4.Count != 0)
				{
					for (int j = 0; j < val4.Count; j++)
					{
						System.IntPtr intPtr2 = hWnd;
						val3 = val4[j];
						int x4 = ((Point)(ref val3)).X;
						val3 = val4[j];
						AutoControl.SendClickOnPosition(intPtr2, x4, ((Point)(ref val3)).Y - 30, (EMouseKey)0, 1);
						string text2 = j.ToString();
						val3 = val4[j];
						debugText("Nhận Thưởng Lần " + text2 + "Tại " + ((object)(*(Point*)(&val3))/*cast due to .constrained prefix*/).ToString());
						delay_100ms(50);
					}
				}
				else
				{
					debugText("Không Tìm Thấy Nút Bắt Đầu");
				}
				break;
			}
			break;
		}
		debugText("Nhận Hoàn Thành Phụ Bản Xong");
	}

	private void NhanNhiemVuPhuBan()
	{
		//IL_0187: Unknown result type (might be due to invalid IL or missing references)
		//IL_018c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0199: Unknown result type (might be due to invalid IL or missing references)
		//IL_019e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0343: Unknown result type (might be due to invalid IL or missing references)
		//IL_0348: Unknown result type (might be due to invalid IL or missing references)
		//IL_0355: Unknown result type (might be due to invalid IL or missing references)
		//IL_035a: Unknown result type (might be due to invalid IL or missing references)
		int num = 0;
		PressKey("M");
		debugText("M : mở bản đồ thế giới");
		delay_100ms(1);
		debugText("Tìm Tiên Lạp Thành");
		FindAndClick(hWnd, pathMaps + "/TienLapThanh1.png", 45, -10, "Phù Vào Tiên Lạp Thành");
		delay_100ms(5);
		PressKey("Enter");
		debugText("Đợi Phù Xong");
		while (!WaitAvatar(hWnd))
		{
		}
		debugText("Đã Đến Thành");
		delay_100ms(50);
		FindAndClick(hWnd, pathTacVu + "/GuiChat.png", 2, 2, "Gửi Chat");
		FindsAndClick(hWnd, pathTacVu + "/MuiTenIcon.png", 0, 0, "Show");
		while (Xuong())
		{
		}
		delay_100ms(10);
		debugText("Đi Đến Tọa Độ Chỉ Định");
		for (int i = 0; i < 10; i++)
		{
			AutoControl.SendClickOnPosition(hWnd, 540, 170, (EMouseKey)0, 1);
			delay_100ms(5);
		}
		while (true)
		{
			debugText("Tìm NPC1");
			List<Point> val = FindPoints(hWnd, pathAutoNhanNVPB + "/NPC1.png");
			Point val2;
			if (val.Count != 0)
			{
				System.IntPtr intPtr = hWnd;
				val2 = val[0];
				int num2 = ((Point)(ref val2)).X + 5;
				val2 = val[0];
				AutoControl.SendClickOnPosition(intPtr, num2, ((Point)(ref val2)).Y + 5 - 30, (EMouseKey)0, 1);
				debugText("Click NPC1");
				delay_100ms(5);
				debugText("Tìm Bảng Nhiệm Vụ");
				if (FindAndClick(hWnd, pathAutoNhanNVPB + "/BangNhanNV.png", 50, 195, "Click Nhiệm Vụ").HasValue)
				{
					debugText("Nhận Nhiệm Vụ");
					if (!FindAndClick(hWnd, pathAutoNhanNVPB + "/Nhan.png", 1, 1, "Nhận").HasValue)
					{
						debugText("Không Tìm Thấy Nút Nhận");
					}
					debugText("Trả Nhiệm Vụ");
					if (!FindAndClick(hWnd, pathAutoNhanNVPB + "/Xong.png", 1, 1, "Xong").HasValue)
					{
						debugText("Không Tìm Thấy Nút Xong");
						PressKey("ESC");
					}
				}
				else
				{
					debugText("Không Tìm Thấy Bảng Nhiệm Vụ");
					PressKey("ESC");
					num++;
					if (num >= 5)
					{
						break;
					}
				}
				continue;
			}
			debugText("Không Tìm Thấy NPC1");
			debugText("Tìm NPC2");
			val = FindPoints(hWnd, pathAutoNhanNVPB + "/NPC2.png");
			if (val.Count != 0)
			{
				System.IntPtr intPtr2 = hWnd;
				val2 = val[0];
				int num3 = ((Point)(ref val2)).X + 5;
				val2 = val[0];
				AutoControl.SendClickOnPosition(intPtr2, num3, ((Point)(ref val2)).Y + 5 - 30, (EMouseKey)0, 1);
				debugText("Click NPC2");
				delay_100ms(5);
				debugText("Tìm Bảng Nhiệm Vụ");
				if (FindAndClick(hWnd, pathAutoNhanNVPB + "/BangNhanNV.png", 50, 195, "Click Nhiệm Vụ").HasValue)
				{
					debugText("Nhận Nhiệm Vụ");
					if (!FindAndClick(hWnd, pathAutoNhanNVPB + "/Nhan.png", 1, 1, "Nhận").HasValue)
					{
						debugText("Không Tìm Thấy Nút Nhận");
						PressKey("ESC");
					}
					debugText("Trả Nhiệm Vụ");
					if (!FindAndClick(hWnd, pathAutoNhanNVPB + "/Xong.png", 1, 1, "Xong").HasValue)
					{
						debugText("Không Tìm Thấy Nút Xong");
						PressKey("ESC");
					}
				}
				else
				{
					debugText("Không Tìm Thấy Bảng Nhiệm Vụ");
					PressKey("ESC");
					num++;
					if (num >= 5)
					{
						break;
					}
				}
			}
			else
			{
				debugText("Không Tìm Thấy NPC2");
				PressKey("ESC");
				num++;
				if (num >= 5)
				{
					break;
				}
			}
		}
		while (Bay())
		{
		}
		delay_100ms(10);
		debugText("Nhận Nhiệm Vụ Phụ Bản Xong");
	}

	private void NhanNhiemVuPhuBan2()
	{
		Xuong();
		Xuong();
		Xuong();
		int num = 0;
		PhuToiMap("Tiên Lạp Thành", 323.0, 148.0);
		while (true)
		{
			PressKey("ESC");
			PressKey("Z");
			delay_100ms(10);
			SendClickOnPosition(hWnd, 428, 106, (EMouseKey)0);
			delay_100ms(5);
			SendClickOnPosition(hWnd, 428, 166, (EMouseKey)0);
			delay_100ms(5);
			if (!FindPoint(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png").HasValue)
			{
				num++;
				if (num > 5)
				{
					break;
				}
				Tele4(323.0, 148.0);
				continue;
			}
			int num2 = 0;
			int num3 = 0;
			while (true)
			{
				debugText("Tìm Bảng Nhiệm Vụ");
				if (FindAndClick(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png", 0, -117, "Click Nhiệm Vụ").HasValue)
				{
					debugText("Nhận Nhiệm Vụ");
					if (!FindAndClick(hWnd, pathAutoNhanNVPB + "/Nhan.png", 1, 1, "Nhận").HasValue)
					{
						debugText("Không Tìm Thấy Nút Nhận");
						PressKey("OK");
					}
					delay_100ms(3);
					debugText("Trả Nhiệm Vụ");
					if (!FindAndClick(hWnd, pathAutoNhanNVPB + "/Xong.png", 1, 1, "Xong").HasValue)
					{
						debugText("Không Tìm Thấy Nút Xong");
						PressKey("OK");
						num3++;
						if (num3 >= 5)
						{
							break;
						}
					}
					continue;
				}
				debugText("Không Tìm Thấy Bảng Nhiệm Vụ");
				PressKey("OK");
				delay_100ms(3);
				if (!FindPoint(hWnd, pathKhac + "/setupRun_1.png").HasValue)
				{
					PressKey("ESC");
					PressKey("Z");
					delay_100ms(5);
				}
				SendClickOnPosition(hWnd, 428, 106, (EMouseKey)0);
				delay_100ms(5);
				SendClickOnPosition(hWnd, 428, 166, (EMouseKey)0);
				delay_100ms(5);
				num2++;
				if (num2 < 10)
				{
					continue;
				}
				break;
			}
			break;
		}
		debugText("Nhận Nhiệm Vụ Phụ Bản Xong");
	}

	private void NhanNhiemVuPhuBan3()
	{
		int num = 0;
		int num2 = 0;
		PhuToiMap("Tiên Lạp Thành");
		Tele(292.0, 139.0);
		while (true)
		{
			if (!FindAndClick(hWnd, pathAutoNhanNVPB + "/NPC1.png", 5, 5, "NPC1").HasValue && !FindAndClick(hWnd, pathAutoNhanNVPB + "/NPC2.png", 5, 5, "NPC2").HasValue)
			{
				Tele(292.0, 139.0);
				continue;
			}
			debugText("Tìm Bảng Nhiệm Vụ");
			if (FindAndClick(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png", 0, -117, "Click Nhiệm Vụ").HasValue)
			{
				debugText("Nhận Nhiệm Vụ");
				if (!FindAndClick(hWnd, pathAutoNhanNVPB + "/Nhan.png", 1, 1, "Nhận").HasValue)
				{
					debugText("Không Tìm Thấy Nút Nhận");
				}
				delay_100ms(3);
				debugText("Trả Nhiệm Vụ");
				if (!FindAndClick(hWnd, pathAutoNhanNVPB + "/Xong.png", 1, 1, "Xong").HasValue)
				{
					debugText("Không Tìm Thấy Nút Xong");
					PressKey("ESC");
					num2++;
					if (num2 >= 3)
					{
						break;
					}
				}
			}
			else
			{
				debugText("Không Tìm Thấy Bảng Nhiệm Vụ");
				PressKey("ESC");
				num++;
				if (num >= 3)
				{
					break;
				}
			}
		}
		debugText("Nhận Nhiệm Vụ Phụ Bản Xong");
	}

	private void NhanNhiemVuPhuBan4()
	{
		Bay();
		Bay();
		Bay();
		PhuToiMap3("Tiên Lạp Thành");
		int num = 0;
		int num2 = 0;
		do
		{
			if (!FindPoint(hWnd, pathKhac + "/setupRun_1.png").HasValue)
			{
				PressKey("ESC");
				PressKey("Z");
				SendClickOnPosition(hWnd, 428, 106, (EMouseKey)0);
				delay_100ms(5);
			}
			double num3 = viTrinhanVatHientai();
			delay_100ms(10);
			SendClickOnPosition(hWnd, 428, 166, (EMouseKey)0);
			delay_100ms(5);
			SendClickOnPosition(hWnd, 428, 170, (EMouseKey)0);
			delay_100ms(5);
			if (!FindPoint(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png").HasValue)
			{
				num2++;
				if (num2 > 60)
				{
					break;
				}
				if (viTrinhanVatHientai() == num3)
				{
					num++;
				}
				continue;
			}
			int num4 = 0;
			int num5 = 0;
			while (true)
			{
				debugText("Tìm Bảng Nhiệm Vụ");
				if (FindAndClick(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png", 0, -117, "Click Nhiệm Vụ").HasValue)
				{
					debugText("Nhận Nhiệm Vụ");
					if (!FindAndClick(hWnd, pathAutoNhanNVPB + "/Nhan.png", 1, 1, "Nhận").HasValue)
					{
						debugText("Không Tìm Thấy Nút Nhận");
						PressKey("OK");
					}
					delay_100ms(3);
					debugText("Trả Nhiệm Vụ");
					if (!FindAndClick(hWnd, pathAutoNhanNVPB + "/Xong.png", 1, 1, "Xong").HasValue)
					{
						debugText("Không Tìm Thấy Nút Xong");
						PressKey("OK");
						num5++;
						if (num5 >= 5)
						{
							break;
						}
					}
					continue;
				}
				debugText("Không Tìm Thấy Bảng Nhiệm Vụ");
				PressKey("OK");
				delay_100ms(3);
				if (!FindPoint(hWnd, pathKhac + "/setupRun_1.png").HasValue)
				{
					PressKey("ESC");
					PressKey("Z");
					delay_100ms(5);
				}
				SendClickOnPosition(hWnd, 428, 106, (EMouseKey)0);
				delay_100ms(5);
				SendClickOnPosition(hWnd, 428, 166, (EMouseKey)0);
				delay_100ms(5);
				SendClickOnPosition(hWnd, 428, 170, (EMouseKey)0);
				delay_100ms(5);
				num4++;
				if (num4 < 10)
				{
					continue;
				}
				break;
			}
			break;
		}
		while (num <= 5);
		debugText("Nhận Nhiệm Vụ Phụ Bản Xong");
	}

	private void NhanNhiemVuPhuBan2RiengLe(List<string> pb)
	{
		//IL_032f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0334: Unknown result type (might be due to invalid IL or missing references)
		//IL_033f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0344: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ac: Unknown result type (might be due to invalid IL or missing references)
		//IL_03b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_03bc: Unknown result type (might be due to invalid IL or missing references)
		//IL_03c1: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ee: Unknown result type (might be due to invalid IL or missing references)
		//IL_03f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_03fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_0403: Unknown result type (might be due to invalid IL or missing references)
		//IL_05bd: Unknown result type (might be due to invalid IL or missing references)
		//IL_05c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_05d0: Unknown result type (might be due to invalid IL or missing references)
		//IL_05d5: Unknown result type (might be due to invalid IL or missing references)
		Bay();
		Bay();
		Bay();
		PhuToiMap3("Tiên Lạp Thành");
		int num = 0;
		int num2 = 0;
		do
		{
			if (!FindPoint(hWnd, pathKhac + "/setupRun_1.png").HasValue)
			{
				PressKey("ESC");
				PressKey("Z");
				SendClickOnPosition(hWnd, 428, 106, (EMouseKey)0);
				delay_100ms(5);
			}
			double num3 = viTrinhanVatHientai();
			delay_100ms(10);
			SendClickOnPosition(hWnd, 428, 166, (EMouseKey)0);
			delay_100ms(5);
			SendClickOnPosition(hWnd, 428, 170, (EMouseKey)0);
			delay_100ms(5);
			if (!FindPoint(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png").HasValue)
			{
				num2++;
				if (num2 > 60)
				{
					break;
				}
				if (viTrinhanVatHientai() == num3)
				{
					num++;
				}
				continue;
			}
			int num4 = 0;
			while (num4 < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)pb))
			{
				int num5 = 0;
				num = 0;
				num2 = 0;
				while (true)
				{
					if (!FindPoint(hWnd, pathKhac + "/setupRun_1.png").HasValue)
					{
						PressKey("ESC");
						PressKey("Z");
						delay_100ms(5);
						SendClickOnPosition(hWnd, 428, 106, (EMouseKey)0);
						delay_100ms(5);
					}
					SendClickOnPosition(hWnd, 428, 166, (EMouseKey)0);
					delay_100ms(5);
					SendClickOnPosition(hWnd, 428, 170, (EMouseKey)0);
					delay_100ms(5);
					if (!FindPoint(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png").HasValue)
					{
						num2++;
						if (num2 > 60)
						{
							break;
						}
						if (viTrinhanVatHientai() == num3)
						{
							num++;
						}
						if (num > 5)
						{
							break;
						}
						continue;
					}
					int num6 = 0;
					while (true)
					{
						debugText("Tìm Nhiệm Vụ " + ((object)pb[num4].Substring(8, pb[num4].Length - 4 - 8)).ToString());
						delay_100ms(5);
						bool flag = false;
						Point? val = FindPoint(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png");
						int num7;
						Point value;
						if (val.HasValue)
						{
							num7 = 0;
							while (num7 < 5)
							{
								System.IntPtr intPtr = hWnd;
								value = val.Value;
								int x = ((Point)(ref value)).X;
								value = val.Value;
								AutoControl.SendClickUpOnPosition(intPtr, x, ((Point)(ref value)).Y + num7 * 25 - 117 - 30, (EMouseKey)0, 1);
								delay_100ms(3);
								if (!FindPoint(hWnd, pathAutoNhanNVPB + pb[num4]).HasValue)
								{
									debugText("Không Tìm Thấy Nhiệm Vụ " + pb[num4].Substring(8, pb[num4].Length - 4 - 8));
									num7++;
									continue;
								}
								goto IL_03a3;
							}
							goto IL_0575;
						}
						num6++;
						if (num6 < 5)
						{
							break;
						}
						goto IL_0613;
						IL_0595:
						PressKey("ESC");
						goto IL_0613;
						IL_0575:
						if (flag)
						{
							goto IL_0613;
						}
						num5++;
						switch (num5)
						{
						case 2:
							break;
						case 4:
							goto IL_0595;
						default:
							goto IL_05b5;
						}
						break;
						IL_03a3:
						System.IntPtr intPtr2 = hWnd;
						value = val.Value;
						int x2 = ((Point)(ref value)).X;
						value = val.Value;
						AutoControl.SendClickUpOnPosition(intPtr2, x2, ((Point)(ref value)).Y + num7 * 25 - 117 - 30, (EMouseKey)0, 1);
						delay_100ms(3);
						System.IntPtr intPtr3 = hWnd;
						value = val.Value;
						int x3 = ((Point)(ref value)).X;
						value = val.Value;
						AutoControl.SendClickOnPosition(intPtr3, x3, ((Point)(ref value)).Y + num7 * 25 - 117 - 30, (EMouseKey)0, 1);
						delay_100ms(3);
						debugText("Nhận Nhiệm Vụ " + ((object)pb[num4].Substring(8, pb[num4].Length - 4 - 8)).ToString());
						if (!FindAndClick(hWnd, pathAutoNhanNVPB + "/Nhan.png", 1, 1, "Nhận").HasValue)
						{
							debugText("Không Tìm Thấy Nút Nhận");
							PressKey("OK");
						}
						delay_100ms(3);
						debugText("Trả Nhiệm Vụ");
						if (!FindAndClick(hWnd, pathAutoNhanNVPB + "/Xong.png", 1, 1, "Xong").HasValue)
						{
							debugText("Không Tìm Thấy Nút Xong");
							PressKey("ESC");
							num5++;
							if (num5 < 4)
							{
								break;
							}
						}
						num5 = 0;
						flag = true;
						goto IL_0575;
						IL_05b5:
						System.IntPtr intPtr4 = hWnd;
						value = val.Value;
						int num8 = ((Point)(ref value)).X + 108;
						value = val.Value;
						AutoControl.SendClickOnPosition(intPtr4, num8, ((Point)(ref value)).Y - 38 - 30, (EMouseKey)0, 1);
						delay_100ms(3);
						continue;
						IL_0613:
						num4++;
						goto IL_0619;
					}
				}
				break;
				IL_0619:;
			}
			break;
		}
		while (num <= 5);
		debugText("Nhận Nhiệm Vụ Phụ Bản Xong");
	}

	private void NhanNhiemVuThamHiem2()
	{
		Xuong();
		Xuong();
		Xuong();
		PhuToiMap("Cổ Đạo", 188.0, 16.0);
		delay_100ms(5);
		if (!FindPoint(hWnd, pathKhac + "/CD_check.png").HasValue)
		{
		}
		Tele4(188.0, 16.0);
		AutoControl.SendClickOnPosition(hWnd, 600, 270, (EMouseKey)0, 1);
		delay_100ms(5);
		int num = 0;
		while (true)
		{
			if (FindAndClick(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png", 0, -117, "Click Nhiệm Vụ").HasValue)
			{
				FindAndClick(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png", 0, -117, "Click Nhiệm Vụ");
				debugText("Nhận Nhiệm Vụ");
				FindAndClick(hWnd, pathAutoNhanNVPB + "/Nhan.png", 0, 0, "Nhận");
				delay_100ms(3);
				debugText("Trả Nhiệm Vụ");
				if (FindAndClick(hWnd, pathAutoNhanNVPB + "/Xong.png", 0, 0, "Xong").HasValue)
				{
					break;
				}
				num++;
				if (num >= 5)
				{
					break;
				}
			}
			else
			{
				PressKey("ESC");
				AutoControl.SendClickOnPosition(hWnd, 743, 198, (EMouseKey)0, 1);
				delay_100ms(5);
				num++;
				if (num >= 5)
				{
					break;
				}
			}
		}
		debugText("Nhận Nhiệm Vụ Thám Hiểm Xong");
	}

	private void NhanNhiemVuThamHiem()
	{
		int num = 0;
		FindsAndClick(hWnd, pathTacVu + "/MuiTenIcon.png", 0, 0, "Show");
		while (Bay())
		{
		}
		delay_100ms(10);
		PhuToiMap("Cổ Đạo");
		debugText("Di Chuyển Tìm NPC Cổ Đạo");
		while (true)
		{
			AutoControl.SendClickOnPosition(hWnd, 623, 98, (EMouseKey)0, 1);
			delay_100ms(10);
			debugText("Tìm NPCCoDao1");
			num = 0;
			while (true)
			{
				if (FindAndClick(hWnd, pathAutoNhanNVPB + "/NPCCoDao1.png", 5, 5, "Click NPCCoDao1").HasValue)
				{
					debugText("Tìm Bảng Nhiệm Vụ");
					Point? val = FindPoint(hWnd, pathAutoNhanNVPB + "/BangNhanNV3.png");
					if (FindAndClick(hWnd, pathAutoNhanNVPB + "/BangNhanNV3.png", 50, 169, "Click Nhiệm Vụ").HasValue)
					{
						FindAndClick(hWnd, pathAutoNhanNVPB + "/BangNhanNV3.png", 50, 169, "Click Nhiệm Vụ");
						debugText("Nhận Nhiệm Vụ");
						FindAndClick(hWnd, pathAutoNhanNVPB + "/Nhan.png", 0, 0, "Nhận");
						debugText("Trả Nhiệm Vụ");
						if (!FindAndClick(hWnd, pathAutoNhanNVPB + "/Xong.png", 0, 0, "Xong").HasValue)
						{
							num++;
							if (num < 5)
							{
								continue;
							}
						}
					}
					else
					{
						debugText("Không Tìm Thấy Bảng Nhiệm Vụ");
						PressKey("ESC");
						num++;
						if (num < 22)
						{
							continue;
						}
					}
				}
				else
				{
					debugText("Không Tìm Thấy NPCCoDao1");
					debugText("Tìm NPCCoDao2");
					num = 0;
					while (FindAndClick(hWnd, pathAutoNhanNVPB + "/NPCCoDao2.png", 5, 5, "Click NPCCoDao2").HasValue)
					{
						debugText("Tìm Bảng Nhiệm Vụ");
						Point? val2 = FindPoint(hWnd, pathAutoNhanNVPB + "/BangNhanNV3.png");
						if (FindAndClick(hWnd, pathAutoNhanNVPB + "/BangNhanNV3.png", 50, 169, "Click Nhiệm Vụ").HasValue)
						{
							FindAndClick(hWnd, pathAutoNhanNVPB + "/BangNhanNV3.png", 50, 169, "Click Nhiệm Vụ");
							debugText("Nhận Nhiệm Vụ");
							FindAndClick(hWnd, pathAutoNhanNVPB + "/Nhan.png", 0, 0, "Nhận");
							debugText("Trả Nhiệm Vụ");
							if (!FindAndClick(hWnd, pathAutoNhanNVPB + "/Xong.png", 0, 0, "Xong").HasValue)
							{
								num++;
								if (num < 5)
								{
									continue;
								}
							}
						}
						else
						{
							debugText("Không Tìm Thấy Bảng Nhiệm Vụ");
							PressKey("ESC");
							num++;
							if (num < 22)
							{
								continue;
							}
						}
						goto IL_0401;
					}
					debugText("Không Tìm Thấy NPCCoDao2");
					PressKey("ESC");
					num++;
					if (num < 10)
					{
						break;
					}
				}
				goto IL_0401;
				IL_0401:
				debugText("Nhận Nhiệm Vụ Thám Hiểm Xong");
				return;
			}
		}
	}

	private unsafe void AutoPhuBan()
	{
		//IL_0200: Unknown result type (might be due to invalid IL or missing references)
		//IL_0205: Unknown result type (might be due to invalid IL or missing references)
		//IL_0210: Unknown result type (might be due to invalid IL or missing references)
		//IL_0215: Unknown result type (might be due to invalid IL or missing references)
		//IL_0223: Unknown result type (might be due to invalid IL or missing references)
		//IL_0228: Unknown result type (might be due to invalid IL or missing references)
		//IL_0233: Unknown result type (might be due to invalid IL or missing references)
		//IL_0238: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f7: Unknown result type (might be due to invalid IL or missing references)
		//IL_02fc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0314: Unknown result type (might be due to invalid IL or missing references)
		//IL_0319: Unknown result type (might be due to invalid IL or missing references)
		//IL_034a: Unknown result type (might be due to invalid IL or missing references)
		//IL_034f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0367: Unknown result type (might be due to invalid IL or missing references)
		//IL_036c: Unknown result type (might be due to invalid IL or missing references)
		//IL_039d: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_03b7: Unknown result type (might be due to invalid IL or missing references)
		//IL_03bc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0411: Unknown result type (might be due to invalid IL or missing references)
		//IL_0416: Unknown result type (might be due to invalid IL or missing references)
		//IL_04d8: Unknown result type (might be due to invalid IL or missing references)
		//IL_04dd: Unknown result type (might be due to invalid IL or missing references)
		//IL_04e8: Unknown result type (might be due to invalid IL or missing references)
		//IL_04ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_04fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0500: Unknown result type (might be due to invalid IL or missing references)
		//IL_050b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0510: Unknown result type (might be due to invalid IL or missing references)
		//IL_05ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_05d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_05eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_05f0: Unknown result type (might be due to invalid IL or missing references)
		//IL_0621: Unknown result type (might be due to invalid IL or missing references)
		//IL_0626: Unknown result type (might be due to invalid IL or missing references)
		//IL_063e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0643: Unknown result type (might be due to invalid IL or missing references)
		//IL_0674: Unknown result type (might be due to invalid IL or missing references)
		//IL_0679: Unknown result type (might be due to invalid IL or missing references)
		//IL_068e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0693: Unknown result type (might be due to invalid IL or missing references)
		//IL_06e6: Unknown result type (might be due to invalid IL or missing references)
		//IL_06eb: Unknown result type (might be due to invalid IL or missing references)
		if (Level >= 120)
		{
			if (!FindItem(hWnd, pathAutoPhuBan + "/IconHoanThanhPhuBan.png", "Hoàn Thành Phụ Bản"))
			{
				debugText("Không Tìm Thấy Icon");
				goto IL_0738;
			}
		}
		else
		{
			PhuToiMap("Cổ Đạo");
			int num = 0;
			while (true)
			{
				Tele(222.0, 16.0);
				if (!FindAndClick(hWnd, pathAutoNhanNVPB + "/NPCCoDao1.png", 5, 5, "Click NPCCoDao1").HasValue && !FindAndClick(hWnd, pathAutoNhanNVPB + "/NPCCoDao2.png", 5, 5, "Click NPCCoDao2").HasValue)
				{
					debugText("Không Tìm Thấy NPC");
				}
				if (FindAndClick(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png", 0, -67, "Mở Auto").HasValue)
				{
					break;
				}
				debugText("Không Tìm Bảng Auto");
				PressKey("ESC");
				num++;
				if (num >= 22)
				{
					goto IL_0738;
				}
			}
		}
		int num2 = 0;
		while (true)
		{
			debugText("Bắt Đầu Auto PB");
			Point? val = FindPoint(hWnd, pathAutoPhuBan + "/MuiTenChuyenAutoPB1.png");
			Point val3;
			if (val.HasValue)
			{
				Point? val2 = FindSubPoint(hWnd, pathAutoPhuBan + "/MuiTenChuyenAutoPB1.png", pathAutoPhuBan + "/MuiTenChuyenAutoPB_Phai.png");
				if (!val2.HasValue)
				{
					debugText("Không thấy nút tìm trang 2 => check lại");
					num2++;
					if (num2 >= 3)
					{
						debugText("Không tìm thấy nút chuyển trang sau 3 lần check");
						break;
					}
					continue;
				}
				val3 = val2.Value;
				int x = ((Point)(ref val3)).X;
				val3 = val.Value;
				int num3 = x + ((Point)(ref val3)).X;
				val3 = val2.Value;
				int y = ((Point)(ref val3)).Y;
				val3 = val.Value;
				int num4 = y + ((Point)(ref val3)).Y;
				AutoControl.SendClickOnPosition(hWnd, num3 + 5, num4 + 5 - 30, (EMouseKey)0, 1);
				debugText("Chuyển trang 2");
				num2 = 0;
			}
			delay_100ms(20);
			List<Point> val4 = FindPoints(hWnd, pathAutoPhuBan + "/NutBatDauPB.png");
			if (val4.Count != 0)
			{
				for (int i = 0; i < val4.Count; i++)
				{
					System.IntPtr intPtr = hWnd;
					val3 = val4[val4.Count - 1 - i];
					int num5 = ((Point)(ref val3)).X + 80;
					val3 = val4[val4.Count - 1 - i];
					AutoControl.SendClickOnPosition(intPtr, num5, ((Point)(ref val3)).Y - 50 - 30, (EMouseKey)0, 1);
					delay_100ms(5);
					System.IntPtr intPtr2 = hWnd;
					val3 = val4[val4.Count - 1 - i];
					int num6 = ((Point)(ref val3)).X + 80;
					val3 = val4[val4.Count - 1 - i];
					AutoControl.SendClickOnPosition(intPtr2, num6, ((Point)(ref val3)).Y + 20 - 30, (EMouseKey)0, 1);
					delay_100ms(5);
					System.IntPtr intPtr3 = hWnd;
					val3 = val4[val4.Count - 1 - i];
					int x2 = ((Point)(ref val3)).X;
					val3 = val4[val4.Count - 1 - i];
					AutoControl.SendClickOnPosition(intPtr3, x2, ((Point)(ref val3)).Y - 30, (EMouseKey)0, 1);
					delay_100ms(5);
					AutoControl.SendKeyBoardPress(hWnd, (VKeys)13);
					string text = (val4.Count - 1 - i).ToString();
					val3 = val4[val4.Count - 1 - i];
					debugText("Bắt Đầu Lần " + text + "Tại " + ((object)(*(Point*)(&val3))/*cast due to .constrained prefix*/).ToString());
					delay_100ms(5);
				}
			}
			else
			{
				debugText("Không Tìm Thấy Nút Bắt Đầu");
			}
			val = FindPoint(hWnd, pathAutoPhuBan + "/MuiTenChuyenAutoPB2.png");
			if (val.HasValue)
			{
				Point? val5 = FindSubPoint(hWnd, pathAutoPhuBan + "/MuiTenChuyenAutoPB2.png", pathAutoPhuBan + "/MuiTenChuyenAutoPB_Trai.png");
				if (!val5.HasValue)
				{
					debugText("Không tìm thấy nút tìm trang 1 => check lại");
					num2++;
					if (num2 >= 3)
					{
						debugText("Không tìm thấy nút chuyển trang sau 3 lần check");
						break;
					}
					continue;
				}
				val3 = val5.Value;
				int x3 = ((Point)(ref val3)).X;
				val3 = val.Value;
				int num7 = x3 + ((Point)(ref val3)).X;
				val3 = val5.Value;
				int y2 = ((Point)(ref val3)).Y;
				val3 = val.Value;
				int num8 = y2 + ((Point)(ref val3)).Y;
				AutoControl.SendClickOnPosition(hWnd, num7 + 5, num8 + 5 - 30, (EMouseKey)0, 1);
				debugText("Chuyển trang 1");
				num2 = 0;
			}
			delay_100ms(5);
			val4 = FindPoints(hWnd, pathAutoPhuBan + "/NutBatDauPB.png");
			if (val4.Count != 0)
			{
				for (int j = 0; j < val4.Count; j++)
				{
					System.IntPtr intPtr4 = hWnd;
					val3 = val4[val4.Count - 1 - j];
					int num9 = ((Point)(ref val3)).X + 80;
					val3 = val4[val4.Count - 1 - j];
					AutoControl.SendClickOnPosition(intPtr4, num9, ((Point)(ref val3)).Y - 50 - 30, (EMouseKey)0, 1);
					delay_100ms(5);
					System.IntPtr intPtr5 = hWnd;
					val3 = val4[val4.Count - 1 - j];
					int num10 = ((Point)(ref val3)).X + 80;
					val3 = val4[val4.Count - 1 - j];
					AutoControl.SendClickOnPosition(intPtr5, num10, ((Point)(ref val3)).Y + 20 - 30, (EMouseKey)0, 1);
					delay_100ms(5);
					System.IntPtr intPtr6 = hWnd;
					val3 = val4[val4.Count - 1 - j];
					int x4 = ((Point)(ref val3)).X;
					val3 = val4[val4.Count - 1 - j];
					AutoControl.SendClickOnPosition(intPtr6, x4, ((Point)(ref val3)).Y - 30, (EMouseKey)0, 1);
					delay_100ms(5);
					PressKey("Enter");
					string text2 = (val4.Count - 1 - j).ToString();
					val3 = val4[val4.Count - 1 - j];
					debugText("Bắt Đầu Lần " + text2 + "Tại " + ((object)(*(Point*)(&val3))/*cast due to .constrained prefix*/).ToString());
					delay_100ms(5);
				}
			}
			else
			{
				debugText("Không Tìm Thấy Nút Bắt Đầu");
			}
			break;
		}
		goto IL_0738;
		IL_0738:
		debugText("Auto Phụ Bản Xong");
	}

	private void AutoPhuBanRiengLe(List<string> pb)
	{
		//IL_0416: Unknown result type (might be due to invalid IL or missing references)
		//IL_041b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0426: Unknown result type (might be due to invalid IL or missing references)
		//IL_042b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0439: Unknown result type (might be due to invalid IL or missing references)
		//IL_043e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0449: Unknown result type (might be due to invalid IL or missing references)
		//IL_044e: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b3: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b8: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c3: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c8: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d6: Unknown result type (might be due to invalid IL or missing references)
		//IL_01db: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e6: Unknown result type (might be due to invalid IL or missing references)
		//IL_01eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_02fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0306: Unknown result type (might be due to invalid IL or missing references)
		//IL_030b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0319: Unknown result type (might be due to invalid IL or missing references)
		//IL_031e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0329: Unknown result type (might be due to invalid IL or missing references)
		//IL_032e: Unknown result type (might be due to invalid IL or missing references)
		int num = 0;
		while (true)
		{
			PressKey("ESC");
			delay_100ms(10);
			SendClickOnPosition(hWnd, 572, 678, (EMouseKey)0);
			delay_100ms(5);
			if (!FindAndClick(hWnd, pathAutoPhuBan + "/IconHoanThanhPhuBan.png", 1, 1, "Hoàn Thành Phụ Bản").HasValue)
			{
				debugText("Không Tìm Thấy Icon");
				num++;
				if (num >= 5)
				{
					break;
				}
				PressKey("ESC");
				delay_100ms(5);
				SendClickOnPosition(hWnd, 1057, 678, (EMouseKey)0);
				delay_100ms(5);
				continue;
			}
			string[] array = new string[6] { "/BatDauMHD.png", "/BatDauKBDM.png", "/BatDauLD.png", "/BatDauLTC.png", "/BatDauQHM.png", "/BatDauTVLH.png" };
			string[] array2 = new string[2] { "/BatDauTGS.png", "/BatDauTH.png" };
			for (int num2 = 0; num2 < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)pb); num2++)
			{
				Point value;
				if (Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)array, pb[num2]))
				{
					num = 0;
					while (true)
					{
						Point? val = FindPoint(hWnd, pathAutoPhuBan + "/MuiTenChuyenAutoPB2.png");
						if (val.HasValue)
						{
							Point? val2 = FindSubPoint(hWnd, pathAutoPhuBan + "/MuiTenChuyenAutoPB2.png", pathAutoPhuBan + "/MuiTenChuyenAutoPB_Trai.png");
							if (!val2.HasValue)
							{
								debugText("Không tìm thấy nút tìm trang 1 => check lại");
								num++;
								if (num >= 3)
								{
									break;
								}
								continue;
							}
							value = val2.Value;
							int x = ((Point)(ref value)).X;
							value = val.Value;
							int num3 = x + ((Point)(ref value)).X;
							value = val2.Value;
							int y = ((Point)(ref value)).Y;
							value = val.Value;
							int num4 = y + ((Point)(ref value)).Y;
							AutoControl.SendClickOnPosition(hWnd, num3 + 5, num4 + 5 - 30, (EMouseKey)0, 1);
							debugText("Chuyển trang 1");
							num = 0;
						}
						delay_100ms(5);
						goto IL_0397;
					}
					debugText("Không tìm thấy nút chuyển trang sau 3 lần check");
					break;
				}
				if (Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)array2, pb[num2]))
				{
					num = 0;
					while (true)
					{
						Point? val3 = FindPoint(hWnd, pathAutoPhuBan + "/MuiTenChuyenAutoPB1.png");
						if (val3.HasValue)
						{
							Point? val4 = FindSubPoint(hWnd, pathAutoPhuBan + "/MuiTenChuyenAutoPB1.png", pathAutoPhuBan + "/MuiTenChuyenAutoPB_Phai.png");
							if (!val4.HasValue)
							{
								debugText("Không thấy nút tìm trang 2 => check lại");
								num++;
								if (num >= 3)
								{
									break;
								}
								continue;
							}
							value = val4.Value;
							int x2 = ((Point)(ref value)).X;
							value = val3.Value;
							int num5 = x2 + ((Point)(ref value)).X;
							value = val4.Value;
							int y2 = ((Point)(ref value)).Y;
							value = val3.Value;
							int num6 = y2 + ((Point)(ref value)).Y;
							AutoControl.SendClickOnPosition(hWnd, num5 + 5, num6 + 5 - 30, (EMouseKey)0, 1);
							debugText("Chuyển trang 2");
							num = 0;
						}
						delay_100ms(5);
						goto IL_0397;
					}
					break;
				}
				goto IL_0397;
				IL_0397:
				Point? val5 = FindPoint(hWnd, pathAutoPhuBan + pb[num2]);
				if (val5.HasValue)
				{
					Point? val6 = FindSubPoint(hWnd, pathAutoPhuBan + pb[num2], pathAutoPhuBan + "/NutBatDauPB.png");
					if (val6.HasValue)
					{
						value = val6.Value;
						int x3 = ((Point)(ref value)).X;
						value = val5.Value;
						int num7 = x3 + ((Point)(ref value)).X;
						value = val6.Value;
						int y3 = ((Point)(ref value)).Y;
						value = val5.Value;
						int num8 = y3 + ((Point)(ref value)).Y;
						AutoControl.SendClickOnPosition(hWnd, num7 + 80, num8 - 50 - 30, (EMouseKey)0, 1);
						delay_100ms(5);
						AutoControl.SendClickOnPosition(hWnd, num7 + 80, num8 + 20 - 30, (EMouseKey)0, 1);
						delay_100ms(5);
						AutoControl.SendClickOnPosition(hWnd, num7, num8 - 30, (EMouseKey)0, 1);
						delay_100ms(5);
						AutoControl.SendKeyBoardPress(hWnd, (VKeys)13);
						debugText("Auto " + ((object)pb[num2].Substring(7, pb[num2].Length - 4 - 7)).ToString());
						delay_100ms(5);
					}
					else
					{
						debugText("Không Tìm Thấy " + ((object)pb[num2].Substring(7, pb[num2].Length - 4 - 7)).ToString());
						delay_100ms(5);
					}
				}
			}
			break;
		}
		debugText("Auto Phụ Bản Xong");
	}

	private void ThanTu()
	{
		int num = 0;
		PhuToiMap("Quyến Cố Thành");
		while (Xuong())
		{
		}
		delay_100ms(10);
		PressKey("`");
		delay_100ms(5);
		num = 0;
		while (!FindPoint(hWnd, pathKhac + "/Auto_ViTriDung.png").HasValue)
		{
			FindAndClick(hWnd, pathKhac + "/Auto_GocMapQuyenCo.png", 268, -153, "Di Chuyển Tới Vị Trí");
			num++;
			if (num > 8)
			{
				break;
			}
		}
		PressKey("`");
		delay_100ms(5);
		AutoControl.SendClickOnPosition(hWnd, 574, 299, (EMouseKey)0, 1);
		delay_100ms(5);
		if (!FindAndClick(hWnd, pathKhac + "/Auto_NPC.png", 0, 0, "NPC1").HasValue)
		{
			FindAndClick(hWnd, pathKhac + "/Auto_NPC2.png", 0, 0, "NPC2");
		}
		FindAndClick(hWnd, pathKhac + "/Auto_BangNhiemVu.png", 0, 230, "Auto");
		if (!FindPoint(hWnd, pathKhac + "/Auto_BatDau.png").HasValue)
		{
			debugText("Lỗi");
		}
		else
		{
			FindAndClick(hWnd, pathKhac + "/Auto_BatDau.png", 1, 2, "Bắt Đầu Auto");
			delay_100ms(5);
			FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 0, 0, "OK");
			debugText("Đang Auto Thần Tu");
			delay_100ms(5);
			delay_100ms(5);
			num = 0;
			while (true)
			{
				if (!FindPoint(hWnd, pathKhac + "/Auto_HuyBo.png").HasValue)
				{
					num++;
					if (num > 20)
					{
						debugText("Lỗi Không Thấy Nút Hủy Bỏ");
						break;
					}
					delay_100ms(5);
					debugText(".");
					continue;
				}
				while (FindAndClick(hWnd, pathKhac + "/Auto_HuyBo.png", -30, 0, "_").HasValue)
				{
					delay_100ms(50);
				}
				break;
			}
		}
		debugText("Auto Thần Tu Xong");
	}

	private void TuHanh()
	{
		//IL_01f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0205: Unknown result type (might be due to invalid IL or missing references)
		//IL_020a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0231: Unknown result type (might be due to invalid IL or missing references)
		//IL_0236: Unknown result type (might be due to invalid IL or missing references)
		//IL_0244: Unknown result type (might be due to invalid IL or missing references)
		//IL_0249: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e7: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ec: Unknown result type (might be due to invalid IL or missing references)
		int num = 0;
		PhuToiMap("Quyến Cố Thành");
		while (Xuong())
		{
		}
		delay_100ms(10);
		PressKey("`");
		delay_100ms(5);
		num = 0;
		while (!FindPoint(hWnd, pathKhac + "/Auto_ViTriDung.png").HasValue)
		{
			FindAndClick(hWnd, pathKhac + "/Auto_GocMapQuyenCo.png", 268, -153, "Di Chuyển Tới Vị Trí");
			num++;
			if (num > 8)
			{
				break;
			}
		}
		PressKey("`");
		delay_100ms(5);
		AutoControl.SendClickOnPosition(hWnd, 574, 299, (EMouseKey)0, 1);
		delay_100ms(5);
		if (!FindAndClick(hWnd, pathKhac + "/Auto_NPC.png", 0, 0, "NPC1").HasValue)
		{
			FindAndClick(hWnd, pathKhac + "/Auto_NPC2.png", 0, 0, "NPC2");
		}
		FindAndClick(hWnd, pathKhac + "/Auto_BangNhiemVu.png", 0, 230, "Auto");
		if (!FindPoint(hWnd, pathKhac + "/Auto_BatDau.png").HasValue)
		{
			debugText("Lỗi");
		}
		else
		{
			Point? val = FindPoint(hWnd, pathKhac + "/Auto_BatDau.png");
			System.IntPtr intPtr = hWnd;
			Point value = val.Value;
			int num2 = ((Point)(ref value)).X + 70;
			value = val.Value;
			AutoControl.SendClickOnPosition(intPtr, num2, ((Point)(ref value)).Y - 104 - 30, (EMouseKey)0, 1);
			delay_100ms(5);
			System.IntPtr intPtr2 = hWnd;
			value = val.Value;
			int num3 = ((Point)(ref value)).X + 70;
			value = val.Value;
			AutoControl.SendClickOnPosition(intPtr2, num3, ((Point)(ref value)).Y - 54 - 30, (EMouseKey)0, 1);
			delay_100ms(5);
			FindAndClick(hWnd, pathKhac + "/Auto_BatDau.png", 1, 2, "Bắt Đầu Auto");
			delay_100ms(5);
			FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 0, 0, "OK");
			debugText("Đang Auto Tu Hành");
			delay_100ms(5);
			System.IntPtr intPtr3 = hWnd;
			value = val.Value;
			int num4 = ((Point)(ref value)).X - 30;
			value = val.Value;
			AutoControl.SendClickOnPosition(intPtr3, num4, ((Point)(ref value)).Y + 2 - 30, (EMouseKey)0, 1);
			delay_100ms(5);
			num = 0;
			while (true)
			{
				if (!FindPoint(hWnd, pathKhac + "/Auto_HuyBo.png").HasValue)
				{
					num++;
					if (num > 20)
					{
						debugText("Lỗi Không Thấy Nút Hủy Bỏ");
						break;
					}
					delay_100ms(5);
					debugText(".");
					continue;
				}
				while (FindAndClick(hWnd, pathKhac + "/Auto_HuyBo.png", -30, 0, "_").HasValue)
				{
					delay_100ms(50);
				}
				break;
			}
		}
		debugText("Auto Tu Hành Xong");
	}

	private void TinhCung()
	{
		//IL_02ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0303: Unknown result type (might be due to invalid IL or missing references)
		//IL_0308: Unknown result type (might be due to invalid IL or missing references)
		//IL_0629: Unknown result type (might be due to invalid IL or missing references)
		//IL_062e: Unknown result type (might be due to invalid IL or missing references)
		//IL_063f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0644: Unknown result type (might be due to invalid IL or missing references)
		//IL_03dd: Unknown result type (might be due to invalid IL or missing references)
		//IL_03e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_03f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_03f8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0581: Unknown result type (might be due to invalid IL or missing references)
		//IL_0586: Unknown result type (might be due to invalid IL or missing references)
		//IL_0597: Unknown result type (might be due to invalid IL or missing references)
		//IL_059c: Unknown result type (might be due to invalid IL or missing references)
		//IL_038c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0391: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0485: Unknown result type (might be due to invalid IL or missing references)
		//IL_048a: Unknown result type (might be due to invalid IL or missing references)
		//IL_049b: Unknown result type (might be due to invalid IL or missing references)
		//IL_04a0: Unknown result type (might be due to invalid IL or missing references)
		//IL_05d5: Unknown result type (might be due to invalid IL or missing references)
		//IL_05da: Unknown result type (might be due to invalid IL or missing references)
		//IL_05eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_05f0: Unknown result type (might be due to invalid IL or missing references)
		//IL_052d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0532: Unknown result type (might be due to invalid IL or missing references)
		//IL_0543: Unknown result type (might be due to invalid IL or missing references)
		//IL_0548: Unknown result type (might be due to invalid IL or missing references)
		//IL_033b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0340: Unknown result type (might be due to invalid IL or missing references)
		//IL_0351: Unknown result type (might be due to invalid IL or missing references)
		//IL_0356: Unknown result type (might be due to invalid IL or missing references)
		//IL_067a: Unknown result type (might be due to invalid IL or missing references)
		//IL_067f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0690: Unknown result type (might be due to invalid IL or missing references)
		//IL_0695: Unknown result type (might be due to invalid IL or missing references)
		//IL_04d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_04de: Unknown result type (might be due to invalid IL or missing references)
		//IL_04ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_04f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0431: Unknown result type (might be due to invalid IL or missing references)
		//IL_0436: Unknown result type (might be due to invalid IL or missing references)
		//IL_0447: Unknown result type (might be due to invalid IL or missing references)
		//IL_044c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e4b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e50: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e5e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e63: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f03: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f08: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f16: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f1b: Unknown result type (might be due to invalid IL or missing references)
		int num = 0;
		while (true)
		{
			bool flag = false;
			int num2 = (int)numericUpDownTinhCung.Value;
			FindAndClick(hWnd, pathIconBatPet + "/AutoSkill.png", 5, 5, "Tắt Auto");
			delay_100ms(5);
			FindItem(hWnd, pathKhac + "/TinhCung_Icon.png", "12 Tinh Cung");
			Point? val = FindAndClick(hWnd, pathKhac + "/TinhCung_ConLuot3.png", 0, 0, "Lấy Vị Trí");
			if (val.HasValue)
			{
				if (!flag && num2 > 5)
				{
					flag = true;
					for (int i = 0; i < num2 - 5; i++)
					{
						SendClickOnPosition(hWnd, 719, 583, (EMouseKey)0);
						delay_100ms(5);
						PressKey("Enter");
						delay_100ms(5);
					}
				}
				string text = ((Control)comboBoxTinhCung_Cap).Text;
				string text2 = text;
				Point value;
				switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text2))
				{
				case 839747412u:
				{
					if (!(text2 == "Cấp 1"))
					{
						goto default;
					}
					System.IntPtr intPtr2 = hWnd;
					value = val.Value;
					int num4 = ((Point)(ref value)).X + 483;
					value = val.Value;
					AutoControl.SendClickOnPosition(intPtr2, num4, ((Point)(ref value)).Y - 482 - 30, (EMouseKey)0, 1);
					debugText("Cấp 1");
					break;
				}
				case 890080269u:
				{
					if (!(text2 == "Cấp 2"))
					{
						goto default;
					}
					System.IntPtr intPtr6 = hWnd;
					value = val.Value;
					int num8 = ((Point)(ref value)).X + 483;
					value = val.Value;
					AutoControl.SendClickOnPosition(intPtr6, num8, ((Point)(ref value)).Y - 482 + 43 - 30, (EMouseKey)0, 1);
					debugText("Cấp 2");
					break;
				}
				case 873302650u:
				{
					if (!(text2 == "Cấp 3"))
					{
						goto default;
					}
					System.IntPtr intPtr11 = hWnd;
					value = val.Value;
					int num13 = ((Point)(ref value)).X + 483;
					value = val.Value;
					AutoControl.SendClickOnPosition(intPtr11, num13, ((Point)(ref value)).Y - 482 + 86 - 30, (EMouseKey)0, 1);
					debugText("Cấp 3");
					break;
				}
				case 789414555u:
				{
					if (!(text2 == "Cấp 4"))
					{
						goto default;
					}
					System.IntPtr intPtr8 = hWnd;
					value = val.Value;
					int num10 = ((Point)(ref value)).X + 483;
					value = val.Value;
					AutoControl.SendClickOnPosition(intPtr8, num10, ((Point)(ref value)).Y - 482 + 129 - 30, (EMouseKey)0, 1);
					debugText("Cấp 4");
					break;
				}
				case 772636936u:
				{
					if (!(text2 == "Cấp 5"))
					{
						goto default;
					}
					System.IntPtr intPtr4 = hWnd;
					value = val.Value;
					int num6 = ((Point)(ref value)).X + 483;
					value = val.Value;
					AutoControl.SendClickOnPosition(intPtr4, num6, ((Point)(ref value)).Y - 482 + 172 - 30, (EMouseKey)0, 1);
					debugText("Cấp 5");
					break;
				}
				case 822969793u:
				{
					if (!(text2 == "Cấp 6"))
					{
						goto default;
					}
					System.IntPtr intPtr12 = hWnd;
					value = val.Value;
					int num14 = ((Point)(ref value)).X + 483;
					value = val.Value;
					AutoControl.SendClickOnPosition(intPtr12, num14, ((Point)(ref value)).Y - 482 + 215 - 30, (EMouseKey)0, 1);
					debugText("Cấp 6");
					break;
				}
				case 806192174u:
				{
					if (!(text2 == "Cấp 7"))
					{
						goto default;
					}
					System.IntPtr intPtr10 = hWnd;
					value = val.Value;
					int num12 = ((Point)(ref value)).X + 483;
					value = val.Value;
					AutoControl.SendClickOnPosition(intPtr10, num12, ((Point)(ref value)).Y - 482 + 258 - 30, (EMouseKey)0, 1);
					debugText("Cấp 7");
					break;
				}
				case 722304079u:
				{
					if (!(text2 == "Cấp 8"))
					{
						goto default;
					}
					System.IntPtr intPtr9 = hWnd;
					value = val.Value;
					int num11 = ((Point)(ref value)).X + 483;
					value = val.Value;
					AutoControl.SendClickOnPosition(intPtr9, num11, ((Point)(ref value)).Y - 482 + 301 - 30, (EMouseKey)0, 1);
					debugText("Cấp 8");
					break;
				}
				case 705526460u:
				{
					if (!(text2 == "Cấp 9"))
					{
						goto default;
					}
					System.IntPtr intPtr7 = hWnd;
					value = val.Value;
					int num9 = ((Point)(ref value)).X + 483;
					value = val.Value;
					AutoControl.SendClickOnPosition(intPtr7, num9, ((Point)(ref value)).Y - 482 + 344 - 30, (EMouseKey)0, 1);
					debugText("Cấp 9");
					break;
				}
				case 793518700u:
				{
					if (!(text2 == "Cấp 10"))
					{
						goto default;
					}
					System.IntPtr intPtr5 = hWnd;
					value = val.Value;
					int num7 = ((Point)(ref value)).X + 483;
					value = val.Value;
					AutoControl.SendClickOnPosition(intPtr5, num7, ((Point)(ref value)).Y - 482 + 387 - 30, (EMouseKey)0, 1);
					debugText("Cấp 10");
					break;
				}
				case 810296319u:
				{
					if (!(text2 == "Cấp 11"))
					{
						goto default;
					}
					System.IntPtr intPtr3 = hWnd;
					value = val.Value;
					int num5 = ((Point)(ref value)).X + 483;
					value = val.Value;
					AutoControl.SendClickOnPosition(intPtr3, num5, ((Point)(ref value)).Y - 482 + 430 - 30, (EMouseKey)0, 1);
					debugText("Cấp 11");
					break;
				}
				case 827073938u:
				{
					if (!(text2 == "Cấp 12"))
					{
						goto default;
					}
					System.IntPtr intPtr = hWnd;
					value = val.Value;
					int num3 = ((Point)(ref value)).X + 483;
					value = val.Value;
					AutoControl.SendClickOnPosition(intPtr, num3, ((Point)(ref value)).Y - 482 + 473 - 30, (EMouseKey)0, 1);
					debugText("Cấp 12");
					break;
				}
				default:
					debugText("Lỗi Chọn Cấp");
					break;
				}
				delay_100ms(8);
				string text3 = ((Control)comboBoxTinhCung_Loai).Text;
				string text4 = text3;
				switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text4))
				{
				case 788207975u:
					if (!(text4 == "Bạch Dương"))
					{
						goto default;
					}
					SendClickUpOnPosition(hWnd, 106, 90, (EMouseKey)0);
					delay_100ms(20);
					SendClickUpOnPosition(hWnd, 125, 146, (EMouseKey)0);
					delay_100ms(10);
					SendClickOnPosition(hWnd, 125, 146, (EMouseKey)0);
					delay_100ms(10);
					break;
				case 2985957052u:
					if (!(text4 == "Kim Ngưu"))
					{
						goto default;
					}
					SendClickUpOnPosition(hWnd, 288, 97, (EMouseKey)0);
					delay_100ms(20);
					SendClickUpOnPosition(hWnd, 312, 144, (EMouseKey)0);
					delay_100ms(10);
					SendClickOnPosition(hWnd, 312, 144, (EMouseKey)0);
					delay_100ms(10);
					break;
				case 2538338063u:
					if (!(text4 == "Song Tử"))
					{
						goto default;
					}
					SendClickUpOnPosition(hWnd, 476, 98, (EMouseKey)0);
					delay_100ms(20);
					SendClickUpOnPosition(hWnd, 491, 142, (EMouseKey)0);
					delay_100ms(10);
					SendClickOnPosition(hWnd, 491, 142, (EMouseKey)0);
					delay_100ms(10);
					break;
				case 3856220511u:
					if (!(text4 == "Cự Giải"))
					{
						goto default;
					}
					SendClickUpOnPosition(hWnd, 672, 108, (EMouseKey)0);
					delay_100ms(20);
					SendClickUpOnPosition(hWnd, 686, 144, (EMouseKey)0);
					delay_100ms(10);
					SendClickOnPosition(hWnd, 686, 144, (EMouseKey)0);
					delay_100ms(10);
					break;
				case 31665245u:
					if (!(text4 == "Sư Tử"))
					{
						goto default;
					}
					SendClickUpOnPosition(hWnd, 102, 281, (EMouseKey)0);
					delay_100ms(20);
					SendClickUpOnPosition(hWnd, 121, 317, (EMouseKey)0);
					delay_100ms(10);
					SendClickOnPosition(hWnd, 121, 317, (EMouseKey)0);
					delay_100ms(10);
					break;
				case 4194822473u:
					if (!(text4 == "Xử Nữ"))
					{
						goto default;
					}
					SendClickUpOnPosition(hWnd, 285, 287, (EMouseKey)0);
					delay_100ms(20);
					SendClickUpOnPosition(hWnd, 303, 316, (EMouseKey)0);
					delay_100ms(10);
					SendClickOnPosition(hWnd, 303, 316, (EMouseKey)0);
					delay_100ms(10);
					break;
				case 3689039040u:
					if (!(text4 == "Thiên Bình"))
					{
						goto default;
					}
					SendClickUpOnPosition(hWnd, 483, 280, (EMouseKey)0);
					delay_100ms(20);
					SendClickUpOnPosition(hWnd, 494, 317, (EMouseKey)0);
					delay_100ms(10);
					SendClickOnPosition(hWnd, 494, 317, (EMouseKey)0);
					delay_100ms(10);
					break;
				case 2030790210u:
					if (!(text4 == "Hổ Cáp"))
					{
						goto default;
					}
					SendClickUpOnPosition(hWnd, 677, 278, (EMouseKey)0);
					delay_100ms(20);
					SendClickUpOnPosition(hWnd, 687, 319, (EMouseKey)0);
					delay_100ms(10);
					SendClickOnPosition(hWnd, 687, 319, (EMouseKey)0);
					delay_100ms(10);
					break;
				case 1714896873u:
					if (!(text4 == "Nhân Mã"))
					{
						goto default;
					}
					SendClickUpOnPosition(hWnd, 117, 442, (EMouseKey)0);
					delay_100ms(20);
					SendClickUpOnPosition(hWnd, 119, 493, (EMouseKey)0);
					delay_100ms(10);
					SendClickOnPosition(hWnd, 119, 493, (EMouseKey)0);
					delay_100ms(10);
					break;
				case 3000368549u:
					if (!(text4 == "Ma Kết"))
					{
						goto default;
					}
					SendClickUpOnPosition(hWnd, 292, 454, (EMouseKey)0);
					delay_100ms(20);
					SendClickUpOnPosition(hWnd, 309, 490, (EMouseKey)0);
					delay_100ms(10);
					SendClickOnPosition(hWnd, 309, 490, (EMouseKey)0);
					delay_100ms(10);
					break;
				case 432313301u:
					if (!(text4 == "Bảo Bình"))
					{
						goto default;
					}
					SendClickUpOnPosition(hWnd, 479, 449, (EMouseKey)0);
					delay_100ms(20);
					SendClickUpOnPosition(hWnd, 493, 493, (EMouseKey)0);
					delay_100ms(10);
					SendClickOnPosition(hWnd, 493, 493, (EMouseKey)0);
					delay_100ms(10);
					break;
				case 137326025u:
					if (!(text4 == "Song Ngư"))
					{
						goto default;
					}
					SendClickUpOnPosition(hWnd, 661, 448, (EMouseKey)0);
					delay_100ms(20);
					SendClickUpOnPosition(hWnd, 690, 492, (EMouseKey)0);
					delay_100ms(10);
					SendClickOnPosition(hWnd, 690, 492, (EMouseKey)0);
					delay_100ms(10);
					break;
				default:
					debugText("Lỗi Chọn Tinh Cung");
					break;
				}
				delay_100ms(20);
				if (!FindPoint(hWnd, pathKhac + "/TinhCung_BatDau.png").HasValue)
				{
					FindAndClick(hWnd, pathTacVu + "/Tat_Tinh_Cung.png", 2, 2, "Tắt");
					debugText("Lỗi");
					break;
				}
				Point? val2 = FindPoint(hWnd, pathKhac + "/TinhCung_BatDau.png");
				for (int j = 0; j < num2; j++)
				{
					System.IntPtr intPtr13 = hWnd;
					value = val2.Value;
					int num15 = ((Point)(ref value)).X + 79;
					value = val2.Value;
					AutoControl.SendClickOnPosition(intPtr13, num15, ((Point)(ref value)).Y - 150 - 30, (EMouseKey)0, 1);
					delay_100ms(5);
				}
				FindAndClick(hWnd, pathKhac + "/TinhCung_BatDau.png", 1, 2, "Bắt Đầu Auto");
				delay_100ms(5);
				FindAndClick(hWnd, pathKhac + "/TinhCung_Co.png", 0, 0, "OK");
				debugText("Đang Auto Tinh Cung");
				delay_100ms(5);
				System.IntPtr intPtr14 = hWnd;
				value = val2.Value;
				int num16 = ((Point)(ref value)).X - 30;
				value = val2.Value;
				AutoControl.SendClickOnPosition(intPtr14, num16, ((Point)(ref value)).Y + 2 - 30, (EMouseKey)0, 1);
				delay_100ms(5);
				num = 0;
				while (true)
				{
					if (!FindPoint(hWnd, pathKhac + "/TinhCung_HuyBo.png").HasValue)
					{
						num++;
						if (num > 5)
						{
							debugText("Lỗi Không Thấy Nút Hủy Bỏ");
							break;
						}
						delay_100ms(5);
						debugText(".");
						continue;
					}
					while (FindAndClick(hWnd, pathKhac + "/TinhCung_HuyBo.png", -30, 0, "_").HasValue)
					{
						delay_100ms(50);
					}
					break;
				}
				break;
			}
			num++;
			if (num > 5)
			{
				break;
			}
			delay_100ms(10);
		}
		delay_100ms(20);
		FindAndClick(hWnd, pathKhac + "/XuQueDB.png", 5, 5, "Không");
		SendClickOnPosition(hWnd, 596, 395, (EMouseKey)0);
		delay_100ms(5);
		debugText("Auto Tinh Cung Xong");
	}

	private void TinhCung2()
	{
		//IL_0c5e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c63: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c71: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c76: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d16: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d1b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d29: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d2e: Unknown result type (might be due to invalid IL or missing references)
		int num = 0;
		bool flag = true;
		bool flag2 = false;
		while (true)
		{
			int num2 = (int)numericUpDownTinhCung.Value;
			FindAndClick(hWnd, pathIconBatPet + "/AutoSkill.png", 5, 5, "Tắt Auto");
			delay_100ms(5);
			FindItem(hWnd, pathKhac + "/TinhCung_Icon.png", "12 Tinh Cung");
			if (FindPoint(hWnd, pathKhac + "/TinhCung_KimNguu.png").HasValue)
			{
				if (!flag2 && num2 > 5)
				{
					flag2 = true;
					for (int i = 0; i < num2 - 5; i++)
					{
						SendClickOnPosition(hWnd, 719, 583, (EMouseKey)0);
						delay_100ms(5);
						PressKey("Enter");
						delay_100ms(5);
					}
				}
				string text = ((Control)comboBoxTinhCung_Cap).Text;
				string text2 = text;
				switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text2))
				{
				case 839747412u:
					if (!(text2 == "Cấp 1"))
					{
						goto default;
					}
					SendClickOnPosition(hWnd, 823, 90, (EMouseKey)0);
					debugText("Cấp 1");
					break;
				case 890080269u:
					if (!(text2 == "Cấp 2"))
					{
						goto default;
					}
					SendClickOnPosition(hWnd, 823, 135, (EMouseKey)0);
					debugText("Cấp 2");
					break;
				case 873302650u:
					if (!(text2 == "Cấp 3"))
					{
						goto default;
					}
					SendClickOnPosition(hWnd, 823, 177, (EMouseKey)0);
					debugText("Cấp 3");
					break;
				case 789414555u:
					if (!(text2 == "Cấp 4"))
					{
						goto default;
					}
					SendClickOnPosition(hWnd, 823, 219, (EMouseKey)0);
					debugText("Cấp 4");
					break;
				case 772636936u:
					if (!(text2 == "Cấp 5"))
					{
						goto default;
					}
					SendClickOnPosition(hWnd, 823, 262, (EMouseKey)0);
					debugText("Cấp 5");
					break;
				case 822969793u:
					if (!(text2 == "Cấp 6"))
					{
						goto default;
					}
					SendClickOnPosition(hWnd, 823, 305, (EMouseKey)0);
					debugText("Cấp 6");
					break;
				case 806192174u:
					if (!(text2 == "Cấp 7"))
					{
						goto default;
					}
					SendClickOnPosition(hWnd, 823, 349, (EMouseKey)0);
					debugText("Cấp 7");
					break;
				case 722304079u:
					if (!(text2 == "Cấp 8"))
					{
						goto default;
					}
					SendClickOnPosition(hWnd, 823, 390, (EMouseKey)0);
					debugText("Cấp 8");
					break;
				case 705526460u:
					if (!(text2 == "Cấp 9"))
					{
						goto default;
					}
					SendClickOnPosition(hWnd, 823, 434, (EMouseKey)0);
					debugText("Cấp 9");
					break;
				case 793518700u:
					if (!(text2 == "Cấp 10"))
					{
						goto default;
					}
					SendClickOnPosition(hWnd, 823, 479, (EMouseKey)0);
					debugText("Cấp 10");
					break;
				case 810296319u:
					if (!(text2 == "Cấp 11"))
					{
						goto default;
					}
					SendClickOnPosition(hWnd, 823, 520, (EMouseKey)0);
					debugText("Cấp 11");
					break;
				case 827073938u:
					if (!(text2 == "Cấp 12"))
					{
						goto default;
					}
					SendClickOnPosition(hWnd, 823, 563, (EMouseKey)0);
					debugText("Cấp 12");
					break;
				default:
					debugText("Lỗi Chọn Cấp");
					break;
				}
				delay_100ms(8);
				string text3 = ((Control)comboBoxTinhCung_Loai).Text;
				string text4 = text3;
				switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text4))
				{
				case 788207975u:
					if (!(text4 == "Bạch Dương"))
					{
						goto default;
					}
					SendClickUpOnPosition(hWnd, 106, 90, (EMouseKey)0);
					delay_100ms(20);
					SendClickUpOnPosition(hWnd, 125, 146, (EMouseKey)0);
					delay_100ms(10);
					SendClickOnPosition(hWnd, 125, 146, (EMouseKey)0);
					delay_100ms(10);
					break;
				case 2985957052u:
					if (!(text4 == "Kim Ngưu"))
					{
						goto default;
					}
					SendClickUpOnPosition(hWnd, 288, 97, (EMouseKey)0);
					delay_100ms(20);
					SendClickUpOnPosition(hWnd, 312, 144, (EMouseKey)0);
					delay_100ms(10);
					SendClickOnPosition(hWnd, 312, 144, (EMouseKey)0);
					delay_100ms(10);
					break;
				case 2538338063u:
					if (!(text4 == "Song Tử"))
					{
						goto default;
					}
					SendClickUpOnPosition(hWnd, 476, 98, (EMouseKey)0);
					delay_100ms(20);
					SendClickUpOnPosition(hWnd, 491, 142, (EMouseKey)0);
					delay_100ms(10);
					SendClickOnPosition(hWnd, 491, 142, (EMouseKey)0);
					delay_100ms(10);
					break;
				case 3856220511u:
					if (!(text4 == "Cự Giải"))
					{
						goto default;
					}
					SendClickUpOnPosition(hWnd, 672, 108, (EMouseKey)0);
					delay_100ms(20);
					SendClickUpOnPosition(hWnd, 686, 144, (EMouseKey)0);
					delay_100ms(10);
					SendClickOnPosition(hWnd, 686, 144, (EMouseKey)0);
					delay_100ms(10);
					break;
				case 31665245u:
					if (!(text4 == "Sư Tử"))
					{
						goto default;
					}
					SendClickUpOnPosition(hWnd, 102, 281, (EMouseKey)0);
					delay_100ms(20);
					SendClickUpOnPosition(hWnd, 121, 317, (EMouseKey)0);
					delay_100ms(10);
					SendClickOnPosition(hWnd, 121, 317, (EMouseKey)0);
					delay_100ms(10);
					break;
				case 4194822473u:
					if (!(text4 == "Xử Nữ"))
					{
						goto default;
					}
					SendClickUpOnPosition(hWnd, 285, 287, (EMouseKey)0);
					delay_100ms(20);
					SendClickUpOnPosition(hWnd, 303, 316, (EMouseKey)0);
					delay_100ms(10);
					SendClickOnPosition(hWnd, 303, 316, (EMouseKey)0);
					delay_100ms(10);
					break;
				case 3689039040u:
					if (!(text4 == "Thiên Bình"))
					{
						goto default;
					}
					SendClickUpOnPosition(hWnd, 483, 280, (EMouseKey)0);
					delay_100ms(20);
					SendClickUpOnPosition(hWnd, 494, 317, (EMouseKey)0);
					delay_100ms(10);
					SendClickOnPosition(hWnd, 494, 317, (EMouseKey)0);
					delay_100ms(10);
					break;
				case 2030790210u:
					if (!(text4 == "Hổ Cáp"))
					{
						goto default;
					}
					SendClickUpOnPosition(hWnd, 677, 278, (EMouseKey)0);
					delay_100ms(20);
					SendClickUpOnPosition(hWnd, 687, 319, (EMouseKey)0);
					delay_100ms(10);
					SendClickOnPosition(hWnd, 687, 319, (EMouseKey)0);
					delay_100ms(10);
					break;
				case 1714896873u:
					if (!(text4 == "Nhân Mã"))
					{
						goto default;
					}
					SendClickUpOnPosition(hWnd, 117, 442, (EMouseKey)0);
					delay_100ms(20);
					SendClickUpOnPosition(hWnd, 119, 493, (EMouseKey)0);
					delay_100ms(10);
					SendClickOnPosition(hWnd, 119, 493, (EMouseKey)0);
					delay_100ms(10);
					break;
				case 3000368549u:
					if (!(text4 == "Ma Kết"))
					{
						goto default;
					}
					SendClickUpOnPosition(hWnd, 292, 454, (EMouseKey)0);
					delay_100ms(20);
					SendClickUpOnPosition(hWnd, 309, 490, (EMouseKey)0);
					delay_100ms(10);
					SendClickOnPosition(hWnd, 309, 490, (EMouseKey)0);
					delay_100ms(10);
					break;
				case 432313301u:
					if (!(text4 == "Bảo Bình"))
					{
						goto default;
					}
					SendClickUpOnPosition(hWnd, 479, 449, (EMouseKey)0);
					delay_100ms(20);
					SendClickUpOnPosition(hWnd, 493, 493, (EMouseKey)0);
					delay_100ms(10);
					SendClickOnPosition(hWnd, 493, 493, (EMouseKey)0);
					delay_100ms(10);
					break;
				case 137326025u:
					if (!(text4 == "Song Ngư"))
					{
						goto default;
					}
					SendClickUpOnPosition(hWnd, 661, 448, (EMouseKey)0);
					delay_100ms(20);
					SendClickUpOnPosition(hWnd, 690, 492, (EMouseKey)0);
					delay_100ms(10);
					SendClickOnPosition(hWnd, 690, 492, (EMouseKey)0);
					delay_100ms(10);
					break;
				default:
					debugText("Lỗi Chọn Tinh Cung");
					break;
				}
				delay_100ms(20);
				if (!FindPoint(hWnd, pathKhac + "/TinhCung_BatDau.png").HasValue)
				{
					FindAndClick(hWnd, pathTacVu + "/Tat_Tinh_Cung.png", 2, 2, "Tắt");
					debugText("Lỗi");
				}
				else
				{
					Point? val = FindPoint(hWnd, pathKhac + "/TinhCung_BatDau.png");
					Point value;
					for (int j = 0; j < num2; j++)
					{
						System.IntPtr intPtr = hWnd;
						value = val.Value;
						int num3 = ((Point)(ref value)).X + 79;
						value = val.Value;
						AutoControl.SendClickOnPosition(intPtr, num3, ((Point)(ref value)).Y - 150 - 30, (EMouseKey)0, 1);
						delay_100ms(5);
					}
					FindAndClick(hWnd, pathKhac + "/TinhCung_BatDau.png", 1, 2, "Bắt Đầu Auto");
					delay_100ms(5);
					FindAndClick(hWnd, pathKhac + "/TinhCung_Co.png", 0, 0, "OK");
					debugText("Đang Auto Tinh Cung");
					delay_100ms(5);
					System.IntPtr intPtr2 = hWnd;
					value = val.Value;
					int num4 = ((Point)(ref value)).X - 30;
					value = val.Value;
					AutoControl.SendClickOnPosition(intPtr2, num4, ((Point)(ref value)).Y + 2 - 30, (EMouseKey)0, 1);
					delay_100ms(5);
					num = 0;
					while (true)
					{
						if (!FindPoint(hWnd, pathKhac + "/TinhCung_HuyBo.png").HasValue)
						{
							num++;
							if (num > 5)
							{
								debugText("Lỗi Không Thấy Nút Hủy Bỏ");
								break;
							}
							delay_100ms(5);
							debugText(".");
							continue;
						}
						while (FindAndClick(hWnd, pathKhac + "/TinhCung_HuyBo.png", -30, 0, "_").HasValue)
						{
							delay_100ms(50);
						}
						break;
					}
				}
			}
			else
			{
				num++;
				if (num <= 5)
				{
					delay_100ms(10);
					continue;
				}
			}
			delay_100ms(20);
			Point? val2 = FindAndClick(hWnd, pathKhac + "/XuQueDB.png", 5, 5, "Không");
			SendClickOnPosition(hWnd, 596, 395, (EMouseKey)0);
			if (!val2.HasValue || !flag)
			{
				break;
			}
			flag = false;
			num = 0;
		}
		delay_100ms(5);
		debugText("Auto Tinh Cung Xong");
	}

	private void HanhLang()
	{
		PhuToiMap3("Quyến Cố Thành");
		Bay();
		Bay();
		Bay();
		delay_100ms(10);
		PressKey("`");
		delay_100ms(5);
		setFPS(24);
		for (int i = 0; i < 10; i++)
		{
			FindAndClick(hWnd, pathKhac + "/Auto_GocMapQuyenCo.png", 210, -129, "Di Chuyển Tới Vị Trí");
		}
		for (int j = 0; j < 10; j++)
		{
			FindAndClick(hWnd, pathKhac + "/Auto_GocMapQuyenCo.png", 155, -129, "Di Chuyển Tới Vị Trí");
		}
		PressKey("ESC");
		Xuong();
		Xuong();
		Xuong();
		delay_100ms(10);
		HideIconECT();
		setFPS(50);
		if (!FindAndClick(hWnd, pathKhac + "/HanhLang_NPC4.png", 0, 0, "NPC1").HasValue && !FindAndClick(hWnd, pathKhac + "/HanhLang_NPC3.png", 0, 0, "NPC2").HasValue)
		{
			SendClickOnPosition(hWnd, 540, 157, (EMouseKey)0);
			delay_100ms(10);
			SendClickOnPosition(hWnd, 540, 157, (EMouseKey)0);
			delay_100ms(10);
			SendClickOnPosition(hWnd, 493, 164, (EMouseKey)0);
			delay_100ms(10);
			SendClickOnPosition(hWnd, 493, 164, (EMouseKey)0);
			delay_100ms(10);
		}
		FindAndClick(hWnd, pathKhac + "/HanhLang_BangNhiemVu.png", 60, 300, "Nhận Thưởng");
		debugText("Nhận Thưởng Hành Lang Xong");
	}

	private void HanhLang2()
	{
		int num = 0;
		while (true)
		{
			Xuong();
			PhuToiMap("Quyến Cố Thành", 102.0, 45.0);
			AutoControl.SendClickOnPosition(hWnd, 616, 305, (EMouseKey)0, 1);
			delay_100ms(5);
			AutoControl.SendClickOnPosition(hWnd, 723, 329, (EMouseKey)0, 1);
			delay_100ms(50);
			num++;
			if (num > 5)
			{
				debugText("Nhận Thưởng Hành Lang Lô\u0303i");
				return;
			}
			AutoControl.SendClickOnPosition(hWnd, 513, 406, (EMouseKey)0, 1);
			delay_100ms(5);
			if (FindAndClick(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png", 0, -20, "Nhận Thưởng").HasValue)
			{
				break;
			}
			Tele4(102.0, 45.0);
			AutoControl.SendClickOnPosition(hWnd, 616, 305, (EMouseKey)0, 1);
			delay_100ms(5);
			AutoControl.SendClickOnPosition(hWnd, 723, 329, (EMouseKey)0, 1);
			delay_100ms(50);
			AutoControl.SendClickOnPosition(hWnd, 513, 406, (EMouseKey)0, 1);
			delay_100ms(5);
			if (FindAndClick(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png", 0, -20, "Nhận Thưởng").HasValue)
			{
				break;
			}
			AutoControl.SendClickOnPosition(hWnd, 700, 336, (EMouseKey)0, 1);
			delay_100ms(5);
			if (FindAndClick(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png", 0, -20, "Nhận Thưởng").HasValue)
			{
				break;
			}
			delay_100ms(5);
			PhuToiMap("Bàng Bối Thành");
			AutoControl.SendClickOnPosition(hWnd, 500, 600, (EMouseKey)0, 1);
			delay_100ms(5);
			AutoControl.SendClickOnPosition(hWnd, 500, 600, (EMouseKey)0, 1);
			delay_100ms(5);
		}
		debugText("Nhận Thưởng Hành Lang Xong");
	}

	private void TheBai()
	{
		FindItem(hWnd, pathKhac + "/TheBai_Icon.png", "Thẻ Bài");
		while (!FindAndClick(hWnd, pathKhac + "/TheBai_HetLuot.png", 5, 1, "Mở Bài").HasValue)
		{
			FindAndClick(hWnd, pathKhac + "/TheBai_PhatBai.png", 5, 1, "Mở Bài");
			delay_100ms(5);
			FindAndClick(hWnd, pathKhac + "/TheBai_Nhan.png", 5, 1, "Mở Bài");
			PressKey("Enter");
			delay_100ms(5);
		}
		debugText("Lật Thẻ Bài Xong");
	}

	private void TheBai2()
	{
		int num = 0;
		int num2 = 0;
		int num3 = 0;
		int num4 = 0;
		int num5 = 0;
		int num6 = 0;
		int[] array = new int[5];
		int num7 = 0;
		if (FindItem(hWnd, pathKhac + "/XuQue.png", "Mở Xù Quẻ"))
		{
			if (!FindItem(hWnd, pathKhac + "/TheBai_Icon.png", "Thẻ Bài"))
			{
				debugText("Lật Thẻ Bài Lỗi");
			}
			else
			{
				while (!FindAndClick(hWnd, pathKhac + "/TheBai_HetLuot.png", 5, 1, "Mở Bài").HasValue)
				{
					FindAndClick(hWnd, pathKhac + "/TheBai_PhatBai.png", 5, 1, "Phát Bài");
					delay_100ms(5);
					Bitmap image = ImageScanOpenCV.GetImage(pathKhac + "/TheBai_1.png");
					Bitmap image2 = ImageScanOpenCV.GetImage(pathKhac + "/TheBai_2.png");
					Bitmap image3 = ImageScanOpenCV.GetImage(pathKhac + "/TheBai_3.png");
					Bitmap image4 = ImageScanOpenCV.GetImage(pathKhac + "/TheBai_4.png");
					Bitmap image5 = ImageScanOpenCV.GetImage(pathKhac + "/TheBai_5.png");
					Bitmap image6 = ImageScanOpenCV.GetImage(pathKhac + "/TheBai_6.png");
					int num8 = 0;
					while (true)
					{
						debugText("Check thẻ bài");
						Image chupWindow = CaptureHelper.CaptureWindow(hWnd);
						num = (num2 = (num3 = (num4 = (num5 = (num6 = 0)))));
						for (int i = 0; i < 5; i++)
						{
							array[i] = 0;
						}
						num7 = 0;
						List<Point> val = FindPoints2(chupWindow, image);
						if (val.Count != 0 && val != null)
						{
							for (int j = 0; j < val.Count; j++)
							{
								array[num7] = 1;
								num7++;
							}
							num = val.Count;
						}
						debugText("_");
						val.Clear();
						val = FindPoints2(chupWindow, image2);
						if (val.Count != 0 && val != null)
						{
							for (int k = 0; k < val.Count; k++)
							{
								array[num7] = 2;
								num7++;
							}
							num2 = val.Count;
						}
						debugText("_");
						val.Clear();
						val = FindPoints2(chupWindow, image3);
						if (val.Count != 0 && val != null)
						{
							for (int l = 0; l < val.Count; l++)
							{
								array[num7] = 3;
								num7++;
							}
							num3 = val.Count;
						}
						debugText("_");
						val.Clear();
						val = FindPoints2(chupWindow, image4);
						if (val.Count != 0 && val != null)
						{
							for (int m = 0; m < val.Count; m++)
							{
								array[num7] = 4;
								num7++;
							}
							num4 = val.Count;
						}
						debugText("_");
						val.Clear();
						val = FindPoints2(chupWindow, image5);
						if (val.Count != 0 && val != null)
						{
							for (int n = 0; n < val.Count; n++)
							{
								array[num7] = 5;
								num7++;
							}
							num5 = val.Count;
						}
						debugText("_");
						val.Clear();
						val = FindPoints2(chupWindow, image6);
						if (val.Count != 0 && val != null)
						{
							for (int num9 = 0; num9 < val.Count; num9++)
							{
								array[num7] = 6;
								num7++;
							}
							num6 = val.Count;
						}
						debugText("_");
						int num10 = 0;
						int[] array2 = array;
						foreach (int num12 in array2)
						{
							num10 = num10 * 10 + num12;
						}
						debugText("Lọc");
						int[] array3 = new int[6] { num, num2, num3, num4, num5, num6 };
						System.Array.Sort<int>(array3);
						int num13 = 0;
						int[] array4 = array3;
						foreach (int num15 in array4)
						{
							num13 = num13 * 10 + num15;
						}
						debugText("Thẻ Bài " + string.Join<int>("", (System.Collections.Generic.IEnumerable<int>)array));
						switch (num13)
						{
						case 5:
							debugText("Thùng 5 Lá " + array[0]);
							goto IL_09a7;
						case 11111:
							if (num10 == 12345 || num10 == 23456)
							{
								debugText("Sảnh 5 Lá");
							}
							else if (array[4] - array[3] == 2)
							{
								FindAndClick(hWnd, pathKhac + "/TheBai_" + array[4] + ".png", 5, 5, "Đổi Bài Số " + array[4]);
							}
							else
							{
								FindAndClick(hWnd, pathKhac + "/TheBai_" + array[0] + ".png", 5, 5, "Đổi Bài Số " + array[0]);
							}
							goto IL_09a7;
						case 14:
						{
							debugText("Tứ Quý");
							int num23 = 0;
							int[] array6 = new int[6];
							for (int num24 = 0; num24 < Enumerable.Count<int>((System.Collections.Generic.IEnumerable<int>)array) - 1; num24++)
							{
								array6[num24] = array[num24];
								array6[5] = array[num24] + 1;
							}
							for (int num25 = 0; num25 < Enumerable.Count<int>((System.Collections.Generic.IEnumerable<int>)array6) - 1; num25++)
							{
								if (array6[num25 + 1] - array6[num25] != 0)
								{
									num23 = ((array6[num25 + 2] - array6[num25 + 1] != 0) ? (num25 + 1) : num25);
									break;
								}
							}
							FindAndClick(hWnd, pathKhac + "/TheBai_" + array[num23] + ".png", 5, 5, "Đổi Bài Số " + array[num23]);
							goto IL_09a7;
						}
						case 23:
							debugText("Củ Lũ");
							goto IL_09a7;
						case 1112:
						{
							debugText("Sảnh / Đôi");
							int num18 = 0;
							for (int num19 = 0; num19 < Enumerable.Count<int>((System.Collections.Generic.IEnumerable<int>)array) - 1; num19++)
							{
								if (array[num19 + 1] - array[num19] == 0)
								{
									num18 = num19;
									break;
								}
							}
							FindAndClick(hWnd, pathKhac + "/TheBai_" + array[num18] + ".png", 5, 5, "Đổi Bài Số " + array[num18]);
							goto IL_09a7;
						}
						case 113:
						{
							debugText("Thùng 3 Lá");
							int num20 = 0;
							int[] array5 = new int[6];
							for (int num21 = 0; num21 < Enumerable.Count<int>((System.Collections.Generic.IEnumerable<int>)array) - 1; num21++)
							{
								array5[num21] = array[num21];
								array5[5] = array[num21] + 1;
							}
							for (int num22 = 0; num22 < Enumerable.Count<int>((System.Collections.Generic.IEnumerable<int>)array5) - 1; num22++)
							{
								if (array5[num22 + 1] - array5[num22] != 0)
								{
									num20 = ((array5[num22 + 2] - array5[num22 + 1] != 0) ? (num22 + 1) : num22);
									break;
								}
							}
							FindAndClick(hWnd, pathKhac + "/TheBai_" + array[num20] + ".png", 5, 5, "Đổi Bài Số " + array[num20]);
							goto IL_09a7;
						}
						case 122:
						{
							debugText("2 Đôi");
							int num16 = 0;
							for (int num17 = 0; num17 < Enumerable.Count<int>((System.Collections.Generic.IEnumerable<int>)array) - 1; num17++)
							{
								if (array[num17 + 1] - array[num17] != 0)
								{
									num16 = ((array[num17 + 2] - array[num17 + 1] != 0) ? (num17 + 1) : num17);
									break;
								}
							}
							FindAndClick(hWnd, pathKhac + "/TheBai_" + array[num16] + ".png", 5, 5, "Đổi Bài Số " + array[num16]);
							goto IL_09a7;
						}
						default:
							{
								debugText("Lô\u0303i Đổi Thẻ Bài");
								num8++;
								if (num8 < 3)
								{
									break;
								}
								goto IL_09a7;
							}
							IL_09a7:
							FindAndClick(hWnd, pathKhac + "/TheBai_DoiThe.png", 5, 1, "Đổi Thẻ");
							FindAndClick(hWnd, pathKhac + "/TheBai_Nhan.png", 5, 1, "Nhận");
							PressKey("Enter");
							delay_100ms(3);
							goto end_IL_0140;
						}
						continue;
						end_IL_0140:
						break;
					}
				}
			}
		}
		debugText("Lật Thẻ Bài Xong");
	}

	private void NangLuongTuNhien()
	{
		//IL_00b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_00bc: Expected O, but got Unknown
		string[] array = new string[2] { "/NLTN_Thanh.png", "/NLTN_Suong.png" };
		string[] array2 = new string[2] { "/NLTN_Am.png", "/NLTN_Dien.png" };
		string[] array3 = new string[2] { "/NLTN_Thuy.png", "/NLTN_Tho.png" };
		string[] array4 = new string[2] { "/NLTN_Phong.png", "/NLTN_Quang.png" };
		string[] array5 = new string[2] { "/NLTN_Loi.png", "/NLTN_Hoa.png" };
		string[] array6 = new string[2] { "/NLTN_Diem.png", "/NLTN_Bang.png" };
		FindItem(hWnd, pathKhac + "/NLTN_Icon.png", "Năng Lượng Tự Nhiên");
		while (FindAndClick(hWnd, pathKhac + "/NLTN_MienPhiThuThap.png", 5, 5, "Còn Lượt").HasValue)
		{
			Random val = new Random();
			string text = array[val.Next(array.Length)];
			string text2 = array2[val.Next(array2.Length)];
			string text3 = array3[val.Next(array3.Length)];
			string text4 = array4[val.Next(array4.Length)];
			string text5 = array5[val.Next(array5.Length)];
			string text6 = array6[val.Next(array6.Length)];
			Point? val2 = FindAndClick(hWnd, pathKhac + text, 0, 0, "Nguyên Tố " + text.Substring(5).Replace(".png", ""));
			Point? val3 = FindAndClick(hWnd, pathKhac + text2, 0, 0, "Nguyên Tố " + text2.Substring(5).Replace(".png", ""));
			Point? val4 = FindAndClick(hWnd, pathKhac + text3, 0, 0, "Nguyên Tố " + text3.Substring(5).Replace(".png", ""));
			Point? val5 = FindAndClick(hWnd, pathKhac + text4, 0, 0, "Nguyên Tố " + text4.Substring(5).Replace(".png", ""));
			Point? val6 = FindAndClick(hWnd, pathKhac + text5, 0, 0, "Nguyên Tố " + text5.Substring(5).Replace(".png", ""));
			Point? val7 = FindAndClick(hWnd, pathKhac + text6, 0, 0, "Nguyên Tố " + text6.Substring(5).Replace(".png", ""));
			if (!val2.HasValue && !val3.HasValue && !val4.HasValue && !val5.HasValue && !val6.HasValue && !val7.HasValue)
			{
				continue;
			}
			for (int i = 0; i < 10; i++)
			{
				if (FindAndClick(hWnd, pathKhac + "/NLTN_ThuThap.png", 0, 0, "Thu Thập").HasValue)
				{
					i = 10;
					delay_100ms(15);
					FindAndClick(hWnd, pathKhac + "/NLTN_OK.png", 2, 0, "OK");
				}
			}
		}
		debugText("Thu Thập Năng Lượng Tự Nhiên Xong");
	}

	private void PhucLoiVip()
	{
		//IL_0070: Unknown result type (might be due to invalid IL or missing references)
		//IL_0075: Unknown result type (might be due to invalid IL or missing references)
		//IL_007f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0084: Unknown result type (might be due to invalid IL or missing references)
		//IL_00bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c4: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0111: Unknown result type (might be due to invalid IL or missing references)
		//IL_0116: Unknown result type (might be due to invalid IL or missing references)
		//IL_0120: Unknown result type (might be due to invalid IL or missing references)
		//IL_0125: Unknown result type (might be due to invalid IL or missing references)
		//IL_0163: Unknown result type (might be due to invalid IL or missing references)
		//IL_0168: Unknown result type (might be due to invalid IL or missing references)
		//IL_0172: Unknown result type (might be due to invalid IL or missing references)
		//IL_0177: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d6: Unknown result type (might be due to invalid IL or missing references)
		//IL_01db: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_024c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0251: Unknown result type (might be due to invalid IL or missing references)
		//IL_025b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0260: Unknown result type (might be due to invalid IL or missing references)
		FindAndClick(hWnd, pathKhac + "/VIP_Icon.png", 0, 0, "Mở VIP ");
		delay_100ms(20);
		Point? val = FindPoint(hWnd, pathKhac + "/VIP_Xuong.png");
		if (val.HasValue)
		{
			Point value;
			for (int i = 0; i < 1; i++)
			{
				System.IntPtr intPtr = hWnd;
				value = val.Value;
				int x = ((Point)(ref value)).X;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr, x, ((Point)(ref value)).Y - 27 - 30, (EMouseKey)0, 1);
				delay_100ms(3);
			}
			for (int j = 0; j < 5; j++)
			{
				System.IntPtr intPtr2 = hWnd;
				value = val.Value;
				int x2 = ((Point)(ref value)).X;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr2, x2, ((Point)(ref value)).Y - 82 - 30, (EMouseKey)0, 1);
				delay_100ms(3);
			}
			for (int k = 0; k < 3; k++)
			{
				System.IntPtr intPtr3 = hWnd;
				value = val.Value;
				int x3 = ((Point)(ref value)).X;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr3, x3, ((Point)(ref value)).Y - 27 - 30, (EMouseKey)0, 1);
				delay_100ms(3);
			}
			for (int l = 0; l < 3; l++)
			{
				System.IntPtr intPtr4 = hWnd;
				value = val.Value;
				int x4 = ((Point)(ref value)).X;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr4, x4, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
				delay_100ms(3);
			}
			FindAndClick(hWnd, pathKhac + "/VIP_Nhan.png", 1, 1, "Nhận");
			for (int m = 0; m < 5; m++)
			{
				System.IntPtr intPtr5 = hWnd;
				value = val.Value;
				int x5 = ((Point)(ref value)).X;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr5, x5, ((Point)(ref value)).Y - 82 - 30, (EMouseKey)0, 1);
				delay_100ms(3);
			}
			FindsAndClick(hWnd, pathKhac + "/VIP_Nhan.png", 1, 1, "Nhận ");
			for (int n = 0; n < 4; n++)
			{
				System.IntPtr intPtr6 = hWnd;
				value = val.Value;
				int x6 = ((Point)(ref value)).X;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr6, x6, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
				delay_100ms(3);
			}
			FindAndClick(hWnd, pathKhac + "/VIP_Nhan.png", 1, 1, "Nhận");
		}
		debugText("Nhận Phúc Lợi Vip Xong");
	}

	private void TrangPhuc()
	{
		FindAndClick(hWnd, pathKhac + "/Icon_NhanVat.png", 0, 0, "Mở Nhân Vật");
		FindAndClick(hWnd, pathKhac + "/Skin_TrangBi.png", 0, 0, "Tìm tab Trang Bị");
		FindAndClick(hWnd, pathKhac + "/Skin_TuDo.png", 0, 0, "Tìm Tủ Đồ");
		FindAndClick(hWnd, pathKhac + "/Skin_RutBo.png", 0, 0, "Rút Bộ");
		FindAndClick(hWnd, pathKhac + "/Skin_Free.png", 30, 150, "Rút Free");
		FindAndClick(hWnd, pathKhac + "/Skin_Hop.png", -332, -142, "Hợp > Rút Free");
		delay_100ms(2);
		SendClickOnPosition(hWnd, 181, 300, (EMouseKey)0);
		delay_100ms(5);
		PressKey("Enter");
		for (int i = 0; i < 20; i++)
		{
			if (FindAndClick(hWnd, pathKhac + "/Skin_XacNhan.png", 2, 2, "Nhận").HasValue)
			{
				i = 20;
			}
			delay_100ms(2);
		}
		PressKey("Enter");
		for (int j = 0; j < 20; j++)
		{
			if (FindAndClick(hWnd, pathKhac + "/Skin_XacNhan.png", 2, 2, "Nhận").HasValue)
			{
				j = 20;
			}
			delay_100ms(2);
		}
		SendClickOnPosition(hWnd, 530, 402, (EMouseKey)0);
		delay_100ms(2);
		SendClickOnPosition(hWnd, 530, 402, (EMouseKey)0);
		delay_100ms(2);
		FindAndClick(hWnd, pathKhac + "/Skin_Hop.png", 0, 0, "Hợp");
		debugText("Rút Trang Phục Xong");
	}

	private void MatBao()
	{
		//IL_021f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0224: Unknown result type (might be due to invalid IL or missing references)
		//IL_022f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0234: Unknown result type (might be due to invalid IL or missing references)
		//IL_03d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_03de: Unknown result type (might be due to invalid IL or missing references)
		//IL_03e9: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ee: Unknown result type (might be due to invalid IL or missing references)
		//IL_0264: Unknown result type (might be due to invalid IL or missing references)
		//IL_0269: Unknown result type (might be due to invalid IL or missing references)
		//IL_0274: Unknown result type (might be due to invalid IL or missing references)
		//IL_0279: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a9: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ae: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_02be: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f1: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0301: Unknown result type (might be due to invalid IL or missing references)
		//IL_0306: Unknown result type (might be due to invalid IL or missing references)
		//IL_0339: Unknown result type (might be due to invalid IL or missing references)
		//IL_033e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0349: Unknown result type (might be due to invalid IL or missing references)
		//IL_034e: Unknown result type (might be due to invalid IL or missing references)
		//IL_037e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0383: Unknown result type (might be due to invalid IL or missing references)
		//IL_038e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0393: Unknown result type (might be due to invalid IL or missing references)
		Point? val = null;
		FindAndClick(hWnd, pathKhac + "/Icon_NhanVat.png", 0, 0, "Mở Nhân Vật");
		FindAndClick(hWnd, pathKhac + "/MB_TrangBi.png", 0, 0, "Mở Trang Bị");
		for (int i = 0; i < 50; i++)
		{
			if (FindAndClick(hWnd, pathKhac + "/MB_HonKhi.png", 0, 0, "Mở Hồn Khí").HasValue)
			{
				i = 50;
			}
		}
		for (int j = 0; j < 10; j++)
		{
			val = FindAndClick(hWnd, pathKhac + "/MB_MatBao.png", 0, 0, "Mở Mật Bảo");
			if (val.HasValue)
			{
				j = 10;
				continue;
			}
			val = FindPoint(hWnd, pathKhac + "/MB_MatBao2.png");
			delay_100ms(5);
		}
		for (int k = 0; k < 10; k++)
		{
			val = FindAndClick(hWnd, pathKhac + "/MB_CheTao.png", 0, 0, "Mở Chế Tạo");
			if (val.HasValue)
			{
				k = 10;
				continue;
			}
			val = FindPoint(hWnd, pathKhac + "/MB_CheTao2.png");
			delay_100ms(5);
		}
		string text = ((Control)comboBoxMB_Cap).Text;
		string text2 = text;
		Point value;
		if (!(text2 == "Cấp 1"))
		{
			if (!(text2 == "Cấp 2"))
			{
				if (!(text2 == "Cấp 3"))
				{
					if (!(text2 == "Cấp 4"))
					{
						if (!(text2 == "Cấp 5"))
						{
							if (text2 == "Cấp 6")
							{
								System.IntPtr intPtr = hWnd;
								value = val.Value;
								int x = ((Point)(ref value)).X;
								value = val.Value;
								AutoControl.SendClickOnPosition(intPtr, x, ((Point)(ref value)).Y + 190 - 30, (EMouseKey)0, 1);
								debugText("Chế Cấp 6");
							}
							else
							{
								debugText("Lỗi Chọn Cấp");
							}
						}
						else
						{
							System.IntPtr intPtr2 = hWnd;
							value = val.Value;
							int x2 = ((Point)(ref value)).X;
							value = val.Value;
							AutoControl.SendClickOnPosition(intPtr2, x2, ((Point)(ref value)).Y + 180 - 30, (EMouseKey)0, 1);
							debugText("Chế Cấp 5");
						}
					}
					else
					{
						System.IntPtr intPtr3 = hWnd;
						value = val.Value;
						int x3 = ((Point)(ref value)).X;
						value = val.Value;
						AutoControl.SendClickOnPosition(intPtr3, x3, ((Point)(ref value)).Y + 155 - 30, (EMouseKey)0, 1);
						debugText("Chế Cấp 4");
					}
				}
				else
				{
					System.IntPtr intPtr4 = hWnd;
					value = val.Value;
					int x4 = ((Point)(ref value)).X;
					value = val.Value;
					AutoControl.SendClickOnPosition(intPtr4, x4, ((Point)(ref value)).Y + 130 - 30, (EMouseKey)0, 1);
					debugText("Chế Cấp 3");
				}
			}
			else
			{
				System.IntPtr intPtr5 = hWnd;
				value = val.Value;
				int x5 = ((Point)(ref value)).X;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr5, x5, ((Point)(ref value)).Y + 105 - 30, (EMouseKey)0, 1);
				debugText("Chế Cấp 2");
			}
		}
		else
		{
			System.IntPtr intPtr6 = hWnd;
			value = val.Value;
			int x6 = ((Point)(ref value)).X;
			value = val.Value;
			AutoControl.SendClickOnPosition(intPtr6, x6, ((Point)(ref value)).Y + 80 - 30, (EMouseKey)0, 1);
			debugText("Chế Cấp 1");
		}
		delay_100ms(5);
		System.IntPtr intPtr7 = hWnd;
		value = val.Value;
		int x7 = ((Point)(ref value)).X;
		value = val.Value;
		AutoControl.SendClickOnPosition(intPtr7, x7, ((Point)(ref value)).Y + 220 - 30, (EMouseKey)0, 1);
		delay_100ms(6);
		string text3 = ((Control)comboBoxMB_Loai).Text;
		string text4 = text3;
		switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text4))
		{
		case 2684842695u:
		{
			if (!(text4 == "Thần Binh"))
			{
				goto default;
			}
			int num10 = 0;
			while (num10 < 5)
			{
				if (FindAndClick(hWnd, pathKhac + "/MB_ThanBinh.png", 0, 0, "Thần Binh").HasValue)
				{
					num10 = 50;
					num10++;
					continue;
				}
				goto end_IL_0431;
			}
			goto IL_09d8;
		}
		case 4041226654u:
		{
			if (!(text4 == "Chiến Trang"))
			{
				goto default;
			}
			int num3 = 0;
			while (num3 < 5)
			{
				if (FindAndClick(hWnd, pathKhac + "/MB_ChienTrang.png", 0, 0, "Chiến Trang").HasValue)
				{
					num3 = 50;
					num3++;
					continue;
				}
				goto end_IL_0431;
			}
			goto IL_09d8;
		}
		case 1355469773u:
		{
			if (!(text4 == "Pháp Sức"))
			{
				goto default;
			}
			int num7 = 0;
			while (num7 < 5)
			{
				if (FindAndClick(hWnd, pathKhac + "/MB_PhapSuc.png", 0, 0, "Pháp Sức").HasValue)
				{
					num7 = 50;
					num7++;
					continue;
				}
				goto end_IL_0431;
			}
			goto IL_09d8;
		}
		case 2157902321u:
		{
			if (!(text4 == "Vô Ưu"))
			{
				goto default;
			}
			int num2 = 0;
			while (num2 < 5)
			{
				if (FindAndClick(hWnd, pathKhac + "/MB_VoUu.png", 0, 0, "Vô Ưu").HasValue)
				{
					num2 = 50;
					num2++;
					continue;
				}
				goto end_IL_0431;
			}
			goto IL_09d8;
		}
		case 3609132560u:
		{
			if (!(text4 == "Thánh Điện"))
			{
				goto default;
			}
			int num8 = 0;
			while (num8 < 5)
			{
				if (FindAndClick(hWnd, pathKhac + "/MB_ThanhDien.png", 0, 0, "Thánh Điện").HasValue)
				{
					num8 = 50;
					num8++;
					continue;
				}
				goto end_IL_0431;
			}
			goto IL_09d8;
		}
		case 2762272319u:
		{
			if (!(text4 == "Hang Động"))
			{
				goto default;
			}
			int num5 = 0;
			while (num5 < 5)
			{
				if (FindAndClick(hWnd, pathKhac + "/MB_HangDong.png", 0, 0, "Hang Động").HasValue)
				{
					num5 = 50;
					num5++;
					continue;
				}
				goto end_IL_0431;
			}
			goto IL_09d8;
		}
		case 1518256622u:
		{
			if (!(text4 == "Đại Mạc"))
			{
				goto default;
			}
			int num11 = 0;
			while (num11 < 5)
			{
				if (FindAndClick(hWnd, pathKhac + "/MB_DaiMac.png", 0, 0, "Đại Mạc").HasValue)
				{
					num11 = 50;
					num11++;
					continue;
				}
				goto end_IL_0431;
			}
			goto IL_09d8;
		}
		case 2660550270u:
		{
			if (!(text4 == "Di Cảnh"))
			{
				goto default;
			}
			int num9 = 0;
			while (num9 < 5)
			{
				if (FindAndClick(hWnd, pathKhac + "/MB_DiCanh.png", 0, 0, "CDi Cảnh").HasValue)
				{
					num9 = 50;
					num9++;
					continue;
				}
				goto end_IL_0431;
			}
			goto IL_09d8;
		}
		case 2748360446u:
		{
			if (!(text4 == "Liệt Diễm"))
			{
				goto default;
			}
			int num6 = 0;
			while (num6 < 5)
			{
				if (FindAndClick(hWnd, pathKhac + "/MB_LietDiem.png", 0, 0, "Liệt Diễm").HasValue)
				{
					num6 = 50;
					num6++;
					continue;
				}
				goto end_IL_0431;
			}
			goto IL_09d8;
		}
		case 3850138096u:
		{
			if (!(text4 == "Lang Huyệt"))
			{
				goto default;
			}
			int num4 = 0;
			while (num4 < 5)
			{
				if (FindAndClick(hWnd, pathKhac + "/MB_LangHuyet.png", 0, 0, "Lang Huyệt").HasValue)
				{
					num4 = 50;
					num4++;
					continue;
				}
				goto end_IL_0431;
			}
			goto IL_09d8;
		}
		case 2692720656u:
		{
			if (!(text4 == "Lạc Viên"))
			{
				goto default;
			}
			int num = 0;
			while (num < 5)
			{
				if (FindAndClick(hWnd, pathKhac + "/MB_LacVien.png", 0, 0, "Lạc Viên").HasValue)
				{
					num = 50;
					num++;
					continue;
				}
				goto end_IL_0431;
			}
			goto IL_09d8;
		}
		default:
			{
				debugText("Lỗi Chọn Loại");
				delay_100ms(5);
				goto IL_09d8;
			}
			IL_09d8:
			for (int l = 0; l < 10; l++)
			{
				if (FindAndClick(hWnd, pathKhac + "/MB_DatNL.png", 0, 0, "Đặt NL ").HasValue)
				{
					for (int m = 0; m < 10; m++)
					{
						val = FindPoint(hWnd, pathKhac + "/MB_CheTaoMB.png");
						if (FindAndClick(hWnd, pathKhac + "/MB_CheTaoMB.png", 0, 0, "Chế Lần " + (l + 1)).HasValue)
						{
							m = 10;
						}
					}
				}
				delay_100ms(1);
				if (FindAndClick(hWnd, pathKhac + "/MB_OKerr.png", 5, 5, "Hết Lượt hoặc Không Đủ Nguyên Liệu").HasValue)
				{
					l = 10;
				}
			}
			break;
			end_IL_0431:
			break;
		}
		debugText("Chế Mật Bảo Xong");
	}

	private void PhucHoiEXP()
	{
		FindItem(hWnd, pathKhac + "/EXP_Icon.png", "Hồi Phục EXP");
		FindAndClick(hWnd, pathKhac + "/EXP_TuHanh.png", 450, -30, "Nhận EXP Tu Hành");
		FindAndClick(hWnd, pathKhac + "/EXP_Nghe.png", 450, -30, "Nhận EXP Nghề");
		FindAndClick(hWnd, pathKhac + "/EXP_LuyenPet.png", 450, -30, "Nhận EXP Luyện Pet");
		FindAndClick(hWnd, pathKhac + "/EXP_TriAn.png", 450, -30, "Nhận EXP Trị An");
		FindAndClick(hWnd, pathKhac + "/EXP_TruMa.png", 450, -30, "Nhận EXP Trừ Ma");
		FindAndClick(hWnd, pathKhac + "/EXP_TreoThuong.png", 450, -30, "Nhận EXP Treo Thưởng");
		debugText("Nhận EXP Hồi Phục Xong");
	}

	private void KhongGianDieuKhac()
	{
		FindItem(hWnd, pathKhac + "/KGDK_Icon.png", "Không Gian Điêu Khắc");
		for (int i = 0; i < 50; i++)
		{
			if (FindPoint(hWnd, pathKhac + "/KGDK_Doi2.png").HasValue)
			{
				FindAndClick(hWnd, pathKhac + "/KGDK_Doi.png", 0, 0, "Đổi Điểm KGĐK");
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)13);
				delay_100ms(5);
				i = 50;
			}
		}
		debugText("Không Gian Điêu Khắc Xong");
	}

	private unsafe void Trong()
	{
		//IL_04c8: Unknown result type (might be due to invalid IL or missing references)
		//IL_04cd: Unknown result type (might be due to invalid IL or missing references)
		//IL_058c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0591: Unknown result type (might be due to invalid IL or missing references)
		//IL_04d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_04d8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0597: Unknown result type (might be due to invalid IL or missing references)
		//IL_059c: Unknown result type (might be due to invalid IL or missing references)
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

	private void TuThap()
	{
		//IL_00c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c7: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fa: Unknown result type (might be due to invalid IL or missing references)
		//IL_01de: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ee: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0201: Unknown result type (might be due to invalid IL or missing references)
		//IL_0206: Unknown result type (might be due to invalid IL or missing references)
		//IL_0211: Unknown result type (might be due to invalid IL or missing references)
		//IL_0216: Unknown result type (might be due to invalid IL or missing references)
		if (!FindItem(hWnd, pathKhac + "/TLAM_Icon.png", "Tu Luyện Ảo Ma"))
		{
			debugText("Không Tìm Thấy Icon");
		}
		else
		{
			delay_100ms(50);
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

	private bool CheckIdMap(string Map)
	{
		double num = 0.0;
		if (!(Map == "Ba\u0300ng Bô\u0301i Tha\u0300nh"))
		{
			if (!(Map == "Cô\u0309 Đa\u0323o"))
			{
				if (!(Map == "Đông Huyê\u0300n Tha\u0300nh"))
				{
					if (!(Map == "Quyê\u0301n Cô\u0301 Tha\u0300nh"))
					{
						if (!(Map == "Tiên La\u0323p Tha\u0300nh"))
						{
							if (Map == "Tinh Linh Tha\u0300nh")
							{
								num = 10.0;
							}
						}
						else
						{
							num = 31.0;
						}
					}
					else
					{
						num = 30.0;
					}
				}
				else
				{
					num = 9.0;
				}
			}
			else
			{
				num = 42.0;
			}
		}
		else
		{
			num = 38.0;
		}
		if (ReadMemoryData(processID, myPointer_map_id, offset_map_id) == num)
		{
			return true;
		}
		return false;
	}

	private unsafe void HideIconECT()
	{
		//IL_005d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0062: Unknown result type (might be due to invalid IL or missing references)
		//IL_006c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0071: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0239: Unknown result type (might be due to invalid IL or missing references)
		//IL_023e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0248: Unknown result type (might be due to invalid IL or missing references)
		//IL_024d: Unknown result type (might be due to invalid IL or missing references)
		//IL_016f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0174: Unknown result type (might be due to invalid IL or missing references)
		//IL_017f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0184: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ac: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c7: Unknown result type (might be due to invalid IL or missing references)
		//IL_02cc: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_02de: Unknown result type (might be due to invalid IL or missing references)
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
		List<Point> val3 = FindPoints(hWnd, pathTacVu + "/MuiTenSangPhai.png");
		if (val3.Count != 0)
		{
			for (int i = 0; i < val3.Count; i++)
			{
				System.IntPtr intPtr3 = hWnd;
				val2 = val3[i];
				int x3 = ((Point)(ref val2)).X;
				val2 = val3[i];
				AutoControl.SendClickOnPosition(intPtr3, x3, ((Point)(ref val2)).Y - 30, (EMouseKey)0, 1);
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
			System.IntPtr intPtr4 = hWnd;
			val2 = val.Value;
			int x4 = ((Point)(ref val2)).X;
			val2 = val.Value;
			AutoControl.SendClickOnPosition(intPtr4, x4, ((Point)(ref val2)).Y - 30, (EMouseKey)0, 1);
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
			for (int j = 0; j < 10; j++)
			{
				System.IntPtr intPtr5 = hWnd;
				val2 = val.Value;
				int num = ((Point)(ref val2)).X + 50;
				val2 = val.Value;
				AutoControl.SendClickOnPosition(intPtr5, num, ((Point)(ref val2)).Y - 30, (EMouseKey)0, 1);
				delay_100ms(3);
			}
		}
	}

	private void PressKey(string x)
	{
		FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 2, 2, "Press");
		FindAndClick(hWnd, pathKhac + "/Log_OK.png", 2, 2, "Press OK");
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
				FindAndClick(hWnd, pathTacVu + "/MuiTenChucNang.png", 1, 1, "show~");
				FindAndClick(hWnd, pathTacVu + "/BanDo.png", 2, 2, "bản đồ");
				FindAndClick(hWnd, pathTacVu + "/MuiTenThietLap1.png", 1, 1, "hide~");
			}
			break;
		case 3931159262u:
			if (x == "ESC")
			{
				FindAndClick(hWnd, pathTacVu + "/Tat.png", 2, 2, "Tắt");
				FindAndClick(hWnd, pathTruMa + "/Boss_Tat.png", 2, 2, "Tắt");
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
		case 3322673650u:
			if (x == "C")
			{
				FindAndClick(hWnd, pathKhac + "/Icon_NhanVat.png", 0, 0, "Mở Nhân Vật");
			}
			break;
		case 3591115554u:
			if (x == "S")
			{
				AutoControl.SendKeyBoardPress(hWnd, (VKeys)83);
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

	private void ChuongTrinhDaily1()
	{
		//IL_0013: Unknown result type (might be due to invalid IL or missing references)
		//IL_0019: Invalid comparison between Unknown and I4
		//IL_005d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0063: Invalid comparison between Unknown and I4
		//IL_00a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ad: Invalid comparison between Unknown and I4
		//IL_00f1: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f7: Invalid comparison between Unknown and I4
		//IL_013b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0141: Invalid comparison between Unknown and I4
		//IL_0149: Unknown result type (might be due to invalid IL or missing references)
		//IL_014f: Invalid comparison between Unknown and I4
		//IL_0189: Unknown result type (might be due to invalid IL or missing references)
		//IL_018f: Invalid comparison between Unknown and I4
		//IL_01c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_01cc: Invalid comparison between Unknown and I4
		//IL_0203: Unknown result type (might be due to invalid IL or missing references)
		//IL_0209: Invalid comparison between Unknown and I4
		//IL_0240: Unknown result type (might be due to invalid IL or missing references)
		//IL_0246: Invalid comparison between Unknown and I4
		//IL_027d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0283: Invalid comparison between Unknown and I4
		//IL_02ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c0: Invalid comparison between Unknown and I4
		//IL_02f7: Unknown result type (might be due to invalid IL or missing references)
		//IL_02fd: Invalid comparison between Unknown and I4
		//IL_0334: Unknown result type (might be due to invalid IL or missing references)
		//IL_033a: Invalid comparison between Unknown and I4
		//IL_035d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0363: Invalid comparison between Unknown and I4
		//IL_039a: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a0: Invalid comparison between Unknown and I4
		//IL_03d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_03dd: Invalid comparison between Unknown and I4
		//IL_0414: Unknown result type (might be due to invalid IL or missing references)
		//IL_041a: Invalid comparison between Unknown and I4
		debugText("End_Line");
		if ((int)checkBoxVIP.CheckState == 1)
		{
			HideIconECT();
			delay_100ms(5);
			PhucLoiVip();
			delay_100ms(5);
			PressKey("ESC");
		}
		debugText("End_Line");
		if ((int)checkBoxAll1.CheckState == 1)
		{
			HideIconECT();
			delay_100ms(5);
			NhanHoanThanhPhuBan();
			delay_100ms(5);
			PressKey("ESC");
		}
		debugText("End_Line");
		if ((int)checkBoxAll2.CheckState == 1)
		{
			HideIconECT();
			delay_100ms(5);
			NhanNhiemVuPhuBan();
			delay_100ms(5);
			PressKey("ESC");
		}
		debugText("End_Line");
		if ((int)checkBoxTH2.CheckState == 1)
		{
			HideIconECT();
			delay_100ms(5);
			NhanNhiemVuThamHiem();
			delay_100ms(5);
			PressKey("ESC");
		}
		debugText("End_Line");
		if ((int)checkBoxAll2.CheckState == 1 || (int)checkBoxTH2.CheckState == 1)
		{
			AutoPhuBan();
			delay_100ms(5);
			PressKey("ESC");
		}
		debugText("End_Line");
		if ((int)checkBoxTranhBaPK.CheckState == 1)
		{
			KhongGianDieuKhac();
			delay_100ms(5);
			PressKey("ESC");
		}
		debugText("End_Line");
		if ((int)checkBoxEXP.CheckState == 1)
		{
			PhucHoiEXP();
			delay_100ms(5);
			PressKey("ESC");
		}
		debugText("End_Line");
		if ((int)checkBoxMB.CheckState == 1)
		{
			MatBao();
			delay_100ms(5);
			PressKey("ESC");
		}
		debugText("End_Line");
		if ((int)checkBoxSkinHanhLangKGDK.CheckState == 1)
		{
			TrangPhuc();
			delay_100ms(5);
			PressKey("ESC");
		}
		debugText("End_Line");
		if ((int)checkBoxNLTN.CheckState == 1)
		{
			NangLuongTuNhien();
			delay_100ms(5);
			PressKey("ESC");
		}
		debugText("End_Line");
		if ((int)checkBoxTheBai.CheckState == 1)
		{
			TheBai();
			delay_100ms(5);
			PressKey("ESC");
		}
		debugText("End_Line");
		if ((int)checkBoxTrong.CheckState == 1)
		{
			Trong();
			delay_100ms(5);
			PressKey("ESC");
		}
		debugText("End_Line");
		if ((int)checkBoxDaPet.CheckState == 1)
		{
			DaPet();
		}
		debugText("End_Line");
		if ((int)checkBoxNongTruong.CheckState == 1)
		{
			HanhLang();
			delay_100ms(5);
			PressKey("ESC");
		}
		debugText("End_Line");
		if ((int)checkBoxTinhCung.CheckState == 1)
		{
			TinhCung();
			delay_100ms(5);
			PressKey("ESC");
		}
		debugText("End_Line");
		if ((int)checkBoxThanTu.CheckState == 1)
		{
			ThanTu();
			delay_100ms(5);
			PressKey("ESC");
		}
		debugText("End_Line");
		if ((int)checkBoxTuHanh.CheckState == 1)
		{
			TuHanh();
			delay_100ms(5);
			PressKey("ESC");
		}
		debugText("End_Line");
	}

	private void ChuongTrinhDaily4()
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		//IL_0150: Unknown result type (might be due to invalid IL or missing references)
		//IL_0156: Invalid comparison between Unknown and I4
		//IL_01d5: Unknown result type (might be due to invalid IL or missing references)
		//IL_01db: Invalid comparison between Unknown and I4
		//IL_025a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0260: Invalid comparison between Unknown and I4
		//IL_02a0: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a6: Invalid comparison between Unknown and I4
		//IL_0301: Unknown result type (might be due to invalid IL or missing references)
		//IL_0307: Invalid comparison between Unknown and I4
		//IL_0328: Unknown result type (might be due to invalid IL or missing references)
		//IL_032e: Invalid comparison between Unknown and I4
		//IL_034f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0355: Invalid comparison between Unknown and I4
		//IL_0376: Unknown result type (might be due to invalid IL or missing references)
		//IL_037c: Invalid comparison between Unknown and I4
		//IL_039d: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a3: Invalid comparison between Unknown and I4
		//IL_03c4: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ca: Invalid comparison between Unknown and I4
		//IL_03eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_03f1: Invalid comparison between Unknown and I4
		//IL_0412: Unknown result type (might be due to invalid IL or missing references)
		//IL_0418: Invalid comparison between Unknown and I4
		//IL_0498: Unknown result type (might be due to invalid IL or missing references)
		//IL_049e: Invalid comparison between Unknown and I4
		//IL_0502: Unknown result type (might be due to invalid IL or missing references)
		//IL_0508: Invalid comparison between Unknown and I4
		//IL_05a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_05ae: Invalid comparison between Unknown and I4
		//IL_05f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_05fb: Invalid comparison between Unknown and I4
		//IL_0658: Unknown result type (might be due to invalid IL or missing references)
		//IL_065e: Invalid comparison between Unknown and I4
		//IL_061f: Unknown result type (might be due to invalid IL or missing references)
		//IL_06a5: Unknown result type (might be due to invalid IL or missing references)
		//IL_06ab: Invalid comparison between Unknown and I4
		//IL_06f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_06f8: Invalid comparison between Unknown and I4
		//IL_0700: Unknown result type (might be due to invalid IL or missing references)
		//IL_0706: Invalid comparison between Unknown and I4
		//IL_0dab: Unknown result type (might be due to invalid IL or missing references)
		//IL_0db1: Invalid comparison between Unknown and I4
		//IL_113d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1143: Invalid comparison between Unknown and I4
		//IL_15ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_15f3: Invalid comparison between Unknown and I4
		//IL_1155: Unknown result type (might be due to invalid IL or missing references)
		//IL_115b: Invalid comparison between Unknown and I4
		//IL_15fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_1601: Invalid comparison between Unknown and I4
		//IL_1163: Unknown result type (might be due to invalid IL or missing references)
		//IL_1169: Invalid comparison between Unknown and I4
		//IL_095d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0963: Invalid comparison between Unknown and I4
		//IL_1005: Unknown result type (might be due to invalid IL or missing references)
		//IL_100b: Invalid comparison between Unknown and I4
		//IL_096b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0971: Invalid comparison between Unknown and I4
		//IL_1013: Unknown result type (might be due to invalid IL or missing references)
		//IL_1019: Invalid comparison between Unknown and I4
		//IL_12f7: Unknown result type (might be due to invalid IL or missing references)
		//IL_12fd: Invalid comparison between Unknown and I4
		//IL_169b: Unknown result type (might be due to invalid IL or missing references)
		//IL_1203: Unknown result type (might be due to invalid IL or missing references)
		//IL_0add: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ae3: Invalid comparison between Unknown and I4
		//IL_0a0b: Unknown result type (might be due to invalid IL or missing references)
		//IL_10b3: Unknown result type (might be due to invalid IL or missing references)
		if ((int)checkBoxMuaPhu.CheckState == 1)
		{
			int num = System.DateTime.Now.Year * 10000 + System.DateTime.Now.Month * 100 + System.DateTime.Now.Day;
			int num2 = dateTimePickerMuaPhu.Value.Year * 10000 + dateTimePickerMuaPhu.Value.Month * 100 + dateTimePickerMuaPhu.Value.Day;
			if (num >= num2)
			{
				MuaTieuDieuPhu();
			}
		}
		debugText("End_Line");
		if (checkBoxNongTruong.Checked)
		{
			Bay();
			Bay();
			Bay();
			TraNhiemVuNongTruong();
		}
		else
		{
			PhuToiMap3("Tiên Lạp Thành");
			AutoControl.SendClickOnPosition(hWnd, 500, 600, (EMouseKey)0, 1);
			delay_100ms(5);
			AutoControl.SendClickOnPosition(hWnd, 500, 600, (EMouseKey)0, 1);
			delay_100ms(5);
			debugText("End_Line");
		}
		debugText("End_Line");
		if ((int)checkBoxDaPet.CheckState == 1 && numericUpDownDaPet.Value > 0m)
		{
			setupWDT2(10);
			DaPet();
			delay_100ms(5);
			NumericUpDown obj = numericUpDownDaPet;
			decimal value = obj.Value;
			obj.Value = value - 1m;
			PressKey("ESC");
			countTimer_pet = 0;
		}
		debugText("End_Line");
		if ((int)checkBoxTuThap.CheckState == 1)
		{
			setupWDT2(10);
			if (numericUpDownTuThap.Value > 0m)
			{
				TuThap();
				delay_100ms(5);
				NumericUpDown obj2 = numericUpDownTuThap;
				decimal value = obj2.Value;
				obj2.Value = value - 1m;
				PressKey("ESC");
				countTimer_thap = 0;
			}
		}
		debugText("End_Line");
		if ((int)checkBoxTrong.CheckState == 1)
		{
			setupWDT2(10);
			Trong();
			delay_100ms(5);
			PressKey("ESC");
		}
		debugText("End_Line");
		if ((int)checkBoxVIP.CheckState == 1)
		{
			setupWDT2(10);
			HideIconECT();
			delay_100ms(5);
			PhucLoiVip();
			delay_100ms(5);
			PressKey("ESC");
		}
		debugText("End_Line");
		pb.Clear();
		if ((int)checkBoxKBDM2.CheckState == 1)
		{
			pb.Add("/NhiemVuKBDM.png");
		}
		if ((int)checkBoxLTC2.CheckState == 1)
		{
			pb.Add("/NhiemVuLTC.png");
		}
		if ((int)checkBoxTVLH2.CheckState == 1)
		{
			pb.Add("/NhiemVuTVLH.png");
		}
		if ((int)checkBoxLD2.CheckState == 1)
		{
			pb.Add("/NhiemVuLD.png");
		}
		if ((int)checkBoxTGS2.CheckState == 1)
		{
			pb.Add("/NhiemVuTGS.png");
		}
		if ((int)checkBoxTH2.CheckState == 1)
		{
			pb.Add("/NhiemVuTH.png");
		}
		if ((int)checkBoxMHD2.CheckState == 1)
		{
			pb.Add("/NhiemVuMHD.png");
		}
		if ((int)checkBoxQHM2.CheckState == 1)
		{
			pb.Add("/NhiemVuQHM.png");
		}
		if (Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)pb) != 0)
		{
			setupWDT2(30);
			NhanNhiemVuPhuBan2RiengLe(pb);
			pb.Clear();
			delay_100ms(5);
			PressKey("ESC");
		}
		checkTimer();
		debugText("End_Line");
		if ((int)checkBoxQcauca.CheckState == 1)
		{
			xoaViTri();
			setupWDT2(45);
			if (NhiemVuCauCa())
			{
				checkTimer();
				debugText("End_Line");
				setupWDT2(45);
				NhiemVuCauCa();
			}
		}
		checkTimer();
		debugText("End_Line");
		if ((int)checkBoxQhaithuoc.CheckState == 1)
		{
			xoaViTri();
			Kenh = 0;
			setupWDT2(45);
			if (NhiemVuHaiThuoc())
			{
				checkTimer();
				debugText("End_Line");
				setupWDT2(45);
				NhiemVuHaiThuoc();
			}
			if (KenhHienTai != 0)
			{
				debugText("Trở Về Kênh Cũ");
				while (!ChuyenKenh(KenhHienTai))
				{
				}
			}
		}
		checkTimer();
		debugText("End_Line");
		if ((int)checkBoxSkinHanhLangKGDK.CheckState == 1)
		{
			setupWDT2(30);
			HanhLang2();
			delay_100ms(5);
			PressKey("ESC");
		}
		checkTimer();
		debugText("End_Line");
		if ((int)checkBoxKiepNan.CheckState == 1)
		{
			setupWDT2(30);
			KiepNanVoUu(((Control)comboBoxKiepNan).Text, checkBoxAll2.CheckState);
			delay_100ms(5);
			PressKey("ESC");
		}
		checkTimer();
		debugText("End_Line");
		if ((int)checkBoxST.CheckState == 1)
		{
			setupWDT2(30);
			DanhSoTay();
			delay_100ms(5);
			PressKey("ESC");
		}
		checkTimer();
		debugText("End_Line");
		if ((int)checkBoxTinhCung.CheckState == 1)
		{
			setupWDT2(30);
			TinhCung2();
			delay_100ms(5);
			PressKey("ESC");
		}
		checkTimer();
		debugText("End_Line");
		if ((int)checkBoxThanTu.CheckState == 1 && (int)checkBoxTuHanh.CheckState == 1)
		{
			setupWDT2(30);
			ThanTu2();
			delay_100ms(5);
			PressKey("ESC");
			setupWDT2(30);
			NhanThuong();
			delay_100ms(5);
			PressKey("ESC");
			while (true)
			{
				debugText("End_Line");
				int num3 = 0;
				while (!FindAndClick(hWnd, pathKhac + "/Auto_BangNhiemVu.png", 0, 230, "Auto").HasValue)
				{
					num3++;
					if (num3 >= 3)
					{
						break;
					}
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
					SendClickOnPosition(hWnd, 696, 341, (EMouseKey)0);
					delay_100ms(5);
					SendClickOnPosition(hWnd, 696, 341, (EMouseKey)0);
					delay_100ms(5);
					SendClickOnPosition(hWnd, 517, 429, (EMouseKey)0);
					delay_100ms(5);
				}
				if (FindPoint(hWnd, pathKhac + "/Auto_BatDau.png").HasValue)
				{
					break;
				}
				debugText("Chờ -> check lại sau 60s");
				delay_100ms(600);
				PressKey("ESC");
				checkTimer();
			}
			if ((int)checkBoxQPet.CheckState == 1 || (int)checkBoxQBang.CheckState == 1 || checkBoxTM.Checked)
			{
				setupWDT2(60);
				if (checkBoxTM.Checked)
				{
					while (CheckHandleWindows("[" + accCheck + "] BMx Tru Ma"))
					{
						hWnd = FindWindowHandle(null, "[" + accCheck + "] BMx Tru Ma");
						GetWindowThreadProcessId(hWnd, out processID);
						Process processById = Process.GetProcessById((int)processID);
						processById.Kill();
						delay_100ms(30);
					}
					Program.AppMain.nameFlash = accCheck;
					Program.AppMain.nameUser = nameUser;
					Program.AppMain.autoRun = true;
					Program.AppMain.link = link;
					debugText("mở Tool Trừ Ma");
					TruMa truMa = new TruMa();
					((Form)truMa).ShowDialog();
					debugText("tắt Tool Trừ Ma");
					delay_100ms(10);
				}
				ChuongTrinhNVPetVaBang();
			}
			setupWDT2(45);
			if (((Control)comboBoxTuHanh).Text == "Đánh Boss")
			{
				TuHanhHand();
			}
			else
			{
				TuHanh2_2();
				delay_100ms(5);
				PressKey("ESC");
				if ((int)checkBoxTuHanh30P.CheckState == 1)
				{
					while (true)
					{
						int num4 = 0;
						while (!FindAndClick(hWnd, pathLuyenPet + "/NPC_NV_RoiKhoi.png", 0, -90, "Bảng NPC").HasValue)
						{
							num4++;
							if (num4 >= 3)
							{
								break;
							}
							PressKey("ESC");
							if (!FindPoint(hWnd, pathKhac + "/setupRun_1.png").HasValue)
							{
								PressKey("ESC");
								PressKey("Z");
								delay_100ms(5);
							}
							SendClickOnPosition(hWnd, 218, 106, (EMouseKey)0);
							delay_100ms(3);
							SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
							delay_100ms(3);
							SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
							delay_100ms(3);
							SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
							delay_100ms(3);
							SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
							delay_100ms(3);
							SendClickOnPosition(hWnd, 696, 440, (EMouseKey)0);
							delay_100ms(3);
							SendClickOnPosition(hWnd, 696, 440, (EMouseKey)0);
							delay_100ms(3);
							SendClickOnPosition(hWnd, 696, 440, (EMouseKey)0);
							delay_100ms(3);
							SendClickOnPosition(hWnd, 696, 440, (EMouseKey)0);
							delay_100ms(3);
							SendClickOnPosition(hWnd, 696, 440, (EMouseKey)0);
							delay_100ms(3);
							SendClickOnPosition(hWnd, 517, 199, (EMouseKey)0);
							delay_100ms(15);
						}
						if (FindAndClick(hWnd, pathKhac + "/Auto_BatDau.png", 1, 2, "Bắt Đầu Auto").HasValue)
						{
							break;
						}
						debugText("Chờ -> check lại sau 60s");
						checkTimer();
						delay_100ms(600);
					}
					PressKey("ESC");
					delay_100ms(5);
				}
			}
			delay_100ms(5);
			PressKey("ESC");
		}
		else if ((int)checkBoxThanTu.CheckState == 1)
		{
			setupWDT2(30);
			ThanTu2();
			delay_100ms(5);
			PressKey("ESC");
			setupWDT2(30);
			NhanThuong();
			delay_100ms(5);
			PressKey("ESC");
			while (true)
			{
				debugText("End_Line");
				int num5 = 0;
				while (!FindAndClick(hWnd, pathKhac + "/Auto_BangNhiemVu.png", 0, 230, "Auto").HasValue)
				{
					num5++;
					if (num5 >= 3)
					{
						break;
					}
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
					SendClickOnPosition(hWnd, 696, 341, (EMouseKey)0);
					delay_100ms(5);
					SendClickOnPosition(hWnd, 696, 341, (EMouseKey)0);
					delay_100ms(5);
					SendClickOnPosition(hWnd, 517, 429, (EMouseKey)0);
					delay_100ms(5);
				}
				if (FindPoint(hWnd, pathKhac + "/Auto_BatDau.png").HasValue)
				{
					break;
				}
				debugText("Chờ -> check lại sau 60s");
				delay_100ms(600);
				PressKey("ESC");
				checkTimer();
			}
			if ((int)checkBoxQPet.CheckState == 1 || (int)checkBoxQBang.CheckState == 1 || checkBoxTM.Checked)
			{
				setupWDT2(60);
				if (checkBoxTM.Checked)
				{
					while (CheckHandleWindows("[" + accCheck + "] BMx Tru Ma"))
					{
						hWnd = FindWindowHandle(null, "[" + accCheck + "] BMx Tru Ma");
						GetWindowThreadProcessId(hWnd, out processID);
						Process processById2 = Process.GetProcessById((int)processID);
						processById2.Kill();
						delay_100ms(30);
					}
					Program.AppMain.nameFlash = accCheck;
					Program.AppMain.nameUser = nameUser;
					Program.AppMain.autoRun = true;
					Program.AppMain.link = link;
					debugText("mở Tool Trừ Ma");
					TruMa truMa2 = new TruMa();
					((Form)truMa2).ShowDialog();
					debugText("tắt Tool Trừ Ma");
					delay_100ms(10);
				}
				ChuongTrinhNVPetVaBang();
			}
		}
		else if ((int)checkBoxTuHanh.CheckState == 1)
		{
			if ((int)checkBoxQPet.CheckState == 1 || (int)checkBoxQBang.CheckState == 1 || checkBoxTM.Checked)
			{
				setupWDT2(30);
				if (checkBoxTM.Checked)
				{
					while (CheckHandleWindows("[" + accCheck + "] BMx Tru Ma"))
					{
						hWnd = FindWindowHandle(null, "[" + accCheck + "] BMx Tru Ma");
						GetWindowThreadProcessId(hWnd, out processID);
						Process processById3 = Process.GetProcessById((int)processID);
						processById3.Kill();
						delay_100ms(30);
					}
					Program.AppMain.nameFlash = accCheck;
					Program.AppMain.nameUser = nameUser;
					Program.AppMain.autoRun = true;
					Program.AppMain.link = link;
					debugText("mở Tool Trừ Ma");
					TruMa truMa3 = new TruMa();
					((Form)truMa3).ShowDialog();
					debugText("tắt Tool Trừ Ma");
					delay_100ms(10);
				}
				ChuongTrinhNVPetVaBang();
			}
			setupWDT2(45);
			if (((Control)comboBoxTuHanh).Text == "Đánh Boss")
			{
				TuHanhHand();
			}
			else
			{
				TuHanh2_2();
			}
			delay_100ms(5);
			PressKey("ESC");
			setupWDT2(30);
			NhanThuong();
			delay_100ms(5);
			PressKey("ESC");
			if ((int)checkBoxTuHanh30P.CheckState == 1 && ((Control)comboBoxTuHanh).Text != "Đánh Boss")
			{
				while (true)
				{
					int num6 = 0;
					while (!FindAndClick(hWnd, pathLuyenPet + "/NPC_NV_RoiKhoi.png", 0, -90, "Bảng NPC").HasValue)
					{
						num6++;
						if (num6 >= 3)
						{
							break;
						}
						PressKey("ESC");
						if (!FindPoint(hWnd, pathKhac + "/setupRun_1.png").HasValue)
						{
							PressKey("ESC");
							PressKey("Z");
							delay_100ms(5);
						}
						SendClickOnPosition(hWnd, 218, 106, (EMouseKey)0);
						delay_100ms(3);
						SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
						delay_100ms(3);
						SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
						delay_100ms(3);
						SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
						delay_100ms(3);
						SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
						delay_100ms(3);
						SendClickOnPosition(hWnd, 696, 440, (EMouseKey)0);
						delay_100ms(3);
						SendClickOnPosition(hWnd, 696, 440, (EMouseKey)0);
						delay_100ms(3);
						SendClickOnPosition(hWnd, 696, 440, (EMouseKey)0);
						delay_100ms(3);
						SendClickOnPosition(hWnd, 696, 440, (EMouseKey)0);
						delay_100ms(3);
						SendClickOnPosition(hWnd, 696, 440, (EMouseKey)0);
						delay_100ms(3);
						SendClickOnPosition(hWnd, 517, 199, (EMouseKey)0);
						delay_100ms(15);
					}
					if (FindAndClick(hWnd, pathKhac + "/Auto_BatDau.png", 1, 2, "Bắt Đầu Auto").HasValue)
					{
						break;
					}
					debugText("Chờ -> check lại sau 60s");
					checkTimer();
					delay_100ms(600);
				}
				PressKey("ESC");
				delay_100ms(5);
			}
		}
		else
		{
			setupWDT2(30);
			NhanThuong();
			delay_100ms(5);
			PressKey("ESC");
			if ((int)checkBoxQPet.CheckState == 1 || (int)checkBoxQBang.CheckState == 1 || checkBoxTM.Checked)
			{
				setupWDT2(60);
				if (checkBoxTM.Checked)
				{
					while (CheckHandleWindows("[" + accCheck + "] BMx Tru Ma"))
					{
						hWnd = FindWindowHandle(null, "[" + accCheck + "] BMx Tru Ma");
						GetWindowThreadProcessId(hWnd, out processID);
						Process processById4 = Process.GetProcessById((int)processID);
						processById4.Kill();
						delay_100ms(30);
					}
					Program.AppMain.nameFlash = accCheck;
					Program.AppMain.nameUser = nameUser;
					Program.AppMain.autoRun = true;
					Program.AppMain.link = link;
					debugText("mở Tool Trừ Ma");
					TruMa truMa4 = new TruMa();
					((Form)truMa4).ShowDialog();
					debugText("tắt Tool Trừ Ma");
					delay_100ms(10);
				}
				ChuongTrinhNVPetVaBang();
			}
		}
		debugText("End_Line");
	}

	private void ChuongTrinhDaily5()
	{
		//IL_0044: Unknown result type (might be due to invalid IL or missing references)
		//IL_004a: Invalid comparison between Unknown and I4
		//IL_00c3: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c9: Invalid comparison between Unknown and I4
		//IL_0146: Unknown result type (might be due to invalid IL or missing references)
		//IL_014c: Invalid comparison between Unknown and I4
		//IL_018c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0192: Invalid comparison between Unknown and I4
		//IL_01e1: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e7: Invalid comparison between Unknown and I4
		//IL_023c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0242: Invalid comparison between Unknown and I4
		//IL_0263: Unknown result type (might be due to invalid IL or missing references)
		//IL_0269: Invalid comparison between Unknown and I4
		//IL_03d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_03da: Invalid comparison between Unknown and I4
		//IL_028a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0290: Invalid comparison between Unknown and I4
		//IL_0421: Unknown result type (might be due to invalid IL or missing references)
		//IL_0427: Invalid comparison between Unknown and I4
		//IL_02b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b7: Invalid comparison between Unknown and I4
		//IL_046f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0475: Invalid comparison between Unknown and I4
		//IL_02d8: Unknown result type (might be due to invalid IL or missing references)
		//IL_02de: Invalid comparison between Unknown and I4
		//IL_047d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0483: Invalid comparison between Unknown and I4
		//IL_02ff: Unknown result type (might be due to invalid IL or missing references)
		//IL_0305: Invalid comparison between Unknown and I4
		//IL_0326: Unknown result type (might be due to invalid IL or missing references)
		//IL_032c: Invalid comparison between Unknown and I4
		//IL_099b: Unknown result type (might be due to invalid IL or missing references)
		//IL_09a1: Invalid comparison between Unknown and I4
		//IL_034d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0353: Invalid comparison between Unknown and I4
		//IL_0c4d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c53: Invalid comparison between Unknown and I4
		//IL_0cad: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cb3: Invalid comparison between Unknown and I4
		//IL_0717: Unknown result type (might be due to invalid IL or missing references)
		//IL_071d: Invalid comparison between Unknown and I4
		if (checkBoxNongTruong.Checked)
		{
			Bay();
			Bay();
			Bay();
			TraNhiemVuNongTruong();
		}
		debugText("End_Line");
		if ((int)checkBoxDaPet.CheckState == 1 && numericUpDownDaPet.Value > 0m)
		{
			setupWDT2(10);
			DaPet();
			delay_100ms(5);
			NumericUpDown obj = numericUpDownDaPet;
			decimal value = obj.Value;
			obj.Value = value - 1m;
			PressKey("ESC");
			countTimer_pet = 0;
		}
		debugText("End_Line");
		if ((int)checkBoxTuThap.CheckState == 1)
		{
			setupWDT2(10);
			if (numericUpDownTuThap.Value > 0m)
			{
				TuThap();
				delay_100ms(5);
				NumericUpDown obj2 = numericUpDownTuThap;
				decimal value = obj2.Value;
				obj2.Value = value - 1m;
				PressKey("ESC");
				countTimer_thap = 0;
			}
		}
		debugText("End_Line");
		if ((int)checkBoxTrong.CheckState == 1)
		{
			setupWDT2(10);
			Trong();
			delay_100ms(5);
			PressKey("ESC");
		}
		debugText("End_Line");
		if ((int)checkBoxVIP.CheckState == 1)
		{
			setupWDT2(10);
			HideIconECT();
			delay_100ms(5);
			PhucLoiVip();
			delay_100ms(5);
			PressKey("ESC");
		}
		debugText("End_Line");
		if ((int)checkBoxAll2.CheckState == 1)
		{
			setupWDT2(30);
			HideIconECT();
			delay_100ms(5);
			NhanNhiemVuPhuBan4();
			delay_100ms(5);
			PressKey("ESC");
		}
		else
		{
			pb.Clear();
			if ((int)checkBoxKBDM2.CheckState == 1)
			{
				pb.Add("/NhiemVuKBDM.png");
			}
			if ((int)checkBoxLTC2.CheckState == 1)
			{
				pb.Add("/NhiemVuLTC.png");
			}
			if ((int)checkBoxTVLH2.CheckState == 1)
			{
				pb.Add("/NhiemVuTVLH.png");
			}
			if ((int)checkBoxLD2.CheckState == 1)
			{
				pb.Add("/NhiemVuLD.png");
			}
			if ((int)checkBoxTGS2.CheckState == 1)
			{
				pb.Add("/NhiemVuTGS.png");
			}
			if ((int)checkBoxMHD2.CheckState == 1)
			{
				pb.Add("/NhiemVuMHD.png");
			}
			if ((int)checkBoxQHM2.CheckState == 1)
			{
				pb.Add("/NhiemVuQHM.png");
			}
			if ((int)checkBoxTH2.CheckState == 1)
			{
				pb.Add("/NhiemVuTH.png");
			}
			if (Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)pb) != 0)
			{
				setupWDT2(30);
				NhanNhiemVuPhuBan2RiengLe(pb);
				pb.Clear();
				delay_100ms(5);
				PressKey("ESC");
			}
		}
		checkTimer();
		debugText("End_Line");
		if ((int)checkBoxSkinHanhLangKGDK.CheckState == 1)
		{
			setupWDT2(30);
			HanhLang();
			delay_100ms(5);
			PressKey("ESC");
		}
		checkTimer();
		debugText("End_Line");
		if ((int)checkBoxTinhCung.CheckState == 1)
		{
			setupWDT2(30);
			TinhCung2();
			delay_100ms(5);
			PressKey("ESC");
		}
		checkTimer();
		debugText("End_Line");
		if ((int)checkBoxThanTu.CheckState == 1 && (int)checkBoxTuHanh.CheckState == 1)
		{
			setupWDT2(30);
			ThanTu3();
			delay_100ms(5);
			PressKey("ESC");
			setupWDT2(30);
			NhanThuong();
			delay_100ms(5);
			PressKey("ESC");
			while (true)
			{
				debugText("End_Line");
				while (!FindAndClick(hWnd, pathKhac + "/Auto_BangNhiemVu.png", 0, 230, "Auto").HasValue)
				{
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
					SendClickOnPosition(hWnd, 696, 341, (EMouseKey)0);
					delay_100ms(5);
					SendClickOnPosition(hWnd, 696, 341, (EMouseKey)0);
					delay_100ms(5);
					SendClickOnPosition(hWnd, 517, 429, (EMouseKey)0);
					delay_100ms(5);
					checkTimer();
					debugText("Chờ -> check lại sau 60s");
					delay_100ms(600);
					checkTimer();
				}
				delay_100ms(10);
				if (FindPoint(hWnd, pathKhac + "/Auto_BatDau.png").HasValue)
				{
					break;
				}
				checkTimer();
				debugText("Chờ -> check lại sau 60s");
				delay_100ms(600);
				PressKey("ESC");
				checkTimer();
			}
			setupWDT2(45);
			TuHanh3();
			delay_100ms(5);
			PressKey("ESC");
			if ((int)checkBoxTuHanh30P.CheckState == 1)
			{
				while (true)
				{
					if (!FindAndClick(hWnd, pathKhac + "/Auto_BangNhiemVu.png", 0, 230, "Auto").HasValue)
					{
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
						SendClickOnPosition(hWnd, 696, 341, (EMouseKey)0);
						delay_100ms(5);
						SendClickOnPosition(hWnd, 696, 341, (EMouseKey)0);
						delay_100ms(5);
						SendClickOnPosition(hWnd, 517, 429, (EMouseKey)0);
						delay_100ms(5);
						if (!FindAndClick(hWnd, pathKhac + "/Auto_BangNhiemVu.png", 0, 230, "Auto").HasValue)
						{
							checkTimer();
							debugText("Chờ -> check lại sau 60s");
							delay_100ms(600);
							checkTimer();
							continue;
						}
					}
					delay_100ms(5);
					if (FindAndClick(hWnd, pathKhac + "/Auto_BatDau.png", 1, 2, "Bắt Đầu Auto").HasValue)
					{
						break;
					}
					checkTimer();
					debugText("Chờ -> check lại sau 60s");
					delay_100ms(600);
					PressKey("ESC");
					checkTimer();
				}
				PressKey("ESC");
				delay_100ms(5);
			}
			delay_100ms(5);
			PressKey("ESC");
		}
		else if ((int)checkBoxThanTu.CheckState == 1)
		{
			setupWDT2(30);
			ThanTu3();
			delay_100ms(5);
			PressKey("ESC");
			setupWDT2(30);
			NhanThuong();
			delay_100ms(5);
			PressKey("ESC");
			while (true)
			{
				debugText("End_Line");
				while (!FindAndClick(hWnd, pathKhac + "/Auto_BangNhiemVu.png", 0, 230, "Auto").HasValue)
				{
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
					SendClickOnPosition(hWnd, 696, 341, (EMouseKey)0);
					delay_100ms(5);
					SendClickOnPosition(hWnd, 696, 341, (EMouseKey)0);
					delay_100ms(5);
					SendClickOnPosition(hWnd, 517, 429, (EMouseKey)0);
					delay_100ms(5);
					if (FindAndClick(hWnd, pathKhac + "/Auto_BangNhiemVu.png", 0, 230, "Auto").HasValue)
					{
						break;
					}
					checkTimer();
					debugText("Chờ -> check lại sau 60s");
					delay_100ms(600);
					checkTimer();
				}
				delay_100ms(10);
				if (!FindPoint(hWnd, pathKhac + "/Auto_BatDau.png").HasValue)
				{
					checkTimer();
					debugText("Chờ -> check lại sau 60s");
					delay_100ms(600);
					PressKey("ESC");
					checkTimer();
					continue;
				}
				break;
			}
		}
		else if ((int)checkBoxTuHanh.CheckState == 1)
		{
			setupWDT2(45);
			TuHanh3();
			delay_100ms(5);
			PressKey("ESC");
			setupWDT2(30);
			NhanThuong();
			delay_100ms(5);
			PressKey("ESC");
			if ((int)checkBoxTuHanh30P.CheckState == 1)
			{
				while (true)
				{
					if (!FindAndClick(hWnd, pathKhac + "/Auto_BangNhiemVu.png", 0, 230, "Auto").HasValue)
					{
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
						SendClickOnPosition(hWnd, 696, 341, (EMouseKey)0);
						delay_100ms(5);
						SendClickOnPosition(hWnd, 696, 341, (EMouseKey)0);
						delay_100ms(5);
						SendClickOnPosition(hWnd, 517, 429, (EMouseKey)0);
						delay_100ms(5);
						if (!FindAndClick(hWnd, pathKhac + "/Auto_BangNhiemVu.png", 0, 230, "Auto").HasValue)
						{
							checkTimer();
							debugText("Chờ -> check lại sau 60s");
							delay_100ms(600);
							checkTimer();
							continue;
						}
					}
					delay_100ms(10);
					if (FindPoint(hWnd, pathKhac + "/Auto_BatDau.png").HasValue)
					{
						break;
					}
					checkTimer();
					debugText("Chờ -> check lại sau 60s");
					delay_100ms(600);
					PressKey("ESC");
					checkTimer();
				}
				PressKey("ESC");
				delay_100ms(5);
			}
		}
		else
		{
			setupWDT2(30);
			NhanThuong();
			delay_100ms(5);
			PressKey("ESC");
		}
		debugText("End_Line");
	}

	private void ChuongTrinhNVPetVaBang()
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		//IL_0117: Unknown result type (might be due to invalid IL or missing references)
		//IL_011d: Invalid comparison between Unknown and I4
		//IL_0398: Unknown result type (might be due to invalid IL or missing references)
		//IL_039d: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_040f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0414: Unknown result type (might be due to invalid IL or missing references)
		//IL_041f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0424: Unknown result type (might be due to invalid IL or missing references)
		if ((int)checkBoxQPet.CheckState == 1)
		{
			PressKey("ESC");
			debugText("End_Line");
			while (!Bay())
			{
			}
			FindAndClick(hWnd, pathIconBatPet + "/AutoSkill.png", 5, 5, "Tắt Auto");
			FindAndClick(hWnd, pathIconBatPet + "/Skill.png", 3, 3, "Mở Thanh Skill");
			NhanQ(pathLuyenPet + "/Q_RLP.png");
			HideIconECT();
			delay_100ms(5);
			luuTraQ = 999;
			setupWDT2(100);
			startWDT(20);
			BoNVKhongLienQuan(pathLuyenPet + "/Q_Pet.png");
			BoNVKhongLienQuan(pathLuyenPet + "/Q_Pet.png");
			while (!ChayLuyenPet())
			{
				checkTimer();
			}
		}
		if ((int)checkBoxQBang.CheckState != 1)
		{
			return;
		}
		while (true)
		{
			if (!ChuyenKenh(2))
			{
				continue;
			}
			debugText("End_Line");
			PressKey("ESC");
			Xuong();
			Xuong();
			PhuToiMap("Bàng Bối Thành");
			AutoControl.SendClickOnPosition(hWnd, 500, 600, (EMouseKey)0, 1);
			delay_100ms(5);
			AutoControl.SendClickOnPosition(hWnd, 500, 600, (EMouseKey)0, 1);
			delay_100ms(5);
			PhuToiMap("Đông Huyền Thành", 185.0, 16.0);
			delay_100ms(5);
			if (!FindPoint(hWnd, pathKhac + "/BH_check.png").HasValue)
			{
				Tele4(185.0, 16.0);
			}
			int num = 0;
			while (true)
			{
				if (!WaitAvatar(hWnd))
				{
					continue;
				}
				delay_100ms(20);
				if (!FindPoint(hWnd, pathBangHoi + "/NPC.png").HasValue)
				{
					num++;
					if (num > 20)
					{
						break;
					}
					AutoControl.SendClickOnPosition(hWnd, 378, 270, (EMouseKey)0, 1);
					delay_100ms(2);
					AutoControl.SendClickOnPosition(hWnd, 378, 146, (EMouseKey)0, 1);
					delay_100ms(2);
					if (!FindPoint(hWnd, pathLuyenPet + "/NPC_NV_RoiKhoi.png").HasValue)
					{
						delay_100ms(50);
						while (!WaitAvatar(hWnd))
						{
						}
						continue;
					}
				}
				Point? val;
				while (true)
				{
					val = FindPoint(hWnd, pathLuyenPet + "/NPC_NV_RoiKhoi.png");
					if (val.HasValue)
					{
						break;
					}
					FindAndClick(hWnd, pathBangHoi + "/NPC.png", 2, 2, "NPC");
					delay_100ms(5);
				}
				for (int i = 0; i < 5; i++)
				{
					System.IntPtr intPtr = hWnd;
					Point value = val.Value;
					int x = ((Point)(ref value)).X;
					value = val.Value;
					AutoControl.SendClickUpOnPosition(intPtr, x, ((Point)(ref value)).Y + i * 25 - 117 - 30, (EMouseKey)0, 1);
					delay_100ms(3);
					if (FindPoint(hWnd, pathBangHoi + "/DKBH.png").HasValue)
					{
						System.IntPtr intPtr2 = hWnd;
						value = val.Value;
						int x2 = ((Point)(ref value)).X;
						value = val.Value;
						AutoControl.SendClickOnPosition(intPtr2, x2, ((Point)(ref value)).Y + i * 25 - 117 - 30, (EMouseKey)0, 1);
						delay_100ms(5);
						break;
					}
				}
				FindAndClick(hWnd, pathBangHoi + "/Nhan.png", 2, 2, "Nhận");
				delay_100ms(5);
				num = 0;
				while (!FindAndClick(hWnd, pathBangHoi + "/Xong.png", 2, 2, "Xong").HasValue)
				{
					num++;
					if (num > 50)
					{
						break;
					}
				}
				num = 0;
				if (!FindAndClick(hWnd, pathBangHoi + "/NPC.png", 2, 2, "NPC").HasValue)
				{
					AutoControl.SendClickOnPosition(hWnd, 378, 146, (EMouseKey)0, 1);
					delay_100ms(2);
				}
				delay_100ms(5);
				do
				{
					if (!FindAndClick(hWnd, pathBangHoi + "/NPC_NV_RoiKhoi.png", 0, -116, "Q2").HasValue)
					{
						PressKey("ESC");
						delay_100ms(3);
						if (!FindAndClick(hWnd, pathBangHoi + "/NPC.png", 3, 3, "NPC").HasValue)
						{
							AutoControl.SendClickOnPosition(hWnd, 378, 146, (EMouseKey)0, 1);
							delay_100ms(2);
						}
						delay_100ms(10);
						num++;
						continue;
					}
					FindAndClick(hWnd, pathBangHoi + "/Nhan.png", 2, 2, "Nhận");
					delay_100ms(5);
					FindAndClick(hWnd, pathBangHoi + "/Xong.png", 2, 2, "Xong");
					PressKey("ESC");
					debugText("End_Line");
					ViTri1 = (ViTri2 = null);
					while (!ViTri1.HasValue || !ViTri2.HasValue)
					{
						PressKey("ESC");
						PressKey("`");
						delay_100ms(20);
						ViTri1 = FindPoint(hWnd, pathBangHoi + "/Map1.png");
						ViTri2 = FindPoint(hWnd, pathBangHoi + "/Map2.png");
						PressKey("ESC");
					}
					HideIconECT();
					luuTraQ = 999;
					setupWDT2(100);
					startWDT(15);
					BoNVKhongLienQuan(pathBangHoi + "/Q_Bang.png");
					BoNVKhongLienQuan(pathBangHoi + "/Q_Bang.png");
					while (!ChayBangHoi())
					{
						checkTimer();
					}
					return;
				}
				while (num < 3);
				break;
			}
		}
	}

	private bool ChuyenKenh(int chonKenh)
	{
		//IL_00c4: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c9: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_011e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0123: Unknown result type (might be due to invalid IL or missing references)
		//IL_013a: Unknown result type (might be due to invalid IL or missing references)
		//IL_013f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0178: Unknown result type (might be due to invalid IL or missing references)
		//IL_017d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0194: Unknown result type (might be due to invalid IL or missing references)
		//IL_0199: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ee: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_022c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0231: Unknown result type (might be due to invalid IL or missing references)
		//IL_0248: Unknown result type (might be due to invalid IL or missing references)
		//IL_024d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0286: Unknown result type (might be due to invalid IL or missing references)
		//IL_028b: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_02fc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0301: Unknown result type (might be due to invalid IL or missing references)
		//IL_033a: Unknown result type (might be due to invalid IL or missing references)
		//IL_033f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0356: Unknown result type (might be due to invalid IL or missing references)
		//IL_035b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0391: Unknown result type (might be due to invalid IL or missing references)
		//IL_0396: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_03b2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0644: Unknown result type (might be due to invalid IL or missing references)
		PressKey("ESC");
		delay_100ms(3);
		PressKey("ESC");
		delay_100ms(3);
		FindAndClick(hWnd, pathKhac + "/Log_ChuyenKenh.png", 2, 2, "Chuyển Kênh");
		delay_100ms(50);
		Point? val = FindPoint(hWnd, pathKhac + "/Log_ChonKenh.png");
		if (val.HasValue)
		{
			Point value;
			switch (chonKenh)
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
			delay_100ms(10);
			if (!FindPoint(hWnd, pathKhac + "/Log_ChonKenh.png").HasValue)
			{
				int num10 = 0;
				debugText("Chờ Chuyển Kênh");
				while (!FindPoint(hWnd, pathKhac + "/Log_DangChuyenKenh.png").HasValue)
				{
					num10++;
					if (num10 >= 600)
					{
						break;
					}
					delay_100ms(5);
				}
				num10 = 0;
				debugText("Đang Chuyển Kênh");
				while (FindPoint(hWnd, pathKhac + "/Log_DangChuyenKenh.png").HasValue)
				{
					num10++;
					if (num10 >= 600)
					{
						break;
					}
					delay_100ms(5);
				}
				debugText("Đợi Tín Hiệu");
				delay_100ms(30);
				num10 = 0;
				while (!FindPoint(hWnd, pathKhac + "/Log_RatTot.png").HasValue && !FindPoint(hWnd, pathKhac + "/Log_BinhThuong.png").HasValue && !FindPoint(hWnd, pathKhac + "/Log_Tot.png").HasValue)
				{
					num10++;
					if (num10 >= 360)
					{
						return false;
					}
					debugText("check vào game - " + num10);
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
				setupRun();
			}
			else
			{
				debugText("Đang ở Kênh " + chonKenh);
			}
			return true;
		}
		return false;
	}

	private void TuHanh2(bool TeleMap)
	{
		//IL_02a1: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a6: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e1: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e6: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0385: Unknown result type (might be due to invalid IL or missing references)
		//IL_038a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0398: Unknown result type (might be due to invalid IL or missing references)
		//IL_039d: Unknown result type (might be due to invalid IL or missing references)
		if (TeleMap)
		{
			PhuToiMap("Quyến Cố Thành");
		}
		while (true)
		{
			if (!FindAndClick(hWnd, pathKhac + "/Auto_BangNhiemVu.png", 0, 230, "Auto").HasValue)
			{
				PressKey("ESC");
				if (TeleMap)
				{
					Xuong();
					Xuong();
					Xuong();
					Tele4(221.0, 27.0);
				}
				if (!FindPoint(hWnd, pathKhac + "/setupRun_1.png").HasValue)
				{
					PressKey("ESC");
					PressKey("Z");
					delay_100ms(5);
				}
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
				SendClickOnPosition(hWnd, 696, 341, (EMouseKey)0);
				delay_100ms(5);
				SendClickOnPosition(hWnd, 696, 341, (EMouseKey)0);
				delay_100ms(5);
				SendClickOnPosition(hWnd, 517, 429, (EMouseKey)0);
				delay_100ms(15);
			}
			else
			{
				if (FindPoint(hWnd, pathKhac + "/Auto_BatDau.png").HasValue)
				{
					break;
				}
				debugText("Chờ -> check lại sau 60s");
				delay_100ms(600);
				PressKey("ESC");
				checkTimer();
			}
		}
		Point? val = FindPoint(hWnd, pathKhac + "/Auto_BatDau.png");
		System.IntPtr intPtr = hWnd;
		Point value = val.Value;
		int num = ((Point)(ref value)).X + 70;
		value = val.Value;
		AutoControl.SendClickOnPosition(intPtr, num, ((Point)(ref value)).Y - 104 - 30, (EMouseKey)0, 1);
		delay_100ms(10);
		System.IntPtr intPtr2 = hWnd;
		value = val.Value;
		int num2 = ((Point)(ref value)).X + 70;
		value = val.Value;
		AutoControl.SendClickOnPosition(intPtr2, num2, ((Point)(ref value)).Y - 54 - 30, (EMouseKey)0, 1);
		delay_100ms(10);
		FindAndClick(hWnd, pathKhac + "/Auto_BatDau.png", 1, 2, "Bắt Đầu Auto");
		delay_100ms(5);
		FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 0, 0, "OK");
		debugText("Đang Auto Tu Hành");
		delay_100ms(5);
		System.IntPtr intPtr3 = hWnd;
		value = val.Value;
		int num3 = ((Point)(ref value)).X - 30;
		value = val.Value;
		AutoControl.SendClickOnPosition(intPtr3, num3, ((Point)(ref value)).Y + 2 - 30, (EMouseKey)0, 1);
		delay_100ms(5);
		int num4 = 0;
		while (true)
		{
			if (!FindPoint(hWnd, pathKhac + "/Auto_HuyBo.png").HasValue)
			{
				num4++;
				if (num4 > 5)
				{
					debugText("Lỗi Không Thấy Nút Hủy Bỏ");
					break;
				}
				delay_100ms(5);
				debugText(".");
				continue;
			}
			while (!FindAndClick(hWnd, pathKhac + "/Auto_HuyBo.png", -30, 0, "_").HasValue)
			{
				delay_100ms(50);
			}
			break;
		}
		debugText("Auto Tu Hành");
	}

	private void TuHanh2_2()
	{
		//IL_0339: Unknown result type (might be due to invalid IL or missing references)
		//IL_033e: Unknown result type (might be due to invalid IL or missing references)
		//IL_034c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0351: Unknown result type (might be due to invalid IL or missing references)
		Bay();
		Bay();
		Bay();
		PhuToiMap("Thiện Tĩnh Địa", 250.0, 50.0);
		while (true)
		{
			if (!FindAndClick(hWnd, pathLuyenPet + "/NPC_NV_RoiKhoi.png", 0, -90, "Bảng NPC").HasValue)
			{
				PressKey("ESC");
				if (!FindPoint(hWnd, pathKhac + "/setupRun_1.png").HasValue)
				{
					PressKey("ESC");
					PressKey("Z");
					delay_100ms(5);
				}
				SendClickOnPosition(hWnd, 218, 106, (EMouseKey)0);
				delay_100ms(3);
				SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
				delay_100ms(3);
				SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
				delay_100ms(3);
				SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
				delay_100ms(3);
				SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
				delay_100ms(3);
				SendClickOnPosition(hWnd, 696, 440, (EMouseKey)0);
				delay_100ms(3);
				SendClickOnPosition(hWnd, 696, 440, (EMouseKey)0);
				delay_100ms(3);
				SendClickOnPosition(hWnd, 696, 440, (EMouseKey)0);
				delay_100ms(3);
				SendClickOnPosition(hWnd, 696, 440, (EMouseKey)0);
				delay_100ms(3);
				SendClickOnPosition(hWnd, 696, 440, (EMouseKey)0);
				delay_100ms(3);
				SendClickOnPosition(hWnd, 517, 199, (EMouseKey)0);
				delay_100ms(15);
			}
			else
			{
				if (FindPoint(hWnd, pathKhac + "/Auto_BatDau.png").HasValue)
				{
					break;
				}
				debugText("Chờ -> check lại sau 60s");
				delay_100ms(600);
				PressKey("ESC");
				checkTimer();
			}
		}
		Point? val = FindPoint(hWnd, pathKhac + "/Auto_BatDau.png");
		FindAndClick(hWnd, pathKhac + "/Auto_BatDau.png", 1, 2, "Bắt Đầu Auto");
		delay_100ms(5);
		FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 0, 0, "OK");
		debugText("Đang Auto Tu Hành");
		delay_100ms(5);
		System.IntPtr intPtr = hWnd;
		Point value = val.Value;
		int num = ((Point)(ref value)).X - 30;
		value = val.Value;
		AutoControl.SendClickOnPosition(intPtr, num, ((Point)(ref value)).Y + 2 - 30, (EMouseKey)0, 1);
		delay_100ms(5);
		int num2 = 0;
		while (true)
		{
			if (!FindPoint(hWnd, pathKhac + "/Auto_HuyBo.png").HasValue)
			{
				num2++;
				if (num2 > 5)
				{
					debugText("Lỗi Không Thấy Nút Hủy Bỏ");
					break;
				}
				delay_100ms(5);
				debugText(".");
				continue;
			}
			while (!FindAndClick(hWnd, pathKhac + "/Auto_HuyBo.png", -30, 0, "_").HasValue)
			{
				delay_100ms(50);
			}
			break;
		}
		debugText("Auto Tu Hành");
	}

	private void ThanTu2()
	{
		//IL_0420: Unknown result type (might be due to invalid IL or missing references)
		//IL_0425: Unknown result type (might be due to invalid IL or missing references)
		//IL_0433: Unknown result type (might be due to invalid IL or missing references)
		//IL_0438: Unknown result type (might be due to invalid IL or missing references)
		int num = 0;
		while (true)
		{
			PhuToiMap("Đông Huyền Thành", 233.0, 77.0);
			SendClickOnPosition(hWnd, 603, 413, (EMouseKey)0);
			delay_100ms(10);
			SendClickOnPosition(hWnd, 531, 506, (EMouseKey)0);
			delay_100ms(30);
			if (!FindAndClick(hWnd, pathLuyenPet + "/NPC_NV_RoiKhoi.png", 0, -116, "Nhâ\u0323n x2").HasValue)
			{
				break;
			}
			delay_100ms(5);
			if (!FindAndClick(hWnd, pathLuyenPet + "/NPC_NV_RoiKhoi.png", 0, -116, "Nhâ\u0323n x2").HasValue)
			{
				num++;
				if (num >= 3)
				{
					break;
				}
				PhuToiMap("Ba\u0300ng Bô\u0301i Tha\u0300nh");
				SendClickOnPosition(hWnd, 500, 500, (EMouseKey)0);
				delay_100ms(5);
				continue;
			}
			break;
		}
		int num2 = 0;
		num = 0;
		Bay();
		Bay();
		Bay();
		PhuToiMap("Quyến Cố Thành", 233.0, 39.0);
		Xuong();
		Xuong();
		Xuong();
		Point? val;
		while (true)
		{
			if (!FindAndClick(hWnd, pathLuyenPet + "/NPC_NV_RoiKhoi.png", 0, -90, "Bảng NPC").HasValue)
			{
				if (num2 >= 3)
				{
					PressKey("ESC");
					Xuong();
					Xuong();
					Xuong();
					Tele4(233.0, 39.0);
					num2 = 0;
				}
				if (!FindPoint(hWnd, pathKhac + "/setupRun_1.png").HasValue)
				{
					PressKey("ESC");
					PressKey("Z");
					delay_100ms(5);
				}
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
				SendClickOnPosition(hWnd, 696, 341, (EMouseKey)0);
				delay_100ms(5);
				SendClickOnPosition(hWnd, 696, 341, (EMouseKey)0);
				delay_100ms(5);
				SendClickOnPosition(hWnd, 517, 429, (EMouseKey)0);
				delay_100ms(15);
				num2++;
			}
			else
			{
				val = FindAndClick(hWnd, pathKhac + "/Auto_BatDau.png", 1, 2, "Bắt Đầu Auto");
				if (val.HasValue)
				{
					break;
				}
				debugText("Chờ -> check lại sau 60s");
				delay_100ms(600);
				PressKey("ESC");
				checkTimer();
			}
		}
		delay_100ms(5);
		FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 0, 0, "OK");
		debugText("Đang Auto Thần Tu");
		delay_100ms(5);
		System.IntPtr intPtr = hWnd;
		Point value = val.Value;
		int num3 = ((Point)(ref value)).X - 30;
		value = val.Value;
		AutoControl.SendClickOnPosition(intPtr, num3, ((Point)(ref value)).Y + 2 - 30, (EMouseKey)0, 1);
		delay_100ms(5);
		num = 0;
		while (true)
		{
			if (!FindPoint(hWnd, pathKhac + "/Auto_HuyBo.png").HasValue)
			{
				num++;
				if (num > 5)
				{
					debugText("Lỗi Không Thấy Nút Hủy Bỏ");
					break;
				}
				delay_100ms(5);
				debugText(".");
				continue;
			}
			while (!FindAndClick(hWnd, pathKhac + "/Auto_HuyBo.png", -30, 0, "_").HasValue)
			{
				delay_100ms(50);
			}
			break;
		}
		debugText("Auto Thần Tu");
	}

	private void TuHanh3()
	{
		//IL_029e: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a3: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_02dd: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f0: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0380: Unknown result type (might be due to invalid IL or missing references)
		//IL_0385: Unknown result type (might be due to invalid IL or missing references)
		//IL_0393: Unknown result type (might be due to invalid IL or missing references)
		//IL_0398: Unknown result type (might be due to invalid IL or missing references)
		PhuToiMap3("Quyến Cố Thành");
		int num = 0;
		while (true)
		{
			if (!FindAndClick(hWnd, pathKhac + "/Auto_BangNhiemVu.png", 0, 230, "Auto").HasValue)
			{
				Bay();
				Bay();
				Bay();
				delay_100ms(5);
				PressKey("ESC");
				if (!FindPoint(hWnd, pathKhac + "/setupRun_1.png").HasValue)
				{
					PressKey("ESC");
					PressKey("Z");
					delay_100ms(5);
				}
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
				SendClickOnPosition(hWnd, 696, 341, (EMouseKey)0);
				delay_100ms(5);
				SendClickOnPosition(hWnd, 696, 341, (EMouseKey)0);
				delay_100ms(5);
				SendClickOnPosition(hWnd, 517, 429, (EMouseKey)0);
				delay_100ms(5);
				num++;
				if (num <= 100)
				{
					continue;
				}
				break;
			}
			Xuong();
			Xuong();
			Xuong();
			delay_100ms(5);
			if (!FindPoint(hWnd, pathKhac + "/Auto_BatDau.png").HasValue)
			{
				debugText("Chờ -> check lại sau 60s");
				delay_100ms(600);
				PressKey("ESC");
				checkTimer();
				continue;
			}
			Point? val = FindPoint(hWnd, pathKhac + "/Auto_BatDau.png");
			System.IntPtr intPtr = hWnd;
			Point value = val.Value;
			int num2 = ((Point)(ref value)).X + 70;
			value = val.Value;
			AutoControl.SendClickOnPosition(intPtr, num2, ((Point)(ref value)).Y - 104 - 30, (EMouseKey)0, 1);
			delay_100ms(5);
			System.IntPtr intPtr2 = hWnd;
			value = val.Value;
			int num3 = ((Point)(ref value)).X + 70;
			value = val.Value;
			AutoControl.SendClickOnPosition(intPtr2, num3, ((Point)(ref value)).Y - 54 - 30, (EMouseKey)0, 1);
			delay_100ms(5);
			FindAndClick(hWnd, pathKhac + "/Auto_BatDau.png", 1, 2, "Bắt Đầu Auto");
			delay_100ms(5);
			FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 0, 0, "OK");
			debugText("Đang Auto Tu Hành");
			delay_100ms(5);
			System.IntPtr intPtr3 = hWnd;
			value = val.Value;
			int num4 = ((Point)(ref value)).X - 30;
			value = val.Value;
			AutoControl.SendClickOnPosition(intPtr3, num4, ((Point)(ref value)).Y + 2 - 30, (EMouseKey)0, 1);
			delay_100ms(5);
			num = 0;
			while (true)
			{
				if (!FindPoint(hWnd, pathKhac + "/Auto_HuyBo.png").HasValue)
				{
					num++;
					if (num > 5)
					{
						debugText("Lỗi Không Thấy Nút Hủy Bỏ");
						break;
					}
					delay_100ms(5);
					debugText(".");
					continue;
				}
				while (!FindAndClick(hWnd, pathKhac + "/Auto_HuyBo.png", -30, 0, "_").HasValue)
				{
					delay_100ms(50);
				}
				break;
			}
			break;
		}
		debugText("Auto Tu Hành");
	}

	private void ThanTu3()
	{
		//IL_04ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_04cf: Unknown result type (might be due to invalid IL or missing references)
		//IL_04dd: Unknown result type (might be due to invalid IL or missing references)
		//IL_04e2: Unknown result type (might be due to invalid IL or missing references)
		int num = 0;
		int num2 = 0;
		while (true)
		{
			PhuToiMap3("Đông Huyền Thành");
			Xuong();
			Xuong();
			Xuong();
			delay_100ms(10);
			setFPS(24);
			SendClickOnPosition(hWnd, 662, 227, (EMouseKey)0);
			delay_100ms(20);
			SendClickOnPosition(hWnd, 662, 227, (EMouseKey)0);
			delay_100ms(20);
			SendClickOnPosition(hWnd, 593, 267, (EMouseKey)0);
			delay_100ms(10);
			while (true)
			{
				if (FindAndClick(hWnd, pathLuyenPet + "/NPC_NV_RoiKhoi.png", 0, -116, "Nhâ\u0323n x2").HasValue)
				{
					delay_100ms(5);
					if (!FindAndClick(hWnd, pathLuyenPet + "/NPC_NV_RoiKhoi.png", 0, -116, "Nhâ\u0323n x2").HasValue)
					{
						num++;
						if (num < 3)
						{
							break;
						}
					}
				}
				else
				{
					num2++;
					if (num2 < 5)
					{
						if (FindAndClick(hWnd, pathKhac + "/TT_x2.png", 1, 1, "NPC x2 a").HasValue || FindAndClick(hWnd, pathKhac + "/TT_x2b.png", 1, 1, "NPC x2 b").HasValue)
						{
							continue;
						}
						debugText("Nhận x2 thần tu lỗi");
					}
				}
				num = 0;
				PhuToiMap3("Quyến Cố Thành");
				setFPS(50);
				while (true)
				{
					if (!FindAndClick(hWnd, pathKhac + "/Auto_BangNhiemVu.png", 0, 230, "Auto").HasValue)
					{
						Bay();
						Bay();
						Bay();
						delay_100ms(5);
						PressKey("ESC");
						if (!FindPoint(hWnd, pathKhac + "/setupRun_1.png").HasValue)
						{
							PressKey("ESC");
							PressKey("Z");
							delay_100ms(5);
						}
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
						SendClickOnPosition(hWnd, 696, 341, (EMouseKey)0);
						delay_100ms(5);
						SendClickOnPosition(hWnd, 696, 341, (EMouseKey)0);
						delay_100ms(5);
						SendClickOnPosition(hWnd, 517, 429, (EMouseKey)0);
						delay_100ms(5);
						num++;
						if (num <= 100)
						{
							continue;
						}
						break;
					}
					Xuong();
					Xuong();
					Xuong();
					delay_100ms(5);
					Point? val = FindAndClick(hWnd, pathKhac + "/Auto_BatDau.png", 1, 2, "Bắt Đầu Auto");
					if (!val.HasValue)
					{
						debugText("Chờ -> check lại sau 60s");
						delay_100ms(600);
						PressKey("ESC");
						checkTimer();
						continue;
					}
					delay_100ms(5);
					FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 0, 0, "OK");
					debugText("Đang Auto Thần Tu");
					delay_100ms(5);
					System.IntPtr intPtr = hWnd;
					Point value = val.Value;
					int num3 = ((Point)(ref value)).X - 30;
					value = val.Value;
					AutoControl.SendClickOnPosition(intPtr, num3, ((Point)(ref value)).Y + 2 - 30, (EMouseKey)0, 1);
					delay_100ms(5);
					num = 0;
					while (true)
					{
						if (!FindPoint(hWnd, pathKhac + "/Auto_HuyBo.png").HasValue)
						{
							num++;
							if (num > 5)
							{
								debugText("Lỗi Không Thấy Nút Hủy Bỏ");
								break;
							}
							delay_100ms(5);
							debugText(".");
							continue;
						}
						while (!FindAndClick(hWnd, pathKhac + "/Auto_HuyBo.png", -30, 0, "_").HasValue)
						{
							delay_100ms(50);
						}
						break;
					}
					break;
				}
				debugText("Auto Thần Tu");
				return;
			}
			PhuToiMap3("Ba\u0300ng Bô\u0301i Tha\u0300nh");
			SendClickOnPosition(hWnd, 500, 500, (EMouseKey)0);
			delay_100ms(5);
		}
	}

	private void NhanThuong()
	{
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0020: Invalid comparison between Unknown and I4
		//IL_0070: Unknown result type (might be due to invalid IL or missing references)
		//IL_0076: Invalid comparison between Unknown and I4
		//IL_0095: Unknown result type (might be due to invalid IL or missing references)
		//IL_009b: Invalid comparison between Unknown and I4
		//IL_00ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c0: Invalid comparison between Unknown and I4
		//IL_00df: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e5: Invalid comparison between Unknown and I4
		//IL_0106: Unknown result type (might be due to invalid IL or missing references)
		//IL_010c: Invalid comparison between Unknown and I4
		//IL_012d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0133: Invalid comparison between Unknown and I4
		//IL_0154: Unknown result type (might be due to invalid IL or missing references)
		//IL_015a: Invalid comparison between Unknown and I4
		//IL_017b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0181: Invalid comparison between Unknown and I4
		//IL_01f8: Unknown result type (might be due to invalid IL or missing references)
		//IL_01fe: Invalid comparison between Unknown and I4
		//IL_023c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0242: Invalid comparison between Unknown and I4
		//IL_0280: Unknown result type (might be due to invalid IL or missing references)
		//IL_0286: Invalid comparison between Unknown and I4
		//IL_02c4: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ca: Invalid comparison between Unknown and I4
		//IL_0308: Unknown result type (might be due to invalid IL or missing references)
		//IL_030e: Invalid comparison between Unknown and I4
		//IL_034c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0352: Invalid comparison between Unknown and I4
		//IL_0390: Unknown result type (might be due to invalid IL or missing references)
		//IL_0396: Invalid comparison between Unknown and I4
		checkTimer();
		debugText("End_Line");
		if ((int)checkBoxAll1.CheckState == 1)
		{
			HideIconECT();
			delay_100ms(5);
			NhanHoanThanhPhuBan();
			delay_100ms(5);
			PressKey("ESC");
		}
		debugText("End_Line");
		pb.Clear();
		if ((int)checkBoxMHD2.CheckState == 1)
		{
			pb.Add("/BatDauMHD.png");
		}
		if ((int)checkBoxKBDM2.CheckState == 1)
		{
			pb.Add("/BatDauKBDM.png");
		}
		if ((int)checkBoxLTC2.CheckState == 1)
		{
			pb.Add("/BatDauLTC.png");
		}
		if ((int)checkBoxLD2.CheckState == 1)
		{
			pb.Add("/BatDauLD.png");
		}
		if ((int)checkBoxTVLH2.CheckState == 1)
		{
			pb.Add("/BatDauTVLH.png");
		}
		if ((int)checkBoxQHM2.CheckState == 1)
		{
			pb.Add("/BatDauQHM.png");
		}
		if ((int)checkBoxTGS2.CheckState == 1)
		{
			pb.Add("/BatDauTGS.png");
		}
		if ((int)checkBoxTH2.CheckState == 1)
		{
			pb.Add("/BatDauTH.png");
		}
		if (Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)pb) != 0)
		{
			AutoPhuBanRiengLe(pb);
			pb.Clear();
			delay_100ms(5);
			PressKey("ESC");
		}
		checkTimer();
		debugText("End_Line");
		if ((int)checkBoxTranhBaPK.CheckState == 1)
		{
			NhanThuongTranhBa();
			delay_100ms(5);
			PressKey("ESC");
		}
		checkTimer();
		debugText("End_Line");
		if ((int)checkBoxSkinHanhLangKGDK.CheckState == 1)
		{
			KhongGianDieuKhac();
			delay_100ms(5);
			PressKey("ESC");
		}
		checkTimer();
		debugText("End_Line");
		if ((int)checkBoxEXP.CheckState == 1)
		{
			PhucHoiEXP();
			delay_100ms(5);
			PressKey("ESC");
		}
		checkTimer();
		debugText("End_Line");
		if ((int)checkBoxMB.CheckState == 1)
		{
			MatBao();
			delay_100ms(5);
			PressKey("ESC");
		}
		checkTimer();
		debugText("End_Line");
		if ((int)checkBoxSkinHanhLangKGDK.CheckState == 1)
		{
			TrangPhuc();
			delay_100ms(5);
			PressKey("ESC");
		}
		checkTimer();
		debugText("End_Line");
		if ((int)checkBoxNLTN.CheckState == 1)
		{
			NangLuongTuNhien();
			delay_100ms(5);
			PressKey("ESC");
		}
		checkTimer();
		debugText("End_Line");
		if ((int)checkBoxTheBai.CheckState == 1)
		{
			TheBai2();
			delay_100ms(5);
			PressKey("ESC");
		}
		checkTimer();
		debugText("End_Line");
		if (checkBoxNuoiTinhLinh.Checked)
		{
			NuoiTinhLinh();
			delay_100ms(5);
			PressKey("ESC");
		}
		checkTimer();
		debugText("End_Line");
	}

	private void Tele(double X, double Y)
	{
		//IL_01d6: Unknown result type (might be due to invalid IL or missing references)
		//IL_01db: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e8: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_0212: Unknown result type (might be due to invalid IL or missing references)
		//IL_0217: Unknown result type (might be due to invalid IL or missing references)
		//IL_0224: Unknown result type (might be due to invalid IL or missing references)
		//IL_0229: Unknown result type (might be due to invalid IL or missing references)
		//IL_024e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0253: Unknown result type (might be due to invalid IL or missing references)
		//IL_0260: Unknown result type (might be due to invalid IL or missing references)
		//IL_0265: Unknown result type (might be due to invalid IL or missing references)
		//IL_028a: Unknown result type (might be due to invalid IL or missing references)
		//IL_028f: Unknown result type (might be due to invalid IL or missing references)
		//IL_029c: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a1: Unknown result type (might be due to invalid IL or missing references)
		X *= 10.0;
		Y *= 10.0;
		PressKey("ESC");
		int num = 0;
		while (!Bay())
		{
			num++;
			if (num >= 8)
			{
				break;
			}
		}
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
		int num2 = 0;
		do
		{
			FindAndClick(hWnd, pathKhac + "/Skin_TrangBi.png", 0, 0, "Tìm tab Trang Bị");
			if (!FindPoint(hWnd, pathKhac + "/Skin_TuDo.png").HasValue)
			{
				FindAndClick(hWnd, pathKhac + "/Icon_NhanVat.png", 0, 0, "Mở Nhân Vật");
				num2++;
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
		while (num2 < 300);
		PressKey("ESC");
		AutoControl.SendClickOnPosition(hWnd, 620, 330, (EMouseKey)0, 1);
		int num3 = 0;
		while (!Xuong())
		{
			num3++;
			if (num3 >= 8)
			{
				break;
			}
		}
		delay_100ms(10);
	}

	private void Tele2(double X, double Y, bool BayCheck = true)
	{
		//IL_0134: Unknown result type (might be due to invalid IL or missing references)
		//IL_0139: Unknown result type (might be due to invalid IL or missing references)
		//IL_014a: Unknown result type (might be due to invalid IL or missing references)
		//IL_014f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0177: Unknown result type (might be due to invalid IL or missing references)
		//IL_017c: Unknown result type (might be due to invalid IL or missing references)
		//IL_018d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0192: Unknown result type (might be due to invalid IL or missing references)
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

	private void Tele3(double X, double Y)
	{
		//IL_013d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0142: Unknown result type (might be due to invalid IL or missing references)
		//IL_0153: Unknown result type (might be due to invalid IL or missing references)
		//IL_0158: Unknown result type (might be due to invalid IL or missing references)
		//IL_017f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0184: Unknown result type (might be due to invalid IL or missing references)
		//IL_0195: Unknown result type (might be due to invalid IL or missing references)
		//IL_019a: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c1: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_01dc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0203: Unknown result type (might be due to invalid IL or missing references)
		//IL_0208: Unknown result type (might be due to invalid IL or missing references)
		//IL_0219: Unknown result type (might be due to invalid IL or missing references)
		//IL_021e: Unknown result type (might be due to invalid IL or missing references)
		X *= 10.0;
		Y *= 10.0;
		PressKey("ESC");
		int num = 0;
		while (!Bay())
		{
			num++;
			if (num >= 8)
			{
				break;
			}
		}
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
		int num2 = ((Point)(ref value)).X + 200;
		value = val.Value;
		AutoControl.SendClickOnPosition(intPtr, num2, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
		delay_100ms(2);
		System.IntPtr intPtr2 = hWnd;
		value = val.Value;
		int num3 = ((Point)(ref value)).X + 200;
		value = val.Value;
		AutoControl.SendClickOnPosition(intPtr2, num3, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
		delay_100ms(5);
		System.IntPtr intPtr3 = hWnd;
		value = val.Value;
		int num4 = ((Point)(ref value)).X + 200;
		value = val.Value;
		AutoControl.SendClickOnPosition(intPtr3, num4, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
		delay_100ms(2);
		System.IntPtr intPtr4 = hWnd;
		value = val.Value;
		int num5 = ((Point)(ref value)).X + 200;
		value = val.Value;
		AutoControl.SendClickOnPosition(intPtr4, num5, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
		delay_100ms(5);
		PressKey("ESC");
		int num6 = 0;
		while (!Xuong())
		{
			num6++;
			if (num6 >= 8)
			{
				break;
			}
		}
		delay_100ms(10);
	}

	private void Tele4(double X, double Y)
	{
		//IL_00f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fa: Unknown result type (might be due to invalid IL or missing references)
		//IL_010b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0110: Unknown result type (might be due to invalid IL or missing references)
		//IL_0138: Unknown result type (might be due to invalid IL or missing references)
		//IL_013d: Unknown result type (might be due to invalid IL or missing references)
		//IL_014e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0153: Unknown result type (might be due to invalid IL or missing references)
		X *= 10.0;
		Y *= 10.0;
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
		int num2 = ((Point)(ref value)).X + 200;
		value = val.Value;
		AutoControl.SendClickOnPosition(intPtr, num2, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
		delay_100ms(10);
		System.IntPtr intPtr2 = hWnd;
		value = val.Value;
		int num3 = ((Point)(ref value)).X + 200;
		value = val.Value;
		AutoControl.SendClickOnPosition(intPtr2, num3, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
		delay_100ms(10);
		PressKey("ESC");
		delay_100ms(3);
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
		//IL_0045: Unknown result type (might be due to invalid IL or missing references)
		//IL_004a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0055: Unknown result type (might be due to invalid IL or missing references)
		//IL_005a: Unknown result type (might be due to invalid IL or missing references)
		//IL_006a: Unknown result type (might be due to invalid IL or missing references)
		//IL_006f: Unknown result type (might be due to invalid IL or missing references)
		//IL_007a: Unknown result type (might be due to invalid IL or missing references)
		//IL_007f: Unknown result type (might be due to invalid IL or missing references)
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
		//IL_0051: Unknown result type (might be due to invalid IL or missing references)
		//IL_0056: Unknown result type (might be due to invalid IL or missing references)
		//IL_0061: Unknown result type (might be due to invalid IL or missing references)
		//IL_0066: Unknown result type (might be due to invalid IL or missing references)
		//IL_0077: Unknown result type (might be due to invalid IL or missing references)
		//IL_007c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0087: Unknown result type (might be due to invalid IL or missing references)
		//IL_008c: Unknown result type (might be due to invalid IL or missing references)
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

	private void setupRun2()
	{
		//IL_008b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0090: Unknown result type (might be due to invalid IL or missing references)
		//IL_009b: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a0: Unknown result type (might be due to invalid IL or missing references)
		//IL_010c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0111: Unknown result type (might be due to invalid IL or missing references)
		//IL_0128: Unknown result type (might be due to invalid IL or missing references)
		//IL_012d: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c5: Unknown result type (might be due to invalid IL or missing references)
		//IL_038e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0393: Unknown result type (might be due to invalid IL or missing references)
		//IL_039e: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0435: Unknown result type (might be due to invalid IL or missing references)
		//IL_043a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0445: Unknown result type (might be due to invalid IL or missing references)
		//IL_044a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0547: Unknown result type (might be due to invalid IL or missing references)
		//IL_054c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0557: Unknown result type (might be due to invalid IL or missing references)
		//IL_055c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0616: Unknown result type (might be due to invalid IL or missing references)
		//IL_061b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0626: Unknown result type (might be due to invalid IL or missing references)
		//IL_062b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0705: Unknown result type (might be due to invalid IL or missing references)
		//IL_070a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0718: Unknown result type (might be due to invalid IL or missing references)
		//IL_071d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0744: Unknown result type (might be due to invalid IL or missing references)
		//IL_0749: Unknown result type (might be due to invalid IL or missing references)
		//IL_0757: Unknown result type (might be due to invalid IL or missing references)
		//IL_075c: Unknown result type (might be due to invalid IL or missing references)
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
		delay_100ms(2);
		FindAndClick(hWnd, pathKhac + "/setupRun_QN.png", 1, 1, "Q nhanh");
		PressKey("ESC");
		if (FindItem(hWnd, pathAutoPhuBan + "/IconHoanThanhPhuBan.png", "HTPB"))
		{
			delay_100ms(5);
			val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
			if (val.HasValue)
			{
				System.IntPtr intPtr4 = hWnd;
				value = val.Value;
				int x3 = ((Point)(ref value)).X;
				value = val.Value;
				AutoControl.SendDragAndDropOnPosition(intPtr4, x3, ((Point)(ref value)).Y - 30, 254, 182, setupStepX, setupStepY, num);
			}
			Level = 120;
		}
		else
		{
			Level = 110;
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
		delay_100ms(5);
		SendClickOnPosition(hWnd, 528, 105, (EMouseKey)0);
		delay_100ms(5);
		SendClickOnPosition(hWnd, 528, 105, (EMouseKey)0);
		delay_100ms(5);
		SendClickOnPosition(hWnd, 287, 209, (EMouseKey)0);
		delay_100ms(5);
		SendClickOnPosition(hWnd, 284, 438, (EMouseKey)0);
		delay_100ms(5);
		PressKey("ESC");
		PressKey("`");
		delay_100ms(2);
		val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
		if (val.HasValue)
		{
			System.IntPtr intPtr6 = hWnd;
			value = val.Value;
			int x5 = ((Point)(ref value)).X;
			value = val.Value;
			AutoControl.SendDragAndDropOnPosition(intPtr6, x5, ((Point)(ref value)).Y - 30, 84, 26, setupStepX, setupStepY, num);
		}
		PressKey("ESC");
		delay_100ms(2);
		FindAndClick(hWnd, pathKhac + "/Icon_NhanVat.png", 0, 0, "Mở Nhân Vật");
		FindAndClick(hWnd, pathKhac + "/Skin_TrangBi.png", 0, 0, "Tìm tab Trang Bị");
		delay_100ms(2);
		val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
		if (val.HasValue)
		{
			System.IntPtr intPtr7 = hWnd;
			value = val.Value;
			int x6 = ((Point)(ref value)).X;
			value = val.Value;
			AutoControl.SendDragAndDropOnPosition(intPtr7, x6, ((Point)(ref value)).Y - 30, 84, 26, setupStepX, setupStepY, num);
		}
		PressKey("B");
		delay_100ms(5);
		FindAndClick(hWnd, pathTacVu + "/SuaDo.png", 100, 30, "Kim Phiê\u0301u");
		FindAndClick(hWnd, pathTacVu + "/SuaDo.png", -25, 30, "Ngân Phiê\u0301u");
		FindAndClick(hWnd, pathTacVu + "/SuaDo.png", 0, 0, "Tìm Sửa Đồ");
		val = FindPoint(hWnd, pathKhac + "/Skin_TuDo.png");
		if (val.HasValue)
		{
			System.IntPtr intPtr8 = hWnd;
			value = val.Value;
			int num3 = ((Point)(ref value)).X - 20;
			value = val.Value;
			AutoControl.SendClickUpOnPosition(intPtr8, num3, ((Point)(ref value)).Y - 10 - 30, (EMouseKey)0, 1);
			delay_100ms(5);
			System.IntPtr intPtr9 = hWnd;
			value = val.Value;
			int num4 = ((Point)(ref value)).X - 20;
			value = val.Value;
			AutoControl.SendClickOnPosition(intPtr9, num4, ((Point)(ref value)).Y - 10 - 30, (EMouseKey)0, 1);
		}
		PressKey("ESC");
		debugText("Hoàn Tất Setup");
	}

	private void setupRun()
	{
		//IL_008a: Unknown result type (might be due to invalid IL or missing references)
		//IL_008f: Unknown result type (might be due to invalid IL or missing references)
		//IL_009a: Unknown result type (might be due to invalid IL or missing references)
		//IL_009f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0107: Unknown result type (might be due to invalid IL or missing references)
		//IL_010c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0123: Unknown result type (might be due to invalid IL or missing references)
		//IL_0128: Unknown result type (might be due to invalid IL or missing references)
		//IL_02aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_02af: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_02bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_037d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0382: Unknown result type (might be due to invalid IL or missing references)
		//IL_038d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0392: Unknown result type (might be due to invalid IL or missing references)
		//IL_041e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0423: Unknown result type (might be due to invalid IL or missing references)
		//IL_042e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0433: Unknown result type (might be due to invalid IL or missing references)
		//IL_0565: Unknown result type (might be due to invalid IL or missing references)
		//IL_056a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0575: Unknown result type (might be due to invalid IL or missing references)
		//IL_057a: Unknown result type (might be due to invalid IL or missing references)
		//IL_05f8: Unknown result type (might be due to invalid IL or missing references)
		//IL_05fd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0608: Unknown result type (might be due to invalid IL or missing references)
		//IL_060d: Unknown result type (might be due to invalid IL or missing references)
		//IL_074c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0751: Unknown result type (might be due to invalid IL or missing references)
		//IL_075c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0761: Unknown result type (might be due to invalid IL or missing references)
		//IL_081b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0820: Unknown result type (might be due to invalid IL or missing references)
		//IL_082b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0830: Unknown result type (might be due to invalid IL or missing references)
		//IL_090a: Unknown result type (might be due to invalid IL or missing references)
		//IL_090f: Unknown result type (might be due to invalid IL or missing references)
		//IL_091d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0922: Unknown result type (might be due to invalid IL or missing references)
		//IL_0949: Unknown result type (might be due to invalid IL or missing references)
		//IL_094e: Unknown result type (might be due to invalid IL or missing references)
		//IL_095c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0961: Unknown result type (might be due to invalid IL or missing references)
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
		delay_100ms(2);
		FindAndClick(hWnd, pathKhac + "/setupRun_QN.png", 1, 1, "Q nhanh");
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
		FindItem(hWnd, pathKhac + "/KNVU_icon.png", "Kiếp Nạn Vô Ưu");
		delay_100ms(5);
		val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
		if (val.HasValue)
		{
			System.IntPtr intPtr5 = hWnd;
			value = val.Value;
			int x4 = ((Point)(ref value)).X;
			value = val.Value;
			AutoControl.SendDragAndDropOnPosition(intPtr5, x4, ((Point)(ref value)).Y - 30, 129, 56, setupStepX, setupStepY, num);
		}
		int num3 = 0;
		while (true)
		{
			PressKey("ESC");
			delay_100ms(10);
			SendClickOnPosition(hWnd, 572, 678, (EMouseKey)0);
			delay_100ms(5);
			if (!FindAndClick(hWnd, pathAutoPhuBan + "/IconHoanThanhPhuBan.png", 1, 1, "Hoàn Thành Phụ Bản").HasValue)
			{
				debugText("Không Tìm Thấy Icon");
				num3++;
				if (num3 >= 5)
				{
					break;
				}
				PressKey("ESC");
				delay_100ms(5);
				SendClickOnPosition(hWnd, 1057, 678, (EMouseKey)0);
				delay_100ms(5);
				continue;
			}
			delay_100ms(5);
			val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
			if (val.HasValue)
			{
				System.IntPtr intPtr6 = hWnd;
				value = val.Value;
				int x5 = ((Point)(ref value)).X;
				value = val.Value;
				AutoControl.SendDragAndDropOnPosition(intPtr6, x5, ((Point)(ref value)).Y - 30, 254, 182, setupStepX, setupStepY, num);
			}
			break;
		}
		PressKey("ESC");
		PressKey("Z");
		delay_100ms(5);
		val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
		if (val.HasValue)
		{
			System.IntPtr intPtr7 = hWnd;
			value = val.Value;
			int x6 = ((Point)(ref value)).X;
			value = val.Value;
			AutoControl.SendDragAndDropOnPosition(intPtr7, x6, ((Point)(ref value)).Y - 30, 84, 26, setupStepX, setupStepY, num);
		}
		delay_100ms(5);
		SendClickOnPosition(hWnd, 528, 105, (EMouseKey)0);
		delay_100ms(5);
		SendClickOnPosition(hWnd, 528, 105, (EMouseKey)0);
		delay_100ms(5);
		SendClickOnPosition(hWnd, 154, 136, (EMouseKey)0);
		delay_100ms(5);
		SendClickOnPosition(hWnd, 154, 136, (EMouseKey)0);
		delay_100ms(5);
		SendClickOnPosition(hWnd, 287, 209, (EMouseKey)0);
		delay_100ms(5);
		SendClickOnPosition(hWnd, 284, 438, (EMouseKey)0);
		delay_100ms(5);
		PressKey("ESC");
		PressKey("`");
		delay_100ms(2);
		val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
		if (val.HasValue)
		{
			System.IntPtr intPtr8 = hWnd;
			value = val.Value;
			int x7 = ((Point)(ref value)).X;
			value = val.Value;
			AutoControl.SendDragAndDropOnPosition(intPtr8, x7, ((Point)(ref value)).Y - 30, 84, 26, setupStepX, setupStepY, num);
		}
		PressKey("ESC");
		delay_100ms(2);
		FindAndClick(hWnd, pathKhac + "/Icon_NhanVat.png", 0, 0, "Mở Nhân Vật");
		FindAndClick(hWnd, pathKhac + "/Skin_TrangBi.png", 0, 0, "Tìm tab Trang Bị");
		delay_100ms(2);
		val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
		if (val.HasValue)
		{
			System.IntPtr intPtr9 = hWnd;
			value = val.Value;
			int x8 = ((Point)(ref value)).X;
			value = val.Value;
			AutoControl.SendDragAndDropOnPosition(intPtr9, x8, ((Point)(ref value)).Y - 30, 84, 26, setupStepX, setupStepY, num);
		}
		PressKey("B");
		delay_100ms(5);
		FindAndClick(hWnd, pathTacVu + "/SuaDo.png", 100, 30, "Kim Phiê\u0301u");
		FindAndClick(hWnd, pathTacVu + "/SuaDo.png", -25, 30, "Ngân Phiê\u0301u");
		FindAndClick(hWnd, pathTacVu + "/SuaDo.png", 0, 0, "Tìm Sửa Đồ");
		val = FindPoint(hWnd, pathKhac + "/Skin_TuDo.png");
		if (val.HasValue)
		{
			System.IntPtr intPtr10 = hWnd;
			value = val.Value;
			int num4 = ((Point)(ref value)).X - 20;
			value = val.Value;
			AutoControl.SendClickUpOnPosition(intPtr10, num4, ((Point)(ref value)).Y - 10 - 30, (EMouseKey)0, 1);
			delay_100ms(5);
			System.IntPtr intPtr11 = hWnd;
			value = val.Value;
			int num5 = ((Point)(ref value)).X - 20;
			value = val.Value;
			AutoControl.SendClickOnPosition(intPtr11, num5, ((Point)(ref value)).Y - 10 - 30, (EMouseKey)0, 1);
		}
		PressKey("ESC");
		debugText("Hoàn Tất Setup");
	}

	private void TuHanhHand2()
	{
		//IL_00b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_00b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_00cd: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0102: Unknown result type (might be due to invalid IL or missing references)
		//IL_0107: Unknown result type (might be due to invalid IL or missing references)
		//IL_011b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0120: Unknown result type (might be due to invalid IL or missing references)
		//IL_0269: Unknown result type (might be due to invalid IL or missing references)
		//IL_026e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0282: Unknown result type (might be due to invalid IL or missing references)
		//IL_0287: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_01fa: Unknown result type (might be due to invalid IL or missing references)
		//IL_037c: Unknown result type (might be due to invalid IL or missing references)
		//IL_03b8: Unknown result type (might be due to invalid IL or missing references)
		//IL_085b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0860: Unknown result type (might be due to invalid IL or missing references)
		//IL_086b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0870: Unknown result type (might be due to invalid IL or missing references)
		Bitmap[] array = (Bitmap[])(object)new Bitmap[7];
		int num = 0;
		for (int i = 1; i < 13; i += 2)
		{
			array[num] = ImageScanOpenCV.GetImage(pathKhac + "/Avatar_Main" + i + ".png");
			num++;
		}
		Bay();
		Bay();
		Bay();
		PressKey("ESC");
		while (true)
		{
			delay_100ms(5);
			Point? val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
			Point value;
			if (val.HasValue)
			{
				System.IntPtr intPtr = hWnd;
				value = val.Value;
				int num2 = ((Point)(ref value)).X + 214 - 84;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr, num2, ((Point)(ref value)).Y + 106 - 56 - 30, (EMouseKey)0, 1);
				delay_100ms(5);
				for (int j = 0; j < 5; j++)
				{
					System.IntPtr intPtr2 = hWnd;
					value = val.Value;
					int num3 = ((Point)(ref value)).X + 696 - 84;
					value = val.Value;
					AutoControl.SendClickOnPosition(intPtr2, num3, ((Point)(ref value)).Y + 400 - 56 - 30, (EMouseKey)0, 1);
					delay_100ms(3);
				}
			}
			else
			{
				PressKey("Z");
			}
			while (FindPoint(hWnd, pathKhac + "/setupRun_1.png").HasValue)
			{
				Point? val2 = FindPoint(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png");
				if (val2.HasValue)
				{
					System.IntPtr intPtr3 = hWnd;
					value = val2.Value;
					int x = ((Point)(ref value)).X;
					value = val2.Value;
					AutoControl.SendClickOnPosition(intPtr3, x, ((Point)(ref value)).Y + 366 - 482 - 30, (EMouseKey)0, 1);
					delay_100ms(10);
					if (FindPoint(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png").HasValue)
					{
						continue;
					}
					Xuong();
					Xuong();
					Xuong();
					PressKey("ESC");
					delay_100ms(5);
					AutoControl.SendClickOnPosition(hWnd, 111, 25, (EMouseKey)0, 1);
					delay_100ms(10);
					AutoControl.SendClickOnPosition(hWnd, 111, 90, (EMouseKey)0, 1);
					debugText("Hồi Phục");
					while (NhiemVuTuHanh > 0)
					{
						while (true)
						{
							checkTimer();
							FindAndClick(hWnd, pathTruMa + "/Q_NV_Nhanh.png", 30, 46, "Mở 1");
							FindAndClick(hWnd, pathTruMa + "/Q_NV_Nhanh3.png", 30, 46, "Mở 2");
							Image val3 = CaptureHelper.CaptureWindow(hWnd);
							Rectangle val4 = default(Rectangle);
							((Rectangle)(ref val4)).X = 0;
							((Rectangle)(ref val4)).Y = 105;
							((Rectangle)(ref val4)).Width = val3.Width;
							((Rectangle)(ref val4)).Height = val3.Height - 105;
							Bitmap val5 = CaptureHelper.CropImage(val3, val4);
							for (int k = 0; k < 7; k++)
							{
								if (ImageScanOpenCV.FindOutPoint(val5, array[k], 0.9).HasValue)
								{
									switch (k)
									{
									case 0:
										accMain = "Tinh Anh Bàn Địa";
										while (!BanDia())
										{
											PhuToiMap("Bàng Bối Thành", 115.0, 116.0);
											AutoControl.SendClickOnPosition(hWnd, 500, 570, (EMouseKey)0, 1);
											delay_100ms(5);
										}
										break;
									case 1:
										accMain = "Tinh Anh Linh Vũ";
										while (!LinhVu())
										{
											PhuToiMap("Bàng Bối Thành", 115.0, 116.0);
											AutoControl.SendClickOnPosition(hWnd, 500, 570, (EMouseKey)0, 1);
											delay_100ms(5);
										}
										break;
									case 2:
										accMain = "Tinh Anh Huyền Lâm";
										while (!HuyenLam())
										{
											PhuToiMap("Bàng Bối Thành", 115.0, 116.0);
											AutoControl.SendClickOnPosition(hWnd, 500, 570, (EMouseKey)0, 1);
											delay_100ms(5);
										}
										break;
									case 3:
										accMain = "Tinh Anh Liêu Vân";
										while (!LieuVan())
										{
											PhuToiMap("Bàng Bối Thành", 115.0, 116.0);
											AutoControl.SendClickOnPosition(hWnd, 500, 570, (EMouseKey)0, 1);
											delay_100ms(5);
										}
										break;
									case 4:
										accMain = "Tinh Anh Thiên Khung";
										while (!ThienKhung())
										{
											PhuToiMap("Bàng Bối Thành", 115.0, 116.0);
											AutoControl.SendClickOnPosition(hWnd, 500, 570, (EMouseKey)0, 1);
											delay_100ms(5);
										}
										break;
									case 5:
										accMain = "Tinh Anh Lưu Hỏa";
										while (!LuuHoa())
										{
											PhuToiMap("Bàng Bối Thành", 115.0, 116.0);
											AutoControl.SendClickOnPosition(hWnd, 500, 570, (EMouseKey)0, 1);
											delay_100ms(5);
										}
										break;
									default:
										accMain = "null";
										break;
									}
									break;
								}
								accMain = "null";
							}
							if (accMain == "null")
							{
								BoNVKhongLienQuan(pathKhac + "/TH_PhucHoi.png");
								PressKey("ESC");
								continue;
							}
							delay_100ms(10);
							while (!WaitAvatar(hWnd))
							{
								if (FindPoint(hWnd, pathKhac + "/Auto_99.png").HasValue)
								{
									FindAndClick(hWnd, pathKhac + "/Auto_KetThucAuto.png", 2, 2, "hủy auto");
								}
								else
								{
									FindAndClick(hWnd, pathTruMa + "/Auto.png", 5, 5, "auto");
								}
								delay_100ms(3);
							}
							PhuToiMap("Thiện Tĩnh Địa", 226.0, 51.0);
							delay_100ms(10);
							while (!WaitAvatar(hWnd))
							{
							}
							if (!FindPoint(hWnd, pathKhac + "/TH_npc.png").HasValue)
							{
								Tele4(226.0, 51.0);
							}
							int num4 = 0;
							while (true)
							{
								Point? val6 = FindPoint(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png");
								if (val6.HasValue)
								{
									System.IntPtr intPtr4 = hWnd;
									value = val6.Value;
									int x2 = ((Point)(ref value)).X;
									value = val6.Value;
									AutoControl.SendClickOnPosition(intPtr4, x2, ((Point)(ref value)).Y + 366 - 482 - 30, (EMouseKey)0, 1);
									delay_100ms(3);
									if (FindAndClick(hWnd, pathTruMa + "/Xong.png", 1, 1, "Xong").HasValue)
									{
										break;
									}
									continue;
								}
								num4++;
								if (num4 > 30)
								{
									goto IL_09be;
								}
								FindAndClick(hWnd, pathTruMa + "/Q_NV_Nhanh.png", 30, 46, "Mở 1");
								FindAndClick(hWnd, pathTruMa + "/Q_NV_Nhanh3.png", 30, 46, "Mở 2");
								delay_100ms(3);
							}
							break;
							IL_09be:
							while (!WaitAvatar(hWnd))
							{
								if (FindPoint(hWnd, pathKhac + "/Auto_99.png").HasValue)
								{
									FindAndClick(hWnd, pathKhac + "/Auto_KetThucAuto.png", 2, 2, "hủy auto");
								}
								else
								{
									FindAndClick(hWnd, pathTruMa + "/Auto.png", 5, 5, "auto");
								}
								delay_100ms(3);
							}
						}
						NhiemVuTuHanh--;
						debugText("ClearDebugText");
						debugText("Q Tu Hành: " + (20 - NhiemVuTuHanh));
					}
					return;
				}
				System.IntPtr intPtr5 = hWnd;
				value = val.Value;
				int num5 = ((Point)(ref value)).X + 198 - 84;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr5, num5, ((Point)(ref value)).Y + 310 - 56 - 30, (EMouseKey)0, 1);
				delay_100ms(3);
			}
		}
	}

	private void TuHanhHand()
	{
		NhiemVuTuHanh = 20;
		HideIconECT();
		PressKey("ESC");
		Bay();
		Bay();
		Bay();
		PhuToiMap("Thiện Tĩnh Địa", 250.0, 50.0);
		while (true)
		{
			if (!FindAndClick(hWnd, pathLuyenPet + "/NPC_NV_RoiKhoi.png", 0, -120, "Bảng NPC").HasValue)
			{
				PressKey("ESC");
				if (!FindPoint(hWnd, pathKhac + "/setupRun_1.png").HasValue)
				{
					PressKey("ESC");
					PressKey("Z");
					delay_100ms(5);
				}
				SendClickOnPosition(hWnd, 218, 106, (EMouseKey)0);
				delay_100ms(3);
				SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
				delay_100ms(3);
				SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
				delay_100ms(3);
				SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
				delay_100ms(3);
				SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
				delay_100ms(3);
				SendClickOnPosition(hWnd, 696, 440, (EMouseKey)0);
				delay_100ms(3);
				SendClickOnPosition(hWnd, 696, 440, (EMouseKey)0);
				delay_100ms(3);
				SendClickOnPosition(hWnd, 696, 440, (EMouseKey)0);
				delay_100ms(3);
				SendClickOnPosition(hWnd, 696, 440, (EMouseKey)0);
				delay_100ms(3);
				SendClickOnPosition(hWnd, 696, 440, (EMouseKey)0);
				delay_100ms(3);
				SendClickOnPosition(hWnd, 517, 199, (EMouseKey)0);
				delay_100ms(15);
			}
			else
			{
				if (FindAndClick(hWnd, pathLuyenPet + "/NPC_NV_RoiKhoi.png", 0, -120, "Bảng NPC").HasValue)
				{
					break;
				}
				PressKey("ESC");
				checkTimer();
			}
		}
		if (FindAndClick(hWnd, pathTruMa + "/Xong.png", 1, 1, "Xong").HasValue)
		{
			NhiemVuTuHanh--;
			debugText("ClearDebugText");
			debugText("Q Tu Hành: " + (20 - NhiemVuTuHanh) + " / 20");
		}
		else if (FindAndClick(hWnd, pathKhac + "/TH_TL.png", 1, 1, "Hết Q").HasValue)
		{
			debugText("ClearDebugText");
			debugText("Không Thấy NV Tu Hành #1");
			return;
		}
		Xuong();
		Xuong();
		Xuong();
		PressKey("ESC");
		delay_100ms(5);
		AutoControl.SendClickOnPosition(hWnd, 111, 25, (EMouseKey)0, 1);
		delay_100ms(10);
		AutoControl.SendClickOnPosition(hWnd, 111, 90, (EMouseKey)0, 1);
		debugText("Hồi Phục");
		int num = 0;
		while (NhiemVuTuHanh > 0)
		{
			while (true)
			{
				checkTimer();
				PressKey("Q");
				for (int i = 1; i < 7; i++)
				{
					if (FindPoint(hWnd, pathKhac + "/TH_Toc" + i + ".png").HasValue)
					{
						Xuong();
						Xuong();
						Xuong();
						switch (i)
						{
						case 2:
							accMain = "Tinh Anh Bàn Địa";
							while (!BanDia())
							{
								PhuToiMap("Bàng Bối Thành", 115.0, 116.0);
								AutoControl.SendClickOnPosition(hWnd, 500, 570, (EMouseKey)0, 1);
								delay_100ms(5);
							}
							break;
						case 4:
							accMain = "Tinh Anh Linh Vũ";
							while (!LinhVu())
							{
								PhuToiMap("Bàng Bối Thành", 115.0, 116.0);
								AutoControl.SendClickOnPosition(hWnd, 500, 570, (EMouseKey)0, 1);
								delay_100ms(5);
							}
							break;
						case 3:
							accMain = "Tinh Anh Huyền Lâm";
							while (!HuyenLam())
							{
								PhuToiMap("Bàng Bối Thành", 115.0, 116.0);
								AutoControl.SendClickOnPosition(hWnd, 500, 570, (EMouseKey)0, 1);
								delay_100ms(5);
							}
							break;
						case 1:
							accMain = "Tinh Anh Liêu Vân";
							while (!LieuVan())
							{
								PhuToiMap("Bàng Bối Thành", 115.0, 116.0);
								AutoControl.SendClickOnPosition(hWnd, 500, 570, (EMouseKey)0, 1);
								delay_100ms(5);
							}
							break;
						case 5:
							accMain = "Tinh Anh Thiên Khung";
							while (!ThienKhung())
							{
								PhuToiMap("Bàng Bối Thành", 115.0, 116.0);
								AutoControl.SendClickOnPosition(hWnd, 500, 570, (EMouseKey)0, 1);
								delay_100ms(5);
							}
							break;
						case 6:
							accMain = "Tinh Anh Lưu Hỏa";
							while (!LuuHoa())
							{
								PhuToiMap("Bàng Bối Thành", 115.0, 116.0);
								AutoControl.SendClickOnPosition(hWnd, 500, 570, (EMouseKey)0, 1);
								delay_100ms(5);
							}
							break;
						default:
							accMain = "null";
							break;
						}
						break;
					}
					accMain = "null";
				}
				if (!(accMain == "null"))
				{
					break;
				}
				num++;
				if (num >= 10)
				{
					debugText("ClearDebugText");
					debugText("Không Thấy NV Tu Hành #2");
					return;
				}
				debugText("ClearDebugText");
				debugText("Check Lần " + num + " / 9");
				BoNVKhongLienQuan(pathKhac + "/TH_Q.png");
				PressKey("ESC");
			}
			delay_100ms(10);
			while (!FindPoint(hWnd, pathKhac + "/checkTrTr.png").HasValue)
			{
				if (FindPoint(hWnd, pathKhac + "/Auto_99.png").HasValue)
				{
					FindAndClick(hWnd, pathKhac + "/Auto_KetThucAuto.png", 2, 2, "hủy auto");
				}
				else
				{
					FindAndClick(hWnd, pathTruMa + "/Auto.png", 5, 5, "auto");
				}
				delay_100ms(3);
			}
			PressKey("ESC");
			Bay();
			Bay();
			Bay();
			PhuToiMap("Thiện Tĩnh Địa", 250.0, 50.0);
			int num2 = 0;
			while (true)
			{
				if (!FindAndClick(hWnd, pathLuyenPet + "/NPC_NV_RoiKhoi.png", 0, -120, "Bảng NPC").HasValue)
				{
					PressKey("ESC");
					if (!FindPoint(hWnd, pathKhac + "/setupRun_1.png").HasValue)
					{
						PressKey("ESC");
						PressKey("Z");
						delay_100ms(5);
					}
					num2++;
					if (num2 < 6 && !FindPoint(hWnd, pathKhac + "/EXP_TuHanh.png").HasValue)
					{
						SendClickOnPosition(hWnd, 218, 106, (EMouseKey)0);
						delay_100ms(3);
						SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
						delay_100ms(3);
						SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
						delay_100ms(3);
						SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
						delay_100ms(3);
						SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
						delay_100ms(3);
						SendClickOnPosition(hWnd, 696, 440, (EMouseKey)0);
						delay_100ms(3);
						SendClickOnPosition(hWnd, 696, 440, (EMouseKey)0);
						delay_100ms(3);
						SendClickOnPosition(hWnd, 696, 440, (EMouseKey)0);
						delay_100ms(3);
						SendClickOnPosition(hWnd, 696, 440, (EMouseKey)0);
						delay_100ms(3);
						SendClickOnPosition(hWnd, 696, 440, (EMouseKey)0);
						delay_100ms(3);
					}
					SendClickOnPosition(hWnd, 517, 199, (EMouseKey)0);
					delay_100ms(15);
				}
				else
				{
					if (FindAndClick(hWnd, pathLuyenPet + "/NPC_NV_RoiKhoi.png", 0, -120, "Bảng NPC").HasValue)
					{
						break;
					}
					PressKey("ESC");
					checkTimer();
				}
			}
			if (FindAndClick(hWnd, pathTruMa + "/Xong.png", 1, 1, "Xong").HasValue)
			{
				NhiemVuTuHanh--;
				debugText("ClearDebugText");
				debugText("Q Tu Hành: " + (20 - NhiemVuTuHanh) + " / 20");
			}
			else if (FindAndClick(hWnd, pathKhac + "/TH_TL.png", 1, 1, "Hết Q").HasValue)
			{
				debugText("ClearDebugText");
				debugText("Không Thấy NV Tu Hành #3");
				break;
			}
		}
	}

	private bool BanDia()
	{
		PhuToiMap("Bàn Địa Tộc", 127.0, 148.0);
		while (!WaitAvatar(hWnd))
		{
		}
		if (!FindPoint(hWnd, pathKhac + "/TH_BD.png").HasValue)
		{
			Tele4(127.0, 148.0);
		}
		AutoControl.SendClickOnPosition(hWnd, 500, 481, (EMouseKey)0, 1);
		int num = 0;
		while (!FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -116, "Khiêu Chiến Tinh Anh Bàn Địa").HasValue)
		{
			AutoControl.SendClickOnPosition(hWnd, 627, 481, (EMouseKey)0, 1);
			delay_100ms(5);
			num++;
			if (num > 5)
			{
				return false;
			}
		}
		return true;
	}

	private bool LuuHoa()
	{
		PhuToiMap("Lưu Hỏa Tộc", 112.0, 102.0);
		if (!FindPoint(hWnd, pathKhac + "/TH_LH.png").HasValue)
		{
			Tele4(112.0, 102.0);
		}
		while (!WaitAvatar(hWnd))
		{
		}
		AutoControl.SendClickOnPosition(hWnd, 500, 390, (EMouseKey)0, 1);
		int num = 0;
		while (!FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -116, "Khiêu Chiến Tinh Anh Lưu Hỏa").HasValue)
		{
			AutoControl.SendClickOnPosition(hWnd, 681, 390, (EMouseKey)0, 1);
			delay_100ms(5);
			num++;
			if (num > 5)
			{
				return false;
			}
		}
		return true;
	}

	private bool HuyenLam()
	{
		PhuToiMap("Huyền Lâm Tộc", 116.0, 34.0);
		if (!FindPoint(hWnd, pathKhac + "/TH_HL.png").HasValue)
		{
			Tele4(116.0, 34.0);
		}
		while (!WaitAvatar(hWnd))
		{
		}
		AutoControl.SendClickOnPosition(hWnd, 500, 450, (EMouseKey)0, 1);
		int num = 0;
		while (!FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -116, "Khiêu Chiến Tinh Anh Huyền Lâm").HasValue)
		{
			AutoControl.SendClickOnPosition(hWnd, 402, 450, (EMouseKey)0, 1);
			delay_100ms(5);
			num++;
			if (num > 5)
			{
				return false;
			}
		}
		return true;
	}

	private bool LinhVu()
	{
		PhuToiMap("Linh Vũ Tộc", 167.0, 136.0);
		if (!FindPoint(hWnd, pathKhac + "/TH_LV.png").HasValue)
		{
			Tele4(167.0, 136.0);
		}
		while (!WaitAvatar(hWnd))
		{
		}
		AutoControl.SendClickOnPosition(hWnd, 550, 528, (EMouseKey)0, 1);
		int num = 0;
		while (!FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -116, "Khiêu Chiến Tinh Anh Linh Vũ").HasValue)
		{
			AutoControl.SendClickOnPosition(hWnd, 465, 528, (EMouseKey)0, 1);
			delay_100ms(5);
			num++;
			if (num > 5)
			{
				return false;
			}
		}
		return true;
	}

	private bool LieuVan()
	{
		PhuToiMap("Liêu Vân Tộc", 96.0, 127.0);
		if (!FindPoint(hWnd, pathKhac + "/TH_LiV.png").HasValue)
		{
			Tele4(96.0, 127.0);
		}
		while (!WaitAvatar(hWnd))
		{
		}
		AutoControl.SendClickOnPosition(hWnd, 500, 250, (EMouseKey)0, 1);
		int num = 0;
		while (!FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -116, "Khiêu Chiến Tinh Anh Liêu Vân").HasValue)
		{
			AutoControl.SendClickOnPosition(hWnd, 658, 250, (EMouseKey)0, 1);
			delay_100ms(5);
			num++;
			if (num > 5)
			{
				return false;
			}
		}
		return true;
	}

	private bool ThienKhung()
	{
		PhuToiMap("Thiên Khung Tộc", 18.0, 63.0);
		if (!FindPoint(hWnd, pathKhac + "/TH_TK.png").HasValue)
		{
			Tele4(18.0, 63.0);
		}
		while (!WaitAvatar(hWnd))
		{
		}
		AutoControl.SendClickOnPosition(hWnd, 200, 412, (EMouseKey)0, 1);
		int num = 0;
		while (!FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -116, "Khiêu Chiến Tinh Anh Thiên Khung").HasValue)
		{
			AutoControl.SendClickOnPosition(hWnd, 348, 412, (EMouseKey)0, 1);
			delay_100ms(5);
			num++;
			if (num > 5)
			{
				return false;
			}
		}
		return true;
	}

	private void PhuToiMap3(string maps, bool team = false)
	{
		if (checkIDMap() == ToaDoMap2(maps)[2])
		{
			debugText("Đang ở " + maps);
			return;
		}
		string text = checkTenMap();
		debugText(text + " -> ? : 00%");
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
			debugText(string.Concat(new string[6]
			{
				text,
				" -> ",
				maps,
				" : ",
				((int)num5).ToString("D2"),
				"%"
			}));
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

	private string checkNguyenLieuTrangVien()
	{
		//IL_003e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0052: Expected O, but got Unknown
		string result = "";
		Image val = CaptureHelper.CaptureWindow(hWnd);
		for (int i = 0; i < 10; i++)
		{
			Bitmap image = ImageScanOpenCV.GetImage(pathKhac + "/TrangVien_C" + i + ".png");
			if (ImageScanOpenCV.FindOutPoint((Bitmap)val, image, 0.9).HasValue)
			{
				switch (i)
				{
				case 0:
					result = "Kim Loại";
					break;
				case 1:
					result = "Gỗ";
					break;
				case 2:
					result = "Lông Thú";
					break;
				case 3:
					result = "Ngọc";
					break;
				case 4:
					result = "Vải Thô";
					break;
				case 5:
					result = "Kim Loại Hiếm";
					break;
				case 6:
					result = "Gỗ Tốt";
					break;
				case 7:
					result = "Da Thú";
					break;
				case 8:
					result = "Pha Lê";
					break;
				case 9:
					result = "Gấm Vóc";
					break;
				}
				break;
			}
		}
		return result;
	}

	private void TraNhiemVuNongTruong()
	{
		int num = 0;
		int num2 = 0;
		int num3 = 0;
		int num4 = 0;
		if (checkIDMap() != 57)
		{
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
			delay_100ms(5);
			while (FindPoint(hWnd, pathKhac + "/setupRun_1.png").HasValue)
			{
				SendClickOnPosition(hWnd, 500, 138, (EMouseKey)0);
				delay_100ms(8);
				if (FindPoint(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png").HasValue)
				{
					break;
				}
				SendClickOnPosition(hWnd, 487, 138, (EMouseKey)0);
				delay_100ms(8);
				if (FindPoint(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png").HasValue)
				{
					break;
				}
				num4++;
				if (num4 <= 20)
				{
					continue;
				}
				goto IL_01ec;
			}
			delay_100ms(5);
			while (true)
			{
				double num5 = CheckLoadMap();
				debugText("ClearDebugText");
				debugText(string.Concat(new string[5]
				{
					"Map ID ",
					checkIDMap().ToString(),
					" - ",
					((int)num5).ToString("D2"),
					"%"
				}));
				if (num5 != 100.0)
				{
					delay_100ms(2);
					continue;
				}
				break;
			}
		}
		else
		{
			debugText("Đang ở Nông Trường 1");
		}
		delay_100ms(10);
		num4 = 0;
		while (true)
		{
			if (!FindPoint(hWnd, pathKhac + "/setupRun_1.png").HasValue)
			{
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
				delay_100ms(5);
			}
			SendClickOnPosition(hWnd, 500, 138, (EMouseKey)0);
			delay_100ms(10);
			if (!FindPoint(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png").HasValue)
			{
				SendClickOnPosition(hWnd, 487, 138, (EMouseKey)0);
				delay_100ms(10);
				if (!FindPoint(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png").HasValue)
				{
					num4++;
					if (num4 >= 10)
					{
						break;
					}
					continue;
				}
			}
			while (true)
			{
				debugText("Tìm Bảng Nhiệm Vụ");
				if (FindAndClick(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png", 0, -117, "Click Nhiệm Vụ").HasValue)
				{
					debugText("Nhận Nhiệm Vụ");
					if (!FindAndClick(hWnd, pathAutoNhanNVPB + "/Nhan.png", 1, 1, "Nhận").HasValue)
					{
						debugText("Không Tìm Thấy Nút Nhận");
						PressKey("OK");
					}
					delay_100ms(3);
					debugText("Trả Nhiệm Vụ");
					if (!FindAndClick(hWnd, pathAutoNhanNVPB + "/Xong.png", 1, 1, "Xong").HasValue)
					{
						debugText("Không Tìm Thấy Nút Xong");
						PressKey("OK");
						num2++;
						if (num2 >= 2)
						{
							break;
						}
					}
					else
					{
						num3++;
						if (num3 >= 2)
						{
							break;
						}
					}
					continue;
				}
				debugText("Không Tìm Thấy Bảng Nhiệm Vụ");
				PressKey("OK");
				delay_100ms(3);
				if (!FindPoint(hWnd, pathKhac + "/setupRun_1.png").HasValue)
				{
					PressKey("ESC");
					PressKey("Z");
					delay_100ms(5);
				}
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
				delay_100ms(5);
				SendClickOnPosition(hWnd, 500, 138, (EMouseKey)0);
				delay_100ms(8);
				if (FindPoint(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png").HasValue)
				{
					continue;
				}
				SendClickOnPosition(hWnd, 487, 138, (EMouseKey)0);
				delay_100ms(8);
				if (!FindPoint(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png").HasValue)
				{
					num++;
					if (num >= 3)
					{
						break;
					}
				}
			}
			break;
		}
		goto IL_085c;
		IL_01ec:
		debugText("Lô\u0303i Nông Trươ\u0300ng");
		goto IL_085c;
		IL_085c:
		debugText("Tra\u0309 Nhiê\u0323m Vu\u0323 Nông Trươ\u0300ng Xong");
	}

	private void NhanThuongTranhBa()
	{
		FindItem(hWnd, pathKhac + "/TB_icon.png", "Tranh Ba\u0301 PK");
		delay_100ms(5);
		SendClickOnPosition(hWnd, 178, 229, (EMouseKey)0);
		delay_100ms(5);
		int num = 0;
		for (int i = 0; i < 5; i++)
		{
			while (!FindAndClick(hWnd, pathKhac + "/TB_chanthanh.png", 2, 2, "Chân Tha\u0300nh").HasValue)
			{
				switch (num)
				{
				default:
					return;
				case 0:
					SendClickOnPosition(hWnd, 305, 159, (EMouseKey)0);
					break;
				case 1:
					SendClickOnPosition(hWnd, 380, 159, (EMouseKey)0);
					break;
				case 2:
					SendClickOnPosition(hWnd, 450, 159, (EMouseKey)0);
					break;
				case 3:
					SendClickOnPosition(hWnd, 522, 159, (EMouseKey)0);
					break;
				}
				delay_100ms(10);
				num++;
			}
			PressKey("Enter");
			delay_100ms(5);
		}
	}

	private void NuoiTinhLinh()
	{
		//IL_00f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0103: Unknown result type (might be due to invalid IL or missing references)
		//IL_0108: Unknown result type (might be due to invalid IL or missing references)
		string[] array = new string[6] { "Không", "Lơ\u0301n -> Nho\u0309", "Nho\u0309 -> Lơ\u0301n", "Nho\u0309", "Vư\u0300a", "Lơ\u0301n" };
		string[] array2 = new string[2] { "Co\u0301", "Không" };
		int setupStepX;
		int setupStepY;
		double num;
		Point? val;
		do
		{
			setupStepX = Settings.Default.setupStepX;
			setupStepY = Settings.Default.setupStepY;
			num = (double)Settings.Default.setupDelay / 1000.0;
			PressKey("ESC");
			FindAndClick(hWnd, pathKhac + "/setupRun_TL.png", 1, 1, "Tinh Linh");
			delay_100ms(10);
			val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
		}
		while (!val.HasValue);
		System.IntPtr intPtr = hWnd;
		Point value = val.Value;
		int x = ((Point)(ref value)).X;
		value = val.Value;
		AutoControl.SendDragAndDropOnPosition(intPtr, x, ((Point)(ref value)).Y - 30, 97, 236, setupStepX, setupStepY, num);
		debugText("check ba\u0309ng nuôi Tinh Linh");
		int num2 = default(int);
		for (int i = 0; i < dataGridView1.Rows.Count; i++)
		{
			string text = dataGridView1.Rows[i].Cells[0].Value.ToString();
			string text2 = dataGridView1.Rows[i].Cells[1].Value.ToString();
			string text3 = dataGridView1.Rows[i].Cells[2].Value.ToString();
			if (!int.TryParse(text, ref num2) || num2 > 14 || num2 == 0 || !Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)array, text2) || !Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)array2, text3))
			{
				continue;
			}
			debugText(string.Concat(new string[5] { text, " - ", text2, " - ", text3 }));
			PressKey("ESC");
			PressKey("ESC");
			FindAndClick(hWnd, pathKhac + "/setupRun_TL.png", 1, 1, "Tinh Linh");
			delay_100ms(5);
			SendClickOnPosition(hWnd, 358, 422, (EMouseKey)0);
			delay_100ms(2);
			SendClickOnPosition(hWnd, 268, 422, (EMouseKey)0);
			delay_100ms(2);
			SendClickOnPosition(hWnd, 268, 422, (EMouseKey)0);
			delay_100ms(2);
			SendClickOnPosition(hWnd, 268, 422, (EMouseKey)0);
			delay_100ms(2);
			SendClickOnPosition(hWnd, 268, 422, (EMouseKey)0);
			delay_100ms(2);
			SendClickOnPosition(hWnd, 268, 422, (EMouseKey)0);
			delay_100ms(2);
			SendClickOnPosition(hWnd, 268, 422, (EMouseKey)0);
			delay_100ms(2);
			for (int j = 0; j < num2 / 6; j++)
			{
				debugText("Chuyê\u0309n Trang " + j);
				SendClickOnPosition(hWnd, 358, 422, (EMouseKey)0);
				delay_100ms(5);
			}
			debugText("Vi\u0323 Tri\u0301 " + num2);
			switch (num2)
			{
			case 1:
			case 6:
			case 11:
				SendClickOnPosition(hWnd, 300, 316, (EMouseKey)0);
				delay_100ms(5);
				break;
			case 2:
			case 7:
			case 12:
				SendClickOnPosition(hWnd, 300, 337, (EMouseKey)0);
				delay_100ms(5);
				break;
			case 3:
			case 8:
			case 13:
				SendClickOnPosition(hWnd, 300, 357, (EMouseKey)0);
				delay_100ms(5);
				break;
			case 4:
			case 9:
			case 14:
				SendClickOnPosition(hWnd, 300, 377, (EMouseKey)0);
				delay_100ms(5);
				break;
			case 5:
			case 10:
				SendClickOnPosition(hWnd, 300, 397, (EMouseKey)0);
				delay_100ms(5);
				break;
			}
			SendClickOnPosition(hWnd, 313, 448, (EMouseKey)0);
			delay_100ms(5);
			if (text2 != "Không")
			{
				SendClickOnPosition(hWnd, 459, 311, (EMouseKey)0);
				delay_100ms(5);
				int num3 = 0;
				string text4 = text2;
				string text5 = text4;
				if (!(text5 == "Nho\u0309") && !(text5 == "Nho\u0309 -> Lơ\u0301n"))
				{
					if (!(text5 == "Vư\u0300a"))
					{
						if (text5 == "Lơ\u0301n" || text5 == "Lơ\u0301n -> Nho\u0309")
						{
							num3 = 2;
						}
					}
					else
					{
						num3 = 1;
					}
				}
				else
				{
					num3 = 0;
				}
				while (true)
				{
					string text6;
					string text7;
					switch (num3)
					{
					case 0:
						debugText("nuôi Nho\u0309");
						SendClickOnPosition(hWnd, 433, 355, (EMouseKey)0);
						delay_100ms(5);
						goto IL_0654;
					case 1:
						debugText("nuôi Vư\u0300a");
						SendClickOnPosition(hWnd, 512, 355, (EMouseKey)0);
						delay_100ms(5);
						goto IL_0654;
					case 2:
						{
							debugText("nuôi Lơ\u0301n");
							SendClickOnPosition(hWnd, 592, 355, (EMouseKey)0);
							delay_100ms(5);
							goto IL_0654;
						}
						IL_0654:
						for (int k = 0; k < 7; k++)
						{
							SendClickOnPosition(hWnd, 543, 504, (EMouseKey)0);
							delay_100ms(10);
						}
						text6 = text2;
						text7 = text6;
						if (!(text7 == "Nho\u0309 -> Lơ\u0301n"))
						{
							if (!(text7 == "Lơ\u0301n -> Nho\u0309"))
							{
								break;
							}
							num3--;
							continue;
						}
						num3++;
						continue;
					}
					break;
				}
			}
			if (text3 != "Không")
			{
				debugText("Nuôi Dươ\u0303ng");
				SendClickOnPosition(hWnd, 155, 640, (EMouseKey)0);
				delay_100ms(2);
				for (int l = 0; l < 20; l++)
				{
					debugText("Lâ\u0300n " + l);
					SendClickOnPosition(hWnd, 456, 599, (EMouseKey)0);
					delay_100ms(10);
				}
			}
			PressKey("ESC");
			PressKey("ESC");
		}
		debugText("Hoa\u0300n Tha\u0300nh Nuôi Tinh Linh");
		delay_100ms(5);
	}

	private void CheNau()
	{
	}

	private void KiepNanVoUu(string tang, CheckState nhan)
	{
		//IL_0413: Unknown result type (might be due to invalid IL or missing references)
		//IL_0415: Invalid comparison between Unknown and I4
		int num = 0;
		FindAndClick(hWnd, pathKhac + "/Auto_button2.png", 1, 1, "Auto");
		delay_100ms(5);
		FindItem(hWnd, pathKhac + "/KNVU_icon.png", "Kiếp Nạn Vô Ưu");
		delay_100ms(10);
		switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(tang))
		{
		case 1135124911u:
			if (tang == "KN 1")
			{
				SendClickOnPosition(hWnd, 503, 130, (EMouseKey)0);
			}
			break;
		case 1151902530u:
			if (tang == "KN 2")
			{
				SendClickOnPosition(hWnd, 503, 160, (EMouseKey)0);
			}
			break;
		case 1168680149u:
			if (tang == "KN 3")
			{
				SendClickOnPosition(hWnd, 503, 190, (EMouseKey)0);
			}
			break;
		case 1051236816u:
			if (tang == "KN 4")
			{
				SendClickOnPosition(hWnd, 503, 222, (EMouseKey)0);
			}
			break;
		case 1068014435u:
			if (tang == "KN 5")
			{
				SendClickOnPosition(hWnd, 503, 253, (EMouseKey)0);
			}
			break;
		case 1084792054u:
			if (tang == "KN 6")
			{
				SendClickOnPosition(hWnd, 503, 283, (EMouseKey)0);
			}
			break;
		case 1101569673u:
			if (tang == "KN 7")
			{
				SendClickOnPosition(hWnd, 503, 315, (EMouseKey)0);
			}
			break;
		case 1252568244u:
			if (tang == "KN 8")
			{
				SendClickOnPosition(hWnd, 503, 347, (EMouseKey)0);
			}
			break;
		case 1269345863u:
			if (tang == "KN 9")
			{
				SendClickOnPosition(hWnd, 503, 376, (EMouseKey)0);
			}
			break;
		}
		delay_100ms(10);
		while (FindPoint(hWnd, pathKhac + "/KNVU_icon.png").HasValue)
		{
			num++;
			if (num >= 10)
			{
				return;
			}
			delay_100ms(10);
		}
		delay_100ms(10);
		num = 0;
		while (!FindPoint(hWnd, pathTruMa + "/Auto.png").HasValue)
		{
			num++;
			if (num >= 10)
			{
				return;
			}
			delay_100ms(10);
		}
		FindAndClick(hWnd, pathTruMa + "/Auto.png", 1, 1, "Auto");
		delay_100ms(20);
		num = 0;
		while (!FindPoint(hWnd, pathKhac + "/checkTrTr.png").HasValue)
		{
			num++;
			if (num >= 300)
			{
				return;
			}
			delay_100ms(10);
		}
		delay_100ms(10);
		if ((int)nhan == 1)
		{
			FindItem(hWnd, pathKhac + "/KNVU_icon.png", "Kiếp Nạn Vô Ưu");
			delay_100ms(10);
			SendClickOnPosition(hWnd, 496, 405, (EMouseKey)0);
			delay_100ms(10);
			SendClickOnPosition(hWnd, 496, 405, (EMouseKey)0);
			delay_100ms(10);
			FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 1, 1, "có");
			delay_100ms(10);
		}
	}

	private void MuaTieuDieuPhu()
	{
		//IL_00a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_00b8: Unknown result type (might be due to invalid IL or missing references)
		//IL_00bd: Unknown result type (might be due to invalid IL or missing references)
		int setupStepX = Settings.Default.setupStepX;
		int setupStepY = Settings.Default.setupStepY;
		double num = (double)Settings.Default.setupDelay / 1000.0;
		PressKey("ESC");
		delay_100ms(5);
		FindItem(hWnd, pathKhac + "/checkTrTr.png", "Shop");
		delay_100ms(10);
		Point? val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
		if (val.HasValue)
		{
			System.IntPtr intPtr = hWnd;
			Point value = val.Value;
			int x = ((Point)(ref value)).X;
			value = val.Value;
			AutoControl.SendDragAndDropOnPosition(intPtr, x, ((Point)(ref value)).Y - 30, 95, 290, setupStepX, setupStepY, num);
		}
		delay_100ms(5);
		SendClickOnPosition(hWnd, 259, 366, (EMouseKey)0);
		delay_100ms(10);
		string text = ((Control)comboBoxMuaPhu).Text;
		string text2 = text;
		if (!(text2 == "7 ngày"))
		{
			if (text2 == "30 ngày")
			{
				SendClickOnPosition(hWnd, 282, 501, (EMouseKey)0);
				debugText("Mùa Phù 30 Ngày");
				delay_100ms(10);
			}
		}
		else
		{
			SendClickOnPosition(hWnd, 152, 501, (EMouseKey)0);
			debugText("Mùa Phù 7 Ngày");
			delay_100ms(10);
		}
		SendClickUpOnPosition(hWnd, 512, 415, (EMouseKey)0);
		delay_100ms(20);
		SendClickOnPosition(hWnd, 458, 666, (EMouseKey)0);
		debugText("Mua");
		delay_100ms(10);
		SendClickOnPosition(hWnd, 512, 415, (EMouseKey)0);
		debugText("OK");
		delay_100ms(5);
		string text3 = ((Control)comboBoxMuaPhu).Text;
		string text4 = text3;
		if (!(text4 == "7 ngày"))
		{
			if (text4 == "30 ngày")
			{
				dateTimePickerMuaPhu.Value = dateTimePickerMuaPhu.Value.AddDays(30.0);
				debugText("Đã Cài Thêm 30 Ngày");
			}
		}
		else
		{
			dateTimePickerMuaPhu.Value = dateTimePickerMuaPhu.Value.AddDays(7.0);
			debugText("Đã Cài Thêm 7 Ngày");
		}
		MuaLanDau = "Đã Mua";
		checkFileECT();
		MuaLanDau = "Chưa Mua";
		PressKey("ESC");
		delay_100ms(5);
	}

	private void DanhSoTay()
	{
		//IL_00a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_00b8: Unknown result type (might be due to invalid IL or missing references)
		//IL_00bd: Unknown result type (might be due to invalid IL or missing references)
		int setupStepX = Settings.Default.setupStepX;
		int setupStepY = Settings.Default.setupStepY;
		double num = (double)Settings.Default.setupDelay / 1000.0;
		PressKey("ESC");
		delay_100ms(5);
		FindItem(hWnd, pathKhac + "/SoTay_Icon.png", "Sổ Tay Ma Thú");
		delay_100ms(10);
		Point? val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
		if (val.HasValue)
		{
			System.IntPtr intPtr = hWnd;
			Point value = val.Value;
			int x = ((Point)(ref value)).X;
			value = val.Value;
			AutoControl.SendDragAndDropOnPosition(intPtr, x, ((Point)(ref value)).Y - 30, 99, 156, setupStepX, setupStepY, num);
		}
		delay_100ms(5);
		bool bossBay = true;
		bool bossBay2 = false;
		if (numericUpDownST1.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST1.Value, 1, 1, bossBay2, "Thất Sắc Kê (LV5)");
		}
		if (numericUpDownST2.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST2.Value, 1, 2, bossBay2, "Thỏ Điên Răng Vổ (LV10)");
		}
		if (numericUpDownST3.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST3.Value, 1, 3, bossBay2, "Trưởng Lão Sơn Quái (LV15)");
		}
		if (numericUpDownST4.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST4.Value, 1, 4, bossBay2, "Ma Vương Bát Giác (LV20)");
		}
		if (numericUpDownST5.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST5.Value, 1, 5, bossBay2, "Quân Sư Cẩu Đầu (LV20)");
		}
		if (numericUpDownST6.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST6.Value, 1, 6, bossBay2, "Gấu Tuyết Tàn Bạo (LV25)");
		}
		if (numericUpDownST7.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST7.Value, 1, 7, bossBay2, "Ốc Giáo Quan (LV30)");
		}
		if (numericUpDownST8.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST8.Value, 1, 8, bossBay2, "Cổ Thụ Lão Yêu (LV30)");
		}
		if (numericUpDownST9.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST9.Value, 2, 1, bossBay2, "Thủy Tinh Bào (LV55)");
		}
		if (numericUpDownST10.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST10.Value, 2, 2, bossBay2, "Cự Nhân Ma (LV60)");
		}
		if (numericUpDownST11.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST11.Value, 2, 3, bossBay2, "Hải Tinh Hút Hồn (LV65)");
		}
		if (numericUpDownST12.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST12.Value, 2, 4, bossBay, "Gấu Siêu Mập (LV65)");
		}
		if (numericUpDownST13.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST13.Value, 2, 5, bossBay2, "Thượng Cổ Ác Ma (LV70)");
		}
		if (numericUpDownST14.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST14.Value, 2, 6, bossBay, "Thầy Tế Lễ (LV70)");
		}
		if (numericUpDownST15.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST15.Value, 2, 7, bossBay2, "Ong Cửu Ly Cực Độc (LV75)");
		}
		if (numericUpDownST16.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST16.Value, 2, 8, bossBay2, "Thần Cuồng Bạo (LV75)");
		}
		if (numericUpDownST17.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST17.Value, 3, 1, bossBay2, "Ác Hổ Ma Giới (LV80)");
		}
		if (numericUpDownST18.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST18.Value, 3, 2, bossBay, "Băng Thạch Tuyết Thần (LV80)");
		}
		if (numericUpDownST19.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST19.Value, 3, 3, bossBay2, "Chiến Thần Băng Cung (LV85)");
		}
		if (numericUpDownST20.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST20.Value, 3, 4, bossBay, "Bá Chủ Bù Nhìn (LV85)");
		}
		if (numericUpDownST21.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST21.Value, 3, 5, bossBay2, "Yêu Quái Ẩn Trúc (LV90)");
		}
		if (numericUpDownST22.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST22.Value, 3, 6, bossBay, "Băng Xuyên Thủ Hộ (LV90)");
		}
		if (numericUpDownST23.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST23.Value, 3, 7, bossBay2, "Cực Ma Ảo Thạch (LV95)");
		}
		if (numericUpDownST24.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST24.Value, 3, 8, bossBay, "Thần Chết (LV95)");
		}
		if (numericUpDownST25.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST25.Value, 4, 1, bossBay2, "Siêu Nhân Gấu Trúc (LV100)");
		}
		if (numericUpDownST26.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST26.Value, 4, 2, bossBay, "Pháp Khí Apollo (LV100)");
		}
		if (numericUpDownST27.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST27.Value, 4, 3, bossBay2, "Tư Tế Ma Cốc (LV105)");
		}
		if (numericUpDownST28.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST28.Value, 4, 4, bossBay, "Đại Sư Hổ Vô (LV105)");
		}
		if (numericUpDownST29.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST29.Value, 4, 5, bossBay2, "U Hồn Mê Quang (LV110)");
		}
		if (numericUpDownST30.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST30.Value, 4, 6, bossBay, "Thanatos (LV110)");
		}
		if (numericUpDownST31.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST31.Value, 4, 7, bossBay2, "Bóng Đen Thủ Hộ (LV115)");
		}
		if (numericUpDownST32.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST32.Value, 4, 8, bossBay, "Ánh Sáng Thanh Khiết (LV115)");
		}
		if (numericUpDownST33.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST33.Value, 5, 1, bossBay2, "Đoạt Mông Ma Linh (LV120)");
		}
		if (numericUpDownST34.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST34.Value, 5, 2, bossBay, "Thầy Mo Nghịch Pháp (LV120)");
		}
		if (numericUpDownST35.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST35.Value, 5, 3, bossBay2, "Phệ Quang Dạ Ma (LV121)");
		}
		if (numericUpDownST36.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST36.Value, 5, 4, bossBay2, "Phù Thủy Thánh Ước (LV125)");
		}
		if (numericUpDownST37.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST37.Value, 5, 5, bossBay, "Diệt Thần Chi Thủ (LV125)");
		}
		if (numericUpDownST38.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST38.Value, 5, 6, bossBay, "Nữ Vương Phá Hoại (LV127)");
		}
		if (numericUpDownST39.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST39.Value, 5, 7, bossBay2, "Ma Vương Cực Địa (LV130)");
		}
		if (numericUpDownST40.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST40.Value, 5, 8, bossBay, "Ma Linh Dị Thú (LV130)");
		}
		if (numericUpDownST41.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST41.Value, 6, 1, bossBay2, "Yêu Quái Mị Hoặc (LV140)");
		}
		if (numericUpDownST42.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST42.Value, 6, 2, bossBay, "Pharrel Omnic (LV140)");
		}
		if (numericUpDownST43.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST43.Value, 6, 3, bossBay, "Cự Ma Thạch Tượng (LV145)");
		}
		if (numericUpDownST44.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST44.Value, 6, 4, bossBay2, "Kỵ Sĩ Cơ Giáp (LV145)");
		}
		if (numericUpDownST45.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST45.Value, 6, 5, bossBay2, "Phản Quân Cổ Thảnh (LV150)");
		}
		if (numericUpDownST46.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST46.Value, 6, 6, bossBay, "Vong Linh Ma Thuẫn (LV150)");
		}
		if (numericUpDownST47.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST47.Value, 6, 7, bossBay2, "Solomon");
		}
		if (numericUpDownST48.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST48.Value, 6, 8, bossBay2, "Mehdi Urboss");
		}
		if (numericUpDownST49.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST49.Value, 7, 1, bossBay2, "Nấm Vương Thánh Linh (LV155)");
		}
		if (numericUpDownST50.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST50.Value, 7, 2, bossBay, "Rồng Xanh Gian Ác (LV155)");
		}
		if (numericUpDownST51.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST51.Value, 7, 3, bossBay2, "Chuột Tinh Linh (LV160)");
		}
		if (numericUpDownST52.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST52.Value, 7, 4, bossBay, "Huyết Tộc Vương (LV160)");
		}
		if (numericUpDownST53.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST53.Value, 7, 5, bossBay2, "Rada");
		}
		if (numericUpDownST54.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST54.Value, 7, 6, bossBay, "Buli");
		}
		if (numericUpDownST55.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST55.Value, 7, 7, bossBay2, "Bula");
		}
		if (numericUpDownST56.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST56.Value, 1, 1, bossBay2, "Chiến Thần Sói (LV35)", Trang1: false);
		}
		if (numericUpDownST57.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST57.Value, 1, 2, bossBay2, "Miêu Vương (LV35)", Trang1: false);
		}
		if (numericUpDownST58.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST58.Value, 1, 3, bossBay2, "Nấm Yêu Huyết Hồng (LV40)", Trang1: false);
		}
		if (numericUpDownST59.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST59.Value, 1, 4, bossBay2, "Hấp Huyết Yêu Hoa (LV40)", Trang1: false);
		}
		if (numericUpDownST60.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST60.Value, 1, 5, bossBay2, "Gấu Đen (LV45)", Trang1: false);
		}
		if (numericUpDownST61.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST61.Value, 1, 6, bossBay2, "Dạ Xoa Vương (LV45)", Trang1: false);
		}
		if (numericUpDownST62.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST62.Value, 2, 1, bossBay, "Yêu Bướm Mộng Ma (LV75)", Trang1: false);
		}
		if (numericUpDownST63.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST63.Value, 3, 1, bossBay2, "Ma Cát Chi Phong (LV97)", Trang1: false);
		}
		if (numericUpDownST64.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST64.Value, 3, 2, bossBay, "Tên Tan Sương Mù (LV97)", Trang1: false);
		}
		if (numericUpDownST65.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST65.Value, 3, 3, bossBay2, "Bách Thảo Tinh (stcc LV95)", Trang1: false);
		}
		if (numericUpDownST66.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST66.Value, 3, 4, bossBay2, "Phủ Ma (stcc LV95)", Trang1: false);
		}
		if (numericUpDownST67.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST67.Value, 3, 5, bossBay2, "Thạch Yêu (stcc LV90)", Trang1: false);
		}
		if (numericUpDownST68.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST68.Value, 4, 1, bossBay2, "Lôi Nộ Chiến Ma (LV117)", Trang1: false);
		}
		if (numericUpDownST69.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST69.Value, 4, 2, bossBay, "Vị Thần Sa Ngã (LV117)", Trang1: false);
		}
		if (numericUpDownST70.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST70.Value, 4, 3, bossBay2, "Ma Chiến (stcc LV110)", Trang1: false);
		}
		if (numericUpDownST71.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST71.Value, 4, 4, bossBay2, "Quỷ Vương (stcc LV120)", Trang1: false);
		}
		if (numericUpDownST72.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST72.Value, 4, 5, bossBay2, "Ắc Thần (stcc LV120)", Trang1: false);
		}
		if (numericUpDownST73.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST73.Value, 5, 1, bossBay, "Ảo Mộng Nữ Yêu (LV135)", Trang1: false);
		}
		if (numericUpDownST74.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST74.Value, 5, 2, bossBay2, "Avatar (stcc LV130)", Trang1: false);
		}
		if (numericUpDownST75.Value > 0m)
		{
			checkSoLuotVaDanhBoss((int)numericUpDownST75.Value, 5, 3, bossBay2, "Atula Vương (stcc LV135)", Trang1: false);
		}
	}

	private bool NhiemVuCauCa()
	{
		PressKey("ESC");
		delay_100ms(10);
		PhuToiMap("Đông Huyền Thành", 149.0, 66.0);
		delay_100ms(3);
		if (NhanQ(pathKhac + "/HTC_NV.png"))
		{
			return true;
		}
		int num = 0;
		while (!BoNVKhongLienQuan(pathKhac + "/HTC_NV.png"))
		{
			num++;
			if (num >= 10)
			{
				debugText("Lỗi Check Q");
				return false;
			}
			debugText("ClearDebugText");
			debugText("Check Lần " + num + " / 9");
		}
		int cap = checkCapDoKyNang();
		while (DiCauHai(cap, loai: true))
		{
			int num2 = 0;
			while (true)
			{
				if (!checkXongQ())
				{
					if (!FindPoint(hWnd, pathKhac + "/HTC_DauX.png").HasValue)
					{
						break;
					}
					num2++;
					if (num2 >= 180)
					{
						return false;
					}
					delay_100ms(100);
					debugText("ClearDebugText");
					continue;
				}
				PressKey("ESC");
				delay_100ms(3);
				PressKey("ESC");
				delay_100ms(3);
				PressKey("ESC");
				delay_100ms(3);
				PhuToiMap("Đông Huyền Thành", 149.0, 66.0);
				delay_100ms(3);
				NhanQ(pathKhac + "/HTC_NV.png");
				return true;
			}
		}
		return false;
	}

	private bool NhiemVuHaiThuoc()
	{
		while (true)
		{
			PressKey("ESC");
			Bay();
			Bay();
			Bay();
			PhuToiMap("Đông Huyền Thành", 225.0, 25.0);
			while (!FindAndClick(hWnd, pathLuyenPet + "/NPC_NV_RoiKhoi.png", 0, -120, "Bảng NPC").HasValue)
			{
				PressKey("ESC");
				if (!FindPoint(hWnd, pathKhac + "/setupRun_1.png").HasValue)
				{
					PressKey("ESC");
					PressKey("Z");
					delay_100ms(5);
				}
				SendClickOnPosition(hWnd, 218, 106, (EMouseKey)0);
				delay_100ms(3);
				SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
				delay_100ms(3);
				SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
				delay_100ms(3);
				SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
				delay_100ms(3);
				SendClickOnPosition(hWnd, 696, 159, (EMouseKey)0);
				delay_100ms(3);
				SendClickOnPosition(hWnd, 520, 270, (EMouseKey)0);
				delay_100ms(15);
				if (FindPoint(hWnd, pathTacVu + "/SuaDo.png").HasValue)
				{
					return true;
				}
			}
			if (FindAndClick(hWnd, pathAutoNhanNVPB + "/Nhan.png", 1, 1, "Nhận").HasValue)
			{
				PressKey("Enter");
				debugText("End_Line");
			}
			delay_100ms(10);
			if (FindAndClick(hWnd, pathLuyenPet + "/Xong.png", 1, 1, "Xong").HasValue)
			{
				break;
			}
			int num = 0;
			while (!BoNVKhongLienQuan(pathKhac + "/HTC_QHai.png"))
			{
				num++;
				if (num >= 10)
				{
					debugText("Lỗi Check Q");
					return false;
				}
				debugText("ClearDebugText");
				debugText("Check Lần " + num + " / 9");
			}
			int num2 = checkCapDoKyNang("/HTC_KN2.png");
			SendClickOnPosition(hWnd, 1003, 627, (EMouseKey)0);
			delay_100ms(3);
			num = 0;
			while (true)
			{
				IL_033b:
				if (!DiCauHai(num2, loai: false))
				{
					if (num2 == 2 || num2 == 3 || num2 == 4 || num2 == 5 || num2 == 6)
					{
						return false;
					}
					if (Kenh == 0)
					{
						debugText("Check Kênh");
						Bay();
						Bay();
						Bay();
						PhuToiMap("Vân Đài");
						delay_100ms(5);
						for (int i = 1; i <= 8; i++)
						{
							if (FindPoint(hWnd, pathKhac + "/Kenh" + i + ".png", 0.99).HasValue)
							{
								Kenh = i;
								debugText("Kênh Hiện Tại : " + Kenh);
								KenhHienTai = i;
								if (Kenh == 8)
								{
									Kenh = 0;
								}
								break;
							}
						}
					}
					num++;
					if (num > 8)
					{
						return false;
					}
					Kenh++;
					debugText("Chuyển Sang Kênh " + Kenh);
					while (!ChuyenKenh(Kenh))
					{
					}
					continue;
				}
				int num3 = 0;
				while (!checkXongQ("/HTC_QHai.png"))
				{
					if (!FindPoint(hWnd, pathKhac + "/HTC_DauX.png").HasValue)
					{
						goto IL_033b;
					}
					num3++;
					if (num3 >= 180)
					{
						return false;
					}
					delay_100ms(100);
					debugText("ClearDebugText");
				}
				break;
			}
			PressKey("ESC");
			delay_100ms(3);
			PressKey("ESC");
			delay_100ms(3);
			PressKey("ESC");
			delay_100ms(3);
		}
		PressKey("Enter");
		debugText("End_Line");
		delay_100ms(10);
		return true;
	}

	private bool PhucHoi(string pathPhucHoi)
	{
		//IL_0085: Unknown result type (might be due to invalid IL or missing references)
		//IL_008a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0097: Unknown result type (might be due to invalid IL or missing references)
		//IL_009c: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c7: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ff: Unknown result type (might be due to invalid IL or missing references)
		//IL_0104: Unknown result type (might be due to invalid IL or missing references)
		//IL_0111: Unknown result type (might be due to invalid IL or missing references)
		//IL_0116: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_01be: Unknown result type (might be due to invalid IL or missing references)
		//IL_01cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d0: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_01fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0208: Unknown result type (might be due to invalid IL or missing references)
		//IL_020d: Unknown result type (might be due to invalid IL or missing references)
		//IL_023c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0241: Unknown result type (might be due to invalid IL or missing references)
		//IL_024e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0253: Unknown result type (might be due to invalid IL or missing references)
		//IL_027c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0281: Unknown result type (might be due to invalid IL or missing references)
		//IL_028e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0293: Unknown result type (might be due to invalid IL or missing references)
		Point value;
		Point? val2;
		while (true)
		{
			FindAndClick(hWnd, pathLuyenPet + "/Q_DaNhan.png", 5, 1, "NV đã nhận");
			FindAndClick(hWnd, pathLuyenPet + "/Q_LienHoan.png", 5, 1, "NV liên hoàn");
			Point? val = FindAndClick(hWnd, pathLuyenPet + "/Q_DaNhan.png", 5, 1, "NV đã nhận");
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
				val2 = FindAndClick(hWnd, pathLuyenPet + "/Q_LienHoan.png", 5, 1, "NV liên hoàn");
				if (val2.HasValue)
				{
					break;
				}
				PressKey("ESC");
				PressKey("Q");
			}
			else
			{
				PressKey("ESC");
				PressKey("Q");
			}
		}
		System.IntPtr intPtr4 = hWnd;
		value = val2.Value;
		int num4 = ((Point)(ref value)).X - 30;
		value = val2.Value;
		AutoControl.SendClickOnPosition(intPtr4, num4, ((Point)(ref value)).Y + 50 - 30, (EMouseKey)0, 1);
		delay_100ms(2);
		System.IntPtr intPtr5 = hWnd;
		value = val2.Value;
		int num5 = ((Point)(ref value)).X - 30;
		value = val2.Value;
		AutoControl.SendClickOnPosition(intPtr5, num5, ((Point)(ref value)).Y + 50 - 30, (EMouseKey)0, 1);
		delay_100ms(3);
		for (int i = 1; i < 8; i++)
		{
			System.IntPtr intPtr6 = hWnd;
			value = val2.Value;
			int num6 = ((Point)(ref value)).X - 30;
			value = val2.Value;
			AutoControl.SendClickOnPosition(intPtr6, num6, ((Point)(ref value)).Y + 25 * i - 30, (EMouseKey)0, 1);
			delay_100ms(2);
			System.IntPtr intPtr7 = hWnd;
			value = val2.Value;
			int num7 = ((Point)(ref value)).X - 30;
			value = val2.Value;
			AutoControl.SendClickOnPosition(intPtr7, num7, ((Point)(ref value)).Y + 25 * i - 30, (EMouseKey)0, 1);
			delay_100ms(3);
			if (FindPoint(hWnd, pathPhucHoi).HasValue)
			{
				if (!FindPoint(hWnd, pathLuyenPet + "/Q_Bo.png").HasValue)
				{
					FindAndClick(hWnd, pathLuyenPet + "/Q_PhucHoi.png", 5, 1, "Phục Hồi");
					return true;
				}
				return false;
			}
		}
		return false;
	}

	private bool BoNVKhongLienQuan(string pathPhucHoi)
	{
		//IL_0091: Unknown result type (might be due to invalid IL or missing references)
		//IL_0096: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a3: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_01fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0200: Unknown result type (might be due to invalid IL or missing references)
		//IL_020d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0212: Unknown result type (might be due to invalid IL or missing references)
		//IL_026d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0272: Unknown result type (might be due to invalid IL or missing references)
		//IL_027f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0284: Unknown result type (might be due to invalid IL or missing references)
		Point? val;
		while (true)
		{
			PressKey("OK");
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
		delay_100ms(8);
		if (!FindPoint(hWnd, pathBangHoi + "/Q_Bang.png").HasValue && !FindPoint(hWnd, pathLuyenPet + "/Q_Pet.png").HasValue && !FindPoint(hWnd, pathTruMa + "/Q_TM.png").HasValue && !FindPoint(hWnd, pathTacVu + "/Q_200.png").HasValue && !FindPoint(hWnd, pathPhucHoi).HasValue)
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

	private bool LuyenPet()
	{
		//IL_0364: Unknown result type (might be due to invalid IL or missing references)
		//IL_0369: Unknown result type (might be due to invalid IL or missing references)
		//IL_0374: Unknown result type (might be due to invalid IL or missing references)
		//IL_0379: Unknown result type (might be due to invalid IL or missing references)
		//IL_046d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0472: Unknown result type (might be due to invalid IL or missing references)
		//IL_047d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0482: Unknown result type (might be due to invalid IL or missing references)
		//IL_04eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_04f0: Unknown result type (might be due to invalid IL or missing references)
		//IL_04fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0500: Unknown result type (might be due to invalid IL or missing references)
		if (!FindPoint(hWnd, pathLuyenPet + "/Q_Pet_Xong.png").HasValue && !FindPoint(hWnd, pathLuyenPet + "/Q_Pet_Huy.png").HasValue && !FindPoint(hWnd, pathLuyenPet + "/Q_Pet_Bat.png").HasValue)
		{
			if (!FindPoint(hWnd, pathLuyenPet + "/Q_DaNhan.png").HasValue)
			{
				PressKey("ESC");
				PressKey("Q");
			}
			FindAndClick(hWnd, pathLuyenPet + "/Q_DaNhan.png", 5, 1, "NV đã nhận");
		}
		while (FindAndClick(hWnd, pathLuyenPet + "/Q_Pet_Bat.png", 5, 5, "Bỏ").HasValue)
		{
			FindAndClick(hWnd, pathLuyenPet + "/Q_Bo.png", 1, 1, "Bỏ");
			PressKey("Enter");
			delay_100ms(3);
		}
		if (FindPoint(hWnd, pathLuyenPet + "/Q_Pet_Xong.png").HasValue)
		{
			while (FindPoint(hWnd, pathLuyenPet + "/Q_Pet_Xong.png").HasValue && !FindPoint(hWnd, pathLuyenPet + "/NPC_NV_RoiKhoi.png").HasValue)
			{
				FindAndClick(hWnd, pathBangHoi + "/Q_NV_Nhanh.png", 30, 46, "click");
				FindAndClick(hWnd, pathBangHoi + "/Q_NV_Nhanh3.png", 30, 46, "click");
				PressKey("Enter");
			}
			delay_100ms(5);
			if (!FindPoint(hWnd, pathLuyenPet + "/NPC_NV_RoiKhoi.png").HasValue && FindPoint(hWnd, pathLuyenPet + "/Q_Bo.png").HasValue)
			{
				PressKey("ESC");
				Tele2(100.0, 35.0);
				return false;
			}
			PressKey("Q");
			while (true)
			{
				Point? val = FindPoint(hWnd, pathLuyenPet + "/NPC_NV_RoiKhoi.png");
				if (!val.HasValue)
				{
					break;
				}
				int num = 0;
				Point value;
				while (num < 5)
				{
					System.IntPtr intPtr = hWnd;
					value = val.Value;
					int x = ((Point)(ref value)).X;
					value = val.Value;
					AutoControl.SendClickUpOnPosition(intPtr, x, ((Point)(ref value)).Y + num * 25 - 117 - 30, (EMouseKey)0, 1);
					delay_100ms(3);
					if (FindPoint(hWnd, pathLuyenPet + "/Q_NVLQ.png").HasValue || FindPoint(hWnd, pathLuyenPet + "/Q_TTD.png").HasValue || FindPoint(hWnd, pathLuyenPet + "/Q_NPCDHT.png").HasValue || FindPoint(hWnd, pathLuyenPet + "/Q_NPCDHT2.png").HasValue)
					{
						goto IL_0464;
					}
					if (!FindPoint(hWnd, pathLuyenPet + "/Q_Tra_NV.png").HasValue)
					{
						num++;
						continue;
					}
					goto IL_04e2;
				}
				goto IL_05e3;
				IL_0464:
				System.IntPtr intPtr2 = hWnd;
				value = val.Value;
				int x2 = ((Point)(ref value)).X;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr2, x2, ((Point)(ref value)).Y + num * 25 - 117 - 30, (EMouseKey)0, 1);
				delay_100ms(5);
				continue;
				IL_05e3:
				PressKey("ESC");
				Tele2(100.0, 35.0);
				break;
				IL_04e2:
				System.IntPtr intPtr3 = hWnd;
				value = val.Value;
				int x3 = ((Point)(ref value)).X;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr3, x3, ((Point)(ref value)).Y + num * 25 - 117 - 30, (EMouseKey)0, 1);
				delay_100ms(5);
				if (FindAndClick(hWnd, pathLuyenPet + "/Xong.png", 1, 1, "Xong").HasValue)
				{
					PressKey("Enter");
					debugText("End_Line");
					NhiemVuLuyenPet++;
					debugText("NV Pet Hoàn Thành " + NhiemVuLuyenPet);
					if (NhiemVuLuyenPet >= (int)numericUpDownPet.Value)
					{
						return true;
					}
					return false;
				}
				goto IL_05e3;
			}
			return false;
		}
		while (FindAndClick(hWnd, pathLuyenPet + "/Q_Pet_Huy.png", 5, 5, "Bỏ").HasValue)
		{
			FindAndClick(hWnd, pathLuyenPet + "/Q_Bo.png", 1, 1, "Bỏ");
			PressKey("Enter");
			delay_100ms(3);
		}
		PhucHoi(pathLuyenPet + "/Q_LuyenPet.png");
		return false;
	}

	private bool BangHoi()
	{
		//IL_0483: Unknown result type (might be due to invalid IL or missing references)
		//IL_0488: Unknown result type (might be due to invalid IL or missing references)
		//IL_0499: Unknown result type (might be due to invalid IL or missing references)
		//IL_049e: Unknown result type (might be due to invalid IL or missing references)
		//IL_04df: Unknown result type (might be due to invalid IL or missing references)
		//IL_04e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_04f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_04fa: Unknown result type (might be due to invalid IL or missing references)
		if (!FindPoint(hWnd, pathBangHoi + "/Q_BH_Xong.png").HasValue && !FindPoint(hWnd, pathBangHoi + "/Q_BH_QVLL.png").HasValue && !FindPoint(hWnd, pathBangHoi + "/Q_BH_Huy.png").HasValue)
		{
			if (!FindPoint(hWnd, pathBangHoi + "/Q_DaNhan.png").HasValue)
			{
				PressKey("ESC");
				PressKey("Q");
			}
			FindAndClick(hWnd, pathBangHoi + "/Q_DaNhan.png", 5, 1, "NV đã nhận");
		}
		while (FindAndClick(hWnd, pathBangHoi + "/Q_BH_Bat.png", 5, 5, "Bỏ").HasValue)
		{
			FindAndClick(hWnd, pathBangHoi + "/Q_Bo.png", 1, 1, "Bỏ");
			PressKey("Enter");
			delay_100ms(3);
		}
		if (FindPoint(hWnd, pathBangHoi + "/Q_BH_Xong.png").HasValue)
		{
			int num = 0;
			while (FindPoint(hWnd, pathBangHoi + "/Q_BH_Xong.png").HasValue && !FindPoint(hWnd, pathBangHoi + "/NPC_NV_RoiKhoi.png").HasValue)
			{
				FindAndClick(hWnd, pathBangHoi + "/Q_NV_Nhanh.png", 30, 46, "click");
				FindAndClick(hWnd, pathBangHoi + "/Q_NV_Nhanh3.png", 30, 46, "click");
				num++;
				if (num == 15)
				{
					Tele4(182.0, 133.0);
				}
				else if (num >= 25)
				{
					PhucHoi(pathBangHoi + "/Q_BangHoi.png");
					break;
				}
			}
			if (FindAndClick(hWnd, pathBangHoi + "/NPC_NV_RoiKhoi.png", 0, -116, "Q1").HasValue)
			{
				FindAndClick(hWnd, pathBangHoi + "/NPC_NV_RoiKhoi.png", 0, -116, "Q2");
				if (FindAndClick(hWnd, pathBangHoi + "/Xong.png", 1, 1, "Xong").HasValue)
				{
					PressKey("Enter");
					debugText("End_Line");
					NhiemVuBangHoi++;
					debugText("NV Bang Hoàn Thành " + NhiemVuBangHoi);
					if (NhiemVuBangHoi >= (int)numericUpDownBang.Value)
					{
						return true;
					}
				}
			}
			return false;
		}
		if (FindPoint(hWnd, pathBangHoi + "/Q_BH_QVLL.png").HasValue)
		{
			int num2 = 2;
			AutoControl.SendClickOnPosition(hWnd, 111, 25, (EMouseKey)0, 1);
			delay_100ms(10);
			AutoControl.SendClickOnPosition(hWnd, 111, 90, (EMouseKey)0, 1);
			delay_100ms(1);
			PressKey("ESC");
			PressKey("`");
			delay_100ms(10);
			while (num2 != 0)
			{
				int num3 = 0;
				while (WaitAvatar(hWnd))
				{
					System.IntPtr intPtr = hWnd;
					Point value = ViTri1.Value;
					int num4 = ((Point)(ref value)).X + 5;
					value = ViTri1.Value;
					AutoControl.SendClickOnPosition(intPtr, num4, ((Point)(ref value)).Y + 5 - 30, (EMouseKey)0, 1);
					delay_100ms(10);
					if (WaitAvatar(hWnd))
					{
						System.IntPtr intPtr2 = hWnd;
						value = ViTri2.Value;
						int num5 = ((Point)(ref value)).X + 5;
						value = ViTri2.Value;
						AutoControl.SendClickOnPosition(intPtr2, num5, ((Point)(ref value)).Y + 5 - 30, (EMouseKey)0, 1);
						delay_100ms(10);
						if (WaitAvatar(hWnd))
						{
							AutoControl.SendClickUpOnPosition(hWnd, 100, 70, (EMouseKey)0, 1);
							delay_100ms(5);
							num3++;
							if (num3 < 20)
							{
								continue;
							}
							goto IL_055b;
						}
						break;
					}
					break;
				}
				while (!WaitAvatar(hWnd))
				{
					FindAndClick(hWnd, pathBangHoi + "/Auto.png", 2, 2, "Auto");
				}
				delay_100ms(5);
				num2--;
				PressKey("`");
				continue;
				IL_055b:
				num2 = 1;
				break;
			}
			return false;
		}
		while (FindAndClick(hWnd, pathBangHoi + "/Q_BH_Huy.png", 5, 5, "Bỏ").HasValue)
		{
			FindAndClick(hWnd, pathBangHoi + "/Q_Bo.png", 1, 1, "Bỏ");
			PressKey("Enter");
			delay_100ms(3);
		}
		PhucHoi(pathBangHoi + "/Q_BangHoi.png");
		return false;
	}

	private bool ChayLuyenPet()
	{
		//IL_070d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0712: Unknown result type (might be due to invalid IL or missing references)
		//IL_071d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0722: Unknown result type (might be due to invalid IL or missing references)
		//IL_0816: Unknown result type (might be due to invalid IL or missing references)
		//IL_081b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0826: Unknown result type (might be due to invalid IL or missing references)
		//IL_082b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0894: Unknown result type (might be due to invalid IL or missing references)
		//IL_0899: Unknown result type (might be due to invalid IL or missing references)
		//IL_08a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_08a9: Unknown result type (might be due to invalid IL or missing references)
		FindAndClick(hWnd, pathTruMa + "/Boss_Tat.png", 1, 1, "X");
		FindAndClick(hWnd, pathTruMa + "/Boss_Tat.png", 1, 1, "X");
		if (Skip)
		{
			Skip = false;
			return true;
		}
		if (!FindPoint(hWnd, pathLuyenPet + "/Q_Pet_Xong.png").HasValue && !FindPoint(hWnd, pathLuyenPet + "/Q_Pet_Huy.png").HasValue && !FindPoint(hWnd, pathLuyenPet + "/Q_Pet_Bat.png").HasValue)
		{
			if (!FindPoint(hWnd, pathLuyenPet + "/Q_DaNhan.png").HasValue)
			{
				PressKey("ESC");
				PressKey("Q");
			}
			FindAndClick(hWnd, pathLuyenPet + "/Q_DaNhan.png", 5, 1, "NV đã nhận");
		}
		if (FindPoint(hWnd, pathLuyenPet + "/Q_Pet_Xong.png").HasValue)
		{
			int num = 0;
			int num2 = 0;
			if (luuTraQ != 999)
			{
				num2 = luuTraQ;
			}
			int num3 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoX);
			int num4 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoY);
			while (num3 == 0 && num4 == 0)
			{
				num3 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoX);
				num4 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoY);
				delay_100ms(5);
				debugText("Memory False!");
			}
			ViTriNhanVat_X = num3;
			ViTriNhanVat_Y = num4;
			bool flag = false;
			int num5 = 0;
			int num6 = num2;
			if (num2 == 0)
			{
				PressKey("ESC");
				PressKey("Q");
			}
			while (FindPoint(hWnd, pathLuyenPet + "/Q_Pet_Xong.png").HasValue && !FindPoint(hWnd, pathLuyenPet + "/NPC_NV_RoiKhoi.png").HasValue)
			{
				if (num2 != 7 && num2 != 22 && num2 != 37)
				{
					Bay();
					switch (num5)
					{
					case 0:
						num2 = 7;
						break;
					case 1:
						num2 = 7;
						break;
					case 2:
						num2 = 22;
						break;
					case 3:
						num2 = 22;
						break;
					case 4:
						num2 = 37;
						break;
					case 5:
						num2 = 37;
						break;
					}
					num5++;
				}
				PressKey("OK");
				FindAndClick(hWnd, pathTacVu + "/Khong.png", 2, 2, "không");
				AutoControl.SendClickUpOnPosition(hWnd, 456, 395 + num2 - 30, (EMouseKey)0, 1);
				delay_100ms(1);
				AutoControl.SendClickOnPosition(hWnd, 456, 395 + num2 - 30, (EMouseKey)0, 1);
				delay_100ms(1);
				AutoControl.SendClickOnPosition(hWnd, 456, 395 + num2 - 30, (EMouseKey)0, 1);
				delay_100ms(1);
				AutoControl.SendClickOnPosition(hWnd, 456, 395 + num2 - 30, (EMouseKey)0, 1);
				delay_100ms(3);
				debugText(num2 + " # " + num);
				if (!flag)
				{
					int num7 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoX);
					int num8 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoY);
					while (num7 == 0 && num8 == 0)
					{
						num7 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoX);
						num8 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoY);
						delay_100ms(5);
						debugText("Memory False!");
					}
					if (ViTriNhanVat_X == num7 && ViTriNhanVat_Y == num8)
					{
						num2 = ((num5 >= 6) ? (num2 + 1) : num6);
					}
					else
					{
						flag = true;
						luuTraQ = num2;
					}
				}
				if (num2 > 41)
				{
					num2 = -5;
					PressKey("ESC");
					FindAndClick(hWnd, pathTruMa + "/Q_TM.png", 1, 1, "X");
					PressKey("Q");
				}
				num++;
				if (num > 55)
				{
					PressKey("ESC");
					Bay();
					Bay();
					Bay();
					luuTraQ = 999;
					Tele2(100.0, 35.0);
					return false;
				}
			}
			delay_100ms(5);
			if (!FindPoint(hWnd, pathLuyenPet + "/NPC_NV_RoiKhoi.png").HasValue && FindPoint(hWnd, pathLuyenPet + "/Q_Bo.png").HasValue)
			{
				PressKey("ESC");
				Tele2(100.0, 35.0);
				return false;
			}
			PressKey("Q");
			while (true)
			{
				Point? val = FindPoint(hWnd, pathLuyenPet + "/NPC_NV_RoiKhoi.png");
				if (!val.HasValue)
				{
					break;
				}
				int num9 = 0;
				Point value;
				while (num9 < 5)
				{
					PressKey("OK");
					System.IntPtr intPtr = hWnd;
					value = val.Value;
					int x = ((Point)(ref value)).X;
					value = val.Value;
					AutoControl.SendClickUpOnPosition(intPtr, x, ((Point)(ref value)).Y + num9 * 25 - 117 - 30, (EMouseKey)0, 1);
					delay_100ms(5);
					if (FindPoint(hWnd, pathLuyenPet + "/Q_NVLQ.png").HasValue || FindPoint(hWnd, pathLuyenPet + "/Q_TTD.png").HasValue || FindPoint(hWnd, pathLuyenPet + "/Q_NPCDHT.png").HasValue || FindPoint(hWnd, pathLuyenPet + "/Q_NPCDHT2.png").HasValue)
					{
						goto IL_080d;
					}
					if (!FindPoint(hWnd, pathLuyenPet + "/Q_Tra_NV.png").HasValue)
					{
						num9++;
						continue;
					}
					goto IL_088b;
				}
				goto IL_09ae;
				IL_080d:
				System.IntPtr intPtr2 = hWnd;
				value = val.Value;
				int x2 = ((Point)(ref value)).X;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr2, x2, ((Point)(ref value)).Y + num9 * 25 - 117 - 30, (EMouseKey)0, 1);
				delay_100ms(5);
				continue;
				IL_09ae:
				PressKey("ESC");
				Tele2(100.0, 35.0);
				break;
				IL_088b:
				System.IntPtr intPtr3 = hWnd;
				value = val.Value;
				int x3 = ((Point)(ref value)).X;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr3, x3, ((Point)(ref value)).Y + num9 * 25 - 117 - 30, (EMouseKey)0, 1);
				delay_100ms(5);
				if (FindAndClick(hWnd, pathLuyenPet + "/Xong.png", 1, 1, "Xong").HasValue)
				{
					watchdogCounter = 0.0;
					luuTraQ = 999;
					PressKey("Enter");
					debugText("End_Line");
					NhiemVuLuyenPet++;
					debugText("NV Pet Hoàn Thành " + NhiemVuLuyenPet);
					if (NhiemVuLuyenPet >= (int)numericUpDownPet.Value)
					{
						stopWDT();
						return true;
					}
					return false;
				}
				goto IL_09ae;
			}
			return false;
		}
		if (FindAndClick(hWnd, pathLuyenPet + "/Q_Pet_Bat.png", 5, 5, "Bắt").HasValue)
		{
			int num10 = 0;
			while (!CheckPet(pathLuyenPet + "/Q_Pet.png"))
			{
				num10++;
				if (num10 > 3)
				{
					debugText("Pet chưa cập nhật");
					FindAndClick(hWnd, pathTruMa + "/Boss_Tat.png", 1, 1, "X");
					return true;
				}
				PressKey("ESC");
				debugText("Không thấy thông tin pet, check lại");
				PressKey("Q");
			}
		}
		else
		{
			if (FindAndClick(hWnd, pathLuyenPet + "/Q_Pet_Huy.png", 5, 5, "Chưa Xong").HasValue)
			{
				if (CheckVatPham(1))
				{
					return false;
				}
				if (CheckThuoc(1))
				{
					return false;
				}
				checkQ++;
				if (checkQ > 3)
				{
					debugText("chưa cập nhật Q");
					FindAndClick(hWnd, pathTruMa + "/Boss_Tat.png", 1, 1, "X");
					return true;
				}
				PressKey("ESC");
				Tele2(100.0, 35.0);
				return false;
			}
			int num11 = 0;
			while (!BoNVKhongLienQuan(pathLuyenPet + "/Q_Pet.png"))
			{
				num11++;
				delay_100ms(10);
				if (num11 > 10)
				{
					debugText("Không Thấy Nhiệm Vụ");
					FindAndClick(hWnd, pathTruMa + "/Boss_Tat.png", 1, 1, "X");
					return true;
				}
				debugText("ClearDebugText");
				debugText("Check Lần " + num11 + " / 9");
			}
		}
		return false;
	}

	private bool ChayBangHoi()
	{
		//IL_0906: Unknown result type (might be due to invalid IL or missing references)
		//IL_090b: Unknown result type (might be due to invalid IL or missing references)
		//IL_091c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0921: Unknown result type (might be due to invalid IL or missing references)
		//IL_0962: Unknown result type (might be due to invalid IL or missing references)
		//IL_0967: Unknown result type (might be due to invalid IL or missing references)
		//IL_0978: Unknown result type (might be due to invalid IL or missing references)
		//IL_097d: Unknown result type (might be due to invalid IL or missing references)
		FindAndClick(hWnd, pathTruMa + "/Boss_Tat.png", 1, 1, "X");
		FindAndClick(hWnd, pathTruMa + "/Boss_Tat.png", 1, 1, "X");
		if (Skip)
		{
			Skip = false;
			return true;
		}
		if (!FindPoint(hWnd, pathBangHoi + "/Q_BH_Xong.png").HasValue && !FindPoint(hWnd, pathBangHoi + "/Q_BH_QVLL.png").HasValue && !FindPoint(hWnd, pathBangHoi + "/Q_BH_Huy.png").HasValue)
		{
			if (!FindPoint(hWnd, pathBangHoi + "/Q_DaNhan.png").HasValue)
			{
				PressKey("ESC");
				PressKey("Q");
			}
			FindAndClick(hWnd, pathBangHoi + "/Q_DaNhan.png", 5, 1, "NV đã nhận");
		}
		if (FindPoint(hWnd, pathBangHoi + "/Q_BH_Xong.png").HasValue)
		{
			int num = 0;
			int num2 = 0;
			if (luuTraQ != 999)
			{
				num2 = luuTraQ - 1;
			}
			int num3 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoX);
			int num4 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoY);
			while (num3 == 0 && num4 == 0)
			{
				num3 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoX);
				num4 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoY);
				delay_100ms(5);
				debugText("Memory False!");
			}
			ViTriNhanVat_X = num3;
			ViTriNhanVat_Y = num4;
			bool flag = false;
			Image chupWindow = CaptureHelper.CaptureWindow(hWnd);
			int num5 = 0;
			int num6 = num2;
			if (num2 == 0)
			{
				PressKey("ESC");
				PressKey("Q");
			}
			while (FindPoint2(chupWindow, pathBangHoi + "/Q_BH_Xong.png").HasValue && !FindPoint2(chupWindow, pathBangHoi + "/NPC_NV_RoiKhoi.png").HasValue)
			{
				if (num2 != 2 && num2 != 30 && num2 != 31 && num2 != 32)
				{
					Bay();
					switch (num5)
					{
					case 0:
						num2 = 31;
						break;
					case 1:
						num2 = 31;
						break;
					case 2:
						num2 = 30;
						break;
					case 3:
						num2 = 30;
						break;
					case 4:
						num2 = 32;
						break;
					case 5:
						num2 = 32;
						break;
					case 6:
						num2 = 2;
						break;
					case 7:
						num2 = 2;
						break;
					}
					num5++;
				}
				PressKey("OK");
				FindAndClick(hWnd, pathTacVu + "/Khong.png", 2, 2, "không");
				AutoControl.SendClickUpOnPosition(hWnd, 456, 415 + num2 - 30, (EMouseKey)0, 1);
				delay_100ms(1);
				AutoControl.SendClickOnPosition(hWnd, 456, 415 + num2 - 30, (EMouseKey)0, 1);
				delay_100ms(1);
				AutoControl.SendClickOnPosition(hWnd, 456, 415 + num2 - 30, (EMouseKey)0, 1);
				delay_100ms(1);
				AutoControl.SendClickOnPosition(hWnd, 456, 415 + num2 - 30, (EMouseKey)0, 1);
				delay_100ms(3);
				debugText(num2 + " # " + num);
				if (!flag)
				{
					int num7 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoX);
					int num8 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoY);
					while (num7 == 0 && num8 == 0)
					{
						num7 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoX);
						num8 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoY);
						delay_100ms(5);
						debugText("Memory False!");
					}
					if (ViTriNhanVat_X == num7 && ViTriNhanVat_Y == num8)
					{
						num2 = ((num5 >= 8) ? (num2 + 1) : num6);
					}
					else
					{
						flag = true;
						luuTraQ = num2;
					}
				}
				if (num2 > 50)
				{
					num2 = 0;
					PressKey("ESC");
					FindAndClick(hWnd, pathTruMa + "/Q_TM.png", 1, 1, "X");
					PressKey("Q");
				}
				num++;
				if (num > 60)
				{
					PressKey("ESC");
					luuTraQ = 999;
					Tele2(180.0, 136.0);
					return false;
				}
				chupWindow = CaptureHelper.CaptureWindow(hWnd);
			}
			delay_100ms(5);
			if (FindAndClick(hWnd, pathBangHoi + "/NPC_NV_RoiKhoi.png", 0, -116, "Q1").HasValue)
			{
				FindAndClick(hWnd, pathBangHoi + "/NPC_NV_RoiKhoi.png", 0, -116, "Q2");
				if (FindAndClick(hWnd, pathBangHoi + "/Xong.png", 1, 1, "Xong").HasValue)
				{
					watchdogCounter = 0.0;
					luuTraQ = 999;
					PressKey("Enter");
					debugText("End_Line");
					NhiemVuBangHoi++;
					debugText("NV Bang Hoàn Thành " + NhiemVuBangHoi);
					if (NhiemVuBangHoi >= (int)numericUpDownBang.Value)
					{
						if (Settings.Default.chat)
						{
							Chat("Xong Nhiệm Vụ Bang Hội!", "Bang");
						}
						stopWDT();
						return true;
					}
				}
			}
			return false;
		}
		if (FindAndClick(hWnd, pathBangHoi + "/Q_BH_Bat.png", 5, 5, "Bắt").HasValue)
		{
			int num9 = 0;
			while (!CheckPet(pathBangHoi + "/Q_Bang.png"))
			{
				num9++;
				if (num9 > 3)
				{
					debugText("Pet chưa cập nhật");
					FindAndClick(hWnd, pathTruMa + "/Boss_Tat.png", 1, 1, "X");
					return true;
				}
				PressKey("ESC");
				debugText("Không thấy thông tin pet, check lại");
				PressKey("Q");
			}
			VaoMapBangHoi();
		}
		else
		{
			if (FindPoint(hWnd, pathBangHoi + "/Q_BH_QVLL.png").HasValue)
			{
				int num10 = 2;
				AutoControl.SendClickOnPosition(hWnd, 111, 25, (EMouseKey)0, 1);
				delay_100ms(10);
				AutoControl.SendClickOnPosition(hWnd, 111, 90, (EMouseKey)0, 1);
				delay_100ms(1);
				PressKey("ESC");
				PressKey("`");
				delay_100ms(10);
				while (num10 != 0)
				{
					int num11 = 0;
					while (WaitAvatar(hWnd))
					{
						PressKey("OK");
						System.IntPtr intPtr = hWnd;
						Point value = ViTri1.Value;
						int num12 = ((Point)(ref value)).X + 5;
						value = ViTri1.Value;
						AutoControl.SendClickOnPosition(intPtr, num12, ((Point)(ref value)).Y + 5 - 30, (EMouseKey)0, 1);
						delay_100ms(10);
						if (WaitAvatar(hWnd))
						{
							System.IntPtr intPtr2 = hWnd;
							value = ViTri2.Value;
							int num13 = ((Point)(ref value)).X + 5;
							value = ViTri2.Value;
							AutoControl.SendClickOnPosition(intPtr2, num13, ((Point)(ref value)).Y + 5 - 30, (EMouseKey)0, 1);
							delay_100ms(10);
							if (WaitAvatar(hWnd))
							{
								AutoControl.SendClickUpOnPosition(hWnd, 100, 70, (EMouseKey)0, 1);
								delay_100ms(5);
								num11++;
								if (num11 < 20)
								{
									continue;
								}
								goto IL_09de;
							}
							break;
						}
						break;
					}
					while (!WaitAvatar(hWnd))
					{
						FindAndClick(hWnd, pathBangHoi + "/Auto.png", 2, 2, "Auto");
						PressKey("ESC");
					}
					delay_100ms(5);
					num10--;
					PressKey("`");
					continue;
					IL_09de:
					num10 = 1;
					break;
				}
				return false;
			}
			if (FindPoint(hWnd, pathBangHoi + "/Q_BH_Huy.png").HasValue)
			{
				if (!CheckVatPham(3) && !CheckThuoc(3))
				{
					debugText("chưa cập nhật Q");
					FindAndClick(hWnd, pathTruMa + "/Boss_Tat.png", 1, 1, "X");
					if (Settings.Default.chat)
					{
						Chat("Không tìm thấy thông tin Nhiệm Vụ", "Bang");
					}
					return true;
				}
				VaoMapBangHoi();
				return false;
			}
			PressKey("OK");
			int num14 = 0;
			while (!BoNVKhongLienQuan(pathBangHoi + "/Q_Bang.png"))
			{
				num14++;
				delay_100ms(10);
				if (num14 >= 10)
				{
					debugText("Không Thấy Nhiệm Vụ");
					FindAndClick(hWnd, pathTruMa + "/Boss_Tat.png", 1, 1, "X");
					return true;
				}
				debugText("ClearDebugText");
				debugText("Check Lần " + num14 + " / 9");
			}
		}
		return false;
	}

	private void VaoMapBangHoi()
	{
		while (true)
		{
			Xuong();
			Xuong();
			PhuToiMap("Đông Huyền Thành", 185.0, 16.0);
			PressKey("OK");
			delay_100ms(5);
			if (!FindPoint(hWnd, pathKhac + "/BH_check.png").HasValue)
			{
				PhuToiMap("Đông Huyền Thành", 185.0, 16.0);
			}
			int num = 0;
			while (true)
			{
				if (!WaitAvatar(hWnd))
				{
					PressKey("OK");
					continue;
				}
				delay_100ms(20);
				if (!FindPoint(hWnd, pathBangHoi + "/NPC.png").HasValue)
				{
					PressKey("OK");
					num++;
					if (num > 2)
					{
						break;
					}
					AutoControl.SendClickOnPosition(hWnd, 378, 270, (EMouseKey)0, 1);
					delay_100ms(2);
					AutoControl.SendClickOnPosition(hWnd, 378, 146, (EMouseKey)0, 1);
					delay_100ms(2);
					if (FindPoint(hWnd, pathLuyenPet + "/NPC_NV_RoiKhoi.png").HasValue)
					{
						PressKey("ESC");
						return;
					}
					delay_100ms(50);
					while (!WaitAvatar(hWnd))
					{
						PressKey("OK");
					}
					continue;
				}
				return;
			}
		}
	}

	private bool NhanQ(string NhiemVuNhan)
	{
		//IL_00c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c5: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_00de: Unknown result type (might be due to invalid IL or missing references)
		//IL_0176: Unknown result type (might be due to invalid IL or missing references)
		//IL_017b: Unknown result type (might be due to invalid IL or missing references)
		//IL_018f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0194: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_01fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_020c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0211: Unknown result type (might be due to invalid IL or missing references)
		//IL_0235: Unknown result type (might be due to invalid IL or missing references)
		//IL_023a: Unknown result type (might be due to invalid IL or missing references)
		//IL_024b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0250: Unknown result type (might be due to invalid IL or missing references)
		//IL_0116: Unknown result type (might be due to invalid IL or missing references)
		//IL_011b: Unknown result type (might be due to invalid IL or missing references)
		//IL_012f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0134: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_02cf: Unknown result type (might be due to invalid IL or missing references)
		//IL_02da: Unknown result type (might be due to invalid IL or missing references)
		//IL_02df: Unknown result type (might be due to invalid IL or missing references)
		//IL_0341: Unknown result type (might be due to invalid IL or missing references)
		//IL_0346: Unknown result type (might be due to invalid IL or missing references)
		//IL_0351: Unknown result type (might be due to invalid IL or missing references)
		//IL_0356: Unknown result type (might be due to invalid IL or missing references)
		//IL_03b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_03b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_03c1: Unknown result type (might be due to invalid IL or missing references)
		//IL_03c6: Unknown result type (might be due to invalid IL or missing references)
		Bay();
		Bay();
		Bay();
		while (true)
		{
			PressKey("ESC");
			PressKey("Z");
			delay_100ms(10);
			bool flag = true;
			while (true)
			{
				FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 2, 2, "Press");
				FindAndClick(hWnd, pathKhac + "/Log_OK.png", 2, 2, "Press OK");
				Point? val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
				if (!val.HasValue)
				{
					break;
				}
				System.IntPtr intPtr = hWnd;
				Point value = val.Value;
				int num = ((Point)(ref value)).X + 216 - 84;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr, num, ((Point)(ref value)).Y + 104 - 56 - 30, (EMouseKey)0, 1);
				delay_100ms(5);
				if (flag)
				{
					for (int i = 0; i < 6; i++)
					{
						System.IntPtr intPtr2 = hWnd;
						value = val.Value;
						int num2 = ((Point)(ref value)).X + 695 - 84;
						value = val.Value;
						AutoControl.SendClickOnPosition(intPtr2, num2, ((Point)(ref value)).Y + 147 - 56 - 30, (EMouseKey)0, 1);
						delay_100ms(5);
					}
					flag = false;
				}
				System.IntPtr intPtr3 = hWnd;
				value = val.Value;
				int num3 = ((Point)(ref value)).X + 695 - 84;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr3, num3, ((Point)(ref value)).Y + 400 - 56 - 30, (EMouseKey)0, 1);
				delay_100ms(5);
				Point? val2 = FindPoint(hWnd, pathLuyenPet + "/Q_NPC4.png");
				if (!val2.HasValue)
				{
					continue;
				}
				System.IntPtr intPtr4 = hWnd;
				value = val2.Value;
				int num4 = ((Point)(ref value)).X + 80;
				value = val2.Value;
				AutoControl.SendClickOnPosition(intPtr4, num4, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
				delay_100ms(2);
				System.IntPtr intPtr5 = hWnd;
				value = val2.Value;
				int num5 = ((Point)(ref value)).X + 320;
				value = val2.Value;
				AutoControl.SendClickOnPosition(intPtr5, num5, ((Point)(ref value)).Y - 17 - 30, (EMouseKey)0, 1);
				delay_100ms(5);
				while (true)
				{
					Point? val3 = FindPoint(hWnd, pathLuyenPet + "/NPC_NV_RoiKhoi.png");
					if (!val3.HasValue)
					{
						break;
					}
					int num6 = 0;
					while (true)
					{
						if (num6 < 5)
						{
							System.IntPtr intPtr6 = hWnd;
							value = val3.Value;
							int x = ((Point)(ref value)).X;
							value = val3.Value;
							AutoControl.SendClickUpOnPosition(intPtr6, x, ((Point)(ref value)).Y + num6 * 25 - 117 - 30, (EMouseKey)0, 1);
							delay_100ms(3);
							if (FindPoint(hWnd, pathLuyenPet + "/Q_NVLQ.png").HasValue)
							{
								break;
							}
							if (!FindPoint(hWnd, NhiemVuNhan).HasValue)
							{
								num6++;
								continue;
							}
							System.IntPtr intPtr7 = hWnd;
							value = val3.Value;
							int x2 = ((Point)(ref value)).X;
							value = val3.Value;
							AutoControl.SendClickOnPosition(intPtr7, x2, ((Point)(ref value)).Y + num6 * 25 - 117 - 30, (EMouseKey)0, 1);
							delay_100ms(10);
							if (FindAndClick(hWnd, pathAutoNhanNVPB + "/Nhan.png", 1, 1, "Nhận").HasValue)
							{
								PressKey("Enter");
								debugText("End_Line");
								return false;
							}
							delay_100ms(10);
							if (FindAndClick(hWnd, pathLuyenPet + "/Xong.png", 1, 1, "Xong").HasValue)
							{
								PressKey("Enter");
								debugText("End_Line");
								return true;
							}
							delay_100ms(10);
						}
						return false;
					}
					System.IntPtr intPtr8 = hWnd;
					value = val3.Value;
					int x3 = ((Point)(ref value)).X;
					value = val3.Value;
					AutoControl.SendClickOnPosition(intPtr8, x3, ((Point)(ref value)).Y + num6 * 25 - 117 - 30, (EMouseKey)0, 1);
					delay_100ms(5);
				}
			}
		}
	}

	private bool CheckPet(string LoaiNV)
	{
		//IL_0197: Unknown result type (might be due to invalid IL or missing references)
		//IL_01cd: Unknown result type (might be due to invalid IL or missing references)
		//IL_026f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0274: Unknown result type (might be due to invalid IL or missing references)
		//IL_029f: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_02cf: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_038b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0390: Unknown result type (might be due to invalid IL or missing references)
		//IL_039f: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ff: Unknown result type (might be due to invalid IL or missing references)
		//IL_0304: Unknown result type (might be due to invalid IL or missing references)
		//IL_0320: Unknown result type (might be due to invalid IL or missing references)
		//IL_0325: Unknown result type (might be due to invalid IL or missing references)
		//IL_04da: Unknown result type (might be due to invalid IL or missing references)
		//IL_04df: Unknown result type (might be due to invalid IL or missing references)
		//IL_051c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0521: Unknown result type (might be due to invalid IL or missing references)
		string text = "";
		Point[] array = (Point[])(object)new Point[20];
		int num = -1;
		int num2 = 0;
		int num3 = 0;
		if (luuCheckPet != 999)
		{
			num2 = luuCheckPet - 1;
		}
		while (true)
		{
			int num4 = num2;
			while (true)
			{
				if (num4 < 20)
				{
					FindAndClick(hWnd, pathTacVu + "/Khong.png", 2, 2, "không");
					AutoControl.SendClickUpOnPosition(hWnd, 392, 354 + num4 * 5 - 30, (EMouseKey)0, 1);
					delay_100ms(2);
					AutoControl.SendClickOnPosition(hWnd, 392, 354 + num4 * 5 - 30, (EMouseKey)0, 1);
					delay_100ms(5);
					if (FindPoint(hWnd, pathTruMa + "/Boss_Tat.png").HasValue)
					{
						luuCheckPet = num4;
						debugText("checkP #" + num4);
						delay_100ms(30);
						Image val = CaptureHelper.CaptureWindow(hWnd);
						Rectangle val2 = default(Rectangle);
						((Rectangle)(ref val2)).X = 440;
						((Rectangle)(ref val2)).Y = 406;
						((Rectangle)(ref val2)).Width = 39;
						((Rectangle)(ref val2)).Height = 41;
						Bitmap val3 = CaptureHelper.CropImage(val, val2);
						debugText("check pet...");
						bool flag = false;
						bool petBay = false;
						string text2 = "null";
						for (int i = 0; i < 41; i++)
						{
							Bitmap image = ImageScanOpenCV.GetImage(pathLuyenPet + "/Q-check/checkmap" + i + ".png");
							Point? val4 = ImageScanOpenCV.FindOutPoint(image, val3, 0.99);
							int viTri = 0;
							if (!val4.HasValue)
							{
								continue;
							}
							debugText("Ảnh : checkmap" + i + " - " + ((object)val4/*cast due to .constrained prefix*/).ToString());
							Point value = val4.Value;
							if (((Point)(ref value)).X < 40)
							{
								viTri = 0;
								debugText("ô 1");
							}
							else
							{
								value = val4.Value;
								if (((Point)(ref value)).X < 90)
								{
									viTri = 1;
									debugText("ô 2");
								}
								else
								{
									value = val4.Value;
									if (((Point)(ref value)).X < 170)
									{
										viTri = 2;
										debugText("ô 3");
									}
									else
									{
										value = val4.Value;
										if (((Point)(ref value)).X < 200)
										{
											viTri = 3;
											value = val4.Value;
											if (((Point)(ref value)).Y < 90)
											{
												i = 41;
												debugText("ô 5");
											}
											else
											{
												debugText("ô 4");
											}
										}
										else
										{
											debugText("ô null?");
										}
									}
								}
							}
							text = text + LocTenPet(i, viTri) + "\r\n";
							array[++num] = LocViTri(i, 0);
							array[++num] = LocViTri(i, 1);
							text2 = LocTenMap(i, viTri);
							flag = true;
							if (i >= 38 && i < 41)
							{
								petBay = true;
							}
						}
						if (flag)
						{
							Xuong();
							Xuong();
							Xuong();
							while (true)
							{
								AutoControl.SendClickUpOnPosition(hWnd, 579, 403, (EMouseKey)0, 1);
								delay_100ms(2);
								AutoControl.SendClickOnPosition(hWnd, 579, 403, (EMouseKey)0, 1);
								delay_100ms(3);
								FindAndClick(hWnd, pathIconBatPet + "/Co.png", 2, 2, "có");
								if (WaitAvatar(hWnd))
								{
									break;
								}
								delay_100ms(5);
							}
							FindAndClick(hWnd, pathTruMa + "/Boss_Tat.png", 1, 1, "X");
							debugText(text);
							Point[] array2 = (Point[])(object)new Point[(num + 1) / 2];
							int num5 = 0;
							for (int j = 0; j < (num + 1) / 2; j++)
							{
								array2[j] = array[num5];
								num5 += 2;
							}
							Point[] array3 = (Point[])(object)new Point[(num + 1) / 2];
							num5 = 1;
							for (int k = 0; k < (num + 1) / 2; k++)
							{
								array3[k] = array[num5];
								num5 += 2;
							}
							debugText("Vị Trí 1");
							for (int l = 0; l < (num + 1) / 2; l++)
							{
								debugText(((object)System.Runtime.CompilerServices.Unsafe.As<Point, Point>(ref array2[l])/*cast due to .constrained prefix*/).ToString());
							}
							debugText("Vị Trí 2");
							for (int m = 0; m < (num + 1) / 2; m++)
							{
								debugText(((object)System.Runtime.CompilerServices.Unsafe.As<Point, Point>(ref array3[m])/*cast due to .constrained prefix*/).ToString());
							}
							delay_100ms(10);
							if (BatPet(text, petBay, array2, array3))
							{
								return true;
							}
						}
						FindAndClick(hWnd, pathTruMa + "/Boss_Tat.png", 1, 1, "X");
						num3++;
						if (num3 > 2)
						{
							return false;
						}
						BoNVKhongLienQuan(LoaiNV);
						PressKey("ESC");
						delay_100ms(5);
						PressKey("Q");
						delay_100ms(2);
						break;
					}
					num4++;
					continue;
				}
				FindAndClick(hWnd, pathTacVu + "/Khong.png", 2, 2, "không");
				delay_100ms(3);
				PressKey("OK");
				delay_100ms(5);
				num2 = 0;
				if (Skip)
				{
					return true;
				}
				break;
			}
		}
	}

	private bool CheckVatPham2()
	{
		//IL_0030: Unknown result type (might be due to invalid IL or missing references)
		//IL_0064: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0101: Unknown result type (might be due to invalid IL or missing references)
		//IL_0164: Unknown result type (might be due to invalid IL or missing references)
		//IL_0169: Unknown result type (might be due to invalid IL or missing references)
		//IL_0117: Unknown result type (might be due to invalid IL or missing references)
		//IL_011c: Unknown result type (might be due to invalid IL or missing references)
		//IL_01cd: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0182: Unknown result type (might be due to invalid IL or missing references)
		//IL_0187: Unknown result type (might be due to invalid IL or missing references)
		//IL_0138: Unknown result type (might be due to invalid IL or missing references)
		//IL_013d: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ee: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a3: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a8: Unknown result type (might be due to invalid IL or missing references)
		AutoControl.SendClickOnPosition(hWnd, 835, 200, (EMouseKey)0, 1);
		delay_100ms(10);
		Image val = CaptureHelper.CaptureWindow(hWnd);
		Rectangle val2 = default(Rectangle);
		((Rectangle)(ref val2)).X = 625;
		((Rectangle)(ref val2)).Y = 264;
		((Rectangle)(ref val2)).Width = 15;
		((Rectangle)(ref val2)).Height = 8;
		Bitmap val3 = CaptureHelper.CropImage(val, val2);
		((Image)val3).Save("vatpham.png");
		debugText("check vật phẩm...");
		int num = 35;
		Bitmap image = ImageScanOpenCV.GetImage(pathLuyenPet + "/Q-check/checkmap" + num + ".png");
		Point? val4 = ImageScanOpenCV.FindOutPoint(image, val3, 0.9);
		int num2 = 0;
		if (val4.HasValue)
		{
			debugText("Ảnh : checkmap" + num + " - " + ((object)val4/*cast due to .constrained prefix*/).ToString());
			Point value = val4.Value;
			if (((Point)(ref value)).X < 120)
			{
				value = val4.Value;
				if (((Point)(ref value)).Y < 30)
				{
					num2 = 1;
				}
				else
				{
					value = val4.Value;
					num2 = ((((Point)(ref value)).Y >= 80) ? 7 : 4);
				}
			}
			else
			{
				value = val4.Value;
				if (((Point)(ref value)).X < 250)
				{
					value = val4.Value;
					if (((Point)(ref value)).Y < 30)
					{
						num2 = 2;
					}
					else
					{
						value = val4.Value;
						num2 = ((((Point)(ref value)).Y >= 80) ? 8 : 5);
					}
				}
				else
				{
					value = val4.Value;
					if (((Point)(ref value)).Y < 30)
					{
						num2 = 3;
					}
					else
					{
						value = val4.Value;
						num2 = ((((Point)(ref value)).Y >= 80) ? 9 : 6);
					}
				}
			}
			DiMuaVatPhamVaThuoc("Đông Huyền Thành", 300, 245, 666, 513, num2, 1);
			return true;
		}
		return false;
	}

	private bool CheckVatPham(int SoLuong)
	{
		//IL_0183: Unknown result type (might be due to invalid IL or missing references)
		//IL_01be: Unknown result type (might be due to invalid IL or missing references)
		int num = 0;
		if (luuCheckVP != 999)
		{
			num = luuCheckVP - 1;
		}
		do
		{
			for (int i = num; i < 14; i++)
			{
				FindAndClick(hWnd, pathTacVu + "/Khong.png", 2, 2, "không");
				AutoControl.SendClickUpOnPosition(hWnd, 364, 354 + i * 5 - 30, (EMouseKey)0, 1);
				delay_100ms(2);
				AutoControl.SendClickOnPosition(hWnd, 364, 354 + i * 5 - 30, (EMouseKey)0, 1);
				delay_100ms(5);
				if (!FindPoint(hWnd, pathTruMa + "/Boss_Tat.png").HasValue)
				{
					continue;
				}
				luuCheckVP = i;
				debugText("checkV #" + i);
				delay_100ms(30);
				Image val = CaptureHelper.CaptureWindow(hWnd);
				Rectangle val2 = default(Rectangle);
				((Rectangle)(ref val2)).X = 350;
				((Rectangle)(ref val2)).Y = 250;
				((Rectangle)(ref val2)).Width = 350;
				((Rectangle)(ref val2)).Height = 400;
				Bitmap chupWindow = CaptureHelper.CropImage(val, val2);
				debugText("check vật phẩm...");
				int num2 = 0;
				for (int j = 52; j < 61; j++)
				{
					Point? val3 = FindPoint2((Image)(object)chupWindow, pathLuyenPet + "/Q-check/checkmap" + j + ".png");
					if (val3.HasValue)
					{
						FindAndClick(hWnd, pathTruMa + "/Boss_Tat.png", 1, 1, "X");
						debugText("Ảnh : checkmap" + j + " - " + ((object)val3/*cast due to .constrained prefix*/).ToString());
						num2 = j - 52 + 1;
						DiMuaVatPhamVaThuoc("Đông Huyền Thành", 300, 245, 666, 513, num2, SoLuong);
						return true;
					}
				}
				num2 = 0;
				for (int k = 61; k < 66; k++)
				{
					Point? val4 = FindPoint2((Image)(object)chupWindow, pathLuyenPet + "/Q-check/checkmap" + k + ".png");
					if (val4.HasValue)
					{
						FindAndClick(hWnd, pathTruMa + "/Boss_Tat.png", 1, 1, "X");
						debugText("Ảnh : checkmap" + k + " - " + ((object)val4/*cast due to .constrained prefix*/).ToString());
						num2 = k - 61 + 1;
						DiMuaVatPhamVaThuoc("Xuất Vân Thôn", 59, 29, 765, 387, num2, SoLuong);
						return true;
					}
				}
				return false;
			}
			FindAndClick(hWnd, pathTacVu + "/Khong.png", 2, 2, "không");
			delay_100ms(3);
			PressKey("OK");
			delay_100ms(5);
			num = 0;
		}
		while (!Skip);
		return true;
	}

	private bool CheckThuoc(int SoLuong)
	{
		//IL_0183: Unknown result type (might be due to invalid IL or missing references)
		//IL_01be: Unknown result type (might be due to invalid IL or missing references)
		int num = 0;
		if (luuCheckThuoc != 999)
		{
			num = luuCheckThuoc - 1;
		}
		do
		{
			for (int i = num; i < 14; i++)
			{
				FindAndClick(hWnd, pathTacVu + "/Khong.png", 2, 2, "không");
				AutoControl.SendClickUpOnPosition(hWnd, 392, 354 + i * 5 - 30, (EMouseKey)0, 1);
				delay_100ms(2);
				AutoControl.SendClickOnPosition(hWnd, 392, 354 + i * 5 - 30, (EMouseKey)0, 1);
				delay_100ms(5);
				if (!FindPoint(hWnd, pathTruMa + "/Boss_Tat.png").HasValue)
				{
					continue;
				}
				luuCheckThuoc = i;
				debugText("checkT #" + i);
				delay_100ms(30);
				Image val = CaptureHelper.CaptureWindow(hWnd);
				Rectangle val2 = default(Rectangle);
				((Rectangle)(ref val2)).X = 350;
				((Rectangle)(ref val2)).Y = 250;
				((Rectangle)(ref val2)).Width = 350;
				((Rectangle)(ref val2)).Height = 400;
				Bitmap chupWindow = CaptureHelper.CropImage(val, val2);
				debugText("check thuốc...");
				int num2 = 0;
				for (int j = 41; j < 52; j++)
				{
					Point? val3 = FindPoint2((Image)(object)chupWindow, pathLuyenPet + "/Q-check/checkmap" + j + ".png");
					if (!val3.HasValue)
					{
						continue;
					}
					FindAndClick(hWnd, pathTruMa + "/Boss_Tat.png", 1, 1, "X");
					debugText("Ảnh : checkmap" + j + " - " + ((object)val3/*cast due to .constrained prefix*/).ToString());
					num2 = j - 41 + 1;
					if (j < 48)
					{
						DiMuaVatPhamVaThuoc("Tiên Lạp Thành", 392, 31, 675, 435, num2, SoLuong);
					}
					else
					{
						switch (j)
						{
						case 48:
							num2 = 1;
							break;
						case 49:
							num2 = 2;
							break;
						case 50:
							num2 = 4;
							break;
						case 51:
							num2 = 5;
							break;
						}
						DiMuaVatPhamVaThuoc("Đông Huyền Thành", 192, 22, 746, 316, num2, SoLuong);
					}
					return true;
				}
				return false;
			}
			FindAndClick(hWnd, pathTacVu + "/Khong.png", 2, 2, "không");
			delay_100ms(3);
			PressKey("OK");
			delay_100ms(5);
			num = 0;
		}
		while (!Skip);
		return true;
	}

	private string LocTenPet(int checkmap, int ViTri)
	{
		string[,] array = new string[42, 4]
		{
			{ "TTD_Nấm Đỏ", "TTD_Tiểu Sơn Quái", "TTD_Nấm Kim Điệp", "TTD_Hỏa Kê" },
			{ "VDD_Nâ\u0301m Lu\u0323c", "VDD_Tiểu Cổ Thụ", "VDD_Nấm Đông Cô", "VDD_Thất Vị Kê" },
			{ "HKM_Cổ Thụ Khô Cằn", "HKM_Ấu Cương Thi", "HKM_U Hồn Ma Nữ", "HKM_Khổng Lồ Sa Mạc" },
			{ "LDT_Nấm Ăn Thịt", "LDT_Mã Não Tinh", "LDT_Hấp Huyết Hải Tinh", "LDT_Lê Dương Hồ Tặc" },
			{ "LDN_Ếch Xanh Medusa", "LDN_Bạch Tuộc Độc", "LDN_Ốc Đội Trưởng", "LDN_Thạch Hải Tinh" },
			{ "NPL_Ong Cửu Li", "NPL_Hồ Điệp", "NPL_Cây Xương Rồng", "NPL_Hồ Ruồi" },
			{ "QCD_Búp Bê Đầu To", "QCD_Trúc Yêu", "QCD_Thỏ Chiến Tướng", "QCD_Cây Nắp Ấm" },
			{ "KTD_Tiểu Thái Dương", "KTD_Bối Long", "KTD_Tí Hon Đào Đất", "KTD_Bò Cạp Tím" },
			{ "LLM_Mèo Yêu Tinh Nghịch", "LLM_Gấu Trúc Hồ Lô", "LLM_Lan Thảo Tinh", "LLM_Kiến Miệng Rộng" },
			{ "PMC_Thiên Diện Quái", "PMC_Ma Linh", "PMC_Yêu Hồ", "PMC_Phục Ma Thủ Vệ" },
			{ "MQT_Mê Hồn Giáo Chủ", "MQT_Rùa Nika", "MQT_Hải Dương Nữ", "MQT_Cua Yêu" },
			{ "TDC_Thánh Kiếm", "TDC_Mộng Lão Ông", "TDC_Thần Quan Mất Trí", "TDC_Lợi Trảo Long" },
			{ "TUD_Sứ Giả Thánh Quang", "TUD_Chim Ưng Cổ", "TUD_Bạch Kim Thuẫn", "TUD_Dực Long" },
			{ "TLC_Độc Nhãn Ốc Đảo", "TLC_Sa Tặc Cuồng Phong", "TLC_Khổng Lồ Thiên Vân", "TLC_Cát Hải Tinh" },
			{ "KBN_Bà Ngoại Sói", "KBN_Thỏ Điên Hoang Loạn", "KBN_Sơn Quái Hoang Mạc", "KBN_Chiến Sĩ Sói" },
			{ "CDM_Cướp Mộ", "CDM_Hề Ác Ma", "CDM_Vong Linh Viễn Cổ", "CDM_Xà Yêu" },
			{ "CPC_Sư Tử Khổng Lồ", "CPC_Ma Cát", "CPC_Xương Rồng Tinh", "CPC_Nham Quái" },
			{ "DVD_Nhện Độc Đỏ", "DVD_Hỏa Cơ Giáp", "DVD_Thầy Bắt Quỷ", "DVD_Ma Thạch Tượng" },
			{ "CTM_Sylph", "CTM_Bàn Thạch Long", "CTM_Tung Thạch Gia", "CTM_Vong Linh Thuẫn" },
			{ "HCD_Cánh Tay Viễn Cổ", "HCD_Thạch Bia Tinh", "HCD_Bọ Cạp Răng Độc", "HCD_Sứ Giả Địa Ngục" },
			{ "VLS_Cự Phong Thần Tử", "VLS_Hồ Tinh", "VLS_Quỷ Ham Ăn", "VLS_Tí Hon Đốn Gỗ" },
			{ "TTL_Khâu Lăng Sơn Quái", "TTL_Nấm Huyết Sắc", "TTL_Gâ\u0301u Tru\u0301c", "TTL_Gấu Đen Khổng Lồ" },
			{ "QBN_Lang Bì Dương", "QBN_Cổ Thụ Lá Khô", "QBN_Độc Nhãn Tinh", "QBN_Lão Cổ Thụ" },
			{ "LTD_Gấu Mật", "LTD_Hổ Bì Dương Xanh", "LTD_Độc Nhãn Da Xanh", "LTD_Gấu Tuyết" },
			{ "AVC_Yêu Hoa Thất Hồn", "AVC_Yêu Hoa Diệp Hồn", "AVC_Yêu Hoa Mê Hoặc", "AVC_Mèo Kính Đen" },
			{ "DXV_Nâ\u0301m Xanh", "DXV_Thỏ Lưu Manh", "DXV_Kẻ Lang Thang", "DXV_Nấm Bướm Hồng" },
			{ "LDB_Tiểu Hải Tinh", "LDB_Bạch Tuộc Lục", "LDB_Thủy Lam Bọt", "LDB_Ốc Tiểu Binh" },
			{ "LDD_Bá Vương Hải Tinh", "LDD_Bạch Tuộc Xanh", "LDD_Phỉ Thúy Tinh", "LDD_Ốc Vệ Sĩ" },
			{ "TKN_Tuần Binh Sói Mẹ", "TKN_Gấu Bùn", "TKN_Nấm Cực Độc", "TKN_Thủ Vệ Sói Mẹ" },
			{ "BTN_Chuột Tuyết Mạo Hiểm", "BTN_Băng Tinh Bướng Bỉnh", "BTN_Tuyết Thú", "BTN_Lang Nha Vương" },
			{ "TLM_Băng Cung Chiến Sĩ", "TLM_Tuyết Vực Mai Yêu", "TLM_Thủy Long", "TLM_Mao Mao Cầu" },
			{ "DCM_Sứ Giả Băng Tuyết", "DCM_Người Máy Navi", "DCM_Tốc Navi", "DCM_Tinh Linh Cực Quang" },
			{ "CDM_Samael", "HKM_Asmodeus", "NPL_Belphegor", "LDN_Beelzebub" },
			{ "TTD_Khổng Lồ Lex", "TTD_Hải Tinh Tử Thần", "TTD_Phù Thủy Đen", "TTD_Hercules" },
			{ "VDC_Ếch Độc Đầm Lầy", "VDC_Dơi U Minh", "VDC_Thợ Săn Cá Mập", "VDC_Xà Yêu Hắc Ám" },
			{ "MTT_Tuyết Thú Mã Não", "MTT_Cáo Đen Tuyết Nguyên", "MTT_Thợ Săn Eskimos", "MTT_Cơ Giáp Phá Băng Loại 300" },
			{ "TPC_Cua Kỳ Quái", "TPC_Dây Rong", "TPC_Cốt Cá", "TPC_Thủy Quái Răng Nhọn" },
			{ "MHL_Bạo Liệt Long", "MHL_Người Rơm", "MHL_Tí Hon Rừng Rậm", "MHL_Gấu Mật Mị Hoặc" },
			{ "TDM_Chuồn Chuồn Gió", "TDM_Bươm Bướm Xinh", "TDM_Tuần Lộc Mị Ảnh", "TDM_Ma Xà" },
			{ "TKT_Gấu Kungfu", "TKT_Thiên Không Long", "TKT_Thiên Không Nấm", "TKT_Chuột Ninja" },
			{ "DLT_Diêu Linh Chiến Sĩ", "DLT_Diêu Linh Danh Y", "DLT_Diêu Linh Cung Thủ", "DLT_Diêu Linh Tiểu Đội Trưởng" },
			{ "LDN_Beelzebub", "LDN_Beelzebub", "LDN_Beelzebub", "LDT_Mammon" }
		};
		return array[checkmap, ViTri];
	}

	private string LocTenMap(int ViTricheckmap, int ViTri)
	{
		string[,] array = new string[42, 4]
		{
			{ "Thiện Tĩnh Địa", "Thiện Tĩnh Địa", "Thiện Tĩnh Địa", "Thiện Tĩnh Địa" },
			{ "Vân Đài", "Vân Đài", "Vân Đài", "Vân Đài" },
			{ "Hư Không Mạc", "Hư Không Mạc", "Hư Không Mạc", "Hư Không Mạc" },
			{ "Lê Dương Thôn", "Lê Dương Thôn", "Lê Dương Thôn", "Lê Dương Thôn" },
			{ "Lê Dương Nam", "Lê Dương Nam", "Lê Dương Nam", "Lê Dương Nam" },
			{ "Ngọc Phong Lâm", "Ngọc Phong Lâm", "Ngọc Phong Lâm", "Ngọc Phong Lâm" },
			{ "Quân Cổ Đạo", "Quân Cổ Đạo", "Quân Cổ Đạo", "Quân Cổ Đạo" },
			{ "Kỳ Thạch Địa", "Kỳ Thạch Địa", "Kỳ Thạch Địa", "Kỳ Thạch Địa" },
			{ "Linh Lan", "Linh Lan", "Linh Lan", "Linh Lan" },
			{ "Phục Ma Cốc", "Phục Ma Cốc", "Phục Ma Cốc", "Phục Ma Cốc" },
			{ "Mê Quang Tự", "Mê Quang Tự", "Mê Quang Tự", "Mê Quang Tự" },
			{ "Thần Di Cảnh", "Thần Di Cảnh", "Thần Di Cảnh", "Thần Di Cảnh" },
			{ "Thánh Ước Địa", "Thánh Ước Địa", "Thánh Ước Địa", "Thánh Ước Địa" },
			{ "Thiên Lục Châu", "Thiên Lục Châu", "Thiên Lục Châu", "Thiên Lục Châu" },
			{ "Kỵ Bình Nguyên", "Kỵ Bình Nguyên", "Kỵ Bình Nguyên", "Kỵ Bình Nguyên" },
			{ "Cổ Đạo", "Cổ Đạo", "Cổ Đạo", "Cổ Đạo" },
			{ "Chi Phong Cốc", "Chi Phong Cốc", "Chi Phong Cốc", "Chi Phong Cốc" },
			{ "Đăng Vân Địa", "Đăng Vân Địa", "Đăng Vân Địa", "Đăng Vân Địa" },
			{ "Cổ Thành", "Cổ Thành", "Cổ Thành", "Cổ Thành" },
			{ "Hô\u0323 Chi Địa", "Hô\u0323 Chi Địa", "Hô\u0323 Chi Địa", "Hô\u0323 Chi Địa" },
			{ "Vân Lộc Sơn", "Vân Lộc Sơn", "Vân Lộc Sơn", "Vân Lộc Sơn" },
			{ "Trầm Thụy Lâm", "Trầm Thụy Lâm", "Trầm Thụy Lâm", "Trầm Thụy Lâm" },
			{ "Quang Bình Nguyên", "Quang Bình Nguyên", "Quang Bình Nguyên", "Quang Bình Nguyên" },
			{ "Lạp Tuyết Địa", "Lạp Tuyết Địa", "Lạp Tuyết Địa", "Lạp Tuyết Địa" },
			{ "Anh Vũ Cảnh", "Anh Vũ Cảnh", "Anh Vũ Cảnh", "Anh Vũ Cảnh" },
			{ "Đông Xuất Vân", "Đông Xuất Vân", "Đông Xuất Vân", "Đông Xuất Vân" },
			{ "Lê Dương Bắc", "Lê Dương Bắc", "Lê Dương Bắc", "Lê Dương Bắc" },
			{ "Lê Dương Đảo", "Lê Dương Đảo", "Lê Dương Đảo", "Lê Dương Đảo" },
			{ "Tháp Khắc Nguyên", "Tháp Khắc Nguyên", "Tháp Khắc Nguyên", "Tháp Khắc Nguyên" },
			{ "Băng Tuyết Nguyên", "Băng Tuyết Nguyên", "Băng Tuyết Nguyên", "Băng Tuyết Nguyên" },
			{ "Tuyết Lâm", "Tuyết Lâm", "Tuyết Lâm", "Tuyết Lâm" },
			{ "Đoạn Cốc", "Đoạn Cốc", "Đoạn Cốc", "Đoạn Cốc" },
			{ "Cổ Đạo", "Hư Không Mạc", "Ngọc Phong Lâm", "Lê Dương Nam" },
			{ "Tứ Tức Đảo", "Tứ Tức Đảo", "Tứ Tức Đảo", "Tứ Tức Đảo" },
			{ "Vĩnh Dạ Cảng", "Vĩnh Dạ Cảng", "Vĩnh Dạ Cảng", "Vĩnh Dạ Cảng" },
			{ "Mã Thạch Tuyết", "Mã Thạch Tuyết", "Mã Thạch Tuyết", "Mã Thạch Tuyết" },
			{ "Thành Phố Chìm", "Thành Phố Chìm", "Thành Phố Chìm", "Thành Phố Chìm" },
			{ "Mị Hoặc Lâm", "Mị Hoặc Lâm", "Mị Hoặc Lâm", "Mị Hoặc Lâm" },
			{ "Thiên Đường Thần Thánh", "Thiên Đường Thần Thánh", "Thiên Đường Thần Thánh", "Thiên Đường Thần Thánh" },
			{ "Thiên Không Thành", "Thiên Không Thành", "Thiên Không Thành", "Thiên Không Thành" },
			{ "Điêu Linh Thôn", "Điêu Linh Thôn", "Điêu Linh Thôn", "Điêu Linh Thôn" },
			{ "Lê Dương Nam", "Lê Dương Nam", "Lê Dương Nam", "Lê Dương Thôn" }
		};
		return array[ViTricheckmap, ViTri];
	}

	private Point LocViTri(int checkmap, int ViTri)
	{
		//IL_0016: Unknown result type (might be due to invalid IL or missing references)
		//IL_001b: Unknown result type (might be due to invalid IL or missing references)
		//IL_002d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0032: Unknown result type (might be due to invalid IL or missing references)
		//IL_0044: Unknown result type (might be due to invalid IL or missing references)
		//IL_0049: Unknown result type (might be due to invalid IL or missing references)
		//IL_005b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0060: Unknown result type (might be due to invalid IL or missing references)
		//IL_0072: Unknown result type (might be due to invalid IL or missing references)
		//IL_0077: Unknown result type (might be due to invalid IL or missing references)
		//IL_0089: Unknown result type (might be due to invalid IL or missing references)
		//IL_008e: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a0: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a5: Unknown result type (might be due to invalid IL or missing references)
		//IL_00b7: Unknown result type (might be due to invalid IL or missing references)
		//IL_00bc: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0101: Unknown result type (might be due to invalid IL or missing references)
		//IL_0113: Unknown result type (might be due to invalid IL or missing references)
		//IL_0118: Unknown result type (might be due to invalid IL or missing references)
		//IL_012a: Unknown result type (might be due to invalid IL or missing references)
		//IL_012f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0141: Unknown result type (might be due to invalid IL or missing references)
		//IL_0146: Unknown result type (might be due to invalid IL or missing references)
		//IL_0158: Unknown result type (might be due to invalid IL or missing references)
		//IL_015d: Unknown result type (might be due to invalid IL or missing references)
		//IL_016f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0174: Unknown result type (might be due to invalid IL or missing references)
		//IL_0186: Unknown result type (might be due to invalid IL or missing references)
		//IL_018b: Unknown result type (might be due to invalid IL or missing references)
		//IL_019d: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_01cd: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_01fd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0202: Unknown result type (might be due to invalid IL or missing references)
		//IL_0215: Unknown result type (might be due to invalid IL or missing references)
		//IL_021a: Unknown result type (might be due to invalid IL or missing references)
		//IL_022d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0232: Unknown result type (might be due to invalid IL or missing references)
		//IL_0245: Unknown result type (might be due to invalid IL or missing references)
		//IL_024a: Unknown result type (might be due to invalid IL or missing references)
		//IL_025d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0262: Unknown result type (might be due to invalid IL or missing references)
		//IL_0275: Unknown result type (might be due to invalid IL or missing references)
		//IL_027a: Unknown result type (might be due to invalid IL or missing references)
		//IL_028d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0292: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a5: Unknown result type (might be due to invalid IL or missing references)
		//IL_02aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_02bd: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d5: Unknown result type (might be due to invalid IL or missing references)
		//IL_02da: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0305: Unknown result type (might be due to invalid IL or missing references)
		//IL_030a: Unknown result type (might be due to invalid IL or missing references)
		//IL_031d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0322: Unknown result type (might be due to invalid IL or missing references)
		//IL_0335: Unknown result type (might be due to invalid IL or missing references)
		//IL_033a: Unknown result type (might be due to invalid IL or missing references)
		//IL_034d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0352: Unknown result type (might be due to invalid IL or missing references)
		//IL_0365: Unknown result type (might be due to invalid IL or missing references)
		//IL_036a: Unknown result type (might be due to invalid IL or missing references)
		//IL_037d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0382: Unknown result type (might be due to invalid IL or missing references)
		//IL_0395: Unknown result type (might be due to invalid IL or missing references)
		//IL_039a: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_03b2: Unknown result type (might be due to invalid IL or missing references)
		//IL_03c5: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_03dd: Unknown result type (might be due to invalid IL or missing references)
		//IL_03e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_03f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_03fa: Unknown result type (might be due to invalid IL or missing references)
		//IL_040d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0412: Unknown result type (might be due to invalid IL or missing references)
		//IL_0425: Unknown result type (might be due to invalid IL or missing references)
		//IL_042a: Unknown result type (might be due to invalid IL or missing references)
		//IL_043d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0442: Unknown result type (might be due to invalid IL or missing references)
		//IL_0455: Unknown result type (might be due to invalid IL or missing references)
		//IL_045a: Unknown result type (might be due to invalid IL or missing references)
		//IL_046d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0472: Unknown result type (might be due to invalid IL or missing references)
		//IL_0485: Unknown result type (might be due to invalid IL or missing references)
		//IL_048a: Unknown result type (might be due to invalid IL or missing references)
		//IL_049d: Unknown result type (might be due to invalid IL or missing references)
		//IL_04a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_04b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_04ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_04cd: Unknown result type (might be due to invalid IL or missing references)
		//IL_04d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_04e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_04ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_04fd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0502: Unknown result type (might be due to invalid IL or missing references)
		//IL_0515: Unknown result type (might be due to invalid IL or missing references)
		//IL_051a: Unknown result type (might be due to invalid IL or missing references)
		//IL_052d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0532: Unknown result type (might be due to invalid IL or missing references)
		//IL_0545: Unknown result type (might be due to invalid IL or missing references)
		//IL_054a: Unknown result type (might be due to invalid IL or missing references)
		//IL_055d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0562: Unknown result type (might be due to invalid IL or missing references)
		//IL_0575: Unknown result type (might be due to invalid IL or missing references)
		//IL_057a: Unknown result type (might be due to invalid IL or missing references)
		//IL_058d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0592: Unknown result type (might be due to invalid IL or missing references)
		//IL_05a5: Unknown result type (might be due to invalid IL or missing references)
		//IL_05aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_05bd: Unknown result type (might be due to invalid IL or missing references)
		//IL_05c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_05d5: Unknown result type (might be due to invalid IL or missing references)
		//IL_05da: Unknown result type (might be due to invalid IL or missing references)
		//IL_05ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_05f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0605: Unknown result type (might be due to invalid IL or missing references)
		//IL_060a: Unknown result type (might be due to invalid IL or missing references)
		//IL_061d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0622: Unknown result type (might be due to invalid IL or missing references)
		//IL_0635: Unknown result type (might be due to invalid IL or missing references)
		//IL_063a: Unknown result type (might be due to invalid IL or missing references)
		//IL_064d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0652: Unknown result type (might be due to invalid IL or missing references)
		//IL_0665: Unknown result type (might be due to invalid IL or missing references)
		//IL_066a: Unknown result type (might be due to invalid IL or missing references)
		//IL_067d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0682: Unknown result type (might be due to invalid IL or missing references)
		//IL_0695: Unknown result type (might be due to invalid IL or missing references)
		//IL_069a: Unknown result type (might be due to invalid IL or missing references)
		//IL_06ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_06b2: Unknown result type (might be due to invalid IL or missing references)
		//IL_06c5: Unknown result type (might be due to invalid IL or missing references)
		//IL_06ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_06dd: Unknown result type (might be due to invalid IL or missing references)
		//IL_06e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_06f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_06fa: Unknown result type (might be due to invalid IL or missing references)
		//IL_070d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0712: Unknown result type (might be due to invalid IL or missing references)
		//IL_0725: Unknown result type (might be due to invalid IL or missing references)
		//IL_072a: Unknown result type (might be due to invalid IL or missing references)
		//IL_073d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0742: Unknown result type (might be due to invalid IL or missing references)
		//IL_0755: Unknown result type (might be due to invalid IL or missing references)
		//IL_075a: Unknown result type (might be due to invalid IL or missing references)
		//IL_076d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0772: Unknown result type (might be due to invalid IL or missing references)
		//IL_0785: Unknown result type (might be due to invalid IL or missing references)
		//IL_078a: Unknown result type (might be due to invalid IL or missing references)
		//IL_079d: Unknown result type (might be due to invalid IL or missing references)
		//IL_07a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_07b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_07ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_07cd: Unknown result type (might be due to invalid IL or missing references)
		//IL_07d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_07fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0800: Unknown result type (might be due to invalid IL or missing references)
		//IL_0803: Unknown result type (might be due to invalid IL or missing references)
		Point[,] array = new Point[42, 2]
		{
			{
				new Point(576, 205),
				new Point(483, 260)
			},
			{
				new Point(588, 188),
				new Point(457, 341)
			},
			{
				new Point(582, 214),
				new Point(481, 336)
			},
			{
				new Point(388, 260),
				new Point(491, 326)
			},
			{
				new Point(541, 178),
				new Point(582, 341)
			},
			{
				new Point(438, 176),
				new Point(565, 248)
			},
			{
				new Point(374, 201),
				new Point(572, 186)
			},
			{
				new Point(410, 233),
				new Point(533, 312)
			},
			{
				new Point(451, 318),
				new Point(393, 226)
			},
			{
				new Point(341, 258),
				new Point(487, 269)
			},
			{
				new Point(656, 200),
				new Point(515, 302)
			},
			{
				new Point(544, 190),
				new Point(430, 159)
			},
			{
				new Point(494, 396),
				new Point(328, 307)
			},
			{
				new Point(455, 346),
				new Point(476, 260)
			},
			{
				new Point(326, 192),
				new Point(428, 213)
			},
			{
				new Point(574, 182),
				new Point(433, 264)
			},
			{
				new Point(609, 199),
				new Point(503, 230)
			},
			{
				new Point(386, 333),
				new Point(561, 341)
			},
			{
				new Point(549, 253),
				new Point(391, 257)
			},
			{
				new Point(530, 275),
				new Point(392, 301)
			},
			{
				new Point(625, 327),
				new Point(414, 318)
			},
			{
				new Point(435, 293),
				new Point(407, 185)
			},
			{
				new Point(523, 330),
				new Point(346, 335)
			},
			{
				new Point(607, 178),
				new Point(435, 215)
			},
			{
				new Point(310, 239),
				new Point(430, 305)
			},
			{
				new Point(649, 194),
				new Point(575, 310)
			},
			{
				new Point(372, 338),
				new Point(444, 219)
			},
			{
				new Point(545, 366),
				new Point(612, 190)
			},
			{
				new Point(558, 278),
				new Point(365, 228)
			},
			{
				new Point(638, 248),
				new Point(517, 180)
			},
			{
				new Point(629, 208),
				new Point(561, 242)
			},
			{
				new Point(417, 281),
				new Point(589, 315)
			},
			{
				new Point(599, 276),
				new Point(524, 207)
			},
			{
				new Point(357, 262),
				new Point(450, 209)
			},
			{
				new Point(356, 263),
				new Point(498, 181)
			},
			{
				new Point(513, 376),
				new Point(474, 485)
			},
			{
				new Point(400, 274),
				new Point(343, 184)
			},
			{
				new Point(570, 238),
				new Point(390, 169)
			},
			{
				new Point(617, 203),
				new Point(356, 273)
			},
			{
				new Point(452, 333),
				new Point(537, 358)
			},
			{
				new Point(585, 264),
				new Point(382, 209)
			},
			{
				new Point(386, 258),
				new Point(508, 317)
			}
		};
		return new Point(((Point)(ref array[checkmap, ViTri])).X - 192, ((Point)(ref array[checkmap, ViTri])).Y - 22);
	}

	private bool BatPet(string Pet, bool PetBay, Point[] ViTri1, Point[] ViTri2)
	{
		//IL_03bb: Unknown result type (might be due to invalid IL or missing references)
		//IL_03c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_03d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_03d6: Unknown result type (might be due to invalid IL or missing references)
		//IL_03fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_0403: Unknown result type (might be due to invalid IL or missing references)
		//IL_0414: Unknown result type (might be due to invalid IL or missing references)
		//IL_0419: Unknown result type (might be due to invalid IL or missing references)
		bool flag = true;
		int num = 0;
		int num2 = 0;
		int num3 = Enumerable.Count<Point>((System.Collections.Generic.IEnumerable<Point>)ViTri1) - 1;
		ViTriNhanVat = null;
		while (!ViTriNhanVat.HasValue)
		{
			PressKey("ESC");
			debugText("Lỗi Tìm Vị Trí Nhân Vật ");
			debugText("Recheck");
			ViTriNhanVat = TimViTriNhanVat(hWnd);
			delay_100ms(5);
		}
		int num4 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoX);
		int num5 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoY);
		while (num4 == 0 && num5 == 0)
		{
			num4 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoX);
			num5 = (int)ReadMemoryData(processID, myPointer, offset_ToaDoY);
			delay_100ms(5);
			debugText("Memory False!");
		}
		ViTriNhanVat_X = num4;
		ViTriNhanVat_Y = num5;
		bool flag2 = false;
		if (PetBay)
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
		int num6 = 0;
		while (true)
		{
			if (WaitAvatar(hWnd))
			{
				PressKey("OK");
				if (flag)
				{
					flag = false;
					if (flag2)
					{
						if (PetBay)
						{
							Xuong();
							Xuong();
							Xuong();
							delay_100ms(10);
							Bay();
							Bay();
							Bay();
						}
						else
						{
							Bay();
							Bay();
							Bay();
						}
						return true;
					}
					AutoControl.SendClickOnPosition(hWnd, 111, 25, (EMouseKey)0, 1);
					delay_100ms(10);
					AutoControl.SendClickOnPosition(hWnd, 111, 90, (EMouseKey)0, 1);
					debugText("Hồi Phục");
					FindAndClick(hWnd, pathIconBatPet + "/AutoSkill.png", 5, 5, "Tắt Auto");
					PressKey("`");
					AutoControl.SendClickUpOnPosition(hWnd, 656, 620, (EMouseKey)0, 1);
					delay_100ms(10);
				}
				num = 0;
				num2++;
				num6++;
				FindAndClick(hWnd, pathTacVu + "/HienSkill.png", 1, 1, "Skill");
				debugText("Ở Ngoài " + num2);
				if (num6 >= 93)
				{
					break;
				}
				if (num2 >= 31)
				{
					PressKey("ESC");
					bool flag3 = WriteMemoryData(processID, myPointer, offset_ToaDoX, ViTriNhanVat_X);
					bool flag4 = WriteMemoryData(processID, myPointer, offset_ToaDoY, ViTriNhanVat_Y);
					if (flag3 && flag4)
					{
						delay_100ms(5);
						Point? val;
						while (true)
						{
							if (!PetBay)
							{
								Bay();
								Bay();
								Bay();
							}
							PressKey("P");
							val = FindPoint(hWnd, pathTacVu + "/ChienDau.png");
							if (val.HasValue)
							{
								break;
							}
							PressKey("ESC");
							FindAndClick(hWnd, pathIconBatPet + "/Auto.png", 5, 5, "Auto");
							FindAndClick(hWnd, pathIconBatPet + "/KetThucAuto.png", 5, 5, "Hủy Auto");
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
						PressKey("ESC");
						PressKey("`");
						if (!PetBay)
						{
							Xuong();
							Xuong();
							Xuong();
						}
					}
					else
					{
						debugText("Location False");
					}
					int x = ((Point)(ref ViTri1[num3])).X;
					int x2 = ((Point)(ref ViTri2[num3])).X;
					int y = ((Point)(ref ViTri1[num3])).Y;
					int y2 = ((Point)(ref ViTri2[num3])).Y;
					delay_100ms(2);
					AutoControl.SendClickOnPosition(hWnd, x + 10, y - 30, (EMouseKey)0, 1);
					delay_100ms(2);
					AutoControl.SendClickOnPosition(hWnd, x2 + 10, y2 - 30, (EMouseKey)0, 1);
					delay_100ms(2);
					num2 = 0;
				}
				if (num2 % 2 != 0)
				{
					AutoControl.SendClickOnPosition(hWnd, ((Point)(ref ViTri1[num3])).X, ((Point)(ref ViTri1[num3])).Y - 30, (EMouseKey)0, 1);
				}
				else
				{
					AutoControl.SendClickOnPosition(hWnd, ((Point)(ref ViTri2[num3])).X, ((Point)(ref ViTri2[num3])).Y - 30, (EMouseKey)0, 1);
					num3--;
					if (num3 < 0)
					{
						num3 = Enumerable.Count<Point>((System.Collections.Generic.IEnumerable<Point>)ViTri1) - 1;
					}
				}
				delay_100ms(5);
			}
			delay_100ms(5);
			if (WaitAvatar(hWnd))
			{
				continue;
			}
			PressKey("OK");
			num2 = 0;
			num6 = 0;
			if (!flag)
			{
				flag = true;
				debugText("Trong Trận");
			}
			debugText(num.ToString());
			delay_100ms(3);
			if (!FindPoint(hWnd, pathIconBatPet + "/NhanVat.png").HasValue)
			{
				continue;
			}
			if (num >= 6)
			{
				SendClickOnPosition(hWnd, 550, 350, (EMouseKey)0);
				delay_100ms(5);
				FindAndClick(hWnd, pathIconBatPet + "/Auto.png", 5, 5, "Auto");
				FindAndClick(hWnd, pathIconBatPet + "/KetThucAuto.png", 5, 5, "Hủy Auto");
				continue;
			}
			FindAndClick(hWnd, pathIconBatPet + "/Bat.png", 5, 5, "Nhấn Nút Bắt");
			int num9 = 0;
			while (true)
			{
				delay_100ms(10);
				if (!checkClickVaoPet(Pet))
				{
					debugText("ClearDebugText");
					num9++;
					debugText("Check Lại Lần " + num9);
					if (num9 < 8)
					{
						continue;
					}
					AutoControl.SendClickOnPosition(hWnd, 550, 320, (EMouseKey)0, 1);
					delay_100ms(5);
					FindAndClick(hWnd, pathIconBatPet + "/Auto.png", 5, 5, "Auto");
					FindAndClick(hWnd, pathIconBatPet + "/KetThucAuto.png", 5, 5, "Hủy Auto");
					break;
				}
				flag2 = true;
				delay_100ms(5);
				if (FindPoint(hWnd, pathIconBatPet + "/NhanVat.png").HasValue)
				{
					debugText("Pet đầy");
					FindAndClick(hWnd, pathIconBatPet + "/Auto.png", 5, 5, "Auto");
					FindAndClick(hWnd, pathIconBatPet + "/KetThucAuto.png", 5, 5, "Hủy Auto");
					while (!WaitAvatar(hWnd))
					{
						delay_100ms(50);
					}
					return false;
				}
				switch (num)
				{
				case 0:
					DungItemChoNhanVat("Luyện Thú Đơn Cao");
					break;
				case 1:
					DungItemChoNhanVat("Kẹp Bắt Thú (Thường, Siêu)");
					break;
				case 2:
					DungItemChoNhanVat("Tinh Linh Cầu");
					break;
				default:
					DungItemChoNhanVat("Deff");
					break;
				}
				num++;
				break;
			}
		}
		return false;
	}

	private void DungItemChoNhanVat(string Buff)
	{
		//IL_02e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e7: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f8: Unknown result type (might be due to invalid IL or missing references)
		//IL_02fd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0334: Unknown result type (might be due to invalid IL or missing references)
		//IL_0339: Unknown result type (might be due to invalid IL or missing references)
		//IL_034a: Unknown result type (might be due to invalid IL or missing references)
		//IL_034f: Unknown result type (might be due to invalid IL or missing references)
		Point? val = null;
		bool flag = false;
		MoTabVatPham();
		switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(Buff))
		{
		case 1750655700u:
			if (!(Buff == "Luyện Thú Đơn Cao"))
			{
				goto default;
			}
			val = FindAndClick(hWnd, pathIconBatPet + "/LuyenThuDonCao.png", 5, 1, "Dùng Luyện Thú Đơn Cao");
			flag = false;
			break;
		case 3094061858u:
			if (!(Buff == "Luyện Thú Đơn Siêu"))
			{
				goto default;
			}
			val = FindAndClick(hWnd, pathIconBatPet + "/LuyenThuDonSieu.png", 5, 1, "Dùng Luyện Thú Đơn Siêu");
			flag = false;
			break;
		case 4011739300u:
			if (!(Buff == "Kẹp Bắt Thú (Thường, Siêu)"))
			{
				goto default;
			}
			val = FindAndClick(hWnd, pathIconBatPet + "/KepBatThu.png", 5, 1, " Dùng Kẹp Bắt Thú");
			flag = false;
			break;
		case 1363975968u:
			if (!(Buff == "Tinh Linh Cầu"))
			{
				goto default;
			}
			val = FindAndClick(hWnd, pathIconBatPet + "/TinhLinhCau.png", 5, 1, "Dùng Tinh Linh Cầu");
			flag = false;
			break;
		case 3154736165u:
			if (!(Buff == "[TS,AM]-Lời Ngọt Ngào"))
			{
				goto default;
			}
			val = FindAndClick(hWnd, pathIconBatPet + "/LoiNgotNgao.png", 5, 1, "Lời Ngọt Ngào");
			flag = true;
			break;
		case 2014999556u:
			if (!(Buff == "[CCAM]-Năng Lượng Oanh Tạc"))
			{
				goto default;
			}
			val = FindAndClick(hWnd, pathIconBatPet + "/NangLuongOanhTac.png", 5, 1, "Năng Lượng Oanh Tạc");
			flag = true;
			break;
		case 3230182701u:
			if (!(Buff == "[Nấm]-Tiếng Sét Phẫn Nộ"))
			{
				goto default;
			}
			val = FindAndClick(hWnd, pathIconBatPet + "/TiengSetPhanNo.png", 5, 1, "Tiếng Sét Phẫn Nộ");
			flag = true;
			break;
		default:
			debugText("Chọn Item Lỗi");
			break;
		}
		if (val.HasValue)
		{
			if (flag)
			{
				FindAndClickPet(hWnd, pathPetBat, 5, 5, "Chọn Pet");
			}
			else
			{
				Point? val2 = FindPoint(hWnd, pathIconBatPet + "/ThongTin.png");
				Point value;
				if (ViTriNhanVat == false)
				{
					System.IntPtr intPtr = hWnd;
					value = val2.Value;
					int num = ((Point)(ref value)).X - 336;
					value = val2.Value;
					AutoControl.SendClickOnPosition(intPtr, num, ((Point)(ref value)).Y + 147 - 30, (EMouseKey)0, 1);
				}
				else if (ViTriNhanVat == true)
				{
					System.IntPtr intPtr2 = hWnd;
					value = val2.Value;
					int num2 = ((Point)(ref value)).X - 336;
					value = val2.Value;
					AutoControl.SendClickOnPosition(intPtr2, num2, ((Point)(ref value)).Y + 97 - 30, (EMouseKey)0, 1);
				}
				delay_100ms(3);
			}
		}
		FindAndClick(hWnd, pathIconBatPet + "/PhongNgu.png", 5, 5, "Không Thấy Item > Phòng Ngự");
	}

	private void MoTabVatPham()
	{
		SendClickOnPosition(hWnd, 964, 377, (EMouseKey)0);
		delay_100ms(5);
		FindAndClick(hWnd, pathKhac + "/setupRun_1.png", 18, 46, "Túi 1");
		delay_100ms(10);
	}

	private bool? TimViTriNhanVat(System.IntPtr hWnd)
	{
		PressKey("C");
		delay_100ms(5);
		if (FindPoint(hWnd, pathIconBatPet + "/Truoc.png").HasValue)
		{
			debugText("Nhân Vật Ở Trước");
			PressKey("C");
			delay_100ms(5);
			return false;
		}
		if (FindPoint(hWnd, pathIconBatPet + "/Sau.png").HasValue)
		{
			debugText("Nhân Vật Ở Sau");
			PressKey("C");
			delay_100ms(5);
			return true;
		}
		debugText("Không Tìm Thấy Vị Trí Nhân Vật");
		PressKey("C");
		delay_100ms(5);
		return null;
	}

	private string GetPathPet(string nameCheck)
	{
		return pathBatPet + "\\" + nameCheck + ".txt";
	}

	private bool checkClickVaoPet(string Pet)
	{
		string[] array = Pet.Trim().Split("\r\n", (StringSplitOptions)0);
		for (int i = 0; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array); i++)
		{
			pathPetBat = GetPathPet(array[i]);
			if (Settings.Default.enableDebug)
			{
				debugText(array[i]);
				debugText(pathPetBat);
			}
			if (FindAndClickPet(hWnd, pathPetBat, 5, 5, "Chọn Pet").HasValue)
			{
				return true;
			}
		}
		return false;
	}

	private bool DiTimVatPham(int ViTriVatPham)
	{
		//IL_014b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0150: Unknown result type (might be due to invalid IL or missing references)
		//IL_0161: Unknown result type (might be due to invalid IL or missing references)
		//IL_0166: Unknown result type (might be due to invalid IL or missing references)
		//IL_018d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0192: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a3: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_01cf: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_0211: Unknown result type (might be due to invalid IL or missing references)
		//IL_0216: Unknown result type (might be due to invalid IL or missing references)
		//IL_0227: Unknown result type (might be due to invalid IL or missing references)
		//IL_022c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0253: Unknown result type (might be due to invalid IL or missing references)
		//IL_0258: Unknown result type (might be due to invalid IL or missing references)
		//IL_0269: Unknown result type (might be due to invalid IL or missing references)
		//IL_026e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0295: Unknown result type (might be due to invalid IL or missing references)
		//IL_029a: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ab: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_02dc: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0319: Unknown result type (might be due to invalid IL or missing references)
		//IL_031e: Unknown result type (might be due to invalid IL or missing references)
		//IL_032f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0334: Unknown result type (might be due to invalid IL or missing references)
		//IL_0358: Unknown result type (might be due to invalid IL or missing references)
		//IL_035d: Unknown result type (might be due to invalid IL or missing references)
		//IL_036e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0373: Unknown result type (might be due to invalid IL or missing references)
		Xuong();
		Xuong();
		Xuong();
		PhuToiMap("Đông Huyền Thành", 300.0, 245.0);
		Point? val;
		while (true)
		{
			PressKey("ESC");
			delay_100ms(5);
			AutoControl.SendClickOnPosition(hWnd, 756, 319, (EMouseKey)0, 1);
			delay_100ms(5);
			AutoControl.SendClickOnPosition(hWnd, 666, 483, (EMouseKey)0, 1);
			delay_100ms(5);
			FindAndClick(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png", -20, -296, "shop");
			delay_100ms(5);
			val = FindPoint(hWnd, pathTacVu + "/SuaDo.png");
			if (val.HasValue)
			{
				break;
			}
			Tele4(300.0, 245.0);
		}
		Point value;
		switch (ViTriVatPham)
		{
		case 1:
		{
			System.IntPtr intPtr9 = hWnd;
			value = val.Value;
			int num9 = ((Point)(ref value)).X - 550;
			value = val.Value;
			AutoControl.SendClickOnPosition(intPtr9, num9, ((Point)(ref value)).Y - 363 - 30, (EMouseKey)0, 1);
			break;
		}
		case 2:
		{
			System.IntPtr intPtr8 = hWnd;
			value = val.Value;
			int num8 = ((Point)(ref value)).X - 420;
			value = val.Value;
			AutoControl.SendClickOnPosition(intPtr8, num8, ((Point)(ref value)).Y - 363 - 30, (EMouseKey)0, 1);
			break;
		}
		case 3:
		{
			System.IntPtr intPtr7 = hWnd;
			value = val.Value;
			int num7 = ((Point)(ref value)).X - 290;
			value = val.Value;
			AutoControl.SendClickOnPosition(intPtr7, num7, ((Point)(ref value)).Y - 363 - 30, (EMouseKey)0, 1);
			break;
		}
		case 4:
		{
			System.IntPtr intPtr6 = hWnd;
			value = val.Value;
			int num6 = ((Point)(ref value)).X - 550;
			value = val.Value;
			AutoControl.SendClickOnPosition(intPtr6, num6, ((Point)(ref value)).Y - 303 - 30, (EMouseKey)0, 1);
			break;
		}
		case 5:
		{
			System.IntPtr intPtr5 = hWnd;
			value = val.Value;
			int num5 = ((Point)(ref value)).X - 420;
			value = val.Value;
			AutoControl.SendClickOnPosition(intPtr5, num5, ((Point)(ref value)).Y - 303 - 30, (EMouseKey)0, 1);
			break;
		}
		case 6:
		{
			System.IntPtr intPtr4 = hWnd;
			value = val.Value;
			int num4 = ((Point)(ref value)).X - 290;
			value = val.Value;
			AutoControl.SendClickOnPosition(intPtr4, num4, ((Point)(ref value)).Y - 303 - 30, (EMouseKey)0, 1);
			break;
		}
		case 7:
		{
			System.IntPtr intPtr3 = hWnd;
			value = val.Value;
			int num3 = ((Point)(ref value)).X - 550;
			value = val.Value;
			AutoControl.SendClickOnPosition(intPtr3, num3, ((Point)(ref value)).Y - 263 - 30, (EMouseKey)0, 1);
			break;
		}
		case 8:
		{
			System.IntPtr intPtr2 = hWnd;
			value = val.Value;
			int num2 = ((Point)(ref value)).X - 420;
			value = val.Value;
			AutoControl.SendClickOnPosition(intPtr2, num2, ((Point)(ref value)).Y - 263 - 30, (EMouseKey)0, 1);
			break;
		}
		case 9:
		{
			System.IntPtr intPtr = hWnd;
			value = val.Value;
			int num = ((Point)(ref value)).X - 290;
			value = val.Value;
			AutoControl.SendClickOnPosition(intPtr, num, ((Point)(ref value)).Y - 263 - 30, (EMouseKey)0, 1);
			break;
		}
		}
		delay_100ms(5);
		FindAndClick(hWnd, pathTacVu + "/Shop_Mua.png", 0, 0, "Mua");
		FindAndClick(hWnd, pathTacVu + "/Shop_OK.png", 0, 0, "OK");
		PressKey("Enter");
		Bay();
		Bay();
		Bay();
		return true;
	}

	private bool DiMuaVatPhamVaThuoc(string Map, int X, int Y, int clickX, int clickY, int ViTriVatPham, int SoLuong)
	{
		//IL_01c7: Unknown result type (might be due to invalid IL or missing references)
		//IL_01cc: Unknown result type (might be due to invalid IL or missing references)
		//IL_01db: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f7: Unknown result type (might be due to invalid IL or missing references)
		//IL_01fc: Unknown result type (might be due to invalid IL or missing references)
		//IL_020a: Unknown result type (might be due to invalid IL or missing references)
		//IL_020f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0226: Unknown result type (might be due to invalid IL or missing references)
		//IL_022b: Unknown result type (might be due to invalid IL or missing references)
		//IL_023d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0242: Unknown result type (might be due to invalid IL or missing references)
		//IL_0259: Unknown result type (might be due to invalid IL or missing references)
		//IL_025e: Unknown result type (might be due to invalid IL or missing references)
		//IL_026d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0272: Unknown result type (might be due to invalid IL or missing references)
		//IL_0289: Unknown result type (might be due to invalid IL or missing references)
		//IL_028e: Unknown result type (might be due to invalid IL or missing references)
		//IL_029c: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a1: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b8: Unknown result type (might be due to invalid IL or missing references)
		//IL_02bd: Unknown result type (might be due to invalid IL or missing references)
		//IL_02cf: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_02eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f0: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ff: Unknown result type (might be due to invalid IL or missing references)
		//IL_0304: Unknown result type (might be due to invalid IL or missing references)
		//IL_0315: Unknown result type (might be due to invalid IL or missing references)
		//IL_031a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0328: Unknown result type (might be due to invalid IL or missing references)
		//IL_032d: Unknown result type (might be due to invalid IL or missing references)
		//IL_033e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0343: Unknown result type (might be due to invalid IL or missing references)
		//IL_0355: Unknown result type (might be due to invalid IL or missing references)
		//IL_035a: Unknown result type (might be due to invalid IL or missing references)
		//IL_04a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_04ac: Unknown result type (might be due to invalid IL or missing references)
		//IL_04ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_04bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_04e6: Unknown result type (might be due to invalid IL or missing references)
		//IL_04eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_04f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_04fe: Unknown result type (might be due to invalid IL or missing references)
		PhuToiMap("Xuất Vân Thôn");
		SendClickOnPosition(hWnd, 636, 443, (EMouseKey)0);
		delay_100ms(10);
		SendClickOnPosition(hWnd, 636, 443, (EMouseKey)0);
		delay_100ms(10);
		SendClickOnPosition(hWnd, 636, 443, (EMouseKey)0);
		delay_100ms(10);
		Xuong();
		Xuong();
		Xuong();
		delay_100ms(10);
		PhuToiMap(Map, X, Y);
		Point? val;
		while (true)
		{
			PressKey("ESC");
			delay_100ms(5);
			AutoControl.SendClickOnPosition(hWnd, clickX - 70, clickY - 30, (EMouseKey)0, 1);
			delay_100ms(5);
			AutoControl.SendClickOnPosition(hWnd, clickX, clickY - 30, (EMouseKey)0, 1);
			delay_100ms(5);
			FindAndClick(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png", -20, -296, "shop");
			delay_100ms(5);
			val = FindPoint(hWnd, pathTacVu + "/Shop_Mua.png");
			if (val.HasValue)
			{
				break;
			}
			Tele4(X, Y);
		}
		bool flag = false;
		while (true)
		{
			delay_100ms(10);
			int num = 0;
			int num2 = 0;
			Point value;
			switch (ViTriVatPham)
			{
			case 1:
				value = val.Value;
				num = ((Point)(ref value)).X - 100;
				value = val.Value;
				num2 = ((Point)(ref value)).Y - 210;
				break;
			case 2:
				value = val.Value;
				num = ((Point)(ref value)).X + 5;
				value = val.Value;
				num2 = ((Point)(ref value)).Y - 210;
				break;
			case 3:
				value = val.Value;
				num = ((Point)(ref value)).X + 150;
				value = val.Value;
				num2 = ((Point)(ref value)).Y - 210;
				break;
			case 4:
				value = val.Value;
				num = ((Point)(ref value)).X - 100;
				value = val.Value;
				num2 = ((Point)(ref value)).Y - 165;
				break;
			case 5:
				value = val.Value;
				num = ((Point)(ref value)).X + 5;
				value = val.Value;
				num2 = ((Point)(ref value)).Y - 165;
				break;
			case 6:
				value = val.Value;
				num = ((Point)(ref value)).X + 150;
				value = val.Value;
				num2 = ((Point)(ref value)).Y - 165;
				break;
			case 7:
				value = val.Value;
				num = ((Point)(ref value)).X - 100;
				value = val.Value;
				num2 = ((Point)(ref value)).Y - 115;
				break;
			case 8:
				value = val.Value;
				num = ((Point)(ref value)).X + 5;
				value = val.Value;
				num2 = ((Point)(ref value)).Y - 115;
				break;
			case 9:
				value = val.Value;
				num = ((Point)(ref value)).X + 150;
				value = val.Value;
				num2 = ((Point)(ref value)).Y - 115;
				break;
			}
			Point? val2;
			do
			{
				debugText(string.Concat(new string[5]
				{
					ViTriVatPham.ToString(),
					" ",
					num.ToString(),
					" - ",
					num2.ToString()
				}));
				AutoControl.SendClickOnPosition(hWnd, num, num2 - 30, (EMouseKey)0, 1);
				delay_100ms(2);
				AutoControl.SendClickOnPosition(hWnd, num, num2 - 30, (EMouseKey)0, 1);
				delay_100ms(3);
				AutoControl.SendClickOnPosition(hWnd, num, num2 - 30, (EMouseKey)0, 1);
				delay_100ms(2);
				AutoControl.SendClickOnPosition(hWnd, num, num2 - 30, (EMouseKey)0, 1);
				delay_100ms(5);
				AutoControl.SendClickUpOnPosition(hWnd, 20, 20, (EMouseKey)0, 1);
				delay_100ms(1);
				PressKey("OK");
				FindAndClick(hWnd, pathTacVu + "/Shop_Mua.png", 0, 0, "Mua");
				val2 = FindPoint(hWnd, pathTacVu + "/Shop_OK.png");
			}
			while (!val2.HasValue);
			System.IntPtr intPtr = hWnd;
			value = val2.Value;
			int num3 = ((Point)(ref value)).X + 80;
			value = val2.Value;
			AutoControl.SendClickOnPosition(intPtr, num3, ((Point)(ref value)).Y - 25 - 30, (EMouseKey)0, 1);
			delay_100ms(1);
			System.IntPtr intPtr2 = hWnd;
			value = val2.Value;
			int num4 = ((Point)(ref value)).X + 80;
			value = val2.Value;
			AutoControl.SendClickOnPosition(intPtr2, num4, ((Point)(ref value)).Y - 25 - 30, (EMouseKey)0, 1);
			delay_100ms(3);
			AutoControl.SendKeyBoardDown(hWnd, (VKeys)8);
			delay_100ms(1);
			AutoControl.SendKeyBoardDown(hWnd, (VKeys)8);
			delay_100ms(3);
			SendTextKeyBoard(hWnd, SoLuong.ToString());
			delay_100ms(10);
			FindAndClick(hWnd, pathTacVu + "/Shop_OK.png", 0, 0, "OK");
			PressKey("Enter");
			if (!(Map == "Tiên Lạp Thành") || flag)
			{
				break;
			}
			if (ViTriVatPham == 5 || ViTriVatPham == 8)
			{
				flag = true;
			}
			ViTriVatPham = ((ViTriVatPham != 5) ? 5 : 8);
		}
		PhuToiMap("Xuất Vân Thôn");
		SendClickOnPosition(hWnd, 636, 443, (EMouseKey)0);
		delay_100ms(10);
		SendClickOnPosition(hWnd, 636, 443, (EMouseKey)0);
		delay_100ms(10);
		SendClickOnPosition(hWnd, 636, 443, (EMouseKey)0);
		delay_100ms(10);
		return true;
	}

	private Point? FindAndClickPet(System.IntPtr hWnd, string pathFind, int offsetX, int offsetY, string textDebug)
	{
		//IL_0019: Unknown result type (might be due to invalid IL or missing references)
		//IL_001e: Unknown result type (might be due to invalid IL or missing references)
		//IL_002a: Unknown result type (might be due to invalid IL or missing references)
		//IL_002f: Unknown result type (might be due to invalid IL or missing references)
		Point? result = FindPointPet(hWnd, pathFind);
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

	private bool FindsAndDoubleClickPet(System.IntPtr hWnd, string pathFind, int offsetX, int offsetY, string textDebug)
	{
		//IL_0026: Unknown result type (might be due to invalid IL or missing references)
		//IL_002b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0037: Unknown result type (might be due to invalid IL or missing references)
		//IL_003c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0055: Unknown result type (might be due to invalid IL or missing references)
		//IL_005a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0066: Unknown result type (might be due to invalid IL or missing references)
		//IL_006b: Unknown result type (might be due to invalid IL or missing references)
		List<Point> val = FindPointsPets(hWnd, pathFind);
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

	private List<Point>? FindSubsPointPet(System.IntPtr hWnd, string pathKhungAnhLon, int offSetX, int offSetY, int offSetW, int offSetH, string pathKhungAnhNho)
	{
		//IL_0019: Unknown result type (might be due to invalid IL or missing references)
		//IL_002d: Expected O, but got Unknown
		//IL_002f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0043: Expected O, but got Unknown
		//IL_0047: Unknown result type (might be due to invalid IL or missing references)
		//IL_0051: Unknown result type (might be due to invalid IL or missing references)
		//IL_0056: Unknown result type (might be due to invalid IL or missing references)
		//IL_006b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0070: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a5: Unknown result type (might be due to invalid IL or missing references)
		Image val = CaptureHelper.CaptureWindow(hWnd);
		Bitmap image = ImageScanOpenCV.GetImage(pathKhungAnhLon);
		Bitmap val2 = DecodeToPNG(pathKhungAnhNho);
		Bitmap val3 = ImageScanOpenCV.Find((Bitmap)val, image, 0.9);
		Point? val4 = ImageScanOpenCV.FindOutPoint((Bitmap)val, image, 0.9);
		Rectangle val5 = default(Rectangle);
		Point value = val4.Value;
		((Rectangle)(ref val5)).X = ((Point)(ref value)).X + offSetX;
		value = val4.Value;
		((Rectangle)(ref val5)).Y = ((Point)(ref value)).Y + offSetY;
		((Rectangle)(ref val5)).Width = ((Image)image).Width + offSetW;
		((Rectangle)(ref val5)).Height = ((Image)image).Height + offSetH;
		Bitmap val6 = CaptureHelper.CropImage(val3, val5);
		return ImageScanOpenCV.FindOutPoints(val6, val2, 0.9);
	}

	private List<Point>? FindPointsPets(System.IntPtr hWnd, string pathCanTim)
	{
		//IL_0036: Unknown result type (might be due to invalid IL or missing references)
		//IL_003c: Expected O, but got Unknown
		//IL_0042: Unknown result type (might be due to invalid IL or missing references)
		//IL_004c: Expected O, but got Unknown
		//IL_0047: Unknown result type (might be due to invalid IL or missing references)
		//IL_004e: Expected O, but got Unknown
		//IL_0058: Unknown result type (might be due to invalid IL or missing references)
		//IL_006d: Expected O, but got Unknown
		string text = File.ReadAllText(pathCanTim);
		string image = text.Substring(0, Program.AppMain.numberEncodePer) + text.Substring(Program.AppMain.numberEncodePer + 10);
		byte[] array = Convert.FromBase64String(FixBase64ForImage(image));
		MemoryStream val = new MemoryStream(array);
		Bitmap val2 = new Bitmap((Image)(Bitmap)Image.FromStream((Stream)(object)val));
		Image val3 = CaptureHelper.CaptureWindow(hWnd);
		return ImageScanOpenCV.FindOutPoints((Bitmap)val3, val2, 0.99);
	}

	private Bitmap DecodeToPNG(string path)
	{
		//IL_0036: Unknown result type (might be due to invalid IL or missing references)
		//IL_003c: Expected O, but got Unknown
		//IL_0042: Unknown result type (might be due to invalid IL or missing references)
		//IL_004c: Expected O, but got Unknown
		//IL_0047: Unknown result type (might be due to invalid IL or missing references)
		//IL_004e: Expected O, but got Unknown
		string text = File.ReadAllText(path);
		string image = text.Substring(0, Program.AppMain.numberEncodePer) + text.Substring(Program.AppMain.numberEncodePer + 10);
		byte[] array = Convert.FromBase64String(FixBase64ForImage(image));
		MemoryStream val = new MemoryStream(array);
		return new Bitmap((Image)(Bitmap)Image.FromStream((Stream)(object)val));
	}

	private Point? FindPointPet(System.IntPtr hWnd, string pathCanTim)
	{
		//IL_0036: Unknown result type (might be due to invalid IL or missing references)
		//IL_003c: Expected O, but got Unknown
		//IL_0042: Unknown result type (might be due to invalid IL or missing references)
		//IL_004c: Expected O, but got Unknown
		//IL_0047: Unknown result type (might be due to invalid IL or missing references)
		//IL_004e: Expected O, but got Unknown
		//IL_0058: Unknown result type (might be due to invalid IL or missing references)
		//IL_006d: Expected O, but got Unknown
		string text = File.ReadAllText(pathCanTim);
		string image = text.Substring(0, Program.AppMain.numberEncodePer) + text.Substring(Program.AppMain.numberEncodePer + 10);
		byte[] array = Convert.FromBase64String(FixBase64ForImage(image));
		MemoryStream val = new MemoryStream(array);
		Bitmap val2 = new Bitmap((Image)(Bitmap)Image.FromStream((Stream)(object)val));
		Image val3 = CaptureHelper.CaptureWindow(hWnd);
		return ImageScanOpenCV.FindOutPoint((Bitmap)val3, val2, 0.99);
	}

	public string FixBase64ForImage(string Image)
	{
		//IL_0008: Unknown result type (might be due to invalid IL or missing references)
		//IL_000e: Expected O, but got Unknown
		StringBuilder val = new StringBuilder(Image, Image.Length);
		val.Replace("\r\n", string.Empty);
		val.Replace(" ", string.Empty);
		return ((object)val).ToString();
	}

	private unsafe bool FindItem(System.IntPtr hWnd, string pathItem, string nameItem)
	{
		//IL_0056: Unknown result type (might be due to invalid IL or missing references)
		//IL_005b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0065: Unknown result type (might be due to invalid IL or missing references)
		//IL_006a: Unknown result type (might be due to invalid IL or missing references)
		//IL_012d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0132: Unknown result type (might be due to invalid IL or missing references)
		//IL_013c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0141: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a5: Unknown result type (might be due to invalid IL or missing references)
		//IL_01aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_01bb: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e9: Unknown result type (might be due to invalid IL or missing references)
		int num = 0;
		while (true)
		{
			debugText("Tìm Item " + nameItem);
			FindsAndClick(hWnd, pathAutoPhuBan + "/MuiTenIcon.png", 1, 1, "mũi tên mở icon");
			Point? val = FindPoint(hWnd, pathItem);
			Point val2;
			if (val.HasValue)
			{
				val2 = val.Value;
				int x = ((Point)(ref val2)).X;
				val2 = val.Value;
				AutoControl.SendClickOnPosition(hWnd, x, ((Point)(ref val2)).Y - 30, (EMouseKey)0, 1);
				debugText("Mở " + nameItem);
				delay_100ms(5);
				return true;
			}
			val = FindPoint(hWnd, pathAutoPhuBan + "/NutXuong.png");
			num++;
			if (num >= 4)
			{
				debugText("Không Tìm Thấy Item " + nameItem + " Sau 4 Lần Check");
				if (num == 4)
				{
					SendClickOnPosition(hWnd, 571, 677, (EMouseKey)0);
					delay_100ms(20);
					continue;
				}
				break;
			}
			if (val.HasValue)
			{
				val2 = val.Value;
				int x2 = ((Point)(ref val2)).X;
				val2 = val.Value;
				AutoControl.SendClickOnPosition(hWnd, x2, ((Point)(ref val2)).Y - 30, (EMouseKey)0, 1);
				debugText("Nhấn nút xuống");
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
			while (FindAndClick(hWnd, pathAutoPhuBan + "/NutLen.png", 2, 2, "Lên").HasValue)
			{
				PressKey("ESC");
				delay_100ms(5);
			}
		}
		return false;
	}

	private bool FindItem2(System.IntPtr hWnd, string pathItem, string nameItem)
	{
		//IL_0046: Unknown result type (might be due to invalid IL or missing references)
		//IL_004b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0055: Unknown result type (might be due to invalid IL or missing references)
		//IL_005a: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a5: Unknown result type (might be due to invalid IL or missing references)
		//IL_00aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_00b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_00b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0151: Unknown result type (might be due to invalid IL or missing references)
		//IL_0156: Unknown result type (might be due to invalid IL or missing references)
		//IL_0160: Unknown result type (might be due to invalid IL or missing references)
		//IL_0165: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c5: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d9: Unknown result type (might be due to invalid IL or missing references)
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
		//IL_0022: Unknown result type (might be due to invalid IL or missing references)
		//IL_0027: Unknown result type (might be due to invalid IL or missing references)
		//IL_0033: Unknown result type (might be due to invalid IL or missing references)
		//IL_0038: Unknown result type (might be due to invalid IL or missing references)
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
		//IL_0022: Unknown result type (might be due to invalid IL or missing references)
		//IL_0027: Unknown result type (might be due to invalid IL or missing references)
		//IL_0033: Unknown result type (might be due to invalid IL or missing references)
		//IL_0038: Unknown result type (might be due to invalid IL or missing references)
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

	private Point? FindPoint(System.IntPtr hWnd, string pathCanTim, double per = 0.9)
	{
		//IL_0010: Unknown result type (might be due to invalid IL or missing references)
		//IL_001c: Expected O, but got Unknown
		Image val = CaptureHelper.CaptureWindow(hWnd);
		Bitmap image = ImageScanOpenCV.GetImage(pathCanTim);
		return ImageScanOpenCV.FindOutPoint((Bitmap)val, image, per);
	}

	private Point? FindPoint2(Image chupWindow, string pathCanTim)
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
		else if (x == "End_Line")
		{
			((Control)textBox1).Text = "-----------------------";
		}
		else
		{
			((TextBoxBase)textBox1).AppendText(x + "\r\n");
		}
		if (enableDebug)
		{
			System.DateTime now = System.DateTime.Now;
			File.AppendAllText(string.Concat(new string[7] { pathData, "/Debug/", nameFolderDebug, "/", nameUser, "/", nameFileDebug }), string.Concat(new string[11]
			{
				"[",
				now.Hour.ToString("D2"),
				":",
				now.Minute.ToString("D2"),
				"] >>> ",
				x,
				"\r\nWDT: ",
				watchdogCounter.ToString(),
				"  WDT2: ",
				watchdogCounter2.ToString(),
				"\r\n"
			}));
		}
	}

	private void setFPS(int fps)
	{
		//IL_003e: Unknown result type (might be due to invalid IL or missing references)
		if (WriteMemoryData(processID, myPointer, offset_FPS, fps))
		{
			AutoControl.SendClickOnPosition(hWnd, 58, 406, (EMouseKey)0, 1);
			Thread.Sleep(TimeSpan.FromSeconds(0.1));
			AutoControl.SendClickOnPosition(hWnd, 58, 470, (EMouseKey)0, 1);
			debugText("Write FPS: " + fps);
		}
		else
		{
			debugText("Write FPS False");
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
		//IL_0164: Unknown result type (might be due to invalid IL or missing references)
		//IL_0169: Unknown result type (might be due to invalid IL or missing references)
		//IL_0177: Unknown result type (might be due to invalid IL or missing references)
		//IL_017c: Unknown result type (might be due to invalid IL or missing references)
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
			if (FindPoint2(chupWindow, pathTacVu + "/checkchat1.png").HasValue && FindPoint2(chupWindow, pathTacVu + "/checkchat2.png").HasValue)
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

	private void startWDT(int minute)
	{
		watchdogTimer.Stop();
		Skip = false;
		watchdogCounter = 0.0;
		watchdogCheck = minute * 60;
		watchdogTimer.Start();
		debugText("WDT-C: " + watchdogCheck);
	}

	private void stopWDT()
	{
		watchdogCheck = 0.0;
		watchdogTimer.Stop();
	}

	private void setupWDT2(int minute)
	{
		if (autoRun)
		{
			watchdogTimer2.Stop();
			watchdogCounter2 = 0.0;
			watchdogCheck2 = minute * 60;
			watchdogTimer2.Start();
			debugText("WDT2-C: " + watchdogCheck2);
		}
	}

	private void myTimerEvent(object source, ElapsedEventArgs e)
	{
		//IL_000d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0013: Invalid comparison between Unknown and I4
		//IL_0056: Unknown result type (might be due to invalid IL or missing references)
		//IL_005c: Invalid comparison between Unknown and I4
		int num = 0;
		int num2 = 0;
		int num3 = 0;
		if ((int)checkBoxDaPet.CheckState == 1 && !IsStop && (int)numericUpDownDaPet.Value > 0)
		{
			countTimer_pet++;
		}
		if ((int)checkBoxTuThap.CheckState == 1 && !IsStop)
		{
			countTimer_thap++;
		}
		if (!IsStop)
		{
			counter++;
		}
		num = counter / 3600;
		num2 = counter / 60 - num * 60;
		num3 = counter - num2 * 60 - num * 3600;
		((Control)label12).Text = string.Concat(new string[6]
		{
			"Run: ",
			num.ToString("D2"),
			":",
			num2.ToString("D2"),
			":",
			num3.ToString("D2")
		});
	}

	private void myWatchdogTimer(object source, ElapsedEventArgs e)
	{
		watchdogCounter += 1.0;
		((Control)labelWDT).Text = "WDT: " + watchdogCounter;
		if (watchdogCounter > watchdogCheck)
		{
			watchdogCounter = 0.0;
			Skip = true;
			watchdogTimer.Stop();
		}
	}

	private void myWatchdogTimer2(object source, ElapsedEventArgs e)
	{
		if (autoRun)
		{
			watchdogCounter2 += 1.0;
			if (watchdogCounter2 > watchdogCheck2)
			{
				ButtonRunAuto.CheckState = (CheckState)0;
			}
		}
	}

	private void checkTimer()
	{
		int num = (int)numericUpDownDaPet.Value;
		int num2 = (int)numericUpDownTuThap.Value;
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
		if (num2 > 0)
		{
			if (countTimer_thap >= 600)
			{
				System.DateTime dateTime = System.DateTime.UtcNow.AddHours(7.0);
				if (dateTime.Hour * 100 + dateTime.Minute < 250 || dateTime.Hour * 100 + dateTime.Minute > 810)
				{
					TuThap();
					PressKey("ESC");
				}
				countTimer_thap = 0;
				numericUpDownTuThap.Value = decimal.op_Implicit(num2 - 1);
			}
		}
		else
		{
			countTimer_thap = 0;
		}
	}

	private void buttonSave_Click(object sender, EventArgs e)
	{
		//IL_000e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0013: Unknown result type (might be due to invalid IL or missing references)
		//IL_0014: Unknown result type (might be due to invalid IL or missing references)
		//IL_0016: Invalid comparison between Unknown and I4
		//IL_0038: Unknown result type (might be due to invalid IL or missing references)
		//IL_003e: Expected O, but got Unknown
		DialogResult val = MessageBox.Show("Lưu Thay Đổi", "Daily", (MessageBoxButtons)4, (MessageBoxIcon)32);
		if ((int)val == 6)
		{
			TextWriter val2 = (TextWriter)new StreamWriter(pathData + "/Setting/" + nameUser + "/daily_v7.txt");
			val2.Write(scanSetting2());
			val2.Close();
			System.DateTime lastWriteTime = File.GetLastWriteTime(pathData + "/Setting/" + nameUser + "/daily_v7.txt");
			((Control)label17).Text = "Lần cuối lúc\r\n" + lastWriteTime.ToString("g");
		}
	}

	private string scanSetting()
	{
		string text = "";
		text = ((!checkBoxAutoClick.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + ((Control)comboBoxFile).Text + "\n";
		text = ((!checkBoxAll1.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxTH2.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxAll2.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxMHD2.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxLTC2.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxLD2.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxKBDM2.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxQHM2.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxTVLH2.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxTGS2.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxThanTu.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxVIP.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxQBang.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + numericUpDownBang.Value + "\n";
		text = ((!checkBoxEXP.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxTuHanh.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxTuHanh30P.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxQPet.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + numericUpDownPet.Value + "\n";
		text = ((!checkBoxSkinHanhLangKGDK.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxTheBai.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxNongTruong.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxNLTN.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxDaPet.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + numericUpDownDaPet.Value + "\n";
		text = ((!checkBoxTranhBaPK.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxTuThap.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + numericUpDownTuThap.Value + "\n";
		text = ((!checkBoxTrong.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + ((Control)comboBoxTrong).Text + "\n";
		text = ((!checkBoxTinhCung.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + numericUpDownTinhCung.Value + "\n";
		text = text + ((Control)comboBoxTinhCung_Loai).Text + "\n";
		text = text + ((Control)comboBoxTinhCung_Cap).Text + "\n";
		text = ((!checkBoxMB.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + ((Control)comboBoxMB_Cap).Text + "\n";
		text = text + ((Control)comboBoxMB_Loai).Text + "\n";
		if (checkBoxTM.Checked)
		{
			return text + "1\n";
		}
		return text + "0\n";
	}

	private string scanSetting2()
	{
		string text = "AutoClick:";
		text = ((!checkBoxAutoClick.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "FileName:";
		text = text + ((Control)comboBoxFile).Text + "\n";
		text += "Nhâ\u0323n Thươ\u0309ng Auto:";
		text = ((!checkBoxAll1.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Tha\u0301m Hiê\u0309m:";
		text = ((!checkBoxTH2.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Tâ\u0301t Ca\u0309 Phu\u0323 Ba\u0309n:";
		text = ((!checkBoxAll2.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "MHD:";
		text = ((!checkBoxMHD2.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "LTC:";
		text = ((!checkBoxLTC2.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "LD:";
		text = ((!checkBoxLD2.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "KBDM:";
		text = ((!checkBoxKBDM2.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "QHM:";
		text = ((!checkBoxQHM2.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "TVLH:";
		text = ((!checkBoxTVLH2.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "TGS:";
		text = ((!checkBoxTGS2.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Auto Thâ\u0300n Tu:";
		text = ((!checkBoxThanTu.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Phu\u0301c Lơ\u0323i VIP:";
		text = ((!checkBoxVIP.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Q Bang:";
		text = ((!checkBoxQBang.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Q Bang_NV:";
		text = text + numericUpDownBang.Value + "\n";
		text += "Phu\u0323c Hô\u0300i EXP:";
		text = ((!checkBoxEXP.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Auto Tu Ha\u0300nh:";
		text = ((!checkBoxTuHanh.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Tu Hành_Loa\u0323i:";
		text = text + ((Control)comboBoxTuHanh).Text + "\n";
		text += "Đơ\u0323i Tu Ha\u0300nh Hoa\u0300n Tha\u0300nh:";
		text = ((!checkBoxTuHanh30P.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Q Pet:";
		text = ((!checkBoxQPet.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Q Pet_NV:";
		text = text + numericUpDownPet.Value + "\n";
		text += "Skin_Ha\u0300nh Lang_KGDK:";
		text = ((!checkBoxSkinHanhLangKGDK.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "The\u0309 Ba\u0300i:";
		text = ((!checkBoxTheBai.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Nông Trươ\u0300ng:";
		text = ((!checkBoxNongTruong.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "NLTN:";
		text = ((!checkBoxNLTN.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Đa\u0301 Pet:";
		text = ((!checkBoxDaPet.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Đa\u0301 Pet_Lươ\u0323t:";
		text = text + numericUpDownDaPet.Value + "\n";
		text += "Tranh Ba\u0301 PK:";
		text = ((!checkBoxTranhBaPK.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Tu Tha\u0301p:";
		text = ((!checkBoxTuThap.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Tu Tha\u0301p_Lươ\u0323t:";
		text = text + numericUpDownTuThap.Value + "\n";
		text += "Trô\u0300ng:";
		text = ((!checkBoxTrong.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Trô\u0300ng_NL:";
		text = text + ((Control)comboBoxTrong).Text + "\n";
		text += "Tinh Cung:";
		text = ((!checkBoxTinhCung.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Tinh Cung_Lươ\u0323t:";
		text = text + numericUpDownTinhCung.Value + "\n";
		text += "Tinh Cung_Loa\u0323i:";
		text = text + ((Control)comboBoxTinhCung_Loai).Text + "\n";
		text += "Tinh Cung_Câ\u0301p:";
		text = text + ((Control)comboBoxTinhCung_Cap).Text + "\n";
		text += "Mâ\u0323t Ba\u0309o:";
		text = ((!checkBoxMB.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Mâ\u0323t Ba\u0309o_Câ\u0301p:";
		text = text + ((Control)comboBoxMB_Cap).Text + "\n";
		text += "Mâ\u0323t Ba\u0309o_Loa\u0323i:";
		text = text + ((Control)comboBoxMB_Loai).Text + "\n";
		text += "Trư\u0300 Ma:";
		text = ((!checkBoxTM.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Tinh Linh:";
		text = ((!checkBoxNuoiTinhLinh.Checked) ? (text + "0\n") : (text + "1\n"));
		for (int i = 0; i < dataGridView1.Rows.Count; i++)
		{
			text += "Tabs:";
			for (int j = 0; j < dataGridView1.ColumnCount - 1; j++)
			{
				text = ((dataGridView1.Rows[i].Cells[j].Value != null) ? (text + dataGridView1.Rows[i].Cells[j].Value.ToString() + "\t") : (text + " \t"));
			}
			text += "\n";
		}
		text += "Kiếp Nạn:";
		text = ((!checkBoxKiepNan.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Kiếp Nạn_Loa\u0323i:";
		text = text + ((Control)comboBoxKiepNan).Text + "\n";
		text += "Kiếp Nạn_Nhận:";
		text = ((!checkBoxAll2.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Sổ Tay:";
		text = ((!checkBoxST.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Sổ Tay_Loại:";
		text = string.Concat(new string[111]
		{
			text,
			numericUpDownST1.Value.ToString(),
			"-",
			numericUpDownST2.Value.ToString(),
			"-",
			numericUpDownST3.Value.ToString(),
			"-",
			numericUpDownST4.Value.ToString(),
			"-",
			numericUpDownST5.Value.ToString(),
			"-",
			numericUpDownST6.Value.ToString(),
			"-",
			numericUpDownST7.Value.ToString(),
			"-",
			numericUpDownST8.Value.ToString(),
			"-",
			numericUpDownST9.Value.ToString(),
			"-",
			numericUpDownST10.Value.ToString(),
			"-",
			numericUpDownST11.Value.ToString(),
			"-",
			numericUpDownST12.Value.ToString(),
			"-",
			numericUpDownST13.Value.ToString(),
			"-",
			numericUpDownST14.Value.ToString(),
			"-",
			numericUpDownST15.Value.ToString(),
			"-",
			numericUpDownST16.Value.ToString(),
			"-",
			numericUpDownST17.Value.ToString(),
			"-",
			numericUpDownST18.Value.ToString(),
			"-",
			numericUpDownST19.Value.ToString(),
			"-",
			numericUpDownST20.Value.ToString(),
			"-",
			numericUpDownST21.Value.ToString(),
			"-",
			numericUpDownST22.Value.ToString(),
			"-",
			numericUpDownST23.Value.ToString(),
			"-",
			numericUpDownST24.Value.ToString(),
			"-",
			numericUpDownST25.Value.ToString(),
			"-",
			numericUpDownST26.Value.ToString(),
			"-",
			numericUpDownST27.Value.ToString(),
			"-",
			numericUpDownST28.Value.ToString(),
			"-",
			numericUpDownST29.Value.ToString(),
			"-",
			numericUpDownST30.Value.ToString(),
			"-",
			numericUpDownST31.Value.ToString(),
			"-",
			numericUpDownST32.Value.ToString(),
			"-",
			numericUpDownST33.Value.ToString(),
			"-",
			numericUpDownST34.Value.ToString(),
			"-",
			numericUpDownST35.Value.ToString(),
			"-",
			numericUpDownST36.Value.ToString(),
			"-",
			numericUpDownST37.Value.ToString(),
			"-",
			numericUpDownST38.Value.ToString(),
			"-",
			numericUpDownST39.Value.ToString(),
			"-",
			numericUpDownST40.Value.ToString(),
			"-",
			numericUpDownST41.Value.ToString(),
			"-",
			numericUpDownST42.Value.ToString(),
			"-",
			numericUpDownST43.Value.ToString(),
			"-",
			numericUpDownST44.Value.ToString(),
			"-",
			numericUpDownST45.Value.ToString(),
			"-",
			numericUpDownST46.Value.ToString(),
			"-",
			numericUpDownST47.Value.ToString(),
			"-",
			numericUpDownST48.Value.ToString(),
			"-",
			numericUpDownST49.Value.ToString(),
			"-",
			numericUpDownST50.Value.ToString(),
			"-",
			numericUpDownST51.Value.ToString(),
			"-",
			numericUpDownST52.Value.ToString(),
			"-",
			numericUpDownST53.Value.ToString(),
			"-",
			numericUpDownST54.Value.ToString(),
			"-",
			numericUpDownST55.Value.ToString(),
			"\n"
		});
		text += "Sổ Tay_Loại2:";
		text = string.Concat(new string[41]
		{
			text,
			numericUpDownST56.Value.ToString(),
			"-",
			numericUpDownST57.Value.ToString(),
			"-",
			numericUpDownST58.Value.ToString(),
			"-",
			numericUpDownST59.Value.ToString(),
			"-",
			numericUpDownST60.Value.ToString(),
			"-",
			numericUpDownST61.Value.ToString(),
			"-",
			numericUpDownST62.Value.ToString(),
			"-",
			numericUpDownST63.Value.ToString(),
			"-",
			numericUpDownST64.Value.ToString(),
			"-",
			numericUpDownST65.Value.ToString(),
			"-",
			numericUpDownST66.Value.ToString(),
			"-",
			numericUpDownST67.Value.ToString(),
			"-",
			numericUpDownST68.Value.ToString(),
			"-",
			numericUpDownST69.Value.ToString(),
			"-",
			numericUpDownST70.Value.ToString(),
			"-",
			numericUpDownST71.Value.ToString(),
			"-",
			numericUpDownST72.Value.ToString(),
			"-",
			numericUpDownST73.Value.ToString(),
			"-",
			numericUpDownST74.Value.ToString(),
			"-",
			numericUpDownST75.Value.ToString(),
			"\n"
		});
		text += "Q Câu Cá:";
		text = ((!checkBoxQcauca.Checked) ? (text + "0\n") : (text + "1\n"));
		text += "Q Hái Thuốc:";
		if (checkBoxQhaithuoc.Checked)
		{
			return text + "1\n";
		}
		return text + "0\n";
	}

	private bool loadSetting(string filename = "/daily.txt")
	{
		//IL_00b1: Unknown result type (might be due to invalid IL or missing references)
		if (!File.Exists(pathData + "/Setting/" + nameUser + filename))
		{
			Directory.CreateDirectory(pathData + "/Setting/" + nameUser);
			return false;
		}
		System.DateTime lastWriteTime = File.GetLastWriteTime(pathData + "/Setting/" + nameUser + filename);
		if (lastWriteTime.Year * 10000 + lastWriteTime.Month * 100 + lastWriteTime.Day < 20230510)
		{
			MessageBox.Show("Bản Lưu Thiết Lập " + ((Control)this).Text + " Đã Cũ Do Có Thay Đổi/Thêm Các Tùy Chọn.\r\nVui Lòng Lưu Lại Thiết Lập Daily!", "BMx-Tool: Daily", (MessageBoxButtons)0, (MessageBoxIcon)64);
			return false;
		}
		string[] array = File.ReadAllLines(pathData + "/Setting/" + nameUser + filename);
		int num = 0;
		int num2 = 0;
		if (array[num2].Trim() == "1")
		{
			checkBoxAutoClick.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxAutoClick.CheckState = (CheckState)0;
		}
		((Control)comboBoxFile).Text = array[++num2].Trim();
		if (array[++num2].Trim() == "1")
		{
			checkBoxAll1.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxAll1.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxTH2.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxTH2.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxAll2.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxAll2.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxMHD2.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxMHD2.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxLTC2.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxLTC2.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxLD2.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxLD2.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxKBDM2.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxKBDM2.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxQHM2.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxQHM2.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxTVLH2.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxTVLH2.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxTGS2.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxTGS2.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxThanTu.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxThanTu.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxVIP.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxVIP.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxQBang.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxQBang.CheckState = (CheckState)0;
		}
		int.TryParse(array[++num2].Trim(), ref num);
		numericUpDownBang.Value = decimal.op_Implicit(num);
		if (array[++num2].Trim() == "1")
		{
			checkBoxEXP.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxEXP.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxTuHanh.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxTuHanh.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxTuHanh30P.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxTuHanh30P.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxQPet.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxQPet.CheckState = (CheckState)0;
		}
		int.TryParse(array[++num2].Trim(), ref num);
		numericUpDownPet.Value = decimal.op_Implicit(num);
		if (array[++num2].Trim() == "1")
		{
			checkBoxSkinHanhLangKGDK.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxSkinHanhLangKGDK.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxTheBai.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxTheBai.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxNongTruong.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxNongTruong.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxNLTN.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxNLTN.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxDaPet.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxDaPet.CheckState = (CheckState)0;
		}
		int.TryParse(array[++num2].Trim(), ref num);
		numericUpDownDaPet.Value = decimal.op_Implicit(num);
		if (array[++num2].Trim() == "1")
		{
			checkBoxTranhBaPK.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxTranhBaPK.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxTuThap.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxTuThap.CheckState = (CheckState)0;
		}
		int.TryParse(array[++num2].Trim(), ref num);
		numericUpDownTuThap.Value = decimal.op_Implicit(num);
		if (array[++num2].Trim() == "1")
		{
			checkBoxTrong.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxTrong.CheckState = (CheckState)0;
		}
		((Control)comboBoxTrong).Text = array[++num2].Trim();
		if (array[++num2].Trim() == "1")
		{
			checkBoxTinhCung.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxTinhCung.CheckState = (CheckState)0;
		}
		int.TryParse(array[++num2].Trim(), ref num);
		numericUpDownTinhCung.Value = decimal.op_Implicit(num);
		((Control)comboBoxTinhCung_Loai).Text = array[++num2].Trim();
		((Control)comboBoxTinhCung_Cap).Text = array[++num2].Trim();
		if (array[++num2].Trim() == "1")
		{
			checkBoxMB.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxMB.CheckState = (CheckState)0;
		}
		((Control)comboBoxMB_Cap).Text = array[++num2].Trim();
		((Control)comboBoxMB_Loai).Text = array[++num2].Trim();
		if (array[++num2].Trim() == "1")
		{
			checkBoxTM.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxTM.CheckState = (CheckState)0;
		}
		((Control)label17).Text = "Lần cuối lúc\r\n" + lastWriteTime.ToString("g");
		debugText("Đã Áp Dụng Cài Đặt \"Daily\" Lần Cuối Lúc\r\n" + lastWriteTime.ToString("g"));
		return true;
	}

	private bool loadSetting2(string filename = "/daily_v7.txt")
	{
		if (!File.Exists(pathData + "/Setting/" + nameUser + filename))
		{
			Directory.CreateDirectory(pathData + "/Setting/" + nameUser);
			return false;
		}
		System.DateTime lastWriteTime = File.GetLastWriteTime(pathData + "/Setting/" + nameUser + filename);
		int num = 0;
		int num2 = 0;
		string[] array = File.ReadAllLines(pathData + "/Setting/" + nameUser + filename);
		for (int i = 0; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array); i++)
		{
			string[] array2 = array[i].Split(':', (StringSplitOptions)0);
			string text = array2[0];
			string text2 = text;
			switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text2))
			{
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
			case 3763910162u:
				if (text2 == "Nhâ\u0323n Thươ\u0309ng Auto")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxAll1.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxAll1.CheckState = (CheckState)0;
					}
				}
				break;
			case 1792049871u:
				if (text2 == "Tha\u0301m Hiê\u0309m")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxTH2.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxTH2.CheckState = (CheckState)0;
					}
				}
				break;
			case 2592696955u:
				if (text2 == "Tâ\u0301t Ca\u0309 Phu\u0323 Ba\u0309n")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxAll2.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxAll2.CheckState = (CheckState)0;
					}
				}
				break;
			case 1648535388u:
				if (text2 == "MHD")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxMHD2.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxMHD2.CheckState = (CheckState)0;
					}
				}
				break;
			case 3329145194u:
				if (text2 == "LTC")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxLTC2.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxLTC2.CheckState = (CheckState)0;
					}
				}
				break;
			case 1826771517u:
				if (text2 == "LD")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxLD2.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxLD2.CheckState = (CheckState)0;
					}
				}
				break;
			case 2858389659u:
				if (text2 == "KBDM")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxKBDM2.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxKBDM2.CheckState = (CheckState)0;
					}
				}
				break;
			case 1154859715u:
				if (text2 == "QHM")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxQHM2.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxQHM2.CheckState = (CheckState)0;
					}
				}
				break;
			case 631593507u:
				if (text2 == "TVLH")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxTVLH2.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxTVLH2.CheckState = (CheckState)0;
					}
				}
				break;
			case 4231538125u:
				if (text2 == "TGS")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxTGS2.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxTGS2.CheckState = (CheckState)0;
					}
				}
				break;
			case 3228244885u:
				if (text2 == "Auto Thâ\u0300n Tu")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxThanTu.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxThanTu.CheckState = (CheckState)0;
					}
				}
				break;
			case 3920778224u:
				if (text2 == "Phu\u0301c Lơ\u0323i VIP")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxVIP.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxVIP.CheckState = (CheckState)0;
					}
				}
				break;
			case 2670542998u:
				if (text2 == "Q Bang")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxQBang.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxQBang.CheckState = (CheckState)0;
					}
				}
				break;
			case 4000796491u:
				if (text2 == "Q Bang_NV")
				{
					int.TryParse(array2[1].Trim(), ref num);
					numericUpDownBang.Value = decimal.op_Implicit(num);
				}
				break;
			case 2374686010u:
				if (text2 == "Phu\u0323c Hô\u0300i EXP")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxEXP.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxEXP.CheckState = (CheckState)0;
					}
				}
				break;
			case 3355670306u:
				if (text2 == "Auto Tu Ha\u0300nh")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxTuHanh.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxTuHanh.CheckState = (CheckState)0;
					}
				}
				break;
			case 4278180383u:
				if (text2 == "Tu Hành_Loa\u0323i")
				{
					((Control)comboBoxTuHanh).Text = array2[1].Trim();
				}
				break;
			case 3019757675u:
				if (text2 == "Đơ\u0323i Tu Ha\u0300nh Hoa\u0300n Tha\u0300nh")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxTuHanh30P.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxTuHanh30P.CheckState = (CheckState)0;
					}
				}
				break;
			case 538322029u:
				if (text2 == "Q Pet")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxQPet.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxQPet.CheckState = (CheckState)0;
					}
				}
				break;
			case 626711962u:
				if (text2 == "Q Pet_NV")
				{
					int.TryParse(array2[1].Trim(), ref num);
					numericUpDownPet.Value = decimal.op_Implicit(num);
				}
				break;
			case 3331182346u:
				if (text2 == "Skin_Ha\u0300nh Lang_KGDK")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxSkinHanhLangKGDK.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxSkinHanhLangKGDK.CheckState = (CheckState)0;
					}
				}
				break;
			case 3614446847u:
				if (text2 == "The\u0309 Ba\u0300i")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxTheBai.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxTheBai.CheckState = (CheckState)0;
					}
				}
				break;
			case 1472647192u:
				if (text2 == "Nông Trươ\u0300ng")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxNongTruong.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxNongTruong.CheckState = (CheckState)0;
					}
				}
				break;
			case 3782211781u:
				if (text2 == "NLTN")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxNLTN.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxNLTN.CheckState = (CheckState)0;
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
			case 1866847567u:
				if (text2 == "Đa\u0301 Pet_Lươ\u0323t")
				{
					int.TryParse(array2[1].Trim(), ref num);
					numericUpDownDaPet.Value = decimal.op_Implicit(num);
				}
				break;
			case 1384636165u:
				if (text2 == "Tranh Ba\u0301 PK")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxTranhBaPK.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxTranhBaPK.CheckState = (CheckState)0;
					}
				}
				break;
			case 2075788272u:
				if (text2 == "Tu Tha\u0301p")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxTuThap.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxTuThap.CheckState = (CheckState)0;
					}
				}
				break;
			case 448343503u:
				if (text2 == "Tu Tha\u0301p_Lươ\u0323t")
				{
					int.TryParse(array2[1].Trim(), ref num);
					numericUpDownTuThap.Value = decimal.op_Implicit(num);
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
			case 2684307035u:
				if (text2 == "Trô\u0300ng_NL")
				{
					((Control)comboBoxTrong).Text = array2[1].Trim();
				}
				break;
			case 3597734659u:
				if (text2 == "Tinh Cung")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxTinhCung.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxTinhCung.CheckState = (CheckState)0;
					}
				}
				break;
			case 4103105860u:
				if (text2 == "Tinh Cung_Lươ\u0323t")
				{
					int.TryParse(array2[1].Trim(), ref num);
					numericUpDownTinhCung.Value = decimal.op_Implicit(num);
				}
				break;
			case 852122556u:
				if (text2 == "Tinh Cung_Loa\u0323i")
				{
					((Control)comboBoxTinhCung_Loai).Text = array2[1].Trim();
				}
				break;
			case 2075174148u:
				if (text2 == "Tinh Cung_Câ\u0301p")
				{
					((Control)comboBoxTinhCung_Cap).Text = array2[1].Trim();
				}
				break;
			case 3794214782u:
				if (text2 == "Mâ\u0323t Ba\u0309o")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxMB.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxMB.CheckState = (CheckState)0;
					}
				}
				break;
			case 3969816511u:
				if (text2 == "Mâ\u0323t Ba\u0309o_Câ\u0301p")
				{
					((Control)comboBoxMB_Cap).Text = array2[1].Trim();
				}
				break;
			case 938240097u:
				if (text2 == "Mâ\u0323t Ba\u0309o_Loa\u0323i")
				{
					((Control)comboBoxMB_Loai).Text = array2[1].Trim();
				}
				break;
			case 2605646095u:
				if (text2 == "Trư\u0300 Ma")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxTM.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxTM.CheckState = (CheckState)0;
					}
				}
				break;
			case 4033828865u:
				if (text2 == "Tinh Linh")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxNuoiTinhLinh.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxNuoiTinhLinh.CheckState = (CheckState)0;
					}
				}
				break;
			case 2395243085u:
				if (text2 == "Tabs")
				{
					if (num2 == 0)
					{
						dataGridView1.Rows.Clear();
						num2++;
					}
					dataGridView1.Rows.Add(new object[3]
					{
						array2[1].Split("\t", (StringSplitOptions)0)[0],
						array2[1].Split("\t", (StringSplitOptions)0)[1],
						array2[1].Split("\t", (StringSplitOptions)0)[2]
					});
				}
				break;
			case 1614979027u:
				if (text2 == "Kiếp Nạn")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxKiepNan.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxKiepNan.CheckState = (CheckState)0;
					}
				}
				break;
			case 3949104300u:
				if (text2 == "Kiếp Nạn_Loa\u0323i")
				{
					((Control)comboBoxKiepNan).Text = array2[1].Trim();
				}
				break;
			case 1557681193u:
				if (text2 == "Kiếp Nạn_Nhận")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxAll2.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxAll2.CheckState = (CheckState)0;
					}
				}
				break;
			case 1317079099u:
				if (text2 == "Sổ Tay")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxST.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxST.CheckState = (CheckState)0;
					}
				}
				break;
			case 227466151u:
				if (text2 == "Sổ Tay_Loại")
				{
					string[] array4 = array2[1].Trim().Split('-', (StringSplitOptions)0);
					int num4 = 0;
					int.TryParse(array4[num4].Trim(), ref num);
					numericUpDownST1.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST2.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST3.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST4.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST5.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST6.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST7.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST8.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST9.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST10.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST11.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST12.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST13.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST14.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST15.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST16.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST17.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST18.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST19.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST20.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST21.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST22.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST23.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST24.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST25.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST26.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST27.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST28.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST29.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST30.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST31.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST32.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST33.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST34.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST35.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST36.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST37.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST38.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST39.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST40.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST41.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST42.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST43.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST44.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST45.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST46.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST47.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST48.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST49.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST50.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST51.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST52.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST53.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST54.Value = decimal.op_Implicit(num);
					int.TryParse(array4[++num4].Trim(), ref num);
					numericUpDownST55.Value = decimal.op_Implicit(num);
				}
				break;
			case 3974343567u:
				if (text2 == "Sổ Tay_Loại2")
				{
					string[] array3 = array2[1].Trim().Split('-', (StringSplitOptions)0);
					int num3 = 0;
					int.TryParse(array3[num3].Trim(), ref num);
					numericUpDownST56.Value = decimal.op_Implicit(num);
					int.TryParse(array3[++num3].Trim(), ref num);
					numericUpDownST57.Value = decimal.op_Implicit(num);
					int.TryParse(array3[++num3].Trim(), ref num);
					numericUpDownST58.Value = decimal.op_Implicit(num);
					int.TryParse(array3[++num3].Trim(), ref num);
					numericUpDownST59.Value = decimal.op_Implicit(num);
					int.TryParse(array3[++num3].Trim(), ref num);
					numericUpDownST60.Value = decimal.op_Implicit(num);
					int.TryParse(array3[++num3].Trim(), ref num);
					numericUpDownST61.Value = decimal.op_Implicit(num);
					int.TryParse(array3[++num3].Trim(), ref num);
					numericUpDownST62.Value = decimal.op_Implicit(num);
					int.TryParse(array3[++num3].Trim(), ref num);
					numericUpDownST63.Value = decimal.op_Implicit(num);
					int.TryParse(array3[++num3].Trim(), ref num);
					numericUpDownST64.Value = decimal.op_Implicit(num);
					int.TryParse(array3[++num3].Trim(), ref num);
					numericUpDownST65.Value = decimal.op_Implicit(num);
					int.TryParse(array3[++num3].Trim(), ref num);
					numericUpDownST66.Value = decimal.op_Implicit(num);
					int.TryParse(array3[++num3].Trim(), ref num);
					numericUpDownST67.Value = decimal.op_Implicit(num);
					int.TryParse(array3[++num3].Trim(), ref num);
					numericUpDownST68.Value = decimal.op_Implicit(num);
					int.TryParse(array3[++num3].Trim(), ref num);
					numericUpDownST69.Value = decimal.op_Implicit(num);
					int.TryParse(array3[++num3].Trim(), ref num);
					numericUpDownST70.Value = decimal.op_Implicit(num);
					int.TryParse(array3[++num3].Trim(), ref num);
					numericUpDownST71.Value = decimal.op_Implicit(num);
					int.TryParse(array3[++num3].Trim(), ref num);
					numericUpDownST72.Value = decimal.op_Implicit(num);
					int.TryParse(array3[++num3].Trim(), ref num);
					numericUpDownST73.Value = decimal.op_Implicit(num);
					int.TryParse(array3[++num3].Trim(), ref num);
					numericUpDownST74.Value = decimal.op_Implicit(num);
					int.TryParse(array3[++num3].Trim(), ref num);
					numericUpDownST75.Value = decimal.op_Implicit(num);
				}
				break;
			case 3489249896u:
				if (text2 == "Q Câu Cá")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxQcauca.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxQcauca.CheckState = (CheckState)0;
					}
				}
				break;
			case 3374987637u:
				if (text2 == "Q Hái Thuốc")
				{
					if (array2[1].Trim() == "1")
					{
						checkBoxQhaithuoc.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxQhaithuoc.CheckState = (CheckState)0;
					}
				}
				break;
			}
		}
		((Control)label17).Text = "Lần cuối lúc\r\n" + lastWriteTime.ToString("g");
		debugText("Đã Áp Dụng Cài Đặt \"Daily V7\" Lần Cuối Lúc\r\n" + lastWriteTime.ToString("g"));
		return true;
	}

	private bool loadTheme()
	{
		//IL_010f: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0309: Unknown result type (might be due to invalid IL or missing references)
		//IL_031b: Unknown result type (might be due to invalid IL or missing references)
		//IL_032d: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_00da: Unknown result type (might be due to invalid IL or missing references)
		//IL_035f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0371: Unknown result type (might be due to invalid IL or missing references)
		//IL_0383: Unknown result type (might be due to invalid IL or missing references)
		//IL_0395: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_03b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_03cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_03dd: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_0401: Unknown result type (might be due to invalid IL or missing references)
		//IL_0413: Unknown result type (might be due to invalid IL or missing references)
		//IL_0425: Unknown result type (might be due to invalid IL or missing references)
		//IL_0437: Unknown result type (might be due to invalid IL or missing references)
		//IL_0449: Unknown result type (might be due to invalid IL or missing references)
		//IL_045b: Unknown result type (might be due to invalid IL or missing references)
		//IL_046d: Unknown result type (might be due to invalid IL or missing references)
		//IL_047f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0491: Unknown result type (might be due to invalid IL or missing references)
		//IL_04a3: Unknown result type (might be due to invalid IL or missing references)
		//IL_04b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_04c7: Unknown result type (might be due to invalid IL or missing references)
		//IL_04d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_04eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_04fd: Unknown result type (might be due to invalid IL or missing references)
		//IL_050f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0521: Unknown result type (might be due to invalid IL or missing references)
		//IL_0533: Unknown result type (might be due to invalid IL or missing references)
		//IL_0545: Unknown result type (might be due to invalid IL or missing references)
		//IL_0557: Unknown result type (might be due to invalid IL or missing references)
		//IL_0569: Unknown result type (might be due to invalid IL or missing references)
		//IL_057b: Unknown result type (might be due to invalid IL or missing references)
		//IL_058d: Unknown result type (might be due to invalid IL or missing references)
		//IL_059f: Unknown result type (might be due to invalid IL or missing references)
		//IL_05b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_05c3: Unknown result type (might be due to invalid IL or missing references)
		//IL_05d5: Unknown result type (might be due to invalid IL or missing references)
		//IL_05e7: Unknown result type (might be due to invalid IL or missing references)
		//IL_05f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_060b: Unknown result type (might be due to invalid IL or missing references)
		//IL_061d: Unknown result type (might be due to invalid IL or missing references)
		//IL_062f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0641: Unknown result type (might be due to invalid IL or missing references)
		//IL_0653: Unknown result type (might be due to invalid IL or missing references)
		//IL_0665: Unknown result type (might be due to invalid IL or missing references)
		//IL_0691: Unknown result type (might be due to invalid IL or missing references)
		//IL_06a3: Unknown result type (might be due to invalid IL or missing references)
		//IL_06b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_06c7: Unknown result type (might be due to invalid IL or missing references)
		//IL_06d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_06eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_06fd: Unknown result type (might be due to invalid IL or missing references)
		//IL_070f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0721: Unknown result type (might be due to invalid IL or missing references)
		//IL_0733: Unknown result type (might be due to invalid IL or missing references)
		//IL_0745: Unknown result type (might be due to invalid IL or missing references)
		//IL_0757: Unknown result type (might be due to invalid IL or missing references)
		//IL_0769: Unknown result type (might be due to invalid IL or missing references)
		//IL_077b: Unknown result type (might be due to invalid IL or missing references)
		//IL_078d: Unknown result type (might be due to invalid IL or missing references)
		//IL_079f: Unknown result type (might be due to invalid IL or missing references)
		//IL_07b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_07c3: Unknown result type (might be due to invalid IL or missing references)
		//IL_07d5: Unknown result type (might be due to invalid IL or missing references)
		//IL_07e7: Unknown result type (might be due to invalid IL or missing references)
		//IL_07f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_080b: Unknown result type (might be due to invalid IL or missing references)
		//IL_081d: Unknown result type (might be due to invalid IL or missing references)
		//IL_082f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0841: Unknown result type (might be due to invalid IL or missing references)
		//IL_0853: Unknown result type (might be due to invalid IL or missing references)
		//IL_0865: Unknown result type (might be due to invalid IL or missing references)
		//IL_0877: Unknown result type (might be due to invalid IL or missing references)
		//IL_0889: Unknown result type (might be due to invalid IL or missing references)
		//IL_089b: Unknown result type (might be due to invalid IL or missing references)
		//IL_08ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_08bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_08d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_08e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_08f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0907: Unknown result type (might be due to invalid IL or missing references)
		//IL_0919: Unknown result type (might be due to invalid IL or missing references)
		//IL_092b: Unknown result type (might be due to invalid IL or missing references)
		//IL_093d: Unknown result type (might be due to invalid IL or missing references)
		//IL_094f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0961: Unknown result type (might be due to invalid IL or missing references)
		//IL_0973: Unknown result type (might be due to invalid IL or missing references)
		//IL_0985: Unknown result type (might be due to invalid IL or missing references)
		//IL_0997: Unknown result type (might be due to invalid IL or missing references)
		//IL_09e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_09ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_09f4: Expected O, but got Unknown
		//IL_0a14: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a19: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a23: Expected O, but got Unknown
		//IL_0a43: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a48: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a52: Expected O, but got Unknown
		//IL_0a72: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a77: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a81: Expected O, but got Unknown
		//IL_0aa1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0aa6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ab0: Expected O, but got Unknown
		//IL_0ad0: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ad5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0adf: Expected O, but got Unknown
		//IL_0aff: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b04: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b0e: Expected O, but got Unknown
		//IL_0b2e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b33: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b3d: Expected O, but got Unknown
		//IL_0b5d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b62: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b6c: Expected O, but got Unknown
		//IL_0b8c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b91: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b9b: Expected O, but got Unknown
		//IL_0bbb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bc0: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bca: Expected O, but got Unknown
		//IL_0bea: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bef: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bf9: Expected O, but got Unknown
		//IL_0c19: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c1e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c28: Expected O, but got Unknown
		//IL_0c48: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c4d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c57: Expected O, but got Unknown
		//IL_0c77: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c7c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c86: Expected O, but got Unknown
		//IL_0ca6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cab: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cb5: Expected O, but got Unknown
		//IL_0cd5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cda: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ce4: Expected O, but got Unknown
		//IL_0d04: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d09: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d13: Expected O, but got Unknown
		//IL_0d33: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d38: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d42: Expected O, but got Unknown
		//IL_0d62: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d67: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d71: Expected O, but got Unknown
		//IL_0d91: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d96: Unknown result type (might be due to invalid IL or missing references)
		//IL_0da0: Expected O, but got Unknown
		//IL_0dc0: Unknown result type (might be due to invalid IL or missing references)
		//IL_0dc5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0dcf: Expected O, but got Unknown
		//IL_0def: Unknown result type (might be due to invalid IL or missing references)
		//IL_0df4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0dfe: Expected O, but got Unknown
		//IL_0e1e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e23: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e2d: Expected O, but got Unknown
		//IL_0e4d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e52: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e5c: Expected O, but got Unknown
		//IL_0e7c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e81: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e8b: Expected O, but got Unknown
		//IL_0eab: Unknown result type (might be due to invalid IL or missing references)
		//IL_0eb0: Unknown result type (might be due to invalid IL or missing references)
		//IL_0eba: Expected O, but got Unknown
		//IL_0eda: Unknown result type (might be due to invalid IL or missing references)
		//IL_0edf: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ee9: Expected O, but got Unknown
		//IL_0f09: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f0e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f18: Expected O, but got Unknown
		//IL_0f38: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f3d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f47: Expected O, but got Unknown
		//IL_0f67: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f6c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f76: Expected O, but got Unknown
		//IL_0f96: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f9b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fa5: Expected O, but got Unknown
		//IL_0fc5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fca: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fd4: Expected O, but got Unknown
		//IL_0ff4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ff9: Unknown result type (might be due to invalid IL or missing references)
		//IL_1003: Expected O, but got Unknown
		//IL_1023: Unknown result type (might be due to invalid IL or missing references)
		//IL_1028: Unknown result type (might be due to invalid IL or missing references)
		//IL_1032: Expected O, but got Unknown
		//IL_1052: Unknown result type (might be due to invalid IL or missing references)
		//IL_1057: Unknown result type (might be due to invalid IL or missing references)
		//IL_1061: Expected O, but got Unknown
		//IL_1081: Unknown result type (might be due to invalid IL or missing references)
		//IL_1086: Unknown result type (might be due to invalid IL or missing references)
		//IL_1090: Expected O, but got Unknown
		//IL_10b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_10b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_10bf: Expected O, but got Unknown
		//IL_10df: Unknown result type (might be due to invalid IL or missing references)
		//IL_10e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_10ee: Expected O, but got Unknown
		//IL_110e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1113: Unknown result type (might be due to invalid IL or missing references)
		//IL_111d: Expected O, but got Unknown
		//IL_113d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1142: Unknown result type (might be due to invalid IL or missing references)
		//IL_114c: Expected O, but got Unknown
		//IL_116c: Unknown result type (might be due to invalid IL or missing references)
		//IL_1171: Unknown result type (might be due to invalid IL or missing references)
		//IL_117b: Expected O, but got Unknown
		//IL_119b: Unknown result type (might be due to invalid IL or missing references)
		//IL_11a0: Unknown result type (might be due to invalid IL or missing references)
		//IL_11aa: Expected O, but got Unknown
		//IL_11ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_11cf: Unknown result type (might be due to invalid IL or missing references)
		//IL_11d9: Expected O, but got Unknown
		//IL_1201: Unknown result type (might be due to invalid IL or missing references)
		//IL_1213: Unknown result type (might be due to invalid IL or missing references)
		//IL_1225: Unknown result type (might be due to invalid IL or missing references)
		//IL_1237: Unknown result type (might be due to invalid IL or missing references)
		//IL_1249: Unknown result type (might be due to invalid IL or missing references)
		//IL_125b: Unknown result type (might be due to invalid IL or missing references)
		//IL_126d: Unknown result type (might be due to invalid IL or missing references)
		//IL_127f: Unknown result type (might be due to invalid IL or missing references)
		//IL_1291: Unknown result type (might be due to invalid IL or missing references)
		//IL_12bd: Unknown result type (might be due to invalid IL or missing references)
		//IL_12cf: Unknown result type (might be due to invalid IL or missing references)
		//IL_12e1: Unknown result type (might be due to invalid IL or missing references)
		//IL_12f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_1305: Unknown result type (might be due to invalid IL or missing references)
		//IL_1317: Unknown result type (might be due to invalid IL or missing references)
		//IL_1329: Unknown result type (might be due to invalid IL or missing references)
		//IL_133b: Unknown result type (might be due to invalid IL or missing references)
		//IL_134d: Unknown result type (might be due to invalid IL or missing references)
		//IL_139b: Unknown result type (might be due to invalid IL or missing references)
		//IL_13a0: Unknown result type (might be due to invalid IL or missing references)
		//IL_13aa: Expected O, but got Unknown
		//IL_13ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_13cf: Unknown result type (might be due to invalid IL or missing references)
		//IL_13d9: Expected O, but got Unknown
		//IL_13f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_13fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_1408: Expected O, but got Unknown
		//IL_1428: Unknown result type (might be due to invalid IL or missing references)
		//IL_142d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1437: Expected O, but got Unknown
		//IL_1457: Unknown result type (might be due to invalid IL or missing references)
		//IL_145c: Unknown result type (might be due to invalid IL or missing references)
		//IL_1466: Expected O, but got Unknown
		//IL_1486: Unknown result type (might be due to invalid IL or missing references)
		//IL_148b: Unknown result type (might be due to invalid IL or missing references)
		//IL_1495: Expected O, but got Unknown
		//IL_14b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_14ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_14c4: Expected O, but got Unknown
		//IL_14e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_14e9: Unknown result type (might be due to invalid IL or missing references)
		//IL_14f3: Expected O, but got Unknown
		//IL_1513: Unknown result type (might be due to invalid IL or missing references)
		//IL_1518: Unknown result type (might be due to invalid IL or missing references)
		//IL_1522: Expected O, but got Unknown
		//IL_154a: Unknown result type (might be due to invalid IL or missing references)
		//IL_155c: Unknown result type (might be due to invalid IL or missing references)
		//IL_156e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1580: Unknown result type (might be due to invalid IL or missing references)
		//IL_1592: Unknown result type (might be due to invalid IL or missing references)
		//IL_15a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_15b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_15c8: Unknown result type (might be due to invalid IL or missing references)
		//IL_15f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_1606: Unknown result type (might be due to invalid IL or missing references)
		//IL_1618: Unknown result type (might be due to invalid IL or missing references)
		//IL_162a: Unknown result type (might be due to invalid IL or missing references)
		//IL_163c: Unknown result type (might be due to invalid IL or missing references)
		//IL_164e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1660: Unknown result type (might be due to invalid IL or missing references)
		//IL_1672: Unknown result type (might be due to invalid IL or missing references)
		//IL_16c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_16c5: Unknown result type (might be due to invalid IL or missing references)
		//IL_16cf: Expected O, but got Unknown
		//IL_16ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_16f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_16fe: Expected O, but got Unknown
		//IL_171e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1723: Unknown result type (might be due to invalid IL or missing references)
		//IL_172d: Expected O, but got Unknown
		//IL_174d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1752: Unknown result type (might be due to invalid IL or missing references)
		//IL_175c: Expected O, but got Unknown
		//IL_177c: Unknown result type (might be due to invalid IL or missing references)
		//IL_1781: Unknown result type (might be due to invalid IL or missing references)
		//IL_178b: Expected O, but got Unknown
		//IL_17ab: Unknown result type (might be due to invalid IL or missing references)
		//IL_17b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_17ba: Expected O, but got Unknown
		//IL_17da: Unknown result type (might be due to invalid IL or missing references)
		//IL_17df: Unknown result type (might be due to invalid IL or missing references)
		//IL_17e9: Expected O, but got Unknown
		//IL_1809: Unknown result type (might be due to invalid IL or missing references)
		//IL_180e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1818: Expected O, but got Unknown
		//IL_0231: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0263: Unknown result type (might be due to invalid IL or missing references)
		//IL_0275: Unknown result type (might be due to invalid IL or missing references)
		//IL_0287: Unknown result type (might be due to invalid IL or missing references)
		//IL_0299: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ab: Unknown result type (might be due to invalid IL or missing references)
		//IL_02bd: Unknown result type (might be due to invalid IL or missing references)
		//IL_023a: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_0243: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_024c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0255: Unknown result type (might be due to invalid IL or missing references)
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
					((Control)groupBox5).BackgroundImage = Image.FromFile(fileName);
					((Control)groupBox3).BackgroundImage = Image.FromFile(fileName);
					((Control)groupBox4).BackgroundImage = Image.FromFile(fileName);
					((Control)groupBox6).BackgroundImage = Image.FromFile(fileName);
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
					((Control)groupBox2).BackgroundImageLayout = layout;
					((Control)groupBox1).BackgroundImageLayout = layout;
					((Control)groupBox5).BackgroundImageLayout = layout;
					((Control)groupBox3).BackgroundImageLayout = layout;
					((Control)groupBox4).BackgroundImageLayout = layout;
					((Control)groupBox6).BackgroundImageLayout = layout;
				}
				else
				{
					((Control)groupBox2).BackColor = Color.FromArgb(num2);
					((Control)groupBox1).BackColor = Color.FromArgb(num2);
					((Control)groupBox5).BackColor = Color.FromArgb(num2);
					((Control)groupBox3).BackColor = Color.FromArgb(num2);
					((Control)groupBox4).BackColor = Color.FromArgb(num2);
					((Control)groupBox6).BackColor = Color.FromArgb(num2);
				}
				int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
				((Control)label1).BackColor = Color.FromArgb(num2);
				((Control)label2).BackColor = Color.FromArgb(num2);
				((Control)label3).BackColor = Color.FromArgb(num2);
				((Control)label13).BackColor = Color.FromArgb(num2);
				((Control)label6).BackColor = Color.FromArgb(num2);
				((Control)label12).BackColor = Color.FromArgb(num2);
				((Control)label7).BackColor = Color.FromArgb(num2);
				((Control)label9).BackColor = Color.FromArgb(num2);
				((Control)label10).BackColor = Color.FromArgb(num2);
				((Control)label11).BackColor = Color.FromArgb(num2);
				((Control)label5).BackColor = Color.FromArgb(num2);
				((Control)label17).BackColor = Color.FromArgb(num2);
				((Control)checkBoxAutoClick).BackColor = Color.FromArgb(num2);
				((Control)checkBoxAll1).BackColor = Color.FromArgb(num2);
				((Control)checkBoxTH2).BackColor = Color.FromArgb(num2);
				((Control)checkBoxAll2).BackColor = Color.FromArgb(num2);
				((Control)checkBoxMHD2).BackColor = Color.FromArgb(num2);
				((Control)checkBoxKBDM2).BackColor = Color.FromArgb(num2);
				((Control)checkBoxLD2).BackColor = Color.FromArgb(num2);
				((Control)checkBoxTVLH2).BackColor = Color.FromArgb(num2);
				((Control)checkBoxLTC2).BackColor = Color.FromArgb(num2);
				((Control)checkBoxTGS2).BackColor = Color.FromArgb(num2);
				((Control)checkBoxQHM2).BackColor = Color.FromArgb(num2);
				((Control)checkBoxTuHanh).BackColor = Color.FromArgb(num2);
				((Control)checkBoxTuHanh30P).BackColor = Color.FromArgb(num2);
				((Control)checkBoxThanTu).BackColor = Color.FromArgb(num2);
				((Control)checkBoxVIP).BackColor = Color.FromArgb(num2);
				((Control)checkBoxEXP).BackColor = Color.FromArgb(num2);
				((Control)checkBoxTheBai).BackColor = Color.FromArgb(num2);
				((Control)checkBoxSkinHanhLangKGDK).BackColor = Color.FromArgb(num2);
				((Control)checkBoxNongTruong).BackColor = Color.FromArgb(num2);
				((Control)checkBoxNLTN).BackColor = Color.FromArgb(num2);
				((Control)checkBoxTranhBaPK).BackColor = Color.FromArgb(num2);
				((Control)checkBoxQBang).BackColor = Color.FromArgb(num2);
				((Control)checkBoxQPet).BackColor = Color.FromArgb(num2);
				((Control)checkBoxDaPet).BackColor = Color.FromArgb(num2);
				((Control)checkBoxTuThap).BackColor = Color.FromArgb(num2);
				((Control)checkBoxTrong).BackColor = Color.FromArgb(num2);
				((Control)checkBoxTM).BackColor = Color.FromArgb(num2);
				((Control)checkBoxTinhCung).BackColor = Color.FromArgb(num2);
				((Control)checkBoxMB).BackColor = Color.FromArgb(num2);
				((Control)labelWDT).BackColor = Color.FromArgb(num2);
				((Control)checkBoxNuoiDuongTinhLinh).BackColor = Color.FromArgb(num2);
				((Control)checkBoxNuoiTinhLinh).BackColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
				((Control)label1).ForeColor = Color.FromArgb(num2);
				((Control)label2).ForeColor = Color.FromArgb(num2);
				((Control)label3).ForeColor = Color.FromArgb(num2);
				((Control)label13).ForeColor = Color.FromArgb(num2);
				((Control)label6).ForeColor = Color.FromArgb(num2);
				((Control)label12).ForeColor = Color.FromArgb(num2);
				((Control)label7).ForeColor = Color.FromArgb(num2);
				((Control)label9).ForeColor = Color.FromArgb(num2);
				((Control)label10).ForeColor = Color.FromArgb(num2);
				((Control)label11).ForeColor = Color.FromArgb(num2);
				((Control)label5).ForeColor = Color.FromArgb(num2);
				((Control)label17).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxAutoClick).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxAll1).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxTH2).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxAll2).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxMHD2).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxKBDM2).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxLD2).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxTVLH2).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxLTC2).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxTGS2).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxQHM2).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxTuHanh).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxTuHanh30P).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxThanTu).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxVIP).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxEXP).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxTheBai).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxSkinHanhLangKGDK).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxNongTruong).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxNLTN).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxTranhBaPK).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxQBang).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxQPet).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxDaPet).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxTuThap).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxTrong).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxTM).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxTinhCung).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxMB).ForeColor = Color.FromArgb(num2);
				((Control)labelWDT).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxNuoiTinhLinh).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxNuoiDuongTinhLinh).ForeColor = Color.FromArgb(num2);
				object obj = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
				Font val = (Font)((obj is Font) ? obj : null);
				((Control)label1).Font = new Font(val.FontFamily, ((Control)label1).Font.Size, val.Style);
				((Control)label2).Font = new Font(val.FontFamily, ((Control)label2).Font.Size, val.Style);
				((Control)label3).Font = new Font(val.FontFamily, ((Control)label3).Font.Size, val.Style);
				((Control)label13).Font = new Font(val.FontFamily, ((Control)label13).Font.Size, val.Style);
				((Control)label6).Font = new Font(val.FontFamily, ((Control)label6).Font.Size, val.Style);
				((Control)label12).Font = new Font(val.FontFamily, ((Control)label12).Font.Size, val.Style);
				((Control)label7).Font = new Font(val.FontFamily, ((Control)label7).Font.Size, val.Style);
				((Control)label9).Font = new Font(val.FontFamily, ((Control)label9).Font.Size, val.Style);
				((Control)label10).Font = new Font(val.FontFamily, ((Control)label10).Font.Size, val.Style);
				((Control)label11).Font = new Font(val.FontFamily, ((Control)label11).Font.Size, val.Style);
				((Control)label5).Font = new Font(val.FontFamily, ((Control)label5).Font.Size, val.Style);
				((Control)label17).Font = new Font(val.FontFamily, ((Control)label17).Font.Size, val.Style);
				((Control)checkBoxAutoClick).Font = new Font(val.FontFamily, ((Control)checkBoxAutoClick).Font.Size, val.Style);
				((Control)checkBoxAll1).Font = new Font(val.FontFamily, ((Control)checkBoxAll1).Font.Size, val.Style);
				((Control)checkBoxTH2).Font = new Font(val.FontFamily, ((Control)checkBoxTH2).Font.Size, val.Style);
				((Control)checkBoxAll2).Font = new Font(val.FontFamily, ((Control)checkBoxAll2).Font.Size, val.Style);
				((Control)checkBoxMHD2).Font = new Font(val.FontFamily, ((Control)checkBoxMHD2).Font.Size, val.Style);
				((Control)checkBoxKBDM2).Font = new Font(val.FontFamily, ((Control)checkBoxKBDM2).Font.Size, val.Style);
				((Control)checkBoxLD2).Font = new Font(val.FontFamily, ((Control)checkBoxLD2).Font.Size, val.Style);
				((Control)checkBoxTVLH2).Font = new Font(val.FontFamily, ((Control)checkBoxTVLH2).Font.Size, val.Style);
				((Control)checkBoxLTC2).Font = new Font(val.FontFamily, ((Control)checkBoxLTC2).Font.Size, val.Style);
				((Control)checkBoxTGS2).Font = new Font(val.FontFamily, ((Control)checkBoxTGS2).Font.Size, val.Style);
				((Control)checkBoxQHM2).Font = new Font(val.FontFamily, ((Control)checkBoxQHM2).Font.Size, val.Style);
				((Control)checkBoxTuHanh).Font = new Font(val.FontFamily, ((Control)checkBoxTuHanh).Font.Size, val.Style);
				((Control)checkBoxTuHanh30P).Font = new Font(val.FontFamily, ((Control)checkBoxTuHanh30P).Font.Size, val.Style);
				((Control)checkBoxThanTu).Font = new Font(val.FontFamily, ((Control)checkBoxThanTu).Font.Size, val.Style);
				((Control)checkBoxVIP).Font = new Font(val.FontFamily, ((Control)checkBoxVIP).Font.Size, val.Style);
				((Control)checkBoxEXP).Font = new Font(val.FontFamily, ((Control)checkBoxEXP).Font.Size, val.Style);
				((Control)checkBoxTheBai).Font = new Font(val.FontFamily, ((Control)checkBoxTheBai).Font.Size, val.Style);
				((Control)checkBoxSkinHanhLangKGDK).Font = new Font(val.FontFamily, ((Control)checkBoxSkinHanhLangKGDK).Font.Size, val.Style);
				((Control)checkBoxNongTruong).Font = new Font(val.FontFamily, ((Control)checkBoxNongTruong).Font.Size, val.Style);
				((Control)checkBoxNLTN).Font = new Font(val.FontFamily, ((Control)checkBoxNLTN).Font.Size, val.Style);
				((Control)checkBoxTranhBaPK).Font = new Font(val.FontFamily, ((Control)checkBoxTranhBaPK).Font.Size, val.Style);
				((Control)checkBoxQBang).Font = new Font(val.FontFamily, ((Control)checkBoxQBang).Font.Size, val.Style);
				((Control)checkBoxQPet).Font = new Font(val.FontFamily, ((Control)checkBoxQPet).Font.Size, val.Style);
				((Control)checkBoxDaPet).Font = new Font(val.FontFamily, ((Control)checkBoxDaPet).Font.Size, val.Style);
				((Control)checkBoxTuThap).Font = new Font(val.FontFamily, ((Control)checkBoxTuThap).Font.Size, val.Style);
				((Control)checkBoxTrong).Font = new Font(val.FontFamily, ((Control)checkBoxTrong).Font.Size, val.Style);
				((Control)checkBoxTM).Font = new Font(val.FontFamily, ((Control)checkBoxTM).Font.Size, val.Style);
				((Control)checkBoxTinhCung).Font = new Font(val.FontFamily, ((Control)checkBoxTinhCung).Font.Size, val.Style);
				((Control)checkBoxMB).Font = new Font(val.FontFamily, ((Control)checkBoxMB).Font.Size, val.Style);
				((Control)labelWDT).Font = new Font(val.FontFamily, ((Control)checkBoxMB).Font.Size, val.Style);
				((Control)checkBoxNuoiDuongTinhLinh).Font = new Font(val.FontFamily, ((Control)checkBoxNuoiDuongTinhLinh).Font.Size, val.Style);
				((Control)checkBoxNuoiTinhLinh).Font = new Font(val.FontFamily, ((Control)checkBoxNuoiTinhLinh).Font.Size, val.Style);
				int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
				((Control)buttonReset).BackColor = Color.FromArgb(num2);
				((Control)ButtonRunAuto).BackColor = Color.FromArgb(num2);
				((Control)buttonPause).BackColor = Color.FromArgb(num2);
				((Control)ButtonDebug).BackColor = Color.FromArgb(num2);
				((Control)buttonSave).BackColor = Color.FromArgb(num2);
				((Control)buttonLoad).BackColor = Color.FromArgb(num2);
				((Control)buttonSave2).BackColor = Color.FromArgb(num2);
				((Control)buttonLoad2).BackColor = Color.FromArgb(num2);
				((Control)button1).BackColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
				((Control)buttonReset).ForeColor = Color.FromArgb(num2);
				((Control)ButtonRunAuto).ForeColor = Color.FromArgb(num2);
				((Control)buttonPause).ForeColor = Color.FromArgb(num2);
				((Control)ButtonDebug).ForeColor = Color.FromArgb(num2);
				((Control)buttonSave).ForeColor = Color.FromArgb(num2);
				((Control)buttonLoad).ForeColor = Color.FromArgb(num2);
				((Control)buttonSave2).ForeColor = Color.FromArgb(num2);
				((Control)buttonLoad2).ForeColor = Color.FromArgb(num2);
				((Control)button1).ForeColor = Color.FromArgb(num2);
				object obj2 = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
				val = (Font)((obj2 is Font) ? obj2 : null);
				((Control)buttonReset).Font = new Font(val.FontFamily, ((Control)buttonReset).Font.Size, val.Style);
				((Control)ButtonRunAuto).Font = new Font(val.FontFamily, ((Control)ButtonRunAuto).Font.Size, val.Style);
				((Control)buttonPause).Font = new Font(val.FontFamily, ((Control)buttonPause).Font.Size, val.Style);
				((Control)ButtonDebug).Font = new Font(val.FontFamily, ((Control)ButtonDebug).Font.Size, val.Style);
				((Control)buttonSave).Font = new Font(val.FontFamily, ((Control)buttonSave).Font.Size, val.Style);
				((Control)buttonLoad).Font = new Font(val.FontFamily, ((Control)buttonLoad).Font.Size, val.Style);
				((Control)buttonSave2).Font = new Font(val.FontFamily, ((Control)buttonSave2).Font.Size, val.Style);
				((Control)buttonLoad2).Font = new Font(val.FontFamily, ((Control)buttonLoad2).Font.Size, val.Style);
				((Control)button1).Font = new Font(val.FontFamily, ((Control)button1).Font.Size, val.Style);
				int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
				((Control)textBox1).BackColor = Color.FromArgb(num2);
				((Control)comboBoxTrong).BackColor = Color.FromArgb(num2);
				((Control)comboBoxFile).BackColor = Color.FromArgb(num2);
				((Control)comboBoxTinhCung_Cap).BackColor = Color.FromArgb(num2);
				((Control)comboBoxTinhCung_Loai).BackColor = Color.FromArgb(num2);
				((Control)comboBoxMB_Cap).BackColor = Color.FromArgb(num2);
				((Control)comboBoxMB_Loai).BackColor = Color.FromArgb(num2);
				((Control)comboBoxChoAnTinhLinh).BackColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
				((Control)textBox1).ForeColor = Color.FromArgb(num2);
				((Control)comboBoxTrong).ForeColor = Color.FromArgb(num2);
				((Control)comboBoxFile).ForeColor = Color.FromArgb(num2);
				((Control)comboBoxTinhCung_Cap).ForeColor = Color.FromArgb(num2);
				((Control)comboBoxTinhCung_Loai).ForeColor = Color.FromArgb(num2);
				((Control)comboBoxMB_Cap).ForeColor = Color.FromArgb(num2);
				((Control)comboBoxMB_Loai).ForeColor = Color.FromArgb(num2);
				((Control)comboBoxChoAnTinhLinh).ForeColor = Color.FromArgb(num2);
				object obj3 = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
				val = (Font)((obj3 is Font) ? obj3 : null);
				((Control)textBox1).Font = new Font(val.FontFamily, ((Control)textBox1).Font.Size, val.Style);
				((Control)comboBoxTrong).Font = new Font(val.FontFamily, ((Control)comboBoxTrong).Font.Size, val.Style);
				((Control)comboBoxFile).Font = new Font(val.FontFamily, ((Control)comboBoxFile).Font.Size, val.Style);
				((Control)comboBoxTinhCung_Cap).Font = new Font(val.FontFamily, ((Control)comboBoxTinhCung_Cap).Font.Size, val.Style);
				((Control)comboBoxTinhCung_Loai).Font = new Font(val.FontFamily, ((Control)comboBoxTinhCung_Loai).Font.Size, val.Style);
				((Control)comboBoxMB_Cap).Font = new Font(val.FontFamily, ((Control)comboBoxMB_Cap).Font.Size, val.Style);
				((Control)comboBoxMB_Loai).Font = new Font(val.FontFamily, ((Control)comboBoxMB_Loai).Font.Size, val.Style);
				((Control)comboBoxChoAnTinhLinh).Font = new Font(val.FontFamily, ((Control)comboBoxChoAnTinhLinh).Font.Size, val.Style);
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
			T.Wait();
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

	private double viTrinhanVatHientai()
	{
		return (int)ReadMemoryData(processID, myPointer, offset_ToaDoX) * 10000 + (int)ReadMemoryData(processID, myPointer, offset_ToaDoY);
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
		//IL_0022: Unknown result type (might be due to invalid IL or missing references)
		//IL_0027: Unknown result type (might be due to invalid IL or missing references)
		//IL_0033: Unknown result type (might be due to invalid IL or missing references)
		//IL_0038: Unknown result type (might be due to invalid IL or missing references)
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

	private void PhuToiMap2(string maps, double X = 0.0, double Y = 0.0, bool team = false)
	{
		//IL_024d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0252: Unknown result type (might be due to invalid IL or missing references)
		//IL_0263: Unknown result type (might be due to invalid IL or missing references)
		//IL_0268: Unknown result type (might be due to invalid IL or missing references)
		//IL_0290: Unknown result type (might be due to invalid IL or missing references)
		//IL_0295: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a6: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ab: Unknown result type (might be due to invalid IL or missing references)
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
		PressKey("ESC");
	}

	private void checkBox1_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		//IL_0368: Unknown result type (might be due to invalid IL or missing references)
		//IL_036e: Invalid comparison between Unknown and I4
		//IL_0031: Unknown result type (might be due to invalid IL or missing references)
		//IL_0037: Expected O, but got Unknown
		//IL_0396: Unknown result type (might be due to invalid IL or missing references)
		//IL_039d: Expected O, but got Unknown
		//IL_0059: Unknown result type (might be due to invalid IL or missing references)
		//IL_03c4: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a9: Expected O, but got Unknown
		//IL_040f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0416: Expected O, but got Unknown
		//IL_00d0: Unknown result type (might be due to invalid IL or missing references)
		//IL_043d: Unknown result type (might be due to invalid IL or missing references)
		//IL_011b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0122: Expected O, but got Unknown
		//IL_0488: Unknown result type (might be due to invalid IL or missing references)
		//IL_048f: Expected O, but got Unknown
		//IL_0149: Unknown result type (might be due to invalid IL or missing references)
		//IL_04b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0194: Unknown result type (might be due to invalid IL or missing references)
		//IL_019b: Expected O, but got Unknown
		//IL_0501: Unknown result type (might be due to invalid IL or missing references)
		//IL_0508: Expected O, but got Unknown
		//IL_01c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_052f: Unknown result type (might be due to invalid IL or missing references)
		//IL_020d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0214: Expected O, but got Unknown
		//IL_057a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0581: Expected O, but got Unknown
		//IL_023b: Unknown result type (might be due to invalid IL or missing references)
		//IL_05a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0286: Unknown result type (might be due to invalid IL or missing references)
		//IL_028d: Expected O, but got Unknown
		//IL_05f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_05fa: Expected O, but got Unknown
		//IL_02b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0621: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ff: Unknown result type (might be due to invalid IL or missing references)
		//IL_0306: Expected O, but got Unknown
		//IL_066c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0673: Expected O, but got Unknown
		//IL_032d: Unknown result type (might be due to invalid IL or missing references)
		//IL_069a: Unknown result type (might be due to invalid IL or missing references)
		if ((int)checkBox1.CheckState == 1)
		{
			foreach (Control item in (ArrangedElementCollection)((Control)groupBox1).Controls)
			{
				Control val = item;
				if (val is CheckBox && val.Name != "checkBox1")
				{
					((CheckBox)val).Checked = true;
				}
			}
			foreach (Control item2 in (ArrangedElementCollection)((Control)groupBox2).Controls)
			{
				Control val2 = item2;
				if (val2 is CheckBox && val2.Name != "checkBox1")
				{
					((CheckBox)val2).Checked = true;
				}
			}
			foreach (Control item3 in (ArrangedElementCollection)((Control)groupBox3).Controls)
			{
				Control val3 = item3;
				if (val3 is CheckBox && val3.Name != "checkBox1")
				{
					((CheckBox)val3).Checked = true;
				}
			}
			foreach (Control item4 in (ArrangedElementCollection)((Control)groupBox5).Controls)
			{
				Control val4 = item4;
				if (val4 is CheckBox && val4.Name != "checkBox1")
				{
					((CheckBox)val4).Checked = true;
				}
			}
			foreach (Control item5 in (ArrangedElementCollection)((Control)groupBox6).Controls)
			{
				Control val5 = item5;
				if (val5 is CheckBox && val5.Name != "checkBox1")
				{
					((CheckBox)val5).Checked = true;
				}
			}
			foreach (Control item6 in (ArrangedElementCollection)((Control)groupBox7).Controls)
			{
				Control val6 = item6;
				if (val6 is CheckBox && val6.Name != "checkBox1")
				{
					((CheckBox)val6).Checked = true;
				}
			}
			{
				foreach (Control item7 in (ArrangedElementCollection)((Control)groupBox8).Controls)
				{
					Control val7 = item7;
					if (val7 is CheckBox && val7.Name != "checkBox1")
					{
						((CheckBox)val7).Checked = true;
					}
				}
				return;
			}
		}
		if ((int)checkBox1.CheckState != 0)
		{
			return;
		}
		foreach (Control item8 in (ArrangedElementCollection)((Control)groupBox1).Controls)
		{
			Control val8 = item8;
			if (val8 is CheckBox && val8.Name != "checkBox1")
			{
				((CheckBox)val8).Checked = false;
			}
		}
		foreach (Control item9 in (ArrangedElementCollection)((Control)groupBox2).Controls)
		{
			Control val9 = item9;
			if (val9 is CheckBox && val9.Name != "checkBox1")
			{
				((CheckBox)val9).Checked = false;
			}
		}
		foreach (Control item10 in (ArrangedElementCollection)((Control)groupBox3).Controls)
		{
			Control val10 = item10;
			if (val10 is CheckBox && val10.Name != "checkBox1")
			{
				((CheckBox)val10).Checked = false;
			}
		}
		foreach (Control item11 in (ArrangedElementCollection)((Control)groupBox5).Controls)
		{
			Control val11 = item11;
			if (val11 is CheckBox && val11.Name != "checkBox1")
			{
				((CheckBox)val11).Checked = false;
			}
		}
		foreach (Control item12 in (ArrangedElementCollection)((Control)groupBox6).Controls)
		{
			Control val12 = item12;
			if (val12 is CheckBox && val12.Name != "checkBox1")
			{
				((CheckBox)val12).Checked = false;
			}
		}
		foreach (Control item13 in (ArrangedElementCollection)((Control)groupBox7).Controls)
		{
			Control val13 = item13;
			if (val13 is CheckBox && val13.Name != "checkBox1")
			{
				((CheckBox)val13).Checked = false;
			}
		}
		foreach (Control item14 in (ArrangedElementCollection)((Control)groupBox8).Controls)
		{
			Control val14 = item14;
			if (val14 is CheckBox && val14.Name != "checkBox1")
			{
				((CheckBox)val14).Checked = false;
			}
		}
	}

	private void notifyIcon1_MouseDoubleClick(object sender, MouseEventArgs e)
	{
		notifyIcon1.Visible = false;
	}

	private void ThongBao(string Title, string sms)
	{
		if (Settings.Default.notify)
		{
			notifyIcon1.Visible = true;
			notifyIcon1.ShowBalloonTip(5000, Title, sms, (ToolTipIcon)1);
		}
	}

	private void button1_Click(object sender, EventArgs e)
	{
		string text = numericUpDownTinhLinh.Value.ToString();
		string text2 = ((Control)comboBoxChoAnTinhLinh).Text;
		string text3 = ((!checkBoxNuoiDuongTinhLinh.Checked) ? "Không" : "Co\u0301");
		dataGridView1.Rows.Add(new object[3] { text, text2, text3 });
	}

	private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
	{
		//IL_0002: Unknown result type (might be due to invalid IL or missing references)
		//IL_0008: Expected O, but got Unknown
		//IL_0049: Unknown result type (might be due to invalid IL or missing references)
		//IL_004f: Invalid comparison between Unknown and I4
		//IL_0090: Unknown result type (might be due to invalid IL or missing references)
		DataGridView val = (DataGridView)sender;
		string name = val.Columns[e.ColumnIndex].Name;
		string text = name;
		if (text == "Del" && (int)Program.AppMain.ThongBao(Program.AppMain.warnNoti, "Delete", "Chắc chắn Xóa ?", Program.AppMain.YesNoNoti) == 6)
		{
			dataGridView1.Rows.RemoveAt(((DataGridViewBand)dataGridView1.CurrentRow).Index);
			Program.AppMain.ThongBao(Program.AppMain.inforNoti, "Delete", "Xong");
		}
	}

	private void checkBox3_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		//IL_0060: Unknown result type (might be due to invalid IL or missing references)
		//IL_0066: Invalid comparison between Unknown and I4
		//IL_003c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0046: Expected O, but got Unknown
		if ((int)checkBox3.CheckState == 1)
		{
			((Control)checkBox1).Enabled = false;
			debugText("start");
			IsStop = false;
			T = new System.Threading.Tasks.Task((Action)([CompilerGenerated] () =>
			{
				//IL_0045: Unknown result type (might be due to invalid IL or missing references)
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
				while (!IsStop)
				{
					DiCauHai(7, loai: false);
					checkBox3.CheckState = (CheckState)0;
				}
			}));
			T.Start();
		}
		else if ((int)checkBox3.CheckState == 0)
		{
			debugText("stop");
			IsStop = true;
			((Control)checkBox1).Enabled = true;
		}
	}

	private bool checkFileECT()
	{
		//IL_00f0: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f7: Expected O, but got Unknown
		//IL_0109: Unknown result type (might be due to invalid IL or missing references)
		//IL_010f: Invalid comparison between Unknown and I4
		//IL_01e8: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ee: Invalid comparison between Unknown and I4
		//IL_0314: Unknown result type (might be due to invalid IL or missing references)
		//IL_031b: Expected O, but got Unknown
		//IL_02a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ae: Invalid comparison between Unknown and I4
		string text = string.Concat(new string[5]
		{
			dateTimePickerMuaPhu.Value.Year.ToString(),
			"-",
			dateTimePickerMuaPhu.Value.Month.ToString(),
			"-",
			dateTimePickerMuaPhu.Value.Day.ToString()
		});
		string text2 = "BMx-Tool VPT [v" + Program.AppMain.version + "]\n";
		if (!File.Exists(pathData + "/Setting/" + nameUser + "/ect_v7.txt"))
		{
			Directory.CreateDirectory(pathData + "/Setting/" + nameUser);
			TextWriter val = (TextWriter)new StreamWriter(pathData + "/Setting/" + nameUser + "/ect_v7.txt");
			text2 += "Tiêu Diêu Phù:";
			text2 = (((int)checkBoxMuaPhu.CheckState != 1) ? (text2 + "0||") : (text2 + "1||"));
			text2 = text2 + ((Control)comboBoxMuaPhu).Text + "||";
			text2 = text2 + text + "\n";
			val.Write(text2);
			val.Close();
		}
		else
		{
			bool flag = false;
			text2 = "";
			string[] array = File.ReadAllLines(pathData + "/Setting/" + nameUser + "/ect_v7.txt");
			for (int i = 0; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array); i++)
			{
				string[] array2 = array[i].Split(':', (StringSplitOptions)0);
				string text3 = array2[0].Trim();
				string text4 = text3;
				if (text4 == "Tiêu Diêu Phù")
				{
					text2 += "Tiêu Diêu Phù:";
					text2 = (((int)checkBoxMuaPhu.CheckState != 1) ? (text2 + "0||") : (text2 + "1||"));
					text2 = text2 + ((Control)comboBoxMuaPhu).Text + "||";
					text2 = string.Concat(new string[5] { text2, text, "||", MuaLanDau, "\n" });
					flag = true;
				}
				else
				{
					text2 = text2 + array2[0] + "\n";
				}
			}
			if (!flag)
			{
				text2 += "Tiêu Diêu Phù:";
				text2 = (((int)checkBoxMuaPhu.CheckState != 1) ? (text2 + "0||") : (text2 + "1||"));
				text2 = text2 + ((Control)comboBoxMuaPhu).Text + "||";
				text2 = text2 + text + "\n";
			}
			TextWriter val2 = (TextWriter)new StreamWriter(pathData + "/Setting/" + nameUser + "/ect_v7.txt");
			val2.Write(text2);
			val2.Close();
		}
		((Control)labelLuuPhu).Text = string.Concat(new string[5]
		{
			"[ Mua Phù (",
			((Control)comboBoxMuaPhu).Text,
			") Từ Ngày ",
			text,
			" ]"
		});
		return true;
	}

	private bool loadFileETC()
	{
		//IL_00f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fa: Expected O, but got Unknown
		//IL_010c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0112: Invalid comparison between Unknown and I4
		if (!File.Exists(pathData + "/Setting/" + nameUser + "/ect_v7.txt"))
		{
			string text = "BMx-Tool VPT [v" + Program.AppMain.version + "]\n";
			string text2 = string.Concat(new string[5]
			{
				dateTimePickerMuaPhu.Value.Year.ToString(),
				"-",
				dateTimePickerMuaPhu.Value.Month.ToString(),
				"-",
				dateTimePickerMuaPhu.Value.Day.ToString()
			});
			Directory.CreateDirectory(pathData + "/Setting/" + nameUser);
			TextWriter val = (TextWriter)new StreamWriter(pathData + "/Setting/" + nameUser + "/ect_v7.txt");
			text += "Tiêu Diêu Phù:";
			text = (((int)checkBoxMuaPhu.CheckState != 1) ? (text + "0||") : (text + "1||"));
			text = text + ((Control)comboBoxMuaPhu).Text + "||";
			text = text + text2 + "\n";
			val.Write(text);
			val.Close();
		}
		else
		{
			string[] array = File.ReadAllLines(pathData + "/Setting/" + nameUser + "/ect_v7.txt");
			for (int i = 0; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array); i++)
			{
				string[] array2 = array[i].Split(':', (StringSplitOptions)0);
				string text3 = array2[0].Trim();
				string text4 = text3;
				if (text4 == "Tiêu Diêu Phù")
				{
					string[] array3 = array2[1].Trim().Split("||", (StringSplitOptions)0);
					if (array3[0] == "1")
					{
						checkBoxMuaPhu.CheckState = (CheckState)1;
					}
					else
					{
						checkBoxMuaPhu.CheckState = (CheckState)0;
					}
					((Control)comboBoxMuaPhu).Text = array3[1];
					dateTimePickerMuaPhu.Value = new System.DateTime(Convert.ToInt32(array3[2].Split('-', (StringSplitOptions)0)[0]), Convert.ToInt32(array3[2].Split('-', (StringSplitOptions)0)[1]), Convert.ToInt32(array3[2].Split('-', (StringSplitOptions)0)[2]));
					string text5 = string.Concat(new string[5]
					{
						dateTimePickerMuaPhu.Value.Year.ToString(),
						"-",
						dateTimePickerMuaPhu.Value.Month.ToString(),
						"-",
						dateTimePickerMuaPhu.Value.Day.ToString()
					});
					((Control)labelLuuPhu).Text = string.Concat(new string[5]
					{
						"[ Mua Phù (",
						((Control)comboBoxMuaPhu).Text,
						") Từ Ngày ",
						text5,
						" ]"
					});
					return true;
				}
			}
		}
		return true;
	}

	private void buttonLuuPhu_Click(object sender, EventArgs e)
	{
		checkFileECT();
	}

	private void demLuot(object sender, EventArgs e)
	{
		luotST = (int)numericUpDownST1.Value + (int)numericUpDownST2.Value + (int)numericUpDownST3.Value + (int)numericUpDownST4.Value + (int)numericUpDownST5.Value + (int)numericUpDownST6.Value + (int)numericUpDownST7.Value + (int)numericUpDownST8.Value + (int)numericUpDownST9.Value + (int)numericUpDownST10.Value + (int)numericUpDownST11.Value + (int)numericUpDownST12.Value + (int)numericUpDownST13.Value + (int)numericUpDownST14.Value + (int)numericUpDownST15.Value + (int)numericUpDownST16.Value + (int)numericUpDownST17.Value + (int)numericUpDownST18.Value + (int)numericUpDownST19.Value + (int)numericUpDownST20.Value + (int)numericUpDownST21.Value + (int)numericUpDownST22.Value + (int)numericUpDownST23.Value + (int)numericUpDownST24.Value + (int)numericUpDownST25.Value + (int)numericUpDownST26.Value + (int)numericUpDownST27.Value + (int)numericUpDownST28.Value + (int)numericUpDownST29.Value + (int)numericUpDownST30.Value + (int)numericUpDownST31.Value + (int)numericUpDownST32.Value + (int)numericUpDownST33.Value + (int)numericUpDownST34.Value + (int)numericUpDownST35.Value + (int)numericUpDownST36.Value + (int)numericUpDownST37.Value + (int)numericUpDownST38.Value + (int)numericUpDownST39.Value + (int)numericUpDownST40.Value + (int)numericUpDownST41.Value + (int)numericUpDownST42.Value + (int)numericUpDownST43.Value + (int)numericUpDownST44.Value + (int)numericUpDownST45.Value + (int)numericUpDownST46.Value + (int)numericUpDownST47.Value + (int)numericUpDownST48.Value + (int)numericUpDownST49.Value + (int)numericUpDownST50.Value + (int)numericUpDownST51.Value + (int)numericUpDownST52.Value + (int)numericUpDownST53.Value + (int)numericUpDownST54.Value + (int)numericUpDownST55.Value + (int)numericUpDownST56.Value + (int)numericUpDownST57.Value + (int)numericUpDownST58.Value + (int)numericUpDownST59.Value + (int)numericUpDownST60.Value + (int)numericUpDownST61.Value + (int)numericUpDownST62.Value + (int)numericUpDownST63.Value + (int)numericUpDownST64.Value + (int)numericUpDownST65.Value + (int)numericUpDownST66.Value + (int)numericUpDownST67.Value + (int)numericUpDownST68.Value + (int)numericUpDownST69.Value + (int)numericUpDownST70.Value + (int)numericUpDownST71.Value + (int)numericUpDownST72.Value + (int)numericUpDownST73.Value + (int)numericUpDownST74.Value + (int)numericUpDownST75.Value;
		((Control)checkBoxST).Text = "Sổ Tay Ma Thú - Khiêu Chiến " + luotST + " Lần";
	}

	private void chonLV(int LV)
	{
		switch (LV)
		{
		case 1:
			SendClickOnPosition(hWnd, 643, 364, (EMouseKey)0);
			break;
		case 2:
			SendClickOnPosition(hWnd, 653, 395, (EMouseKey)0);
			break;
		case 3:
			SendClickOnPosition(hWnd, 650, 425, (EMouseKey)0);
			break;
		case 4:
			SendClickOnPosition(hWnd, 647, 454, (EMouseKey)0);
			break;
		case 5:
			SendClickOnPosition(hWnd, 655, 483, (EMouseKey)0);
			break;
		case 6:
			SendClickOnPosition(hWnd, 656, 514, (EMouseKey)0);
			break;
		case 7:
			SendClickOnPosition(hWnd, 652, 544, (EMouseKey)0);
			break;
		}
		delay_100ms(10);
	}

	private void chonBoss(int Boss)
	{
		switch (Boss)
		{
		case 1:
			SendClickOnPosition(hWnd, 138, 427, (EMouseKey)0);
			break;
		case 2:
			SendClickOnPosition(hWnd, 259, 427, (EMouseKey)0);
			break;
		case 3:
			SendClickOnPosition(hWnd, 379, 427, (EMouseKey)0);
			break;
		case 4:
			SendClickOnPosition(hWnd, 515, 427, (EMouseKey)0);
			break;
		case 5:
			SendClickOnPosition(hWnd, 138, 609, (EMouseKey)0);
			break;
		case 6:
			SendClickOnPosition(hWnd, 259, 609, (EMouseKey)0);
			break;
		case 7:
			SendClickOnPosition(hWnd, 379, 609, (EMouseKey)0);
			break;
		case 8:
			SendClickOnPosition(hWnd, 515, 609, (EMouseKey)0);
			break;
		}
		delay_100ms(5);
		SendClickOnPosition(hWnd, 498, 397, (EMouseKey)0);
		delay_100ms(5);
	}

	private void checkSoLuotVaDanhBoss(int soLuot, int LV, int Boss, bool bossBay, string Name = "Null", bool Trang1 = true)
	{
		for (int i = 0; i < soLuot; i++)
		{
			if (bossBay)
			{
				Bay();
				Bay();
				Bay();
				delay_100ms(10);
			}
			else
			{
				Xuong();
				Xuong();
				Xuong();
				delay_100ms(10);
			}
			FindAndClick(hWnd, pathKhac + "/Auto_button1.png", 1, 1, "Auto");
			delay_100ms(5);
			FindItem(hWnd, pathKhac + "/SoTay_Icon.png", "Sổ Tay Ma Thú");
			delay_100ms(10);
			chonLV(LV);
			if (Trang1)
			{
				SendClickOnPosition(hWnd, 322, 641, (EMouseKey)0);
				delay_100ms(3);
			}
			else
			{
				SendClickOnPosition(hWnd, 428, 641, (EMouseKey)0);
				delay_100ms(3);
			}
			debugText("ClearDebugText");
			debugText("Boss: " + Name + " Lần: " + (i + 1));
			chonBoss(Boss);
			delay_100ms(50);
			while (!FindPoint(hWnd, pathKhac + "/checkTrTr.png").HasValue)
			{
				FindAndClick(hWnd, pathTruMa + "/Auto.png", 1, 1, "Auto");
				delay_100ms(10);
				PressKey("ESC");
			}
		}
	}

	private void button2_Click(object sender, EventArgs e)
	{
		//IL_000e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0014: Invalid comparison between Unknown and I4
		if ((int)MessageBox.Show("Cài Toàn Bộ Về 0", "Sổ Tay Cao Cấp", (MessageBoxButtons)4, (MessageBoxIcon)48) == 6)
		{
			int num = 0;
			string text = "0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0";
			string[] array = text.Trim().Split('-', (StringSplitOptions)0);
			int num2 = 0;
			int.TryParse(array[num2].Trim(), ref num);
			numericUpDownST1.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST2.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST3.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST4.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST5.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST6.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST7.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST8.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST9.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST10.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST11.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST12.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST13.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST14.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST15.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST16.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST17.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST18.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST19.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST20.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST21.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST22.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST23.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST24.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST25.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST26.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST27.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST28.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST29.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST30.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST31.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST32.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST33.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST34.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST35.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST36.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST37.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST38.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST39.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST40.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST41.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST42.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST43.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST44.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST45.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST46.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST47.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST48.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST49.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST50.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST51.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST52.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST53.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST54.Value = decimal.op_Implicit(num);
			int.TryParse(array[++num2].Trim(), ref num);
			numericUpDownST55.Value = decimal.op_Implicit(num);
			text = "0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0";
			string[] array2 = text.Trim().Split('-', (StringSplitOptions)0);
			int num3 = 0;
			int.TryParse(array2[num3].Trim(), ref num);
			numericUpDownST56.Value = decimal.op_Implicit(num);
			int.TryParse(array2[++num3].Trim(), ref num);
			numericUpDownST57.Value = decimal.op_Implicit(num);
			int.TryParse(array2[++num3].Trim(), ref num);
			numericUpDownST58.Value = decimal.op_Implicit(num);
			int.TryParse(array2[++num3].Trim(), ref num);
			numericUpDownST59.Value = decimal.op_Implicit(num);
			int.TryParse(array2[++num3].Trim(), ref num);
			numericUpDownST60.Value = decimal.op_Implicit(num);
			int.TryParse(array2[++num3].Trim(), ref num);
			numericUpDownST61.Value = decimal.op_Implicit(num);
			int.TryParse(array2[++num3].Trim(), ref num);
			numericUpDownST62.Value = decimal.op_Implicit(num);
			int.TryParse(array2[++num3].Trim(), ref num);
			numericUpDownST63.Value = decimal.op_Implicit(num);
			int.TryParse(array2[++num3].Trim(), ref num);
			numericUpDownST64.Value = decimal.op_Implicit(num);
			int.TryParse(array2[++num3].Trim(), ref num);
			numericUpDownST65.Value = decimal.op_Implicit(num);
			int.TryParse(array2[++num3].Trim(), ref num);
			numericUpDownST66.Value = decimal.op_Implicit(num);
			int.TryParse(array2[++num3].Trim(), ref num);
			numericUpDownST67.Value = decimal.op_Implicit(num);
			int.TryParse(array2[++num3].Trim(), ref num);
			numericUpDownST68.Value = decimal.op_Implicit(num);
			int.TryParse(array2[++num3].Trim(), ref num);
			numericUpDownST69.Value = decimal.op_Implicit(num);
			int.TryParse(array2[++num3].Trim(), ref num);
			numericUpDownST70.Value = decimal.op_Implicit(num);
			int.TryParse(array2[++num3].Trim(), ref num);
			numericUpDownST71.Value = decimal.op_Implicit(num);
			int.TryParse(array2[++num3].Trim(), ref num);
			numericUpDownST72.Value = decimal.op_Implicit(num);
			int.TryParse(array2[++num3].Trim(), ref num);
			numericUpDownST73.Value = decimal.op_Implicit(num);
			int.TryParse(array2[++num3].Trim(), ref num);
			numericUpDownST74.Value = decimal.op_Implicit(num);
			int.TryParse(array2[++num3].Trim(), ref num);
			numericUpDownST75.Value = decimal.op_Implicit(num);
			((Control)checkBoxST).Text = "Sổ Tay Ma Thú - Khiêu Chiến " + 0 + " Lần";
		}
	}

	private bool DiCauHai(int cap, bool loai)
	{
		SendClickOnPosition(hWnd, 239, 656, (EMouseKey)0);
		delay_100ms(3);
		SendClickOnPosition(hWnd, 373, 660, (EMouseKey)0);
		delay_100ms(3);
		if (map_luu != "null" && NVLuu != 999999 && vitriLuu1 != 999999 && vitriLuu2 != 999999 && vitriLuu3 != 999999)
		{
			debugText("Tới Vị Trí Cũ");
			if (checkViTriCauHai(map_luu, NVLuu / 1000, NVLuu % 1000, vitriLuu1 / 1000, vitriLuu1 % 1000, vitriLuu2 / 1000, vitriLuu2 % 1000, vitriLuu3 / 1000, vitriLuu3 % 1000))
			{
				goto IL_4a41;
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
		goto IL_4a41;
		IL_4a41:
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
		//IL_024a: Unknown result type (might be due to invalid IL or missing references)
		//IL_024f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0258: Unknown result type (might be due to invalid IL or missing references)
		//IL_025d: Unknown result type (might be due to invalid IL or missing references)
		if (map_luu != "null" && NVLuu != 999999 && vitriLuu1 != 999999 && vitriLuu2 != 999999 && vitriLuu3 != 999999)
		{
			xoaViTri();
			debugText("Đã Xóa Vị Trí Lưu");
		}
		checkvaoBoss();
		delayThongTin();
		PhuToiMap(Map);
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

	private int checkCapDoKyNang(string nameSkill = "/HTC_KN.png")
	{
		//IL_00cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d5: Unknown result type (might be due to invalid IL or missing references)
		//IL_00da: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_011c: Unknown result type (might be due to invalid IL or missing references)
		Point? val;
		do
		{
			PressKey("ESC");
			delay_100ms(3);
			PressKey("ESC");
			delay_100ms(3);
			PressKey("ESC");
			delay_100ms(3);
			PressKey("S");
			delay_100ms(10);
			FindAndClick(hWnd, pathKhac + "/setupRun_1.png", 12, 301, "Mở Bảng KN Sống");
			delay_100ms(10);
			val = FindPoint(hWnd, pathKhac + nameSkill);
		}
		while (!val.HasValue);
		Image val2 = CaptureHelper.CaptureWindow(hWnd);
		Rectangle val3 = default(Rectangle);
		Point value = val.Value;
		((Rectangle)(ref val3)).X = ((Point)(ref value)).X;
		value = val.Value;
		((Rectangle)(ref val3)).Y = ((Point)(ref value)).Y - 12;
		((Rectangle)(ref val3)).Width = 190;
		((Rectangle)(ref val3)).Height = 40;
		Bitmap val4 = CaptureHelper.CropImage(val2, val3);
		for (int num = 7; num > 0; num--)
		{
			Bitmap image = ImageScanOpenCV.GetImage(pathKhac + "/HTC_KN_" + num + ".png");
			if (ImageScanOpenCV.FindOutPoint(val4, image, 0.99).HasValue)
			{
				debugText("KN LV " + num);
				return num;
			}
		}
		return 0;
	}

	private bool checkXongQ(string NV = "/HTC_NV.png")
	{
		FindAndClick(hWnd, pathLuyenPet + "/key_Q.png", 2, 2, "Q");
		delay_100ms(5);
		if (!FindAndClick(hWnd, pathKhac + NV, 1, 1, "NVHTC").HasValue)
		{
			int num = 0;
			if (!BoNVKhongLienQuan(pathKhac + NV))
			{
				num++;
				if (num >= 20)
				{
					debugText("Lỗi Check Q");
				}
			}
			return false;
		}
		if (FindPoint(hWnd, pathLuyenPet + "/Q_Tra_NV.png").HasValue)
		{
			debugText("Xong");
			return true;
		}
		FindAndClick(hWnd, pathLuyenPet + "/key_Q.png", 2, 2, "Q");
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

	private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
	{
		ThongTin thongTin = new ThongTin();
		Settings.Default.inforWindow = "Có Thể Cài Đặt Nguyên Liệu Bằng Cách Đặt Tên Pet\r\nGỗ = Go\r\nLông Thú = LongThu\r\nNgọc = Ngoc\r\nVải Thô = VaiTho\r\nKim Loại Hiếm = KLHiem\r\nGỗ Tốt = GTot\r\nDa Thú = DaThu\r\nPha Lê = PhaLe\r\nGấm Vóc = GamVoc\r\nChỉ Cần Đặt Tên Pet Lần Đầu, Tool Sẽ Tự Lưu Lại Trong Cài Đặt Lưu Daily";
		((Control)thongTin).Show();
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
		//IL_0335: Unknown result type (might be due to invalid IL or missing references)
		//IL_033f: Expected O, but got Unknown
		//IL_0340: Unknown result type (might be due to invalid IL or missing references)
		//IL_034a: Expected O, but got Unknown
		//IL_034b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0355: Expected O, but got Unknown
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
		//IL_04e8: Unknown result type (might be due to invalid IL or missing references)
		//IL_04f2: Expected O, but got Unknown
		//IL_04f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_04fd: Expected O, but got Unknown
		//IL_04fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_0508: Expected O, but got Unknown
		//IL_0509: Unknown result type (might be due to invalid IL or missing references)
		//IL_0513: Expected O, but got Unknown
		//IL_0514: Unknown result type (might be due to invalid IL or missing references)
		//IL_051e: Expected O, but got Unknown
		//IL_051f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0529: Expected O, but got Unknown
		//IL_052a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0534: Expected O, but got Unknown
		//IL_0535: Unknown result type (might be due to invalid IL or missing references)
		//IL_053f: Expected O, but got Unknown
		//IL_0540: Unknown result type (might be due to invalid IL or missing references)
		//IL_054a: Expected O, but got Unknown
		//IL_054b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0555: Expected O, but got Unknown
		//IL_0556: Unknown result type (might be due to invalid IL or missing references)
		//IL_0560: Expected O, but got Unknown
		//IL_0561: Unknown result type (might be due to invalid IL or missing references)
		//IL_056b: Expected O, but got Unknown
		//IL_056c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0576: Expected O, but got Unknown
		//IL_0577: Unknown result type (might be due to invalid IL or missing references)
		//IL_0581: Expected O, but got Unknown
		//IL_0582: Unknown result type (might be due to invalid IL or missing references)
		//IL_058c: Expected O, but got Unknown
		//IL_058d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0597: Expected O, but got Unknown
		//IL_0598: Unknown result type (might be due to invalid IL or missing references)
		//IL_05a2: Expected O, but got Unknown
		//IL_05a3: Unknown result type (might be due to invalid IL or missing references)
		//IL_05ad: Expected O, but got Unknown
		//IL_05ae: Unknown result type (might be due to invalid IL or missing references)
		//IL_05b8: Expected O, but got Unknown
		//IL_05b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_05c3: Expected O, but got Unknown
		//IL_05c4: Unknown result type (might be due to invalid IL or missing references)
		//IL_05ce: Expected O, but got Unknown
		//IL_05cf: Unknown result type (might be due to invalid IL or missing references)
		//IL_05d9: Expected O, but got Unknown
		//IL_05da: Unknown result type (might be due to invalid IL or missing references)
		//IL_05e4: Expected O, but got Unknown
		//IL_05e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_05ef: Expected O, but got Unknown
		//IL_05f0: Unknown result type (might be due to invalid IL or missing references)
		//IL_05fa: Expected O, but got Unknown
		//IL_05fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0605: Expected O, but got Unknown
		//IL_0606: Unknown result type (might be due to invalid IL or missing references)
		//IL_0610: Expected O, but got Unknown
		//IL_0611: Unknown result type (might be due to invalid IL or missing references)
		//IL_061b: Expected O, but got Unknown
		//IL_061c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0626: Expected O, but got Unknown
		//IL_0627: Unknown result type (might be due to invalid IL or missing references)
		//IL_0631: Expected O, but got Unknown
		//IL_0632: Unknown result type (might be due to invalid IL or missing references)
		//IL_063c: Expected O, but got Unknown
		//IL_063d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0647: Expected O, but got Unknown
		//IL_0648: Unknown result type (might be due to invalid IL or missing references)
		//IL_0652: Expected O, but got Unknown
		//IL_0653: Unknown result type (might be due to invalid IL or missing references)
		//IL_065d: Expected O, but got Unknown
		//IL_065e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0668: Expected O, but got Unknown
		//IL_0669: Unknown result type (might be due to invalid IL or missing references)
		//IL_0673: Expected O, but got Unknown
		//IL_0674: Unknown result type (might be due to invalid IL or missing references)
		//IL_067e: Expected O, but got Unknown
		//IL_067f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0689: Expected O, but got Unknown
		//IL_068a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0694: Expected O, but got Unknown
		//IL_0695: Unknown result type (might be due to invalid IL or missing references)
		//IL_069f: Expected O, but got Unknown
		//IL_06a0: Unknown result type (might be due to invalid IL or missing references)
		//IL_06aa: Expected O, but got Unknown
		//IL_06ab: Unknown result type (might be due to invalid IL or missing references)
		//IL_06b5: Expected O, but got Unknown
		//IL_06b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_06c0: Expected O, but got Unknown
		//IL_06c1: Unknown result type (might be due to invalid IL or missing references)
		//IL_06cb: Expected O, but got Unknown
		//IL_06cc: Unknown result type (might be due to invalid IL or missing references)
		//IL_06d6: Expected O, but got Unknown
		//IL_06d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_06e1: Expected O, but got Unknown
		//IL_06e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_06ec: Expected O, but got Unknown
		//IL_06ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_06f7: Expected O, but got Unknown
		//IL_06f8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0702: Expected O, but got Unknown
		//IL_0703: Unknown result type (might be due to invalid IL or missing references)
		//IL_070d: Expected O, but got Unknown
		//IL_070e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0718: Expected O, but got Unknown
		//IL_0719: Unknown result type (might be due to invalid IL or missing references)
		//IL_0723: Expected O, but got Unknown
		//IL_0724: Unknown result type (might be due to invalid IL or missing references)
		//IL_072e: Expected O, but got Unknown
		//IL_072f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0739: Expected O, but got Unknown
		//IL_073a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0744: Expected O, but got Unknown
		//IL_0745: Unknown result type (might be due to invalid IL or missing references)
		//IL_074f: Expected O, but got Unknown
		//IL_0750: Unknown result type (might be due to invalid IL or missing references)
		//IL_075a: Expected O, but got Unknown
		//IL_075b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0765: Expected O, but got Unknown
		//IL_0766: Unknown result type (might be due to invalid IL or missing references)
		//IL_0770: Expected O, but got Unknown
		//IL_0771: Unknown result type (might be due to invalid IL or missing references)
		//IL_077b: Expected O, but got Unknown
		//IL_077c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0786: Expected O, but got Unknown
		//IL_0787: Unknown result type (might be due to invalid IL or missing references)
		//IL_0791: Expected O, but got Unknown
		//IL_0792: Unknown result type (might be due to invalid IL or missing references)
		//IL_079c: Expected O, but got Unknown
		//IL_079d: Unknown result type (might be due to invalid IL or missing references)
		//IL_07a7: Expected O, but got Unknown
		//IL_07a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_07b2: Expected O, but got Unknown
		//IL_07b3: Unknown result type (might be due to invalid IL or missing references)
		//IL_07bd: Expected O, but got Unknown
		//IL_07be: Unknown result type (might be due to invalid IL or missing references)
		//IL_07c8: Expected O, but got Unknown
		//IL_07c9: Unknown result type (might be due to invalid IL or missing references)
		//IL_07d3: Expected O, but got Unknown
		//IL_07d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_07de: Expected O, but got Unknown
		//IL_07df: Unknown result type (might be due to invalid IL or missing references)
		//IL_07e9: Expected O, but got Unknown
		//IL_07ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_07f4: Expected O, but got Unknown
		//IL_07f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_07ff: Expected O, but got Unknown
		//IL_0800: Unknown result type (might be due to invalid IL or missing references)
		//IL_080a: Expected O, but got Unknown
		//IL_080b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0815: Expected O, but got Unknown
		//IL_0816: Unknown result type (might be due to invalid IL or missing references)
		//IL_0820: Expected O, but got Unknown
		//IL_0821: Unknown result type (might be due to invalid IL or missing references)
		//IL_082b: Expected O, but got Unknown
		//IL_082c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0836: Expected O, but got Unknown
		//IL_0837: Unknown result type (might be due to invalid IL or missing references)
		//IL_0841: Expected O, but got Unknown
		//IL_0842: Unknown result type (might be due to invalid IL or missing references)
		//IL_084c: Expected O, but got Unknown
		//IL_084d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0857: Expected O, but got Unknown
		//IL_0858: Unknown result type (might be due to invalid IL or missing references)
		//IL_0862: Expected O, but got Unknown
		//IL_0863: Unknown result type (might be due to invalid IL or missing references)
		//IL_086d: Expected O, but got Unknown
		//IL_086e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0878: Expected O, but got Unknown
		//IL_0879: Unknown result type (might be due to invalid IL or missing references)
		//IL_0883: Expected O, but got Unknown
		//IL_0884: Unknown result type (might be due to invalid IL or missing references)
		//IL_088e: Expected O, but got Unknown
		//IL_088f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0899: Expected O, but got Unknown
		//IL_089a: Unknown result type (might be due to invalid IL or missing references)
		//IL_08a4: Expected O, but got Unknown
		//IL_08a5: Unknown result type (might be due to invalid IL or missing references)
		//IL_08af: Expected O, but got Unknown
		//IL_08b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_08ba: Expected O, but got Unknown
		//IL_08bb: Unknown result type (might be due to invalid IL or missing references)
		//IL_08c5: Expected O, but got Unknown
		//IL_08c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_08d0: Expected O, but got Unknown
		//IL_08d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_08db: Expected O, but got Unknown
		//IL_08dc: Unknown result type (might be due to invalid IL or missing references)
		//IL_08e6: Expected O, but got Unknown
		//IL_08e7: Unknown result type (might be due to invalid IL or missing references)
		//IL_08f1: Expected O, but got Unknown
		//IL_08f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_08fc: Expected O, but got Unknown
		//IL_08fd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0907: Expected O, but got Unknown
		//IL_0908: Unknown result type (might be due to invalid IL or missing references)
		//IL_0912: Expected O, but got Unknown
		//IL_0913: Unknown result type (might be due to invalid IL or missing references)
		//IL_091d: Expected O, but got Unknown
		//IL_091e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0928: Expected O, but got Unknown
		//IL_0929: Unknown result type (might be due to invalid IL or missing references)
		//IL_0933: Expected O, but got Unknown
		//IL_0934: Unknown result type (might be due to invalid IL or missing references)
		//IL_093e: Expected O, but got Unknown
		//IL_093f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0949: Expected O, but got Unknown
		//IL_094a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0954: Expected O, but got Unknown
		//IL_0955: Unknown result type (might be due to invalid IL or missing references)
		//IL_095f: Expected O, but got Unknown
		//IL_0960: Unknown result type (might be due to invalid IL or missing references)
		//IL_096a: Expected O, but got Unknown
		//IL_096b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0975: Expected O, but got Unknown
		//IL_0e83: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ea9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ee5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f0e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f51: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f5b: Expected O, but got Unknown
		//IL_1034: Unknown result type (might be due to invalid IL or missing references)
		//IL_105d: Unknown result type (might be due to invalid IL or missing references)
		//IL_10ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_10d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_1121: Unknown result type (might be due to invalid IL or missing references)
		//IL_1147: Unknown result type (might be due to invalid IL or missing references)
		//IL_1198: Unknown result type (might be due to invalid IL or missing references)
		//IL_11be: Unknown result type (might be due to invalid IL or missing references)
		//IL_120f: Unknown result type (might be due to invalid IL or missing references)
		//IL_1235: Unknown result type (might be due to invalid IL or missing references)
		//IL_1286: Unknown result type (might be due to invalid IL or missing references)
		//IL_12ac: Unknown result type (might be due to invalid IL or missing references)
		//IL_12fd: Unknown result type (might be due to invalid IL or missing references)
		//IL_1323: Unknown result type (might be due to invalid IL or missing references)
		//IL_1371: Unknown result type (might be due to invalid IL or missing references)
		//IL_1397: Unknown result type (might be due to invalid IL or missing references)
		//IL_13e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_140b: Unknown result type (might be due to invalid IL or missing references)
		//IL_145e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1487: Unknown result type (might be due to invalid IL or missing references)
		//IL_14ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_14d4: Expected O, but got Unknown
		//IL_14eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_1514: Unknown result type (might be due to invalid IL or missing references)
		//IL_17d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_1803: Unknown result type (might be due to invalid IL or missing references)
		//IL_1877: Unknown result type (might be due to invalid IL or missing references)
		//IL_189d: Unknown result type (might be due to invalid IL or missing references)
		//IL_18e1: Unknown result type (might be due to invalid IL or missing references)
		//IL_190a: Unknown result type (might be due to invalid IL or missing references)
		//IL_194d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1957: Expected O, but got Unknown
		//IL_1977: Unknown result type (might be due to invalid IL or missing references)
		//IL_1981: Expected O, but got Unknown
		//IL_1992: Unknown result type (might be due to invalid IL or missing references)
		//IL_19bb: Unknown result type (might be due to invalid IL or missing references)
		//IL_19ff: Unknown result type (might be due to invalid IL or missing references)
		//IL_1a09: Expected O, but got Unknown
		//IL_1a27: Unknown result type (might be due to invalid IL or missing references)
		//IL_1a4d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1a96: Unknown result type (might be due to invalid IL or missing references)
		//IL_1aab: Unknown result type (might be due to invalid IL or missing references)
		//IL_1ad1: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b1e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b44: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b94: Unknown result type (might be due to invalid IL or missing references)
		//IL_1bba: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c08: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c2e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c7b: Unknown result type (might be due to invalid IL or missing references)
		//IL_1ca1: Unknown result type (might be due to invalid IL or missing references)
		//IL_1cf1: Unknown result type (might be due to invalid IL or missing references)
		//IL_1d17: Unknown result type (might be due to invalid IL or missing references)
		//IL_1d67: Unknown result type (might be due to invalid IL or missing references)
		//IL_1d8d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1dda: Unknown result type (might be due to invalid IL or missing references)
		//IL_1e03: Unknown result type (might be due to invalid IL or missing references)
		//IL_1e54: Unknown result type (might be due to invalid IL or missing references)
		//IL_1e7d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1eca: Unknown result type (might be due to invalid IL or missing references)
		//IL_1ef0: Unknown result type (might be due to invalid IL or missing references)
		//IL_1f40: Unknown result type (might be due to invalid IL or missing references)
		//IL_1f66: Unknown result type (might be due to invalid IL or missing references)
		//IL_2016: Unknown result type (might be due to invalid IL or missing references)
		//IL_203c: Unknown result type (might be due to invalid IL or missing references)
		//IL_207f: Unknown result type (might be due to invalid IL or missing references)
		//IL_20a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_20fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_2121: Unknown result type (might be due to invalid IL or missing references)
		//IL_216a: Unknown result type (might be due to invalid IL or missing references)
		//IL_2174: Expected O, but got Unknown
		//IL_217b: Unknown result type (might be due to invalid IL or missing references)
		//IL_2196: Unknown result type (might be due to invalid IL or missing references)
		//IL_21bc: Unknown result type (might be due to invalid IL or missing references)
		//IL_220d: Unknown result type (might be due to invalid IL or missing references)
		//IL_2233: Unknown result type (might be due to invalid IL or missing references)
		//IL_2283: Unknown result type (might be due to invalid IL or missing references)
		//IL_22a9: Unknown result type (might be due to invalid IL or missing references)
		//IL_22f0: Unknown result type (might be due to invalid IL or missing references)
		//IL_2316: Unknown result type (might be due to invalid IL or missing references)
		//IL_235a: Unknown result type (might be due to invalid IL or missing references)
		//IL_2364: Expected O, but got Unknown
		//IL_2377: Unknown result type (might be due to invalid IL or missing references)
		//IL_2381: Expected O, but got Unknown
		//IL_2392: Unknown result type (might be due to invalid IL or missing references)
		//IL_23d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_2425: Unknown result type (might be due to invalid IL or missing references)
		//IL_244b: Unknown result type (might be due to invalid IL or missing references)
		//IL_248e: Unknown result type (might be due to invalid IL or missing references)
		//IL_2498: Expected O, but got Unknown
		//IL_24b3: Unknown result type (might be due to invalid IL or missing references)
		//IL_24d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_2529: Unknown result type (might be due to invalid IL or missing references)
		//IL_254f: Unknown result type (might be due to invalid IL or missing references)
		//IL_2597: Unknown result type (might be due to invalid IL or missing references)
		//IL_25a1: Expected O, but got Unknown
		//IL_25af: Unknown result type (might be due to invalid IL or missing references)
		//IL_25f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_26af: Unknown result type (might be due to invalid IL or missing references)
		//IL_26d5: Unknown result type (might be due to invalid IL or missing references)
		//IL_271c: Unknown result type (might be due to invalid IL or missing references)
		//IL_2742: Unknown result type (might be due to invalid IL or missing references)
		//IL_278b: Unknown result type (might be due to invalid IL or missing references)
		//IL_2795: Expected O, but got Unknown
		//IL_27a6: Unknown result type (might be due to invalid IL or missing references)
		//IL_27eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_283f: Unknown result type (might be due to invalid IL or missing references)
		//IL_2849: Expected O, but got Unknown
		//IL_285a: Unknown result type (might be due to invalid IL or missing references)
		//IL_289f: Unknown result type (might be due to invalid IL or missing references)
		//IL_28fa: Unknown result type (might be due to invalid IL or missing references)
		//IL_2920: Unknown result type (might be due to invalid IL or missing references)
		//IL_2963: Unknown result type (might be due to invalid IL or missing references)
		//IL_296d: Expected O, but got Unknown
		//IL_2984: Unknown result type (might be due to invalid IL or missing references)
		//IL_29aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_29f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_29fc: Expected O, but got Unknown
		//IL_2a0a: Unknown result type (might be due to invalid IL or missing references)
		//IL_2a30: Unknown result type (might be due to invalid IL or missing references)
		//IL_2aed: Unknown result type (might be due to invalid IL or missing references)
		//IL_2b13: Unknown result type (might be due to invalid IL or missing references)
		//IL_2b54: Unknown result type (might be due to invalid IL or missing references)
		//IL_2b7a: Unknown result type (might be due to invalid IL or missing references)
		//IL_2c42: Unknown result type (might be due to invalid IL or missing references)
		//IL_2c68: Unknown result type (might be due to invalid IL or missing references)
		//IL_2cac: Unknown result type (might be due to invalid IL or missing references)
		//IL_2cd2: Unknown result type (might be due to invalid IL or missing references)
		//IL_2d91: Unknown result type (might be due to invalid IL or missing references)
		//IL_2db7: Unknown result type (might be due to invalid IL or missing references)
		//IL_2e42: Unknown result type (might be due to invalid IL or missing references)
		//IL_2e68: Unknown result type (might be due to invalid IL or missing references)
		//IL_2ea9: Unknown result type (might be due to invalid IL or missing references)
		//IL_2ecf: Unknown result type (might be due to invalid IL or missing references)
		//IL_2f15: Unknown result type (might be due to invalid IL or missing references)
		//IL_2f3b: Unknown result type (might be due to invalid IL or missing references)
		//IL_2f7f: Unknown result type (might be due to invalid IL or missing references)
		//IL_2f89: Expected O, but got Unknown
		//IL_2f9a: Unknown result type (might be due to invalid IL or missing references)
		//IL_2fc0: Unknown result type (might be due to invalid IL or missing references)
		//IL_3004: Unknown result type (might be due to invalid IL or missing references)
		//IL_300e: Expected O, but got Unknown
		//IL_301f: Unknown result type (might be due to invalid IL or missing references)
		//IL_3045: Unknown result type (might be due to invalid IL or missing references)
		//IL_3089: Unknown result type (might be due to invalid IL or missing references)
		//IL_3093: Expected O, but got Unknown
		//IL_30a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_30ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_310e: Unknown result type (might be due to invalid IL or missing references)
		//IL_3118: Expected O, but got Unknown
		//IL_3138: Unknown result type (might be due to invalid IL or missing references)
		//IL_3142: Expected O, but got Unknown
		//IL_3150: Unknown result type (might be due to invalid IL or missing references)
		//IL_3176: Unknown result type (might be due to invalid IL or missing references)
		//IL_31c4: Unknown result type (might be due to invalid IL or missing references)
		//IL_31ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_322d: Unknown result type (might be due to invalid IL or missing references)
		//IL_3253: Unknown result type (might be due to invalid IL or missing references)
		//IL_32a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_32ae: Expected O, but got Unknown
		//IL_32bc: Unknown result type (might be due to invalid IL or missing references)
		//IL_32e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_3325: Unknown result type (might be due to invalid IL or missing references)
		//IL_332f: Expected O, but got Unknown
		//IL_334f: Unknown result type (might be due to invalid IL or missing references)
		//IL_3359: Expected O, but got Unknown
		//IL_3364: Unknown result type (might be due to invalid IL or missing references)
		//IL_338a: Unknown result type (might be due to invalid IL or missing references)
		//IL_33cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_33f1: Unknown result type (might be due to invalid IL or missing references)
		//IL_3434: Unknown result type (might be due to invalid IL or missing references)
		//IL_343e: Expected O, but got Unknown
		//IL_3466: Unknown result type (might be due to invalid IL or missing references)
		//IL_348c: Unknown result type (might be due to invalid IL or missing references)
		//IL_34cf: Unknown result type (might be due to invalid IL or missing references)
		//IL_34d9: Expected O, but got Unknown
		//IL_35b2: Unknown result type (might be due to invalid IL or missing references)
		//IL_35db: Unknown result type (might be due to invalid IL or missing references)
		//IL_362c: Unknown result type (might be due to invalid IL or missing references)
		//IL_3652: Unknown result type (might be due to invalid IL or missing references)
		//IL_3693: Unknown result type (might be due to invalid IL or missing references)
		//IL_36b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_36f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_36ff: Expected O, but got Unknown
		//IL_370a: Unknown result type (might be due to invalid IL or missing references)
		//IL_374f: Unknown result type (might be due to invalid IL or missing references)
		//IL_379b: Unknown result type (might be due to invalid IL or missing references)
		//IL_37c1: Unknown result type (might be due to invalid IL or missing references)
		//IL_3801: Unknown result type (might be due to invalid IL or missing references)
		//IL_3827: Unknown result type (might be due to invalid IL or missing references)
		//IL_386b: Unknown result type (might be due to invalid IL or missing references)
		//IL_3891: Unknown result type (might be due to invalid IL or missing references)
		//IL_38ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_38f9: Expected O, but got Unknown
		//IL_3919: Unknown result type (might be due to invalid IL or missing references)
		//IL_3923: Expected O, but got Unknown
		//IL_3931: Unknown result type (might be due to invalid IL or missing references)
		//IL_3957: Unknown result type (might be due to invalid IL or missing references)
		//IL_39dc: Unknown result type (might be due to invalid IL or missing references)
		//IL_3a05: Unknown result type (might be due to invalid IL or missing references)
		//IL_3a4d: Unknown result type (might be due to invalid IL or missing references)
		//IL_3a57: Expected O, but got Unknown
		//IL_3a76: Unknown result type (might be due to invalid IL or missing references)
		//IL_3a80: Expected O, but got Unknown
		//IL_3acf: Unknown result type (might be due to invalid IL or missing references)
		//IL_3af2: Unknown result type (might be due to invalid IL or missing references)
		//IL_3b0d: Unknown result type (might be due to invalid IL or missing references)
		//IL_3bd9: Unknown result type (might be due to invalid IL or missing references)
		//IL_3c02: Unknown result type (might be due to invalid IL or missing references)
		//IL_3c52: Unknown result type (might be due to invalid IL or missing references)
		//IL_3c95: Unknown result type (might be due to invalid IL or missing references)
		//IL_3ce3: Unknown result type (might be due to invalid IL or missing references)
		//IL_3d09: Unknown result type (might be due to invalid IL or missing references)
		//IL_3d5e: Unknown result type (might be due to invalid IL or missing references)
		//IL_3d68: Expected O, but got Unknown
		//IL_3d76: Unknown result type (might be due to invalid IL or missing references)
		//IL_3d9c: Unknown result type (might be due to invalid IL or missing references)
		//IL_3e06: Unknown result type (might be due to invalid IL or missing references)
		//IL_3e2c: Unknown result type (might be due to invalid IL or missing references)
		//IL_3e74: Unknown result type (might be due to invalid IL or missing references)
		//IL_3e7e: Expected O, but got Unknown
		//IL_3e85: Unknown result type (might be due to invalid IL or missing references)
		//IL_3e9d: Unknown result type (might be due to invalid IL or missing references)
		//IL_3ed3: Unknown result type (might be due to invalid IL or missing references)
		//IL_3f09: Unknown result type (might be due to invalid IL or missing references)
		//IL_3f2f: Unknown result type (might be due to invalid IL or missing references)
		//IL_3f73: Unknown result type (might be due to invalid IL or missing references)
		//IL_3f7d: Expected O, but got Unknown
		//IL_403e: Unknown result type (might be due to invalid IL or missing references)
		//IL_4067: Unknown result type (might be due to invalid IL or missing references)
		//IL_40ab: Unknown result type (might be due to invalid IL or missing references)
		//IL_40d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_4114: Unknown result type (might be due to invalid IL or missing references)
		//IL_411e: Expected O, but got Unknown
		//IL_4139: Unknown result type (might be due to invalid IL or missing references)
		//IL_415f: Unknown result type (might be due to invalid IL or missing references)
		//IL_41f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_421c: Unknown result type (might be due to invalid IL or missing references)
		//IL_424f: Unknown result type (might be due to invalid IL or missing references)
		//IL_4290: Unknown result type (might be due to invalid IL or missing references)
		//IL_42dd: Unknown result type (might be due to invalid IL or missing references)
		//IL_4303: Unknown result type (might be due to invalid IL or missing references)
		//IL_434b: Unknown result type (might be due to invalid IL or missing references)
		//IL_4355: Expected O, but got Unknown
		//IL_435c: Unknown result type (might be due to invalid IL or missing references)
		//IL_4371: Unknown result type (might be due to invalid IL or missing references)
		//IL_439a: Unknown result type (might be due to invalid IL or missing references)
		//IL_43da: Unknown result type (might be due to invalid IL or missing references)
		//IL_4400: Unknown result type (might be due to invalid IL or missing references)
		//IL_4487: Unknown result type (might be due to invalid IL or missing references)
		//IL_44de: Unknown result type (might be due to invalid IL or missing references)
		//IL_4503: Unknown result type (might be due to invalid IL or missing references)
		//IL_450d: Expected O, but got Unknown
		//IL_4665: Unknown result type (might be due to invalid IL or missing references)
		//IL_4688: Unknown result type (might be due to invalid IL or missing references)
		//IL_46a3: Unknown result type (might be due to invalid IL or missing references)
		//IL_4741: Unknown result type (might be due to invalid IL or missing references)
		//IL_477a: Unknown result type (might be due to invalid IL or missing references)
		//IL_47ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_47ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_4808: Unknown result type (might be due to invalid IL or missing references)
		//IL_4916: Unknown result type (might be due to invalid IL or missing references)
		//IL_4942: Unknown result type (might be due to invalid IL or missing references)
		//IL_4999: Unknown result type (might be due to invalid IL or missing references)
		//IL_49bc: Unknown result type (might be due to invalid IL or missing references)
		//IL_49d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_4a5a: Unknown result type (might be due to invalid IL or missing references)
		//IL_4a86: Unknown result type (might be due to invalid IL or missing references)
		//IL_4ad3: Unknown result type (might be due to invalid IL or missing references)
		//IL_4afc: Unknown result type (might be due to invalid IL or missing references)
		//IL_4bc6: Unknown result type (might be due to invalid IL or missing references)
		//IL_4bff: Unknown result type (might be due to invalid IL or missing references)
		//IL_4dd5: Unknown result type (might be due to invalid IL or missing references)
		//IL_4df8: Unknown result type (might be due to invalid IL or missing references)
		//IL_4e13: Unknown result type (might be due to invalid IL or missing references)
		//IL_4e59: Unknown result type (might be due to invalid IL or missing references)
		//IL_4e9a: Unknown result type (might be due to invalid IL or missing references)
		//IL_4ebf: Unknown result type (might be due to invalid IL or missing references)
		//IL_4ec9: Expected O, but got Unknown
		//IL_4ed7: Unknown result type (might be due to invalid IL or missing references)
		//IL_4f18: Unknown result type (might be due to invalid IL or missing references)
		//IL_4f3d: Unknown result type (might be due to invalid IL or missing references)
		//IL_4f47: Expected O, but got Unknown
		//IL_4f55: Unknown result type (might be due to invalid IL or missing references)
		//IL_4f96: Unknown result type (might be due to invalid IL or missing references)
		//IL_4fbb: Unknown result type (might be due to invalid IL or missing references)
		//IL_4fc5: Expected O, but got Unknown
		//IL_4fe5: Unknown result type (might be due to invalid IL or missing references)
		//IL_4fef: Expected O, but got Unknown
		//IL_4ffd: Unknown result type (might be due to invalid IL or missing references)
		//IL_5026: Unknown result type (might be due to invalid IL or missing references)
		//IL_507c: Unknown result type (might be due to invalid IL or missing references)
		//IL_5086: Expected O, but got Unknown
		//IL_5094: Unknown result type (might be due to invalid IL or missing references)
		//IL_50ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_50f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_5134: Unknown result type (might be due to invalid IL or missing references)
		//IL_5159: Unknown result type (might be due to invalid IL or missing references)
		//IL_5163: Expected O, but got Unknown
		//IL_5174: Unknown result type (might be due to invalid IL or missing references)
		//IL_51b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_51da: Unknown result type (might be due to invalid IL or missing references)
		//IL_51e4: Expected O, but got Unknown
		//IL_51f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_5233: Unknown result type (might be due to invalid IL or missing references)
		//IL_5258: Unknown result type (might be due to invalid IL or missing references)
		//IL_5262: Expected O, but got Unknown
		//IL_526f: Unknown result type (might be due to invalid IL or missing references)
		//IL_52b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_52d5: Unknown result type (might be due to invalid IL or missing references)
		//IL_52df: Expected O, but got Unknown
		//IL_52f0: Unknown result type (might be due to invalid IL or missing references)
		//IL_5331: Unknown result type (might be due to invalid IL or missing references)
		//IL_5356: Unknown result type (might be due to invalid IL or missing references)
		//IL_5360: Expected O, but got Unknown
		//IL_5380: Unknown result type (might be due to invalid IL or missing references)
		//IL_538a: Expected O, but got Unknown
		//IL_5395: Unknown result type (might be due to invalid IL or missing references)
		//IL_53be: Unknown result type (might be due to invalid IL or missing references)
		//IL_5414: Unknown result type (might be due to invalid IL or missing references)
		//IL_541e: Expected O, but got Unknown
		//IL_5427: Unknown result type (might be due to invalid IL or missing references)
		//IL_5450: Unknown result type (might be due to invalid IL or missing references)
		//IL_5494: Unknown result type (might be due to invalid IL or missing references)
		//IL_54d5: Unknown result type (might be due to invalid IL or missing references)
		//IL_54fa: Unknown result type (might be due to invalid IL or missing references)
		//IL_5504: Expected O, but got Unknown
		//IL_5512: Unknown result type (might be due to invalid IL or missing references)
		//IL_5553: Unknown result type (might be due to invalid IL or missing references)
		//IL_5578: Unknown result type (might be due to invalid IL or missing references)
		//IL_5582: Expected O, but got Unknown
		//IL_5590: Unknown result type (might be due to invalid IL or missing references)
		//IL_55d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_55f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_5600: Expected O, but got Unknown
		//IL_560e: Unknown result type (might be due to invalid IL or missing references)
		//IL_564f: Unknown result type (might be due to invalid IL or missing references)
		//IL_5674: Unknown result type (might be due to invalid IL or missing references)
		//IL_567e: Expected O, but got Unknown
		//IL_569e: Unknown result type (might be due to invalid IL or missing references)
		//IL_56a8: Expected O, but got Unknown
		//IL_56b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_56df: Unknown result type (might be due to invalid IL or missing references)
		//IL_5723: Unknown result type (might be due to invalid IL or missing references)
		//IL_5764: Unknown result type (might be due to invalid IL or missing references)
		//IL_5789: Unknown result type (might be due to invalid IL or missing references)
		//IL_5793: Expected O, but got Unknown
		//IL_57a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_57e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_580a: Unknown result type (might be due to invalid IL or missing references)
		//IL_5814: Expected O, but got Unknown
		//IL_5956: Unknown result type (might be due to invalid IL or missing references)
		//IL_5979: Unknown result type (might be due to invalid IL or missing references)
		//IL_5994: Unknown result type (might be due to invalid IL or missing references)
		//IL_59da: Unknown result type (might be due to invalid IL or missing references)
		//IL_5a1b: Unknown result type (might be due to invalid IL or missing references)
		//IL_5a40: Unknown result type (might be due to invalid IL or missing references)
		//IL_5a4a: Expected O, but got Unknown
		//IL_5a6a: Unknown result type (might be due to invalid IL or missing references)
		//IL_5a74: Expected O, but got Unknown
		//IL_5a7d: Unknown result type (might be due to invalid IL or missing references)
		//IL_5aa6: Unknown result type (might be due to invalid IL or missing references)
		//IL_5aea: Unknown result type (might be due to invalid IL or missing references)
		//IL_5b2b: Unknown result type (might be due to invalid IL or missing references)
		//IL_5b50: Unknown result type (might be due to invalid IL or missing references)
		//IL_5b5a: Expected O, but got Unknown
		//IL_5b7a: Unknown result type (might be due to invalid IL or missing references)
		//IL_5b84: Expected O, but got Unknown
		//IL_5b92: Unknown result type (might be due to invalid IL or missing references)
		//IL_5bbb: Unknown result type (might be due to invalid IL or missing references)
		//IL_5bff: Unknown result type (might be due to invalid IL or missing references)
		//IL_5c40: Unknown result type (might be due to invalid IL or missing references)
		//IL_5c65: Unknown result type (might be due to invalid IL or missing references)
		//IL_5c6f: Expected O, but got Unknown
		//IL_5c8f: Unknown result type (might be due to invalid IL or missing references)
		//IL_5c99: Expected O, but got Unknown
		//IL_5ca3: Unknown result type (might be due to invalid IL or missing references)
		//IL_5ccc: Unknown result type (might be due to invalid IL or missing references)
		//IL_5d22: Unknown result type (might be due to invalid IL or missing references)
		//IL_5d2c: Expected O, but got Unknown
		//IL_5d3a: Unknown result type (might be due to invalid IL or missing references)
		//IL_5d60: Unknown result type (might be due to invalid IL or missing references)
		//IL_5d99: Unknown result type (might be due to invalid IL or missing references)
		//IL_5dda: Unknown result type (might be due to invalid IL or missing references)
		//IL_5dff: Unknown result type (might be due to invalid IL or missing references)
		//IL_5e09: Expected O, but got Unknown
		//IL_5e17: Unknown result type (might be due to invalid IL or missing references)
		//IL_5e58: Unknown result type (might be due to invalid IL or missing references)
		//IL_5e7d: Unknown result type (might be due to invalid IL or missing references)
		//IL_5e87: Expected O, but got Unknown
		//IL_5e94: Unknown result type (might be due to invalid IL or missing references)
		//IL_5ed5: Unknown result type (might be due to invalid IL or missing references)
		//IL_5efa: Unknown result type (might be due to invalid IL or missing references)
		//IL_5f04: Expected O, but got Unknown
		//IL_5f12: Unknown result type (might be due to invalid IL or missing references)
		//IL_5f53: Unknown result type (might be due to invalid IL or missing references)
		//IL_5f78: Unknown result type (might be due to invalid IL or missing references)
		//IL_5f82: Expected O, but got Unknown
		//IL_5f93: Unknown result type (might be due to invalid IL or missing references)
		//IL_5fd4: Unknown result type (might be due to invalid IL or missing references)
		//IL_5ff9: Unknown result type (might be due to invalid IL or missing references)
		//IL_6003: Expected O, but got Unknown
		//IL_6011: Unknown result type (might be due to invalid IL or missing references)
		//IL_6052: Unknown result type (might be due to invalid IL or missing references)
		//IL_6077: Unknown result type (might be due to invalid IL or missing references)
		//IL_6081: Expected O, but got Unknown
		//IL_621f: Unknown result type (might be due to invalid IL or missing references)
		//IL_624b: Unknown result type (might be due to invalid IL or missing references)
		//IL_6291: Unknown result type (might be due to invalid IL or missing references)
		//IL_62d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_62f7: Unknown result type (might be due to invalid IL or missing references)
		//IL_6301: Expected O, but got Unknown
		//IL_630f: Unknown result type (might be due to invalid IL or missing references)
		//IL_6350: Unknown result type (might be due to invalid IL or missing references)
		//IL_6375: Unknown result type (might be due to invalid IL or missing references)
		//IL_637f: Expected O, but got Unknown
		//IL_639f: Unknown result type (might be due to invalid IL or missing references)
		//IL_63a9: Expected O, but got Unknown
		//IL_63b2: Unknown result type (might be due to invalid IL or missing references)
		//IL_63db: Unknown result type (might be due to invalid IL or missing references)
		//IL_6431: Unknown result type (might be due to invalid IL or missing references)
		//IL_643b: Expected O, but got Unknown
		//IL_6449: Unknown result type (might be due to invalid IL or missing references)
		//IL_6475: Unknown result type (might be due to invalid IL or missing references)
		//IL_64bc: Unknown result type (might be due to invalid IL or missing references)
		//IL_64fd: Unknown result type (might be due to invalid IL or missing references)
		//IL_6522: Unknown result type (might be due to invalid IL or missing references)
		//IL_652c: Expected O, but got Unknown
		//IL_653a: Unknown result type (might be due to invalid IL or missing references)
		//IL_657b: Unknown result type (might be due to invalid IL or missing references)
		//IL_65a0: Unknown result type (might be due to invalid IL or missing references)
		//IL_65aa: Expected O, but got Unknown
		//IL_65ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_65d4: Expected O, but got Unknown
		//IL_65e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_6608: Unknown result type (might be due to invalid IL or missing references)
		//IL_663e: Unknown result type (might be due to invalid IL or missing references)
		//IL_667f: Unknown result type (might be due to invalid IL or missing references)
		//IL_66a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_66ae: Expected O, but got Unknown
		//IL_66bb: Unknown result type (might be due to invalid IL or missing references)
		//IL_66fc: Unknown result type (might be due to invalid IL or missing references)
		//IL_6721: Unknown result type (might be due to invalid IL or missing references)
		//IL_672b: Expected O, but got Unknown
		//IL_6739: Unknown result type (might be due to invalid IL or missing references)
		//IL_677a: Unknown result type (might be due to invalid IL or missing references)
		//IL_679f: Unknown result type (might be due to invalid IL or missing references)
		//IL_67a9: Expected O, but got Unknown
		//IL_67b7: Unknown result type (might be due to invalid IL or missing references)
		//IL_67f8: Unknown result type (might be due to invalid IL or missing references)
		//IL_681d: Unknown result type (might be due to invalid IL or missing references)
		//IL_6827: Expected O, but got Unknown
		//IL_6835: Unknown result type (might be due to invalid IL or missing references)
		//IL_6876: Unknown result type (might be due to invalid IL or missing references)
		//IL_689b: Unknown result type (might be due to invalid IL or missing references)
		//IL_68a5: Expected O, but got Unknown
		//IL_68b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_68f7: Unknown result type (might be due to invalid IL or missing references)
		//IL_691c: Unknown result type (might be due to invalid IL or missing references)
		//IL_6926: Expected O, but got Unknown
		//IL_6946: Unknown result type (might be due to invalid IL or missing references)
		//IL_6950: Expected O, but got Unknown
		//IL_695b: Unknown result type (might be due to invalid IL or missing references)
		//IL_6984: Unknown result type (might be due to invalid IL or missing references)
		//IL_69cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_6a0c: Unknown result type (might be due to invalid IL or missing references)
		//IL_6a31: Unknown result type (might be due to invalid IL or missing references)
		//IL_6a3b: Expected O, but got Unknown
		//IL_6a49: Unknown result type (might be due to invalid IL or missing references)
		//IL_6a8a: Unknown result type (might be due to invalid IL or missing references)
		//IL_6aaf: Unknown result type (might be due to invalid IL or missing references)
		//IL_6ab9: Expected O, but got Unknown
		//IL_6ac7: Unknown result type (might be due to invalid IL or missing references)
		//IL_6b08: Unknown result type (might be due to invalid IL or missing references)
		//IL_6b2d: Unknown result type (might be due to invalid IL or missing references)
		//IL_6b37: Expected O, but got Unknown
		//IL_6cd5: Unknown result type (might be due to invalid IL or missing references)
		//IL_6d01: Unknown result type (might be due to invalid IL or missing references)
		//IL_6d47: Unknown result type (might be due to invalid IL or missing references)
		//IL_6d88: Unknown result type (might be due to invalid IL or missing references)
		//IL_6dad: Unknown result type (might be due to invalid IL or missing references)
		//IL_6db7: Expected O, but got Unknown
		//IL_6dc5: Unknown result type (might be due to invalid IL or missing references)
		//IL_6e06: Unknown result type (might be due to invalid IL or missing references)
		//IL_6e2b: Unknown result type (might be due to invalid IL or missing references)
		//IL_6e35: Expected O, but got Unknown
		//IL_6e55: Unknown result type (might be due to invalid IL or missing references)
		//IL_6e5f: Expected O, but got Unknown
		//IL_6e68: Unknown result type (might be due to invalid IL or missing references)
		//IL_6e91: Unknown result type (might be due to invalid IL or missing references)
		//IL_6ed8: Unknown result type (might be due to invalid IL or missing references)
		//IL_6f19: Unknown result type (might be due to invalid IL or missing references)
		//IL_6f3e: Unknown result type (might be due to invalid IL or missing references)
		//IL_6f48: Expected O, but got Unknown
		//IL_6f56: Unknown result type (might be due to invalid IL or missing references)
		//IL_6f97: Unknown result type (might be due to invalid IL or missing references)
		//IL_6fbc: Unknown result type (might be due to invalid IL or missing references)
		//IL_6fc6: Expected O, but got Unknown
		//IL_6fd4: Unknown result type (might be due to invalid IL or missing references)
		//IL_7015: Unknown result type (might be due to invalid IL or missing references)
		//IL_703a: Unknown result type (might be due to invalid IL or missing references)
		//IL_7044: Expected O, but got Unknown
		//IL_7064: Unknown result type (might be due to invalid IL or missing references)
		//IL_706e: Expected O, but got Unknown
		//IL_707c: Unknown result type (might be due to invalid IL or missing references)
		//IL_70a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_70d8: Unknown result type (might be due to invalid IL or missing references)
		//IL_7119: Unknown result type (might be due to invalid IL or missing references)
		//IL_713e: Unknown result type (might be due to invalid IL or missing references)
		//IL_7148: Expected O, but got Unknown
		//IL_7155: Unknown result type (might be due to invalid IL or missing references)
		//IL_7196: Unknown result type (might be due to invalid IL or missing references)
		//IL_71bb: Unknown result type (might be due to invalid IL or missing references)
		//IL_71c5: Expected O, but got Unknown
		//IL_71d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_7214: Unknown result type (might be due to invalid IL or missing references)
		//IL_7239: Unknown result type (might be due to invalid IL or missing references)
		//IL_7243: Expected O, but got Unknown
		//IL_7251: Unknown result type (might be due to invalid IL or missing references)
		//IL_7292: Unknown result type (might be due to invalid IL or missing references)
		//IL_72b7: Unknown result type (might be due to invalid IL or missing references)
		//IL_72c1: Expected O, but got Unknown
		//IL_72d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_7313: Unknown result type (might be due to invalid IL or missing references)
		//IL_7338: Unknown result type (might be due to invalid IL or missing references)
		//IL_7342: Expected O, but got Unknown
		//IL_7362: Unknown result type (might be due to invalid IL or missing references)
		//IL_736c: Expected O, but got Unknown
		//IL_7376: Unknown result type (might be due to invalid IL or missing references)
		//IL_739f: Unknown result type (might be due to invalid IL or missing references)
		//IL_73e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_7424: Unknown result type (might be due to invalid IL or missing references)
		//IL_7449: Unknown result type (might be due to invalid IL or missing references)
		//IL_7453: Expected O, but got Unknown
		//IL_7473: Unknown result type (might be due to invalid IL or missing references)
		//IL_747d: Expected O, but got Unknown
		//IL_748b: Unknown result type (might be due to invalid IL or missing references)
		//IL_74b7: Unknown result type (might be due to invalid IL or missing references)
		//IL_74fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_753c: Unknown result type (might be due to invalid IL or missing references)
		//IL_7561: Unknown result type (might be due to invalid IL or missing references)
		//IL_756b: Expected O, but got Unknown
		//IL_757c: Unknown result type (might be due to invalid IL or missing references)
		//IL_75bd: Unknown result type (might be due to invalid IL or missing references)
		//IL_75e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_75ec: Expected O, but got Unknown
		//IL_775c: Unknown result type (might be due to invalid IL or missing references)
		//IL_7788: Unknown result type (might be due to invalid IL or missing references)
		//IL_77dd: Unknown result type (might be due to invalid IL or missing references)
		//IL_77e7: Expected O, but got Unknown
		//IL_77f0: Unknown result type (might be due to invalid IL or missing references)
		//IL_7819: Unknown result type (might be due to invalid IL or missing references)
		//IL_786f: Unknown result type (might be due to invalid IL or missing references)
		//IL_7879: Expected O, but got Unknown
		//IL_7887: Unknown result type (might be due to invalid IL or missing references)
		//IL_78b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_78f7: Unknown result type (might be due to invalid IL or missing references)
		//IL_7938: Unknown result type (might be due to invalid IL or missing references)
		//IL_795d: Unknown result type (might be due to invalid IL or missing references)
		//IL_7967: Expected O, but got Unknown
		//IL_7975: Unknown result type (might be due to invalid IL or missing references)
		//IL_79b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_79db: Unknown result type (might be due to invalid IL or missing references)
		//IL_79e5: Expected O, but got Unknown
		//IL_79f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_7a37: Unknown result type (might be due to invalid IL or missing references)
		//IL_7a5c: Unknown result type (might be due to invalid IL or missing references)
		//IL_7a66: Expected O, but got Unknown
		//IL_7a74: Unknown result type (might be due to invalid IL or missing references)
		//IL_7ab5: Unknown result type (might be due to invalid IL or missing references)
		//IL_7ada: Unknown result type (might be due to invalid IL or missing references)
		//IL_7ae4: Expected O, but got Unknown
		//IL_7b04: Unknown result type (might be due to invalid IL or missing references)
		//IL_7b0e: Expected O, but got Unknown
		//IL_7b1c: Unknown result type (might be due to invalid IL or missing references)
		//IL_7b42: Unknown result type (might be due to invalid IL or missing references)
		//IL_7b78: Unknown result type (might be due to invalid IL or missing references)
		//IL_7bb9: Unknown result type (might be due to invalid IL or missing references)
		//IL_7bde: Unknown result type (might be due to invalid IL or missing references)
		//IL_7be8: Expected O, but got Unknown
		//IL_7bf5: Unknown result type (might be due to invalid IL or missing references)
		//IL_7c36: Unknown result type (might be due to invalid IL or missing references)
		//IL_7c5b: Unknown result type (might be due to invalid IL or missing references)
		//IL_7c65: Expected O, but got Unknown
		//IL_7c73: Unknown result type (might be due to invalid IL or missing references)
		//IL_7cb4: Unknown result type (might be due to invalid IL or missing references)
		//IL_7cd9: Unknown result type (might be due to invalid IL or missing references)
		//IL_7ce3: Expected O, but got Unknown
		//IL_7cf1: Unknown result type (might be due to invalid IL or missing references)
		//IL_7d32: Unknown result type (might be due to invalid IL or missing references)
		//IL_7d57: Unknown result type (might be due to invalid IL or missing references)
		//IL_7d61: Expected O, but got Unknown
		//IL_7d6f: Unknown result type (might be due to invalid IL or missing references)
		//IL_7db0: Unknown result type (might be due to invalid IL or missing references)
		//IL_7dd5: Unknown result type (might be due to invalid IL or missing references)
		//IL_7ddf: Expected O, but got Unknown
		//IL_7df0: Unknown result type (might be due to invalid IL or missing references)
		//IL_7e31: Unknown result type (might be due to invalid IL or missing references)
		//IL_7e56: Unknown result type (might be due to invalid IL or missing references)
		//IL_7e60: Expected O, but got Unknown
		//IL_7e80: Unknown result type (might be due to invalid IL or missing references)
		//IL_7e8a: Expected O, but got Unknown
		//IL_7e95: Unknown result type (might be due to invalid IL or missing references)
		//IL_7ebe: Unknown result type (might be due to invalid IL or missing references)
		//IL_7f02: Unknown result type (might be due to invalid IL or missing references)
		//IL_7f43: Unknown result type (might be due to invalid IL or missing references)
		//IL_7f68: Unknown result type (might be due to invalid IL or missing references)
		//IL_7f72: Expected O, but got Unknown
		//IL_8131: Unknown result type (might be due to invalid IL or missing references)
		//IL_815d: Unknown result type (might be due to invalid IL or missing references)
		//IL_81b2: Unknown result type (might be due to invalid IL or missing references)
		//IL_81bc: Expected O, but got Unknown
		//IL_81c9: Unknown result type (might be due to invalid IL or missing references)
		//IL_81f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_8239: Unknown result type (might be due to invalid IL or missing references)
		//IL_827a: Unknown result type (might be due to invalid IL or missing references)
		//IL_829f: Unknown result type (might be due to invalid IL or missing references)
		//IL_82a9: Expected O, but got Unknown
		//IL_82c9: Unknown result type (might be due to invalid IL or missing references)
		//IL_82d3: Expected O, but got Unknown
		//IL_82dc: Unknown result type (might be due to invalid IL or missing references)
		//IL_8305: Unknown result type (might be due to invalid IL or missing references)
		//IL_834c: Unknown result type (might be due to invalid IL or missing references)
		//IL_838d: Unknown result type (might be due to invalid IL or missing references)
		//IL_83b2: Unknown result type (might be due to invalid IL or missing references)
		//IL_83bc: Expected O, but got Unknown
		//IL_83ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_840b: Unknown result type (might be due to invalid IL or missing references)
		//IL_8430: Unknown result type (might be due to invalid IL or missing references)
		//IL_843a: Expected O, but got Unknown
		//IL_844b: Unknown result type (might be due to invalid IL or missing references)
		//IL_848c: Unknown result type (might be due to invalid IL or missing references)
		//IL_84b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_84bb: Expected O, but got Unknown
		//IL_84c9: Unknown result type (might be due to invalid IL or missing references)
		//IL_850a: Unknown result type (might be due to invalid IL or missing references)
		//IL_852f: Unknown result type (might be due to invalid IL or missing references)
		//IL_8539: Expected O, but got Unknown
		//IL_8546: Unknown result type (might be due to invalid IL or missing references)
		//IL_8587: Unknown result type (might be due to invalid IL or missing references)
		//IL_85ac: Unknown result type (might be due to invalid IL or missing references)
		//IL_85b6: Expected O, but got Unknown
		//IL_85c4: Unknown result type (might be due to invalid IL or missing references)
		//IL_8605: Unknown result type (might be due to invalid IL or missing references)
		//IL_862a: Unknown result type (might be due to invalid IL or missing references)
		//IL_8634: Expected O, but got Unknown
		//IL_8642: Unknown result type (might be due to invalid IL or missing references)
		//IL_8683: Unknown result type (might be due to invalid IL or missing references)
		//IL_86a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_86b2: Expected O, but got Unknown
		//IL_86c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_8701: Unknown result type (might be due to invalid IL or missing references)
		//IL_8726: Unknown result type (might be due to invalid IL or missing references)
		//IL_8730: Expected O, but got Unknown
		//IL_8741: Unknown result type (might be due to invalid IL or missing references)
		//IL_8782: Unknown result type (might be due to invalid IL or missing references)
		//IL_87a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_87b1: Expected O, but got Unknown
		//IL_87d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_87db: Expected O, but got Unknown
		//IL_87e6: Unknown result type (might be due to invalid IL or missing references)
		//IL_880f: Unknown result type (might be due to invalid IL or missing references)
		//IL_8852: Unknown result type (might be due to invalid IL or missing references)
		//IL_8893: Unknown result type (might be due to invalid IL or missing references)
		//IL_88b8: Unknown result type (might be due to invalid IL or missing references)
		//IL_88c2: Expected O, but got Unknown
		//IL_88e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_88ec: Expected O, but got Unknown
		//IL_88fa: Unknown result type (might be due to invalid IL or missing references)
		//IL_8920: Unknown result type (might be due to invalid IL or missing references)
		//IL_8964: Unknown result type (might be due to invalid IL or missing references)
		//IL_89a5: Unknown result type (might be due to invalid IL or missing references)
		//IL_89ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_89d4: Expected O, but got Unknown
		//IL_89e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_8a26: Unknown result type (might be due to invalid IL or missing references)
		//IL_8a4b: Unknown result type (might be due to invalid IL or missing references)
		//IL_8a55: Expected O, but got Unknown
		//IL_8a63: Unknown result type (might be due to invalid IL or missing references)
		//IL_8aa4: Unknown result type (might be due to invalid IL or missing references)
		//IL_8ac9: Unknown result type (might be due to invalid IL or missing references)
		//IL_8ad3: Expected O, but got Unknown
		//IL_8ae1: Unknown result type (might be due to invalid IL or missing references)
		//IL_8b22: Unknown result type (might be due to invalid IL or missing references)
		//IL_8b47: Unknown result type (might be due to invalid IL or missing references)
		//IL_8b51: Expected O, but got Unknown
		//IL_8b5e: Unknown result type (might be due to invalid IL or missing references)
		//IL_8b84: Unknown result type (might be due to invalid IL or missing references)
		//IL_8bc8: Unknown result type (might be due to invalid IL or missing references)
		//IL_8bd2: Expected O, but got Unknown
		//IL_8bf2: Unknown result type (might be due to invalid IL or missing references)
		//IL_8bfc: Expected O, but got Unknown
		//IL_8c0a: Unknown result type (might be due to invalid IL or missing references)
		//IL_8c30: Unknown result type (might be due to invalid IL or missing references)
		//IL_8c85: Unknown result type (might be due to invalid IL or missing references)
		//IL_8c8f: Expected O, but got Unknown
		//IL_8c9d: Unknown result type (might be due to invalid IL or missing references)
		//IL_8cc6: Unknown result type (might be due to invalid IL or missing references)
		//IL_8d09: Unknown result type (might be due to invalid IL or missing references)
		//IL_8d59: Unknown result type (might be due to invalid IL or missing references)
		//IL_8da0: Unknown result type (might be due to invalid IL or missing references)
		//IL_8dc9: Unknown result type (might be due to invalid IL or missing references)
		//IL_8e1d: Unknown result type (might be due to invalid IL or missing references)
		//IL_8e46: Unknown result type (might be due to invalid IL or missing references)
		//IL_8e88: Unknown result type (might be due to invalid IL or missing references)
		//IL_8ea6: Unknown result type (might be due to invalid IL or missing references)
		//IL_9051: Unknown result type (might be due to invalid IL or missing references)
		//IL_905b: Expected O, but got Unknown
		components = (IContainer)new Container();
		ComponentResourceManager val = new ComponentResourceManager(typeof(Daily));
		pictureBox1 = new PictureBox();
		checkBoxAll1 = new CheckBox();
		groupBox2 = new GroupBox();
		checkBoxTH2 = new CheckBox();
		checkBoxTGS2 = new CheckBox();
		checkBoxQHM2 = new CheckBox();
		checkBoxTVLH2 = new CheckBox();
		checkBoxLD2 = new CheckBox();
		checkBoxLTC2 = new CheckBox();
		checkBoxKBDM2 = new CheckBox();
		checkBoxMHD2 = new CheckBox();
		checkBoxAll2 = new CheckBox();
		checkBoxAutoClick = new CheckBox();
		groupBox3 = new GroupBox();
		comboBoxTuHanh = new ComboBox();
		checkBoxTuHanh30P = new CheckBox();
		linkLabel1 = new LinkLabel();
		checkBoxTrong = new CheckBox();
		checkBoxTuHanh = new CheckBox();
		checkBoxThanTu = new CheckBox();
		checkBoxEXP = new CheckBox();
		checkBoxVIP = new CheckBox();
		checkBoxQhaithuoc = new CheckBox();
		checkBoxTranhBaPK = new CheckBox();
		checkBoxTheBai = new CheckBox();
		checkBoxNongTruong = new CheckBox();
		checkBoxNLTN = new CheckBox();
		checkBoxQcauca = new CheckBox();
		checkBoxTM = new CheckBox();
		comboBoxKiepNan = new ComboBox();
		checkBoxSkinHanhLangKGDK = new CheckBox();
		label7 = new Label();
		label10 = new Label();
		checkBoxQPet = new CheckBox();
		label9 = new Label();
		checkBoxTuThap = new CheckBox();
		numericUpDownTuThap = new NumericUpDown();
		checkBoxDaPet = new CheckBox();
		checkBoxKiepNan = new CheckBox();
		checkBoxQBang = new CheckBox();
		numericUpDownDaPet = new NumericUpDown();
		comboBoxTrong = new ComboBox();
		label11 = new Label();
		numericUpDownBang = new NumericUpDown();
		numericUpDownPet = new NumericUpDown();
		checkBox1 = new CheckBox();
		checkBoxNuoiTinhLinh = new CheckBox();
		numericUpDownTinhCung = new NumericUpDown();
		comboBoxMB_Loai = new ComboBox();
		checkBoxTinhCung = new CheckBox();
		comboBoxTinhCung_Loai = new ComboBox();
		label5 = new Label();
		comboBoxTinhCung_Cap = new ComboBox();
		comboBoxMB_Cap = new ComboBox();
		checkBoxMB = new CheckBox();
		buttonLoad2 = new Button();
		buttonSave2 = new Button();
		buttonLoad = new Button();
		buttonSave = new Button();
		label17 = new Label();
		comboBoxFile = new ComboBox();
		ButtonRunAuto = new CheckBox();
		buttonReset = new Button();
		label4 = new Label();
		buttonPause = new Button();
		ButtonDebug = new CheckBox();
		groupBox4 = new GroupBox();
		labelWDT = new Label();
		label12 = new Label();
		numericUpDownFPS = new NumericUpDown();
		label1 = new Label();
		label6 = new Label();
		checkBox3 = new CheckBox();
		label8 = new Label();
		groupBox6 = new GroupBox();
		notifyIcon1 = new NotifyIcon(components);
		tabPage2 = new TabPage();
		groupBox7 = new GroupBox();
		dateTimePickerMuaPhu = new DateTimePicker();
		checkBoxMuaPhu = new CheckBox();
		label15 = new Label();
		comboBoxMuaPhu = new ComboBox();
		labelLuuPhu = new Label();
		buttonLuuPhu = new Button();
		groupBox1 = new GroupBox();
		button1 = new Button();
		checkBoxNuoiDuongTinhLinh = new CheckBox();
		comboBoxChoAnTinhLinh = new ComboBox();
		numericUpDownTinhLinh = new NumericUpDown();
		label3 = new Label();
		label13 = new Label();
		label2 = new Label();
		dataGridView1 = new DataGridView();
		Column1 = new DataGridViewTextBoxColumn();
		Column2 = new DataGridViewTextBoxColumn();
		Column3 = new DataGridViewTextBoxColumn();
		Del = new DataGridViewButtonColumn();
		tabPage1 = new TabPage();
		tabControl1 = new TabControl();
		tabPage0 = new TabPage();
		groupBox5 = new GroupBox();
		tabPage3 = new TabPage();
		groupBox8 = new GroupBox();
		checkBoxST = new CheckBox();
		tabControl2 = new TabControl();
		tabPage4 = new TabPage();
		numericUpDownST8 = new NumericUpDown();
		numericUpDownST4 = new NumericUpDown();
		numericUpDownST3 = new NumericUpDown();
		label33 = new Label();
		label40 = new Label();
		numericUpDownST7 = new NumericUpDown();
		numericUpDownST60 = new NumericUpDown();
		numericUpDownST2 = new NumericUpDown();
		numericUpDownST1 = new NumericUpDown();
		numericUpDownST6 = new NumericUpDown();
		label19 = new Label();
		label18 = new Label();
		numericUpDownST5 = new NumericUpDown();
		numericUpDownST59 = new NumericUpDown();
		numericUpDownST56 = new NumericUpDown();
		numericUpDownST58 = new NumericUpDown();
		label32 = new Label();
		numericUpDownST57 = new NumericUpDown();
		numericUpDownST61 = new NumericUpDown();
		tabPage5 = new TabPage();
		numericUpDownST16 = new NumericUpDown();
		label22 = new Label();
		numericUpDownST13 = new NumericUpDown();
		label41 = new Label();
		numericUpDownST12 = new NumericUpDown();
		label23 = new Label();
		label42 = new Label();
		numericUpDownST14 = new NumericUpDown();
		numericUpDownST11 = new NumericUpDown();
		numericUpDownST9 = new NumericUpDown();
		numericUpDownST10 = new NumericUpDown();
		numericUpDownST15 = new NumericUpDown();
		numericUpDownST62 = new NumericUpDown();
		tabPage6 = new TabPage();
		numericUpDownST24 = new NumericUpDown();
		numericUpDownST63 = new NumericUpDown();
		label25 = new Label();
		label35 = new Label();
		numericUpDownST23 = new NumericUpDown();
		numericUpDownST18 = new NumericUpDown();
		label43 = new Label();
		numericUpDownST21 = new NumericUpDown();
		numericUpDownST17 = new NumericUpDown();
		numericUpDownST65 = new NumericUpDown();
		numericUpDownST19 = new NumericUpDown();
		numericUpDownST20 = new NumericUpDown();
		numericUpDownST22 = new NumericUpDown();
		label24 = new Label();
		numericUpDownST67 = new NumericUpDown();
		numericUpDownST66 = new NumericUpDown();
		numericUpDownST64 = new NumericUpDown();
		tabPage7 = new TabPage();
		numericUpDownST32 = new NumericUpDown();
		numericUpDownST71 = new NumericUpDown();
		label27 = new Label();
		numericUpDownST31 = new NumericUpDown();
		numericUpDownST26 = new NumericUpDown();
		numericUpDownST29 = new NumericUpDown();
		label44 = new Label();
		numericUpDownST70 = new NumericUpDown();
		numericUpDownST25 = new NumericUpDown();
		numericUpDownST27 = new NumericUpDown();
		numericUpDownST28 = new NumericUpDown();
		numericUpDownST30 = new NumericUpDown();
		label26 = new Label();
		numericUpDownST68 = new NumericUpDown();
		label34 = new Label();
		numericUpDownST69 = new NumericUpDown();
		numericUpDownST72 = new NumericUpDown();
		tabPage8 = new TabPage();
		label29 = new Label();
		label37 = new Label();
		numericUpDownST40 = new NumericUpDown();
		numericUpDownST73 = new NumericUpDown();
		numericUpDownST39 = new NumericUpDown();
		numericUpDownST34 = new NumericUpDown();
		label36 = new Label();
		numericUpDownST37 = new NumericUpDown();
		numericUpDownST33 = new NumericUpDown();
		numericUpDownST35 = new NumericUpDown();
		numericUpDownST36 = new NumericUpDown();
		numericUpDownST74 = new NumericUpDown();
		numericUpDownST38 = new NumericUpDown();
		label28 = new Label();
		numericUpDownST75 = new NumericUpDown();
		tabPage9 = new TabPage();
		label20 = new Label();
		numericUpDownST48 = new NumericUpDown();
		label31 = new Label();
		numericUpDownST47 = new NumericUpDown();
		numericUpDownST42 = new NumericUpDown();
		numericUpDownST55 = new NumericUpDown();
		numericUpDownST45 = new NumericUpDown();
		numericUpDownST41 = new NumericUpDown();
		numericUpDownST43 = new NumericUpDown();
		numericUpDownST44 = new NumericUpDown();
		numericUpDownST50 = new NumericUpDown();
		numericUpDownST46 = new NumericUpDown();
		label30 = new Label();
		numericUpDownST49 = new NumericUpDown();
		label21 = new Label();
		numericUpDownST53 = new NumericUpDown();
		numericUpDownST54 = new NumericUpDown();
		numericUpDownST52 = new NumericUpDown();
		numericUpDownST51 = new NumericUpDown();
		button2 = new Button();
		label14 = new Label();
		label16 = new Label();
		textBox1 = new TextBox();
		checkBoxSkipSetup = new CheckBox();
		checkBox2 = new CheckBox();
		((ISupportInitialize)pictureBox1).BeginInit();
		((Control)groupBox2).SuspendLayout();
		((Control)groupBox3).SuspendLayout();
		((ISupportInitialize)numericUpDownTuThap).BeginInit();
		((ISupportInitialize)numericUpDownDaPet).BeginInit();
		((ISupportInitialize)numericUpDownBang).BeginInit();
		((ISupportInitialize)numericUpDownPet).BeginInit();
		((ISupportInitialize)numericUpDownTinhCung).BeginInit();
		((Control)groupBox4).SuspendLayout();
		((ISupportInitialize)numericUpDownFPS).BeginInit();
		((Control)groupBox6).SuspendLayout();
		((Control)tabPage2).SuspendLayout();
		((Control)groupBox7).SuspendLayout();
		((Control)groupBox1).SuspendLayout();
		((ISupportInitialize)numericUpDownTinhLinh).BeginInit();
		((ISupportInitialize)dataGridView1).BeginInit();
		((Control)tabPage1).SuspendLayout();
		((Control)tabControl1).SuspendLayout();
		((Control)tabPage0).SuspendLayout();
		((Control)groupBox5).SuspendLayout();
		((Control)tabPage3).SuspendLayout();
		((Control)groupBox8).SuspendLayout();
		((Control)tabControl2).SuspendLayout();
		((Control)tabPage4).SuspendLayout();
		((ISupportInitialize)numericUpDownST8).BeginInit();
		((ISupportInitialize)numericUpDownST4).BeginInit();
		((ISupportInitialize)numericUpDownST3).BeginInit();
		((ISupportInitialize)numericUpDownST7).BeginInit();
		((ISupportInitialize)numericUpDownST60).BeginInit();
		((ISupportInitialize)numericUpDownST2).BeginInit();
		((ISupportInitialize)numericUpDownST1).BeginInit();
		((ISupportInitialize)numericUpDownST6).BeginInit();
		((ISupportInitialize)numericUpDownST5).BeginInit();
		((ISupportInitialize)numericUpDownST59).BeginInit();
		((ISupportInitialize)numericUpDownST56).BeginInit();
		((ISupportInitialize)numericUpDownST58).BeginInit();
		((ISupportInitialize)numericUpDownST57).BeginInit();
		((ISupportInitialize)numericUpDownST61).BeginInit();
		((Control)tabPage5).SuspendLayout();
		((ISupportInitialize)numericUpDownST16).BeginInit();
		((ISupportInitialize)numericUpDownST13).BeginInit();
		((ISupportInitialize)numericUpDownST12).BeginInit();
		((ISupportInitialize)numericUpDownST14).BeginInit();
		((ISupportInitialize)numericUpDownST11).BeginInit();
		((ISupportInitialize)numericUpDownST9).BeginInit();
		((ISupportInitialize)numericUpDownST10).BeginInit();
		((ISupportInitialize)numericUpDownST15).BeginInit();
		((ISupportInitialize)numericUpDownST62).BeginInit();
		((Control)tabPage6).SuspendLayout();
		((ISupportInitialize)numericUpDownST24).BeginInit();
		((ISupportInitialize)numericUpDownST63).BeginInit();
		((ISupportInitialize)numericUpDownST23).BeginInit();
		((ISupportInitialize)numericUpDownST18).BeginInit();
		((ISupportInitialize)numericUpDownST21).BeginInit();
		((ISupportInitialize)numericUpDownST17).BeginInit();
		((ISupportInitialize)numericUpDownST65).BeginInit();
		((ISupportInitialize)numericUpDownST19).BeginInit();
		((ISupportInitialize)numericUpDownST20).BeginInit();
		((ISupportInitialize)numericUpDownST22).BeginInit();
		((ISupportInitialize)numericUpDownST67).BeginInit();
		((ISupportInitialize)numericUpDownST66).BeginInit();
		((ISupportInitialize)numericUpDownST64).BeginInit();
		((Control)tabPage7).SuspendLayout();
		((ISupportInitialize)numericUpDownST32).BeginInit();
		((ISupportInitialize)numericUpDownST71).BeginInit();
		((ISupportInitialize)numericUpDownST31).BeginInit();
		((ISupportInitialize)numericUpDownST26).BeginInit();
		((ISupportInitialize)numericUpDownST29).BeginInit();
		((ISupportInitialize)numericUpDownST70).BeginInit();
		((ISupportInitialize)numericUpDownST25).BeginInit();
		((ISupportInitialize)numericUpDownST27).BeginInit();
		((ISupportInitialize)numericUpDownST28).BeginInit();
		((ISupportInitialize)numericUpDownST30).BeginInit();
		((ISupportInitialize)numericUpDownST68).BeginInit();
		((ISupportInitialize)numericUpDownST69).BeginInit();
		((ISupportInitialize)numericUpDownST72).BeginInit();
		((Control)tabPage8).SuspendLayout();
		((ISupportInitialize)numericUpDownST40).BeginInit();
		((ISupportInitialize)numericUpDownST73).BeginInit();
		((ISupportInitialize)numericUpDownST39).BeginInit();
		((ISupportInitialize)numericUpDownST34).BeginInit();
		((ISupportInitialize)numericUpDownST37).BeginInit();
		((ISupportInitialize)numericUpDownST33).BeginInit();
		((ISupportInitialize)numericUpDownST35).BeginInit();
		((ISupportInitialize)numericUpDownST36).BeginInit();
		((ISupportInitialize)numericUpDownST74).BeginInit();
		((ISupportInitialize)numericUpDownST38).BeginInit();
		((ISupportInitialize)numericUpDownST75).BeginInit();
		((Control)tabPage9).SuspendLayout();
		((ISupportInitialize)numericUpDownST48).BeginInit();
		((ISupportInitialize)numericUpDownST47).BeginInit();
		((ISupportInitialize)numericUpDownST42).BeginInit();
		((ISupportInitialize)numericUpDownST55).BeginInit();
		((ISupportInitialize)numericUpDownST45).BeginInit();
		((ISupportInitialize)numericUpDownST41).BeginInit();
		((ISupportInitialize)numericUpDownST43).BeginInit();
		((ISupportInitialize)numericUpDownST44).BeginInit();
		((ISupportInitialize)numericUpDownST50).BeginInit();
		((ISupportInitialize)numericUpDownST46).BeginInit();
		((ISupportInitialize)numericUpDownST49).BeginInit();
		((ISupportInitialize)numericUpDownST53).BeginInit();
		((ISupportInitialize)numericUpDownST54).BeginInit();
		((ISupportInitialize)numericUpDownST52).BeginInit();
		((ISupportInitialize)numericUpDownST51).BeginInit();
		((Control)this).SuspendLayout();
		pictureBox1.BorderStyle = (BorderStyle)1;
		pictureBox1.Image = (Image)(object)Resources.anhNVr;
		((Control)pictureBox1).Location = new Point(6, 22);
		((Control)pictureBox1).Name = "pictureBox1";
		((Control)pictureBox1).Size = new Size(54, 52);
		pictureBox1.TabIndex = 0;
		pictureBox1.TabStop = false;
		((Control)checkBoxAll1).AutoSize = true;
		((Control)checkBoxAll1).Location = new Point(18, 97);
		((Control)checkBoxAll1).Name = "checkBoxAll1";
		((Control)checkBoxAll1).Size = new Size(128, 19);
		((Control)checkBoxAll1).TabIndex = 8;
		((Control)checkBoxAll1).Text = "Nhận Thưởng Auto";
		((ButtonBase)checkBoxAll1).UseVisualStyleBackColor = true;
		checkBoxAll1.CheckStateChanged += new EventHandler(checkBoxAll1_CheckStateChanged);
		((Control)groupBox2).Controls.Add((Control)(object)checkBoxAll1);
		((Control)groupBox2).Controls.Add((Control)(object)checkBoxTH2);
		((Control)groupBox2).Controls.Add((Control)(object)checkBoxTGS2);
		((Control)groupBox2).Controls.Add((Control)(object)checkBoxQHM2);
		((Control)groupBox2).Controls.Add((Control)(object)checkBoxTVLH2);
		((Control)groupBox2).Controls.Add((Control)(object)checkBoxLD2);
		((Control)groupBox2).Controls.Add((Control)(object)checkBoxLTC2);
		((Control)groupBox2).Controls.Add((Control)(object)checkBoxKBDM2);
		((Control)groupBox2).Controls.Add((Control)(object)checkBoxMHD2);
		((Control)groupBox2).Location = new Point(6, 90);
		((Control)groupBox2).Name = "groupBox2";
		((Control)groupBox2).Size = new Size(425, 120);
		((Control)groupBox2).TabIndex = 1;
		groupBox2.TabStop = false;
		((Control)groupBox2).Text = "[ Phụ Bản - Auto Bă\u0300ng Sa\u0301ch ]";
		((Control)checkBoxTH2).AutoSize = true;
		((Control)checkBoxTH2).Location = new Point(148, 72);
		((Control)checkBoxTH2).Name = "checkBoxTH2";
		((Control)checkBoxTH2).Size = new Size(88, 19);
		((Control)checkBoxTH2).TabIndex = 15;
		((Control)checkBoxTH2).Text = "Thám Hiểm";
		((ButtonBase)checkBoxTH2).UseVisualStyleBackColor = true;
		((Control)checkBoxTGS2).AutoSize = true;
		((Control)checkBoxTGS2).Location = new Point(18, 72);
		((Control)checkBoxTGS2).Name = "checkBoxTGS2";
		((Control)checkBoxTGS2).Size = new Size(85, 19);
		((Control)checkBoxTGS2).TabIndex = 14;
		((Control)checkBoxTGS2).Text = "Thế Giới Số";
		((ButtonBase)checkBoxTGS2).UseVisualStyleBackColor = true;
		((Control)checkBoxQHM2).AutoSize = true;
		((Control)checkBoxQHM2).Location = new Point(148, 47);
		((Control)checkBoxQHM2).Name = "checkBoxQHM2";
		((Control)checkBoxQHM2).Size = new Size(98, 19);
		((Control)checkBoxQHM2).TabIndex = 13;
		((Control)checkBoxQHM2).Text = "Quỷ Hút Máu";
		((ButtonBase)checkBoxQHM2).UseVisualStyleBackColor = true;
		((Control)checkBoxTVLH2).AutoSize = true;
		((Control)checkBoxTVLH2).Location = new Point(286, 47);
		((Control)checkBoxTVLH2).Name = "checkBoxTVLH2";
		((Control)checkBoxTVLH2).Size = new Size(87, 19);
		((Control)checkBoxTVLH2).TabIndex = 12;
		((Control)checkBoxTVLH2).Text = "Lang Huyệt";
		((ButtonBase)checkBoxTVLH2).UseVisualStyleBackColor = true;
		((Control)checkBoxLD2).AutoSize = true;
		((Control)checkBoxLD2).Location = new Point(286, 22);
		((Control)checkBoxLD2).Name = "checkBoxLD2";
		((Control)checkBoxLD2).Size = new Size(76, 19);
		((Control)checkBoxLD2).TabIndex = 11;
		((Control)checkBoxLD2).Text = "Liệt Diễm";
		((ButtonBase)checkBoxLD2).UseVisualStyleBackColor = true;
		((Control)checkBoxLTC2).AutoSize = true;
		((Control)checkBoxLTC2).Location = new Point(148, 22);
		((Control)checkBoxLTC2).Name = "checkBoxLTC2";
		((Control)checkBoxLTC2).Size = new Size(101, 19);
		((Control)checkBoxLTC2).TabIndex = 10;
		((Control)checkBoxLTC2).Text = "Lục Tiên Cảnh";
		((ButtonBase)checkBoxLTC2).UseVisualStyleBackColor = true;
		((Control)checkBoxKBDM2).AutoSize = true;
		((Control)checkBoxKBDM2).Location = new Point(18, 47);
		((Control)checkBoxKBDM2).Name = "checkBoxKBDM2";
		((Control)checkBoxKBDM2).Size = new Size(70, 19);
		((Control)checkBoxKBDM2).TabIndex = 9;
		((Control)checkBoxKBDM2).Text = "Kho Báu";
		((ButtonBase)checkBoxKBDM2).UseVisualStyleBackColor = true;
		((Control)checkBoxMHD2).AutoSize = true;
		((Control)checkBoxMHD2).Location = new Point(18, 22);
		((Control)checkBoxMHD2).Name = "checkBoxMHD2";
		((Control)checkBoxMHD2).Size = new Size(113, 19);
		((Control)checkBoxMHD2).TabIndex = 8;
		((Control)checkBoxMHD2).Text = "Mê Huyễn Động";
		((ButtonBase)checkBoxMHD2).UseVisualStyleBackColor = true;
		((Control)checkBoxAll2).AutoSize = true;
		((Control)checkBoxAll2).Location = new Point(189, 151);
		((Control)checkBoxAll2).Name = "checkBoxAll2";
		((Control)checkBoxAll2).Size = new Size(184, 19);
		((Control)checkBoxAll2).TabIndex = 8;
		((Control)checkBoxAll2).Text = "Nhận Thưởng Kiếp Nạn Vô Ưu";
		((ButtonBase)checkBoxAll2).UseVisualStyleBackColor = true;
		checkBoxAll2.CheckStateChanged += new EventHandler(checkBoxAll2_CheckStateChanged);
		((Control)checkBoxAutoClick).AutoSize = true;
		((Control)checkBoxAutoClick).Location = new Point(17, -1);
		((Control)checkBoxAutoClick).Name = "checkBoxAutoClick";
		((Control)checkBoxAutoClick).Size = new Size(291, 19);
		((Control)checkBoxAutoClick).TabIndex = 17;
		((Control)checkBoxAutoClick).Text = "Chạy File AutoClick (Normal) Trước Khi Chạy Daily";
		((ButtonBase)checkBoxAutoClick).UseVisualStyleBackColor = true;
		((Control)groupBox3).Controls.Add((Control)(object)comboBoxTuHanh);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxTuHanh30P);
		((Control)groupBox3).Controls.Add((Control)(object)linkLabel1);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxTrong);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxAll2);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxTuHanh);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxThanTu);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxEXP);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxVIP);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxQhaithuoc);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxTranhBaPK);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxTheBai);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxNongTruong);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxNLTN);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxQcauca);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxTM);
		((Control)groupBox3).Controls.Add((Control)(object)comboBoxKiepNan);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxSkinHanhLangKGDK);
		((Control)groupBox3).Controls.Add((Control)(object)label7);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxQPet);
		((Control)groupBox3).Controls.Add((Control)(object)label9);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxTuThap);
		((Control)groupBox3).Controls.Add((Control)(object)numericUpDownTuThap);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxDaPet);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxKiepNan);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxQBang);
		((Control)groupBox3).Controls.Add((Control)(object)numericUpDownDaPet);
		((Control)groupBox3).Controls.Add((Control)(object)comboBoxTrong);
		((Control)groupBox3).Location = new Point(6, 3);
		((Control)groupBox3).Name = "groupBox3";
		((Control)groupBox3).Size = new Size(425, 280);
		((Control)groupBox3).TabIndex = 2;
		groupBox3.TabStop = false;
		((Control)groupBox3).Text = "[ Daily ]";
		((ListControl)comboBoxTuHanh).FormattingEnabled = true;
		comboBoxTuHanh.Items.AddRange(new object[2] { "Auto", "Đánh Boss" });
		((Control)comboBoxTuHanh).Location = new Point(85, 29);
		((Control)comboBoxTuHanh).Name = "comboBoxTuHanh";
		((Control)comboBoxTuHanh).Size = new Size(83, 23);
		((Control)comboBoxTuHanh).TabIndex = 45;
		((Control)comboBoxTuHanh).Text = "Auto";
		((Control)checkBoxTuHanh30P).AutoSize = true;
		((Control)checkBoxTuHanh30P).Location = new Point(174, 31);
		((Control)checkBoxTuHanh30P).Name = "checkBoxTuHanh30P";
		((Control)checkBoxTuHanh30P).Size = new Size(152, 19);
		((Control)checkBoxTuHanh30P).TabIndex = 4;
		((Control)checkBoxTuHanh30P).Text = "Đợi Xong Auto Tu Hành";
		((ButtonBase)checkBoxTuHanh30P).UseVisualStyleBackColor = true;
		checkBoxTuHanh30P.CheckedChanged += new EventHandler(checkBoxTuHanh30P_CheckedChanged);
		((Control)linkLabel1).AutoSize = true;
		((Control)linkLabel1).Font = new Font("Segoe UI", 8f, (FontStyle)0, (GraphicsUnit)3);
		((Control)linkLabel1).Location = new Point(147, 260);
		((Control)linkLabel1).Name = "linkLabel1";
		((Control)linkLabel1).Size = new Size(153, 13);
		((Control)linkLabel1).TabIndex = 45;
		linkLabel1.TabStop = true;
		((Control)linkLabel1).Text = "Hướng Dẫn Cài Nguyên Liệu";
		linkLabel1.LinkClicked += new LinkLabelLinkClickedEventHandler(linkLabel1_LinkClicked);
		((Control)checkBoxTrong).AutoSize = true;
		((Control)checkBoxTrong).Location = new Point(184, 241);
		((Control)checkBoxTrong).Name = "checkBoxTrong";
		((Control)checkBoxTrong).Size = new Size(120, 19);
		((Control)checkBoxTrong).TabIndex = 8;
		((Control)checkBoxTrong).Text = "Trồng Trang Viên :";
		((ButtonBase)checkBoxTrong).UseVisualStyleBackColor = true;
		((Control)checkBoxTuHanh).AutoSize = true;
		((Control)checkBoxTuHanh).BackColor = Color.Transparent;
		((Control)checkBoxTuHanh).Location = new Point(12, 31);
		((Control)checkBoxTuHanh).Name = "checkBoxTuHanh";
		((Control)checkBoxTuHanh).Size = new Size(74, 19);
		((Control)checkBoxTuHanh).TabIndex = 1;
		((Control)checkBoxTuHanh).Text = "Tu Hành:";
		((ButtonBase)checkBoxTuHanh).UseVisualStyleBackColor = false;
		((Control)checkBoxThanTu).AutoSize = true;
		((Control)checkBoxThanTu).Location = new Point(12, 61);
		((Control)checkBoxThanTu).Name = "checkBoxThanTu";
		((Control)checkBoxThanTu).Size = new Size(97, 19);
		((Control)checkBoxThanTu).TabIndex = 0;
		((Control)checkBoxThanTu).Text = "Auto Thần Tu";
		((ButtonBase)checkBoxThanTu).UseVisualStyleBackColor = true;
		((Control)checkBoxEXP).AutoSize = true;
		((Control)checkBoxEXP).Location = new Point(229, 61);
		((Control)checkBoxEXP).Name = "checkBoxEXP";
		((Control)checkBoxEXP).Size = new Size(98, 19);
		((Control)checkBoxEXP).TabIndex = 9;
		((Control)checkBoxEXP).Text = "Hồi Phục EXP";
		((ButtonBase)checkBoxEXP).UseVisualStyleBackColor = true;
		((Control)checkBoxVIP).AutoSize = true;
		((Control)checkBoxVIP).Location = new Point(126, 61);
		((Control)checkBoxVIP).Name = "checkBoxVIP";
		((Control)checkBoxVIP).Size = new Size(92, 19);
		((Control)checkBoxVIP).TabIndex = 6;
		((Control)checkBoxVIP).Text = "Phúc Lợi VIP";
		((ButtonBase)checkBoxVIP).UseVisualStyleBackColor = true;
		((Control)checkBoxQhaithuoc).AutoSize = true;
		((Control)checkBoxQhaithuoc).Location = new Point(118, 121);
		((Control)checkBoxQhaithuoc).Name = "checkBoxQhaithuoc";
		((Control)checkBoxQhaithuoc).Size = new Size(99, 19);
		((Control)checkBoxQhaithuoc).TabIndex = 8;
		((Control)checkBoxQhaithuoc).Text = "NV Hái Thuốc";
		((ButtonBase)checkBoxQhaithuoc).UseVisualStyleBackColor = true;
		((Control)checkBoxTranhBaPK).AutoSize = true;
		((Control)checkBoxTranhBaPK).Location = new Point(329, 31);
		((Control)checkBoxTranhBaPK).Name = "checkBoxTranhBaPK";
		((Control)checkBoxTranhBaPK).Size = new Size(88, 19);
		((Control)checkBoxTranhBaPK).TabIndex = 3;
		((Control)checkBoxTranhBaPK).Text = "Tranh Ba\u0301 PK";
		((ButtonBase)checkBoxTranhBaPK).UseVisualStyleBackColor = true;
		((Control)checkBoxTheBai).AutoSize = true;
		((Control)checkBoxTheBai).Location = new Point(329, 61);
		((Control)checkBoxTheBai).Name = "checkBoxTheBai";
		((Control)checkBoxTheBai).Size = new Size(83, 19);
		((Control)checkBoxTheBai).TabIndex = 4;
		((Control)checkBoxTheBai).Text = "Lật Thẻ Bài";
		((ButtonBase)checkBoxTheBai).UseVisualStyleBackColor = true;
		((Control)checkBoxNongTruong).AutoSize = true;
		((Control)checkBoxNongTruong).Location = new Point(12, 91);
		((Control)checkBoxNongTruong).Name = "checkBoxNongTruong";
		((Control)checkBoxNongTruong).Size = new Size(269, 19);
		((Control)checkBoxNongTruong).TabIndex = 16;
		((Control)checkBoxNongTruong).Text = "Tra\u0309 NV Nông Trươ\u0300ng (Chuâ\u0309n Bi\u0323 Să\u0303n Nông Sa\u0309n)";
		((ButtonBase)checkBoxNongTruong).UseVisualStyleBackColor = true;
		((Control)checkBoxNLTN).AutoSize = true;
		((Control)checkBoxNLTN).Location = new Point(267, 121);
		((Control)checkBoxNLTN).Name = "checkBoxNLTN";
		((Control)checkBoxNLTN).Size = new Size(143, 19);
		((Control)checkBoxNLTN).TabIndex = 5;
		((Control)checkBoxNLTN).Text = "Năng Lượng Tự Nhiên";
		((ButtonBase)checkBoxNLTN).UseVisualStyleBackColor = true;
		((Control)checkBoxQcauca).AutoSize = true;
		((Control)checkBoxQcauca).Location = new Point(12, 121);
		((Control)checkBoxQcauca).Name = "checkBoxQcauca";
		((Control)checkBoxQcauca).Size = new Size(83, 19);
		((Control)checkBoxQcauca).TabIndex = 8;
		((Control)checkBoxQcauca).Text = "NV Câu Cá";
		((ButtonBase)checkBoxQcauca).UseVisualStyleBackColor = true;
		((Control)checkBoxTM).AutoSize = true;
		((Control)checkBoxTM).Location = new Point(329, 91);
		((Control)checkBoxTM).Name = "checkBoxTM";
		((Control)checkBoxTM).Size = new Size(81, 19);
		((Control)checkBoxTM).TabIndex = 8;
		((Control)checkBoxTM).Text = "NV Trừ Ma";
		((ButtonBase)checkBoxTM).UseVisualStyleBackColor = true;
		((ListControl)comboBoxKiepNan).FormattingEnabled = true;
		comboBoxKiepNan.Items.AddRange(new object[9] { "KN 1", "KN 2", "KN 3 ", "KN 4", "KN 5", "KN 6", "KN 7", "KN 8", "KN 9" });
		((Control)comboBoxKiepNan).Location = new Point(126, 149);
		((Control)comboBoxKiepNan).Name = "comboBoxKiepNan";
		((Control)comboBoxKiepNan).Size = new Size(56, 23);
		((Control)comboBoxKiepNan).TabIndex = 1;
		((Control)comboBoxKiepNan).Text = "KN 1";
		((Control)checkBoxSkinHanhLangKGDK).AutoSize = true;
		((Control)checkBoxSkinHanhLangKGDK).Location = new Point(12, 181);
		((Control)checkBoxSkinHanhLangKGDK).Name = "checkBoxSkinHanhLangKGDK";
		((Control)checkBoxSkinHanhLangKGDK).Size = new Size(412, 19);
		((Control)checkBoxSkinHanhLangKGDK).TabIndex = 7;
		((Control)checkBoxSkinHanhLangKGDK).Text = "Rút Trang Phục - Nhận Thươ\u0309ng Ha\u0300nh Lang - Nhận Không Gian Điêu Khă\u0301c";
		((ButtonBase)checkBoxSkinHanhLangKGDK).UseVisualStyleBackColor = true;
		((Control)label7).AutoSize = true;
		((Control)label7).Location = new Point(392, 212);
		((Control)label7).Name = "label7";
		((Control)label7).Size = new Size(26, 15);
		((Control)label7).TabIndex = 18;
		((Control)label7).Text = "Lần";
		((Control)label10).AutoSize = true;
		((Control)label10).Font = new Font("Segoe UI", 8f, (FontStyle)1, (GraphicsUnit)3);
		((Control)label10).ForeColor = Color.IndianRed;
		((Control)label10).Location = new Point(600, 288);
		((Control)label10).Name = "label10";
		((Control)label10).Size = new Size(50, 39);
		((Control)label10).TabIndex = 18;
		((Control)label10).Text = "Beta\r\nLV: 1-2-?\r\n?-?-?-7";
		((Control)label10).Visible = false;
		((Control)checkBoxQPet).AutoSize = true;
		((Control)checkBoxQPet).Location = new Point(121, 211);
		((Control)checkBoxQPet).Name = "checkBoxQPet";
		((Control)checkBoxQPet).Size = new Size(97, 19);
		((Control)checkBoxQPet).TabIndex = 1;
		((Control)checkBoxQPet).Text = "NV Luyện Pet";
		((ButtonBase)checkBoxQPet).UseVisualStyleBackColor = true;
		((Control)label9).AutoSize = true;
		((Control)label9).Location = new Point(114, 242);
		((Control)label9).Name = "label9";
		((Control)label9).Size = new Size(31, 15);
		((Control)label9).TabIndex = 13;
		((Control)label9).Text = "Lượt";
		((Control)checkBoxTuThap).AutoSize = true;
		((Control)checkBoxTuThap).Location = new Point(230, 211);
		((Control)checkBoxTuThap).Name = "checkBoxTuThap";
		((Control)checkBoxTuThap).Size = new Size(118, 19);
		((Control)checkBoxTuThap).TabIndex = 17;
		((Control)checkBoxTuThap).Text = "Tu Tháp Thường :";
		((ButtonBase)checkBoxTuThap).UseVisualStyleBackColor = true;
		checkBoxTuThap.CheckStateChanged += new EventHandler(checkBoxDaPet_CheckStateChanged);
		((Control)numericUpDownTuThap).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownTuThap).Location = new Point(355, 210);
		numericUpDownTuThap.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownTuThap).Name = "numericUpDownTuThap";
		((Control)numericUpDownTuThap).Size = new Size(34, 23);
		((Control)numericUpDownTuThap).TabIndex = 19;
		numericUpDownTuThap.Value = new decimal(new int[4] { 3, 0, 0, 0 });
		((Control)checkBoxDaPet).AutoSize = true;
		((Control)checkBoxDaPet).Location = new Point(12, 241);
		((Control)checkBoxDaPet).Name = "checkBoxDaPet";
		((Control)checkBoxDaPet).Size = new Size(66, 19);
		((Control)checkBoxDaPet).TabIndex = 8;
		((Control)checkBoxDaPet).Text = "Đá Pet :";
		((ButtonBase)checkBoxDaPet).UseVisualStyleBackColor = true;
		checkBoxDaPet.CheckStateChanged += new EventHandler(checkBoxDaPet_CheckStateChanged);
		((Control)checkBoxKiepNan).AutoSize = true;
		((Control)checkBoxKiepNan).Location = new Point(12, 151);
		((Control)checkBoxKiepNan).Name = "checkBoxKiepNan";
		((Control)checkBoxKiepNan).Size = new Size(114, 19);
		((Control)checkBoxKiepNan).TabIndex = 0;
		((Control)checkBoxKiepNan).Text = "Kiếp Nạn Vô Ưu :";
		((ButtonBase)checkBoxKiepNan).UseVisualStyleBackColor = true;
		((Control)checkBoxQBang).AutoSize = true;
		((Control)checkBoxQBang).Location = new Point(12, 211);
		((Control)checkBoxQBang).Name = "checkBoxQBang";
		((Control)checkBoxQBang).Size = new Size(94, 19);
		((Control)checkBoxQBang).TabIndex = 6;
		((Control)checkBoxQBang).Text = "NV Bang Hội";
		((ButtonBase)checkBoxQBang).UseVisualStyleBackColor = true;
		((Control)numericUpDownDaPet).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownDaPet).Location = new Point(79, 240);
		numericUpDownDaPet.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownDaPet).Name = "numericUpDownDaPet";
		((Control)numericUpDownDaPet).Size = new Size(34, 23);
		((Control)numericUpDownDaPet).TabIndex = 15;
		numericUpDownDaPet.Value = new decimal(new int[4] { 20, 0, 0, 0 });
		((ListControl)comboBoxTrong).FormattingEnabled = true;
		comboBoxTrong.Items.AddRange(new object[10] { "Kim Loại", "Gỗ", "Lông Thú", "Ngọc", "Vải Thô", "Kim Loại Hiếm", "Gỗ Tốt", "Da Thú", "Pha Lê", "Gấm Vóc" });
		((Control)comboBoxTrong).Location = new Point(306, 240);
		((Control)comboBoxTrong).Name = "comboBoxTrong";
		((Control)comboBoxTrong).Size = new Size(112, 23);
		((Control)comboBoxTrong).TabIndex = 14;
		((Control)comboBoxTrong).Text = "Kim Loại Hiếm";
		((Control)label11).AutoSize = true;
		((Control)label11).Location = new Point(524, 422);
		((Control)label11).Name = "label11";
		((Control)label11).Size = new Size(126, 15);
		((Control)label11).TabIndex = 18;
		((Control)label11).Text = "Có Thể Đặt Tên Pet Để ";
		((Control)label11).Visible = false;
		((Control)numericUpDownBang).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownBang).Location = new Point(524, 304);
		numericUpDownBang.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownBang).Name = "numericUpDownBang";
		((Control)numericUpDownBang).Size = new Size(34, 23);
		((Control)numericUpDownBang).TabIndex = 19;
		numericUpDownBang.Value = new decimal(new int[4] { 15, 0, 0, 0 });
		((Control)numericUpDownBang).Visible = false;
		((Control)numericUpDownPet).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownPet).Location = new Point(524, 333);
		numericUpDownPet.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownPet).Name = "numericUpDownPet";
		((Control)numericUpDownPet).Size = new Size(34, 23);
		((Control)numericUpDownPet).TabIndex = 19;
		numericUpDownPet.Value = new decimal(new int[4] { 20, 0, 0, 0 });
		((Control)numericUpDownPet).Visible = false;
		((Control)checkBox1).AutoSize = true;
		((Control)checkBox1).Location = new Point(5, 472);
		((Control)checkBox1).Name = "checkBox1";
		((Control)checkBox1).Size = new Size(125, 19);
		((Control)checkBox1).TabIndex = 4;
		((Control)checkBox1).Text = "Bo\u0309 \\ Cho\u0323n Toa\u0300n Bô\u0323";
		((ButtonBase)checkBox1).UseVisualStyleBackColor = true;
		checkBox1.CheckStateChanged += new EventHandler(checkBox1_CheckStateChanged);
		((Control)checkBoxNuoiTinhLinh).AutoSize = true;
		((Control)checkBoxNuoiTinhLinh).Location = new Point(17, 0);
		((Control)checkBoxNuoiTinhLinh).Name = "checkBoxNuoiTinhLinh";
		((Control)checkBoxNuoiTinhLinh).Size = new Size(104, 19);
		((Control)checkBoxNuoiTinhLinh).TabIndex = 4;
		((Control)checkBoxNuoiTinhLinh).Text = "Nuôi Tinh Linh";
		((ButtonBase)checkBoxNuoiTinhLinh).UseVisualStyleBackColor = true;
		((Control)numericUpDownTinhCung).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownTinhCung).Location = new Point(312, 21);
		((Control)numericUpDownTinhCung).Name = "numericUpDownTinhCung";
		((Control)numericUpDownTinhCung).Size = new Size(32, 23);
		((Control)numericUpDownTinhCung).TabIndex = 15;
		numericUpDownTinhCung.Value = new decimal(new int[4] { 5, 0, 0, 0 });
		((ListControl)comboBoxMB_Loai).FormattingEnabled = true;
		comboBoxMB_Loai.Items.AddRange(new object[11]
		{
			"Thần Binh", "Chiến Trang", "Pháp Sức", "Vô Ưu", "Thánh Điện", "Hang Động", "Đại Mạc", "Di Cảnh", "Liệt Diễm", "Lang Huyệt",
			"Lạc Viên"
		});
		((Control)comboBoxMB_Loai).Location = new Point(121, 50);
		((Control)comboBoxMB_Loai).Name = "comboBoxMB_Loai";
		((Control)comboBoxMB_Loai).Size = new Size(91, 23);
		((Control)comboBoxMB_Loai).TabIndex = 14;
		((Control)comboBoxMB_Loai).Text = "Thánh Điện";
		((Control)checkBoxTinhCung).AutoSize = true;
		((Control)checkBoxTinhCung).Location = new Point(19, 22);
		((Control)checkBoxTinhCung).Name = "checkBoxTinhCung";
		((Control)checkBoxTinhCung).Size = new Size(81, 19);
		((Control)checkBoxTinhCung).TabIndex = 2;
		((Control)checkBoxTinhCung).Text = "Tinh Cung";
		((ButtonBase)checkBoxTinhCung).UseVisualStyleBackColor = true;
		((ListControl)comboBoxTinhCung_Loai).FormattingEnabled = true;
		comboBoxTinhCung_Loai.Items.AddRange(new object[12]
		{
			"Bạch Dương", "Kim Ngưu", "Song Tử", "Cự Giải", "Sư Tử", "Xử Nữ", "Thiên Bình", "Hổ Cáp", "Nhân Mã", "Ma Kết",
			"Bảo Bình", "Song Ngư"
		});
		((Control)comboBoxTinhCung_Loai).Location = new Point(106, 21);
		((Control)comboBoxTinhCung_Loai).Name = "comboBoxTinhCung_Loai";
		((Control)comboBoxTinhCung_Loai).Size = new Size(106, 23);
		((Control)comboBoxTinhCung_Loai).TabIndex = 12;
		((Control)comboBoxTinhCung_Loai).Text = "Kim Ngưu";
		((Control)label5).AutoSize = true;
		((Control)label5).Location = new Point(350, 24);
		((Control)label5).Name = "label5";
		((Control)label5).Size = new Size(26, 15);
		((Control)label5).TabIndex = 13;
		((Control)label5).Text = "Lần";
		((ListControl)comboBoxTinhCung_Cap).FormattingEnabled = true;
		comboBoxTinhCung_Cap.Items.AddRange(new object[12]
		{
			"Cấp 1", "Cấp 2", "Cấp 3", "Cấp 4", "Cấp 5", "Cấp 6", "Cấp 7", "Cấp 8", "Cấp 9", "Cấp 10",
			"Cấp 11", "Cấp 12"
		});
		((Control)comboBoxTinhCung_Cap).Location = new Point(227, 21);
		((Control)comboBoxTinhCung_Cap).Name = "comboBoxTinhCung_Cap";
		((Control)comboBoxTinhCung_Cap).Size = new Size(70, 23);
		((Control)comboBoxTinhCung_Cap).TabIndex = 13;
		((Control)comboBoxTinhCung_Cap).Text = "Cấp 12";
		((ListControl)comboBoxMB_Cap).FormattingEnabled = true;
		comboBoxMB_Cap.Items.AddRange(new object[6] { "Cấp 1", "Cấp 2", "Cấp 3", "Cấp 4", "Cấp 5", "Cấp 6" });
		((Control)comboBoxMB_Cap).Location = new Point(227, 50);
		((Control)comboBoxMB_Cap).Name = "comboBoxMB_Cap";
		((Control)comboBoxMB_Cap).Size = new Size(60, 23);
		((Control)comboBoxMB_Cap).TabIndex = 13;
		((Control)comboBoxMB_Cap).Text = "Cấp 6";
		((Control)checkBoxMB).AutoSize = true;
		((Control)checkBoxMB).Location = new Point(19, 52);
		((Control)checkBoxMB).Name = "checkBoxMB";
		((Control)checkBoxMB).Size = new Size(94, 19);
		((Control)checkBoxMB).TabIndex = 8;
		((Control)checkBoxMB).Text = "Chế Mật Bảo";
		((ButtonBase)checkBoxMB).UseVisualStyleBackColor = true;
		((Control)buttonLoad2).Location = new Point(358, 468);
		((Control)buttonLoad2).Name = "buttonLoad2";
		((Control)buttonLoad2).Size = new Size(87, 25);
		((Control)buttonLoad2).TabIndex = 41;
		((Control)buttonLoad2).Text = "Ta\u0309i AutoLog";
		((ButtonBase)buttonLoad2).UseVisualStyleBackColor = true;
		((Control)buttonLoad2).Click += new EventHandler(buttonLoad2_Click);
		((Control)buttonSave2).Location = new Point(257, 468);
		((Control)buttonSave2).Name = "buttonSave2";
		((Control)buttonSave2).Size = new Size(91, 25);
		((Control)buttonSave2).TabIndex = 41;
		((Control)buttonSave2).Text = "Lưu AutoLog";
		((ButtonBase)buttonSave2).UseVisualStyleBackColor = true;
		((Control)buttonSave2).Click += new EventHandler(buttonSave2_Click);
		((Control)buttonLoad).Location = new Point(199, 468);
		((Control)buttonLoad).Name = "buttonLoad";
		((Control)buttonLoad).Size = new Size(52, 25);
		((Control)buttonLoad).TabIndex = 41;
		((Control)buttonLoad).Text = "Ta\u0309i";
		((ButtonBase)buttonLoad).UseVisualStyleBackColor = true;
		((Control)buttonLoad).Click += new EventHandler(buttonLoad_Click);
		((Control)buttonSave).Location = new Point(137, 468);
		((Control)buttonSave).Name = "buttonSave";
		((Control)buttonSave).Size = new Size(56, 25);
		((Control)buttonSave).TabIndex = 39;
		((Control)buttonSave).Text = "Lưu";
		((ButtonBase)buttonSave).UseVisualStyleBackColor = true;
		((Control)buttonSave).Click += new EventHandler(buttonSave_Click);
		((Control)label17).AutoSize = true;
		((Control)label17).Font = new Font("Segoe UI", 7f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label17).Location = new Point(359, 24);
		((Control)label17).Name = "label17";
		((Control)label17).Size = new Size(25, 12);
		((Control)label17).TabIndex = 40;
		((Control)label17).Text = "null?";
		((Control)label17).Visible = false;
		((ListControl)comboBoxFile).FormattingEnabled = true;
		((Control)comboBoxFile).Location = new Point(17, 24);
		((Control)comboBoxFile).Name = "comboBoxFile";
		((Control)comboBoxFile).Size = new Size(336, 23);
		((Control)comboBoxFile).TabIndex = 13;
		((Control)comboBoxFile).Text = "Cho\u0323n File (đa\u0303 đô\u0300ng bô\u0323 vơ\u0301i List AutoClick-Normal)";
		ButtonRunAuto.Appearance = (Appearance)1;
		((Control)ButtonRunAuto).Location = new Point(6, 124);
		((Control)ButtonRunAuto).Name = "ButtonRunAuto";
		((Control)ButtonRunAuto).Size = new Size(65, 25);
		((Control)ButtonRunAuto).TabIndex = 4;
		((Control)ButtonRunAuto).Text = "Start";
		((ButtonBase)ButtonRunAuto).TextAlign = (ContentAlignment)32;
		((ButtonBase)ButtonRunAuto).UseVisualStyleBackColor = true;
		ButtonRunAuto.CheckStateChanged += new EventHandler(ButtonRunAuto_CheckStateChanged);
		((Control)buttonReset).Location = new Point(166, 75);
		((Control)buttonReset).Name = "buttonReset";
		((Control)buttonReset).Size = new Size(56, 25);
		((Control)buttonReset).TabIndex = 8;
		((Control)buttonReset).Text = "Reset";
		((ButtonBase)buttonReset).UseVisualStyleBackColor = true;
		((Control)buttonReset).Click += new EventHandler(buttonReset_Click);
		((Control)label4).AutoSize = true;
		((Control)label4).Font = new Font("Segoe UI Semibold", 12f, (FontStyle)3, (GraphicsUnit)3);
		((Control)label4).Location = new Point(65, 43);
		((Control)label4).Name = "label4";
		((Control)label4).Size = new Size(45, 21);
		((Control)label4).TabIndex = 15;
		((Control)label4).Text = "null?";
		((Control)buttonPause).Enabled = false;
		((Control)buttonPause).Location = new Point(84, 124);
		((Control)buttonPause).Name = "buttonPause";
		((Control)buttonPause).Size = new Size(65, 25);
		((Control)buttonPause).TabIndex = 8;
		((Control)buttonPause).Text = "Pause";
		((ButtonBase)buttonPause).UseVisualStyleBackColor = true;
		((Control)buttonPause).Click += new EventHandler(buttonPause_Click);
		ButtonDebug.Appearance = (Appearance)1;
		((Control)ButtonDebug).AutoSize = true;
		((Control)ButtonDebug).Location = new Point(167, 124);
		((Control)ButtonDebug).Name = "ButtonDebug";
		((Control)ButtonDebug).Size = new Size(57, 25);
		((Control)ButtonDebug).TabIndex = 4;
		((Control)ButtonDebug).Text = "Chi Tiết";
		((ButtonBase)ButtonDebug).UseVisualStyleBackColor = true;
		ButtonDebug.CheckStateChanged += new EventHandler(ButtonDebug_CheckStateChanged);
		((Control)groupBox4).Controls.Add((Control)(object)labelWDT);
		((Control)groupBox4).Controls.Add((Control)(object)label12);
		((Control)groupBox4).Controls.Add((Control)(object)pictureBox1);
		((Control)groupBox4).Controls.Add((Control)(object)numericUpDownFPS);
		((Control)groupBox4).Controls.Add((Control)(object)label4);
		((Control)groupBox4).Controls.Add((Control)(object)label1);
		((Control)groupBox4).Controls.Add((Control)(object)buttonReset);
		((Control)groupBox4).Controls.Add((Control)(object)label6);
		((Control)groupBox4).Controls.Add((Control)(object)checkBox3);
		((Control)groupBox4).Location = new Point(6, 12);
		((Control)groupBox4).Name = "groupBox4";
		((Control)groupBox4).Size = new Size(234, 106);
		((Control)groupBox4).TabIndex = 16;
		groupBox4.TabStop = false;
		((Control)groupBox4).Text = "groupBox4";
		((Control)labelWDT).AutoSize = true;
		((Control)labelWDT).Location = new Point(153, 22);
		((Control)labelWDT).Name = "labelWDT";
		((Control)labelWDT).Size = new Size(43, 15);
		((Control)labelWDT).TabIndex = 27;
		((Control)labelWDT).Text = "WDT: 0";
		((Control)label12).AutoSize = true;
		((Control)label12).Location = new Point(65, 22);
		((Control)label12).Name = "label12";
		((Control)label12).Size = new Size(76, 15);
		((Control)label12).TabIndex = 27;
		((Control)label12).Text = "Run: 00:00:00";
		((Control)numericUpDownFPS).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownFPS).Location = new Point(107, 77);
		numericUpDownFPS.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownFPS).Name = "numericUpDownFPS";
		((Control)numericUpDownFPS).Size = new Size(36, 23);
		((Control)numericUpDownFPS).TabIndex = 15;
		numericUpDownFPS.Value = new decimal(new int[4] { 50, 0, 0, 0 });
		((Control)label1).AutoSize = true;
		((Control)label1).Location = new Point(72, 79);
		((Control)label1).Name = "label1";
		((Control)label1).Size = new Size(29, 15);
		((Control)label1).TabIndex = 13;
		((Control)label1).Text = "FPS:";
		((Control)label6).AutoSize = true;
		((Control)label6).Location = new Point(6, 79);
		((Control)label6).Name = "label6";
		((Control)label6).Size = new Size(60, 15);
		((Control)label6).TabIndex = 13;
		((Control)label6).Text = "ID: 000000";
		checkBox3.Appearance = (Appearance)1;
		((Control)checkBox3).Location = new Point(144, 44);
		((Control)checkBox3).Name = "checkBox3";
		((Control)checkBox3).Size = new Size(78, 25);
		((Control)checkBox3).TabIndex = 4;
		((Control)checkBox3).Text = "Chạy Tool";
		((ButtonBase)checkBox3).TextAlign = (ContentAlignment)32;
		((ButtonBase)checkBox3).UseVisualStyleBackColor = true;
		((Control)checkBox3).Visible = false;
		checkBox3.CheckStateChanged += new EventHandler(checkBox3_CheckStateChanged);
		((Control)label8).AutoSize = true;
		((Control)label8).Font = new Font("Segoe UI Semibold", 12f, (FontStyle)3, (GraphicsUnit)3);
		((Control)label8).Location = new Point(567, 55);
		((Control)label8).Name = "label8";
		((Control)label8).Size = new Size(45, 21);
		((Control)label8).TabIndex = 15;
		((Control)label8).Text = "null?";
		((Control)label8).Visible = false;
		((Control)groupBox6).Controls.Add((Control)(object)checkBoxAutoClick);
		((Control)groupBox6).Controls.Add((Control)(object)comboBoxFile);
		((Control)groupBox6).Controls.Add((Control)(object)label17);
		((Control)groupBox6).Location = new Point(6, 16);
		((Control)groupBox6).Name = "groupBox6";
		((Control)groupBox6).Size = new Size(425, 66);
		((Control)groupBox6).TabIndex = 43;
		groupBox6.TabStop = false;
		((Control)groupBox6).Text = "[                                                                                                 ]";
		notifyIcon1.Icon = (Icon)((ResourceManager)val).GetObject("notifyIcon1.Icon");
		notifyIcon1.Text = "BMx-Tool: Events";
		notifyIcon1.MouseClick += new MouseEventHandler(notifyIcon1_MouseDoubleClick);
		((Control)tabPage2).Controls.Add((Control)(object)groupBox2);
		((Control)tabPage2).Controls.Add((Control)(object)groupBox7);
		((Control)tabPage2).Controls.Add((Control)(object)groupBox1);
		tabPage2.Location = new Point(4, 24);
		((Control)tabPage2).Name = "tabPage2";
		((Control)tabPage2).Padding = new Padding(3);
		((Control)tabPage2).Size = new Size(437, 285);
		tabPage2.TabIndex = 1;
		((Control)tabPage2).Text = "Trang 3";
		tabPage2.UseVisualStyleBackColor = true;
		((Control)groupBox7).Controls.Add((Control)(object)dateTimePickerMuaPhu);
		((Control)groupBox7).Controls.Add((Control)(object)checkBoxMuaPhu);
		((Control)groupBox7).Controls.Add((Control)(object)label15);
		((Control)groupBox7).Controls.Add((Control)(object)comboBoxMuaPhu);
		((Control)groupBox7).Controls.Add((Control)(object)labelLuuPhu);
		((Control)groupBox7).Controls.Add((Control)(object)buttonLuuPhu);
		((Control)groupBox7).Location = new Point(6, 212);
		((Control)groupBox7).Name = "groupBox7";
		((Control)groupBox7).Size = new Size(425, 68);
		((Control)groupBox7).TabIndex = 0;
		groupBox7.TabStop = false;
		((Control)groupBox7).Text = "[ Tiêu Diêu Phù ]";
		dateTimePickerMuaPhu.Format = (DateTimePickerFormat)2;
		((Control)dateTimePickerMuaPhu).Location = new Point(297, 25);
		dateTimePickerMuaPhu.MinDate = new System.DateTime(2025, 2, 23, 0, 0, 0, 0);
		((Control)dateTimePickerMuaPhu).Name = "dateTimePickerMuaPhu";
		((Control)dateTimePickerMuaPhu).Size = new Size(79, 23);
		((Control)dateTimePickerMuaPhu).TabIndex = 45;
		dateTimePickerMuaPhu.Value = new System.DateTime(2025, 2, 23, 21, 53, 1, 0);
		((Control)checkBoxMuaPhu).AutoSize = true;
		((Control)checkBoxMuaPhu).Location = new Point(6, 27);
		((Control)checkBoxMuaPhu).Name = "checkBoxMuaPhu";
		((Control)checkBoxMuaPhu).Size = new Size(126, 19);
		((Control)checkBoxMuaPhu).TabIndex = 0;
		((Control)checkBoxMuaPhu).Text = "Mua Tiêu Diêu Phù";
		((ButtonBase)checkBoxMuaPhu).UseVisualStyleBackColor = true;
		((Control)label15).AutoSize = true;
		((Control)label15).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label15).Location = new Point(209, 29);
		((Control)label15).Name = "label15";
		((Control)label15).Size = new Size(82, 15);
		((Control)label15).TabIndex = 2;
		((Control)label15).Text = "Ngày Hết Hạn";
		((ListControl)comboBoxMuaPhu).FormattingEnabled = true;
		comboBoxMuaPhu.Items.AddRange(new object[2] { "7 ngày", "30 ngày" });
		((Control)comboBoxMuaPhu).Location = new Point(139, 25);
		((Control)comboBoxMuaPhu).Name = "comboBoxMuaPhu";
		((Control)comboBoxMuaPhu).Size = new Size(64, 23);
		((Control)comboBoxMuaPhu).TabIndex = 1;
		((Control)comboBoxMuaPhu).Text = "30 ngày";
		((Control)labelLuuPhu).AutoSize = true;
		((Control)labelLuuPhu).Font = new Font("Segoe UI", 7f, (FontStyle)0, (GraphicsUnit)3);
		((Control)labelLuuPhu).ForeColor = Color.Navy;
		((Control)labelLuuPhu).Location = new Point(227, 53);
		((Control)labelLuuPhu).Name = "labelLuuPhu";
		((Control)labelLuuPhu).RightToLeft = (RightToLeft)1;
		((Control)labelLuuPhu).Size = new Size(193, 12);
		((Control)labelLuuPhu).TabIndex = 2;
		((Control)labelLuuPhu).Text = "[ Mua Phù (30 ngày) Từ Ngày 2025-02-23 ]";
		((Control)buttonLuuPhu).Location = new Point(382, 22);
		((Control)buttonLuuPhu).Name = "buttonLuuPhu";
		((Control)buttonLuuPhu).Size = new Size(38, 29);
		((Control)buttonLuuPhu).TabIndex = 39;
		((Control)buttonLuuPhu).Text = "Lưu";
		((ButtonBase)buttonLuuPhu).UseVisualStyleBackColor = true;
		((Control)buttonLuuPhu).Click += new EventHandler(buttonLuuPhu_Click);
		((Control)groupBox1).Controls.Add((Control)(object)comboBoxMB_Cap);
		((Control)groupBox1).Controls.Add((Control)(object)checkBoxMB);
		((Control)groupBox1).Controls.Add((Control)(object)comboBoxTinhCung_Cap);
		((Control)groupBox1).Controls.Add((Control)(object)label5);
		((Control)groupBox1).Controls.Add((Control)(object)comboBoxTinhCung_Loai);
		((Control)groupBox1).Controls.Add((Control)(object)numericUpDownTinhCung);
		((Control)groupBox1).Controls.Add((Control)(object)checkBoxTinhCung);
		((Control)groupBox1).Controls.Add((Control)(object)comboBoxMB_Loai);
		((Control)groupBox1).Location = new Point(6, 3);
		((Control)groupBox1).Name = "groupBox1";
		((Control)groupBox1).Size = new Size(425, 81);
		((Control)groupBox1).TabIndex = 45;
		groupBox1.TabStop = false;
		((Control)groupBox1).Text = "[ Daily ]";
		((Control)button1).Location = new Point(358, 39);
		((Control)button1).Name = "button1";
		((Control)button1).Size = new Size(47, 23);
		((Control)button1).TabIndex = 5;
		((Control)button1).Text = "Thêm";
		((ButtonBase)button1).UseVisualStyleBackColor = true;
		((Control)button1).Click += new EventHandler(button1_Click);
		((Control)checkBoxNuoiDuongTinhLinh).AutoSize = true;
		((Control)checkBoxNuoiDuongTinhLinh).Location = new Point(317, 21);
		((Control)checkBoxNuoiDuongTinhLinh).Name = "checkBoxNuoiDuongTinhLinh";
		((Control)checkBoxNuoiDuongTinhLinh).Size = new Size(91, 19);
		((Control)checkBoxNuoiDuongTinhLinh).TabIndex = 4;
		((Control)checkBoxNuoiDuongTinhLinh).Text = "Nuôi Dươ\u0303ng";
		((ButtonBase)checkBoxNuoiDuongTinhLinh).UseVisualStyleBackColor = true;
		((ListControl)comboBoxChoAnTinhLinh).FormattingEnabled = true;
		comboBoxChoAnTinhLinh.Items.AddRange(new object[6] { "Không", "Lơ\u0301n -> Nho\u0309", "Nho\u0309 -> Lơ\u0301n", "Nho\u0309", "Vư\u0300a", "Lơ\u0301n" });
		((Control)comboBoxChoAnTinhLinh).Location = new Point(189, 19);
		((Control)comboBoxChoAnTinhLinh).Name = "comboBoxChoAnTinhLinh";
		((Control)comboBoxChoAnTinhLinh).Size = new Size(93, 23);
		((Control)comboBoxChoAnTinhLinh).TabIndex = 3;
		((Control)comboBoxChoAnTinhLinh).Text = "Nho\u0309";
		((Control)numericUpDownTinhLinh).Location = new Point(80, 20);
		numericUpDownTinhLinh.Minimum = new decimal(new int[4] { 1, 0, 0, 0 });
		((Control)numericUpDownTinhLinh).Name = "numericUpDownTinhLinh";
		((Control)numericUpDownTinhLinh).Size = new Size(36, 23);
		((Control)numericUpDownTinhLinh).TabIndex = 2;
		numericUpDownTinhLinh.Value = new decimal(new int[4] { 1, 0, 0, 0 });
		((Control)label3).AutoSize = true;
		((Control)label3).Location = new Point(136, 22);
		((Control)label3).Name = "label3";
		((Control)label3).Size = new Size(47, 15);
		((Control)label3).TabIndex = 1;
		((Control)label3).Text = "Cho Ăn";
		((Control)label13).AutoSize = true;
		((Control)label13).Font = new Font("Segoe UI", 7f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label13).ForeColor = Color.Blue;
		((Control)label13).Location = new Point(18, 46);
		((Control)label13).Name = "label13";
		((Control)label13).Size = new Size(278, 12);
		((Control)label13).TabIndex = 1;
		((Control)label13).Text = "* Chuâ\u0309n Bi\u0323 Să\u0303n Đô\u0300 Ăn (Shop Đâ\u0301u Pet), Tool Se\u0303 Không Tư\u0323 Mua";
		((Control)label2).AutoSize = true;
		((Control)label2).Location = new Point(18, 22);
		((Control)label2).Name = "label2";
		((Control)label2).Size = new Size(56, 15);
		((Control)label2).TabIndex = 1;
		((Control)label2).Text = "Tinh Linh";
		dataGridView1.AllowUserToAddRows = false;
		dataGridView1.ColumnHeadersHeightSizeMode = (DataGridViewColumnHeadersHeightSizeMode)2;
		dataGridView1.Columns.AddRange((DataGridViewColumn[])(object)new DataGridViewColumn[4]
		{
			(DataGridViewColumn)Column1,
			(DataGridViewColumn)Column2,
			(DataGridViewColumn)Column3,
			(DataGridViewColumn)Del
		});
		((Control)dataGridView1).Location = new Point(6, 68);
		((Control)dataGridView1).Name = "dataGridView1";
		dataGridView1.ReadOnly = true;
		dataGridView1.RowHeadersWidth = 10;
		dataGridView1.RowTemplate.Height = 25;
		((Control)dataGridView1).Size = new Size(413, 116);
		((Control)dataGridView1).TabIndex = 0;
		dataGridView1.CellContentClick += new DataGridViewCellEventHandler(dataGridView1_CellContentClick);
		((DataGridViewColumn)Column1).FillWeight = 90f;
		((DataGridViewColumn)Column1).HeaderText = "Tinh Linh";
		((DataGridViewColumn)Column1).Name = "Column1";
		((DataGridViewBand)Column1).ReadOnly = true;
		((DataGridViewColumn)Column1).Width = 90;
		((DataGridViewColumn)Column2).FillWeight = 80f;
		((DataGridViewColumn)Column2).HeaderText = "Cho Ăn";
		((DataGridViewColumn)Column2).Name = "Column2";
		((DataGridViewBand)Column2).ReadOnly = true;
		((DataGridViewColumn)Column2).Width = 80;
		((DataGridViewColumn)Column3).HeaderText = "Nuôi Dươ\u0303ng";
		((DataGridViewColumn)Column3).Name = "Column3";
		((DataGridViewBand)Column3).ReadOnly = true;
		((DataGridViewColumn)Del).FillWeight = 40f;
		((DataGridViewColumn)Del).HeaderText = "Xo\u0301a";
		((DataGridViewColumn)Del).Name = "Del";
		((DataGridViewBand)Del).ReadOnly = true;
		Del.Text = "Xo\u0301a";
		Del.UseColumnTextForButtonValue = true;
		((DataGridViewColumn)Del).Width = 40;
		((Control)tabPage1).Controls.Add((Control)(object)groupBox3);
		tabPage1.Location = new Point(4, 24);
		((Control)tabPage1).Name = "tabPage1";
		((Control)tabPage1).Padding = new Padding(3);
		((Control)tabPage1).Size = new Size(437, 285);
		tabPage1.TabIndex = 0;
		((Control)tabPage1).Text = "Trang 2";
		tabPage1.UseVisualStyleBackColor = true;
		((Control)tabControl1).Controls.Add((Control)(object)tabPage0);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage1);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage2);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage3);
		((Control)tabControl1).Location = new Point(6, 155);
		((Control)tabControl1).Name = "tabControl1";
		tabControl1.SelectedIndex = 0;
		((Control)tabControl1).Size = new Size(445, 313);
		((Control)tabControl1).TabIndex = 44;
		((Control)tabPage0).Controls.Add((Control)(object)groupBox5);
		((Control)tabPage0).Controls.Add((Control)(object)groupBox6);
		tabPage0.Location = new Point(4, 24);
		((Control)tabPage0).Name = "tabPage0";
		((Control)tabPage0).Padding = new Padding(3);
		((Control)tabPage0).Size = new Size(437, 285);
		tabPage0.TabIndex = 2;
		((Control)tabPage0).Text = "Trang 1";
		tabPage0.UseVisualStyleBackColor = true;
		((Control)groupBox5).Controls.Add((Control)(object)label2);
		((Control)groupBox5).Controls.Add((Control)(object)button1);
		((Control)groupBox5).Controls.Add((Control)(object)label13);
		((Control)groupBox5).Controls.Add((Control)(object)checkBoxNuoiTinhLinh);
		((Control)groupBox5).Controls.Add((Control)(object)dataGridView1);
		((Control)groupBox5).Controls.Add((Control)(object)checkBoxNuoiDuongTinhLinh);
		((Control)groupBox5).Controls.Add((Control)(object)label3);
		((Control)groupBox5).Controls.Add((Control)(object)numericUpDownTinhLinh);
		((Control)groupBox5).Controls.Add((Control)(object)comboBoxChoAnTinhLinh);
		((Control)groupBox5).Location = new Point(6, 88);
		((Control)groupBox5).Name = "groupBox5";
		((Control)groupBox5).Size = new Size(425, 191);
		((Control)groupBox5).TabIndex = 45;
		groupBox5.TabStop = false;
		((Control)groupBox5).Text = "[                                   ]";
		((Control)tabPage3).Controls.Add((Control)(object)groupBox8);
		tabPage3.Location = new Point(4, 24);
		((Control)tabPage3).Name = "tabPage3";
		((Control)tabPage3).Padding = new Padding(3);
		((Control)tabPage3).Size = new Size(437, 285);
		tabPage3.TabIndex = 3;
		((Control)tabPage3).Text = "Trang 4";
		tabPage3.UseVisualStyleBackColor = true;
		((Control)groupBox8).Controls.Add((Control)(object)checkBoxST);
		((Control)groupBox8).Controls.Add((Control)(object)tabControl2);
		((Control)groupBox8).Controls.Add((Control)(object)button2);
		((Control)groupBox8).Location = new Point(3, 6);
		((Control)groupBox8).Name = "groupBox8";
		((Control)groupBox8).Size = new Size(432, 279);
		((Control)groupBox8).TabIndex = 45;
		groupBox8.TabStop = false;
		((Control)groupBox8).Text = "[                                                                       ]";
		((Control)checkBoxST).AutoSize = true;
		((Control)checkBoxST).Location = new Point(15, 0);
		((Control)checkBoxST).Name = "checkBoxST";
		((Control)checkBoxST).Size = new Size(208, 19);
		((Control)checkBoxST).TabIndex = 45;
		((Control)checkBoxST).Text = "Sổ Tay Ma Thú - Khiêu Chiến 0 Lần";
		((ButtonBase)checkBoxST).UseVisualStyleBackColor = true;
		((Control)tabControl2).Controls.Add((Control)(object)tabPage4);
		((Control)tabControl2).Controls.Add((Control)(object)tabPage5);
		((Control)tabControl2).Controls.Add((Control)(object)tabPage6);
		((Control)tabControl2).Controls.Add((Control)(object)tabPage7);
		((Control)tabControl2).Controls.Add((Control)(object)tabPage8);
		((Control)tabControl2).Controls.Add((Control)(object)tabPage9);
		((Control)tabControl2).Location = new Point(6, 22);
		((Control)tabControl2).Name = "tabControl2";
		tabControl2.SelectedIndex = 0;
		((Control)tabControl2).Size = new Size(422, 255);
		((Control)tabControl2).TabIndex = 0;
		((Control)tabPage4).Controls.Add((Control)(object)numericUpDownST8);
		((Control)tabPage4).Controls.Add((Control)(object)numericUpDownST4);
		((Control)tabPage4).Controls.Add((Control)(object)numericUpDownST3);
		((Control)tabPage4).Controls.Add((Control)(object)label33);
		((Control)tabPage4).Controls.Add((Control)(object)label40);
		((Control)tabPage4).Controls.Add((Control)(object)numericUpDownST7);
		((Control)tabPage4).Controls.Add((Control)(object)numericUpDownST60);
		((Control)tabPage4).Controls.Add((Control)(object)numericUpDownST2);
		((Control)tabPage4).Controls.Add((Control)(object)numericUpDownST1);
		((Control)tabPage4).Controls.Add((Control)(object)numericUpDownST6);
		((Control)tabPage4).Controls.Add((Control)(object)label19);
		((Control)tabPage4).Controls.Add((Control)(object)label18);
		((Control)tabPage4).Controls.Add((Control)(object)numericUpDownST5);
		((Control)tabPage4).Controls.Add((Control)(object)numericUpDownST59);
		((Control)tabPage4).Controls.Add((Control)(object)numericUpDownST56);
		((Control)tabPage4).Controls.Add((Control)(object)numericUpDownST58);
		((Control)tabPage4).Controls.Add((Control)(object)label32);
		((Control)tabPage4).Controls.Add((Control)(object)numericUpDownST57);
		((Control)tabPage4).Controls.Add((Control)(object)numericUpDownST61);
		tabPage4.Location = new Point(4, 24);
		((Control)tabPage4).Name = "tabPage4";
		((Control)tabPage4).Padding = new Padding(3);
		((Control)tabPage4).Size = new Size(414, 227);
		tabPage4.TabIndex = 0;
		((Control)tabPage4).Text = "LV: 00~49";
		tabPage4.UseVisualStyleBackColor = true;
		((Control)numericUpDownST8).Location = new Point(162, 202);
		numericUpDownST8.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST8).Name = "numericUpDownST8";
		((Control)numericUpDownST8).Size = new Size(29, 23);
		((Control)numericUpDownST8).TabIndex = 1;
		numericUpDownST8.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST4).Location = new Point(162, 88);
		numericUpDownST4.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST4).Name = "numericUpDownST4";
		((Control)numericUpDownST4).Size = new Size(29, 23);
		((Control)numericUpDownST4).TabIndex = 1;
		numericUpDownST4.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST3).Location = new Point(162, 59);
		numericUpDownST3.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST3).Name = "numericUpDownST3";
		((Control)numericUpDownST3).Size = new Size(29, 23);
		((Control)numericUpDownST3).TabIndex = 1;
		numericUpDownST3.ValueChanged += new EventHandler(demLuot);
		((Control)label33).AutoSize = true;
		((Control)label33).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label33).Location = new Point(209, 33);
		((Control)label33).Name = "label33";
		((Control)label33).Size = new Size(158, 105);
		((Control)label33).TabIndex = 2;
		((Control)label33).Text = "Chiến Thần Sói (LV35)\r\n\r\nMiêu Vương (LV35)\r\n\r\nNấm Yêu Huyết Hồng (LV40)\r\n\r\nHấp Huyết Yêu Hoa (LV40)";
		label33.TextAlign = (ContentAlignment)32;
		((Control)label40).AutoSize = true;
		((Control)label40).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label40).Location = new Point(337, 11);
		((Control)label40).Name = "label40";
		((Control)label40).Size = new Size(59, 15);
		((Control)label40).TabIndex = 2;
		((Control)label40).Text = "[ Trang 2 ]";
		((Control)numericUpDownST7).Location = new Point(162, 175);
		numericUpDownST7.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST7).Name = "numericUpDownST7";
		((Control)numericUpDownST7).Size = new Size(29, 23);
		((Control)numericUpDownST7).TabIndex = 1;
		numericUpDownST7.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST60).Location = new Point(368, 148);
		numericUpDownST60.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST60).Name = "numericUpDownST60";
		((Control)numericUpDownST60).Size = new Size(29, 23);
		((Control)numericUpDownST60).TabIndex = 1;
		numericUpDownST60.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST2).Location = new Point(162, 32);
		numericUpDownST2.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST2).Name = "numericUpDownST2";
		((Control)numericUpDownST2).Size = new Size(29, 23);
		((Control)numericUpDownST2).TabIndex = 1;
		numericUpDownST2.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST1).Location = new Point(162, 3);
		numericUpDownST1.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST1).Name = "numericUpDownST1";
		((Control)numericUpDownST1).Size = new Size(29, 23);
		((Control)numericUpDownST1).TabIndex = 1;
		numericUpDownST1.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST6).Location = new Point(162, 146);
		numericUpDownST6.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST6).Name = "numericUpDownST6";
		((Control)numericUpDownST6).Size = new Size(29, 23);
		((Control)numericUpDownST6).TabIndex = 1;
		numericUpDownST6.ValueChanged += new EventHandler(demLuot);
		((Control)label19).AutoSize = true;
		((Control)label19).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label19).Location = new Point(10, 118);
		((Control)label19).Name = "label19";
		((Control)label19).Size = new Size(139, 105);
		((Control)label19).TabIndex = 2;
		((Control)label19).Text = "Quân Sư Cẩu Đầu (LV20)\r\n\r\nGấu Tuyết Tàn Bạo (LV25)\r\n\r\nỐc Giáo Quan (LV30)\r\n\r\nCổ Thụ Lão Yêu (LV30)";
		label19.TextAlign = (ContentAlignment)32;
		((Control)label18).AutoSize = true;
		((Control)label18).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label18).Location = new Point(3, 4);
		((Control)label18).Name = "label18";
		((Control)label18).Size = new Size(152, 105);
		((Control)label18).TabIndex = 2;
		((Control)label18).Text = "Thất Sắc Kê (LV5)\r\n\r\nThỏ Điên Răng Vổ (LV10)\r\n\r\nTrưởng Lão Sơn Quái (LV15)\r\n\r\nMa Vương Bát Giác (LV20)";
		label18.TextAlign = (ContentAlignment)32;
		((Control)numericUpDownST5).Location = new Point(162, 117);
		numericUpDownST5.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST5).Name = "numericUpDownST5";
		((Control)numericUpDownST5).Size = new Size(29, 23);
		((Control)numericUpDownST5).TabIndex = 1;
		numericUpDownST5.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST59).Location = new Point(368, 119);
		numericUpDownST59.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST59).Name = "numericUpDownST59";
		((Control)numericUpDownST59).Size = new Size(29, 23);
		((Control)numericUpDownST59).TabIndex = 1;
		numericUpDownST59.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST56).Location = new Point(368, 32);
		numericUpDownST56.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST56).Name = "numericUpDownST56";
		((Control)numericUpDownST56).Size = new Size(29, 23);
		((Control)numericUpDownST56).TabIndex = 1;
		numericUpDownST56.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST58).Location = new Point(368, 90);
		numericUpDownST58.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST58).Name = "numericUpDownST58";
		((Control)numericUpDownST58).Size = new Size(29, 23);
		((Control)numericUpDownST58).TabIndex = 1;
		numericUpDownST58.ValueChanged += new EventHandler(demLuot);
		((Control)label32).AutoSize = true;
		((Control)label32).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label32).Location = new Point(229, 148);
		((Control)label32).Name = "label32";
		((Control)label32).Size = new Size(117, 45);
		((Control)label32).TabIndex = 2;
		((Control)label32).Text = "Gấu Đen (LV45)\r\n\r\nDạ Xoa Vương (LV45)";
		label32.TextAlign = (ContentAlignment)32;
		((Control)numericUpDownST57).Location = new Point(368, 61);
		numericUpDownST57.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST57).Name = "numericUpDownST57";
		((Control)numericUpDownST57).Size = new Size(29, 23);
		((Control)numericUpDownST57).TabIndex = 1;
		numericUpDownST57.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST61).Location = new Point(368, 177);
		numericUpDownST61.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST61).Name = "numericUpDownST61";
		((Control)numericUpDownST61).Size = new Size(29, 23);
		((Control)numericUpDownST61).TabIndex = 1;
		numericUpDownST61.ValueChanged += new EventHandler(demLuot);
		((ScrollableControl)tabPage5).AutoScroll = true;
		((Control)tabPage5).Controls.Add((Control)(object)numericUpDownST16);
		((Control)tabPage5).Controls.Add((Control)(object)label22);
		((Control)tabPage5).Controls.Add((Control)(object)numericUpDownST13);
		((Control)tabPage5).Controls.Add((Control)(object)label41);
		((Control)tabPage5).Controls.Add((Control)(object)numericUpDownST12);
		((Control)tabPage5).Controls.Add((Control)(object)label23);
		((Control)tabPage5).Controls.Add((Control)(object)label42);
		((Control)tabPage5).Controls.Add((Control)(object)numericUpDownST14);
		((Control)tabPage5).Controls.Add((Control)(object)numericUpDownST11);
		((Control)tabPage5).Controls.Add((Control)(object)numericUpDownST9);
		((Control)tabPage5).Controls.Add((Control)(object)numericUpDownST10);
		((Control)tabPage5).Controls.Add((Control)(object)numericUpDownST15);
		((Control)tabPage5).Controls.Add((Control)(object)numericUpDownST62);
		tabPage5.Location = new Point(4, 24);
		((Control)tabPage5).Name = "tabPage5";
		((Control)tabPage5).Padding = new Padding(3);
		((Control)tabPage5).Size = new Size(414, 227);
		tabPage5.TabIndex = 1;
		((Control)tabPage5).Text = "LV: 50~79";
		tabPage5.UseVisualStyleBackColor = true;
		((Control)numericUpDownST16).Location = new Point(162, 202);
		numericUpDownST16.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST16).Name = "numericUpDownST16";
		((Control)numericUpDownST16).Size = new Size(29, 23);
		((Control)numericUpDownST16).TabIndex = 1;
		numericUpDownST16.ValueChanged += new EventHandler(demLuot);
		((Control)label22).AutoSize = true;
		((Control)label22).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label22).Location = new Point(6, 3);
		((Control)label22).Name = "label22";
		((Control)label22).Size = new Size(135, 105);
		((Control)label22).TabIndex = 2;
		((Control)label22).Text = "Thủy Tinh Bào (LV55)\r\n\r\nCự Nhân Ma (LV60)\r\n\r\nHải Tinh Hút Hồn (LV65)\r\n\r\nGấu Siêu Mập (LV65)";
		label22.TextAlign = (ContentAlignment)32;
		((Control)numericUpDownST13).Location = new Point(162, 117);
		numericUpDownST13.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST13).Name = "numericUpDownST13";
		((Control)numericUpDownST13).Size = new Size(29, 23);
		((Control)numericUpDownST13).TabIndex = 1;
		numericUpDownST13.ValueChanged += new EventHandler(demLuot);
		((Control)label41).AutoSize = true;
		((Control)label41).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label41).Location = new Point(211, 34);
		((Control)label41).Name = "label41";
		((Control)label41).Size = new Size(151, 15);
		((Control)label41).TabIndex = 2;
		((Control)label41).Text = "Yêu Bướm Mộng Ma (LV75)";
		label41.TextAlign = (ContentAlignment)32;
		((Control)numericUpDownST12).Location = new Point(162, 88);
		numericUpDownST12.Maximum = new decimal(new int[4] { 4, 0, 0, 0 });
		((Control)numericUpDownST12).Name = "numericUpDownST12";
		((Control)numericUpDownST12).Size = new Size(29, 23);
		((Control)numericUpDownST12).TabIndex = 1;
		numericUpDownST12.ValueChanged += new EventHandler(demLuot);
		((Control)label23).AutoSize = true;
		((Control)label23).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label23).Location = new Point(6, 119);
		((Control)label23).Name = "label23";
		((Control)label23).Size = new Size(152, 105);
		((Control)label23).TabIndex = 2;
		((Control)label23).Text = "Thượng Cổ Ác Ma (LV70)\r\n\r\nThầy Tế Lễ (LV70)\r\n\r\nOng Cửu Ly Cực Độc (LV75)\r\n\r\nThần Cuồng Bạo (LV75)";
		label23.TextAlign = (ContentAlignment)32;
		((Control)label42).AutoSize = true;
		((Control)label42).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label42).Location = new Point(337, 11);
		((Control)label42).Name = "label42";
		((Control)label42).Size = new Size(59, 15);
		((Control)label42).TabIndex = 2;
		((Control)label42).Text = "[ Trang 2 ]";
		((Control)numericUpDownST14).Location = new Point(162, 146);
		numericUpDownST14.Maximum = new decimal(new int[4] { 4, 0, 0, 0 });
		((Control)numericUpDownST14).Name = "numericUpDownST14";
		((Control)numericUpDownST14).Size = new Size(29, 23);
		((Control)numericUpDownST14).TabIndex = 1;
		numericUpDownST14.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST11).Location = new Point(162, 59);
		numericUpDownST11.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST11).Name = "numericUpDownST11";
		((Control)numericUpDownST11).Size = new Size(29, 23);
		((Control)numericUpDownST11).TabIndex = 1;
		numericUpDownST11.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST9).Location = new Point(162, 3);
		numericUpDownST9.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST9).Name = "numericUpDownST9";
		((Control)numericUpDownST9).Size = new Size(29, 23);
		((Control)numericUpDownST9).TabIndex = 1;
		numericUpDownST9.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST10).Location = new Point(162, 32);
		numericUpDownST10.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST10).Name = "numericUpDownST10";
		((Control)numericUpDownST10).Size = new Size(29, 23);
		((Control)numericUpDownST10).TabIndex = 1;
		numericUpDownST10.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST15).Location = new Point(162, 175);
		numericUpDownST15.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST15).Name = "numericUpDownST15";
		((Control)numericUpDownST15).Size = new Size(29, 23);
		((Control)numericUpDownST15).TabIndex = 1;
		numericUpDownST15.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST62).Location = new Point(368, 32);
		numericUpDownST62.Maximum = new decimal(new int[4] { 4, 0, 0, 0 });
		((Control)numericUpDownST62).Name = "numericUpDownST62";
		((Control)numericUpDownST62).Size = new Size(29, 23);
		((Control)numericUpDownST62).TabIndex = 1;
		numericUpDownST62.ValueChanged += new EventHandler(demLuot);
		((ScrollableControl)tabPage6).AutoScroll = true;
		((Control)tabPage6).Controls.Add((Control)(object)numericUpDownST24);
		((Control)tabPage6).Controls.Add((Control)(object)numericUpDownST63);
		((Control)tabPage6).Controls.Add((Control)(object)label25);
		((Control)tabPage6).Controls.Add((Control)(object)label35);
		((Control)tabPage6).Controls.Add((Control)(object)numericUpDownST23);
		((Control)tabPage6).Controls.Add((Control)(object)numericUpDownST18);
		((Control)tabPage6).Controls.Add((Control)(object)label43);
		((Control)tabPage6).Controls.Add((Control)(object)numericUpDownST21);
		((Control)tabPage6).Controls.Add((Control)(object)numericUpDownST17);
		((Control)tabPage6).Controls.Add((Control)(object)numericUpDownST65);
		((Control)tabPage6).Controls.Add((Control)(object)numericUpDownST19);
		((Control)tabPage6).Controls.Add((Control)(object)numericUpDownST20);
		((Control)tabPage6).Controls.Add((Control)(object)numericUpDownST22);
		((Control)tabPage6).Controls.Add((Control)(object)label24);
		((Control)tabPage6).Controls.Add((Control)(object)numericUpDownST67);
		((Control)tabPage6).Controls.Add((Control)(object)numericUpDownST66);
		((Control)tabPage6).Controls.Add((Control)(object)numericUpDownST64);
		tabPage6.Location = new Point(4, 24);
		((Control)tabPage6).Name = "tabPage6";
		((Control)tabPage6).Size = new Size(414, 227);
		tabPage6.TabIndex = 2;
		((Control)tabPage6).Text = "LV: 80~99";
		tabPage6.UseVisualStyleBackColor = true;
		((Control)numericUpDownST24).Location = new Point(177, 202);
		numericUpDownST24.Maximum = new decimal(new int[4] { 4, 0, 0, 0 });
		((Control)numericUpDownST24).Name = "numericUpDownST24";
		((Control)numericUpDownST24).Size = new Size(29, 23);
		((Control)numericUpDownST24).TabIndex = 1;
		numericUpDownST24.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST63).Location = new Point(368, 32);
		numericUpDownST63.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST63).Name = "numericUpDownST63";
		((Control)numericUpDownST63).Size = new Size(29, 23);
		((Control)numericUpDownST63).TabIndex = 1;
		numericUpDownST63.ValueChanged += new EventHandler(demLuot);
		((Control)label25).AutoSize = true;
		((Control)label25).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label25).Location = new Point(3, 4);
		((Control)label25).Name = "label25";
		((Control)label25).Size = new Size(165, 105);
		((Control)label25).TabIndex = 2;
		((Control)label25).Text = "Ác Hổ Ma Giới (LV80)\r\n\r\nBăng Thạch Tuyết Thần (LV80)\r\n\r\nChiến Thần Băng Cung (LV85)\r\n\r\nBá Chủ Bù Nhìn (LV85)";
		label25.TextAlign = (ContentAlignment)32;
		((Control)label35).AutoSize = true;
		((Control)label35).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label35).Location = new Point(213, 32);
		((Control)label35).Name = "label35";
		((Control)label35).Size = new Size(147, 135);
		((Control)label35).TabIndex = 2;
		((Control)label35).Text = "Ma Cát Chi Phong (LV97)\r\n\r\nTên Tan Sương Mù (LV97)\r\n\r\nBách Thảo Tinh (stcc LV95)\r\n\r\nPhủ Ma (stcc LV95)\r\n\r\nThạch Yêu (stcc LV90)";
		label35.TextAlign = (ContentAlignment)32;
		((Control)numericUpDownST23).Location = new Point(177, 175);
		numericUpDownST23.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST23).Name = "numericUpDownST23";
		((Control)numericUpDownST23).Size = new Size(29, 23);
		((Control)numericUpDownST23).TabIndex = 1;
		numericUpDownST23.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST18).Location = new Point(177, 32);
		numericUpDownST18.Maximum = new decimal(new int[4] { 4, 0, 0, 0 });
		((Control)numericUpDownST18).Name = "numericUpDownST18";
		((Control)numericUpDownST18).Size = new Size(29, 23);
		((Control)numericUpDownST18).TabIndex = 1;
		numericUpDownST18.ValueChanged += new EventHandler(demLuot);
		((Control)label43).AutoSize = true;
		((Control)label43).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label43).Location = new Point(337, 11);
		((Control)label43).Name = "label43";
		((Control)label43).Size = new Size(59, 15);
		((Control)label43).TabIndex = 2;
		((Control)label43).Text = "[ Trang 2 ]";
		((Control)numericUpDownST21).Location = new Point(177, 117);
		numericUpDownST21.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST21).Name = "numericUpDownST21";
		((Control)numericUpDownST21).Size = new Size(29, 23);
		((Control)numericUpDownST21).TabIndex = 1;
		numericUpDownST21.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST17).Location = new Point(177, 3);
		numericUpDownST17.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST17).Name = "numericUpDownST17";
		((Control)numericUpDownST17).Size = new Size(29, 23);
		((Control)numericUpDownST17).TabIndex = 1;
		numericUpDownST17.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST65).Location = new Point(368, 90);
		numericUpDownST65.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST65).Name = "numericUpDownST65";
		((Control)numericUpDownST65).Size = new Size(29, 23);
		((Control)numericUpDownST65).TabIndex = 1;
		numericUpDownST65.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST19).Location = new Point(177, 59);
		numericUpDownST19.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST19).Name = "numericUpDownST19";
		((Control)numericUpDownST19).Size = new Size(29, 23);
		((Control)numericUpDownST19).TabIndex = 1;
		numericUpDownST19.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST20).Location = new Point(177, 88);
		numericUpDownST20.Maximum = new decimal(new int[4] { 4, 0, 0, 0 });
		((Control)numericUpDownST20).Name = "numericUpDownST20";
		((Control)numericUpDownST20).Size = new Size(29, 23);
		((Control)numericUpDownST20).TabIndex = 1;
		numericUpDownST20.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST22).Location = new Point(177, 146);
		numericUpDownST22.Maximum = new decimal(new int[4] { 4, 0, 0, 0 });
		((Control)numericUpDownST22).Name = "numericUpDownST22";
		((Control)numericUpDownST22).Size = new Size(29, 23);
		((Control)numericUpDownST22).TabIndex = 1;
		numericUpDownST22.ValueChanged += new EventHandler(demLuot);
		((Control)label24).AutoSize = true;
		((Control)label24).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label24).Location = new Point(14, 117);
		((Control)label24).Name = "label24";
		((Control)label24).Size = new Size(147, 105);
		((Control)label24).TabIndex = 2;
		((Control)label24).Text = "Yêu Quái Ẩn Trúc (LV90)\r\n\r\nBăng Xuyên Thủ Hộ (LV90)\r\n\r\nCực Ma Ảo Thạch (LV95)\r\n\r\nThần Chết (LV95)";
		label24.TextAlign = (ContentAlignment)32;
		((Control)numericUpDownST67).Location = new Point(368, 146);
		numericUpDownST67.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST67).Name = "numericUpDownST67";
		((Control)numericUpDownST67).Size = new Size(29, 23);
		((Control)numericUpDownST67).TabIndex = 1;
		numericUpDownST67.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST66).Location = new Point(368, 117);
		numericUpDownST66.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST66).Name = "numericUpDownST66";
		((Control)numericUpDownST66).Size = new Size(29, 23);
		((Control)numericUpDownST66).TabIndex = 1;
		numericUpDownST66.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST64).Location = new Point(368, 61);
		numericUpDownST64.Maximum = new decimal(new int[4] { 4, 0, 0, 0 });
		((Control)numericUpDownST64).Name = "numericUpDownST64";
		((Control)numericUpDownST64).Size = new Size(29, 23);
		((Control)numericUpDownST64).TabIndex = 1;
		numericUpDownST64.ValueChanged += new EventHandler(demLuot);
		((ScrollableControl)tabPage7).AutoScroll = true;
		((Control)tabPage7).Controls.Add((Control)(object)numericUpDownST32);
		((Control)tabPage7).Controls.Add((Control)(object)numericUpDownST71);
		((Control)tabPage7).Controls.Add((Control)(object)label27);
		((Control)tabPage7).Controls.Add((Control)(object)numericUpDownST31);
		((Control)tabPage7).Controls.Add((Control)(object)numericUpDownST26);
		((Control)tabPage7).Controls.Add((Control)(object)numericUpDownST29);
		((Control)tabPage7).Controls.Add((Control)(object)label44);
		((Control)tabPage7).Controls.Add((Control)(object)numericUpDownST70);
		((Control)tabPage7).Controls.Add((Control)(object)numericUpDownST25);
		((Control)tabPage7).Controls.Add((Control)(object)numericUpDownST27);
		((Control)tabPage7).Controls.Add((Control)(object)numericUpDownST28);
		((Control)tabPage7).Controls.Add((Control)(object)numericUpDownST30);
		((Control)tabPage7).Controls.Add((Control)(object)label26);
		((Control)tabPage7).Controls.Add((Control)(object)numericUpDownST68);
		((Control)tabPage7).Controls.Add((Control)(object)label34);
		((Control)tabPage7).Controls.Add((Control)(object)numericUpDownST69);
		((Control)tabPage7).Controls.Add((Control)(object)numericUpDownST72);
		tabPage7.Location = new Point(4, 24);
		((Control)tabPage7).Name = "tabPage7";
		((Control)tabPage7).Size = new Size(414, 227);
		tabPage7.TabIndex = 3;
		((Control)tabPage7).Text = "LV: 100~119";
		tabPage7.UseVisualStyleBackColor = true;
		((Control)numericUpDownST32).Location = new Point(176, 202);
		numericUpDownST32.Maximum = new decimal(new int[4] { 4, 0, 0, 0 });
		((Control)numericUpDownST32).Name = "numericUpDownST32";
		((Control)numericUpDownST32).Size = new Size(29, 23);
		((Control)numericUpDownST32).TabIndex = 1;
		numericUpDownST32.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST71).Location = new Point(368, 117);
		numericUpDownST71.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST71).Name = "numericUpDownST71";
		((Control)numericUpDownST71).Size = new Size(29, 23);
		((Control)numericUpDownST71).TabIndex = 1;
		numericUpDownST71.ValueChanged += new EventHandler(demLuot);
		((Control)label27).AutoSize = true;
		((Control)label27).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label27).Location = new Point(3, 4);
		((Control)label27).Name = "label27";
		((Control)label27).Size = new Size(151, 105);
		((Control)label27).TabIndex = 2;
		((Control)label27).Text = "Siêu Nhân Gấu Trúc (LV100)\r\n\r\nPháp Khí Apollo (LV100)\r\n\r\nTư Tế Ma Cốc (LV105)\r\n\r\nĐại Sư Hổ Vô (LV105)";
		label27.TextAlign = (ContentAlignment)32;
		((Control)numericUpDownST31).Location = new Point(176, 175);
		numericUpDownST31.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST31).Name = "numericUpDownST31";
		((Control)numericUpDownST31).Size = new Size(29, 23);
		((Control)numericUpDownST31).TabIndex = 1;
		numericUpDownST31.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST26).Location = new Point(162, 32);
		numericUpDownST26.Maximum = new decimal(new int[4] { 4, 0, 0, 0 });
		((Control)numericUpDownST26).Name = "numericUpDownST26";
		((Control)numericUpDownST26).Size = new Size(29, 23);
		((Control)numericUpDownST26).TabIndex = 1;
		numericUpDownST26.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST29).Location = new Point(176, 117);
		numericUpDownST29.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST29).Name = "numericUpDownST29";
		((Control)numericUpDownST29).Size = new Size(29, 23);
		((Control)numericUpDownST29).TabIndex = 1;
		numericUpDownST29.ValueChanged += new EventHandler(demLuot);
		((Control)label44).AutoSize = true;
		((Control)label44).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label44).Location = new Point(337, 11);
		((Control)label44).Name = "label44";
		((Control)label44).Size = new Size(59, 15);
		((Control)label44).TabIndex = 2;
		((Control)label44).Text = "[ Trang 2 ]";
		((Control)numericUpDownST70).Location = new Point(368, 90);
		numericUpDownST70.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST70).Name = "numericUpDownST70";
		((Control)numericUpDownST70).Size = new Size(29, 23);
		((Control)numericUpDownST70).TabIndex = 1;
		numericUpDownST70.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST25).Location = new Point(162, 3);
		numericUpDownST25.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST25).Name = "numericUpDownST25";
		((Control)numericUpDownST25).Size = new Size(29, 23);
		((Control)numericUpDownST25).TabIndex = 1;
		numericUpDownST25.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST27).Location = new Point(162, 59);
		numericUpDownST27.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST27).Name = "numericUpDownST27";
		((Control)numericUpDownST27).Size = new Size(29, 23);
		((Control)numericUpDownST27).TabIndex = 1;
		numericUpDownST27.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST28).Location = new Point(162, 88);
		numericUpDownST28.Maximum = new decimal(new int[4] { 4, 0, 0, 0 });
		((Control)numericUpDownST28).Name = "numericUpDownST28";
		((Control)numericUpDownST28).Size = new Size(29, 23);
		((Control)numericUpDownST28).TabIndex = 1;
		numericUpDownST28.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST30).Location = new Point(176, 146);
		numericUpDownST30.Maximum = new decimal(new int[4] { 4, 0, 0, 0 });
		((Control)numericUpDownST30).Name = "numericUpDownST30";
		((Control)numericUpDownST30).Size = new Size(29, 23);
		((Control)numericUpDownST30).TabIndex = 1;
		numericUpDownST30.ValueChanged += new EventHandler(demLuot);
		((Control)label26).AutoSize = true;
		((Control)label26).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label26).Location = new Point(7, 118);
		((Control)label26).Name = "label26";
		((Control)label26).Size = new Size(165, 105);
		((Control)label26).TabIndex = 2;
		((Control)label26).Text = "U Hồn Mê Quang (LV110)\r\n\r\nThanatos (LV110)\r\n\r\nBóng Đen Thủ Hộ (LV115)\r\n\r\nÁnh Sáng Thanh Khiết (LV115)";
		label26.TextAlign = (ContentAlignment)32;
		((Control)numericUpDownST68).Location = new Point(368, 32);
		numericUpDownST68.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST68).Name = "numericUpDownST68";
		((Control)numericUpDownST68).Size = new Size(29, 23);
		((Control)numericUpDownST68).TabIndex = 1;
		numericUpDownST68.ValueChanged += new EventHandler(demLuot);
		((Control)label34).AutoSize = true;
		((Control)label34).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label34).Location = new Point(223, 32);
		((Control)label34).Name = "label34";
		((Control)label34).Size = new Size(137, 135);
		((Control)label34).TabIndex = 2;
		((Control)label34).Text = "Lôi Nộ Chiến Ma (LV117)\r\n\r\nVị Thần Sa Ngã (LV117)\r\n\r\nMa Chiến (stcc LV110)\r\n\r\nQuỷ Vương (stcc LV120)\r\n\r\nẮc Thần (stcc LV120)";
		label34.TextAlign = (ContentAlignment)32;
		((Control)numericUpDownST69).Location = new Point(368, 61);
		numericUpDownST69.Maximum = new decimal(new int[4] { 4, 0, 0, 0 });
		((Control)numericUpDownST69).Name = "numericUpDownST69";
		((Control)numericUpDownST69).Size = new Size(29, 23);
		((Control)numericUpDownST69).TabIndex = 1;
		numericUpDownST69.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST72).Location = new Point(368, 146);
		numericUpDownST72.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST72).Name = "numericUpDownST72";
		((Control)numericUpDownST72).Size = new Size(29, 23);
		((Control)numericUpDownST72).TabIndex = 1;
		numericUpDownST72.ValueChanged += new EventHandler(demLuot);
		((ScrollableControl)tabPage8).AutoScroll = true;
		((Control)tabPage8).Controls.Add((Control)(object)label29);
		((Control)tabPage8).Controls.Add((Control)(object)label37);
		((Control)tabPage8).Controls.Add((Control)(object)numericUpDownST40);
		((Control)tabPage8).Controls.Add((Control)(object)numericUpDownST73);
		((Control)tabPage8).Controls.Add((Control)(object)numericUpDownST39);
		((Control)tabPage8).Controls.Add((Control)(object)numericUpDownST34);
		((Control)tabPage8).Controls.Add((Control)(object)label36);
		((Control)tabPage8).Controls.Add((Control)(object)numericUpDownST37);
		((Control)tabPage8).Controls.Add((Control)(object)numericUpDownST33);
		((Control)tabPage8).Controls.Add((Control)(object)numericUpDownST35);
		((Control)tabPage8).Controls.Add((Control)(object)numericUpDownST36);
		((Control)tabPage8).Controls.Add((Control)(object)numericUpDownST74);
		((Control)tabPage8).Controls.Add((Control)(object)numericUpDownST38);
		((Control)tabPage8).Controls.Add((Control)(object)label28);
		((Control)tabPage8).Controls.Add((Control)(object)numericUpDownST75);
		tabPage8.Location = new Point(4, 24);
		((Control)tabPage8).Name = "tabPage8";
		((Control)tabPage8).Size = new Size(414, 227);
		tabPage8.TabIndex = 4;
		((Control)tabPage8).Text = "LV: 120~139";
		tabPage8.UseVisualStyleBackColor = true;
		((Control)label29).AutoSize = true;
		((Control)label29).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label29).Location = new Point(3, 4);
		((Control)label29).Name = "label29";
		((Control)label29).Size = new Size(166, 105);
		((Control)label29).TabIndex = 2;
		((Control)label29).Text = "Đoạt Mông Ma Linh (LV120)\r\n\r\nThầy Mo Nghịch Pháp (LV120)\r\n\r\nPhệ Quang Dạ Ma (LV121)\r\n\r\nPhù Thủy Thánh Ước (LV125)";
		label29.TextAlign = (ContentAlignment)32;
		((Control)label37).AutoSize = true;
		((Control)label37).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label37).Location = new Point(223, 32);
		((Control)label37).Name = "label37";
		((Control)label37).Size = new Size(139, 75);
		((Control)label37).TabIndex = 2;
		((Control)label37).Text = "Ảo Mộng Nữ Yêu (LV135)\r\n\r\nAvatar (stcc LV130)\r\n\r\nAtula Vương (stcc LV135)";
		label37.TextAlign = (ContentAlignment)32;
		((Control)numericUpDownST40).Location = new Point(176, 202);
		numericUpDownST40.Maximum = new decimal(new int[4] { 4, 0, 0, 0 });
		((Control)numericUpDownST40).Name = "numericUpDownST40";
		((Control)numericUpDownST40).Size = new Size(29, 23);
		((Control)numericUpDownST40).TabIndex = 1;
		numericUpDownST40.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST73).Location = new Point(368, 32);
		numericUpDownST73.Maximum = new decimal(new int[4] { 4, 0, 0, 0 });
		((Control)numericUpDownST73).Name = "numericUpDownST73";
		((Control)numericUpDownST73).Size = new Size(29, 23);
		((Control)numericUpDownST73).TabIndex = 1;
		numericUpDownST73.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST39).Location = new Point(176, 175);
		numericUpDownST39.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST39).Name = "numericUpDownST39";
		((Control)numericUpDownST39).Size = new Size(29, 23);
		((Control)numericUpDownST39).TabIndex = 1;
		numericUpDownST39.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST34).Location = new Point(176, 32);
		numericUpDownST34.Maximum = new decimal(new int[4] { 4, 0, 0, 0 });
		((Control)numericUpDownST34).Name = "numericUpDownST34";
		((Control)numericUpDownST34).Size = new Size(29, 23);
		((Control)numericUpDownST34).TabIndex = 1;
		numericUpDownST34.ValueChanged += new EventHandler(demLuot);
		((Control)label36).AutoSize = true;
		((Control)label36).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label36).Location = new Point(337, 11);
		((Control)label36).Name = "label36";
		((Control)label36).Size = new Size(59, 15);
		((Control)label36).TabIndex = 2;
		((Control)label36).Text = "[ Trang 2 ]";
		((Control)numericUpDownST37).Location = new Point(176, 117);
		numericUpDownST37.Maximum = new decimal(new int[4] { 4, 0, 0, 0 });
		((Control)numericUpDownST37).Name = "numericUpDownST37";
		((Control)numericUpDownST37).Size = new Size(29, 23);
		((Control)numericUpDownST37).TabIndex = 1;
		numericUpDownST37.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST33).Location = new Point(176, 3);
		numericUpDownST33.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST33).Name = "numericUpDownST33";
		((Control)numericUpDownST33).Size = new Size(29, 23);
		((Control)numericUpDownST33).TabIndex = 1;
		numericUpDownST33.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST35).Location = new Point(176, 59);
		numericUpDownST35.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST35).Name = "numericUpDownST35";
		((Control)numericUpDownST35).Size = new Size(29, 23);
		((Control)numericUpDownST35).TabIndex = 1;
		numericUpDownST35.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST36).Location = new Point(176, 88);
		numericUpDownST36.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST36).Name = "numericUpDownST36";
		((Control)numericUpDownST36).Size = new Size(29, 23);
		((Control)numericUpDownST36).TabIndex = 1;
		numericUpDownST36.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST74).Location = new Point(368, 61);
		numericUpDownST74.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST74).Name = "numericUpDownST74";
		((Control)numericUpDownST74).Size = new Size(29, 23);
		((Control)numericUpDownST74).TabIndex = 1;
		numericUpDownST74.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST38).Location = new Point(176, 146);
		numericUpDownST38.Maximum = new decimal(new int[4] { 4, 0, 0, 0 });
		((Control)numericUpDownST38).Name = "numericUpDownST38";
		((Control)numericUpDownST38).Size = new Size(29, 23);
		((Control)numericUpDownST38).TabIndex = 1;
		numericUpDownST38.ValueChanged += new EventHandler(demLuot);
		((Control)label28).AutoSize = true;
		((Control)label28).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label28).Location = new Point(12, 118);
		((Control)label28).Name = "label28";
		((Control)label28).Size = new Size(153, 105);
		((Control)label28).TabIndex = 2;
		((Control)label28).Text = "Diệt Thần Chi Thủ (LV125)\r\n\r\nNữ Vương Phá Hoại (LV127)\r\n\r\nMa Vương Cực Địa (LV130)\r\n\r\nMa Linh Dị Thú (LV130)";
		label28.TextAlign = (ContentAlignment)32;
		((Control)numericUpDownST75).Location = new Point(368, 90);
		numericUpDownST75.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST75).Name = "numericUpDownST75";
		((Control)numericUpDownST75).Size = new Size(29, 23);
		((Control)numericUpDownST75).TabIndex = 1;
		numericUpDownST75.ValueChanged += new EventHandler(demLuot);
		((Control)tabPage9).Controls.Add((Control)(object)label20);
		((Control)tabPage9).Controls.Add((Control)(object)numericUpDownST48);
		((Control)tabPage9).Controls.Add((Control)(object)label31);
		((Control)tabPage9).Controls.Add((Control)(object)numericUpDownST47);
		((Control)tabPage9).Controls.Add((Control)(object)numericUpDownST42);
		((Control)tabPage9).Controls.Add((Control)(object)numericUpDownST55);
		((Control)tabPage9).Controls.Add((Control)(object)numericUpDownST45);
		((Control)tabPage9).Controls.Add((Control)(object)numericUpDownST41);
		((Control)tabPage9).Controls.Add((Control)(object)numericUpDownST43);
		((Control)tabPage9).Controls.Add((Control)(object)numericUpDownST44);
		((Control)tabPage9).Controls.Add((Control)(object)numericUpDownST50);
		((Control)tabPage9).Controls.Add((Control)(object)numericUpDownST46);
		((Control)tabPage9).Controls.Add((Control)(object)label30);
		((Control)tabPage9).Controls.Add((Control)(object)numericUpDownST49);
		((Control)tabPage9).Controls.Add((Control)(object)label21);
		((Control)tabPage9).Controls.Add((Control)(object)numericUpDownST53);
		((Control)tabPage9).Controls.Add((Control)(object)numericUpDownST54);
		((Control)tabPage9).Controls.Add((Control)(object)numericUpDownST52);
		((Control)tabPage9).Controls.Add((Control)(object)numericUpDownST51);
		tabPage9.Location = new Point(4, 24);
		((Control)tabPage9).Name = "tabPage9";
		((Control)tabPage9).Size = new Size(414, 227);
		tabPage9.TabIndex = 5;
		((Control)tabPage9).Text = "LV: 140~170";
		tabPage9.UseVisualStyleBackColor = true;
		((Control)label20).AutoSize = true;
		((Control)label20).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label20).Location = new Point(197, 5);
		((Control)label20).Name = "label20";
		((Control)label20).Size = new Size(174, 105);
		((Control)label20).TabIndex = 2;
		((Control)label20).Text = "Nấm Vương Thánh Linh (LV155)\r\n\r\nRồng Xanh Gian Ác (LV155)\r\n\r\nChuột Tinh Linh (LV160)\r\n\r\nHuyết Tộc Vương (LV160)";
		label20.TextAlign = (ContentAlignment)32;
		((Control)numericUpDownST48).Location = new Point(176, 202);
		numericUpDownST48.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST48).Name = "numericUpDownST48";
		((Control)numericUpDownST48).Size = new Size(29, 23);
		((Control)numericUpDownST48).TabIndex = 1;
		numericUpDownST48.ValueChanged += new EventHandler(demLuot);
		((Control)label31).AutoSize = true;
		((Control)label31).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label31).Location = new Point(3, 4);
		((Control)label31).Name = "label31";
		((Control)label31).Size = new Size(155, 105);
		((Control)label31).TabIndex = 2;
		((Control)label31).Text = "Yêu Quái Mị Hoặc (LV140)\r\n\r\nPharrel Omnic (LV140)\r\n\r\nCự Ma Thạch Tượng (LV145)\r\n\r\nKỵ Sĩ Cơ Giáp (LV145)";
		label31.TextAlign = (ContentAlignment)32;
		((Control)numericUpDownST47).Location = new Point(176, 175);
		numericUpDownST47.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST47).Name = "numericUpDownST47";
		((Control)numericUpDownST47).Size = new Size(29, 23);
		((Control)numericUpDownST47).TabIndex = 1;
		numericUpDownST47.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST42).Location = new Point(162, 32);
		numericUpDownST42.Maximum = new decimal(new int[4] { 4, 0, 0, 0 });
		((Control)numericUpDownST42).Name = "numericUpDownST42";
		((Control)numericUpDownST42).Size = new Size(29, 23);
		((Control)numericUpDownST42).TabIndex = 1;
		numericUpDownST42.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST55).Location = new Point(373, 175);
		numericUpDownST55.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST55).Name = "numericUpDownST55";
		((Control)numericUpDownST55).Size = new Size(29, 23);
		((Control)numericUpDownST55).TabIndex = 1;
		numericUpDownST55.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST45).Location = new Point(176, 117);
		numericUpDownST45.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST45).Name = "numericUpDownST45";
		((Control)numericUpDownST45).Size = new Size(29, 23);
		((Control)numericUpDownST45).TabIndex = 1;
		numericUpDownST45.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST41).Location = new Point(162, 3);
		numericUpDownST41.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST41).Name = "numericUpDownST41";
		((Control)numericUpDownST41).Size = new Size(29, 23);
		((Control)numericUpDownST41).TabIndex = 1;
		numericUpDownST41.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST43).Location = new Point(162, 59);
		numericUpDownST43.Maximum = new decimal(new int[4] { 4, 0, 0, 0 });
		((Control)numericUpDownST43).Name = "numericUpDownST43";
		((Control)numericUpDownST43).Size = new Size(29, 23);
		((Control)numericUpDownST43).TabIndex = 1;
		numericUpDownST43.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST44).Location = new Point(162, 88);
		numericUpDownST44.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST44).Name = "numericUpDownST44";
		((Control)numericUpDownST44).Size = new Size(29, 23);
		((Control)numericUpDownST44).TabIndex = 1;
		numericUpDownST44.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST50).Location = new Point(373, 33);
		numericUpDownST50.Maximum = new decimal(new int[4] { 4, 0, 0, 0 });
		((Control)numericUpDownST50).Name = "numericUpDownST50";
		((Control)numericUpDownST50).Size = new Size(29, 23);
		((Control)numericUpDownST50).TabIndex = 1;
		numericUpDownST50.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST46).Location = new Point(176, 146);
		numericUpDownST46.Maximum = new decimal(new int[4] { 4, 0, 0, 0 });
		((Control)numericUpDownST46).Name = "numericUpDownST46";
		((Control)numericUpDownST46).Size = new Size(29, 23);
		((Control)numericUpDownST46).TabIndex = 1;
		numericUpDownST46.ValueChanged += new EventHandler(demLuot);
		((Control)label30).AutoSize = true;
		((Control)label30).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label30).Location = new Point(11, 118);
		((Control)label30).Name = "label30";
		((Control)label30).Size = new Size(161, 105);
		((Control)label30).TabIndex = 2;
		((Control)label30).Text = "Phản Quân Cổ Thảnh (LV150)\r\n\r\nVong Linh Ma Thuẫn (LV150)\r\n\r\nSolomon (stcc LV140)\r\n\r\nMehdi Urboss (stcc LV150)";
		label30.TextAlign = (ContentAlignment)32;
		((Control)numericUpDownST49).Location = new Point(373, 4);
		numericUpDownST49.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST49).Name = "numericUpDownST49";
		((Control)numericUpDownST49).Size = new Size(29, 23);
		((Control)numericUpDownST49).TabIndex = 1;
		numericUpDownST49.ValueChanged += new EventHandler(demLuot);
		((Control)label21).AutoSize = true;
		((Control)label21).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label21).Location = new Point(258, 118);
		((Control)label21).Name = "label21";
		((Control)label21).Size = new Size(98, 75);
		((Control)label21).TabIndex = 2;
		((Control)label21).Text = "Rada (stcc LV160)\r\n\r\nBuli (stcc LV160)\r\n\r\nBula (stcc LV160)";
		label21.TextAlign = (ContentAlignment)32;
		((Control)numericUpDownST53).Location = new Point(373, 117);
		numericUpDownST53.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST53).Name = "numericUpDownST53";
		((Control)numericUpDownST53).Size = new Size(29, 23);
		((Control)numericUpDownST53).TabIndex = 1;
		numericUpDownST53.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST54).Location = new Point(373, 146);
		numericUpDownST54.Maximum = new decimal(new int[4] { 4, 0, 0, 0 });
		((Control)numericUpDownST54).Name = "numericUpDownST54";
		((Control)numericUpDownST54).Size = new Size(29, 23);
		((Control)numericUpDownST54).TabIndex = 1;
		numericUpDownST54.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST52).Location = new Point(373, 89);
		numericUpDownST52.Maximum = new decimal(new int[4] { 4, 0, 0, 0 });
		((Control)numericUpDownST52).Name = "numericUpDownST52";
		((Control)numericUpDownST52).Size = new Size(29, 23);
		((Control)numericUpDownST52).TabIndex = 1;
		numericUpDownST52.ValueChanged += new EventHandler(demLuot);
		((Control)numericUpDownST51).Location = new Point(373, 60);
		numericUpDownST51.Maximum = new decimal(new int[4] { 2, 0, 0, 0 });
		((Control)numericUpDownST51).Name = "numericUpDownST51";
		((Control)numericUpDownST51).Size = new Size(29, 23);
		((Control)numericUpDownST51).TabIndex = 1;
		numericUpDownST51.ValueChanged += new EventHandler(demLuot);
		((Control)button2).Location = new Point(365, 0);
		((Control)button2).Name = "button2";
		((Control)button2).Size = new Size(61, 23);
		((Control)button2).TabIndex = 39;
		((Control)button2).Text = "Reset";
		((ButtonBase)button2).UseVisualStyleBackColor = true;
		((Control)button2).Click += new EventHandler(button2_Click);
		((Control)label14).AutoSize = true;
		((Control)label14).Font = new Font("Segoe UI", 8f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label14).Location = new Point(681, 36);
		((Control)label14).Name = "label14";
		((Control)label14).Size = new Size(83, 13);
		((Control)label14).TabIndex = 2;
		((Control)label14).Text = "6, 22 - 412, 115";
		((Control)label14).Visible = false;
		((Control)label16).AutoSize = true;
		((Control)label16).Font = new Font("Segoe UI", 8f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label16).Location = new Point(486, 89);
		((Control)label16).Name = "label16";
		((Control)label16).Size = new Size(392, 13);
		((Control)label16).TabIndex = 2;
		((Control)label16).Text = "[ Loại Phù Và Thợi Hạn Phù Dựa Vào Cài Đặt Mà Không Check Trong Game ]";
		((Control)label16).Visible = false;
		((Control)textBox1).Location = new Point(246, 12);
		((TextBoxBase)textBox1).Multiline = true;
		((Control)textBox1).Name = "textBox1";
		((TextBoxBase)textBox1).ReadOnly = true;
		textBox1.ScrollBars = (ScrollBars)2;
		((Control)textBox1).Size = new Size(201, 106);
		((Control)textBox1).TabIndex = 14;
		((Control)textBox1).Text = "----------------------------------";
		((Control)checkBoxSkipSetup).AutoSize = true;
		((Control)checkBoxSkipSetup).Location = new Point(246, 128);
		((Control)checkBoxSkipSetup).Name = "checkBoxSkipSetup";
		((Control)checkBoxSkipSetup).Size = new Size(211, 19);
		((Control)checkBoxSkipSetup).TabIndex = 45;
		((Control)checkBoxSkipSetup).Text = "Bỏ Qua Bước Chỉnh Vị Trí Các Bảng";
		((ButtonBase)checkBoxSkipSetup).UseVisualStyleBackColor = true;
		((Control)checkBox2).AutoSize = true;
		((Control)checkBox2).Location = new Point(486, 179);
		((Control)checkBox2).Name = "checkBox2";
		((Control)checkBox2).Size = new Size(195, 19);
		((Control)checkBox2).TabIndex = 45;
		((Control)checkBox2).Text = "NV Đăng Ký Bang Hội Mỗi Ngày";
		((ButtonBase)checkBox2).UseVisualStyleBackColor = true;
		((ContainerControl)this).AutoScaleDimensions = new SizeF(7f, 15f);
		((ContainerControl)this).AutoScaleMode = (AutoScaleMode)1;
		((Form)this).ClientSize = new Size(739, 532);
		((Control)this).Controls.Add((Control)(object)checkBox2);
		((Control)this).Controls.Add((Control)(object)checkBoxSkipSetup);
		((Control)this).Controls.Add((Control)(object)tabControl1);
		((Control)this).Controls.Add((Control)(object)checkBox1);
		((Control)this).Controls.Add((Control)(object)buttonLoad2);
		((Control)this).Controls.Add((Control)(object)label16);
		((Control)this).Controls.Add((Control)(object)buttonSave2);
		((Control)this).Controls.Add((Control)(object)buttonLoad);
		((Control)this).Controls.Add((Control)(object)label14);
		((Control)this).Controls.Add((Control)(object)groupBox4);
		((Control)this).Controls.Add((Control)(object)textBox1);
		((Control)this).Controls.Add((Control)(object)label11);
		((Control)this).Controls.Add((Control)(object)label8);
		((Control)this).Controls.Add((Control)(object)buttonPause);
		((Control)this).Controls.Add((Control)(object)ButtonDebug);
		((Control)this).Controls.Add((Control)(object)ButtonRunAuto);
		((Control)this).Controls.Add((Control)(object)buttonSave);
		((Control)this).Controls.Add((Control)(object)numericUpDownBang);
		((Control)this).Controls.Add((Control)(object)numericUpDownPet);
		((Control)this).Controls.Add((Control)(object)label10);
		((Form)this).FormBorderStyle = (FormBorderStyle)1;
		((Form)this).MaximizeBox = false;
		((Control)this).Name = "Daily";
		((Form)this).StartPosition = (FormStartPosition)1;
		((Control)this).Text = "[s32.๖Kunㄨ] BMx Daily ";
		((Form)this).Load += new EventHandler(AutoCLick_Load);
		((ISupportInitialize)pictureBox1).EndInit();
		((Control)groupBox2).ResumeLayout(false);
		((Control)groupBox2).PerformLayout();
		((Control)groupBox3).ResumeLayout(false);
		((Control)groupBox3).PerformLayout();
		((ISupportInitialize)numericUpDownTuThap).EndInit();
		((ISupportInitialize)numericUpDownDaPet).EndInit();
		((ISupportInitialize)numericUpDownBang).EndInit();
		((ISupportInitialize)numericUpDownPet).EndInit();
		((ISupportInitialize)numericUpDownTinhCung).EndInit();
		((Control)groupBox4).ResumeLayout(false);
		((Control)groupBox4).PerformLayout();
		((ISupportInitialize)numericUpDownFPS).EndInit();
		((Control)groupBox6).ResumeLayout(false);
		((Control)groupBox6).PerformLayout();
		((Control)tabPage2).ResumeLayout(false);
		((Control)groupBox7).ResumeLayout(false);
		((Control)groupBox7).PerformLayout();
		((Control)groupBox1).ResumeLayout(false);
		((Control)groupBox1).PerformLayout();
		((ISupportInitialize)numericUpDownTinhLinh).EndInit();
		((ISupportInitialize)dataGridView1).EndInit();
		((Control)tabPage1).ResumeLayout(false);
		((Control)tabControl1).ResumeLayout(false);
		((Control)tabPage0).ResumeLayout(false);
		((Control)groupBox5).ResumeLayout(false);
		((Control)groupBox5).PerformLayout();
		((Control)tabPage3).ResumeLayout(false);
		((Control)groupBox8).ResumeLayout(false);
		((Control)groupBox8).PerformLayout();
		((Control)tabControl2).ResumeLayout(false);
		((Control)tabPage4).ResumeLayout(false);
		((Control)tabPage4).PerformLayout();
		((ISupportInitialize)numericUpDownST8).EndInit();
		((ISupportInitialize)numericUpDownST4).EndInit();
		((ISupportInitialize)numericUpDownST3).EndInit();
		((ISupportInitialize)numericUpDownST7).EndInit();
		((ISupportInitialize)numericUpDownST60).EndInit();
		((ISupportInitialize)numericUpDownST2).EndInit();
		((ISupportInitialize)numericUpDownST1).EndInit();
		((ISupportInitialize)numericUpDownST6).EndInit();
		((ISupportInitialize)numericUpDownST5).EndInit();
		((ISupportInitialize)numericUpDownST59).EndInit();
		((ISupportInitialize)numericUpDownST56).EndInit();
		((ISupportInitialize)numericUpDownST58).EndInit();
		((ISupportInitialize)numericUpDownST57).EndInit();
		((ISupportInitialize)numericUpDownST61).EndInit();
		((Control)tabPage5).ResumeLayout(false);
		((Control)tabPage5).PerformLayout();
		((ISupportInitialize)numericUpDownST16).EndInit();
		((ISupportInitialize)numericUpDownST13).EndInit();
		((ISupportInitialize)numericUpDownST12).EndInit();
		((ISupportInitialize)numericUpDownST14).EndInit();
		((ISupportInitialize)numericUpDownST11).EndInit();
		((ISupportInitialize)numericUpDownST9).EndInit();
		((ISupportInitialize)numericUpDownST10).EndInit();
		((ISupportInitialize)numericUpDownST15).EndInit();
		((ISupportInitialize)numericUpDownST62).EndInit();
		((Control)tabPage6).ResumeLayout(false);
		((Control)tabPage6).PerformLayout();
		((ISupportInitialize)numericUpDownST24).EndInit();
		((ISupportInitialize)numericUpDownST63).EndInit();
		((ISupportInitialize)numericUpDownST23).EndInit();
		((ISupportInitialize)numericUpDownST18).EndInit();
		((ISupportInitialize)numericUpDownST21).EndInit();
		((ISupportInitialize)numericUpDownST17).EndInit();
		((ISupportInitialize)numericUpDownST65).EndInit();
		((ISupportInitialize)numericUpDownST19).EndInit();
		((ISupportInitialize)numericUpDownST20).EndInit();
		((ISupportInitialize)numericUpDownST22).EndInit();
		((ISupportInitialize)numericUpDownST67).EndInit();
		((ISupportInitialize)numericUpDownST66).EndInit();
		((ISupportInitialize)numericUpDownST64).EndInit();
		((Control)tabPage7).ResumeLayout(false);
		((Control)tabPage7).PerformLayout();
		((ISupportInitialize)numericUpDownST32).EndInit();
		((ISupportInitialize)numericUpDownST71).EndInit();
		((ISupportInitialize)numericUpDownST31).EndInit();
		((ISupportInitialize)numericUpDownST26).EndInit();
		((ISupportInitialize)numericUpDownST29).EndInit();
		((ISupportInitialize)numericUpDownST70).EndInit();
		((ISupportInitialize)numericUpDownST25).EndInit();
		((ISupportInitialize)numericUpDownST27).EndInit();
		((ISupportInitialize)numericUpDownST28).EndInit();
		((ISupportInitialize)numericUpDownST30).EndInit();
		((ISupportInitialize)numericUpDownST68).EndInit();
		((ISupportInitialize)numericUpDownST69).EndInit();
		((ISupportInitialize)numericUpDownST72).EndInit();
		((Control)tabPage8).ResumeLayout(false);
		((Control)tabPage8).PerformLayout();
		((ISupportInitialize)numericUpDownST40).EndInit();
		((ISupportInitialize)numericUpDownST73).EndInit();
		((ISupportInitialize)numericUpDownST39).EndInit();
		((ISupportInitialize)numericUpDownST34).EndInit();
		((ISupportInitialize)numericUpDownST37).EndInit();
		((ISupportInitialize)numericUpDownST33).EndInit();
		((ISupportInitialize)numericUpDownST35).EndInit();
		((ISupportInitialize)numericUpDownST36).EndInit();
		((ISupportInitialize)numericUpDownST74).EndInit();
		((ISupportInitialize)numericUpDownST38).EndInit();
		((ISupportInitialize)numericUpDownST75).EndInit();
		((Control)tabPage9).ResumeLayout(false);
		((Control)tabPage9).PerformLayout();
		((ISupportInitialize)numericUpDownST48).EndInit();
		((ISupportInitialize)numericUpDownST47).EndInit();
		((ISupportInitialize)numericUpDownST42).EndInit();
		((ISupportInitialize)numericUpDownST55).EndInit();
		((ISupportInitialize)numericUpDownST45).EndInit();
		((ISupportInitialize)numericUpDownST41).EndInit();
		((ISupportInitialize)numericUpDownST43).EndInit();
		((ISupportInitialize)numericUpDownST44).EndInit();
		((ISupportInitialize)numericUpDownST50).EndInit();
		((ISupportInitialize)numericUpDownST46).EndInit();
		((ISupportInitialize)numericUpDownST49).EndInit();
		((ISupportInitialize)numericUpDownST53).EndInit();
		((ISupportInitialize)numericUpDownST54).EndInit();
		((ISupportInitialize)numericUpDownST52).EndInit();
		((ISupportInitialize)numericUpDownST51).EndInit();
		((Control)this).ResumeLayout(false);
		((Control)this).PerformLayout();
	}
}
