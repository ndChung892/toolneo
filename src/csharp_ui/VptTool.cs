// Native WinForms front-end for the Python bot backend (app/backend.py).
// Looks like the auto111 "Quản lý tài khoản" tool; talks to Python over stdio JSON.
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.Globalization;
using System.Text;
using System.Web.Script.Serialization;
using System.Windows.Forms;

namespace VptTool {

static class Theme {
    // Exact colors sampled from the real Avalonia tool screenshot.
    public static readonly Color Bg      = Color.FromArgb(0x2b,0x2d,0x30);  // window
    public static readonly Color Panel   = Color.FromArgb(0x2b,0x2d,0x30);  // group bg
    public static readonly Color RowBg   = Color.FromArgb(0x1a,0x1b,0x1d);  // fields / rows
    public static readonly Color RowAlt  = Color.FromArgb(0x212225);
    public static readonly Color Header  = Color.FromArgb(0x2b,0x2d,0x30);
    public static readonly Color Sel     = Color.FromArgb(0x60,0x8a,0x3c);  // green selected row
    public static readonly Color Text    = Color.FromArgb(0xd4,0xd4,0xd4);
    public static readonly Color Dim     = Color.FromArgb(0x8a,0x8f,0x96);
    public static readonly Color Title   = Color.FromArgb(0xc8,0xc8,0xc8);  // group titles (light gray)
    public static readonly Color Green   = Color.FromArgb(0x4e,0x9e,0x3a);
    public static readonly Color Orange  = Color.FromArgb(0xd2,0x62,0x2a);
    public static readonly Color Red     = Color.FromArgb(0x9c,0x32,0x32);
    public static readonly Color Blue    = Color.FromArgb(0x2f,0x7f,0xd6);
    public static readonly Color TabIdle = Color.FromArgb(0x2b,0x2d,0x30);
    public static readonly Color GrayBtn = Color.FromArgb(0x55,0x57,0x5b);  // daily grid buttons
    public static readonly Color Accent  = Color.FromArgb(0x6d,0xa1,0x3f);  // active tab underline
}

// ---- thin bridge to the python backend -------------------------------------
class Bridge {
    Process proc;
    readonly JavaScriptSerializer js = new JavaScriptSerializer();
    public event Action<Dictionary<string,object>> OnMessage;

    public void Start(string pythonExe, string workDir) {
        var psi = new ProcessStartInfo {
            FileName = pythonExe, Arguments = "-m app.backend",
            WorkingDirectory = workDir, UseShellExecute = false,
            RedirectStandardInput = true, RedirectStandardOutput = true,
            RedirectStandardError = true, CreateNoWindow = true,
            StandardOutputEncoding = Encoding.UTF8,
        };
        psi.EnvironmentVariables["PYTHONIOENCODING"] = "utf-8";
        proc = new Process { StartInfo = psi };
        proc.OutputDataReceived += (s, e) => {
            if (string.IsNullOrEmpty(e.Data)) return;
            try {
                var obj = js.Deserialize<Dictionary<string,object>>(e.Data);
                if (obj != null && OnMessage != null) OnMessage(obj);
            } catch { }
        };
        proc.Start();
        proc.BeginOutputReadLine();
    }

    public void Send(Dictionary<string,object> cmd) {
        if (proc == null || proc.HasExited) return;
        try { proc.StandardInput.WriteLine(js.Serialize(cmd)); proc.StandardInput.Flush(); }
        catch { }
    }

    public void Stop() { try { if (proc != null && !proc.HasExited) proc.Kill(); } catch { } }
}

class MainForm : Form {
    Bridge bridge = new Bridge();
    DataGridView grid;
    TextBox tName, tLink, tFps, tPos, tGroupName;
    ComboBox cboGroup;
    ComboBox cboGather;
    RadioButton rbHerb, rbFish, rbAttach, rbFull;
    NumericUpDown numGatherMinutes;
    Label gatherStatus;
    List<Dictionary<string,object>> spotHerbs = new List<Dictionary<string,object>>();
    List<Dictionary<string,object>> spotFish = new List<Dictionary<string,object>>();
    CheckBox cViet, cMulti;
    RichTextBox logBox;
    Label trainStatus;
    System.Collections.Generic.List<string> groups = new System.Collections.Generic.List<string>();

    public MainForm() {
        Text = "Quản lý tài khoản - VPT";
        BackColor = Theme.Bg; ForeColor = Theme.Text;
        Font = new Font("Segoe UI", 9f);
        ClientSize = new Size(864, 596);
        MinimumSize = new Size(820, 560);
        BuildUi();
        StartBridge();
    }

