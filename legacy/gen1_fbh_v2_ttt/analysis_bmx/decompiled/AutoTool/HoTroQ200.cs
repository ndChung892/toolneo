using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using AutoTool.Properties;
using KAutoHelper;

namespace AutoTool;

public class HoTroQ200 : Form
{
	public static string linkApp = Application.StartupPath;

	public List<string> items = new List<string>();

	public string pathBatPet = linkApp + "Anh/System/Data3";

	public string pathIconBatPet = linkApp + "Anh/System/Data3/Icon";

	public string pathDungHop = linkApp + "Anh/System/Data3/DungHop";

	public string pathTacVu = ((object)linkApp).ToString() + "Anh/TacVu";

	public string pathKhac = ((object)linkApp).ToString() + "Anh/Khac";

	public string pathData = linkApp + "/AccData";

	public string pathTruMa = ((object)linkApp).ToString() + "Anh/TruMa";

	public string pathAutoNhanNVPB = ((object)linkApp).ToString() + "Anh/NhanNVPB";

	public string pathAutoPhuBan = ((object)linkApp).ToString() + "Anh/AutoPhuBan";

	public string pathMaps = ((object)linkApp).ToString() + "Anh/Maps";

	public string pathAutoClick = linkApp + "/AutoClick";

	public string[] namePet;

	public string pathPetBat;

	public string pathPetDungHop;

	public int ViTriNhanVat_X = 1000;

	public int ViTriNhanVat_Y = 1000;

	public int ViTri1_X = 0;

	public int ViTri1_Y = 0;

	public int ViTri2_X = 0;

	public int ViTri2_Y = 0;

	public int ViTriTrain1_X = 0;

	public int ViTriTrain1_Y = 0;

	public int ViTriTrain2_X = 0;

	public int ViTriTrain2_Y = 0;

	public int SoLanBatTrongTran = 0;

	public int checkSoLanBat = 0;

	public int checkNgoaiTran = 0;

	public int SoLanDungHop = 0;

	public int DemPetClick = 0;

	public bool Map = false;

	public bool Map2 = false;

	public bool? ViTriNhanVat = false;

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

	private System.Threading.Tasks.Task T_Tele;

	private System.Threading.Tasks.Task T_Tele2;

	public bool FixKetMap;

	public bool TrongTran;

	public int VIP;

	public string nameUser;

	public int tabchon;

	public string pathPetCanBat;

	public string pathPetCanDungHop;

	private string accCheck;

	public int HaiThuoc1_X;

	public int HaiThuoc1_Y;

	public int HaiThuoc2_X;

	public int HaiThuoc2_Y;

	public int HaiThuoc3_X;

	public int HaiThuoc3_Y;

	public int HaiThuoc4_X;

	public int HaiThuoc4_Y;

	public int NPC1_X;

	public int NPC1_Y;

	public int NPC2_X;

	public int NPC2_Y;

	public int Cau1_X;

	public int Cau1_Y;

	public int Cau2_X;

	public int Cau2_Y;

	public int NguoiRom_X;

	public int NguoiRom_Y;

	public int ThuHoach_X;

	public int ThuHoach_Y;

	public int step;

	public int TieuDe;

	public string datatele;

	public string datatele2;

	private uint myPointer_map_id;

	private uint[] offset_map_id;

	private uint myPointer_map_load_data;

	private uint[] offset_map_load;

	private uint[] offset_map_data;

	private Rectangle dragBoxFromMouseDown;

	private int rowIndexFromMouseDown;

	private int rowIndexOfItemUnderMouseToDrop;

	private uint[] offset_MP;

	private uint[] offset_MPmax;

	private uint[] offset_HP;

	private uint[] offset_HPmax;

	private uint[] offset_MP2;

	private uint[] offset_MPmax2;

	private uint[] offset_HP2;

	private uint[] offset_HPmax2;

	private uint myPointer2;

	private int Turn_Count;

	private int HeSoHoiPhuc;

	private int TurnReset;

	private IContainer components;

	private Label label2;

	private CheckBox ButtonRunAuto;

	private CheckBox checkBoxDungHop;

	private CheckBox checkBoxItemPetToNV;

	private GroupBox groupBox1;

	private TextBox textBoxTimKiem;

	private CheckedListBox checkedListBox1;

	private GroupBox groupBox3;

	private Button buttonViTri2;

	private Button buttonViTri1;

	private CheckBox checkBoxItemPetBay;

	private CheckBox checkBoxFixMap;

	private CheckBox checkBoxMap1;

	private Button buttonPause;

	private NumericUpDown numericUpDownTurn;

	private Label label1;

	private Label labelDaBat;

	private Label label5;

	private Label labelDaHop;

	private ComboBox comboBoxItem;

	private CheckBox checkBoxLoop;

	private CheckBox checkBoxAuto;

	private CheckBox checkBoxBoChay;

	private Label label7;

	private ComboBox comboBoxDungHop;

	private CheckBox ButtonDebug;

	private PictureBox pictureBox1;

	private GroupBox groupBox2;

	private TextBox textBox2;

	private Label label3;

	private Label label8;

	private Button buttonReset;

	private NumericUpDown numericUpDownFPS;

	private GroupBox groupBox5;

	private Label label15;

	private CheckBox checkBoxLog;

	private Label label16;

	private NumericUpDown numericUpDownKenh;

	private NumericUpDown numericUpDownNV;

	private CheckBox checkBoxLog_BB;

	private CheckBox checkBoxAutoSetup;

	private TabControl tabControl1;

	private TabPage tabPage1;

	private TabPage tabPage2;

	private TabPage tabPage3;

	private TabPage tabPage4;

	private CheckBox checkBoxHaiThuoc;

	private Label label4;

	private Label label6;

	private CheckBox checkBoxTele;

	private NumericUpDown numericUpDownY;

	private NumericUpDown numericUpDownX;

	private Button buttonNPC2;

	private Button buttonH3;

	private Button button10;

	private Button buttonH1;

	private Button buttonNPC1;

	private Button buttonH2;

	private Button buttonC2;

	private Button buttonRom;

	private ComboBox comboBox2;

	private ComboBox comboBox1;

	private CheckBox checkBoxNongTrai;

	private Button buttonH4;

	private CheckBox checkBoxCauCa;

	private Button buttonC1;

	private DataGridView dataGridView1;

	private ComboBox comboBoxGroupName2;

	private Button button1;

	private Button buttonAddGroup;

	private Button button4;

	private CheckBox checkBoxPT4;

	private CheckBox checkBoxPT3;

	private CheckBox checkBoxPT2;

	private CheckBox checkBoxPT1;

	private CheckBox checkBoxMapTrain;

	private Button button3;

	private Button button5;

	private ComboBox comboBoxPT1;

	private ComboBox comboBoxPT4;

	private ComboBox comboBoxPT3;

	private ComboBox comboBoxPT2;

	private Button button2;

	private DataGridViewTextBoxColumn Column1;

	private DataGridViewTextBoxColumn Column2;

	private DataGridViewTextBoxColumn Column3;

	private DataGridViewTextBoxColumn Column4;

	private DataGridViewButtonColumn Tele;

	private DataGridViewTextBoxColumn Column5;

	private DataGridViewTextBoxColumn Column6;

	private DataGridViewTextBoxColumn Column7;

	private DataGridViewTextBoxColumn Column8;

	private DataGridViewButtonColumn Tele3;

	private DataGridViewButtonColumn Tele4;

	private DataGridViewButtonColumn Delete;

	private Button button6;

	private Label labelpt4;

	private Label labelpt3;

	private Label labelpt2;

	private Label labelpt1;

	private Label labelAcccheck;

	private Button button8;

	private Label label10;

	private Label label13;

	private Label label12;

	private Label label14;

	private Label label11;

	private Label label17;

	private TrackBar trackBar1;

	private Label label18;

	private NumericUpDown numericUpDown1;

	private Label label19;

	private Button button12;

	private Button button7;

	public HoTroQ200()
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
		IsStop = true;
		IsPause = false;
		FixKetMap = false;
		TrongTran = true;
		VIP = 0;
		tabchon = 0;
		HaiThuoc1_X = 0;
		HaiThuoc1_Y = 0;
		HaiThuoc2_X = 0;
		HaiThuoc2_Y = 0;
		HaiThuoc3_X = 0;
		HaiThuoc3_Y = 0;
		HaiThuoc4_X = 0;
		HaiThuoc4_Y = 0;
		NPC1_X = 0;
		NPC1_Y = 0;
		NPC2_X = 0;
		NPC2_Y = 0;
		Cau1_X = 0;
		Cau1_Y = 0;
		Cau2_X = 0;
		Cau2_Y = 0;
		NguoiRom_X = 0;
		NguoiRom_Y = 0;
		ThuHoach_X = 0;
		ThuHoach_Y = 0;
		step = 0;
		TieuDe = 30;
		datatele = "470\t200\tCổ Thành\t\r\n530\t176\tHộ Chi Địa\t\r\n580\t148\tVân Lộc Sơn\t\r\n620\t175\tTrầm Thụy Lâm\t\r\n590\t206\tTinh Linh Thành\t\r\n590\t252\tQuang Bình Nguyên\t\r\n530\t243\tLưu Hỏa Tộc\t\r\n660\t307\tBàn Địa Tộc\t\r\n610\t384\tLiêu Vân Tộc\t\r\n720\t378\tThiên Khung Tộc\t\r\n660\t414\tLạp Tuyết Địa\t\r\n700\t436\tTiên Lạp Thành\t\r\n622\t449\tAnh Vũ Cảnh\t\r\n674\t492\tBăng Tuyết Nguyên\t\r\n636\t511\tTuyết Lâm\t\r\n647\t534\tĐoạn Cốc\t\r\n363\t228\tThiện Tĩnh Địa\t\r\n422\t236\tVân Đài\t\r\n415\t274\tXuất Vân Thôn\t\r\n469\t302\tĐông Xuất Vân\t\r\n513\t317\tĐông Huyền Thành\t\r\n466\t324\tLê Dương Bắc\t\r\n420\t331\tLê Dương Đảo\t\r\n378\t324\tTháp Khắc Nguyên\t\r\n340\t365\tHư Không Mạc\t\r\n428\t357\tLê Dương Thôn\t\r\n457\t360\tLê Dương Nam\t\r\n431\t407\tNgọc Phong Lâm\t\r\n466\t443\tQuân Cổ Đạo\t\r\n490\t435\tKỳ Thạch Địa\t\r\n441\t470\tLinh Lan\t\r\n432\t497\tPhục Ma Cốc\t\r\n415\t518\tMê Quang Tự\t\r\n418\t549\tThần Di Cảnh\t\r\n454\t548\tThánh Ước Địa\t\r\n507\t521\tQuyến Cố Thành\t\r\n339\t402\tHuyền Lâm Tộc\t\r\n390\t442\tLinh Vũ Tộc\t\r\n357\t463\tThiên Lục Châu\t\r\n339\t518\tBàng Bối Thành\t\r\n360\t566\tKỵ Bình Nguyên\t\r\n374\t587\tCổ Đạo\t\r\n375\t609\tChi Phong Cốc\t\r\n344\t606\tĐăng Vân Địa\t\r\n458\t227\tĐiêu Linh Thôn\t\r\n500\t294\tMị Hoặc Lâm\t\r\n643\t288\tThiên Không Thành\t\r\n544\t355\tThiên Đường Thần Thánh\t\r\n449\t462\tMã Thạch Tuyết\t\r\n400\t499\tVĩnh Dạ Cảng\t\r\n362\t533\tTứ Tức Đảo\t\r\n610\t565\tThành Phố Chìm\t";
		datatele2 = "470\t200\tCổ Thành\t37\r\n530\t176\tHô\u0323 Chi Địa\t24\r\n580\t148\tVân Lộc Sơn\t28\r\n620\t175\tTrầm Thụy Lâm\t27\r\n590\t206\tTinh Linh Thành\t10\r\n590\t252\tQuang Bình Nguyên\t26\r\n530\t243\tLưu Hỏa Tộc\t25\r\n660\t307\tBàn Địa Tộc\t12\r\n610\t384\tLiêu Vân Tộc\t13\r\n720\t378\tThiên Khung Tộc\t32\r\n660\t414\tLạp Tuyết Địa\t33\r\n700\t436\tTiên Lạp Thành\t31\r\n622\t449\tAnh Vũ Cảnh\t34\r\n674\t492\tBăng Tuyết Nguyên\t35\r\n636\t511\tTuyết Lâm\t22\r\n647\t534\tĐoạn Cốc\t43\r\n363\t228\tThiện Tĩnh Địa\t4\r\n422\t236\tVân Đài\t3\r\n415\t274\tXuất Vân Thôn\t1\r\n469\t302\tĐông Xuất Vân\t2\r\n513\t317\tĐông Huyền Thành\t9\r\n466\t324\tLê Dương Bắc\t15\r\n420\t331\tLê Dương Đảo\t17\r\n378\t324\tTháp Khắc Nguyên\t8\r\n340\t365\tHư Không Mạc\t14\r\n428\t357\tLê Dương Thôn\t5\r\n457\t360\tLê Dương Nam\t6\r\n431\t407\tNgọc Phong Lâm\t16\r\n466\t443\tQuân Cổ Đạo\t7\r\n490\t435\tKỳ Thạch Địa\t18\r\n441\t470\tLinh Lan\t19\r\n432\t497\tPhục Ma Cốc\t23\r\n415\t518\tMê Quang Tự\t29\r\n418\t549\tThần Di Cảnh\t36\r\n454\t548\tThánh Địa Ước\t20\r\n507\t521\tQuyến Cố Thành\t30\r\n339\t402\tHuyền Lâm Tộc\t39\r\n390\t442\tLinh Vũ Tộc\t11\r\n357\t463\tThiên Lục Châu\t40\r\n339\t518\tBàng Bối Thành\t38\r\n360\t566\tKỵ Bình Nguyên\t41\r\n374\t587\tCổ Đạo\t42\r\n375\t609\tChi Phong Cốc\t21\r\n344\t606\tĐăng Vân Địa\t44\r\n458\t227\tĐiêu Linh Thôn\t55\r\n500\t294\tMị Hoặc Lâm\t56\r\n643\t288\tThiên Không Thành\t88\r\n544\t355\tThiên Đường Thần Thánh\t71\r\n449\t462\tMã Thạch Tuyết\t70\r\n400\t499\tVĩnh Dạ Cảng\t67\r\n362\t533\tTứ Tức Đảo\t61\r\n610\t565\tThành Phố Chìm\t525";
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
		uint[] array7 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array7, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_MP = array7;
		uint[] array8 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array8, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_MPmax = array8;
		uint[] array9 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array9, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_HP = array9;
		uint[] array10 = new uint[5];
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
		myPointer2 = 11180660u;
		Turn_Count = 0;
		HeSoHoiPhuc = 50;
		TurnReset = 5;
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

