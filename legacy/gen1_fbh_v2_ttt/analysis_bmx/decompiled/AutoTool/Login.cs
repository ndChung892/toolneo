using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Management;
using System.Net.Sockets;
using System.Resources;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Text.RegularExpressions;
using System.Threading;
using System.Threading.Tasks;
using System.Timers;
using System.Windows.Forms;
using AutoTool.Properties;
using KAutoHelper;
using SunpayQRdevices;

namespace AutoTool;

public class Login : Form
{
	[Serializable]
	[CompilerGenerated]
	private sealed class _003C_003Ec
	{
		public static readonly _003C_003Ec _003C_003E9 = new _003C_003Ec();

		public static EventHandler _003C_003E9__158_0;

		public static EventHandler _003C_003E9__159_0;

		public static EventHandler _003C_003E9__160_0;

		internal void _003CopenDaily_003Eb__158_0(object sender, EventArgs e)
		{
			//IL_0002: Unknown result type (might be due to invalid IL or missing references)
			((Form)sender).WindowState = (FormWindowState)0;
		}

		internal void _003CopenTruMa_003Eb__159_0(object sender, EventArgs e)
		{
			//IL_0002: Unknown result type (might be due to invalid IL or missing references)
			((Form)sender).WindowState = (FormWindowState)0;
		}

		internal void _003CopenNangNo_003Eb__160_0(object sender, EventArgs e)
		{
			//IL_0002: Unknown result type (might be due to invalid IL or missing references)
			((Form)sender).WindowState = (FormWindowState)0;
		}
	}

	[CompilerGenerated]
	private sealed class _003Cbutton8_Click_003Ed__120 : IAsyncStateMachine
	{
		public int _003C_003E1__state;

		public AsyncVoidMethodBuilder _003C_003Et__builder;

		public object sender;

		public EventArgs e;

		public Login _003C_003E4__this;

		private string[] _003CgetResult_003E5__1;

		private string _003Cadd_rent1_003E5__2;

		private string _003Cadd_rent2_003E5__3;

		private string[] _003Clines_003E5__4;

		private string[] _003C_003Es__5;

		private System.DateTime _003CfromGoogleSheet_003E5__6;

		private int _003CcheckTimeUse_003E5__7;

		private System.DateTime _003C_003Es__8;

		private Process[] _003Cmyprocess_003E5__9;

		private int _003Ci_003E5__10;

		private TaskAwaiter<string[]> _003C_003Eu__1;

		private TaskAwaiter<System.DateTime> _003C_003Eu__2;

		private void MoveNext()
		{
			//IL_007e: Unknown result type (might be due to invalid IL or missing references)
			//IL_0083: Unknown result type (might be due to invalid IL or missing references)
			//IL_008a: Unknown result type (might be due to invalid IL or missing references)
			//IL_0110: Unknown result type (might be due to invalid IL or missing references)
			//IL_0115: Unknown result type (might be due to invalid IL or missing references)
			//IL_0149: Unknown result type (might be due to invalid IL or missing references)
			//IL_014e: Unknown result type (might be due to invalid IL or missing references)
			//IL_0156: Unknown result type (might be due to invalid IL or missing references)
			//IL_0047: Unknown result type (might be due to invalid IL or missing references)
			//IL_004c: Unknown result type (might be due to invalid IL or missing references)
			//IL_012a: Unknown result type (might be due to invalid IL or missing references)
			//IL_012c: Unknown result type (might be due to invalid IL or missing references)
			//IL_0060: Unknown result type (might be due to invalid IL or missing references)
			//IL_0061: Unknown result type (might be due to invalid IL or missing references)
			//IL_04ae: Unknown result type (might be due to invalid IL or missing references)
			//IL_0306: Unknown result type (might be due to invalid IL or missing references)
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
						goto IL_0165;
					}
					((Control)_003C_003E4__this.button8).Enabled = false;
					((Control)_003C_003E4__this.button8).Text = "Checking...";
					val2 = Program.GoogleAPIHelper.CheckSerial().GetAwaiter();
					if (!val2.IsCompleted)
					{
						num = (_003C_003E1__state = 0);
						_003C_003Eu__1 = val2;
						_003Cbutton8_Click_003Ed__120 _003Cbutton8_Click_003Ed__ = this;
						((AsyncVoidMethodBuilder)(ref _003C_003Et__builder)).AwaitUnsafeOnCompleted<TaskAwaiter<string[]>, _003Cbutton8_Click_003Ed__120>(ref val2, ref _003Cbutton8_Click_003Ed__);
						return;
					}
				}
				else
				{
					val2 = _003C_003Eu__1;
					_003C_003Eu__1 = default(TaskAwaiter<string[]>);
					num = (_003C_003E1__state = -1);
				}
				_003C_003Es__5 = val2.GetResult();
				_003CgetResult_003E5__1 = _003C_003Es__5;
				_003C_003Es__5 = null;
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
						_003Cbutton8_Click_003Ed__120 _003Cbutton8_Click_003Ed__ = this;
						((AsyncVoidMethodBuilder)(ref _003C_003Et__builder)).AwaitUnsafeOnCompleted<TaskAwaiter<System.DateTime>, _003Cbutton8_Click_003Ed__120>(ref val, ref _003Cbutton8_Click_003Ed__);
						return;
					}
					goto IL_0165;
				}
				Program.AppMain.isActive = false;
				Program.AppMain.serial = "null";
				Program.AppMain.model = "null";
				Program.AppMain.nameVIP = "Free";
				Program.AppMain.timeUse = 0;
				goto IL_0343;
				IL_0165:
				_003C_003Es__8 = val.GetResult();
				_003CfromGoogleSheet_003E5__6 = _003C_003Es__8;
				_003CcheckTimeUse_003E5__7 = _003CfromGoogleSheet_003E5__6.Year * 10000 + _003CfromGoogleSheet_003E5__6.Month * 100 + _003CfromGoogleSheet_003E5__6.Day;
				if (Program.AppMain.timeUse < _003CcheckTimeUse_003E5__7)
				{
					Program.AppMain.isActive = false;
					_003Cmyprocess_003E5__9 = Process.GetProcessesByName("BMxTool");
					if (Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)_003Cmyprocess_003E5__9) > 1)
					{
						_003Ci_003E5__10 = 0;
						while (_003Ci_003E5__10 < Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)_003Cmyprocess_003E5__9))
						{
							if (_003Cmyprocess_003E5__9[_003Ci_003E5__10].MainWindowTitle != string.Concat(new string[5]
							{
								"BMx-Tool VPT [v",
								Program.AppMain.version,
								"-",
								Settings.Default.NameTool,
								"]"
							}) && _003Cmyprocess_003E5__9[_003Ci_003E5__10].MainWindowTitle != "[BMx v" + Program.AppMain.version + "] Click" && _003Cmyprocess_003E5__9[_003Ci_003E5__10].MainWindowTitle != "[BMx v" + Program.AppMain.version + "] Tiện Ích")
							{
								_003Cmyprocess_003E5__9[_003Ci_003E5__10].Kill();
							}
							_003Ci_003E5__10++;
						}
					}
					MessageBox.Show("Hết Hạn Sử Dụng Bản Full\nChuyển Qua Sử Dụng Tính Năng Cơ Bản", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)48);
					_003Cmyprocess_003E5__9 = null;
				}
				goto IL_0343;
				IL_0343:
				_003Cadd_rent1_003E5__2 = "V.I.P-";
				_003Cadd_rent2_003E5__3 = " [" + Program.AppMain.timeUse + "] ";
				_003Clines_003E5__4 = ((Control)_003C_003E4__this.textBoxEV).Text.Split("\r\n", (StringSplitOptions)0);
				_003Clines_003E5__4[0] = string.Concat(new string[7]
				{
					"BMx ",
					_003Cadd_rent1_003E5__2,
					Program.AppMain.nameVIP.Split('.', (StringSplitOptions)0)[0].Trim(new char[2] { '[', ']' }),
					_003Cadd_rent2_003E5__3,
					" \"",
					Settings.Default.NameUser,
					"\""
				});
				((Control)_003C_003E4__this.textBoxEV).Text = _003Clines_003E5__4[0] + "\r\n" + _003Clines_003E5__4[1];
				Program.AppMain.ThongBao(Program.AppMain.inforNoti, "Thông Tin ID", string.Concat(new string[10]
				{
					"Serial: ",
					Program.AppMain.serial,
					"\r\nModel: ",
					Program.AppMain.model,
					"\r\nUser: ",
					Program.AppMain.nameVIP,
					"\r\nThời Gian Sử Dụng: ",
					Program.AppMain.timeUse.ToString(),
					"\r\nTính Năng: ",
					Program.AppMain.isActive ? "Full" : "Cơ Bản"
				}), "YesNo", "OK-Đóng");
				((Control)_003C_003E4__this.button8).Enabled = true;
				((Control)_003C_003E4__this.button8).Text = "ReCheckID";
			}
			catch (System.Exception exception)
			{
				_003C_003E1__state = -2;
				_003CgetResult_003E5__1 = null;
				_003Cadd_rent1_003E5__2 = null;
				_003Cadd_rent2_003E5__3 = null;
				_003Clines_003E5__4 = null;
				((AsyncVoidMethodBuilder)(ref _003C_003Et__builder)).SetException(exception);
				return;
			}
			_003C_003E1__state = -2;
			_003CgetResult_003E5__1 = null;
			_003Cadd_rent1_003E5__2 = null;
			_003Cadd_rent2_003E5__3 = null;
			_003Clines_003E5__4 = null;
			((AsyncVoidMethodBuilder)(ref _003C_003Et__builder)).SetResult();
		}

		[DebuggerHidden]
		private void SetStateMachine(IAsyncStateMachine stateMachine)
		{
		}
	}

	[CompilerGenerated]
	private sealed class _003CcheckNotify_003Ed__203 : IAsyncStateMachine
	{
		public int _003C_003E1__state;

		public AsyncVoidMethodBuilder _003C_003Et__builder;

		public Login _003C_003E4__this;

		private string _003Cnotify_003E5__1;

		private System.DateTime _003CThoiGian_003E5__2;

		private Process[] _003Cmyprocess_003E5__3;

		private int _003Ci_003E5__4;

		private string[] _003Cdata_003E5__5;

		private string[] _003CdataTime_003E5__6;

		private string[] _003CdataEv_003E5__7;

		private int _003Cj_003E5__8;

		private int _003Ci_003E5__9;

		private string[] _003Cdata2_003E5__10;

		private int _003Ci_003E5__11;

		private int _003Cj_003E5__12;

		private System.DateTime _003CThoiGian2_003E5__13;

		private int? _003CGio_003E5__14;

		private int? _003CPhut_003E5__15;

		private int _003Ci_003E5__16;

		private System.DateTime _003CThoiGian3_003E5__17;

		private int? _003CGio2_003E5__18;

		private int? _003CPhut2_003E5__19;

		private int _003Ci_003E5__20;

		private TaskAwaiter _003C_003Eu__1;

		private void MoveNext()
		{
			//IL_009f: Unknown result type (might be due to invalid IL or missing references)
			//IL_00a4: Unknown result type (might be due to invalid IL or missing references)
			//IL_00ab: Unknown result type (might be due to invalid IL or missing references)
			//IL_0067: Unknown result type (might be due to invalid IL or missing references)
			//IL_006c: Unknown result type (might be due to invalid IL or missing references)
			//IL_0080: Unknown result type (might be due to invalid IL or missing references)
			//IL_0081: Unknown result type (might be due to invalid IL or missing references)
			//IL_0228: Unknown result type (might be due to invalid IL or missing references)
			//IL_09a9: Unknown result type (might be due to invalid IL or missing references)
			//IL_09ae: Unknown result type (might be due to invalid IL or missing references)
			int num = _003C_003E1__state;
			try
			{
				TaskAwaiter val;
				if (num != 0)
				{
					_003Cnotify_003E5__1 = "";
					_003CThoiGian_003E5__2 = System.DateTime.UtcNow.AddHours(7.0);
					if (_003C_003E4__this.phutcu == _003CThoiGian_003E5__2.Minute)
					{
						goto IL_0237;
					}
					val = _003C_003E4__this.checkkey_Offline().GetAwaiter();
					if (!((TaskAwaiter)(ref val)).IsCompleted)
					{
						num = (_003C_003E1__state = 0);
						_003C_003Eu__1 = val;
						_003CcheckNotify_003Ed__203 _003CcheckNotify_003Ed__ = this;
						((AsyncVoidMethodBuilder)(ref _003C_003Et__builder)).AwaitUnsafeOnCompleted<TaskAwaiter, _003CcheckNotify_003Ed__203>(ref val, ref _003CcheckNotify_003Ed__);
						return;
					}
				}
				else
				{
					val = _003C_003Eu__1;
					_003C_003Eu__1 = default(TaskAwaiter);
					num = (_003C_003E1__state = -1);
				}
				((TaskAwaiter)(ref val)).GetResult();
				if (_003C_003E4__this.count_check_key >= 5)
				{
					_003C_003E4__this.count_check_key = 0;
					Program.AppMain.isActive = false;
					_003Cmyprocess_003E5__3 = Process.GetProcessesByName("BMxTool");
					if (Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)_003Cmyprocess_003E5__3) > 1)
					{
						_003Ci_003E5__4 = 0;
						while (_003Ci_003E5__4 < Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)_003Cmyprocess_003E5__3))
						{
							if (_003Cmyprocess_003E5__3[_003Ci_003E5__4].MainWindowTitle != string.Concat(new string[5]
							{
								"BMx-Tool VPT [v",
								Program.AppMain.version,
								"-",
								Settings.Default.NameTool,
								"]"
							}) && _003Cmyprocess_003E5__3[_003Ci_003E5__4].MainWindowTitle != "[BMx v" + Program.AppMain.version + "] Click" && _003Cmyprocess_003E5__3[_003Ci_003E5__4].MainWindowTitle != "[BMx v" + Program.AppMain.version + "] Tiện Ích")
							{
								_003Cmyprocess_003E5__3[_003Ci_003E5__4].Kill();
							}
							_003Ci_003E5__4++;
						}
					}
					MessageBox.Show("Hết Hạn Sử Dụng Bản Full\nChuyển Qua Sử Dụng Tính Năng Cơ Bản", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)48);
					_003Cmyprocess_003E5__3 = null;
				}
				goto IL_0237;
				IL_0237:
				if (_003C_003E4__this.phutcu != _003CThoiGian_003E5__2.Minute && !_003C_003E4__this.checkBox4.Checked)
				{
					((Control)_003C_003E4__this.textBoxEV).Text = string.Concat(new string[7]
					{
						_003C_003E4__this.doanChat1,
						"\t[UTC+7 now is ",
						_003CThoiGian_003E5__2.Hour.ToString("D2"),
						" : ",
						_003CThoiGian_003E5__2.Minute.ToString("D2"),
						"]\r\n",
						_003C_003E4__this.doanChat2
					});
					_003C_003E4__this.phutcu = _003CThoiGian_003E5__2.Minute;
					if (Settings.Default.userNoti)
					{
						_003Cdata_003E5__5 = File.ReadAllLines(_003C_003E4__this.pathAutoNotes + "/memos.txt");
						_003CdataTime_003E5__6 = new string[Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)_003Cdata_003E5__5)];
						_003CdataEv_003E5__7 = new string[Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)_003Cdata_003E5__5)];
						_003Cj_003E5__8 = 0;
						while (_003Cj_003E5__8 < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)_003Cdata_003E5__5))
						{
							_003CdataTime_003E5__6[_003Cj_003E5__8] = _003Cdata_003E5__5[_003Cj_003E5__8].Trim().Split(" [M] ", (StringSplitOptions)0)[0];
							_003CdataEv_003E5__7[_003Cj_003E5__8] = _003Cdata_003E5__5[_003Cj_003E5__8].Trim().Split(" [M] ", (StringSplitOptions)0)[1];
							_003Cj_003E5__8++;
						}
						_003C_003E4__this.hourNotify2 = new int?[Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)_003CdataTime_003E5__6)];
						_003C_003E4__this.minuteNotify2 = new int?[Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)_003CdataTime_003E5__6)];
						_003Ci_003E5__9 = 0;
						while (_003Ci_003E5__9 < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)_003CdataTime_003E5__6))
						{
							_003Cdata2_003E5__10 = _003CdataTime_003E5__6[_003Ci_003E5__9].Split(" : ", (StringSplitOptions)0);
							_003C_003E4__this.hourNotify2[_003Ci_003E5__9] = int.Parse(_003Cdata2_003E5__10[0]);
							_003C_003E4__this.minuteNotify2[_003Ci_003E5__9] = int.Parse(_003Cdata2_003E5__10[1]);
							_003Cdata2_003E5__10 = null;
							_003Ci_003E5__9++;
						}
						_003C_003E4__this.eventNotify2 = new string[Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)_003CdataEv_003E5__7)];
						_003Ci_003E5__11 = 0;
						while (_003Ci_003E5__11 < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)_003CdataEv_003E5__7))
						{
							_003C_003E4__this.eventNotify2[_003Ci_003E5__11] = _003CdataEv_003E5__7[_003Ci_003E5__11] + " >>> " + _003CdataTime_003E5__6[_003Ci_003E5__11];
							_003Ci_003E5__11++;
						}
						_003Cdata_003E5__5 = null;
						_003CdataTime_003E5__6 = null;
						_003CdataEv_003E5__7 = null;
					}
				}
				_003Cj_003E5__12 = _003C_003E4__this.timeCheckEvent;
				while (_003Cj_003E5__12 >= 0)
				{
					_003CThoiGian2_003E5__13 = System.DateTime.UtcNow.AddHours(7.0).AddMinutes((double)_003Cj_003E5__12);
					_003CGio_003E5__14 = _003CThoiGian2_003E5__13.Hour;
					_003CPhut_003E5__15 = _003CThoiGian2_003E5__13.Minute;
					if (Enumerable.Contains<int?>((System.Collections.Generic.IEnumerable<int?>)_003C_003E4__this.hourNotify, _003CGio_003E5__14) && Enumerable.Contains<int?>((System.Collections.Generic.IEnumerable<int?>)_003C_003E4__this.minuteNotify, _003CPhut_003E5__15))
					{
						_003Ci_003E5__16 = 0;
						while (_003Ci_003E5__16 < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)_003C_003E4__this.eventNotify))
						{
							if (_003C_003E4__this.hourNotify[_003Ci_003E5__16] == _003CGio_003E5__14 && _003C_003E4__this.minuteNotify[_003Ci_003E5__16] == _003CPhut_003E5__15)
							{
								_003Cnotify_003E5__1 = _003Cnotify_003E5__1 + _003C_003E4__this.eventNotify[_003Ci_003E5__16] + " UTC+7\r\n";
							}
							_003Ci_003E5__16++;
						}
					}
					if (Settings.Default.userNoti)
					{
						_003CThoiGian3_003E5__17 = System.DateTime.Now.AddMinutes((double)_003Cj_003E5__12);
						_003CGio2_003E5__18 = _003CThoiGian3_003E5__17.Hour;
						_003CPhut2_003E5__19 = _003CThoiGian3_003E5__17.Minute;
						if (Enumerable.Contains<int?>((System.Collections.Generic.IEnumerable<int?>)_003C_003E4__this.hourNotify2, _003CGio2_003E5__18) && Enumerable.Contains<int?>((System.Collections.Generic.IEnumerable<int?>)_003C_003E4__this.minuteNotify2, _003CPhut2_003E5__19))
						{
							_003Ci_003E5__20 = 0;
							while (_003Ci_003E5__20 < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)_003C_003E4__this.eventNotify2))
							{
								if (_003C_003E4__this.hourNotify2[_003Ci_003E5__20] == _003CGio2_003E5__18 && _003C_003E4__this.minuteNotify2[_003Ci_003E5__20] == _003CPhut2_003E5__19)
								{
									_003Cnotify_003E5__1 = _003Cnotify_003E5__1 + _003C_003E4__this.eventNotify2[_003Ci_003E5__20] + " \r\n";
								}
								_003Ci_003E5__20++;
							}
						}
					}
					_003Cj_003E5__12--;
				}
				if (_003Cnotify_003E5__1.CompareTo(_003C_003E4__this.Notify) != 0)
				{
					if (_003C_003E4__this.timeCheckEvent == 20)
					{
						_003C_003E4__this.timeCheckEvent = 5;
					}
					else
					{
						_003C_003E4__this.timeCheckEvent = 20;
						_003C_003E4__this.Notify = _003Cnotify_003E5__1;
					}
					_003C_003E4__this.ThongBao(_003Cnotify_003E5__1);
				}
				if (_003CThoiGian_003E5__2.Hour == 0 && _003CThoiGian_003E5__2.Minute == 0 && _003CThoiGian_003E5__2.Second == 0)
				{
					_003C_003E4__this.doanChat2 = "Hoạt Động Hôm Nay :  " + _003C_003E4__this.checkEvent(((object)_003CThoiGian_003E5__2.DayOfWeek/*cast due to .constrained prefix*/).ToString());
				}
			}
			catch (System.Exception exception)
			{
				_003C_003E1__state = -2;
				_003Cnotify_003E5__1 = null;
				((AsyncVoidMethodBuilder)(ref _003C_003Et__builder)).SetException(exception);
				return;
			}
			_003C_003E1__state = -2;
			_003Cnotify_003E5__1 = null;
			((AsyncVoidMethodBuilder)(ref _003C_003Et__builder)).SetResult();
		}

		[DebuggerHidden]
		private void SetStateMachine(IAsyncStateMachine stateMachine)
		{
		}
	}

	[CompilerGenerated]
	private sealed class _003Ccheckkey_Offline_003Ed__186 : IAsyncStateMachine
	{
		public int _003C_003E1__state;

		public AsyncTaskMethodBuilder _003C_003Et__builder;

		public Login _003C_003E4__this;

		private List<string> _003ClocalSerials_003E5__1;

		private bool _003Cbit_check_003E5__2;

		private Enumerator<string> _003C_003Es__3;

		private string _003ClocalSerial_003E5__4;

		private System.DateTime _003CfromGoogleSheet_003E5__5;

		private int _003CcheckTimeUse_003E5__6;

		private System.DateTime _003C_003Es__7;

		private Process[] _003Cmyprocess_003E5__8;

		private int _003Ci_003E5__9;

		private TaskAwaiter<System.DateTime> _003C_003Eu__1;

		private void MoveNext()
		{
			//IL_011a: Unknown result type (might be due to invalid IL or missing references)
			//IL_011f: Unknown result type (might be due to invalid IL or missing references)
			//IL_0127: Unknown result type (might be due to invalid IL or missing references)
			//IL_003e: Unknown result type (might be due to invalid IL or missing references)
			//IL_0043: Unknown result type (might be due to invalid IL or missing references)
			//IL_00ae: Unknown result type (might be due to invalid IL or missing references)
			//IL_00e0: Unknown result type (might be due to invalid IL or missing references)
			//IL_00e5: Unknown result type (might be due to invalid IL or missing references)
			//IL_00fa: Unknown result type (might be due to invalid IL or missing references)
			//IL_00fc: Unknown result type (might be due to invalid IL or missing references)
			//IL_0312: Unknown result type (might be due to invalid IL or missing references)
			int num = _003C_003E1__state;
			try
			{
				TaskAwaiter<System.DateTime> val;
				if (num == 0)
				{
					val = _003C_003Eu__1;
					_003C_003Eu__1 = default(TaskAwaiter<System.DateTime>);
					num = (_003C_003E1__state = -1);
					goto IL_0136;
				}
				if (Program.AppMain.isActive)
				{
					_003ClocalSerials_003E5__1 = Program.myID.GetHardDriveSerials();
					_003Cbit_check_003E5__2 = false;
					_003C_003Es__3 = _003ClocalSerials_003E5__1.GetEnumerator();
					try
					{
						while (_003C_003Es__3.MoveNext())
						{
							_003ClocalSerial_003E5__4 = _003C_003Es__3.Current;
							if (_003ClocalSerial_003E5__4 == Program.AppMain.serial)
							{
								_003Cbit_check_003E5__2 = true;
								break;
							}
							_003ClocalSerial_003E5__4 = null;
						}
					}
					finally
					{
						if (num < 0)
						{
							((System.IDisposable)_003C_003Es__3/*cast due to .constrained prefix*/).Dispose();
						}
					}
					_003C_003Es__3 = default(Enumerator<string>);
					if (_003Cbit_check_003E5__2)
					{
						if (Program.AppMain.timeUse != 99990101)
						{
							val = Program.GoogleAPIHelper.GetRealTimeFromSheets().GetAwaiter();
							if (!val.IsCompleted)
							{
								num = (_003C_003E1__state = 0);
								_003C_003Eu__1 = val;
								_003Ccheckkey_Offline_003Ed__186 _003Ccheckkey_Offline_003Ed__ = this;
								((AsyncTaskMethodBuilder)(ref _003C_003Et__builder)).AwaitUnsafeOnCompleted<TaskAwaiter<System.DateTime>, _003Ccheckkey_Offline_003Ed__186>(ref val, ref _003Ccheckkey_Offline_003Ed__);
								return;
							}
							goto IL_0136;
						}
						Program.AppMain.isActive = true;
					}
					else
					{
						Program.AppMain.isActive = false;
						_003Cmyprocess_003E5__8 = Process.GetProcessesByName("BMxTool");
						if (Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)_003Cmyprocess_003E5__8) > 1)
						{
							_003Ci_003E5__9 = 0;
							while (_003Ci_003E5__9 < Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)_003Cmyprocess_003E5__8))
							{
								if (_003Cmyprocess_003E5__8[_003Ci_003E5__9].MainWindowTitle != string.Concat(new string[5]
								{
									"BMx-Tool VPT [v",
									Program.AppMain.version,
									"-",
									Settings.Default.NameTool,
									"]"
								}) && _003Cmyprocess_003E5__8[_003Ci_003E5__9].MainWindowTitle != "[BMx v" + Program.AppMain.version + "] Click" && _003Cmyprocess_003E5__8[_003Ci_003E5__9].MainWindowTitle != "[BMx v" + Program.AppMain.version + "] Tiện Ích")
								{
									_003Cmyprocess_003E5__8[_003Ci_003E5__9].Kill();
								}
								_003Ci_003E5__9++;
							}
							MessageBox.Show("Lỗi Check ID Ổ Cứng\nChuyển Qua Sử Dụng Tính Năng Cơ Bản", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)48);
						}
						_003Cmyprocess_003E5__8 = null;
					}
				}
				goto end_IL_0007;
				IL_0136:
				_003C_003Es__7 = val.GetResult();
				_003CfromGoogleSheet_003E5__5 = _003C_003Es__7;
				_003CcheckTimeUse_003E5__6 = _003CfromGoogleSheet_003E5__5.Year * 10000 + _003CfromGoogleSheet_003E5__5.Month * 100 + _003CfromGoogleSheet_003E5__5.Day;
				if (Program.AppMain.timeUse < _003CcheckTimeUse_003E5__6)
				{
					_003C_003E4__this.count_check_key++;
				}
				else
				{
					Program.AppMain.isActive = true;
					_003C_003E4__this.count_check_key = 0;
				}
				end_IL_0007:;
			}
			catch (System.Exception exception)
			{
				_003C_003E1__state = -2;
				_003ClocalSerials_003E5__1 = null;
				((AsyncTaskMethodBuilder)(ref _003C_003Et__builder)).SetException(exception);
				return;
			}
			_003C_003E1__state = -2;
			_003ClocalSerials_003E5__1 = null;
			((AsyncTaskMethodBuilder)(ref _003C_003Et__builder)).SetResult();
		}

		[DebuggerHidden]
		private void SetStateMachine(IAsyncStateMachine stateMachine)
		{
		}
	}

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

	public Bitmap AvatarNV;

	public Point? KetQua_Point;

	public List<Point> KetQua_Points;

	private System.IntPtr hWnd = System.IntPtr.Zero;

	public bool IsStop = true;

	public bool IsPause = false;

	private System.Threading.Tasks.Task T;

	private System.Threading.Tasks.Task T_Click;

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

	public string link;

	public string[] charError;

	public char[] charServer;

	public char[] charNotifyErr;

	public int checkTimerTick;

	public int Turn;

	public string doanChat1;

	public string doanChat2;

	private uint myPointer_map_id;

	private uint[] offset_map_id;

	private uint myPointer_map_load_data;

	private uint[] offset_map_load;

	private uint[] offset_map_data;

	private uint[] offset_HP_pet;

	private uint[] offset_HPmax_pet;

	private uint myPointer_pet;

	private string charSplitAutoLog;

	private const uint WM_CLOSE = 16u;

	private Rectangle dragBoxFromMouseDown;

	private int rowIndexFromMouseDown;

	private int rowIndexOfItemUnderMouseToDrop;

	public bool daPet;

	public bool trongTrangVien;

	public bool daPet_Run;

	public bool trongTrangVien_Run;

	public bool tuThap;

	public bool tuThap_Run;

	public int hour_Run;

	public int minute_Run;

	public bool isRun;

	public bool AutoLogDangChay;

	public bool HenGioTatMay;

	private bool relogAccCheck;

	public int accRun;

	public int accRunMax;

	public int accEnd;

	public string listAccRun;

	public string listAccEnd;

	public string listAccRun_split;

	private Rectangle dragBoxFromMouseDown2;

	private int rowIndexFromMouseDown2;

	private int rowIndexOfItemUnderMouseToDrop2;

	private static Timer myTimer = new Timer(1000.0);

	public int countTimer;

	public int countTimer2;

	public int countTimer3;

	public bool segClock;

	private int count_check_key;

	public string[] eventsNotify;

	public string[] inforEvent;

	public string[] timeEvent;

	public int?[] hourNotify;

	public int?[] minuteNotify;

	public int?[] hourNotify2;

	public int?[] minuteNotify2;

	public string?[] eventNotify;

	public string?[] eventNotify2;

	public string? Notify;

	public int phutcu;

	public int timeCheckEvent;

	public string pathTheme;

	private string fileName;

	private FontConverter fC;

	private DataGridViewCellStyle TableThemeColor;

	private ImageLayout layout;

	private ContextMenuStrip contextMenuStrip1;

	private ToolStripMenuItem menu1;

	private ToolStripMenuItem menu2;

	private ToolStripMenuItem menu3;

	private ToolStripMenuItem menu5;

	private string comboBoxGroupName2;

	private string nameGroupDelete;

	private string nameCheck;

	private int processMusic;

	private bool IsStop2;

	private IContainer components;

	private GroupBox groupBox2;

	private TextBox textBoxServer;

	private Button buttonAdd;

	private Label label4;

	private GroupBox groupBox1;

	private TextBox textBoxPass;

	private Label label5;

	private Label label3;

	private TextBox textBoxUser;

	private Label label2;

	private TextBox textBoxLink;

	private Label label1;

	private TextBox textBoxDisplayName;

	private CheckBox checkBoxUserPass;

	private CheckBox checkBoxLink;

	private DataGridView dataGridView1;

	private Button button1;

	private Button button2;

	private GroupBox groupBoxAutoLog;

	private Button buttonAL_add;

	private Button buttonAL_save;

	private Label label9;

	private Label label8;

	private NumericUpDown numericUpDownS_m;

	private NumericUpDown numericUpDownS_h;

	private CheckBox checkBoxS_now;

	private CheckBox checkBoxS_at;

	private Label label10;

	private DataGridView dataGridView2;

	private Label label15;

	private Label label14;

	private Label label13;

	private ComboBox comboBoxA;

	private ComboBox comboBoxE;

	private ComboBox comboBoxJ;

	private Button buttonAL_clear;

	private CheckBox ButtonRunAuto;

	private NumericUpDown numericUpDownNV;

	private Label label16;

	private CheckBox checkBoxDapet;

	private NumericUpDown numericUpDownDaPet;

	private Label label17;

	private TextBox textBoxEV;

	private NotifyIcon notifyIcon1;

	private GroupBox groupBox5;

	private Button buttonAddGroup;

	private TabControl tabControl1;

	private TabPage tabPage1;

	private Label label7;

	private Button button5;

	private CheckBox checkBoxTrong;

	private ComboBox comboBoxS;

	private Button buttonAL_load;

	private Button buttonAL_del;

	private NumericUpDown numericUpDownThap;

	private Label label18;

	private CheckBox checkBoxThap;

	private CheckBox checkBoxShuwdown;

	private NumericUpDown numericUpDownTrong;

	private Label label19;

	private CheckBox checkBoxReOn;

	private Button button7;

	private Button button8;

	private TabControl tabControl3;

	private TabPage tabPage5;

	private TabPage tabPage6;

	private ComboBox comboBoxGroupName1;

	private Panel panel1;

	private CheckBox checkBox2;

	private CheckBox checkBox3;

	private DataGridViewTextBoxColumn Server;

	private DataGridViewTextBoxColumn Account;

	private DataGridViewTextBoxColumn NPH;

	private DataGridViewTextBoxColumn DisplayName;

	private LinkLabel linkLabel1;

	private Label label23;

	private Panel panel2;

	private Label label20;

	private Label label22;

	private LinkLabel linkLabel2;

	private CheckBox checkBox4;

	private CheckBox checkBox5;

	private CheckBox checkBox7;

	private CheckBox checkBox6;

	private GroupBox groupBox3;

	private GroupBox groupBox7;

	private GroupBox groupBox6;

	private GroupBox groupBox4;

	private CheckBox checkBox9;

	private CheckBox checkBox10;

	private CheckBox checkBox8;

	private GroupBox groupBox8;

	private NumericUpDown numericUpDownKenh;

	private Label label6;

	private CheckBox checkBoxRelog;

	private ComboBox comboBox1;

	private CheckBox checkBox11;

	private Label label11;

	private CheckBox checkBoxShuwdown_at;

	private Label label12;

	private NumericUpDown numericUpDown1;

	private NumericUpDown numericUpDown2;

	private DataGridViewTextBoxColumn Start;

	private DataGridViewTextBoxColumn Job;

	private DataGridViewTextBoxColumn End;

	private DataGridViewTextBoxColumn FL;

	private DataGridViewTextBoxColumn Class;

	private DataGridViewTextBoxColumn Column1;

	private DataGridViewButtonColumn auto_Log;

	private DataGridViewButtonColumn Run;

	private DataGridViewButtonColumn Del;

	private TabControl tabControl2;

	private TabPage tabPage2;

	private TabPage tabPage3;

	public Login()
	{
		//IL_0555: Unknown result type (might be due to invalid IL or missing references)
		//IL_055f: Expected O, but got Unknown
		//IL_0560: Unknown result type (might be due to invalid IL or missing references)
		//IL_056a: Expected O, but got Unknown
		//IL_056b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0575: Expected O, but got Unknown
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
		link = "";
		charError = new string[7] { "", " ", "  ", "   ", "    ", "     ", "      " };
		charServer = new char[1] { 's' };
		charNotifyErr = new char[1] { ':' };
		checkTimerTick = 0;
		Turn = 0;
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
		uint[] array10 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array10, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_HP_pet = array10;
		uint[] array11 = new uint[5];
		RuntimeHelpers.InitializeArray((System.Array)array11, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
		offset_HPmax_pet = array11;
		myPointer_pet = 11180660u;
		charSplitAutoLog = " || ";
		daPet = false;
		trongTrangVien = false;
		daPet_Run = false;
		trongTrangVien_Run = false;
		tuThap = false;
		tuThap_Run = false;
		isRun = false;
		AutoLogDangChay = false;
		HenGioTatMay = false;
		relogAccCheck = false;
		accRun = 0;
		accRunMax = -1;
		accEnd = -1;
		listAccRun = "";
		listAccEnd = "";
		listAccRun_split = " 163746 ";
		countTimer = 0;
		countTimer2 = 0;
		countTimer3 = 0;
		segClock = true;
		count_check_key = 0;
		eventsNotify = new string[13]
		{
			"Bảo Trì-08:00", "Chu Ma Diện-13:00", "Thi Câu Cá-14:00", "Boss Thế Giới-14:30", "Võ Đài-19:00", "Đoạt Bảo-19:00", "Achilles-19:00", "Boss Tộc-19:00", "Boss NL-19:00", "Đố Vui Có Thưởng-20:00",
			"Bang Chiến-20:00", "Giác Đấu-20:00", "Đấu Trường-21:00"
		};
		inforEvent = new string[14]
		{
			"Bảo Trì", "Hoàn Tất Bảo trì", "Chu Ma Diện", "Thi Câu Cá", "Boss Thế Giới", "Võ Đài", "Đoạt Bảo", "Achilles", "Boss Tộc", "Boss NL",
			"Đố Vui Có Thưởng", "Bang Chiến", "Giác Đấu", "Đấu Trường"
		};
		timeEvent = new string[14]
		{
			"08:00", "11:00", "13:00", "14:00", "14:30", "19:00", "19:00", "19:00", "19:00", "19:00",
			"20:00", "20:00", "20:00", "21:00"
		};
		Notify = "";
		phutcu = -1;
		timeCheckEvent = 20;
		pathTheme = linkApp + "/Theme";
		fC = new FontConverter();
		TableThemeColor = new DataGridViewCellStyle();
		contextMenuStrip1 = new ContextMenuStrip();
		comboBoxGroupName2 = "null";
		nameGroupDelete = "null";
		nameCheck = "";
		processMusic = 0;
		IsStop2 = false;
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

	private unsafe bool FindItem(System.IntPtr hWnd, string pathItem, string nameItem)
	{
		//IL_004a: Unknown result type (might be due to invalid IL or missing references)
		//IL_004f: Unknown result type (might be due to invalid IL or missing references)
		//IL_005d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0062: Unknown result type (might be due to invalid IL or missing references)
		//IL_00b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_00b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c3: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0165: Unknown result type (might be due to invalid IL or missing references)
		//IL_016a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0178: Unknown result type (might be due to invalid IL or missing references)
		//IL_017d: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e7: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0221: Unknown result type (might be due to invalid IL or missing references)
		//IL_0226: Unknown result type (might be due to invalid IL or missing references)
		int num = 0;
		while (true)
		{
			debugText("Tìm Item " + nameItem);
			KetQua_Point = FindPoint(hWnd, pathAutoPhuBan + "/MuiTenIcon.png");
			Point val;
			if (KetQua_Point.HasValue)
			{
				val = KetQua_Point.Value;
				int x = ((Point)(ref val)).X;
				val = KetQua_Point.Value;
				AutoControl.SendClickOnPosition(hWnd, x, ((Point)(ref val)).Y - 30, (EMouseKey)0, 1);
				debugText("Mở bảng icon");
				delay_100ms(5);
			}
			KetQua_Point = FindPoint(hWnd, pathItem);
			if (KetQua_Point.HasValue)
			{
				val = KetQua_Point.Value;
				int x2 = ((Point)(ref val)).X;
				val = KetQua_Point.Value;
				AutoControl.SendClickOnPosition(hWnd, x2, ((Point)(ref val)).Y - 30, (EMouseKey)0, 1);
				debugText("Mở " + nameItem);
				delay_100ms(5);
				num = 0;
				return true;
			}
			KetQua_Point = FindPoint(hWnd, pathAutoPhuBan + "/NutXuong.png");
			num++;
			if (num >= 4)
			{
				break;
			}
			if (KetQua_Point.HasValue)
			{
				val = KetQua_Point.Value;
				int x3 = ((Point)(ref val)).X;
				val = KetQua_Point.Value;
				AutoControl.SendClickOnPosition(hWnd, x3, ((Point)(ref val)).Y - 30, (EMouseKey)0, 1);
				debugText("Nhấn nút xuống");
				delay_100ms(5);
				continue;
			}
			List<Point> val2 = FindPoints(hWnd, pathTacVu + "/MuiTenSangPhai.png");
			if (val2.Count != 0)
			{
				for (int i = 0; i < val2.Count; i++)
				{
					val = val2[i];
					int x4 = ((Point)(ref val)).X;
					val = val2[i];
					AutoControl.SendClickOnPosition(hWnd, x4, ((Point)(ref val)).Y - 30, (EMouseKey)0, 1);
					string text = i.ToString();
					val = val2[i];
					debugText("Ẩn Lần " + text + "tại " + ((object)(*(Point*)(&val))/*cast due to .constrained prefix*/).ToString());
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
		debugText("Không Tìm Thấy Item " + nameItem + " Sau 4 Lần Check");
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

	private bool FindsAndClickRandom(System.IntPtr hWnd, string pathFind, int offsetX, int offsetY, string textDebug, string check)
	{
		//IL_0048: Unknown result type (might be due to invalid IL or missing references)
		//IL_004d: Unknown result type (might be due to invalid IL or missing references)
		//IL_005b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0060: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c7: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d5: Unknown result type (might be due to invalid IL or missing references)
		//IL_00da: Unknown result type (might be due to invalid IL or missing references)
		//IL_012f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0136: Expected O, but got Unknown
		//IL_014c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0151: Unknown result type (might be due to invalid IL or missing references)
		//IL_015f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0164: Unknown result type (might be due to invalid IL or missing references)
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

	private void delay_100ms(int x, bool onlyLog = false)
	{
		//IL_0028: Unknown result type (might be due to invalid IL or missing references)
		double num = 0.0;
		for (x += Program.AppMain.delay_System; num < (double)x; num += 1.0)
		{
			Thread.Sleep(TimeSpan.FromSeconds(0.1));
		}
		if (!onlyLog)
		{
			if (IsStop)
			{
				T.Wait();
			}
			while (IsPause && !IsStop)
			{
			}
		}
		else if (IsStop2)
		{
			T.Wait();
		}
	}

	private void delay_100ms2(int x)
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
		((Control)label10).Text = x;
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

	private void DaPet(int row)
	{
		int num = 0;
		int num2 = 0;
		do
		{
			reConnect(row);
			while (!FindAndClick(hWnd, pathKhac + "/DaPet_Icon.png", 5, 1, "Đá Pet").HasValue)
			{
				num++;
				if (num >= 10)
				{
					break;
				}
				FindsAndClick(hWnd, pathTacVu + "/MuiTenIcon.png", 0, 0, "Show");
				PressKey("OK");
				delay_100ms(30);
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
			num2++;
		}
		while (num2 < 3);
		debugText("Đá Pet Xong");
	}

	private bool TuThap()
	{
		//IL_00c9: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_00de: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f1: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0101: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e6: Unknown result type (might be due to invalid IL or missing references)
		//IL_01eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_01fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_0209: Unknown result type (might be due to invalid IL or missing references)
		//IL_020e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0219: Unknown result type (might be due to invalid IL or missing references)
		//IL_021e: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c1: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d6: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e9: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f9: Unknown result type (might be due to invalid IL or missing references)
		System.DateTime now = System.DateTime.Now;
		int num = now.Hour * 60 + now.Minute;
		PressKey("ESC");
		FindItem(hWnd, pathKhac + "/TLAM_Icon.png", "Tu Luyện Ảo Ma");
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
				int num2 = x + ((Point)(ref value)).X;
				value = val2.Value;
				int y = ((Point)(ref value)).Y;
				value = val.Value;
				int num3 = y + ((Point)(ref value)).Y;
				AutoControl.SendClickOnPosition(hWnd, num2 + 5, num3 + 5 - 30, (EMouseKey)0, 1);
				delay_100ms(5);
				FindAndClick(hWnd, pathKhac + "/TLAM_Co.png", 1, 1, "Có Hủy");
			}
			FindAndClick(hWnd, pathKhac + "/TLAM_NhanTatCa.png", 1, 1, "Nhận Thưởng");
			FindAndClick(hWnd, pathKhac + "/TLAM_Co.png", 1, 1, "Có Nhận");
			val2 = FindSubPoint2(hWnd, pathKhac + "/TLAM_ThietLapPet.png", 0, 0, 100, 200, pathKhac + "/TLAM_TuLuyen.png");
			if (val2.HasValue)
			{
				value = val2.Value;
				int x2 = ((Point)(ref value)).X;
				value = val.Value;
				int num4 = x2 + ((Point)(ref value)).X;
				value = val2.Value;
				int y2 = ((Point)(ref value)).Y;
				value = val.Value;
				int num5 = y2 + ((Point)(ref value)).Y;
				AutoControl.SendClickOnPosition(hWnd, num4 + 5, num5 + 5 - 30, (EMouseKey)0, 1);
				delay_100ms(5);
				FindAndClick(hWnd, pathKhac + "/TLAM_Co.png", 1, 1, "Có Hủy");
			}
			else
			{
				val2 = FindSubPoint2(hWnd, pathKhac + "/TLAM_ThietLapPet.png", 0, 0, 100, 200, pathKhac + "/TLAM_TuLuyen2.png");
				if (val2.HasValue)
				{
					value = val2.Value;
					int x3 = ((Point)(ref value)).X;
					value = val.Value;
					int num6 = x3 + ((Point)(ref value)).X;
					value = val2.Value;
					int y3 = ((Point)(ref value)).Y;
					value = val.Value;
					int num7 = y3 + ((Point)(ref value)).Y;
					AutoControl.SendClickOnPosition(hWnd, num6 + 5, num7 + 5 - 30, (EMouseKey)0, 1);
					delay_100ms(5);
					FindAndClick(hWnd, pathKhac + "/TLAM_Co.png", 1, 1, "Có Hủy");
				}
			}
			return true;
		}
		return true;
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

	private void Login_Load(object sender, EventArgs e)
	{
		//IL_000e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0052: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c9: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_057e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0583: Unknown result type (might be due to invalid IL or missing references)
		//IL_0381: Unknown result type (might be due to invalid IL or missing references)
		//IL_0388: Expected O, but got Unknown
		//IL_0397: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a8: Unknown result type (might be due to invalid IL or missing references)
		//IL_064f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0654: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e57: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e5c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ea8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0eb2: Expected O, but got Unknown
		//IL_0850: Unknown result type (might be due to invalid IL or missing references)
		//IL_0857: Expected O, but got Unknown
		//IL_08e1: Unknown result type (might be due to invalid IL or missing references)
		//IL_08e8: Expected O, but got Unknown
		//IL_04a0: Unknown result type (might be due to invalid IL or missing references)
		//IL_06e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_06e8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0743: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b60: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b67: Expected O, but got Unknown
		//IL_0af8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b10: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b28: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b40: Unknown result type (might be due to invalid IL or missing references)
		//IL_0be3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bea: Expected O, but got Unknown
		//IL_0c9f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ca9: Expected O, but got Unknown
		Program.AppMain.delay_System = 0;
		Intro intro = new Intro();
		((Form)intro).ShowDialog();
		if (!Program.AppMain.debugProgram && Process.GetProcessesByName("BMxTool").Length > 1)
		{
			Program.AppMain.ThongBao(Program.AppMain.errNoti, "BMx Tool VPT", "Đa\u0303 Mơ\u0309 Ư\u0301ng Du\u0323ng!");
			Program.AppMain.IsOff = true;
			((Form)this).Close();
			return;
		}
		if (Program.AppMain.IsOff)
		{
			Application.Restart();
		}
		((Control)this).Text = string.Concat(new string[5]
		{
			"BMx-Tool VPT [v",
			Program.AppMain.version,
			"-",
			Settings.Default.NameTool,
			"]"
		});
		Program.AppMain.delay_System = Settings.Default.delaySys;
		if (Settings.Default.Date && Settings.Default.dateTime.Day == System.DateTime.Now.Day && Settings.Default.dateTime.Month == System.DateTime.Now.Month)
		{
			((Control)this).Text = ((Control)this).Text + " - Happy ";
			int num = System.DateTime.Now.Year - Settings.Default.dateTime.Year;
			if (num == 21)
			{
				((Control)this).Text = ((Control)this).Text + num + "st Birthday!";
			}
			else
			{
				((Control)this).Text = ((Control)this).Text + num + "th Birthday!";
			}
		}
		((Form)this).Size = new Size(661, 538);
		((Control)tabControl3).Size = new Size(645, 495);
		if (Settings.Default.freeSize)
		{
			((Form)this).FormBorderStyle = (FormBorderStyle)4;
		}
		else
		{
			((Form)this).FormBorderStyle = (FormBorderStyle)1;
		}
		if (File.Exists(pathData + "/data.txt"))
		{
			string[] array = File.ReadAllLines(pathData + "/data.txt");
			for (int i = 0; i < array.Length; i++)
			{
				string[] array2 = ((object)array[i]).ToString().Split('\t', (StringSplitOptions)0);
				string[] array3 = new string[array2.Length];
				for (int j = 0; j < array2.Length - 1; j++)
				{
					array3[j] = array2[j].Trim();
				}
				DataGridViewRowCollection rows = dataGridView1.Rows;
				object[] array4 = array3;
				rows.Add(array4);
			}
			comboBoxA.Items.Clear();
			for (int k = 0; k < dataGridView1.RowCount; k++)
			{
				comboBoxA.Items.Add((object)(dataGridView1.Rows[k].Cells[3].Value.ToString() + charSplitAutoLog + dataGridView1.Rows[k].Cells[1].Value.ToString()));
			}
		}
		else
		{
			Directory.CreateDirectory(pathData);
			TextWriter val = (TextWriter)new StreamWriter(pathData + "/data.txt");
			val.Close();
		}
		TableThemeColor.SelectionBackColor = Color.Gold;
		TableThemeColor.SelectionForeColor = Color.Black;
		dataGridView1.EnableHeadersVisualStyles = false;
		dataGridView1.RowsDefaultCellStyle = TableThemeColor;
		dataGridView1.RowHeadersDefaultCellStyle = TableThemeColor;
		dataGridView1.ColumnHeadersDefaultCellStyle = TableThemeColor;
		dataGridView2.EnableHeadersVisualStyles = false;
		dataGridView2.RowsDefaultCellStyle = TableThemeColor;
		dataGridView2.RowHeadersDefaultCellStyle = TableThemeColor;
		dataGridView2.ColumnHeadersDefaultCellStyle = TableThemeColor;
		bool flag = loadTheme();
		if (File.Exists(pathData + "/Location.txt"))
		{
			try
			{
				string[] array = File.ReadAllLines(pathData + "/Location.txt");
				int num2 = int.Parse(array[0]);
				int num3 = int.Parse(array[1]);
				if (num2 > 0 && num3 > 0)
				{
					((Form)this).Location = new Point(num2, num3);
				}
			}
			catch (System.Exception)
			{
				File.Delete(pathData + "/Location.txt");
			}
		}
		if (!File.Exists(pathData + "/BMxAutoLog.txt"))
		{
			Directory.CreateDirectory(pathData);
		}
		else
		{
			loadFile(pathData + "/BMxAutoLog.txt");
		}
		if (!Directory.Exists(pathData + "/AutoLog"))
		{
			Directory.CreateDirectory(pathData + "/AutoLog");
		}
		else
		{
			string[] files = Directory.GetFiles(pathData + "/AutoLog", "*.txt");
			List<string> val2 = new List<string>();
			val2.AddRange((System.Collections.Generic.IEnumerable<string>)files);
			Enumerator<string> enumerator = val2.GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					string current = enumerator.Current;
					string text = current.Substring((pathData + "/AutoLog").Length + 1, current.Length - (pathData + "/AutoLog").Length - 1 - 4);
					comboBoxS.Items.Add((object)text);
				}
			}
			finally
			{
				((System.IDisposable)enumerator/*cast due to .constrained prefix*/).Dispose();
			}
		}
		if (!Directory.Exists(pathGroup))
		{
			Directory.CreateDirectory(pathGroup);
		}
		else
		{
			string[] files2 = Directory.GetFiles(pathGroup, "*.txt");
			List<string> val3 = new List<string>();
			val3.AddRange((System.Collections.Generic.IEnumerable<string>)files2);
			Enumerator<string> enumerator2 = val3.GetEnumerator();
			try
			{
				while (enumerator2.MoveNext())
				{
					string current2 = enumerator2.Current;
					string text2 = current2.Substring(pathGroup.Length + 1, current2.Length - pathGroup.Length - 1 - 4);
					comboBoxGroupName1.Items.Add((object)text2);
					tabControl1.TabPages.Add(text2);
				}
			}
			finally
			{
				((System.IDisposable)enumerator2/*cast due to .constrained prefix*/).Dispose();
			}
			int num4 = 0;
			for (int l = 0; l < tabControl1.TabPages.Count; l++)
			{
				int num5 = num4;
				Rectangle tabRect = tabControl1.GetTabRect(l);
				num4 = num5 + (((Rectangle)(ref tabRect)).Width + 10);
			}
			num4 += 5;
			if (num4 >= 509)
			{
				num4 = 509;
			}
			((Control)tabControl1).Size = new Size(num4, 24);
		}
		((Control)groupBox2).Visible = false;
		((Control)ButtonRunAuto).Visible = false;
		if (Program.AppMain.run)
		{
			((Control)groupBox2).Visible = true;
			((Control)ButtonRunAuto).Visible = true;
			if (Program.AppMain.isOptions)
			{
				string[] array5 = Program.AppMain.Menu_Options[Program.AppMain.localOptions].Split("6861", (StringSplitOptions)0);
				if (Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)array5, "4562"))
				{
				}
				if (Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)array5, "5471"))
				{
					((Control)button1).Visible = true;
				}
				else
				{
					((Control)button1).Visible = false;
				}
				if (Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)array5, "7938"))
				{
					((Control)button2).Visible = true;
				}
				else
				{
					((Control)button2).Visible = false;
				}
				if (!Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)array5, "1286"))
				{
				}
			}
			DataGridViewButtonColumn val4 = new DataGridViewButtonColumn();
			((DataGridViewColumn)val4).Name = "Log";
			((DataGridViewColumn)val4).HeaderText = "Login";
			val4.Text = "Vào";
			val4.UseColumnTextForButtonValue = true;
			((DataGridViewColumn)val4).Width = 50;
			((DataGridViewColumn)val4).FillWeight = 50f;
			if (flag)
			{
				val4.FlatStyle = (FlatStyle)1;
				TableThemeColor.Alignment = (DataGridViewContentAlignment)32;
				((DataGridViewBand)val4).DefaultCellStyle = TableThemeColor;
			}
			dataGridView1.Columns.Add((DataGridViewColumn)(object)val4);
			DataGridViewComboBoxColumn val5 = new DataGridViewComboBoxColumn();
			((DataGridViewColumn)val5).Name = "tool";
			((DataGridViewColumn)val5).HeaderText = "BMx-Tool";
			val5.DisplayStyle = (DataGridViewComboBoxDisplayStyle)1;
			if (Program.AppMain.isOptions)
			{
				string[] array6 = Program.AppMain.Menu_Options[Program.AppMain.localOptions].Split("6861", (StringSplitOptions)0);
				if (Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)array6, "8693"))
				{
					val5.Items.Add((object)"Daily");
				}
				if (Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)array6, "3246"))
				{
				}
				if (Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)array6, "2698"))
				{
					val5.Items.Add((object)"Calendar");
				}
				if (Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)array6, "4592"))
				{
					val5.Items.Add((object)"Hái-Trồng-Câu");
				}
				if (Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)array6, "1235"))
				{
					val5.Items.Add((object)"Bắt Pet");
				}
				if (Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)array6, "6061"))
				{
					val5.Items.Add((object)"Đổi Năng Nổ");
				}
				if (Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)array6, "1209"))
				{
					val5.Items.Add((object)"Trừ Ma");
				}
			}
			else
			{
				val5.Items.Add((object)"Daily");
				val5.Items.Add((object)"Calendar");
				val5.Items.Add((object)"Hái-Trồng-Câu");
				val5.Items.Add((object)"Bắt Pet");
				val5.Items.Add((object)"Đổi Năng Nổ");
				val5.Items.Add((object)"Trừ Ma");
				val5.Items.Add((object)"Train");
			}
			((DataGridViewColumn)val5).Width = 108;
			((DataGridViewColumn)val5).FillWeight = 108f;
			((DataGridViewBand)val5).DefaultCellStyle.NullValue = "Chọn Tool";
			if (flag)
			{
				val5.FlatStyle = (FlatStyle)1;
				((DataGridViewBand)val5).DefaultCellStyle.BackColor = TableThemeColor.BackColor;
				((DataGridViewBand)val5).DefaultCellStyle.ForeColor = TableThemeColor.ForeColor;
				((DataGridViewBand)val5).DefaultCellStyle.SelectionBackColor = TableThemeColor.SelectionBackColor;
				((DataGridViewBand)val5).DefaultCellStyle.SelectionForeColor = TableThemeColor.SelectionForeColor;
			}
			dataGridView1.Columns.Add((DataGridViewColumn)(object)val5);
			DataGridViewButtonColumn val6 = new DataGridViewButtonColumn();
			((DataGridViewColumn)val6).Name = "Auto";
			((DataGridViewColumn)val6).HeaderText = "Auto";
			val6.Text = "Mở";
			val6.UseColumnTextForButtonValue = true;
			((DataGridViewColumn)val6).Width = 50;
			((DataGridViewColumn)val6).FillWeight = 50f;
			if (flag)
			{
				val6.FlatStyle = (FlatStyle)1;
				((DataGridViewBand)val6).DefaultCellStyle = TableThemeColor;
			}
			dataGridView1.Columns.Add((DataGridViewColumn)(object)val6);
			DataGridViewButtonColumn val7 = new DataGridViewButtonColumn();
			((DataGridViewColumn)val7).Name = "Delete";
			((DataGridViewColumn)val7).HeaderText = "Delete";
			val7.Text = "Xóa";
			val7.UseColumnTextForButtonValue = true;
			((DataGridViewColumn)val7).Width = 48;
			((DataGridViewColumn)val7).FillWeight = 48f;
			if (flag)
			{
				val7.FlatStyle = (FlatStyle)1;
				((DataGridViewBand)val7).DefaultCellStyle = TableThemeColor;
			}
			dataGridView1.Columns.Add((DataGridViewColumn)(object)val7);
			setupMenuTrip("null?", ((Control)tabControl1.TabPages[tabControl1.SelectedIndex]).Text);
			((ToolStrip)contextMenuStrip1).ItemClicked += new ToolStripItemClickedEventHandler(contextMenuStrip1_ItemClicked);
			((Control)dataGridView1).ContextMenuStrip = contextMenuStrip1;
		}
		string text3 = "V.I.P-";
		string text4 = " [" + Program.AppMain.timeUse + "] ";
		doanChat1 = string.Concat(new string[7]
		{
			"BMx ",
			text3,
			Program.AppMain.nameVIP.Split('.', (StringSplitOptions)0)[0].Trim(new char[2] { '[', ']' }),
			text4,
			" \"",
			Settings.Default.NameUser,
			"\""
		});
		if (Settings.Default.Date && Settings.Default.dateTime.Day == System.DateTime.Now.Day && Settings.Default.dateTime.Month == System.DateTime.Now.Month)
		{
			doanChat1 += " - Happy ";
			int num6 = System.DateTime.Now.Year - Settings.Default.dateTime.Year;
			if (num6 == 21)
			{
				doanChat1 = doanChat1 + num6 + "st Birthday!";
			}
			else
			{
				doanChat1 = doanChat1 + num6 + "th Birthday!";
			}
		}
		doanChat2 = "Hoạt Động Hôm Nay :  " + checkEvent(((object)System.DateTime.UtcNow.AddHours(7.0).DayOfWeek/*cast due to .constrained prefix*/).ToString());
		((Control)textBoxEV).Text = doanChat1 + "\r\n" + doanChat2;
		myTimer.Elapsed += new ElapsedEventHandler(myTimerEvent);
		myTimer.Start();
		AutoControl.BringToFront(FindWindowHandle(null, ((Control)this).Text));
		if (Settings.Default.runAutoLog)
		{
			tabControl3.SelectTab(1);
			ButtonRunAuto.CheckState = (CheckState)1;
		}
		if (Settings.Default.enableDebug)
		{
			((Control)linkLabel2).Visible = true;
			checkBox4.CheckState = (CheckState)0;
			((Control)checkBox4).Visible = true;
		}
	}

	private void checkBox2_Click(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		if ((int)checkBoxUserPass.CheckState == 0)
		{
			checkBoxUserPass.Checked = true;
			checkBoxLink.Checked = false;
			((TextBoxBase)textBoxLink).ReadOnly = true;
			((TextBoxBase)textBoxUser).ReadOnly = false;
			((TextBoxBase)textBoxPass).ReadOnly = false;
			((TextBoxBase)textBoxServer).ReadOnly = false;
		}
	}

	private void checkBox1_Click(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		if ((int)checkBoxLink.CheckState == 0)
		{
			checkBoxLink.Checked = true;
			checkBoxUserPass.Checked = false;
			((TextBoxBase)textBoxLink).ReadOnly = false;
			((TextBoxBase)textBoxUser).ReadOnly = true;
			((TextBoxBase)textBoxPass).ReadOnly = true;
			((TextBoxBase)textBoxServer).ReadOnly = true;
		}
	}

	private void buttonAdd_Click(object sender, EventArgs e)
	{
		//IL_02f0: Unknown result type (might be due to invalid IL or missing references)
		//IL_0118: Unknown result type (might be due to invalid IL or missing references)
		//IL_011e: Invalid comparison between Unknown and I4
		//IL_0107: Unknown result type (might be due to invalid IL or missing references)
		//IL_0307: Unknown result type (might be due to invalid IL or missing references)
		//IL_030d: Invalid comparison between Unknown and I4
		//IL_0130: Unknown result type (might be due to invalid IL or missing references)
		//IL_0137: Expected O, but got Unknown
		//IL_013c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0143: Expected O, but got Unknown
		//IL_0148: Unknown result type (might be due to invalid IL or missing references)
		//IL_014f: Expected O, but got Unknown
		//IL_0154: Unknown result type (might be due to invalid IL or missing references)
		//IL_015b: Expected O, but got Unknown
		//IL_0160: Unknown result type (might be due to invalid IL or missing references)
		//IL_0167: Expected O, but got Unknown
		//IL_016c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0173: Expected O, but got Unknown
		//IL_036a: Unknown result type (might be due to invalid IL or missing references)
		//IL_03e9: Unknown result type (might be due to invalid IL or missing references)
		//IL_03f0: Expected O, but got Unknown
		//IL_03b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_058f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0935: Unknown result type (might be due to invalid IL or missing references)
		tabControl1.SelectTab(0);
		string[] array = File.ReadAllLines(pathData + "/data.txt");
		dataGridView1.Rows.Clear();
		for (int i = 0; i < array.Length; i++)
		{
			string[] array2 = ((object)array[i]).ToString().Split('\t', (StringSplitOptions)0);
			string[] array3 = new string[array2.Length];
			for (int j = 0; j < array2.Length - 1; j++)
			{
				array3[j] = array2[j].Trim();
			}
			DataGridViewRowCollection rows = dataGridView1.Rows;
			object[] array4 = array3;
			rows.Add(array4);
		}
		string text = "xx";
		string text2 = "xxx";
		string text3 = "xxx";
		string text4 = "goid";
		string text5 = "xxx";
		string text6 = ((Control)textBoxDisplayName).Text;
		if (Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)charError, text6))
		{
			Program.AppMain.ThongBao(Program.AppMain.errNoti, "Display Name", "Tên Cư\u0309a Sô\u0309 Không Đươ\u0323c Đê\u0309 Trô\u0301ng");
			return;
		}
		if ((int)checkBoxLink.CheckState == 1)
		{
			try
			{
				Regex val = new Regex("(?:user=)");
				Regex val2 = new Regex("(?:&)");
				Regex val3 = new Regex("(?:pass=)");
				Regex val4 = new Regex("(?:/s/)");
				Regex val5 = new Regex("(?:/G)");
				Regex val6 = new Regex("(?:@goid)");
				Match val7 = val.Match(((Control)textBoxLink).Text);
				Match val8 = val2.Match(((Control)textBoxLink).Text);
				Match val9 = val3.Match(((Control)textBoxLink).Text);
				Match val10 = val4.Match(((Control)textBoxLink).Text);
				Match val11 = val5.Match(((Control)textBoxLink).Text);
				Match val12 = val6.Match(((Control)textBoxLink).Text);
				text = ((Control)textBoxLink).Text.Substring(((Capture)val10).Index + 3, ((Capture)val11).Index - ((Capture)val10).Index - 3);
				if (((Group)val12).Success)
				{
					text5 = ((Control)textBoxLink).Text.Substring(((Capture)val7).Index + 5, ((Capture)val8).Index - ((Capture)val7).Index - 5 - 5);
					text2 = text5 + "@goid";
					text4 = "Go";
				}
				else
				{
					text5 = ((Control)textBoxLink).Text.Substring(((Capture)val7).Index + 5, ((Capture)val8).Index - ((Capture)val7).Index - 5);
					text2 = text5;
					text4 = "VTC";
				}
				text3 = ((Control)textBoxLink).Text.Substring(((Capture)val9).Index + 5, ((Capture)val8.NextMatch()).Index - ((Capture)val9).Index - 5);
			}
			catch (System.Exception)
			{
				Program.AppMain.ThongBao(Program.AppMain.errNoti, "Link", "Lỗi Link để trống hoặc không đúng định dạng\n[VD: http://s3-vuaphapthuat.goplay.vn/s/s12/GameLoader.swf?user=XXX&pass=YYY&version=0.9.9a33.271&isExpand=true]");
				return;
			}
		}
		else if ((int)checkBoxUserPass.CheckState == 1)
		{
			if (Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)charError, ((Control)textBoxUser).Text) || Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)charError, ((Control)textBoxPass).Text))
			{
				Program.AppMain.ThongBao(Program.AppMain.errNoti, "Information", "Lỗi User / Pass để trống");
				return;
			}
			if (!Enumerable.Contains<char>((System.Collections.Generic.IEnumerable<char>)charServer, ((Control)textBoxServer).Text[0]))
			{
				Program.AppMain.ThongBao(Program.AppMain.errNoti, "Information", "Lỗi Server nhập sai định dạng [VD: s12]");
				return;
			}
			text = ((Control)textBoxServer).Text;
			text2 = ((Control)textBoxUser).Text;
			text3 = ((Control)textBoxPass).Text;
			Regex val13 = new Regex("(?:@goid)");
			Match val14 = val13.Match(((Control)textBoxUser).Text);
			if (((Group)val14).Success)
			{
				text5 = ((Control)textBoxUser).Text.Substring(0, ((Capture)val14).Index);
				text4 = "Go";
			}
			else
			{
				text5 = ((Control)textBoxUser).Text;
				text4 = "VTC";
			}
		}
		for (int k = 0; k < dataGridView1.Rows.Count; k++)
		{
			string text7 = "xxx";
			string text8 = dataGridView1.Rows[k].Cells[3].Value.ToString();
			if (dataGridView1.Rows[k].Cells[2].Value.ToString() == "Go")
			{
				text7 = dataGridView1.Rows[k].Cells[1].Value.ToString() + "@goid";
			}
			else if (dataGridView1.Rows[k].Cells[2].Value.ToString() == "VTC")
			{
				text7 = dataGridView1.Rows[k].Cells[1].Value.ToString();
			}
			if (text2.CompareTo(text7) != 0 && text6.CompareTo(text8) == 0)
			{
				Program.AppMain.ThongBao(Program.AppMain.errNoti, "Information", "Trùng Tên Cửa Sổ Với User Khác");
				return;
			}
		}
		int num = 0;
		while (true)
		{
			if (num < dataGridView1.Rows.Count)
			{
				string text9 = "xxx";
				if (dataGridView1.Rows[num].Cells[2].Value.ToString() == "Go")
				{
					text9 = dataGridView1.Rows[num].Cells[1].Value.ToString() + "@goid";
				}
				else if (dataGridView1.Rows[num].Cells[2].Value.ToString() == "VTC")
				{
					text9 = dataGridView1.Rows[num].Cells[1].Value.ToString();
				}
				if (text2.CompareTo(text9) == 0)
				{
					dataGridView1.Rows[num].Cells[0].Value = text;
					dataGridView1.Rows[num].Cells[1].Value = text5;
					dataGridView1.Rows[num].Cells[2].Value = text4;
					dataGridView1.Rows[num].Cells[3].Value = text6;
					break;
				}
				num++;
				continue;
			}
			dataGridView1.Rows.Add(new object[4] { text, text5, text4, text6 });
			break;
		}
		comboBoxA.Items.Clear();
		for (int l = 0; l < dataGridView1.RowCount; l++)
		{
			comboBoxA.Items.Add((object)(dataGridView1.Rows[l].Cells[3].Value.ToString() + charSplitAutoLog + dataGridView1.Rows[l].Cells[1].Value.ToString()));
		}
		link = string.Concat(new string[9]
		{
			Program.AppMain.link1,
			text,
			Program.AppMain.link2,
			text2,
			Program.AppMain.link3,
			text3,
			Program.AppMain.link4,
			Program.AppMain.link5,
			Program.AppMain.link6
		});
		((Control)textBoxServer).Text = "";
		((Control)textBoxUser).Text = "";
		((Control)textBoxPass).Text = "";
		((Control)textBoxDisplayName).Text = "";
		((Control)textBoxLink).Text = "";
		saveData();
		updateDataGroup(text, text5, text4, text6);
		savePass(text2, text3);
		dataGridView2.Rows.Clear();
		((Control)comboBoxS).Text = "Chọn Bản Lưu";
		Program.AppMain.ThongBao(Program.AppMain.inforNoti, "Data", "Đa\u0303 Lưu");
	}

	private void saveData()
	{
		//IL_0011: Unknown result type (might be due to invalid IL or missing references)
		//IL_0017: Expected O, but got Unknown
		TextWriter val = (TextWriter)new StreamWriter(pathData + "/data.txt");
		for (int i = 0; i < dataGridView1.Rows.Count; i++)
		{
			for (int j = 0; j < 4; j++)
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

	private void saveGroup(string name)
	{
		//IL_003f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0045: Expected O, but got Unknown
		string text = ((!(name == "Toàn Bộ")) ? (pathGroup + "/" + name + ".txt") : (pathData + "/data.txt"));
		TextWriter val = (TextWriter)new StreamWriter(text);
		for (int i = 0; i < dataGridView1.Rows.Count; i++)
		{
			for (int j = 0; j < 4; j++)
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

	private void saveDataRealTime()
	{
		//IL_007d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0083: Expected O, but got Unknown
		string text = ((!(((Control)tabControl1.TabPages[tabControl1.SelectedIndex]).Text == "Toàn Bộ")) ? (pathGroup + "/" + ((Control)tabControl1.TabPages[tabControl1.SelectedIndex]).Text + ".txt") : (pathData + "/data.txt"));
		TextWriter val = (TextWriter)new StreamWriter(text);
		for (int i = 0; i < dataGridView1.Rows.Count; i++)
		{
			for (int j = 0; j < 4; j++)
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

	private void deleteDataGroup(string ID)
	{
		//IL_0035: Unknown result type (might be due to invalid IL or missing references)
		//IL_003a: Unknown result type (might be due to invalid IL or missing references)
		//IL_005a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0061: Expected O, but got Unknown
		//IL_00dc: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e3: Expected O, but got Unknown
		if (!Directory.Exists(pathGroup))
		{
			return;
		}
		string[] files = Directory.GetFiles(pathGroup, "*.txt");
		List<string> val = new List<string>();
		val.AddRange((System.Collections.Generic.IEnumerable<string>)files);
		Enumerator<string> enumerator = val.GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				string current = enumerator.Current;
				TextWriter val2 = (TextWriter)new StreamWriter(pathData + "/Memory232Group.txt");
				string[] array = File.ReadAllLines(current);
				for (int i = 0; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array); i++)
				{
					string[] array2 = array[i].Split('\t', (StringSplitOptions)0);
					if (array2[1].Trim() != ID)
					{
						val2.WriteLine(array[i]);
					}
				}
				val2.Close();
				string[] array3 = File.ReadAllLines(pathData + "/Memory232Group.txt");
				TextWriter val3 = (TextWriter)new StreamWriter(current);
				for (int j = 0; j < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array3); j++)
				{
					val3.WriteLine(array3[j]);
				}
				val3.Close();
			}
		}
		finally
		{
			((System.IDisposable)enumerator/*cast due to .constrained prefix*/).Dispose();
		}
	}

	private void updateDataGroup(string SV, string ID, string NPH, string DisplayName)
	{
		//IL_0035: Unknown result type (might be due to invalid IL or missing references)
		//IL_003a: Unknown result type (might be due to invalid IL or missing references)
		//IL_005a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0061: Expected O, but got Unknown
		//IL_012a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0131: Expected O, but got Unknown
		if (!Directory.Exists(pathGroup))
		{
			return;
		}
		string[] files = Directory.GetFiles(pathGroup, "*.txt");
		List<string> val = new List<string>();
		val.AddRange((System.Collections.Generic.IEnumerable<string>)files);
		Enumerator<string> enumerator = val.GetEnumerator();
		try
		{
			while (enumerator.MoveNext())
			{
				string current = enumerator.Current;
				TextWriter val2 = (TextWriter)new StreamWriter(pathData + "/Memory232Group.txt");
				string[] array = File.ReadAllLines(current);
				for (int i = 0; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array); i++)
				{
					string[] array2 = array[i].Split('\t', (StringSplitOptions)0);
					if (array2[1].Trim() == ID)
					{
						val2.WriteLine(string.Concat(new string[8] { SV, "\t", ID, "\t", NPH, "\t", DisplayName, "\t" }));
					}
					else
					{
						val2.WriteLine(array[i]);
					}
				}
				val2.Close();
				string[] array3 = File.ReadAllLines(pathData + "/Memory232Group.txt");
				TextWriter val3 = (TextWriter)new StreamWriter(current);
				for (int j = 0; j < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array3); j++)
				{
					val3.WriteLine(array3[j]);
				}
				val3.Close();
			}
		}
		finally
		{
			((System.IDisposable)enumerator/*cast due to .constrained prefix*/).Dispose();
		}
	}

	private void saveID(string user, string ID)
	{
		//IL_0017: Unknown result type (might be due to invalid IL or missing references)
		//IL_001d: Expected O, but got Unknown
		TextWriter val = (TextWriter)new StreamWriter(pathData + "/ID/" + user + ".txt");
		val.WriteLine(ID);
		val.Close();
	}

	private void savePass(string user, string pass)
	{
		//IL_0017: Unknown result type (might be due to invalid IL or missing references)
		//IL_001d: Expected O, but got Unknown
		TextWriter val = (TextWriter)new StreamWriter(pathData + "/" + user + ".txt");
		val.WriteLine(pass);
		val.Close();
	}

	private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
	{
		//IL_0003: Unknown result type (might be due to invalid IL or missing references)
		//IL_0009: Expected O, but got Unknown
		//IL_029f: Unknown result type (might be due to invalid IL or missing references)
		//IL_02bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fb9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fbf: Invalid comparison between Unknown and I4
		//IL_031a: Unknown result type (might be due to invalid IL or missing references)
		//IL_10ee: Unknown result type (might be due to invalid IL or missing references)
		//IL_10f4: Invalid comparison between Unknown and I4
		//IL_110d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1119: Unknown result type (might be due to invalid IL or missing references)
		//IL_111e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1127: Unknown result type (might be due to invalid IL or missing references)
		//IL_112e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1159: Unknown result type (might be due to invalid IL or missing references)
		//IL_115f: Invalid comparison between Unknown and I4
		//IL_047b: Unknown result type (might be due to invalid IL or missing references)
		//IL_1178: Unknown result type (might be due to invalid IL or missing references)
		//IL_1184: Unknown result type (might be due to invalid IL or missing references)
		//IL_1189: Unknown result type (might be due to invalid IL or missing references)
		//IL_1192: Unknown result type (might be due to invalid IL or missing references)
		//IL_1199: Unknown result type (might be due to invalid IL or missing references)
		//IL_1259: Unknown result type (might be due to invalid IL or missing references)
		//IL_126e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f60: Unknown result type (might be due to invalid IL or missing references)
		try
		{
			DataGridView val = (DataGridView)sender;
			if (!(val.Columns[e.ColumnIndex] is DataGridViewButtonColumn) || e.RowIndex < 0)
			{
				return;
			}
			string text = "xx";
			string text2 = "xxx";
			string text3 = "xxx";
			string text4 = "goid";
			string text5 = "xxx";
			string text6 = "xxx";
			text = dataGridView1.CurrentRow.Cells[0].Value.ToString();
			text5 = dataGridView1.CurrentRow.Cells[1].Value.ToString();
			text4 = dataGridView1.CurrentRow.Cells[2].Value.ToString();
			if (text4 == "Go")
			{
				text2 = text5 + "@goid";
			}
			else if (text4 == "VTC")
			{
				text2 = text5;
			}
			text6 = dataGridView1.CurrentRow.Cells[3].Value.ToString();
			string text7 = "";
			text7 = (Settings.Default.nameStyle ? (text6 + " " + text) : (text + "." + text6));
			string[] array = File.ReadAllLines(pathData + "/" + text2 + ".txt");
			text3 = array[0].Trim();
			string name = val.Columns[e.ColumnIndex].Name;
			string text8 = name;
			if (!(text8 == "Log"))
			{
				if (!(text8 == "Auto"))
				{
					if (!(text8 == "Delete"))
					{
						if (!(text8 == "Mini"))
						{
							if (!(text8 == "Normal"))
							{
								if (text8 == "Copy")
								{
									string[] array2 = File.ReadAllLines(pathData + "/" + text2 + ".txt");
									text3 = array2[0].Trim();
									link = string.Concat(new string[9]
									{
										Program.AppMain.link1,
										text,
										Program.AppMain.link2,
										text2,
										Program.AppMain.link3.Substring(1),
										text3,
										Program.AppMain.link4.Substring(1),
										Program.AppMain.link5,
										Program.AppMain.link6.Substring(1)
									});
									Clipboard.SetText(link);
									MessageBox.Show("Đã sao chép Link", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)64);
								}
								else
								{
									MessageBox.Show("click gì v", "BMx-Tool VPT", (MessageBoxButtons)0, (MessageBoxIcon)64);
								}
							}
							else if ((int)MessageBox.Show("Normal Size?", "Cảnh Báo", (MessageBoxButtons)4, (MessageBoxIcon)48) == 6)
							{
								hWnd = FindWindowHandle(null, text7);
								RECT val2 = default(RECT);
								val2 = AutoControl.GetWindowRect(hWnd);
								SetWindowPos(hWnd, 0, val2.Left, val2.Top, 1066, 724, 2);
							}
						}
						else if ((int)MessageBox.Show("Mini Size ?", "Cảnh Báo", (MessageBoxButtons)4, (MessageBoxIcon)48) == 6)
						{
							hWnd = FindWindowHandle(null, text7);
							RECT val3 = default(RECT);
							val3 = AutoControl.GetWindowRect(hWnd);
							SetWindowPos(hWnd, 0, val3.Left, val3.Top, 533, 362, 2);
						}
					}
					else
					{
						if ((int)Program.AppMain.ThongBao(Program.AppMain.warnNoti, "Delete", "Xóa Khỏi \"" + ((Control)tabControl1.TabPages[tabControl1.SelectedIndex]).Text + "\"", Program.AppMain.YesNoNoti) != 6)
						{
							return;
						}
						dataGridView1.Rows.RemoveAt(((DataGridViewBand)dataGridView1.CurrentRow).Index);
						saveDataRealTime();
						if (((Control)tabControl1.TabPages[tabControl1.SelectedIndex]).Text == "Toàn Bộ")
						{
							if (File.Exists(pathData + "/" + text2 + ".txt"))
							{
								File.Delete(pathData + "/" + text2 + ".txt");
							}
							comboBoxA.Items.Clear();
							for (int i = 0; i < dataGridView1.RowCount; i++)
							{
								comboBoxA.Items.Add((object)dataGridView1.Rows[i].Cells[1].Value.ToString());
							}
							deleteDataGroup(text5);
						}
					}
					return;
				}
				if (!Program.AppMain.isActive)
				{
					MessageBox.Show("Tính Năng Đã Khóa Hoặc Không Có Internet Để Kiểm Tra Thời Gian Hiện Tại\nNếu Do Kết Nối Internet Hãy Kết Nối Và Thử Lại Sau 1 Phút");
					return;
				}
				if (dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex - 1].Value == null)
				{
					Program.AppMain.ThongBao(Program.AppMain.errNoti, "Mơ\u0309 Tool", "Chưa Cho\u0323n Tool");
					return;
				}
				if (dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex - 1].Value.ToString() == "Calendar")
				{
					Program.AppMain.link = string.Concat(new string[9]
					{
						Program.AppMain.link1,
						text,
						Program.AppMain.link2,
						text2,
						Program.AppMain.link3,
						text3,
						Program.AppMain.link4,
						Program.AppMain.link5,
						Program.AppMain.link6
					});
					Program.AppMain.nameFlash = text7;
					Program.AppMain.nameUser = text2;
					if (Settings.Default.newProcess)
					{
						Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[7]
						{
							"BMx_Control \"",
							Program.AppMain.nameFlash,
							"\" \"",
							Program.AppMain.nameUser,
							"\" \"",
							Program.AppMain.link,
							"\""
						}));
					}
					else
					{
						Control control = new Control();
						((Control)control).Show();
					}
					return;
				}
				if (CheckHandleWindows(text7))
				{
					try
					{
						string text9 = dataGridView1.Rows[e.RowIndex].Cells[e.ColumnIndex - 1].Value.ToString();
						string text10 = text9;
						switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text10))
						{
						case 3157821886u:
							if (text10 == "Daily")
							{
								if (!CheckHandleWindows("[" + text7 + "] BMx Daily"))
								{
									Program.AppMain.nameFlash = text7;
									Program.AppMain.nameUser = text2;
									Program.AppMain.link = string.Concat(new string[9]
									{
										Program.AppMain.link1,
										text,
										Program.AppMain.link2,
										text2,
										Program.AppMain.link3,
										text3,
										Program.AppMain.link4,
										Program.AppMain.link5,
										Program.AppMain.link6
									});
									if (Settings.Default.newProcess)
									{
										bool flag5 = false;
										bool flag6 = false;
										Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[11]
										{
											"BMx_Daily \"",
											Program.AppMain.nameFlash,
											"\" \"",
											Program.AppMain.nameUser,
											"\" \"",
											Program.AppMain.link,
											"\" \"",
											flag6.ToString(),
											"\" \"",
											flag5.ToString(),
											"\""
										}));
									}
									else
									{
										Daily daily = new Daily();
										((Control)daily).Show();
									}
								}
								else
								{
									AutoControl.BringToFront(FindWindowHandle(null, "[" + text7 + "] BMx Daily"));
								}
								return;
							}
							break;
						case 486563695u:
							if (text10 == "Bắt Pet")
							{
								if (!CheckHandleWindows("[" + text7 + "] BMx Bắt Pet"))
								{
									bool flag4 = false;
									Program.AppMain.nameFlash = text7;
									Program.AppMain.nameUser = text2;
									Program.AppMain.link = string.Concat(new string[9]
									{
										Program.AppMain.link1,
										text,
										Program.AppMain.link2,
										text2,
										Program.AppMain.link3,
										text3,
										Program.AppMain.link4,
										Program.AppMain.link5,
										Program.AppMain.link6
									});
									if (Settings.Default.newProcess)
									{
										Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[9]
										{
											"BMx_BatPet \"",
											Program.AppMain.nameFlash,
											"\" \"",
											Program.AppMain.nameUser,
											"\" \"",
											Program.AppMain.link,
											"\" \"",
											flag4.ToString(),
											"\""
										}));
									}
									else
									{
										BatPet batPet = new BatPet();
										((Control)batPet).Show();
									}
								}
								else
								{
									AutoControl.BringToFront(FindWindowHandle(null, "[" + text7 + "] BMx Bă\u0301t Pet"));
								}
								return;
							}
							break;
						case 4245491132u:
							if (text10 == "Đổi Năng Nổ")
							{
								if (!CheckHandleWindows("[" + text7 + "] BMx Nang No"))
								{
									Program.AppMain.nameFlash = text7;
									Program.AppMain.nameUser = text2;
									Program.AppMain.link = string.Concat(new string[9]
									{
										Program.AppMain.link1,
										text,
										Program.AppMain.link2,
										text2,
										Program.AppMain.link3,
										text3,
										Program.AppMain.link4,
										Program.AppMain.link5,
										Program.AppMain.link6
									});
									if (Settings.Default.newProcess)
									{
										bool flag2 = false;
										Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[9]
										{
											"BMx_NangNo \"",
											Program.AppMain.nameFlash,
											"\" \"",
											Program.AppMain.nameUser,
											"\" \"",
											Program.AppMain.link,
											"\" \"",
											flag2.ToString(),
											"\""
										}));
									}
									else
									{
										NangNo nangNo = new NangNo();
										((Control)nangNo).Show();
									}
								}
								else
								{
									AutoControl.BringToFront(FindWindowHandle(null, "[" + text7 + "] BMx Năng Nô\u0309"));
								}
								return;
							}
							break;
						case 3431945722u:
							if (text10 == "Trừ Ma")
							{
								if (!CheckHandleWindows("[" + text7 + "] BMx Tru Ma"))
								{
									Program.AppMain.nameFlash = text7;
									Program.AppMain.nameUser = text2;
									Program.AppMain.link = string.Concat(new string[9]
									{
										Program.AppMain.link1,
										text,
										Program.AppMain.link2,
										text2,
										Program.AppMain.link3,
										text3,
										Program.AppMain.link4,
										Program.AppMain.link5,
										Program.AppMain.link6
									});
									if (Settings.Default.newProcess)
									{
										bool flag7 = false;
										Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[9]
										{
											"BMx_TruMa \"",
											Program.AppMain.nameFlash,
											"\" \"",
											Program.AppMain.nameUser,
											"\" \"",
											Program.AppMain.link,
											"\" \"",
											flag7.ToString(),
											"\""
										}));
									}
									else
									{
										TruMa truMa = new TruMa();
										((Control)truMa).Show();
									}
								}
								else
								{
									AutoControl.BringToFront(FindWindowHandle(null, "[" + text7 + "] BMx Trư\u0300 Ma"));
								}
								return;
							}
							break;
						case 1009747641u:
							if (text10 == "Hái-Trồng-Câu")
							{
								if (!CheckHandleWindows("BMx Nông Dân [" + text7 + "]"))
								{
									bool flag3 = false;
									Program.AppMain.nameFlash = text7;
									Program.AppMain.nameUser = text2;
									Program.AppMain.link = string.Concat(new string[9]
									{
										Program.AppMain.link1,
										text,
										Program.AppMain.link2,
										text2,
										Program.AppMain.link3,
										text3,
										Program.AppMain.link4,
										Program.AppMain.link5,
										Program.AppMain.link6
									});
									if (Settings.Default.newProcess)
									{
										Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[9]
										{
											"BMx_HaiTrongCau \"",
											Program.AppMain.nameFlash,
											"\" \"",
											Program.AppMain.nameUser,
											"\" \"",
											Program.AppMain.link,
											"\" \"null\" \"",
											flag3.ToString(),
											"\""
										}));
									}
									else
									{
										HaiTrongCau haiTrongCau = new HaiTrongCau();
										((Control)haiTrongCau).Show();
									}
								}
								else
								{
									AutoControl.BringToFront(FindWindowHandle(null, "BMx Nông Dân [" + text7 + "]"));
								}
								return;
							}
							break;
						case 3776905896u:
							if (text10 == "Tu Hành")
							{
								if (!CheckHandleWindows("[" + text7 + "] BMx Tu Hành"))
								{
									Program.AppMain.nameFlash = text7;
									Program.AppMain.nameUser = text2;
									Program.AppMain.link = string.Concat(new string[9]
									{
										Program.AppMain.link1,
										text,
										Program.AppMain.link2,
										text2,
										Program.AppMain.link3,
										text3,
										Program.AppMain.link4,
										Program.AppMain.link5,
										Program.AppMain.link6
									});
									TuHanh tuHanh = new TuHanh();
									((Control)tuHanh).Show();
								}
								else
								{
									AutoControl.BringToFront(FindWindowHandle(null, "[" + text7 + "] BMx Tu Hành"));
								}
								return;
							}
							break;
						case 1331082619u:
							if (text10 == "Hỗ Trợ Nhiệm Vụ")
							{
								if (!CheckHandleWindows("[" + text7 + "] BMx Hỗ Trợ Nhiệm Vụ"))
								{
									Program.AppMain.nameFlash = text7;
									Program.AppMain.nameUser = text2;
									Program.AppMain.link = string.Concat(new string[9]
									{
										Program.AppMain.link1,
										text,
										Program.AppMain.link2,
										text2,
										Program.AppMain.link3,
										text3,
										Program.AppMain.link4,
										Program.AppMain.link5,
										Program.AppMain.link6
									});
									if (Settings.Default.newProcess)
									{
										Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[7]
										{
											"BMx_HoTroQ200 \"",
											Program.AppMain.nameFlash,
											"\" \"",
											Program.AppMain.nameUser,
											"\" \"",
											Program.AppMain.link,
											"\""
										}));
									}
									else
									{
										HoTroQ200 hoTroQ = new HoTroQ200();
										((Control)hoTroQ).Show();
									}
								}
								else
								{
									AutoControl.BringToFront(FindWindowHandle(null, "[" + text7 + "] BMx Hỗ Trợ Nhiệm Vụ"));
								}
								return;
							}
							break;
						case 504525065u:
							if (text10 == "Train")
							{
								if (!CheckHandleWindows("[" + text7 + "] BMx Train"))
								{
									Program.AppMain.nameFlash = text7;
									Program.AppMain.nameUser = text2;
									Program.AppMain.link = string.Concat(new string[9]
									{
										Program.AppMain.link1,
										text,
										Program.AppMain.link2,
										text2,
										Program.AppMain.link3,
										text3,
										Program.AppMain.link4,
										Program.AppMain.link5,
										Program.AppMain.link6
									});
									if (Settings.Default.newProcess)
									{
										bool flag = false;
										Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[9]
										{
											"BMx_Train \"",
											Program.AppMain.nameFlash,
											"\" \"",
											Program.AppMain.nameUser,
											"\" \"",
											Program.AppMain.link,
											"\" \"",
											flag.ToString(),
											"\""
										}));
									}
									else
									{
										Train train = new Train();
										((Control)train).Show();
									}
								}
								else
								{
									AutoControl.BringToFront(FindWindowHandle(null, "[" + text7 + "] BMx Train"));
								}
								return;
							}
							break;
						}
						Program.AppMain.ThongBao(Program.AppMain.inforNoti, "Mơ\u0309 Tool", "Đang Cập Nhật");
						return;
					}
					catch (System.Exception)
					{
						return;
					}
				}
				Program.AppMain.ThongBao(Program.AppMain.inforNoti, "Flash", "Chưa Mở Flash " + text7);
			}
			else if (!CheckHandleWindows(text7))
			{
				link = string.Concat(new string[9]
				{
					Program.AppMain.link1,
					text,
					Program.AppMain.link2,
					text2,
					Program.AppMain.link3,
					text3,
					Program.AppMain.link4,
					Program.AppMain.link5,
					Program.AppMain.link6
				});
				logAcc(text7, link);
			}
			else
			{
				Program.AppMain.ThongBao(Program.AppMain.inforNoti, "Flash", "Đã Mở Flash " + text7);
			}
		}
		catch (System.Exception)
		{
		}
	}

	private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
	{
		//IL_0003: Unknown result type (might be due to invalid IL or missing references)
		//IL_0009: Expected O, but got Unknown
		//IL_023f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0267: Unknown result type (might be due to invalid IL or missing references)
		//IL_02af: Unknown result type (might be due to invalid IL or missing references)
		//IL_02db: Unknown result type (might be due to invalid IL or missing references)
		try
		{
			DataGridView val = (DataGridView)sender;
			if (val.Columns[e.ColumnIndex] is DataGridViewTextBoxColumn && e.RowIndex >= 0)
			{
				string text = "xx";
				string text2 = "xxx";
				string text3 = "xxx";
				string text4 = "goid";
				string text5 = "xxx";
				string text6 = "xxx";
				text = dataGridView1.CurrentRow.Cells[0].Value.ToString();
				text5 = dataGridView1.CurrentRow.Cells[1].Value.ToString();
				text4 = dataGridView1.CurrentRow.Cells[2].Value.ToString();
				if (text4 == "Go")
				{
					text2 = text5 + "@goid";
				}
				else if (text4 == "VTC")
				{
					text2 = text5;
				}
				text6 = dataGridView1.CurrentRow.Cells[3].Value.ToString();
				((Control)textBoxServer).Text = text;
				((Control)textBoxUser).Text = text2;
				string[] array = File.ReadAllLines(pathData + "/" + text2 + ".txt");
				text3 = array[0].Trim();
				((Control)textBoxPass).Text = text3;
				((Control)textBoxDisplayName).Text = text6;
				link = string.Concat(new string[9]
				{
					Program.AppMain.link1,
					text,
					Program.AppMain.link2,
					text2,
					Program.AppMain.link3.Substring(1),
					text3,
					Program.AppMain.link4.Substring(1),
					Program.AppMain.link5,
					Program.AppMain.link6.Substring(1)
				});
				((Control)textBoxLink).Text = link;
				setupMenuTrip(text6, ((Control)tabControl1.TabPages[tabControl1.SelectedIndex]).Text);
			}
			for (int i = 0; i < dataGridView1.RowCount; i++)
			{
				((DataGridViewBand)dataGridView1.Rows[i]).DefaultCellStyle.BackColor = TableThemeColor.BackColor;
				((DataGridViewBand)dataGridView1.Rows[i]).DefaultCellStyle.ForeColor = TableThemeColor.ForeColor;
			}
			((DataGridViewBand)dataGridView1.Rows[e.RowIndex]).DefaultCellStyle.BackColor = TableThemeColor.SelectionBackColor;
			((DataGridViewBand)dataGridView1.Rows[e.RowIndex]).DefaultCellStyle.ForeColor = TableThemeColor.SelectionForeColor;
		}
		catch (System.Exception)
		{
		}
	}

	private void dataGridView1_RowHeaderMouseClick(object sender, DataGridViewCellMouseEventArgs e)
	{
		//IL_01d6: Unknown result type (might be due to invalid IL or missing references)
		//IL_01fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_0246: Unknown result type (might be due to invalid IL or missing references)
		//IL_0272: Unknown result type (might be due to invalid IL or missing references)
		string text = "xx";
		string text2 = "xxx";
		string text3 = "xxx";
		string text4 = "goid";
		string text5 = "xxx";
		string text6 = "xxx";
		text = dataGridView1.CurrentRow.Cells[0].Value.ToString();
		text5 = dataGridView1.CurrentRow.Cells[1].Value.ToString();
		text4 = dataGridView1.CurrentRow.Cells[2].Value.ToString();
		if (text4 == "Go")
		{
			text2 = text5 + "@goid";
		}
		else if (text4 == "VTC")
		{
			text2 = text5;
		}
		text6 = dataGridView1.CurrentRow.Cells[3].Value.ToString();
		((Control)textBoxServer).Text = text;
		((Control)textBoxUser).Text = text2;
		string[] array = File.ReadAllLines(pathData + "/" + text2 + ".txt");
		text3 = array[0].Trim();
		((Control)textBoxPass).Text = text3;
		((Control)textBoxDisplayName).Text = text6;
		link = string.Concat(new string[9]
		{
			Program.AppMain.link1,
			text,
			Program.AppMain.link2,
			text2,
			Program.AppMain.link3.Substring(1),
			text3,
			Program.AppMain.link4.Substring(1),
			Program.AppMain.link5,
			Program.AppMain.link6.Substring(1)
		});
		((Control)textBoxLink).Text = link;
		for (int i = 0; i < dataGridView1.RowCount; i++)
		{
			((DataGridViewBand)dataGridView1.Rows[i]).DefaultCellStyle.BackColor = TableThemeColor.BackColor;
			((DataGridViewBand)dataGridView1.Rows[i]).DefaultCellStyle.ForeColor = TableThemeColor.ForeColor;
		}
		((DataGridViewBand)dataGridView1.Rows[e.RowIndex]).DefaultCellStyle.BackColor = TableThemeColor.SelectionBackColor;
		((DataGridViewBand)dataGridView1.Rows[e.RowIndex]).DefaultCellStyle.ForeColor = TableThemeColor.SelectionForeColor;
		setupMenuTrip(text6, ((Control)tabControl1.TabPages[tabControl1.SelectedIndex]).Text);
	}

	private void logAcc(string DisplayNameLog, string linkLog)
	{
		Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[7] { "BMx_Loggin \"", linkApp, "/APPS/FlashGame.exe\" \"", linkLog, "\" \"", DisplayNameLog, "\"" }));
	}

	private void buttonActive_Click(object sender, EventArgs e)
	{
		ActiveKey activeKey = new ActiveKey();
		((Control)activeKey).Show();
		((Control)this).Hide();
	}

	private void buttonComboXT_Click(object sender, EventArgs e)
	{
		if (Settings.Default.newProcess)
		{
			Process.Start(linkApp + "\\BMxTool.exe", "BMx_admin65_CBXT");
			return;
		}
		ComboXT comboXT = new ComboXT();
		((Control)comboXT).Show();
	}

	private void Login_FormClosed(object sender, FormClosedEventArgs e)
	{
		if (!Program.AppMain.IsOff)
		{
			Application.Exit();
		}
	}

	private void Login_FormClosing(object sender, FormClosingEventArgs e)
	{
		//IL_0094: Unknown result type (might be due to invalid IL or missing references)
		//IL_009a: Invalid comparison between Unknown and I4
		//IL_00b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_00bd: Expected O, but got Unknown
		//IL_00c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c5: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e0: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e5: Unknown result type (might be due to invalid IL or missing references)
		if (Program.AppMain.IsOff || Program.AppMain.debugProgram)
		{
			return;
		}
		string text = "Bao Gô\u0300m : \r\n";
		Process[] processesByName = Process.GetProcessesByName("BMxTool");
		for (int i = 0; i < Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)processesByName); i++)
		{
			text = string.Concat(new string[5]
			{
				text,
				(i + 1).ToString(),
				" : ",
				processesByName[i].MainWindowTitle,
				"\r\n"
			});
		}
		if ((int)Program.AppMain.ThongBao(Program.AppMain.warnNoti, "Toa\u0300n Bô\u0323 Cư\u0309a Sô\u0309 Se\u0303 Tă\u0301t", text, Program.AppMain.YesNoNoti, "Tă\u0301t-Hu\u0309y") == 6)
		{
			TextWriter val = (TextWriter)new StreamWriter(pathData + "/Location.txt");
			Point location = ((Form)this).Location;
			val.WriteLine(((Point)(ref location)).X.ToString());
			location = ((Form)this).Location;
			val.WriteLine(((Point)(ref location)).Y.ToString());
			val.Close();
			Process[] processesByName2 = Process.GetProcessesByName("BMxTool");
			if (Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)processesByName2) > 1)
			{
				for (int j = 1; j < Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)processesByName2); j++)
				{
					processesByName2[j].Kill();
				}
			}
		}
		else
		{
			((CancelEventArgs)e).Cancel = true;
		}
	}

	private void button1_Click(object sender, EventArgs e)
	{
		if (Settings.Default.newProcess)
		{
			Process.Start(linkApp + "\\BMxTool.exe", "BMx_admin48_ATC");
			return;
		}
		AutoClick autoClick = new AutoClick();
		((Control)autoClick).Show();
	}

	private void button2_Click(object sender, EventArgs e)
	{
		if (Settings.Default.newProcess)
		{
			Process.Start(linkApp + "\\BMxTool.exe", "BMx_admin92_TI");
			return;
		}
		TienIch tienIch = new TienIch();
		((Control)tienIch).Show();
	}

	private void button4_Click(object sender, EventArgs e)
	{
	}

	private void button3_Click(object sender, EventArgs e)
	{
		CaiDat caiDat = new CaiDat();
		((Control)caiDat).Show();
	}

	private void button6_Click_1(object sender, EventArgs e)
	{
		if (Settings.Default.newProcess)
		{
			Process.Start(linkApp + "\\BMxTool.exe", "BMx_admin16_DVCT");
			return;
		}
		DoVuiCoThuong doVuiCoThuong = new DoVuiCoThuong();
		((Control)doVuiCoThuong).Show();
	}

	private void Login_KeyDown(object sender, KeyEventArgs e)
	{
		//IL_0002: Unknown result type (might be due to invalid IL or missing references)
		//IL_000c: Invalid comparison between Unknown and I4
		if ((int)e.KeyData == 131155)
		{
			CaiDat caiDat = new CaiDat();
			((Control)caiDat).Show();
		}
	}

	private void button7_Click_1(object sender, EventArgs e)
	{
		Process.Start(linkApp + "\\APPS\\ScreenRecorder\\ScreenRecorder.exe");
	}

	[AsyncStateMachine(typeof(_003Cbutton8_Click_003Ed__120))]
	[DebuggerStepThrough]
	private void button8_Click(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000c: Unknown result type (might be due to invalid IL or missing references)
		_003Cbutton8_Click_003Ed__120 _003Cbutton8_Click_003Ed__ = new _003Cbutton8_Click_003Ed__120();
		_003Cbutton8_Click_003Ed__._003C_003Et__builder = AsyncVoidMethodBuilder.Create();
		_003Cbutton8_Click_003Ed__._003C_003E4__this = this;
		_003Cbutton8_Click_003Ed__.sender = sender;
		_003Cbutton8_Click_003Ed__.e = e;
		_003Cbutton8_Click_003Ed__._003C_003E1__state = -1;
		((AsyncVoidMethodBuilder)(ref _003Cbutton8_Click_003Ed__._003C_003Et__builder)).Start<_003Cbutton8_Click_003Ed__120>(ref _003Cbutton8_Click_003Ed__);
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
			saveDataRealTime();
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

	private void loadFile(string url)
	{
		//IL_0051: Unknown result type (might be due to invalid IL or missing references)
		System.DateTime lastWriteTime = File.GetLastWriteTime(url);
		if (lastWriteTime.Year * 10000 + lastWriteTime.Month * 100 + lastWriteTime.Day < 20230416)
		{
			MessageBox.Show("Bản Lưu Thiết Lập " + ((Control)this).Text + " Đã Cũ Do Có Thay Đổi/Thêm Các Tùy Chọn.\r\nVui Lòng Lưu Lại Thiết Lập AutoLog!", "BMx-Tool: Daily", (MessageBoxButtons)0, (MessageBoxIcon)64);
			return;
		}
		int num = 0;
		string[] array = File.ReadAllLines(url);
		if (array[num].Trim() == "1")
		{
			checkBoxDapet.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxDapet.CheckState = (CheckState)0;
		}
		numericUpDownDaPet.Value = decimal.op_Implicit(int.Parse(array[++num].Trim()));
		if (array[++num].Trim() == "1")
		{
			checkBoxTrong.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxTrong.CheckState = (CheckState)0;
		}
		numericUpDownTrong.Value = decimal.op_Implicit(int.Parse(array[++num].Trim()));
		if (array[++num].Trim() == "1")
		{
			checkBoxThap.CheckState = (CheckState)1;
		}
		else
		{
			checkBoxThap.CheckState = (CheckState)0;
		}
		numericUpDownThap.Value = decimal.op_Implicit(int.Parse(array[++num].Trim()));
		for (num++; num < array.Length; num++)
		{
			string[] array2 = ((object)array[num]).ToString().Split('\t', (StringSplitOptions)0);
			string[] array3 = new string[array2.Length];
			for (int i = 0; i < array2.Length - 1; i++)
			{
				array3[i] = array2[i].Trim();
				if (i != 3)
				{
					continue;
				}
				string[] array4 = array3[i].Split(charSplitAutoLog, (StringSplitOptions)0);
				if (array4.Length == 1)
				{
					for (int j = 0; j < dataGridView1.RowCount; j++)
					{
						if (array3[i] == dataGridView1.Rows[j].Cells[1].Value.ToString())
						{
							array3[i] = dataGridView1.Rows[j].Cells[3].Value.ToString() + charSplitAutoLog + array2[i].Trim();
							break;
						}
					}
					continue;
				}
				for (int k = 0; k < dataGridView1.RowCount; k++)
				{
					if (array4[1] == dataGridView1.Rows[k].Cells[1].Value.ToString())
					{
						array3[i] = dataGridView1.Rows[k].Cells[3].Value.ToString() + charSplitAutoLog + array4[1].Trim();
						break;
					}
				}
			}
			try
			{
				DataGridViewRowCollection rows = dataGridView2.Rows;
				object[] array5 = array3;
				rows.Add(array5);
			}
			catch (System.Exception)
			{
			}
		}
		debugText("Bản Lưu Lúc " + lastWriteTime.ToString("g"));
	}

	private void buttonAL_add_Click(object sender, EventArgs e)
	{
		string[] array = new string[5] { "Daily", "Trừ Ma", "Đổi Năng Nổ", "Nothing!", "LogAcc" };
		string[] array2 = new string[7] { "Off", "BugOnl", "Nothing!", "Ha\u0301i-Trô\u0300ng-Câu", "Trồng-Nông Trại", "Câu Cá", "Hái Thuốc" };
		string[] array3 = new string[4] { ">>>", null, null, null };
		if (Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)array, ((Control)comboBoxJ).Text))
		{
			array3[1] = ((Control)comboBoxJ).Text;
		}
		else
		{
			array3[1] = "Lỗi - Job";
		}
		if (Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)array2, ((Control)comboBoxE).Text))
		{
			array3[2] = ((Control)comboBoxE).Text;
		}
		else
		{
			array3[2] = "Lỗi - End";
		}
		array3[3] = ((Control)comboBoxA).Text;
		for (int i = 0; i < dataGridView2.Rows.Count; i++)
		{
			string text = dataGridView2.Rows[i].Cells[3].Value.ToString();
			string text2 = dataGridView2.Rows[i].Cells[1].Value.ToString();
			if (array3[3].CompareTo(text) == 0 && array3[1].CompareTo(text2) == 0)
			{
				dataGridView2.Rows[i].Cells[0].Value = array3[0];
				dataGridView2.Rows[i].Cells[1].Value = array3[1];
				dataGridView2.Rows[i].Cells[2].Value = array3[2];
				dataGridView2.Rows[i].Cells[4].Value = numericUpDownNV.Value;
				dataGridView2.Rows[i].Cells[5].Value = numericUpDownKenh.Value;
				return;
			}
		}
		dataGridView2.Rows.Add(new object[6]
		{
			array3[0],
			array3[1],
			array3[2],
			array3[3],
			numericUpDownNV.Value,
			numericUpDownKenh.Value
		});
	}

	private void buttonAL_save_Click(object sender, EventArgs e)
	{
		//IL_0011: Unknown result type (might be due to invalid IL or missing references)
		//IL_0017: Expected O, but got Unknown
		//IL_0037: Unknown result type (might be due to invalid IL or missing references)
		//IL_003d: Expected O, but got Unknown
		TextWriter val = (TextWriter)new StreamWriter(pathData + "/BMxAutoLog.txt");
		TextWriter val2 = (TextWriter)new StreamWriter(pathData + "/AutoLog/" + ((Control)comboBoxS).Text + ".txt");
		if (checkBoxDapet.Checked)
		{
			val.WriteLine("1");
			val2.WriteLine("1");
		}
		else
		{
			val.WriteLine("0");
			val2.WriteLine("0");
		}
		val.WriteLine(numericUpDownDaPet.Value.ToString());
		val2.WriteLine(numericUpDownDaPet.Value.ToString());
		if (checkBoxTrong.Checked)
		{
			val.WriteLine("1");
			val2.WriteLine("1");
		}
		else
		{
			val.WriteLine("0");
			val2.WriteLine("0");
		}
		val.WriteLine(numericUpDownTrong.Value.ToString());
		val2.WriteLine(numericUpDownTrong.Value.ToString());
		if (checkBoxThap.Checked)
		{
			val.WriteLine("1");
			val2.WriteLine("1");
		}
		else
		{
			val.WriteLine("0");
			val2.WriteLine("0");
		}
		val.WriteLine(numericUpDownThap.Value.ToString());
		val2.WriteLine(numericUpDownThap.Value.ToString());
		for (int i = 0; i < dataGridView2.Rows.Count; i++)
		{
			for (int j = 0; j < dataGridView2.ColumnCount - 1; j++)
			{
				if (dataGridView2.Rows[i].Cells[j].Value == null)
				{
					val.Write(" ");
					val2.Write(" ");
				}
				else
				{
					val.Write(dataGridView2.Rows[i].Cells[j].Value.ToString() ?? "");
					val2.Write(dataGridView2.Rows[i].Cells[j].Value.ToString() ?? "");
				}
				val.Write("\t");
				val2.Write("\t");
			}
			val.WriteLine();
			val2.WriteLine();
		}
		val.Close();
		val2.Close();
		if (!comboBoxS.Items.Contains((object)((Control)comboBoxS).Text))
		{
			comboBoxS.Items.Add((object)((Control)comboBoxS).Text);
		}
		((Control)comboBoxS).Text = "Chọn Bản Lưu";
	}

	private void buttonAL_run_Click(object sender, EventArgs e)
	{
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0020: Invalid comparison between Unknown and I4
		if ((int)Program.AppMain.ThongBao(Program.AppMain.warnNoti, "Delete", "Xo\u0301a Toa\u0300n Bô\u0323 Ba\u0309ng", Program.AppMain.YesNoNoti) == 6)
		{
			dataGridView2.Rows.Clear();
		}
	}

	private void ButtonRunAuto_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		//IL_010f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0115: Invalid comparison between Unknown and I4
		//IL_0125: Unknown result type (might be due to invalid IL or missing references)
		//IL_0047: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e8: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f2: Expected O, but got Unknown
		//IL_0029: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_020c: Unknown result type (might be due to invalid IL or missing references)
		if ((int)ButtonRunAuto.CheckState == 1)
		{
			if (!Program.AppMain.isActive)
			{
				MessageBox.Show("Tính Năng Đã Khóa Hoặc Không Có Internet Để Kiểm Tra Thời Gian Hiện Tại\nNếu Do Kết Nối Internet Hãy Kết Nối Và Thử Lại Sau 1 Phút");
				ButtonRunAuto.CheckState = (CheckState)0;
				return;
			}
			((Control)ButtonRunAuto).BackColor = Color.Green;
			((Control)ButtonRunAuto).Text = "Dư\u0300ng AutoLog";
			((Control)checkBoxDapet).Enabled = false;
			((Control)numericUpDownDaPet).Enabled = false;
			((Control)buttonAL_add).Enabled = false;
			((Control)buttonAL_clear).Enabled = false;
			((Control)checkBoxTrong).Enabled = false;
			((Control)checkBoxThap).Enabled = false;
			((Control)numericUpDownThap).Enabled = false;
			((Control)numericUpDownTrong).Enabled = false;
			AutoLogDangChay = true;
			HenGioTatMay = false;
			IsStop = false;
			T_Click = new System.Threading.Tasks.Task((Action)([CompilerGenerated] () =>
			{
				//IL_0a76: Unknown result type (might be due to invalid IL or missing references)
				//IL_0aa2: Unknown result type (might be due to invalid IL or missing references)
				//IL_03aa: Unknown result type (might be due to invalid IL or missing references)
				//IL_03d6: Unknown result type (might be due to invalid IL or missing references)
				//IL_0d4e: Unknown result type (might be due to invalid IL or missing references)
				//IL_0d7a: Unknown result type (might be due to invalid IL or missing references)
				//IL_088c: Unknown result type (might be due to invalid IL or missing references)
				//IL_08b8: Unknown result type (might be due to invalid IL or missing references)
				//IL_1806: Unknown result type (might be due to invalid IL or missing references)
				//IL_0f2f: Unknown result type (might be due to invalid IL or missing references)
				//IL_0f5b: Unknown result type (might be due to invalid IL or missing references)
				//IL_12ad: Unknown result type (might be due to invalid IL or missing references)
				//IL_12d9: Unknown result type (might be due to invalid IL or missing references)
				//IL_15aa: Unknown result type (might be due to invalid IL or missing references)
				//IL_15d6: Unknown result type (might be due to invalid IL or missing references)
				//IL_142d: Unknown result type (might be due to invalid IL or missing references)
				//IL_1459: Unknown result type (might be due to invalid IL or missing references)
				//IL_112e: Unknown result type (might be due to invalid IL or missing references)
				//IL_115a: Unknown result type (might be due to invalid IL or missing references)
				//IL_16cc: Unknown result type (might be due to invalid IL or missing references)
				//IL_16f8: Unknown result type (might be due to invalid IL or missing references)
				while (true)
				{
					int rowCount = dataGridView2.RowCount;
					if (rowCount == 0)
					{
						break;
					}
					if (checkBoxS_now.Checked)
					{
						isRun = true;
					}
					else
					{
						hour_Run = (int)numericUpDownS_h.Value;
						minute_Run = (int)numericUpDownS_m.Value;
						isRun = false;
						debugText("Chạy lúc : " + hour_Run.ToString("D2") + ":" + minute_Run.ToString("D2"));
						while (!isRun)
						{
							delay_100ms(300);
						}
					}
					debugText("runAutoLog");
					checkFlash();
					while (true)
					{
						if (IsStop)
						{
							return;
						}
						if (!checkBox5.Checked)
						{
							string[] array = new string[rowCount];
							for (int i = 0; i < rowCount; i++)
							{
								tabControl1.SelectTab(0);
								delay_100ms(5);
								if (dataGridView2.Rows[i].Cells[0].Value.ToString().ToUpper() != "SKIP")
								{
									string text = dataGridView2.Rows[i].Cells[1].Value.ToString();
									if (text.ToUpper() != "NOTHING!")
									{
										for (int j = 0; j < dataGridView1.RowCount; j++)
										{
											if (dataGridView2.Rows[i].Cells[3].Value.ToString().Split(charSplitAutoLog, (StringSplitOptions)0)[1] == dataGridView1.Rows[j].Cells[1].Value.ToString())
											{
												try
												{
													array[i] = dataGridView1.Rows[j].Cells[3].Value.ToString();
												}
												catch (System.Exception)
												{
													throw;
												}
												break;
											}
										}
									}
								}
							}
							Process[] processesByName = Process.GetProcessesByName("BMxTool");
							if (Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)processesByName) > 1)
							{
								for (int k = 1; k < Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)processesByName); k++)
								{
									if (processesByName[k].MainWindowTitle != ((Control)this).Text)
									{
										for (int l = 0; l < rowCount; l++)
										{
											if (processesByName[k].MainWindowTitle.Contains(array[l]))
											{
												processesByName[k].Kill();
											}
										}
									}
								}
							}
						}
						if (Settings.Default.newProcess)
						{
							Turn = 0;
							accRun = 0;
							listAccRun = "";
							listAccRun = "";
							accRunMax = Settings.Default.accAutoLog;
							if (accRunMax > rowCount)
							{
								accRunMax = rowCount;
							}
							for (int m = 0; m < rowCount; m++)
							{
								((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.BackColor = TableThemeColor.SelectionBackColor;
								((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.ForeColor = TableThemeColor.SelectionForeColor;
								int num2 = 0;
								tabControl1.SelectTab(0);
								delay_100ms(5);
								if (dataGridView2.Rows[Turn].Cells[0].Value.ToString().ToUpper() != "SKIP")
								{
									string text2 = dataGridView2.Rows[Turn].Cells[1].Value.ToString();
									if (text2.ToUpper() != "NOTHING!")
									{
										for (int n = 0; n < dataGridView1.RowCount; n++)
										{
											if (dataGridView2.Rows[Turn].Cells[3].Value.ToString().Split(charSplitAutoLog, (StringSplitOptions)0)[1] == dataGridView1.Rows[n].Cells[1].Value.ToString())
											{
												num2 = n;
												break;
											}
										}
										bool vaoLaiGame = false;
										if (checkBoxReOn.Checked)
										{
											vaoLaiGame = true;
										}
										bool dangNhapLai = false;
										if (checkBoxRelog.Checked)
										{
											dangNhapLai = true;
										}
										if (checkBox5.Checked)
										{
											Process[] processesByName2 = Process.GetProcessesByName("BMxTool");
											if (Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)processesByName2) > 1)
											{
												for (int num3 = 1; num3 < Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)processesByName2); num3++)
												{
													if (processesByName2[num3].MainWindowTitle != ((Control)this).Text && processesByName2[num3].MainWindowTitle.Contains(dataGridView1.Rows[num2].Cells[3].Value.ToString()))
													{
														processesByName2[num3].Kill();
													}
												}
											}
										}
										if (text2 == "LogAcc")
										{
											AutoLogAndRun(num2, "Autolog-Log", dataGridView2.Rows[Turn].Cells[2].Value.ToString(), "Không", vaoLaiGame, dangNhapLai, "AL-Daily", themVaoChuoi: true);
										}
										else
										{
											AutoLogAndRun(num2, text2, dataGridView2.Rows[Turn].Cells[2].Value.ToString(), "Không", vaoLaiGame, dangNhapLai, "AL-Daily", themVaoChuoi: true);
										}
										accRun++;
										if (accRun == accRunMax)
										{
											while (KiemTraChuoi() == "wait")
											{
												debugAutoLog(listAccRun);
												delay_100ms(30);
											}
											accRun--;
											int row = 0;
											for (int num4 = 0; num4 < dataGridView1.RowCount; num4++)
											{
												if (dataGridView2.Rows[accEnd].Cells[3].Value.ToString().Split(charSplitAutoLog, (StringSplitOptions)0)[1] == dataGridView1.Rows[num4].Cells[1].Value.ToString())
												{
													row = num4;
													break;
												}
											}
											runEnd(row, dataGridView2.Rows[accEnd].Cells[2].Value.ToString());
											delay_100ms(30);
										}
									}
								}
								if (m == 0)
								{
									if (checkBoxDapet.Checked)
									{
										daPet = true;
									}
									else
									{
										daPet = false;
									}
									if (checkBoxTrong.Checked)
									{
										trongTrangVien = true;
									}
									else
									{
										trongTrangVien = false;
									}
									if (checkBoxThap.Checked)
									{
										tuThap = true;
									}
									else
									{
										tuThap = false;
									}
								}
								((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.BackColor = TableThemeColor.BackColor;
								((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.ForeColor = TableThemeColor.ForeColor;
								Turn++;
								delay_100ms(5);
							}
							string text3;
							while (true)
							{
								text3 = KiemTraChuoi();
								debugAutoLog(listAccRun);
								debugAutoLog(text3);
								if (!(text3 == "wait") && !(text3 == "next"))
								{
									break;
								}
								delay_100ms(30);
							}
							if (text3 == "null" && accEnd >= 0)
							{
								int row2 = 0;
								for (int num5 = 0; num5 < dataGridView1.RowCount; num5++)
								{
									if (dataGridView2.Rows[accEnd].Cells[3].Value.ToString().Split(charSplitAutoLog, (StringSplitOptions)0)[1] == dataGridView1.Rows[num5].Cells[1].Value.ToString())
									{
										row2 = num5;
										break;
									}
								}
								runEnd(row2, dataGridView2.Rows[accEnd].Cells[2].Value.ToString());
								delay_100ms(30);
							}
						}
						else
						{
							Turn = 0;
							for (int num6 = 0; num6 < rowCount; num6++)
							{
								((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.BackColor = TableThemeColor.SelectionBackColor;
								((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.ForeColor = TableThemeColor.SelectionForeColor;
								int row3 = 0;
								tabControl1.SelectTab(0);
								delay_100ms(5);
								if (dataGridView2.Rows[Turn].Cells[0].Value.ToString().ToUpper() != "SKIP")
								{
									string text4 = dataGridView2.Rows[Turn].Cells[1].Value.ToString();
									if (text4.ToUpper() != "NOTHING!")
									{
										for (int num7 = 0; num7 < dataGridView1.RowCount; num7++)
										{
											if (dataGridView2.Rows[Turn].Cells[3].Value.ToString().Split(charSplitAutoLog, (StringSplitOptions)0)[1] == dataGridView1.Rows[num7].Cells[1].Value.ToString())
											{
												row3 = num7;
												break;
											}
										}
										while (!Auto_LogAcc(row3))
										{
										}
										string text5 = text4;
										string text6 = text5;
										if (!(text6 == "Daily"))
										{
											if (!(text6 == "Trừ Ma"))
											{
												if (text6 == "Đổi Năng Nổ")
												{
													while (!openNangNo(row3))
													{
													}
												}
											}
											else
											{
												while (!openTruMa(row3))
												{
												}
											}
										}
										else
										{
											while (!openDaily(row3, onlyTrong: false, process: false))
											{
											}
										}
										runEnd(row3, dataGridView2.Rows[Turn].Cells[2].Value.ToString());
									}
								}
								if (num6 == 0)
								{
									if (checkBoxDapet.Checked)
									{
										daPet = true;
									}
									else
									{
										daPet = false;
									}
									if (checkBoxTrong.Checked)
									{
										trongTrangVien = true;
									}
									else
									{
										trongTrangVien = false;
									}
									if (checkBoxThap.Checked)
									{
										tuThap = true;
									}
									else
									{
										tuThap = false;
									}
								}
								((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.BackColor = TableThemeColor.BackColor;
								((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.ForeColor = TableThemeColor.ForeColor;
								Turn++;
								delay_100ms(5);
							}
						}
						bool affterJob = true;
						int num8 = 0;
						int num9 = 0;
						debugText("Check đá pet hay không ?");
						delay_100ms(5);
						if (checkBoxDapet.Checked)
						{
							num8 = (int)numericUpDownDaPet.Value;
						}
						if (checkBoxThap.Checked)
						{
							num9 = (int)numericUpDownThap.Value;
						}
						while (checkBoxDapet.Checked || checkBoxTrong.Checked || checkBoxThap.Checked)
						{
							bool flag = false;
							bool flag2 = false;
							if (trongTrangVien_Run)
							{
								flag = true;
							}
							if (num8 > 0 && daPet_Run)
							{
								Turn = 0;
								flag2 = tuThap_Run;
								for (int num10 = 0; num10 < rowCount; num10++)
								{
									int row4 = 0;
									tabControl1.SelectTab(0);
									for (int num11 = 0; num11 < dataGridView1.RowCount; num11++)
									{
										if (dataGridView2.Rows[Turn].Cells[3].Value.ToString().Split(charSplitAutoLog, (StringSplitOptions)0)[1] == dataGridView1.Rows[num11].Cells[1].Value.ToString())
										{
											row4 = num11;
											break;
										}
									}
									((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.BackColor = TableThemeColor.SelectionBackColor;
									((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.ForeColor = TableThemeColor.SelectionForeColor;
									if (!(dataGridView2.Rows[Turn].Cells[0].Value.ToString() != ">>>") || !(dataGridView2.Rows[Turn].Cells[0].Value.ToString().ToUpper() != "SKIP"))
									{
										while (!Auto_LogAcc(row4, affterJob))
										{
										}
										while (!openDaPet(row4))
										{
										}
										if (num9 > 0 && flag2)
										{
											PressKey("ESC");
											TuThap();
											PressKey("ESC");
										}
										if (flag)
										{
											while (!openDaily(row4, onlyTrong: true, process: false))
											{
											}
											if (num10 == 0)
											{
												countTimer2 = 0;
												trongTrangVien = true;
												trongTrangVien_Run = false;
											}
										}
										accEnd = Turn;
										runEnd(row4, dataGridView2.Rows[Turn].Cells[2].Value.ToString());
									}
									if (num10 == 0)
									{
										daPet_Run = false;
										countTimer = 0;
										daPet = true;
										if (checkBoxThap.Checked)
										{
											countTimer3 = 0;
											tuThap = true;
											tuThap_Run = false;
										}
									}
									((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.BackColor = TableThemeColor.BackColor;
									((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.ForeColor = TableThemeColor.ForeColor;
									Turn++;
									delay_100ms(10);
								}
								num8--;
								if (checkBoxThap.Checked && num9 > 0)
								{
									num9--;
								}
							}
							else if (flag)
							{
								Turn = 0;
								flag2 = tuThap_Run;
								for (int num12 = 0; num12 < rowCount; num12++)
								{
									int row5 = 0;
									tabControl1.SelectTab(0);
									for (int num13 = 0; num13 < dataGridView1.RowCount; num13++)
									{
										if (dataGridView2.Rows[Turn].Cells[3].Value.ToString().Split(charSplitAutoLog, (StringSplitOptions)0)[1] == dataGridView1.Rows[num13].Cells[1].Value.ToString())
										{
											row5 = num13;
											break;
										}
									}
									((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.BackColor = TableThemeColor.SelectionBackColor;
									((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.ForeColor = TableThemeColor.SelectionForeColor;
									if (!(dataGridView2.Rows[Turn].Cells[0].Value.ToString() != ">>>"))
									{
										while (!Auto_LogAcc(row5, affterJob))
										{
										}
										while (!openDaily(row5, onlyTrong: true, process: false))
										{
										}
										if (num9 > 0 && flag2)
										{
											PressKey("ESC");
											TuThap();
											PressKey("ESC");
										}
										accEnd = Turn;
										runEnd(row5, dataGridView2.Rows[Turn].Cells[2].Value.ToString());
									}
									if (num12 == 0)
									{
										trongTrangVien_Run = false;
										countTimer2 = 0;
										trongTrangVien = true;
										if (checkBoxThap.Checked)
										{
											countTimer3 = 0;
											tuThap = true;
											tuThap_Run = false;
										}
									}
									((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.BackColor = TableThemeColor.BackColor;
									((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.ForeColor = TableThemeColor.ForeColor;
									delay_100ms(10);
									Turn++;
								}
								if (checkBoxThap.Checked && num9 > 0)
								{
									num9--;
								}
							}
							else if (num9 > 0 && tuThap_Run)
							{
								Turn = 0;
								for (int num14 = 0; num14 < rowCount; num14++)
								{
									int row6 = 0;
									tabControl1.SelectTab(0);
									for (int num15 = 0; num15 < dataGridView1.RowCount; num15++)
									{
										if (dataGridView2.Rows[Turn].Cells[3].Value.ToString().Split(charSplitAutoLog, (StringSplitOptions)0)[1] == dataGridView1.Rows[num15].Cells[1].Value.ToString())
										{
											row6 = num15;
											break;
										}
									}
									((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.BackColor = TableThemeColor.SelectionBackColor;
									((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.ForeColor = TableThemeColor.SelectionForeColor;
									if (!(dataGridView2.Rows[Turn].Cells[0].Value.ToString() != ">>>"))
									{
										while (!Auto_LogAcc(row6, affterJob))
										{
										}
										while (!TuThap())
										{
										}
										accEnd = Turn;
										runEnd(row6, dataGridView2.Rows[Turn].Cells[2].Value.ToString());
									}
									if (num14 == 0)
									{
										countTimer3 = 0;
										tuThap = true;
										tuThap_Run = false;
									}
									((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.BackColor = TableThemeColor.BackColor;
									((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.ForeColor = TableThemeColor.ForeColor;
									delay_100ms(10);
									Turn++;
								}
								num9--;
							}
							else if (num9 == 0 && num8 == 0 && !checkBoxTrong.Checked)
							{
								break;
							}
							debugText(string.Concat(new string[6]
							{
								"Pet: ",
								num8.ToString(),
								" Tháp: ",
								num9.ToString(),
								" Trồng: ",
								flag.ToString()
							}));
							delay_100ms(100);
						}
						if (checkBoxShuwdown_at.Checked)
						{
							debugText("Đơ\u0323i Tă\u0301t Ma\u0301y!");
							((Control)ButtonRunAuto).BackColor = Color.Teal;
							while (!HenGioTatMay)
							{
							}
							TatHetToolDangMo();
						}
						if (checkBox7.Checked)
						{
							TatHetToolDangMoBangAutoLog(rowCount);
							for (int num16 = 0; num16 < rowCount; num16++)
							{
								for (int num17 = 0; num17 < dataGridView1.RowCount; num17++)
								{
									if (dataGridView2.Rows[num16].Cells[3].Value.ToString().Split(charSplitAutoLog, (StringSplitOptions)0)[1] == dataGridView1.Rows[num17].Cells[1].Value.ToString())
									{
										accEnd = num16;
										runEnd(num17, "BugOnl");
										break;
									}
								}
							}
						}
						else if (checkBox6.Checked)
						{
							TatHetToolDangMoBangAutoLog(rowCount);
							for (int num18 = 0; num18 < rowCount; num18++)
							{
								for (int num19 = 0; num19 < dataGridView1.RowCount; num19++)
								{
									if (dataGridView2.Rows[num18].Cells[3].Value.ToString().Split(charSplitAutoLog, (StringSplitOptions)0)[1] == dataGridView1.Rows[num19].Cells[1].Value.ToString())
									{
										accEnd = num18;
										runEnd(num19, "Off");
										break;
									}
								}
							}
						}
						if (checkBoxShuwdown_at.Checked)
						{
							TatHetFlashDangMo();
							IsStop = true;
							ButtonRunAuto.CheckState = (CheckState)0;
							debugText("Tắt Máy sau 90s");
							Process.Start("Shutdown", "-s -t 90");
							Program.AppMain.IsOff = true;
							((Form)this).Close();
						}
						else if (checkBoxShuwdown.Checked)
						{
							debugText("Hoàn Tất AutoLog");
							IsStop = true;
							ButtonRunAuto.CheckState = (CheckState)0;
							debugText("Tắt Máy Sau 5 Phút");
							Process.Start("Shutdown", "-s -t 300");
							delay_100ms(10);
							Program.AppMain.IsOff = true;
							TatHetFlashDangMo();
							((Form)this).Close();
						}
						else
						{
							if (checkBoxS_at.Checked)
							{
								break;
							}
							debugText("Hoàn Tất AutoLog");
							IsStop = true;
							ButtonRunAuto.CheckState = (CheckState)0;
						}
					}
					debugText("Hoàn Tất AutoLog > Recheck");
					IsStop = false;
					isRun = false;
				}
				debugText("Không Có Thông Tin Thiết Lập");
			}));
			T_Click.Start();
		}
		else if ((int)ButtonRunAuto.CheckState == 0)
		{
			((Control)ButtonRunAuto).BackColor = Control.DefaultBackColor;
			((Control)ButtonRunAuto).Text = "Cha\u0323y AutoLog";
			((Control)checkBoxDapet).Enabled = true;
			((Control)numericUpDownDaPet).Enabled = true;
			((Control)buttonAL_add).Enabled = true;
			((Control)buttonAL_clear).Enabled = true;
			((Control)checkBoxTrong).Enabled = true;
			((Control)checkBoxThap).Enabled = true;
			((Control)numericUpDownThap).Enabled = true;
			((Control)checkBoxShuwdown).Enabled = true;
			((Control)numericUpDownTrong).Enabled = true;
			AutoLogDangChay = false;
			IsStop = true;
			for (int num = 0; num < dataGridView2.RowCount; num++)
			{
				((DataGridViewBand)dataGridView2.Rows[num]).DefaultCellStyle.BackColor = TableThemeColor.BackColor;
				((DataGridViewBand)dataGridView2.Rows[num]).DefaultCellStyle.ForeColor = TableThemeColor.ForeColor;
			}
		}
	}

	private void dataGridView2_CellContentClick(object sender, DataGridViewCellEventArgs e)
	{
		//IL_0002: Unknown result type (might be due to invalid IL or missing references)
		//IL_0008: Expected O, but got Unknown
		//IL_006c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0072: Invalid comparison between Unknown and I4
		//IL_00b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0108: Unknown result type (might be due to invalid IL or missing references)
		DataGridView val = (DataGridView)sender;
		string name = val.Columns[e.ColumnIndex].Name;
		string text = name;
		if (!(text == "Del"))
		{
			if (!(text == "auto_Log"))
			{
				if (!(text == "Run"))
				{
					return;
				}
				if (!Program.AppMain.isActive)
				{
					MessageBox.Show("Tính Năng Đã Khóa Hoặc Không Có Internet Để Kiểm Tra Thời Gian Hiện Tại\nNếu Do Kết Nối Internet Hãy Kết Nối Và Thử Lại Sau 1 Phút");
					return;
				}
				int row = 0;
				Turn = ((DataGridViewBand)dataGridView2.CurrentRow).Index;
				for (int i = 0; i < dataGridView1.RowCount; i++)
				{
					if (dataGridView2.CurrentRow.Cells[3].Value.ToString().Split(charSplitAutoLog, (StringSplitOptions)0)[1] == dataGridView1.Rows[i].Cells[1].Value.ToString())
					{
						row = i;
						break;
					}
				}
				AutoLogAndRun(row, dataGridView2.CurrentRow.Cells[1].Value.ToString(), dataGridView2.CurrentRow.Cells[2].Value.ToString(), "Không", vaoLaiGame: false, dangNhapLai: false, "AL-Daily");
			}
			else
			{
				AutoLogAndRun2(((DataGridViewBand)dataGridView2.CurrentRow).Index);
			}
		}
		else if ((int)Program.AppMain.ThongBao(Program.AppMain.warnNoti, "Delete", "Chắc chắn Xóa ?", Program.AppMain.YesNoNoti) == 6)
		{
			dataGridView2.Rows.RemoveAt(((DataGridViewBand)dataGridView2.CurrentRow).Index);
			Program.AppMain.ThongBao(Program.AppMain.inforNoti, "Delete", "Xong");
		}
	}

	private bool Auto_LogAcc(int row, bool AffterJob = false, bool onlyLog = false)
	{
		//IL_04e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0400: Unknown result type (might be due to invalid IL or missing references)
		//IL_0405: Unknown result type (might be due to invalid IL or missing references)
		//IL_0410: Unknown result type (might be due to invalid IL or missing references)
		//IL_0415: Unknown result type (might be due to invalid IL or missing references)
		//IL_0680: Unknown result type (might be due to invalid IL or missing references)
		bool flag = false;
		string text = "xx";
		string text2 = "xxx";
		string text3 = "xxx";
		string text4 = "goid";
		string text5 = "xxx";
		string text6 = "xxx";
		text = dataGridView1.Rows[row].Cells[0].Value.ToString();
		text5 = dataGridView1.Rows[row].Cells[1].Value.ToString();
		text4 = dataGridView1.Rows[row].Cells[2].Value.ToString();
		if (text4 == "Go")
		{
			text2 = text5 + "@goid";
		}
		else if (text4 == "VTC")
		{
			text2 = text5;
		}
		text6 = dataGridView1.Rows[row].Cells[3].Value.ToString();
		string text7 = "";
		text7 = (Settings.Default.nameStyle ? (text6 + " " + text) : (text + "." + text6));
		if (onlyLog)
		{
			if (!CheckHandleWindows(text7))
			{
				string[] array = File.ReadAllLines(pathData + "/" + text2 + ".txt");
				text3 = array[0].Trim();
				link = string.Concat(new string[9]
				{
					Program.AppMain.link1,
					text,
					Program.AppMain.link2,
					text2,
					Program.AppMain.link3,
					text3,
					Program.AppMain.link4,
					Program.AppMain.link5,
					Program.AppMain.link6
				});
				logAcc(text7, link);
			}
			return true;
		}
		if (!CheckHandleWindows(text7))
		{
			string[] array2 = File.ReadAllLines(pathData + "/" + text2 + ".txt");
			text3 = array2[0].Trim();
			link = string.Concat(new string[9]
			{
				Program.AppMain.link1,
				text,
				Program.AppMain.link2,
				text2,
				Program.AppMain.link3,
				text3,
				Program.AppMain.link4,
				Program.AppMain.link5,
				Program.AppMain.link6
			});
			logAcc(text7, link);
			hWnd = FindWindowHandle(null, text7);
		}
		else
		{
			if (relogAccCheck)
			{
				relogAccCheck = false;
				hWnd = FindWindowHandle(null, text7);
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
			if (!checkBoxReOn.Checked || AffterJob)
			{
				hWnd = FindWindowHandle(null, text7);
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
				delay_100ms(5, onlyLog: true);
				return true;
			}
			hWnd = FindWindowHandle(null, text7);
			GetWindowThreadProcessId(hWnd, out processID);
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
		int num = 0;
		if (!flag)
		{
			debugText("tải game");
			while (!FindPoint(hWnd, pathKhac + "/Log_iconVPT.png").HasValue)
			{
				num++;
				if (num >= 100)
				{
					return false;
				}
				delay_100ms(30);
				hWnd = FindWindowHandle(null, text7);
			}
		}
		debugText("đang đăng nhập");
		delay_100ms(30);
		num = 0;
		while (!reConnect(Turn, flag))
		{
			num++;
			if (num >= 5)
			{
				return false;
			}
			debugText("kết nối - " + num);
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
		delay_100ms(5);
		return true;
	}

	private bool Check_LogAcc(int row)
	{
		bool flag = false;
		string text = "xx";
		string text2 = "xxx";
		string text3 = "xxx";
		string text4 = "goid";
		string text5 = "xxx";
		string text6 = "xxx";
		text = dataGridView1.Rows[row].Cells[0].Value.ToString();
		text5 = dataGridView1.Rows[row].Cells[1].Value.ToString();
		text4 = dataGridView1.Rows[row].Cells[2].Value.ToString();
		if (text4 == "Go")
		{
			text2 = text5 + "@goid";
		}
		else if (text4 == "VTC")
		{
			text2 = text5;
		}
		text6 = dataGridView1.Rows[row].Cells[3].Value.ToString();
		string text7 = "";
		text7 = (Settings.Default.nameStyle ? (text6 + " " + text) : (text + "." + text6));
		if (CheckHandleWindows(text7))
		{
			return true;
		}
		return false;
	}

	private bool reConnect(int row, bool VaoLaiGame = false)
	{
		//IL_010d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0114: Expected O, but got Unknown
		//IL_016f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0174: Unknown result type (might be due to invalid IL or missing references)
		//IL_018b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0190: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c9: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_0223: Unknown result type (might be due to invalid IL or missing references)
		//IL_0228: Unknown result type (might be due to invalid IL or missing references)
		//IL_023f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0244: Unknown result type (might be due to invalid IL or missing references)
		//IL_027d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0282: Unknown result type (might be due to invalid IL or missing references)
		//IL_0299: Unknown result type (might be due to invalid IL or missing references)
		//IL_029e: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d7: Unknown result type (might be due to invalid IL or missing references)
		//IL_02dc: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0331: Unknown result type (might be due to invalid IL or missing references)
		//IL_0336: Unknown result type (might be due to invalid IL or missing references)
		//IL_034d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0352: Unknown result type (might be due to invalid IL or missing references)
		//IL_038b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0390: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ac: Unknown result type (might be due to invalid IL or missing references)
		//IL_03e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_03ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_0401: Unknown result type (might be due to invalid IL or missing references)
		//IL_0406: Unknown result type (might be due to invalid IL or missing references)
		//IL_0592: Unknown result type (might be due to invalid IL or missing references)
		//IL_0597: Unknown result type (might be due to invalid IL or missing references)
		//IL_05a5: Unknown result type (might be due to invalid IL or missing references)
		//IL_05aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_05c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_05cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_05d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_05de: Unknown result type (might be due to invalid IL or missing references)
		//IL_04e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_04ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_04f8: Unknown result type (might be due to invalid IL or missing references)
		//IL_04fd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0519: Unknown result type (might be due to invalid IL or missing references)
		//IL_051e: Unknown result type (might be due to invalid IL or missing references)
		//IL_052c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0531: Unknown result type (might be due to invalid IL or missing references)
		//IL_043c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0441: Unknown result type (might be due to invalid IL or missing references)
		//IL_0458: Unknown result type (might be due to invalid IL or missing references)
		//IL_045d: Unknown result type (might be due to invalid IL or missing references)
		//IL_09d5: Unknown result type (might be due to invalid IL or missing references)
		//IL_09da: Unknown result type (might be due to invalid IL or missing references)
		//IL_09e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_09ea: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d00: Unknown result type (might be due to invalid IL or missing references)
		//IL_0d30: Unknown result type (might be due to invalid IL or missing references)
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
				num = int.Parse(dataGridView2.Rows[row].Cells[5].Value.ToString());
			}
			catch (System.Exception)
			{
				Random val2 = new Random();
				num = val2.Next(1, 8);
			}
			if (val.HasValue)
			{
				switch (num)
				{
				case 1:
				{
					System.IntPtr intPtr9 = hWnd;
					value = val.Value;
					int num10 = ((Point)(ref value)).X - 622 + 530;
					value = val.Value;
					AutoControl.SendClickOnPosition(intPtr9, num10, ((Point)(ref value)).Y - 227 + 268 - 30, (EMouseKey)0, 1);
					debugText("Kênh 1");
					break;
				}
				case 2:
				{
					System.IntPtr intPtr8 = hWnd;
					value = val.Value;
					int num9 = ((Point)(ref value)).X - 622 + 530;
					value = val.Value;
					AutoControl.SendClickOnPosition(intPtr8, num9, ((Point)(ref value)).Y - 227 + 301 - 30, (EMouseKey)0, 1);
					debugText("Kênh 2");
					break;
				}
				case 3:
				{
					System.IntPtr intPtr7 = hWnd;
					value = val.Value;
					int num8 = ((Point)(ref value)).X - 622 + 530;
					value = val.Value;
					AutoControl.SendClickOnPosition(intPtr7, num8, ((Point)(ref value)).Y - 227 + 336 - 30, (EMouseKey)0, 1);
					debugText("Kênh 3");
					break;
				}
				case 4:
				{
					System.IntPtr intPtr6 = hWnd;
					value = val.Value;
					int num7 = ((Point)(ref value)).X - 622 + 530;
					value = val.Value;
					AutoControl.SendClickOnPosition(intPtr6, num7, ((Point)(ref value)).Y - 227 + 370 - 30, (EMouseKey)0, 1);
					debugText("Kênh 4");
					break;
				}
				case 5:
				{
					System.IntPtr intPtr5 = hWnd;
					value = val.Value;
					int num6 = ((Point)(ref value)).X - 622 + 530;
					value = val.Value;
					AutoControl.SendClickOnPosition(intPtr5, num6, ((Point)(ref value)).Y - 227 + 404 - 30, (EMouseKey)0, 1);
					debugText("Kênh 5");
					break;
				}
				case 6:
				{
					System.IntPtr intPtr4 = hWnd;
					value = val.Value;
					int num5 = ((Point)(ref value)).X - 622 + 530;
					value = val.Value;
					AutoControl.SendClickOnPosition(intPtr4, num5, ((Point)(ref value)).Y - 227 + 438 - 30, (EMouseKey)0, 1);
					debugText("Kênh 6");
					break;
				}
				case 7:
				{
					System.IntPtr intPtr3 = hWnd;
					value = val.Value;
					int num4 = ((Point)(ref value)).X - 622 + 530;
					value = val.Value;
					AutoControl.SendClickOnPosition(intPtr3, num4, ((Point)(ref value)).Y - 227 + 471 - 30, (EMouseKey)0, 1);
					debugText("Kênh 7");
					break;
				}
				case 8:
				{
					System.IntPtr intPtr2 = hWnd;
					value = val.Value;
					int num3 = ((Point)(ref value)).X - 622 + 530;
					value = val.Value;
					AutoControl.SendClickOnPosition(intPtr2, num3, ((Point)(ref value)).Y - 227 + 506 - 30, (EMouseKey)0, 1);
					debugText("Kênh 8");
					break;
				}
				default:
				{
					System.IntPtr intPtr = hWnd;
					value = val.Value;
					int num2 = ((Point)(ref value)).X - 622 + 530;
					value = val.Value;
					AutoControl.SendClickOnPosition(intPtr, num2, ((Point)(ref value)).Y - 227 + 268 - 30, (EMouseKey)0, 1);
					debugText("lỗi");
					break;
				}
				}
				delay_100ms(50);
			}
			if (Settings.Default.logAutoLog)
			{
				Point? val3 = FindAndClick(hWnd, pathKhac + "/Log_BatBuoc.png", 2, 2, "Log - bắt buộc");
				if (val3.HasValue)
				{
					System.IntPtr intPtr10 = hWnd;
					value = val3.Value;
					int num11 = ((Point)(ref value)).X - 50;
					value = val3.Value;
					AutoControl.SendClickOnPosition(intPtr10, num11, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
					System.IntPtr intPtr11 = hWnd;
					value = val3.Value;
					int num12 = ((Point)(ref value)).X - 50;
					value = val3.Value;
					AutoControl.SendClickOnPosition(intPtr11, num12, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
					delay_100ms(50);
				}
			}
			else
			{
				Point? val4 = FindAndClick(hWnd, pathKhac + "/Log_BatDau.png", 2, 2, "Log - bắt đâ\u0300u");
				if (val4.HasValue)
				{
					System.IntPtr intPtr12 = hWnd;
					value = val4.Value;
					int num13 = ((Point)(ref value)).X - 50;
					value = val4.Value;
					AutoControl.SendClickOnPosition(intPtr12, num13, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
					System.IntPtr intPtr13 = hWnd;
					value = val4.Value;
					int num14 = ((Point)(ref value)).X - 50;
					value = val4.Value;
					AutoControl.SendClickOnPosition(intPtr13, num14, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
					delay_100ms(50);
				}
			}
		}
		if (FindPoint(hWnd, pathKhac + "/Log_QuayLai.png").HasValue)
		{
			Point? val5;
			do
			{
				delay_100ms(10);
				switch (int.Parse(dataGridView2.Rows[row].Cells[4].Value.ToString()))
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
				val5 = FindPoint(hWnd, pathKhac + "/Log_VaoGame.png");
			}
			while (!val5.HasValue);
			System.IntPtr intPtr14 = hWnd;
			value = val5.Value;
			int x = ((Point)(ref value)).X;
			value = val5.Value;
			AutoControl.SendClickOnPosition(intPtr14, x, ((Point)(ref value)).Y - 30, (EMouseKey)0, 1);
			int num15 = 0;
			while (!FindPoint(hWnd, pathMaps + "/map.png").HasValue)
			{
				num15++;
				if (num15 >= 25 || FindPoint(hWnd, pathKhac + "/Log_RatTot.png").HasValue || FindPoint(hWnd, pathKhac + "/Log_BinhThuong.png").HasValue || FindPoint(hWnd, pathKhac + "/Log_Tot.png").HasValue)
				{
					break;
				}
				debugText("chơ\u0300 vào game1 - " + num15);
				delay_100ms(2);
			}
			num15 = 0;
			delay_100ms(10);
			while (!FindPoint(hWnd, pathMaps + "/map.png").HasValue)
			{
				num15++;
				if (num15 >= 25 || FindPoint(hWnd, pathKhac + "/Log_RatTot.png").HasValue || FindPoint(hWnd, pathKhac + "/Log_BinhThuong.png").HasValue || FindPoint(hWnd, pathKhac + "/Log_Tot.png").HasValue)
				{
					break;
				}
				debugText("chơ\u0300 vào game2 - " + num15);
				delay_100ms(2);
			}
			num15 = 0;
			delay_100ms(10);
			while (!FindPoint(hWnd, pathKhac + "/Log_RatTot.png").HasValue && !FindPoint(hWnd, pathKhac + "/Log_BinhThuong.png").HasValue && !FindPoint(hWnd, pathKhac + "/Log_Tot.png").HasValue)
			{
				num15++;
				if (num15 >= 25)
				{
					relogAccCheck = true;
					return false;
				}
				debugText("check vào game - " + num15);
				delay_100ms(30);
			}
			num15 = 0;
			GetWindowThreadProcessId(hWnd, out processID);
			while (true)
			{
				PressKey("ESC");
				PressKey("ESC");
				Image val6 = CaptureHelper.CaptureWindow(hWnd);
				Rectangle val7 = default(Rectangle);
				((Rectangle)(ref val7)).X = 100;
				((Rectangle)(ref val7)).Y = 100;
				((Rectangle)(ref val7)).Width = 100;
				((Rectangle)(ref val7)).Height = 50;
				Bitmap val8 = CaptureHelper.CropImage(val6, val7);
				Bitmap image = ImageScanOpenCV.GetImage(pathKhac + "/checklog.png");
				if (ImageScanOpenCV.FindOutPoint(val8, image, 0.9).HasValue)
				{
					break;
				}
				num15++;
				if (num15 >= 100)
				{
					relogAccCheck = true;
					return false;
				}
				debugText("check vào load game - " + num15);
				delay_100ms(30);
			}
			debugText("Vào Game Xong");
			delay_100ms(10);
			return true;
		}
		return false;
	}

	private void ThemVaoChuoi(string data, int n)
	{
		if (listAccRun == "")
		{
			listAccRun = data;
			listAccEnd = n.ToString();
		}
		else
		{
			listAccRun = listAccRun + listAccRun_split + data;
			listAccEnd = listAccEnd + listAccRun_split + n;
		}
		debugAutoLog("ThemVaoChuoi()\nout: listRun = " + listAccRun + " listEnd = " + listAccEnd);
	}

	private void XoaKhoiChuoi(string data)
	{
		string[] array = listAccRun.Split(listAccRun_split, (StringSplitOptions)0);
		string[] array2 = listAccEnd.Split(listAccRun_split, (StringSplitOptions)0);
		for (int i = 0; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array); i++)
		{
			if (array[i].Trim() == data)
			{
				array[i] = "";
				accEnd = int.Parse(array2[i].Trim());
				array2[i] = "";
			}
		}
		listAccRun = "";
		listAccEnd = "";
		for (int j = 0; j < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array); j++)
		{
			listAccRun += array[j].Trim();
			listAccEnd += array2[j].Trim();
			if (j < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array) - 1 && array[j] != "")
			{
				listAccRun += listAccRun_split;
				listAccEnd += listAccRun_split;
			}
		}
		debugAutoLog(string.Concat(new string[6]
		{
			"XoaKhoiChuoi()\nout: listRun = ",
			listAccRun,
			" listEnd = ",
			listAccEnd,
			" accEnd = ",
			accEnd.ToString()
		}));
	}

	private string KiemTraChuoi()
	{
		if (listAccRun == "")
		{
			return "null";
		}
		string[] array = listAccRun.Split(listAccRun_split, (StringSplitOptions)0);
		for (int i = 0; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array); i++)
		{
			if (!CheckHandleWindows(array[i].Trim()))
			{
				XoaKhoiChuoi(array[i].Trim());
				if (Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array) != 1)
				{
					return "next";
				}
			}
		}
		return "wait";
	}

	private bool openDaily(int row, bool onlyTrong, bool process)
	{
		//IL_02f1: Unknown result type (might be due to invalid IL or missing references)
		//IL_02dd: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e2: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e8: Expected O, but got Unknown
		string text = "xx";
		string nameUser = "xxx";
		string text2 = "xxx";
		string text3 = "goid";
		string text4 = "xxx";
		string text5 = "xxx";
		text = dataGridView1.Rows[row].Cells[0].Value.ToString();
		text4 = dataGridView1.Rows[row].Cells[1].Value.ToString();
		text3 = dataGridView1.Rows[row].Cells[2].Value.ToString();
		if (text3 == "Go")
		{
			nameUser = text4 + "@goid";
		}
		else if (text3 == "VTC")
		{
			nameUser = text4;
		}
		text5 = dataGridView1.Rows[row].Cells[3].Value.ToString();
		string text6 = "";
		text6 = (Settings.Default.nameStyle ? (text5 + " " + text) : (text + "." + text5));
		int num = 0;
		while (!CheckHandleWindows("[" + text6 + "] BMx Daily"))
		{
			Program.AppMain.nameFlash = text6;
			Program.AppMain.nameUser = nameUser;
			Program.AppMain.autoRun = true;
			Program.AppMain.link = link;
			if (onlyTrong)
			{
				Program.AppMain.onlyTrong = true;
			}
			else
			{
				Program.AppMain.onlyTrong = false;
			}
			debugText("mở Tool Daily");
			if (process)
			{
				Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[11]
				{
					"BMx_Daily \"",
					Program.AppMain.nameFlash,
					"\" \"",
					Program.AppMain.nameUser,
					"\" \"",
					Program.AppMain.link,
					"\" \"",
					Program.AppMain.autoRun.ToString(),
					"\" \"",
					Program.AppMain.onlyTrong.ToString(),
					"\""
				}));
				delay_100ms(50);
				if (!CheckHandleWindows("[" + text6 + "] BMx Daily"))
				{
					num++;
					if (num >= 20)
					{
						return true;
					}
					continue;
				}
				ThemVaoChuoi("[" + text6 + "] BMx Daily", Turn);
			}
			else
			{
				Daily daily = new Daily();
				if (Settings.Default.focusWindow)
				{
					((Form)daily).WindowState = (FormWindowState)1;
					object obj = _003C_003Ec._003C_003E9__158_0;
					if (obj == null)
					{
						EventHandler val = delegate(object sender, EventArgs e)
						{
							//IL_0002: Unknown result type (might be due to invalid IL or missing references)
							((Form)sender).WindowState = (FormWindowState)0;
						};
						_003C_003Ec._003C_003E9__158_0 = val;
						obj = (object)val;
					}
					((Form)daily).Shown += (EventHandler)obj;
				}
				((Form)daily).ShowDialog();
				debugText("tắt Tool Daily");
				((Form)daily).Close();
				delay_100ms(10);
			}
			return true;
		}
		hWnd = FindWindowHandle(null, "[" + text6 + "] BMx Daily");
		GetWindowThreadProcessId(hWnd, out processID);
		Process processById = Process.GetProcessById((int)processID);
		processById.Kill();
		delay_100ms(30);
		return false;
	}

	private bool openTruMa(int row, bool process = false)
	{
		//IL_029c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0288: Unknown result type (might be due to invalid IL or missing references)
		//IL_028d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0293: Expected O, but got Unknown
		string text = "xx";
		string nameUser = "xxx";
		string text2 = "xxx";
		string text3 = "goid";
		string text4 = "xxx";
		string text5 = "xxx";
		text = dataGridView1.Rows[row].Cells[0].Value.ToString();
		text4 = dataGridView1.Rows[row].Cells[1].Value.ToString();
		text3 = dataGridView1.Rows[row].Cells[2].Value.ToString();
		if (text3 == "Go")
		{
			nameUser = text4 + "@goid";
		}
		else if (text3 == "VTC")
		{
			nameUser = text4;
		}
		text5 = dataGridView1.Rows[row].Cells[3].Value.ToString();
		string text6 = "";
		text6 = (Settings.Default.nameStyle ? (text5 + " " + text) : (text + "." + text5));
		string displayName = "[" + text6 + "] BMx Tru Ma";
		if (!CheckHandleWindows(displayName))
		{
			Program.AppMain.nameFlash = text6;
			Program.AppMain.nameUser = nameUser;
			Program.AppMain.autoRun = true;
			Program.AppMain.link = link;
			debugText("mở Tool Trừ Ma");
			if (process)
			{
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
				delay_100ms(10);
				while (!CheckHandleWindows(displayName))
				{
					delay_100ms(10);
				}
				ThemVaoChuoi("[" + text6 + "] BMx Tru Ma", Turn);
			}
			else
			{
				TruMa truMa = new TruMa();
				if (Settings.Default.focusWindow)
				{
					((Form)truMa).WindowState = (FormWindowState)1;
					object obj = _003C_003Ec._003C_003E9__159_0;
					if (obj == null)
					{
						EventHandler val = delegate(object sender, EventArgs e)
						{
							//IL_0002: Unknown result type (might be due to invalid IL or missing references)
							((Form)sender).WindowState = (FormWindowState)0;
						};
						_003C_003Ec._003C_003E9__159_0 = val;
						obj = (object)val;
					}
					((Form)truMa).Shown += (EventHandler)obj;
				}
				((Form)truMa).ShowDialog();
				debugText("tắt Tool Trừ Ma");
				delay_100ms(10);
			}
			return true;
		}
		hWnd = FindWindowHandle(null, "[" + text6 + "] BMx Tru Ma");
		GetWindowThreadProcessId(hWnd, out processID);
		Process processById = Process.GetProcessById((int)processID);
		processById.Kill();
		delay_100ms(30);
		return false;
	}

	private bool openNangNo(int row, bool process = false)
	{
		//IL_029b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0287: Unknown result type (might be due to invalid IL or missing references)
		//IL_028c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0292: Expected O, but got Unknown
		string text = "xx";
		string nameUser = "xxx";
		string text2 = "xxx";
		string text3 = "goid";
		string text4 = "xxx";
		string text5 = "xxx";
		text = dataGridView1.Rows[row].Cells[0].Value.ToString();
		text4 = dataGridView1.Rows[row].Cells[1].Value.ToString();
		text3 = dataGridView1.Rows[row].Cells[2].Value.ToString();
		if (text3 == "Go")
		{
			nameUser = text4 + "@goid";
		}
		else if (text3 == "VTC")
		{
			nameUser = text4;
		}
		text5 = dataGridView1.Rows[row].Cells[3].Value.ToString();
		string text6 = "";
		text6 = (Settings.Default.nameStyle ? (text5 + " " + text) : (text + "." + text5));
		string displayName = "[" + text6 + "] BMx Nang No";
		if (!CheckHandleWindows(displayName))
		{
			Program.AppMain.nameFlash = text6;
			Program.AppMain.nameUser = nameUser;
			Program.AppMain.autoRun = true;
			debugText("mở Tool Năng Nổ");
			if (process)
			{
				Process val = Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[9]
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
				delay_100ms(10);
				while (!CheckHandleWindows(displayName))
				{
					delay_100ms(10);
				}
				delay_100ms(5);
				ThemVaoChuoi("[" + text6 + "] BMx Nang No", Turn);
			}
			else
			{
				NangNo nangNo = new NangNo();
				if (Settings.Default.focusWindow)
				{
					((Form)nangNo).WindowState = (FormWindowState)1;
					object obj = _003C_003Ec._003C_003E9__160_0;
					if (obj == null)
					{
						EventHandler val2 = delegate(object sender, EventArgs e)
						{
							//IL_0002: Unknown result type (might be due to invalid IL or missing references)
							((Form)sender).WindowState = (FormWindowState)0;
						};
						_003C_003Ec._003C_003E9__160_0 = val2;
						obj = (object)val2;
					}
					((Form)nangNo).Shown += (EventHandler)obj;
				}
				((Form)nangNo).ShowDialog();
				debugText("tắt Tool Năng Nổ");
				delay_100ms(10);
			}
			return true;
		}
		hWnd = FindWindowHandle(null, "[" + text6 + "] BMx Nang No");
		GetWindowThreadProcessId(hWnd, out processID);
		Process processById = Process.GetProcessById((int)processID);
		processById.Kill();
		delay_100ms(30);
		return false;
	}

	private void runEnd(int row, string end)
	{
		//IL_0224: Unknown result type (might be due to invalid IL or missing references)
		//IL_0229: Unknown result type (might be due to invalid IL or missing references)
		//IL_0234: Unknown result type (might be due to invalid IL or missing references)
		//IL_0239: Unknown result type (might be due to invalid IL or missing references)
		//IL_06a0: Unknown result type (might be due to invalid IL or missing references)
		//IL_06a5: Unknown result type (might be due to invalid IL or missing references)
		//IL_06b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_06b5: Unknown result type (might be due to invalid IL or missing references)
		string text = "xx";
		string text2 = "xxx";
		string text3 = "xxx";
		string text4 = "goid";
		string text5 = "xxx";
		string text6 = "xxx";
		text = dataGridView1.Rows[row].Cells[0].Value.ToString();
		text5 = dataGridView1.Rows[row].Cells[1].Value.ToString();
		text4 = dataGridView1.Rows[row].Cells[2].Value.ToString();
		if (text4 == "Go")
		{
			text2 = text5 + "@goid";
		}
		else if (text4 == "VTC")
		{
			text2 = text5;
		}
		text6 = dataGridView1.Rows[row].Cells[3].Value.ToString();
		string text7 = "";
		text7 = (Settings.Default.nameStyle ? (text6 + " " + text) : (text + "." + text6));
		if (!CheckHandleWindows(text7))
		{
			return;
		}
		if (!(end == "Off"))
		{
			if (!(end == "BugOnl"))
			{
				return;
			}
			hWnd = FindWindowHandle(null, text7);
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
			switch (int.Parse(dataGridView2.Rows[accEnd].Cells[4].Value.ToString()))
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
			hWnd = FindWindowHandle(null, text7);
			GetWindowThreadProcessId(hWnd, out processID);
			Process processById2 = Process.GetProcessById((int)processID);
			processById2.Kill();
		}
	}

	private bool openDaPet(int row)
	{
		string text = "xx";
		string text2 = "xxx";
		string text3 = "xxx";
		string text4 = "goid";
		string text5 = "xxx";
		string text6 = "xxx";
		text = dataGridView1.Rows[row].Cells[0].Value.ToString();
		text5 = dataGridView1.Rows[row].Cells[1].Value.ToString();
		text4 = dataGridView1.Rows[row].Cells[2].Value.ToString();
		if (text4 == "Go")
		{
			text2 = text5 + "@goid";
		}
		else if (text4 == "VTC")
		{
			text2 = text5;
		}
		text6 = dataGridView1.Rows[row].Cells[3].Value.ToString();
		string text7 = "";
		text7 = (Settings.Default.nameStyle ? (text6 + " " + text) : (text + "." + text6));
		hWnd = FindWindowHandle(null, text7);
		PressKey("ESC");
		DaPet(row);
		return true;
	}

	private void TatHetToolDangMo()
	{
		Process[] processesByName = Process.GetProcessesByName("BMxTool");
		if (Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)processesByName) > 1)
		{
			for (int i = 1; i < Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)processesByName); i++)
			{
				processesByName[i].Kill();
			}
		}
	}

	private void TatHetFlashDangMo()
	{
		Process[] processesByName = Process.GetProcessesByName("FlashGame");
		if (Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)processesByName) > 0)
		{
			for (int i = 0; i < Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)processesByName); i++)
			{
				processesByName[i].Kill();
			}
		}
	}

	private void TatHetToolDangMoBangAutoLog(int rowLog)
	{
		string[] array = new string[rowLog];
		for (int i = 0; i < rowLog; i++)
		{
			tabControl1.SelectTab(0);
			delay_100ms(5);
			if (!(dataGridView2.Rows[i].Cells[0].Value.ToString().ToUpper() != "SKIP"))
			{
				continue;
			}
			string text = dataGridView2.Rows[i].Cells[1].Value.ToString();
			if (!(text.ToUpper() != "NOTHING!"))
			{
				continue;
			}
			for (int j = 0; j < dataGridView1.RowCount; j++)
			{
				if (dataGridView2.Rows[i].Cells[3].Value.ToString().Split(charSplitAutoLog, (StringSplitOptions)0)[1] == dataGridView1.Rows[j].Cells[1].Value.ToString())
				{
					try
					{
						array[i] = dataGridView1.Rows[j].Cells[3].Value.ToString();
					}
					catch (System.Exception)
					{
						throw;
					}
					break;
				}
			}
		}
		Process[] processesByName = Process.GetProcessesByName("BMxTool");
		if (Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)processesByName) <= 1)
		{
			return;
		}
		for (int k = 1; k < Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)processesByName); k++)
		{
			if (!(processesByName[k].MainWindowTitle != ((Control)this).Text))
			{
				continue;
			}
			for (int l = 0; l < rowLog; l++)
			{
				if (processesByName[k].MainWindowTitle.Contains(array[l]))
				{
					processesByName[k].Kill();
				}
			}
		}
	}

	private void dataGridView2_RowHeaderMouseClick(object sender, DataGridViewCellMouseEventArgs e)
	{
		string text = "xx";
		string text2 = "xxx";
		string text3 = "xxx";
		string text4 = "goid";
		text = dataGridView2.CurrentRow.Cells[1].Value.ToString();
		text2 = dataGridView2.CurrentRow.Cells[2].Value.ToString();
		text3 = dataGridView2.CurrentRow.Cells[3].Value.ToString();
		text4 = dataGridView2.CurrentRow.Cells[4].Value.ToString();
		((Control)comboBoxJ).Text = text;
		((Control)comboBoxE).Text = text2;
		((Control)comboBoxA).Text = text3;
		numericUpDownNV.Value = decimal.op_Implicit(int.Parse(text4));
	}

	private void dataGridView2_CellClick(object sender, DataGridViewCellEventArgs e)
	{
		string text = "xx";
		string text2 = "xxx";
		string text3 = "xxx";
		string text4 = "goid";
		text = dataGridView2.CurrentRow.Cells[1].Value.ToString();
		text2 = dataGridView2.CurrentRow.Cells[2].Value.ToString();
		text3 = dataGridView2.CurrentRow.Cells[3].Value.ToString();
		text4 = dataGridView2.CurrentRow.Cells[4].Value.ToString();
		string text5 = dataGridView2.CurrentRow.Cells[5].FormattedValue.ToString();
		((Control)comboBoxJ).Text = text;
		((Control)comboBoxE).Text = text2;
		((Control)comboBoxA).Text = text3;
		try
		{
			numericUpDownNV.Value = decimal.op_Implicit(int.Parse(text4));
			numericUpDownKenh.Value = decimal.op_Implicit(int.Parse(text5));
		}
		catch (System.Exception)
		{
		}
	}

	private void button6_Click(object sender, EventArgs e)
	{
		dataGridView2.Rows.Clear();
		loadFile(pathData + "/AutoLog/" + ((Control)comboBoxS).Text + ".txt");
	}

	private void button7_Click(object sender, EventArgs e)
	{
		//IL_002a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0030: Invalid comparison between Unknown and I4
		//IL_00a3: Unknown result type (might be due to invalid IL or missing references)
		if ((int)Program.AppMain.ThongBao(Program.AppMain.warnNoti, "Delete", "Xóa File " + ((Control)comboBoxS).Text, Program.AppMain.YesNoNoti) == 6)
		{
			File.Delete(pathData + "/AutoLog/" + ((Control)comboBoxS).Text + ".txt");
			comboBoxS.Items.Remove((object)((Control)comboBoxS).Text);
			((Control)comboBoxS).Text = "Chọn Bản Lưu";
			Program.AppMain.ThongBao(Program.AppMain.inforNoti, "Delete", "Xong");
		}
	}

	private void checkBoxShuwdown_CheckedChanged(object sender, EventArgs e)
	{
		//IL_001e: Unknown result type (might be due to invalid IL or missing references)
		if (checkBoxShuwdown.Checked)
		{
			MessageBox.Show("Máy Tính Sẽ Tắt Sau Khi Hoàn Thành AutoLog 5 Phút!", "BMx-Tool", (MessageBoxButtons)0, (MessageBoxIcon)64);
		}
	}

	private void dataGridView2_MouseMove(object sender, MouseEventArgs e)
	{
		//IL_0002: Unknown result type (might be due to invalid IL or missing references)
		//IL_000c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0012: Invalid comparison between Unknown and I4
		//IL_001a: Unknown result type (might be due to invalid IL or missing references)
		//IL_001f: Unknown result type (might be due to invalid IL or missing references)
		//IL_006a: Unknown result type (might be due to invalid IL or missing references)
		//IL_006f: Unknown result type (might be due to invalid IL or missing references)
		if ((e.Button & 0x100000) == 1048576 && dragBoxFromMouseDown2 != Rectangle.Empty && !((Rectangle)(ref dragBoxFromMouseDown2)).Contains(e.X, e.Y))
		{
			DragDropEffects val = ((Control)dataGridView2).DoDragDrop((object)dataGridView2.Rows[rowIndexFromMouseDown2], (DragDropEffects)2);
		}
	}

	private void dataGridView2_MouseDown(object sender, MouseEventArgs e)
	{
		//IL_006f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0074: Unknown result type (might be due to invalid IL or missing references)
		//IL_0034: Unknown result type (might be due to invalid IL or missing references)
		//IL_0039: Unknown result type (might be due to invalid IL or missing references)
		//IL_005b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0060: Unknown result type (might be due to invalid IL or missing references)
		//IL_0061: Unknown result type (might be due to invalid IL or missing references)
		//IL_0066: Unknown result type (might be due to invalid IL or missing references)
		rowIndexFromMouseDown2 = dataGridView2.HitTest(e.X, e.Y).RowIndex;
		if (rowIndexFromMouseDown2 != -1)
		{
			Size dragSize = SystemInformation.DragSize;
			dragBoxFromMouseDown2 = new Rectangle(new Point(e.X - ((Size)(ref dragSize)).Width / 2, e.Y - ((Size)(ref dragSize)).Height / 2), dragSize);
		}
		else
		{
			dragBoxFromMouseDown2 = Rectangle.Empty;
		}
	}

	private void dataGridView2_DragOver(object sender, DragEventArgs e)
	{
		e.Effect = (DragDropEffects)2;
	}

	private void dataGridView2_DragDrop(object sender, DragEventArgs e)
	{
		//IL_0013: Unknown result type (might be due to invalid IL or missing references)
		//IL_0018: Unknown result type (might be due to invalid IL or missing references)
		//IL_001d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0043: Unknown result type (might be due to invalid IL or missing references)
		//IL_0049: Invalid comparison between Unknown and I4
		Point val = ((Control)dataGridView2).PointToClient(new Point(e.X, e.Y));
		rowIndexOfItemUnderMouseToDrop2 = dataGridView2.HitTest(((Point)(ref val)).X, ((Point)(ref val)).Y).RowIndex;
		if ((int)e.Effect == 2)
		{
			object data = e.Data.GetData(typeof(DataGridViewRow));
			DataGridViewRow val2 = (DataGridViewRow)((data is DataGridViewRow) ? data : null);
			if (rowIndexOfItemUnderMouseToDrop2 >= 0)
			{
				dataGridView2.Rows.RemoveAt(rowIndexFromMouseDown2);
				dataGridView2.Rows.Insert(rowIndexOfItemUnderMouseToDrop2, val2);
			}
		}
	}

	private void myTimerEvent(object source, ElapsedEventArgs e)
	{
		System.DateTime now = System.DateTime.Now;
		((Control)label23).Text = now.Hour.ToString("D2");
		((Control)label20).Text = now.Minute.ToString("D2");
		if (segClock)
		{
			((Control)label22).Text = ":";
			segClock = false;
		}
		else
		{
			((Control)label22).Text = " ";
			segClock = true;
		}
		checkNotify();
		if (!isRun && hour_Run == now.Hour && minute_Run == now.Minute)
		{
			isRun = true;
		}
		if (daPet)
		{
			countTimer++;
			if (countTimer >= 600 + Settings.Default.delayKickPet)
			{
				daPet = false;
				daPet_Run = true;
			}
		}
		if (trongTrangVien)
		{
			countTimer2++;
			if (countTimer2 >= (int)numericUpDownTrong.Value * 60 * 61)
			{
				trongTrangVien = false;
				trongTrangVien_Run = true;
			}
		}
		if (tuThap)
		{
			countTimer3++;
			if (countTimer3 >= 780)
			{
				tuThap = false;
				if (now.Hour * 100 + now.Minute < 250 || now.Hour * 100 + now.Minute > 810)
				{
					tuThap_Run = true;
				}
				else
				{
					tuThap_Run = false;
				}
			}
		}
		if (checkBoxShuwdown_at.Checked && AutoLogDangChay && (int)numericUpDown1.Value == now.Hour && (int)numericUpDown2.Value == now.Minute && !HenGioTatMay)
		{
			HenGioTatMay = true;
		}
	}

	private bool checkkey()
	{
		//IL_0006: Unknown result type (might be due to invalid IL or missing references)
		//IL_000c: Expected O, but got Unknown
		//IL_0035: Unknown result type (might be due to invalid IL or missing references)
		//IL_003c: Expected O, but got Unknown
		//IL_00ae: Unknown result type (might be due to invalid IL or missing references)
		//IL_00b5: Expected O, but got Unknown
		//IL_0172: Unknown result type (might be due to invalid IL or missing references)
		//IL_0179: Expected O, but got Unknown
		//IL_0190: Unknown result type (might be due to invalid IL or missing references)
		//IL_0197: Expected O, but got Unknown
		//IL_030e: Unknown result type (might be due to invalid IL or missing references)
		ManagementObjectSearcher val = new ManagementObjectSearcher("SELECT * FROM Win32_DiskDrive");
		string[] array = new string[100];
		string[] array2 = new string[100];
		int num = 0;
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
					array[num] = hardDrive.Model;
				}
				catch (System.Exception)
				{
					array[num] = "~~~";
				}
				num++;
			}
		}
		finally
		{
			((System.IDisposable)enumerator)?.Dispose();
		}
		num = 0;
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
					array2[num] = hardDrive2.SerialNo;
				}
				catch (System.Exception)
				{
					array2[num] = "~~~";
					array2[num] = "~~~";
				}
				num++;
			}
		}
		finally
		{
			((System.IDisposable)enumerator2)?.Dispose();
		}
		bool flag = true;
		bool flag2 = false;
		for (int i = 0; i < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array2); i++)
		{
			if (array2[i] == Program.AppMain.serial)
			{
				flag2 = true;
				break;
			}
		}
		if (flag && flag2)
		{
			if (Program.AppMain.isRent)
			{
				try
				{
					TcpClient val4 = new TcpClient();
					try
					{
						val4.Connect("time.nist.gov", 13);
						StreamReader val5 = new StreamReader((Stream)(object)val4.GetStream());
						try
						{
							string text = ((TextReader)val5).ReadToEnd();
							string text2 = text.Substring(7, 17);
							System.DateTime dateTime = System.DateTime.ParseExact(text2, "yy-MM-dd HH:mm:ss", (IFormatProvider)(object)CultureInfo.InvariantCulture, (DateTimeStyles)64);
							int num2 = dateTime.Year * 10000 + dateTime.Month * 100 + dateTime.Day;
							if (Program.AppMain.Time_Rent[Program.AppMain.localRent] <= num2)
							{
								return false;
							}
						}
						finally
						{
							((System.IDisposable)val5)?.Dispose();
						}
					}
					finally
					{
						((System.IDisposable)val4)?.Dispose();
					}
				}
				catch (SocketException)
				{
					return false;
				}
			}
			return true;
		}
		Process[] processesByName = Process.GetProcessesByName("BMxTool");
		if (Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)processesByName) > 1)
		{
			for (num = 0; num < Enumerable.Count<Process>((System.Collections.Generic.IEnumerable<Process>)processesByName); num++)
			{
				if (processesByName[num].MainWindowTitle != string.Concat(new string[5]
				{
					"BMx-Tool VPT [v",
					Program.AppMain.version,
					"-",
					Settings.Default.NameTool,
					"]"
				}) && processesByName[num].MainWindowTitle != "[BMx v" + Program.AppMain.version + "] Click" && processesByName[num].MainWindowTitle != "[BMx v" + Program.AppMain.version + "] Tiện Ích")
				{
					MessageBox.Show("Delete " + processesByName[num].MainWindowTitle);
					processesByName[num].Kill();
				}
			}
		}
		return false;
	}

	[AsyncStateMachine(typeof(_003Ccheckkey_Offline_003Ed__186))]
	[DebuggerStepThrough]
	private System.Threading.Tasks.Task checkkey_Offline()
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000c: Unknown result type (might be due to invalid IL or missing references)
		_003Ccheckkey_Offline_003Ed__186 _003Ccheckkey_Offline_003Ed__ = new _003Ccheckkey_Offline_003Ed__186();
		_003Ccheckkey_Offline_003Ed__._003C_003Et__builder = AsyncTaskMethodBuilder.Create();
		_003Ccheckkey_Offline_003Ed__._003C_003E4__this = this;
		_003Ccheckkey_Offline_003Ed__._003C_003E1__state = -1;
		((AsyncTaskMethodBuilder)(ref _003Ccheckkey_Offline_003Ed__._003C_003Et__builder)).Start<_003Ccheckkey_Offline_003Ed__186>(ref _003Ccheckkey_Offline_003Ed__);
		return ((AsyncTaskMethodBuilder)(ref _003Ccheckkey_Offline_003Ed__._003C_003Et__builder)).Task;
	}

	private string checkEvent(string thu)
	{
		string text = "";
		int num = 0;
		string text2 = "";
		num = inforEvent.IndexOf("Chu Ma Diện");
		text = string.Concat(new string[6]
		{
			text,
			" - [",
			inforEvent[num],
			" ",
			timeEvent[num],
			"]"
		});
		text2 = text2 + "-" + timeEvent[num];
		switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(thu))
		{
		case 978773849u:
			if (thu == "Monday")
			{
				num = inforEvent.IndexOf("Võ Đài");
				text = string.Concat(new string[6]
				{
					text,
					" - [",
					inforEvent[num],
					" ",
					timeEvent[num],
					"]"
				});
				text2 = text2 + "-" + timeEvent[num];
				num = inforEvent.IndexOf("Boss Tộc");
				text = string.Concat(new string[6]
				{
					text,
					" - [",
					inforEvent[num],
					" ",
					timeEvent[num],
					"]"
				});
				text2 = text2 + "-" + timeEvent[num];
			}
			break;
		case 4263050160u:
			if (thu == "Tuesday")
			{
				num = inforEvent.IndexOf("Boss Thế Giới");
				text = string.Concat(new string[6]
				{
					text,
					" - [",
					inforEvent[num],
					" ",
					timeEvent[num],
					"]"
				});
				text2 = text2 + "-" + timeEvent[num];
				num = inforEvent.IndexOf("Boss Tộc");
				text = string.Concat(new string[6]
				{
					text,
					" - [",
					inforEvent[num],
					" ",
					timeEvent[num],
					"]"
				});
				text2 = text2 + "-" + timeEvent[num];
				num = inforEvent.IndexOf("Đố Vui Có Thưởng");
				text = string.Concat(new string[6]
				{
					text,
					" - [",
					inforEvent[num],
					" ",
					timeEvent[num],
					"]"
				});
				text2 = text2 + "-" + timeEvent[num];
			}
			break;
		case 3894647671u:
			if (thu == "Wednesday")
			{
				num = inforEvent.IndexOf("Boss Tộc");
				text = string.Concat(new string[6]
				{
					text,
					" - [",
					inforEvent[num],
					" ",
					timeEvent[num],
					"]"
				});
				text2 = text2 + "-" + timeEvent[num];
			}
			break;
		case 2582335447u:
			if (thu == "Thursday")
			{
				num = inforEvent.IndexOf("Bảo Trì");
				text = string.Concat(new string[6]
				{
					text,
					" - [",
					inforEvent[num],
					" ",
					timeEvent[num],
					"]"
				});
				text2 = text2 + "-" + timeEvent[num];
				num = inforEvent.IndexOf("Hoàn Tất Bảo trì");
				text = string.Concat(new string[6]
				{
					text,
					" - [",
					inforEvent[num],
					" ",
					timeEvent[num],
					"]"
				});
				text2 = text2 + "-" + timeEvent[num];
				num = inforEvent.IndexOf("Boss Thế Giới");
				text = string.Concat(new string[6]
				{
					text,
					" - [",
					inforEvent[num],
					" ",
					timeEvent[num],
					"]"
				});
				text2 = text2 + "-" + timeEvent[num];
				num = inforEvent.IndexOf("Boss Tộc");
				text = string.Concat(new string[6]
				{
					text,
					" - [",
					inforEvent[num],
					" ",
					timeEvent[num],
					"]"
				});
				text2 = text2 + "-" + timeEvent[num];
				num = inforEvent.IndexOf("Đố Vui Có Thưởng");
				text = string.Concat(new string[6]
				{
					text,
					" - [",
					inforEvent[num],
					" ",
					timeEvent[num],
					"]"
				});
				text2 = text2 + "-" + timeEvent[num];
			}
			break;
		case 3154759506u:
			if (thu == "Friday")
			{
				num = inforEvent.IndexOf("Boss Tộc");
				text = string.Concat(new string[6]
				{
					text,
					" - [",
					inforEvent[num],
					" ",
					timeEvent[num],
					"]"
				});
				text2 = text2 + "-" + timeEvent[num];
				num = inforEvent.IndexOf("Bang Chiến");
				text = string.Concat(new string[6]
				{
					text,
					" - [",
					inforEvent[num],
					" ",
					timeEvent[num],
					"]"
				});
				text2 = text2 + "-" + timeEvent[num];
				num = inforEvent.IndexOf("Đấu Trường");
				text = string.Concat(new string[6]
				{
					text,
					" - [",
					inforEvent[num],
					" ",
					timeEvent[num],
					"]"
				});
				text2 = text2 + "-" + timeEvent[num];
			}
			break;
		case 241744182u:
			if (thu == "Saturday")
			{
				num = inforEvent.IndexOf("Boss Thế Giới");
				text = string.Concat(new string[6]
				{
					text,
					" - [",
					inforEvent[num],
					" ",
					timeEvent[num],
					"]"
				});
				text2 = text2 + "-" + timeEvent[num];
				num = inforEvent.IndexOf("Đố Vui Có Thưởng");
				text = string.Concat(new string[6]
				{
					text,
					" - [",
					inforEvent[num],
					" ",
					timeEvent[num],
					"]"
				});
				text2 = text2 + "-" + timeEvent[num];
				num = inforEvent.IndexOf("Đoạt Bảo");
				text = string.Concat(new string[6]
				{
					text,
					" - [",
					inforEvent[num],
					" ",
					timeEvent[num],
					"]"
				});
				text2 = text2 + "-" + timeEvent[num];
				num = inforEvent.IndexOf("Achilles");
				text = string.Concat(new string[6]
				{
					text,
					" - [",
					inforEvent[num],
					" ",
					timeEvent[num],
					"]"
				});
				text2 = text2 + "-" + timeEvent[num];
			}
			break;
		case 3505415673u:
			if (thu == "Sunday")
			{
				num = inforEvent.IndexOf("Thi Câu Cá");
				text = string.Concat(new string[6]
				{
					text,
					" - [",
					inforEvent[num],
					" ",
					timeEvent[num],
					"]"
				});
				text2 = text2 + "-" + timeEvent[num];
				num = inforEvent.IndexOf("Boss NL");
				text = string.Concat(new string[6]
				{
					text,
					" - [",
					inforEvent[num],
					" ",
					timeEvent[num],
					"]"
				});
				text2 = text2 + "-" + timeEvent[num];
				num = inforEvent.IndexOf("Giác Đấu");
				text = string.Concat(new string[6]
				{
					text,
					" - [",
					inforEvent[num],
					" ",
					timeEvent[num],
					"]"
				});
				text2 = text2 + "-" + timeEvent[num];
			}
			break;
		}
		string[] array = text2.Substring(1).Split('-', (StringSplitOptions)0);
		string[] array2 = text.Substring(2).Split(" - ", (StringSplitOptions)0);
		hourNotify = new int?[Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array)];
		minuteNotify = new int?[Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array)];
		for (num = 0; num < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array); num++)
		{
			string[] array3 = array[num].Split(':', (StringSplitOptions)0);
			hourNotify[num] = int.Parse(array3[0]);
			minuteNotify[num] = int.Parse(array3[1]);
		}
		eventNotify = new string[Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array2)];
		for (num = 0; num < Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array2); num++)
		{
			eventNotify[num] = array2[num];
		}
		notifyIcon1.Visible = true;
		notifyIcon1.ShowBalloonTip(5000, "Hoạt Động Hôm Nay", text.Substring(2).Replace(" - ", " UTC+7\r\n") + " UTC+7", (ToolTipIcon)1);
		return text.Substring(3);
	}

	private void checkBoxS_at_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBoxS_at.Checked)
		{
			checkBoxS_now.CheckState = (CheckState)0;
		}
		else
		{
			checkBoxS_now.CheckState = (CheckState)1;
		}
	}

	private void checkBoxS_now_CheckedChanged(object sender, EventArgs e)
	{
		if (checkBoxS_now.Checked)
		{
			checkBoxS_at.CheckState = (CheckState)0;
		}
		else
		{
			checkBoxS_at.CheckState = (CheckState)1;
		}
	}

	private void notifyIcon1_Click(object sender, EventArgs e)
	{
		notifyIcon1.Visible = false;
	}

	[AsyncStateMachine(typeof(_003CcheckNotify_003Ed__203))]
	[DebuggerStepThrough]
	private void checkNotify()
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000c: Unknown result type (might be due to invalid IL or missing references)
		_003CcheckNotify_003Ed__203 _003CcheckNotify_003Ed__ = new _003CcheckNotify_003Ed__203();
		_003CcheckNotify_003Ed__._003C_003Et__builder = AsyncVoidMethodBuilder.Create();
		_003CcheckNotify_003Ed__._003C_003E4__this = this;
		_003CcheckNotify_003Ed__._003C_003E1__state = -1;
		((AsyncVoidMethodBuilder)(ref _003CcheckNotify_003Ed__._003C_003Et__builder)).Start<_003CcheckNotify_003Ed__203>(ref _003CcheckNotify_003Ed__);
	}

	private void ThongBao(string sms)
	{
		notifyIcon1.Visible = true;
		notifyIcon1.ShowBalloonTip(5000, "Hoạt Động Sắp Diễn Ra", sms, (ToolTipIcon)1);
	}

	private void buttonAddGroup_Click(object sender, EventArgs e)
	{
		//IL_0082: Unknown result type (might be due to invalid IL or missing references)
		//IL_0088: Expected O, but got Unknown
		//IL_004e: Unknown result type (might be due to invalid IL or missing references)
		//IL_00bd: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0117: Unknown result type (might be due to invalid IL or missing references)
		//IL_0138: Unknown result type (might be due to invalid IL or missing references)
		//IL_013e: Expected O, but got Unknown
		for (int i = 0; i < tabControl1.TabCount; i++)
		{
			if (((Control)tabControl1.TabPages[i]).Text == ((Control)comboBoxGroupName1).Text)
			{
				Program.AppMain.ThongBao(Program.AppMain.inforNoti, "Group", "Đa\u0303 Co\u0301 Nho\u0301m Na\u0300y");
				return;
			}
		}
		string text = ((Control)comboBoxGroupName1).Text;
		TabPage val = new TabPage(text);
		tabControl1.TabPages.Add(val);
		comboBoxGroupName1.Items.Add((object)text);
		int num = 0;
		for (int j = 0; j < tabControl1.TabPages.Count; j++)
		{
			int num2 = num;
			Rectangle tabRect = tabControl1.GetTabRect(j);
			num = num2 + (((Rectangle)(ref tabRect)).Width + 10);
		}
		num += 5;
		if (num >= 509)
		{
			num = 509;
		}
		((Control)tabControl1).Size = new Size(num, 24);
		TextWriter val2 = (TextWriter)new StreamWriter(pathGroup + "/" + text + ".txt");
		val2.Close();
		setupMenuTrip("null?", ((Control)tabControl1.TabPages[tabControl1.SelectedIndex]).Text);
	}

	private void buttonClearGroup_Click()
	{
		//IL_0064: Unknown result type (might be due to invalid IL or missing references)
		//IL_006a: Invalid comparison between Unknown and I4
		//IL_002f: Unknown result type (might be due to invalid IL or missing references)
		//IL_012a: Unknown result type (might be due to invalid IL or missing references)
		//IL_012f: Unknown result type (might be due to invalid IL or missing references)
		//IL_018a: Unknown result type (might be due to invalid IL or missing references)
		if (nameGroupDelete == "Toàn Bộ")
		{
			Program.AppMain.ThongBao(Program.AppMain.inforNoti, "Group", "Không Thê\u0309 Xo\u0301a Nho\u0301m Na\u0300y");
		}
		else
		{
			if ((int)Program.AppMain.ThongBao(Program.AppMain.warnNoti, "Group", "Xóa Nhóm " + nameGroupDelete + " ?", Program.AppMain.YesNoNoti, "Xo\u0301a Nho\u0301m-Không") != 6)
			{
				return;
			}
			for (int i = 0; i < tabControl1.TabCount; i++)
			{
				if (((Control)tabControl1.TabPages[i]).Text == nameGroupDelete)
				{
					if (File.Exists(pathGroup + "/" + nameGroupDelete + ".txt"))
					{
						File.Delete(pathGroup + "/" + nameGroupDelete + ".txt");
					}
					tabControl1.SelectTab(i);
					tabControl1.TabPages.Remove(tabControl1.SelectedTab);
					int num = 0;
					for (int j = 0; j < tabControl1.TabPages.Count; j++)
					{
						int num2 = num;
						Rectangle tabRect = tabControl1.GetTabRect(j);
						num = num2 + (((Rectangle)(ref tabRect)).Width + 10);
					}
					num += 5;
					if (num >= 509)
					{
						num = 509;
					}
					((Control)tabControl1).Size = new Size(num, 24);
					break;
				}
			}
			tabControl1.SelectTab(0);
			comboBoxGroupName1.Items.Remove((object)nameGroupDelete);
			setupMenuTrip("null?", ((Control)tabControl1.TabPages[tabControl1.SelectedIndex]).Text);
		}
	}

	private void tabControl1_Selected(object sender, TabControlEventArgs e)
	{
		setupMenuTrip("null?", ((Control)tabControl1.TabPages[tabControl1.SelectedIndex]).Text);
		string[] array;
		if (((Control)tabControl1.TabPages[e.TabPageIndex]).Text == "Toàn Bộ")
		{
			array = File.ReadAllLines(pathData + "/data.txt");
		}
		else
		{
			if (!File.Exists(pathGroup + "/" + ((Control)tabControl1.TabPages[e.TabPageIndex]).Text + ".txt"))
			{
				return;
			}
			array = File.ReadAllLines(pathGroup + "/" + ((Control)tabControl1.TabPages[e.TabPageIndex]).Text + ".txt");
		}
		if (Enumerable.Count<string>((System.Collections.Generic.IEnumerable<string>)array) == 0)
		{
			dataGridView1.Rows.Clear();
			return;
		}
		dataGridView1.Rows.Clear();
		for (int i = 0; i < array.Length; i++)
		{
			string[] array2 = ((object)array[i]).ToString().Split('\t', (StringSplitOptions)0);
			string[] array3 = new string[array2.Length];
			for (int j = 0; j < array2.Length - 1; j++)
			{
				array3[j] = array2[j].Trim();
			}
			DataGridViewRowCollection rows = dataGridView1.Rows;
			object[] array4 = array3;
			rows.Add(array4);
		}
	}

	private void buttonAddGroup_Data_Click()
	{
		//IL_038a: Unknown result type (might be due to invalid IL or missing references)
		//IL_013f: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_01bb: Invalid comparison between Unknown and I4
		//IL_01a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a1: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a7: Invalid comparison between Unknown and I4
		//IL_01cd: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d4: Expected O, but got Unknown
		//IL_01d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e0: Expected O, but got Unknown
		//IL_01e5: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ec: Expected O, but got Unknown
		//IL_01f1: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f8: Expected O, but got Unknown
		//IL_01fd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0204: Expected O, but got Unknown
		//IL_0209: Unknown result type (might be due to invalid IL or missing references)
		//IL_0210: Expected O, but got Unknown
		//IL_0557: Unknown result type (might be due to invalid IL or missing references)
		//IL_0404: Unknown result type (might be due to invalid IL or missing references)
		//IL_0482: Unknown result type (might be due to invalid IL or missing references)
		//IL_0489: Expected O, but got Unknown
		//IL_044e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0926: Unknown result type (might be due to invalid IL or missing references)
		//IL_06a5: Unknown result type (might be due to invalid IL or missing references)
		for (int i = 0; i < tabControl1.TabCount; i++)
		{
			if (!(((Control)tabControl1.TabPages[i]).Text == comboBoxGroupName2))
			{
				continue;
			}
			tabControl1.SelectTab(i);
			string[] array = File.ReadAllLines(pathGroup + "/" + ((Control)tabControl1.TabPages[i]).Text + ".txt");
			dataGridView1.Rows.Clear();
			for (int j = 0; j < array.Length; j++)
			{
				string[] array2 = ((object)array[j]).ToString().Split('\t', (StringSplitOptions)0);
				string[] array3 = new string[array2.Length];
				for (int k = 0; k < array2.Length - 1; k++)
				{
					array3[k] = array2[k].Trim();
				}
				DataGridViewRowCollection rows = dataGridView1.Rows;
				object[] array4 = array3;
				rows.Add(array4);
			}
			string text = "xx";
			string text2 = "xxx";
			string text3 = "xxx";
			string text4 = "goid";
			string text5 = "xxx";
			string text6 = ((Control)textBoxDisplayName).Text;
			if (Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)charError, text6))
			{
				Program.AppMain.ThongBao(Program.AppMain.errNoti, "Display Name", "Tên Cư\u0309a Sô\u0309 Không Đươ\u0323c Đê\u0309 Trô\u0301ng");
				return;
			}
			if ((int)checkBoxLink.CheckState == 1)
			{
				try
				{
					Regex val = new Regex("(?:user=)");
					Regex val2 = new Regex("(?:&)");
					Regex val3 = new Regex("(?:pass=)");
					Regex val4 = new Regex("(?:/s/)");
					Regex val5 = new Regex("(?:/G)");
					Regex val6 = new Regex("(?:@goid)");
					Match val7 = val.Match(((Control)textBoxLink).Text);
					Match val8 = val2.Match(((Control)textBoxLink).Text);
					Match val9 = val3.Match(((Control)textBoxLink).Text);
					Match val10 = val4.Match(((Control)textBoxLink).Text);
					Match val11 = val5.Match(((Control)textBoxLink).Text);
					Match val12 = val6.Match(((Control)textBoxLink).Text);
					text = ((Control)textBoxLink).Text.Substring(((Capture)val10).Index + 3, ((Capture)val11).Index - ((Capture)val10).Index - 3);
					if (((Group)val12).Success)
					{
						text5 = ((Control)textBoxLink).Text.Substring(((Capture)val7).Index + 5, ((Capture)val8).Index - ((Capture)val7).Index - 5 - 5);
						text2 = text5 + "@goid";
						text4 = "Go";
					}
					else
					{
						text5 = ((Control)textBoxLink).Text.Substring(((Capture)val7).Index + 5, ((Capture)val8).Index - ((Capture)val7).Index - 5);
						text2 = text5;
						text4 = "VTC";
					}
					text3 = ((Control)textBoxLink).Text.Substring(((Capture)val9).Index + 5, ((Capture)val8.NextMatch()).Index - ((Capture)val9).Index - 5);
				}
				catch (System.Exception)
				{
					Program.AppMain.ThongBao(Program.AppMain.errNoti, "Link", "Lỗi Link để trống hoặc không đúng định dạng\n[VD: http://s3-vuaphapthuat.goplay.vn/s/s12/GameLoader.swf?user=XXX&pass=YYY&version=0.9.9a33.271&isExpand=true]");
					return;
				}
			}
			else if ((int)checkBoxUserPass.CheckState == 1)
			{
				if (Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)charError, ((Control)textBoxUser).Text) || Enumerable.Contains<string>((System.Collections.Generic.IEnumerable<string>)charError, ((Control)textBoxPass).Text))
				{
					Program.AppMain.ThongBao(Program.AppMain.errNoti, "Information", "Lỗi User / Pass để trống");
					return;
				}
				if (!Enumerable.Contains<char>((System.Collections.Generic.IEnumerable<char>)charServer, ((Control)textBoxServer).Text[0]))
				{
					Program.AppMain.ThongBao(Program.AppMain.errNoti, "Information", "Lỗi Server nhập sai định dạng [VD: s12]");
					return;
				}
				text = ((Control)textBoxServer).Text;
				text2 = ((Control)textBoxUser).Text;
				text3 = ((Control)textBoxPass).Text;
				Regex val13 = new Regex("(?:@goid)");
				Match val14 = val13.Match(((Control)textBoxUser).Text);
				if (((Group)val14).Success)
				{
					text5 = ((Control)textBoxUser).Text.Substring(0, ((Capture)val14).Index);
					text4 = "Go";
				}
				else
				{
					text5 = ((Control)textBoxUser).Text;
					text4 = "VTC";
				}
			}
			string[] array5 = File.ReadAllLines(pathData + "/data.txt");
			int num = 0;
			while (true)
			{
				if (num < array5.Length)
				{
					string[] array6 = array5[num].Split('\t', (StringSplitOptions)0);
					if (array6[1].Trim() == text5)
					{
						break;
					}
					num++;
					continue;
				}
				Program.AppMain.ThongBao(Program.AppMain.errNoti, "Account", "Tài Khoản Chưa Được Lưu. Vui Lòng Lưu Trước Khi Thêm Vào Nhóm");
				return;
			}
			for (int l = 0; l < dataGridView1.Rows.Count; l++)
			{
				string text7 = "xxx";
				string text8 = dataGridView1.Rows[l].Cells[3].Value.ToString();
				if (dataGridView1.Rows[l].Cells[2].Value.ToString() == "Go")
				{
					text7 = dataGridView1.Rows[l].Cells[1].Value.ToString() + "@goid";
				}
				else if (dataGridView1.Rows[l].Cells[2].Value.ToString() == "VTC")
				{
					text7 = dataGridView1.Rows[l].Cells[1].Value.ToString();
				}
				if (text2.CompareTo(text7) != 0 && text6.CompareTo(text8) == 0)
				{
					Program.AppMain.ThongBao(Program.AppMain.errNoti, "Information", "Trùng Tên Cửa Sổ Với User Khác");
					return;
				}
			}
			int num2 = 0;
			while (true)
			{
				if (num2 < dataGridView1.Rows.Count)
				{
					string text9 = "xxx";
					if (dataGridView1.Rows[num2].Cells[2].Value.ToString() == "Go")
					{
						text9 = dataGridView1.Rows[num2].Cells[1].Value.ToString() + "@goid";
					}
					else if (dataGridView1.Rows[num2].Cells[2].Value.ToString() == "VTC")
					{
						text9 = dataGridView1.Rows[num2].Cells[1].Value.ToString();
					}
					if (text2.CompareTo(text9) == 0)
					{
						dataGridView1.Rows[num2].Cells[0].Value = text;
						dataGridView1.Rows[num2].Cells[1].Value = text5;
						dataGridView1.Rows[num2].Cells[2].Value = text4;
						dataGridView1.Rows[num2].Cells[3].Value = text6;
						break;
					}
					num2++;
					continue;
				}
				dataGridView1.Rows.Add(new object[4] { text, text5, text4, text6 });
				break;
			}
			((Control)textBoxServer).Text = "";
			((Control)textBoxUser).Text = "";
			((Control)textBoxPass).Text = "";
			((Control)textBoxDisplayName).Text = "";
			((Control)textBoxLink).Text = "";
			saveGroup(comboBoxGroupName2);
			Program.AppMain.ThongBao(Program.AppMain.inforNoti, "Data", "Đã Lưu");
			return;
		}
		Program.AppMain.ThongBao(Program.AppMain.errNoti, "Group", "Nho\u0301m Không Tô\u0300n Ta\u0323i");
	}

	private void dataGridView1_RowsAdded(object sender, DataGridViewRowsAddedEventArgs e)
	{
		for (int i = 0; i < dataGridView1.Rows.Count; i++)
		{
			((DataGridViewCell)dataGridView1.Rows[i].HeaderCell).Value = "Chọn";
		}
	}

	private bool loadTheme()
	{
		//IL_1a81: Unknown result type (might be due to invalid IL or missing references)
		//IL_1a88: Expected O, but got Unknown
		//IL_0110: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0329: Unknown result type (might be due to invalid IL or missing references)
		//IL_033b: Unknown result type (might be due to invalid IL or missing references)
		//IL_034d: Unknown result type (might be due to invalid IL or missing references)
		//IL_035f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0371: Unknown result type (might be due to invalid IL or missing references)
		//IL_0383: Unknown result type (might be due to invalid IL or missing references)
		//IL_0395: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ff: Unknown result type (might be due to invalid IL or missing references)
		//IL_00db: Unknown result type (might be due to invalid IL or missing references)
		//IL_03d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_03eb: Unknown result type (might be due to invalid IL or missing references)
		//IL_03fd: Unknown result type (might be due to invalid IL or missing references)
		//IL_040f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0421: Unknown result type (might be due to invalid IL or missing references)
		//IL_0433: Unknown result type (might be due to invalid IL or missing references)
		//IL_0445: Unknown result type (might be due to invalid IL or missing references)
		//IL_0457: Unknown result type (might be due to invalid IL or missing references)
		//IL_0469: Unknown result type (might be due to invalid IL or missing references)
		//IL_047b: Unknown result type (might be due to invalid IL or missing references)
		//IL_048d: Unknown result type (might be due to invalid IL or missing references)
		//IL_049f: Unknown result type (might be due to invalid IL or missing references)
		//IL_04b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_04c3: Unknown result type (might be due to invalid IL or missing references)
		//IL_04d5: Unknown result type (might be due to invalid IL or missing references)
		//IL_04e7: Unknown result type (might be due to invalid IL or missing references)
		//IL_04f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_050b: Unknown result type (might be due to invalid IL or missing references)
		//IL_051d: Unknown result type (might be due to invalid IL or missing references)
		//IL_052f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0541: Unknown result type (might be due to invalid IL or missing references)
		//IL_0553: Unknown result type (might be due to invalid IL or missing references)
		//IL_0565: Unknown result type (might be due to invalid IL or missing references)
		//IL_0577: Unknown result type (might be due to invalid IL or missing references)
		//IL_0589: Unknown result type (might be due to invalid IL or missing references)
		//IL_059b: Unknown result type (might be due to invalid IL or missing references)
		//IL_05ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_05bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_05d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_05e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_05f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0621: Unknown result type (might be due to invalid IL or missing references)
		//IL_0633: Unknown result type (might be due to invalid IL or missing references)
		//IL_0645: Unknown result type (might be due to invalid IL or missing references)
		//IL_0657: Unknown result type (might be due to invalid IL or missing references)
		//IL_0669: Unknown result type (might be due to invalid IL or missing references)
		//IL_067b: Unknown result type (might be due to invalid IL or missing references)
		//IL_068d: Unknown result type (might be due to invalid IL or missing references)
		//IL_069f: Unknown result type (might be due to invalid IL or missing references)
		//IL_06b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_06c3: Unknown result type (might be due to invalid IL or missing references)
		//IL_06d5: Unknown result type (might be due to invalid IL or missing references)
		//IL_06e7: Unknown result type (might be due to invalid IL or missing references)
		//IL_06f9: Unknown result type (might be due to invalid IL or missing references)
		//IL_070b: Unknown result type (might be due to invalid IL or missing references)
		//IL_071d: Unknown result type (might be due to invalid IL or missing references)
		//IL_072f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0741: Unknown result type (might be due to invalid IL or missing references)
		//IL_0753: Unknown result type (might be due to invalid IL or missing references)
		//IL_0765: Unknown result type (might be due to invalid IL or missing references)
		//IL_0777: Unknown result type (might be due to invalid IL or missing references)
		//IL_0789: Unknown result type (might be due to invalid IL or missing references)
		//IL_079b: Unknown result type (might be due to invalid IL or missing references)
		//IL_07ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_07bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_07d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_07e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_07f5: Unknown result type (might be due to invalid IL or missing references)
		//IL_0807: Unknown result type (might be due to invalid IL or missing references)
		//IL_0819: Unknown result type (might be due to invalid IL or missing references)
		//IL_082b: Unknown result type (might be due to invalid IL or missing references)
		//IL_083d: Unknown result type (might be due to invalid IL or missing references)
		//IL_088b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0890: Unknown result type (might be due to invalid IL or missing references)
		//IL_089a: Expected O, but got Unknown
		//IL_08ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_08bf: Unknown result type (might be due to invalid IL or missing references)
		//IL_08c9: Expected O, but got Unknown
		//IL_08e9: Unknown result type (might be due to invalid IL or missing references)
		//IL_08ee: Unknown result type (might be due to invalid IL or missing references)
		//IL_08f8: Expected O, but got Unknown
		//IL_0918: Unknown result type (might be due to invalid IL or missing references)
		//IL_091d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0927: Expected O, but got Unknown
		//IL_0947: Unknown result type (might be due to invalid IL or missing references)
		//IL_094c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0956: Expected O, but got Unknown
		//IL_0976: Unknown result type (might be due to invalid IL or missing references)
		//IL_097b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0985: Expected O, but got Unknown
		//IL_09a5: Unknown result type (might be due to invalid IL or missing references)
		//IL_09aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_09b4: Expected O, but got Unknown
		//IL_09d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_09d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_09e3: Expected O, but got Unknown
		//IL_0a03: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a08: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a12: Expected O, but got Unknown
		//IL_0a32: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a37: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a41: Expected O, but got Unknown
		//IL_0a61: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a66: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a70: Expected O, but got Unknown
		//IL_0a90: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a95: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a9f: Expected O, but got Unknown
		//IL_0abf: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ac4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ace: Expected O, but got Unknown
		//IL_0aee: Unknown result type (might be due to invalid IL or missing references)
		//IL_0af3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0afd: Expected O, but got Unknown
		//IL_0b1d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b22: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b2c: Expected O, but got Unknown
		//IL_0b4c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b51: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b5b: Expected O, but got Unknown
		//IL_0b7b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b80: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b8a: Expected O, but got Unknown
		//IL_0baa: Unknown result type (might be due to invalid IL or missing references)
		//IL_0baf: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bb9: Expected O, but got Unknown
		//IL_0bd9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0bde: Unknown result type (might be due to invalid IL or missing references)
		//IL_0be8: Expected O, but got Unknown
		//IL_0c08: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c0d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c17: Expected O, but got Unknown
		//IL_0c37: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c3c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c46: Expected O, but got Unknown
		//IL_0c66: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c6b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0c75: Expected O, but got Unknown
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
		//IL_0e44: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e56: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e68: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e7a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e8c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e9e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0eb0: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ec2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ed4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ee6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ef8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f0a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f1c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f2e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f40: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f52: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f64: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f76: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fa2: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fb4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fc6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fd8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fea: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ffc: Unknown result type (might be due to invalid IL or missing references)
		//IL_100e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1020: Unknown result type (might be due to invalid IL or missing references)
		//IL_1032: Unknown result type (might be due to invalid IL or missing references)
		//IL_1044: Unknown result type (might be due to invalid IL or missing references)
		//IL_1056: Unknown result type (might be due to invalid IL or missing references)
		//IL_1068: Unknown result type (might be due to invalid IL or missing references)
		//IL_107a: Unknown result type (might be due to invalid IL or missing references)
		//IL_108c: Unknown result type (might be due to invalid IL or missing references)
		//IL_109e: Unknown result type (might be due to invalid IL or missing references)
		//IL_10b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_10c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_10d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_1122: Unknown result type (might be due to invalid IL or missing references)
		//IL_1127: Unknown result type (might be due to invalid IL or missing references)
		//IL_1131: Expected O, but got Unknown
		//IL_1151: Unknown result type (might be due to invalid IL or missing references)
		//IL_1156: Unknown result type (might be due to invalid IL or missing references)
		//IL_1160: Expected O, but got Unknown
		//IL_1180: Unknown result type (might be due to invalid IL or missing references)
		//IL_1185: Unknown result type (might be due to invalid IL or missing references)
		//IL_118f: Expected O, but got Unknown
		//IL_11af: Unknown result type (might be due to invalid IL or missing references)
		//IL_11b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_11be: Expected O, but got Unknown
		//IL_11de: Unknown result type (might be due to invalid IL or missing references)
		//IL_11e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_11ed: Expected O, but got Unknown
		//IL_120d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1212: Unknown result type (might be due to invalid IL or missing references)
		//IL_121c: Expected O, but got Unknown
		//IL_123c: Unknown result type (might be due to invalid IL or missing references)
		//IL_1241: Unknown result type (might be due to invalid IL or missing references)
		//IL_124b: Expected O, but got Unknown
		//IL_126b: Unknown result type (might be due to invalid IL or missing references)
		//IL_1270: Unknown result type (might be due to invalid IL or missing references)
		//IL_127a: Expected O, but got Unknown
		//IL_129a: Unknown result type (might be due to invalid IL or missing references)
		//IL_129f: Unknown result type (might be due to invalid IL or missing references)
		//IL_12a9: Expected O, but got Unknown
		//IL_12c9: Unknown result type (might be due to invalid IL or missing references)
		//IL_12ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_12d8: Expected O, but got Unknown
		//IL_12f8: Unknown result type (might be due to invalid IL or missing references)
		//IL_12fd: Unknown result type (might be due to invalid IL or missing references)
		//IL_1307: Expected O, but got Unknown
		//IL_1327: Unknown result type (might be due to invalid IL or missing references)
		//IL_132c: Unknown result type (might be due to invalid IL or missing references)
		//IL_1336: Expected O, but got Unknown
		//IL_1356: Unknown result type (might be due to invalid IL or missing references)
		//IL_135b: Unknown result type (might be due to invalid IL or missing references)
		//IL_1365: Expected O, but got Unknown
		//IL_1385: Unknown result type (might be due to invalid IL or missing references)
		//IL_138a: Unknown result type (might be due to invalid IL or missing references)
		//IL_1394: Expected O, but got Unknown
		//IL_13b4: Unknown result type (might be due to invalid IL or missing references)
		//IL_13b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_13c3: Expected O, but got Unknown
		//IL_13e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_13e8: Unknown result type (might be due to invalid IL or missing references)
		//IL_13f2: Expected O, but got Unknown
		//IL_1412: Unknown result type (might be due to invalid IL or missing references)
		//IL_1417: Unknown result type (might be due to invalid IL or missing references)
		//IL_1421: Expected O, but got Unknown
		//IL_1441: Unknown result type (might be due to invalid IL or missing references)
		//IL_1446: Unknown result type (might be due to invalid IL or missing references)
		//IL_1450: Expected O, but got Unknown
		//IL_1470: Unknown result type (might be due to invalid IL or missing references)
		//IL_1475: Unknown result type (might be due to invalid IL or missing references)
		//IL_147f: Expected O, but got Unknown
		//IL_14a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_14b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_14cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_14dd: Unknown result type (might be due to invalid IL or missing references)
		//IL_14ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_1501: Unknown result type (might be due to invalid IL or missing references)
		//IL_1513: Unknown result type (might be due to invalid IL or missing references)
		//IL_1525: Unknown result type (might be due to invalid IL or missing references)
		//IL_1537: Unknown result type (might be due to invalid IL or missing references)
		//IL_1549: Unknown result type (might be due to invalid IL or missing references)
		//IL_155b: Unknown result type (might be due to invalid IL or missing references)
		//IL_156d: Unknown result type (might be due to invalid IL or missing references)
		//IL_1599: Unknown result type (might be due to invalid IL or missing references)
		//IL_15ab: Unknown result type (might be due to invalid IL or missing references)
		//IL_15bd: Unknown result type (might be due to invalid IL or missing references)
		//IL_15cf: Unknown result type (might be due to invalid IL or missing references)
		//IL_15e1: Unknown result type (might be due to invalid IL or missing references)
		//IL_15f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_1605: Unknown result type (might be due to invalid IL or missing references)
		//IL_1617: Unknown result type (might be due to invalid IL or missing references)
		//IL_1629: Unknown result type (might be due to invalid IL or missing references)
		//IL_163b: Unknown result type (might be due to invalid IL or missing references)
		//IL_164d: Unknown result type (might be due to invalid IL or missing references)
		//IL_165f: Unknown result type (might be due to invalid IL or missing references)
		//IL_16ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_16b2: Unknown result type (might be due to invalid IL or missing references)
		//IL_16bc: Expected O, but got Unknown
		//IL_16dc: Unknown result type (might be due to invalid IL or missing references)
		//IL_16e1: Unknown result type (might be due to invalid IL or missing references)
		//IL_16eb: Expected O, but got Unknown
		//IL_170b: Unknown result type (might be due to invalid IL or missing references)
		//IL_1710: Unknown result type (might be due to invalid IL or missing references)
		//IL_171a: Expected O, but got Unknown
		//IL_173a: Unknown result type (might be due to invalid IL or missing references)
		//IL_173f: Unknown result type (might be due to invalid IL or missing references)
		//IL_1749: Expected O, but got Unknown
		//IL_1769: Unknown result type (might be due to invalid IL or missing references)
		//IL_176e: Unknown result type (might be due to invalid IL or missing references)
		//IL_1778: Expected O, but got Unknown
		//IL_1798: Unknown result type (might be due to invalid IL or missing references)
		//IL_179d: Unknown result type (might be due to invalid IL or missing references)
		//IL_17a7: Expected O, but got Unknown
		//IL_17c7: Unknown result type (might be due to invalid IL or missing references)
		//IL_17cc: Unknown result type (might be due to invalid IL or missing references)
		//IL_17d6: Expected O, but got Unknown
		//IL_17f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_17fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_1805: Expected O, but got Unknown
		//IL_1825: Unknown result type (might be due to invalid IL or missing references)
		//IL_182a: Unknown result type (might be due to invalid IL or missing references)
		//IL_1834: Expected O, but got Unknown
		//IL_1854: Unknown result type (might be due to invalid IL or missing references)
		//IL_1859: Unknown result type (might be due to invalid IL or missing references)
		//IL_1863: Expected O, but got Unknown
		//IL_1883: Unknown result type (might be due to invalid IL or missing references)
		//IL_1888: Unknown result type (might be due to invalid IL or missing references)
		//IL_1892: Expected O, but got Unknown
		//IL_18b2: Unknown result type (might be due to invalid IL or missing references)
		//IL_18b7: Unknown result type (might be due to invalid IL or missing references)
		//IL_18c1: Expected O, but got Unknown
		//IL_18e9: Unknown result type (might be due to invalid IL or missing references)
		//IL_18fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_1927: Unknown result type (might be due to invalid IL or missing references)
		//IL_1953: Unknown result type (might be due to invalid IL or missing references)
		//IL_197f: Unknown result type (might be due to invalid IL or missing references)
		//IL_19ab: Unknown result type (might be due to invalid IL or missing references)
		//IL_0260: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_0292: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b6: Unknown result type (might be due to invalid IL or missing references)
		//IL_02c8: Unknown result type (might be due to invalid IL or missing references)
		//IL_02da: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_02fe: Unknown result type (might be due to invalid IL or missing references)
		//IL_0310: Unknown result type (might be due to invalid IL or missing references)
		//IL_0269: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ed: Unknown result type (might be due to invalid IL or missing references)
		//IL_0272: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f6: Unknown result type (might be due to invalid IL or missing references)
		//IL_027b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0284: Unknown result type (might be due to invalid IL or missing references)
		try
		{
			while (!File.Exists(pathTheme + "/BMxSkinSetting.txt"))
			{
				TextWriter val = (TextWriter)new StreamWriter(pathTheme + "/BMxSkinSetting.txt");
				val.WriteLine("-1052689\r\n16777215\r\n16777215\t-16777216\tSegoe UI, 9pt\r\n-1\t-16777216\tSegoe UI, 9pt\r\n-1\t-16777216\tSegoe UI, 9pt, style=Italic\r\n-4144960\t-1\t-16777216\t-12550016\t-1\tSegoe UI, 9,75pt, style=Italic");
				val.Close();
			}
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
				((Control)groupBoxAutoLog).BackgroundImage = Image.FromFile(fileName);
				((Control)tabPage5).BackgroundImage = Image.FromFile(fileName);
				((Control)tabPage6).BackgroundImage = Image.FromFile(fileName);
				((Control)tabPage2).BackgroundImage = Image.FromFile(fileName);
				((Control)tabPage3).BackgroundImage = Image.FromFile(fileName);
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
				((Control)groupBox5).BackgroundImageLayout = layout;
				((Control)groupBoxAutoLog).BackgroundImageLayout = layout;
				((Control)tabPage5).BackgroundImageLayout = layout;
				((Control)tabPage6).BackgroundImageLayout = layout;
				((Control)tabPage2).BackgroundImageLayout = layout;
				((Control)tabPage3).BackgroundImageLayout = layout;
			}
			else
			{
				((Control)groupBox1).BackColor = Color.FromArgb(num2);
				((Control)groupBox2).BackColor = Color.FromArgb(num2);
				((Control)groupBox5).BackColor = Color.FromArgb(num2);
				((Control)groupBoxAutoLog).BackColor = Color.FromArgb(num2);
				((Control)tabPage5).BackColor = Color.FromArgb(num2);
				((Control)tabPage6).BackColor = Color.FromArgb(num2);
				((Control)tabPage2).BackColor = Color.FromArgb(num2);
				((Control)tabPage3).BackColor = Color.FromArgb(num2);
			}
			int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
			((Control)label5).BackColor = Color.FromArgb(num2);
			((Control)label3).BackColor = Color.FromArgb(num2);
			((Control)label4).BackColor = Color.FromArgb(num2);
			((Control)label2).BackColor = Color.FromArgb(num2);
			((Control)label1).BackColor = Color.FromArgb(num2);
			((Control)label8).BackColor = Color.FromArgb(num2);
			((Control)label9).BackColor = Color.FromArgb(num2);
			((Control)label13).BackColor = Color.FromArgb(num2);
			((Control)label14).BackColor = Color.FromArgb(num2);
			((Control)label15).BackColor = Color.FromArgb(num2);
			((Control)label16).BackColor = Color.FromArgb(num2);
			((Control)label7).BackColor = Color.FromArgb(num2);
			((Control)label10).BackColor = Color.FromArgb(num2);
			((Control)label17).BackColor = Color.FromArgb(num2);
			((Control)checkBoxS_at).BackColor = Color.FromArgb(num2);
			((Control)checkBoxS_now).BackColor = Color.FromArgb(num2);
			((Control)checkBoxDapet).BackColor = Color.FromArgb(num2);
			((Control)checkBoxTrong).BackColor = Color.FromArgb(num2);
			((Control)checkBoxThap).BackColor = Color.FromArgb(num2);
			((Control)label18).BackColor = Color.FromArgb(num2);
			((Control)label19).BackColor = Color.FromArgb(num2);
			((Control)checkBoxShuwdown).BackColor = Color.FromArgb(num2);
			((Control)checkBoxReOn).BackColor = Color.FromArgb(num2);
			((Control)checkBoxRelog).BackColor = Color.FromArgb(num2);
			((Control)checkBoxLink).BackColor = Color.FromArgb(num2);
			((Control)checkBoxUserPass).BackColor = Color.FromArgb(num2);
			((Control)checkBox2).BackColor = Color.FromArgb(num2);
			((Control)checkBox5).BackColor = Color.FromArgb(num2);
			((Control)checkBox6).BackColor = Color.FromArgb(num2);
			((Control)checkBox7).BackColor = Color.FromArgb(num2);
			((Control)checkBox4).BackColor = Color.FromArgb(num2);
			int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
			((Control)label5).ForeColor = Color.FromArgb(num2);
			((Control)label3).ForeColor = Color.FromArgb(num2);
			((Control)label4).ForeColor = Color.FromArgb(num2);
			((Control)label2).ForeColor = Color.FromArgb(num2);
			((Control)label1).ForeColor = Color.FromArgb(num2);
			((Control)label8).ForeColor = Color.FromArgb(num2);
			((Control)label9).ForeColor = Color.FromArgb(num2);
			((Control)label13).ForeColor = Color.FromArgb(num2);
			((Control)label14).ForeColor = Color.FromArgb(num2);
			((Control)label15).ForeColor = Color.FromArgb(num2);
			((Control)label16).ForeColor = Color.FromArgb(num2);
			((Control)label7).ForeColor = Color.FromArgb(num2);
			((Control)label10).ForeColor = Color.FromArgb(num2);
			((Control)label17).ForeColor = Color.FromArgb(num2);
			((Control)checkBoxS_at).ForeColor = Color.FromArgb(num2);
			((Control)checkBoxS_now).ForeColor = Color.FromArgb(num2);
			((Control)checkBoxDapet).ForeColor = Color.FromArgb(num2);
			((Control)checkBoxTrong).ForeColor = Color.FromArgb(num2);
			((Control)checkBoxThap).ForeColor = Color.FromArgb(num2);
			((Control)label18).ForeColor = Color.FromArgb(num2);
			((Control)label19).ForeColor = Color.FromArgb(num2);
			((Control)checkBoxShuwdown).ForeColor = Color.FromArgb(num2);
			((Control)checkBoxReOn).ForeColor = Color.FromArgb(num2);
			((Control)checkBoxRelog).ForeColor = Color.FromArgb(num2);
			((Control)checkBoxLink).ForeColor = Color.FromArgb(num2);
			((Control)checkBoxUserPass).ForeColor = Color.FromArgb(num2);
			((Control)checkBox2).ForeColor = Color.FromArgb(num2);
			((Control)checkBox5).ForeColor = Color.FromArgb(num2);
			((Control)checkBox6).ForeColor = Color.FromArgb(num2);
			((Control)checkBox7).ForeColor = Color.FromArgb(num2);
			((Control)checkBox4).ForeColor = Color.FromArgb(num2);
			object obj = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
			Font val2 = (Font)((obj is Font) ? obj : null);
			((Control)label1).Font = new Font(val2.FontFamily, ((Control)label1).Font.Size, val2.Style);
			((Control)label5).Font = new Font(val2.FontFamily, ((Control)label5).Font.Size, val2.Style);
			((Control)label3).Font = new Font(val2.FontFamily, ((Control)label3).Font.Size, val2.Style);
			((Control)label4).Font = new Font(val2.FontFamily, ((Control)label4).Font.Size, val2.Style);
			((Control)label2).Font = new Font(val2.FontFamily, ((Control)label2).Font.Size, val2.Style);
			((Control)label8).Font = new Font(val2.FontFamily, ((Control)label18).Font.Size, val2.Style);
			((Control)label9).Font = new Font(val2.FontFamily, ((Control)label9).Font.Size, val2.Style);
			((Control)label13).Font = new Font(val2.FontFamily, ((Control)label13).Font.Size, val2.Style);
			((Control)label14).Font = new Font(val2.FontFamily, ((Control)label14).Font.Size, val2.Style);
			((Control)label15).Font = new Font(val2.FontFamily, ((Control)label15).Font.Size, val2.Style);
			((Control)label16).Font = new Font(val2.FontFamily, ((Control)label16).Font.Size, val2.Style);
			((Control)label7).Font = new Font(val2.FontFamily, ((Control)label7).Font.Size, val2.Style);
			((Control)label10).Font = new Font(val2.FontFamily, ((Control)label10).Font.Size, val2.Style);
			((Control)label17).Font = new Font(val2.FontFamily, ((Control)label17).Font.Size, val2.Style);
			((Control)checkBoxS_at).Font = new Font(val2.FontFamily, ((Control)checkBoxS_at).Font.Size, val2.Style);
			((Control)checkBoxS_now).Font = new Font(val2.FontFamily, ((Control)checkBoxS_now).Font.Size, val2.Style);
			((Control)checkBoxDapet).Font = new Font(val2.FontFamily, ((Control)checkBoxDapet).Font.Size, val2.Style);
			((Control)checkBoxTrong).Font = new Font(val2.FontFamily, ((Control)checkBoxTrong).Font.Size, val2.Style);
			((Control)checkBoxThap).Font = new Font(val2.FontFamily, ((Control)checkBoxThap).Font.Size, val2.Style);
			((Control)label18).Font = new Font(val2.FontFamily, ((Control)label18).Font.Size, val2.Style);
			((Control)label19).Font = new Font(val2.FontFamily, ((Control)label19).Font.Size, val2.Style);
			((Control)checkBoxShuwdown).Font = new Font(val2.FontFamily, ((Control)checkBoxShuwdown).Font.Size, val2.Style);
			((Control)checkBoxReOn).Font = new Font(val2.FontFamily, ((Control)checkBoxReOn).Font.Size, val2.Style);
			((Control)checkBoxRelog).Font = new Font(val2.FontFamily, ((Control)checkBoxRelog).Font.Size, val2.Style);
			((Control)checkBoxLink).Font = new Font(val2.FontFamily, ((Control)checkBoxLink).Font.Size, val2.Style);
			((Control)checkBoxUserPass).Font = new Font(val2.FontFamily, ((Control)checkBoxUserPass).Font.Size, val2.Style);
			((Control)checkBox2).Font = new Font(val2.FontFamily, ((Control)checkBox2).Font.Size, val2.Style);
			((Control)checkBox5).Font = new Font(val2.FontFamily, ((Control)checkBox5).Font.Size, val2.Style);
			((Control)checkBox6).Font = new Font(val2.FontFamily, ((Control)checkBox6).Font.Size, val2.Style);
			((Control)checkBox7).Font = new Font(val2.FontFamily, ((Control)checkBox7).Font.Size, val2.Style);
			((Control)checkBox4).Font = new Font(val2.FontFamily, ((Control)checkBox4).Font.Size, val2.Style);
			int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
			((Control)buttonAdd).BackColor = Color.FromArgb(num2);
			((Control)button1).BackColor = Color.FromArgb(num2);
			((Control)button5).BackColor = Color.FromArgb(num2);
			((Control)checkBox3).BackColor = Color.FromArgb(num2);
			((Control)button2).BackColor = Color.FromArgb(num2);
			((Control)buttonAddGroup).BackColor = Color.FromArgb(num2);
			((Control)buttonAL_add).BackColor = Color.FromArgb(num2);
			((Control)buttonAL_save).BackColor = Color.FromArgb(num2);
			((Control)ButtonRunAuto).BackColor = Color.FromArgb(num2);
			((Control)buttonAL_clear).BackColor = Color.FromArgb(num2);
			((Control)buttonAL_load).BackColor = Color.FromArgb(num2);
			((Control)buttonAL_del).BackColor = Color.FromArgb(num2);
			((Control)button7).BackColor = Color.FromArgb(num2);
			((Control)button8).BackColor = Color.FromArgb(num2);
			((Control)checkBox8).BackColor = Color.FromArgb(num2);
			((Control)checkBox9).BackColor = Color.FromArgb(num2);
			((Control)checkBox10).BackColor = Color.FromArgb(num2);
			((Control)checkBox11).BackColor = Color.FromArgb(num2);
			int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
			((Control)buttonAdd).ForeColor = Color.FromArgb(num2);
			((Control)button1).ForeColor = Color.FromArgb(num2);
			((Control)button5).ForeColor = Color.FromArgb(num2);
			((Control)checkBox3).ForeColor = Color.FromArgb(num2);
			((Control)button2).ForeColor = Color.FromArgb(num2);
			((Control)buttonAddGroup).ForeColor = Color.FromArgb(num2);
			((Control)buttonAL_add).ForeColor = Color.FromArgb(num2);
			((Control)buttonAL_save).ForeColor = Color.FromArgb(num2);
			((Control)ButtonRunAuto).ForeColor = Color.FromArgb(num2);
			((Control)buttonAL_clear).ForeColor = Color.FromArgb(num2);
			((Control)buttonAL_load).ForeColor = Color.FromArgb(num2);
			((Control)buttonAL_del).ForeColor = Color.FromArgb(num2);
			((Control)button7).ForeColor = Color.FromArgb(num2);
			((Control)button8).ForeColor = Color.FromArgb(num2);
			((Control)checkBox8).ForeColor = Color.FromArgb(num2);
			((Control)checkBox9).ForeColor = Color.FromArgb(num2);
			((Control)checkBox10).ForeColor = Color.FromArgb(num2);
			((Control)checkBox11).ForeColor = Color.FromArgb(num2);
			object obj2 = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
			val2 = (Font)((obj2 is Font) ? obj2 : null);
			((Control)button2).Font = new Font(val2.FontFamily, ((Control)button2).Font.Size, val2.Style);
			((Control)buttonAdd).Font = new Font(val2.FontFamily, ((Control)buttonAdd).Font.Size, val2.Style);
			((Control)button1).Font = new Font(val2.FontFamily, ((Control)button1).Font.Size, val2.Style);
			((Control)button5).Font = new Font(val2.FontFamily, ((Control)button5).Font.Size, val2.Style);
			((Control)checkBox3).Font = new Font(val2.FontFamily, ((Control)checkBox3).Font.Size, val2.Style);
			((Control)button2).Font = new Font(val2.FontFamily, ((Control)button2).Font.Size, val2.Style);
			((Control)buttonAddGroup).Font = new Font(val2.FontFamily, ((Control)buttonAddGroup).Font.Size, val2.Style);
			((Control)buttonAL_add).Font = new Font(val2.FontFamily, ((Control)buttonAL_add).Font.Size, val2.Style);
			((Control)buttonAL_save).Font = new Font(val2.FontFamily, ((Control)buttonAL_save).Font.Size, val2.Style);
			((Control)ButtonRunAuto).Font = new Font(val2.FontFamily, ((Control)ButtonRunAuto).Font.Size, val2.Style);
			((Control)buttonAL_clear).Font = new Font(val2.FontFamily, ((Control)buttonAL_clear).Font.Size, val2.Style);
			((Control)buttonAL_load).Font = new Font(val2.FontFamily, ((Control)buttonAL_load).Font.Size, val2.Style);
			((Control)buttonAL_del).Font = new Font(val2.FontFamily, ((Control)buttonAL_del).Font.Size, val2.Style);
			((Control)button7).Font = new Font(val2.FontFamily, ((Control)button7).Font.Size, val2.Style);
			((Control)button8).Font = new Font(val2.FontFamily, ((Control)button8).Font.Size, val2.Style);
			((Control)checkBox8).Font = new Font(val2.FontFamily, ((Control)checkBox8).Font.Size, val2.Style);
			((Control)checkBox9).Font = new Font(val2.FontFamily, ((Control)checkBox9).Font.Size, val2.Style);
			((Control)checkBox10).Font = new Font(val2.FontFamily, ((Control)checkBox10).Font.Size, val2.Style);
			((Control)checkBox11).Font = new Font(val2.FontFamily, ((Control)checkBox11).Font.Size, val2.Style);
			int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
			((Control)textBoxServer).BackColor = Color.FromArgb(num2);
			((Control)textBoxUser).BackColor = Color.FromArgb(num2);
			((Control)textBoxPass).BackColor = Color.FromArgb(num2);
			((Control)textBoxLink).BackColor = Color.FromArgb(num2);
			((Control)textBoxDisplayName).BackColor = Color.FromArgb(num2);
			((Control)comboBoxGroupName1).BackColor = Color.FromArgb(num2);
			((Control)comboBoxJ).BackColor = Color.FromArgb(num2);
			((Control)comboBoxA).BackColor = Color.FromArgb(num2);
			((Control)comboBoxE).BackColor = Color.FromArgb(num2);
			((Control)textBoxEV).BackColor = Color.FromArgb(num2);
			((Control)comboBoxS).BackColor = Color.FromArgb(num2);
			((Control)comboBox1).BackColor = Color.FromArgb(num2);
			int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
			((Control)textBoxServer).ForeColor = Color.FromArgb(num2);
			((Control)textBoxUser).ForeColor = Color.FromArgb(num2);
			((Control)textBoxPass).ForeColor = Color.FromArgb(num2);
			((Control)textBoxLink).ForeColor = Color.FromArgb(num2);
			((Control)textBoxDisplayName).ForeColor = Color.FromArgb(num2);
			((Control)comboBoxGroupName1).ForeColor = Color.FromArgb(num2);
			((Control)comboBoxJ).ForeColor = Color.FromArgb(num2);
			((Control)comboBoxA).ForeColor = Color.FromArgb(num2);
			((Control)comboBoxE).ForeColor = Color.FromArgb(num2);
			((Control)textBoxEV).ForeColor = Color.FromArgb(num2);
			((Control)comboBoxS).ForeColor = Color.FromArgb(num2);
			((Control)comboBox1).ForeColor = Color.FromArgb(num2);
			object obj3 = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[2]);
			val2 = (Font)((obj3 is Font) ? obj3 : null);
			((Control)textBoxServer).Font = new Font(val2.FontFamily, ((Control)textBoxServer).Font.Size, val2.Style);
			((Control)textBoxUser).Font = new Font(val2.FontFamily, ((Control)textBoxUser).Font.Size, val2.Style);
			((Control)textBoxPass).Font = new Font(val2.FontFamily, ((Control)textBoxPass).Font.Size, val2.Style);
			((Control)textBoxLink).Font = new Font(val2.FontFamily, ((Control)textBoxLink).Font.Size, val2.Style);
			((Control)textBoxDisplayName).Font = new Font(val2.FontFamily, ((Control)textBoxDisplayName).Font.Size, val2.Style);
			((Control)comboBoxGroupName1).Font = new Font(val2.FontFamily, ((Control)comboBoxGroupName1).Font.Size, val2.Style);
			((Control)comboBoxJ).Font = new Font(val2.FontFamily, ((Control)comboBoxJ).Font.Size, val2.Style);
			((Control)comboBoxA).Font = new Font(val2.FontFamily, ((Control)comboBoxA).Font.Size, val2.Style);
			((Control)comboBoxE).Font = new Font(val2.FontFamily, ((Control)comboBoxE).Font.Size, val2.Style);
			((Control)textBoxEV).Font = new Font(val2.FontFamily, ((Control)textBoxEV).Font.Size, val2.Style);
			((Control)comboBoxS).Font = new Font(val2.FontFamily, ((Control)comboBoxS).Font.Size, val2.Style);
			((Control)comboBox1).Font = new Font(val2.FontFamily, ((Control)comboBox1).Font.Size, val2.Style);
			int.TryParse(array[++num].Trim().Split('\t', (StringSplitOptions)0)[0], ref num2);
			dataGridView1.BackgroundColor = Color.FromArgb(num2);
			dataGridView2.BackgroundColor = Color.FromArgb(num2);
			int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[1], ref num2);
			TableThemeColor.BackColor = Color.FromArgb(num2);
			int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[2], ref num2);
			TableThemeColor.ForeColor = Color.FromArgb(num2);
			int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[3], ref num2);
			TableThemeColor.SelectionBackColor = Color.FromArgb(num2);
			int.TryParse(array[num].Trim().Split('\t', (StringSplitOptions)0)[4], ref num2);
			TableThemeColor.SelectionForeColor = Color.FromArgb(num2);
			_003F val3 = TableThemeColor;
			object obj4 = ((TypeConverter)fC).ConvertFromString(array[num].Trim().Split('\t', (StringSplitOptions)0)[5]);
			((DataGridViewCellStyle)val3).Font = (Font)((obj4 is Font) ? obj4 : null);
			dataGridView1.EnableHeadersVisualStyles = false;
			dataGridView1.RowsDefaultCellStyle = TableThemeColor;
			dataGridView1.RowHeadersDefaultCellStyle = TableThemeColor;
			dataGridView1.ColumnHeadersDefaultCellStyle = TableThemeColor;
			dataGridView2.EnableHeadersVisualStyles = false;
			dataGridView2.RowsDefaultCellStyle = TableThemeColor;
			dataGridView2.RowHeadersDefaultCellStyle = TableThemeColor;
			dataGridView2.ColumnHeadersDefaultCellStyle = TableThemeColor;
			return true;
		}
		catch (System.Exception)
		{
			return false;
		}
	}

	private void setupMenuTrip(string name, string group)
	{
		//IL_0017: Unknown result type (might be due to invalid IL or missing references)
		//IL_0021: Expected O, but got Unknown
		//IL_0037: Unknown result type (might be due to invalid IL or missing references)
		//IL_0041: Expected O, but got Unknown
		//IL_0047: Unknown result type (might be due to invalid IL or missing references)
		//IL_0051: Expected O, but got Unknown
		//IL_0067: Unknown result type (might be due to invalid IL or missing references)
		//IL_0071: Expected O, but got Unknown
		//IL_00cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d5: Expected O, but got Unknown
		menu1 = new ToolStripMenuItem("Copy Link \"" + name + "\"", (Image)(object)Resources.copy);
		menu2 = new ToolStripMenuItem("Thêm \"" + name + "\" Va\u0300o Nho\u0301m", (Image)(object)Resources.team);
		menu3 = new ToolStripMenuItem("Size");
		menu5 = new ToolStripMenuItem("Xo\u0301a Nho\u0301m \"" + group + "\"", (Image)(object)Resources.no_icon);
		for (int i = 0; i < comboBoxGroupName1.Items.Count; i++)
		{
			((ToolStripDropDownItem)menu2).DropDownItems.Add(comboBoxGroupName1.Items[i].ToString(), (Image)(object)Resources.team);
		}
		((ToolStripDropDownItem)menu2).DropDownItemClicked += new ToolStripItemClickedEventHandler(menu2_ItemClicked);
		((ToolStripDropDownItem)menu3).DropDownItems.Add("Mini");
		((ToolStripDropDownItem)menu3).DropDownItems.Add("Normal");
		((ToolStrip)contextMenuStrip1).Items.Clear();
		((ToolStrip)contextMenuStrip1).Items.Add((ToolStripItem)(object)menu1);
		((ToolStrip)contextMenuStrip1).Items.Add((ToolStripItem)(object)menu2);
		((ToolStrip)contextMenuStrip1).Items.Add((ToolStripItem)(object)menu5);
		nameCheck = name;
	}

	private void menu2_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
	{
		//IL_002f: Unknown result type (might be due to invalid IL or missing references)
		if (nameCheck == "null?")
		{
			Program.AppMain.ThongBao(Program.AppMain.warnNoti, "Account", "Ha\u0303y Cho\u0323n Acc Trươ\u0301c Khi Thao Ta\u0301c");
			return;
		}
		ToolStripItem clickedItem = e.ClickedItem;
		((Control)contextMenuStrip1).Hide();
		comboBoxGroupName2 = clickedItem.Text;
		buttonAddGroup_Data_Click();
	}

	private void menu3_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
	{
		ToolStripItem clickedItem = e.ClickedItem;
	}

	private void contextMenuStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
	{
		//IL_00ac: Unknown result type (might be due to invalid IL or missing references)
		//IL_0056: Unknown result type (might be due to invalid IL or missing references)
		ToolStripItem clickedItem = e.ClickedItem;
		if (clickedItem.Text.Substring(0, 9) == "Copy Link")
		{
			if (nameCheck == "null?")
			{
				Program.AppMain.ThongBao(Program.AppMain.warnNoti, "Account", "Ha\u0303y Cho\u0323n Acc Trươ\u0301c Khi Thao Ta\u0301c");
				return;
			}
			Clipboard.SetText(((Control)textBoxLink).Text);
			((Control)contextMenuStrip1).Hide();
			Program.AppMain.ThongBao(Program.AppMain.inforNoti, "BMx-Tool VPT", "Đa\u0303 Sao Che\u0301p Link \"" + ((Control)textBoxLink).Text + "\"");
		}
		else if (clickedItem.Text.Substring(0, 10) == "Xo\u0301a Nho\u0301m")
		{
			nameGroupDelete = clickedItem.Text.Split('"', (StringSplitOptions)0)[1];
			((Control)contextMenuStrip1).Hide();
			buttonClearGroup_Click();
		}
	}

	private void checkBox2_CheckStateChanged(object sender, EventArgs e)
	{
		if (checkBox2.Checked)
		{
			Process val = Process.Start(linkApp + "/APPS/FlashGame.exe", "http://s3-vuaphapthuat.goplay.vn/s/sound/Assound.swf");
			val.WaitForInputIdle();
			processMusic = val.Id;
			SetParent(val.MainWindowHandle, ((Control)panel1).Handle);
		}
		else
		{
			Process processById = Process.GetProcessById(processMusic);
			processById.Kill();
		}
	}

	private void checkBox3_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		//IL_0061: Unknown result type (might be due to invalid IL or missing references)
		//IL_007c: Unknown result type (might be due to invalid IL or missing references)
		//IL_001f: Unknown result type (might be due to invalid IL or missing references)
		//IL_003a: Unknown result type (might be due to invalid IL or missing references)
		if ((int)checkBox3.CheckState == 1)
		{
			((Form)this).Size = new Size(882, 538);
			((Control)tabControl3).Size = new Size(868, 495);
			((Control)groupBox1).Visible = true;
		}
		else
		{
			((Form)this).Size = new Size(661, 538);
			((Control)tabControl3).Size = new Size(645, 495);
			((Control)groupBox1).Visible = false;
		}
	}

	private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
	{
		//IL_0001: Unknown result type (might be due to invalid IL or missing references)
		//IL_0006: Unknown result type (might be due to invalid IL or missing references)
		//IL_0012: Unknown result type (might be due to invalid IL or missing references)
		//IL_001f: Expected O, but got Unknown
		Process.Start(new ProcessStartInfo
		{
			FileName = "http://vuaphapthuat.go.vn/trang-chu.html",
			UseShellExecute = true
		});
	}

	private void linkLabel2_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
	{
		string text = Path.Combine(linkApp, "AccData\\Debug");
		if (!Directory.Exists(text))
		{
			Directory.CreateDirectory(text);
		}
		Process.Start("explorer.exe", text);
	}

	private void debugAutoLog(string x)
	{
		if (checkBox4.Checked)
		{
			((TextBoxBase)textBoxEV).AppendText(x + "\r\n");
			File.AppendAllText(pathData + "/Debug//autoLog.txt", x + "\r\n");
		}
	}

	private void checkBox4_CheckedChanged(object sender, EventArgs e)
	{
		//IL_002a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0030: Invalid comparison between Unknown and I4
		if (checkBox4.Checked)
		{
			if ((int)Program.AppMain.ThongBao(Program.AppMain.iconNoti, "Debug AutoLog", "Hiê\u0309n Thi\u0323 Va\u0300 Lưu Debug Qua\u0301 Tri\u0300nh AutoLog", Program.AppMain.YesNoNoti, "Lưu-Hu\u0309y") == 6)
			{
				((Control)textBoxEV).Text = "Debug For AutoLog:\r\n";
			}
			else
			{
				checkBox4.CheckState = (CheckState)0;
			}
		}
	}

	private void Login_HelpButtonClicked(object sender, CancelEventArgs e)
	{
	}

	private void groupBox2_HelpRequested(object sender, HelpEventArgs hlpevent)
	{
		//IL_0020: Unknown result type (might be due to invalid IL or missing references)
		string text = "Khu vư\u0323c chưa";
		Program.AppMain.ThongBao(Program.AppMain.iconNoti, "Chư\u0301c Năng", "yyyccc");
	}

	private void tabControl3_Selected(object sender, TabControlEventArgs e)
	{
		//IL_0057: Unknown result type (might be due to invalid IL or missing references)
		//IL_0072: Unknown result type (might be due to invalid IL or missing references)
		//IL_008a: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a5: Unknown result type (might be due to invalid IL or missing references)
		string text = ((Control)tabControl3.SelectedTab).Text;
		string text2 = text;
		string text3 = text2;
		if (text3 == "Login" || text3 == "AutoLog")
		{
			checkBox3.CheckState = (CheckState)0;
			checkBox11.CheckState = (CheckState)0;
			((Form)this).Size = new Size(661, 538);
			((Control)tabControl3).Size = new Size(645, 495);
		}
		else
		{
			((Form)this).Size = new Size(466, 538);
			((Control)tabControl3).Size = new Size(456, 495);
		}
	}

	private void checkBox9_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0073: Unknown result type (might be due to invalid IL or missing references)
		//IL_001e: Unknown result type (might be due to invalid IL or missing references)
		//IL_004b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0055: Expected O, but got Unknown
		//IL_00c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e7: Unknown result type (might be due to invalid IL or missing references)
		IsStop2 = false;
		if (checkBox9.Checked)
		{
			((Control)checkBox9).BackColor = Color.Green;
			((Control)checkBox8).Enabled = false;
			((Control)checkBox11).Enabled = false;
			T = new System.Threading.Tasks.Task((Action)([CompilerGenerated] () =>
			{
				//IL_0039: Unknown result type (might be due to invalid IL or missing references)
				//IL_006e: Unknown result type (might be due to invalid IL or missing references)
				//IL_0095: Unknown result type (might be due to invalid IL or missing references)
				//IL_00e3: Unknown result type (might be due to invalid IL or missing references)
				//IL_010a: Unknown result type (might be due to invalid IL or missing references)
				int rowCount = dataGridView1.RowCount;
				if (rowCount == 0)
				{
					debugText("Không Có Thông Tin Ta\u0300i Khoa\u0309n");
				}
				else if (!Program.AppMain.isActive)
				{
					MessageBox.Show("Tính Năng Đã Khóa Hoặc Không Có Internet Để Kiểm Tra Thời Gian Hiện Tại\nNếu Do Kết Nối Internet Hãy Kết Nối Và Thử Lại Sau 1 Phút");
				}
				else
				{
					while (!IsStop2)
					{
						for (int i = 0; i < rowCount; i++)
						{
							((DataGridViewBand)dataGridView1.Rows[i]).DefaultCellStyle.BackColor = TableThemeColor.SelectionBackColor;
							((DataGridViewBand)dataGridView1.Rows[i]).DefaultCellStyle.ForeColor = TableThemeColor.SelectionForeColor;
							delay_100ms(3, onlyLog: true);
							while (!Auto_LogAcc(i, AffterJob: false, onlyLog: true))
							{
							}
							delay_100ms(1, onlyLog: true);
							((DataGridViewBand)dataGridView1.Rows[i]).DefaultCellStyle.BackColor = TableThemeColor.BackColor;
							((DataGridViewBand)dataGridView1.Rows[i]).DefaultCellStyle.ForeColor = TableThemeColor.ForeColor;
							delay_100ms(3, onlyLog: true);
							if (IsStop2)
							{
								break;
							}
						}
						debugText("Hoàn Tất Mơ\u0309 Flash");
						IsStop2 = true;
						checkBox9.CheckState = (CheckState)0;
					}
				}
			}));
			T.Start();
		}
		else
		{
			((Control)checkBox9).BackColor = Control.DefaultBackColor;
			((Control)checkBox8).Enabled = true;
			((Control)checkBox11).Enabled = true;
			IsStop2 = true;
			for (int num = 0; num < dataGridView1.RowCount; num++)
			{
				((DataGridViewBand)dataGridView1.Rows[num]).DefaultCellStyle.BackColor = TableThemeColor.BackColor;
				((DataGridViewBand)dataGridView1.Rows[num]).DefaultCellStyle.ForeColor = TableThemeColor.ForeColor;
			}
		}
	}

	private void checkBox10_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		//IL_0217: Unknown result type (might be due to invalid IL or missing references)
		//IL_021d: Invalid comparison between Unknown and I4
		//IL_001d: Unknown result type (might be due to invalid IL or missing references)
		//IL_022f: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a1: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ab: Expected O, but got Unknown
		//IL_0271: Unknown result type (might be due to invalid IL or missing references)
		//IL_0299: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f3: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fd: Expected O, but got Unknown
		//IL_00d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_0147: Unknown result type (might be due to invalid IL or missing references)
		//IL_0151: Expected O, but got Unknown
		//IL_0127: Unknown result type (might be due to invalid IL or missing references)
		//IL_019b: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a5: Expected O, but got Unknown
		//IL_017b: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f6: Expected O, but got Unknown
		//IL_01cc: Unknown result type (might be due to invalid IL or missing references)
		if ((int)checkBox10.CheckState == 1)
		{
			((Control)checkBox10).BackColor = Color.Green;
			((Control)ButtonRunAuto).Enabled = false;
			IsStop2 = false;
			string text = ((Control)comboBox1).Text;
			string text2 = text;
			if (!(text2 == "Log Acc Trong List"))
			{
				if (!(text2 == "Log Và Chạy Tool Train"))
				{
					if (!(text2 == "Log Và Chạy Tool Bắt Pet"))
					{
						if (!(text2 == "Log Và Chạy Tool Trồng"))
						{
							if (!(text2 == "Log Và Chạy Tool Câu"))
							{
								return;
							}
							if (!Program.AppMain.isActive)
							{
								MessageBox.Show("Tính Năng Đã Khóa Hoặc Không Có Internet Để Kiểm Tra Thời Gian Hiện Tại\nNếu Do Kết Nối Internet Hãy Kết Nối Và Thử Lại Sau 1 Phút");
								checkBox10.CheckState = (CheckState)0;
								return;
							}
							T = new System.Threading.Tasks.Task((Action)([CompilerGenerated] () =>
							{
								//IL_005d: Unknown result type (might be due to invalid IL or missing references)
								//IL_0089: Unknown result type (might be due to invalid IL or missing references)
								//IL_0452: Unknown result type (might be due to invalid IL or missing references)
								//IL_047e: Unknown result type (might be due to invalid IL or missing references)
								int rowCount = dataGridView2.RowCount;
								if (rowCount == 0)
								{
									debugText("Không Có Thông Tin Ta\u0300i Khoa\u0309n");
								}
								else
								{
									while (!IsStop2)
									{
										Turn = 0;
										for (int i = 0; i < rowCount; i++)
										{
											((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.BackColor = TableThemeColor.SelectionBackColor;
											((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.ForeColor = TableThemeColor.SelectionForeColor;
											int num2 = 0;
											tabControl1.SelectTab(0);
											delay_100ms(5, onlyLog: true);
											for (int j = 0; j < dataGridView1.RowCount; j++)
											{
												if (dataGridView2.Rows[i].Cells[3].Value.ToString().Split(charSplitAutoLog, (StringSplitOptions)0)[1] == dataGridView1.Rows[j].Cells[1].Value.ToString())
												{
													num2 = j;
													break;
												}
											}
											if (Settings.Default.newProcess)
											{
												AutoLogAndRun(num2, "Câu");
											}
											else
											{
												while (!Auto_LogAcc(num2))
												{
												}
												string text3 = "xx";
												string text4 = "xxx";
												string text5 = "xxx";
												string text6 = "goid";
												string text7 = "xxx";
												string text8 = "xxx";
												text3 = dataGridView1.Rows[num2].Cells[0].Value.ToString();
												text7 = dataGridView1.Rows[num2].Cells[1].Value.ToString();
												text6 = dataGridView1.Rows[num2].Cells[2].Value.ToString();
												if (text6 == "Go")
												{
													text4 = text7 + "@goid";
												}
												else if (text6 == "VTC")
												{
													text4 = text7;
												}
												text8 = dataGridView1.Rows[num2].Cells[3].Value.ToString();
												string text9 = "";
												text9 = (Settings.Default.nameStyle ? (text8 + " " + text3) : (text3 + "." + text8));
												delay_100ms(1, onlyLog: true);
												while (CheckHandleWindows("BMx Nông Dân [" + text9 + "]"))
												{
													GetWindowThreadProcessId(FindWindowHandle(null, "BMx Nông Dân [" + text9 + "]"), out var processId);
													Process processById = Process.GetProcessById((int)processId);
													processById.Kill();
													delay_100ms(2, onlyLog: true);
												}
												bool flag = false;
												Program.AppMain.nameFlash = text9;
												Program.AppMain.nameUser = text4;
												Program.AppMain.link = string.Concat(new string[9]
												{
													Program.AppMain.link1,
													text3,
													Program.AppMain.link2,
													text4,
													Program.AppMain.link3,
													text5,
													Program.AppMain.link4,
													Program.AppMain.link5,
													Program.AppMain.link6
												});
												if (Settings.Default.newProcess)
												{
													Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[9]
													{
														"BMx_HaiTrongCau \"",
														Program.AppMain.nameFlash,
														"\" \"",
														Program.AppMain.nameUser,
														"\" \"",
														Program.AppMain.link,
														"\" \"Trồng\" \"",
														flag.ToString(),
														"\""
													}));
												}
												else
												{
													HaiTrongCau haiTrongCau = new HaiTrongCau();
													((Control)haiTrongCau).Show();
												}
											}
											((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.BackColor = TableThemeColor.BackColor;
											((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.ForeColor = TableThemeColor.ForeColor;
											Turn++;
											delay_100ms(3, onlyLog: true);
										}
										debugText("Hoàn Tất Mơ\u0309 Tool Câu");
										checkBox10.CheckState = (CheckState)0;
										((Control)comboBox1).Text = "Cho\u0323n Job Phu\u0323";
									}
								}
							}));
							T.Start();
							return;
						}
						if (!Program.AppMain.isActive)
						{
							MessageBox.Show("Tính Năng Đã Khóa Hoặc Không Có Internet Để Kiểm Tra Thời Gian Hiện Tại\nNếu Do Kết Nối Internet Hãy Kết Nối Và Thử Lại Sau 1 Phút");
							checkBox10.CheckState = (CheckState)0;
							return;
						}
						T = new System.Threading.Tasks.Task((Action)([CompilerGenerated] () =>
						{
							//IL_005d: Unknown result type (might be due to invalid IL or missing references)
							//IL_0089: Unknown result type (might be due to invalid IL or missing references)
							//IL_0452: Unknown result type (might be due to invalid IL or missing references)
							//IL_047e: Unknown result type (might be due to invalid IL or missing references)
							int rowCount = dataGridView2.RowCount;
							if (rowCount == 0)
							{
								debugText("Không Có Thông Tin Ta\u0300i Khoa\u0309n");
							}
							else
							{
								while (!IsStop2)
								{
									Turn = 0;
									for (int i = 0; i < rowCount; i++)
									{
										((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.BackColor = TableThemeColor.SelectionBackColor;
										((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.ForeColor = TableThemeColor.SelectionForeColor;
										int num2 = 0;
										tabControl1.SelectTab(0);
										delay_100ms(5, onlyLog: true);
										for (int j = 0; j < dataGridView1.RowCount; j++)
										{
											if (dataGridView2.Rows[i].Cells[3].Value.ToString().Split(charSplitAutoLog, (StringSplitOptions)0)[1] == dataGridView1.Rows[j].Cells[1].Value.ToString())
											{
												num2 = j;
												break;
											}
										}
										if (Settings.Default.newProcess)
										{
											AutoLogAndRun(num2, "Trồng");
										}
										else
										{
											while (!Auto_LogAcc(num2))
											{
											}
											string text3 = "xx";
											string text4 = "xxx";
											string text5 = "xxx";
											string text6 = "goid";
											string text7 = "xxx";
											string text8 = "xxx";
											text3 = dataGridView1.Rows[num2].Cells[0].Value.ToString();
											text7 = dataGridView1.Rows[num2].Cells[1].Value.ToString();
											text6 = dataGridView1.Rows[num2].Cells[2].Value.ToString();
											if (text6 == "Go")
											{
												text4 = text7 + "@goid";
											}
											else if (text6 == "VTC")
											{
												text4 = text7;
											}
											text8 = dataGridView1.Rows[num2].Cells[3].Value.ToString();
											string text9 = "";
											text9 = (Settings.Default.nameStyle ? (text8 + " " + text3) : (text3 + "." + text8));
											delay_100ms(1, onlyLog: true);
											while (CheckHandleWindows("BMx Nông Dân [" + text9 + "]"))
											{
												GetWindowThreadProcessId(FindWindowHandle(null, "BMx Nông Dân [" + text9 + "]"), out var processId);
												Process processById = Process.GetProcessById((int)processId);
												processById.Kill();
												delay_100ms(2, onlyLog: true);
											}
											bool flag = false;
											Program.AppMain.nameFlash = text9;
											Program.AppMain.nameUser = text4;
											Program.AppMain.link = string.Concat(new string[9]
											{
												Program.AppMain.link1,
												text3,
												Program.AppMain.link2,
												text4,
												Program.AppMain.link3,
												text5,
												Program.AppMain.link4,
												Program.AppMain.link5,
												Program.AppMain.link6
											});
											if (Settings.Default.newProcess)
											{
												Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[9]
												{
													"BMx_HaiTrongCau \"",
													Program.AppMain.nameFlash,
													"\" \"",
													Program.AppMain.nameUser,
													"\" \"",
													Program.AppMain.link,
													"\" \"Trồng\" \"",
													flag.ToString(),
													"\""
												}));
											}
											else
											{
												HaiTrongCau haiTrongCau = new HaiTrongCau();
												((Control)haiTrongCau).Show();
											}
										}
										((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.BackColor = TableThemeColor.BackColor;
										((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.ForeColor = TableThemeColor.ForeColor;
										Turn++;
										delay_100ms(3, onlyLog: true);
									}
									debugText("Hoàn Tất Mơ\u0309 Tool Trồng");
									checkBox10.CheckState = (CheckState)0;
									((Control)comboBox1).Text = "Cho\u0323n Job Phu\u0323";
								}
							}
						}));
						T.Start();
						return;
					}
					if (!Program.AppMain.isActive)
					{
						MessageBox.Show("Tính Năng Đã Khóa Hoặc Không Có Internet Để Kiểm Tra Thời Gian Hiện Tại\nNếu Do Kết Nối Internet Hãy Kết Nối Và Thử Lại Sau 1 Phút");
						checkBox10.CheckState = (CheckState)0;
						return;
					}
					T = new System.Threading.Tasks.Task((Action)([CompilerGenerated] () =>
					{
						//IL_006f: Unknown result type (might be due to invalid IL or missing references)
						//IL_009b: Unknown result type (might be due to invalid IL or missing references)
						//IL_0464: Unknown result type (might be due to invalid IL or missing references)
						//IL_0490: Unknown result type (might be due to invalid IL or missing references)
						int rowCount = dataGridView2.RowCount;
						if (rowCount == 0)
						{
							debugText("Không Có Thông Tin Ta\u0300i Khoa\u0309n");
						}
						else
						{
							while (!IsStop2)
							{
								Turn = 0;
								for (int i = 0; i < rowCount; i++)
								{
									if (IsStop2)
									{
										break;
									}
									((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.BackColor = TableThemeColor.SelectionBackColor;
									((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.ForeColor = TableThemeColor.SelectionForeColor;
									int num2 = 0;
									tabControl1.SelectTab(0);
									delay_100ms(5, onlyLog: true);
									for (int j = 0; j < dataGridView1.RowCount; j++)
									{
										if (dataGridView2.Rows[i].Cells[3].Value.ToString().Split(charSplitAutoLog, (StringSplitOptions)0)[1] == dataGridView1.Rows[j].Cells[1].Value.ToString())
										{
											num2 = j;
											break;
										}
									}
									if (Settings.Default.newProcess)
									{
										AutoLogAndRun(num2, "Bắt Pet");
									}
									else
									{
										while (!Auto_LogAcc(num2))
										{
										}
										string text3 = "xx";
										string text4 = "xxx";
										string text5 = "xxx";
										string text6 = "goid";
										string text7 = "xxx";
										string text8 = "xxx";
										text3 = dataGridView1.Rows[num2].Cells[0].Value.ToString();
										text7 = dataGridView1.Rows[num2].Cells[1].Value.ToString();
										text6 = dataGridView1.Rows[num2].Cells[2].Value.ToString();
										if (text6 == "Go")
										{
											text4 = text7 + "@goid";
										}
										else if (text6 == "VTC")
										{
											text4 = text7;
										}
										text8 = dataGridView1.Rows[num2].Cells[3].Value.ToString();
										string text9 = "";
										text9 = (Settings.Default.nameStyle ? (text8 + " " + text3) : (text3 + "." + text8));
										delay_100ms(1, onlyLog: true);
										while (CheckHandleWindows("[" + text9 + "] BMx Bắt Pet"))
										{
											GetWindowThreadProcessId(FindWindowHandle(null, "[" + text9 + "] BMx Bắt Pet"), out var processId);
											Process processById = Process.GetProcessById((int)processId);
											processById.Kill();
											delay_100ms(2, onlyLog: true);
										}
										bool flag = false;
										Program.AppMain.nameFlash = text9;
										Program.AppMain.nameUser = text4;
										Program.AppMain.link = string.Concat(new string[9]
										{
											Program.AppMain.link1,
											text3,
											Program.AppMain.link2,
											text4,
											Program.AppMain.link3,
											text5,
											Program.AppMain.link4,
											Program.AppMain.link5,
											Program.AppMain.link6
										});
										if (Settings.Default.newProcess)
										{
											Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[9]
											{
												"BMx_BatPet \"",
												Program.AppMain.nameFlash,
												"\" \"",
												Program.AppMain.nameUser,
												"\" \"",
												Program.AppMain.link,
												"\" \"",
												flag.ToString(),
												"\""
											}));
										}
										else
										{
											BatPet batPet = new BatPet();
											((Control)batPet).Show();
										}
									}
									((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.BackColor = TableThemeColor.BackColor;
									((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.ForeColor = TableThemeColor.ForeColor;
									Turn++;
									delay_100ms(3, onlyLog: true);
								}
								debugText("Hoàn Tất Mơ\u0309 Tool Bắt Pet");
								checkBox10.CheckState = (CheckState)0;
								((Control)comboBox1).Text = "Cho\u0323n Job Phu\u0323";
							}
						}
					}));
					T.Start();
					return;
				}
				if (!Program.AppMain.isActive)
				{
					MessageBox.Show("Tính Năng Đã Khóa Hoặc Không Có Internet Để Kiểm Tra Thời Gian Hiện Tại\nNếu Do Kết Nối Internet Hãy Kết Nối Và Thử Lại Sau 1 Phút");
					checkBox10.CheckState = (CheckState)0;
					return;
				}
				T = new System.Threading.Tasks.Task((Action)([CompilerGenerated] () =>
				{
					//IL_006f: Unknown result type (might be due to invalid IL or missing references)
					//IL_009b: Unknown result type (might be due to invalid IL or missing references)
					//IL_046a: Unknown result type (might be due to invalid IL or missing references)
					//IL_0496: Unknown result type (might be due to invalid IL or missing references)
					int rowCount = dataGridView2.RowCount;
					if (rowCount == 0)
					{
						debugText("Không Có Thông Tin Ta\u0300i Khoa\u0309n");
					}
					else
					{
						while (!IsStop2)
						{
							Turn = 0;
							for (int i = 0; i < rowCount; i++)
							{
								if (IsStop2)
								{
									break;
								}
								((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.BackColor = TableThemeColor.SelectionBackColor;
								((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.ForeColor = TableThemeColor.SelectionForeColor;
								int num2 = 0;
								tabControl1.SelectTab(0);
								delay_100ms(5, onlyLog: true);
								for (int j = 0; j < dataGridView1.RowCount; j++)
								{
									if (dataGridView2.Rows[i].Cells[3].Value.ToString().Split(charSplitAutoLog, (StringSplitOptions)0)[1] == dataGridView1.Rows[j].Cells[1].Value.ToString())
									{
										num2 = j;
										break;
									}
								}
								if (Settings.Default.newProcess)
								{
									AutoLogAndRun(num2, "Train");
								}
								else
								{
									while (!Auto_LogAcc(num2))
									{
									}
									string text3 = "xx";
									string text4 = "xxx";
									string text5 = "xxx";
									string text6 = "goid";
									string text7 = "xxx";
									string text8 = "xxx";
									text3 = dataGridView1.Rows[num2].Cells[0].Value.ToString();
									text7 = dataGridView1.Rows[num2].Cells[1].Value.ToString();
									text6 = dataGridView1.Rows[num2].Cells[2].Value.ToString();
									if (text6 == "Go")
									{
										text4 = text7 + "@goid";
									}
									else if (text6 == "VTC")
									{
										text4 = text7;
									}
									text8 = dataGridView1.Rows[num2].Cells[3].Value.ToString();
									string text9 = "";
									text9 = (Settings.Default.nameStyle ? (text8 + " " + text3) : (text3 + "." + text8));
									delay_100ms(1, onlyLog: true);
									while (CheckHandleWindows("[" + text9 + "] BMx Train"))
									{
										GetWindowThreadProcessId(FindWindowHandle(null, "[" + text9 + "] BMx Train"), out var processId);
										Process processById = Process.GetProcessById((int)processId);
										processById.Kill();
										delay_100ms(2, onlyLog: true);
									}
									Program.AppMain.nameFlash = text9;
									Program.AppMain.nameUser = text4;
									Program.AppMain.link = string.Concat(new string[9]
									{
										Program.AppMain.link1,
										text3,
										Program.AppMain.link2,
										text4,
										Program.AppMain.link3,
										text5,
										Program.AppMain.link4,
										Program.AppMain.link5,
										Program.AppMain.link6
									});
									Program.AppMain.autoRun = true;
									if (Settings.Default.newProcess)
									{
										Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[9]
										{
											"BMx_Train \"",
											Program.AppMain.nameFlash,
											"\" \"",
											Program.AppMain.nameUser,
											"\" \"",
											Program.AppMain.link,
											"\" \"",
											Program.AppMain.autoRun.ToString(),
											"\""
										}));
									}
									else
									{
										Train train = new Train();
										((Control)train).Show();
									}
								}
								((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.BackColor = TableThemeColor.BackColor;
								((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.ForeColor = TableThemeColor.ForeColor;
								Turn++;
								delay_100ms(3, onlyLog: true);
							}
							debugText("Hoàn Tất Mơ\u0309 Tool Train");
							checkBox10.CheckState = (CheckState)0;
							((Control)comboBox1).Text = "Cho\u0323n Job Phu\u0323";
						}
					}
				}));
				T.Start();
				return;
			}
			T = new System.Threading.Tasks.Task((Action)([CompilerGenerated] () =>
			{
				//IL_005d: Unknown result type (might be due to invalid IL or missing references)
				//IL_0089: Unknown result type (might be due to invalid IL or missing references)
				//IL_01a8: Unknown result type (might be due to invalid IL or missing references)
				//IL_01d4: Unknown result type (might be due to invalid IL or missing references)
				int rowCount = dataGridView2.RowCount;
				if (rowCount == 0)
				{
					debugText("Không Có Thông Tin Thiết Lập");
				}
				else
				{
					while (!IsStop2)
					{
						Turn = 0;
						for (int i = 0; i < rowCount; i++)
						{
							((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.BackColor = TableThemeColor.SelectionBackColor;
							((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.ForeColor = TableThemeColor.SelectionForeColor;
							int row = 0;
							tabControl1.SelectTab(0);
							delay_100ms(5, onlyLog: true);
							for (int j = 0; j < dataGridView1.RowCount; j++)
							{
								if (dataGridView2.Rows[i].Cells[3].Value.ToString().Split(charSplitAutoLog, (StringSplitOptions)0)[1] == dataGridView1.Rows[j].Cells[1].Value.ToString())
								{
									row = j;
									break;
								}
							}
							if (Settings.Default.newProcess)
							{
								AutoLogAndRun(row, "Autolog-Log");
							}
							else
							{
								while (!Auto_LogAcc(row))
								{
								}
							}
							((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.BackColor = TableThemeColor.BackColor;
							((DataGridViewBand)dataGridView2.Rows[Turn]).DefaultCellStyle.ForeColor = TableThemeColor.ForeColor;
							delay_100ms(10, onlyLog: true);
							Turn++;
						}
						debugText("Hoàn Tất Log Acc");
						checkBox10.CheckState = (CheckState)0;
						((Control)comboBox1).Text = "Cho\u0323n Job Phu\u0323";
					}
				}
			}));
			T.Start();
		}
		else if ((int)checkBox10.CheckState == 0)
		{
			((Control)checkBox10).BackColor = Control.DefaultBackColor;
			((Control)ButtonRunAuto).Enabled = true;
			IsStop2 = true;
			for (int num = 0; num < dataGridView2.RowCount; num++)
			{
				((DataGridViewBand)dataGridView2.Rows[num]).DefaultCellStyle.BackColor = TableThemeColor.BackColor;
				((DataGridViewBand)dataGridView2.Rows[num]).DefaultCellStyle.ForeColor = TableThemeColor.ForeColor;
			}
		}
	}

	private void checkBox8_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_006c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0017: Unknown result type (might be due to invalid IL or missing references)
		//IL_0044: Unknown result type (might be due to invalid IL or missing references)
		//IL_004e: Expected O, but got Unknown
		//IL_00b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e0: Unknown result type (might be due to invalid IL or missing references)
		if (checkBox8.Checked)
		{
			((Control)checkBox8).BackColor = Color.Green;
			((Control)checkBox9).Enabled = false;
			((Control)checkBox11).Enabled = false;
			T = new System.Threading.Tasks.Task((Action)([CompilerGenerated] () =>
			{
				//IL_0039: Unknown result type (might be due to invalid IL or missing references)
				//IL_0087: Unknown result type (might be due to invalid IL or missing references)
				//IL_00ae: Unknown result type (might be due to invalid IL or missing references)
				//IL_0d4b: Unknown result type (might be due to invalid IL or missing references)
				//IL_0d72: Unknown result type (might be due to invalid IL or missing references)
				int rowCount = dataGridView1.RowCount;
				if (rowCount == 0)
				{
					debugText("Không Có Thông Tin Ta\u0300i Khoa\u0309n");
				}
				else if (!Program.AppMain.isActive)
				{
					MessageBox.Show("Tính Năng Đã Khóa Hoặc Không Có Internet Để Kiểm Tra Thời Gian Hiện Tại\nNếu Do Kết Nối Internet Hãy Kết Nối Và Thử Lại Sau 1 Phút");
				}
				else
				{
					IsStop2 = false;
					while (!IsStop2)
					{
						for (int i = 0; i < rowCount; i++)
						{
							if (IsStop2)
							{
								break;
							}
							((DataGridViewBand)dataGridView1.Rows[i]).DefaultCellStyle.BackColor = TableThemeColor.SelectionBackColor;
							((DataGridViewBand)dataGridView1.Rows[i]).DefaultCellStyle.ForeColor = TableThemeColor.SelectionForeColor;
							delay_100ms(3, onlyLog: true);
							string text = "xx";
							string text2 = "xxx";
							string text3 = "xxx";
							string text4 = "goid";
							string text5 = "xxx";
							string text6 = "xxx";
							text = dataGridView1.Rows[i].Cells[0].Value.ToString();
							text5 = dataGridView1.Rows[i].Cells[1].Value.ToString();
							text4 = dataGridView1.Rows[i].Cells[2].Value.ToString();
							if (text4 == "Go")
							{
								text2 = text5 + "@goid";
							}
							else if (text4 == "VTC")
							{
								text2 = text5;
							}
							text6 = dataGridView1.Rows[i].Cells[3].Value.ToString();
							string text7 = "";
							text7 = (Settings.Default.nameStyle ? (text6 + " " + text) : (text + "." + text6));
							if (CheckHandleWindows(text7))
							{
								string text8 = dataGridView1.Rows[i].Cells[5].FormattedValue.ToString();
								string text9 = text8;
								switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text9))
								{
								case 3157821886u:
									if (text9 == "Daily")
									{
										if (!CheckHandleWindows("[" + text7 + "] BMx Daily"))
										{
											Program.AppMain.nameFlash = text7;
											Program.AppMain.nameUser = text2;
											Program.AppMain.link = string.Concat(new string[9]
											{
												Program.AppMain.link1,
												text,
												Program.AppMain.link2,
												text2,
												Program.AppMain.link3,
												text3,
												Program.AppMain.link4,
												Program.AppMain.link5,
												Program.AppMain.link6
											});
											if (Settings.Default.newProcess)
											{
												bool flag4 = false;
												bool flag5 = false;
												Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[11]
												{
													"BMx_Daily \"",
													Program.AppMain.nameFlash,
													"\" \"",
													Program.AppMain.nameUser,
													"\" \"",
													Program.AppMain.link,
													"\" \"",
													flag5.ToString(),
													"\" \"",
													flag4.ToString(),
													"\""
												}));
											}
											else
											{
												Daily daily = new Daily();
												((Control)daily).Show();
											}
										}
										else
										{
											AutoControl.BringToFront(FindWindowHandle(null, "[" + text7 + "] BMx Daily"));
										}
									}
									break;
								case 486563695u:
									if (text9 == "Bắt Pet")
									{
										if (!CheckHandleWindows("[" + text7 + "] BMx Bắt Pet"))
										{
											Program.AppMain.nameFlash = text7;
											Program.AppMain.nameUser = text2;
											Program.AppMain.link = string.Concat(new string[9]
											{
												Program.AppMain.link1,
												text,
												Program.AppMain.link2,
												text2,
												Program.AppMain.link3,
												text3,
												Program.AppMain.link4,
												Program.AppMain.link5,
												Program.AppMain.link6
											});
											if (Settings.Default.newProcess)
											{
												Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[7]
												{
													"BMx_BatPet \"",
													Program.AppMain.nameFlash,
													"\" \"",
													Program.AppMain.nameUser,
													"\" \"",
													Program.AppMain.link,
													"\""
												}));
											}
											else
											{
												BatPet batPet = new BatPet();
												((Control)batPet).Show();
											}
										}
										else
										{
											AutoControl.BringToFront(FindWindowHandle(null, "[" + text7 + "] BMx Bă\u0301t Pet"));
										}
									}
									break;
								case 4245491132u:
									if (text9 == "Đổi Năng Nổ")
									{
										if (!CheckHandleWindows("[" + text7 + "] BMx Nang No"))
										{
											Program.AppMain.nameFlash = text7;
											Program.AppMain.nameUser = text2;
											Program.AppMain.link = string.Concat(new string[9]
											{
												Program.AppMain.link1,
												text,
												Program.AppMain.link2,
												text2,
												Program.AppMain.link3,
												text3,
												Program.AppMain.link4,
												Program.AppMain.link5,
												Program.AppMain.link6
											});
											if (Settings.Default.newProcess)
											{
												bool flag2 = false;
												Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[9]
												{
													"BMx_NangNo \"",
													Program.AppMain.nameFlash,
													"\" \"",
													Program.AppMain.nameUser,
													"\" \"",
													Program.AppMain.link,
													"\" \"",
													flag2.ToString(),
													"\""
												}));
											}
											else
											{
												NangNo nangNo = new NangNo();
												((Control)nangNo).Show();
											}
										}
										else
										{
											AutoControl.BringToFront(FindWindowHandle(null, "[" + text7 + "] BMx Năng Nô\u0309"));
										}
									}
									break;
								case 3431945722u:
									if (text9 == "Trừ Ma")
									{
										if (!CheckHandleWindows("[" + text7 + "] BMx Tru Ma"))
										{
											Program.AppMain.nameFlash = text7;
											Program.AppMain.nameUser = text2;
											Program.AppMain.link = string.Concat(new string[9]
											{
												Program.AppMain.link1,
												text,
												Program.AppMain.link2,
												text2,
												Program.AppMain.link3,
												text3,
												Program.AppMain.link4,
												Program.AppMain.link5,
												Program.AppMain.link6
											});
											if (Settings.Default.newProcess)
											{
												bool flag6 = false;
												Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[9]
												{
													"BMx_TruMa \"",
													Program.AppMain.nameFlash,
													"\" \"",
													Program.AppMain.nameUser,
													"\" \"",
													Program.AppMain.link,
													"\" \"",
													flag6.ToString(),
													"\""
												}));
											}
											else
											{
												TruMa truMa = new TruMa();
												((Control)truMa).Show();
											}
										}
										else
										{
											AutoControl.BringToFront(FindWindowHandle(null, "[" + text7 + "] BMx Trư\u0300 Ma"));
										}
									}
									break;
								case 1009747641u:
									if (text9 == "Hái-Trồng-Câu")
									{
										if (!CheckHandleWindows("BMx Nông Dân [" + text7 + "]"))
										{
											Program.AppMain.nameFlash = text7;
											Program.AppMain.nameUser = text2;
											Program.AppMain.link = string.Concat(new string[9]
											{
												Program.AppMain.link1,
												text,
												Program.AppMain.link2,
												text2,
												Program.AppMain.link3,
												text3,
												Program.AppMain.link4,
												Program.AppMain.link5,
												Program.AppMain.link6
											});
											if (Settings.Default.newProcess)
											{
												bool flag3 = false;
												Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[9]
												{
													"BMx_HaiTrongCau \"",
													Program.AppMain.nameFlash,
													"\" \"",
													Program.AppMain.nameUser,
													"\" \"",
													Program.AppMain.link,
													"\" \"",
													flag3.ToString(),
													"\""
												}));
											}
											else
											{
												HaiTrongCau haiTrongCau = new HaiTrongCau();
												((Control)haiTrongCau).Show();
											}
										}
										else
										{
											AutoControl.BringToFront(FindWindowHandle(null, "BMx Nông Dân [" + text7 + "]"));
										}
									}
									break;
								case 3776905896u:
									if (text9 == "Tu Hành")
									{
										if (!CheckHandleWindows("[" + text7 + "] BMx Tu Hành"))
										{
											Program.AppMain.nameFlash = text7;
											Program.AppMain.nameUser = text2;
											Program.AppMain.link = string.Concat(new string[9]
											{
												Program.AppMain.link1,
												text,
												Program.AppMain.link2,
												text2,
												Program.AppMain.link3,
												text3,
												Program.AppMain.link4,
												Program.AppMain.link5,
												Program.AppMain.link6
											});
											TuHanh tuHanh = new TuHanh();
											((Control)tuHanh).Show();
										}
										else
										{
											AutoControl.BringToFront(FindWindowHandle(null, "[" + text7 + "] BMx Tu Hành"));
										}
									}
									break;
								case 1331082619u:
									if (text9 == "Hỗ Trợ Nhiệm Vụ")
									{
										if (!CheckHandleWindows("[" + text7 + "] BMx Hỗ Trợ Nhiệm Vụ"))
										{
											Program.AppMain.nameFlash = text7;
											Program.AppMain.nameUser = text2;
											Program.AppMain.link = string.Concat(new string[9]
											{
												Program.AppMain.link1,
												text,
												Program.AppMain.link2,
												text2,
												Program.AppMain.link3,
												text3,
												Program.AppMain.link4,
												Program.AppMain.link5,
												Program.AppMain.link6
											});
											Program.AppMain.nameFlash = text7;
											Program.AppMain.nameUser = text2;
											Program.AppMain.link = string.Concat(new string[9]
											{
												Program.AppMain.link1,
												text,
												Program.AppMain.link2,
												text2,
												Program.AppMain.link3,
												text3,
												Program.AppMain.link4,
												Program.AppMain.link5,
												Program.AppMain.link6
											});
											if (Settings.Default.newProcess)
											{
												Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[7]
												{
													"BMx_HoTroQ200 \"",
													Program.AppMain.nameFlash,
													"\" \"",
													Program.AppMain.nameUser,
													"\" \"",
													Program.AppMain.link,
													"\""
												}));
											}
											else
											{
												HoTroQ200 hoTroQ = new HoTroQ200();
												((Control)hoTroQ).Show();
											}
										}
										else
										{
											AutoControl.BringToFront(FindWindowHandle(null, "[" + text7 + "] BMx Hỗ Trợ Nhiệm Vụ"));
										}
									}
									break;
								case 504525065u:
									if (text9 == "Train")
									{
										if (!CheckHandleWindows("[" + text7 + "] BMx Train"))
										{
											Program.AppMain.nameFlash = text7;
											Program.AppMain.nameUser = text2;
											Program.AppMain.link = string.Concat(new string[9]
											{
												Program.AppMain.link1,
												text,
												Program.AppMain.link2,
												text2,
												Program.AppMain.link3,
												text3,
												Program.AppMain.link4,
												Program.AppMain.link5,
												Program.AppMain.link6
											});
											if (Settings.Default.newProcess)
											{
												bool flag = false;
												Process.Start(linkApp + "\\BMxTool.exe", string.Concat(new string[9]
												{
													"BMx_Train \"",
													Program.AppMain.nameFlash,
													"\" \"",
													Program.AppMain.nameUser,
													"\" \"",
													Program.AppMain.link,
													"\" \"",
													flag.ToString(),
													"\""
												}));
											}
											else
											{
												Train train = new Train();
												((Control)train).Show();
											}
										}
										else
										{
											AutoControl.BringToFront(FindWindowHandle(null, "[" + text7 + "] BMx Train"));
										}
									}
									break;
								}
							}
							((DataGridViewBand)dataGridView1.Rows[i]).DefaultCellStyle.BackColor = TableThemeColor.BackColor;
							((DataGridViewBand)dataGridView1.Rows[i]).DefaultCellStyle.ForeColor = TableThemeColor.ForeColor;
							delay_100ms(5, onlyLog: true);
						}
						debugText("Hoàn Tất Mơ\u0309 Flash");
						IsStop2 = true;
						checkBox8.CheckState = (CheckState)0;
					}
				}
			}));
			T.Start();
		}
		else
		{
			((Control)checkBox8).BackColor = Control.DefaultBackColor;
			((Control)checkBox9).Enabled = true;
			((Control)checkBox11).Enabled = true;
			IsStop2 = true;
			for (int num = 0; num < dataGridView1.RowCount; num++)
			{
				((DataGridViewBand)dataGridView1.Rows[num]).DefaultCellStyle.BackColor = TableThemeColor.BackColor;
				((DataGridViewBand)dataGridView1.Rows[num]).DefaultCellStyle.ForeColor = TableThemeColor.ForeColor;
			}
		}
	}

	private void checkBox11_CheckStateChanged(object sender, EventArgs e)
	{
		//IL_0007: Unknown result type (might be due to invalid IL or missing references)
		//IL_000d: Invalid comparison between Unknown and I4
		//IL_0061: Unknown result type (might be due to invalid IL or missing references)
		//IL_007c: Unknown result type (might be due to invalid IL or missing references)
		//IL_001f: Unknown result type (might be due to invalid IL or missing references)
		//IL_003a: Unknown result type (might be due to invalid IL or missing references)
		if ((int)checkBox11.CheckState == 1)
		{
			((Form)this).Size = new Size(1106, 538);
			((Control)tabControl3).Size = new Size(1091, 495);
			((Control)groupBox1).Visible = true;
		}
		else
		{
			((Form)this).Size = new Size(661, 538);
			((Control)tabControl3).Size = new Size(645, 495);
			((Control)groupBox1).Visible = false;
		}
	}

	private void AutoLogAndRun(int row, string job = "Không", string end = "Không", string dailyThongtin = "Không", bool vaoLaiGame = false, bool dangNhapLai = false, string source = "AutoLog", bool themVaoChuoi = false)
	{
		string text = "xx";
		string text2 = "xxx";
		string text3 = "xxx";
		string text4 = "goid";
		string text5 = "xxx";
		string text6 = "xxx";
		tabControl1.SelectTab(0);
		text = dataGridView1.Rows[row].Cells[0].Value.ToString();
		text5 = dataGridView1.Rows[row].Cells[1].Value.ToString();
		text4 = dataGridView1.Rows[row].Cells[2].Value.ToString();
		if (text4 == "Go")
		{
			text2 = text5 + "@goid";
		}
		else if (text4 == "VTC")
		{
			text2 = text5;
		}
		text6 = dataGridView1.Rows[row].Cells[3].Value.ToString();
		string text7 = "";
		text7 = (Settings.Default.nameStyle ? (text6 + " " + text) : (text + "." + text6));
		string[] array = File.ReadAllLines(pathData + "/" + text2 + ".txt");
		text3 = array[0].Trim();
		link = string.Concat(new string[9]
		{
			Program.AppMain.link1,
			text,
			Program.AppMain.link2,
			text2,
			Program.AppMain.link3,
			text3,
			Program.AppMain.link4,
			Program.AppMain.link5,
			Program.AppMain.link6
		});
		debugText("process 0");
		string text8 = "";
		try
		{
			text8 = dataGridView2.Rows[Turn].Cells[4].Value.ToString();
		}
		catch (System.Exception)
		{
			text8 = "random";
		}
		string text9 = "";
		try
		{
			text9 = dataGridView2.Rows[Turn].Cells[5].Value.ToString();
		}
		catch (System.Exception)
		{
			text9 = "random";
		}
		int num = 0;
		while (true)
		{
			debugText("process 1 - " + num);
			string text10 = string.Concat(new string[23]
			{
				"BMx_AutoLogAndRun \"",
				text7,
				"\" \"",
				text2,
				"\" \"",
				link,
				"\" \"",
				job,
				"\" \"",
				end,
				"\" \"",
				text8,
				"\" \"",
				text9,
				"\" \"",
				vaoLaiGame.ToString(),
				"\" \"",
				dangNhapLai.ToString(),
				"\" \"",
				dailyThongtin,
				"\" \"",
				source,
				"\""
			});
			debugText("process 2 - " + num);
			try
			{
				Process val = Process.Start(Application.StartupPath + "\\BMxTool.exe", text10);
				val.WaitForInputIdle();
			}
			catch (System.Exception)
			{
			}
			delay_100ms2(15);
			debugText("process 3 - " + num);
			if (CheckHandleWindows("[" + text7 + "] AutoLog"))
			{
				break;
			}
			GetWindowThreadProcessId(FindWindowHandle(null, "[" + text7 + "] AutoLog"), out var processId);
			Process processById = Process.GetProcessById((int)processId);
			processById.Kill();
			num++;
			if (num >= 20)
			{
				return;
			}
		}
		debugText("process 4 - " + num);
		if (themVaoChuoi)
		{
			debugText("AutoLog ");
			ThemVaoChuoi("[" + text7 + "] AutoLog", Turn);
		}
		debugText("process 5 - " + num);
	}

	private void AutoLogAndRun2(int select, string job = "Không", string end = "Không", string dailyThongtin = "Không", bool vaoLaiGame = false, bool dangNhapLai = false, string source = "AutoLog", bool themVaoChuoi = false)
	{
		tabControl1.SelectTab(0);
		int num = 0;
		for (int i = 0; i < dataGridView1.RowCount; i++)
		{
			if (dataGridView2.Rows[select].Cells[3].Value.ToString().Split(charSplitAutoLog, (StringSplitOptions)0)[1] == dataGridView1.Rows[i].Cells[1].Value.ToString())
			{
				num = i;
				break;
			}
		}
		string text = "xx";
		string text2 = "xxx";
		string text3 = "xxx";
		string text4 = "goid";
		string text5 = "xxx";
		string text6 = "xxx";
		text = dataGridView1.Rows[num].Cells[0].Value.ToString();
		text5 = dataGridView1.Rows[num].Cells[1].Value.ToString();
		text4 = dataGridView1.Rows[num].Cells[2].Value.ToString();
		if (text4 == "Go")
		{
			text2 = text5 + "@goid";
		}
		else if (text4 == "VTC")
		{
			text2 = text5;
		}
		text6 = dataGridView1.Rows[num].Cells[3].Value.ToString();
		string text7 = "";
		text7 = (Settings.Default.nameStyle ? (text6 + " " + text) : (text + "." + text6));
		string[] array = File.ReadAllLines(pathData + "/" + text2 + ".txt");
		text3 = array[0].Trim();
		link = string.Concat(new string[9]
		{
			Program.AppMain.link1,
			text,
			Program.AppMain.link2,
			text2,
			Program.AppMain.link3,
			text3,
			Program.AppMain.link4,
			Program.AppMain.link5,
			Program.AppMain.link6
		});
		debugText("process0");
		string text8 = "";
		try
		{
			text8 = dataGridView2.Rows[select].Cells[4].Value.ToString();
		}
		catch (System.Exception)
		{
			text8 = "random";
		}
		string text9 = "";
		try
		{
			text9 = dataGridView2.Rows[select].Cells[5].Value.ToString();
		}
		catch (System.Exception)
		{
			text9 = "random";
		}
		debugText("process1");
		string text10 = string.Concat(new string[23]
		{
			"BMx_AutoLogAndRun \"",
			text7,
			"\" \"",
			text2,
			"\" \"",
			link,
			"\" \"",
			job,
			"\" \"",
			end,
			"\" \"",
			text8,
			"\" \"",
			text9,
			"\" \"",
			vaoLaiGame.ToString(),
			"\" \"",
			dangNhapLai.ToString(),
			"\" \"",
			dailyThongtin,
			"\" \"",
			source,
			"\""
		});
		debugText("process2");
		Process val = Process.Start(Application.StartupPath + "\\BMxTool.exe", text10);
		delay_100ms2(2);
		while (!CheckHandleWindows("[" + text7 + "] AutoLog"))
		{
			delay_100ms2(2);
		}
		if (themVaoChuoi)
		{
			debugText("AutoLog ");
			ThemVaoChuoi("[" + text7 + "] AutoLog", Turn);
			delay_100ms2(2);
		}
	}

	private void checkFlash()
	{
		Process val = Process.Start(Application.StartupPath + "/APPS/FlashGame.exe");
		val.WaitForInputIdle();
		System.IntPtr intPtr = AutoControl.FindWindowHandle((string)null, "Adobe Flash Player 20");
		SetWindowPos(intPtr, 0, 20, 20, 400, 100, 32);
		AutoControl.SendText(intPtr, "CheckFlash_isOK");
		Thread.Sleep(1500);
		val.Kill();
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
		//IL_001c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0022: Expected O, but got Unknown
		//IL_0022: Unknown result type (might be due to invalid IL or missing references)
		//IL_0028: Expected O, but got Unknown
		//IL_0028: Unknown result type (might be due to invalid IL or missing references)
		//IL_002e: Expected O, but got Unknown
		//IL_002e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0035: Expected O, but got Unknown
		//IL_0035: Unknown result type (might be due to invalid IL or missing references)
		//IL_003c: Expected O, but got Unknown
		//IL_003c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0043: Expected O, but got Unknown
		//IL_0043: Unknown result type (might be due to invalid IL or missing references)
		//IL_004a: Expected O, but got Unknown
		//IL_004a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0051: Expected O, but got Unknown
		//IL_0058: Unknown result type (might be due to invalid IL or missing references)
		//IL_0062: Expected O, but got Unknown
		//IL_0063: Unknown result type (might be due to invalid IL or missing references)
		//IL_006d: Expected O, but got Unknown
		//IL_006e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0078: Expected O, but got Unknown
		//IL_0079: Unknown result type (might be due to invalid IL or missing references)
		//IL_0083: Expected O, but got Unknown
		//IL_0084: Unknown result type (might be due to invalid IL or missing references)
		//IL_008e: Expected O, but got Unknown
		//IL_008f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0099: Expected O, but got Unknown
		//IL_009a: Unknown result type (might be due to invalid IL or missing references)
		//IL_00a4: Expected O, but got Unknown
		//IL_00a5: Unknown result type (might be due to invalid IL or missing references)
		//IL_00af: Expected O, but got Unknown
		//IL_00b0: Unknown result type (might be due to invalid IL or missing references)
		//IL_00ba: Expected O, but got Unknown
		//IL_00bb: Unknown result type (might be due to invalid IL or missing references)
		//IL_00c5: Expected O, but got Unknown
		//IL_00c6: Unknown result type (might be due to invalid IL or missing references)
		//IL_00d0: Expected O, but got Unknown
		//IL_00d1: Unknown result type (might be due to invalid IL or missing references)
		//IL_00db: Expected O, but got Unknown
		//IL_00dc: Unknown result type (might be due to invalid IL or missing references)
		//IL_00e6: Expected O, but got Unknown
		//IL_00e7: Unknown result type (might be due to invalid IL or missing references)
		//IL_00f1: Expected O, but got Unknown
		//IL_00f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_00fc: Expected O, but got Unknown
		//IL_00fd: Unknown result type (might be due to invalid IL or missing references)
		//IL_0107: Expected O, but got Unknown
		//IL_0108: Unknown result type (might be due to invalid IL or missing references)
		//IL_0112: Expected O, but got Unknown
		//IL_0113: Unknown result type (might be due to invalid IL or missing references)
		//IL_011d: Expected O, but got Unknown
		//IL_011e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0128: Expected O, but got Unknown
		//IL_0129: Unknown result type (might be due to invalid IL or missing references)
		//IL_0133: Expected O, but got Unknown
		//IL_0134: Unknown result type (might be due to invalid IL or missing references)
		//IL_013e: Expected O, but got Unknown
		//IL_013f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0149: Expected O, but got Unknown
		//IL_014a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0154: Expected O, but got Unknown
		//IL_0155: Unknown result type (might be due to invalid IL or missing references)
		//IL_015f: Expected O, but got Unknown
		//IL_0160: Unknown result type (might be due to invalid IL or missing references)
		//IL_016a: Expected O, but got Unknown
		//IL_016b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0175: Expected O, but got Unknown
		//IL_0176: Unknown result type (might be due to invalid IL or missing references)
		//IL_0180: Expected O, but got Unknown
		//IL_0181: Unknown result type (might be due to invalid IL or missing references)
		//IL_018b: Expected O, but got Unknown
		//IL_018c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0196: Expected O, but got Unknown
		//IL_0197: Unknown result type (might be due to invalid IL or missing references)
		//IL_01a1: Expected O, but got Unknown
		//IL_01a2: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ac: Expected O, but got Unknown
		//IL_01ad: Unknown result type (might be due to invalid IL or missing references)
		//IL_01b7: Expected O, but got Unknown
		//IL_01b8: Unknown result type (might be due to invalid IL or missing references)
		//IL_01c2: Expected O, but got Unknown
		//IL_01c3: Unknown result type (might be due to invalid IL or missing references)
		//IL_01cd: Expected O, but got Unknown
		//IL_01ce: Unknown result type (might be due to invalid IL or missing references)
		//IL_01d8: Expected O, but got Unknown
		//IL_01d9: Unknown result type (might be due to invalid IL or missing references)
		//IL_01e3: Expected O, but got Unknown
		//IL_01e4: Unknown result type (might be due to invalid IL or missing references)
		//IL_01ee: Expected O, but got Unknown
		//IL_01ef: Unknown result type (might be due to invalid IL or missing references)
		//IL_01f9: Expected O, but got Unknown
		//IL_01fa: Unknown result type (might be due to invalid IL or missing references)
		//IL_0204: Expected O, but got Unknown
		//IL_0205: Unknown result type (might be due to invalid IL or missing references)
		//IL_020f: Expected O, but got Unknown
		//IL_0210: Unknown result type (might be due to invalid IL or missing references)
		//IL_021a: Expected O, but got Unknown
		//IL_021b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0225: Expected O, but got Unknown
		//IL_0226: Unknown result type (might be due to invalid IL or missing references)
		//IL_0230: Expected O, but got Unknown
		//IL_0231: Unknown result type (might be due to invalid IL or missing references)
		//IL_023b: Expected O, but got Unknown
		//IL_023c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0246: Expected O, but got Unknown
		//IL_0247: Unknown result type (might be due to invalid IL or missing references)
		//IL_0251: Expected O, but got Unknown
		//IL_0252: Unknown result type (might be due to invalid IL or missing references)
		//IL_025c: Expected O, but got Unknown
		//IL_025d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0267: Expected O, but got Unknown
		//IL_0268: Unknown result type (might be due to invalid IL or missing references)
		//IL_0272: Expected O, but got Unknown
		//IL_0273: Unknown result type (might be due to invalid IL or missing references)
		//IL_027d: Expected O, but got Unknown
		//IL_027e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0288: Expected O, but got Unknown
		//IL_0289: Unknown result type (might be due to invalid IL or missing references)
		//IL_0293: Expected O, but got Unknown
		//IL_0294: Unknown result type (might be due to invalid IL or missing references)
		//IL_029e: Expected O, but got Unknown
		//IL_029f: Unknown result type (might be due to invalid IL or missing references)
		//IL_02a9: Expected O, but got Unknown
		//IL_02aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_02b4: Expected O, but got Unknown
		//IL_02b5: Unknown result type (might be due to invalid IL or missing references)
		//IL_02bf: Expected O, but got Unknown
		//IL_02c0: Unknown result type (might be due to invalid IL or missing references)
		//IL_02ca: Expected O, but got Unknown
		//IL_02cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_02d5: Expected O, but got Unknown
		//IL_02d6: Unknown result type (might be due to invalid IL or missing references)
		//IL_02e0: Expected O, but got Unknown
		//IL_02e1: Unknown result type (might be due to invalid IL or missing references)
		//IL_02eb: Expected O, but got Unknown
		//IL_02ec: Unknown result type (might be due to invalid IL or missing references)
		//IL_02f6: Expected O, but got Unknown
		//IL_02f7: Unknown result type (might be due to invalid IL or missing references)
		//IL_0301: Expected O, but got Unknown
		//IL_0302: Unknown result type (might be due to invalid IL or missing references)
		//IL_030c: Expected O, but got Unknown
		//IL_030d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0317: Expected O, but got Unknown
		//IL_0318: Unknown result type (might be due to invalid IL or missing references)
		//IL_0322: Expected O, but got Unknown
		//IL_0323: Unknown result type (might be due to invalid IL or missing references)
		//IL_032d: Expected O, but got Unknown
		//IL_032e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0338: Expected O, but got Unknown
		//IL_0339: Unknown result type (might be due to invalid IL or missing references)
		//IL_0343: Expected O, but got Unknown
		//IL_0344: Unknown result type (might be due to invalid IL or missing references)
		//IL_034e: Expected O, but got Unknown
		//IL_034f: Unknown result type (might be due to invalid IL or missing references)
		//IL_0359: Expected O, but got Unknown
		//IL_035a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0364: Expected O, but got Unknown
		//IL_0365: Unknown result type (might be due to invalid IL or missing references)
		//IL_036f: Expected O, but got Unknown
		//IL_0370: Unknown result type (might be due to invalid IL or missing references)
		//IL_037a: Expected O, but got Unknown
		//IL_037b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0385: Expected O, but got Unknown
		//IL_0386: Unknown result type (might be due to invalid IL or missing references)
		//IL_0390: Expected O, but got Unknown
		//IL_0391: Unknown result type (might be due to invalid IL or missing references)
		//IL_039b: Expected O, but got Unknown
		//IL_039c: Unknown result type (might be due to invalid IL or missing references)
		//IL_03a6: Expected O, but got Unknown
		//IL_03a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_03b1: Expected O, but got Unknown
		//IL_03b2: Unknown result type (might be due to invalid IL or missing references)
		//IL_03bc: Expected O, but got Unknown
		//IL_03bd: Unknown result type (might be due to invalid IL or missing references)
		//IL_03c7: Expected O, but got Unknown
		//IL_03c8: Unknown result type (might be due to invalid IL or missing references)
		//IL_03d2: Expected O, but got Unknown
		//IL_03d3: Unknown result type (might be due to invalid IL or missing references)
		//IL_03dd: Expected O, but got Unknown
		//IL_03de: Unknown result type (might be due to invalid IL or missing references)
		//IL_03e8: Expected O, but got Unknown
		//IL_03e9: Unknown result type (might be due to invalid IL or missing references)
		//IL_03f3: Expected O, but got Unknown
		//IL_03f4: Unknown result type (might be due to invalid IL or missing references)
		//IL_03fe: Expected O, but got Unknown
		//IL_03ff: Unknown result type (might be due to invalid IL or missing references)
		//IL_0409: Expected O, but got Unknown
		//IL_040a: Unknown result type (might be due to invalid IL or missing references)
		//IL_0414: Expected O, but got Unknown
		//IL_0415: Unknown result type (might be due to invalid IL or missing references)
		//IL_041f: Expected O, but got Unknown
		//IL_0420: Unknown result type (might be due to invalid IL or missing references)
		//IL_042a: Expected O, but got Unknown
		//IL_042b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0435: Expected O, but got Unknown
		//IL_0436: Unknown result type (might be due to invalid IL or missing references)
		//IL_0440: Expected O, but got Unknown
		//IL_0441: Unknown result type (might be due to invalid IL or missing references)
		//IL_044b: Expected O, but got Unknown
		//IL_044c: Unknown result type (might be due to invalid IL or missing references)
		//IL_0456: Expected O, but got Unknown
		//IL_0457: Unknown result type (might be due to invalid IL or missing references)
		//IL_0461: Expected O, but got Unknown
		//IL_0462: Unknown result type (might be due to invalid IL or missing references)
		//IL_046c: Expected O, but got Unknown
		//IL_046d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0477: Expected O, but got Unknown
		//IL_0478: Unknown result type (might be due to invalid IL or missing references)
		//IL_0482: Expected O, but got Unknown
		//IL_0483: Unknown result type (might be due to invalid IL or missing references)
		//IL_048d: Expected O, but got Unknown
		//IL_048e: Unknown result type (might be due to invalid IL or missing references)
		//IL_0498: Expected O, but got Unknown
		//IL_0499: Unknown result type (might be due to invalid IL or missing references)
		//IL_04a3: Expected O, but got Unknown
		//IL_04a4: Unknown result type (might be due to invalid IL or missing references)
		//IL_04ae: Expected O, but got Unknown
		//IL_04af: Unknown result type (might be due to invalid IL or missing references)
		//IL_04b9: Expected O, but got Unknown
		//IL_04ba: Unknown result type (might be due to invalid IL or missing references)
		//IL_04c4: Expected O, but got Unknown
		//IL_04c5: Unknown result type (might be due to invalid IL or missing references)
		//IL_04cf: Expected O, but got Unknown
		//IL_04d0: Unknown result type (might be due to invalid IL or missing references)
		//IL_04da: Expected O, but got Unknown
		//IL_04db: Unknown result type (might be due to invalid IL or missing references)
		//IL_04e5: Expected O, but got Unknown
		//IL_04e6: Unknown result type (might be due to invalid IL or missing references)
		//IL_04f0: Expected O, but got Unknown
		//IL_04f1: Unknown result type (might be due to invalid IL or missing references)
		//IL_04fb: Expected O, but got Unknown
		//IL_04fc: Unknown result type (might be due to invalid IL or missing references)
		//IL_0506: Expected O, but got Unknown
		//IL_0507: Unknown result type (might be due to invalid IL or missing references)
		//IL_0511: Expected O, but got Unknown
		//IL_0512: Unknown result type (might be due to invalid IL or missing references)
		//IL_051c: Expected O, but got Unknown
		//IL_051d: Unknown result type (might be due to invalid IL or missing references)
		//IL_0527: Expected O, but got Unknown
		//IL_0528: Unknown result type (might be due to invalid IL or missing references)
		//IL_0532: Expected O, but got Unknown
		//IL_0533: Unknown result type (might be due to invalid IL or missing references)
		//IL_053d: Expected O, but got Unknown
		//IL_06a7: Unknown result type (might be due to invalid IL or missing references)
		//IL_06b1: Expected O, but got Unknown
		//IL_0779: Unknown result type (might be due to invalid IL or missing references)
		//IL_0783: Expected O, but got Unknown
		//IL_07c1: Unknown result type (might be due to invalid IL or missing references)
		//IL_07cb: Expected O, but got Unknown
		//IL_0809: Unknown result type (might be due to invalid IL or missing references)
		//IL_0813: Expected O, but got Unknown
		//IL_0851: Unknown result type (might be due to invalid IL or missing references)
		//IL_085b: Expected O, but got Unknown
		//IL_0899: Unknown result type (might be due to invalid IL or missing references)
		//IL_08a3: Expected O, but got Unknown
		//IL_08e1: Unknown result type (might be due to invalid IL or missing references)
		//IL_08eb: Expected O, but got Unknown
		//IL_0929: Unknown result type (might be due to invalid IL or missing references)
		//IL_0933: Expected O, but got Unknown
		//IL_0971: Unknown result type (might be due to invalid IL or missing references)
		//IL_097b: Expected O, but got Unknown
		//IL_09b9: Unknown result type (might be due to invalid IL or missing references)
		//IL_09c3: Expected O, but got Unknown
		//IL_0a01: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a0b: Expected O, but got Unknown
		//IL_0a49: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a53: Expected O, but got Unknown
		//IL_0a91: Unknown result type (might be due to invalid IL or missing references)
		//IL_0a9b: Expected O, but got Unknown
		//IL_0ad9: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ae3: Expected O, but got Unknown
		//IL_0b51: Unknown result type (might be due to invalid IL or missing references)
		//IL_0b5b: Expected O, but got Unknown
		//IL_0bd6: Unknown result type (might be due to invalid IL or missing references)
		//IL_0be0: Expected O, but got Unknown
		//IL_0e90: Unknown result type (might be due to invalid IL or missing references)
		//IL_0e9a: Expected O, but got Unknown
		//IL_0f2b: Unknown result type (might be due to invalid IL or missing references)
		//IL_0f35: Expected O, but got Unknown
		//IL_0fd0: Unknown result type (might be due to invalid IL or missing references)
		//IL_0fe8: Unknown result type (might be due to invalid IL or missing references)
		//IL_0ff2: Expected O, but got Unknown
		//IL_0ff4: Unknown result type (might be due to invalid IL or missing references)
		//IL_1000: Unknown result type (might be due to invalid IL or missing references)
		//IL_100c: Unknown result type (might be due to invalid IL or missing references)
		//IL_10aa: Unknown result type (might be due to invalid IL or missing references)
		//IL_10b4: Expected O, but got Unknown
		//IL_10c2: Unknown result type (might be due to invalid IL or missing references)
		//IL_10cc: Expected O, but got Unknown
		//IL_10da: Unknown result type (might be due to invalid IL or missing references)
		//IL_10e4: Expected O, but got Unknown
		//IL_10f2: Unknown result type (might be due to invalid IL or missing references)
		//IL_10fc: Expected O, but got Unknown
		//IL_110a: Unknown result type (might be due to invalid IL or missing references)
		//IL_1114: Expected O, but got Unknown
		//IL_1122: Unknown result type (might be due to invalid IL or missing references)
		//IL_112c: Expected O, but got Unknown
		//IL_113a: Unknown result type (might be due to invalid IL or missing references)
		//IL_1144: Expected O, but got Unknown
		//IL_152c: Unknown result type (might be due to invalid IL or missing references)
		//IL_1536: Expected O, but got Unknown
		//IL_15b1: Unknown result type (might be due to invalid IL or missing references)
		//IL_15bb: Expected O, but got Unknown
		//IL_15d4: Unknown result type (might be due to invalid IL or missing references)
		//IL_160a: Unknown result type (might be due to invalid IL or missing references)
		//IL_1614: Expected O, but got Unknown
		//IL_1675: Unknown result type (might be due to invalid IL or missing references)
		//IL_167f: Expected O, but got Unknown
		//IL_176b: Unknown result type (might be due to invalid IL or missing references)
		//IL_1775: Expected O, but got Unknown
		//IL_1783: Unknown result type (might be due to invalid IL or missing references)
		//IL_178d: Expected O, but got Unknown
		//IL_179b: Unknown result type (might be due to invalid IL or missing references)
		//IL_17a5: Expected O, but got Unknown
		//IL_17b3: Unknown result type (might be due to invalid IL or missing references)
		//IL_17bd: Expected O, but got Unknown
		//IL_17cb: Unknown result type (might be due to invalid IL or missing references)
		//IL_17d5: Expected O, but got Unknown
		//IL_17e3: Unknown result type (might be due to invalid IL or missing references)
		//IL_17ed: Expected O, but got Unknown
		//IL_17fb: Unknown result type (might be due to invalid IL or missing references)
		//IL_1805: Expected O, but got Unknown
		//IL_1b29: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b33: Expected O, but got Unknown
		//IL_1b71: Unknown result type (might be due to invalid IL or missing references)
		//IL_1b7b: Expected O, but got Unknown
		//IL_1be9: Unknown result type (might be due to invalid IL or missing references)
		//IL_1bf3: Expected O, but got Unknown
		//IL_1d88: Unknown result type (might be due to invalid IL or missing references)
		//IL_1d92: Expected O, but got Unknown
		//IL_235f: Unknown result type (might be due to invalid IL or missing references)
		//IL_2369: Expected O, but got Unknown
		//IL_251a: Unknown result type (might be due to invalid IL or missing references)
		//IL_25e8: Unknown result type (might be due to invalid IL or missing references)
		//IL_25f2: Expected O, but got Unknown
		//IL_268e: Unknown result type (might be due to invalid IL or missing references)
		//IL_2698: Expected O, but got Unknown
		//IL_2d55: Unknown result type (might be due to invalid IL or missing references)
		//IL_2d5f: Expected O, but got Unknown
		//IL_2d9d: Unknown result type (might be due to invalid IL or missing references)
		//IL_2da7: Expected O, but got Unknown
		//IL_2de1: Unknown result type (might be due to invalid IL or missing references)
		//IL_2e56: Unknown result type (might be due to invalid IL or missing references)
		//IL_2e60: Expected O, but got Unknown
		//IL_2e69: Unknown result type (might be due to invalid IL or missing references)
		//IL_2e73: Expected O, but got Unknown
		//IL_2e7c: Unknown result type (might be due to invalid IL or missing references)
		//IL_2e86: Expected O, but got Unknown
		//IL_2e8f: Unknown result type (might be due to invalid IL or missing references)
		//IL_2e99: Expected O, but got Unknown
		//IL_2ea2: Unknown result type (might be due to invalid IL or missing references)
		//IL_2eac: Expected O, but got Unknown
		components = (IContainer)new Container();
		ComponentResourceManager val = new ComponentResourceManager(typeof(Login));
		DataGridViewCellStyle val2 = new DataGridViewCellStyle();
		DataGridViewCellStyle val3 = new DataGridViewCellStyle();
		DataGridViewCellStyle val4 = new DataGridViewCellStyle();
		DataGridViewCellStyle val5 = new DataGridViewCellStyle();
		DataGridViewCellStyle val6 = new DataGridViewCellStyle();
		DataGridViewCellStyle val7 = new DataGridViewCellStyle();
		DataGridViewCellStyle val8 = new DataGridViewCellStyle();
		DataGridViewCellStyle val9 = new DataGridViewCellStyle();
		notifyIcon1 = new NotifyIcon(components);
		groupBox2 = new GroupBox();
		button5 = new Button();
		checkBox3 = new CheckBox();
		button1 = new Button();
		button8 = new Button();
		button2 = new Button();
		button7 = new Button();
		linkLabel2 = new LinkLabel();
		checkBox9 = new CheckBox();
		linkLabel1 = new LinkLabel();
		checkBox8 = new CheckBox();
		checkBox2 = new CheckBox();
		buttonAddGroup = new Button();
		comboBoxGroupName1 = new ComboBox();
		checkBox4 = new CheckBox();
		textBoxServer = new TextBox();
		buttonAdd = new Button();
		label4 = new Label();
		groupBox1 = new GroupBox();
		textBoxPass = new TextBox();
		textBoxUser = new TextBox();
		label2 = new Label();
		textBoxLink = new TextBox();
		checkBoxLink = new CheckBox();
		label3 = new Label();
		label1 = new Label();
		checkBoxUserPass = new CheckBox();
		label5 = new Label();
		textBoxDisplayName = new TextBox();
		label7 = new Label();
		dataGridView1 = new DataGridView();
		Server = new DataGridViewTextBoxColumn();
		Account = new DataGridViewTextBoxColumn();
		NPH = new DataGridViewTextBoxColumn();
		DisplayName = new DataGridViewTextBoxColumn();
		groupBoxAutoLog = new GroupBox();
		checkBox5 = new CheckBox();
		numericUpDownS_m = new NumericUpDown();
		checkBoxRelog = new CheckBox();
		numericUpDownS_h = new NumericUpDown();
		label8 = new Label();
		checkBoxReOn = new CheckBox();
		checkBoxS_at = new CheckBox();
		label9 = new Label();
		checkBoxS_now = new CheckBox();
		ButtonRunAuto = new CheckBox();
		label10 = new Label();
		buttonAL_del = new Button();
		dataGridView2 = new DataGridView();
		Start = new DataGridViewTextBoxColumn();
		Job = new DataGridViewTextBoxColumn();
		End = new DataGridViewTextBoxColumn();
		FL = new DataGridViewTextBoxColumn();
		Class = new DataGridViewTextBoxColumn();
		Column1 = new DataGridViewTextBoxColumn();
		auto_Log = new DataGridViewButtonColumn();
		Run = new DataGridViewButtonColumn();
		Del = new DataGridViewButtonColumn();
		buttonAL_load = new Button();
		buttonAL_clear = new Button();
		comboBoxS = new ComboBox();
		buttonAL_save = new Button();
		groupBox7 = new GroupBox();
		groupBox6 = new GroupBox();
		numericUpDown2 = new NumericUpDown();
		checkBoxShuwdown = new CheckBox();
		checkBox6 = new CheckBox();
		checkBoxShuwdown_at = new CheckBox();
		numericUpDown1 = new NumericUpDown();
		label11 = new Label();
		label12 = new Label();
		checkBox7 = new CheckBox();
		groupBox4 = new GroupBox();
		checkBoxDapet = new CheckBox();
		numericUpDownDaPet = new NumericUpDown();
		checkBoxThap = new CheckBox();
		numericUpDownThap = new NumericUpDown();
		label19 = new Label();
		label17 = new Label();
		numericUpDownTrong = new NumericUpDown();
		label18 = new Label();
		checkBoxTrong = new CheckBox();
		groupBox3 = new GroupBox();
		comboBoxJ = new ComboBox();
		numericUpDownKenh = new NumericUpDown();
		numericUpDownNV = new NumericUpDown();
		buttonAL_add = new Button();
		label15 = new Label();
		comboBoxE = new ComboBox();
		label6 = new Label();
		label16 = new Label();
		comboBoxA = new ComboBox();
		label14 = new Label();
		label13 = new Label();
		textBoxEV = new TextBox();
		groupBox5 = new GroupBox();
		tabControl1 = new TabControl();
		tabPage1 = new TabPage();
		tabControl3 = new TabControl();
		tabPage5 = new TabPage();
		panel2 = new Panel();
		label20 = new Label();
		label23 = new Label();
		label22 = new Label();
		groupBox8 = new GroupBox();
		tabPage6 = new TabPage();
		tabControl2 = new TabControl();
		tabPage2 = new TabPage();
		tabPage3 = new TabPage();
		comboBox1 = new ComboBox();
		checkBox10 = new CheckBox();
		checkBox11 = new CheckBox();
		panel1 = new Panel();
		((Control)groupBox2).SuspendLayout();
		((Control)groupBox1).SuspendLayout();
		((ISupportInitialize)dataGridView1).BeginInit();
		((Control)groupBoxAutoLog).SuspendLayout();
		((ISupportInitialize)numericUpDownS_m).BeginInit();
		((ISupportInitialize)numericUpDownS_h).BeginInit();
		((ISupportInitialize)dataGridView2).BeginInit();
		((Control)groupBox7).SuspendLayout();
		((Control)groupBox6).SuspendLayout();
		((ISupportInitialize)numericUpDown2).BeginInit();
		((ISupportInitialize)numericUpDown1).BeginInit();
		((Control)groupBox4).SuspendLayout();
		((ISupportInitialize)numericUpDownDaPet).BeginInit();
		((ISupportInitialize)numericUpDownThap).BeginInit();
		((ISupportInitialize)numericUpDownTrong).BeginInit();
		((ISupportInitialize)numericUpDownKenh).BeginInit();
		((ISupportInitialize)numericUpDownNV).BeginInit();
		((Control)groupBox5).SuspendLayout();
		((Control)tabControl1).SuspendLayout();
		((Control)tabControl3).SuspendLayout();
		((Control)tabPage5).SuspendLayout();
		((Control)panel2).SuspendLayout();
		((Control)groupBox8).SuspendLayout();
		((Control)tabPage6).SuspendLayout();
		((Control)tabControl2).SuspendLayout();
		((Control)tabPage2).SuspendLayout();
		((Control)tabPage3).SuspendLayout();
		((Control)this).SuspendLayout();
		val.ApplyResources((object)notifyIcon1, "notifyIcon1");
		notifyIcon1.Click += new EventHandler(notifyIcon1_Click);
		((Control)groupBox2).Controls.Add((Control)(object)button5);
		((Control)groupBox2).Controls.Add((Control)(object)checkBox3);
		((Control)groupBox2).Controls.Add((Control)(object)button1);
		((Control)groupBox2).Controls.Add((Control)(object)button8);
		((Control)groupBox2).Controls.Add((Control)(object)button2);
		((Control)groupBox2).Controls.Add((Control)(object)button7);
		val.ApplyResources((object)groupBox2, "groupBox2");
		((Control)groupBox2).Name = "groupBox2";
		groupBox2.TabStop = false;
		((Control)groupBox2).HelpRequested += new HelpEventHandler(groupBox2_HelpRequested);
		val.ApplyResources((object)button5, "button5");
		((Control)button5).Name = "button5";
		((ButtonBase)button5).UseVisualStyleBackColor = true;
		((Control)button5).Click += new EventHandler(button3_Click);
		val.ApplyResources((object)checkBox3, "checkBox3");
		((Control)checkBox3).Name = "checkBox3";
		((ButtonBase)checkBox3).UseVisualStyleBackColor = true;
		checkBox3.CheckStateChanged += new EventHandler(checkBox3_CheckStateChanged);
		val.ApplyResources((object)button1, "button1");
		((Control)button1).Name = "button1";
		((ButtonBase)button1).UseVisualStyleBackColor = true;
		((Control)button1).Click += new EventHandler(button1_Click);
		val.ApplyResources((object)button8, "button8");
		((Control)button8).Name = "button8";
		((ButtonBase)button8).UseVisualStyleBackColor = true;
		((Control)button8).Click += new EventHandler(button8_Click);
		val.ApplyResources((object)button2, "button2");
		((Control)button2).Name = "button2";
		((ButtonBase)button2).UseVisualStyleBackColor = true;
		((Control)button2).Click += new EventHandler(button2_Click);
		val.ApplyResources((object)button7, "button7");
		((Control)button7).Name = "button7";
		((ButtonBase)button7).UseVisualStyleBackColor = true;
		((Control)button7).Click += new EventHandler(button7_Click_1);
		val.ApplyResources((object)linkLabel2, "linkLabel2");
		((Control)linkLabel2).Name = "linkLabel2";
		linkLabel2.TabStop = true;
		linkLabel2.LinkClicked += new LinkLabelLinkClickedEventHandler(linkLabel2_LinkClicked);
		val.ApplyResources((object)checkBox9, "checkBox9");
		((Control)checkBox9).Name = "checkBox9";
		((ButtonBase)checkBox9).UseVisualStyleBackColor = true;
		checkBox9.CheckStateChanged += new EventHandler(checkBox9_CheckStateChanged);
		val.ApplyResources((object)linkLabel1, "linkLabel1");
		((Control)linkLabel1).Name = "linkLabel1";
		linkLabel1.TabStop = true;
		linkLabel1.LinkClicked += new LinkLabelLinkClickedEventHandler(linkLabel1_LinkClicked);
		val.ApplyResources((object)checkBox8, "checkBox8");
		((Control)checkBox8).Name = "checkBox8";
		((ButtonBase)checkBox8).UseVisualStyleBackColor = true;
		checkBox8.CheckStateChanged += new EventHandler(checkBox8_CheckStateChanged);
		val.ApplyResources((object)checkBox2, "checkBox2");
		((Control)checkBox2).Name = "checkBox2";
		((ButtonBase)checkBox2).UseVisualStyleBackColor = true;
		checkBox2.CheckStateChanged += new EventHandler(checkBox2_CheckStateChanged);
		val.ApplyResources((object)buttonAddGroup, "buttonAddGroup");
		((Control)buttonAddGroup).Name = "buttonAddGroup";
		((ButtonBase)buttonAddGroup).UseVisualStyleBackColor = true;
		((Control)buttonAddGroup).Click += new EventHandler(buttonAddGroup_Click);
		((ListControl)comboBoxGroupName1).FormattingEnabled = true;
		val.ApplyResources((object)comboBoxGroupName1, "comboBoxGroupName1");
		((Control)comboBoxGroupName1).Name = "comboBoxGroupName1";
		val.ApplyResources((object)checkBox4, "checkBox4");
		((Control)checkBox4).Name = "checkBox4";
		((ButtonBase)checkBox4).UseVisualStyleBackColor = true;
		checkBox4.CheckedChanged += new EventHandler(checkBox4_CheckedChanged);
		((TextBoxBase)textBoxServer).BorderStyle = (BorderStyle)1;
		val.ApplyResources((object)textBoxServer, "textBoxServer");
		((Control)textBoxServer).Name = "textBoxServer";
		((TextBoxBase)textBoxServer).ReadOnly = true;
		val.ApplyResources((object)buttonAdd, "buttonAdd");
		((Control)buttonAdd).Name = "buttonAdd";
		((ButtonBase)buttonAdd).UseVisualStyleBackColor = true;
		((Control)buttonAdd).Click += new EventHandler(buttonAdd_Click);
		val.ApplyResources((object)label4, "label4");
		((Control)label4).Name = "label4";
		((Control)groupBox1).Controls.Add((Control)(object)textBoxServer);
		((Control)groupBox1).Controls.Add((Control)(object)textBoxPass);
		((Control)groupBox1).Controls.Add((Control)(object)textBoxUser);
		((Control)groupBox1).Controls.Add((Control)(object)label2);
		((Control)groupBox1).Controls.Add((Control)(object)buttonAdd);
		((Control)groupBox1).Controls.Add((Control)(object)textBoxLink);
		((Control)groupBox1).Controls.Add((Control)(object)checkBoxLink);
		((Control)groupBox1).Controls.Add((Control)(object)label3);
		((Control)groupBox1).Controls.Add((Control)(object)label4);
		((Control)groupBox1).Controls.Add((Control)(object)label1);
		((Control)groupBox1).Controls.Add((Control)(object)checkBoxUserPass);
		((Control)groupBox1).Controls.Add((Control)(object)label5);
		((Control)groupBox1).Controls.Add((Control)(object)textBoxDisplayName);
		val.ApplyResources((object)groupBox1, "groupBox1");
		((Control)groupBox1).Name = "groupBox1";
		groupBox1.TabStop = false;
		((TextBoxBase)textBoxPass).BorderStyle = (BorderStyle)1;
		val.ApplyResources((object)textBoxPass, "textBoxPass");
		((Control)textBoxPass).Name = "textBoxPass";
		((TextBoxBase)textBoxPass).ReadOnly = true;
		((TextBoxBase)textBoxUser).BorderStyle = (BorderStyle)1;
		val.ApplyResources((object)textBoxUser, "textBoxUser");
		((Control)textBoxUser).Name = "textBoxUser";
		((TextBoxBase)textBoxUser).ReadOnly = true;
		val.ApplyResources((object)label2, "label2");
		((Control)label2).Name = "label2";
		((TextBoxBase)textBoxLink).BorderStyle = (BorderStyle)1;
		val.ApplyResources((object)textBoxLink, "textBoxLink");
		((Control)textBoxLink).Name = "textBoxLink";
		checkBoxLink.AutoCheck = false;
		val.ApplyResources((object)checkBoxLink, "checkBoxLink");
		checkBoxLink.Checked = true;
		checkBoxLink.CheckState = (CheckState)1;
		((Control)checkBoxLink).Name = "checkBoxLink";
		((ButtonBase)checkBoxLink).UseVisualStyleBackColor = true;
		((Control)checkBoxLink).Click += new EventHandler(checkBox1_Click);
		val.ApplyResources((object)label3, "label3");
		((Control)label3).Name = "label3";
		val.ApplyResources((object)label1, "label1");
		((Control)label1).Name = "label1";
		checkBoxUserPass.AutoCheck = false;
		val.ApplyResources((object)checkBoxUserPass, "checkBoxUserPass");
		((Control)checkBoxUserPass).Name = "checkBoxUserPass";
		((ButtonBase)checkBoxUserPass).UseVisualStyleBackColor = true;
		((Control)checkBoxUserPass).Click += new EventHandler(checkBox2_Click);
		val.ApplyResources((object)label5, "label5");
		((Control)label5).Name = "label5";
		((TextBoxBase)textBoxDisplayName).BorderStyle = (BorderStyle)1;
		val.ApplyResources((object)textBoxDisplayName, "textBoxDisplayName");
		((Control)textBoxDisplayName).Name = "textBoxDisplayName";
		val.ApplyResources((object)label7, "label7");
		((Control)label7).Name = "label7";
		((Control)dataGridView1).AllowDrop = true;
		dataGridView1.AllowUserToAddRows = false;
		val2.Alignment = (DataGridViewContentAlignment)16;
		val2.BackColor = SystemColors.Control;
		val2.Font = new Font("Segoe UI", 9f, (FontStyle)0, (GraphicsUnit)3);
		val2.ForeColor = SystemColors.WindowText;
		val2.SelectionBackColor = SystemColors.Highlight;
		val2.SelectionForeColor = SystemColors.HighlightText;
		val2.WrapMode = (DataGridViewTriState)1;
		dataGridView1.ColumnHeadersDefaultCellStyle = val2;
		val.ApplyResources((object)dataGridView1, "dataGridView1");
		dataGridView1.Columns.AddRange((DataGridViewColumn[])(object)new DataGridViewColumn[4]
		{
			(DataGridViewColumn)Server,
			(DataGridViewColumn)Account,
			(DataGridViewColumn)NPH,
			(DataGridViewColumn)DisplayName
		});
		((Control)dataGridView1).Name = "dataGridView1";
		dataGridView1.RowTemplate.Height = 25;
		dataGridView1.CellClick += new DataGridViewCellEventHandler(dataGridView1_CellClick);
		dataGridView1.CellContentClick += new DataGridViewCellEventHandler(dataGridView1_CellContentClick);
		dataGridView1.RowHeaderMouseClick += new DataGridViewCellMouseEventHandler(dataGridView1_RowHeaderMouseClick);
		((Control)dataGridView1).DragDrop += new DragEventHandler(dataGridView1_DragDrop);
		((Control)dataGridView1).DragOver += new DragEventHandler(dataGridView1_DragOver);
		((Control)dataGridView1).MouseDown += new MouseEventHandler(dataGridView1_MouseDown);
		((Control)dataGridView1).MouseMove += new MouseEventHandler(dataGridView1_MouseMove);
		val3.Alignment = (DataGridViewContentAlignment)32;
		((DataGridViewBand)Server).DefaultCellStyle = val3;
		((DataGridViewColumn)Server).FillWeight = 30f;
		val.ApplyResources((object)Server, "Server");
		((DataGridViewColumn)Server).Name = "Server";
		((DataGridViewBand)Server).ReadOnly = true;
		val4.Alignment = (DataGridViewContentAlignment)32;
		((DataGridViewBand)Account).DefaultCellStyle = val4;
		((DataGridViewColumn)Account).FillWeight = 60f;
		val.ApplyResources((object)Account, "Account");
		((DataGridViewColumn)Account).Name = "Account";
		((DataGridViewBand)Account).ReadOnly = true;
		val5.Alignment = (DataGridViewContentAlignment)32;
		((DataGridViewBand)NPH).DefaultCellStyle = val5;
		((DataGridViewColumn)NPH).FillWeight = 35f;
		val.ApplyResources((object)NPH, "NPH");
		((DataGridViewColumn)NPH).Name = "NPH";
		((DataGridViewBand)NPH).ReadOnly = true;
		val6.Alignment = (DataGridViewContentAlignment)32;
		((DataGridViewBand)DisplayName).DefaultCellStyle = val6;
		((DataGridViewColumn)DisplayName).FillWeight = 90f;
		val.ApplyResources((object)DisplayName, "DisplayName");
		((DataGridViewColumn)DisplayName).Name = "DisplayName";
		((DataGridViewBand)DisplayName).ReadOnly = true;
		((Control)groupBoxAutoLog).Controls.Add((Control)(object)checkBox5);
		((Control)groupBoxAutoLog).Controls.Add((Control)(object)numericUpDownS_m);
		((Control)groupBoxAutoLog).Controls.Add((Control)(object)checkBoxRelog);
		((Control)groupBoxAutoLog).Controls.Add((Control)(object)numericUpDownS_h);
		((Control)groupBoxAutoLog).Controls.Add((Control)(object)label8);
		((Control)groupBoxAutoLog).Controls.Add((Control)(object)checkBoxReOn);
		((Control)groupBoxAutoLog).Controls.Add((Control)(object)checkBoxS_at);
		((Control)groupBoxAutoLog).Controls.Add((Control)(object)label9);
		((Control)groupBoxAutoLog).Controls.Add((Control)(object)checkBoxS_now);
		val.ApplyResources((object)groupBoxAutoLog, "groupBoxAutoLog");
		((Control)groupBoxAutoLog).Name = "groupBoxAutoLog";
		groupBoxAutoLog.TabStop = false;
		val.ApplyResources((object)checkBox5, "checkBox5");
		checkBox5.Checked = true;
		checkBox5.CheckState = (CheckState)1;
		((Control)checkBox5).Name = "checkBox5";
		((ButtonBase)checkBox5).UseVisualStyleBackColor = true;
		val.ApplyResources((object)numericUpDownS_m, "numericUpDownS_m");
		numericUpDownS_m.Maximum = new decimal(new int[4] { 59, 0, 0, 0 });
		((Control)numericUpDownS_m).Name = "numericUpDownS_m";
		val.ApplyResources((object)checkBoxRelog, "checkBoxRelog");
		((Control)checkBoxRelog).Name = "checkBoxRelog";
		((ButtonBase)checkBoxRelog).UseVisualStyleBackColor = true;
		val.ApplyResources((object)numericUpDownS_h, "numericUpDownS_h");
		numericUpDownS_h.Maximum = new decimal(new int[4] { 23, 0, 0, 0 });
		((Control)numericUpDownS_h).Name = "numericUpDownS_h";
		val.ApplyResources((object)label8, "label8");
		((Control)label8).Name = "label8";
		val.ApplyResources((object)checkBoxReOn, "checkBoxReOn");
		((Control)checkBoxReOn).Name = "checkBoxReOn";
		((ButtonBase)checkBoxReOn).UseVisualStyleBackColor = true;
		val.ApplyResources((object)checkBoxS_at, "checkBoxS_at");
		((Control)checkBoxS_at).Name = "checkBoxS_at";
		((ButtonBase)checkBoxS_at).UseVisualStyleBackColor = true;
		checkBoxS_at.CheckedChanged += new EventHandler(checkBoxS_at_CheckedChanged);
		val.ApplyResources((object)label9, "label9");
		((Control)label9).Name = "label9";
		val.ApplyResources((object)checkBoxS_now, "checkBoxS_now");
		checkBoxS_now.Checked = true;
		checkBoxS_now.CheckState = (CheckState)1;
		((Control)checkBoxS_now).Name = "checkBoxS_now";
		((ButtonBase)checkBoxS_now).UseVisualStyleBackColor = true;
		checkBoxS_now.CheckedChanged += new EventHandler(checkBoxS_now_CheckedChanged);
		val.ApplyResources((object)ButtonRunAuto, "ButtonRunAuto");
		((Control)ButtonRunAuto).BackColor = Color.Transparent;
		((Control)ButtonRunAuto).Name = "ButtonRunAuto";
		((ButtonBase)ButtonRunAuto).UseVisualStyleBackColor = false;
		ButtonRunAuto.CheckStateChanged += new EventHandler(ButtonRunAuto_CheckStateChanged);
		val.ApplyResources((object)label10, "label10");
		((Control)label10).Name = "label10";
		val.ApplyResources((object)buttonAL_del, "buttonAL_del");
		((Control)buttonAL_del).Name = "buttonAL_del";
		((ButtonBase)buttonAL_del).UseVisualStyleBackColor = true;
		((Control)buttonAL_del).Click += new EventHandler(button7_Click);
		((Control)dataGridView2).AllowDrop = true;
		dataGridView2.AllowUserToAddRows = false;
		dataGridView2.ColumnHeadersHeightSizeMode = (DataGridViewColumnHeadersHeightSizeMode)2;
		dataGridView2.Columns.AddRange((DataGridViewColumn[])(object)new DataGridViewColumn[9]
		{
			(DataGridViewColumn)Start,
			(DataGridViewColumn)Job,
			(DataGridViewColumn)End,
			(DataGridViewColumn)FL,
			(DataGridViewColumn)Class,
			(DataGridViewColumn)Column1,
			(DataGridViewColumn)auto_Log,
			(DataGridViewColumn)Run,
			(DataGridViewColumn)Del
		});
		val.ApplyResources((object)dataGridView2, "dataGridView2");
		((Control)dataGridView2).Name = "dataGridView2";
		val7.Alignment = (DataGridViewContentAlignment)32;
		dataGridView2.RowsDefaultCellStyle = val7;
		dataGridView2.RowTemplate.Height = 25;
		dataGridView2.CellClick += new DataGridViewCellEventHandler(dataGridView2_CellClick);
		dataGridView2.CellContentClick += new DataGridViewCellEventHandler(dataGridView2_CellContentClick);
		dataGridView2.RowHeaderMouseClick += new DataGridViewCellMouseEventHandler(dataGridView2_RowHeaderMouseClick);
		((Control)dataGridView2).DragDrop += new DragEventHandler(dataGridView2_DragDrop);
		((Control)dataGridView2).DragOver += new DragEventHandler(dataGridView2_DragOver);
		((Control)dataGridView2).MouseDown += new MouseEventHandler(dataGridView2_MouseDown);
		((Control)dataGridView2).MouseMove += new MouseEventHandler(dataGridView2_MouseMove);
		((DataGridViewColumn)Start).FillWeight = 45f;
		((DataGridViewBand)Start).Frozen = true;
		val.ApplyResources((object)Start, "Start");
		((DataGridViewColumn)Start).Name = "Start";
		((DataGridViewBand)Start).Resizable = (DataGridViewTriState)1;
		val8.NullValue = "Err!";
		((DataGridViewBand)Job).DefaultCellStyle = val8;
		((DataGridViewColumn)Job).FillWeight = 70f;
		((DataGridViewBand)Job).Frozen = true;
		val.ApplyResources((object)Job, "Job");
		((DataGridViewColumn)Job).Name = "Job";
		((DataGridViewBand)Job).Resizable = (DataGridViewTriState)1;
		((DataGridViewColumn)End).FillWeight = 65f;
		((DataGridViewBand)End).Frozen = true;
		val.ApplyResources((object)End, "End");
		((DataGridViewColumn)End).Name = "End";
		((DataGridViewColumn)FL).FillWeight = 130f;
		((DataGridViewBand)FL).Frozen = true;
		val.ApplyResources((object)FL, "FL");
		((DataGridViewColumn)FL).Name = "FL";
		((DataGridViewColumn)Class).FillWeight = 50f;
		((DataGridViewBand)Class).Frozen = true;
		val.ApplyResources((object)Class, "Class");
		((DataGridViewColumn)Class).Name = "Class";
		val9.NullValue = "0";
		((DataGridViewBand)Column1).DefaultCellStyle = val9;
		((DataGridViewColumn)Column1).FillWeight = 50f;
		((DataGridViewBand)Column1).Frozen = true;
		val.ApplyResources((object)Column1, "Column1");
		((DataGridViewColumn)Column1).Name = "Column1";
		((DataGridViewColumn)auto_Log).FillWeight = 70f;
		((DataGridViewBand)auto_Log).Frozen = true;
		val.ApplyResources((object)auto_Log, "auto_Log");
		((DataGridViewColumn)auto_Log).Name = "auto_Log";
		auto_Log.Text = "Log";
		auto_Log.UseColumnTextForButtonValue = true;
		((DataGridViewColumn)Run).FillWeight = 60f;
		((DataGridViewBand)Run).Frozen = true;
		val.ApplyResources((object)Run, "Run");
		((DataGridViewColumn)Run).Name = "Run";
		Run.Text = "Run";
		Run.UseColumnTextForButtonValue = true;
		((DataGridViewColumn)Del).FillWeight = 45f;
		val.ApplyResources((object)Del, "Del");
		((DataGridViewColumn)Del).Name = "Del";
		Del.Text = "Del";
		Del.UseColumnTextForButtonValue = true;
		val.ApplyResources((object)buttonAL_load, "buttonAL_load");
		((Control)buttonAL_load).Name = "buttonAL_load";
		((ButtonBase)buttonAL_load).UseVisualStyleBackColor = true;
		((Control)buttonAL_load).Click += new EventHandler(button6_Click);
		val.ApplyResources((object)buttonAL_clear, "buttonAL_clear");
		((Control)buttonAL_clear).Name = "buttonAL_clear";
		((ButtonBase)buttonAL_clear).UseVisualStyleBackColor = true;
		((Control)buttonAL_clear).Click += new EventHandler(buttonAL_run_Click);
		((ListControl)comboBoxS).FormattingEnabled = true;
		val.ApplyResources((object)comboBoxS, "comboBoxS");
		((Control)comboBoxS).Name = "comboBoxS";
		val.ApplyResources((object)buttonAL_save, "buttonAL_save");
		((Control)buttonAL_save).Name = "buttonAL_save";
		((ButtonBase)buttonAL_save).UseVisualStyleBackColor = true;
		((Control)buttonAL_save).Click += new EventHandler(buttonAL_save_Click);
		((Control)groupBox7).Controls.Add((Control)(object)label7);
		val.ApplyResources((object)groupBox7, "groupBox7");
		((Control)groupBox7).Name = "groupBox7";
		groupBox7.TabStop = false;
		((Control)groupBox6).Controls.Add((Control)(object)numericUpDown2);
		((Control)groupBox6).Controls.Add((Control)(object)checkBoxShuwdown);
		((Control)groupBox6).Controls.Add((Control)(object)checkBox6);
		((Control)groupBox6).Controls.Add((Control)(object)checkBoxShuwdown_at);
		((Control)groupBox6).Controls.Add((Control)(object)numericUpDown1);
		((Control)groupBox6).Controls.Add((Control)(object)label11);
		((Control)groupBox6).Controls.Add((Control)(object)label12);
		val.ApplyResources((object)groupBox6, "groupBox6");
		((Control)groupBox6).Name = "groupBox6";
		groupBox6.TabStop = false;
		val.ApplyResources((object)numericUpDown2, "numericUpDown2");
		numericUpDown2.Maximum = new decimal(new int[4] { 59, 0, 0, 0 });
		((Control)numericUpDown2).Name = "numericUpDown2";
		val.ApplyResources((object)checkBoxShuwdown, "checkBoxShuwdown");
		((Control)checkBoxShuwdown).Name = "checkBoxShuwdown";
		((ButtonBase)checkBoxShuwdown).UseVisualStyleBackColor = true;
		checkBoxShuwdown.CheckedChanged += new EventHandler(checkBoxShuwdown_CheckedChanged);
		val.ApplyResources((object)checkBox6, "checkBox6");
		((Control)checkBox6).Name = "checkBox6";
		((ButtonBase)checkBox6).UseVisualStyleBackColor = true;
		val.ApplyResources((object)checkBoxShuwdown_at, "checkBoxShuwdown_at");
		((Control)checkBoxShuwdown_at).Name = "checkBoxShuwdown_at";
		((ButtonBase)checkBoxShuwdown_at).UseVisualStyleBackColor = true;
		val.ApplyResources((object)numericUpDown1, "numericUpDown1");
		numericUpDown1.Maximum = new decimal(new int[4] { 23, 0, 0, 0 });
		((Control)numericUpDown1).Name = "numericUpDown1";
		val.ApplyResources((object)label11, "label11");
		((Control)label11).Name = "label11";
		val.ApplyResources((object)label12, "label12");
		((Control)label12).Name = "label12";
		val.ApplyResources((object)checkBox7, "checkBox7");
		((Control)checkBox7).Name = "checkBox7";
		((ButtonBase)checkBox7).UseVisualStyleBackColor = true;
		((Control)groupBox4).Controls.Add((Control)(object)checkBoxDapet);
		((Control)groupBox4).Controls.Add((Control)(object)numericUpDownDaPet);
		((Control)groupBox4).Controls.Add((Control)(object)checkBoxThap);
		((Control)groupBox4).Controls.Add((Control)(object)numericUpDownThap);
		((Control)groupBox4).Controls.Add((Control)(object)label19);
		((Control)groupBox4).Controls.Add((Control)(object)label17);
		((Control)groupBox4).Controls.Add((Control)(object)numericUpDownTrong);
		((Control)groupBox4).Controls.Add((Control)(object)label18);
		((Control)groupBox4).Controls.Add((Control)(object)checkBoxTrong);
		val.ApplyResources((object)groupBox4, "groupBox4");
		((Control)groupBox4).Name = "groupBox4";
		groupBox4.TabStop = false;
		val.ApplyResources((object)checkBoxDapet, "checkBoxDapet");
		((Control)checkBoxDapet).Name = "checkBoxDapet";
		((ButtonBase)checkBoxDapet).UseVisualStyleBackColor = true;
		val.ApplyResources((object)numericUpDownDaPet, "numericUpDownDaPet");
		numericUpDownDaPet.Maximum = new decimal(new int[4] { 20, 0, 0, 0 });
		((Control)numericUpDownDaPet).Name = "numericUpDownDaPet";
		numericUpDownDaPet.Value = new decimal(new int[4] { 1, 0, 0, 0 });
		val.ApplyResources((object)checkBoxThap, "checkBoxThap");
		((Control)checkBoxThap).Name = "checkBoxThap";
		((ButtonBase)checkBoxThap).UseVisualStyleBackColor = true;
		val.ApplyResources((object)numericUpDownThap, "numericUpDownThap");
		numericUpDownThap.Maximum = new decimal(new int[4] { 20, 0, 0, 0 });
		((Control)numericUpDownThap).Name = "numericUpDownThap";
		numericUpDownThap.Value = new decimal(new int[4] { 1, 0, 0, 0 });
		val.ApplyResources((object)label19, "label19");
		((Control)label19).Name = "label19";
		val.ApplyResources((object)label17, "label17");
		((Control)label17).Name = "label17";
		val.ApplyResources((object)numericUpDownTrong, "numericUpDownTrong");
		numericUpDownTrong.Maximum = new decimal(new int[4] { 20, 0, 0, 0 });
		((Control)numericUpDownTrong).Name = "numericUpDownTrong";
		numericUpDownTrong.Value = new decimal(new int[4] { 1, 0, 0, 0 });
		val.ApplyResources((object)label18, "label18");
		((Control)label18).Name = "label18";
		val.ApplyResources((object)checkBoxTrong, "checkBoxTrong");
		((Control)checkBoxTrong).Name = "checkBoxTrong";
		((ButtonBase)checkBoxTrong).UseVisualStyleBackColor = true;
		val.ApplyResources((object)groupBox3, "groupBox3");
		((Control)groupBox3).Name = "groupBox3";
		groupBox3.TabStop = false;
		((ListControl)comboBoxJ).FormattingEnabled = true;
		comboBoxJ.Items.AddRange(new object[5]
		{
			((ResourceManager)val).GetString("comboBoxJ.Items"),
			((ResourceManager)val).GetString("comboBoxJ.Items1"),
			((ResourceManager)val).GetString("comboBoxJ.Items2"),
			((ResourceManager)val).GetString("comboBoxJ.Items3"),
			((ResourceManager)val).GetString("comboBoxJ.Items4")
		});
		val.ApplyResources((object)comboBoxJ, "comboBoxJ");
		((Control)comboBoxJ).Name = "comboBoxJ";
		val.ApplyResources((object)numericUpDownKenh, "numericUpDownKenh");
		numericUpDownKenh.Maximum = new decimal(new int[4] { 999, 0, 0, 0 });
		((Control)numericUpDownKenh).Name = "numericUpDownKenh";
		val.ApplyResources((object)numericUpDownNV, "numericUpDownNV");
		numericUpDownNV.Maximum = new decimal(new int[4] { 9, 0, 0, 0 });
		numericUpDownNV.Minimum = new decimal(new int[4] { 1, 0, 0, 0 });
		((Control)numericUpDownNV).Name = "numericUpDownNV";
		numericUpDownNV.Value = new decimal(new int[4] { 1, 0, 0, 0 });
		val.ApplyResources((object)buttonAL_add, "buttonAL_add");
		((Control)buttonAL_add).Name = "buttonAL_add";
		((ButtonBase)buttonAL_add).UseVisualStyleBackColor = true;
		((Control)buttonAL_add).Click += new EventHandler(buttonAL_add_Click);
		val.ApplyResources((object)label15, "label15");
		((Control)label15).Name = "label15";
		((ListControl)comboBoxE).FormattingEnabled = true;
		comboBoxE.Items.AddRange(new object[6]
		{
			((ResourceManager)val).GetString("comboBoxE.Items"),
			((ResourceManager)val).GetString("comboBoxE.Items1"),
			((ResourceManager)val).GetString("comboBoxE.Items2"),
			((ResourceManager)val).GetString("comboBoxE.Items3"),
			((ResourceManager)val).GetString("comboBoxE.Items4"),
			((ResourceManager)val).GetString("comboBoxE.Items5")
		});
		val.ApplyResources((object)comboBoxE, "comboBoxE");
		((Control)comboBoxE).Name = "comboBoxE";
		val.ApplyResources((object)label6, "label6");
		((Control)label6).Name = "label6";
		val.ApplyResources((object)label16, "label16");
		((Control)label16).Name = "label16";
		((ListControl)comboBoxA).FormattingEnabled = true;
		val.ApplyResources((object)comboBoxA, "comboBoxA");
		((Control)comboBoxA).Name = "comboBoxA";
		val.ApplyResources((object)label14, "label14");
		((Control)label14).Name = "label14";
		val.ApplyResources((object)label13, "label13");
		((Control)label13).Name = "label13";
		val.ApplyResources((object)textBoxEV, "textBoxEV");
		((Control)textBoxEV).Name = "textBoxEV";
		((TextBoxBase)textBoxEV).ReadOnly = true;
		((Control)groupBox5).BackColor = SystemColors.Control;
		((Control)groupBox5).Controls.Add((Control)(object)tabControl1);
		((Control)groupBox5).Controls.Add((Control)(object)dataGridView1);
		val.ApplyResources((object)groupBox5, "groupBox5");
		((Control)groupBox5).Name = "groupBox5";
		groupBox5.TabStop = false;
		val.ApplyResources((object)tabControl1, "tabControl1");
		((Control)tabControl1).Controls.Add((Control)(object)tabPage1);
		((Control)tabControl1).Cursor = Cursors.Hand;
		((Control)tabControl1).Name = "tabControl1";
		tabControl1.SelectedIndex = 0;
		tabControl1.Selected += new TabControlEventHandler(tabControl1_Selected);
		val.ApplyResources((object)tabPage1, "tabPage1");
		((Control)tabPage1).Name = "tabPage1";
		tabPage1.UseVisualStyleBackColor = true;
		((Control)tabControl3).Controls.Add((Control)(object)tabPage5);
		((Control)tabControl3).Controls.Add((Control)(object)tabPage6);
		val.ApplyResources((object)tabControl3, "tabControl3");
		((Control)tabControl3).Name = "tabControl3";
		tabControl3.SelectedIndex = 0;
		tabControl3.Selected += new TabControlEventHandler(tabControl3_Selected);
		((Control)tabPage5).Controls.Add((Control)(object)panel2);
		((Control)tabPage5).Controls.Add((Control)(object)groupBox8);
		((Control)tabPage5).Controls.Add((Control)(object)groupBox1);
		((Control)tabPage5).Controls.Add((Control)(object)linkLabel2);
		((Control)tabPage5).Controls.Add((Control)(object)textBoxEV);
		((Control)tabPage5).Controls.Add((Control)(object)groupBox2);
		((Control)tabPage5).Controls.Add((Control)(object)groupBox5);
		((Control)tabPage5).Controls.Add((Control)(object)linkLabel1);
		((Control)tabPage5).Controls.Add((Control)(object)checkBox2);
		val.ApplyResources((object)tabPage5, "tabPage5");
		((Control)tabPage5).Name = "tabPage5";
		tabPage5.UseVisualStyleBackColor = true;
		panel2.BorderStyle = (BorderStyle)2;
		((Control)panel2).Controls.Add((Control)(object)label20);
		((Control)panel2).Controls.Add((Control)(object)label23);
		((Control)panel2).Controls.Add((Control)(object)label22);
		val.ApplyResources((object)panel2, "panel2");
		((Control)panel2).Name = "panel2";
		val.ApplyResources((object)label20, "label20");
		((Control)label20).Name = "label20";
		val.ApplyResources((object)label23, "label23");
		((Control)label23).Name = "label23";
		val.ApplyResources((object)label22, "label22");
		((Control)label22).Name = "label22";
		((Control)groupBox8).Controls.Add((Control)(object)comboBoxGroupName1);
		((Control)groupBox8).Controls.Add((Control)(object)buttonAddGroup);
		((Control)groupBox8).Controls.Add((Control)(object)checkBox9);
		((Control)groupBox8).Controls.Add((Control)(object)checkBox8);
		val.ApplyResources((object)groupBox8, "groupBox8");
		((Control)groupBox8).Name = "groupBox8";
		groupBox8.TabStop = false;
		((Control)tabPage6).Controls.Add((Control)(object)checkBox7);
		((Control)tabPage6).Controls.Add((Control)(object)tabControl2);
		((Control)tabPage6).Controls.Add((Control)(object)checkBox4);
		((Control)tabPage6).Controls.Add((Control)(object)groupBoxAutoLog);
		((Control)tabPage6).Controls.Add((Control)(object)groupBox4);
		((Control)tabPage6).Controls.Add((Control)(object)ButtonRunAuto);
		((Control)tabPage6).Controls.Add((Control)(object)buttonAL_del);
		((Control)tabPage6).Controls.Add((Control)(object)groupBox7);
		((Control)tabPage6).Controls.Add((Control)(object)groupBox6);
		((Control)tabPage6).Controls.Add((Control)(object)checkBox11);
		((Control)tabPage6).Controls.Add((Control)(object)buttonAL_save);
		((Control)tabPage6).Controls.Add((Control)(object)dataGridView2);
		((Control)tabPage6).Controls.Add((Control)(object)comboBoxS);
		((Control)tabPage6).Controls.Add((Control)(object)buttonAL_load);
		((Control)tabPage6).Controls.Add((Control)(object)buttonAL_clear);
		val.ApplyResources((object)tabPage6, "tabPage6");
		((Control)tabPage6).Name = "tabPage6";
		tabPage6.UseVisualStyleBackColor = true;
		((Control)tabControl2).Controls.Add((Control)(object)tabPage2);
		((Control)tabControl2).Controls.Add((Control)(object)tabPage3);
		val.ApplyResources((object)tabControl2, "tabControl2");
		((Control)tabControl2).Name = "tabControl2";
		tabControl2.SelectedIndex = 0;
		((Control)tabPage2).Controls.Add((Control)(object)comboBoxJ);
		((Control)tabPage2).Controls.Add((Control)(object)numericUpDownKenh);
		((Control)tabPage2).Controls.Add((Control)(object)label13);
		((Control)tabPage2).Controls.Add((Control)(object)numericUpDownNV);
		((Control)tabPage2).Controls.Add((Control)(object)label14);
		((Control)tabPage2).Controls.Add((Control)(object)buttonAL_add);
		((Control)tabPage2).Controls.Add((Control)(object)comboBoxA);
		((Control)tabPage2).Controls.Add((Control)(object)label15);
		((Control)tabPage2).Controls.Add((Control)(object)label16);
		((Control)tabPage2).Controls.Add((Control)(object)comboBoxE);
		((Control)tabPage2).Controls.Add((Control)(object)label6);
		val.ApplyResources((object)tabPage2, "tabPage2");
		((Control)tabPage2).Name = "tabPage2";
		tabPage2.UseVisualStyleBackColor = true;
		((Control)tabPage3).Controls.Add((Control)(object)comboBox1);
		((Control)tabPage3).Controls.Add((Control)(object)checkBox10);
		((Control)tabPage3).Controls.Add((Control)(object)label10);
		val.ApplyResources((object)tabPage3, "tabPage3");
		((Control)tabPage3).Name = "tabPage3";
		tabPage3.UseVisualStyleBackColor = true;
		((ListControl)comboBox1).FormattingEnabled = true;
		comboBox1.Items.AddRange(new object[5]
		{
			((ResourceManager)val).GetString("comboBox1.Items"),
			((ResourceManager)val).GetString("comboBox1.Items1"),
			((ResourceManager)val).GetString("comboBox1.Items2"),
			((ResourceManager)val).GetString("comboBox1.Items3"),
			((ResourceManager)val).GetString("comboBox1.Items4")
		});
		val.ApplyResources((object)comboBox1, "comboBox1");
		((Control)comboBox1).Name = "comboBox1";
		val.ApplyResources((object)checkBox10, "checkBox10");
		((Control)checkBox10).Name = "checkBox10";
		((ButtonBase)checkBox10).UseVisualStyleBackColor = true;
		checkBox10.CheckStateChanged += new EventHandler(checkBox10_CheckStateChanged);
		val.ApplyResources((object)checkBox11, "checkBox11");
		((Control)checkBox11).Name = "checkBox11";
		((ButtonBase)checkBox11).UseVisualStyleBackColor = true;
		checkBox11.CheckStateChanged += new EventHandler(checkBox11_CheckStateChanged);
		val.ApplyResources((object)panel1, "panel1");
		((Control)panel1).Name = "panel1";
		val.ApplyResources((object)this, "$this");
		((ContainerControl)this).AutoScaleMode = (AutoScaleMode)1;
		((Control)this).BackColor = SystemColors.Control;
		((Control)this).Controls.Add((Control)(object)panel1);
		((Control)this).Controls.Add((Control)(object)tabControl3);
		((Control)this).Controls.Add((Control)(object)groupBox3);
		((Form)this).FormBorderStyle = (FormBorderStyle)2;
		((Form)this).HelpButton = true;
		((Form)this).KeyPreview = true;
		((Form)this).MaximizeBox = false;
		((Control)this).Name = "Login";
		((Form)this).HelpButtonClicked += new CancelEventHandler(Login_HelpButtonClicked);
		((Form)this).FormClosing += new FormClosingEventHandler(Login_FormClosing);
		((Form)this).FormClosed += new FormClosedEventHandler(Login_FormClosed);
		((Form)this).Load += new EventHandler(Login_Load);
		((Control)this).KeyDown += new KeyEventHandler(Login_KeyDown);
		((Control)groupBox2).ResumeLayout(false);
		((Control)groupBox1).ResumeLayout(false);
		((Control)groupBox1).PerformLayout();
		((ISupportInitialize)dataGridView1).EndInit();
		((Control)groupBoxAutoLog).ResumeLayout(false);
		((Control)groupBoxAutoLog).PerformLayout();
		((ISupportInitialize)numericUpDownS_m).EndInit();
		((ISupportInitialize)numericUpDownS_h).EndInit();
		((ISupportInitialize)dataGridView2).EndInit();
		((Control)groupBox7).ResumeLayout(false);
		((Control)groupBox7).PerformLayout();
		((Control)groupBox6).ResumeLayout(false);
		((Control)groupBox6).PerformLayout();
		((ISupportInitialize)numericUpDown2).EndInit();
		((ISupportInitialize)numericUpDown1).EndInit();
		((Control)groupBox4).ResumeLayout(false);
		((Control)groupBox4).PerformLayout();
		((ISupportInitialize)numericUpDownDaPet).EndInit();
		((ISupportInitialize)numericUpDownThap).EndInit();
		((ISupportInitialize)numericUpDownTrong).EndInit();
		((ISupportInitialize)numericUpDownKenh).EndInit();
		((ISupportInitialize)numericUpDownNV).EndInit();
		((Control)groupBox5).ResumeLayout(false);
		((Control)tabControl1).ResumeLayout(false);
		((Control)tabControl3).ResumeLayout(false);
		((Control)tabPage5).ResumeLayout(false);
		((Control)tabPage5).PerformLayout();
		((Control)panel2).ResumeLayout(false);
		((Control)panel2).PerformLayout();
		((Control)groupBox8).ResumeLayout(false);
		((Control)tabPage6).ResumeLayout(false);
		((Control)tabPage6).PerformLayout();
		((Control)tabControl2).ResumeLayout(false);
		((Control)tabPage2).ResumeLayout(false);
		((Control)tabPage2).PerformLayout();
		((Control)tabPage3).ResumeLayout(false);
		((Control)tabPage3).PerformLayout();
		((Control)this).ResumeLayout(false);
	}
}
