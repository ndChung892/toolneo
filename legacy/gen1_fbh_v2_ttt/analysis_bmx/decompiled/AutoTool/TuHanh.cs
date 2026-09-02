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

public class TuHanh : Form
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

	public int Vong;

	public int NhiemVuTuHanh;

	public bool autoRun;

	private Bitmap[] y;

	private static Timer myTimer;

	private static Timer teleTimer;

	public int counter;

	public int countTimer_pet;

	public bool userTimer;

	public bool userTimer2;

	public bool checkteke;

	public string nameUser;

	public string pathTheme;

	private string fileName;

	private FontConverter fC;

	private DataGridViewCellStyle TableThemeColor;

	private ImageLayout layout;

	private IContainer components;

	private CheckBox CheckboxDaPet;

	private GroupBox groupBox5;

	private NumericUpDown numericUpDownKenh;

	private NumericUpDown numericUpDownNV;

	private Label label16;

	private CheckBox checkBoxLog_BB;

	private CheckBox checkBoxLog;

	private Label label15;

	private Label label17;

	private Label label4;

	private Label label2;

	private Button buttonSave;

	private GroupBox groupBox3;

	private NumericUpDown numericUpDownDaPet;

	private GroupBox groupBox4;

	private Label label12;

	private PictureBox pictureBox1;

	private NumericUpDown numericUpDownFPS;

	private Label label8;

	private Label label1;

	private Label label3;

	private Button buttonReset;

	private Label label6;

	private TextBox textBox1;

	private Button buttonPause;

	private CheckBox ButtonDebug;

	private CheckBox ButtonRunAuto;

	public TuHanh()
	{
		//IL_0240: Unknown result type (might be due to invalid IL or missing references)
		//IL_024a: Expected O, but got Unknown
		//IL_024b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0255: Expected O, but got Unknown
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
		Vong = 1;
		NhiemVuTuHanh = 1;
		autoRun = false;
		y = (Bitmap[])(object)new Bitmap[7];
		counter = 0;
		countTimer_pet = 0;
		userTimer = false;
		userTimer2 = false;
		checkteke = true;
		nameUser = "";
		pathTheme = Application.StartupPath + "/Theme";
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

	[DllImport("kernel32.dll", CharSet = (CharSet)4)]
	private static extern System.IntPtr OpenProcess(uint dwDesiredAccess, bool bInheritHandle, uint dwProcessId);

	public static System.IntPtr OpenProcess(uint pId, ProcessAccessFlags ProcessAccess = (ProcessAccessFlags)2035711u)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0009: Expected I4, but got Unknown
		return OpenProcess((uint)(int)ProcessAccess, bInheritHandle: false, pId);
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

	private void startTimer2()
	{
		//IL_0018: Unknown result type (might be due to invalid IL or missing references)
		//IL_0022: Expected O, but got Unknown
		//IL_002e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0038: Expected O, but got Unknown
		if (!userTimer2)
		{
			teleTimer = new Timer(2000.0);
			teleTimer.Elapsed += new ElapsedEventHandler(myTimerEvent2);
			teleTimer.AutoReset = true;
			teleTimer.Start();
			userTimer2 = true;
		}
	}

	private void stopTimer2()
	{
		if (userTimer2)
		{
			teleTimer.Stop();
			((Component)teleTimer).Dispose();
			userTimer2 = false;
		}
	}

	private void myTimerEvent(object source, ElapsedEventArgs e)
	{
		//IL_000d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0013: Invalid comparison between Unknown and I4
		int num = 0;
		int num2 = 0;
		int num3 = 0;
		if ((int)CheckboxDaPet.CheckState == 1 && !IsStop && (int)numericUpDownDaPet.Value > 0)
		{
			countTimer_pet++;
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

	private void myTimerEvent2(object source, ElapsedEventArgs e)
	{
		checkteke = false;
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
	}

	private void buttonSave_Click(object sender, EventArgs e)
	{
		//IL_001c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0022: Expected O, but got Unknown
		TextWriter val = (TextWriter)new StreamWriter(pathData + "/Setting/" + nameUser + "/tuhanh.txt");
		val.Write(scanSetting());
		val.Close();
		System.DateTime lastWriteTime = File.GetLastWriteTime(pathData + "/Setting/" + nameUser + "/tuhanh.txt");
		((Control)label17).Text = "Lần cuối lúc\r\n" + lastWriteTime.ToString("g");
	}

	private string scanSetting()
	{
		string text = "";
		text = ((!CheckboxDaPet.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + numericUpDownDaPet.Value + "\n";
		text = ((!checkBoxLog.Checked) ? (text + "0\n") : (text + "1\n"));
		text = ((!checkBoxLog_BB.Checked) ? (text + "0\n") : (text + "1\n"));
		text = text + numericUpDownNV.Value + "\n";
		return text + numericUpDownKenh.Value + "\n";
	}

	private void loadSetting()
	{
		//IL_00c1: Unknown result type (might be due to invalid IL or missing references)
		nameUser = Program.AppMain.nameUser;
		if (!File.Exists(pathData + "/Setting/" + nameUser + "/tuhanh.txt"))
		{
			Directory.CreateDirectory(pathData + "/Setting/" + nameUser);
			return;
		}
		System.DateTime lastWriteTime = File.GetLastWriteTime(pathData + "/Setting/" + nameUser + "/tuhanh.txt");
		if (lastWriteTime.Year * 10000 + lastWriteTime.Month * 100 + lastWriteTime.Day < 20230317)
		{
			MessageBox.Show("Bản Lưu Thiết Lập " + ((Control)this).Text + " Đã Cũ Do Có Thay Đổi/Thêm Các Tùy Chọn.\r\nVui Lòng Lưu Lại Thiết Lập Daily!", "BMx-Tool: Daily", (MessageBoxButtons)0, (MessageBoxIcon)64);
			return;
		}
		string[] array = File.ReadAllLines(pathData + "/Setting/" + nameUser + "/tuhanh.txt");
		int num = 0;
		int num2 = 0;
		if (array[num2].Trim() == "1")
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
		((Control)label17).Text = "Lần cuối lúc\r\n" + lastWriteTime.ToString("g");
		debugText("Đã Áp Dụng Cài Đặt \"Tu Hành\" Lần Cuối Lúc\r\n" + lastWriteTime.ToString("g"));
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
		((Image)val5).Save("res.png");
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

	private void DaPet()
	{
		PressKey("null");
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
		//IL_0805: Unknown result type (might be due to invalid IL or missing references)
		//IL_080a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0815: Unknown result type (might be due to invalid IL or missing references)
		//IL_081a: Unknown result type (might be due to invalid IL or missing references)
		//IL_06ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_06cf: Unknown result type (might be due to invalid IL or missing references)
		//IL_06da: Unknown result type (might be due to invalid IL or missing references)
		//IL_06df: Unknown result type (might be due to invalid IL or missing references)
		//IL_0485: Unknown result type (might be due to invalid IL or missing references)
		//IL_048a: Unknown result type (might be due to invalid IL or missing references)
		//IL_04a1: Unknown result type (might be due to invalid IL or missing references)
		//IL_04a6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0924: Unknown result type (might be due to invalid IL or missing references)
		//IL_0929: Unknown result type (might be due to invalid IL or missing references)
		//IL_0934: Unknown result type (might be due to invalid IL or missing references)
		//IL_0939: Unknown result type (might be due to invalid IL or missing references)
		//IL_086a: Unknown result type (might be due to invalid IL or missing references)
		//IL_086f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0880: Unknown result type (might be due to invalid IL or missing references)
		//IL_0885: Unknown result type (might be due to invalid IL or missing references)
		//IL_072f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0734: Unknown result type (might be due to invalid IL or missing references)
		//IL_0745: Unknown result type (might be due to invalid IL or missing references)
		//IL_074a: Unknown result type (might be due to invalid IL or missing references)
		//IL_08d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_08d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_08e8: Unknown result type (might be due to invalid IL or missing references)
		//IL_08ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_079a: Unknown result type (might be due to invalid IL or missing references)
		//IL_079f: Unknown result type (might be due to invalid IL or missing references)
		//IL_07b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_07b5: Unknown result type (might be due to invalid IL or missing references)
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
		Point? val3 = FindPoint(hWnd, pathKhac + "/Log_VaoGame.png");
		if (val3.HasValue)
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
							System.IntPtr intPtr12 = hWnd;
							value2 = val3.Value;
							int num14 = ((Point)(ref value2)).X + 300;
							value2 = val3.Value;
							AutoControl.SendClickOnPosition(intPtr12, num14, ((Point)(ref value2)).Y - 70 - 30, (EMouseKey)0, 1);
							debugText("Nhân Vật 3");
						}
					}
					else
					{
						AutoControl.SendClickOnPosition(hWnd, 291, 465, (EMouseKey)0, 1);
						delay_100ms(3);
						System.IntPtr intPtr13 = hWnd;
						value2 = val3.Value;
						int num15 = ((Point)(ref value2)).X + 200;
						value2 = val3.Value;
						AutoControl.SendClickOnPosition(intPtr13, num15, ((Point)(ref value2)).Y - 70 - 30, (EMouseKey)0, 1);
						debugText("Nhân Vật 2");
					}
				}
				else
				{
					AutoControl.SendClickOnPosition(hWnd, 291, 465, (EMouseKey)0, 1);
					delay_100ms(3);
					System.IntPtr intPtr14 = hWnd;
					value2 = val3.Value;
					int x = ((Point)(ref value2)).X;
					value2 = val3.Value;
					AutoControl.SendClickOnPosition(intPtr14, x, ((Point)(ref value2)).Y - 70 - 30, (EMouseKey)0, 1);
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
						System.IntPtr intPtr15 = hWnd;
						value2 = val3.Value;
						int num16 = ((Point)(ref value2)).X + 300;
						value2 = val3.Value;
						AutoControl.SendClickOnPosition(intPtr15, num16, ((Point)(ref value2)).Y - 70 - 30, (EMouseKey)0, 1);
						debugText("Nhân Vật 6");
					}
				}
				else
				{
					AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
					delay_100ms(3);
					System.IntPtr intPtr16 = hWnd;
					value2 = val3.Value;
					int num17 = ((Point)(ref value2)).X + 200;
					value2 = val3.Value;
					AutoControl.SendClickOnPosition(intPtr16, num17, ((Point)(ref value2)).Y - 70 - 30, (EMouseKey)0, 1);
					debugText("Nhân Vật 5");
				}
			}
			else
			{
				AutoControl.SendClickOnPosition(hWnd, 767, 465, (EMouseKey)0, 1);
				delay_100ms(3);
				System.IntPtr intPtr17 = hWnd;
				value2 = val3.Value;
				int x2 = ((Point)(ref value2)).X;
				value2 = val3.Value;
				AutoControl.SendClickOnPosition(intPtr17, x2, ((Point)(ref value2)).Y - 70 - 30, (EMouseKey)0, 1);
				debugText("Nhân Vật 4");
			}
			delay_100ms(5);
			System.IntPtr intPtr18 = hWnd;
			value2 = val3.Value;
			int x3 = ((Point)(ref value2)).X;
			value2 = val3.Value;
			AutoControl.SendClickOnPosition(intPtr18, x3, ((Point)(ref value2)).Y - 30, (EMouseKey)0, 1);
			int num18 = 0;
			delay_100ms(30);
			while (!FindPoint(hWnd, pathKhac + "/Log_RatTot.png").HasValue && !FindPoint(hWnd, pathKhac + "/Log_BinhThuong.png").HasValue && !FindPoint(hWnd, pathKhac + "/Log_Tot.png").HasValue)
			{
				num18++;
				if (num18 >= 1200)
				{
					return false;
				}
				debugText("check vào game - " + num18);
				delay_100ms(5);
			}
			debugText("Vào Game Xong");
			delay_100ms(30);
			return true;
		}
		return false;
	}

	private void Tele4(double X, double Y)
	{
		//IL_00e8: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_0103: Unknown result type (might be due to invalid IL or missing references)
		//IL_012a: Unknown result type (might be due to invalid IL or missing references)
		//IL_012f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0140: Unknown result type (might be due to invalid IL or missing references)
		//IL_0145: Unknown result type (might be due to invalid IL or missing references)
		//IL_016c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0171: Unknown result type (might be due to invalid IL or missing references)
		//IL_0182: Unknown result type (might be due to invalid IL or missing references)
		//IL_0187: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ae: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b3: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c4: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c9: Unknown result type (might be due to invalid IL or missing references)
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
				int num2 = ((Point)(ref value)).Y;
				value = val.Value;
				int num3 = num2 + ((Point)(ref value)).Y + offSetY;
				AutoControl.SendClickOnPosition(hWnd, num + 5, num3 + 5 - 30, (EMouseKey)0, 1);
				delay_100ms(5);
				debugText(string.Concat(new string[5]
				{
					textDebug,
					" ",
					num.ToString(),
					" - ",
					num3.ToString()
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
					int num2 = ((Point)(ref val3)).Y;
					val3 = val.Value;
					int num3 = num2 + ((Point)(ref val3)).Y + offSetY;
					AutoControl.SendClickOnPosition(hWnd, num + 20, num3 + 5 - 30, (EMouseKey)0, 1);
					delay_100ms(5);
					debugText(string.Concat(new string[5]
					{
						textDebug,
						" ",
						num.ToString(),
						" - ",
						num3.ToString()
					}));
				}
				return true;
			}
		}
		return false;
	}

	private void setupRun()
	{
		//IL_0054: Unknown result type (might be due to invalid IL or missing references)
		//IL_0059: Unknown result type (might be due to invalid IL or missing references)
		//IL_0063: Unknown result type (might be due to invalid IL or missing references)
		//IL_0068: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_024b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0250: Unknown result type (might be due to invalid IL or missing references)
		//IL_025a: Unknown result type (might be due to invalid IL or missing references)
		//IL_025f: Unknown result type (might be due to invalid IL or missing references)
		//IL_02db: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_0399: Unknown result type (might be due to invalid IL or missing references)
		//IL_039e: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ad: Unknown result type (might be due to invalid IL or missing references)
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
		Point? val2 = FindPoint(hWnd, pathTacVu + "/ChienDau.png");
		if (val2.HasValue)
		{
			System.IntPtr intPtr2 = hWnd;
			value = val2.Value;
			int num = ((Point)(ref value)).X + 261 - 232;
			value = val2.Value;
			AutoControl.SendClickOnPosition(intPtr2, num, ((Point)(ref value)).Y + 320 - 384 - 30, (EMouseKey)0, 1);
			delay_100ms(5);
			FindsAndClick2(hWnd, pathTacVu + "/ChienDau.png", 120, -230, 50, 75, pathTruMa + "/Err2.png", "Click");
			FindsAndClick2(hWnd, pathTacVu + "/ChienDau.png", 120, -150, 50, 50, pathTruMa + "/Err1.png", "Click");
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
			AutoControl.SendDragAndDropOnPosition(intPtr3, x2, ((Point)(ref value)).Y - 30, 84, 26, 10, 10, 0.05);
		}
		PressKey("ESC");
		PressKey("Q");
		delay_100ms(10);
		val = FindPoint(hWnd, pathKhac + "/setupRun_1.png");
		if (val.HasValue)
		{
			System.IntPtr intPtr4 = hWnd;
			value = val.Value;
			int x3 = ((Point)(ref value)).X;
			value = val.Value;
			AutoControl.SendDragAndDropOnPosition(intPtr4, x3, ((Point)(ref value)).Y - 30, 100, 230, 10, 10, 0.05);
		}
		delay_100ms(5);
		FindAndClick(hWnd, pathKhac + "/setupRun_QN.png", 1, 1, "Q nhanh");
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
			AutoControl.SendDragAndDropOnPosition(intPtr5, x4, ((Point)(ref value)).Y - 30, 84, 26, 10, 10, 0.05);
		}
		PressKey("ESC");
		debugText("Hoàn Tất Setup");
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
		while (!FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -116, "Đánh Boss").HasValue)
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
		while (!FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -116, "Đánh Boss").HasValue)
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
		while (!FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -116, "Đánh Boss").HasValue)
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
		while (!FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -116, "Đánh Boss").HasValue)
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
		while (!FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -116, "Đánh Boss").HasValue)
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
		while (!FindAndClick(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png", 0, -116, "Đánh Boss").HasValue)
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

	private void PhuToiMap(string maps, double X, double Y)
	{
		int num = 100;
		while (!FindPoint(hWnd, pathMaps + "/map.png").HasValue)
		{
			PressKey("M");
		}
		startTimer2();
		WriteMemoryData(processID, myPointer, offset_ToaDoX, X * 10.0);
		WriteMemoryData(processID, myPointer, offset_ToaDoY, Y * 10.0);
		AutoControl.SendClickUpOnPosition(hWnd, 380, 578, (EMouseKey)0, 1);
		delay_100ms(2);
		switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(maps))
		{
		case 3590351291u:
			if (maps == "Bàn Địa Tộc")
			{
				AutoControl.SendClickOnPosition(hWnd, 660, 277, (EMouseKey)0, 1);
			}
			break;
		case 3007559412u:
			if (maps == "Lưu Hỏa Tộc")
			{
				AutoControl.SendClickOnPosition(hWnd, 530, 213, (EMouseKey)0, 1);
			}
			break;
		case 3215595453u:
			if (maps == "Liêu Vân Tộc")
			{
				AutoControl.SendClickOnPosition(hWnd, 610, 354, (EMouseKey)0, 1);
			}
			break;
		case 3110027101u:
			if (maps == "Thiên Khung Tộc")
			{
				AutoControl.SendClickOnPosition(hWnd, 725, 347, (EMouseKey)0, 1);
			}
			break;
		case 1998795399u:
			if (maps == "Huyền Lâm Tộc")
			{
				AutoControl.SendClickOnPosition(hWnd, 346, 370, (EMouseKey)0, 1);
			}
			break;
		case 1749196597u:
			if (maps == "Linh Vũ Tộc")
			{
				AutoControl.SendClickOnPosition(hWnd, 395, 411, (EMouseKey)0, 1);
			}
			break;
		case 538242550u:
			if (maps == "Thiện Tĩnh Địa")
			{
				AutoControl.SendClickOnPosition(hWnd, 370, 198, (EMouseKey)0, 1);
			}
			break;
		case 210245890u:
			if (maps == "Bàng Bối Thành")
			{
				AutoControl.SendClickOnPosition(hWnd, 341, 487, (EMouseKey)0, 1);
			}
			break;
		case 335875833u:
			if (maps == "Tiên Lạp Thành")
			{
				AutoControl.SendClickOnPosition(hWnd, 705, 405, (EMouseKey)0, 1);
			}
			break;
		case 981275275u:
			if (maps == "Quyến Cố Thành")
			{
				AutoControl.SendClickOnPosition(hWnd, 510, 492, (EMouseKey)0, 1);
			}
			break;
		case 3937381633u:
			if (maps == "Cổ Đạo")
			{
				AutoControl.SendClickOnPosition(hWnd, 380, 557, (EMouseKey)0, 1);
			}
			break;
		}
		while (num > 0)
		{
			WriteMemoryData(processID, myPointer, offset_ToaDoX, X * 10.0);
			WriteMemoryData(processID, myPointer, offset_ToaDoY, Y * 10.0);
			num--;
		}
		checkteke = true;
		while (true)
		{
			if (checkteke)
			{
				WriteMemoryData(processID, myPointer, offset_ToaDoX, X * 10.0);
				WriteMemoryData(processID, myPointer, offset_ToaDoY, Y * 10.0);
				continue;
			}
			delay_100ms(5);
			if (WaitAvatar(hWnd))
			{
				break;
			}
		}
		stopTimer2();
		debugText("Đã tới " + maps);
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
		//IL_01c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c7: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0202: Unknown result type (might be due to invalid IL or missing references)
		//IL_0207: Unknown result type (might be due to invalid IL or missing references)
		//IL_0214: Unknown result type (might be due to invalid IL or missing references)
		//IL_0219: Unknown result type (might be due to invalid IL or missing references)
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
				delay_100ms(2);
				System.IntPtr intPtr2 = hWnd;
				value = val.Value;
				int num2 = ((Point)(ref value)).X + 50;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr2, num2, ((Point)(ref value)).Y + 60 - 30, (EMouseKey)0, 1);
				delay_100ms(2);
				System.IntPtr intPtr3 = hWnd;
				value = val.Value;
				int num3 = ((Point)(ref value)).X + 60;
				value = val.Value;
				AutoControl.SendClickOnPosition(intPtr3, num3, ((Point)(ref value)).Y + 310 - 30, (EMouseKey)0, 1);
				delay_100ms(2);
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
		for (int i = 1; i < 8; i++)
		{
			System.IntPtr intPtr4 = hWnd;
			value = val2.Value;
			int num4 = ((Point)(ref value)).X - 30;
			value = val2.Value;
			AutoControl.SendClickOnPosition(intPtr4, num4, ((Point)(ref value)).Y + 25 * i - 30, (EMouseKey)0, 1);
			delay_100ms(1);
			System.IntPtr intPtr5 = hWnd;
			value = val2.Value;
			int num5 = ((Point)(ref value)).X - 30;
			value = val2.Value;
			AutoControl.SendClickOnPosition(intPtr5, num5, ((Point)(ref value)).Y + 25 * i - 30, (EMouseKey)0, 1);
			delay_100ms(2);
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

	private void TuHanh_Load(object sender, EventArgs e)
	{
		//IL_003a: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_00cc: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_00df: Unknown result type (might be due to invalid IL or missing references)
		//IL_0129: Unknown result type (might be due to invalid IL or missing references)
		//IL_0132: Unknown result type (might be due to invalid IL or missing references)
		//IL_015f: Unknown result type (might be due to invalid IL or missing references)
		//IL_018f: Unknown result type (might be due to invalid IL or missing references)
		//IL_014a: Unknown result type (might be due to invalid IL or missing references)
		autoRun = Program.AppMain.autoRun;
		Program.AppMain.autoRun = false;
		string nameFlash = Program.AppMain.nameFlash;
		((Control)this).Text = "[" + nameFlash + "] BMx Tu Hành";
		((Form)this).Size = new Size(397, 193);
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
		int vIP = VIP;
		int num2 = vIP;
		if (num2 != 1)
		{
		}
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
		((Control)label1).Text = accMain;
		int num3 = (int)ReadMemoryData(processID, myPointer, offset_FPS);
		if (num3 != 0)
		{
			numericUpDownFPS.Value = decimal.op_Implicit(num3);
		}
		else
		{
			debugText("Memory False");
		}
		loadSetting();
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
		//IL_006c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0075: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_008d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0385: Unknown result type (might be due to invalid IL or missing references)
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
		((Control)label1).Text = accMain;
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
			((Form)this).Size = new Size(397, 298);
		}
		else if ((int)ButtonDebug.CheckState == 0)
		{
			((Control)ButtonDebug).Text = "Chi Tiết";
			((Form)this).Size = new Size(397, 193);
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
		((Control)groupBox3).Enabled = false;
	}

	private void ShowAllSelect()
	{
		((Control)groupBox3).Enabled = true;
	}

	private void CheckboxDaPet_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		if ((int)CheckboxDaPet.CheckState == 0)
		{
			stopTimer();
		}
		else
		{
			startTimer();
		}
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
				//IL_0171: Unknown result type (might be due to invalid IL or missing references)
				//IL_0176: Unknown result type (might be due to invalid IL or missing references)
				//IL_018a: Unknown result type (might be due to invalid IL or missing references)
				//IL_018f: Unknown result type (might be due to invalid IL or missing references)
				//IL_01bf: Unknown result type (might be due to invalid IL or missing references)
				//IL_01c4: Unknown result type (might be due to invalid IL or missing references)
				//IL_01d8: Unknown result type (might be due to invalid IL or missing references)
				//IL_01dd: Unknown result type (might be due to invalid IL or missing references)
				//IL_0308: Unknown result type (might be due to invalid IL or missing references)
				//IL_030d: Unknown result type (might be due to invalid IL or missing references)
				//IL_0321: Unknown result type (might be due to invalid IL or missing references)
				//IL_0326: Unknown result type (might be due to invalid IL or missing references)
				//IL_028d: Unknown result type (might be due to invalid IL or missing references)
				//IL_0292: Unknown result type (might be due to invalid IL or missing references)
				//IL_029d: Unknown result type (might be due to invalid IL or missing references)
				//IL_02a2: Unknown result type (might be due to invalid IL or missing references)
				//IL_0407: Unknown result type (might be due to invalid IL or missing references)
				//IL_0443: Unknown result type (might be due to invalid IL or missing references)
				//IL_08d3: Unknown result type (might be due to invalid IL or missing references)
				//IL_08d8: Unknown result type (might be due to invalid IL or missing references)
				//IL_08e3: Unknown result type (might be due to invalid IL or missing references)
				//IL_08e8: Unknown result type (might be due to invalid IL or missing references)
				setupRun();
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
				if (CheckboxDaPet.Checked)
				{
					startTimer();
				}
				int num = 0;
				for (int i = 1; i < 13; i += 2)
				{
					y[num] = ImageScanOpenCV.GetImage(pathKhac + "/Avatar_Main" + i + ".png");
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
							if (!FindPoint(hWnd, pathTruMa + "/NPC_NV_RoiKhoi.png").HasValue)
							{
								Xuong();
								Xuong();
								Xuong();
								while (!IsStop)
								{
									while (true)
									{
										reConnect();
										((Control)label2).Text = "Vòng-" + Vong + " Nhiệm Vụ-" + NhiemVuTuHanh;
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
											if (ImageScanOpenCV.FindOutPoint(val5, y[k], 0.9).HasValue)
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
										if (!(accMain == "null"))
										{
											delay_100ms(10);
											while (!WaitAvatar(hWnd))
											{
												reConnect();
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
												reConnect();
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
												if (num4 <= 30)
												{
													FindAndClick(hWnd, pathTruMa + "/Q_NV_Nhanh.png", 30, 46, "Mở 1");
													FindAndClick(hWnd, pathTruMa + "/Q_NV_Nhanh3.png", 30, 46, "Mở 2");
													delay_100ms(3);
													continue;
												}
												goto IL_0a84;
											}
											break;
										}
										PhucHoi(pathKhac + "/TH_PhucHoi.png");
										NhiemVuTuHanh = 1;
										continue;
										IL_0a84:
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
									NhiemVuTuHanh++;
									debugText("ClearDebugText");
									if (NhiemVuTuHanh >= 21)
									{
										PhucHoi(pathKhac + "/TH_PhucHoi.png");
										NhiemVuTuHanh = 1;
										Vong++;
										AutoControl.SendClickOnPosition(hWnd, 111, 25, (EMouseKey)0, 1);
										delay_100ms(10);
										AutoControl.SendClickOnPosition(hWnd, 111, 90, (EMouseKey)0, 1);
										debugText("Hồi Phục");
									}
								}
								return;
							}
						}
						else
						{
							System.IntPtr intPtr5 = hWnd;
							value = val.Value;
							int num5 = ((Point)(ref value)).X + 198 - 84;
							value = val.Value;
							AutoControl.SendClickOnPosition(intPtr5, num5, ((Point)(ref value)).Y + 310 - 56 - 30, (EMouseKey)0, 1);
							delay_100ms(3);
						}
					}
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

	private void TuHanh_FormClosed(object sender, FormClosedEventArgs e)
	{
		//IL_000f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0019: Expected O, but got Unknown
		Login login = new Login();
		((Form)login).Closed += (EventHandler)([CompilerGenerated] (object? s, EventArgs args) =>
		{
			((Form)this).Close();
		});
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
		//IL_02f1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0303: Unknown result type (might be due to invalid IL or missing references)
		//IL_0315: Unknown result type (might be due to invalid IL or missing references)
		//IL_0327: Unknown result type (might be due to invalid IL or missing references)
		//IL_0353: Unknown result type (might be due to invalid IL or missing references)
		//IL_0365: Unknown result type (might be due to invalid IL or missing references)
		//IL_0377: Unknown result type (might be due to invalid IL or missing references)
		//IL_0389: Unknown result type (might be due to invalid IL or missing references)
		//IL_039b: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_03bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_03d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_03e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_03f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0407: Unknown result type (might be due to invalid IL or missing references)
		//IL_0455: Unknown result type (might be due to invalid IL or missing references)
		//IL_045a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0464: Expected O, but got Unknown
		//IL_0484: Unknown result type (might be due to invalid IL or missing references)
		//IL_0489: Unknown result type (might be due to invalid IL or missing references)
		//IL_0493: Expected O, but got Unknown
		//IL_04b3: Unknown result type (might be due to invalid IL or missing references)
		//IL_04b8: Unknown result type (might be due to invalid IL or missing references)
		//IL_04c2: Expected O, but got Unknown
		//IL_04e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_04e7: Unknown result type (might be due to invalid IL or missing references)
		//IL_04f1: Expected O, but got Unknown
		//IL_0511: Unknown result type (might be due to invalid IL or missing references)
		//IL_0516: Unknown result type (might be due to invalid IL or missing references)
		//IL_0520: Expected O, but got Unknown
		//IL_0540: Unknown result type (might be due to invalid IL or missing references)
		//IL_0545: Unknown result type (might be due to invalid IL or missing references)
		//IL_054f: Expected O, but got Unknown
		//IL_056f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0574: Unknown result type (might be due to invalid IL or missing references)
		//IL_057e: Expected O, but got Unknown
		//IL_059e: Unknown result type (might be due to invalid IL or missing references)
		//IL_05a3: Unknown result type (might be due to invalid IL or missing references)
		//IL_05ad: Expected O, but got Unknown
		//IL_05cd: Unknown result type (might be due to invalid IL or missing references)
		//IL_05d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_05dc: Expected O, but got Unknown
		//IL_05fc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0601: Unknown result type (might be due to invalid IL or missing references)
		//IL_060b: Expected O, but got Unknown
		//IL_062b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0630: Unknown result type (might be due to invalid IL or missing references)
		//IL_063a: Expected O, but got Unknown
		//IL_0662: Unknown result type (might be due to invalid IL or missing references)
		//IL_0674: Unknown result type (might be due to invalid IL or missing references)
		//IL_0686: Unknown result type (might be due to invalid IL or missing references)
		//IL_0698: Unknown result type (might be due to invalid IL or missing references)
		//IL_06aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_06d6: Unknown result type (might be due to invalid IL or missing references)
		//IL_06e8: Unknown result type (might be due to invalid IL or missing references)
		//IL_06fa: Unknown result type (might be due to invalid IL or missing references)
		//IL_070c: Unknown result type (might be due to invalid IL or missing references)
		//IL_071e: Unknown result type (might be due to invalid IL or missing references)
		//IL_076c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0771: Unknown result type (might be due to invalid IL or missing references)
		//IL_077b: Expected O, but got Unknown
		//IL_079b: Unknown result type (might be due to invalid IL or missing references)
		//IL_07a0: Unknown result type (might be due to invalid IL or missing references)
		//IL_07aa: Expected O, but got Unknown
		//IL_07ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_07cf: Unknown result type (might be due to invalid IL or missing references)
		//IL_07d9: Expected O, but got Unknown
		//IL_07f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_07fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_0808: Expected O, but got Unknown
		//IL_0828: Unknown result type (might be due to invalid IL or missing references)
		//IL_082d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0837: Expected O, but got Unknown
		//IL_085f: Unknown result type (might be due to invalid IL or missing references)
		//IL_088b: Unknown result type (might be due to invalid IL or missing references)
		//IL_08d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_08de: Unknown result type (might be due to invalid IL or missing references)
		//IL_08e8: Expected O, but got Unknown
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
					((Control)groupBox3).BackgroundImage = Image.FromFile(fileName);
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
					((Control)groupBox3).BackgroundImageLayout = layout;
					((Control)groupBox4).BackgroundImageLayout = layout;
				}
				else
				{
					((Control)groupBox3).BackColor = Color.FromArgb(num2);
					((Control)groupBox4).BackColor = Color.FromArgb(num2);
				}
				int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
				((Control)label3).BackColor = Color.FromArgb(num2);
				((Control)label6).BackColor = Color.FromArgb(num2);
				((Control)label12).BackColor = Color.FromArgb(num2);
				((Control)label2).BackColor = Color.FromArgb(num2);
				((Control)label4).BackColor = Color.FromArgb(num2);
				((Control)label17).BackColor = Color.FromArgb(num2);
				((Control)label15).BackColor = Color.FromArgb(num2);
				((Control)label16).BackColor = Color.FromArgb(num2);
				((Control)CheckboxDaPet).BackColor = Color.FromArgb(num2);
				((Control)checkBoxLog).BackColor = Color.FromArgb(num2);
				((Control)checkBoxLog_BB).BackColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
				((Control)label3).ForeColor = Color.FromArgb(num2);
				((Control)label6).ForeColor = Color.FromArgb(num2);
				((Control)label12).ForeColor = Color.FromArgb(num2);
				((Control)label2).ForeColor = Color.FromArgb(num2);
				((Control)label4).ForeColor = Color.FromArgb(num2);
				((Control)label17).ForeColor = Color.FromArgb(num2);
				((Control)label15).ForeColor = Color.FromArgb(num2);
				((Control)label16).ForeColor = Color.FromArgb(num2);
				((Control)CheckboxDaPet).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxLog).ForeColor = Color.FromArgb(num2);
				((Control)checkBoxLog_BB).ForeColor = Color.FromArgb(num2);
				object obj = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
				Font val = (Font)((obj is Font) ? obj : null);
				((Control)label3).Font = new Font(val.FontFamily, ((Control)label3).Font.Size, val.Style);
				((Control)label6).Font = new Font(val.FontFamily, ((Control)label6).Font.Size, val.Style);
				((Control)label12).Font = new Font(val.FontFamily, ((Control)label12).Font.Size, val.Style);
				((Control)label2).Font = new Font(val.FontFamily, ((Control)label2).Font.Size, val.Style);
				((Control)label4).Font = new Font(val.FontFamily, ((Control)label4).Font.Size, val.Style);
				((Control)label17).Font = new Font(val.FontFamily, ((Control)label17).Font.Size, val.Style);
				((Control)label15).Font = new Font(val.FontFamily, ((Control)label15).Font.Size, val.Style);
				((Control)label16).Font = new Font(val.FontFamily, ((Control)label16).Font.Size, val.Style);
				((Control)CheckboxDaPet).Font = new Font(val.FontFamily, ((Control)CheckboxDaPet).Font.Size, val.Style);
				((Control)checkBoxLog).Font = new Font(val.FontFamily, ((Control)checkBoxLog).Font.Size, val.Style);
				((Control)checkBoxLog_BB).Font = new Font(val.FontFamily, ((Control)checkBoxLog_BB).Font.Size, val.Style);
				int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
				((Control)ButtonDebug).BackColor = Color.FromArgb(num2);
				((Control)buttonReset).BackColor = Color.FromArgb(num2);
				((Control)buttonSave).BackColor = Color.FromArgb(num2);
				((Control)ButtonRunAuto).BackColor = Color.FromArgb(num2);
				((Control)buttonPause).BackColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
				((Control)ButtonDebug).ForeColor = Color.FromArgb(num2);
				((Control)buttonReset).ForeColor = Color.FromArgb(num2);
				((Control)buttonSave).ForeColor = Color.FromArgb(num2);
				((Control)ButtonRunAuto).ForeColor = Color.FromArgb(num2);
				((Control)buttonPause).ForeColor = Color.FromArgb(num2);
				object obj2 = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
				val = (Font)((obj2 is Font) ? obj2 : null);
				((Control)ButtonDebug).Font = new Font(val.FontFamily, ((Control)ButtonDebug).Font.Size, val.Style);
				((Control)buttonReset).Font = new Font(val.FontFamily, ((Control)buttonReset).Font.Size, val.Style);
				((Control)buttonSave).Font = new Font(val.FontFamily, ((Control)buttonSave).Font.Size, val.Style);
				((Control)ButtonRunAuto).Font = new Font(val.FontFamily, ((Control)ButtonRunAuto).Font.Size, val.Style);
				((Control)buttonPause).Font = new Font(val.FontFamily, ((Control)buttonPause).Font.Size, val.Style);
				int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
				((Control)textBox1).BackColor = Color.FromArgb(num2);
				int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
				((Control)textBox1).ForeColor = Color.FromArgb(num2);
				object obj3 = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
				val = (Font)((obj3 is Font) ? obj3 : null);
				((Control)textBox1).Font = new Font(val.FontFamily, ((Control)textBox1).Font.Size, val.Style);
				return true;
			}
		}
		catch (System.Exception)
		{
			return false;
		}
		return false;
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
		//IL_01a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_0212: Unknown result type (might be due to invalid IL or missing references)
		//IL_021c: Expected O, but got Unknown
		//IL_02b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_02dd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0326: Unknown result type (might be due to invalid IL or missing references)
		//IL_0330: Expected O, but got Unknown
		//IL_033e: Unknown result type (might be due to invalid IL or missing references)
		//IL_037f: Unknown result type (might be due to invalid IL or missing references)
		//IL_03c5: Unknown result type (might be due to invalid IL or missing references)
		//IL_03cf: Expected O, but got Unknown
		//IL_03da: Unknown result type (might be due to invalid IL or missing references)
		//IL_041b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0466: Unknown result type (might be due to invalid IL or missing references)
		//IL_048c: Unknown result type (might be due to invalid IL or missing references)
		//IL_04cc: Unknown result type (might be due to invalid IL or missing references)
		//IL_04f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_053f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0565: Unknown result type (might be due to invalid IL or missing references)
		//IL_05a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_05c8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0611: Unknown result type (might be due to invalid IL or missing references)
		//IL_061b: Expected O, but got Unknown
		//IL_0626: Unknown result type (might be due to invalid IL or missing references)
		//IL_064c: Unknown result type (might be due to invalid IL or missing references)
		//IL_068d: Unknown result type (might be due to invalid IL or missing references)
		//IL_06b3: Unknown result type (might be due to invalid IL or missing references)
		//IL_06fa: Unknown result type (might be due to invalid IL or missing references)
		//IL_0720: Unknown result type (might be due to invalid IL or missing references)
		//IL_0753: Unknown result type (might be due to invalid IL or missing references)
		//IL_0779: Unknown result type (might be due to invalid IL or missing references)
		//IL_07bd: Unknown result type (might be due to invalid IL or missing references)
		//IL_07c7: Expected O, but got Unknown
		//IL_085f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0888: Unknown result type (might be due to invalid IL or missing references)
		//IL_08d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_08db: Expected O, but got Unknown
		//IL_08e6: Unknown result type (might be due to invalid IL or missing references)
		//IL_092b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a22: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a4b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a99: Unknown result type (might be due to invalid IL or missing references)
		//IL_0abf: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b10: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b36: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b6d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b77: Expected O, but got Unknown
		//IL_0b82: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bc7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c1b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c25: Expected O, but got Unknown
		//IL_0c30: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c56: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c9f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ca9: Expected O, but got Unknown
		//IL_0cb4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0cda: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d1b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d41: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d78: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d9e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0de1: Unknown result type (might be due to invalid IL or missing references)
		//IL_0deb: Expected O, but got Unknown
		//IL_0e02: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e28: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e5f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0eaf: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ef0: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f16: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f5a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f64: Expected O, but got Unknown
		//IL_0f8c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fb2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ff6: Unknown result type (might be due to invalid IL or missing references)
		//IL_1000: Expected O, but got Unknown
		//IL_1025: Unknown result type (might be due to invalid IL or missing references)
		//IL_104b: Unknown result type (might be due to invalid IL or missing references)
		//IL_108f: Unknown result type (might be due to invalid IL or missing references)
		//IL_1099: Expected O, but got Unknown
		//IL_10a5: Unknown result type (might be due to invalid IL or missing references)
		//IL_10c3: Unknown result type (might be due to invalid IL or missing references)
		//IL_1184: Unknown result type (might be due to invalid IL or missing references)
		//IL_118e: Expected O, but got Unknown
		//IL_1197: Unknown result type (might be due to invalid IL or missing references)
		//IL_11a1: Expected O, but got Unknown
		CheckboxDaPet = new CheckBox();
		groupBox5 = new GroupBox();
		numericUpDownKenh = new NumericUpDown();
		numericUpDownNV = new NumericUpDown();
		label16 = new Label();
		checkBoxLog_BB = new CheckBox();
		checkBoxLog = new CheckBox();
		label15 = new Label();
		label17 = new Label();
		label4 = new Label();
		label2 = new Label();
		buttonSave = new Button();
		groupBox3 = new GroupBox();
		numericUpDownDaPet = new NumericUpDown();
		groupBox4 = new GroupBox();
		label12 = new Label();
		pictureBox1 = new PictureBox();
		numericUpDownFPS = new NumericUpDown();
		label8 = new Label();
		label1 = new Label();
		label3 = new Label();
		buttonReset = new Button();
		label6 = new Label();
		textBox1 = new TextBox();
		buttonPause = new Button();
		ButtonDebug = new CheckBox();
		ButtonRunAuto = new CheckBox();
		((Control)groupBox5).SuspendLayout();
		((ISupportInitialize)numericUpDownKenh).BeginInit();
		((ISupportInitialize)numericUpDownNV).BeginInit();
		((Control)groupBox3).SuspendLayout();
		((ISupportInitialize)numericUpDownDaPet).BeginInit();
		((Control)groupBox4).SuspendLayout();
		((ISupportInitialize)pictureBox1).BeginInit();
		((ISupportInitialize)numericUpDownFPS).BeginInit();
		((Control)this).SuspendLayout();
		((Control)CheckboxDaPet).AutoSize = true;
		((Control)CheckboxDaPet).Location = new Point(19, 22);
		((Control)CheckboxDaPet).Name = "CheckboxDaPet";
		((Control)CheckboxDaPet).Size = new Size(60, 19);
		((Control)CheckboxDaPet).TabIndex = 23;
		((Control)CheckboxDaPet).Text = "Đá Pet";
		((ButtonBase)CheckboxDaPet).UseVisualStyleBackColor = true;
		CheckboxDaPet.CheckStateChanged += new EventHandler(CheckboxDaPet_CheckStateChanged);
		((Control)groupBox5).Controls.Add((Control)(object)numericUpDownKenh);
		((Control)groupBox5).Controls.Add((Control)(object)numericUpDownNV);
		((Control)groupBox5).Controls.Add((Control)(object)label16);
		((Control)groupBox5).Controls.Add((Control)(object)checkBoxLog_BB);
		((Control)groupBox5).Controls.Add((Control)(object)checkBoxLog);
		((Control)groupBox5).Controls.Add((Control)(object)label15);
		((Control)groupBox5).Location = new Point(175, 13);
		((Control)groupBox5).Name = "groupBox5";
		((Control)groupBox5).Size = new Size(166, 71);
		((Control)groupBox5).TabIndex = 52;
		groupBox5.TabStop = false;
		((Control)groupBox5).Text = "Đặng Nhập Lại";
		((Control)numericUpDownKenh).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownKenh).Location = new Point(133, 20);
		numericUpDownKenh.Maximum = new decimal(new int[4] { 8, 0, 0, 0 });
		((Control)numericUpDownKenh).Name = "numericUpDownKenh";
		((Control)numericUpDownKenh).Size = new Size(27, 23);
		((Control)numericUpDownKenh).TabIndex = 38;
		numericUpDownKenh.Value = new decimal(new int[4] { 1, 0, 0, 0 });
		((Control)numericUpDownNV).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownNV).Location = new Point(61, 20);
		numericUpDownNV.Maximum = new decimal(new int[4] { 6, 0, 0, 0 });
		((Control)numericUpDownNV).Name = "numericUpDownNV";
		((Control)numericUpDownNV).Size = new Size(27, 23);
		((Control)numericUpDownNV).TabIndex = 38;
		numericUpDownNV.Value = new decimal(new int[4] { 1, 0, 0, 0 });
		((Control)label16).AutoSize = true;
		((Control)label16).Location = new Point(29, 22);
		((Control)label16).Name = "label16";
		((Control)label16).Size = new Size(26, 15);
		((Control)label16).TabIndex = 37;
		((Control)label16).Text = "NV:";
		((Control)checkBoxLog_BB).AutoSize = true;
		((Control)checkBoxLog_BB).Location = new Point(6, 49);
		((Control)checkBoxLog_BB).Name = "checkBoxLog_BB";
		((Control)checkBoxLog_BB).Size = new Size(73, 19);
		((Control)checkBoxLog_BB).TabIndex = 19;
		((Control)checkBoxLog_BB).Text = "Bắt Buộc";
		((ButtonBase)checkBoxLog_BB).UseVisualStyleBackColor = true;
		((Control)checkBoxLog).AutoSize = true;
		((Control)checkBoxLog).Location = new Point(8, 24);
		((Control)checkBoxLog).Name = "checkBoxLog";
		((Control)checkBoxLog).Size = new Size(15, 14);
		((Control)checkBoxLog).TabIndex = 19;
		((ButtonBase)checkBoxLog).UseVisualStyleBackColor = true;
		((Control)label15).AutoSize = true;
		((Control)label15).Location = new Point(90, 22);
		((Control)label15).Name = "label15";
		((Control)label15).Size = new Size(37, 15);
		((Control)label15).TabIndex = 20;
		((Control)label15).Text = "Kênh:";
		((Control)label17).AutoSize = true;
		((Control)label17).Font = new Font("Segoe UI", 7f, (FontStyle)0, (GraphicsUnit)3);
		((Control)label17).Location = new Point(66, 59);
		((Control)label17).Name = "label17";
		((Control)label17).Size = new Size(25, 12);
		((Control)label17).TabIndex = 54;
		((Control)label17).Text = "null?";
		((Control)label4).AutoSize = true;
		((Control)label4).Location = new Point(125, 23);
		((Control)label4).Name = "label4";
		((Control)label4).Size = new Size(31, 15);
		((Control)label4).TabIndex = 13;
		((Control)label4).Text = "Lượt";
		((Control)label2).AutoSize = true;
		((Control)label2).Location = new Point(226, 129);
		((Control)label2).Name = "label2";
		((Control)label2).Size = new Size(32, 15);
		((Control)label2).TabIndex = 44;
		((Control)label2).Text = "null?";
		((Control)buttonSave).Location = new Point(4, 57);
		((Control)buttonSave).Name = "buttonSave";
		((Control)buttonSave).Size = new Size(56, 27);
		((Control)buttonSave).TabIndex = 53;
		((Control)buttonSave).Text = "Lưu";
		((ButtonBase)buttonSave).UseVisualStyleBackColor = true;
		((Control)buttonSave).Click += new EventHandler(buttonSave_Click);
		((Control)groupBox3).Controls.Add((Control)(object)groupBox5);
		((Control)groupBox3).Controls.Add((Control)(object)label17);
		((Control)groupBox3).Controls.Add((Control)(object)buttonSave);
		((Control)groupBox3).Controls.Add((Control)(object)CheckboxDaPet);
		((Control)groupBox3).Controls.Add((Control)(object)label4);
		((Control)groupBox3).Controls.Add((Control)(object)numericUpDownDaPet);
		((Control)groupBox3).Location = new Point(12, 155);
		((Control)groupBox3).Name = "groupBox3";
		((Control)groupBox3).Size = new Size(358, 94);
		((Control)groupBox3).TabIndex = 50;
		groupBox3.TabStop = false;
		((Control)groupBox3).Text = "Tiện Ích";
		((Control)numericUpDownDaPet).Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		((Control)numericUpDownDaPet).Location = new Point(85, 21);
		numericUpDownDaPet.Maximum = new decimal(new int[4] { 10000, 0, 0, 0 });
		((Control)numericUpDownDaPet).Name = "numericUpDownDaPet";
		((Control)numericUpDownDaPet).Size = new Size(34, 23);
		((Control)numericUpDownDaPet).TabIndex = 15;
		numericUpDownDaPet.Value = new decimal(new int[4] { 20, 0, 0, 0 });
		((Control)groupBox4).Controls.Add((Control)(object)label12);
		((Control)groupBox4).Controls.Add((Control)(object)pictureBox1);
		((Control)groupBox4).Controls.Add((Control)(object)numericUpDownFPS);
		((Control)groupBox4).Controls.Add((Control)(object)label8);
		((Control)groupBox4).Controls.Add((Control)(object)label1);
		((Control)groupBox4).Controls.Add((Control)(object)label3);
		((Control)groupBox4).Controls.Add((Control)(object)buttonReset);
		((Control)groupBox4).Controls.Add((Control)(object)label6);
		((Control)groupBox4).Location = new Point(12, 12);
		((Control)groupBox4).Name = "groupBox4";
		((Control)groupBox4).Size = new Size(208, 106);
		((Control)groupBox4).TabIndex = 55;
		groupBox4.TabStop = false;
		((Control)groupBox4).Text = "groupBox4";
		((Control)label12).AutoSize = true;
		((Control)label12).Location = new Point(124, 28);
		((Control)label12).Name = "label12";
		((Control)label12).Size = new Size(76, 15);
		((Control)label12).TabIndex = 27;
		((Control)label12).Text = "Run: 00:00:00";
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
		((Control)label8).AutoSize = true;
		((Control)label8).Font = new Font("Segoe UI Semibold", 12f, (FontStyle)3, (GraphicsUnit)3);
		((Control)label8).Location = new Point(66, 22);
		((Control)label8).Name = "label8";
		((Control)label8).Size = new Size(45, 21);
		((Control)label8).TabIndex = 15;
		((Control)label8).Text = "null?";
		((Control)label1).AutoSize = true;
		((Control)label1).Font = new Font("Segoe UI Semibold", 12f, (FontStyle)3, (GraphicsUnit)3);
		((Control)label1).Location = new Point(65, 43);
		((Control)label1).Name = "label1";
		((Control)label1).Size = new Size(45, 21);
		((Control)label1).TabIndex = 15;
		((Control)label1).Text = "null?";
		((Control)label3).AutoSize = true;
		((Control)label3).Location = new Point(72, 79);
		((Control)label3).Name = "label3";
		((Control)label3).Size = new Size(29, 15);
		((Control)label3).TabIndex = 13;
		((Control)label3).Text = "FPS:";
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
		((Control)textBox1).Location = new Point(226, 12);
		((TextBoxBase)textBox1).Multiline = true;
		((Control)textBox1).Name = "textBox1";
		((TextBoxBase)textBox1).ReadOnly = true;
		textBox1.ScrollBars = (ScrollBars)2;
		((Control)textBox1).Size = new Size(144, 106);
		((Control)textBox1).TabIndex = 54;
		((Control)textBox1).Text = "-----------------------";
		((Control)buttonPause).Enabled = false;
		((Control)buttonPause).Location = new Point(84, 124);
		((Control)buttonPause).Name = "buttonPause";
		((Control)buttonPause).Size = new Size(65, 25);
		((Control)buttonPause).TabIndex = 53;
		((Control)buttonPause).Text = "Pause";
		((ButtonBase)buttonPause).UseVisualStyleBackColor = true;
		((Control)buttonPause).Click += new EventHandler(buttonPause_Click);
		ButtonDebug.Appearance = (Appearance)1;
		((Control)ButtonDebug).AutoSize = true;
		((Control)ButtonDebug).Location = new Point(155, 124);
		((Control)ButtonDebug).Name = "ButtonDebug";
		((Control)ButtonDebug).Size = new Size(57, 25);
		((Control)ButtonDebug).TabIndex = 51;
		((Control)ButtonDebug).Text = "Chi Tiết";
		((ButtonBase)ButtonDebug).UseVisualStyleBackColor = true;
		ButtonDebug.CheckStateChanged += new EventHandler(ButtonDebug_CheckStateChanged);
		ButtonRunAuto.Appearance = (Appearance)1;
		((Control)ButtonRunAuto).AutoSize = true;
		((Control)ButtonRunAuto).Location = new Point(12, 124);
		((Control)ButtonRunAuto).Name = "ButtonRunAuto";
		((Control)ButtonRunAuto).Size = new Size(65, 25);
		((Control)ButtonRunAuto).TabIndex = 52;
		((Control)ButtonRunAuto).Text = "Start";
		((ButtonBase)ButtonRunAuto).UseVisualStyleBackColor = true;
		ButtonRunAuto.CheckStateChanged += new EventHandler(ButtonRunAuto_CheckStateChanged);
		((ContainerControl)this).AutoScaleDimensions = new SizeF(7f, 15f);
		((ContainerControl)this).AutoScaleMode = (AutoScaleMode)1;
		((Form)this).ClientSize = new Size(381, 253);
		((Control)this).Controls.Add((Control)(object)groupBox4);
		((Control)this).Controls.Add((Control)(object)textBox1);
		((Control)this).Controls.Add((Control)(object)buttonPause);
		((Control)this).Controls.Add((Control)(object)ButtonDebug);
		((Control)this).Controls.Add((Control)(object)ButtonRunAuto);
		((Control)this).Controls.Add((Control)(object)label2);
		((Control)this).Controls.Add((Control)(object)groupBox3);
		((Form)this).FormBorderStyle = (FormBorderStyle)1;
		((Form)this).MaximizeBox = false;
		((Control)this).Name = "TuHanh";
		((Form)this).StartPosition = (FormStartPosition)1;
		((Control)this).Text = "TuHanh";
		((Form)this).FormClosed += new FormClosedEventHandler(TuHanh_FormClosed);
		((Form)this).Load += new EventHandler(TuHanh_Load);
		((Control)groupBox5).ResumeLayout(false);
		((Control)groupBox5).PerformLayout();
		((ISupportInitialize)numericUpDownKenh).EndInit();
		((ISupportInitialize)numericUpDownNV).EndInit();
		((Control)groupBox3).ResumeLayout(false);
		((Control)groupBox3).PerformLayout();
		((ISupportInitialize)numericUpDownDaPet).EndInit();
		((Control)groupBox4).ResumeLayout(false);
		((Control)groupBox4).PerformLayout();
		((ISupportInitialize)pictureBox1).EndInit();
		((ISupportInitialize)numericUpDownFPS).EndInit();
		((Control)this).ResumeLayout(false);
		((Control)this).PerformLayout();
	}
}
