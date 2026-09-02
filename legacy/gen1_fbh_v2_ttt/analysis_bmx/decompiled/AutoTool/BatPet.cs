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
using System.Timers;
using System.Windows.Forms;
using AutoTool.Properties;
using KAutoHelper;

namespace AutoTool;

public class BatPet : Form
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

	public string[] namePet;

	public string pathPetBat;

	public string pathPetDungHop;

	public int ViTriNhanVat_X = 1000;

	public int ViTriNhanVat_Y = 1000;

	public int ViTri1_X = 0;

	public int ViTri1_Y = 0;

	public int ViTri2_X = 0;

	public int ViTri2_Y = 0;

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

	public bool TrongTran;

	private int lineChat;

	public int VIP;

	public string accMain;

	private bool autoRun;

	private static Timer myTimer = new Timer(1000.0);

	public int counter;

	public int countTimer_chat;

	public int countTimer_pet;

	public int countTimer_trong;

	public bool userTimer;

	public string nameUser;

	public string pathTheme;

	private string fileName;

	private FontConverter fC;

	private DataGridViewCellStyle TableThemeColor;

	private ImageLayout layout;

	public string pathMaps;

	private uint myPointer_map_id;

	private uint[] offset_map_id;

	private uint myPointer_map_load_data;

	private uint[] offset_map_load;

	private uint[] offset_map_data;

	private double dataMapOld;

	public string map;

	public int TieuDe;

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

	private TextBox textBoxChat;

	private CheckBox checkBoxChat;

	private ComboBox comboBoxChat;

	private ComboBox comboBoxDungHop;

	private GroupBox groupBox4;

	private Label label9;

	private CheckBox CheckboxTrong;

	private ComboBox comboBoxTrong;

	private Label label10;

	private NumericUpDown numericUpDownGio;

	private CheckBox CheckboxDaPet;

	private Label label11;

	private NumericUpDown numericUpDownDaPet;

	private NumericUpDown numericUpDownChat;

	private Label label12;

	private CheckBox ButtonDebug;

	private PictureBox pictureBox1;

	private Label label14;

	private Label label13;

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

	private Button buttonSave;

	private Label label17;

	private CheckBox checkBoxLog_BB;

	private CheckBox checkBoxAutoSetup;

	private PictureBox pictureBox2;

	private Label labelAcccheck;

	public BatPet()
	{
		//IL_0224: Unknown result type (might be due to invalid IL or missing references)
		//IL_022e: Expected O, but got Unknown
		//IL_022f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0239: Expected O, but got Unknown
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
		TrongTran = true;
		lineChat = 0;
		VIP = 0;
		accMain = "null";
		autoRun = false;
		counter = 0;
		countTimer_chat = 0;
		countTimer_pet = 0;
		countTimer_trong = 0;
		userTimer = false;
		nameUser = "";
		pathTheme = linkApp + "/Theme";
		fC = new FontConverter();
		TableThemeColor = new DataGridViewCellStyle();
		pathMaps = ((object)linkApp).ToString() + "Anh/Maps";
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
		map = "null";
		TieuDe = 30;
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
		//IL_0019: Unknown result type (might be due to invalid IL or missing references)
		//IL_001e: Unknown result type (might be due to invalid IL or missing references)
		((ObjectCollection)checkedListBox1.Items).Clear();
		Enumerator<string> enumerator = items.GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				string current = enumerator.Current;
				string text = current.Substring(pathBatPet.Length + 5, current.Length - pathBatPet.Length - 1 - 8);
				if (text.Trim().ToLower().IndexOf(((Control)textBoxTimKiem).Text.Trim().ToLower()) > -1)
				{
					((ObjectCollection)checkedListBox1.Items).Add((object)text);
				}
			}
		}
		finally
		{
			((System.IDisposable)enumerator/*cast due to .constrained prefix*/).Dispose();
		}
	}

	private void BatPet_Load(object sender, EventArgs e)
	{
		//IL_0034: Unknown result type (might be due to invalid IL or missing references)
		//IL_0574: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_00cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0159: Unknown result type (might be due to invalid IL or missing references)
		//IL_0189: Unknown result type (might be due to invalid IL or missing references)
		//IL_0201: Unknown result type (might be due to invalid IL or missing references)
		//IL_0206: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a4: Unknown result type (might be due to invalid IL or missing references)
		string nameFlash = Program.AppMain.nameFlash;
		autoRun = Program.AppMain.autoRun;
		((Control)this).Text = "[" + nameFlash + "] BMx Bắt Pet";
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
		((Control)label3).Text = "ID: " + processID;
		RECT val = default(RECT);
		val = AutoControl.GetWindowRect(hWnd);
		SetWindowPos(hWnd, 0, val.Left, val.Top, 1066, 724, 2);
		((Control)groupBox2).Text = string.Concat(new string[6]
		{
			"ID: ",
			processID.ToString(),
			" Vị Trí Flash: ",
			val.Top.ToString(),
			" x ",
			val.Left.ToString()
		});
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
		((Control)groupBox1).Text = "Chọn 1 Trong " + Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)items) + " Pet";
		((Control)textBoxTimKiem).ForeColor = SystemColors.GrayText;
		((Control)textBoxTimKiem).Text = "VD: Thất Vị Kê";
		((Control)labelDaBat).Text = "Bắt " + checkSoLanBat + " Lần";
		((Control)labelDaHop).Text = "Ép " + SoLanDungHop + " Lần";
		for (int num = 9; num > 0; num--)
		{
			Bitmap image = ImageScanOpenCV.GetImage(pathKhac + "/VIP_" + num + ".png");
			if (ImageScanOpenCV.FindOutPoint(AvatarNV, image, 0.9).HasValue)
			{
				VIP = num;
				break;
			}
		}
		((Control)label13).Text = "VIP " + VIP;
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
		((Control)label14).Text = accMain;
		int num2 = (int)ReadMemoryData((int)processID, myPointer, offset_FPS);
		if (num2 != 0)
		{
			numericUpDownFPS.Value = decimal.op_Implicit(num2);
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
			Program.AppMain.ThongBao(Program.AppMain.inforNoti, " Thiê\u0301t Lâ\u0323p Bă\u0301t Pet", "Ba\u0309n Setup Lô\u0303i - Lưu La\u0323i Ba\u0309n Setup Cho Bă\u0301t Pet");
		}
		debugText("begin");
		if (autoRun)
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
		//IL_035d: Unknown result type (might be due to invalid IL or missing references)
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
		for (int num = 9; num > 0; num--)
		{
			Bitmap image = ImageScanOpenCV.GetImage(pathKhac + "/VIP_" + num + ".png");
			if (ImageScanOpenCV.FindOutPoint(AvatarNV, image, 0.9).HasValue)
			{
				VIP = num;
				break;
			}
		}
		((Control)label13).Text = "VIP " + VIP;
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
		((Control)label14).Text = accMain;
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
		//IL_00af: Unknown result type (might be due to invalid IL or missing references)
		//IL_00b5: Invalid comparison between Unknown and I4
		//IL_001d: Unknown result type (might be due to invalid IL or missing references)
		//IL_008b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0095: Expected O, but got Unknown
		//IL_00c2: Unknown result type (might be due to invalid IL or missing references)
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
			IsStop = false;
			T = new System.Threading.Tasks.Task((Action)([CompilerGenerated] () =>
			{
				//IL_007b: Unknown result type (might be due to invalid IL or missing references)
				//IL_0081: Expected O, but got Unknown
				//IL_0087: Unknown result type (might be due to invalid IL or missing references)
				//IL_0091: Expected O, but got Unknown
				//IL_008c: Unknown result type (might be due to invalid IL or missing references)
				//IL_0093: Expected O, but got Unknown
				//IL_00da: Unknown result type (might be due to invalid IL or missing references)
				//IL_00e0: Invalid comparison between Unknown and I4
				//IL_02aa: Unknown result type (might be due to invalid IL or missing references)
				//IL_0314: Unknown result type (might be due to invalid IL or missing references)
				//IL_031a: Invalid comparison between Unknown and I4
				//IL_0397: Unknown result type (might be due to invalid IL or missing references)
				//IL_039d: Invalid comparison between Unknown and I4
				//IL_03dd: Unknown result type (might be due to invalid IL or missing references)
				//IL_03e3: Invalid comparison between Unknown and I4
				//IL_058c: Unknown result type (might be due to invalid IL or missing references)
				//IL_0592: Invalid comparison between Unknown and I4
				//IL_05f9: Unknown result type (might be due to invalid IL or missing references)
				//IL_05ff: Invalid comparison between Unknown and I4
				//IL_0747: Unknown result type (might be due to invalid IL or missing references)
				//IL_074d: Invalid comparison between Unknown and I4
				//IL_07a1: Unknown result type (might be due to invalid IL or missing references)
				//IL_07a7: Invalid comparison between Unknown and I4
				PressKey("ESC");
				pathPetBat = GetPathPet(checkedListBox1.CheckedItems[0].ToString());
				pathPetDungHop = GetPathDungHop(pathPetBat);
				string text = File.ReadAllText(pathPetBat);
				string image = text.Substring(0, Program.AppMain.numberEncodePer) + text.Substring(Program.AppMain.numberEncodePer + 10);
				byte[] array = Convert.FromBase64String(FixBase64ForImage(image));
				MemoryStream val = new MemoryStream(array);
				Bitmap image2 = new Bitmap((Image)(Bitmap)Image.FromStream((Stream)(object)val));
				((Control)pictureBox2).Visible = true;
				pictureBox2.Image = (Image)(object)image2;
				PhuToiMap2(hWnd, map);
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
					if ((int)checkBoxChat.CheckState == 1)
					{
						string[] array2 = ((Control)textBoxChat).Text.Split('\n', (StringSplitOptions)0);
						Chat(array2[lineChat], ((Control)comboBoxChat).Text);
						lineChat++;
						if (lineChat >= Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array2))
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
							string text2 = ((Control)comboBoxDungHop).Text;
							string text3 = text2;
							if (!(text3 == "Lục"))
							{
								if (!(text3 == "Lam"))
								{
									if (!(text3 == "Tím"))
									{
										if (text3 == "Cam")
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

	private void HideAllSelect()
	{
		((Control)groupBox1).Enabled = false;
		((Control)groupBox3).Enabled = false;
		((Control)groupBox4).Enabled = false;
		((Control)groupBox5).Enabled = false;
	}

	private void ShowAllSelect()
	{
		((Control)groupBox1).Enabled = true;
		((Control)groupBox3).Enabled = true;
		((Control)groupBox4).Enabled = true;
		((Control)groupBox5).Enabled = true;
	}

	private void buttonViTri1_MouseUp(object sender, MouseEventArgs e)
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
		ViTri1_X = x2 - x;
		ViTri1_Y = y2 - y;
		map = checkTenMap();
		((Control)buttonViTri1).BackColor = Color.Green;
		CapNhatThongTin();
	}

	private void buttonViTri2_MouseUp(object sender, MouseEventArgs e)
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
		ViTri2_X = x2 - x;
		ViTri2_Y = y2 - y;
		map = checkTenMap();
		((Control)buttonViTri2).BackColor = Color.Green;
		CapNhatThongTin();
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
		//IL_0044: Unknown result type (might be due to invalid IL or missing references)
		//IL_004a: Invalid comparison between Unknown and I4
		//IL_0030: Unknown result type (might be due to invalid IL or missing references)
		//IL_006d: Unknown result type (might be due to invalid IL or missing references)
		if ((int)ButtonDebug.CheckState == 1)
		{
			((Control)ButtonDebug).Text = "Thu Gọn";
			((Form)this).Size = new Size(386, 583);
		}
		else if ((int)ButtonDebug.CheckState == 0)
		{
			((Control)ButtonDebug).Text = "Chi Tiết";
			((Form)this).Size = new Size(386, 194);
		}
	}

	private void batPet()
	{
		//IL_0030: Unknown result type (might be due to invalid IL or missing references)
		//IL_0036: Invalid comparison between Unknown and I4
		//IL_012b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0131: Invalid comparison between Unknown and I4
		//IL_0466: Unknown result type (might be due to invalid IL or missing references)
		//IL_046c: Invalid comparison between Unknown and I4
		//IL_01e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e8: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_01fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_0226: Unknown result type (might be due to invalid IL or missing references)
		//IL_022b: Unknown result type (might be due to invalid IL or missing references)
		//IL_023c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0241: Unknown result type (might be due to invalid IL or missing references)
		//IL_07f0: Unknown result type (might be due to invalid IL or missing references)
		//IL_07f6: Invalid comparison between Unknown and I4
		//IL_0705: Unknown result type (might be due to invalid IL or missing references)
		//IL_070b: Invalid comparison between Unknown and I4
		//IL_05e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_05ea: Invalid comparison between Unknown and I4
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
				checkChat();
				PressKey("`");
			}
			SoLanBatTrongTran = 0;
			checkNgoaiTran++;
			debugText("Ở Ngoài " + checkNgoaiTran);
			if (checkNgoaiTran >= 16)
			{
				PressKey("Enter");
				if ((int)checkBoxFixMap.CheckState == 1)
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
			delay_100ms(3);
		}
		debugText(SoLanBatTrongTran.ToString());
		delay_100ms(3);
		if (!FindPoint(hWnd, pathIconBatPet + "/NhanVat.png").HasValue)
		{
			return;
		}
		int num3 = 0;
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
		while (!FindAndClickPet(hWnd, pathPetBat, 5, 5, "Chọn Pet").HasValue)
		{
			num3++;
			if (num3 <= 7)
			{
				debugText("Check Lại Lần " + num3);
				delay_100ms(10);
				continue;
			}
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

	private void DungItemChoNhanVat(string item)
	{
		//IL_02f7: Unknown result type (might be due to invalid IL or missing references)
		//IL_02fc: Unknown result type (might be due to invalid IL or missing references)
		//IL_030d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0312: Unknown result type (might be due to invalid IL or missing references)
		//IL_0349: Unknown result type (might be due to invalid IL or missing references)
		//IL_034e: Unknown result type (might be due to invalid IL or missing references)
		//IL_035f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0364: Unknown result type (might be due to invalid IL or missing references)
		Point? val = null;
		bool flag = false;
		switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(item))
		{
		case 1750655700u:
			if (!(item == "Luyện Thú Đơn Cao"))
			{
				goto default;
			}
			MoTabVatPham();
			val = FindAndClick(hWnd, pathIconBatPet + "/LuyenThuDonCao.png", 5, 1, "Dùng Luyện Thú Đơn Cao");
			flag = false;
			break;
		case 3094061858u:
			if (!(item == "Luyện Thú Đơn Siêu"))
			{
				goto default;
			}
			MoTabVatPham();
			val = FindAndClick(hWnd, pathIconBatPet + "/LuyenThuDonSieu.png", 5, 1, "Dùng Luyện Thú Đơn Siêu");
			flag = false;
			break;
		case 4011739300u:
			if (!(item == "Kẹp Bắt Thú (Thường, Siêu)"))
			{
				goto default;
			}
			MoTabVatPham();
			val = FindAndClick(hWnd, pathIconBatPet + "/KepBatThu.png", 5, 1, " Dùng Kẹp Bắt Thú");
			flag = false;
			break;
		case 1363975968u:
			if (!(item == "Tinh Linh Cầu"))
			{
				goto default;
			}
			MoTabVatPham();
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
			FindAndClick(hWnd, pathIconBatPet + "/PhongNgu.png", 5, 5, "Không Thấy Item Phòng Ngự");
		}
	}

	private void MoTabVatPham()
	{
		SendClickOnPosition(hWnd, 964, 377, (EMouseKey)0);
		delay_100ms(5);
		FindAndClick(hWnd, pathKhac + "/setupRun_1.png", 18, 46, "Túi 1");
		delay_100ms(10);
	}

	private bool DungHopPet(string LoaiPet)
	{
		//IL_0356: Unknown result type (might be due to invalid IL or missing references)
		//IL_035b: Unknown result type (might be due to invalid IL or missing references)
		//IL_036c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0371: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e6: Unknown result type (might be due to invalid IL or missing references)
		//IL_02eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_02fc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0301: Unknown result type (might be due to invalid IL or missing references)
		reConnect();
		checkChat();
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
		int num = 0;
		int num2 = 0;
		while (flag)
		{
			reConnect();
			delay_100ms(50);
			Point value;
			if (FindsAndDoubleClickPetSubPoint(hWnd, pathIconBatPet + "/HuongDan.png", 0, -40, 590, 90, pathPetDungHop, "Click Pet"))
			{
				if (FindAndClick(hWnd, pathIconBatPet + "/Hop.png", 5, 1, "Hợp").HasValue)
				{
					PressKey("Enter");
					delay_100ms(20);
					flag = false;
					SoLanDungHop++;
					((Control)labelDaHop).Text = "Ép " + SoLanDungHop + " Lần";
					num = 0;
					num2 = 0;
					continue;
				}
				num2++;
				if (num2 >= 3)
				{
					debugText("Không Đủ Pet Hợp");
					flag = false;
					return false;
				}
				System.IntPtr intPtr = hWnd;
				value = val.Value;
				int x = ((Point)(ref value)).X + 585;
				value = val.Value;
				ClickPointInMap(intPtr, useMap: false, x, ((Point)(ref value)).Y + 76, "Chuyển Trang");
				delay_100ms(50);
			}
			else
			{
				num++;
				if (num >= 15)
				{
					debugText("Không Thấy Pet");
					flag = false;
					return false;
				}
				System.IntPtr intPtr2 = hWnd;
				value = val.Value;
				int x2 = ((Point)(ref value)).X + 585;
				value = val.Value;
				ClickPointInMap(intPtr2, useMap: false, x2, ((Point)(ref value)).Y + 76, "Chuyển Trang");
			}
		}
		return true;
	}

	private void ResetViTri()
	{
	}

	private unsafe void HideIconECT()
	{
		//IL_006a: Unknown result type (might be due to invalid IL or missing references)
		//IL_006f: Unknown result type (might be due to invalid IL or missing references)
		//IL_007d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0082: Unknown result type (might be due to invalid IL or missing references)
		//IL_0101: Unknown result type (might be due to invalid IL or missing references)
		//IL_0106: Unknown result type (might be due to invalid IL or missing references)
		//IL_0114: Unknown result type (might be due to invalid IL or missing references)
		//IL_0119: Unknown result type (might be due to invalid IL or missing references)
		//IL_0285: Unknown result type (might be due to invalid IL or missing references)
		//IL_028a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0298: Unknown result type (might be due to invalid IL or missing references)
		//IL_029d: Unknown result type (might be due to invalid IL or missing references)
		//IL_019f: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e6: Unknown result type (might be due to invalid IL or missing references)
		//IL_01eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_031e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0323: Unknown result type (might be due to invalid IL or missing references)
		//IL_0331: Unknown result type (might be due to invalid IL or missing references)
		//IL_0336: Unknown result type (might be due to invalid IL or missing references)
		//IL_03bd: Unknown result type (might be due to invalid IL or missing references)
		//IL_03c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_03d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_03d8: Unknown result type (might be due to invalid IL or missing references)
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

	private void reConnect()
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		//IL_0527: Unknown result type (might be due to invalid IL or missing references)
		//IL_052c: Unknown result type (might be due to invalid IL or missing references)
		//IL_053a: Unknown result type (might be due to invalid IL or missing references)
		//IL_053f: Unknown result type (might be due to invalid IL or missing references)
		//IL_055b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0560: Unknown result type (might be due to invalid IL or missing references)
		//IL_056e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0573: Unknown result type (might be due to invalid IL or missing references)
		//IL_03cd: Unknown result type (might be due to invalid IL or missing references)
		//IL_03d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_03e9: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ee: Unknown result type (might be due to invalid IL or missing references)
		//IL_0319: Unknown result type (might be due to invalid IL or missing references)
		//IL_031e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0335: Unknown result type (might be due to invalid IL or missing references)
		//IL_033a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0265: Unknown result type (might be due to invalid IL or missing references)
		//IL_026a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0281: Unknown result type (might be due to invalid IL or missing references)
		//IL_0286: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_01cd: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_088f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0894: Unknown result type (might be due to invalid IL or missing references)
		//IL_089f: Unknown result type (might be due to invalid IL or missing references)
		//IL_08a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0427: Unknown result type (might be due to invalid IL or missing references)
		//IL_042c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0443: Unknown result type (might be due to invalid IL or missing references)
		//IL_0448: Unknown result type (might be due to invalid IL or missing references)
		//IL_0373: Unknown result type (might be due to invalid IL or missing references)
		//IL_0378: Unknown result type (might be due to invalid IL or missing references)
		//IL_038f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0394: Unknown result type (might be due to invalid IL or missing references)
		//IL_02bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c4: Unknown result type (might be due to invalid IL or missing references)
		//IL_02db: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_020b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0210: Unknown result type (might be due to invalid IL or missing references)
		//IL_0227: Unknown result type (might be due to invalid IL or missing references)
		//IL_022c: Unknown result type (might be due to invalid IL or missing references)
		//IL_047e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0483: Unknown result type (might be due to invalid IL or missing references)
		//IL_049a: Unknown result type (might be due to invalid IL or missing references)
		//IL_049f: Unknown result type (might be due to invalid IL or missing references)
		//IL_09b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_09e6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0aba: Unknown result type (might be due to invalid IL or missing references)
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
							goto IL_0476;
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
						goto IL_0476;
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
						goto IL_0476;
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
					goto IL_0476;
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
			goto IL_04cd;
		}
		goto IL_04d7;
		IL_0476:
		System.IntPtr intPtr9 = hWnd;
		value2 = val.Value;
		int num10 = ((Point)(ref value2)).X - 622 + 530;
		value2 = val.Value;
		AutoControl.SendClickOnPosition(intPtr9, num10, ((Point)(ref value2)).Y - 227 + 268 - 30, (EMouseKey)0, 1);
		debugText("lỗi");
		goto IL_04cd;
		IL_04d7:
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
		IL_04cd:
		delay_100ms(50);
		goto IL_04d7;
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

	private void setupRun()
	{
		//IL_008a: Unknown result type (might be due to invalid IL or missing references)
		//IL_008f: Unknown result type (might be due to invalid IL or missing references)
		//IL_009a: Unknown result type (might be due to invalid IL or missing references)
		//IL_009f: Unknown result type (might be due to invalid IL or missing references)
		//IL_010c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0111: Unknown result type (might be due to invalid IL or missing references)
		//IL_0128: Unknown result type (might be due to invalid IL or missing references)
		//IL_012d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0251: Unknown result type (might be due to invalid IL or missing references)
		//IL_0256: Unknown result type (might be due to invalid IL or missing references)
		//IL_0261: Unknown result type (might be due to invalid IL or missing references)
		//IL_0266: Unknown result type (might be due to invalid IL or missing references)
		//IL_03d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_03d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_03e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_03e7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0340: Unknown result type (might be due to invalid IL or missing references)
		//IL_0345: Unknown result type (might be due to invalid IL or missing references)
		//IL_0350: Unknown result type (might be due to invalid IL or missing references)
		//IL_0355: Unknown result type (might be due to invalid IL or missing references)
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
		//IL_0053: Unknown result type (might be due to invalid IL or missing references)
		//IL_0058: Unknown result type (might be due to invalid IL or missing references)
		//IL_0066: Unknown result type (might be due to invalid IL or missing references)
		//IL_006b: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c1: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_017e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0183: Unknown result type (might be due to invalid IL or missing references)
		//IL_0191: Unknown result type (might be due to invalid IL or missing references)
		//IL_0196: Unknown result type (might be due to invalid IL or missing references)
		//IL_0203: Unknown result type (might be due to invalid IL or missing references)
		//IL_0208: Unknown result type (might be due to invalid IL or missing references)
		//IL_0216: Unknown result type (might be due to invalid IL or missing references)
		//IL_021b: Unknown result type (might be due to invalid IL or missing references)
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

	private void setFPS(int fps)
	{
		//IL_003e: Unknown result type (might be due to invalid IL or missing references)
		if (WriteMemoryData((int)processID, myPointer, offset_FPS, fps))
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
		//IL_0176: Unknown result type (might be due to invalid IL or missing references)
		//IL_017b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0188: Unknown result type (might be due to invalid IL or missing references)
		//IL_018d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0047: Unknown result type (might be due to invalid IL or missing references)
		//IL_004c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0055: Unknown result type (might be due to invalid IL or missing references)
		//IL_005a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0066: Unknown result type (might be due to invalid IL or missing references)
		//IL_006b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0082: Unknown result type (might be due to invalid IL or missing references)
		//IL_0087: Unknown result type (might be due to invalid IL or missing references)
		Point? val = FindPoint(hWnd, pathKhungAnhLon, 0.99);
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
		return ImageScanOpenCV.FindOutPoints(val6, val2, 0.99);
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
		//IL_0073: Unknown result type (might be due to invalid IL or missing references)
		//IL_0079: Invalid comparison between Unknown and I4
		//IL_015a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0160: Invalid comparison between Unknown and I4
		//IL_0265: Unknown result type (might be due to invalid IL or missing references)
		//IL_026b: Invalid comparison between Unknown and I4
		//IL_034c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0352: Invalid comparison between Unknown and I4
		//IL_01ab: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b1: Invalid comparison between Unknown and I4
		//IL_039d: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a3: Invalid comparison between Unknown and I4
		int num = (int)numericUpDownGio.Value * 60;
		int num2 = (int)numericUpDownDaPet.Value;
		if (num2 > 0)
		{
			if (countTimer_pet >= 600)
			{
				while (!WaitAvatar(hWnd))
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
				}
				if ((int)checkBoxItemPetBay.CheckState == 1)
				{
					while (Xuong())
					{
					}
					delay_100ms(10);
				}
				else
				{
					while (Bay())
					{
					}
					delay_100ms(10);
				}
				DaPet();
				if ((int)checkBoxItemPetBay.CheckState == 1)
				{
					while (Bay())
					{
					}
					delay_100ms(10);
				}
				else
				{
					while (Xuong())
					{
					}
					delay_100ms(10);
				}
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
			while (!WaitAvatar(hWnd))
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
			}
			if ((int)checkBoxItemPetBay.CheckState == 1)
			{
				while (Xuong())
				{
				}
				delay_100ms(10);
			}
			else
			{
				while (Bay())
				{
				}
				delay_100ms(10);
			}
			Trong();
			if ((int)checkBoxItemPetBay.CheckState == 1)
			{
				while (Bay())
				{
				}
				delay_100ms(10);
			}
			else
			{
				while (Xuong())
				{
				}
				delay_100ms(10);
			}
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

	private void buttonSave_Click(object sender, EventArgs e)
	{
		//IL_001c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0022: Expected O, but got Unknown
		TextWriter val = (TextWriter)new StreamWriter(pathData + "/Setting/" + nameUser + "/batpet.txt");
		val.Write(scanSetting());
		val.Close();
		System.DateTime lastWriteTime = File.GetLastWriteTime(pathData + "/Setting/" + nameUser + "/batpet.txt");
		((Control)label17).Text = "Lần cuối lúc\r\n" + lastWriteTime.ToString("g");
	}

	private string scanSetting()
	{
		string text = "";
		text = ((checkedListBox1.CheckedItems.Count != 0) ? (text + checkedListBox1.CheckedItems[0].ToString() + "\n") : (text + "\n"));
		text = text + ViTri1_X + "\n";
		text = text + ViTri1_Y + "\n";
		text = text + ViTri2_X + "\n";
		text = text + ViTri2_Y + "\n";
		text = ((!checkBoxMap1.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxItemPetBay.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxFixMap.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + numericUpDownTurn.Value + "\n";
		text = ((!checkBoxLoop.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + ((Control)comboBoxItem).Text + "\n";
		text = ((!checkBoxItemPetToNV.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxAuto.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxDungHop.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + ((Control)comboBoxDungHop).Text + "\n";
		text = ((!CheckboxDaPet.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + numericUpDownDaPet.Value + "\n";
		text = ((!CheckboxTrong.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + ((Control)comboBoxTrong).Text + "\n";
		text = text + numericUpDownGio.Value + "\n";
		text = ((!checkBoxLog.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxLog_BB.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + numericUpDownNV.Value + "\n";
		text = text + numericUpDownKenh.Value + "\n";
		text = ((!checkBoxChat.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + ((Control)comboBoxChat).Text + "\n";
		text = text + numericUpDownChat.Value + "\n";
		return text + ((Control)textBoxChat).Text;
	}

	private void loadSetting()
	{
		//IL_00c1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0198: Unknown result type (might be due to invalid IL or missing references)
		//IL_019f: Expected O, but got Unknown
		//IL_01a6: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b0: Expected O, but got Unknown
		//IL_01ab: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b2: Expected O, but got Unknown
		nameUser = Program.AppMain.nameUser;
		if (!File.Exists(pathData + "/Setting/" + nameUser + "/batpet.txt"))
		{
			Directory.CreateDirectory(pathData + "/Setting/" + nameUser);
			return;
		}
		System.DateTime lastWriteTime = File.GetLastWriteTime(pathData + "/Setting/" + nameUser + "/batpet.txt");
		if (lastWriteTime.Year * 10000 + lastWriteTime.Month * 100 + lastWriteTime.Day < Program.AppMain.dayCheckSave)
		{
			MessageBox.Show("Bản Lưu Thiết Lập " + ((Control)this).Text + " Đã Cũ Do Có Thay Đổi/Thêm Các Tùy Chọn.\r\nVui Lòng Lưu Lại Thiết Lập Daily!", "BMx-Tool: Daily", (MessageBoxButtons)0, (MessageBoxIcon)64);
			return;
		}
		string[] array = File.ReadAllLines(pathData + "/Setting/" + nameUser + "/batpet.txt");
		int num = 0;
		int num2 = 0;
		if (array[num2] != "")
		{
			((ObjectCollection)checkedListBox1.Items).Add((object)array[num2].Trim());
			checkedListBox1.SetItemCheckState(0, (CheckState)1);
			pathPetBat = GetPathPet(checkedListBox1.CheckedItems[0].ToString());
			string text = File.ReadAllText(pathPetBat);
			string image = text.Substring(0, Program.AppMain.numberEncodePer) + text.Substring(Program.AppMain.numberEncodePer + 10);
			byte[] array2 = Convert.FromBase64String(FixBase64ForImage(image));
			MemoryStream val = new MemoryStream(array2);
			Bitmap image2 = new Bitmap((Image)(Bitmap)Image.FromStream((Stream)(object)val));
			((Control)pictureBox2).Visible = true;
			pictureBox2.Image = (Image)(object)image2;
		}
		int.TryParse(array[++num2].Trim(), ref ViTri1_X);
		int.TryParse(array[++num2].Trim(), ref ViTri1_Y);
		int.TryParse(array[++num2].Trim(), ref ViTri2_X);
		int.TryParse(array[++num2].Trim(), ref ViTri2_Y);
		if (array[++num2].Trim() == "1")
		{
			checkBoxMap1.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxMap1.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxItemPetBay.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxItemPetBay.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxFixMap.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxFixMap.CheckState = (CheckState)0;
		}
		int.TryParse(array[++num2].Trim(), ref num);
		numericUpDownTurn.Value = decimal.op_Implicit(num);
		if (array[++num2].Trim() == "1")
		{
			checkBoxLoop.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxLoop.CheckState = (CheckState)0;
		}
		((Control)comboBoxItem).Text = array[++num2].Trim();
		if (array[++num2].Trim() == "1")
		{
			checkBoxItemPetToNV.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxItemPetToNV.CheckState = (CheckState)0;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxAuto.CheckState = (CheckState)1;
			checkBoxBoChay.CheckState = (CheckState)0;
		}
		else
		{
			checkBoxAuto.CheckState = (CheckState)0;
			checkBoxBoChay.CheckState = (CheckState)1;
		}
		if (array[++num2].Trim() == "1")
		{
			checkBoxDungHop.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxDungHop.CheckState = (CheckState)0;
		}
		((Control)comboBoxDungHop).Text = array[++num2].Trim();
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
		((Control)label17).Text = "Lần cuối lúc\r\n" + lastWriteTime.ToString("g");
		debugText("Đã Áp Dụng Cài Đặt \"Bắt Pet\" Lần Cuối Lúc\r\n" + lastWriteTime.ToString("g"));
	}

	private bool loadTheme()
	{
		//IL_010f: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_02aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_02bc: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_00da: Unknown result type (might be due to invalid IL or missing references)
		//IL_0324: Unknown result type (might be due to invalid IL or missing references)
		//IL_0336: Unknown result type (might be due to invalid IL or missing references)
		//IL_0348: Unknown result type (might be due to invalid IL or missing references)
		//IL_035a: Unknown result type (might be due to invalid IL or missing references)
		//IL_036c: Unknown result type (might be due to invalid IL or missing references)
		//IL_037e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0390: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_03b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_03c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_03d8: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_03fc: Unknown result type (might be due to invalid IL or missing references)
		//IL_040e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0420: Unknown result type (might be due to invalid IL or missing references)
		//IL_0432: Unknown result type (might be due to invalid IL or missing references)
		//IL_0444: Unknown result type (might be due to invalid IL or missing references)
		//IL_0456: Unknown result type (might be due to invalid IL or missing references)
		//IL_0468: Unknown result type (might be due to invalid IL or missing references)
		//IL_047a: Unknown result type (might be due to invalid IL or missing references)
		//IL_048c: Unknown result type (might be due to invalid IL or missing references)
		//IL_049e: Unknown result type (might be due to invalid IL or missing references)
		//IL_04b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_04c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_04d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_04e6: Unknown result type (might be due to invalid IL or missing references)
		//IL_04f8: Unknown result type (might be due to invalid IL or missing references)
		//IL_050a: Unknown result type (might be due to invalid IL or missing references)
		//IL_051c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0548: Unknown result type (might be due to invalid IL or missing references)
		//IL_055a: Unknown result type (might be due to invalid IL or missing references)
		//IL_056c: Unknown result type (might be due to invalid IL or missing references)
		//IL_057e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0590: Unknown result type (might be due to invalid IL or missing references)
		//IL_05a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_05b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_05c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_05d8: Unknown result type (might be due to invalid IL or missing references)
		//IL_05ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_05fc: Unknown result type (might be due to invalid IL or missing references)
		//IL_060e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0620: Unknown result type (might be due to invalid IL or missing references)
		//IL_0632: Unknown result type (might be due to invalid IL or missing references)
		//IL_0644: Unknown result type (might be due to invalid IL or missing references)
		//IL_0656: Unknown result type (might be due to invalid IL or missing references)
		//IL_0668: Unknown result type (might be due to invalid IL or missing references)
		//IL_067a: Unknown result type (might be due to invalid IL or missing references)
		//IL_068c: Unknown result type (might be due to invalid IL or missing references)
		//IL_069e: Unknown result type (might be due to invalid IL or missing references)
		//IL_06b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_06c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_06d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_06e6: Unknown result type (might be due to invalid IL or missing references)
		//IL_06f8: Unknown result type (might be due to invalid IL or missing references)
		//IL_070a: Unknown result type (might be due to invalid IL or missing references)
		//IL_071c: Unknown result type (might be due to invalid IL or missing references)
		//IL_072e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0740: Unknown result type (might be due to invalid IL or missing references)
		//IL_078e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0793: Unknown result type (might be due to invalid IL or missing references)
		//IL_079d: Expected O, but got Unknown
		//IL_07bd: Unknown result type (might be due to invalid IL or missing references)
		//IL_07c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_07cc: Expected O, but got Unknown
		//IL_07ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_07f1: Unknown result type (might be due to invalid IL or missing references)
		//IL_07fb: Expected O, but got Unknown
		//IL_081b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0820: Unknown result type (might be due to invalid IL or missing references)
		//IL_082a: Expected O, but got Unknown
		//IL_084a: Unknown result type (might be due to invalid IL or missing references)
		//IL_084f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0859: Expected O, but got Unknown
		//IL_0879: Unknown result type (might be due to invalid IL or missing references)
		//IL_087e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0888: Expected O, but got Unknown
		//IL_08a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_08ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_08b7: Expected O, but got Unknown
		//IL_08d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_08dc: Unknown result type (might be due to invalid IL or missing references)
		//IL_08e6: Expected O, but got Unknown
		//IL_0906: Unknown result type (might be due to invalid IL or missing references)
		//IL_090b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0915: Expected O, but got Unknown
		//IL_0935: Unknown result type (might be due to invalid IL or missing references)
		//IL_093a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0944: Expected O, but got Unknown
		//IL_0964: Unknown result type (might be due to invalid IL or missing references)
		//IL_0969: Unknown result type (might be due to invalid IL or missing references)
		//IL_0973: Expected O, but got Unknown
		//IL_0993: Unknown result type (might be due to invalid IL or missing references)
		//IL_0998: Unknown result type (might be due to invalid IL or missing references)
		//IL_09a2: Expected O, but got Unknown
		//IL_09c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_09c7: Unknown result type (might be due to invalid IL or missing references)
		//IL_09d1: Expected O, but got Unknown
		//IL_09f1: Unknown result type (might be due to invalid IL or missing references)
		//IL_09f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a00: Expected O, but got Unknown
		//IL_0a20: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a25: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a2f: Expected O, but got Unknown
		//IL_0a4f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a54: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a5e: Expected O, but got Unknown
		//IL_0a7e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a83: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a8d: Expected O, but got Unknown
		//IL_0aad: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ab2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0abc: Expected O, but got Unknown
		//IL_0adc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ae1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0aeb: Expected O, but got Unknown
		//IL_0b0b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b10: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b1a: Expected O, but got Unknown
		//IL_0b3a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b3f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b49: Expected O, but got Unknown
		//IL_0b69: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b6e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b78: Expected O, but got Unknown
		//IL_0b98: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b9d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ba7: Expected O, but got Unknown
		//IL_0bc7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bcc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bd6: Expected O, but got Unknown
		//IL_0bf6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bfb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c05: Expected O, but got Unknown
		//IL_0c25: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c2a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c34: Expected O, but got Unknown
		//IL_0c54: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c59: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c63: Expected O, but got Unknown
		//IL_0c83: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c88: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c92: Expected O, but got Unknown
		//IL_0cb2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cb7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cc1: Expected O, but got Unknown
		//IL_0ce9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cfb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d0d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d1f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d31: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d43: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d55: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d81: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d93: Unknown result type (might be due to invalid IL or missing references)
		//IL_0da5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0db7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0dc9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ddb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ded: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e3b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e40: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e4a: Expected O, but got Unknown
		//IL_0e6a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e6f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e79: Expected O, but got Unknown
		//IL_0e99: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e9e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ea8: Expected O, but got Unknown
		//IL_0ec8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ecd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ed7: Expected O, but got Unknown
		//IL_0ef7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0efc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f06: Expected O, but got Unknown
		//IL_0f26: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f2b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f35: Expected O, but got Unknown
		//IL_0f55: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f5a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f64: Expected O, but got Unknown
		//IL_0f8c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f9e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fb0: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fc2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fd4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fe6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ff8: Unknown result type (might be due to invalid IL or missing references)
		//IL_100a: Unknown result type (might be due to invalid IL or missing references)
		//IL_1036: Unknown result type (might be due to invalid IL or missing references)
		//IL_1048: Unknown result type (might be due to invalid IL or missing references)
		//IL_105a: Unknown result type (might be due to invalid IL or missing references)
		//IL_106c: Unknown result type (might be due to invalid IL or missing references)
		//IL_107e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1090: Unknown result type (might be due to invalid IL or missing references)
		//IL_10a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_10b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_1102: Unknown result type (might be due to invalid IL or missing references)
		//IL_1107: Unknown result type (might be due to invalid IL or missing references)
		//IL_1111: Expected O, but got Unknown
		//IL_1131: Unknown result type (might be due to invalid IL or missing references)
		//IL_1136: Unknown result type (might be due to invalid IL or missing references)
		//IL_1140: Expected O, but got Unknown
		//IL_1160: Unknown result type (might be due to invalid IL or missing references)
		//IL_1165: Unknown result type (might be due to invalid IL or missing references)
		//IL_116f: Expected O, but got Unknown
		//IL_118f: Unknown result type (might be due to invalid IL or missing references)
		//IL_1194: Unknown result type (might be due to invalid IL or missing references)
		//IL_119e: Expected O, but got Unknown
		//IL_11be: Unknown result type (might be due to invalid IL or missing references)
		//IL_11c3: Unknown result type (might be due to invalid IL or missing references)
		//IL_11cd: Expected O, but got Unknown
		//IL_11ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_11f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_11fc: Expected O, but got Unknown
		//IL_121c: Unknown result type (might be due to invalid IL or missing references)
		//IL_1221: Unknown result type (might be due to invalid IL or missing references)
		//IL_122b: Expected O, but got Unknown
		//IL_124b: Unknown result type (might be due to invalid IL or missing references)
		//IL_1250: Unknown result type (might be due to invalid IL or missing references)
		//IL_125a: Expected O, but got Unknown
		//IL_021a: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_024c: Unknown result type (might be due to invalid IL or missing references)
		//IL_025e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0270: Unknown result type (might be due to invalid IL or missing references)
		//IL_0282: Unknown result type (might be due to invalid IL or missing references)
		//IL_0294: Unknown result type (might be due to invalid IL or missing references)
		//IL_0223: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_022c: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0235: Unknown result type (might be due to invalid IL or missing references)
		//IL_023e: Unknown result type (might be due to invalid IL or missing references)
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
					((Control)groupBox2).BackgroundImageLayout = layout;
					((Control)groupBox3).BackgroundImageLayout = layout;
					((Control)groupBox4).BackgroundImageLayout = layout;
					((Control)groupBox5).BackgroundImageLayout = layout;
				}
				else
				{
					((Control)groupBox1).BackColor = Color.FromArgb(num2);
					((Control)groupBox2).BackColor = Color.FromArgb(num2);
					((Control)groupBox3).BackColor = Color.FromArgb(num2);
					((Control)groupBox4).BackColor = Color.FromArgb(num2);
					((Control)groupBox5).BackColor = Color.FromArgb(num2);
				}
				int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
				((Control)label3).BackColor = Color.FromArgb(num2);
				((Control)label8).BackColor = Color.FromArgb(num2);
				((Control)label10).BackColor = Color.FromArgb(num2);
				((Control)labelDaBat).BackColor = Color.FromArgb(num2);
				((Control)labelDaHop).BackColor = Color.FromArgb(num2);
				((Control)label2).BackColor = Color.FromArgb(num2);
				((Control)label1).BackColor = Color.FromArgb(num2);
				((Control)label5).BackColor = Color.FromArgb(num2);
				((Control)label7).BackColor = Color.FromArgb(num2);
				((Control)label15).BackColor = Color.FromArgb(num2);
				((Control)label16).BackColor = Color.FromArgb(num2);
				((Control)label11).BackColor = Color.FromArgb(num2);
				((Control)label9).BackColor = Color.FromArgb(num2);
				((Control)label12).BackColor = Color.FromArgb(num2);
				((Control)label17).BackColor = Color.FromArgb(num2);
				((Control)CheckboxTrong).BackColor = Color.FromArgb(num2);
				((Control)CheckboxDaPet).BackColor = Color.FromArgb(num2);
				((Control)checkBoxChat).BackColor = Color.FromArgb(num2);
				((Control)checkBoxMap1).BackColor = Color.FromArgb(num2);
				((Control)checkBoxItemPetBay).BackColor = Color.FromArgb(num2);
				((Control)checkBoxFixMap).BackColor = Color.FromArgb(num2);
				((Control)checkBoxLoop).BackColor = Color.FromArgb(num2);
				((Control)checkBoxItemPetToNV).BackColor = Color.FromArgb(num2);
				((Control)checkBoxAuto).BackColor = Color.FromArgb(num2);
				((Control)checkBoxBoChay).BackColor = Color.FromArgb(num2);
				((Control)checkBoxDungHop).BackColor = Color.FromArgb(num2);
				((Control)checkBoxLog).BackColor = Color.FromArgb(num2);
				((Control)checkBoxLog_BB).BackColor = Color.FromArgb(num2);
				((Control)checkBoxAutoSetup).BackColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
				((Control)label3).ForeColor = Color.FromArgb(num2);
				((Control)label8).ForeColor = Color.FromArgb(num2);
				((Control)label10).ForeColor = Color.FromArgb(num2);
				((Control)labelDaBat).ForeColor = Color.FromArgb(num2);
				((Control)labelDaHop).ForeColor = Color.FromArgb(num2);
				((Control)label2).ForeColor = Color.FromArgb(num2);
				((Control)label1).ForeColor = Color.FromArgb(num2);
				((Control)label5).ForeColor = Color.FromArgb(num2);
				((Control)label7).ForeColor = Color.FromArgb(num2);
				((Control)label15).ForeColor = Color.FromArgb(num2);
				((Control)label16).ForeColor = Color.FromArgb(num2);
				((Control)label11).ForeColor = Color.FromArgb(num2);
				((Control)label9).ForeColor = Color.FromArgb(num2);
				((Control)label12).ForeColor = Color.FromArgb(num2);
				((Control)label17).ForeColor = Color.FromArgb(num2);
				((Control)CheckboxTrong).ForeColor = Color.FromArgb(num2);
				((Control)CheckboxDaPet).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxChat).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxMap1).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxItemPetBay).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxFixMap).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxLoop).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxItemPetToNV).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxAuto).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxBoChay).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxDungHop).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxLog).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxLog_BB).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxAutoSetup).ForeColor = Color.FromArgb(num2);
				object obj = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
				Font val = (Font)((obj is Font) ? obj : null);
				((Control)label3).Font = new Font(val.FontFamily, ((Control)label3).Font.Size, val.Style);
				((Control)label8).Font = new Font(val.FontFamily, ((Control)label8).Font.Size, val.Style);
				((Control)label10).Font = new Font(val.FontFamily, ((Control)label10).Font.Size, val.Style);
				((Control)labelDaBat).Font = new Font(val.FontFamily, ((Control)labelDaBat).Font.Size, val.Style);
				((Control)labelDaHop).Font = new Font(val.FontFamily, ((Control)labelDaHop).Font.Size, val.Style);
				((Control)label2).Font = new Font(val.FontFamily, ((Control)label2).Font.Size, val.Style);
				((Control)label1).Font = new Font(val.FontFamily, ((Control)label1).Font.Size, val.Style);
				((Control)label5).Font = new Font(val.FontFamily, ((Control)label5).Font.Size, val.Style);
				((Control)label7).Font = new Font(val.FontFamily, ((Control)label7).Font.Size, val.Style);
				((Control)label15).Font = new Font(val.FontFamily, ((Control)label15).Font.Size, val.Style);
				((Control)label16).Font = new Font(val.FontFamily, ((Control)label16).Font.Size, val.Style);
				((Control)label11).Font = new Font(val.FontFamily, ((Control)label11).Font.Size, val.Style);
				((Control)label9).Font = new Font(val.FontFamily, ((Control)label9).Font.Size, val.Style);
				((Control)label12).Font = new Font(val.FontFamily, ((Control)label12).Font.Size, val.Style);
				((Control)label17).Font = new Font(val.FontFamily, ((Control)label17).Font.Size, val.Style);
				((Control)CheckboxTrong).Font = new Font(val.FontFamily, ((Control)CheckboxTrong).Font.Size, val.Style);
				((Control)CheckboxDaPet).Font = new Font(val.FontFamily, ((Control)CheckboxDaPet).Font.Size, val.Style);
				((Control)checkBoxChat).Font = new Font(val.FontFamily, ((Control)checkBoxChat).Font.Size, val.Style);
				((Control)checkBoxMap1).Font = new Font(val.FontFamily, ((Control)checkBoxMap1).Font.Size, val.Style);
				((Control)checkBoxItemPetBay).Font = new Font(val.FontFamily, ((Control)checkBoxItemPetBay).Font.Size, val.Style);
				((Control)checkBoxFixMap).Font = new Font(val.FontFamily, ((Control)checkBoxFixMap).Font.Size, val.Style);
				((Control)checkBoxLoop).Font = new Font(val.FontFamily, ((Control)checkBoxLoop).Font.Size, val.Style);
				((Control)checkBoxItemPetToNV).Font = new Font(val.FontFamily, ((Control)checkBoxItemPetToNV).Font.Size, val.Style);
				((Control)checkBoxAuto).Font = new Font(val.FontFamily, ((Control)checkBoxAuto).Font.Size, val.Style);
				((Control)checkBoxBoChay).Font = new Font(val.FontFamily, ((Control)checkBoxBoChay).Font.Size, val.Style);
				((Control)checkBoxDungHop).Font = new Font(val.FontFamily, ((Control)checkBoxDungHop).Font.Size, val.Style);
				((Control)checkBoxLog).Font = new Font(val.FontFamily, ((Control)checkBoxLog).Font.Size, val.Style);
				((Control)checkBoxLog_BB).Font = new Font(val.FontFamily, ((Control)checkBoxLog_BB).Font.Size, val.Style);
				((Control)checkBoxAutoSetup).Font = new Font(val.FontFamily, ((Control)checkBoxAutoSetup).Font.Size, val.Style);
				int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
				((Control)ButtonRunAuto).BackColor = Color.FromArgb(num2);
				((Control)buttonPause).BackColor = Color.FromArgb(num2);
				((Control)ButtonDebug).BackColor = Color.FromArgb(num2);
				((Control)buttonReset).BackColor = Color.FromArgb(num2);
				((Control)buttonViTri1).BackColor = Color.FromArgb(num2);
				((Control)buttonViTri2).BackColor = Color.FromArgb(num2);
				((Control)buttonSave).BackColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
				((Control)ButtonRunAuto).ForeColor = Color.FromArgb(num2);
				((Control)buttonPause).ForeColor = Color.FromArgb(num2);
				((Control)ButtonDebug).ForeColor = Color.FromArgb(num2);
				((Control)buttonReset).ForeColor = Color.FromArgb(num2);
				((Control)buttonViTri1).ForeColor = Color.FromArgb(num2);
				((Control)buttonViTri2).ForeColor = Color.FromArgb(num2);
				((Control)buttonSave).ForeColor = Color.FromArgb(num2);
				object obj2 = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
				val = (Font)((obj2 is Font) ? obj2 : null);
				((Control)ButtonRunAuto).Font = new Font(val.FontFamily, ((Control)ButtonRunAuto).Font.Size, val.Style);
				((Control)buttonPause).Font = new Font(val.FontFamily, ((Control)buttonPause).Font.Size, val.Style);
				((Control)ButtonDebug).Font = new Font(val.FontFamily, ((Control)ButtonDebug).Font.Size, val.Style);
				((Control)buttonReset).Font = new Font(val.FontFamily, ((Control)buttonReset).Font.Size, val.Style);
				((Control)buttonViTri1).Font = new Font(val.FontFamily, ((Control)buttonViTri1).Font.Size, val.Style);
				((Control)buttonViTri2).Font = new Font(val.FontFamily, ((Control)buttonViTri2).Font.Size, val.Style);
				((Control)buttonSave).Font = new Font(val.FontFamily, ((Control)buttonSave).Font.Size, val.Style);
				int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
				((Control)textBox2).BackColor = Color.FromArgb(num2);
				((Control)textBoxTimKiem).BackColor = Color.FromArgb(num2);
				((Control)checkedListBox1).BackColor = Color.FromArgb(num2);
				((Control)comboBoxTrong).BackColor = Color.FromArgb(num2);
				((Control)comboBoxChat).BackColor = Color.FromArgb(num2);
				((Control)textBoxChat).BackColor = Color.FromArgb(num2);
				((Control)comboBoxItem).BackColor = Color.FromArgb(num2);
				((Control)comboBoxDungHop).BackColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
				((Control)textBox2).ForeColor = Color.FromArgb(num2);
				((Control)textBoxTimKiem).ForeColor = Color.FromArgb(num2);
				((Control)checkedListBox1).ForeColor = Color.FromArgb(num2);
				((Control)comboBoxTrong).ForeColor = Color.FromArgb(num2);
				((Control)comboBoxChat).ForeColor = Color.FromArgb(num2);
				((Control)textBoxChat).ForeColor = Color.FromArgb(num2);
				((Control)comboBoxItem).ForeColor = Color.FromArgb(num2);
				((Control)comboBoxDungHop).ForeColor = Color.FromArgb(num2);
				object obj3 = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
				val = (Font)((obj3 is Font) ? obj3 : null);
				((Control)textBox2).Font = new Font(val.FontFamily, ((Control)textBox2).Font.Size, val.Style);
				((Control)textBoxTimKiem).Font = new Font(val.FontFamily, ((Control)textBoxTimKiem).Font.Size, val.Style);
				((Control)checkedListBox1).Font = new Font(val.FontFamily, ((Control)checkedListBox1).Font.Size, val.Style);
				((Control)comboBoxTrong).Font = new Font(val.FontFamily, ((Control)comboBoxTrong).Font.Size, val.Style);
				((Control)comboBoxChat).Font = new Font(val.FontFamily, ((Control)comboBoxChat).Font.Size, val.Style);
				((Control)textBoxChat).Font = new Font(val.FontFamily, ((Control)textBoxChat).Font.Size, val.Style);
				((Control)comboBoxItem).Font = new Font(val.FontFamily, ((Control)comboBoxItem).Font.Size, val.Style);
				((Control)comboBoxDungHop).Font = new Font(val.FontFamily, ((Control)comboBoxDungHop).Font.Size, val.Style);
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
		dataMapOld = ReadMemoryData((int)processID, myPointer_map_load_data, offset_map_data);
	}

	private double CheckLoadMap()
	{
		double num = ReadMemoryData((int)processID, myPointer_map_load_data, offset_map_data);
		double num2 = ReadMemoryData((int)processID, myPointer_map_load_data, offset_map_load);
		if (num == 100.0 || num == dataMapOld)
		{
			return 0.0;
		}
		dataMapOld = -1.0;
		return num2 / num * 100.0;
	}

	private int checkIDMap()
	{
		return (int)ReadMemoryData((int)processID, myPointer_map_id, offset_map_id);
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
		//IL_023c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0241: Unknown result type (might be due to invalid IL or missing references)
		//IL_0252: Unknown result type (might be due to invalid IL or missing references)
		//IL_0257: Unknown result type (might be due to invalid IL or missing references)
		//IL_0279: Unknown result type (might be due to invalid IL or missing references)
		//IL_027e: Unknown result type (might be due to invalid IL or missing references)
		//IL_028f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0294: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_02bb: Unknown result type (might be due to invalid IL or missing references)
		//IL_02cc: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0309: Unknown result type (might be due to invalid IL or missing references)
		//IL_030e: Unknown result type (might be due to invalid IL or missing references)
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
			int num3 = array[0];
			int num4 = array[1];
			int num5 = array[3];
			while (!FindPoint(hWnd, pathMaps + "/map2.png").HasValue)
			{
				PressKey("M");
				delay_100ms(2);
			}
			if (X != 0.0 && Y != 0.0)
			{
				WriteMemoryData((int)processId, myPointer, offset_ToaDoX, X * 10.0);
				WriteMemoryData((int)processId, myPointer, offset_ToaDoY, Y * 10.0);
			}
			int num6 = vitriMapTrongMang();
			int num7 = 1;
			if (num6 > 39 && num6 < 48)
			{
				num7 = 2;
			}
			if (num5 != num7)
			{
				AutoControl.SendClickOnPosition(hWnd, 917, 562, (EMouseKey)0, 1);
				delay_100ms(5);
			}
			AutoControl.SendClickOnPosition(hWnd, num3, num4 - 30, (EMouseKey)0, 1);
			if (team)
			{
				delay_100ms(2);
				if (FindAndClick(hWnd, pathKhac + "/Auto_Nhom.png", 1, 1, "Nhóm").HasValue)
				{
					if (X != 0.0 && Y != 0.0)
					{
						WriteMemoryData((int)processId, myPointer, offset_ToaDoX, X * 10.0);
						WriteMemoryData((int)processId, myPointer, offset_ToaDoY, Y * 10.0);
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
						WriteMemoryData((int)processId, myPointer, offset_ToaDoX, X * 10.0);
						WriteMemoryData((int)processId, myPointer, offset_ToaDoY, Y * 10.0);
					}
					num--;
					continue;
				}
				double num8 = CheckLoadMap();
				debugText("Map - " + ((int)num8).ToString("D2") + "%");
				if (num8 == 100.0)
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
				WriteMemoryData((int)processId, myPointer, offset_ToaDoX, X * 10.0);
				WriteMemoryData((int)processId, myPointer, offset_ToaDoY, Y * 10.0);
			}
			Point value = val.Value;
			int num9 = ((Point)(ref value)).X + 200;
			value = val.Value;
			AutoControl.SendClickOnPosition(hWnd, num9, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
			delay_100ms(2);
			value = val.Value;
			int num10 = ((Point)(ref value)).X + 200;
			value = val.Value;
			AutoControl.SendClickOnPosition(hWnd, num10, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
			delay_100ms(5);
			value = val.Value;
			int num11 = ((Point)(ref value)).X + 200;
			value = val.Value;
			AutoControl.SendClickOnPosition(hWnd, num11, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
			delay_100ms(2);
			value = val.Value;
			int num12 = ((Point)(ref value)).X + 200;
			value = val.Value;
			AutoControl.SendClickOnPosition(hWnd, num12, ((Point)(ref value)).Y - 116 - 30, (EMouseKey)0, 1);
			delay_100ms(5);
		}
		PressKey("ESC");
	}

	private void CapNhatThongTin()
	{
		((Control)labelAcccheck).Text = string.Concat(new string[10]
		{
			"Map:",
			map,
			"\r\nVi\u0323 Tri\u0301 1: ",
			ViTri1_X.ToString(),
			" x ",
			ViTri1_Y.ToString(),
			"\r\nVi\u0323 Tri\u0301 2: ",
			ViTri2_X.ToString(),
			" x ",
			ViTri2_Y.ToString()
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

	private void checkedListBox1_SelectedIndexChanged(object sender, EventArgs e)
	{
		//IL_0078: Unknown result type (might be due to invalid IL or missing references)
		//IL_007f: Expected O, but got Unknown
		//IL_0086: Unknown result type (might be due to invalid IL or missing references)
		//IL_0090: Expected O, but got Unknown
		//IL_008b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0092: Expected O, but got Unknown
		if (checkedListBox1.CheckedItems.Count > 0)
		{
			pathPetBat = GetPathPet(checkedListBox1.CheckedItems[0].ToString());
			string text = File.ReadAllText(pathPetBat);
			string image = text.Substring(0, Program.AppMain.numberEncodePer) + text.Substring(Program.AppMain.numberEncodePer + 10);
			byte[] array = Convert.FromBase64String(FixBase64ForImage(image));
			MemoryStream val = new MemoryStream(array);
			Bitmap image2 = new Bitmap((Image)(Bitmap)Image.FromStream((Stream)(object)val));
			((Control)pictureBox2).Visible = true;
			pictureBox2.Image = (Image)(object)image2;
		}
		else
		{
			((Control)pictureBox2).Visible = false;
		}
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
		//IL_0366: Unknown result type (might be due to invalid IL or missing references)
		//IL_038c: Unknown result type (might be due to invalid IL or missing references)
		//IL_03cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_03f1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0443: Unknown result type (might be due to invalid IL or missing references)
		//IL_044d: Expected O, but got Unknown
		//IL_0467: Unknown result type (might be due to invalid IL or missing references)
		//IL_048d: Unknown result type (might be due to invalid IL or missing references)
		//IL_04dd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0506: Unknown result type (might be due to invalid IL or missing references)
		//IL_0577: Unknown result type (might be due to invalid IL or missing references)
		//IL_05a0: Unknown result type (might be due to invalid IL or missing references)
		//IL_05e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_0609: Unknown result type (might be due to invalid IL or missing references)
		//IL_062f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0639: Expected O, but got Unknown
		//IL_0647: Unknown result type (might be due to invalid IL or missing references)
		//IL_0651: Expected O, but got Unknown
		//IL_065f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0669: Expected O, but got Unknown
		//IL_0680: Unknown result type (might be due to invalid IL or missing references)
		//IL_06a9: Unknown result type (might be due to invalid IL or missing references)
		//IL_06cf: Unknown result type (might be due to invalid IL or missing references)
		//IL_06d9: Expected O, but got Unknown
		//IL_06f7: Unknown result type (might be due to invalid IL or missing references)
		//IL_071d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0764: Unknown result type (might be due to invalid IL or missing references)
		//IL_078a: Unknown result type (might be due to invalid IL or missing references)
		//IL_094b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0977: Unknown result type (might be due to invalid IL or missing references)
		//IL_09ff: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a25: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a66: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a8c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ad0: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ada: Expected O, but got Unknown
		//IL_0ae1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b6f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b98: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bd9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bff: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c43: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c4d: Expected O, but got Unknown
		//IL_0c5b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c65: Expected O, but got Unknown
		//IL_0c7c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ca2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ce2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d08: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d4c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d56: Expected O, but got Unknown
		//IL_0d64: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d6e: Expected O, but got Unknown
		//IL_0d79: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d9f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ddd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e03: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e47: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e51: Expected O, but got Unknown
		//IL_0e5f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e69: Expected O, but got Unknown
		//IL_0e80: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ea6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f04: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f2a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f6e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f78: Expected O, but got Unknown
		//IL_0faa: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fd0: Unknown result type (might be due to invalid IL or missing references)
		//IL_1020: Unknown result type (might be due to invalid IL or missing references)
		//IL_1046: Unknown result type (might be due to invalid IL or missing references)
		//IL_1089: Unknown result type (might be due to invalid IL or missing references)
		//IL_10b2: Unknown result type (might be due to invalid IL or missing references)
		//IL_10f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_111c: Unknown result type (might be due to invalid IL or missing references)
		//IL_1160: Unknown result type (might be due to invalid IL or missing references)
		//IL_116a: Expected O, but got Unknown
		//IL_1182: Unknown result type (might be due to invalid IL or missing references)
		//IL_11a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_11ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_11f6: Expected O, but got Unknown
		//IL_11fd: Unknown result type (might be due to invalid IL or missing references)
		//IL_1211: Unknown result type (might be due to invalid IL or missing references)
		//IL_1265: Unknown result type (might be due to invalid IL or missing references)
		//IL_129c: Unknown result type (might be due to invalid IL or missing references)
		//IL_12a6: Expected O, but got Unknown
		//IL_12bd: Unknown result type (might be due to invalid IL or missing references)
		//IL_12e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_1316: Unknown result type (might be due to invalid IL or missing references)
		//IL_1320: Expected O, but got Unknown
		//IL_1367: Unknown result type (might be due to invalid IL or missing references)
		//IL_1379: Unknown result type (might be due to invalid IL or missing references)
		//IL_139f: Unknown result type (might be due to invalid IL or missing references)
		//IL_14e9: Unknown result type (might be due to invalid IL or missing references)
		//IL_1515: Unknown result type (might be due to invalid IL or missing references)
		//IL_1566: Unknown result type (might be due to invalid IL or missing references)
		//IL_158c: Unknown result type (might be due to invalid IL or missing references)
		//IL_15c8: Unknown result type (might be due to invalid IL or missing references)
		//IL_15d2: Expected O, but got Unknown
		//IL_15dd: Unknown result type (might be due to invalid IL or missing references)
		//IL_1622: Unknown result type (might be due to invalid IL or missing references)
		//IL_166d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1693: Unknown result type (might be due to invalid IL or missing references)
		//IL_16d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_16e1: Expected O, but got Unknown
		//IL_16fc: Unknown result type (might be due to invalid IL or missing references)
		//IL_1722: Unknown result type (might be due to invalid IL or missing references)
		//IL_17cc: Unknown result type (might be due to invalid IL or missing references)
		//IL_17f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_182e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1838: Expected O, but got Unknown
		//IL_1843: Unknown result type (might be due to invalid IL or missing references)
		//IL_1888: Unknown result type (might be due to invalid IL or missing references)
		//IL_18d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_18f8: Unknown result type (might be due to invalid IL or missing references)
		//IL_193c: Unknown result type (might be due to invalid IL or missing references)
		//IL_1946: Expected O, but got Unknown
		//IL_195e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1984: Unknown result type (might be due to invalid IL or missing references)
		//IL_19c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_19ca: Expected O, but got Unknown
		//IL_19d5: Unknown result type (might be due to invalid IL or missing references)
		//IL_1a1a: Unknown result type (might be due to invalid IL or missing references)
		//IL_1a65: Unknown result type (might be due to invalid IL or missing references)
		//IL_1a8b: Unknown result type (might be due to invalid IL or missing references)
		//IL_1adc: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b02: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b46: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b50: Expected O, but got Unknown
		//IL_1b6b: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b91: Unknown result type (might be due to invalid IL or missing references)
		//IL_1bd5: Unknown result type (might be due to invalid IL or missing references)
		//IL_1bdf: Expected O, but got Unknown
		//IL_1bf0: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c16: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c6c: Unknown result type (might be due to invalid IL or missing references)
		//IL_1c76: Expected O, but got Unknown
		//IL_1c87: Unknown result type (might be due to invalid IL or missing references)
		//IL_1cad: Unknown result type (might be due to invalid IL or missing references)
		//IL_1d60: Unknown result type (might be due to invalid IL or missing references)
		//IL_1d89: Unknown result type (might be due to invalid IL or missing references)
		//IL_1dd2: Unknown result type (might be due to invalid IL or missing references)
		//IL_1ddc: Expected O, but got Unknown
		//IL_1de7: Unknown result type (might be due to invalid IL or missing references)
		//IL_1e2c: Unknown result type (might be due to invalid IL or missing references)
		//IL_1e6b: Unknown result type (might be due to invalid IL or missing references)
		//IL_1e91: Unknown result type (might be due to invalid IL or missing references)
		//IL_1ed5: Unknown result type (might be due to invalid IL or missing references)
		//IL_1edf: Expected O, but got Unknown
		//IL_1ef7: Unknown result type (might be due to invalid IL or missing references)
		//IL_1f1d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1f72: Unknown result type (might be due to invalid IL or missing references)
		//IL_1f98: Unknown result type (might be due to invalid IL or missing references)
		//IL_1ff4: Unknown result type (might be due to invalid IL or missing references)
		//IL_201a: Unknown result type (might be due to invalid IL or missing references)
		//IL_205e: Unknown result type (might be due to invalid IL or missing references)
		//IL_20ae: Unknown result type (might be due to invalid IL or missing references)
		//IL_2172: Unknown result type (might be due to invalid IL or missing references)
		//IL_219b: Unknown result type (might be due to invalid IL or missing references)
		//IL_21e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_21ee: Expected O, but got Unknown
		//IL_21fc: Unknown result type (might be due to invalid IL or missing references)
		//IL_223d: Unknown result type (might be due to invalid IL or missing references)
		//IL_2283: Unknown result type (might be due to invalid IL or missing references)
		//IL_228d: Expected O, but got Unknown
		//IL_2298: Unknown result type (might be due to invalid IL or missing references)
		//IL_22d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_2324: Unknown result type (might be due to invalid IL or missing references)
		//IL_234a: Unknown result type (might be due to invalid IL or missing references)
		//IL_238a: Unknown result type (might be due to invalid IL or missing references)
		//IL_23b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_23fd: Unknown result type (might be due to invalid IL or missing references)
		//IL_2423: Unknown result type (might be due to invalid IL or missing references)
		//IL_2460: Unknown result type (might be due to invalid IL or missing references)
		//IL_2486: Unknown result type (might be due to invalid IL or missing references)
		//IL_24bc: Unknown result type (might be due to invalid IL or missing references)
		//IL_24e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_2526: Unknown result type (might be due to invalid IL or missing references)
		//IL_2530: Expected O, but got Unknown
		//IL_2550: Unknown result type (might be due to invalid IL or missing references)
		//IL_255a: Expected O, but got Unknown
		//IL_2568: Unknown result type (might be due to invalid IL or missing references)
		//IL_258e: Unknown result type (might be due to invalid IL or missing references)
		//IL_25cf: Unknown result type (might be due to invalid IL or missing references)
		//IL_25f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_2646: Unknown result type (might be due to invalid IL or missing references)
		//IL_266c: Unknown result type (might be due to invalid IL or missing references)
		//IL_26a1: Unknown result type (might be due to invalid IL or missing references)
		//IL_26bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_2858: Unknown result type (might be due to invalid IL or missing references)
		//IL_2862: Expected O, but got Unknown
		//IL_286b: Unknown result type (might be due to invalid IL or missing references)
		//IL_2875: Expected O, but got Unknown
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
		textBoxChat = new TextBox();
		checkBoxChat = new CheckBox();
		comboBoxChat = new ComboBox();
		groupBox4 = new GroupBox();
		label9 = new Label();
		numericUpDownChat = new NumericUpDown();
		CheckboxTrong = new CheckBox();
		label12 = new Label();
		comboBoxTrong = new ComboBox();
		numericUpDownGio = new NumericUpDown();
		CheckboxDaPet = new CheckBox();
		label11 = new Label();
		numericUpDownDaPet = new NumericUpDown();
		label10 = new Label();
		ButtonDebug = new CheckBox();
		pictureBox1 = new PictureBox();
		label14 = new Label();
		label13 = new Label();
		groupBox2 = new GroupBox();
		numericUpDownFPS = new NumericUpDown();
		buttonReset = new Button();
		label8 = new Label();
		pictureBox2 = new PictureBox();
		label3 = new Label();
		textBox2 = new TextBox();
		groupBox5 = new GroupBox();
		numericUpDownKenh = new NumericUpDown();
		numericUpDownNV = new NumericUpDown();
		label16 = new Label();
		checkBoxLog_BB = new CheckBox();
		checkBoxLog = new CheckBox();
		label15 = new Label();
		buttonSave = new Button();
		label17 = new Label();
		checkBoxAutoSetup = new CheckBox();
		labelAcccheck = new Label();
		((Control)groupBox1).SuspendLayout();
		((Control)groupBox3).SuspendLayout();
		((ISupportInitialize)numericUpDownTurn).BeginInit();
		((Control)groupBox4).SuspendLayout();
		((ISupportInitialize)numericUpDownChat).BeginInit();
		((ISupportInitialize)numericUpDownGio).BeginInit();
		((ISupportInitialize)numericUpDownDaPet).BeginInit();
		((ISupportInitialize)pictureBox1).BeginInit();
		((Control)groupBox2).SuspendLayout();
		((ISupportInitialize)numericUpDownFPS).BeginInit();
		((ISupportInitialize)pictureBox2).BeginInit();
		((Control)groupBox5).SuspendLayout();
		((ISupportInitialize)numericUpDownKenh).BeginInit();
		((ISupportInitialize)numericUpDownNV).BeginInit();
		((Control)this).SuspendLayout();
		((Control)label2).AutoSize = true;
		((Control)label2).Location = new Point(102, 82);
		((Control)label2).Name = "label2";
		((Control)label2).Size = new Size(68, 15);
		((Control)label2).TabIndex = 8;
		((Control)label2).Text = "[ 000 - 000 ]";
		ButtonRunAuto.Appearance = (Appearance)1;
		((Control)ButtonRunAuto).Location = new Point(7, 124);
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
		((Control)groupBox1).Location = new Point(6, 155);
		((Control)groupBox1).Name = "groupBox1";
		((Control)groupBox1).Size = new Size(166, 117);
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
		((Control)checkedListBox1).Size = new Size(152, 58);
		((Control)checkedListBox1).TabIndex = 21;
		((ListControl)checkedListBox1).SelectedValueChanged += new EventHandler(checkedListBox1_SelectedIndexChanged);
		((Control)labelDaBat).AutoSize = true;
		((Control)labelDaBat).Location = new Point(221, 129);
		((Control)labelDaBat).Name = "labelDaBat";
		((Control)labelDaBat).Size = new Size(64, 15);
		((Control)labelDaBat).TabIndex = 9;
		((Control)labelDaBat).Text = "Bắt xxx Lần";
		((Control)labelDaHop).AutoSize = true;
		((Control)labelDaHop).Location = new Point(294, 129);
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
		((Control)groupBox3).Location = new Point(178, 155);
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
		((Control)buttonPause).Location = new Point(78, 124);
		((Control)buttonPause).Name = "buttonPause";
		((Control)buttonPause).Size = new Size(65, 25);
		((Control)buttonPause).TabIndex = 12;
		((Control)buttonPause).Text = "Pause";
		((ButtonBase)buttonPause).UseVisualStyleBackColor = true;
		((Control)buttonPause).Click += new EventHandler(buttonPause_Click);
		((Control)textBoxChat).BackColor = Color.White;
		((Control)textBoxChat).Location = new Point(5, 114);
		((TextBoxBase)textBoxChat).MaxLength = 99999;
		((TextBoxBase)textBoxChat).Multiline = true;
		((Control)textBoxChat).Name = "textBoxChat";
		textBoxChat.ScrollBars = (ScrollBars)2;
		((Control)textBoxChat).Size = new Size(155, 109);
		((Control)textBoxChat).TabIndex = 32;
		((Control)textBoxChat).Text = "- Chọn Kênh chat và Thời Gian mỗi lần Chat.\r\n- Mỗi câu Chat cách nhau bằng dấu xuống dòng.\r\n- Mỗi câu Chat trong game tối đa 99 ký tự.";
		((Control)textBoxChat).TextChanged += new EventHandler(textBoxChat_TextChanged);
		((Control)checkBoxChat).AutoSize = true;
		((Control)checkBoxChat).Location = new Point(6, 88);
		((Control)checkBoxChat).Name = "checkBoxChat";
		((Control)checkBoxChat).Size = new Size(15, 14);
		((Control)checkBoxChat).TabIndex = 31;
		((ButtonBase)checkBoxChat).UseVisualStyleBackColor = true;
		checkBoxChat.CheckStateChanged += new EventHandler(CheckboxDaPet_CheckStateChanged);
		((ListControl)comboBoxChat).FormattingEnabled = true;
		comboBoxChat.Items.AddRange(new object[3] { "Hiện Tại", "Thế Giới", "Bang" });
		((Control)comboBoxChat).Location = new Point(24, 84);
		((Control)comboBoxChat).Margin = new Padding(1);
		((Control)comboBoxChat).Name = "comboBoxChat";
		((Control)comboBoxChat).Size = new Size(67, 23);
		((Control)comboBoxChat).TabIndex = 33;
		((Control)comboBoxChat).Text = "Thế Giới";
		((Control)groupBox4).Controls.Add((Control)(object)comboBoxChat);
		((Control)groupBox4).Controls.Add((Control)(object)label9);
		((Control)groupBox4).Controls.Add((Control)(object)numericUpDownChat);
		((Control)groupBox4).Controls.Add((Control)(object)CheckboxTrong);
		((Control)groupBox4).Controls.Add((Control)(object)label12);
		((Control)groupBox4).Controls.Add((Control)(object)comboBoxTrong);
		((Control)groupBox4).Controls.Add((Control)(object)checkBoxChat);
		((Control)groupBox4).Controls.Add((Control)(object)numericUpDownGio);
		((Control)groupBox4).Controls.Add((Control)(object)textBoxChat);
		((Control)groupBox4).Controls.Add((Control)(object)CheckboxDaPet);
		((Control)groupBox4).Controls.Add((Control)(object)label11);
		((Control)groupBox4).Controls.Add((Control)(object)numericUpDownDaPet);
		((Control)groupBox4).Location = new Point(6, 278);
		((Control)groupBox4).Name = "groupBox4";
		((Control)groupBox4).Size = new Size(166, 229);
		((Control)groupBox4).TabIndex = 34;
		groupBox4.TabStop = false;
		((Control)groupBox4).Text = "Đá Pet - Trang Viên - Chat";
		((Control)label9).AutoSize = true;
		((Control)label9).Location = new Point(138, 53);
		((Control)label9).Name = "label9";
		((Control)label9).Size = new Size(25, 15);
		((Control)label9).TabIndex = 13;
		((Control)label9).Text = "Giờ";
		((Control)numericUpDownChat).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownChat).Location = new Point(95, 85);
		numericUpDownChat.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownChat).Name = "numericUpDownChat";
		((Control)numericUpDownChat).Size = new Size(35, 23);
		((Control)numericUpDownChat).TabIndex = 15;
		numericUpDownChat.Value = new decimal(new int[4] { 20, 0, 0, 0 });
		((Control)CheckboxTrong).AutoSize = true;
		((Control)CheckboxTrong).Location = new Point(6, 52);
		((Control)CheckboxTrong).Name = "CheckboxTrong";
		((Control)CheckboxTrong).Size = new Size(40, 19);
		((Control)CheckboxTrong).TabIndex = 29;
		((Control)CheckboxTrong).Text = "TV";
		((ButtonBase)CheckboxTrong).UseVisualStyleBackColor = true;
		CheckboxTrong.CheckStateChanged += new EventHandler(CheckboxDaPet_CheckStateChanged);
		((Control)label12).AutoSize = true;
		((Control)label12).Location = new Point(131, 88);
		((Control)label12).Name = "label12";
		((Control)label12).Size = new Size(32, 15);
		((Control)label12).TabIndex = 13;
		((Control)label12).Text = "Phút";
		((ListControl)comboBoxTrong).FormattingEnabled = true;
		comboBoxTrong.Items.AddRange(new object[10] { "Kim Loại", "Gỗ", "Lông Thú", "Ngọc", "Vải Thô", "Kim Loại Hiếm", "Gỗ Tốt", "Da Thú", "Pha Lê", "Gấm Vóc" });
		((Control)comboBoxTrong).Location = new Point(45, 50);
		((Control)comboBoxTrong).Name = "comboBoxTrong";
		((Control)comboBoxTrong).Size = new Size(58, 23);
		((Control)comboBoxTrong).TabIndex = 30;
		((Control)comboBoxTrong).Text = "Kim Loại";
		((Control)numericUpDownGio).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownGio).Location = new Point(109, 51);
		numericUpDownGio.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownGio).Name = "numericUpDownGio";
		((Control)numericUpDownGio).Size = new Size(27, 23);
		((Control)numericUpDownGio).TabIndex = 28;
		numericUpDownGio.Value = new decimal(new int[4] { 2, 0, 0, 0 });
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
		((Control)numericUpDownDaPet).Name = "numericUpDownDaPet";
		((Control)numericUpDownDaPet).Size = new Size(37, 23);
		((Control)numericUpDownDaPet).TabIndex = 15;
		numericUpDownDaPet.Value = new decimal(new int[4] { 20, 0, 0, 0 });
		((Control)label10).AutoSize = true;
		((Control)label10).Location = new Point(7, 102);
		((Control)label10).Name = "label10";
		((Control)label10).Size = new Size(86, 15);
		((Control)label10).TabIndex = 26;
		((Control)label10).Text = "Timer: 00:00:00";
		ButtonDebug.Appearance = (Appearance)1;
		((Control)ButtonDebug).AutoSize = true;
		((Control)ButtonDebug).Location = new Point(149, 124);
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
		((Control)label14).AutoSize = true;
		((Control)label14).Font = new Font("Segoe UI Semibold", 12f, (FontStyle)3, (GraphicsUnit)3);
		((Control)label14).Location = new Point(729, 342);
		((Control)label14).Name = "label14";
		((Control)label14).Size = new Size(45, 21);
		((Control)label14).TabIndex = 37;
		((Control)label14).Text = "null?";
		((Control)label14).Visible = false;
		((Control)label13).AutoSize = true;
		((Control)label13).Font = new Font("Segoe UI Semibold", 12f, (FontStyle)3, (GraphicsUnit)3);
		((Control)label13).Location = new Point(763, 233);
		((Control)label13).Name = "label13";
		((Control)label13).Size = new Size(45, 21);
		((Control)label13).TabIndex = 36;
		((Control)label13).Text = "null?";
		((Control)label13).Visible = false;
		((Control)groupBox2).Controls.Add((Control)(object)numericUpDownFPS);
		((Control)groupBox2).Controls.Add((Control)(object)pictureBox1);
		((Control)groupBox2).Controls.Add((Control)(object)buttonReset);
		((Control)groupBox2).Controls.Add((Control)(object)label8);
		((Control)groupBox2).Controls.Add((Control)(object)pictureBox2);
		((Control)groupBox2).Location = new Point(6, 12);
		((Control)groupBox2).Name = "groupBox2";
		((Control)groupBox2).Size = new Size(208, 83);
		((Control)groupBox2).TabIndex = 25;
		groupBox2.TabStop = false;
		((Control)groupBox2).Text = "Vị Trí Flash : xxx - yyy";
		((Control)numericUpDownFPS).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownFPS).Location = new Point(97, 22);
		numericUpDownFPS.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownFPS).Name = "numericUpDownFPS";
		((Control)numericUpDownFPS).Size = new Size(36, 23);
		((Control)numericUpDownFPS).TabIndex = 17;
		numericUpDownFPS.Value = new decimal(new int[4] { 20, 0, 0, 0 });
		((Control)buttonReset).Location = new Point(67, 51);
		((Control)buttonReset).Name = "buttonReset";
		((Control)buttonReset).Size = new Size(56, 25);
		((Control)buttonReset).TabIndex = 12;
		((Control)buttonReset).Text = "Reset";
		((ButtonBase)buttonReset).UseVisualStyleBackColor = true;
		((Control)buttonReset).Click += new EventHandler(buttonReset_Click);
		((Control)label8).AutoSize = true;
		((Control)label8).Location = new Point(62, 22);
		((Control)label8).Name = "label8";
		((Control)label8).Size = new Size(29, 15);
		((Control)label8).TabIndex = 16;
		((Control)label8).Text = "FPS:";
		pictureBox2.BorderStyle = (BorderStyle)2;
		pictureBox2.Image = (Image)(object)Resources.anhNVr;
		((Control)pictureBox2).Location = new Point(148, 22);
		((Control)pictureBox2).Name = "pictureBox2";
		((Control)pictureBox2).Size = new Size(54, 54);
		pictureBox2.SizeMode = (PictureBoxSizeMode)2;
		pictureBox2.TabIndex = 0;
		pictureBox2.TabStop = false;
		((Control)pictureBox2).Visible = false;
		((Control)label3).AutoSize = true;
		((Control)label3).Location = new Point(748, 422);
		((Control)label3).Name = "label3";
		((Control)label3).Size = new Size(60, 15);
		((Control)label3).TabIndex = 9;
		((Control)label3).Text = "ID: 000000";
		((Control)label3).Visible = false;
		((Control)textBox2).Location = new Point(220, 12);
		((TextBoxBase)textBox2).Multiline = true;
		((Control)textBox2).Name = "textBox2";
		((TextBoxBase)textBox2).ReadOnly = true;
		textBox2.ScrollBars = (ScrollBars)2;
		((Control)textBox2).Size = new Size(144, 60);
		((Control)textBox2).TabIndex = 24;
		((Control)textBox2).Text = "-----------------------";
		((Control)groupBox5).Controls.Add((Control)(object)numericUpDownKenh);
		((Control)groupBox5).Controls.Add((Control)(object)numericUpDownNV);
		((Control)groupBox5).Controls.Add((Control)(object)label16);
		((Control)groupBox5).Controls.Add((Control)(object)checkBoxLog_BB);
		((Control)groupBox5).Controls.Add((Control)(object)checkBoxLog);
		((Control)groupBox5).Controls.Add((Control)(object)label15);
		((Control)groupBox5).Location = new Point(178, 456);
		((Control)groupBox5).Name = "groupBox5";
		((Control)groupBox5).Size = new Size(186, 76);
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
		((Control)buttonSave).Location = new Point(6, 513);
		((Control)buttonSave).Name = "buttonSave";
		((Control)buttonSave).Size = new Size(56, 27);
		((Control)buttonSave).TabIndex = 12;
		((Control)buttonSave).Text = "Lưu";
		((ButtonBase)buttonSave).UseVisualStyleBackColor = true;
		((Control)buttonSave).Click += new EventHandler(buttonSave_Click);
		((Control)label17).AutoSize = true;
		((Control)label17).Font = new Font("Segoe UI", 7f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label17).Location = new Point(64, 515);
		((Control)label17).Name = "label17";
		((Control)label17).Size = new Size(25, 12);
		((Control)label17).TabIndex = 38;
		((Control)label17).Text = "null?";
		((Control)checkBoxAutoSetup).AutoSize = true;
		((Control)checkBoxAutoSetup).Location = new Point(115, 101);
		((Control)checkBoxAutoSetup).Name = "checkBoxAutoSetup";
		((Control)checkBoxAutoSetup).Size = new Size(98, 19);
		((Control)checkBoxAutoSetup).TabIndex = 39;
		((Control)checkBoxAutoSetup).Text = "Bỏ Qua Setup";
		((ButtonBase)checkBoxAutoSetup).UseVisualStyleBackColor = true;
		((Control)labelAcccheck).AutoSize = true;
		((Control)labelAcccheck).Location = new Point(220, 75);
		((Control)labelAcccheck).Name = "labelAcccheck";
		((Control)labelAcccheck).Size = new Size(89, 45);
		((Control)labelAcccheck).TabIndex = 40;
		((Control)labelAcccheck).Text = "Map: xxx\r\nVi\u0323 Tri\u0301 1: 000x000\r\nVi\u0323 Tri\u0301 2: 000x000";
		((ContainerControl)this).AutoScaleDimensions = new SizeF(7f, 15f);
		((ContainerControl)this).AutoScaleMode = (AutoScaleMode)1;
		((Form)this).ClientSize = new Size(371, 595);
		((Control)this).Controls.Add((Control)(object)label13);
		((Control)this).Controls.Add((Control)(object)label14);
		((Control)this).Controls.Add((Control)(object)labelAcccheck);
		((Control)this).Controls.Add((Control)(object)label3);
		((Control)this).Controls.Add((Control)(object)groupBox1);
		((Control)this).Controls.Add((Control)(object)label10);
		((Control)this).Controls.Add((Control)(object)groupBox3);
		((Control)this).Controls.Add((Control)(object)label17);
		((Control)this).Controls.Add((Control)(object)checkBoxAutoSetup);
		((Control)this).Controls.Add((Control)(object)buttonSave);
		((Control)this).Controls.Add((Control)(object)ButtonDebug);
		((Control)this).Controls.Add((Control)(object)groupBox5);
		((Control)this).Controls.Add((Control)(object)labelDaBat);
		((Control)this).Controls.Add((Control)(object)groupBox4);
		((Control)this).Controls.Add((Control)(object)labelDaHop);
		((Control)this).Controls.Add((Control)(object)groupBox2);
		((Control)this).Controls.Add((Control)(object)ButtonRunAuto);
		((Control)this).Controls.Add((Control)(object)textBox2);
		((Control)this).Controls.Add((Control)(object)buttonPause);
		((Form)this).FormBorderStyle = (FormBorderStyle)1;
		((Form)this).MaximizeBox = false;
		((Control)this).Name = "BatPet";
		((Form)this).StartPosition = (FormStartPosition)1;
		((Control)this).Text = "387, 193";
		((Form)this).FormClosed += new FormClosedEventHandler(BatPet_FormClosed);
		((Form)this).Load += new EventHandler(BatPet_Load);
		((Control)groupBox1).ResumeLayout(false);
		((Control)groupBox1).PerformLayout();
		((Control)groupBox3).ResumeLayout(false);
		((Control)groupBox3).PerformLayout();
		((ISupportInitialize)numericUpDownTurn).EndInit();
		((Control)groupBox4).ResumeLayout(false);
		((Control)groupBox4).PerformLayout();
		((ISupportInitialize)numericUpDownChat).EndInit();
		((ISupportInitialize)numericUpDownGio).EndInit();
		((ISupportInitialize)numericUpDownDaPet).EndInit();
		((ISupportInitialize)pictureBox1).EndInit();
		((Control)groupBox2).ResumeLayout(false);
		((Control)groupBox2).PerformLayout();
		((ISupportInitialize)numericUpDownFPS).EndInit();
		((ISupportInitialize)pictureBox2).EndInit();
		((Control)groupBox5).ResumeLayout(false);
		((Control)groupBox5).PerformLayout();
		((ISupportInitialize)numericUpDownKenh).EndInit();
		((ISupportInitialize)numericUpDownNV).EndInit();
		((Control)this).ResumeLayout(false);
		((Control)this).PerformLayout();
	}
}