    // ---- helpers ----
    Button ColorBtn(string text, Color c, EventHandler onClick, int w=0) {
        var b = new Button {
            Text = text, BackColor = c, ForeColor = Color.White, FlatStyle = FlatStyle.Flat,
            Font = new Font("Segoe UI", 9f, FontStyle.Bold), AutoSize = false, Height = 30,
        };
        b.FlatAppearance.BorderSize = 0;
        if (w > 0) b.Width = w;
        b.Click += onClick;
        return b;
    }
    Label Lab(string t, Color? c=null) {
        return new Label { Text = t, AutoSize = true, ForeColor = c ?? Theme.Text, BackColor = Color.Transparent };
    }
    TextBox Tb(int w) {
        return new TextBox { Width = w, BackColor = Theme.RowBg, ForeColor = Theme.Text, BorderStyle = BorderStyle.FixedSingle };
    }
    GroupBox Group(string title) {
        return new GroupBox { Text = title, ForeColor = Theme.Title, BackColor = Theme.Bg, Padding = new Padding(8) };
    }

    void BuildUi() {
        // ===== LEFT COLUMN (TableLayoutPanel: Thông tin / Tạo nhóm / Nhật ký) =====
        var left = new TableLayoutPanel { Dock = DockStyle.Left, Width = 286, BackColor = Theme.Bg,
            Padding = new Padding(8), ColumnCount = 1, RowCount = 3 };
        left.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 100));
        left.RowStyles.Add(new RowStyle(SizeType.Absolute, 236));  // Thông tin
        left.RowStyles.Add(new RowStyle(SizeType.Absolute, 92));   // Tạo nhóm
        left.RowStyles.Add(new RowStyle(SizeType.Percent, 100));   // Nhật ký
        Controls.Add(left);

