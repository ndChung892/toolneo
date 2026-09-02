using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Management;
using System.Resources;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using AutoTool;
using AutoTool.Properties;
using KAutoHelper;
using Microsoft.Win32;

namespace SunpayQRdevices;

public class Intro : Form
{
	[CompilerGenerated]
	private sealed class _003CCheckActiveKey_GoogleSheets_003Ed__18 : IAsyncStateMachine
	{
		public int _003C_003E1__state;

		public AsyncTaskMethodBuilder _003C_003Et__builder;

		public Intro _003C_003E4__this;

		private string[] _003CgetResult_003E5__1;

		private string[] _003C_003Es__2;

		private System.DateTime _003CfromGoogleSheet_003E5__3;

		private int _003CcheckTimeUse_003E5__4;

		private System.DateTime _003C_003Es__5;

		private Process[] _003Cmyprocess_003E5__6;

		private int _003Ci_003E5__7;

		private TaskAwaiter<string[]> _003C_003Eu__1;

		private TaskAwaiter<System.DateTime> _003C_003Eu__2;

		private void MoveNext()
		{
			//IL_0056: Unknown result type (might be due to invalid IL or missing references)
			//IL_005b: Unknown result type (might be due to invalid IL or missing references)
			//IL_0062: Unknown result type (might be due to invalid IL or missing references)
			//IL_00e8: Unknown result type (might be due to invalid IL or missing references)
			//IL_00ed: Unknown result type (might be due to invalid IL or missing references)
			//IL_0121: Unknown result type (might be due to invalid IL or missing references)
			//IL_0126: Unknown result type (might be due to invalid IL or missing references)
			//IL_012e: Unknown result type (might be due to invalid IL or missing references)
			//IL_001f: Unknown result type (might be due to invalid IL or missing references)
			//IL_0024: Unknown result type (might be due to invalid IL or missing references)
			//IL_0102: Unknown result type (might be due to invalid IL or missing references)
			//IL_0104: Unknown result type (might be due to invalid IL or missing references)
			//IL_0038: Unknown result type (might be due to invalid IL or missing references)
			//IL_0039: Unknown result type (might be due to invalid IL or missing references)
			//IL_02de: Unknown result type (might be due to invalid IL or missing references)
			int num = _003C_003E1__state;
			try
			{
				TaskAwaiter<System.DateTime> val;
				TaskAwaiter<string[]> val2;
				if (num != 0)
				{
					if (num == 1)
					{
						val = _003C_003Eu__2;
						_003C_003Eu__2 = default(TaskAwaiter<System.DateTime>);
						num = (_003C_003E1__state = -1);
						goto IL_013d;
					}
					val2 = Program.GoogleAPIHelper.CheckSerial().GetAwaiter();
					if (!val2.IsCompleted)
					{
						num = (_003C_003E1__state = 0);
						_003C_003Eu__1 = val2;
						_003CCheckActiveKey_GoogleSheets_003Ed__18 _003CCheckActiveKey_GoogleSheets_003Ed__ = this;
						((AsyncTaskMethodBuilder)(ref _003C_003Et__builder)).AwaitUnsafeOnCompleted<TaskAwaiter<string[]>, _003CCheckActiveKey_GoogleSheets_003Ed__18>(ref val2, ref _003CCheckActiveKey_GoogleSheets_003Ed__);
						return;
					}
				}
				else
				{
					val2 = _003C_003Eu__1;
					_003C_003Eu__1 = default(TaskAwaiter<string[]>);
					num = (_003C_003E1__state = -1);
				}
				_003C_003Es__2 = val2.GetResult();
				_003CgetResult_003E5__1 = _003C_003Es__2;
				_003C_003Es__2 = null;
				if (_003CgetResult_003E5__1.Length > 1)
				{
					Program.AppMain.isActive = true;
					Program.AppMain.serial = _003CgetResult_003E5__1[0];
					Program.AppMain.model = _003CgetResult_003E5__1[1];
					Program.AppMain.nameVIP = _003CgetResult_003E5__1[2];
					Program.AppMain.timeUse = Convert.ToInt32(_003CgetResult_003E5__1[3]);
					val = Program.GoogleAPIHelper.GetRealTimeFromSheets().GetAwaiter();
					if (!val.IsCompleted)
					{
						num = (_003C_003E1__state = 1);
						_003C_003Eu__2 = val;
						_003CCheckActiveKey_GoogleSheets_003Ed__18 _003CCheckActiveKey_GoogleSheets_003Ed__ = this;
						((AsyncTaskMethodBuilder)(ref _003C_003Et__builder)).AwaitUnsafeOnCompleted<TaskAwaiter<System.DateTime>, _003CCheckActiveKey_GoogleSheets_003Ed__18>(ref val, ref _003CCheckActiveKey_GoogleSheets_003Ed__);
						return;
					}
					goto IL_013d;
				}
				Program.AppMain.isActive = false;
				goto IL_02f7;
				IL_013d:
				_003C_003Es__5 = val.GetResult();
				_003CfromGoogleSheet_003E5__3 = _003C_003Es__5;
				_003CcheckTimeUse_003E5__4 = _003CfromGoogleSheet_003E5__3.Year * 10000 + _003CfromGoogleSheet_003E5__3.Month * 100 + _003CfromGoogleSheet_003E5__3.Day;
				if (Program.AppMain.timeUse < _003CcheckTimeUse_003E5__4)
				{
					Program.AppMain.isActive = false;
					_003Cmyprocess_003E5__6 = Process.GetProcessesByName("BMxTool");
					if (Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)_003Cmyprocess_003E5__6) > 1)
					{
						_003Ci_003E5__7 = 0;
						while (_003Ci_003E5__7 < Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)_003Cmyprocess_003E5__6))
						{
							if (_003Cmyprocess_003E5__6[_003Ci_003E5__7].MainWindowTitle != string.Concat(new string[5]
							{
								"BMx-Tool VPT [v",
								Program.AppMain.version,
								"-",
								Settings.Default.NameTool,
								"]"
							}) && _003Cmyprocess_003E5__6[_003Ci_003E5__7].MainWindowTitle != "[BMx v" + Program.AppMain.version + "] Click" && _003Cmyprocess_003E5__6[_003Ci_003E5__7].MainWindowTitle != "[BMx v" + Program.AppMain.version + "] Tiện Ích")
							{
								_003Cmyprocess_003E5__6[_003Ci_003E5__7].Kill();
							}
							_003Ci_003E5__7++;
						}
					}
					MessageBox.Show("Hết Hạn Sử Dụng Bản Full\nChuyển Qua Sử Dụng Tính Năng Cơ Bản", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)48);
					_003Cmyprocess_003E5__6 = null;
				}
				goto IL_02f7;
				IL_02f7:
				Program.AppMain.run = true;
			}
			catch (System.Exception exception)
			{
				_003C_003E1__state = -2;
				_003CgetResult_003E5__1 = null;
				((AsyncTaskMethodBuilder)(ref _003C_003Et__builder)).SetException(exception);
				return;
			}
			_003C_003E1__state = -2;
			_003CgetResult_003E5__1 = null;
			((AsyncTaskMethodBuilder)(ref _003C_003Et__builder)).SetResult();
		}

		[DebuggerHidden]
		private void SetStateMachine(IAsyncStateMachine stateMachine)
		{
		}
	}

	[CompilerGenerated]
	private sealed class _003CtimerLoad_Tick_003Ed__16 : IAsyncStateMachine
	{
		public int _003C_003E1__state;

		public AsyncVoidMethodBuilder _003C_003Et__builder;

		public object sender;

		public EventArgs e;

		public Intro _003C_003E4__this;

		private int _003C_003Es__1;

		private RegistryKey _003Ckey_003E5__2;

		private RegistryKey _003Ckey_003E5__3;

		private TextWriter _003CtextData_003E5__4;

		private System.DateTime _003CdateTime_003E5__5;

		private TextWriter _003CtextData_003E5__6;

		private System.DateTime _003Ctime_003E5__7;

		private string[] _003CsubDir_003E5__8;

		private string[] _003C_003Es__9;

		private int _003C_003Es__10;

		private string _003Citem_003E5__11;

		private System.DateTime _003CdateTime_003E5__12;

		private int _003CSosanh_003E5__13;

		private TaskAwaiter _003C_003Eu__1;

		private void MoveNext()
		{
			//IL_0598: Unknown result type (might be due to invalid IL or missing references)
			//IL_059d: Unknown result type (might be due to invalid IL or missing references)
			//IL_05a5: Unknown result type (might be due to invalid IL or missing references)
			//IL_055e: Unknown result type (might be due to invalid IL or missing references)
			//IL_0563: Unknown result type (might be due to invalid IL or missing references)
			//IL_02cc: Unknown result type (might be due to invalid IL or missing references)
			//IL_02d6: Expected O, but got Unknown
			//IL_0578: Unknown result type (might be due to invalid IL or missing references)
			//IL_057a: Unknown result type (might be due to invalid IL or missing references)
			//IL_038e: Unknown result type (might be due to invalid IL or missing references)
			//IL_0398: Expected O, but got Unknown
			int num = _003C_003E1__state;
			try
			{
				TaskAwaiter val;
				if (num != 0)
				{
					_003C_003E4__this.timerLoad.Stop();
					int buoc = _003C_003E4__this.Buoc;
					_003C_003Es__1 = buoc;
					switch (_003C_003Es__1)
					{
					default:
						goto end_IL_0007;
					case 1:
						_003C_003E4__this.Buoc = 2;
						((Control)_003C_003E4__this.infor).Text = "Lấy thông tin Cài Đặt ...";
						_003C_003E4__this.timerLoad.Interval = _003C_003E4__this.time_delay;
						if (Settings.Default.startWithWin)
						{
							_003Ckey_003E5__2 = Registry.CurrentUser.OpenSubKey("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run", true);
							_003Ckey_003E5__2.SetValue("BMx-Tool", (object)Application.ExecutablePath);
							_003Ckey_003E5__2 = null;
						}
						else
						{
							_003Ckey_003E5__3 = Registry.CurrentUser.OpenSubKey("SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run", true);
							_003Ckey_003E5__3.DeleteValue("BMx-Tool", false);
							_003Ckey_003E5__3 = null;
						}
						try
						{
							Program.AppMain.link1 = "http://" + Settings.Default.linkMG + "/s/";
						}
						catch (System.Exception)
						{
						}
						_003C_003E4__this.timerLoad.Start();
						_003C_003E4__this.timerPerLoad.Start();
						goto end_IL_0007;
					case 2:
						_003C_003E4__this.Buoc = 3;
						((Control)_003C_003E4__this.infor).Text = "Check Flash.exe ...";
						_003C_003E4__this.timerLoad.Interval = _003C_003E4__this.time_delay / 3;
						_003C_003E4__this.timerLoad.Start();
						goto end_IL_0007;
					case 3:
						_003C_003E4__this.Buoc = 4;
						if (!Program.AppMain.debugProgram)
						{
							Thread.Sleep(1000);
							_003C_003E4__this.checkFlash();
						}
						_003C_003E4__this.timerLoad.Interval = _003C_003E4__this.time_delay / 3;
						_003C_003E4__this.timerLoad.Start();
						goto end_IL_0007;
					case 4:
						_003C_003E4__this.Buoc = 5;
						((Control)_003C_003E4__this.infor).Text = "Xong";
						_003C_003E4__this.timerLoad.Interval = _003C_003E4__this.time_delay / 3;
						_003C_003E4__this.timerLoad.Start();
						goto end_IL_0007;
					case 5:
						_003C_003E4__this.Buoc = 6;
						((Control)_003C_003E4__this.infor).Text = "Check System File...";
						if (!File.Exists(Application.StartupPath + "/Anh/System/Data1/1.txt"))
						{
							_003CtextData_003E5__4 = (TextWriter)new StreamWriter(Application.StartupPath + "/Anh/System/Data1/1.txt");
							_003CtextData_003E5__4.Write("Anh Vũ Cảnh\t97\t58\tGinny\t\r\nAnh Vũ Cảnh\t125\t82\tNư\u0303 Vương Yêu Hoa\t\r\nAnh Vũ Cảnh\t132\t110\tCupid - Cây Ươ\u0301c Nguyê\u0323n\t\r\nAnh Vũ Cảnh\t251\t123\tY Lô\u0323\t\r\nAnh Vũ Cảnh\t248\t81\tThơ\u0323 Trô\u0300ng Hoa\t\r\nAnh Vũ Cảnh\t211\t146\tTiê\u0309u Ba\t\r\nAnh Vũ Cảnh\t51\t100\tĐô\u0300ng Đô\u0300ng\t\r\nAnh Vũ Cảnh\t240\t56\tTiê\u0309u Sơn Tă\u0323c\t\r\nBàn Địa Tộc\t41\t49\tĐa\u0323o Sư Ba\u0300n Đi\u0323a\t\r\nBàn Địa Tộc\t140\t77\tTô\u0323c Trươ\u0309ng Ba\u0300n Đi\u0323a\t\r\nBàn Địa Tộc\t128\t131\tTinh Anh Ba\u0300n Đi\u0323a\t\r\nBàn Địa Tộc\t82\t102\tTinh Linh Di\u0323ch Chuyê\u0309n Ba\u0300n Đi\u0323a\t\r\nBàn Địa Tộc\t169\t116\tKho Sa\u0301ch Ba\u0300n Đi\u0323a\t\r\nBàng Bối Thành\t121\t112\tĐiê\u0309m Di\u0323ch Chuyê\u0309n Trương Chân Nhân\t\r\nBàng Bối Thành\t79\t23\tCook\t\r\nBàng Bối Thành\t94\t40\tTiê\u0309u Nhi\u0323 Ta\u0323p Ho\u0301a\t\r\nBàng Bối Thành\t34\t163\tChu\u0309 Tiê\u0323m Vu\u0303 Khi\u0301\t\r\nBàng Bối Thành\t82\t178\tThu\u0309 Kho\t\r\nBàng Bối Thành\t113\t190\tTiê\u0323m Trang Bi\u0323 Ran\t\r\nBàng Bối Thành\t50\t115\tTiê\u0323m Thuô\u0301c Kelly\t\r\nBàng Bối Thành\t170\t64\tTiê\u0323m Trang Sư\u0301c Saiba\t\r\nBàng Bối Thành\t196\t46\tVê\u0323 Si\u0303 Ba\u0300ng Bô\u0301i\t\r\nBàng Bối Thành\t196\t93\tLong Bô\u0301i Tê\u0301 Tư\u0323 - Danh Hiê\u0323u Du\u0303ng Si\u0303\t\r\nBàng Bối Thành\t255\t122\tThu\u0309 Vê\u0323 A\u0309o Ma Tha\u0301p\t\r\nBàng Bối Thành\t266\t165\tA Vươ\u0323ng\t\r\nBàng Bối Thành\t204\t152\tThương Hô\u0323i Trươ\u0309ng Ba\u0300ng Bô\u0301i\t\r\nBàng Bối Thành\t62\t62\tTha\u0300nh Chu\u0309 Ba\u0300ng Bô\u0301i\t\r\nBăng Tuyết Nguyên\t239\t38\tNô\u0323 Viêm Lam Đê\u0301\t\r\nBăng Tuyết Nguyên\t72\t166\tThương Nhân Bi\u0323 Thương\t\r\nBăng Tuyết Nguyên\t272\t169\tSư\u0301 Gia\u0309 Di\u0323ch Chuyê\u0309n Tiên Ca\u0309nh\t\r\nBăng Tuyết Nguyên\t170\t156\tBăng Đô\u0300ng Yêu Vương\t\r\nBăng Tuyết Nguyên\t79\t77\tTha\u0300nh Viên Leo Nu\u0301i\t\r\nChi Phong Cốc\t64\t45\tHo\u0309a Ma Vương\t\r\nChi Phong Cốc\t204\t25\tTy\u0323 Cô\u0301c Nhân\t\r\nCổ Đạo\t194\t23\tNgươ\u0300i Khai Quâ\u0323t - Tha\u0301m Hiê\u0309m\t\r\nCổ Đạo\t74\t23\tNgươ\u0300i Ti\u0300m Nươ\u0301c\t\r\nCổ Đạo\t103\t142\tAnh Linh\t\r\nCổ Đạo\t66\t185\tXa\u0300 Yêu La\u0303nh Chu\u0301a\t\r\nCổ Đạo\t47\t68\tQuy\u0309 Diê\u0323n\t\r\nCổ Đạo\t248\t22\tThu\u0309 Cô\u0301c Nhân\t\r\nCổ Thành\t45\t140\tTha\u0300nh Chu\u0309\t\r\nCổ Thành\t84\t75\tThâ\u0300n Di Ti\u0301ch\t\r\nCổ Thành\t107\t178\tLĩnh Chủ Cổ Diệm\t\r\nĐăng Vân Địa\t248\t163\tThâ\u0300n Hô\u0323 Oss\t\r\nĐiêu Linh Thôn\t168\t42\tNông Dân John - Va\u0300o Nông Trươ\u0300ng\t\r\nĐiêu Linh Thôn\t149\t36\tReck - Cha\u0301u Trai Thôn Trươ\u0309ng\t\r\nĐiêu Linh Thôn\t120\t92\tĐa\u0323i Sư Ky\u0303 Năng Sô\u0301ng\t\r\nĐiêu Linh Thôn\t61\t96\tTươ\u0301ng Quân Cô Thôn\t\r\nĐiêu Linh Thôn\t35\t107\tLa\u0303o Ông Điêu Linh\t\r\nĐiêu Linh Thôn\t37\t31\tThôn Trươ\u0309ng Điêu Linh\t\r\nĐiêu Linh Thôn\t91\t86\tĐô\u0323i Trươ\u0309ng Cô Thôn\t\r\nĐiêu Linh Thôn\t83\t25\tTinh Linh Di\u0323ch Chuyê\u0309n Điêu Linh\t\r\nĐoạn Cốc\t50\t115\tTô\u0323c Navi Điên Loa\u0323n\t\r\nĐoạn Cốc\t280\t54\tBăng Cư\u0323 Long\t\r\nĐoạn Cốc\t212\t36\tNgươ\u0300i Đo\u0301ng Băng\t\r\nĐoạn Cốc\t176\t132\tNô Lê\u0323\t\r\nĐoạn Cốc\t39\t165\tThuâ\u0323t Si\u0303 Đa\u0300o Mo\u0309\t\r\nĐoạn Cốc\t196\t185\tTha\u0323ch Bia Đô\u0309 Na\u0301t\t\r\nĐông Huyền Thành\t357\t217\tCâ\u0323n Vê\u0323 Ca\u0309ng\t\r\nĐông Huyền Thành\t298\t261\tNha\u0300 Ha\u0300ng Âu Dương\t\r\nĐông Huyền Thành\t242\t248\tSư\u0301 Gia\u0309 Câu Ca\u0301\t\r\nĐông Huyền Thành\t326\t123\tShop Du\u0303ng Khi\u0301\t\r\nĐông Huyền Thành\t111\t92\tSư\u0301 Gia\u0309 Bi\u0301 Ca\u0309nh\t\r\nĐông Huyền Thành\t338\t158\tTiê\u0323m Vu\u0303 Khi\u0301 Mark\t\r\nĐông Huyền Thành\t126\t98\tSư\u0301 Gia\u0309 A\u0309o Ca\u0309nh\t\r\nĐông Huyền Thành\t147\t111\tSư\u0301 Gia\u0309 Đoa\u0323t Ba\u0309o Ky\u0300 Binh\t\r\nĐông Huyền Thành\t142\t124\tKha\u0309o Quan Đa\u0301nh Gia\u0301 Xê\u0301p Loa\u0323i Nghê\u0300\t\r\nĐông Huyền Thành\t54\t119\tAnh Be\u0301o\t\r\nĐông Huyền Thành\t334\t130\tSư\u0301 Gia\u0309 Thu\u0309 Hô\u0323 Jery\t\r\nĐông Huyền Thành\t317\t115\tSư\u0301 Gia\u0309 Đô\u0309i Thâ\u0300n Thu\u0301\t\r\nĐông Huyền Thành\t171\t237\tTiê\u0323m Trang Bi\u0323 Mary\t\r\nĐông Huyền Thành\t256\t183\tTiê\u0301n Si\u0303 Ultra\t\r\nĐông Huyền Thành\t225\t136\tQuan Quân Nhu\t\r\nĐông Huyền Thành\t213\t149\tHươ\u0301ng Dâ\u0303n Viên Ryan\t\r\nĐông Huyền Thành\t160\t149\tTô\u0323c Trươ\u0309ng Bô\u0301i Tư\t\r\nĐông Huyền Thành\t128\t158\tY Ta\u0301 Vương\t\r\nĐông Huyền Thành\t106\t182\tQuân Đoa\u0300n Trươ\u0309ng Đông Huyê\u0300n\t\r\nĐông Huyền Thành\t246\t104\tChuyên Viên Phu\u0301c Lơ\u0323i\t\r\nĐông Huyền Thành\t81\t33\tTrươ\u0309ng Thương Hô\u0323i Đông Huyê\u0300n\t\r\nĐông Huyền Thành\t165\t45\tQua\u0309n Ly\u0301 Bang Hô\u0323i Chiê\u0301n\t\r\nĐông Huyền Thành\t262\t93\tBa\u0301c Si\u0303 Ly\u0301\t\r\nĐông Huyền Thành\t200\t32\tTiê\u0323m Thuô\u0301c Ba\u0301c Si\u0303 Vương\t\r\nĐông Huyền Thành\t221\t47\tNhiê\u0323m Vu\u0323 Treo Thươ\u0309ng\t\r\nĐông Huyền Thành\t250\t43\tĐông Huyê\u0300n Sư\u0301\t\r\nĐông Huyền Thành\t207\t231\tTiê\u0323m Trang Sư\u0301c Kha\u0309 Vi Nhi\t\r\nĐông Huyền Thành\t77\t79\tThu\u0309 Thư\t\r\nĐông Huyền Thành\t223\t210\tTiê\u0323m Ta\u0323p Ho\u0301a Ông Mô\u0323\t\r\nĐông Huyền Thành\t359\t134\tNhân Viên Ngân Ha\u0300ng\t\r\nĐông Huyền Thành\t203\t117\tDi\u0323ch Chuyê\u0309n Mark\t\r\nĐông Huyền Thành\t349\t128\tĐâ\u0301u Gia\u0301\t\r\nĐông Huyền Thành\t275\t159\tShop Điê\u0309m Thươ\u0309ng Gia\u0301c Đâ\u0301u\t\r\nĐông Huyền Thành\t307\t65\tTrươ\u0309ng Câ\u0323n Vê\u0323 Đông Huyê\u0300n\t\r\nĐông Huyền Thành\t180\t24\tQua\u0309n Ly\u0301 Di\u0323ch Chuyê\u0309n Bang Hô\u0323i\t\r\nĐông Huyền Thành\t148\t73\tTiê\u0323m Pet Tôn Lê\u0323\t\r\nĐông Xuất Vân\t84\t28\tThơ\u0323 Săn Edward\t\r\nĐông Xuất Vân\t217\t44\tNâ\u0301m Vương (boss)\t\r\nĐông Xuất Vân\t198\t128\tBang Chu\u0309 Răng Cư\u0309a (boss)\t\r\nĐông Xuất Vân\t37\t100\tA Vu\u0303\t\r\nHô\u0323 Chi Địa\t226\t32\tBia Thu\u0309 Hô\u0323\t\r\nHô\u0323 Chi Địa\t173\t93\tThu\u0309 Hô\u0323 Y\t\r\nHô\u0323 Chi Địa\t31\t185\tThu\u0309 Hô\u0323 Tang\t\r\nHô\u0323 Chi Địa\t222\t174\tThu\u0309 Hô\u0323 Tư\t\r\nHô\u0323 Chi Địa\t134\t123\tTinh Linh Đêm\t\r\nHô\u0323 Chi Địa\t106\t61\tThu\u0309 Hô\u0323 Nhi\u0303\t\r\nHư Không Mạc\t179\t139\tQuy\u0309 Điê\u0323p Phu Nhân\t\r\nHư Không Mạc\t90\t70\tA Thô\u0309\t\r\nHư Không Mạc\t41\t223\tThiên Nhiên Thu\u0323\t\r\nHư Không Mạc\t351\t121\tThu\u0309 Li\u0303nh Khô\u0309ng Lô\u0300 Sa Ma\u0323c\t\r\nHư Không Mạc\t284\t224\tCương Thi Vương\t\r\nHư Không Mạc\t38\t74\tSư\u0301 Gia\u0309 Di\u0323ch Chuyê\u0309n Đa\u0323i Ma\u0323c\t\r\nHư Không Mạc\t33\t94\tThu\u0309 Hoang Nhân\t\r\nHuyền Lâm Tộc\t51\t33\tKho Sa\u0301ch Huyê\u0300n Lâm\t\r\nHuyền Lâm Tộc\t54\t79\tTô\u0323c Trươ\u0309ng Huyê\u0300n Lâm\t\r\nHuyền Lâm Tộc\t31\t100\tTinh Linh Di\u0323ch Chuyê\u0309n Huyê\u0300n Lâm\t\r\nHuyền Lâm Tộc\t139\t52\tĐa\u0323o Sư Huyê\u0300n Lâm\t\r\nHuyền Lâm Tộc\t89\t52\tTinh Anh Huyê\u0300n Lâm\t\r\nKỵ Bình Nguyên\t117\t147\tLi\u0301nh Tuâ\u0300n Tra\t\r\nKỵ Bình Nguyên\t83\t121\tRota\t\r\nKỵ Bình Nguyên\t149\t38\tNgươ\u0300i Qua Đươ\u0300ng Ron\t\r\nKỵ Bình Nguyên\t232\t148\tTiê\u0301n Si\u0303 Harry\t\r\nKỵ Bình Nguyên\t270\t68\tNha\u0300 Tha\u0301m Hiê\u0309m\t\r\nKỵ Bình Nguyên\t106\t55\tMa\u0301y Gia\u0309 Gio\u0323ng No\u0301i\t\r\nKỵ Bình Nguyên\t44\t166\tDu\u0303ng Si\u0303 So\u0301i\t\r\nKỳ Thạch Địa\t199\t115\tTha\u0323ch Cư\u0323 Nhân\t\r\nKỳ Thạch Địa\t231\t41\tDi Dân Viê\u0303n Cô\u0309\t\r\nKỳ Thạch Địa\t108\t82\tViê\u0303n Cô\u0309 Thu\u0309 Hô\u0323 Thu\u0301\t\r\nKỳ Thạch Địa\t37\t27\tA\u0309o Đi\u0323a Â\u0301n Gia\u0309\t\r\nKỳ Thạch Địa\t76\t35\tĐa\u0309o Điê\u0301u Nam\t\r\nLạp Tuyết Địa\t179\t122\tMê Huyê\u0303n Đô\u0323ng - Sư\u0301 Gia\u0309 Di\u0323ch Chuyê\u0309n\t\r\nLạp Tuyết Địa\t51\t136\tĐô\u0323i Trươ\u0309ng Đô\u0323c Nha\u0303n Xanh\t\r\nLạp Tuyết Địa\t205\t141\tThu\u0309 Li\u0303nh Đô\u0323c Nha\u0303n Xanh\t\r\nLạp Tuyết Địa\t60\t95\tMa\u0309nh Da Thu\u0301\t\r\nLạp Tuyết Địa\t141\t38\tĐo\u0323c Nha\u0303n Đa\u0300o Quă\u0323ng\t\r\nLạp Tuyết Địa\t96\t29\tThơ\u0323 Mơ\u0309\t\r\nLạp Tuyết Địa\t255\t158\tHô\u0309 Bi\u0300 Dương Thi\u0301ch Ha\u0301t\t\r\nLạp Tuyết Địa\t236\t25\tLa\u0303o Thơ\u0323 Săn\t\r\nLê Dương Bắc\t38\t155\tNgươ\u0300i La\u0301i Đo\u0300 Hô\u0300 Đa\u0323i\t\r\nLê Dương Bắc\t88\t61\tNgư Phu\t\r\nLê Dương Bắc\t182\t142\tTiê\u0309u Hoa\t\r\nLê Dương Bắc\t249\t173\tAlumo (boss)\t\r\nLê Dương Đảo\t266\t26\tNgươ\u0300i La\u0301i Đo\u0300 Lô\u0323 Cô\u0301c\t\r\nLê Dương Đảo\t207\t133\tÔ\u0301c Vương Nga\u0300n Năm (boss)\t\r\nLê Dương Đảo\t272\t48\tAluca (boss)\t\r\nLê Dương Đảo\t62\t100\tQuan Tuâ\u0300n Tra Lê Dương\t\r\nLê Dương Đảo\t164\t156\tNgư Dân La\u0303o Kim\t\r\nLê Dương Nam\t58\t154\tThâ\u0300n Chê\u0301t\t\r\nLê Dương Nam\t55\t29\tTươ\u0323ng Đa\u0301\t\r\nLê Dương Nam\t204\t51\tCâ\u0323n Vê\u0323 Đông Huyê\u0300n\t\r\nLê Dương Nam\t134\t89\tMisalu\t\r\nLê Dương Nam\t127\t35\tVo\u0303 Si\u0303\t\r\nLê Dương Nam\t30\t21\tÔ\u0301c Đa\u0323i Đô\u0323i Trươ\u0309ng\t\r\nLê Dương Nam\t187\t157\tTiêu Khă\u0301c\t\r\nLê Dương Thôn\t175\t83\tHô\u0300 Tă\u0323c\t\r\nLê Dương Thôn\t104\t94\tLa\u0303o Ngư Phu\t\r\nLê Dương Thôn\t55\t114\tLan Lan\t\r\nLê Dương Thôn\t125\t141\tThu\u0309 Li\u0303nh Hô\u0300 Tă\u0323c\t\r\nLê Dương Thôn\t76\t20\tGâ\u0301u Ba\u0309o Tha\u0323ch\t\r\nLê Dương Thôn\t31\t101\tVê\u0323 Si\u0303\t\r\nLiêu Vân Tộc\t117\t112\tTinh Anh Liêu Vân\t\r\nLiêu Vân Tộc\t125\t57\tTô\u0323c Trươ\u0309ng Liêu Vân\t\r\nLiêu Vân Tộc\t176\t107\tTinh Linh Di\u0323ch Chuyê\u0309n Liêu Vân\t\r\nLiêu Vân Tộc\t45\t94\tKho Sa\u0301ch Liêu Vân\t\r\nLiêu Vân Tộc\t66\t62\tĐa\u0323o Sư Liêu Vân\t\r\nLinh Lan\t117\t139\tNgươ\u0300i Thâ\u0300n Bi\u0301\t\r\nLinh Lan\t80\t97\tY Tiên\t\r\nLinh Lan\t203\t139\tLinh Lan Ta\u0300 Tâm\t\r\nLinh Vũ Tộc\t58\t90\tTô\u0323c Trươ\u0309ng Linh Vu\u0303\t\r\nLinh Vũ Tộc\t143\t132\tTinh Anh Linh Vu\u0303\t\r\nLinh Vũ Tộc\t35\t124\tTinh Linh Di\u0323ch Chuyê\u0309n Linh Vu\u0303\t\r\nLinh Vũ Tộc\t86\t39\tKho Sa\u0301ch Linh Vu\u0303\t\r\nLinh Vũ Tộc\t138\t51\tĐa\u0323o Sư Linh Vu\u0303\t\r\nLưu Hỏa Tộc\t171\t68\tĐa\u0323o Sư Lưu Ho\u0309a\t\r\nLưu Hỏa Tộc\t111\t160\tKho Sa\u0301ch Lưu Ho\u0309a\t\r\nLưu Hỏa Tộc\t134\t112\tTinh Anh Lưu Ho\u0309a\t\r\nLưu Hỏa Tộc\t177\t113\tTinh Linh Di\u0323ch Chuyê\u0309n Lưu Ho\u0309a\t\r\nLưu Hỏa Tộc\t60\t90\tTô\u0323c Trươ\u0309ng Lưu Ho\u0309a\t\r\nMã Thạch Tuyết\t71\t139\tPha\u0301p Trâ\u0323n Thu\u0309 Hô\u0323\t\r\nMê Quang Tự\t106\t30\tEvan\t\r\nMê Quang Tự\t25\t62\tThô\u0309 Long\t\r\nMê Quang Tự\t139\t61\tQuang Dư\u0323c Vương\t\r\nMê Quang Tự\t57\t121\tHă\u0301c Long Vương\t\r\nMê Quang Tự\t169\t125\tCông Chu\u0301a Ha\u0309i Vư\u0323c\t\r\nMê Quang Tự\t50\t139\tTê\u0301 Đa\u0300n A\u0301c Ma\t\r\nMị Hoặc Lâm\t191\t147\tĐư\u0301a Be\u0301 Bi\u0323 Giam\t\r\nMị Hoặc Lâm\t127\t31\tMichi La\u0323c Đươ\u0300ng\t\r\nMị Hoặc Lâm\t78\t149\tNhiê\u0301p Hô\u0300n Qua\u0301i\t\r\nMị Hoặc Lâm\t211\t89\tVi\u0323 Kha\u0301ch Thâ\u0300n Bi\u0301\t\r\nMị Hoặc Lâm\t192\t35\tTiê\u0309u Tinh Linh Mi\u0323 Hoă\u0323c\t\r\nMị Hoặc Lâm\t131\t107\tSolomon【Nhiệm Vụ Tông Sư】\t\r\nMị Hoặc Lâm\t63\t86\tNgươ\u0300i Chăm So\u0301c Rư\u0300ng\t\r\nMị Hoặc Lâm\t67\t119\tPhi Ma\t\r\nNgọc Phong Lâm\t45\t101\tNgươ\u0300i Bă\u0301t Ong\t\r\nNgọc Phong Lâm\t152\t144\tOng Mâ\u0323t Nư\u0303 Vương\t\r\nNgọc Phong Lâm\t80\t61\tPhong Điê\u0323p Cuô\u0300ng Vu\u0303\t\r\nNgọc Phong Lâm\t196\t124\tKhô\u0309ng Lô\u0300 Kaos\t\r\nNgọc Phong Lâm\t173\t45\tTri\u0323 Liê\u0323u Sư\t\r\nNgọc Phong Lâm\t154\t63\tA Linh\t\r\nPhục Ma Cốc\t96\t33\tTê\u0301 Đa\u0300n\t\r\nPhục Ma Cốc\t84\t165\tHô\u0323 Cô\u0301c Thâ\u0300n Thu\u0301\t\r\nPhục Ma Cốc\t183\t31\tPha\u0301p Sư A\u0301c Ma\t\r\nPhục Ma Cốc\t163\t168\tMa Chiến【Nhiệm Vụ Chuyên Gia】\t\r\nPhục Ma Cốc\t254\t86\tPhu\u0300 Chu\u0301 Vương\t\r\nPhục Ma Cốc\t123\t90\tPhu\u0323c Ma Chiê\u0301n Thâ\u0300n\t\r\nPhục Ma Cốc\t31\t98\tSư\u0301 Gia\u0309 Di\u0323ch Chuyê\u0309n Thâm Uyên\t\r\nPhục Ma Cốc\t227\t173\tTru\u0323c Yêu Sư\t\r\nQuân Cổ Đạo\t140\t83\tTru\u0301c Lâm Tiên Tư\u0309\t\r\nQuân Cổ Đạo\t160\t139\tTru\u0301c Lâm Hiê\u0300n Triê\u0301t\t\r\nQuân Cổ Đạo\t177\t25\tThơ\u0323 La\u0300m Tru\u0301c\t\r\nQuân Cổ Đạo\t27\t133\tDu Kha\u0301ch\t\r\nQuân Cổ Đạo\t66\t147\tTru\u0301c Lâm Ma\u0303nh Thu\u0301\t\r\nQuân Cổ Đạo\t80\t67\tHô\u0300n Ma\t\r\nQuang Bình Nguyên\t213\t172\tNgươ\u0300i Đưa Thư Châu Thâ\u0300n\t\r\nQuang Bình Nguyên\t35\t72\tNgươ\u0300i Chăn Cư\u0300u\t\r\nQuang Bình Nguyên\t113\t98\tJia Thâ\u0323t Tha\u0300 (boss)\t\r\nQuang Bình Nguyên\t121\t167\tSo\u0301i Me\u0323 Hung A\u0301c\t\r\nQuyến Cố Thành\t107\t49\tHành Lang Vô Tận  - Cổng Dịch Chuyển\t\r\nQuyến Cố Thành\t75\t28\tThánh Sứ Tinh Cung\t\r\nQuyến Cố Thành\t21\t73\tThơ\u0323 Nhuô\u0323m\t\r\nQuyến Cố Thành\t223\t30\tQuản Lý Lễ Đường\t\r\nQuyến Cố Thành\t238\t49\tSứ Giả Thần Tu\t\r\nQuyến Cố Thành\t215\t38\tThành Chủ Quyến Cố\t\r\nQuyến Cố Thành\t38\t109\tTrươ\u0309ng La\u0303o Quyê\u0301n Cô\u0301 (Q200)\t\r\nQuyến Cố Thành\t175\t78\tMẹo - Cận Vệ Quyến Cố\t\r\nQuyến Cố Thành\t136\t64\tDần - Cận Vệ Quyến Cố\t\r\nQuyến Cố Thành\t147\t92\tVê\u0323 Si\u0303 Quyê\u0301n Cô\u0301\t\r\nQuyến Cố Thành\t277\t125\tThương Hô\u0323i Quyê\u0301n Cô\u0301\t\r\nQuyến Cố Thành\t86\t100\tTiê\u0323m Vu\u0303 Khi\u0301 Lang Mô\u0323c\t\r\nQuyến Cố Thành\t77\t101\tTiê\u0323m Trang Bi\u0323 Ruff\t\r\nQuyến Cố Thành\t251\t175\tTiê\u0323m Ta\u0323p Ho\u0301a Leni\t\r\nQuyến Cố Thành\t243\t166\tTiê\u0323m Pet Phiêu Phiêu\t\r\nQuyến Cố Thành\t179\t143\tTiê\u0323m Thuô\u0301c Raul\t\r\nQuyến Cố Thành\t161\t135\tNhân Viên Ba\u0309o Qua\u0309n Thư\u0323c Phâ\u0309m\t\r\nQuyến Cố Thành\t149\t130\tTiê\u0323m Thư\u0323c Phâ\u0309m\t\r\nQuyến Cố Thành\t132\t166\tSa\u0301t Ha\u0323ch Viên Sư\t\r\nQuyến Cố Thành\t129\t146\tSứ Giả Đôi Cánh]\t\r\nQuyến Cố Thành\t90\t118\tTinh Linh Di\u0323ch Chuyê\u0309n Quyê\u0301n Cô\u0301\t\r\nThần Di Cảnh\t115\t22\tNgươ\u0300i Nuôi Dơi\t\r\nThần Di Cảnh\t210\t109\tLa\u0303nh Chu\u0301a Phê\u0323 Nhâ\u0323t\t\r\nThần Di Cảnh\t67\t89\tSư\u0301 Gia\u0309 Thâ\u0300n Tha\u0301nh\t\r\nThần Di Cảnh\t248\t167\tLinh Hô\u0300n Thâ\u0301t La\u0323c\t\r\nThần Di Cảnh\t72\t155\tLư\u0309a Ta\u0300 Ma\t\r\nThành Phố Chìm\t48\t168\tSinh Vâ\u0323t Ha\u0309i Dương\t\r\nThành Phố Chìm\t47\t87\tGia Tô\u0323c Mê Muô\u0323i\t\r\nThành Phố Chìm\t202\t93\tChu Ma Vương\t\r\nThành Phố Chìm\t87\t165\tHa\u0309i Yêu\t\r\nThành Phố Chìm\t170\t150\tNguyên Soa\u0301i A\u0301c Ma\t\r\nThánh Ước Địa\t71\t111\tHo\u0323c Gia\u0309 Ta\u0300 Ma Budle\t\r\nThánh Ước Địa\t107\t82\tA\u0309o A\u0309nh Đen Tô\u0301i\t\r\nThánh Ước Địa\t69\t23\tHoar\t\r\nThánh Ước Địa\t177\t59\tTha\u0301i Cô\u0309 Ma Thâ\u0300n\t\r\nThánh Ước Địa\t122\t163\tA\u0301c Ma Thâ\u0300n Quan\t\r\nThánh Ước Địa\t21\t72\tLi\u0301nh Tuâ\u0300n Tra Quyê\u0301n Cô\u0301\t\r\nTháp Khắc Nguyên\t35\t177\tRink\t\r\nTháp Khắc Nguyên\t104\t61\tThư\u0323c Thâ\u0300n\t\r\nTháp Khắc Nguyên\t55\t89\tNha\u0300 Ma\u0323o Hiê\u0309m\t\r\nTháp Khắc Nguyên\t149\t100\tTha\u0309o Nguyên Gâ\u0301u Vương (boss)\t\r\nTháp Khắc Nguyên\t252\t146\tNgươ\u0300i La\u0301i Đo\u0300 Vương Đa\u0323i\t\r\nTháp Khắc Nguyên\t207\t168\tCô\u0323t Totem So\u0301i\t\r\nTháp Khắc Nguyên\t168\t55\tThơ\u0323 Săn Casey\t\r\nThiên Đường Thần Thánh\t30\t103\tTươ\u0323ng Ngươ\u0300i Thu\u0309 Hô\u0323\t\r\nThiên Đường Thần Thánh\t116\t180\tVo\u0303 Si\u0303 Tinh Anh Tha\u0301nh Đươ\u0300ng\t\r\nThiên Đường Thần Thánh\t80\t117\tThu\u0309 Li\u0303nh A\u0301c Ma\t\r\nThiên Đường Thần Thánh\t155\t80\tThô\u0301ng Li\u0303nh Chiê\u0301n Si\u0303 Tha\u0301nh Đươ\u0300ng\t\r\nThiên Đường Thần Thánh\t125\t81\tVo\u0303 Si\u0303 Tinh Anh Tha\u0301nh Đươ\u0300ng\t\r\nThiên Đường Thần Thánh\t213\t107\tThuâ\u0323t Si\u0303 Tha\u0301nh Đươ\u0300ng\t\r\nThiên Đường Thần Thánh\t202\t69\tDi\u0323ch Chuyê\u0309n Tha\u0301nh Đươ\u0300ng\t\r\nThiên Đường Thần Thánh\t263\t52\tCông Chu\u0301a Tuyê\u0301t Liên\t\r\nThiên Không Thành\t187\t135\tThu\u0309 Li\u0303nh Hô\u0323 Vê\u0323 Thiên Không\t\r\nThiên Không Thành\t228\t172\tDi\u0323ch Chuyê\u0309n Thiên Không\t\r\nThiên Không Thành\t113\t102\tA\u0301 Long Siêu Câ\u0301p\t\r\nThiên Không Thành\t159\t167\tHô\u0323 Vê\u0323 Phương Đông\t\r\nThiên Không Thành\t201\t84\tHô\u0323 Vê\u0323 Phương Nam\t\r\nThiên Không Thành\t255\t74\tThiên Không Cư\u0323 Long\t\r\nThiên Không Thành\t257\t25\tKho Ba\u0301u Trên Không\t\r\nThiên Không Thành\t55\t168\tChu\u0309 Tha\u0300nh Thiên Không\t\r\nThiên Không Thành\t78\t156\tThâ\u0300n Long Siêu Câ\u0301p\t\r\nThiên Không Thành\t77\t78\tDi\u0323ch Chuyê\u0309n Thê\u0301 Giơ\u0301i Sô\u0301\t\r\nThiên Không Thành\t54\t82\tHô\u0323 Vê\u0323 Phương Tây\t\r\nThiên Không Thành\t144\t35\tHô\u0323 Vê\u0323 Phương Bă\u0301c\t\r\nThiên Không Thành\t86\t28\tLinh Hô\u0300n Cô Đô\u0323c\t\r\nThiên Khung Tộc\t66\t56\tTô\u0323c Trươ\u0309ng Thiên Khung\t\r\nThiên Khung Tộc\t143\t90\tKho Sa\u0301ch Thiên Khung\t\r\nThiên Khung Tộc\t41\t78\tTinh Anh Thiên Khung\t\r\nThiên Khung Tộc\t85\t89\tTinh Linh Di\u0323ch Chuyê\u0309n Thiên Khung\t\r\nThiên Khung Tộc\t155\t30\tĐa\u0323o Sư Thiên Khung\t\r\nThiên Lục Châu\t239\t52\tHươ\u0301ng Đa\u0323o Lu\u0323c Châu\t\r\nThiên Lục Châu\t215\t61\tThu\u0300ng Ha\u0300ng\t\r\nThiên Lục Châu\t130\t69\tQuan Sa\u0301t Viên\t\r\nThiên Lục Châu\t56\t17\tThu\u0309 Li\u0303nh Cư\u0323 Nhân\t\r\nThiên Lục Châu\t57\t130\tPhu\u0323 Tra\u0301ch Đô\u0323i Trươ\u0309ng\t\r\nThiên Lục Châu\t243\t132\tThu\u0309 Li\u0303nh Đô\u0323c Nha\u0303n\t\r\nThiên Lục Châu\t116\t130\tThu\u0309 Li\u0303nh Sa Tă\u0323c\t\r\nThiện Tĩnh Địa\t219\t50\tTrươ\u0309ng La\u0303o Vô Ưu Tô\u0323c\t\r\nThiện Tĩnh Địa\t111\t104\tTrươ\u0309ng La\u0303o Ca\u0323nh Đi\u0323a\t\r\nTiên Lạp Thành\t389\t216\tĐiê\u0309m Di\u0323ch Chuyê\u0309n Long Long\t\r\nTiên Lạp Thành\t418\t141\tTiê\u0323m Vâ\u0323t Phâ\u0309m Nhiê\u0323m Vu\u0323\t\r\nTiên Lạp Thành\t375\t113\tBa\u0301c Si\u0303 Đă\u0301c Ky\u0309\t\r\nTiên Lạp Thành\t296\t179\tSư\u0301 Gia\u0309 Qua\u0309n Ly\u0301 Phu\u0323 Ba\u0309n\t\r\nTiên Lạp Thành\t415\t44\tChu\u0309 Tiê\u0323m Thuô\u0301c\t\r\nTiên Lạp Thành\t374\t32\tChu\u0309 Tiê\u0323m Vu\u0303 Khi\u0301\t\r\nTiên Lạp Thành\t271\t146\tTha\u0300nh Chu\u0309 Tiên La\u0323p\t\r\nTiên Lạp Thành\t237\t51\tKha\u0309o Quan Trung Câ\u0301p\t\r\nTiên Lạp Thành\t342\t182\tTrươ\u0309ng Câ\u0323n Vê\u0323 Tiên La\u0323p\t\r\nTiên Lạp Thành\t186\t30\tThu\u0309 Kho\t\r\nTiên Lạp Thành\t163\t73\tThu\u0300ng Thư Tiên La\u0323p\t\r\nTiên Lạp Thành\t146\t87\tQua\u0309n Ly\u0301 Đâ\u0301u Gia\u0301\t\r\nTiên Lạp Thành\t121\t89\tChu\u0309 Tiê\u0323m Trang Sư\u0301c\t\r\nTiên Lạp Thành\t86\t100\tChu\u0309 Tiê\u0323m Ta\u0323p Ho\u0301a\t\r\nTiên Lạp Thành\t56\t59\tChu\u0309 Tiê\u0323m Pet\t\r\nTiên Lạp Thành\t78\t55\tChu\u0309 Qua\u0301n Rươ\u0323u\t\r\nTiên Lạp Thành\t45\t117\tChu\u0309 Tiê\u0323m Vu\u0303 Khi\u0301\t\r\nTiên Lạp Thành\t165\t180\tChuyên Viên Pha\u0301t Lương\t\r\nTiên Lạp Thành\t144\t229\tTrươ\u0309ng Thương Hô\u0323i Tiên La\u0323p\t\r\nTiên Lạp Thành\t142\t38\tThơ\u0323 Săn A Pha\u0300m\t\r\nTiên Lạp Thành\t388\t219\tĐiê\u0309m Di\u0323ch Chuyê\u0309n Long Long\t\r\nTiên Lạp Thành\t228\t229\tNghê\u0323 Nhân Lư\u0303 Ha\u0300nh\t\r\nTiên Lạp Thành\t324\t152\tSư\u0301 Gia\u0309 Mơ\u0309 Phu\u0323 Ba\u0309n\t\r\nTiên Lạp Thành\t414\t71\tTinh Thê\u0309 Ho\u0323c Gia\u0309\t\r\nTinh Linh Thành\t246\t69\tTrươ\u0309ng Thương Hô\u0323i Tinh Linh\t\r\nTinh Linh Thành\t202\t95\tTha\u0301nh Sư Kê\u0301t Ba\u0301i\t\r\nTinh Linh Thành\t241\t114\tThu\u0309 Kho\t\r\nTinh Linh Thành\t132\t124\tĐa\u0323i Hiê\u0300n Triê\u0301t Fetocci\t\r\nTinh Linh Thành\t107\t171\tSư\u0301 Gia\u0309 Tinh Linh Thu\u0309 Hô\u0323\t\r\nTinh Linh Thành\t184\t189\tTiê\u0323m Trang Sư\u0301c Văn Văn\t\r\nTinh Linh Thành\t217\t51\tChu\u0309 Tha\u0300nh Tinh Linh\t\r\nTinh Linh Thành\t206\t192\tTiê\u0323m Trang Bi\u0323 Lisa\t\r\nTinh Linh Thành\t178\t77\tDươ\u0323c Si\u0303\t\r\nTinh Linh Thành\t117\t73\tNhâ\u0323n Nhiê\u0323m Vu\u0323 Treo Thươ\u0309ng\t\r\nTinh Linh Thành\t99\t83\tVê\u0323 Si\u0303 Tinh Linh\t\r\nTinh Linh Thành\t75\t76\tChu\u0309 Tiê\u0323m Ta\u0323p Ho\u0301a\t\r\nTinh Linh Thành\t46\t106\tTiê\u0323m Pet Amy\t\r\nTinh Linh Thành\t70\t149\tTiên Tư\u0309 Tri\u0323 Liê\u0323u\t\r\nTinh Linh Thành\t29\t147\tTiê\u0323m Thuô\u0301c Cammy\t\r\nTinh Linh Thành\t208\t174\tTiệm Vũ Khí Madoff\t\r\nTinh Linh Thành\t181\t112\tTinh Linh Di\u0323ch Chuyê\u0309n\t\r\nTrầm Thụy Lâm\t99\t32\tRom\t\r\nTrầm Thụy Lâm\t251\t140\tThơ\u0323 Săn Airy\t\r\nTrầm Thụy Lâm\t31\t33\tDi\u0323ch Chuyê\u0309n Terry\t\r\nTrầm Thụy Lâm\t208\t108\tThơ\u0323 Săn Luca\t\r\nTrầm Thụy Lâm\t68\t187\tThơ\u0323 Đô\u0301n Gô\u0303\t\r\nTrầm Thụy Lâm\t56\t130\tĐa\u0323i Khâu Lăng Sơn Qua\u0301i\t\r\nTrầm Thụy Lâm\t190\t86\tTư\u0309 Thi\t\r\nTrầm Thụy Lâm\t107\t139\tCâ\u0323n Vê\u0323 Cu\u0309a Rink\t\r\nTrầm Thụy Lâm\t134\t59\tBia Mô\u0323 Orca\t\r\nTrầm Thụy Lâm\t244\t71\tGâ\u0301u Tru\u0301c Vương\t\r\nTứ Tức Đảo\t173\t52\tSư\u0301 Gia\u0309 Ma Điê\u0323n\t\r\nTứ Tức Đảo\t26\t36\tNgươ\u0300i La\u0301i Đo\u0300 Harker\t\r\nTứ Tức Đảo\t132\t48\tPhu\u0300 Thu\u0309y Blair\t\r\nTuyết Lâm\t194\t157\tBăng Nư\u0303 Vương\t\r\nTuyết Lâm\t48\t39\tTiên Phong Long Tô\u0323c\t\r\nTuyết Lâm\t268\t164\tTha\u0300nh Viên Nho\u0301m Tuâ\u0300n Tra Cư\u0323c Đi\u0323a\t\r\nTuyết Lâm\t62\t100\tEva\t\r\nVân Đài\t164\t155\tKê Vương (boss)\t\r\nVân Đài\t123\t113\tSư\u0301 Gia\u0309 Viên\t\r\nVân Đài\t126\t23\tChiêu Ta\u0300i Mao\t\r\nVân Đài\t55\t47\tThơ\u0323 Săn Vương Ngu\u0303\t\r\nVân Lộc Sơn\t98\t19\tHă\u0301c Thu\u0309 Ta\u0300 Tâm\t\r\nVân Lộc Sơn\t162\t43\tSư\u0301 Gia\u0309 Di\u0323ch Chuyê\u0309n Lang Huyê\u0323t\t\r\nVân Lộc Sơn\t105\t130\tLa\u0303o Âu\t\r\nVân Lộc Sơn\t202\t150\tBa\u0323ch Linh Thâ\u0300n\t\r\nVĩnh Dạ Cảng\t49\t55\tThơ\u0323 Săn Muô\u0303i - Quy\u0309 Hu\u0301t Ma\u0301u\t\r\nXuất Vân Thôn\t139\t41\tTiê\u0323m Ta\u0323p Ho\u0301a Ông Triê\u0323u\t\r\nXuất Vân Thôn\t73\t52\tTiê\u0323m Trang Bi\u0323 Isla\t\r\nXuất Vân Thôn\t49\t64\tTiê\u0323m Vu\u0303 Khi\u0301 A Nhi\u0303\t\r\nXuất Vân Thôn\t47\t92\tTrươ\u0309ng Thôn Stoff\t\r\nXuất Vân Thôn\t38\t108\tTân Thu\u0309 Sư\u0301\t\r\nXuất Vân Thôn\t108\t99\tY Ta\u0301 Loli\t\r\nXuất Vân Thôn\t130\t56\tVê\u0323 Si\u0303 Xuâ\u0301t Vân\t\r\nXuất Vân Thôn\t151\t105\tTiê\u0323m Thuô\u0301c Ông Vương\t\r\nXuất Vân Thôn\t111\t33\tThu\u0309 Kho\t\r\nXuất Vân Thôn\t92\t39\tTiê\u0323m Pet My\u0303 My\u0303\t\r\n");
							_003CtextData_003E5__4.Close();
							_003CtextData_003E5__4 = null;
						}
						else
						{
							_003CdateTime_003E5__5 = File.GetLastWriteTime(Application.StartupPath + "/Anh/System/Data1/1.txt");
							if (_003CdateTime_003E5__5.Minute + _003CdateTime_003E5__5.Hour * 100 + _003CdateTime_003E5__5.Day * 10000 + _003CdateTime_003E5__5.Month * 1000000 + _003CdateTime_003E5__5.Year * 100000000 < 202401071736L)
							{
								_003CtextData_003E5__6 = (TextWriter)new StreamWriter(Application.StartupPath + "/Anh/System/Data1/1.txt");
								_003CtextData_003E5__6.Write("Anh Vũ Cảnh\t97\t58\tGinny\t\r\nAnh Vũ Cảnh\t125\t82\tNư\u0303 Vương Yêu Hoa\t\r\nAnh Vũ Cảnh\t132\t110\tCupid - Cây Ươ\u0301c Nguyê\u0323n\t\r\nAnh Vũ Cảnh\t251\t123\tY Lô\u0323\t\r\nAnh Vũ Cảnh\t248\t81\tThơ\u0323 Trô\u0300ng Hoa\t\r\nAnh Vũ Cảnh\t211\t146\tTiê\u0309u Ba\t\r\nAnh Vũ Cảnh\t51\t100\tĐô\u0300ng Đô\u0300ng\t\r\nAnh Vũ Cảnh\t240\t56\tTiê\u0309u Sơn Tă\u0323c\t\r\nBàn Địa Tộc\t41\t49\tĐa\u0323o Sư Ba\u0300n Đi\u0323a\t\r\nBàn Địa Tộc\t140\t77\tTô\u0323c Trươ\u0309ng Ba\u0300n Đi\u0323a\t\r\nBàn Địa Tộc\t128\t131\tTinh Anh Ba\u0300n Đi\u0323a\t\r\nBàn Địa Tộc\t82\t102\tTinh Linh Di\u0323ch Chuyê\u0309n Ba\u0300n Đi\u0323a\t\r\nBàn Địa Tộc\t169\t116\tKho Sa\u0301ch Ba\u0300n Đi\u0323a\t\r\nBàng Bối Thành\t121\t112\tĐiê\u0309m Di\u0323ch Chuyê\u0309n Trương Chân Nhân\t\r\nBàng Bối Thành\t79\t23\tCook\t\r\nBàng Bối Thành\t94\t40\tTiê\u0309u Nhi\u0323 Ta\u0323p Ho\u0301a\t\r\nBàng Bối Thành\t34\t163\tChu\u0309 Tiê\u0323m Vu\u0303 Khi\u0301\t\r\nBàng Bối Thành\t82\t178\tThu\u0309 Kho\t\r\nBàng Bối Thành\t113\t190\tTiê\u0323m Trang Bi\u0323 Ran\t\r\nBàng Bối Thành\t50\t115\tTiê\u0323m Thuô\u0301c Kelly\t\r\nBàng Bối Thành\t170\t64\tTiê\u0323m Trang Sư\u0301c Saiba\t\r\nBàng Bối Thành\t196\t46\tVê\u0323 Si\u0303 Ba\u0300ng Bô\u0301i\t\r\nBàng Bối Thành\t196\t93\tLong Bô\u0301i Tê\u0301 Tư\u0323 - Danh Hiê\u0323u Du\u0303ng Si\u0303\t\r\nBàng Bối Thành\t255\t122\tThu\u0309 Vê\u0323 A\u0309o Ma Tha\u0301p\t\r\nBàng Bối Thành\t266\t165\tA Vươ\u0323ng\t\r\nBàng Bối Thành\t204\t152\tThương Hô\u0323i Trươ\u0309ng Ba\u0300ng Bô\u0301i\t\r\nBàng Bối Thành\t62\t62\tTha\u0300nh Chu\u0309 Ba\u0300ng Bô\u0301i\t\r\nBăng Tuyết Nguyên\t239\t38\tNô\u0323 Viêm Lam Đê\u0301\t\r\nBăng Tuyết Nguyên\t72\t166\tThương Nhân Bi\u0323 Thương\t\r\nBăng Tuyết Nguyên\t272\t169\tSư\u0301 Gia\u0309 Di\u0323ch Chuyê\u0309n Tiên Ca\u0309nh\t\r\nBăng Tuyết Nguyên\t170\t156\tBăng Đô\u0300ng Yêu Vương\t\r\nBăng Tuyết Nguyên\t79\t77\tTha\u0300nh Viên Leo Nu\u0301i\t\r\nChi Phong Cốc\t64\t45\tHo\u0309a Ma Vương\t\r\nChi Phong Cốc\t204\t25\tTy\u0323 Cô\u0301c Nhân\t\r\nCổ Đạo\t194\t23\tNgươ\u0300i Khai Quâ\u0323t - Tha\u0301m Hiê\u0309m\t\r\nCổ Đạo\t74\t23\tNgươ\u0300i Ti\u0300m Nươ\u0301c\t\r\nCổ Đạo\t103\t142\tAnh Linh\t\r\nCổ Đạo\t66\t185\tXa\u0300 Yêu La\u0303nh Chu\u0301a\t\r\nCổ Đạo\t47\t68\tQuy\u0309 Diê\u0323n\t\r\nCổ Đạo\t248\t22\tThu\u0309 Cô\u0301c Nhân\t\r\nCổ Thành\t45\t140\tTha\u0300nh Chu\u0309\t\r\nCổ Thành\t84\t75\tThâ\u0300n Di Ti\u0301ch\t\r\nCổ Thành\t107\t178\tLĩnh Chủ Cổ Diệm\t\r\nĐăng Vân Địa\t248\t163\tThâ\u0300n Hô\u0323 Oss\t\r\nĐiêu Linh Thôn\t168\t42\tNông Dân John - Va\u0300o Nông Trươ\u0300ng\t\r\nĐiêu Linh Thôn\t149\t36\tReck - Cha\u0301u Trai Thôn Trươ\u0309ng\t\r\nĐiêu Linh Thôn\t120\t92\tĐa\u0323i Sư Ky\u0303 Năng Sô\u0301ng\t\r\nĐiêu Linh Thôn\t61\t96\tTươ\u0301ng Quân Cô Thôn\t\r\nĐiêu Linh Thôn\t35\t107\tLa\u0303o Ông Điêu Linh\t\r\nĐiêu Linh Thôn\t37\t31\tThôn Trươ\u0309ng Điêu Linh\t\r\nĐiêu Linh Thôn\t91\t86\tĐô\u0323i Trươ\u0309ng Cô Thôn\t\r\nĐiêu Linh Thôn\t83\t25\tTinh Linh Di\u0323ch Chuyê\u0309n Điêu Linh\t\r\nĐoạn Cốc\t50\t115\tTô\u0323c Navi Điên Loa\u0323n\t\r\nĐoạn Cốc\t280\t54\tBăng Cư\u0323 Long\t\r\nĐoạn Cốc\t212\t36\tNgươ\u0300i Đo\u0301ng Băng\t\r\nĐoạn Cốc\t176\t132\tNô Lê\u0323\t\r\nĐoạn Cốc\t39\t165\tThuâ\u0323t Si\u0303 Đa\u0300o Mo\u0309\t\r\nĐoạn Cốc\t196\t185\tTha\u0323ch Bia Đô\u0309 Na\u0301t\t\r\nĐông Huyền Thành\t357\t217\tCâ\u0323n Vê\u0323 Ca\u0309ng\t\r\nĐông Huyền Thành\t298\t261\tNha\u0300 Ha\u0300ng Âu Dương\t\r\nĐông Huyền Thành\t242\t248\tSư\u0301 Gia\u0309 Câu Ca\u0301\t\r\nĐông Huyền Thành\t326\t123\tShop Du\u0303ng Khi\u0301\t\r\nĐông Huyền Thành\t111\t92\tSư\u0301 Gia\u0309 Bi\u0301 Ca\u0309nh\t\r\nĐông Huyền Thành\t338\t158\tTiê\u0323m Vu\u0303 Khi\u0301 Mark\t\r\nĐông Huyền Thành\t126\t98\tSư\u0301 Gia\u0309 A\u0309o Ca\u0309nh\t\r\nĐông Huyền Thành\t147\t111\tSư\u0301 Gia\u0309 Đoa\u0323t Ba\u0309o Ky\u0300 Binh\t\r\nĐông Huyền Thành\t142\t124\tKha\u0309o Quan Đa\u0301nh Gia\u0301 Xê\u0301p Loa\u0323i Nghê\u0300\t\r\nĐông Huyền Thành\t54\t119\tAnh Be\u0301o\t\r\nĐông Huyền Thành\t334\t130\tSư\u0301 Gia\u0309 Thu\u0309 Hô\u0323 Jery\t\r\nĐông Huyền Thành\t317\t115\tSư\u0301 Gia\u0309 Đô\u0309i Thâ\u0300n Thu\u0301\t\r\nĐông Huyền Thành\t171\t237\tTiê\u0323m Trang Bi\u0323 Mary\t\r\nĐông Huyền Thành\t256\t183\tTiê\u0301n Si\u0303 Ultra\t\r\nĐông Huyền Thành\t225\t136\tQuan Quân Nhu\t\r\nĐông Huyền Thành\t213\t149\tHươ\u0301ng Dâ\u0303n Viên Ryan\t\r\nĐông Huyền Thành\t160\t149\tTô\u0323c Trươ\u0309ng Bô\u0301i Tư\t\r\nĐông Huyền Thành\t128\t158\tY Ta\u0301 Vương\t\r\nĐông Huyền Thành\t106\t182\tQuân Đoa\u0300n Trươ\u0309ng Đông Huyê\u0300n\t\r\nĐông Huyền Thành\t246\t104\tChuyên Viên Phu\u0301c Lơ\u0323i\t\r\nĐông Huyền Thành\t81\t33\tTrươ\u0309ng Thương Hô\u0323i Đông Huyê\u0300n\t\r\nĐông Huyền Thành\t165\t45\tQua\u0309n Ly\u0301 Bang Hô\u0323i Chiê\u0301n\t\r\nĐông Huyền Thành\t262\t93\tBa\u0301c Si\u0303 Ly\u0301\t\r\nĐông Huyền Thành\t200\t32\tTiê\u0323m Thuô\u0301c Ba\u0301c Si\u0303 Vương\t\r\nĐông Huyền Thành\t221\t47\tNhiê\u0323m Vu\u0323 Treo Thươ\u0309ng\t\r\nĐông Huyền Thành\t250\t43\tĐông Huyê\u0300n Sư\u0301\t\r\nĐông Huyền Thành\t207\t231\tTiê\u0323m Trang Sư\u0301c Kha\u0309 Vi Nhi\t\r\nĐông Huyền Thành\t77\t79\tThu\u0309 Thư\t\r\nĐông Huyền Thành\t223\t210\tTiê\u0323m Ta\u0323p Ho\u0301a Ông Mô\u0323\t\r\nĐông Huyền Thành\t359\t134\tNhân Viên Ngân Ha\u0300ng\t\r\nĐông Huyền Thành\t203\t117\tDi\u0323ch Chuyê\u0309n Mark\t\r\nĐông Huyền Thành\t349\t128\tĐâ\u0301u Gia\u0301\t\r\nĐông Huyền Thành\t275\t159\tShop Điê\u0309m Thươ\u0309ng Gia\u0301c Đâ\u0301u\t\r\nĐông Huyền Thành\t307\t65\tTrươ\u0309ng Câ\u0323n Vê\u0323 Đông Huyê\u0300n\t\r\nĐông Huyền Thành\t180\t24\tQua\u0309n Ly\u0301 Di\u0323ch Chuyê\u0309n Bang Hô\u0323i\t\r\nĐông Huyền Thành\t148\t73\tTiê\u0323m Pet Tôn Lê\u0323\t\r\nĐông Xuất Vân\t84\t28\tThơ\u0323 Săn Edward\t\r\nĐông Xuất Vân\t217\t44\tNâ\u0301m Vương (boss)\t\r\nĐông Xuất Vân\t198\t128\tBang Chu\u0309 Răng Cư\u0309a (boss)\t\r\nĐông Xuất Vân\t37\t100\tA Vu\u0303\t\r\nHô\u0323 Chi Địa\t226\t32\tBia Thu\u0309 Hô\u0323\t\r\nHô\u0323 Chi Địa\t173\t93\tThu\u0309 Hô\u0323 Y\t\r\nHô\u0323 Chi Địa\t31\t185\tThu\u0309 Hô\u0323 Tang\t\r\nHô\u0323 Chi Địa\t222\t174\tThu\u0309 Hô\u0323 Tư\t\r\nHô\u0323 Chi Địa\t134\t123\tTinh Linh Đêm\t\r\nHô\u0323 Chi Địa\t106\t61\tThu\u0309 Hô\u0323 Nhi\u0303\t\r\nHư Không Mạc\t179\t139\tQuy\u0309 Điê\u0323p Phu Nhân\t\r\nHư Không Mạc\t90\t70\tA Thô\u0309\t\r\nHư Không Mạc\t41\t223\tThiên Nhiên Thu\u0323\t\r\nHư Không Mạc\t351\t121\tThu\u0309 Li\u0303nh Khô\u0309ng Lô\u0300 Sa Ma\u0323c\t\r\nHư Không Mạc\t284\t224\tCương Thi Vương\t\r\nHư Không Mạc\t38\t74\tSư\u0301 Gia\u0309 Di\u0323ch Chuyê\u0309n Đa\u0323i Ma\u0323c\t\r\nHư Không Mạc\t33\t94\tThu\u0309 Hoang Nhân\t\r\nHuyền Lâm Tộc\t51\t33\tKho Sa\u0301ch Huyê\u0300n Lâm\t\r\nHuyền Lâm Tộc\t54\t79\tTô\u0323c Trươ\u0309ng Huyê\u0300n Lâm\t\r\nHuyền Lâm Tộc\t31\t100\tTinh Linh Di\u0323ch Chuyê\u0309n Huyê\u0300n Lâm\t\r\nHuyền Lâm Tộc\t139\t52\tĐa\u0323o Sư Huyê\u0300n Lâm\t\r\nHuyền Lâm Tộc\t89\t52\tTinh Anh Huyê\u0300n Lâm\t\r\nKỵ Bình Nguyên\t117\t147\tLi\u0301nh Tuâ\u0300n Tra\t\r\nKỵ Bình Nguyên\t83\t121\tRota\t\r\nKỵ Bình Nguyên\t149\t38\tNgươ\u0300i Qua Đươ\u0300ng Ron\t\r\nKỵ Bình Nguyên\t232\t148\tTiê\u0301n Si\u0303 Harry\t\r\nKỵ Bình Nguyên\t270\t68\tNha\u0300 Tha\u0301m Hiê\u0309m\t\r\nKỵ Bình Nguyên\t106\t55\tMa\u0301y Gia\u0309 Gio\u0323ng No\u0301i\t\r\nKỵ Bình Nguyên\t44\t166\tDu\u0303ng Si\u0303 So\u0301i\t\r\nKỳ Thạch Địa\t199\t115\tTha\u0323ch Cư\u0323 Nhân\t\r\nKỳ Thạch Địa\t231\t41\tDi Dân Viê\u0303n Cô\u0309\t\r\nKỳ Thạch Địa\t108\t82\tViê\u0303n Cô\u0309 Thu\u0309 Hô\u0323 Thu\u0301\t\r\nKỳ Thạch Địa\t37\t27\tA\u0309o Đi\u0323a Â\u0301n Gia\u0309\t\r\nKỳ Thạch Địa\t76\t35\tĐa\u0309o Điê\u0301u Nam\t\r\nLạp Tuyết Địa\t179\t122\tMê Huyê\u0303n Đô\u0323ng - Sư\u0301 Gia\u0309 Di\u0323ch Chuyê\u0309n\t\r\nLạp Tuyết Địa\t51\t136\tĐô\u0323i Trươ\u0309ng Đô\u0323c Nha\u0303n Xanh\t\r\nLạp Tuyết Địa\t205\t141\tThu\u0309 Li\u0303nh Đô\u0323c Nha\u0303n Xanh\t\r\nLạp Tuyết Địa\t60\t95\tMa\u0309nh Da Thu\u0301\t\r\nLạp Tuyết Địa\t141\t38\tĐo\u0323c Nha\u0303n Đa\u0300o Quă\u0323ng\t\r\nLạp Tuyết Địa\t96\t29\tThơ\u0323 Mơ\u0309\t\r\nLạp Tuyết Địa\t255\t158\tHô\u0309 Bi\u0300 Dương Thi\u0301ch Ha\u0301t\t\r\nLạp Tuyết Địa\t236\t25\tLa\u0303o Thơ\u0323 Săn\t\r\nLê Dương Bắc\t38\t155\tNgươ\u0300i La\u0301i Đo\u0300 Hô\u0300 Đa\u0323i\t\r\nLê Dương Bắc\t88\t61\tNgư Phu\t\r\nLê Dương Bắc\t182\t142\tTiê\u0309u Hoa\t\r\nLê Dương Bắc\t249\t173\tAlumo (boss)\t\r\nLê Dương Đảo\t266\t26\tNgươ\u0300i La\u0301i Đo\u0300 Lô\u0323 Cô\u0301c\t\r\nLê Dương Đảo\t207\t133\tÔ\u0301c Vương Nga\u0300n Năm (boss)\t\r\nLê Dương Đảo\t272\t48\tAluca (boss)\t\r\nLê Dương Đảo\t62\t100\tQuan Tuâ\u0300n Tra Lê Dương\t\r\nLê Dương Đảo\t164\t156\tNgư Dân La\u0303o Kim\t\r\nLê Dương Nam\t58\t154\tThâ\u0300n Chê\u0301t\t\r\nLê Dương Nam\t55\t29\tTươ\u0323ng Đa\u0301\t\r\nLê Dương Nam\t204\t51\tCâ\u0323n Vê\u0323 Đông Huyê\u0300n\t\r\nLê Dương Nam\t134\t89\tMisalu\t\r\nLê Dương Nam\t127\t35\tVo\u0303 Si\u0303\t\r\nLê Dương Nam\t30\t21\tÔ\u0301c Đa\u0323i Đô\u0323i Trươ\u0309ng\t\r\nLê Dương Nam\t187\t157\tTiêu Khă\u0301c\t\r\nLê Dương Thôn\t175\t83\tHô\u0300 Tă\u0323c\t\r\nLê Dương Thôn\t104\t94\tLa\u0303o Ngư Phu\t\r\nLê Dương Thôn\t55\t114\tLan Lan\t\r\nLê Dương Thôn\t125\t141\tThu\u0309 Li\u0303nh Hô\u0300 Tă\u0323c\t\r\nLê Dương Thôn\t76\t20\tGâ\u0301u Ba\u0309o Tha\u0323ch\t\r\nLê Dương Thôn\t31\t101\tVê\u0323 Si\u0303\t\r\nLiêu Vân Tộc\t117\t112\tTinh Anh Liêu Vân\t\r\nLiêu Vân Tộc\t125\t57\tTô\u0323c Trươ\u0309ng Liêu Vân\t\r\nLiêu Vân Tộc\t176\t107\tTinh Linh Di\u0323ch Chuyê\u0309n Liêu Vân\t\r\nLiêu Vân Tộc\t45\t94\tKho Sa\u0301ch Liêu Vân\t\r\nLiêu Vân Tộc\t66\t62\tĐa\u0323o Sư Liêu Vân\t\r\nLinh Lan\t117\t139\tNgươ\u0300i Thâ\u0300n Bi\u0301\t\r\nLinh Lan\t80\t97\tY Tiên\t\r\nLinh Lan\t203\t139\tLinh Lan Ta\u0300 Tâm\t\r\nLinh Vũ Tộc\t58\t90\tTô\u0323c Trươ\u0309ng Linh Vu\u0303\t\r\nLinh Vũ Tộc\t143\t132\tTinh Anh Linh Vu\u0303\t\r\nLinh Vũ Tộc\t35\t124\tTinh Linh Di\u0323ch Chuyê\u0309n Linh Vu\u0303\t\r\nLinh Vũ Tộc\t86\t39\tKho Sa\u0301ch Linh Vu\u0303\t\r\nLinh Vũ Tộc\t138\t51\tĐa\u0323o Sư Linh Vu\u0303\t\r\nLưu Hỏa Tộc\t171\t68\tĐa\u0323o Sư Lưu Ho\u0309a\t\r\nLưu Hỏa Tộc\t111\t160\tKho Sa\u0301ch Lưu Ho\u0309a\t\r\nLưu Hỏa Tộc\t134\t112\tTinh Anh Lưu Ho\u0309a\t\r\nLưu Hỏa Tộc\t177\t113\tTinh Linh Di\u0323ch Chuyê\u0309n Lưu Ho\u0309a\t\r\nLưu Hỏa Tộc\t60\t90\tTô\u0323c Trươ\u0309ng Lưu Ho\u0309a\t\r\nMã Thạch Tuyết\t71\t139\tPha\u0301p Trâ\u0323n Thu\u0309 Hô\u0323\t\r\nMê Quang Tự\t106\t30\tEvan\t\r\nMê Quang Tự\t25\t62\tThô\u0309 Long\t\r\nMê Quang Tự\t139\t61\tQuang Dư\u0323c Vương\t\r\nMê Quang Tự\t57\t121\tHă\u0301c Long Vương\t\r\nMê Quang Tự\t169\t125\tCông Chu\u0301a Ha\u0309i Vư\u0323c\t\r\nMê Quang Tự\t50\t139\tTê\u0301 Đa\u0300n A\u0301c Ma\t\r\nMị Hoặc Lâm\t191\t147\tĐư\u0301a Be\u0301 Bi\u0323 Giam\t\r\nMị Hoặc Lâm\t127\t31\tMichi La\u0323c Đươ\u0300ng\t\r\nMị Hoặc Lâm\t78\t149\tNhiê\u0301p Hô\u0300n Qua\u0301i\t\r\nMị Hoặc Lâm\t211\t89\tVi\u0323 Kha\u0301ch Thâ\u0300n Bi\u0301\t\r\nMị Hoặc Lâm\t192\t35\tTiê\u0309u Tinh Linh Mi\u0323 Hoă\u0323c\t\r\nMị Hoặc Lâm\t131\t107\tSolomon【Nhiệm Vụ Tông Sư】\t\r\nMị Hoặc Lâm\t63\t86\tNgươ\u0300i Chăm So\u0301c Rư\u0300ng\t\r\nMị Hoặc Lâm\t67\t119\tPhi Ma\t\r\nNgọc Phong Lâm\t45\t101\tNgươ\u0300i Bă\u0301t Ong\t\r\nNgọc Phong Lâm\t152\t144\tOng Mâ\u0323t Nư\u0303 Vương\t\r\nNgọc Phong Lâm\t80\t61\tPhong Điê\u0323p Cuô\u0300ng Vu\u0303\t\r\nNgọc Phong Lâm\t196\t124\tKhô\u0309ng Lô\u0300 Kaos\t\r\nNgọc Phong Lâm\t173\t45\tTri\u0323 Liê\u0323u Sư\t\r\nNgọc Phong Lâm\t154\t63\tA Linh\t\r\nPhục Ma Cốc\t96\t33\tTê\u0301 Đa\u0300n\t\r\nPhục Ma Cốc\t84\t165\tHô\u0323 Cô\u0301c Thâ\u0300n Thu\u0301\t\r\nPhục Ma Cốc\t183\t31\tPha\u0301p Sư A\u0301c Ma\t\r\nPhục Ma Cốc\t163\t168\tMa Chiến【Nhiệm Vụ Chuyên Gia】\t\r\nPhục Ma Cốc\t254\t86\tPhu\u0300 Chu\u0301 Vương\t\r\nPhục Ma Cốc\t123\t90\tPhu\u0323c Ma Chiê\u0301n Thâ\u0300n\t\r\nPhục Ma Cốc\t31\t98\tSư\u0301 Gia\u0309 Di\u0323ch Chuyê\u0309n Thâm Uyên\t\r\nPhục Ma Cốc\t227\t173\tTru\u0323c Yêu Sư\t\r\nQuân Cổ Đạo\t140\t83\tTru\u0301c Lâm Tiên Tư\u0309\t\r\nQuân Cổ Đạo\t160\t139\tTru\u0301c Lâm Hiê\u0300n Triê\u0301t\t\r\nQuân Cổ Đạo\t177\t25\tThơ\u0323 La\u0300m Tru\u0301c\t\r\nQuân Cổ Đạo\t27\t133\tDu Kha\u0301ch\t\r\nQuân Cổ Đạo\t66\t147\tTru\u0301c Lâm Ma\u0303nh Thu\u0301\t\r\nQuân Cổ Đạo\t80\t67\tHô\u0300n Ma\t\r\nQuang Bình Nguyên\t213\t172\tNgươ\u0300i Đưa Thư Châu Thâ\u0300n\t\r\nQuang Bình Nguyên\t35\t72\tNgươ\u0300i Chăn Cư\u0300u\t\r\nQuang Bình Nguyên\t113\t98\tJia Thâ\u0323t Tha\u0300 (boss)\t\r\nQuang Bình Nguyên\t121\t167\tSo\u0301i Me\u0323 Hung A\u0301c\t\r\nQuyến Cố Thành\t107\t49\tHành Lang Vô Tận  - Cổng Dịch Chuyển\t\r\nQuyến Cố Thành\t75\t28\tThánh Sứ Tinh Cung\t\r\nQuyến Cố Thành\t21\t73\tThơ\u0323 Nhuô\u0323m\t\r\nQuyến Cố Thành\t223\t30\tQuản Lý Lễ Đường\t\r\nQuyến Cố Thành\t238\t49\tSứ Giả Thần Tu\t\r\nQuyến Cố Thành\t215\t38\tThành Chủ Quyến Cố\t\r\nQuyến Cố Thành\t38\t109\tTrươ\u0309ng La\u0303o Quyê\u0301n Cô\u0301 (Q200)\t\r\nQuyến Cố Thành\t175\t78\tMẹo - Cận Vệ Quyến Cố\t\r\nQuyến Cố Thành\t136\t64\tDần - Cận Vệ Quyến Cố\t\r\nQuyến Cố Thành\t147\t92\tVê\u0323 Si\u0303 Quyê\u0301n Cô\u0301\t\r\nQuyến Cố Thành\t277\t125\tThương Hô\u0323i Quyê\u0301n Cô\u0301\t\r\nQuyến Cố Thành\t86\t100\tTiê\u0323m Vu\u0303 Khi\u0301 Lang Mô\u0323c\t\r\nQuyến Cố Thành\t77\t101\tTiê\u0323m Trang Bi\u0323 Ruff\t\r\nQuyến Cố Thành\t251\t175\tTiê\u0323m Ta\u0323p Ho\u0301a Leni\t\r\nQuyến Cố Thành\t243\t166\tTiê\u0323m Pet Phiêu Phiêu\t\r\nQuyến Cố Thành\t179\t143\tTiê\u0323m Thuô\u0301c Raul\t\r\nQuyến Cố Thành\t161\t135\tNhân Viên Ba\u0309o Qua\u0309n Thư\u0323c Phâ\u0309m\t\r\nQuyến Cố Thành\t149\t130\tTiê\u0323m Thư\u0323c Phâ\u0309m\t\r\nQuyến Cố Thành\t132\t166\tSa\u0301t Ha\u0323ch Viên Sư\t\r\nQuyến Cố Thành\t129\t146\tSứ Giả Đôi Cánh]\t\r\nQuyến Cố Thành\t90\t118\tTinh Linh Di\u0323ch Chuyê\u0309n Quyê\u0301n Cô\u0301\t\r\nThần Di Cảnh\t115\t22\tNgươ\u0300i Nuôi Dơi\t\r\nThần Di Cảnh\t210\t109\tLa\u0303nh Chu\u0301a Phê\u0323 Nhâ\u0323t\t\r\nThần Di Cảnh\t67\t89\tSư\u0301 Gia\u0309 Thâ\u0300n Tha\u0301nh\t\r\nThần Di Cảnh\t248\t167\tLinh Hô\u0300n Thâ\u0301t La\u0323c\t\r\nThần Di Cảnh\t72\t155\tLư\u0309a Ta\u0300 Ma\t\r\nThành Phố Chìm\t48\t168\tSinh Vâ\u0323t Ha\u0309i Dương\t\r\nThành Phố Chìm\t47\t87\tGia Tô\u0323c Mê Muô\u0323i\t\r\nThành Phố Chìm\t202\t93\tChu Ma Vương\t\r\nThành Phố Chìm\t87\t165\tHa\u0309i Yêu\t\r\nThành Phố Chìm\t170\t150\tNguyên Soa\u0301i A\u0301c Ma\t\r\nThánh Ước Địa\t71\t111\tHo\u0323c Gia\u0309 Ta\u0300 Ma Budle\t\r\nThánh Ước Địa\t107\t82\tA\u0309o A\u0309nh Đen Tô\u0301i\t\r\nThánh Ước Địa\t69\t23\tHoar\t\r\nThánh Ước Địa\t177\t59\tTha\u0301i Cô\u0309 Ma Thâ\u0300n\t\r\nThánh Ước Địa\t122\t163\tA\u0301c Ma Thâ\u0300n Quan\t\r\nThánh Ước Địa\t21\t72\tLi\u0301nh Tuâ\u0300n Tra Quyê\u0301n Cô\u0301\t\r\nTháp Khắc Nguyên\t35\t177\tRink\t\r\nTháp Khắc Nguyên\t104\t61\tThư\u0323c Thâ\u0300n\t\r\nTháp Khắc Nguyên\t55\t89\tNha\u0300 Ma\u0323o Hiê\u0309m\t\r\nTháp Khắc Nguyên\t149\t100\tTha\u0309o Nguyên Gâ\u0301u Vương (boss)\t\r\nTháp Khắc Nguyên\t252\t146\tNgươ\u0300i La\u0301i Đo\u0300 Vương Đa\u0323i\t\r\nTháp Khắc Nguyên\t207\t168\tCô\u0323t Totem So\u0301i\t\r\nTháp Khắc Nguyên\t168\t55\tThơ\u0323 Săn Casey\t\r\nThiên Đường Thần Thánh\t30\t103\tTươ\u0323ng Ngươ\u0300i Thu\u0309 Hô\u0323\t\r\nThiên Đường Thần Thánh\t116\t180\tVo\u0303 Si\u0303 Tinh Anh Tha\u0301nh Đươ\u0300ng\t\r\nThiên Đường Thần Thánh\t80\t117\tThu\u0309 Li\u0303nh A\u0301c Ma\t\r\nThiên Đường Thần Thánh\t155\t80\tThô\u0301ng Li\u0303nh Chiê\u0301n Si\u0303 Tha\u0301nh Đươ\u0300ng\t\r\nThiên Đường Thần Thánh\t125\t81\tVo\u0303 Si\u0303 Tinh Anh Tha\u0301nh Đươ\u0300ng\t\r\nThiên Đường Thần Thánh\t213\t107\tThuâ\u0323t Si\u0303 Tha\u0301nh Đươ\u0300ng\t\r\nThiên Đường Thần Thánh\t202\t69\tDi\u0323ch Chuyê\u0309n Tha\u0301nh Đươ\u0300ng\t\r\nThiên Đường Thần Thánh\t263\t52\tCông Chu\u0301a Tuyê\u0301t Liên\t\r\nThiên Không Thành\t187\t135\tThu\u0309 Li\u0303nh Hô\u0323 Vê\u0323 Thiên Không\t\r\nThiên Không Thành\t228\t172\tDi\u0323ch Chuyê\u0309n Thiên Không\t\r\nThiên Không Thành\t113\t102\tA\u0301 Long Siêu Câ\u0301p\t\r\nThiên Không Thành\t159\t167\tHô\u0323 Vê\u0323 Phương Đông\t\r\nThiên Không Thành\t201\t84\tHô\u0323 Vê\u0323 Phương Nam\t\r\nThiên Không Thành\t255\t74\tThiên Không Cư\u0323 Long\t\r\nThiên Không Thành\t257\t25\tKho Ba\u0301u Trên Không\t\r\nThiên Không Thành\t55\t168\tChu\u0309 Tha\u0300nh Thiên Không\t\r\nThiên Không Thành\t78\t156\tThâ\u0300n Long Siêu Câ\u0301p\t\r\nThiên Không Thành\t77\t78\tDi\u0323ch Chuyê\u0309n Thê\u0301 Giơ\u0301i Sô\u0301\t\r\nThiên Không Thành\t54\t82\tHô\u0323 Vê\u0323 Phương Tây\t\r\nThiên Không Thành\t144\t35\tHô\u0323 Vê\u0323 Phương Bă\u0301c\t\r\nThiên Không Thành\t86\t28\tLinh Hô\u0300n Cô Đô\u0323c\t\r\nThiên Khung Tộc\t66\t56\tTô\u0323c Trươ\u0309ng Thiên Khung\t\r\nThiên Khung Tộc\t143\t90\tKho Sa\u0301ch Thiên Khung\t\r\nThiên Khung Tộc\t41\t78\tTinh Anh Thiên Khung\t\r\nThiên Khung Tộc\t85\t89\tTinh Linh Di\u0323ch Chuyê\u0309n Thiên Khung\t\r\nThiên Khung Tộc\t155\t30\tĐa\u0323o Sư Thiên Khung\t\r\nThiên Lục Châu\t239\t52\tHươ\u0301ng Đa\u0323o Lu\u0323c Châu\t\r\nThiên Lục Châu\t215\t61\tThu\u0300ng Ha\u0300ng\t\r\nThiên Lục Châu\t130\t69\tQuan Sa\u0301t Viên\t\r\nThiên Lục Châu\t56\t17\tThu\u0309 Li\u0303nh Cư\u0323 Nhân\t\r\nThiên Lục Châu\t57\t130\tPhu\u0323 Tra\u0301ch Đô\u0323i Trươ\u0309ng\t\r\nThiên Lục Châu\t243\t132\tThu\u0309 Li\u0303nh Đô\u0323c Nha\u0303n\t\r\nThiên Lục Châu\t116\t130\tThu\u0309 Li\u0303nh Sa Tă\u0323c\t\r\nThiện Tĩnh Địa\t219\t50\tTrươ\u0309ng La\u0303o Vô Ưu Tô\u0323c\t\r\nThiện Tĩnh Địa\t111\t104\tTrươ\u0309ng La\u0303o Ca\u0323nh Đi\u0323a\t\r\nTiên Lạp Thành\t389\t216\tĐiê\u0309m Di\u0323ch Chuyê\u0309n Long Long\t\r\nTiên Lạp Thành\t418\t141\tTiê\u0323m Vâ\u0323t Phâ\u0309m Nhiê\u0323m Vu\u0323\t\r\nTiên Lạp Thành\t375\t113\tBa\u0301c Si\u0303 Đă\u0301c Ky\u0309\t\r\nTiên Lạp Thành\t296\t179\tSư\u0301 Gia\u0309 Qua\u0309n Ly\u0301 Phu\u0323 Ba\u0309n\t\r\nTiên Lạp Thành\t415\t44\tChu\u0309 Tiê\u0323m Thuô\u0301c\t\r\nTiên Lạp Thành\t374\t32\tChu\u0309 Tiê\u0323m Vu\u0303 Khi\u0301\t\r\nTiên Lạp Thành\t271\t146\tTha\u0300nh Chu\u0309 Tiên La\u0323p\t\r\nTiên Lạp Thành\t237\t51\tKha\u0309o Quan Trung Câ\u0301p\t\r\nTiên Lạp Thành\t342\t182\tTrươ\u0309ng Câ\u0323n Vê\u0323 Tiên La\u0323p\t\r\nTiên Lạp Thành\t186\t30\tThu\u0309 Kho\t\r\nTiên Lạp Thành\t163\t73\tThu\u0300ng Thư Tiên La\u0323p\t\r\nTiên Lạp Thành\t146\t87\tQua\u0309n Ly\u0301 Đâ\u0301u Gia\u0301\t\r\nTiên Lạp Thành\t121\t89\tChu\u0309 Tiê\u0323m Trang Sư\u0301c\t\r\nTiên Lạp Thành\t86\t100\tChu\u0309 Tiê\u0323m Ta\u0323p Ho\u0301a\t\r\nTiên Lạp Thành\t56\t59\tChu\u0309 Tiê\u0323m Pet\t\r\nTiên Lạp Thành\t78\t55\tChu\u0309 Qua\u0301n Rươ\u0323u\t\r\nTiên Lạp Thành\t45\t117\tChu\u0309 Tiê\u0323m Vu\u0303 Khi\u0301\t\r\nTiên Lạp Thành\t165\t180\tChuyên Viên Pha\u0301t Lương\t\r\nTiên Lạp Thành\t144\t229\tTrươ\u0309ng Thương Hô\u0323i Tiên La\u0323p\t\r\nTiên Lạp Thành\t142\t38\tThơ\u0323 Săn A Pha\u0300m\t\r\nTiên Lạp Thành\t388\t219\tĐiê\u0309m Di\u0323ch Chuyê\u0309n Long Long\t\r\nTiên Lạp Thành\t228\t229\tNghê\u0323 Nhân Lư\u0303 Ha\u0300nh\t\r\nTiên Lạp Thành\t324\t152\tSư\u0301 Gia\u0309 Mơ\u0309 Phu\u0323 Ba\u0309n\t\r\nTiên Lạp Thành\t414\t71\tTinh Thê\u0309 Ho\u0323c Gia\u0309\t\r\nTinh Linh Thành\t246\t69\tTrươ\u0309ng Thương Hô\u0323i Tinh Linh\t\r\nTinh Linh Thành\t202\t95\tTha\u0301nh Sư Kê\u0301t Ba\u0301i\t\r\nTinh Linh Thành\t241\t114\tThu\u0309 Kho\t\r\nTinh Linh Thành\t132\t124\tĐa\u0323i Hiê\u0300n Triê\u0301t Fetocci\t\r\nTinh Linh Thành\t107\t171\tSư\u0301 Gia\u0309 Tinh Linh Thu\u0309 Hô\u0323\t\r\nTinh Linh Thành\t184\t189\tTiê\u0323m Trang Sư\u0301c Văn Văn\t\r\nTinh Linh Thành\t217\t51\tChu\u0309 Tha\u0300nh Tinh Linh\t\r\nTinh Linh Thành\t206\t192\tTiê\u0323m Trang Bi\u0323 Lisa\t\r\nTinh Linh Thành\t178\t77\tDươ\u0323c Si\u0303\t\r\nTinh Linh Thành\t117\t73\tNhâ\u0323n Nhiê\u0323m Vu\u0323 Treo Thươ\u0309ng\t\r\nTinh Linh Thành\t99\t83\tVê\u0323 Si\u0303 Tinh Linh\t\r\nTinh Linh Thành\t75\t76\tChu\u0309 Tiê\u0323m Ta\u0323p Ho\u0301a\t\r\nTinh Linh Thành\t46\t106\tTiê\u0323m Pet Amy\t\r\nTinh Linh Thành\t70\t149\tTiên Tư\u0309 Tri\u0323 Liê\u0323u\t\r\nTinh Linh Thành\t29\t147\tTiê\u0323m Thuô\u0301c Cammy\t\r\nTinh Linh Thành\t208\t174\tTiệm Vũ Khí Madoff\t\r\nTinh Linh Thành\t181\t112\tTinh Linh Di\u0323ch Chuyê\u0309n\t\r\nTrầm Thụy Lâm\t99\t32\tRom\t\r\nTrầm Thụy Lâm\t251\t140\tThơ\u0323 Săn Airy\t\r\nTrầm Thụy Lâm\t31\t33\tDi\u0323ch Chuyê\u0309n Terry\t\r\nTrầm Thụy Lâm\t208\t108\tThơ\u0323 Săn Luca\t\r\nTrầm Thụy Lâm\t68\t187\tThơ\u0323 Đô\u0301n Gô\u0303\t\r\nTrầm Thụy Lâm\t56\t130\tĐa\u0323i Khâu Lăng Sơn Qua\u0301i\t\r\nTrầm Thụy Lâm\t190\t86\tTư\u0309 Thi\t\r\nTrầm Thụy Lâm\t107\t139\tCâ\u0323n Vê\u0323 Cu\u0309a Rink\t\r\nTrầm Thụy Lâm\t134\t59\tBia Mô\u0323 Orca\t\r\nTrầm Thụy Lâm\t244\t71\tGâ\u0301u Tru\u0301c Vương\t\r\nTứ Tức Đảo\t173\t52\tSư\u0301 Gia\u0309 Ma Điê\u0323n\t\r\nTứ Tức Đảo\t26\t36\tNgươ\u0300i La\u0301i Đo\u0300 Harker\t\r\nTứ Tức Đảo\t132\t48\tPhu\u0300 Thu\u0309y Blair\t\r\nTuyết Lâm\t194\t157\tBăng Nư\u0303 Vương\t\r\nTuyết Lâm\t48\t39\tTiên Phong Long Tô\u0323c\t\r\nTuyết Lâm\t268\t164\tTha\u0300nh Viên Nho\u0301m Tuâ\u0300n Tra Cư\u0323c Đi\u0323a\t\r\nTuyết Lâm\t62\t100\tEva\t\r\nVân Đài\t164\t155\tKê Vương (boss)\t\r\nVân Đài\t123\t113\tSư\u0301 Gia\u0309 Viên\t\r\nVân Đài\t126\t23\tChiêu Ta\u0300i Mao\t\r\nVân Đài\t55\t47\tThơ\u0323 Săn Vương Ngu\u0303\t\r\nVân Lộc Sơn\t98\t19\tHă\u0301c Thu\u0309 Ta\u0300 Tâm\t\r\nVân Lộc Sơn\t162\t43\tSư\u0301 Gia\u0309 Di\u0323ch Chuyê\u0309n Lang Huyê\u0323t\t\r\nVân Lộc Sơn\t105\t130\tLa\u0303o Âu\t\r\nVân Lộc Sơn\t202\t150\tBa\u0323ch Linh Thâ\u0300n\t\r\nVĩnh Dạ Cảng\t49\t55\tThơ\u0323 Săn Muô\u0303i - Quy\u0309 Hu\u0301t Ma\u0301u\t\r\nXuất Vân Thôn\t139\t41\tTiê\u0323m Ta\u0323p Ho\u0301a Ông Triê\u0323u\t\r\nXuất Vân Thôn\t73\t52\tTiê\u0323m Trang Bi\u0323 Isla\t\r\nXuất Vân Thôn\t49\t64\tTiê\u0323m Vu\u0303 Khi\u0301 A Nhi\u0303\t\r\nXuất Vân Thôn\t47\t92\tTrươ\u0309ng Thôn Stoff\t\r\nXuất Vân Thôn\t38\t108\tTân Thu\u0309 Sư\u0301\t\r\nXuất Vân Thôn\t108\t99\tY Ta\u0301 Loli\t\r\nXuất Vân Thôn\t130\t56\tVê\u0323 Si\u0303 Xuâ\u0301t Vân\t\r\nXuất Vân Thôn\t151\t105\tTiê\u0323m Thuô\u0301c Ông Vương\t\r\nXuất Vân Thôn\t111\t33\tThu\u0309 Kho\t\r\nXuất Vân Thôn\t92\t39\tTiê\u0323m Pet My\u0303 My\u0303\t\r\n");
								_003CtextData_003E5__6.Close();
								_003CtextData_003E5__6 = null;
							}
						}
						if (Settings.Default.delDebug)
						{
							_003Ctime_003E5__7 = System.DateTime.Now;
							try
							{
								_003CsubDir_003E5__8 = Directory.GetDirectories(Application.StartupPath + "/AccData/Debug");
								_003C_003Es__9 = _003CsubDir_003E5__8;
								for (_003C_003Es__10 = 0; _003C_003Es__10 < _003C_003Es__9.Length; _003C_003Es__10++)
								{
									_003Citem_003E5__11 = _003C_003Es__9[_003C_003Es__10];
									_003CdateTime_003E5__12 = File.GetLastWriteTime(_003Citem_003E5__11);
									_003CSosanh_003E5__13 = _003Ctime_003E5__7.Year * 10000 + _003Ctime_003E5__7.Month * 100 + _003Ctime_003E5__7.Day - (_003CdateTime_003E5__12.Year * 10000 + _003CdateTime_003E5__12.Month * 100 + _003CdateTime_003E5__12.Day);
									if (_003CSosanh_003E5__13 >= Settings.Default.dayDelDebug)
									{
										Directory.Delete(_003Citem_003E5__11, true);
									}
									_003Citem_003E5__11 = null;
								}
								_003C_003Es__9 = null;
								_003CsubDir_003E5__8 = null;
							}
							catch (System.Exception)
							{
							}
						}
						_003C_003E4__this.timerLoad.Interval = _003C_003E4__this.time_delay;
						_003C_003E4__this.timerLoad.Start();
						goto end_IL_0007;
					case 6:
						_003C_003E4__this.Buoc = 7;
						((Control)_003C_003E4__this.infor).Text = "Kết nối API Google...";
						val = _003C_003E4__this.CheckActiveKey_GoogleSheets().GetAwaiter();
						if (!((TaskAwaiter)(ref val)).IsCompleted)
						{
							num = (_003C_003E1__state = 0);
							_003C_003Eu__1 = val;
							_003CtimerLoad_Tick_003Ed__16 _003CtimerLoad_Tick_003Ed__ = this;
							((AsyncVoidMethodBuilder)(ref _003C_003Et__builder)).AwaitUnsafeOnCompleted<TaskAwaiter, _003CtimerLoad_Tick_003Ed__16>(ref val, ref _003CtimerLoad_Tick_003Ed__);
							return;
						}
						break;
					case 7:
						_003C_003E4__this.timerLoad.Enabled = false;
						((Form)_003C_003E4__this).Close();
						goto end_IL_0007;
					}
				}
				else
				{
					val = _003C_003Eu__1;
					_003C_003Eu__1 = default(TaskAwaiter);
					num = (_003C_003E1__state = -1);
				}
				((TaskAwaiter)(ref val)).GetResult();
				_003C_003E4__this.timerLoad.Interval = _003C_003E4__this.time_delay;
				_003C_003E4__this.timerLoad.Start();
				end_IL_0007:;
			}
			catch (System.Exception exception)
			{
				_003C_003E1__state = -2;
				((AsyncVoidMethodBuilder)(ref _003C_003Et__builder)).SetException(exception);
				return;
			}
			_003C_003E1__state = -2;
			((AsyncVoidMethodBuilder)(ref _003C_003Et__builder)).SetResult();
		}

		[DebuggerHidden]
		private void SetStateMachine(IAsyncStateMachine stateMachine)
		{
		}
	}

	private int time_delay = Program.AppMain.timeDelayIntro;

	private int Buoc = 0;

	private int PerLoad = 0;

	private string[] data_Model = new string[100];

	private string[] data_Serial = new string[100];

	private Size sizeForm;

	private string screenH;

	private string screenW;

	private IContainer components = null;

	private Timer timerLoad;

	private Timer timerPerLoad;

	private Panel panel1;

	private PictureBox pictureBox1;

	private ProgressBar progressBar1;

	private Label label4;

	private Label label2;

	private Label label1;

	private Label label5;

	private Label infor;

	private PictureBox pictureBox3;

	private Label inf1;

	private Label inf2;

	private Label inf3;

	private Label inf4;

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

	[DllImport("user32.dll")]
	private static extern System.IntPtr SetParent(System.IntPtr hWndChild, System.IntPtr hWndNewParent);

	public Intro()
	{
		InitializeComponent();
	}

	private void Intro_Load(object sender, EventArgs e)
	{
		//IL_007d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0082: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_00cd: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ec: Expected O, but got Unknown
		if (Program.AppMain.foradmin)
		{
			Program.AppMain.timeDelayIntro = 300;
		}
		((Control)label1).Text = "AutoToolVPT V" + Program.AppMain.version + "-N.A.Minh";
		int num = Program.StaticRandom.Instance.Next(1, 48);
		((Control)pictureBox1).BackgroundImage = DecodeToPNG_Image(Application.StartupPath + "/Anh/System/Data0/" + num + ".txt");
		sizeForm = ((Control)pictureBox1).BackgroundImage.Size;
		((Form)this).Size = new Size(((Size)(ref sizeForm)).Width * 2, ((Size)(ref sizeForm)).Height * 2);
		((Control)pictureBox1).Size = new Size(((Size)(ref sizeForm)).Width * 2, ((Size)(ref sizeForm)).Height * 2);
		((Control)pictureBox1).BackgroundImageLayout = (ImageLayout)1;
		string text = Program.AppMain.dataMaps[num - 1];
		string[] array = text.Split('\t', (StringSplitOptions)0);
		((Control)inf1).Text = "Name: " + array[2];
		((Control)inf2).Text = string.Concat(new string[12]
		{
			"ID: ",
			array[3],
			"  Point: ",
			array[0],
			"x",
			array[1],
			"  Data: ",
			array[4],
			"  Size: ",
			((Size)(ref sizeForm)).Width.ToString(),
			"x",
			((Size)(ref sizeForm)).Height.ToString()
		});
		if (!File.Exists(Application.StartupPath + "/Anh/System/Data1/0.txt"))
		{
			Directory.CreateDirectory(Application.StartupPath + "/Anh/System/Data1");
			TextWriter val = (TextWriter)new StreamWriter(Application.StartupPath + "/Anh/System/Data1/0.txt");
			val.Close();
		}
		try
		{
			string[] array2 = File.ReadAllLines(Application.StartupPath + "/Anh/System/Data1/0.txt");
			((Control)inf3).Text = string.Concat(new string[5]
			{
				"Show: ",
				array2[num],
				" / ",
				array2[0],
				" Lâ\u0300n Đa\u0303 Mơ\u0309 Tool"
			});
			int num2 = int.Parse(array2[num]);
			array2[num] = (num2 + 1).ToString();
			int num3 = int.Parse(array2[0]);
			array2[0] = (num3 + 1).ToString();
			string text2 = "";
			string[] array3 = array2;
			foreach (string text3 in array3)
			{
				text2 = text2 + text3 + "\r\n";
			}
			File.WriteAllText(Application.StartupPath + "/Anh/System/Data1/0.txt", text2);
		}
		catch (System.Exception)
		{
			File.WriteAllText(Application.StartupPath + "/Anh/System/Data1/0.txt", "0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0\r\n0");
			((Control)inf3).Text = "Show: ? / ? Lâ\u0300n Đa\u0303 Mơ\u0309 Tool";
		}
		((Control)inf4).Text = array[7];
		Buoc = 1;
		PerLoad = 0;
		((Control)infor).Text = "Đang Tải Module ...";
		timerLoad.Enabled = true;
		timerLoad.Interval = time_delay;
		timerPerLoad.Enabled = true;
		timerPerLoad.Interval = time_delay * 3 / 100;
		timerPerLoad.Stop();
		timerLoad.Start();
	}

	private void Intro_FormClosed(object sender, FormClosedEventArgs e)
	{
		//IL_000f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0019: Expected O, but got Unknown
		Login login = new Login();
		((Form)login).Closed += (EventHandler)([CompilerGenerated] (object? s, EventArgs args) =>
		{
			((Form)this).Close();
		});
	}

	[AsyncStateMachine(typeof(_003CtimerLoad_Tick_003Ed__16))]
	[DebuggerStepThrough]
	private void timerLoad_Tick(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000c: Unknown result type (might be due to invalid IL or missing references)
		_003CtimerLoad_Tick_003Ed__16 _003CtimerLoad_Tick_003Ed__ = new _003CtimerLoad_Tick_003Ed__16();
		_003CtimerLoad_Tick_003Ed__._003C_003Et__builder = AsyncVoidMethodBuilder.Create();
		_003CtimerLoad_Tick_003Ed__._003C_003E4__this = this;
		_003CtimerLoad_Tick_003Ed__.sender = sender;
		_003CtimerLoad_Tick_003Ed__.e = e;
		_003CtimerLoad_Tick_003Ed__._003C_003E1__state = -1;
		((AsyncVoidMethodBuilder)(ref _003CtimerLoad_Tick_003Ed__._003C_003Et__builder)).Start<_003CtimerLoad_Tick_003Ed__16>(ref _003CtimerLoad_Tick_003Ed__);
	}

	private void CheckActiveKey()
	{
		//IL_011f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0126: Expected O, but got Unknown
		//IL_0141: Unknown result type (might be due to invalid IL or missing references)
		//IL_0148: Expected O, but got Unknown
		//IL_01ca: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d1: Expected O, but got Unknown
		((Control)infor).Text = "Kiểm Tra Thông Tin Phiên Bản";
		System.DateTime now = System.DateTime.Now;
		int num = now.Year * 10000 + now.Month * 100 + now.Day;
		string active = Settings.Default.active;
		active = active.Remove(0, 7);
		string[] array = active.Split('M', (StringSplitOptions)0);
		int num2 = Program.AppMain.KeyActive.IndexOf(array[0]);
		int num3 = Program.AppMain.KeyActive.IndexOf(array[1]);
		int num4 = Program.AppMain.KeyActive.IndexOf(array[2]);
		int num5 = Program.AppMain.KeyActive.IndexOf(array[3]);
		((Control)label4).Text = string.Concat(new string[8]
		{
			"VerID:",
			num3.ToString(),
			".",
			num4.ToString(),
			".",
			num2.ToString(),
			".",
			num5.ToString()
		});
		num2 = 99;
		num3 = 99;
		num4 = 6;
		num5 = 18;
		int num6 = num5 + num4 * 100 + (num2 * 100 + num3) * 10000;
		ManagementObjectSearcher val = new ManagementObjectSearcher("SELECT * FROM Win32_DiskDrive");
		int num7 = 0;
		ManagementObjectEnumerator enumerator = val.Get().GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				ManagementObject val2 = (ManagementObject)enumerator.Current;
				try
				{
					Program.HardDrive hardDrive = new Program.HardDrive();
					hardDrive.Model = ((ManagementBaseObject)val2)["Model"].ToString();
					data_Model[num7] = hardDrive.Model;
				}
				catch (System.Exception)
				{
					data_Model[num7] = "~~~";
				}
				num7++;
			}
		}
		finally
		{
			((System.IDisposable)enumerator)?.Dispose();
		}
		num7 = 0;
		ManagementObjectEnumerator enumerator2 = val.Get().GetEnumerator();
		try
		{
			while (enumerator2.MoveNext())
			{
				ManagementObject val3 = (ManagementObject)enumerator2.Current;
				try
				{
					Program.HardDrive hardDrive2 = new Program.HardDrive();
					hardDrive2.SerialNo = ((ManagementBaseObject)val3)["SerialNumber"].ToString();
					data_Serial[num7] = hardDrive2.SerialNo;
				}
				catch (System.Exception)
				{
					data_Serial[num7] = "~~~";
				}
				num7++;
			}
		}
		finally
		{
			((System.IDisposable)enumerator2)?.Dispose();
		}
		bool flag = true;
		bool flag2 = false;
		for (int i = 0; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)data_Serial); i++)
		{
			if (Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)Program.AppMain.HDD_Serial, data_Serial[i]))
			{
				flag2 = true;
				Program.AppMain.nameVIP = Program.AppMain.User[Program.AppMain.HDD_Serial.IndexOf(data_Serial[i])];
				Program.AppMain.serial = Program.AppMain.HDD_Serial[Program.AppMain.HDD_Serial.IndexOf(data_Serial[i])];
				Program.AppMain.model = Program.AppMain.HDD_Model[Program.AppMain.HDD_Serial.IndexOf(data_Serial[i])];
				break;
			}
		}
		if (!flag2)
		{
			Program.AppMain.isRent = false;
			for (int j = 0; j < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)data_Serial); j++)
			{
				if (Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)Program.AppMain.HDD_Serial_Rent, data_Serial[j]))
				{
					flag2 = true;
					Program.AppMain.isRent = true;
					Program.AppMain.localRent = Program.AppMain.HDD_Serial_Rent.IndexOf(data_Serial[j]);
					Program.AppMain.nameVIP = Program.AppMain.User_Rent[Program.AppMain.localRent];
					Program.AppMain.serial = Program.AppMain.HDD_Serial_Rent[Program.AppMain.localRent];
					Program.AppMain.model = Program.AppMain.HDD_Model_Rent[Program.AppMain.localRent];
					break;
				}
			}
			if (!flag2)
			{
				Program.AppMain.isOptions = false;
				for (int k = 0; k < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)data_Serial); k++)
				{
					if (Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)Program.AppMain.HDD_Serial_Options, data_Serial[k]))
					{
						flag2 = true;
						Program.AppMain.isOptions = true;
						Program.AppMain.localOptions = Program.AppMain.HDD_Serial_Options.IndexOf(data_Serial[k]);
						Program.AppMain.nameVIP = Program.AppMain.User_Options[Program.AppMain.localOptions];
						Program.AppMain.serial = Program.AppMain.HDD_Serial_Options[Program.AppMain.localOptions];
						Program.AppMain.model = Program.AppMain.HDD_Model_Options[Program.AppMain.localOptions];
						break;
					}
				}
			}
		}
		if (num > num6)
		{
			Program.AppMain.run = true;
		}
		else if (flag2 && flag)
		{
			Program.AppMain.run = true;
			Program.AppMain.isActive = true;
		}
		else
		{
			Program.AppMain.run = true;
		}
	}

	[AsyncStateMachine(typeof(_003CCheckActiveKey_GoogleSheets_003Ed__18))]
	[DebuggerStepThrough]
	private System.Threading.Tasks.Task CheckActiveKey_GoogleSheets()
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000c: Unknown result type (might be due to invalid IL or missing references)
		_003CCheckActiveKey_GoogleSheets_003Ed__18 _003CCheckActiveKey_GoogleSheets_003Ed__ = new _003CCheckActiveKey_GoogleSheets_003Ed__18();
		_003CCheckActiveKey_GoogleSheets_003Ed__._003C_003Et__builder = AsyncTaskMethodBuilder.Create();
		_003CCheckActiveKey_GoogleSheets_003Ed__._003C_003E4__this = this;
		_003CCheckActiveKey_GoogleSheets_003Ed__._003C_003E1__state = -1;
		((AsyncTaskMethodBuilder)(ref _003CCheckActiveKey_GoogleSheets_003Ed__._003C_003Et__builder)).Start<_003CCheckActiveKey_GoogleSheets_003Ed__18>(ref _003CCheckActiveKey_GoogleSheets_003Ed__);
		return ((AsyncTaskMethodBuilder)(ref _003CCheckActiveKey_GoogleSheets_003Ed__._003C_003Et__builder)).Task;
	}

	private void checkFlash()
	{
		Process val = Process.Start(Application.StartupPath + "/APPS/FlashGame.exe");
		val.WaitForInputIdle();
		System.IntPtr intPtr = AutoControl.FindWindowHandle((string)null, "Adobe Flash Player 20");
		Program.SetWindowPos(intPtr, 0, 20, 20, 400, 100, 32);
		AutoControl.SendText(intPtr, "CheckFlash_isOK");
		Thread.Sleep(1500);
		val.Kill();
	}

	private void timerPerLoad_Tick(object sender, EventArgs e)
	{
		timerPerLoad.Stop();
		PerLoad++;
		if (PerLoad < 101)
		{
			progressBar1.Value = PerLoad;
			((Control)label4).Text = "Loading " + PerLoad + "%";
			timerPerLoad.Start();
		}
	}

	private void Intro_FormClosed_1(object sender, FormClosedEventArgs e)
	{
		//IL_000f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0019: Expected O, but got Unknown
		Login login = new Login();
		((Form)login).Closed += (EventHandler)([CompilerGenerated] (object? s, EventArgs args) =>
		{
			((Form)this).Close();
		});
	}

	private Image DecodeToPNG_Image(string path)
	{
		//IL_0036: Unknown result type (might be due to invalid IL or missing references)
		//IL_003c: Expected O, but got Unknown
		string text = File.ReadAllText(path);
		string image = text.Substring(0, Program.AppMain.numberEncodePer) + text.Substring(Program.AppMain.numberEncodePer + 10);
		byte[] array = Convert.FromBase64String(FixBase64ForImage(image));
		MemoryStream val = new MemoryStream(array);
		return Image.FromStream((Stream)(object)val);
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

	private void delay_100ms(int x, bool onlyLog = false)
	{
		//IL_0020: Unknown result type (might be due to invalid IL or missing references)
		for (double num = 0.0; num < (double)x; num += 1.0)
		{
			Thread.Sleep(TimeSpan.FromSeconds(0.1));
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
		//IL_0016: Unknown result type (might be due to invalid IL or missing references)
		//IL_001c: Expected O, but got Unknown
		//IL_0023: Unknown result type (might be due to invalid IL or missing references)
		//IL_002d: Expected O, but got Unknown
		//IL_0034: Unknown result type (might be due to invalid IL or missing references)
		//IL_003e: Expected O, but got Unknown
		//IL_003f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0049: Expected O, but got Unknown
		//IL_004a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0054: Expected O, but got Unknown
		//IL_0055: Unknown result type (might be due to invalid IL or missing references)
		//IL_005f: Expected O, but got Unknown
		//IL_0060: Unknown result type (might be due to invalid IL or missing references)
		//IL_006a: Expected O, but got Unknown
		//IL_006b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0075: Expected O, but got Unknown
		//IL_0076: Unknown result type (might be due to invalid IL or missing references)
		//IL_0080: Expected O, but got Unknown
		//IL_0081: Unknown result type (might be due to invalid IL or missing references)
		//IL_008b: Expected O, but got Unknown
		//IL_008c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0096: Expected O, but got Unknown
		//IL_0097: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a1: Expected O, but got Unknown
		//IL_00a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ac: Expected O, but got Unknown
		//IL_00ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_00b7: Expected O, but got Unknown
		//IL_00b8: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c2: Expected O, but got Unknown
		//IL_00c3: Unknown result type (might be due to invalid IL or missing references)
		//IL_00cd: Expected O, but got Unknown
		//IL_00f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0103: Expected O, but got Unknown
		//IL_0111: Unknown result type (might be due to invalid IL or missing references)
		//IL_011b: Expected O, but got Unknown
		//IL_012c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0152: Unknown result type (might be due to invalid IL or missing references)
		//IL_017d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0199: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a3: Expected O, but got Unknown
		//IL_01b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0210: Unknown result type (might be due to invalid IL or missing references)
		//IL_0221: Unknown result type (might be due to invalid IL or missing references)
		//IL_0239: Unknown result type (might be due to invalid IL or missing references)
		//IL_0262: Unknown result type (might be due to invalid IL or missing references)
		//IL_0281: Unknown result type (might be due to invalid IL or missing references)
		//IL_029c: Unknown result type (might be due to invalid IL or missing references)
		//IL_02cf: Unknown result type (might be due to invalid IL or missing references)
		//IL_030c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0329: Unknown result type (might be due to invalid IL or missing references)
		//IL_0333: Expected O, but got Unknown
		//IL_033e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0359: Unknown result type (might be due to invalid IL or missing references)
		//IL_036e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0394: Unknown result type (might be due to invalid IL or missing references)
		//IL_03c4: Unknown result type (might be due to invalid IL or missing references)
		//IL_03e1: Unknown result type (might be due to invalid IL or missing references)
		//IL_03eb: Expected O, but got Unknown
		//IL_03f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0411: Unknown result type (might be due to invalid IL or missing references)
		//IL_0426: Unknown result type (might be due to invalid IL or missing references)
		//IL_045c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0499: Unknown result type (might be due to invalid IL or missing references)
		//IL_04b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_04c0: Expected O, but got Unknown
		//IL_04cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_04e6: Unknown result type (might be due to invalid IL or missing references)
		//IL_04fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0524: Unknown result type (might be due to invalid IL or missing references)
		//IL_0561: Unknown result type (might be due to invalid IL or missing references)
		//IL_057e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0588: Expected O, but got Unknown
		//IL_0593: Unknown result type (might be due to invalid IL or missing references)
		//IL_05ab: Unknown result type (might be due to invalid IL or missing references)
		//IL_05c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_05f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0623: Unknown result type (might be due to invalid IL or missing references)
		//IL_065c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0671: Unknown result type (might be due to invalid IL or missing references)
		//IL_0697: Unknown result type (might be due to invalid IL or missing references)
		//IL_06dc: Unknown result type (might be due to invalid IL or missing references)
		//IL_06f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0703: Expected O, but got Unknown
		//IL_070e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0723: Unknown result type (might be due to invalid IL or missing references)
		//IL_0738: Unknown result type (might be due to invalid IL or missing references)
		//IL_076e: Unknown result type (might be due to invalid IL or missing references)
		//IL_07ab: Unknown result type (might be due to invalid IL or missing references)
		//IL_07c8: Unknown result type (might be due to invalid IL or missing references)
		//IL_07d2: Expected O, but got Unknown
		//IL_07dd: Unknown result type (might be due to invalid IL or missing references)
		//IL_07f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0807: Unknown result type (might be due to invalid IL or missing references)
		//IL_083d: Unknown result type (might be due to invalid IL or missing references)
		//IL_087a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0897: Unknown result type (might be due to invalid IL or missing references)
		//IL_08a1: Expected O, but got Unknown
		//IL_08ac: Unknown result type (might be due to invalid IL or missing references)
		//IL_08c1: Unknown result type (might be due to invalid IL or missing references)
		//IL_08d6: Unknown result type (might be due to invalid IL or missing references)
		//IL_090c: Unknown result type (might be due to invalid IL or missing references)
		//IL_093c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0959: Unknown result type (might be due to invalid IL or missing references)
		//IL_0963: Expected O, but got Unknown
		//IL_096e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0983: Unknown result type (might be due to invalid IL or missing references)
		//IL_0998: Unknown result type (might be due to invalid IL or missing references)
		//IL_09ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a03: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a17: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a2d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b3e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b48: Expected O, but got Unknown
		//IL_0b4e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b7a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b8d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b97: Expected O, but got Unknown
		//IL_0ba0: Unknown result type (might be due to invalid IL or missing references)
		//IL_0baa: Expected O, but got Unknown
		components = (IContainer)new Container();
		ComponentResourceManager val = new ComponentResourceManager(typeof(Intro));
		timerLoad = new Timer(components);
		timerPerLoad = new Timer(components);
		panel1 = new Panel();
		pictureBox1 = new PictureBox();
		progressBar1 = new ProgressBar();
		label4 = new Label();
		label2 = new Label();
		label1 = new Label();
		label5 = new Label();
		infor = new Label();
		pictureBox3 = new PictureBox();
		inf1 = new Label();
		inf2 = new Label();
		inf3 = new Label();
		inf4 = new Label();
		((ISupportInitialize)pictureBox1).BeginInit();
		((ISupportInitialize)pictureBox3).BeginInit();
		((Control)this).SuspendLayout();
		timerLoad.Tick += new EventHandler(timerLoad_Tick);
		timerPerLoad.Tick += new EventHandler(timerPerLoad_Tick);
		((Control)panel1).Location = new Point(1216, 679);
		((Control)panel1).Name = "panel1";
		((Control)panel1).Size = new Size(22, 69);
		((Control)panel1).TabIndex = 6;
		((Control)panel1).Visible = false;
		((Control)pictureBox1).BackColor = Color.Olive;
		((Control)pictureBox1).BackgroundImage = (Image)((ResourceManager)val).GetObject("pictureBox1.BackgroundImage");
		pictureBox1.ErrorImage = null;
		((Control)pictureBox1).Location = new Point(0, 0);
		((Control)pictureBox1).Name = "pictureBox1";
		((Control)pictureBox1).Size = new Size(800, 451);
		pictureBox1.TabIndex = 7;
		pictureBox1.TabStop = false;
		((Control)progressBar1).BackColor = Color.Olive;
		((Control)progressBar1).ForeColor = Color.Olive;
		((Control)progressBar1).Location = new Point(12, 403);
		((Control)progressBar1).Name = "progressBar1";
		((Control)progressBar1).Size = new Size(776, 15);
		((Control)progressBar1).TabIndex = 14;
		((Control)label4).BackColor = Color.FloralWhite;
		((Control)label4).Location = new Point(694, 385);
		((Control)label4).Name = "label4";
		((Control)label4).RightToLeft = (RightToLeft)1;
		((Control)label4).Size = new Size(94, 15);
		((Control)label4).TabIndex = 13;
		((Control)label4).Text = "Loading 0%";
		((Control)label2).AutoSize = true;
		((Control)label2).BackColor = Color.White;
		((Control)label2).Font = new Font("Microsoft Sans Serif", 8.25f, (FontStyle)2, (GraphicsUnit)3);
		((Control)label2).ForeColor = Color.FromArgb(64, 0, 0);
		((Control)label2).Location = new Point(151, 293);
		((Control)label2).Margin = new Padding(4, 0, 4, 0);
		((Control)label2).Name = "label2";
		((Control)label2).Size = new Size(111, 13);
		((Control)label2).TabIndex = 9;
		((Control)label2).Text = "naminh97@gmail.com";
		((Control)label1).BackColor = Color.White;
		((Control)label1).Font = new Font("Microsoft Sans Serif", 10f, (FontStyle)2, (GraphicsUnit)3);
		((Control)label1).ForeColor = Color.FromArgb(64, 0, 0);
		((Control)label1).Location = new Point(431, 291);
		((Control)label1).Margin = new Padding(4, 0, 4, 0);
		((Control)label1).Name = "label1";
		((Control)label1).RightToLeft = (RightToLeft)1;
		((Control)label1).Size = new Size(228, 19);
		((Control)label1).TabIndex = 10;
		((Control)label1).Text = "AutoToolVPT V6.7.99.99-N.A.Minh";
		((Control)label5).AutoSize = true;
		((Control)label5).BackColor = Color.LightGray;
		((Control)label5).Font = new Font("Microsoft Sans Serif", 42f, (FontStyle)1, (GraphicsUnit)3);
		((Control)label5).ForeColor = Color.FromArgb(64, 0, 0);
		((Control)label5).Location = new Point(225, 218);
		((Control)label5).Margin = new Padding(4, 0, 4, 0);
		((Control)label5).Name = "label5";
		((Control)label5).Size = new Size(434, 64);
		((Control)label5).TabIndex = 11;
		((Control)label5).Text = "BMx - Tool VPT";
		((Control)infor).AutoSize = true;
		((Control)infor).BackColor = Color.White;
		((Control)infor).Font = new Font("Microsoft Sans Serif", 14f, (FontStyle)2, (GraphicsUnit)3);
		((Control)infor).ForeColor = Color.FromArgb(64, 0, 0);
		((Control)infor).Location = new Point(13, 376);
		((Control)infor).Margin = new Padding(4, 0, 4, 0);
		((Control)infor).Name = "infor";
		((Control)infor).RightToLeft = (RightToLeft)1;
		((Control)infor).Size = new Size(92, 24);
		((Control)infor).TabIndex = 12;
		((Control)infor).Text = "Load data";
		((Control)pictureBox3).BackColor = Color.White;
		pictureBox3.BorderStyle = (BorderStyle)1;
		pictureBox3.Image = (Image)(object)Resources.baymax_icon_1_64x64___2;
		((Control)pictureBox3).Location = new Point(151, 218);
		((Control)pictureBox3).Margin = new Padding(4, 3, 4, 3);
		((Control)pictureBox3).Name = "pictureBox3";
		((Control)pictureBox3).Size = new Size(66, 66);
		pictureBox3.SizeMode = (PictureBoxSizeMode)2;
		pictureBox3.TabIndex = 8;
		pictureBox3.TabStop = false;
		((Control)inf1).AutoSize = true;
		((Control)inf1).BackColor = Color.WhiteSmoke;
		((Control)inf1).Font = new Font("Microsoft Sans Serif", 10f, (FontStyle)2, (GraphicsUnit)3);
		((Control)inf1).ForeColor = Color.FromArgb(64, 0, 0);
		((Control)inf1).Location = new Point(12, 9);
		((Control)inf1).Margin = new Padding(4, 0, 4, 0);
		((Control)inf1).Name = "inf1";
		((Control)inf1).RightToLeft = (RightToLeft)0;
		((Control)inf1).Size = new Size(177, 17);
		((Control)inf1).TabIndex = 12;
		((Control)inf1).Text = "Name: Đông Huyê\u0300n Tha\u0300nh";
		((Control)inf2).AutoSize = true;
		((Control)inf2).BackColor = Color.WhiteSmoke;
		((Control)inf2).Font = new Font("Microsoft Sans Serif", 10f, (FontStyle)2, (GraphicsUnit)3);
		((Control)inf2).ForeColor = Color.FromArgb(64, 0, 0);
		((Control)inf2).Location = new Point(12, 26);
		((Control)inf2).Margin = new Padding(4, 0, 4, 0);
		((Control)inf2).Name = "inf2";
		((Control)inf2).RightToLeft = (RightToLeft)0;
		((Control)inf2).Size = new Size(354, 17);
		((Control)inf2).TabIndex = 12;
		((Control)inf2).Text = "ID: 0  Point: 100x200  Data: 1256245  Size: 3000x2000";
		((Control)inf3).AutoSize = true;
		((Control)inf3).BackColor = Color.WhiteSmoke;
		((Control)inf3).Font = new Font("Microsoft Sans Serif", 10f, (FontStyle)2, (GraphicsUnit)3);
		((Control)inf3).ForeColor = Color.FromArgb(64, 0, 0);
		((Control)inf3).Location = new Point(12, 43);
		((Control)inf3).Margin = new Padding(4, 0, 4, 0);
		((Control)inf3).Name = "inf3";
		((Control)inf3).RightToLeft = (RightToLeft)0;
		((Control)inf3).Size = new Size(191, 17);
		((Control)inf3).TabIndex = 12;
		((Control)inf3).Text = "Show: 1 / 23 Lâ\u0300n Đa\u0303 Mơ\u0309 Tool";
		((Control)inf4).BackColor = Color.WhiteSmoke;
		((Control)inf4).Font = new Font("Microsoft Sans Serif", 10f, (FontStyle)2, (GraphicsUnit)3);
		((Control)inf4).ForeColor = Color.FromArgb(64, 0, 0);
		((Control)inf4).Location = new Point(12, 60);
		((Control)inf4).Margin = new Padding(4, 0, 4, 0);
		((Control)inf4).Name = "inf4";
		((Control)inf4).RightToLeft = (RightToLeft)0;
		((Control)inf4).Size = new Size(310, 87);
		((Control)inf4).TabIndex = 12;
		((Control)inf4).Text = "Truyền thuyết khai mở, chấn động trời đất. Nơi này được xem là điểm tận cùng của tuổi tác và thời đại. Một thành trì trên không tĩnh lặng giữa chốn Đại Lục Vô Ưu. Cấp độ đề nghị : 150 - 160.";
		((ContainerControl)this).AutoScaleDimensions = new SizeF(7f, 15f);
		((ContainerControl)this).AutoScaleMode = (AutoScaleMode)1;
		((Control)this).BackColor = Color.Olive;
		((Form)this).ClientSize = new Size(802, 690);
		((Control)this).Controls.Add((Control)(object)progressBar1);
		((Control)this).Controls.Add((Control)(object)label4);
		((Control)this).Controls.Add((Control)(object)label2);
		((Control)this).Controls.Add((Control)(object)label1);
		((Control)this).Controls.Add((Control)(object)label5);
		((Control)this).Controls.Add((Control)(object)inf4);
		((Control)this).Controls.Add((Control)(object)inf3);
		((Control)this).Controls.Add((Control)(object)inf2);
		((Control)this).Controls.Add((Control)(object)inf1);
		((Control)this).Controls.Add((Control)(object)infor);
		((Control)this).Controls.Add((Control)(object)pictureBox3);
		((Control)this).Controls.Add((Control)(object)pictureBox1);
		((Control)this).Controls.Add((Control)(object)panel1);
		((Control)this).DoubleBuffered = true;
		((Form)this).FormBorderStyle = (FormBorderStyle)0;
		((Form)this).Icon = (Icon)((ResourceManager)val).GetObject("$this.Icon");
		((Form)this).Margin = new Padding(4, 3, 4, 3);
		((Control)this).Name = "Intro";
		((Form)this).StartPosition = (FormStartPosition)1;
		((Control)this).Text = "BMxTool-Load";
		((Form)this).TransparencyKey = Color.Olive;
		((Form)this).FormClosed += new FormClosedEventHandler(Intro_FormClosed_1);
		((Form)this).Load += new EventHandler(Intro_Load);
		((ISupportInitialize)pictureBox1).EndInit();
		((ISupportInitialize)pictureBox3).EndInit();
		((Control)this).ResumeLayout(false);
		((Control)this).PerformLayout();
	}
}