	private void textBoxTimKiem_TextChanged(object sender, EventArgs e)
	{
		//IL_00d0: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d5: Unknown result type (might be due to invalid IL or missing references)
		string text = "";
		foreach (object checkedItem in checkedListBox1.CheckedItems)
		{
			text = text + checkedItem.ToString() + "\r\n";
		}
		((ObjectCollection)checkedListBox1.Items).Clear();
		if (text != "")
		{
			string[] array = text.Split("\r\n", (StringSplitOptions)0);
			for (int i = 0; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array) - 1; i++)
			{
				((ObjectCollection)checkedListBox1.Items).Add((object)array[i]);
				checkedListBox1.SetItemChecked(i, true);
			}
		}
		Enumerator<string> enumerator2 = items.GetEnumerator();
		try
		{
			while (enumerator2.MoveNext())
			{
				string current2 = enumerator2.Current;
				string text2 = current2.Substring(pathBatPet.Length + 5, current2.Length - pathBatPet.Length - 1 - 8);
				if (text2.StartsWith(((Control)textBoxTimKiem).Text, (StringComparison)1))
				{
					((ObjectCollection)checkedListBox1.Items).Add((object)text2);
				}
			}
		}
		finally
		{
			((System.IDisposable)enumerator2/*cast due to .constrained prefix*/).Dispose();
		}
	}

	private void BatPet_Load(object sender, EventArgs e)
	{
		//IL_005a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0082: Unknown result type (might be due to invalid IL or missing references)
		//IL_0106: Unknown result type (might be due to invalid IL or missing references)
		//IL_0112: Unknown result type (might be due to invalid IL or missing references)
		//IL_0117: Unknown result type (might be due to invalid IL or missing references)
		//IL_011f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0125: Unknown result type (might be due to invalid IL or missing references)
		//IL_017d: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_0223: Unknown result type (might be due to invalid IL or missing references)
		//IL_0228: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0452: Unknown result type (might be due to invalid IL or missing references)
		//IL_0457: Unknown result type (might be due to invalid IL or missing references)
		accCheck = Program.AppMain.nameFlash;
		((Control)labelAcccheck).Text = accCheck + "\r\nHP/HP\r\nMP/MP";
		nameUser = Program.AppMain.nameUser;
		((Control)this).Text = "[" + accCheck + "] BMx Hỗ Trợ Nhiệm Vụ";
		((Form)this).Size = new Size(400, 173);
		tabControl1.SelectTab(0);
		((Control)tabControl1).Size = new Size(381, 332);
		if (Settings.Default.freeSize)
		{
			((Form)this).FormBorderStyle = (FormBorderStyle)4;
		}
		else
		{
			((Form)this).FormBorderStyle = (FormBorderStyle)1;
		}
		hWnd = FindWindowHandle(null, accCheck);
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
		namePet = Directory.GetFiles(pathBatPet, "*.txt");
		items.AddRange((System.Collections.Generic.IEnumerable<string>)namePet);
		Enumerator<string> enumerator = items.GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				string current = enumerator.Current;
				string text = current.Substring(pathBatPet.Length + 5, current.Length - pathBatPet.Length - 1 - 8);
				((ObjectCollection)checkedListBox1.Items).Add((object)text);
			}
		}
		finally
		{
			((System.IDisposable)enumerator/*cast due to .constrained prefix*/).Dispose();
		}
		((Control)groupBox1).Text = "Danh Sách " + Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)items) + "Loại Pet";
		((Control)textBoxTimKiem).ForeColor = SystemColors.GrayText;
		((Control)textBoxTimKiem).Text = "VD: Thất Vị Kê";
		((Control)labelDaBat).Text = "Bắt " + checkSoLanBat + " Lần";
		((Control)labelDaHop).Text = "Ép " + SoLanDungHop + " Lần";
		int num = (int)ReadMemoryData((int)processID, myPointer, offset_FPS);
		if (num != 0)
		{
			numericUpDownFPS.Value = decimal.op_Implicit(num);
		}
		else
		{
			debugText("Memory False");
		}
		if (!File.Exists(pathData + "/HoTroQ/" + nameUser + "/data.txt"))
		{
			Directory.CreateDirectory(pathData + "/HoTroQ/" + nameUser);
		}
		else
		{
			loadFile(pathData + "/HoTroQ/" + nameUser + "/data.txt");
		}
		if (!Directory.Exists(pathAutoClick + "/Tele"))
		{
			Directory.CreateDirectory(pathAutoClick + "/Tele");
		}
		else
		{
			string[] files = Directory.GetFiles(pathAutoClick + "/Tele", "*.txt");
			List<string> val6 = new List<string>();
			val6.AddRange((System.Collections.Generic.IEnumerable<string>)files);
			Enumerator<string> enumerator2 = val6.GetEnumerator();
			try
			{
				while (enumerator2.MoveNext())
				{
					string current2 = enumerator2.Current;
					string text2 = current2.Substring((pathAutoClick + "/Tele").Length + 1, current2.Length - (pathAutoClick + "/Tele").Length - 1 - 4);
					comboBoxGroupName2.Items.Add((object)text2);
				}
			}
			finally
			{
				((System.IDisposable)enumerator2/*cast due to .constrained prefix*/).Dispose();
			}
		}
		Process[] processesByName = Process.GetProcessesByName("FlashGame");
		if (Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)processesByName) > 0)
		{
			Process[] array = processesByName;
			foreach (Process val7 in array)
			{
				if (val7.MainWindowTitle != accCheck)
				{
					comboBoxPT1.Items.Add((object)val7.MainWindowTitle);
					comboBoxPT2.Items.Add((object)val7.MainWindowTitle);
					comboBoxPT3.Items.Add((object)val7.MainWindowTitle);
					comboBoxPT4.Items.Add((object)val7.MainWindowTitle);
				}
			}
		}
		if (File.Exists(pathData + "/Setting/" + nameUser + "/SPQ_train.txt"))
		{
			string[] array2 = File.ReadAllLines(pathData + "/Setting/" + nameUser + "/SPQ_train.txt");
			for (int j = 0; j < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array2); j++)
			{
				string[] array3 = array2[j].Split(':', (StringSplitOptions)0);
				string text3 = array3[0];
				string text4 = text3;
				switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text4))
				{
				case 1151856721u:
					if (text4 == "Map")
					{
						if (array3[1].Trim() == "1")
						{
							checkBoxMapTrain.CheckState = (CheckState)1;
						}
						else
						{
							checkBoxMapTrain.CheckState = (CheckState)0;
						}
					}
					break;
				case 2925011340u:
					if (text4 == "Vi\u0323 Tri\u0301 1X")
					{
						ViTriTrain1_X = int.Parse(array3[1].Trim());
					}
					break;
				case 2941788959u:
					if (text4 == "Vi\u0323 Tri\u0301 1Y")
					{
						ViTriTrain1_Y = int.Parse(array3[1].Trim());
					}
					break;
				case 2959007863u:
					if (text4 == "Vi\u0323 Tri\u0301 2X")
					{
						ViTriTrain2_X = int.Parse(array3[1].Trim());
					}
					break;
				case 2942230244u:
					if (text4 == "Vi\u0323 Tri\u0301 2Y")
					{
						ViTriTrain2_Y = int.Parse(array3[1].Trim());
					}
					break;
				case 2909505883u:
					if (text4 == "Hô\u0300i Phu\u0323c")
					{
						trackBar1.Value = int.Parse(array3[1].Trim());
						((Control)label17).Text = trackBar1.Value + " %";
					}
					break;
				case 334661530u:
					if (text4 == "Turn")
					{
						numericUpDown1.Value = decimal.op_Implicit(int.Parse(array3[1].Trim()));
					}
					break;
				}
			}
			debugText("Đa\u0303 a\u0301p du\u0323ng ba\u0309n lưu");
		}
		debugText("begin");
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
		if (WriteMemoryData((int)processID, myPointer, offset_FPS, (double)numericUpDownFPS.Value))
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
		debugText("Tạm Dừng " + IsPause);
	}

	private void ButtonRunAuto_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		//IL_00b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_00bc: Invalid comparison between Unknown and I4
		//IL_001d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0092: Unknown result type (might be due to invalid IL or missing references)
		//IL_009c: Expected O, but got Unknown
		//IL_00c9: Unknown result type (might be due to invalid IL or missing references)
		if ((int)ButtonRunAuto.CheckState == 1)
		{
			((Control)ButtonRunAuto).BackColor = Color.Green;
			((Control)ButtonRunAuto).Text = "Stop";
			((Control)buttonPause).Enabled = true;
			HideAllSelect();
			debugText("start");
			SoLanBatTrongTran = 0;
			checkSoLanBat = 0;
			checkNgoaiTran = 0;
			SoLanDungHop = 0;
			DemPetClick = 0;
			Turn_Count = 0;
			IsStop = false;
			T = new System.Threading.Tasks.Task((Action)([CompilerGenerated] () =>
			{
				//IL_08a0: Unknown result type (might be due to invalid IL or missing references)
				//IL_08ac: Unknown result type (might be due to invalid IL or missing references)
				//IL_08b1: Unknown result type (might be due to invalid IL or missing references)
				//IL_08ba: Unknown result type (might be due to invalid IL or missing references)
				//IL_08c1: Unknown result type (might be due to invalid IL or missing references)
				//IL_074c: Unknown result type (might be due to invalid IL or missing references)
				//IL_07b4: Unknown result type (might be due to invalid IL or missing references)
				//IL_07ba: Invalid comparison between Unknown and I4
				//IL_07c2: Unknown result type (might be due to invalid IL or missing references)
				//IL_07c8: Invalid comparison between Unknown and I4
				//IL_00d4: Unknown result type (might be due to invalid IL or missing references)
				//IL_00da: Invalid comparison between Unknown and I4
				//IL_0a20: Unknown result type (might be due to invalid IL or missing references)
				//IL_0a27: Unknown result type (might be due to invalid IL or missing references)
				//IL_09dd: Unknown result type (might be due to invalid IL or missing references)
				//IL_09e2: Unknown result type (might be due to invalid IL or missing references)
				//IL_09ed: Unknown result type (might be due to invalid IL or missing references)
				//IL_09f2: Unknown result type (might be due to invalid IL or missing references)
				//IL_080e: Unknown result type (might be due to invalid IL or missing references)
				//IL_0814: Invalid comparison between Unknown and I4
				//IL_0833: Unknown result type (might be due to invalid IL or missing references)
				//IL_0839: Invalid comparison between Unknown and I4
				//IL_0858: Unknown result type (might be due to invalid IL or missing references)
				//IL_085e: Invalid comparison between Unknown and I4
				//IL_02a6: Unknown result type (might be due to invalid IL or missing references)
				//IL_0494: Unknown result type (might be due to invalid IL or missing references)
				//IL_049a: Invalid comparison between Unknown and I4
				//IL_0501: Unknown result type (might be due to invalid IL or missing references)
				//IL_0507: Invalid comparison between Unknown and I4
				//IL_064f: Unknown result type (might be due to invalid IL or missing references)
				//IL_0655: Invalid comparison between Unknown and I4
				//IL_06a9: Unknown result type (might be due to invalid IL or missing references)
				//IL_06af: Invalid comparison between Unknown and I4
				if (tabControl1.SelectedIndex == 0)
				{
					PressKey("ESC");
					pathPetCanBat = "";
					pathPetCanDungHop = "";
					foreach (object checkedItem in checkedListBox1.CheckedItems)
					{
						pathPetBat = GetPathPet(checkedItem.ToString());
						pathPetDungHop = GetPathDungHop(pathPetBat);
						pathPetCanBat = pathPetCanBat + pathPetBat + "\r\n";
						pathPetCanDungHop = pathPetCanDungHop + pathPetDungHop + "\r\n";
					}
					if ((int)checkBoxItemPetBay.CheckState == 1)
					{
						while (Bay())
						{
							reConnect();
							PressKey("ESC");
						}
						delay_100ms(20);
					}
					else
					{
						while (Xuong())
						{
							reConnect();
							PressKey("ESC");
						}
						delay_100ms(20);
					}
					int num = (int)ReadMemoryData((int)processID, myPointer, offset_ToaDoX);
					int num2 = (int)ReadMemoryData((int)processID, myPointer, offset_ToaDoY);
					while (num == 0 && num2 == 0)
					{
						num = (int)ReadMemoryData((int)processID, myPointer, offset_ToaDoX);
						num2 = (int)ReadMemoryData((int)processID, myPointer, offset_ToaDoY);
						delay_100ms(5);
						debugText("Memory False!");
					}
					ViTriNhanVat_X = num;
					ViTriNhanVat_Y = num2;
					((Control)label2).Text = string.Concat(new string[5]
					{
						"[ ",
						(ViTriNhanVat_X / 10).ToString("000"),
						" - ",
						(ViTriNhanVat_Y / 10).ToString("000"),
						" ]"
					});
					if (!IsStop && !checkBoxAutoSetup.Checked)
					{
						setupRun();
						if (WriteMemoryData((int)processID, myPointer, offset_FPS, (double)numericUpDownFPS.Value))
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
						HideIconECT();
						ShowIconECT();
						PressKey("ESC");
						ViTriNhanVat = null;
						while (!ViTriNhanVat.HasValue)
						{
							debugText("Lỗi Tìm Vị Trí Nhân Vật ");
							debugText("Recheck");
							ViTriNhanVat = TimViTriNhanVat(hWnd);
							delay_100ms(5);
						}
					}
					while (!IsStop)
					{
						reConnect();
						debugText("End_Line");
						if (checkSoLanBat < (int)numericUpDownTurn.Value)
						{
							reConnect();
							batPet();
						}
						else
						{
							while (!WaitAvatar(hWnd))
							{
								reConnect();
								ClickPointInMap(hWnd, useMap: false, 550, 350, "Hủy");
								FindAndClick(hWnd, pathIconBatPet + "/BoChay.png", 5, 5, "Bỏ Chạy");
								FindAndClick(hWnd, pathIconBatPet + "/Co.png", 5, 5, "Có");
								FindAndClick(hWnd, pathIconBatPet + "/PhongNgu.png", 5, 5, "Phòng Ngự");
							}
							if ((int)checkBoxItemPetBay.CheckState == 1)
							{
								while (Xuong())
								{
									reConnect();
								}
								delay_100ms(10);
							}
							else
							{
								while (Bay())
								{
									reConnect();
								}
								delay_100ms(10);
							}
							checkSoLanBat = 0;
							debugText("Dung Hợp");
							if ((int)checkBoxDungHop.CheckState == 1)
							{
								string text = ((Control)comboBoxDungHop).Text;
								string text2 = text;
								if (!(text2 == "Lục"))
								{
									if (!(text2 == "Lam"))
									{
										if (!(text2 == "Tím"))
										{
											if (text2 == "Cam")
											{
												while (DungHopPet("Trắng"))
												{
												}
												while (DungHopPet("Lục"))
												{
												}
												while (DungHopPet("Lam"))
												{
												}
												while (DungHopPet("Tím"))
												{
												}
											}
											else
											{
												debugText("Chọn Loại Pet Dung Hợp Lỗi");
											}
										}
										else
										{
											while (DungHopPet("Trắng"))
											{
											}
											while (DungHopPet("Lục"))
											{
											}
											while (DungHopPet("Lam"))
											{
											}
										}
									}
									else
									{
										while (DungHopPet("Trắng"))
										{
										}
										while (DungHopPet("Lục"))
										{
										}
									}
								}
								else
								{
									while (DungHopPet("Trắng"))
									{
									}
								}
							}
							if ((int)checkBoxItemPetBay.CheckState == 1)
							{
								while (Bay())
								{
									reConnect();
								}
								delay_100ms(10);
							}
							else
							{
								while (Xuong())
								{
									reConnect();
								}
								delay_100ms(10);
							}
							if ((int)checkBoxLoop.CheckState == 0)
							{
								IsStop = true;
							}
						}
						debugText("ClearDebugText");
					}
				}
				else if (tabControl1.SelectedIndex == 1)
				{
					if (WriteMemoryData((int)processID, myPointer, offset_FPS, (double)numericUpDownFPS.Value))
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
					if ((int)checkBoxNongTrai.CheckState == 1 && (int)checkBoxTele.CheckState == 1)
					{
						Tele2((int)numericUpDownX.Value, (int)numericUpDownY.Value);
					}
					step = 0;
					while (!IsStop)
					{
						if ((int)checkBoxHaiThuoc.CheckState == 1)
						{
							HaiThuoc();
							delay_100ms(5);
						}
						if ((int)checkBoxCauCa.CheckState == 1)
						{
							CauCa();
							delay_100ms(5);
						}
						if ((int)checkBoxNongTrai.CheckState == 1)
						{
							NongTrai();
						}
					}
				}
				else if (tabControl1.SelectedIndex == 3)
				{
					RECT val = default(RECT);
					val = AutoControl.GetWindowRect(hWnd);
					SetWindowPos(hWnd, 0, val.Left, val.Top, 1066, 724, 2);
					int num3 = (int)ReadMemoryData((int)processID, myPointer, offset_ToaDoX);
					int num4 = (int)ReadMemoryData((int)processID, myPointer, offset_ToaDoY);
					while (num3 == 0 && num4 == 0)
					{
						num3 = (int)ReadMemoryData((int)processID, myPointer, offset_ToaDoX);
						num4 = (int)ReadMemoryData((int)processID, myPointer, offset_ToaDoY);
						delay_100ms(5);
						debugText("Memory False!");
					}
					ViTriNhanVat_X = num3;
					ViTriNhanVat_Y = num4;
					Point? val2;
					while (true)
					{
						delay_100ms(5);
						PressKey("ESC");
						PressKey("P");
						delay_100ms(10);
						val2 = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
						if (val2.HasValue)
						{
							break;
						}
						SetWindowPos(hWnd, 0, val.Left, val.Top, 1066, 724, 2);
					}
					System.IntPtr intPtr = hWnd;
					Point value = val2.Value;
					int x = ((Point)(ref value)).X;
					value = val2.Value;
					AutoControl.SendDragAndDropOnPosition(intPtr, x, ((Point)(ref value)).Y - 30, 84, 26, 10, 10, 0.05);
					PressKey("ESC");
					setupAccTrain(hWnd);
					if (checkBoxPT1.Checked)
					{
						setupAccTrain(FindWindowHandle(null, ((Control)comboBoxPT1).Text));
					}
					if (checkBoxPT2.Checked)
					{
						setupAccTrain(FindWindowHandle(null, ((Control)comboBoxPT2).Text));
					}
					if (checkBoxPT3.Checked)
					{
						setupAccTrain(FindWindowHandle(null, ((Control)comboBoxPT3).Text));
					}
					if (checkBoxPT4.Checked)
					{
						setupAccTrain(FindWindowHandle(null, ((Control)comboBoxPT4).Text));
					}
					checkPhucHoi(hWnd, 0);
					if (checkBoxPT1.Checked)
					{
						checkPhucHoi(FindWindowHandle(null, ((Control)comboBoxPT1).Text), 1);
					}
					if (checkBoxPT2.Checked)
					{
						checkPhucHoi(FindWindowHandle(null, ((Control)comboBoxPT2).Text), 2);
					}
					if (checkBoxPT3.Checked)
					{
						checkPhucHoi(FindWindowHandle(null, ((Control)comboBoxPT3).Text), 3);
					}
					if (checkBoxPT4.Checked)
					{
						checkPhucHoi(FindWindowHandle(null, ((Control)comboBoxPT4).Text), 4);
					}
					TrongTran = false;
					PressKey("`");
					while (!IsStop)
					{
						debugText("End_Line");
						Train();
					}
				}
				else
				{
					debugText("Chọn Tab Cần Chạy Trước Khi Start");
					ButtonRunAuto.CheckState = (CheckState)0;
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
			debugText("stop");
			IsStop = true;
		}
	}

	private void HideAllSelect()
	{
		((Control)tabControl1).Enabled = false;
	}

	private void ShowAllSelect()
	{
		((Control)tabControl1).Enabled = true;
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
		ViTri1_X = x2 - x;
		ViTri1_Y = y2 - y;
		((Control)buttonViTri1).BackColor = Color.Green;
	}

	private void buttonViTri2_MouseUp(object sender, MouseEventArgs e)
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
		ViTri2_X = x2 - x;
		ViTri2_Y = y2 - y;
		((Control)buttonViTri2).BackColor = Color.Green;
	}

	private void buttonViTri1_MouseDown(object sender, MouseEventArgs e)
	{
		Cursor.Current = Cursors.Cross;
	}

	private void buttonViTri2_MouseDown(object sender, MouseEventArgs e)
	{
		Cursor.Current = Cursors.Cross;
	}

	private void checkBoxMap1_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		if ((int)checkBoxMap1.CheckState == 1)
		{
			Map = true;
		}
		else
		{
			Map = false;
		}
	}

	private void textBoxTimKiem_Leave(object sender, EventArgs e)
	{
		//IL_0030: Unknown result type (might be due to invalid IL or missing references)
		if (((Control)textBoxTimKiem).Text.Length == 0)
		{
			((Control)textBoxTimKiem).Text = "";
			((Control)textBoxTimKiem).ForeColor = SystemColors.GrayText;
		}
	}

	private void textBoxTimKiem_Enter(object sender, EventArgs e)
	{
		//IL_0032: Unknown result type (might be due to invalid IL or missing references)
		if (((Control)textBoxTimKiem).Text == "VD: That_Vi_Ke")
		{
			((Control)textBoxTimKiem).Text = "";
			((Control)textBoxTimKiem).ForeColor = SystemColors.WindowText;
		}
	}

	private void checkBoxMap1_CheckedChanged(object sender, EventArgs e)
	{
		AutoControl.SendKeyBoardPress(hWnd, (VKeys)192);
	}

	private void BatPet_FormClosed(object sender, FormClosedEventArgs e)
	{
		//IL_000f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0019: Expected O, but got Unknown
		Login login = new Login();
		((Form)login).Closed += (EventHandler)([CompilerGenerated] (object? s, EventArgs args) =>
		{
			((Form)this).Close();
		});
	}

	private void checkBoxMap2_CheckedChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		if ((int)checkBoxFixMap.CheckState == 1)
		{
			FixKetMap = true;
		}
		else
		{
			FixKetMap = false;
		}
	}

	private void checkBoxBoChay_CheckedChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		if ((int)checkBoxBoChay.CheckState == 1)
		{
			checkBoxAuto.CheckState = (CheckState)0;
		}
	}

	private void checkBoxAuto_CheckedChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		if ((int)checkBoxAuto.CheckState == 1)
		{
			checkBoxBoChay.CheckState = (CheckState)0;
		}
	}

	private void checkBoxItemPetBay_CheckedChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		if ((int)checkBoxItemPetBay.CheckState == 1)
		{
			((Control)checkBoxFixMap).Enabled = false;
			checkBoxFixMap.CheckState = (CheckState)0;
		}
		else
		{
			((Control)checkBoxFixMap).Enabled = true;
		}
	}

	private void ButtonDebug_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		//IL_0138: Unknown result type (might be due to invalid IL or missing references)
		//IL_013e: Invalid comparison between Unknown and I4
		//IL_0161: Unknown result type (might be due to invalid IL or missing references)
		//IL_0069: Unknown result type (might be due to invalid IL or missing references)
		//IL_0084: Unknown result type (might be due to invalid IL or missing references)
		//IL_009f: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_0105: Unknown result type (might be due to invalid IL or missing references)
		//IL_0120: Unknown result type (might be due to invalid IL or missing references)
		if ((int)ButtonDebug.CheckState == 1)
		{
			((Control)ButtonDebug).Text = "Thu Gọn";
			tabControl1.SelectTab(tabchon);
			switch (tabchon)
			{
			case 0:
				((Form)this).Size = new Size(400, 507);
				((Control)tabControl1).Size = new Size(381, 332);
				break;
			case 1:
				((Form)this).Size = new Size(400, 392);
				((Control)tabControl1).Size = new Size(381, 216);
				break;
			case 2:
				((Form)this).Size = new Size(400, 507);
				((Control)tabControl1).Size = new Size(381, 332);
				break;
			case 3:
				((Form)this).Size = new Size(400, 507);
				((Control)tabControl1).Size = new Size(381, 332);
				break;
			}
		}
		else if ((int)ButtonDebug.CheckState == 0)
		{
			((Control)ButtonDebug).Text = "Chi Tiết";
			((Form)this).Size = new Size(400, 173);
		}
	}

	private void tabControl1_Selected(object sender, TabControlEventArgs e)
	{
		//IL_0070: Unknown result type (might be due to invalid IL or missing references)
		//IL_008b: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c8: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0102: Unknown result type (might be due to invalid IL or missing references)
		//IL_0121: Unknown result type (might be due to invalid IL or missing references)
		//IL_013c: Unknown result type (might be due to invalid IL or missing references)
		string text = ((Control)tabControl1.TabPages[e.TabPageIndex]).Text;
		string text2 = text;
		if (!(text2 == "Hái Trồng Câu"))
		{
			if (!(text2 == "Train Quái"))
			{
				if (!(text2 == "Bắt Pet"))
				{
					if (text2 == "Dịch Chuyển NPC")
					{
						tabchon = 2;
						((Form)this).Size = new Size(400, 507);
						((Control)tabControl1).Size = new Size(381, 332);
					}
				}
				else
				{
					tabchon = 0;
					((Form)this).Size = new Size(400, 507);
					((Control)tabControl1).Size = new Size(381, 332);
				}
			}
			else
			{
				tabchon = 3;
				((Form)this).Size = new Size(400, 507);
				((Control)tabControl1).Size = new Size(381, 332);
			}
		}
		else
		{
			tabchon = 1;
			((Form)this).Size = new Size(400, 392);
			((Control)tabControl1).Size = new Size(381, 216);
		}
	}

	private void batPet()
	{
		//IL_0030: Unknown result type (might be due to invalid IL or missing references)
		//IL_0036: Invalid comparison between Unknown and I4
		//IL_04a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_04a8: Invalid comparison between Unknown and I4
		//IL_05d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_05d7: Invalid comparison between Unknown and I4
		//IL_07d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_07da: Invalid comparison between Unknown and I4
		//IL_06e9: Unknown result type (might be due to invalid IL or missing references)
		//IL_06ef: Invalid comparison between Unknown and I4
		//IL_01cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d0: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e1: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e6: Unknown result type (might be due to invalid IL or missing references)
		//IL_020e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0213: Unknown result type (might be due to invalid IL or missing references)
		//IL_0224: Unknown result type (might be due to invalid IL or missing references)
		//IL_0229: Unknown result type (might be due to invalid IL or missing references)
		if (WaitAvatar(hWnd))
		{
			if (TrongTran)
			{
				TrongTran = false;
				if ((int)checkBoxAuto.CheckState == 1)
				{
					AutoControl.SendClickOnPosition(hWnd, 111, 25, (EMouseKey)0, 1);
					delay_100ms(10);
					AutoControl.SendClickOnPosition(hWnd, 111, 90, (EMouseKey)0, 1);
					debugText("Hồi Phục");
					FindAndClick(hWnd, pathIconBatPet + "/AutoSkill.png", 5, 5, "Tắt Auto");
					AutoControl.SendClickUpOnPosition(hWnd, 656, 620, (EMouseKey)0, 1);
					delay_100ms(10);
				}
				PressKey("`");
			}
			SoLanBatTrongTran = 0;
			checkNgoaiTran++;
			debugText("Ở Ngoài " + checkNgoaiTran);
			if (checkNgoaiTran >= 16)
			{
				PressKey("Enter");
				if (FixKetMap)
				{
					bool flag = WriteMemoryData((int)processID, myPointer, offset_ToaDoX, ViTriNhanVat_X);
					bool flag2 = WriteMemoryData((int)processID, myPointer, offset_ToaDoY, ViTriNhanVat_Y);
					if (flag && flag2)
					{
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
						PressKey("ESC");
						PressKey("`");
					}
					else
					{
						debugText("Location False");
					}
				}
				int viTri1_X = ViTri1_X;
				int viTri2_X = ViTri2_X;
				int viTri1_Y = ViTri1_Y;
				int viTri2_Y = ViTri2_Y;
				delay_100ms(2);
				AutoControl.SendClickOnPosition(hWnd, viTri1_X + 10, viTri1_Y - 30, (EMouseKey)0, 1);
				delay_100ms(2);
				AutoControl.SendClickOnPosition(hWnd, viTri2_X + 10, viTri2_Y - 30, (EMouseKey)0, 1);
				delay_100ms(2);
				checkNgoaiTran = 0;
			}
			switch (checkNgoaiTran)
			{
			case 0:
			case 1:
			case 2:
			case 3:
				AutoControl.SendClickOnPosition(hWnd, ViTri1_X, ViTri1_Y - 30, (EMouseKey)0, 1);
				break;
			case 4:
			case 5:
			case 6:
			case 7:
				AutoControl.SendClickOnPosition(hWnd, ViTri2_X, ViTri2_Y - 30, (EMouseKey)0, 1);
				break;
			case 8:
			case 9:
			case 10:
			case 11:
				AutoControl.SendClickOnPosition(hWnd, ViTri1_X, ViTri1_Y - 30, (EMouseKey)0, 1);
				break;
			case 12:
			case 13:
			case 14:
			case 15:
				AutoControl.SendClickOnPosition(hWnd, ViTri2_X, ViTri2_Y - 30, (EMouseKey)0, 1);
				break;
			}
			delay_100ms(3);
		}
		delay_100ms(5);
		if (WaitAvatar(hWnd))
		{
			return;
		}
		checkNgoaiTran = 0;
		if (!TrongTran)
		{
			TrongTran = true;
			debugText("Trong Trận");
		}
		debugText(SoLanBatTrongTran.ToString());
		delay_100ms(3);
		if (!FindPoint(hWnd, pathIconBatPet + "/NhanVat.png").HasValue)
		{
			return;
		}
		if (SoLanBatTrongTran >= 6)
		{
			ClickPointInMap(hWnd, useMap: false, 550, 350, "Hủy");
			if ((int)checkBoxAuto.CheckState == 1)
			{
				FindAndClick(hWnd, pathIconBatPet + "/Auto.png", 5, 5, "Auto");
				FindAndClick(hWnd, pathIconBatPet + "/KetThucAuto.png", 5, 5, "Hủy Auto");
			}
			else
			{
				FindAndClick(hWnd, pathIconBatPet + "/BoChay.png", 5, 5, "Bỏ Chạy");
				FindAndClick(hWnd, pathIconBatPet + "/Co.png", 5, 5, "Có");
				FindAndClick(hWnd, pathIconBatPet + "/PhongNgu.png", 5, 5, "Phòng Ngự");
			}
			return;
		}
		FindAndClick(hWnd, pathIconBatPet + "/Bat.png", 5, 5, "Nhấn Nút Bắt");
		if (!clickVaoPetCanBat(pathPetCanBat))
		{
			ClickPointInMap(hWnd, useMap: false, 550, 350, "Hủy");
			if ((int)checkBoxAuto.CheckState == 1)
			{
				FindAndClick(hWnd, pathIconBatPet + "/Auto.png", 5, 5, "Auto");
				FindAndClick(hWnd, pathIconBatPet + "/KetThucAuto.png", 5, 5, "Hủy Auto");
			}
			else
			{
				FindAndClick(hWnd, pathIconBatPet + "/BoChay.png", 5, 5, "Bỏ Chạy");
				FindAndClick(hWnd, pathIconBatPet + "/Co.png", 5, 5, "Có");
				FindAndClick(hWnd, pathIconBatPet + "/PhongNgu.png", 5, 5, "Phòng Ngự");
			}
			return;
		}
		delay_100ms(3);
		if (FindPoint(hWnd, pathIconBatPet + "/NhanVat.png").HasValue)
		{
			debugText("Pet đầy");
			if ((int)checkBoxAuto.CheckState == 1)
			{
				FindAndClick(hWnd, pathIconBatPet + "/Auto.png", 5, 5, "Auto");
				FindAndClick(hWnd, pathIconBatPet + "/KetThucAuto.png", 5, 5, "Hủy Auto");
			}
			else
			{
				FindAndClick(hWnd, pathIconBatPet + "/BoChay.png", 5, 5, "Bỏ Chạy");
				FindAndClick(hWnd, pathIconBatPet + "/Co.png", 5, 5, "Có");
				FindAndClick(hWnd, pathIconBatPet + "/PhongNgu.png", 5, 5, "Phòng Ngự");
			}
			checkSoLanBat = (int)numericUpDownTurn.Value;
		}
		else if ((int)checkBoxItemPetToNV.CheckState == 1 && SoLanBatTrongTran < 3)
		{
			string text = ((Control)comboBoxItem).Text;
			string text2 = text;
			string text3 = text2;
			if (!(text3 == "Kẹp > L.Thú > T.L.Cầu > Deff"))
			{
				if (!(text3 == "L.Thú > Kẹp > T.L.Cầu > Deff"))
				{
					if (text3 == "T.L.Cầu > L.Thú > Deff")
					{
						switch (SoLanBatTrongTran)
						{
						case 0:
							DungItemChoNhanVat("Tinh Linh Cầu");
							break;
						case 1:
							DungItemChoNhanVat("Luyện Thú Đơn Cao");
							break;
						case 2:
							FindAndClick(hWnd, pathIconBatPet + "/PhongNgu.png", 5, 5, "Phòng Ngự");
							break;
						}
					}
					else if (SoLanBatTrongTran < 1)
					{
						DungItemChoNhanVat(text);
					}
					else
					{
						FindAndClick(hWnd, pathIconBatPet + "/PhongNgu.png", 5, 5, "Phòng Ngự");
					}
				}
				else
				{
					switch (SoLanBatTrongTran)
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
					}
				}
			}
			else
			{
				switch (SoLanBatTrongTran)
				{
				case 0:
					DungItemChoNhanVat("Kẹp Bắt Thú (Thường, Siêu)");
					break;
				case 1:
					DungItemChoNhanVat("Luyện Thú Đơn Cao");
					break;
				case 2:
					DungItemChoNhanVat("Tinh Linh Cầu");
					break;
				}
			}
		}
		else
		{
			FindAndClick(hWnd, pathIconBatPet + "/PhongNgu.png", 5, 5, "Phòng Ngự");
		}
		checkSoLanBat++;
		SoLanBatTrongTran++;
		((Control)labelDaBat).Text = "Bắt " + checkSoLanBat + " Lần";
	}

	private bool clickVaoPetCanBat(string pathPet)
	{
		string[] array = pathPet.Split("\r\n", (StringSplitOptions)0);
		for (int i = 0; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array) - 1; i++)
		{
			if (FindAndClickPet(hWnd, array[i], 5, 5, "Chọn Pet").HasValue)
			{
				return true;
			}
		}
		return false;
	}

	private void DungItemChoNhanVat(string item)
	{
		//IL_02d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e8: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_0324: Unknown result type (might be due to invalid IL or missing references)
		//IL_0329: Unknown result type (might be due to invalid IL or missing references)
		//IL_033a: Unknown result type (might be due to invalid IL or missing references)
		//IL_033f: Unknown result type (might be due to invalid IL or missing references)
		Point? val = null;
		bool flag = false;
		switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(item))
		{
		case 1750655700u:
			if (!(item == "Luyện Thú Đơn Cao"))
			{
				goto default;
			}
			val = FindAndClick(hWnd, pathIconBatPet + "/LuyenThuDonCao.png", 5, 1, "Dùng Luyện Thú Đơn Cao");
			flag = false;
			break;
		case 3094061858u:
			if (!(item == "Luyện Thú Đơn Siêu"))
			{
				goto default;
			}
			val = FindAndClick(hWnd, pathIconBatPet + "/LuyenThuDonSieu.png", 5, 1, "Dùng Luyện Thú Đơn Siêu");
			flag = false;
			break;
		case 4011739300u:
			if (!(item == "Kẹp Bắt Thú (Thường, Siêu)"))
			{
				goto default;
			}
			val = FindAndClick(hWnd, pathIconBatPet + "/KepBatThu.png", 5, 1, " Dùng Kẹp Bắt Thú");
			flag = false;
			break;
		case 1363975968u:
			if (!(item == "Tinh Linh Cầu"))
			{
				goto default;
			}
			val = FindAndClick(hWnd, pathIconBatPet + "/TinhLinhCau.png", 5, 1, "Dùng Tinh Linh Cầu");
			flag = false;
			break;
		case 3154736165u:
			if (!(item == "[TS,AM]-Lời Ngọt Ngào"))
			{
				goto default;
			}
			val = FindAndClick(hWnd, pathIconBatPet + "/LoiNgotNgao.png", 5, 1, "Lời Ngọt Ngào");
			flag = true;
			break;
		case 2014999556u:
			if (!(item == "[CCAM]-Năng Lượng Oanh Tạc"))
			{
				goto default;
			}
			val = FindAndClick(hWnd, pathIconBatPet + "/NangLuongOanhTac.png", 5, 1, "Năng Lượng Oanh Tạc");
			flag = true;
			break;
		case 3230182701u:
			if (!(item == "[Nấm]-Tiếng Sét Phẫn Nộ"))
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
				return;
			}
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
		}
		else
		{
			FindAndClick(hWnd, pathIconBatPet + "/PhongNgu.png", 5, 5, "Không Thấy Item > Phòng Ngự");
		}
	}

	private bool DungHopPet(string LoaiPet)
	{
		//IL_038c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0391: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0304: Unknown result type (might be due to invalid IL or missing references)
		//IL_0309: Unknown result type (might be due to invalid IL or missing references)
		//IL_031a: Unknown result type (might be due to invalid IL or missing references)
		//IL_031f: Unknown result type (might be due to invalid IL or missing references)
		int num = 0;
		string[] array = pathPetCanDungHop.Split("\r\n", (StringSplitOptions)0);
		while (true)
		{
			reConnect();
			PressKey("ESC");
			FindAndClick(hWnd, pathIconBatPet + "/Luyen.png", 5, 1, "Luyện");
			FindAndClick(hWnd, pathIconBatPet + "/AoHoa.png", 5, 1, "Ảo Hóa");
			FindAndClick(hWnd, pathIconBatPet + "/DungHop.png", 5, 1, "Dung Hợp");
			FindAndClick(hWnd, pathIconBatPet + "/DungHop2.png", 5, 1, "Dung Hợp");
			FindAndClick(hWnd, pathIconBatPet + "/MoRa.png", 1, 1, "Mở Bảng Pet");
			Point? val = FindPoint(hWnd, pathIconBatPet + "/HuongDan.png");
			if (!(LoaiPet == "Trắng"))
			{
				if (!(LoaiPet == "Lục"))
				{
					if (!(LoaiPet == "Lam"))
					{
						if (LoaiPet == "Tím")
						{
							FindAndClick(hWnd, pathIconBatPet + "/PetTim.png", 5, 1, "Tím");
						}
					}
					else
					{
						FindAndClick(hWnd, pathIconBatPet + "/PetLam.png", 5, 1, "Lam");
					}
				}
				else
				{
					FindAndClick(hWnd, pathIconBatPet + "/PetLuc.png", 5, 1, "Lục");
				}
			}
			else
			{
				FindAndClick(hWnd, pathIconBatPet + "/PetTrang.png", 5, 1, "Trắng");
			}
			bool flag = true;
			int num2 = 0;
			int num3 = 0;
			while (true)
			{
				if (flag)
				{
					reConnect();
					Point value;
					if (FindsAndDoubleClickPetSubPoint(hWnd, pathIconBatPet + "/HuongDan.png", 0, -40, 590, 90, array[num], "Click Pet"))
					{
						if (FindAndClick(hWnd, pathIconBatPet + "/Hop.png", 5, 1, "Hợp").HasValue)
						{
							PressKey("Enter");
							delay_100ms(20);
							flag = false;
							SoLanDungHop++;
							((Control)labelDaHop).Text = "Ép " + SoLanDungHop + " Lần";
							num2 = 0;
							num3 = 0;
							continue;
						}
						num3++;
						if (num3 >= 3)
						{
							debugText("Không Đủ Pet Hợp");
							num++;
							if (num == Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array) - 1)
							{
								flag = false;
								return false;
							}
							break;
						}
						System.IntPtr intPtr = hWnd;
						value = val.Value;
						int x = ((Point)(ref value)).X + 585;
						value = val.Value;
						ClickPointInMap(intPtr, useMap: false, x, ((Point)(ref value)).Y + 76, "Chuyển Trang");
						continue;
					}
					num2++;
					if (num2 >= 15)
					{
						debugText("Không Thấy Pet");
						num++;
						if (num == Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array) - 1)
						{
							flag = false;
							return false;
						}
						break;
					}
					System.IntPtr intPtr2 = hWnd;
					value = val.Value;
					int x2 = ((Point)(ref value)).X + 585;
					value = val.Value;
					ClickPointInMap(intPtr2, useMap: false, x2, ((Point)(ref value)).Y + 76, "Chuyển Trang");
					continue;
				}
				return true;
			}
		}
	}

	private unsafe void HideIconECT()
	{
		//IL_0061: Unknown result type (might be due to invalid IL or missing references)
		//IL_0066: Unknown result type (might be due to invalid IL or missing references)
		//IL_0074: Unknown result type (might be due to invalid IL or missing references)
		//IL_0079: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0102: Unknown result type (might be due to invalid IL or missing references)
		//IL_0107: Unknown result type (might be due to invalid IL or missing references)
		//IL_026a: Unknown result type (might be due to invalid IL or missing references)
		//IL_026f: Unknown result type (might be due to invalid IL or missing references)
		//IL_027d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0282: Unknown result type (might be due to invalid IL or missing references)
		//IL_018d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0192: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_02fa: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ff: Unknown result type (might be due to invalid IL or missing references)
		//IL_030d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0312: Unknown result type (might be due to invalid IL or missing references)
		//IL_0390: Unknown result type (might be due to invalid IL or missing references)
		//IL_0395: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a6: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ab: Unknown result type (might be due to invalid IL or missing references)
		AutoControl.SendKeyBoardPress(hWnd, (VKeys)27);
		debugText("ESC");
		delay_100ms(1);
		KetQua_Point = FindPoint(hWnd, pathTacVu + "/AnSkill.png");
		Point val;
		if (KetQua_Point.HasValue)
		{
			System.IntPtr intPtr = hWnd;
			val = KetQua_Point.Value;
			int x = ((Point)(ref val)).X;
			val = KetQua_Point.Value;
			AutoControl.SendClickOnPosition(intPtr, x, ((Point)(ref val)).Y - 30, (EMouseKey)0, 1);
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
			System.IntPtr intPtr2 = hWnd;
			val = KetQua_Point.Value;
			int x2 = ((Point)(ref val)).X;
			val = KetQua_Point.Value;
			AutoControl.SendClickOnPosition(intPtr2, x2, ((Point)(ref val)).Y - 30, (EMouseKey)0, 1);
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
				val = KetQua_Points[i];
				int x3 = ((Point)(ref val)).X;
				val = KetQua_Points[i];
				AutoControl.SendClickOnPosition(intPtr3, x3, ((Point)(ref val)).Y - 30, (EMouseKey)0, 1);
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
			System.IntPtr intPtr4 = hWnd;
			val = KetQua_Point.Value;
			int x4 = ((Point)(ref val)).X;
			val = KetQua_Point.Value;
			AutoControl.SendClickOnPosition(intPtr4, x4, ((Point)(ref val)).Y - 30, (EMouseKey)0, 1);
			debugText("Đã Gửi Khung Chat");
			delay_100ms(5);
		}
		else
		{
			debugText("Không Thấy Gửi Khung Chat");
		}
		KetQua_Point = FindPoint(hWnd, pathTacVu + "/XoaChat.png");
		if (KetQua_Point.HasValue)
		{
			System.IntPtr intPtr5 = hWnd;
			val = KetQua_Point.Value;
			int x5 = ((Point)(ref val)).X;
			val = KetQua_Point.Value;
			AutoControl.SendClickOnPosition(intPtr5, x5, ((Point)(ref val)).Y - 30, (EMouseKey)0, 1);
			debugText("Đã Xóa Khung Chat");
			delay_100ms(5);
		}
		else
		{
			debugText("Không Thấy Xóa Khung Chat");
		}
		KetQua_Point = FindPoint(hWnd, pathTacVu + "/XoaChat.png");
		if (KetQua_Point.HasValue)
		{
			for (int j = 0; j < 10; j++)
			{
				System.IntPtr intPtr6 = hWnd;
				val = KetQua_Point.Value;
				int num = ((Point)(ref val)).X + 50;
				val = KetQua_Point.Value;
				AutoControl.SendClickOnPosition(intPtr6, num, ((Point)(ref val)).Y - 30, (EMouseKey)0, 1);
				delay_100ms(5);
			}
		}
	}

	private void ShowIconECT()
	{
		FindAndClick(hWnd, pathIconBatPet + "/AutoSkill.png", 5, 5, "Tắt Auto");
		FindAndClick(hWnd, pathIconBatPet + "/Skill.png", 3, 3, "Mở Thanh Skill");
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

	private void ClickPointInMap(System.IntPtr hWnd, bool useMap, int X, int Y, string textDebug)
	{
		if (useMap)
		{
			PressKey("`");
		}
		delay_100ms(5);
		AutoControl.SendClickOnPosition(hWnd, X, Y - 30, (EMouseKey)0, 1);
		delay_100ms(5);
		debugText(textDebug);
		delay_100ms(5);
		if (useMap)
		{
			PressKey("`");
		}
	}

	private string GetPathPet(string nameCheck)
	{
		//IL_0011: Unknown result type (might be due to invalid IL or missing references)
		//IL_0017: Expected O, but got Unknown
		Regex val = new Regex("(?:" + nameCheck + ")");
		for (int i = 0; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)namePet); i++)
		{
			Match val2 = val.Match(namePet[i]);
			if (((Group)val2).Success)
			{
				return namePet[i].Substring(0, namePet[i].Length - 4) + ".txt";
			}
		}
		return "";
	}

	private string GetPathDungHop(string nameCheck)
	{
		string text = nameCheck.Substring(pathBatPet.Length);
		return pathDungHop + text;
	}

	private void PressKey(string x)
	{
		FindAndClick(hWnd, pathKhac + "/Log_OK.png", 2, 2, "Press");
		FindAndClick(hWnd, pathKhac + "/Auto_Co.png", 2, 2, "Press");
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
		}
		debugText("Đã Nhấn " + x);
		delay_100ms(5);
	}

	private bool Xuong()
	{
		FindsAndClick(hWnd, pathTacVu + "/MuiTenIcon.png", 0, 0, "Show");
		if (FindPoint(hWnd, pathTacVu + "/Xuong.png").HasValue)
		{
			PressKey("F");
			delay_100ms(10);
			return true;
		}
		return false;
	}

	private bool Bay()
	{
		FindsAndClick(hWnd, pathTacVu + "/MuiTenIcon.png", 0, 0, "Show");
		if (FindPoint(hWnd, pathTacVu + "/Bay.png").HasValue)
		{
			PressKey("F");
			delay_100ms(10);
			return true;
		}
		return false;
	}

	private void reConnect()
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		//IL_0515: Unknown result type (might be due to invalid IL or missing references)
		//IL_051a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0528: Unknown result type (might be due to invalid IL or missing references)
		//IL_052d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0549: Unknown result type (might be due to invalid IL or missing references)
		//IL_054e: Unknown result type (might be due to invalid IL or missing references)
		//IL_055c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0561: Unknown result type (might be due to invalid IL or missing references)
		//IL_03bb: Unknown result type (might be due to invalid IL or missing references)
		//IL_03c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_03d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_03dc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0307: Unknown result type (might be due to invalid IL or missing references)
		//IL_030c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0323: Unknown result type (might be due to invalid IL or missing references)
		//IL_0328: Unknown result type (might be due to invalid IL or missing references)
		//IL_0253: Unknown result type (might be due to invalid IL or missing references)
		//IL_0258: Unknown result type (might be due to invalid IL or missing references)
		//IL_026f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0274: Unknown result type (might be due to invalid IL or missing references)
		//IL_019f: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_01bb: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_086b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0870: Unknown result type (might be due to invalid IL or missing references)
		//IL_087b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0880: Unknown result type (might be due to invalid IL or missing references)
		//IL_0415: Unknown result type (might be due to invalid IL or missing references)
		//IL_041a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0431: Unknown result type (might be due to invalid IL or missing references)
		//IL_0436: Unknown result type (might be due to invalid IL or missing references)
		//IL_0361: Unknown result type (might be due to invalid IL or missing references)
		//IL_0366: Unknown result type (might be due to invalid IL or missing references)
		//IL_037d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0382: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b2: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c9: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_01fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_0215: Unknown result type (might be due to invalid IL or missing references)
		//IL_021a: Unknown result type (might be due to invalid IL or missing references)
		//IL_046c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0471: Unknown result type (might be due to invalid IL or missing references)
		//IL_0488: Unknown result type (might be due to invalid IL or missing references)
		//IL_048d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0977: Unknown result type (might be due to invalid IL or missing references)
		//IL_09a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a7b: Unknown result type (might be due to invalid IL or missing references)
		if ((int)checkBoxLog.CheckState == 0)
		{
			return;
		}
		if (FindAndClick(hWnd, pathKhac + "/Log_OK.png", 2, 2, "OK").HasValue)
		{
			delay_100ms(50);
		}
		if (!FindPoint(hWnd, pathKhac + "/Log_Check.png").HasValue)
		{
			return;
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
							goto IL_0464;
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
						goto IL_0464;
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
						goto IL_0464;
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
					goto IL_0464;
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
			goto IL_04bb;
		}
		goto IL_04c5;
		IL_0464:
		System.IntPtr intPtr9 = hWnd;
		value2 = val.Value;
		int num10 = ((Point)(ref value2)).X - 622 + 530;
		value2 = val.Value;
		AutoControl.SendClickOnPosition(intPtr9, num10, ((Point)(ref value2)).Y - 227 + 268 - 30, (EMouseKey)0, 1);
		debugText("lỗi");
		goto IL_04bb;
		IL_04c5:
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
		if (!val3.HasValue)
		{
			return;
		}
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
			debugText("check vào load game - " + num14);
			delay_100ms(30);
		}
		debugText("Vào Game Xong");
		delay_100ms(30);
		if (WriteMemoryData((int)processID, myPointer, offset_FPS, (double)numericUpDownFPS.Value))
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
		debugText("Reconnect!");
		setupRun();
		return;
		IL_04bb:
		delay_100ms(50);
		goto IL_04c5;
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
		//IL_0081: Unknown result type (might be due to invalid IL or missing references)
		//IL_0086: Unknown result type (might be due to invalid IL or missing references)
		//IL_0091: Unknown result type (might be due to invalid IL or missing references)
		//IL_0096: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fa: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ff: Unknown result type (might be due to invalid IL or missing references)
		//IL_0116: Unknown result type (might be due to invalid IL or missing references)
		//IL_011b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0236: Unknown result type (might be due to invalid IL or missing references)
		//IL_023b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0246: Unknown result type (might be due to invalid IL or missing references)
		//IL_024b: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a5: Unknown result type (might be due to invalid IL or missing references)
		//IL_03aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_03b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_031c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0321: Unknown result type (might be due to invalid IL or missing references)
		//IL_032c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0331: Unknown result type (might be due to invalid IL or missing references)
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
			FindsAndClick2(hWnd, pathTacVu + "/ChienDau.png", 120, -230, 50, 95, pathTruMa + "/Err2.png", "Click");
			FindsAndClick2(hWnd, pathTacVu + "/ChienDau.png", -10, -230, 50, 60, pathTruMa + "/Err2.png", "Click");
			FindsAndClick2(hWnd, pathTacVu + "/ChienDau.png", -10, -170, 50, 35, pathTruMa + "/Err1.png", "Click");
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
		PressKey("ESC");
		val = FindAndClick(hWnd, pathIconBatPet + "/Luyen.png", 5, 1, "Luyện");
		if (!val.HasValue)
		{
			PressKey("ESC");
			val = FindAndClick(hWnd, pathIconBatPet + "/Luyen.png", 5, 1, "Luyện");
		}
		if (val.HasValue)
		{
			val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
			if (val.HasValue)
			{
				System.IntPtr intPtr4 = hWnd;
				value = val.Value;
				int x3 = ((Point)(ref value)).X;
				value = val.Value;
				AutoControl.SendDragAndDropOnPosition(intPtr4, x3, ((Point)(ref value)).Y - 30, 240, 274, setupStepX, setupStepY, num);
			}
		}
		PressKey("ESC");
		PressKey("C");
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
		debugText("Hoàn Tất Setup");
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

	private Point? FindSubPointPet(System.IntPtr hWnd, string pathKhungAnhLon, int offSetX, int offSetY, int offSetW, int offSetH, string pathKhungAnhNho)
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
		return ImageScanOpenCV.FindOutPoint(val6, val2, 0.9);
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

	private bool FindsAndDoubleClickPetSubPoint(System.IntPtr hWnd, string pathKhungAnhLon, int offSetX, int offSetY, int offSetW, int offSetH, string pathKhungAnhNho, string textDebug)
	{
		//IL_016d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0172: Unknown result type (might be due to invalid IL or missing references)
		//IL_017f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0184: Unknown result type (might be due to invalid IL or missing references)
		//IL_003e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0043: Unknown result type (might be due to invalid IL or missing references)
		//IL_004c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0051: Unknown result type (might be due to invalid IL or missing references)
		//IL_005d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0062: Unknown result type (might be due to invalid IL or missing references)
		//IL_0079: Unknown result type (might be due to invalid IL or missing references)
		//IL_007e: Unknown result type (might be due to invalid IL or missing references)
		Point? val = FindPoint(hWnd, pathKhungAnhLon);
		if (val.HasValue)
		{
			List<Point> val2 = FindSubsPointPet(hWnd, pathKhungAnhLon, offSetX, offSetY, offSetW, offSetH, pathKhungAnhNho);
			Point value;
			if (val2.Count > 0)
			{
				Enumerator<Point> enumerator = val2.GetEnumerator();
				try
				{
					while (enumerator.MoveNext())
					{
						Point current = enumerator.Current;
						int x = ((Point)(ref current)).X;
						value = val.Value;
						int num = x + ((Point)(ref value)).X + offSetX;
						int y = ((Point)(ref current)).Y;
						value = val.Value;
						int num2 = y + ((Point)(ref value)).Y + offSetY;
						AutoControl.SendClickOnPosition(hWnd, num + 5, num2 + 5 - 30, (EMouseKey)0, 1);
						AutoControl.SendClickOnPosition(hWnd, num + 5, num2 + 5 - 30, (EMouseKey)0, 1);
						delay_100ms(3);
						AutoControl.SendClickOnPosition(hWnd, num + 5, num2 + 5 - 30, (EMouseKey)0, 1);
						AutoControl.SendClickOnPosition(hWnd, num + 5, num2 + 5 - 30, (EMouseKey)0, 1);
						debugText(string.Concat(new string[5]
						{
							textDebug,
							" ",
							num.ToString(),
							"-",
							num2.ToString()
						}));
						delay_100ms(5);
						DemPetClick++;
						if (DemPetClick >= 5)
						{
							break;
						}
					}
				}
				finally
				{
					((System.IDisposable)enumerator/*cast due to .constrained prefix*/).Dispose();
				}
			}
			value = val.Value;
			int num3 = ((Point)(ref value)).X + 5;
			value = val.Value;
			AutoControl.SendClickOnPosition(hWnd, num3, ((Point)(ref value)).Y + 5 - 30, (EMouseKey)0, 1);
		}
		if (DemPetClick >= 5)
		{
			DemPetClick = 0;
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
		return ImageScanOpenCV.FindOutPoints((Bitmap)val3, val2, 0.9);
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
		return ImageScanOpenCV.FindOutPoint((Bitmap)val3, val2, 0.9);
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

	public double ReadMemoryData(int pID, uint pointer, uint[] offset)
	{
		System.IntPtr handle = MemoryHelper.OpenProcess(pID, (ProcessAccessFlags)2035711);
		Process processById = Process.GetProcessById(pID);
		long num = processById.MainModule.BaseAddress.ToInt64() + pointer;
		return ReadDouble(handle, (uint)num, offset);
	}

	public bool WriteMemoryData(int pID, uint pointer, uint[] offset, double value)
	{
		System.IntPtr handle = MemoryHelper.OpenProcess(pID, (ProcessAccessFlags)2035711);
		Process processById = Process.GetProcessById(pID);
		long num = processById.MainModule.BaseAddress.ToInt64() + pointer;
		return WriteDouble(handle, (uint)num, offset, value);
	}

	private void buttonNPC1_MouseDown(object sender, MouseEventArgs e)
	{
		Cursor.Current = Cursors.Cross;
	}

	private void buttonNPC1_MouseUp(object sender, MouseEventArgs e)
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

	private void buttonNPC2_MouseUp(object sender, MouseEventArgs e)
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

	private void buttonH1_MouseUp(object sender, MouseEventArgs e)
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

	private void buttonH2_MouseUp(object sender, MouseEventArgs e)
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

	private void buttonH3_MouseUp(object sender, MouseEventArgs e)
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

	private void buttonH4_MouseUp(object sender, MouseEventArgs e)
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

	private void buttonC1_MouseUp(object sender, MouseEventArgs e)
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
	}

	private void buttonC2_MouseUp(object sender, MouseEventArgs e)
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
	}

	private void buttonRom_MouseUp(object sender, MouseEventArgs e)
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
	}

	private void checkBoxCauCa_CheckedChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		if ((int)checkBoxCauCa.CheckState == 1)
		{
			checkBoxNongTrai.CheckState = (CheckState)0;
			checkBoxHaiThuoc.CheckState = (CheckState)0;
		}
	}

	private void checkBoxNongTrai_CheckedChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		if ((int)checkBoxNongTrai.CheckState == 1)
		{
			checkBoxHaiThuoc.CheckState = (CheckState)0;
			checkBoxCauCa.CheckState = (CheckState)0;
		}
	}

	private void checkBoxHaiThuoc_CheckedChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		if ((int)checkBoxHaiThuoc.CheckState == 1)
		{
			checkBoxNongTrai.CheckState = (CheckState)0;
			checkBoxCauCa.CheckState = (CheckState)0;
		}
	}

	private Point? FindAndClick3(System.IntPtr hWnd, Image chupwindow, string pathFind, int offsetX, int offsetY)
	{
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_001f: Unknown result type (might be due to invalid IL or missing references)
		//IL_002c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0031: Unknown result type (might be due to invalid IL or missing references)
		Point? result = FindPoint3(hWnd, chupwindow, pathFind);
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

	private Point? FindPoint3(System.IntPtr hWnd, Image chupWindow, string pathCanTim)
	{
		//IL_0009: Unknown result type (might be due to invalid IL or missing references)
		//IL_001d: Expected O, but got Unknown
		Bitmap image = ImageScanOpenCV.GetImage(pathCanTim);
		return ImageScanOpenCV.FindOutPoint((Bitmap)chupWindow, image, 0.9);
	}

	private void HaiThuoc()
	{
		int num = 0;
		Image chupwindow = CaptureHelper.CaptureWindow(hWnd);
		FindAndClick3(hWnd, chupwindow, pathTacVu + "/ThongBaoCuongDaoBangHoi.png", 2, 2);
		FindAndClick3(hWnd, chupwindow, pathKhac + "/Log_OK.png", 2, 2);
		FindAndClick3(hWnd, chupwindow, pathKhac + "/Auto_Co.png", 2, 2);
		if (FindPoint(hWnd, pathKhac + "/HTC_DauX.png").HasValue)
		{
			return;
		}
		while (WaitAvatar(hWnd))
		{
			Image chupwindow2 = CaptureHelper.CaptureWindow(hWnd);
			FindAndClick3(hWnd, chupwindow2, pathTacVu + "/ThongBaoCuongDaoBangHoi.png", 2, 2);
			FindAndClick3(hWnd, chupwindow2, pathKhac + "/Log_OK.png", 2, 2);
			FindAndClick3(hWnd, chupwindow2, pathKhac + "/Auto_Co.png", 2, 2);
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

	private void CauCa()
	{
		int num = 0;
		Image chupwindow = CaptureHelper.CaptureWindow(hWnd);
		FindAndClick3(hWnd, chupwindow, pathTacVu + "/ThongBaoCuongDaoBangHoi.png", 2, 2);
		FindAndClick3(hWnd, chupwindow, pathKhac + "/Log_OK.png", 2, 2);
		FindAndClick3(hWnd, chupwindow, pathKhac + "/Auto_Co.png", 2, 2);
		if (FindPoint(hWnd, pathKhac + "/HTC_DauX.png").HasValue)
		{
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
		//IL_00f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fa: Unknown result type (might be due to invalid IL or missing references)
		//IL_0105: Unknown result type (might be due to invalid IL or missing references)
		//IL_010a: Unknown result type (might be due to invalid IL or missing references)
		//IL_036b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0370: Unknown result type (might be due to invalid IL or missing references)
		//IL_037b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0380: Unknown result type (might be due to invalid IL or missing references)
		Point? val = FindPoint(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png");
		while (!val.HasValue)
		{
			Image chupwindow = CaptureHelper.CaptureWindow(hWnd);
			FindAndClick3(hWnd, chupwindow, pathTacVu + "/ThongBaoCuongDaoBangHoi.png", 2, 2);
			FindAndClick3(hWnd, chupwindow, pathKhac + "/Log_OK.png", 2, 2);
			FindAndClick3(hWnd, chupwindow, pathKhac + "/Auto_Co.png", 2, 2);
			SendClickOnPosition(hWnd, NguoiRom_X, NguoiRom_Y, (EMouseKey)0);
			delay_100ms(5);
			val = FindPoint(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png");
		}
		delay_100ms(5);
		System.IntPtr controlHandle = hWnd;
		Point value = val.Value;
		int x = ((Point)(ref value)).X;
		value = val.Value;
		SendClickOnPosition(controlHandle, x, ((Point)(ref value)).Y - 117, (EMouseKey)0);
		val = FindPoint(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png");
		while (!val.HasValue)
		{
			Image chupwindow2 = CaptureHelper.CaptureWindow(hWnd);
			FindAndClick3(hWnd, chupwindow2, pathTacVu + "/ThongBaoCuongDaoBangHoi.png", 2, 2);
			FindAndClick3(hWnd, chupwindow2, pathKhac + "/Log_OK.png", 2, 2);
			FindAndClick3(hWnd, chupwindow2, pathKhac + "/Auto_Co.png", 2, 2);
			val = FindPoint(hWnd, pathAutoNhanNVPB + "/RoiKhoi.png");
		}
		delay_100ms(3);
		string text = "";
		text = ((step != 0) ? ((Control)comboBox2).Text : ((Control)comboBox1).Text);
		if (checkNongTrai(text, val))
		{
			int num = 0;
			Point? val2 = FindPoint(hWnd, pathKhac + "/HTC_ThuHoach.png");
			while (!val2.HasValue)
			{
				Image val3 = CaptureHelper.CaptureWindow(hWnd);
				FindAndClick3(hWnd, val3, pathTacVu + "/ThongBaoCuongDaoBangHoi.png", 2, 2);
				FindAndClick3(hWnd, val3, pathKhac + "/Log_OK.png", 2, 2);
				FindAndClick3(hWnd, val3, pathKhac + "/Auto_Co.png", 2, 2);
				val2 = FindPoint3(hWnd, val3, pathKhac + "/HTC_ThuHoach.png");
				SendClickUpOnPosition(hWnd, ThuHoach_X, ThuHoach_Y, (EMouseKey)0);
				delay_100ms(10);
				SendClickUpOnPosition(hWnd, NguoiRom_X, NguoiRom_Y, (EMouseKey)0);
				num++;
				if (num >= 840)
				{
					break;
				}
			}
			if (val2.HasValue)
			{
				System.IntPtr controlHandle2 = hWnd;
				value = val2.Value;
				int x2 = ((Point)(ref value)).X;
				value = val2.Value;
				SendClickOnPosition(controlHandle2, x2, ((Point)(ref value)).Y, (EMouseKey)0);
				delay_100ms(5);
			}
			SendClickUpOnPosition(hWnd, ThuHoach_X, ThuHoach_Y, (EMouseKey)0);
			SendClickUpOnPosition(hWnd, ThuHoach_X, ThuHoach_Y, (EMouseKey)0);
			delay_100ms(2);
			num = 0;
			while (!FindPoint(hWnd, pathKhac + "/HTC_DauX.png").HasValue)
			{
				Image chupwindow3 = CaptureHelper.CaptureWindow(hWnd);
				FindAndClick3(hWnd, chupwindow3, pathTacVu + "/ThongBaoCuongDaoBangHoi.png", 2, 2);
				FindAndClick3(hWnd, chupwindow3, pathKhac + "/Log_OK.png", 2, 2);
				FindAndClick3(hWnd, chupwindow3, pathKhac + "/Auto_Co.png", 2, 2);
				SendClickOnPosition(hWnd, ThuHoach_X, ThuHoach_Y, (EMouseKey)0);
				debugText("Thu Hoạch");
				delay_100ms(5);
				num++;
				if (num >= 840)
				{
					break;
				}
			}
			num = 0;
			while (FindPoint(hWnd, pathKhac + "/HTC_DauX.png").HasValue)
			{
				num++;
				if (num >= 840)
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
		FindAndClick3(hWnd, chupwindow4, pathTacVu + "/ThongBaoCuongDaoBangHoi.png", 2, 2);
		FindAndClick3(hWnd, chupwindow4, pathKhac + "/Log_OK.png", 2, 2);
		FindAndClick3(hWnd, chupwindow4, pathKhac + "/Auto_Co.png", 2, 2);
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
		//IL_017d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0182: Unknown result type (might be due to invalid IL or missing references)
		//IL_018f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0194: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_01be: Unknown result type (might be due to invalid IL or missing references)
		//IL_01cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d0: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_01fa: Unknown result type (might be due to invalid IL or missing references)
		//IL_0207: Unknown result type (might be due to invalid IL or missing references)
		//IL_020c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0231: Unknown result type (might be due to invalid IL or missing references)
		//IL_0236: Unknown result type (might be due to invalid IL or missing references)
		//IL_0243: Unknown result type (might be due to invalid IL or missing references)
		//IL_0248: Unknown result type (might be due to invalid IL or missing references)
		X *= 10.0;
		Y *= 10.0;
		debugText("Đi Đến Tọa Độ Chỉ Định");
		bool flag = WriteMemoryData((int)processID, myPointer, offset_ToaDoX, X);
		bool flag2 = WriteMemoryData((int)processID, myPointer, offset_ToaDoY, Y);
		while (!flag || !flag2)
		{
			flag = WriteMemoryData((int)processID, myPointer, offset_ToaDoX, X);
			flag2 = WriteMemoryData((int)processID, myPointer, offset_ToaDoY, Y);
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
	}

	private bool checkNongTrai(string NongSan, Point? NutRoiKhoi)
	{
		//IL_0310: Unknown result type (might be due to invalid IL or missing references)
		//IL_0315: Unknown result type (might be due to invalid IL or missing references)
		//IL_032c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0331: Unknown result type (might be due to invalid IL or missing references)
		//IL_042a: Unknown result type (might be due to invalid IL or missing references)
		//IL_042f: Unknown result type (might be due to invalid IL or missing references)
		//IL_043a: Unknown result type (might be due to invalid IL or missing references)
		//IL_043f: Unknown result type (might be due to invalid IL or missing references)
		//IL_046a: Unknown result type (might be due to invalid IL or missing references)
		//IL_046f: Unknown result type (might be due to invalid IL or missing references)
		//IL_047a: Unknown result type (might be due to invalid IL or missing references)
		//IL_047f: Unknown result type (might be due to invalid IL or missing references)
		//IL_04aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_04af: Unknown result type (might be due to invalid IL or missing references)
		//IL_04ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_04bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_04e7: Unknown result type (might be due to invalid IL or missing references)
		//IL_04ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_04f7: Unknown result type (might be due to invalid IL or missing references)
		//IL_04fc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0524: Unknown result type (might be due to invalid IL or missing references)
		//IL_0529: Unknown result type (might be due to invalid IL or missing references)
		//IL_0534: Unknown result type (might be due to invalid IL or missing references)
		//IL_0539: Unknown result type (might be due to invalid IL or missing references)
		int num = 0;
		int num2 = 0;
		switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(NongSan))
		{
		case 433236260u:
			if (!(NongSan == "Lúa Mạch Cấp 1"))
			{
				goto default;
			}
			num = 1;
			num2 = 1;
			break;
		case 37972012u:
			if (!(NongSan == "Lúa Gạo Cấp 1"))
			{
				goto default;
			}
			num = 1;
			num2 = 2;
			break;
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
			return false;
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
					delay_100ms(3);
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

	private void loadFile(string url)
	{
		//IL_004d: Unknown result type (might be due to invalid IL or missing references)
		System.DateTime lastWriteTime = File.GetLastWriteTime(url);
		if (lastWriteTime.Year * 10000 + lastWriteTime.Month * 100 + lastWriteTime.Day < 0)
		{
			MessageBox.Show("Bản Lưu Thiết Lập " + ((Control)this).Text + " Đã Cũ Do Có Thay Đổi/Thêm Các Tùy Chọn.\r\nVui Lòng Lưu Lại Thiết Lập AutoLog!", "BMx-Tool: Daily", (MessageBoxButtons)0, (MessageBoxIcon)64);
			return;
		}
		string[] array = File.ReadAllLines(url);
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
	}

	private double CheckLoadMap()
	{
		double num = ReadMemoryData((int)processID, myPointer_map_load_data, offset_map_data);
		double num2 = ReadMemoryData((int)processID, myPointer_map_load_data, offset_map_load);
		if (num == 100.0)
		{
			return 0.0;
		}
		return num2 / num * 100.0;
	}

	private int checkIDMap()
	{
		return (int)ReadMemoryData((int)processID, myPointer_map_id, offset_map_id);
	}

	private string checkTenMap()
	{
		string[] array = datatele2.Split("\r\n", (StringSplitOptions)0);
		for (int i = 0; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array); i++)
		{
			string[] array2 = array[i].Split("\t", (StringSplitOptions)0);
			if (array2[3].Trim().ToUpper().CompareTo(checkIDMap().ToString().ToUpper()) == 0)
			{
				return array2[2];
			}
		}
		return " ";
	}

	private void button1_Click(object sender, EventArgs e)
	{
		//IL_0054: Unknown result type (might be due to invalid IL or missing references)
		//IL_005a: Expected O, but got Unknown
		dataGridView1.Rows.Clear();
		loadFile(pathAutoClick + "/Tele/" + ((Control)comboBoxGroupName2).Text + ".txt");
		TextWriter val = (TextWriter)new StreamWriter(pathData + "/HoTroQ/" + nameUser + "/data.txt");
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
	}

	private void buttonAddGroup_Click(object sender, EventArgs e)
	{
		//IL_0023: Unknown result type (might be due to invalid IL or missing references)
		//IL_0029: Expected O, but got Unknown
		//IL_015a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0160: Expected O, but got Unknown
		//IL_0253: Unknown result type (might be due to invalid IL or missing references)
		string text = ((Control)comboBoxGroupName2).Text;
		TextWriter val = (TextWriter)new StreamWriter(pathAutoClick + "/Tele/" + text + ".txt");
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
		if (!comboBoxGroupName2.Items.Contains((object)text))
		{
			comboBoxGroupName2.Items.Add((object)text);
		}
		TextWriter val2 = (TextWriter)new StreamWriter(pathData + "/HoTroQ/" + nameUser + "/data.txt");
		for (int k = 0; k < dataGridView1.Rows.Count - 1; k++)
		{
			for (int l = 0; l < ((BaseCollection)dataGridView1.Columns).Count - 2; l++)
			{
				if (dataGridView1.Rows[k].Cells[l].Value == null)
				{
					val2.Write(" ");
				}
				else
				{
					val2.Write(dataGridView1.Rows[k].Cells[l].Value.ToString() ?? "");
				}
				val2.Write("\t");
			}
			val2.WriteLine();
		}
		val2.Close();
		MessageBox.Show("Đã Lưu");
	}

	private void button2_Click(object sender, EventArgs e)
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

	private void button4_Click(object sender, EventArgs e)
	{
		//IL_001e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0023: Unknown result type (might be due to invalid IL or missing references)
		//IL_0024: Unknown result type (might be due to invalid IL or missing references)
		//IL_0026: Invalid comparison between Unknown and I4
		//IL_0085: Unknown result type (might be due to invalid IL or missing references)
		DialogResult val = MessageBox.Show("Xóa File " + ((Control)comboBoxGroupName2).Text, "BMx-Tool", (MessageBoxButtons)4, (MessageBoxIcon)32);
		if ((int)val == 6)
		{
			File.Delete(pathAutoClick + "/Tele/" + ((Control)comboBoxGroupName2).Text + ".txt");
			comboBoxGroupName2.Items.Remove((object)((Control)comboBoxGroupName2).Text);
			((Control)comboBoxGroupName2).Text = "Nhập Hoặc Chọn Tên Nhóm";
			MessageBox.Show("Đã Xóa");
		}
	}

	private void delay2_100ms(int x)
	{
		//IL_001f: Unknown result type (might be due to invalid IL or missing references)
		for (double num = 0.0; num < (double)x; num += 1.0)
		{
			Thread.Sleep(TimeSpan.FromSeconds(0.1));
		}
	}

	private void PressKey_tele(string x)
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
		debugText("Đã Nhấn " + x);
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
			debugText(textDebug);
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

	private int ToaDoMap(string map)
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
		string[] array = datatele.Split("\r\n", (StringSplitOptions)0);
		for (int i = 0; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array); i++)
		{
			string[] array2 = array[i].Split("\t", (StringSplitOptions)0);
			if (array2[2].Trim().ToUpper().CompareTo(map.ToUpper()) == 0)
			{
				return int.Parse(array2[0]) * 10000 + int.Parse(array2[1]) * 10 + num;
			}
		}
		return 0;
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
			goto IL_0113;
		case 3524001323u:
			if (!(text2 == "tứ tức đảo"))
			{
				break;
			}
			goto IL_0113;
		case 2213748702u:
			if (!(text2 == "vĩnh dạ cảng"))
			{
				break;
			}
			goto IL_0113;
		case 2493701944u:
			if (!(text2 == "mã thạch tuyết"))
			{
				break;
			}
			goto IL_0113;
		case 2640176833u:
			if (!(text2 == "thiên đường thần thánh"))
			{
				break;
			}
			goto IL_0113;
		case 3182312008u:
			if (!(text2 == "thiên không thành"))
			{
				break;
			}
			goto IL_0113;
		case 4281863825u:
			if (!(text2 == "mị hoặc lâm"))
			{
				break;
			}
			goto IL_0113;
		case 4141296587u:
			{
				if (!(text2 == "điêu linh thôn"))
				{
					break;
				}
				goto IL_0113;
			}
			IL_0113:
			num = 2;
			break;
		}
		string[] array = datatele2.Split("\r\n", (StringSplitOptions)0);
		for (int i = 0; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array); i++)
		{
			string[] array2 = array[i].Split("\t", (StringSplitOptions)0);
			if (array2[2].Trim().ToUpper().CompareTo(map.Trim().ToUpper()) == 0)
			{
				return new int[4]
				{
					int.Parse(array2[0]),
					int.Parse(array2[1]),
					int.Parse(array2[3]),
					num
				};
			}
		}
		return new int[4] { 0, 0, 999, 0 };
	}

	private void PhuToiMap3(string maps, double X, double Y, bool team)
	{
		//IL_0250: Unknown result type (might be due to invalid IL or missing references)
		//IL_0255: Unknown result type (might be due to invalid IL or missing references)
		//IL_0266: Unknown result type (might be due to invalid IL or missing references)
		//IL_026b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0292: Unknown result type (might be due to invalid IL or missing references)
		//IL_0297: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_0316: Unknown result type (might be due to invalid IL or missing references)
		//IL_031b: Unknown result type (might be due to invalid IL or missing references)
		//IL_032c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0331: Unknown result type (might be due to invalid IL or missing references)
		int timeDelay = Settings.Default.timeDelay;
		int num = 500 + 500 * timeDelay;
		int num2 = ToaDoMap(maps);
		if (num2 != 0)
		{
			while (!FindPoint(hWnd, pathMaps + "/map.png").HasValue)
			{
				PressKey_tele("M");
				delay2_100ms(2);
			}
			WriteMemoryData((int)processID, myPointer, offset_ToaDoX, X * 10.0);
			WriteMemoryData((int)processID, myPointer, offset_ToaDoY, Y * 10.0);
			int num3 = num2 / 10000;
			int num4 = num2 % 10;
			int num5 = num2 - num3 * 10000 - num4;
			if (num4 == 1)
			{
				if (!FindPoint(hWnd, pathMaps + "/checkmap.png").HasValue)
				{
					AutoControl.SendClickOnPosition(hWnd, 917, 562, (EMouseKey)0, 1);
					debugText("Trang 1");
					delay2_100ms(5);
				}
			}
			else if (FindPoint(hWnd, pathMaps + "/checkmap.png").HasValue)
			{
				AutoControl.SendClickOnPosition(hWnd, 917, 562, (EMouseKey)0, 1);
				debugText("Trang 2");
				delay2_100ms(5);
			}
			SendClickOnPosition(hWnd, num3, num5 / 10, (EMouseKey)0);
			if (team)
			{
				delay2_100ms(2);
				if (FindAndClick_tele2(hWnd, pathKhac + "/Auto_Nhom.png", 1, 1, "Nhóm").HasValue)
				{
					WriteMemoryData((int)processID, myPointer, offset_ToaDoX, X * 10.0);
					WriteMemoryData((int)processID, myPointer, offset_ToaDoY, Y * 10.0);
					AutoControl.SendKeyBoardPress(hWnd, (VKeys)13);
				}
			}
			while (true)
			{
				if (num > 0)
				{
					WriteMemoryData((int)processID, myPointer, offset_ToaDoX, X * 10.0);
					WriteMemoryData((int)processID, myPointer, offset_ToaDoY, Y * 10.0);
					num--;
					continue;
				}
				if (WaitAvatar(hWnd))
				{
					break;
				}
				num = 500 + 500 * timeDelay;
			}
			debugText("Đã tới " + maps);
			delay2_100ms(5);
		}
		else
		{
			PressKey_tele("P");
			delay2_100ms(5);
			Point? val = FindPoint(hWnd, pathTacVu + "/ChienDau.png");
			if (val.HasValue)
			{
				WriteMemoryData((int)processID, myPointer, offset_ToaDoX, X * 10.0);
				WriteMemoryData((int)processID, myPointer, offset_ToaDoY, Y * 10.0);
				System.IntPtr intPtr = hWnd;
				Point value = val.Value;
				int num6 = ((Point)(ref value)).X + 200;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr, num6, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
				delay2_100ms(2);
				System.IntPtr intPtr2 = hWnd;
				value = val.Value;
				int num7 = ((Point)(ref value)).X + 200;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr2, num7, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
				delay2_100ms(5);
				System.IntPtr intPtr3 = hWnd;
				value = val.Value;
				int num8 = ((Point)(ref value)).X + 200;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr3, num8, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
				delay2_100ms(2);
				System.IntPtr intPtr4 = hWnd;
				value = val.Value;
				int num9 = ((Point)(ref value)).X + 200;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr4, num9, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
				delay2_100ms(5);
			}
			PressKey_tele("ESC");
		}
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
		//IL_02b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c7: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f1: Unknown result type (might be due to invalid IL or missing references)
		//IL_02fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_0303: Unknown result type (might be due to invalid IL or missing references)
		//IL_0328: Unknown result type (might be due to invalid IL or missing references)
		//IL_032d: Unknown result type (might be due to invalid IL or missing references)
		//IL_033a: Unknown result type (might be due to invalid IL or missing references)
		//IL_033f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0364: Unknown result type (might be due to invalid IL or missing references)
		//IL_0369: Unknown result type (might be due to invalid IL or missing references)
		//IL_0376: Unknown result type (might be due to invalid IL or missing references)
		//IL_037b: Unknown result type (might be due to invalid IL or missing references)
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
				PressKey_tele("M");
				delay2_100ms(2);
			}
			debugText("đê\u0301n đây");
			WriteMemoryData((int)processID, myPointer, offset_ToaDoX, X * 10.0);
			WriteMemoryData((int)processID, myPointer, offset_ToaDoY, Y * 10.0);
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
				delay2_100ms(2);
				if (FindAndClick_tele2(hWnd, pathKhac + "/Auto_Nhom.png", 1, 1, "Nhóm").HasValue)
				{
					WriteMemoryData((int)processID, myPointer, offset_ToaDoX, X * 10.0);
					WriteMemoryData((int)processID, myPointer, offset_ToaDoY, Y * 10.0);
					AutoControl.SendKeyBoardPress(hWnd, (VKeys)13);
				}
			}
			debugText("Map - 0%");
			while (true)
			{
				if (num > 0)
				{
					WriteMemoryData((int)processID, myPointer, offset_ToaDoX, X * 10.0);
					WriteMemoryData((int)processID, myPointer, offset_ToaDoY, Y * 10.0);
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
			delay2_100ms(5);
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
					WriteMemoryData((int)processID, myPointer, offset_ToaDoX, X * 10.0);
					WriteMemoryData((int)processID, myPointer, offset_ToaDoY, Y * 10.0);
				}
				System.IntPtr controlHandle = hWnd;
				Point value = val.Value;
				int x2 = ((Point)(ref value)).X - 5;
				value = val.Value;
				SendClickOnPosition(controlHandle, x2, ((Point)(ref value)).Y - 90, (EMouseKey)0);
				delay_100ms(2);
				System.IntPtr controlHandle2 = hWnd;
				value = val.Value;
				int x3 = ((Point)(ref value)).X - 5;
				value = val.Value;
				SendClickOnPosition(controlHandle2, x3, ((Point)(ref value)).Y - 90, (EMouseKey)0);
				delay_100ms(5);
				System.IntPtr controlHandle3 = hWnd;
				value = val.Value;
				int x4 = ((Point)(ref value)).X - 5;
				value = val.Value;
				SendClickOnPosition(controlHandle3, x4, ((Point)(ref value)).Y - 90, (EMouseKey)0);
				delay_100ms(2);
				System.IntPtr controlHandle4 = hWnd;
				value = val.Value;
				int x5 = ((Point)(ref value)).X - 5;
				value = val.Value;
				SendClickOnPosition(controlHandle4, x5, ((Point)(ref value)).Y - 90, (EMouseKey)0);
				delay_100ms(5);
			}
			break;
		}
		while (num7 < 300);
		PressKey("ESC");
	}

	private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
	{
		//IL_0002: Unknown result type (might be due to invalid IL or missing references)
		//IL_0008: Expected O, but got Unknown
		//IL_006a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0070: Invalid comparison between Unknown and I4
		//IL_00a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_00bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c9: Expected O, but got Unknown
		//IL_00eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f5: Expected O, but got Unknown
		DataGridView val = (DataGridView)sender;
		string name = val.Columns[e.ColumnIndex].Name;
		string text = name;
		if (!(text == "Delete"))
		{
			if (!(text == "Tele3"))
			{
				if (!(text == "Tele4"))
				{
					return;
				}
				bool IsStop_tele2 = false;
				T_Tele2 = new System.Threading.Tasks.Task((Action)delegate
				{
					//IL_0092: Unknown result type (might be due to invalid IL or missing references)
					//IL_00b8: Unknown result type (might be due to invalid IL or missing references)
					//IL_0114: Unknown result type (might be due to invalid IL or missing references)
					//IL_013a: Unknown result type (might be due to invalid IL or missing references)
					int num = default(int);
					int num2 = default(int);
					while (!IsStop_tele2)
					{
						int.TryParse(dataGridView1.CurrentRow.Cells[1].Value.ToString(), ref num);
						int.TryParse(dataGridView1.CurrentRow.Cells[2].Value.ToString(), ref num2);
						int index = ((DataGridViewBand)dataGridView1.CurrentRow).Index;
						((DataGridViewBand)dataGridView1.Rows[index]).DefaultCellStyle.BackColor = Color.Teal;
						((DataGridViewBand)dataGridView1.Rows[index]).DefaultCellStyle.ForeColor = Color.White;
						PhuToiMap2(dataGridView1.CurrentRow.Cells[0].Value.ToString(), num, num2, team: true);
						((DataGridViewBand)dataGridView1.Rows[index]).DefaultCellStyle.BackColor = Color.White;
						((DataGridViewBand)dataGridView1.Rows[index]).DefaultCellStyle.ForeColor = Color.Black;
						IsStop_tele2 = true;
						T_Tele2.Wait();
					}
				});
				T_Tele2.Start();
				return;
			}
			bool IsStop_tele3 = false;
			T_Tele = new System.Threading.Tasks.Task((Action)delegate
			{
				//IL_0092: Unknown result type (might be due to invalid IL or missing references)
				//IL_00b8: Unknown result type (might be due to invalid IL or missing references)
				//IL_0114: Unknown result type (might be due to invalid IL or missing references)
				//IL_013a: Unknown result type (might be due to invalid IL or missing references)
				int num = default(int);
				int num2 = default(int);
				while (!IsStop_tele3)
				{
					int.TryParse(dataGridView1.CurrentRow.Cells[1].Value.ToString(), ref num);
					int.TryParse(dataGridView1.CurrentRow.Cells[2].Value.ToString(), ref num2);
					int index = ((DataGridViewBand)dataGridView1.CurrentRow).Index;
					((DataGridViewBand)dataGridView1.Rows[index]).DefaultCellStyle.BackColor = Color.Teal;
					((DataGridViewBand)dataGridView1.Rows[index]).DefaultCellStyle.ForeColor = Color.White;
					PhuToiMap2(dataGridView1.CurrentRow.Cells[0].Value.ToString(), num, num2, team: false);
					((DataGridViewBand)dataGridView1.Rows[index]).DefaultCellStyle.BackColor = Color.White;
					((DataGridViewBand)dataGridView1.Rows[index]).DefaultCellStyle.ForeColor = Color.Black;
					IsStop_tele3 = true;
					T_Tele.Wait();
				}
			});
			T_Tele.Start();
		}
		else if ((int)MessageBox.Show("Chắc chắn Xóa ?", "Cảnh Báo", (MessageBoxButtons)4, (MessageBoxIcon)48) == 6)
		{
			dataGridView1.Rows.RemoveAt(((DataGridViewBand)dataGridView1.CurrentRow).Index);
			MessageBox.Show("Xong", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)64);
		}
	}

	private void HoTroQ200_FormClosing(object sender, FormClosingEventArgs e)
	{
		//IL_0022: Unknown result type (might be due to invalid IL or missing references)
		//IL_0028: Expected O, but got Unknown
		string text = "data";
		TextWriter val = (TextWriter)new StreamWriter(pathData + "/HoTroQ/" + nameUser + "/data.txt");
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
		ViTriTrain1_X = x2 - x;
		ViTriTrain1_Y = y2 - y;
		((Control)button5).BackColor = Color.Green;
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
		ViTriTrain2_X = x2 - x;
		ViTriTrain2_Y = y2 - y;
		((Control)button3).BackColor = Color.Green;
	}

	private void button6_Click(object sender, EventArgs e)
	{
		comboBoxPT1.Items.Clear();
		comboBoxPT2.Items.Clear();
		comboBoxPT3.Items.Clear();
		comboBoxPT4.Items.Clear();
		Process[] processesByName = Process.GetProcessesByName("FlashGame");
		if (Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)processesByName) <= 0)
		{
			return;
		}
		Process[] array = processesByName;
		foreach (Process val in array)
		{
			if (val.MainWindowTitle != accCheck)
			{
				comboBoxPT1.Items.Add((object)val.MainWindowTitle);
				comboBoxPT2.Items.Add((object)val.MainWindowTitle);
				comboBoxPT3.Items.Add((object)val.MainWindowTitle);
				comboBoxPT4.Items.Add((object)val.MainWindowTitle);
			}
		}
	}

	private void Train()
	{
		//IL_03a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_03b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_03b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_03de: Unknown result type (might be due to invalid IL or missing references)
		//IL_03e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_03f0: Unknown result type (might be due to invalid IL or missing references)
		//IL_03f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_041a: Unknown result type (might be due to invalid IL or missing references)
		//IL_041f: Unknown result type (might be due to invalid IL or missing references)
		//IL_042c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0431: Unknown result type (might be due to invalid IL or missing references)
		//IL_0456: Unknown result type (might be due to invalid IL or missing references)
		//IL_045b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0468: Unknown result type (might be due to invalid IL or missing references)
		//IL_046d: Unknown result type (might be due to invalid IL or missing references)
		if (CheckNgoaiTran())
		{
			if (TrongTran)
			{
				TrongTran = false;
				Turn_Count++;
				if (Turn_Count >= TurnReset)
				{
					FindAndClick(hWnd, pathKhac + "/Auto_mini1.png", 1, 1, "Auto");
					ResetAuto(hWnd);
					if (checkBoxPT1.Checked)
					{
						ResetAuto(FindWindowHandle(null, ((Control)comboBoxPT1).Text));
					}
					if (checkBoxPT2.Checked)
					{
						ResetAuto(FindWindowHandle(null, ((Control)comboBoxPT2).Text));
					}
					if (checkBoxPT3.Checked)
					{
						ResetAuto(FindWindowHandle(null, ((Control)comboBoxPT3).Text));
					}
					if (checkBoxPT4.Checked)
					{
						ResetAuto(FindWindowHandle(null, ((Control)comboBoxPT4).Text));
					}
					Turn_Count = 0;
				}
				checkPhucHoi(hWnd, 0);
				if (checkBoxPT1.Checked)
				{
					checkPhucHoi(FindWindowHandle(null, ((Control)comboBoxPT1).Text), 1);
				}
				if (checkBoxPT2.Checked)
				{
					checkPhucHoi(FindWindowHandle(null, ((Control)comboBoxPT2).Text), 2);
				}
				if (checkBoxPT3.Checked)
				{
					checkPhucHoi(FindWindowHandle(null, ((Control)comboBoxPT3).Text), 3);
				}
				if (checkBoxPT4.Checked)
				{
					checkPhucHoi(FindWindowHandle(null, ((Control)comboBoxPT4).Text), 4);
				}
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
				bool flag = WriteMemoryData((int)processID, myPointer, offset_ToaDoX, ViTriNhanVat_X);
				bool flag2 = WriteMemoryData((int)processID, myPointer, offset_ToaDoY, ViTriNhanVat_Y);
				if (flag && flag2)
				{
					SendClickOnPosition(hWnd, 196, 344, (EMouseKey)0);
					delay_100ms(5);
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
		if (!CheckNgoaiTran())
		{
			checkNgoaiTran = 0;
			if (!TrongTran)
			{
				TrongTran = true;
				debugText("Trong Trận");
			}
		}
	}

	private bool CheckNgoaiTran()
	{
		if (FindPoint(hWnd, pathKhac + "/Auto_mini2.png").HasValue)
		{
			return true;
		}
		if (FindPoint(hWnd, pathKhac + "/Auto_mini1.png").HasValue)
		{
			return true;
		}
		return false;
	}

	private void ResetAuto(System.IntPtr acc)
	{
		SendClickUpOnPosition(acc, 20, 50, (EMouseKey)0);
		delay_100ms(3);
		SendClickOnPosition(acc, 508, 319, (EMouseKey)0);
		delay_100ms(5);
		SendClickUpOnPosition(acc, 20, 50, (EMouseKey)0);
		delay_100ms(3);
		SendClickOnPosition(acc, 508, 319, (EMouseKey)0);
		delay_100ms(2);
		SendClickUpOnPosition(acc, 20, 50, (EMouseKey)0);
		delay_100ms(2);
	}

	private double CheckDataMemory(System.IntPtr hWnd2, uint[] offset)
	{
		GetWindowThreadProcessId(hWnd2, out var processId);
		return ReadMemoryData((int)processId, myPointer2, offset);
	}

	private void checkPhucHoi(System.IntPtr acc, int print)
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
		switch (print)
		{
		default:
			return;
		case 0:
			((Control)labelAcccheck).Text = string.Concat(new string[17]
			{
				accCheck,
				"\r\n",
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
			break;
		case 1:
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
			break;
		case 2:
			((Control)labelpt2).Text = string.Concat(new string[15]
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
			break;
		case 3:
			((Control)labelpt3).Text = string.Concat(new string[15]
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
			break;
		case 4:
			((Control)labelpt4).Text = string.Concat(new string[15]
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
			break;
		}
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
			SendClickOnPosition(acc, 73, 38, (EMouseKey)0);
			delay_100ms(10);
			debugText("NV");
			break;
		case 2:
			SendClickOnPosition(acc, 73, 68, (EMouseKey)0);
			delay_100ms(10);
			debugText("Pet");
			break;
		case 12:
			SendClickOnPosition(acc, 73, 38, (EMouseKey)0);
			delay_100ms(10);
			SendClickOnPosition(acc, 73, 68, (EMouseKey)0);
			delay_100ms(10);
			debugText("NV+Pet");
			break;
		}
	}

	private void setupAccTrain(System.IntPtr acc)
	{
		//IL_000c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0013: Unknown result type (might be due to invalid IL or missing references)
		//IL_0018: Unknown result type (might be due to invalid IL or missing references)
		//IL_001b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0021: Unknown result type (might be due to invalid IL or missing references)
		//IL_0073: Unknown result type (might be due to invalid IL or missing references)
		GetWindowThreadProcessId(acc, out var processId);
		RECT val = default(RECT);
		val = AutoControl.GetWindowRect(acc);
		SetWindowPos(acc, 0, val.Left, val.Top, 533, 362, 2);
		if (WriteMemoryData((int)processId, myPointer, offset_FPS, 50.0))
		{
			SendClickOnPosition(acc, 33, 221, (EMouseKey)0);
			Thread.Sleep(TimeSpan.FromSeconds(0.1));
			SendClickOnPosition(acc, 33, 255, (EMouseKey)0);
			debugText("Write FPS: 50");
		}
		else
		{
			debugText("Write FPS False");
		}
		delay_100ms(10);
		FindAndClick(acc, pathKhac + "/Auto_mini2.png", 1, 1, "Auto");
		SendClickUpOnPosition(acc, 20, 50, (EMouseKey)0);
		delay_100ms(3);
		FindAndClick(acc, pathKhac + "/Auto_mini1.png", 1, 1, "Auto");
		SendClickUpOnPosition(acc, 20, 50, (EMouseKey)0);
		delay_100ms(2);
	}

	private void normalSize(System.IntPtr acc)
	{
		//IL_000c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0013: Unknown result type (might be due to invalid IL or missing references)
		//IL_0018: Unknown result type (might be due to invalid IL or missing references)
		//IL_001b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0021: Unknown result type (might be due to invalid IL or missing references)
		//IL_0073: Unknown result type (might be due to invalid IL or missing references)
		GetWindowThreadProcessId(acc, out var processId);
		RECT val = default(RECT);
		val = AutoControl.GetWindowRect(acc);
		SetWindowPos(acc, 0, val.Left, val.Top, 1066, 724, 2);
		if (WriteMemoryData((int)processId, myPointer, offset_FPS, 50.0))
		{
			SendClickOnPosition(acc, 58, 436, (EMouseKey)0);
			Thread.Sleep(TimeSpan.FromSeconds(0.1));
			SendClickOnPosition(acc, 58, 500, (EMouseKey)0);
			debugText("Write FPS: 50");
		}
		else
		{
			debugText("Write FPS False");
		}
	}

	private void checkBoxMapTrain_CheckedChanged(object sender, EventArgs e)
	{
		//IL_0013: Unknown result type (might be due to invalid IL or missing references)
		//IL_001f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0024: Unknown result type (might be due to invalid IL or missing references)
		//IL_002c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0032: Unknown result type (might be due to invalid IL or missing references)
		if (checkBoxMapTrain.Checked)
		{
			RECT val = default(RECT);
			val = AutoControl.GetWindowRect(hWnd);
			SetWindowPos(hWnd, 0, val.Left, val.Top, 533, 362, 2);
			delay2_100ms(3);
			AutoControl.SendKeyBoardPress(hWnd, (VKeys)192);
		}
	}

	private void button8_Click(object sender, EventArgs e)
	{
		normalSize(FindWindowHandle(null, accCheck));
		if (checkBoxPT1.Checked)
		{
			normalSize(FindWindowHandle(null, ((Control)comboBoxPT1).Text));
		}
		if (checkBoxPT2.Checked)
		{
			normalSize(FindWindowHandle(null, ((Control)comboBoxPT2).Text));
		}
		if (checkBoxPT3.Checked)
		{
			normalSize(FindWindowHandle(null, ((Control)comboBoxPT3).Text));
		}
		if (checkBoxPT4.Checked)
		{
			normalSize(FindWindowHandle(null, ((Control)comboBoxPT4).Text));
		}
	}

	private void trackBar1_Scroll(object sender, EventArgs e)
	{
		HeSoHoiPhuc = trackBar1.Value;
		((Control)label17).Text = HeSoHoiPhuc + " %";
	}

	private void numericUpDown1_ValueChanged(object sender, EventArgs e)
	{
		TurnReset = 150 - (int)numericUpDown1.Value;
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
			num = (int)ReadMemoryData((int)processId, myPointer, offset_ToaDoX) / 10;
			num2 = (int)ReadMemoryData((int)processId, myPointer, offset_ToaDoY) / 10;
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

	private void button7_Click(object sender, EventArgs e)
	{
		//IL_013f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0145: Expected O, but got Unknown
		if (!File.Exists(pathData + "/Setting/" + nameUser + "/SPQ_train.txt"))
		{
			Directory.CreateDirectory(pathData + "/Setting/" + nameUser);
		}
		string text = "";
		text = ((!checkBoxMapTrain.Checked) ? (text + "Map:0\r\n") : (text + "Map:1\r\n"));
		text = string.Concat(new string[13]
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
			"\r\nTurn:",
			numericUpDown1.Value.ToString()
		});
		TextWriter val = (TextWriter)new StreamWriter(pathData + "/Setting/" + nameUser + "/SPQ_train.txt");
		val.Write(text);
		val.Close();
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
		//IL_02b7: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c1: Expected O, but got Unknown
		//IL_02c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_02cc: Expected O, but got Unknown
		//IL_02cd: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d7: Expected O, but got Unknown
		//IL_02d8: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e2: Expected O, but got Unknown
		//IL_02e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ed: Expected O, but got Unknown
		//IL_02ee: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f8: Expected O, but got Unknown
		//IL_02f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0303: Expected O, but got Unknown
		//IL_0304: Unknown result type (might be due to invalid IL or missing references)
		//IL_030e: Expected O, but got Unknown
		//IL_030f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0319: Expected O, but got Unknown
		//IL_031a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0324: Expected O, but got Unknown
		//IL_0325: Unknown result type (might be due to invalid IL or missing references)
		//IL_032f: Expected O, but got Unknown
		//IL_0330: Unknown result type (might be due to invalid IL or missing references)
		//IL_033a: Expected O, but got Unknown
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
		//IL_05e9: Unknown result type (might be due to invalid IL or missing references)
		//IL_060f: Unknown result type (might be due to invalid IL or missing references)
		//IL_064e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0674: Unknown result type (might be due to invalid IL or missing references)
		//IL_06c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_06d0: Expected O, but got Unknown
		//IL_06ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_0710: Unknown result type (might be due to invalid IL or missing references)
		//IL_0760: Unknown result type (might be due to invalid IL or missing references)
		//IL_0789: Unknown result type (might be due to invalid IL or missing references)
		//IL_07f7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0823: Unknown result type (might be due to invalid IL or missing references)
		//IL_0863: Unknown result type (might be due to invalid IL or missing references)
		//IL_088c: Unknown result type (might be due to invalid IL or missing references)
		//IL_08b2: Unknown result type (might be due to invalid IL or missing references)
		//IL_08bc: Expected O, but got Unknown
		//IL_08ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_08d4: Expected O, but got Unknown
		//IL_08e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_08ec: Expected O, but got Unknown
		//IL_0903: Unknown result type (might be due to invalid IL or missing references)
		//IL_092c: Unknown result type (might be due to invalid IL or missing references)
		//IL_095c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0982: Unknown result type (might be due to invalid IL or missing references)
		//IL_09c3: Unknown result type (might be due to invalid IL or missing references)
		//IL_09e9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ba6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bd2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c5a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c80: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cc1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ce7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d2b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d35: Expected O, but got Unknown
		//IL_0d3c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0dca: Unknown result type (might be due to invalid IL or missing references)
		//IL_0df3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e34: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e5a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e9e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ea8: Expected O, but got Unknown
		//IL_0eb6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ec0: Expected O, but got Unknown
		//IL_0ed7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0efd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f41: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f4b: Expected O, but got Unknown
		//IL_0f55: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f7b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fbf: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fc9: Expected O, but got Unknown
		//IL_0fd7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fe1: Expected O, but got Unknown
		//IL_0fec: Unknown result type (might be due to invalid IL or missing references)
		//IL_1012: Unknown result type (might be due to invalid IL or missing references)
		//IL_1050: Unknown result type (might be due to invalid IL or missing references)
		//IL_1076: Unknown result type (might be due to invalid IL or missing references)
		//IL_10ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_10c4: Expected O, but got Unknown
		//IL_10d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_10dc: Expected O, but got Unknown
		//IL_10f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_1119: Unknown result type (might be due to invalid IL or missing references)
		//IL_1177: Unknown result type (might be due to invalid IL or missing references)
		//IL_119d: Unknown result type (might be due to invalid IL or missing references)
		//IL_11e1: Unknown result type (might be due to invalid IL or missing references)
		//IL_11eb: Expected O, but got Unknown
		//IL_121d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1243: Unknown result type (might be due to invalid IL or missing references)
		//IL_1293: Unknown result type (might be due to invalid IL or missing references)
		//IL_12b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_12fc: Unknown result type (might be due to invalid IL or missing references)
		//IL_1325: Unknown result type (might be due to invalid IL or missing references)
		//IL_1369: Unknown result type (might be due to invalid IL or missing references)
		//IL_138f: Unknown result type (might be due to invalid IL or missing references)
		//IL_13d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_13dd: Expected O, but got Unknown
		//IL_13f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_141b: Unknown result type (might be due to invalid IL or missing references)
		//IL_145f: Unknown result type (might be due to invalid IL or missing references)
		//IL_1469: Expected O, but got Unknown
		//IL_1491: Unknown result type (might be due to invalid IL or missing references)
		//IL_14b7: Unknown result type (might be due to invalid IL or missing references)
		//IL_14fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_1505: Expected O, but got Unknown
		//IL_1520: Unknown result type (might be due to invalid IL or missing references)
		//IL_1546: Unknown result type (might be due to invalid IL or missing references)
		//IL_15e7: Unknown result type (might be due to invalid IL or missing references)
		//IL_1610: Unknown result type (might be due to invalid IL or missing references)
		//IL_1659: Unknown result type (might be due to invalid IL or missing references)
		//IL_1663: Expected O, but got Unknown
		//IL_166e: Unknown result type (might be due to invalid IL or missing references)
		//IL_16b3: Unknown result type (might be due to invalid IL or missing references)
		//IL_16f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_171b: Unknown result type (might be due to invalid IL or missing references)
		//IL_175f: Unknown result type (might be due to invalid IL or missing references)
		//IL_1769: Expected O, but got Unknown
		//IL_1781: Unknown result type (might be due to invalid IL or missing references)
		//IL_17a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_17e8: Unknown result type (might be due to invalid IL or missing references)
		//IL_180e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1845: Unknown result type (might be due to invalid IL or missing references)
		//IL_1895: Unknown result type (might be due to invalid IL or missing references)
		//IL_1955: Unknown result type (might be due to invalid IL or missing references)
		//IL_197e: Unknown result type (might be due to invalid IL or missing references)
		//IL_19c7: Unknown result type (might be due to invalid IL or missing references)
		//IL_19d1: Expected O, but got Unknown
		//IL_19df: Unknown result type (might be due to invalid IL or missing references)
		//IL_1a20: Unknown result type (might be due to invalid IL or missing references)
		//IL_1a66: Unknown result type (might be due to invalid IL or missing references)
		//IL_1a70: Expected O, but got Unknown
		//IL_1a7b: Unknown result type (might be due to invalid IL or missing references)
		//IL_1abc: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b07: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b2d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b6d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b93: Unknown result type (might be due to invalid IL or missing references)
		//IL_1be0: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c06: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c43: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c69: Unknown result type (might be due to invalid IL or missing references)
		//IL_1caa: Unknown result type (might be due to invalid IL or missing references)
		//IL_1cd0: Unknown result type (might be due to invalid IL or missing references)
		//IL_1d6f: Unknown result type (might be due to invalid IL or missing references)
		//IL_1da8: Unknown result type (might be due to invalid IL or missing references)
		//IL_1dce: Unknown result type (might be due to invalid IL or missing references)
		//IL_1dd8: Expected O, but got Unknown
		//IL_1e6c: Unknown result type (might be due to invalid IL or missing references)
		//IL_1e8f: Unknown result type (might be due to invalid IL or missing references)
		//IL_1eaa: Unknown result type (might be due to invalid IL or missing references)
		//IL_20b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_20d8: Unknown result type (might be due to invalid IL or missing references)
		//IL_20f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_2142: Unknown result type (might be due to invalid IL or missing references)
		//IL_2168: Unknown result type (might be due to invalid IL or missing references)
		//IL_21ac: Unknown result type (might be due to invalid IL or missing references)
		//IL_21b6: Expected O, but got Unknown
		//IL_21d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_21fa: Unknown result type (might be due to invalid IL or missing references)
		//IL_223e: Unknown result type (might be due to invalid IL or missing references)
		//IL_2264: Unknown result type (might be due to invalid IL or missing references)
		//IL_22a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_22ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_2317: Unknown result type (might be due to invalid IL or missing references)
		//IL_2321: Expected O, but got Unknown
		//IL_232f: Unknown result type (might be due to invalid IL or missing references)
		//IL_2374: Unknown result type (might be due to invalid IL or missing references)
		//IL_23bb: Unknown result type (might be due to invalid IL or missing references)
		//IL_23c5: Expected O, but got Unknown
		//IL_23d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_2418: Unknown result type (might be due to invalid IL or missing references)
		//IL_245a: Unknown result type (might be due to invalid IL or missing references)
		//IL_2480: Unknown result type (might be due to invalid IL or missing references)
		//IL_24c4: Unknown result type (might be due to invalid IL or missing references)
		//IL_24ce: Expected O, but got Unknown
		//IL_24dc: Unknown result type (might be due to invalid IL or missing references)
		//IL_24e6: Expected O, but got Unknown
		//IL_24f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_251a: Unknown result type (might be due to invalid IL or missing references)
		//IL_255e: Unknown result type (might be due to invalid IL or missing references)
		//IL_2568: Expected O, but got Unknown
		//IL_2576: Unknown result type (might be due to invalid IL or missing references)
		//IL_2580: Expected O, but got Unknown
		//IL_258b: Unknown result type (might be due to invalid IL or missing references)
		//IL_25b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_25f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_25ff: Expected O, but got Unknown
		//IL_260d: Unknown result type (might be due to invalid IL or missing references)
		//IL_2617: Expected O, but got Unknown
		//IL_2625: Unknown result type (might be due to invalid IL or missing references)
		//IL_264b: Unknown result type (might be due to invalid IL or missing references)
		//IL_268f: Unknown result type (might be due to invalid IL or missing references)
		//IL_2699: Expected O, but got Unknown
		//IL_26a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_26b1: Expected O, but got Unknown
		//IL_26bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_26e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_2729: Unknown result type (might be due to invalid IL or missing references)
		//IL_2733: Expected O, but got Unknown
		//IL_2741: Unknown result type (might be due to invalid IL or missing references)
		//IL_274b: Expected O, but got Unknown
		//IL_27ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_2815: Unknown result type (might be due to invalid IL or missing references)
		//IL_28e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_2908: Unknown result type (might be due to invalid IL or missing references)
		//IL_293f: Unknown result type (might be due to invalid IL or missing references)
		//IL_2965: Unknown result type (might be due to invalid IL or missing references)
		//IL_29a9: Unknown result type (might be due to invalid IL or missing references)
		//IL_29b3: Expected O, but got Unknown
		//IL_29c1: Unknown result type (might be due to invalid IL or missing references)
		//IL_29cb: Expected O, but got Unknown
		//IL_29e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_2a09: Unknown result type (might be due to invalid IL or missing references)
		//IL_2a4d: Unknown result type (might be due to invalid IL or missing references)
		//IL_2a57: Expected O, but got Unknown
		//IL_2a65: Unknown result type (might be due to invalid IL or missing references)
		//IL_2a8b: Unknown result type (might be due to invalid IL or missing references)
		//IL_2acf: Unknown result type (might be due to invalid IL or missing references)
		//IL_2ad9: Expected O, but got Unknown
		//IL_2ae7: Unknown result type (might be due to invalid IL or missing references)
		//IL_2af1: Expected O, but got Unknown
		//IL_2b08: Unknown result type (might be due to invalid IL or missing references)
		//IL_2b2e: Unknown result type (might be due to invalid IL or missing references)
		//IL_2b72: Unknown result type (might be due to invalid IL or missing references)
		//IL_2b7c: Expected O, but got Unknown
		//IL_2b8a: Unknown result type (might be due to invalid IL or missing references)
		//IL_2bb0: Unknown result type (might be due to invalid IL or missing references)
		//IL_2bf4: Unknown result type (might be due to invalid IL or missing references)
		//IL_2bfe: Expected O, but got Unknown
		//IL_2c0c: Unknown result type (might be due to invalid IL or missing references)
		//IL_2c16: Expected O, but got Unknown
		//IL_2c21: Unknown result type (might be due to invalid IL or missing references)
		//IL_2c47: Unknown result type (might be due to invalid IL or missing references)
		//IL_2c8b: Unknown result type (might be due to invalid IL or missing references)
		//IL_2c95: Expected O, but got Unknown
		//IL_2ca3: Unknown result type (might be due to invalid IL or missing references)
		//IL_2cad: Expected O, but got Unknown
		//IL_2cbb: Unknown result type (might be due to invalid IL or missing references)
		//IL_2ce1: Unknown result type (might be due to invalid IL or missing references)
		//IL_2d25: Unknown result type (might be due to invalid IL or missing references)
		//IL_2d2f: Expected O, but got Unknown
		//IL_2d3d: Unknown result type (might be due to invalid IL or missing references)
		//IL_2d47: Expected O, but got Unknown
		//IL_2df2: Unknown result type (might be due to invalid IL or missing references)
		//IL_2e15: Unknown result type (might be due to invalid IL or missing references)
		//IL_2e30: Unknown result type (might be due to invalid IL or missing references)
		//IL_2e72: Unknown result type (might be due to invalid IL or missing references)
		//IL_2e98: Unknown result type (might be due to invalid IL or missing references)
		//IL_2edc: Unknown result type (might be due to invalid IL or missing references)
		//IL_2ee6: Expected O, but got Unknown
		//IL_2f00: Unknown result type (might be due to invalid IL or missing references)
		//IL_2f26: Unknown result type (might be due to invalid IL or missing references)
		//IL_2f6a: Unknown result type (might be due to invalid IL or missing references)
		//IL_2f74: Expected O, but got Unknown
		//IL_2f8a: Unknown result type (might be due to invalid IL or missing references)
		//IL_2fb0: Unknown result type (might be due to invalid IL or missing references)
		//IL_2ff3: Unknown result type (might be due to invalid IL or missing references)
		//IL_3019: Unknown result type (might be due to invalid IL or missing references)
		//IL_305d: Unknown result type (might be due to invalid IL or missing references)
		//IL_3067: Expected O, but got Unknown
		//IL_30e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_3121: Unknown result type (might be due to invalid IL or missing references)
		//IL_3146: Unknown result type (might be due to invalid IL or missing references)
		//IL_3150: Expected O, but got Unknown
		//IL_315e: Unknown result type (might be due to invalid IL or missing references)
		//IL_3168: Expected O, but got Unknown
		//IL_3176: Unknown result type (might be due to invalid IL or missing references)
		//IL_3180: Expected O, but got Unknown
		//IL_318e: Unknown result type (might be due to invalid IL or missing references)
		//IL_3198: Expected O, but got Unknown
		//IL_31a6: Unknown result type (might be due to invalid IL or missing references)
		//IL_31b0: Expected O, but got Unknown
		//IL_33e8: Unknown result type (might be due to invalid IL or missing references)
		//IL_340e: Unknown result type (might be due to invalid IL or missing references)
		//IL_3452: Unknown result type (might be due to invalid IL or missing references)
		//IL_345c: Expected O, but got Unknown
		//IL_3476: Unknown result type (might be due to invalid IL or missing references)
		//IL_349c: Unknown result type (might be due to invalid IL or missing references)
		//IL_34e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_34ea: Expected O, but got Unknown
		//IL_378f: Unknown result type (might be due to invalid IL or missing references)
		//IL_37b2: Unknown result type (might be due to invalid IL or missing references)
		//IL_37cd: Unknown result type (might be due to invalid IL or missing references)
		//IL_3810: Unknown result type (might be due to invalid IL or missing references)
		//IL_3836: Unknown result type (might be due to invalid IL or missing references)
		//IL_387a: Unknown result type (might be due to invalid IL or missing references)
		//IL_3884: Expected O, but got Unknown
		//IL_3895: Unknown result type (might be due to invalid IL or missing references)
		//IL_38f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_393a: Unknown result type (might be due to invalid IL or missing references)
		//IL_3944: Expected O, but got Unknown
		//IL_395f: Unknown result type (might be due to invalid IL or missing references)
		//IL_3993: Unknown result type (might be due to invalid IL or missing references)
		//IL_39d5: Unknown result type (might be due to invalid IL or missing references)
		//IL_39df: Expected O, but got Unknown
		//IL_39fd: Unknown result type (might be due to invalid IL or missing references)
		//IL_3a23: Unknown result type (might be due to invalid IL or missing references)
		//IL_3a6a: Unknown result type (might be due to invalid IL or missing references)
		//IL_3a90: Unknown result type (might be due to invalid IL or missing references)
		//IL_3ad7: Unknown result type (might be due to invalid IL or missing references)
		//IL_3afd: Unknown result type (might be due to invalid IL or missing references)
		//IL_3b40: Unknown result type (might be due to invalid IL or missing references)
		//IL_3b66: Unknown result type (might be due to invalid IL or missing references)
		//IL_3b9d: Unknown result type (might be due to invalid IL or missing references)
		//IL_3bc3: Unknown result type (might be due to invalid IL or missing references)
		//IL_3c07: Unknown result type (might be due to invalid IL or missing references)
		//IL_3c11: Expected O, but got Unknown
		//IL_3c1f: Unknown result type (might be due to invalid IL or missing references)
		//IL_3c45: Unknown result type (might be due to invalid IL or missing references)
		//IL_3c89: Unknown result type (might be due to invalid IL or missing references)
		//IL_3c93: Expected O, but got Unknown
		//IL_3caa: Unknown result type (might be due to invalid IL or missing references)
		//IL_3cd0: Unknown result type (might be due to invalid IL or missing references)
		//IL_3d11: Unknown result type (might be due to invalid IL or missing references)
		//IL_3d37: Unknown result type (might be due to invalid IL or missing references)
		//IL_3d7b: Unknown result type (might be due to invalid IL or missing references)
		//IL_3da1: Unknown result type (might be due to invalid IL or missing references)
		//IL_3de5: Unknown result type (might be due to invalid IL or missing references)
		//IL_3e0b: Unknown result type (might be due to invalid IL or missing references)
		//IL_3e4e: Unknown result type (might be due to invalid IL or missing references)
		//IL_3e74: Unknown result type (might be due to invalid IL or missing references)
		//IL_3eb8: Unknown result type (might be due to invalid IL or missing references)
		//IL_3ec2: Expected O, but got Unknown
		//IL_3ee0: Unknown result type (might be due to invalid IL or missing references)
		//IL_3f06: Unknown result type (might be due to invalid IL or missing references)
		//IL_3f46: Unknown result type (might be due to invalid IL or missing references)
		//IL_3f6c: Unknown result type (might be due to invalid IL or missing references)
		//IL_3fb3: Unknown result type (might be due to invalid IL or missing references)
		//IL_3fd9: Unknown result type (might be due to invalid IL or missing references)
		//IL_401d: Unknown result type (might be due to invalid IL or missing references)
		//IL_4043: Unknown result type (might be due to invalid IL or missing references)
		//IL_4087: Unknown result type (might be due to invalid IL or missing references)
		//IL_4091: Expected O, but got Unknown
		//IL_409f: Unknown result type (might be due to invalid IL or missing references)
		//IL_40a9: Expected O, but got Unknown
		//IL_40c7: Unknown result type (might be due to invalid IL or missing references)
		//IL_40ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_413b: Unknown result type (might be due to invalid IL or missing references)
		//IL_4161: Unknown result type (might be due to invalid IL or missing references)
		//IL_4198: Unknown result type (might be due to invalid IL or missing references)
		//IL_41be: Unknown result type (might be due to invalid IL or missing references)
		//IL_4202: Unknown result type (might be due to invalid IL or missing references)
		//IL_420c: Expected O, but got Unknown
		//IL_421a: Unknown result type (might be due to invalid IL or missing references)
		//IL_4224: Expected O, but got Unknown
		//IL_423f: Unknown result type (might be due to invalid IL or missing references)
		//IL_4265: Unknown result type (might be due to invalid IL or missing references)
		//IL_42b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_42dc: Unknown result type (might be due to invalid IL or missing references)
		//IL_4320: Unknown result type (might be due to invalid IL or missing references)
		//IL_4346: Unknown result type (might be due to invalid IL or missing references)
		//IL_4389: Unknown result type (might be due to invalid IL or missing references)
		//IL_43af: Unknown result type (might be due to invalid IL or missing references)
		//IL_43f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_441c: Unknown result type (might be due to invalid IL or missing references)
		//IL_445f: Unknown result type (might be due to invalid IL or missing references)
		//IL_4485: Unknown result type (might be due to invalid IL or missing references)
		//IL_44c9: Unknown result type (might be due to invalid IL or missing references)
		//IL_44ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_453c: Unknown result type (might be due to invalid IL or missing references)
		//IL_4562: Unknown result type (might be due to invalid IL or missing references)
		//IL_46f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_4713: Unknown result type (might be due to invalid IL or missing references)
		//IL_47c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_47cc: Expected O, but got Unknown
		//IL_47d5: Unknown result type (might be due to invalid IL or missing references)
		//IL_47df: Expected O, but got Unknown
		//IL_47e8: Unknown result type (might be due to invalid IL or missing references)
		//IL_47f2: Expected O, but got Unknown
		label2 = new Label();
		ButtonRunAuto = new CheckBox();
		checkBoxDungHop = new CheckBox();
		checkBoxItemPetToNV = new CheckBox();
		groupBox1 = new GroupBox();
		textBoxTimKiem = new TextBox();
		checkedListBox1 = new CheckedListBox();
		labelDaBat = new Label();
		labelDaHop = new Label();
		groupBox3 = new GroupBox();
		comboBoxDungHop = new ComboBox();
		checkBoxItemPetBay = new CheckBox();
		comboBoxItem = new ComboBox();
		checkBoxMap1 = new CheckBox();
		checkBoxFixMap = new CheckBox();
		buttonViTri2 = new Button();
		numericUpDownTurn = new NumericUpDown();
		buttonViTri1 = new Button();
		label1 = new Label();
		checkBoxBoChay = new CheckBox();
		checkBoxLoop = new CheckBox();
		label5 = new Label();
		label7 = new Label();
		checkBoxAuto = new CheckBox();
		buttonPause = new Button();
		ButtonDebug = new CheckBox();
		pictureBox1 = new PictureBox();
		groupBox2 = new GroupBox();
		numericUpDownFPS = new NumericUpDown();
		buttonReset = new Button();
		label3 = new Label();
		label8 = new Label();
		textBox2 = new TextBox();
		groupBox5 = new GroupBox();
		numericUpDownKenh = new NumericUpDown();
		numericUpDownNV = new NumericUpDown();
		label16 = new Label();
		checkBoxLog_BB = new CheckBox();
		checkBoxLog = new CheckBox();
		label15 = new Label();
		checkBoxAutoSetup = new CheckBox();
		tabControl1 = new TabControl();
		tabPage1 = new TabPage();
		tabPage2 = new TabPage();
		checkBoxHaiThuoc = new CheckBox();
		label4 = new Label();
		label6 = new Label();
		checkBoxTele = new CheckBox();
		numericUpDownY = new NumericUpDown();
		numericUpDownX = new NumericUpDown();
		button10 = new Button();
		buttonNPC2 = new Button();
		buttonC2 = new Button();
		buttonRom = new Button();
		buttonH3 = new Button();
		comboBox2 = new ComboBox();
		comboBox1 = new ComboBox();
		buttonH1 = new Button();
		checkBoxNongTrai = new CheckBox();
		buttonH4 = new Button();
		checkBoxCauCa = new CheckBox();
		buttonNPC1 = new Button();
		buttonC1 = new Button();
		buttonH2 = new Button();
		tabPage3 = new TabPage();
		button12 = new Button();
		button4 = new Button();
		comboBoxGroupName2 = new ComboBox();
		button2 = new Button();
		dataGridView1 = new DataGridView();
		Column5 = new DataGridViewTextBoxColumn();
		Column6 = new DataGridViewTextBoxColumn();
		Column7 = new DataGridViewTextBoxColumn();
		Column8 = new DataGridViewTextBoxColumn();
		Tele3 = new DataGridViewButtonColumn();
		Tele4 = new DataGridViewButtonColumn();
		Delete = new DataGridViewButtonColumn();
		button1 = new Button();
		buttonAddGroup = new Button();
		tabPage4 = new TabPage();
		button7 = new Button();
		numericUpDown1 = new NumericUpDown();
		trackBar1 = new TrackBar();
		label17 = new Label();
		labelpt4 = new Label();
		label19 = new Label();
		label18 = new Label();
		button8 = new Button();
		button6 = new Button();
		label10 = new Label();
		labelAcccheck = new Label();
		labelpt3 = new Label();
		labelpt2 = new Label();
		checkBoxMapTrain = new CheckBox();
		comboBoxPT4 = new ComboBox();
		comboBoxPT1 = new ComboBox();
		checkBoxPT2 = new CheckBox();
		button3 = new Button();
		checkBoxPT4 = new CheckBox();
		labelpt1 = new Label();
		button5 = new Button();
		checkBoxPT1 = new CheckBox();
		comboBoxPT3 = new ComboBox();
		label13 = new Label();
		label12 = new Label();
		label14 = new Label();
		comboBoxPT2 = new ComboBox();
		checkBoxPT3 = new CheckBox();
		label11 = new Label();
		Column1 = new DataGridViewTextBoxColumn();
		Column2 = new DataGridViewTextBoxColumn();
		Column3 = new DataGridViewTextBoxColumn();
		Column4 = new DataGridViewTextBoxColumn();
		Tele = new DataGridViewButtonColumn();
		((Control)groupBox1).SuspendLayout();
		((Control)groupBox3).SuspendLayout();
		((ISupportInitialize)numericUpDownTurn).BeginInit();
		((ISupportInitialize)pictureBox1).BeginInit();
		((Control)groupBox2).SuspendLayout();
		((ISupportInitialize)numericUpDownFPS).BeginInit();
		((Control)groupBox5).SuspendLayout();
		((ISupportInitialize)numericUpDownKenh).BeginInit();
		((ISupportInitialize)numericUpDownNV).BeginInit();
		((Control)tabControl1).SuspendLayout();
		((Control)tabPage1).SuspendLayout();
		((Control)tabPage2).SuspendLayout();
		((ISupportInitialize)numericUpDownY).BeginInit();
		((ISupportInitialize)numericUpDownX).BeginInit();
		((Control)tabPage3).SuspendLayout();
		((ISupportInitialize)dataGridView1).BeginInit();
		((Control)tabPage4).SuspendLayout();
		((ISupportInitialize)numericUpDown1).BeginInit();
		((ISupportInitialize)trackBar1).BeginInit();
		((Control)this).SuspendLayout();
		((Control)label2).AutoSize = true;
		((Control)label2).Location = new Point(102, 82);
		((Control)label2).Name = "label2";
		((Control)label2).Size = new Size(68, 15);
		((Control)label2).TabIndex = 8;
		((Control)label2).Text = "[ 000 - 000 ]";
		ButtonRunAuto.Appearance = (Appearance)1;
		((Control)ButtonRunAuto).Location = new Point(7, 103);
		((Control)ButtonRunAuto).Name = "ButtonRunAuto";
		((Control)ButtonRunAuto).Size = new Size(65, 25);
		((Control)ButtonRunAuto).TabIndex = 11;
		((Control)ButtonRunAuto).Text = "Start";
		((ButtonBase)ButtonRunAuto).TextAlign = (ContentAlignment)32;
		((ButtonBase)ButtonRunAuto).UseVisualStyleBackColor = true;
		ButtonRunAuto.CheckStateChanged += new EventHandler(ButtonRunAuto_CheckStateChanged);
		((Control)checkBoxDungHop).AutoSize = true;
		((Control)checkBoxDungHop).Location = new Point(6, 265);
		((Control)checkBoxDungHop).Name = "checkBoxDungHop";
		((Control)checkBoxDungHop).Size = new Size(101, 19);
		((Control)checkBoxDungHop).TabIndex = 18;
		((Control)checkBoxDungHop).Text = "Dung Hợp Pet";
		((ButtonBase)checkBoxDungHop).UseVisualStyleBackColor = true;
		((Control)checkBoxItemPetToNV).AutoSize = true;
		((Control)checkBoxItemPetToNV).Location = new Point(8, 191);
		((Control)checkBoxItemPetToNV).Name = "checkBoxItemPetToNV";
		((Control)checkBoxItemPetToNV).Size = new Size(170, 19);
		((Control)checkBoxItemPetToNV).TabIndex = 18;
		((Control)checkBoxItemPetToNV).Text = "Dùng item (Pet > NV/Quái)";
		((ButtonBase)checkBoxItemPetToNV).UseVisualStyleBackColor = true;
		((Control)groupBox1).Controls.Add((Control)(object)textBoxTimKiem);
		((Control)groupBox1).Controls.Add((Control)(object)checkedListBox1);
		((Control)groupBox1).Location = new Point(7, 65);
		((Control)groupBox1).Name = "groupBox1";
		((Control)groupBox1).Size = new Size(166, 154);
		((Control)groupBox1).TabIndex = 21;
		groupBox1.TabStop = false;
		((Control)groupBox1).Text = "Chọn 1 Trong xxx Pet";
		((Control)textBoxTimKiem).Location = new Point(8, 22);
		((Control)textBoxTimKiem).Name = "textBoxTimKiem";
		((Control)textBoxTimKiem).Size = new Size(152, 23);
		((Control)textBoxTimKiem).TabIndex = 22;
		((Control)textBoxTimKiem).TextChanged += new EventHandler(textBoxTimKiem_TextChanged);
		((Control)textBoxTimKiem).Enter += new EventHandler(textBoxTimKiem_Enter);
		((Control)textBoxTimKiem).Leave += new EventHandler(textBoxTimKiem_Leave);
		((ListControl)checkedListBox1).FormattingEnabled = true;
		((Control)checkedListBox1).Location = new Point(8, 53);
		((Control)checkedListBox1).Name = "checkedListBox1";
		((Control)checkedListBox1).Size = new Size(152, 94);
		((Control)checkedListBox1).TabIndex = 21;
		((Control)labelDaBat).AutoSize = true;
		((Control)labelDaBat).Location = new Point(15, 15);
		((Control)labelDaBat).Name = "labelDaBat";
		((Control)labelDaBat).Size = new Size(64, 15);
		((Control)labelDaBat).TabIndex = 9;
		((Control)labelDaBat).Text = "Bắt xxx Lần";
		((Control)labelDaHop).AutoSize = true;
		((Control)labelDaHop).Location = new Point(88, 15);
		((Control)labelDaHop).Name = "labelDaHop";
		((Control)labelDaHop).Size = new Size(70, 15);
		((Control)labelDaHop).TabIndex = 9;
		((Control)labelDaHop).Text = "Hợp xxx Lần";
		((Control)groupBox3).Controls.Add((Control)(object)comboBoxDungHop);
		((Control)groupBox3).Controls.Add((Control)(object)label2);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxItemPetBay);
		((Control)groupBox3).Controls.Add((Control)(object)comboBoxItem);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxMap1);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxFixMap);
		((Control)groupBox3).Controls.Add((Control)(object)buttonViTri2);
		((Control)groupBox3).Controls.Add((Control)(object)numericUpDownTurn);
		((Control)groupBox3).Controls.Add((Control)(object)buttonViTri1);
		((Control)groupBox3).Controls.Add((Control)(object)label1);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxBoChay);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxDungHop);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxItemPetToNV);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxLoop);
		((Control)groupBox3).Controls.Add((Control)(object)label5);
		((Control)groupBox3).Controls.Add((Control)(object)label7);
		((Control)groupBox3).Controls.Add((Control)(object)checkBoxAuto);
		((Control)groupBox3).Location = new Point(179, 6);
		((Control)groupBox3).Name = "groupBox3";
		((Control)groupBox3).Size = new Size(188, 295);
		((Control)groupBox3).TabIndex = 23;
		groupBox3.TabStop = false;
		((Control)groupBox3).Text = "Thiết Lập";
		((ListControl)comboBoxDungHop).FormattingEnabled = true;
		comboBoxDungHop.Items.AddRange(new object[4] { "Lục", "Lam", "Tím", "Cam" });
		((Control)comboBoxDungHop).Location = new Point(113, 264);
		((Control)comboBoxDungHop).Name = "comboBoxDungHop";
		((Control)comboBoxDungHop).Size = new Size(57, 23);
		((Control)comboBoxDungHop).TabIndex = 35;
		((Control)comboBoxDungHop).Text = "Lục";
		((Control)checkBoxItemPetBay).AutoSize = true;
		((Control)checkBoxItemPetBay).Location = new Point(109, 56);
		((Control)checkBoxItemPetBay).Name = "checkBoxItemPetBay";
		((Control)checkBoxItemPetBay).Size = new Size(65, 19);
		((Control)checkBoxItemPetBay).TabIndex = 18;
		((Control)checkBoxItemPetBay).Text = "Pet Bay";
		((ButtonBase)checkBoxItemPetBay).UseVisualStyleBackColor = true;
		checkBoxItemPetBay.CheckedChanged += new EventHandler(checkBoxItemPetBay_CheckedChanged);
		((Control)comboBoxItem).ForeColor = SystemColors.GrayText;
		((ListControl)comboBoxItem).FormattingEnabled = true;
		comboBoxItem.Items.AddRange(new object[10] { "Kẹp > L.Thú > T.L.Cầu > Deff", "L.Thú > Kẹp > T.L.Cầu > Deff", "T.L.Cầu > L.Thú > Deff", "Luyện Thú Đơn Cao", "Luyện Thú Đơn Siêu", "Kẹp Bắt Thú (Thường, Siêu)", "Tinh Linh Cầu", "[TS,AM]-Lời Ngọt Ngào", "[CCAM]-Năng Lượng Oanh Tạc", "[Nấm]-Tiếng Sét Phẫn Nộ" });
		((Control)comboBoxItem).Location = new Point(9, 163);
		((Control)comboBoxItem).Name = "comboBoxItem";
		((Control)comboBoxItem).Size = new Size(144, 23);
		((Control)comboBoxItem).TabIndex = 20;
		((Control)comboBoxItem).Text = "L.Thú > Kẹp > T.L.Cầu > Deff";
		((Control)checkBoxMap1).AutoSize = true;
		((Control)checkBoxMap1).Location = new Point(109, 27);
		((Control)checkBoxMap1).Name = "checkBoxMap1";
		((Control)checkBoxMap1).Size = new Size(64, 19);
		((Control)checkBoxMap1).TabIndex = 18;
		((Control)checkBoxMap1).Text = "Bản Đồ";
		((ButtonBase)checkBoxMap1).UseVisualStyleBackColor = true;
		checkBoxMap1.CheckedChanged += new EventHandler(checkBoxMap1_CheckedChanged);
		checkBoxMap1.CheckStateChanged += new EventHandler(checkBoxMap1_CheckStateChanged);
		((Control)checkBoxFixMap).AutoSize = true;
		((Control)checkBoxFixMap).Location = new Point(8, 82);
		((Control)checkBoxFixMap).Name = "checkBoxFixMap";
		((Control)checkBoxFixMap).Size = new Size(87, 19);
		((Control)checkBoxFixMap).TabIndex = 18;
		((Control)checkBoxFixMap).Text = "Fix Kẹt Map";
		((ButtonBase)checkBoxFixMap).UseVisualStyleBackColor = true;
		checkBoxFixMap.CheckedChanged += new EventHandler(checkBoxMap2_CheckedChanged);
		((Control)buttonViTri2).Location = new Point(6, 53);
		((Control)buttonViTri2).Name = "buttonViTri2";
		((Control)buttonViTri2).Size = new Size(90, 23);
		((Control)buttonViTri2).TabIndex = 11;
		((Control)buttonViTri2).Text = "Di Chuyển 2";
		((ButtonBase)buttonViTri2).UseVisualStyleBackColor = true;
		((Control)buttonViTri2).MouseDown += new MouseEventHandler(buttonViTri2_MouseDown);
		((Control)buttonViTri2).MouseUp += new MouseEventHandler(buttonViTri2_MouseUp);
		((Control)numericUpDownTurn).Location = new Point(63, 112);
		((Control)numericUpDownTurn).Name = "numericUpDownTurn";
		((Control)numericUpDownTurn).Size = new Size(38, 23);
		((Control)numericUpDownTurn).TabIndex = 19;
		numericUpDownTurn.Value = new decimal(new int[4] { 100, 0, 0, 0 });
		((Control)buttonViTri1).Location = new Point(6, 24);
		((Control)buttonViTri1).Name = "buttonViTri1";
		((Control)buttonViTri1).Size = new Size(90, 23);
		((Control)buttonViTri1).TabIndex = 11;
		((Control)buttonViTri1).Text = "Di Chuyển 1";
		((ButtonBase)buttonViTri1).UseVisualStyleBackColor = true;
		((Control)buttonViTri1).MouseDown += new MouseEventHandler(buttonViTri1_MouseDown);
		((Control)buttonViTri1).MouseUp += new MouseEventHandler(buttonViTri1_MouseUp);
		((Control)label1).AutoSize = true;
		((Control)label1).Location = new Point(6, 114);
		((Control)label1).Name = "label1";
		((Control)label1).Size = new Size(51, 15);
		((Control)label1).TabIndex = 9;
		((Control)label1).Text = "Lượt Bắt";
		((Control)checkBoxBoChay).AutoSize = true;
		checkBoxBoChay.Checked = true;
		checkBoxBoChay.CheckState = (CheckState)1;
		((Control)checkBoxBoChay).Location = new Point(77, 237);
		((Control)checkBoxBoChay).Name = "checkBoxBoChay";
		((Control)checkBoxBoChay).Size = new Size(70, 19);
		((Control)checkBoxBoChay).TabIndex = 18;
		((Control)checkBoxBoChay).Text = "Bỏ Chạy";
		((ButtonBase)checkBoxBoChay).UseVisualStyleBackColor = true;
		checkBoxBoChay.CheckedChanged += new EventHandler(checkBoxBoChay_CheckedChanged);
		((Control)checkBoxLoop).AutoSize = true;
		checkBoxLoop.Checked = true;
		checkBoxLoop.CheckState = (CheckState)1;
		((Control)checkBoxLoop).Location = new Point(107, 113);
		((Control)checkBoxLoop).Name = "checkBoxLoop";
		((Control)checkBoxLoop).Size = new Size(63, 19);
		((Control)checkBoxLoop).TabIndex = 18;
		((Control)checkBoxLoop).Text = "Lặp Lại";
		((ButtonBase)checkBoxLoop).UseVisualStyleBackColor = true;
		((Control)label5).AutoSize = true;
		((Control)label5).Location = new Point(6, 145);
		((Control)label5).Name = "label5";
		((Control)label5).Size = new Size(115, 15);
		((Control)label5).TabIndex = 9;
		((Control)label5).Text = "Chọn Item / Skill Pet";
		((Control)label7).AutoSize = true;
		((Control)label7).Location = new Point(6, 220);
		((Control)label7).Name = "label7";
		((Control)label7).Size = new Size(153, 15);
		((Control)label7).TabIndex = 9;
		((Control)label7).Text = "Khi Không Gặp Pet Cần Bắt:";
		((Control)checkBoxAuto).AutoSize = true;
		((Control)checkBoxAuto).Location = new Point(19, 238);
		((Control)checkBoxAuto).Name = "checkBoxAuto";
		((Control)checkBoxAuto).Size = new Size(52, 19);
		((Control)checkBoxAuto).TabIndex = 18;
		((Control)checkBoxAuto).Text = "Auto";
		((ButtonBase)checkBoxAuto).UseVisualStyleBackColor = true;
		checkBoxAuto.CheckedChanged += new EventHandler(checkBoxAuto_CheckedChanged);
		((Control)buttonPause).Enabled = false;
		((Control)buttonPause).Location = new Point(78, 103);
		((Control)buttonPause).Name = "buttonPause";
		((Control)buttonPause).Size = new Size(65, 25);
		((Control)buttonPause).TabIndex = 12;
		((Control)buttonPause).Text = "Pause";
		((ButtonBase)buttonPause).UseVisualStyleBackColor = true;
		((Control)buttonPause).Click += new EventHandler(buttonPause_Click);
		ButtonDebug.Appearance = (Appearance)1;
		((Control)ButtonDebug).AutoSize = true;
		((Control)ButtonDebug).Location = new Point(149, 103);
		((Control)ButtonDebug).Name = "ButtonDebug";
		((Control)ButtonDebug).Size = new Size(58, 25);
		((Control)ButtonDebug).TabIndex = 35;
		((Control)ButtonDebug).Text = "Chi Tiết";
		((ButtonBase)ButtonDebug).UseVisualStyleBackColor = true;
		ButtonDebug.CheckStateChanged += new EventHandler(ButtonDebug_CheckStateChanged);
		pictureBox1.Image = (Image)(object)Resources.anhNVr;
		((Control)pictureBox1).Location = new Point(6, 22);
		((Control)pictureBox1).Name = "pictureBox1";
		((Control)pictureBox1).Size = new Size(55, 54);
		pictureBox1.TabIndex = 0;
		pictureBox1.TabStop = false;
		((Control)groupBox2).Controls.Add((Control)(object)numericUpDownFPS);
		((Control)groupBox2).Controls.Add((Control)(object)pictureBox1);
		((Control)groupBox2).Controls.Add((Control)(object)buttonReset);
		((Control)groupBox2).Controls.Add((Control)(object)label3);
		((Control)groupBox2).Controls.Add((Control)(object)label8);
		((Control)groupBox2).Location = new Point(6, 12);
		((Control)groupBox2).Name = "groupBox2";
		((Control)groupBox2).Size = new Size(208, 85);
		((Control)groupBox2).TabIndex = 25;
		groupBox2.TabStop = false;
		((Control)groupBox2).Text = "Vị Trí Flash : xxx - yyy";
		((Control)numericUpDownFPS).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownFPS).Location = new Point(101, 53);
		numericUpDownFPS.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownFPS).Name = "numericUpDownFPS";
		((Control)numericUpDownFPS).Size = new Size(36, 23);
		((Control)numericUpDownFPS).TabIndex = 17;
		numericUpDownFPS.Value = new decimal(new int[4] { 20, 0, 0, 0 });
		((Control)buttonReset).Location = new Point(143, 51);
		((Control)buttonReset).Name = "buttonReset";
		((Control)buttonReset).Size = new Size(56, 25);
		((Control)buttonReset).TabIndex = 12;
		((Control)buttonReset).Text = "Reset";
		((ButtonBase)buttonReset).UseVisualStyleBackColor = true;
		((Control)buttonReset).Click += new EventHandler(buttonReset_Click);
		((Control)label3).AutoSize = true;
		((Control)label3).Location = new Point(67, 22);
		((Control)label3).Name = "label3";
		((Control)label3).Size = new Size(60, 15);
		((Control)label3).TabIndex = 9;
		((Control)label3).Text = "ID: 000000";
		((Control)label8).AutoSize = true;
		((Control)label8).Location = new Point(66, 55);
		((Control)label8).Name = "label8";
		((Control)label8).Size = new Size(29, 15);
		((Control)label8).TabIndex = 16;
		((Control)label8).Text = "FPS:";
		((Control)textBox2).Location = new Point(228, 12);
		((TextBoxBase)textBox2).Multiline = true;
		((Control)textBox2).Name = "textBox2";
		((TextBoxBase)textBox2).ReadOnly = true;
		textBox2.ScrollBars = (ScrollBars)2;
		((Control)textBox2).Size = new Size(145, 116);
		((Control)textBox2).TabIndex = 24;
		((Control)textBox2).Text = "-----------------------";
		((Control)groupBox5).Controls.Add((Control)(object)numericUpDownKenh);
		((Control)groupBox5).Controls.Add((Control)(object)numericUpDownNV);
		((Control)groupBox5).Controls.Add((Control)(object)label16);
		((Control)groupBox5).Controls.Add((Control)(object)checkBoxLog_BB);
		((Control)groupBox5).Controls.Add((Control)(object)checkBoxLog);
		((Control)groupBox5).Controls.Add((Control)(object)label15);
		((Control)groupBox5).Location = new Point(7, 225);
		((Control)groupBox5).Name = "groupBox5";
		((Control)groupBox5).Size = new Size(166, 76);
		((Control)groupBox5).TabIndex = 36;
		groupBox5.TabStop = false;
		((Control)groupBox5).Text = "Đặng Nhập Lại";
		((Control)numericUpDownKenh).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownKenh).Location = new Point(131, 47);
		numericUpDownKenh.Maximum = new decimal(new int[4] { 8, 0, 0, 0 });
		((Control)numericUpDownKenh).Name = "numericUpDownKenh";
		((Control)numericUpDownKenh).Size = new Size(27, 23);
		((Control)numericUpDownKenh).TabIndex = 38;
		numericUpDownKenh.Value = new decimal(new int[4] { 1, 0, 0, 0 });
		((Control)numericUpDownNV).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownNV).Location = new Point(59, 47);
		numericUpDownNV.Maximum = new decimal(new int[4] { 6, 0, 0, 0 });
		((Control)numericUpDownNV).Name = "numericUpDownNV";
		((Control)numericUpDownNV).Size = new Size(27, 23);
		((Control)numericUpDownNV).TabIndex = 38;
		numericUpDownNV.Value = new decimal(new int[4] { 1, 0, 0, 0 });
		((Control)label16).AutoSize = true;
		((Control)label16).Location = new Point(27, 49);
		((Control)label16).Name = "label16";
		((Control)label16).Size = new Size(26, 15);
		((Control)label16).TabIndex = 37;
		((Control)label16).Text = "NV:";
		((Control)checkBoxLog_BB).AutoSize = true;
		((Control)checkBoxLog_BB).Location = new Point(6, 22);
		((Control)checkBoxLog_BB).Name = "checkBoxLog_BB";
		((Control)checkBoxLog_BB).Size = new Size(79, 19);
		((Control)checkBoxLog_BB).TabIndex = 19;
		((Control)checkBoxLog_BB).Text = "  Bắt Buộc";
		((ButtonBase)checkBoxLog_BB).UseVisualStyleBackColor = true;
		((Control)checkBoxLog).AutoSize = true;
		((Control)checkBoxLog).Location = new Point(6, 51);
		((Control)checkBoxLog).Name = "checkBoxLog";
		((Control)checkBoxLog).Size = new Size(15, 14);
		((Control)checkBoxLog).TabIndex = 19;
		((ButtonBase)checkBoxLog).UseVisualStyleBackColor = true;
		((Control)label15).AutoSize = true;
		((Control)label15).Location = new Point(88, 49);
		((Control)label15).Name = "label15";
		((Control)label15).Size = new Size(37, 15);
		((Control)label15).TabIndex = 20;
		((Control)label15).Text = "Kênh:";
		((Control)checkBoxAutoSetup).AutoSize = true;
		((Control)checkBoxAutoSetup).Location = new Point(15, 40);
		((Control)checkBoxAutoSetup).Name = "checkBoxAutoSetup";
		((Control)checkBoxAutoSetup).Size = new Size(124, 19);
		((Control)checkBoxAutoSetup).TabIndex = 39;
		((Control)checkBoxAutoSetup).Text = "Bỏ Qua AutoSetup";
		((ButtonBase)checkBoxAutoSetup).UseVisualStyleBackColor = true;
		((Control)tabControl1).Controls.Add((Control)(object)tabPage1);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage2);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage3);
		((Control)tabControl1).Controls.Add((Control)(object)tabPage4);
		((Control)tabControl1).Location = new Point(2, 134);
		((Control)tabControl1).Name = "tabControl1";
		tabControl1.SelectedIndex = 0;
		((Control)tabControl1).Size = new Size(381, 332);
		((Control)tabControl1).TabIndex = 40;
		tabControl1.Selected += new TabControlEventHandler(tabControl1_Selected);
		((Control)tabPage1).Controls.Add((Control)(object)groupBox1);
		((Control)tabPage1).Controls.Add((Control)(object)groupBox3);
		((Control)tabPage1).Controls.Add((Control)(object)checkBoxAutoSetup);
		((Control)tabPage1).Controls.Add((Control)(object)labelDaBat);
		((Control)tabPage1).Controls.Add((Control)(object)groupBox5);
		((Control)tabPage1).Controls.Add((Control)(object)labelDaHop);
		tabPage1.Location = new Point(4, 24);
		((Control)tabPage1).Name = "tabPage1";
		((Control)tabPage1).Padding = new Padding(3);
		((Control)tabPage1).Size = new Size(373, 304);
		tabPage1.TabIndex = 0;
		((Control)tabPage1).Text = "Bắt Pet";
		tabPage1.UseVisualStyleBackColor = true;
		((Control)tabPage2).Controls.Add((Control)(object)checkBoxHaiThuoc);
		((Control)tabPage2).Controls.Add((Control)(object)label4);
		((Control)tabPage2).Controls.Add((Control)(object)label6);
		((Control)tabPage2).Controls.Add((Control)(object)checkBoxTele);
		((Control)tabPage2).Controls.Add((Control)(object)numericUpDownY);
		((Control)tabPage2).Controls.Add((Control)(object)numericUpDownX);
		((Control)tabPage2).Controls.Add((Control)(object)button10);
		((Control)tabPage2).Controls.Add((Control)(object)buttonNPC2);
		((Control)tabPage2).Controls.Add((Control)(object)buttonC2);
		((Control)tabPage2).Controls.Add((Control)(object)buttonRom);
		((Control)tabPage2).Controls.Add((Control)(object)buttonH3);
		((Control)tabPage2).Controls.Add((Control)(object)comboBox2);
		((Control)tabPage2).Controls.Add((Control)(object)comboBox1);
		((Control)tabPage2).Controls.Add((Control)(object)buttonH1);
		((Control)tabPage2).Controls.Add((Control)(object)checkBoxNongTrai);
		((Control)tabPage2).Controls.Add((Control)(object)buttonH4);
		((Control)tabPage2).Controls.Add((Control)(object)checkBoxCauCa);
		((Control)tabPage2).Controls.Add((Control)(object)buttonNPC1);
		((Control)tabPage2).Controls.Add((Control)(object)buttonC1);
		((Control)tabPage2).Controls.Add((Control)(object)buttonH2);
		tabPage2.Location = new Point(4, 24);
		((Control)tabPage2).Name = "tabPage2";
		((Control)tabPage2).Padding = new Padding(3);
		((Control)tabPage2).Size = new Size(373, 304);
		tabPage2.TabIndex = 1;
		((Control)tabPage2).Text = "Hái Trồng Câu";
		tabPage2.UseVisualStyleBackColor = true;
		((Control)checkBoxHaiThuoc).AutoSize = true;
		((Control)checkBoxHaiThuoc).Location = new Point(192, 6);
		((Control)checkBoxHaiThuoc).Name = "checkBoxHaiThuoc";
		((Control)checkBoxHaiThuoc).Size = new Size(81, 19);
		((Control)checkBoxHaiThuoc).TabIndex = 67;
		((Control)checkBoxHaiThuoc).Text = "Hái Thuốc";
		((ButtonBase)checkBoxHaiThuoc).UseVisualStyleBackColor = true;
		checkBoxHaiThuoc.CheckedChanged += new EventHandler(checkBoxHaiThuoc_CheckedChanged);
		((Control)label4).AutoSize = true;
		((Control)label4).Location = new Point(129, 128);
		((Control)label4).Name = "label4";
		((Control)label4).Size = new Size(14, 15);
		((Control)label4).TabIndex = 51;
		((Control)label4).Text = "Y";
		((Control)label6).AutoSize = true;
		((Control)label6).Location = new Point(129, 99);
		((Control)label6).Name = "label6";
		((Control)label6).Size = new Size(14, 15);
		((Control)label6).TabIndex = 52;
		((Control)label6).Text = "X";
		((Control)checkBoxTele).AutoSize = true;
		((Control)checkBoxTele).Location = new Point(129, 72);
		((Control)checkBoxTele).Name = "checkBoxTele";
		((Control)checkBoxTele).Size = new Size(47, 19);
		((Control)checkBoxTele).TabIndex = 70;
		((Control)checkBoxTele).Text = "Tele";
		((ButtonBase)checkBoxTele).UseVisualStyleBackColor = true;
		((Control)numericUpDownY).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownY).Location = new Point(147, 126);
		numericUpDownY.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownY).Name = "numericUpDownY";
		((Control)numericUpDownY).Size = new Size(35, 23);
		((Control)numericUpDownY).TabIndex = 53;
		numericUpDownY.Value = new decimal(new int[4] { 20, 0, 0, 0 });
		((Control)numericUpDownX).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownX).Location = new Point(147, 97);
		numericUpDownX.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownX).Name = "numericUpDownX";
		((Control)numericUpDownX).Size = new Size(35, 23);
		((Control)numericUpDownX).TabIndex = 54;
		numericUpDownX.Value = new decimal(new int[4] { 20, 0, 0, 0 });
		((Control)button10).Location = new Point(101, 155);
		((Control)button10).Name = "button10";
		((Control)button10).Size = new Size(81, 25);
		((Control)button10).TabIndex = 62;
		((Control)button10).Text = "Thu Hoạch";
		((ButtonBase)button10).UseVisualStyleBackColor = true;
		((Control)button10).MouseDown += new MouseEventHandler(buttonNPC1_MouseDown);
		((Control)button10).MouseUp += new MouseEventHandler(button10_MouseUp);
		((Control)buttonNPC2).Location = new Point(191, 63);
		((Control)buttonNPC2).Name = "buttonNPC2";
		((Control)buttonNPC2).Size = new Size(54, 25);
		((Control)buttonNPC2).TabIndex = 64;
		((Control)buttonNPC2).Text = "NPC2";
		((ButtonBase)buttonNPC2).UseVisualStyleBackColor = true;
		((Control)buttonNPC2).MouseDown += new MouseEventHandler(buttonNPC1_MouseDown);
		((Control)buttonNPC2).MouseUp += new MouseEventHandler(buttonNPC2_MouseUp);
		((Control)buttonC2).Location = new Point(101, 30);
		((Control)buttonC2).Name = "buttonC2";
		((Control)buttonC2).Size = new Size(68, 25);
		((Control)buttonC2).TabIndex = 58;
		((Control)buttonC2).Text = "Đàn Cá 2";
		((ButtonBase)buttonC2).UseVisualStyleBackColor = true;
		((Control)buttonC2).MouseDown += new MouseEventHandler(buttonNPC1_MouseDown);
		((Control)buttonC2).MouseUp += new MouseEventHandler(buttonC2_MouseUp);
		((Control)buttonRom).Location = new Point(9, 155);
		((Control)buttonRom).Name = "buttonRom";
		((Control)buttonRom).Size = new Size(81, 25);
		((Control)buttonRom).TabIndex = 57;
		((Control)buttonRom).Text = "Người Rơm";
		((ButtonBase)buttonRom).UseVisualStyleBackColor = true;
		((Control)buttonRom).MouseDown += new MouseEventHandler(buttonNPC1_MouseDown);
		((Control)buttonRom).MouseUp += new MouseEventHandler(buttonRom_MouseUp);
		((Control)buttonH3).Location = new Point(251, 63);
		((Control)buttonH3).Name = "buttonH3";
		((Control)buttonH3).Size = new Size(55, 25);
		((Control)buttonH3).TabIndex = 63;
		((Control)buttonH3).Text = "TD1";
		((ButtonBase)buttonH3).UseVisualStyleBackColor = true;
		((Control)buttonH3).MouseDown += new MouseEventHandler(buttonNPC1_MouseDown);
		((Control)buttonH3).MouseUp += new MouseEventHandler(buttonH3_MouseUp);
		((ListControl)comboBox2).FormattingEnabled = true;
		comboBox2.Items.AddRange(new object[14]
		{
			"Lúa Mạch Cấp 1", "Lúa Gạo Cấp 1", "Bắp Cấp 2", "Khoai Cấp 2", "Đậu Phộng Cấp 3", "Đậu Nành Cấp 3", "Cải Thảo Cấp 4", "Củ Cải Cấp 4", "Cacao Cấp 5", "Cao Lương Cấp 5",
			"Mướp Cấp 6", "Bầu Cấp 6", "Bông Cải Cấp 7", "Hoàng Kim Quả Cấp 7"
		});
		((Control)comboBox2).Location = new Point(8, 126);
		((Control)comboBox2).Name = "comboBox2";
		((Control)comboBox2).Size = new Size(115, 23);
		((Control)comboBox2).TabIndex = 68;
		((Control)comboBox2).Text = "Nông Sản";
		((ListControl)comboBox1).FormattingEnabled = true;
		comboBox1.Items.AddRange(new object[14]
		{
			"Lúa Mạch Cấp 1", "Lúa Gạo Cấp 1", "Bắp Cấp 2", "Khoai Cấp 2", "Đậu Phộng Cấp 3", "Đậu Nành Cấp 3", "Cải Thảo Cấp 4", "Củ Cải Cấp 4", "Cacao Cấp 5", "Cao Lương Cấp 5",
			"Mướp Cấp 6", "Bầu Cấp 6", "Bông Cải Cấp 7", "Hoàng Kim Quả Cấp 7"
		});
		((Control)comboBox1).Location = new Point(8, 97);
		((Control)comboBox1).Name = "comboBox1";
		((Control)comboBox1).Size = new Size(115, 23);
		((Control)comboBox1).TabIndex = 69;
		((Control)comboBox1).Text = "Nông Sản";
		((Control)buttonH1).Location = new Point(251, 31);
		((Control)buttonH1).Name = "buttonH1";
		((Control)buttonH1).Size = new Size(55, 25);
		((Control)buttonH1).TabIndex = 55;
		((Control)buttonH1).Text = "TD1";
		((ButtonBase)buttonH1).UseVisualStyleBackColor = true;
		((Control)buttonH1).MouseDown += new MouseEventHandler(buttonNPC1_MouseDown);
		((Control)buttonH1).MouseUp += new MouseEventHandler(buttonH1_MouseUp);
		((Control)checkBoxNongTrai).AutoSize = true;
		((Control)checkBoxNongTrai).Location = new Point(9, 72);
		((Control)checkBoxNongTrai).Name = "checkBoxNongTrai";
		((Control)checkBoxNongTrai).Size = new Size(78, 19);
		((Control)checkBoxNongTrai).TabIndex = 65;
		((Control)checkBoxNongTrai).Text = "Nông Trại";
		((ButtonBase)checkBoxNongTrai).UseVisualStyleBackColor = true;
		checkBoxNongTrai.CheckedChanged += new EventHandler(checkBoxNongTrai_CheckedChanged);
		((Control)buttonH4).Location = new Point(312, 63);
		((Control)buttonH4).Name = "buttonH4";
		((Control)buttonH4).Size = new Size(55, 25);
		((Control)buttonH4).TabIndex = 56;
		((Control)buttonH4).Text = "TD2";
		((ButtonBase)buttonH4).UseVisualStyleBackColor = true;
		((Control)buttonH4).MouseDown += new MouseEventHandler(buttonNPC1_MouseDown);
		((Control)buttonH4).MouseUp += new MouseEventHandler(buttonH4_MouseUp);
		((Control)checkBoxCauCa).AutoSize = true;
		((Control)checkBoxCauCa).Location = new Point(9, 6);
		((Control)checkBoxCauCa).Name = "checkBoxCauCa";
		((Control)checkBoxCauCa).Size = new Size(64, 19);
		((Control)checkBoxCauCa).TabIndex = 66;
		((Control)checkBoxCauCa).Text = "Câu Cá";
		((ButtonBase)checkBoxCauCa).UseVisualStyleBackColor = true;
		checkBoxCauCa.CheckedChanged += new EventHandler(checkBoxCauCa_CheckedChanged);
		((Control)buttonNPC1).Location = new Point(191, 31);
		((Control)buttonNPC1).Name = "buttonNPC1";
		((Control)buttonNPC1).Size = new Size(54, 25);
		((Control)buttonNPC1).TabIndex = 60;
		((Control)buttonNPC1).Text = "NPC1";
		((ButtonBase)buttonNPC1).UseVisualStyleBackColor = true;
		((Control)buttonNPC1).MouseDown += new MouseEventHandler(buttonNPC1_MouseDown);
		((Control)buttonNPC1).MouseUp += new MouseEventHandler(buttonNPC1_MouseUp);
		((Control)buttonC1).Location = new Point(14, 30);
		((Control)buttonC1).Name = "buttonC1";
		((Control)buttonC1).Size = new Size(71, 25);
		((Control)buttonC1).TabIndex = 61;
		((Control)buttonC1).Text = "Đàn Cá 1";
		((ButtonBase)buttonC1).UseVisualStyleBackColor = true;
		((Control)buttonC1).MouseDown += new MouseEventHandler(buttonNPC1_MouseDown);
		((Control)buttonC1).MouseUp += new MouseEventHandler(buttonC1_MouseUp);
		((Control)buttonH2).Location = new Point(312, 31);
		((Control)buttonH2).Name = "buttonH2";
		((Control)buttonH2).Size = new Size(55, 25);
		((Control)buttonH2).TabIndex = 59;
		((Control)buttonH2).Text = "TD2";
		((ButtonBase)buttonH2).UseVisualStyleBackColor = true;
		((Control)buttonH2).MouseDown += new MouseEventHandler(buttonNPC1_MouseDown);
		((Control)buttonH2).MouseUp += new MouseEventHandler(buttonH2_MouseUp);
		((Control)tabPage3).Controls.Add((Control)(object)button12);
		((Control)tabPage3).Controls.Add((Control)(object)button4);
		((Control)tabPage3).Controls.Add((Control)(object)comboBoxGroupName2);
		((Control)tabPage3).Controls.Add((Control)(object)button2);
		((Control)tabPage3).Controls.Add((Control)(object)dataGridView1);
		((Control)tabPage3).Controls.Add((Control)(object)button1);
		((Control)tabPage3).Controls.Add((Control)(object)buttonAddGroup);
		tabPage3.Location = new Point(4, 24);
		((Control)tabPage3).Name = "tabPage3";
		((Control)tabPage3).Padding = new Padding(3);
		((Control)tabPage3).Size = new Size(373, 304);
		tabPage3.TabIndex = 2;
		((Control)tabPage3).Text = "Dịch Chuyển NPC";
		tabPage3.UseVisualStyleBackColor = true;
		((Control)button12).Location = new Point(233, 6);
		((Control)button12).Name = "button12";
		((Control)button12).Size = new Size(71, 23);
		((Control)button12).TabIndex = 57;
		((Control)button12).Text = "Lấy Vị Trí";
		((ButtonBase)button12).UseVisualStyleBackColor = true;
		((Control)button12).Click += new EventHandler(button12_Click);
		((ButtonBase)button4).ImeMode = (ImeMode)0;
		((Control)button4).Location = new Point(185, 6);
		((Control)button4).Name = "button4";
		((Control)button4).Size = new Size(42, 23);
		((Control)button4).TabIndex = 20;
		((Control)button4).Text = "Xóa";
		((ButtonBase)button4).UseVisualStyleBackColor = true;
		((Control)button4).Click += new EventHandler(button4_Click);
		((ListControl)comboBoxGroupName2).FormattingEnabled = true;
		((Control)comboBoxGroupName2).Location = new Point(6, 6);
		((Control)comboBoxGroupName2).Name = "comboBoxGroupName2";
		((Control)comboBoxGroupName2).Size = new Size(73, 23);
		((Control)comboBoxGroupName2).TabIndex = 19;
		((Control)comboBoxGroupName2).Text = "Name";
		((ButtonBase)button2).ImeMode = (ImeMode)0;
		((Control)button2).Location = new Point(310, 6);
		((Control)button2).Name = "button2";
		((Control)button2).Size = new Size(61, 23);
		((Control)button2).TabIndex = 21;
		((Control)button2).Text = "Clear All";
		((ButtonBase)button2).UseVisualStyleBackColor = true;
		((Control)button2).Click += new EventHandler(button2_Click);
		((Control)dataGridView1).AllowDrop = true;
		dataGridView1.ColumnHeadersHeight = 30;
		dataGridView1.Columns.AddRange((DataGridViewColumn[])(object)new DataGridViewColumn[7]
		{
			(DataGridViewColumn)Column5,
			(DataGridViewColumn)Column6,
			(DataGridViewColumn)Column7,
			(DataGridViewColumn)Column8,
			(DataGridViewColumn)Tele3,
			(DataGridViewColumn)Tele4,
			(DataGridViewColumn)Delete
		});
		((Control)dataGridView1).Location = new Point(6, 35);
		((Control)dataGridView1).Name = "dataGridView1";
		dataGridView1.RowTemplate.Height = 25;
		((Control)dataGridView1).Size = new Size(361, 262);
		((Control)dataGridView1).TabIndex = 4;
		dataGridView1.CellContentClick += new DataGridViewCellEventHandler(dataGridView1_CellContentClick);
		((Control)dataGridView1).DragDrop += new DragEventHandler(dataGridView1_DragDrop);
		((Control)dataGridView1).DragOver += new DragEventHandler(dataGridView1_DragOver);
		((Control)dataGridView1).MouseDown += new MouseEventHandler(dataGridView1_MouseDown);
		((Control)dataGridView1).MouseMove += new MouseEventHandler(dataGridView1_MouseMove);
		((DataGridViewColumn)Column5).FillWeight = 80f;
		((DataGridViewColumn)Column5).HeaderText = "Map";
		((DataGridViewColumn)Column5).Name = "Column5";
		((DataGridViewColumn)Column5).Width = 80;
		((DataGridViewColumn)Column6).FillWeight = 30f;
		((DataGridViewColumn)Column6).HeaderText = "X";
		((DataGridViewColumn)Column6).Name = "Column6";
		((DataGridViewColumn)Column6).Width = 30;
		((DataGridViewColumn)Column7).FillWeight = 30f;
		((DataGridViewColumn)Column7).HeaderText = "Y";
		((DataGridViewColumn)Column7).Name = "Column7";
		((DataGridViewColumn)Column7).Width = 30;
		((DataGridViewColumn)Column8).FillWeight = 70f;
		((DataGridViewColumn)Column8).HeaderText = "Note";
		((DataGridViewColumn)Column8).Name = "Column8";
		((DataGridViewColumn)Column8).Width = 70;
		((DataGridViewColumn)Tele3).FillWeight = 30f;
		((DataGridViewColumn)Tele3).HeaderText = "Tele";
		((DataGridViewColumn)Tele3).Name = "Tele3";
		Tele3.Text = "Tele";
		Tele3.UseColumnTextForButtonValue = true;
		((DataGridViewColumn)Tele3).Width = 30;
		((DataGridViewColumn)Tele4).FillWeight = 40f;
		((DataGridViewColumn)Tele4).HeaderText = "Team";
		((DataGridViewColumn)Tele4).Name = "Tele4";
		Tele4.Text = "Team";
		Tele4.UseColumnTextForButtonValue = true;
		((DataGridViewColumn)Tele4).Width = 40;
		((DataGridViewColumn)Delete).FillWeight = 30f;
		((DataGridViewColumn)Delete).HeaderText = "Del";
		((DataGridViewColumn)Delete).Name = "Delete";
		Delete.Text = "Del";
		Delete.UseColumnTextForButtonValue = true;
		((DataGridViewColumn)Delete).Width = 30;
		((ButtonBase)button1).ImeMode = (ImeMode)0;
		((Control)button1).Location = new Point(85, 6);
		((Control)button1).Name = "button1";
		((Control)button1).Size = new Size(44, 23);
		((Control)button1).TabIndex = 21;
		((Control)button1).Text = "Chọn";
		((ButtonBase)button1).UseVisualStyleBackColor = true;
		((Control)button1).Click += new EventHandler(button1_Click);
		((ButtonBase)buttonAddGroup).ImeMode = (ImeMode)0;
		((Control)buttonAddGroup).Location = new Point(135, 6);
		((Control)buttonAddGroup).Name = "buttonAddGroup";
		((Control)buttonAddGroup).Size = new Size(44, 23);
		((Control)buttonAddGroup).TabIndex = 21;
		((Control)buttonAddGroup).Text = "Lưu";
		((ButtonBase)buttonAddGroup).UseVisualStyleBackColor = true;
		((Control)buttonAddGroup).Click += new EventHandler(buttonAddGroup_Click);
		((Control)tabPage4).Controls.Add((Control)(object)button7);
		((Control)tabPage4).Controls.Add((Control)(object)numericUpDown1);
		((Control)tabPage4).Controls.Add((Control)(object)trackBar1);
		((Control)tabPage4).Controls.Add((Control)(object)label17);
		((Control)tabPage4).Controls.Add((Control)(object)labelpt4);
		((Control)tabPage4).Controls.Add((Control)(object)label19);
		((Control)tabPage4).Controls.Add((Control)(object)label18);
		((Control)tabPage4).Controls.Add((Control)(object)button8);
		((Control)tabPage4).Controls.Add((Control)(object)button6);
		((Control)tabPage4).Controls.Add((Control)(object)label10);
		((Control)tabPage4).Controls.Add((Control)(object)labelAcccheck);
		((Control)tabPage4).Controls.Add((Control)(object)labelpt3);
		((Control)tabPage4).Controls.Add((Control)(object)labelpt2);
		((Control)tabPage4).Controls.Add((Control)(object)checkBoxMapTrain);
		((Control)tabPage4).Controls.Add((Control)(object)comboBoxPT4);
		((Control)tabPage4).Controls.Add((Control)(object)comboBoxPT1);
		((Control)tabPage4).Controls.Add((Control)(object)checkBoxPT2);
		((Control)tabPage4).Controls.Add((Control)(object)button3);
		((Control)tabPage4).Controls.Add((Control)(object)checkBoxPT4);
		((Control)tabPage4).Controls.Add((Control)(object)labelpt1);
		((Control)tabPage4).Controls.Add((Control)(object)button5);
		((Control)tabPage4).Controls.Add((Control)(object)checkBoxPT1);
		((Control)tabPage4).Controls.Add((Control)(object)comboBoxPT3);
		((Control)tabPage4).Controls.Add((Control)(object)label13);
		((Control)tabPage4).Controls.Add((Control)(object)label12);
		((Control)tabPage4).Controls.Add((Control)(object)label14);
		((Control)tabPage4).Controls.Add((Control)(object)comboBoxPT2);
		((Control)tabPage4).Controls.Add((Control)(object)checkBoxPT3);
		((Control)tabPage4).Controls.Add((Control)(object)label11);
		tabPage4.Location = new Point(4, 24);
		((Control)tabPage4).Name = "tabPage4";
		((Control)tabPage4).Padding = new Padding(3);
		((Control)tabPage4).Size = new Size(373, 304);
		tabPage4.TabIndex = 3;
		((Control)tabPage4).Text = "Train Quái";
		tabPage4.UseVisualStyleBackColor = true;
		((Control)button7).Location = new Point(286, 64);
		((Control)button7).Name = "button7";
		((Control)button7).Size = new Size(81, 23);
		((Control)button7).TabIndex = 45;
		((Control)button7).Text = "Save";
		((ButtonBase)button7).UseVisualStyleBackColor = true;
		((Control)button7).Click += new EventHandler(button7_Click);
		((Control)numericUpDown1).Location = new Point(312, 274);
		numericUpDown1.Maximum = new decimal(new int[4] { 149, 0, 0, 0 });
		numericUpDown1.Minimum = new decimal(new int[4] { 1, 0, 0, 0 });
		((Control)numericUpDown1).Name = "numericUpDown1";
		((Control)numericUpDown1).Size = new Size(48, 23);
		((Control)numericUpDown1).TabIndex = 44;
		numericUpDown1.Value = new decimal(new int[4] { 145, 0, 0, 0 });
		numericUpDown1.ValueChanged += new EventHandler(numericUpDown1_ValueChanged);
		((Control)trackBar1).AutoSize = false;
		((Control)trackBar1).Location = new Point(66, 275);
		trackBar1.Maximum = 100;
		((Control)trackBar1).Name = "trackBar1";
		((Control)trackBar1).Size = new Size(117, 23);
		((Control)trackBar1).TabIndex = 43;
		trackBar1.TickFrequency = 10;
		trackBar1.Value = 50;
		trackBar1.Scroll += new EventHandler(trackBar1_Scroll);
		((Control)label17).AutoSize = true;
		((Control)label17).Location = new Point(189, 275);
		((Control)label17).Name = "label17";
		((Control)label17).Size = new Size(32, 15);
		((Control)label17).TabIndex = 42;
		((Control)label17).Text = "50 %";
		((Control)labelpt4).AutoSize = true;
		((Control)labelpt4).Location = new Point(215, 207);
		((Control)labelpt4).Name = "labelpt4";
		((Control)labelpt4).Size = new Size(48, 60);
		((Control)labelpt4).TabIndex = 42;
		((Control)labelpt4).Text = "HP/HP\r\nMP/MP\r\nHP/HP\r\nMP/MP";
		((Control)label19).AutoSize = true;
		((Control)label19).Location = new Point(241, 275);
		((Control)label19).Name = "label19";
		((Control)label19).Size = new Size(66, 15);
		((Control)label19).TabIndex = 42;
		((Control)label19).Text = "Reset Turn:";
		((Control)label18).AutoSize = true;
		((Control)label18).Location = new Point(3, 275);
		((Control)label18).Name = "label18";
		((Control)label18).Size = new Size(59, 15);
		((Control)label18).TabIndex = 42;
		((Control)label18).Text = "Phục Hồi:";
		((Control)button8).Location = new Point(286, 38);
		((Control)button8).Name = "button8";
		((Control)button8).Size = new Size(81, 23);
		((Control)button8).TabIndex = 20;
		((Control)button8).Text = "Normal All";
		((ButtonBase)button8).UseVisualStyleBackColor = true;
		((Control)button8).Click += new EventHandler(button8_Click);
		((Control)button6).Location = new Point(286, 9);
		((Control)button6).Name = "button6";
		((Control)button6).Size = new Size(81, 23);
		((Control)button6).TabIndex = 20;
		((Control)button6).Text = "Rescan Flash";
		((ButtonBase)button6).UseVisualStyleBackColor = true;
		((Control)button6).Click += new EventHandler(button6_Click);
		((Control)label10).AutoSize = true;
		((Control)label10).Location = new Point(6, 13);
		((Control)label10).Name = "label10";
		((Control)label10).Size = new Size(29, 60);
		((Control)label10).TabIndex = 42;
		((Control)label10).Text = "FL :\r\nNV :\r\n\r\nPet:";
		((Control)labelAcccheck).AutoSize = true;
		((Control)labelAcccheck).Location = new Point(34, 13);
		((Control)labelAcccheck).Name = "labelAcccheck";
		((Control)labelAcccheck).Size = new Size(55, 75);
		((Control)labelAcccheck).TabIndex = 42;
		((Control)labelAcccheck).Text = "s12.Minh\r\nHP/HP\r\nMP/MP\r\nHP/HP\r\nMP/MP";
		((Control)labelpt3).AutoSize = true;
		((Control)labelpt3).Location = new Point(215, 117);
		((Control)labelpt3).Name = "labelpt3";
		((Control)labelpt3).Size = new Size(48, 60);
		((Control)labelpt3).TabIndex = 42;
		((Control)labelpt3).Text = "HP/HP\r\nMP/MP\r\nHP/HP\r\nMP/MP";
		((Control)labelpt2).AutoSize = true;
		((Control)labelpt2).Location = new Point(31, 207);
		((Control)labelpt2).Name = "labelpt2";
		((Control)labelpt2).Size = new Size(48, 60);
		((Control)labelpt2).TabIndex = 42;
		((Control)labelpt2).Text = "HP/HP\r\nMP/MP\r\nHP/HP\r\nMP/MP";
		((Control)checkBoxMapTrain).AutoSize = true;
		((Control)checkBoxMapTrain).Location = new Point(193, 7);
		((Control)checkBoxMapTrain).Name = "checkBoxMapTrain";
		((Control)checkBoxMapTrain).Size = new Size(64, 19);
		((Control)checkBoxMapTrain).TabIndex = 22;
		((Control)checkBoxMapTrain).Text = "Bản Đồ";
		((ButtonBase)checkBoxMapTrain).UseVisualStyleBackColor = true;
		checkBoxMapTrain.CheckedChanged += new EventHandler(checkBoxMapTrain_CheckedChanged);
		((ListControl)comboBoxPT4).FormattingEnabled = true;
		((Control)comboBoxPT4).Location = new Point(190, 181);
		((Control)comboBoxPT4).Name = "comboBoxPT4";
		((Control)comboBoxPT4).Size = new Size(116, 23);
		((Control)comboBoxPT4).TabIndex = 41;
		((Control)comboBoxPT4).Text = "Select Display Name";
		((ListControl)comboBoxPT1).FormattingEnabled = true;
		((Control)comboBoxPT1).Location = new Point(6, 91);
		((Control)comboBoxPT1).Name = "comboBoxPT1";
		((Control)comboBoxPT1).Size = new Size(116, 23);
		((Control)comboBoxPT1).TabIndex = 41;
		((Control)comboBoxPT1).Text = "Select Display Name";
		((Control)checkBoxPT2).AutoSize = true;
		((Control)checkBoxPT2).Location = new Point(128, 183);
		((Control)checkBoxPT2).Name = "checkBoxPT2";
		((Control)checkBoxPT2).Size = new Size(49, 19);
		((Control)checkBoxPT2).TabIndex = 25;
		((Control)checkBoxPT2).Text = "PT 2";
		((ButtonBase)checkBoxPT2).UseVisualStyleBackColor = true;
		((Control)button3).Location = new Point(190, 61);
		((Control)button3).Name = "button3";
		((Control)button3).Size = new Size(90, 23);
		((Control)button3).TabIndex = 20;
		((Control)button3).Text = "Di Chuyển 2";
		((ButtonBase)button3).UseVisualStyleBackColor = true;
		((Control)button3).MouseDown += new MouseEventHandler(buttonViTri1_MouseDown);
		((Control)button3).MouseUp += new MouseEventHandler(button3_MouseUp);
		((Control)checkBoxPT4).AutoSize = true;
		((Control)checkBoxPT4).Location = new Point(312, 183);
		((Control)checkBoxPT4).Name = "checkBoxPT4";
		((Control)checkBoxPT4).Size = new Size(49, 19);
		((Control)checkBoxPT4).TabIndex = 25;
		((Control)checkBoxPT4).Text = "PT 4";
		((ButtonBase)checkBoxPT4).UseVisualStyleBackColor = true;
		((Control)labelpt1).AutoSize = true;
		((Control)labelpt1).Location = new Point(31, 117);
		((Control)labelpt1).Name = "labelpt1";
		((Control)labelpt1).Size = new Size(48, 60);
		((Control)labelpt1).TabIndex = 42;
		((Control)labelpt1).Text = "HP/HP\r\nMP/MP\r\nHP/HP\r\nMP/MP";
		((Control)button5).Location = new Point(190, 32);
		((Control)button5).Name = "button5";
		((Control)button5).Size = new Size(90, 23);
		((Control)button5).TabIndex = 21;
		((Control)button5).Text = "Di Chuyển 1";
		((ButtonBase)button5).UseVisualStyleBackColor = true;
		((Control)button5).MouseDown += new MouseEventHandler(buttonViTri1_MouseDown);
		((Control)button5).MouseUp += new MouseEventHandler(button5_MouseUp);
		((Control)checkBoxPT1).AutoSize = true;
		((Control)checkBoxPT1).Location = new Point(128, 93);
		((Control)checkBoxPT1).Name = "checkBoxPT1";
		((Control)checkBoxPT1).Size = new Size(49, 19);
		((Control)checkBoxPT1).TabIndex = 25;
		((Control)checkBoxPT1).Text = "PT 1";
		((ButtonBase)checkBoxPT1).UseVisualStyleBackColor = true;
		((ListControl)comboBoxPT3).FormattingEnabled = true;
		((Control)comboBoxPT3).Location = new Point(190, 91);
		((Control)comboBoxPT3).Name = "comboBoxPT3";
		((Control)comboBoxPT3).Size = new Size(116, 23);
		((Control)comboBoxPT3).TabIndex = 41;
		((Control)comboBoxPT3).Text = "Select Display Name";
		((Control)label13).AutoSize = true;
		((Control)label13).Location = new Point(190, 117);
		((Control)label13).Name = "label13";
		((Control)label13).Size = new Size(29, 45);
		((Control)label13).TabIndex = 42;
		((Control)label13).Text = "NV :\r\n\r\nPet:";
		((Control)label12).AutoSize = true;
		((Control)label12).Location = new Point(6, 207);
		((Control)label12).Name = "label12";
		((Control)label12).Size = new Size(29, 45);
		((Control)label12).TabIndex = 42;
		((Control)label12).Text = "NV :\r\n\r\nPet:";
		((Control)label14).AutoSize = true;
		((Control)label14).Location = new Point(190, 207);
		((Control)label14).Name = "label14";
		((Control)label14).Size = new Size(29, 45);
		((Control)label14).TabIndex = 42;
		((Control)label14).Text = "NV :\r\n\r\nPet:";
		((ListControl)comboBoxPT2).FormattingEnabled = true;
		((Control)comboBoxPT2).Location = new Point(6, 181);
		((Control)comboBoxPT2).Name = "comboBoxPT2";
		((Control)comboBoxPT2).Size = new Size(116, 23);
		((Control)comboBoxPT2).TabIndex = 41;
		((Control)comboBoxPT2).Text = "Select Display Name";
		((Control)checkBoxPT3).AutoSize = true;
		((Control)checkBoxPT3).Location = new Point(312, 93);
		((Control)checkBoxPT3).Name = "checkBoxPT3";
		((Control)checkBoxPT3).Size = new Size(49, 19);
		((Control)checkBoxPT3).TabIndex = 25;
		((Control)checkBoxPT3).Text = "PT 3";
		((ButtonBase)checkBoxPT3).UseVisualStyleBackColor = true;
		((Control)label11).AutoSize = true;
		((Control)label11).Location = new Point(6, 117);
		((Control)label11).Name = "label11";
		((Control)label11).Size = new Size(29, 45);
		((Control)label11).TabIndex = 42;
		((Control)label11).Text = "NV :\r\n\r\nPet:";
		((DataGridViewColumn)Column1).HeaderText = "Map";
		((DataGridViewColumn)Column1).Name = "Column1";
		((DataGridViewBand)Column1).Resizable = (DataGridViewTriState)1;
		Column1.SortMode = (DataGridViewColumnSortMode)0;
		((DataGridViewColumn)Column2).FillWeight = 30f;
		((DataGridViewColumn)Column2).HeaderText = "X";
		((DataGridViewColumn)Column2).Name = "Column2";
		((DataGridViewColumn)Column2).Width = 30;
		((DataGridViewColumn)Column3).FillWeight = 30f;
		((DataGridViewColumn)Column3).HeaderText = "Y";
		((DataGridViewColumn)Column3).Name = "Column3";
		((DataGridViewColumn)Column3).Width = 30;
		((DataGridViewColumn)Column4).FillWeight = 80f;
		((DataGridViewColumn)Column4).HeaderText = "Note";
		((DataGridViewColumn)Column4).Name = "Column4";
		((DataGridViewColumn)Column4).Width = 80;
		((DataGridViewColumn)Tele).FillWeight = 35f;
		((DataGridViewColumn)Tele).HeaderText = "Tele1";
		((DataGridViewColumn)Tele).Name = "Tele";
		Tele.Text = "tele";
		Tele.UseColumnTextForButtonValue = true;
		((DataGridViewColumn)Tele).Width = 35;
		((ContainerControl)this).AutoScaleDimensions = new SizeF(7f, 15f);
		((ContainerControl)this).AutoScaleMode = (AutoScaleMode)1;
		((Form)this).ClientSize = new Size(899, 568);
		((Control)this).Controls.Add((Control)(object)tabControl1);
		((Control)this).Controls.Add((Control)(object)ButtonDebug);
		((Control)this).Controls.Add((Control)(object)groupBox2);
		((Control)this).Controls.Add((Control)(object)ButtonRunAuto);
		((Control)this).Controls.Add((Control)(object)textBox2);
		((Control)this).Controls.Add((Control)(object)buttonPause);
		((Form)this).FormBorderStyle = (FormBorderStyle)1;
		((Form)this).MaximizeBox = false;
		((Control)this).Name = "HoTroQ200";
		((Form)this).StartPosition = (FormStartPosition)1;
		((Control)this).Text = "[s32.๖Kunㄨ] BMx Bắt Pet ";
		((Form)this).FormClosing += new FormClosingEventHandler(HoTroQ200_FormClosing);
		((Form)this).FormClosed += new FormClosedEventHandler(BatPet_FormClosed);
		((Form)this).Load += new EventHandler(BatPet_Load);
		((Control)groupBox1).ResumeLayout(false);
		((Control)groupBox1).PerformLayout();
		((Control)groupBox3).ResumeLayout(false);
		((Control)groupBox3).PerformLayout();
		((ISupportInitialize)numericUpDownTurn).EndInit();
		((ISupportInitialize)pictureBox1).EndInit();
		((Control)groupBox2).ResumeLayout(false);
		((Control)groupBox2).PerformLayout();
		((ISupportInitialize)numericUpDownFPS).EndInit();
		((Control)groupBox5).ResumeLayout(false);
		((Control)groupBox5).PerformLayout();
		((ISupportInitialize)numericUpDownKenh).EndInit();
		((ISupportInitialize)numericUpDownNV).EndInit();
		((Control)tabControl1).ResumeLayout(false);
		((Control)tabPage1).ResumeLayout(false);
		((Control)tabPage1).PerformLayout();
		((Control)tabPage2).ResumeLayout(false);
		((Control)tabPage2).PerformLayout();
		((ISupportInitialize)numericUpDownY).EndInit();
		((ISupportInitialize)numericUpDownX).EndInit();
		((Control)tabPage3).ResumeLayout(false);
		((ISupportInitialize)dataGridView1).EndInit();
		((Control)tabPage4).ResumeLayout(false);
		((Control)tabPage4).PerformLayout();
		((ISupportInitialize)numericUpDown1).EndInit();
		((ISupportInitialize)trackBar1).EndInit();
		((Control)this).ResumeLayout(false);
		((Control)this).PerformLayout();
	}
}