        // Thông tin
        var gInfo = Group("Thông tin"); gInfo.Dock = DockStyle.Fill;
        var it = new TableLayoutPanel { Dock = DockStyle.Fill, ColumnCount = 3, BackColor = Theme.Bg };
        it.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 100));
        it.ColumnStyles.Add(new ColumnStyle(SizeType.Absolute, 40));
        it.ColumnStyles.Add(new ColumnStyle(SizeType.Absolute, 56));
        gInfo.Controls.Add(it);
        it.Controls.Add(Lab("Tên"), 0, 0); it.Controls.Add(Lab("FPS"), 2, 0);
        tName = Tb(0); tName.Dock = DockStyle.Fill; it.Controls.Add(tName, 0, 1); it.SetColumnSpan(tName, 2);
        tFps = Tb(52); it.Controls.Add(tFps, 2, 1);
        it.Controls.Add(Lab("Link"), 0, 2);
        tLink = Tb(0); tLink.Dock = DockStyle.Fill; it.Controls.Add(tLink, 0, 3); it.SetColumnSpan(tLink, 3);
        it.Controls.Add(Lab("Nhóm"), 0, 4); it.Controls.Add(Lab("Vị trí"), 2, 4);
        cboGroup = new ComboBox { Dock = DockStyle.Fill, DropDownStyle = ComboBoxStyle.DropDownList,
            BackColor = Theme.RowBg, ForeColor = Theme.Text, FlatStyle = FlatStyle.Flat };
        it.Controls.Add(cboGroup, 0, 5); it.SetColumnSpan(cboGroup, 2);
        tPos = Tb(52); it.Controls.Add(tPos, 2, 5);
        var cbRow = new FlowLayoutPanel { AutoSize = true, BackColor = Theme.Bg };
        cViet = new CheckBox { Text = "Việt hóa", ForeColor = Theme.Text, AutoSize = true };
        cMulti = new CheckBox { Text = "Mở trùng tab", ForeColor = Theme.Text, AutoSize = true, Checked = true };
        cbRow.Controls.Add(cViet); cbRow.Controls.Add(cMulti);
        it.Controls.Add(cbRow, 0, 6); it.SetColumnSpan(cbRow, 3);
        var infoBtns = new FlowLayoutPanel { AutoSize = true, BackColor = Theme.Bg };
        infoBtns.Controls.Add(ColorBtn("THÊM", Theme.Green, (s,e)=>DoAddUpdate(false), 64));
        infoBtns.Controls.Add(ColorBtn("CẬP NHẬT", Theme.Orange, (s,e)=>DoAddUpdate(true), 88));
        infoBtns.Controls.Add(ColorBtn("XÓA", Theme.Red, (s,e)=>DoDelete(), 56));
        it.Controls.Add(infoBtns, 0, 7); it.SetColumnSpan(infoBtns, 3);

        // Tạo nhóm
        var gGroup = Group("Tạo nhóm"); gGroup.Dock = DockStyle.Fill;
        var gp = new TableLayoutPanel { Dock = DockStyle.Fill, ColumnCount = 2, BackColor = Theme.Bg };
        gp.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 100));
        gp.ColumnStyles.Add(new ColumnStyle(SizeType.Absolute, 90));
        gGroup.Controls.Add(gp);
        gp.Controls.Add(Lab("Tên nhóm"), 0, 0);
        tGroupName = Tb(0); tGroupName.Dock = DockStyle.Fill; gp.Controls.Add(tGroupName, 0, 1);
        var bMakeGroup = ColorBtn("Tạo nhóm", Theme.Green, (s,e)=>DoCreateGroup()); bMakeGroup.Dock = DockStyle.Fill;
        gp.Controls.Add(bMakeGroup, 1, 1);

        // Nhật ký (fill)
        var gLog = Group("Nhật ký"); gLog.Dock = DockStyle.Fill;
        var logTop = new FlowLayoutPanel { Dock = DockStyle.Top, Height = 28, BackColor = Theme.Bg };
        var cLog = new CheckBox { Text = "Hiện log tài khoản", ForeColor = Theme.Text, AutoSize = true, Checked = true };
        var bClr = ColorBtn("Xóa Log", Theme.GrayBtn, (s,e)=>logBox.Clear(), 68); bClr.Font = new Font("Segoe UI", 8f);
        logTop.Controls.Add(cLog); logTop.Controls.Add(bClr);
        gLog.Controls.Add(logTop);
        logBox = new RichTextBox { Dock = DockStyle.Fill, BackColor = Theme.RowBg, ForeColor = Theme.Text,
            BorderStyle = BorderStyle.None, ReadOnly = true, Font = new Font("Consolas", 8.5f) };
        gLog.Controls.Add(logBox); logBox.BringToFront();

        left.Controls.Add(gInfo, 0, 0);
        left.Controls.Add(gGroup, 0, 1);
        left.Controls.Add(gLog, 0, 2);

        // ===== RIGHT COLUMN (one TableLayoutPanel: fixed rows top→bottom) =====
        var right = new TableLayoutPanel { Dock = DockStyle.Fill, BackColor = Theme.Bg,
            Padding = new Padding(4, 6, 8, 8), ColumnCount = 1, RowCount = 6 };
        right.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 100));
        right.RowStyles.Add(new RowStyle(SizeType.Absolute, 22));   // 0 grid label
        right.RowStyles.Add(new RowStyle(SizeType.Absolute, 196));  // 1 grid
        right.RowStyles.Add(new RowStyle(SizeType.Absolute, 22));   // 2 Thao tác
        right.RowStyles.Add(new RowStyle(SizeType.Absolute, 44));   // 3 action buttons
        right.RowStyles.Add(new RowStyle(SizeType.Absolute, 34));   // 4 window ops
        right.RowStyles.Add(new RowStyle(SizeType.Percent, 100));   // 5 tabs (fill)
        Controls.Add(right); right.BringToFront();

        var gridLbl = Lab("Danh sách tài khoản đã lưu", Theme.Title);
        gridLbl.Dock = DockStyle.Fill; gridLbl.AutoSize = false;

        grid = new DataGridView {
            Dock = DockStyle.Fill, BackgroundColor = Theme.RowBg, BorderStyle = BorderStyle.FixedSingle,
            AllowUserToAddRows = false, AllowUserToDeleteRows = false, ReadOnly = false,
            RowHeadersVisible = false, SelectionMode = DataGridViewSelectionMode.FullRowSelect,
            MultiSelect = false, EnableHeadersVisualStyles = false, AutoGenerateColumns = false,
            GridColor = Theme.Header, AllowUserToResizeRows = false, ColumnHeadersHeight = 26,
        };
        grid.ColumnHeadersDefaultCellStyle.BackColor = Theme.Header;
        grid.ColumnHeadersDefaultCellStyle.ForeColor = Theme.Text;
        grid.ColumnHeadersDefaultCellStyle.Font = new Font("Segoe UI", 9f, FontStyle.Bold);
        grid.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.DisableResizing;
        grid.DefaultCellStyle.BackColor = Theme.RowBg;
        grid.DefaultCellStyle.ForeColor = Theme.Text;
        grid.DefaultCellStyle.SelectionBackColor = Theme.Sel;
        grid.DefaultCellStyle.SelectionForeColor = Color.White;
        grid.AlternatingRowsDefaultCellStyle.BackColor = Theme.RowAlt;
        grid.RowTemplate.Height = 28;
        var cSel = new DataGridViewCheckBoxColumn { Name = "sel", HeaderText = "", Width = 34 };
        var cStt = new DataGridViewTextBoxColumn { Name = "stt", HeaderText = "STT", Width = 44 };
        var cName = new DataGridViewTextBoxColumn { Name = "name", HeaderText = "TÊN", AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill };
        var cCh = new DataGridViewTextBoxColumn { Name = "channel", HeaderText = "KÊNH", Width = 80 };
        var cGr = new DataGridViewTextBoxColumn { Name = "group", HeaderText = "NHÓM AUTO", Width = 100 };
        var cPid = new DataGridViewTextBoxColumn { Name = "pid", HeaderText = "PID", Width = 70 };
        grid.Columns.AddRange(new DataGridViewColumn[] { cSel, cStt, cName, cCh, cGr, cPid });
        grid.SelectionChanged += (s,e)=>LoadSelectedToForm();

        var actLbl = Lab("Thao tác", Theme.Title); actLbl.Dock = DockStyle.Fill; actLbl.AutoSize = false;
        var actPanel = new TableLayoutPanel { Dock = DockStyle.Fill, ColumnCount = 5, BackColor = Theme.Bg };
        for (int i=0;i<5;i++) actPanel.ColumnStyles.Add(new ColumnStyle(SizeType.Percent, 20));
        actPanel.Controls.Add(FillBtn("VÀO GAME", Theme.Blue, (s,e)=>Send("login", true)), 0, 0);
        actPanel.Controls.Add(FillBtn("VÀO ALL", Theme.Green, (s,e)=>Send("login_all", false)), 1, 0);
        actPanel.Controls.Add(FillBtn("AUTO ALL", Theme.Red, (s,e)=>Send("auto_all", true)), 2, 0);
        actPanel.Controls.Add(FillBtn("NGỪNG AUTO", Theme.Orange, (s,e)=>Send("stop_auto", true)), 3, 0);
        actPanel.Controls.Add(FillBtn("DỪNG ALL", Theme.Red, (s,e)=>Send("stop_all", false)), 4, 0);

        var opsPanel = new FlowLayoutPanel { Dock = DockStyle.Fill, BackColor = Theme.Bg };
        opsPanel.Controls.Add(ColorBtn("Sắp xếp CS", Theme.Header, (s,e)=>Send("arrange", false), 84));
        opsPanel.Controls.Add(ColorBtn("Ẩn (đỡ GPU)", Theme.Header, (s,e)=>Send("hide", false), 90));
        opsPanel.Controls.Add(ColorBtn("Ẩn taskbar", Theme.Header, (s,e)=>Send("minimize", false), 84));
        opsPanel.Controls.Add(ColorBtn("Hiện", Theme.Header, (s,e)=>Send("restore", false), 56));
        opsPanel.Controls.Add(ColorBtn("Đóng CS", Theme.Header, (s,e)=>Send("close", false), 72));

        var tabs = new TabControl { Dock = DockStyle.Fill, DrawMode = TabDrawMode.OwnerDrawFixed };
        tabs.DrawItem += DrawTab;
        // The previously selected page's controls stayed painted over the new
        // one - confirmed on a real desktop screenshot, not just a PrintWindow
        // capture: the Cài đặt "Câu cá / Cấp 1" combo and a dungeon checkbox
        // sat on top of the Hái/Câu map grid. Refresh alone did not clear it;
        // the incoming page has to be raised in z-order first.
        tabs.Selected += (s,e)=>{
            if (e.TabPage == null) return;
            e.TabPage.BringToFront();
            e.TabPage.Refresh();
        };
        AddTab(tabs, "Daily"); var tabCaidat = AddTab(tabs, "Cài đặt"); AddTab(tabs, "Sổ Tay");
        var tabTrain = AddTab(tabs, "Train"); var tabHai = AddTab(tabs, "Hái/Câu");
        AddTab(tabs, "AutoClick"); AddTab(tabs, "Tài khoản");
        BuildTrainTab(tabTrain);
        BuildHaiCauTab(tabHai);
        BuildCaidatTab(tabCaidat);
        tabs.SelectedIndex = 1;  // open "Cài đặt" like the reference

        right.Controls.Add(gridLbl, 0, 0);
        right.Controls.Add(grid, 0, 1);
        right.Controls.Add(actLbl, 0, 2);
        right.Controls.Add(actPanel, 0, 3);
        right.Controls.Add(opsPanel, 0, 4);
        right.Controls.Add(tabs, 0, 5);
    }

    Button FillBtn(string text, Color c, EventHandler onClick) {
        var b = ColorBtn(text, c, onClick); b.Dock = DockStyle.Fill; b.Margin = new Padding(2); return b;
    }

    void DrawTab(object sender, DrawItemEventArgs e) {
        var tc = (TabControl)sender;
        var page = tc.TabPages[e.Index];
        bool sel = e.Index == tc.SelectedIndex;
        using (var b = new SolidBrush(Theme.Bg)) e.Graphics.FillRectangle(b, e.Bounds);
        var col = sel ? Color.FromArgb(0xff,0xf2,0xc9) : Theme.Dim;
        TextRenderer.DrawText(e.Graphics, page.Text, new Font("Segoe UI", 9f, sel?FontStyle.Bold:FontStyle.Regular),
            e.Bounds, col, TextFormatFlags.HorizontalCenter | TextFormatFlags.VerticalCenter);
        if (sel) using (var p = new Pen(Theme.Accent, 2))
            e.Graphics.DrawLine(p, e.Bounds.Left+8, e.Bounds.Bottom-3, e.Bounds.Right-8, e.Bounds.Bottom-3);
    }

    TabPage AddTab(TabControl tc, string title) {
        var p = new TabPage(title) { BackColor = Theme.Panel, ForeColor = Theme.Text };
        tc.TabPages.Add(p);
        return p;
    }

    void BuildTrainTab(TabPage p) {
        var lbl = new Label { Text = "Train 5 acc — 3 map (đăng nhập song song, lập nhóm memory, key đi giữa NPC).",
            ForeColor = Theme.Dim, AutoSize = false, Dock = DockStyle.Top, Height = 40 };
        p.Controls.Add(lbl);
        var start = ColorBtn("Bắt đầu Train 5 acc", Theme.Blue, (s,e)=>bridge.Send(Cmd("train_start")), 200);
        start.Location = new Point(12, 50); start.Height = 40; start.Width = 260;
        var stop = ColorBtn("Dừng Train", Theme.Red, (s,e)=>bridge.Send(Cmd("train_stop")), 120);
        stop.Location = new Point(284, 50); stop.Height = 40;
        trainStatus = new Label { Text = "Train: IDLE", ForeColor = Theme.Dim, AutoSize = true, Location = new Point(12, 100) };
        p.Controls.Add(start); p.Controls.Add(stop); p.Controls.Add(trainStatus);
    }

    // Scope, set by the owner (2026-08-18/19): only "Dược Thảo Cấp N" and
    // "Đàn Cá Cấp N", up to cấp 5. The two behave differently and the UI
    // follows that:
    //   Dược thảo - a spot's output is RANDOM, so the user picks a LEVEL and
    //               the tool goes to any spot of it.
    //   Đàn cá    - a spot is FIXED to one fish, so the user picks the FISH
    //               ITSELF and the tool already knows which map/spot has it.
    // Movement is the same primitive the tool already uses to reach a boss
    // (NPCView.clickNpc, game's own router) - see app/gather_runner.py.
    //
    // Layout rules that bit already and are kept in mind here: everything fits
    // one screen with no scrolling, controls stay inside the ~560px tab page,
    // and every DataGridView column sets SortMode=NotSortable.
    void BuildHaiCauTab(TabPage p) {
        var grid = new TableLayoutPanel {
            Dock = DockStyle.Fill, ColumnCount = 1, RowCount = 4,
            BackColor = Theme.Panel, Padding = new Padding(8, 4, 8, 4),
        };
        grid.RowStyles.Add(new RowStyle(SizeType.Absolute, 20));
        grid.RowStyles.Add(new RowStyle(SizeType.Absolute, 66));
        grid.RowStyles.Add(new RowStyle(SizeType.Absolute, 30));
        grid.RowStyles.Add(new RowStyle(SizeType.Percent, 100));
        p.Controls.Add(grid);

        grid.Controls.Add(new Label {
            Text = "Chọn dược thảo (theo cấp) hoặc đàn cá (theo loại) — tool tự phù và di chuyển tới bãi.",
            ForeColor = Theme.Dim, AutoSize = false, Dock = DockStyle.Fill }, 0, 0);

        var top = new Panel { Dock = DockStyle.Fill, BackColor = Theme.Panel };
        rbHerb = new RadioButton { Text = "Dược thảo", ForeColor = Theme.Text, Checked = true,
            AutoSize = true, Location = new Point(2, 4) };
        rbFish = new RadioButton { Text = "Đàn cá", ForeColor = Theme.Text,
            AutoSize = true, Location = new Point(100, 4) };
        rbHerb.CheckedChanged += (s,e)=>SwitchGatherKind();
        top.Controls.Add(rbHerb); top.Controls.Add(rbFish);

        cboGather = new ComboBox { Location = new Point(2, 26), Width = 300, DropDownStyle = ComboBoxStyle.DropDownList,
            BackColor = Theme.RowBg, ForeColor = Theme.Text };
        top.Controls.Add(cboGather);

        rbAttach = new RadioButton { Text = "Dùng client đang mở", ForeColor = Theme.Text, Checked = true,
            AutoSize = true, Location = new Point(310, 4) };
        rbFull = new RadioButton { Text = "Tự đăng nhập", ForeColor = Theme.Text,
            AutoSize = true, Location = new Point(310, 24) };
        new ToolTip().SetToolTip(rbFull, "Dùng cho acc clone chưa mở client");
        top.Controls.Add(rbAttach); top.Controls.Add(rbFull);

        // Kept inside the ~560px tab page: at x=524 the spinner ran off the
        // right edge (seen on a real desktop screenshot of the built UI).
        var minutesLabel = new Label { Text = "Dừng sau (phút)", ForeColor = Theme.Text,
            AutoSize = true, Location = new Point(310, 46) };
        new ToolTip().SetToolTip(minutesLabel, "0 = chạy tới khi bấm Dừng");
        top.Controls.Add(minutesLabel);
        numGatherMinutes = new NumericUpDown { Location = new Point(412, 42), Width = 52, Minimum = 0, Maximum = 1440,
            Value = 0, BackColor = Theme.RowBg, ForeColor = Theme.Text };
        top.Controls.Add(numGatherMinutes);
        grid.Controls.Add(top, 0, 1);

        var btnRow = new Panel { Dock = DockStyle.Fill, BackColor = Theme.Panel };
        var start = ColorBtn("Bắt đầu", Theme.Green, (s,e)=>StartSpotGather(), 96); start.Location = new Point(2, 2); start.Height = 26;
        var stop = ColorBtn("Dừng", Theme.Red, (s,e)=>bridge.Send(Cmd("spot_stop")), 76); stop.Location = new Point(104, 2); stop.Height = 26;
        var refresh = ColorBtn("Dò lại dữ liệu", Theme.GrayBtn, (s,e)=>bridge.Send(Cmd("list_spots")), 110); refresh.Location = new Point(186, 2); refresh.Height = 26;
        btnRow.Controls.Add(start); btnRow.Controls.Add(stop); btnRow.Controls.Add(refresh);
        grid.Controls.Add(btnRow, 0, 2);

        gatherStatus = new Label { Text = "Hái/Câu: IDLE", ForeColor = Theme.Dim,
            AutoSize = false, Dock = DockStyle.Fill };
        grid.Controls.Add(gatherStatus, 0, 3);
    }

    void SwitchGatherKind() {
        cboGather.Items.Clear();
        var rows = rbHerb.Checked ? spotHerbs : spotFish;
        foreach (var r in rows) cboGather.Items.Add(Str(r, "text"));
        if (cboGather.Items.Count > 0) cboGather.SelectedIndex = 0;
    }

    void StartSpotGather() {
        var rows = rbHerb.Checked ? spotHerbs : spotFish;
        int i = cboGather.SelectedIndex;
        if (i < 0 || i >= rows.Count) { logBox.AppendText("Chưa chọn dược thảo/cá, hoặc chưa dò được dữ liệu.\n"); return; }
        var ids = CheckedIds();
        if (ids.Count == 0) { logBox.AppendText("Tích chọn account ở bảng trên trước.\n"); return; }
        var row = rows[i];
        var cmd = Cmd("spot_start");
        cmd["kind"] = rbHerb.Checked ? "duoc" : "ca";
        cmd["level"] = Str(row, "level");
        cmd["fish"] = rbHerb.Checked ? "" : Str(row, "fish");
        cmd["account_ids"] = ids;
        cmd["mode"] = rbFull.Checked ? "full" : "attach";
        cmd["end_minutes"] = (int)numGatherMinutes.Value;
        bridge.Send(cmd);
    }

    void UpdateSpots(Dictionary<string,object> m) {
        spotHerbs.Clear(); spotFish.Clear();
        object ho, fo;
        if (m.TryGetValue("herbs", out ho)) {
            var arr = ho as System.Collections.IEnumerable;
            if (arr != null) foreach (var o in arr) { var r = o as Dictionary<string,object>; if (r != null) spotHerbs.Add(r); }
        }
        if (m.TryGetValue("fish", out fo)) {
            var arr = fo as System.Collections.IEnumerable;
            if (arr != null) foreach (var o in arr) { var r = o as Dictionary<string,object>; if (r != null) spotFish.Add(r); }
        }
        SwitchGatherKind();
    }

    void UpdateGatherStatus(Dictionary<string,object> m) {
        object ao;
        if (!m.TryGetValue("accounts", out ao)) { gatherStatus.Text = "Hái/Câu: IDLE"; return; }
        var arr = ao as System.Collections.IEnumerable;
        if (arr == null) { gatherStatus.Text = "Hái/Câu: IDLE"; return; }
        var parts = new List<string>();
        foreach (var o in arr) {
            var r = o as Dictionary<string,object>; if (r == null) continue;
            parts.Add(Str(r, "account_id") + ": " + Str(r, "stage")
                + " (" + Str(r, "picks") + " lần, nhận: " + StrList(r, "products") + ")");
        }
        gatherStatus.Text = "Hái/Câu — tổng " + Str(m, "picks") + " lần | "
            + string.Join("   ", parts.ToArray());
    }

    void BuildCaidatTab(TabPage p) {
        string[] rows = { "Lựa chọn Mật bảo", "Trồng trang viên với", "Đổi năng nổ với", "Hái thuốc", "Câu cá", "Nông trường" };
        int y = 10;
        foreach (var r in rows) {
            p.Controls.Add(new Label { Text = r, ForeColor = Theme.Text, AutoSize = true, Location = new Point(12, y+4) });
            var cb = new ComboBox { Location = new Point(150, y), Width = 90, DropDownStyle = ComboBoxStyle.DropDownList,
                BackColor = Theme.RowBg, ForeColor = Theme.Text };
            cb.Items.AddRange(new object[]{ "Cấp 1","Cấp 2","Cấp 3","Cấp 4","Cấp 5" }); cb.SelectedIndex = 0;
            p.Controls.Add(cb);
            y += 30;
        }
        string[] dungeons = { "Mê Huyễn Động","Kho Báu Đại Mạc","Lục Tiên Cảnh","Liệt Diễm Thâm Uyên",
            "Trở Lại Lang Huyết","Quỷ Hút Máu","Thế Giới Số","Thám Hiểm" };
        int dy = 10;
        p.Controls.Add(new Label { Text = "Cài đặt phụ bản", ForeColor = Theme.Title, AutoSize = true, Location = new Point(340, dy) });
        dy += 22;
        foreach (var d in dungeons) {
            var play = ColorBtn("▶", Theme.Green, (s,e)=>{}, 24); play.Height = 20; play.Location = new Point(340, dy);
            p.Controls.Add(play);
            p.Controls.Add(new CheckBox { Text = d, ForeColor = Theme.Text, AutoSize = true, Location = new Point(370, dy) });
            dy += 24;
        }
    }

    // ---- bridge wiring ----
    void StartBridge() {
        bridge.OnMessage += m => { try { BeginInvoke((Action)(()=>Handle(m))); } catch { } };
        string py = "python";
        string exeDir = Application.StartupPath;
        bridge.Start(py, exeDir);
    }

    Dictionary<string,object> Cmd(string cmd) {
        return new Dictionary<string,object> { { "cmd", cmd } };
    }

    List<string> CheckedIds() {
        var ids = new List<string>();
        foreach (DataGridViewRow row in grid.Rows) {
            var v = row.Cells["sel"].Value;
            if (v is bool && (bool)v && row.Tag != null) ids.Add((string)row.Tag);
        }
        return ids;
    }

    void Send(string cmd, bool useChecked) {
        var c = Cmd(cmd);
        if (useChecked) c["ids"] = CheckedIds();
        bridge.Send(c);
    }

    void DoAddUpdate(bool update) {
        var c = Cmd(update ? "update_account" : "add_account");
        if (update && grid.SelectedRows.Count > 0) c["id"] = grid.SelectedRows[0].Tag;
        c["name"] = tName.Text; c["link"] = tLink.Text; c["fps"] = tFps.Text;
        c["pos"] = tPos.Text; c["group"] = cboGroup.Text;
        bridge.Send(c);
    }

    void DoCreateGroup() {
        string name = tGroupName.Text.Trim();
        if (name.Length == 0) return;
        var c = Cmd("create_group"); c["name"] = name; bridge.Send(c);
        tGroupName.Clear();
    }
    void DoDelete() {
        var ids = CheckedIds();
        if (ids.Count == 0 && grid.SelectedRows.Count > 0) ids.Add((string)grid.SelectedRows[0].Tag);
        if (ids.Count == 0) return;
        if (MessageBox.Show("Xóa " + ids.Count + " acc?", "Xác nhận", MessageBoxButtons.YesNo) != DialogResult.Yes) return;
        var c = Cmd("delete_account"); c["ids"] = ids; bridge.Send(c);
    }

    void LoadSelectedToForm() {
        if (grid.SelectedRows.Count == 0) return;
        var row = grid.SelectedRows[0];
        tName.Text = Convert.ToString(row.Cells["name"].Value);
        if (row.Tag != null && lastRows.ContainsKey((string)row.Tag)) {
            var r = lastRows[(string)row.Tag];
            tLink.Text = Str(r, "link"); tFps.Text = Str(r, "fps"); tPos.Text = Str(r, "pos");
            cboGroup.Text = Str(r, "group");
        }
    }

    Dictionary<string, Dictionary<string,object>> lastRows = new Dictionary<string, Dictionary<string,object>>();

    static string Str(Dictionary<string,object> d, string k) {
        object v; return d.TryGetValue(k, out v) && v != null ? Convert.ToString(v, CultureInfo.InvariantCulture) : "";
    }

    // "products" comes back as a JSON array (e.g. ["Ninh Thần Thảo"]); Str()
    // would print the .NET collection type name for it, not its contents.
    static string StrList(Dictionary<string,object> d, string k) {
        object v; if (!d.TryGetValue(k, out v) || v == null) return "";
        var arr = v as System.Collections.IEnumerable;
        if (arr == null || v is string) return Convert.ToString(v, CultureInfo.InvariantCulture);
        var parts = new List<string>();
        foreach (var item in arr) parts.Add(Convert.ToString(item, CultureInfo.InvariantCulture));
        return string.Join(", ", parts.ToArray());
    }

    void Handle(Dictionary<string,object> m) {
        string type = Str(m, "type");
        if (type == "accounts") {
            UpdateGrid(m);
        } else if (type == "log") {
            logBox.AppendText(Str(m, "msg") + "\n");
            logBox.SelectionStart = logBox.TextLength; logBox.ScrollToCaret();
        } else if (type == "train") {
            trainStatus.Text = "Train: " + Str(m, "stage") + " — " + Str(m, "detail");
        } else if (type == "spot_gather") {
            UpdateGatherStatus(m);
        } else if (type == "spots") {
            UpdateSpots(m);
        } else if (type == "groups") {
            UpdateGroups(m);
        } else if (type == "error") {
            logBox.AppendText("[LỖI] " + Str(m, "cmd") + ": " + Str(m, "detail") + "\n");
        }
    }

    void UpdateGroups(Dictionary<string,object> m) {
        groups.Clear();
        object go;
        if (m.TryGetValue("groups", out go)) {
            var arr = go as System.Collections.IEnumerable;
            if (arr != null) foreach (var g in arr) groups.Add(Convert.ToString(g));
        }
        string cur = cboGroup.Text;
        cboGroup.Items.Clear();
        cboGroup.Items.Add("Không nhóm");
        foreach (var g in groups) cboGroup.Items.Add(g);
        cboGroup.Text = string.IsNullOrEmpty(cur) ? "Không nhóm" : cur;
    }

    void UpdateGrid(Dictionary<string,object> m) {
        object rowsObj; if (!m.TryGetValue("rows", out rowsObj)) return;
        var arr = rowsObj as System.Collections.IEnumerable; if (arr == null) return;
        // remember checked state + selection
        var wasChecked = new HashSet<string>(CheckedIds());
        string selId = grid.SelectedRows.Count > 0 ? (string)grid.SelectedRows[0].Tag : null;
        bool firstLoad = grid.Rows.Count == 0;
        grid.Rows.Clear(); lastRows.Clear();
        foreach (var o in arr) {
            var r = o as Dictionary<string,object>; if (r == null) continue;
            string id = Str(r, "id"); lastRows[id] = r;
            bool chk = firstLoad ? true : wasChecked.Contains(id);
            int idx = grid.Rows.Add(chk, Str(r, "stt"), Str(r, "name"), Str(r, "channel"), Str(r, "group"),
                                    Str(r, "pid") == "0" ? "-" : Str(r, "pid"));
            grid.Rows[idx].Tag = id;
            if (id == selId) grid.Rows[idx].Selected = true;
        }
    }

    protected override void OnFormClosing(FormClosingEventArgs e) {
        bridge.Stop();
        base.OnFormClosing(e);
    }

    [STAThread]
    static void Main() {
        Application.EnableVisualStyles();
        Application.SetCompatibleTextRenderingDefault(false);
        Application.Run(new MainForm());
    }
}
}
