using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Management;
using System.Net.Http;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;
using KAutoHelper;
using Newtonsoft.Json.Linq;

namespace AutoTool;

internal static class Program
{
	public static class AppMain
	{
		public static string[] dataMaps = new string[52]
		{
			"363\t228\tThiện Tĩnh Địa\t4\t?\t?\t?\tVùng đất sơ khai, nơi có kiến thức nghìn năm lưu truyền lại. Thích hợp cho cấp độ từ 11 - 15.", "422\t236\tVân Đài\t3\t?\t?\t?\tNơi bắt đầu học tập, nhận sự trợ giúp từ tự nhiên. Thích hợp cho cấp độ từ 1 - 5.", "415\t274\tXuất Vân Thôn\t1\t?\t?\t?\tThôn nhỏ yên tĩnh nằm giữa đồi núi và đồng bằng phía tây đại lục, tương truyền là nơi khởi nguồn văn minh Đại Lục Vô Ưu.", "469\t302\tĐông Xuất Vân\t2\t?\t?\t?\tVùng ngoại ô Xuất Vân dẫn đến Đông Huyền, là nơi săn bắn và luyện tập thích hợp cho cấp 6 - 10.", "513\t317\tĐông Huyền Thành\t9\t?\t?\t?\tThành phố nằm ngay giữa đại lục, là trung tâm hành chính, văn hóa, giao thông của đại lục.", "466\t324\tLê Dương Bắc\t15\t?\t?\t?\tPhía bắc hồ Lê Dương là nguồn nước của Đông Huyền, tuy phong cảnh hữu tình nhưng khá nguy hiểm. Thích hợp cho cấp độ từ 16 - 20", "420\t331\tLê Dương Đảo\t17\t?\t?\t?\tHòn đảo bé nhỏ như con thuyền đậu trên mặt hồ, là nơi đi dễ khó về. Thích hợp cho cấp độ từ 21 - 30.", "378\t324\tTháp Khắc Nguyên\t8\t?\t?\t?\tRừng cây rộng lớn nằm giữa Lê Dương và Hư Không Mạc, là nơi ở của bầy sói. Thích hợp cho cấp độ từ 46 - 50.", "340\t365\tHư Không Mạc\t14\t?\t?\t?\tNơi có nhiều vật quý, nhưng là vùng đất chết, vô số sinh linh đã bị chôn vùi. Thích hợp cho cấp độ từ 56 - 60.", "428\t357\tLê Dương Thôn\t5\t?\t?\t?\tThôn nhỏ ven hồ Lê Dương có phong cảnh hữu tình mê hoặc người lữ khách. Thích hợp cho cấp độ từ 51 - 55.",
			"457\t360\tLê Dương Nam\t6\t?\t?\t?\tVùng đất nguy hiểm nhất của Lê Dương, rất ít người qua lại. Thích hợp cho cấp độ từ 61 - 65.", "431\t407\tNgọc Phong Lâm\t16\t?\t?\t?\tChim hót véo von, bướm ong bay lượn, trăm hoa đua nở, tựa chốn thiên đường. Thích hợp cho cấp độ từ 71 - 75.", "466\t443\tQuân Cổ Đạo\t7\t?\t?\t?\tNơi ở của thánh hiền quân tử, giúp rèn luyện tính khiêm tốn học hỏi, kiên cường bất khuất. Thích hợp cho cấp độ từ 81- 85.", "490\t435\tKỳ Thạch Địa\t18\t?\t?\t?\tVùng đất từng là nơi cư ngụ của một nền văn minh viễn cổ. Thích hợp cho cấp độ từ 86 - 90.", "441\t470\tLinh Lan\t19\t?\t?\t?\tĐường mòn trong núi trải đầy cánh lan, khung cảnh đẹp nhưng tiềm tàng mối nguy hiểm. Thích hợp cho cấp độ từ 91 - 95.", "432\t497\tPhục Ma Cốc\t23\t?\t?\t?\tHang động tối tăm vô cùng đáng sợ. Yêu cầu cấp độ 96 - 100.", "415\t518\tMê Quang Tự\t29\t?\t?\t?\tKhông ai có thể sống sót rời khỏi nơi đây để kể về vùng đất này. Thích hợp cho cấp độ từ 106 - 110. ", "418\t549\tThần Di Cảnh\t36\t?\t?\t?\tVùng đất bị lãng quên và trở thành nơi bắt nguồn của ác ma. Thích hợp cho cấp độ từ 111 - 115.", "454\t548\tThánh Ước Địa\t20\t?\t?\t?\tNơi hẹn ước của công chúa và hoàng tử, giờ đây trở thành nơi hẹn ước của các đôi yêu nhau. Thích hợp cho cấp độ từ 116 - 120.", "507\t521\tQuyến Cố Thành\t30\t?\t?\t?\tNhờ được thiên thần bảo hộ mà người dân nơi đây luôn được sống thanh bình.",
			"339\t518\tBàng Bối Thành\t38\t?\t?\t?\tThành cổ sừng sững tại tây nam đại lục, được ca tụng là thành trì của anh hùng.", "360\t566\tKỵ Bình Nguyên\t41\t?\t?\t?\tCon đường huyết mạch dẫn đến Bàng Bối, có cuồng nhân ẩn cư và còn lại vết tích của người xưa. Thích hợp cho cấp độ từ 31- 35.", "375\t609\tChi Phong Cốc\t21\t?\t?\t?\tVùng đất khô cằn chết chóc. Thích hợp cho cấp độ từ 91 - 95.", "344\t606\tĐăng Vân Địa\t44\t?\t?\t?\tẨn sâu trong những đám mây trắng là một nguồn sức mạnh tà ác. Thích hợp cho cấp độ từ 141 - 145.", "610\t384\tLiêu Vân Tộc\t13\t?\t?\t?\tNằm trên đỉnh núi tuyết phía tây, là cái nôi ươm tạo nghệ thuật gia âm nhạc.", "660\t414\tLạp Tuyết Địa\t33\t?\t?\t?\tVùng đất bên ngoài thành Tiên Lạp, băng tuyết phủ đầy trên mặt đất. Thích hợp cho cấp độ từ 21 - 25.", "720\t378\tThiên Khung Tộc\t32\t?\t?\t?\tNằm phía đông bắc đảo băng, là nơi lưu trú của các xạ thủ tinh anh, vững về kỹ thuật máy và năng lượng học", "700\t436\tTiên Lạp Thành\t31\t?\t?\t?\tThành phố xinh đẹp nằm ở đông đảo băng, nổi danh với tên gọi Thành phố của nghệ thuật.", "622\t449\tAnh Vũ Cảnh\t34\t?\t?\t?\tVùng đất trên đỉnh núi tuyết, đầy vẻ mê hoặc nhưng cũng nguy hiểm khó lường. Thích hợp cho cấp độ từ 36 - 40.", "674\t492\tBăng Tuyết Nguyên\t35\t?\t?\t?\tMùa đông trường kỳ nơi đây khiến cho chim chóc không bay tới, hoa cỏ khó sinh sôi. Thích hợp cho cấp độ từ 71 - 75.",
			"636\t511\tTuyết Lâm\t22\t?\t?\t?\tVùng đất tuyết phủ nhưng không kém phần tươi đẹp nhờ vào rừng hoa đỏ tươi rực rỡ. Thích hợp cho cấp độ từ 81 - 85.", "647\t534\tĐoạn Cốc\t43\t?\t?\t?\tVùng đất lạnh giá nhất nhưng có cảnh đẹp mê người, tuy nhiên cũng không phải không nguy hiểm. Thích hợp cho cấp độ từ 120 - 130.", "470\t200\tCổ Thành\t37\t632718\t3000\t2000\tCổ Thành chứa đựng những năng lực tà ác và thần bí từ tàn tích chiến tranh năm xưa.Thích hợp cho cấp độ từ 146 - 150.", "530\t176\tHô\u0323 Chi Địa\t24\t507408\t3000\t2000\tViệc bảo hộ là mãi mãi, nhưng anh hùng lại không thể bất tử. Thích hợp cho cấp độ từ 101 - 110.", "580\t148\tVân Lộc Sơn\t28\t561224\t3000\t2000\tBan ngày có mây trắng bao phủ, nhưng đêm xuống lại có thể nhìn rõ bầu trời sao sáng rực. Thích hợp cho cấp độ từ 76 - 80.", "620\t175\tTrầm Thụy Lâm\t27\t620501\t3000\t2000\tVùng rừng cây rậm rạp, mặt trời không chiếu tới, sương mù dày đặc. Thích hợp cho cấp độ từ 41 - 45.", "590\t206\tTinh Linh Thành\t10\t?\t?\t?\tThành phố xanh tươi nằm ven rừng, nổi tiếng với truyền thuyết tinh linh, mang đầy sức sống thiên nhiên.", "590\t252\tQuang Bình Nguyên\t26\t?\t?\t?\tVùng đất nằm ở hướng mặt trời mọc, nơi sinh sống của các tinh linh. Thích hợp cho cấp độ từ 26 - 30.", "530\t243\tLưu Hỏa Tộc\t25\t?\t?\t?\tTộc Lưu Hỏa nằm ở phía bắc đại lục, được thừa kế di sản về võ thuật do cổ nhân lưu truyền.", "660\t307\tBàn Địa Tộc\t12\t?\t?\t?\tNằm phía đông nam Quang Bình Nguyên, đào tạo ra những chiến binh nổi danh với tên gọi \"Lá chắn của đại lục\".",
			"458\t227\tĐiêu Linh Thôn\t55\t?\t?\t?\tNơi ở của Thiên Binh khi xưa, nay đã bị quái vật bay chiếm lĩnh, trở nên hoang tàn. Thích hợp cho cấp độ từ 131 - 135.", "500\t294\tMị Hoặc Lâm\t56\t?\t?\t?\tRừng rậm đầy yêu ma mê hoặc, rất dễ lạc lối. Thích hợp cho cấp độ từ 136 - 140.", "643\t288\tThiên Không Thành\t88\t?\t?\t?\tTruyền thuyết khai mở, chấn động trời đất. Nơi này được xem là điểm tận cùng của tuổi tác và thời đại. Một thành trì trên không tĩnh lặng giữa chốn Đại Lục Vô Ưu. Cấp độ đề nghị : 150 - 160.", "544\t355\tThiên Đường Thần Thánh\t71\t?\t?\t?\tNơi sinh linh đồ thán, vong hồn tứ tán, bay lượn ngợp trời. Thích hợp cho cấp độ từ 56-60.", "449\t462\tMã Thạch Tuyết\t70\t?\t?\t?\tHoang mạc lạnh giá, quái vật ở đây còn lạnh lùng hơn khí hậu. Thích hợp cho cấp độ 110 - 115.", "400\t499\tVĩnh Dạ Cảng\t67\t?\t?\t?\tHải cảng thần bí ẩn hiện dưới ánh trăng mờ ảo. Thích hợp cấp độ 105 - 110.", "362\t533\tTứ Tức Đảo\t61\t?\t?\t?\tHòn đảo sương mù vây quanh, chỉ nhìn thấy ánh sáng từ các tảng đá khổng lồ bí ẩn. Thích hợp cho cấp độ 100-105.", "610\t565\tThành Phố Chìm\t525\t?\t?\t?\tMột di tích văn minh được chôn giấu dưới tầng biển sâu và 1 bí mật động trời.", "339\t402\tHuyền Lâm Tộc\t39\t?\t?\t?\tTộc Huyền Lâm nằm ở bờ tây đại lục, nổi tiếng với những thợ săn dày dạn kinh nghiệm và kỹ năng thuần phục Pet.", "390\t442\tLinh Vũ Tộc\t11\t?\t?\t?\tTộc Linh Vũ nằm ở phía nam đại lục, là nơi đào tạo ra những danh y tài ba và thông hiểu lễ nghĩa.",
			"357\t463\tThiên Lục Châu\t40\t?\t?\t?\tNơi dừng chân của khách lữ hành, thương nhân ra vào tấp nập. Thích hợp cho cấp độ từ 16 - 20.", "374\t587\tCổ Đạo\t42\t?\t?\t?\tBa nghìn chiến binh đã vùi thân tại đây, ý chí bất diệt, hồn thiêng động trời. Thích hợp cho cấp độ từ 66 - 70."
		};

		public static readonly string[] KeyActive = new string[32]
		{
			"0132-68A-025", "3941-25Q-22G", "6456-55O-S5U", "9332-10L-0IO", "C651-B59-CH0", "0563-56B-052", "3524-69W-00F", "6012-52P-K5F", "9774-52Z-9FG", "C003-C09-FD6",
			"1265-82C-560", "4014-45R-12W", "7002-55S-W3V", "A018-26X-7NH", "D046-D00-FD6", "1693-58D-506", "4756-42T-45L", "7996-45H-W9X", "A055-96V-6QS", "E012-E27-WG5",
			"2984-63E-565", "5331-45Y-32F", "8236-10J-A8T", "B500-54N-9ZX", "E122-F23-FK7", "2648-53F-504", "5079-35U-79W", "8541-66K-C4J", "B554-8A2-5QS", "F450-G08-QA2",
			"2403-97G-102", "F403-97I-09Q"
		};

		public static int timeDelayIntro = 1000;

		public static int runInfor = 1;

		public static bool run = false;

		public static bool IsOff = false;

		public static string version = "8.8.7.2";

		public static string infor = "***\n- Cải thiện độ ổn định\n- Tăng tốc độ load dữ liệu\nBMx\n***";

		public static string nameFlash = "s12.๖Minh ㄨ";

		public static string nameUser = "dieudocokhientaongungdeptrai00@goid";

		public static bool autoRun = false;

		public static bool onlyTrong = false;

		public static bool modeCalendar = false;

		public static bool H_T_C_end = false;

		public static string H_T_C_job = "";

		public static string link = "";

		public static string nameVIP = "Free";

		public static string runEnd = "null";

		public static bool debugProgram = false;

		public static bool foradmin = false;

		public static string iconNoti = "";

		public static string titleNoti = "";

		public static string contentNoti = "";

		public static string buttonNoti = "";

		public static string txtNoti = "";

		public static string YesNoNoti = "YesNo";

		public static string nobutNoti = "Cancel";

		public static string inforNoti = "info";

		public static string warnNoti = "warn";

		public static string errNoti = "err";

		public static string link1 = "http://s3-vuaphapthuat.goplay.vn/s/";

		public static string link2 = "/GameLoader.swf?user=";

		public static string link3 = "&&pass=";

		public static string link4 = "&&version=";

		public static string link5 = "0.9.9a33.342";

		public static string link6 = "&&isExpand=true";

		public static int delay_System = 0;

		public static bool isActive = false;

		public static string Job = "";

		public static string End = "";

		public static string NhanVat = "";

		public static string Kenh = "";

		public static string VaoLaiGame = "";

		public static string DangNhapLai = "";

		public static string Source = "";

		public static string Daily_ThongTin = "";

		public static readonly string[] User = new string[120]
		{
			"99999.Nguyễn Anh Minh", "99999.Nguyễn Anh Minh", "99999.Nguyễn Anh Minh", "99999.Nguyễn Anh Minh", "01.Nam Nguyễn", "02.Phạm Gia Phúc", "03.Tu Nguyen CAS", "04.Chien Truong", "04.Chien Truong", "05.Duy Phong",
			"06.Hoàng Sơn", "06.Hoàng Sơn", "07.Táo", "07.Táo", "08.940", "09.Sang", "10.bạn Phạm Gia Phúc", "11.Phan Tùng", "12.Nguyễn Hải", "13.Thiện Nguyễn",
			"13.Thiện Nguyễn", "13.Thiện Nguyễn", "13.Thiện Nguyễn", "14.Chí Khang", "15.Sam Johnson", "16.Trần Đỉnh Kỳ", "17.Hoàn Nguyễn", "17.Hoàn Nguyễn", "18.Bình Bò", "19.Tuấn Lý",
			"19.Tuấn Lý", "19.Tuấn Lý", "20.Khang Nguyễn", "20.Khang Nguyễn", "21.new", "22.Trần Nguyễn Ngọc Minh", "23.Phan Công Nguyên", "24.Khoa Nguyễn", "25.Bạn Phạm Gia Phúc", "26.Nhật Xuân MeMe",
			"27.Bạn Phạm Gia Phúc", "28.Dương Dương", "29.Nguyễn Hoàng Sơn", "30.Anhh Thắng", "31.Trần Hiệp Vương", "31.Trần Hiệp Vương", "32.Nguyễn Công Hiển", "32.Nguyễn Công Hiển", "33.Kain Vo", "33.Kain Vo",
			"34.Trần Hiếu Doanh", "34.Trần Hiếu Doanh", "35.Lĩnh Nguyễn", "36.Huy Tiến", "37.Ngân Trần", "38.Nguyễn Dũng", "39.Nguyễn Ngọc Trai", "40.Lê Sơn Tùng", "41.Hoài Phong", "42.Lê Thanh Sơn",
			"43.Trương Đạt", "44.Dương Dương", "45.Dũng", "46.Cao Ngọc Anh", "47.Thư", "48.Hùng", "49.Khoa Nguyễn", "50.Team", "50.Team", "50.Team",
			"50.Team", "51.Phúc", "52.Long Trâ\u0300n", "53.Dat Tran", "54.Phu\u0301c", "55.Trâ\u0300n Pha\u0301t", "56.Nguyê\u0303n Hanh", "57.Nguyê\u0303n Tro\u0323ng An", "58.Tha\u0300nh Tri\u0323nh", "59.Ba\u0323n PGP",
			"60.Nghi\u0303a Lê", "61.Phatdattools", "62.Nhân", "63.Huy\u0300nh Sơn", "64.Hưng Phan", "65.Team+", "66.Anh Khoa", "67.Lê Tuâ\u0301n", "67.Lê Tuâ\u0301n", "68.Pmin",
			"69.Ba\u0323n Sang", "70.Pha\u0323m Anh Hu\u0300ng", "71.Bu\u0300i Ma\u0323nh Cươ\u0300ng", "72.Huy\u0300nh Linh", "73.Nguyê\u0303n Anh Ty\u0309", "74.Đi\u0323nh Lê", "75.Tha\u0309o Hoa\u0300ng", "76.Nguyê\u0303n Trâ\u0300n Đăng Khoa", "77.Anh Duc", "78.Minh Đư\u0301c",
			"79.Quô\u0301c Viê\u0323t", "80.Trung Hiê\u0301u", "81.Tuấn Nguyễn", "82.~~", "83.Hiếu", "84.Duy Phạm", "85.Nguyê\u0303n Quang Tiê\u0301n", "86.Tiệp Nguyễn", "87.Thanh Tran", "88.Trần Anh Văn",
			"89.Hải Cao Văn", "90.Phương An", "91.Quân Nguyệt Lâu", "92.Sái Bảo Anh", "93.Tùng Lâm", "94.Nguyễn Đăng Long", "95.Chu Văn Trọng", "96.Tiến Duy", "97.Văn Mến", "98.Mạnh Hùng"
		};

		public static readonly string[] HDD_Model = new string[120]
		{
			"WDC WD10EFRX-68PJCN0", "Samsung SSD 860 EVO 500GB", "WDC PC SN730 SDBPNTY-512G-1032", "HGST HTS721010A9E630", "KINGSTON SNVS1000GB", "SAMSUNG MZVLB1T0HBLR-000L2", "Samsung SSD 980 250GB", "WDC WDS250G2B0B", "NVMe HFM512GD3JX016N", "Lexar 512GB SSD",
			"WDC WD20EZRZ-00Z5HB0", "KINGSTON SA400M8120G", "Fanxiang S101 256GB", "Fanxiang S101 128GB", "APPLE SSD SM0128G", "WDC PC SN540 SDDPNPF-512G-1032", "WDC WDS240G2G0A-00JH30", "KINGSTON SNV2S250G", "HGST HTS545050A7E680", "WDC WD10SPZX-24Z10",
			"WDC WDS250G1B0C-00S6U0", "ST1000LM035-1RK172", "SAMSUNG MZVL21T0HCLR-00BL2", "NVMe HFM512GD3JX016N", "SSTC-PHI-E21512", "Lexar 128GB SSD", "NVMe OM3PDP3-AD NVMe KDI 512GB", "ST500LT012-9WS142", "INTEL SSDSC2CT180A4", "WDC PC SN530 SDBPNPZ-512G-1014",
			"N100 pro 256G", "TOSHIBA DT01ACA050 SCSI Disk Device", "ST1000DM010-2EP102", "Samsung SSD 860 EVO 500GB", "WDC WD10EZEX-21WN4A0", "KINGSTON SA400M8240G", "WDC WD10EZEX-75WN4A1", "SKHynix_HFM512GDHTNI-87A0B", "INTEL SSDPEKNW010T8", "Apacer AS2280P4 256GB",
			"WDC  WDS100T2B0A-00SM50", "XSTAR SSD 128GB", "Apacer AS340 120GB", "Samsung SSD 980 500GB", "WDC PC SN530 SDBPNPZ-256G-1114", "MSI M450 1TB", "ST1000LM048-2E7172", "WDC WD10EZEX-22MFCA0", "GIGABYTE GP-GSTFS31120GNTD ATA Device", "Samsung SSD 860 EVO 500GB",
			"NVMe KBG40ZNT512G TOSHIBA MEMORY", "Lexar 256GB SSD", "TOSHIBA HDWK105", "Samsung SSD 980 1TB", "Kingmax SSD 240GB", "NVMe PC601 NVMe SK hy", "FL-SSD-E900 256G ATA Device", "CT240BX500SSD1", "XSTAR SSD 256GB ATA Device", "KXG60ZNV512G KIOXIA",
			"SSD 240GB", "Vaseky V800/120G", "TOSHIBA MQ04ABF100", "Micron_2200V_MTFDHBA512TCK", "Colorful SL300 120GB", "WDC WD30EZRX-19D8PB0", "NVMe HFM512GD3JX016N", "KINGSTON SA400S37240G", "XSTAR SSD 128GB", "TEAM T253X6512G",
			"NVMe INTEL SSDPEKNU512GZH", "UMIS RPJTJ512MEE1OWX", "SanDisk Z400s M.2 2280 128GB", "Samsung SSD 970 EVO Plus 1TB", "Micron_2200V_MTFDHBA512TCK", "PNY CS1031 500GB SSD", "ST1000DM010-2EP102", "WDC WD10EZEX-00WN4A0", "KingFast", "KingFast",
			"ST500DM002-1BD142", "P3-128", "Lexar 240GB SSD", "WD Green 2.5 240GB", "PC SN530 NVMe WDC 512GB", "Micron_2210_MTFDHBA512QFD", "WDC PC SN530 SDBPNPZ-256G-1006", "KINGSTON OM8PDP3512B-AA1", "Morebeck-V602  240GB", "NVMe Micron_2200V_MTF",
			"GIGABYTE GP-GSM2NE3256GNTD", "NVMe Samsung SSD 980", "KINGSTON SNV2S250G", "ST9500325AS", "SSD LS240G S300", "ST500LM0  SCSI Disk Device", "SK hynix BC711 HFM512GD3JX013N", "Samsung SSD 970 EVO Plus 1TB", "ST2000DM008-2FR102", "Lexar 256GB SSD",
			"GAMER  L  TA1D0240A", "WDC WD10EZEX-08WN4A0", "WD My Passport 2626 USB Device", "dang bo trong", "LENSE30512GMSP34MEAT3TA", "MSI M450 500GB", "KINGSTON SHFS37A240G", "WDC WD10EZEX-22MFCA0", "MTFDKBA512TFH-1BC1AABHA", "Micron MTFDKBA512TFH",
			"WDC PC SN530 SDBPNPZ-512G-1006", "WD PC SN740 SDDPNQD-256G-1006", "WDC WD10EZEX-00WN4A0", "SAMSUNG MZVLB512HAJQ-000L7", "P4-240", "Lexar SSD NM610PRO 500GB", "SAMSUNG MZVL2512HCJQ-00BL2", "Seagate BarraCuda Q1 SSD ZA480CV10001", "Samsung SSD 860 EVO 1TB", "NVMe WD PC SN740 SDDPNQD-512G-1002"
		};

		public static readonly string[] HDD_Serial = new string[120]
		{
			"     WD-WCC4J1089366", "S3YANB0KA02056K", "E823_8FA6_BF53_0001_001B_448B_464B_CE02.", "      JR1004D31208KM", "0000_0000_0000_0000_0026_B768_4C0C_E145.", "0025_3886_11B5_4D6E.", "0025_38D9_11B3_1846.", "19435B800435", "ACE4_2E00_1A30_CF66_2EE4_AC00_0000_0001.", "K12836W103785",
			"     WD-WCC4M2DU5S45", "50026B7683E7C5A6", "AA000000000000006596", "AA000000000000001366", "S1W1NYCGC16209", "E823_8FA6_BF53_0001_001B_444A_49C3_275B.", "1938B0805987", "0000_0000_0000_0000_0026_B778_522F_5315.", "      RB250AM5GMY28P", "     WD-WXT1A49CL51R",
			"1919_2F80_2546_0001_001B_448B_44A3_D2AB.", "            WKPMG2YP", "0025_38B9_31B7_30EA.", "ACE4_2E00_1A98_E94A_2EE4_AC00_0000_0001.", "6479_A76D_EA30_4EE7.", "LL98122038364", "0026_B728_2994_0F95.", "            S0V9R8F2", "CVKI3106017A180CGN", "E823_8FA6_BF53_0001_001B_448B_49A3_40E9.",
			"0000_0000_0000_0001.", "           187B5PUAS", "            ZN1EHV8M", "S3Z2NB1K774662P", "        WCC6Y1VRF6ZZ", "50026B7685477DE1", "     WD-WCC6Y3USZL6F", "ACE4_2E00_0AA7_67B8.", "0000_0000_0100_0000_E4D2_5CD4_F8C6_5001.", "6479_A746_B050_2DB2.",
			"20530H802639", "XSHB21923001486", "H01931R003733", "0025_38D9_21A2_8637.", "E823_8FA6_BF53_0001_001B_444A_4657_34FB.", "6479_A795_EAC0_0D83.", "            ZDEJ56J3", "     WD-WCC6Y7LFCLAZ", "SN220808980880", "S3Z3NB0M312699V",
			"8CE3_8E04_02D1_F918.", "LDS8532000112", "           88HYT1O2T", "0025_38D2_1140_03D9.", "KJ202308000906684", "ACE4_2E00_9A05_0B70_2EE4_AC00_0000_0001.", "E900SSD256G21070652", "1910E177090E", "XSWC2291600057", "0000_0000_0000_0001_8CE3_8E05_0032_241D.",
			"2021050600164", "YS2019033146", "           98NLT6PST", "0000_0000_0000_0001_00A0_7520_28B5_AE0A.", "I38378R00218D", "     WD-WCC4N0ZC4KHX", "ACE4_2E00_1A98_E706_2EE4_AC00_0000_0001.", "50026B76833F1477", "XSZB2151882527", "TPBF2202110050701837",
			"0000_0000_0100_0000_E4D2_5CD4_9CD5_5401.", "044A_5011_3195_74E2.", "163108422682", "0025_385A_2140_B248.", "0000_0000_0000_0001_00A0_7519_255E_61DF.", "6479_A76A_AA30_019C.", "            W9ALEDDB", "     WD-WCC6Y5HPE0PV", "05132220J0008", "12302219O0085",
			"            Z6EA4060", "979070891306", "MD9113R010573", "232498470215", "E823_8FA6_BF53_0001_001B_448B_41CB_02A2.", "0000_0000_0000_0001_00A0_7520_3015_ABD0.", "E823_8FA6_BF53_0001_001B_448B_4545_1B2A.", "0026_B768_54D6_C845.", "AA000000000000002141", "0000_0000_0000_0001_00A0_7520_29C0_720D.",
			"6479_A76C_50C0_000C.", "0025_38D8_21A1_E211.", "0000_0000_0000_0000_0026_B738_1AB7_EA65.", "            6VEWX9DE", "AB20190724A0101004", "W62HA696            ", "ACE4_2E00_2AAB_1A60_2EE4_AC00_0000_0001.", "0025_3857_2140_838C.", "            ZK30ARZZ", "K32147R001197",
			"1CC60794016800000564", "     WD-WCC6Y6RPYF2D", "WXW1A897X89D    ", "dang bo trong", "A032_99BA_111A_1000.", "6479_A781_FAC0_28AD.", "50026B7261012D8E", "     WD-WCC6Y7SKP5E4", "0000_0000_0000_0001_00A0_7522_39B4_3192.", "00A0_7501_405C_E93E.",
			"E823_8FA6_BF53_0001_001B_448B_495E_2686.", "E823_8FA6_BF53_0001_001B_448B_4AB6_403A.", "     WD-WCC6Y7TLFZ8C", "0025_3886_81B7_0366.", "9110922D01184", "0000_0006_2309_0898_CAF2_5B03_9A00_02A4.", "0025_38B4_11B7_38B5.", "7RV003CD", "S4BDNS0N805175A", "E823_8FA6_BF53_0001_001B_448B_4A5F_AB76."
		};

		public static int timeUse = 0;

		public static bool isRent = false;

		public static int localRent = -1;

		public static readonly string[] User_Rent = new string[55]
		{
			"00.Nguyễn Anh Minh", "00.Nguyễn Anh Minh", "00.Nguyễn Anh Minh", "00.Nguyễn Anh Minh", "99.Trang", "99.Trang", "100.Thanh Tu\u0300ng", "101.Viê\u0323t Ha\u0309i", "102.Hoa\u0300ng Linh", "103.Nguyê\u0303n Quang Huy",
			"104.Nguyê\u0303n Ha\u0309i", "105.Lê Du\u0303ng VPT", "106.Nguyê\u0303n Minh Hu\u0300ng", "107.Đinh Nguyễn Hoàng Hiệp", "108.Nguyê\u0303n Ngo\u0323c Vu\u0303", "109.Hô\u0300ng Sơn", "110.Nguyê\u0303n Viê\u0323t Hưng", "111.Dat", "112.Minh Đư\u0301c", "113.Nguyê\u0303n Thă\u0301ng",
			"114.Quang So\u0301i", "115.Thông Văn", "116.Lê Ma\u0323nh", "117.Nguyê\u0303n Văn Cươ\u0300ng", "118.Tiê\u0301n Du\u0303ng", "119.Kim Long", "120.Tik Tok", "121.Minh Hiếu", "122.Đào Trọng Ngà", "123.Nguyễn Trọng An",
			"124.Nguyễn Việt Hưng", "125.Nam Nguyễn", "126.TI", "127.Phạm Mạnh Tiến", "128.Phát Bùi", "129.Lưu Tâm", "130.adm", "131.Tuan Ly", "132.Vũ Ngọc Quân", "133.Nguyễn Đăng Long",
			"134.Nguyễn Minh Hiếu", "135.Trần Minh Tuấn", "136.Đạt Phạm", "137.Vũ Đức Hiếu", "138.Cao Quang Thắng", "139.Tuấn Anh", "140.Nguyễn Đồng", "141.Bùi Quang Tú", "142.Bá Hưng", "142.Bá Hưng",
			"143.Minh Hiếu", "144.Nguyên", "144.Nguyên", "145.Anh Khoa Lê", "146.Phát Nguyễn"
		};

		public static readonly int[] Time_Rent;

		public static readonly string[] HDD_Model_Rent;

		public static readonly string[] HDD_Serial_Rent;

		public static bool isOptions;

		public static int localOptions;

		public static readonly string[] User_Options;

		public static readonly string[] Menu_Options;

		public static readonly string[] HDD_Model_Options;

		public static readonly string[] HDD_Serial_Options;

		public static int numberEncodePer;

		public static int dayCheckSave;

		public static string model;

		public static string serial;

		public static string GetKeyActive(int i)
		{
			return KeyActive[i];
		}

		public static DialogResult ThongBao(string icon, string title, string content, string button = "Cancel", string textButton = "null")
		{
			//IL_0027: Unknown result type (might be due to invalid IL or missing references)
			//IL_002c: Unknown result type (might be due to invalid IL or missing references)
			//IL_002f: Unknown result type (might be due to invalid IL or missing references)
			ThongBao thongBao = new ThongBao();
			iconNoti = icon;
			titleNoti = title;
			contentNoti = content;
			buttonNoti = button;
			txtNoti = textButton;
			return ((Form)thongBao).ShowDialog();
		}

		static AppMain()
		{
			int[] array = new int[55];
			RuntimeHelpers.InitializeArray((System.Array)array, (RuntimeFieldHandle)/*OpCode not supported: LdMemberToken*/);
			Time_Rent = array;
			HDD_Model_Rent = new string[55]
			{
				"WDC WD10EFRX-68PJCN0", "Samsung SSD 860 EVO 500GB", "WDC PC SN730 SDBPNTY-512G-1032", "HGST HTS721010A9E630", "NVMe Micron_2450_MTFDKBA512TFK", "NVMe BC711 NVMe SK hynix 512GB", "P3-256", "WDC WDS500G2B0C-00PXH0", "TOSHIBA MQ01ABD032", "SKHynix_HFS512GDE9X084N",
				"Generic Flash Disk USB Device", "WDC WD10EADS-00M2B0", "Colorful SL300 128GB", "GIGABYTE GP-GSM2NE3256GNTD", "TOSHIBA DT01ACA100", "ST1000LM049-2GH172", "KINGSTON SNV2S500G xo\u0301a", "VSPM2-256G BP(2280)", "Lexar 256GB SSD", "KINGSTON SA400S37240G",
				"TITAN128XP", "Micron_2210_MTFDHBA512QFD", "SSTC-MM256-25", "Micron MTFDHBA512TDV", "NX-256 2280", "PNY CS1031 500GB SSD", "KBG50ZNV512G KIOXIA", "Lexar 512GB SSD", "TEAM T253X6512G", "UMIS RPETJ256MGE2MDQ",
				"VendorCo ProductCode USB Device", "Apple APPLE SSD AP1024 SCSI Disk Device", "SAMSUNG MZVL2512HCJQ-00BL7", "Samsung SSD 850 EVO 500GB", "OSC SSD 240GB", "WDC WD1003FZEX-00K3CA0", "WDC WD5000AAKX-08U6AA0", "KINGSTON SNV2S500G", "SAMSUNG MZ7LN256HMJP-000H1", "Lexar SSD NM610PRO 500GB",
				"PC SN530 NVMe WDC 512GB", "ADATA LEGEND 710", "Micron_2450_MTFDKBA512TFK", "SAMSUNG MZAL4512HBLU-00BL2", "WDC PC SN730 SDBQNTY-512G-1014", "PC401 NVMe SK hynix 512GB", "TOSHIBA External USB 3.0 USB Device", "WDC PC SN730 SDBQNTY-256G-1001", "TOSHIBA MQ04ABF100", "NVMe WDC PC SN520 SDA",
				"Apacer AS2280P4U 512GB", "WDC WDS120G2G0A-00JH30", "HGST HTS545050A7E680", "LITEON CL1-8D512", "Apacer AS340 120GB"
			};
			HDD_Serial_Rent = new string[55]
			{
				"     WD-WCC4J1089366x", "S3YANB0KA02056Kx", "E823_8FA6_BF53_0001_001B_448B_464B_CE02.x", "      JR1004D31208KMx", "0000_0000_0000_0001_00A0_7521_32AC_B8E5.", "   FNB9N598612209I5K_00000001.", "9120228D07019", "E823_8FA6_BF53_0001_001B_448B_460B_68CE.", "           X3PSS0RTS", "ACE4_2E00_1AAE_3288_2EE4_AC00_0000_0001.",
				"D31483C7", "     WD-WCAV57182015", "AA000000000000004080", "6479_A746_4050_00C9.", "           26TPK1DFS", "            WGS1BVVR", "0000_0000_0000_0000_0026_B768_675B_5785. xo\u0301a", "VSPM2256040321020089", "K32147R001197", "50026B7380BDED7A",
				"07162221Q0026", "0000_0000_0000_0001_00A0_7520_2B81_9FEE.", "M233025623545", "00A0_7501_2DC6_E710.", "0000_0000_0000_0001.", "6479_A772_FA30_2413.", "0000_0000_0000_0000_8CE3_8E10_0121_5B8A.", "L110832001393       _00000001.", "TPBF2112010030117142", "044A_5001_C080_2F5A.",
				"3573831185073482231", "C02016500LRP8PG1J   ", "0025_38B7_21B6_FC25.", "2309231118919", "OSC21032200000001206", "     WD-WCC6Y1ZUAN83", "     WD-WCC2E3ELFTZT", "0000_0000_0000_0000_0026_B768_67EA_A475.", "S2Y9NX0J513060", "0000_0006_2309_0898_CAF2_5B03_9A00_02A4.",
				"E823_8FA6_BF53_0001_001B_448B_4560_C523.", "0000_0000_0000_0000_707C_1813_81D8_0BF3.", "0000_0000_0000_0001_00A0_7522_381C_DA57.", "0025_38E7_21B8_A875.", "E823_8FA6_BF53_0001_001B_448B_4690_8E69.", "ACE4_2E71_7000_18FA.", "20190702006626F", "001B_444A_44CC_08EC.", "           Y8EKPP23T", "1843_7180_2144_0001_001B_448B_4495_3B71.",
				"0000_0006_8765_4321_3A5A_2702_3000_1409.", "182299803130", "      RBE50AM52VGPDP", "0023_0356_3026_5809.", "694B07931D0D00119124"
			};
			isOptions = false;
			localOptions = -1;
			User_Options = new string[4] { "00.Nguyễn Anh Minh", "00.Nguyễn Anh Minh", "00.Nguyễn Anh Minh", "00.Nguyễn Anh Minh" };
			Menu_Options = new string[4] { "459268617938", "459268617938", "459268617938", "459268617938" };
			HDD_Model_Options = new string[4] { "WDC WD10EFRX-68PJCN0", "Samsung SSD 860 EVO 500GB", "WDC PC SN730 SDBPNTY-512G-1032", "HGST HTS721010A9E630" };
			HDD_Serial_Options = new string[4] { "     WD-WCC4J1089366x", "S3YANB0KA02056Kx", "E823_8FA6_BF53_0001_001B_448B_464B_CE02.x", "      JR1004D31208KMx" };
			numberEncodePer = 25;
			dayCheckSave = 20230424;
			model = "null";
			serial = "null";
		}
	}

	public static class StaticRandom
	{
		private static int seed;

		private static ThreadLocal<Random> threadLocal;

		public static Random Instance => threadLocal.Value;

		static StaticRandom()
		{
			threadLocal = new ThreadLocal<Random>((Func<Random>)(() => new Random(Interlocked.Increment(ref seed))));
			seed = Environment.TickCount;
		}
	}

	public class HardDrive
	{
		private string model = null;

		private string type = null;

		private string serialNo = null;

		public string Model
		{
			get
			{
				return model;
			}
			set
			{
				model = value;
			}
		}

		public string Type
		{
			get
			{
				return type;
			}
			set
			{
				type = value;
			}
		}

		public string SerialNo
		{
			get
			{
				return serialNo;
			}
			set
			{
				serialNo = value;
			}
		}
	}

	public class myID
	{
		public static string GetHardDriveInfo()
		{
			//IL_000c: Unknown result type (might be due to invalid IL or missing references)
			//IL_0012: Expected O, but got Unknown
			//IL_002a: Unknown result type (might be due to invalid IL or missing references)
			//IL_0030: Expected O, but got Unknown
			string text = "";
			ManagementObjectSearcher val = new ManagementObjectSearcher("SELECT * FROM Win32_DiskDrive");
			ManagementObjectEnumerator enumerator = val.Get().GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					ManagementObject val2 = (ManagementObject)enumerator.Current;
					text += $"Model: {((ManagementBaseObject)val2)["Model"]}\n";
					text += $"Serial: {((ManagementBaseObject)val2)["SerialNumber"]}\n\n";
				}
			}
			finally
			{
				((System.IDisposable)enumerator)?.Dispose();
			}
			return text;
		}

		public static string GetHardDriveModel()
		{
			//IL_000c: Unknown result type (might be due to invalid IL or missing references)
			//IL_0012: Expected O, but got Unknown
			//IL_0027: Unknown result type (might be due to invalid IL or missing references)
			//IL_002d: Expected O, but got Unknown
			string text = "";
			ManagementObjectSearcher val = new ManagementObjectSearcher("SELECT * FROM Win32_DiskDrive");
			ManagementObjectEnumerator enumerator = val.Get().GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					ManagementObject val2 = (ManagementObject)enumerator.Current;
					text += $"{((ManagementBaseObject)val2)["Model"]}";
				}
			}
			finally
			{
				((System.IDisposable)enumerator)?.Dispose();
			}
			return text;
		}

		public static string GetHardDriveSerial()
		{
			//IL_000c: Unknown result type (might be due to invalid IL or missing references)
			//IL_0012: Expected O, but got Unknown
			//IL_0027: Unknown result type (might be due to invalid IL or missing references)
			//IL_002d: Expected O, but got Unknown
			string text = "Thông tin ổ cứng:\n\n";
			ManagementObjectSearcher val = new ManagementObjectSearcher("SELECT * FROM Win32_DiskDrive");
			ManagementObjectEnumerator enumerator = val.Get().GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					ManagementObject val2 = (ManagementObject)enumerator.Current;
					text += $"{((ManagementBaseObject)val2)["SerialNumber"]}";
				}
			}
			finally
			{
				((System.IDisposable)enumerator)?.Dispose();
			}
			return text;
		}

		public static List<string> GetHardDriveSerials()
		{
			//IL_000c: Unknown result type (might be due to invalid IL or missing references)
			//IL_0012: Expected O, but got Unknown
			//IL_0027: Unknown result type (might be due to invalid IL or missing references)
			//IL_002d: Expected O, but got Unknown
			List<string> val = new List<string>();
			ManagementObjectSearcher val2 = new ManagementObjectSearcher("SELECT SerialNumber FROM Win32_DiskDrive");
			ManagementObjectEnumerator enumerator = val2.Get().GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					ManagementObject val3 = (ManagementObject)enumerator.Current;
					val.Add(((ManagementBaseObject)val3)["SerialNumber"]?.ToString());
				}
			}
			finally
			{
				((System.IDisposable)enumerator)?.Dispose();
			}
			return val;
		}
	}

	public class myInfo
	{
		public static string BMxVG_verSion = "1.0.0";

		public static string BMxVGInstaller_verSion = "1.0.0";

		public static string FlashPlayer_verSion = "20";

		public static string nameApp_checkGooogleDrive = "BMxVG";

		public static string nameApp_checkGooogleSheets = "BMxToolVPT bigData";

		public static string credentialVGPath = "DriveAPI/credentialsForBMxVerG.json";

		public static string folderID_VG = "1w-VrtuuapATid5BVYbFJiBPJpa0nro6E";

		public static string folderID_VGbeta = "1olCoCJeoQfrH9qMuR8nMZ050kP01AheD";

		public static string savePath_full = AppDomain.CurrentDomain.BaseDirectory + "/BMxToolVPT";

		public static string savePath_beta = AppDomain.CurrentDomain.BaseDirectory + "/BMxToolVPT_beta";

		public static string sheetID = "1U2q0TzeqXfhs8BwUAHUwkUQKytBTgUT6X61JJ_c0QwQ";
	}

	public class GoogleAPIHelper
	{
		[CompilerGenerated]
		private sealed class _003C_003Ec__DisplayClass8_0
		{
			public RichTextBox console;

			public SemaphoreSlim semaphore;
		}

		[CompilerGenerated]
		private sealed class _003C_003Ec__DisplayClass8_1
		{
			public JObject file;

			public _003C_003Ec__DisplayClass8_0 CS_0024_003C_003E8__locals1;
		}

		[CompilerGenerated]
		private sealed class _003C_003Ec__DisplayClass8_2
		{
			private sealed class _003C_003CDownloadFolder_003Eb__0_003Ed : IAsyncStateMachine
			{
				public int _003C_003E1__state;

				public AsyncTaskMethodBuilder _003C_003Et__builder;

				public _003C_003Ec__DisplayClass8_2 _003C_003E4__this;

				private TaskAwaiter _003C_003Eu__1;

				private void MoveNext()
				{
					//IL_00fb: Unknown result type (might be due to invalid IL or missing references)
					//IL_0100: Unknown result type (might be due to invalid IL or missing references)
					//IL_0107: Unknown result type (might be due to invalid IL or missing references)
					//IL_00c7: Unknown result type (might be due to invalid IL or missing references)
					//IL_00cc: Unknown result type (might be due to invalid IL or missing references)
					//IL_00e0: Unknown result type (might be due to invalid IL or missing references)
					//IL_00e1: Unknown result type (might be due to invalid IL or missing references)
					int num = _003C_003E1__state;
					try
					{
						if (num != 0)
						{
						}
						try
						{
							TaskAwaiter val;
							if (num != 0)
							{
								myClass.debugText(_003C_003E4__this.CS_0024_003C_003E8__locals2.CS_0024_003C_003E8__locals1.console, $"⬇\ufe0f Đang tải: {_003C_003E4__this.CS_0024_003C_003E8__locals2.file["name"]}...");
								val = RetryDownloadFile(((object)_003C_003E4__this.CS_0024_003C_003E8__locals2.file["id"]).ToString(), _003C_003E4__this.localPath, _003C_003E4__this.CS_0024_003C_003E8__locals2.CS_0024_003C_003E8__locals1.console, 3).GetAwaiter();
								if (!((TaskAwaiter)(ref val)).IsCompleted)
								{
									num = (_003C_003E1__state = 0);
									_003C_003Eu__1 = val;
									_003C_003CDownloadFolder_003Eb__0_003Ed _003C_003CDownloadFolder_003Eb__0_003Ed = this;
									((AsyncTaskMethodBuilder)(ref _003C_003Et__builder)).AwaitUnsafeOnCompleted<TaskAwaiter, _003C_003CDownloadFolder_003Eb__0_003Ed>(ref val, ref _003C_003CDownloadFolder_003Eb__0_003Ed);
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
						}
						finally
						{
							if (num < 0)
							{
								_003C_003E4__this.CS_0024_003C_003E8__locals2.CS_0024_003C_003E8__locals1.semaphore.Release();
							}
						}
					}
					catch (System.Exception exception)
					{
						_003C_003E1__state = -2;
						((AsyncTaskMethodBuilder)(ref _003C_003Et__builder)).SetException(exception);
						return;
					}
					_003C_003E1__state = -2;
					((AsyncTaskMethodBuilder)(ref _003C_003Et__builder)).SetResult();
				}

				[DebuggerHidden]
				private void SetStateMachine(IAsyncStateMachine stateMachine)
				{
				}
			}

			public string localPath;

			public _003C_003Ec__DisplayClass8_1 CS_0024_003C_003E8__locals2;

			[AsyncStateMachine(typeof(_003C_003CDownloadFolder_003Eb__0_003Ed))]
			[DebuggerStepThrough]
			internal System.Threading.Tasks.Task? _003CDownloadFolder_003Eb__0()
			{
				//IL_0007: Unknown result type (might be due to invalid IL or missing references)
				//IL_000c: Unknown result type (might be due to invalid IL or missing references)
				_003C_003CDownloadFolder_003Eb__0_003Ed _003C_003CDownloadFolder_003Eb__0_003Ed = new _003C_003CDownloadFolder_003Eb__0_003Ed
				{
					_003C_003Et__builder = AsyncTaskMethodBuilder.Create(),
					_003C_003E4__this = this,
					_003C_003E1__state = -1
				};
				((AsyncTaskMethodBuilder)(ref _003C_003CDownloadFolder_003Eb__0_003Ed._003C_003Et__builder)).Start<_003C_003CDownloadFolder_003Eb__0_003Ed>(ref _003C_003CDownloadFolder_003Eb__0_003Ed);
				return ((AsyncTaskMethodBuilder)(ref _003C_003CDownloadFolder_003Eb__0_003Ed._003C_003Et__builder)).Task;
			}
		}

		[CompilerGenerated]
		private sealed class _003CCheckApiKey_003Ed__1 : IAsyncStateMachine
		{
			public int _003C_003E1__state;

			public AsyncTaskMethodBuilder<string[]> _003C_003Et__builder;

			private string _003CdriveError_003E5__1;

			private string _003CsheetsError_003E5__2;

			private string _003C_003Es__3;

			private string _003C_003Es__4;

			private TaskAwaiter<string> _003C_003Eu__1;

			private void MoveNext()
			{
				//IL_0056: Unknown result type (might be due to invalid IL or missing references)
				//IL_005b: Unknown result type (might be due to invalid IL or missing references)
				//IL_0062: Unknown result type (might be due to invalid IL or missing references)
				//IL_0096: Unknown result type (might be due to invalid IL or missing references)
				//IL_009b: Unknown result type (might be due to invalid IL or missing references)
				//IL_00b0: Unknown result type (might be due to invalid IL or missing references)
				//IL_00b2: Unknown result type (might be due to invalid IL or missing references)
				//IL_00cf: Unknown result type (might be due to invalid IL or missing references)
				//IL_00d4: Unknown result type (might be due to invalid IL or missing references)
				//IL_00dc: Unknown result type (might be due to invalid IL or missing references)
				//IL_001f: Unknown result type (might be due to invalid IL or missing references)
				//IL_0024: Unknown result type (might be due to invalid IL or missing references)
				//IL_0038: Unknown result type (might be due to invalid IL or missing references)
				//IL_0039: Unknown result type (might be due to invalid IL or missing references)
				int num = _003C_003E1__state;
				string[] result;
				try
				{
					TaskAwaiter<string> val;
					TaskAwaiter<string> val2;
					if (num != 0)
					{
						if (num == 1)
						{
							val = _003C_003Eu__1;
							_003C_003Eu__1 = default(TaskAwaiter<string>);
							num = (_003C_003E1__state = -1);
							goto IL_00eb;
						}
						val2 = CheckDriveFolder().GetAwaiter();
						if (!val2.IsCompleted)
						{
							num = (_003C_003E1__state = 0);
							_003C_003Eu__1 = val2;
							_003CCheckApiKey_003Ed__1 _003CCheckApiKey_003Ed__ = this;
							_003C_003Et__builder.AwaitUnsafeOnCompleted<TaskAwaiter<string>, _003CCheckApiKey_003Ed__1>(ref val2, ref _003CCheckApiKey_003Ed__);
							return;
						}
					}
					else
					{
						val2 = _003C_003Eu__1;
						_003C_003Eu__1 = default(TaskAwaiter<string>);
						num = (_003C_003E1__state = -1);
					}
					_003C_003Es__3 = val2.GetResult();
					_003CdriveError_003E5__1 = _003C_003Es__3;
					_003C_003Es__3 = null;
					val = CheckSheetsFileName().GetAwaiter();
					if (!val.IsCompleted)
					{
						num = (_003C_003E1__state = 1);
						_003C_003Eu__1 = val;
						_003CCheckApiKey_003Ed__1 _003CCheckApiKey_003Ed__ = this;
						_003C_003Et__builder.AwaitUnsafeOnCompleted<TaskAwaiter<string>, _003CCheckApiKey_003Ed__1>(ref val, ref _003CCheckApiKey_003Ed__);
						return;
					}
					goto IL_00eb;
					IL_00eb:
					_003C_003Es__4 = val.GetResult();
					_003CsheetsError_003E5__2 = _003C_003Es__4;
					_003C_003Es__4 = null;
					result = ((_003CdriveError_003E5__1 != null || _003CsheetsError_003E5__2 != null) ? new string[2]
					{
						"Fail",
						(_003CdriveError_003E5__1 + " " + _003CsheetsError_003E5__2).Trim()
					} : new string[1] { "OK" });
				}
				catch (System.Exception exception)
				{
					_003C_003E1__state = -2;
					_003CdriveError_003E5__1 = null;
					_003CsheetsError_003E5__2 = null;
					_003C_003Et__builder.SetException(exception);
					return;
				}
				_003C_003E1__state = -2;
				_003CdriveError_003E5__1 = null;
				_003CsheetsError_003E5__2 = null;
				_003C_003Et__builder.SetResult(result);
			}

			[DebuggerHidden]
			private void SetStateMachine(IAsyncStateMachine stateMachine)
			{
			}
		}

		[CompilerGenerated]
		private sealed class _003CCheckDriveFolder_003Ed__2 : IAsyncStateMachine
		{
			public int _003C_003E1__state;

			public AsyncTaskMethodBuilder<string> _003C_003Et__builder;

			private HttpClient _003Cclient_003E5__1;

			private string _003CdriveUrl_003E5__2;

			private HttpResponseMessage _003Cresponse_003E5__3;

			private string _003Cresult_003E5__4;

			private JObject _003Cjson_003E5__5;

			private string _003CfolderName_003E5__6;

			private HttpResponseMessage _003C_003Es__7;

			private string _003C_003Es__8;

			private System.Exception _003Cex_003E5__9;

			private TaskAwaiter<HttpResponseMessage> _003C_003Eu__1;

			private TaskAwaiter<string> _003C_003Eu__2;

			private void MoveNext()
			{
				//IL_001b: Unknown result type (might be due to invalid IL or missing references)
				//IL_0025: Expected O, but got Unknown
				//IL_00a0: Unknown result type (might be due to invalid IL or missing references)
				//IL_00a5: Unknown result type (might be due to invalid IL or missing references)
				//IL_00ac: Unknown result type (might be due to invalid IL or missing references)
				//IL_00eb: Unknown result type (might be due to invalid IL or missing references)
				//IL_00f0: Unknown result type (might be due to invalid IL or missing references)
				//IL_0105: Unknown result type (might be due to invalid IL or missing references)
				//IL_0107: Unknown result type (might be due to invalid IL or missing references)
				//IL_0124: Unknown result type (might be due to invalid IL or missing references)
				//IL_0129: Unknown result type (might be due to invalid IL or missing references)
				//IL_0131: Unknown result type (might be due to invalid IL or missing references)
				//IL_0069: Unknown result type (might be due to invalid IL or missing references)
				//IL_006e: Unknown result type (might be due to invalid IL or missing references)
				//IL_0082: Unknown result type (might be due to invalid IL or missing references)
				//IL_0083: Unknown result type (might be due to invalid IL or missing references)
				int num = _003C_003E1__state;
				string result;
				try
				{
					if ((uint)num > 1u)
					{
					}
					try
					{
						if ((uint)num > 1u)
						{
							_003Cclient_003E5__1 = new HttpClient();
						}
						try
						{
							TaskAwaiter<string> val;
							TaskAwaiter<HttpResponseMessage> val2;
							if (num != 0)
							{
								if (num == 1)
								{
									val = _003C_003Eu__2;
									_003C_003Eu__2 = default(TaskAwaiter<string>);
									num = (_003C_003E1__state = -1);
									goto IL_0140;
								}
								_003CdriveUrl_003E5__2 = "https://www.googleapis.com/drive/v3/files/" + myInfo.folderID_VG + "?fields=name&key=" + API_KEY;
								val2 = _003Cclient_003E5__1.GetAsync(_003CdriveUrl_003E5__2).GetAwaiter();
								if (!val2.IsCompleted)
								{
									num = (_003C_003E1__state = 0);
									_003C_003Eu__1 = val2;
									_003CCheckDriveFolder_003Ed__2 _003CCheckDriveFolder_003Ed__ = this;
									_003C_003Et__builder.AwaitUnsafeOnCompleted<TaskAwaiter<HttpResponseMessage>, _003CCheckDriveFolder_003Ed__2>(ref val2, ref _003CCheckDriveFolder_003Ed__);
									return;
								}
							}
							else
							{
								val2 = _003C_003Eu__1;
								_003C_003Eu__1 = default(TaskAwaiter<HttpResponseMessage>);
								num = (_003C_003E1__state = -1);
							}
							_003C_003Es__7 = val2.GetResult();
							_003Cresponse_003E5__3 = _003C_003Es__7;
							_003C_003Es__7 = null;
							val = _003Cresponse_003E5__3.Content.ReadAsStringAsync().GetAwaiter();
							if (!val.IsCompleted)
							{
								num = (_003C_003E1__state = 1);
								_003C_003Eu__2 = val;
								_003CCheckDriveFolder_003Ed__2 _003CCheckDriveFolder_003Ed__ = this;
								_003C_003Et__builder.AwaitUnsafeOnCompleted<TaskAwaiter<string>, _003CCheckDriveFolder_003Ed__2>(ref val, ref _003CCheckDriveFolder_003Ed__);
								return;
							}
							goto IL_0140;
							IL_0140:
							_003C_003Es__8 = val.GetResult();
							_003Cresult_003E5__4 = _003C_003Es__8;
							_003C_003Es__8 = null;
							_003Cjson_003E5__5 = JObject.Parse(_003Cresult_003E5__4);
							_003CfolderName_003E5__6 = ((object)_003Cjson_003E5__5["name"])?.ToString();
							result = ((_003CfolderName_003E5__6 == myInfo.nameApp_checkGooogleDrive) ? null : ("Không tìm thấy " + myInfo.nameApp_checkGooogleDrive + " từ Google Drive"));
						}
						finally
						{
							if (num < 0 && _003Cclient_003E5__1 != null)
							{
								((System.IDisposable)_003Cclient_003E5__1).Dispose();
							}
						}
					}
					catch (System.Exception ex)
					{
						_003Cex_003E5__9 = ex;
						result = "Lỗi khi kiểm tra thư mục Google Drive: " + _003Cex_003E5__9.Message;
					}
				}
				catch (System.Exception ex)
				{
					_003C_003E1__state = -2;
					_003C_003Et__builder.SetException(ex);
					return;
				}
				_003C_003E1__state = -2;
				_003C_003Et__builder.SetResult(result);
			}

			[DebuggerHidden]
			private void SetStateMachine(IAsyncStateMachine stateMachine)
			{
			}
		}

		[CompilerGenerated]
		private sealed class _003CCheckSerial_003Ed__17 : IAsyncStateMachine
		{
			public int _003C_003E1__state;

			public AsyncTaskMethodBuilder<string[]> _003C_003Et__builder;

			private List<string> _003Cserials_003E5__1;

			private List<string> _003ClocalSerials_003E5__2;

			private List<string> _003C_003Es__3;

			private Enumerator<string> _003C_003Es__4;

			private string _003ClocalSerial_003E5__5;

			private List<int> _003Cpositions_003E5__6;

			private Enumerator<int> _003C_003Es__7;

			private int _003Cpos_003E5__8;

			private string _003CmodelRange_003E5__9;

			private string _003CuserRange_003E5__10;

			private string _003CdateTimeRange_003E5__11;

			private string _003Cmodel_003E5__12;

			private string _003Cuser_003E5__13;

			private string _003CdateTime_003E5__14;

			private string _003C_003Es__15;

			private string _003C_003Es__16;

			private string _003C_003Es__17;

			private TaskAwaiter<List<string>> _003C_003Eu__1;

			private TaskAwaiter<string> _003C_003Eu__2;

			private void MoveNext()
			{
				//IL_005d: Unknown result type (might be due to invalid IL or missing references)
				//IL_0062: Unknown result type (might be due to invalid IL or missing references)
				//IL_0069: Unknown result type (might be due to invalid IL or missing references)
				//IL_00ab: Unknown result type (might be due to invalid IL or missing references)
				//IL_00b0: Unknown result type (might be due to invalid IL or missing references)
				//IL_0026: Unknown result type (might be due to invalid IL or missing references)
				//IL_002b: Unknown result type (might be due to invalid IL or missing references)
				//IL_003f: Unknown result type (might be due to invalid IL or missing references)
				//IL_0040: Unknown result type (might be due to invalid IL or missing references)
				//IL_022c: Unknown result type (might be due to invalid IL or missing references)
				//IL_0231: Unknown result type (might be due to invalid IL or missing references)
				//IL_0239: Unknown result type (might be due to invalid IL or missing references)
				//IL_02ac: Unknown result type (might be due to invalid IL or missing references)
				//IL_02b1: Unknown result type (might be due to invalid IL or missing references)
				//IL_02b9: Unknown result type (might be due to invalid IL or missing references)
				//IL_032c: Unknown result type (might be due to invalid IL or missing references)
				//IL_0331: Unknown result type (might be due to invalid IL or missing references)
				//IL_0339: Unknown result type (might be due to invalid IL or missing references)
				//IL_010e: Unknown result type (might be due to invalid IL or missing references)
				//IL_0113: Unknown result type (might be due to invalid IL or missing references)
				//IL_040c: Unknown result type (might be due to invalid IL or missing references)
				//IL_0273: Unknown result type (might be due to invalid IL or missing references)
				//IL_0278: Unknown result type (might be due to invalid IL or missing references)
				//IL_02f3: Unknown result type (might be due to invalid IL or missing references)
				//IL_02f8: Unknown result type (might be due to invalid IL or missing references)
				//IL_028d: Unknown result type (might be due to invalid IL or missing references)
				//IL_028f: Unknown result type (might be due to invalid IL or missing references)
				//IL_030d: Unknown result type (might be due to invalid IL or missing references)
				//IL_030f: Unknown result type (might be due to invalid IL or missing references)
				//IL_01f3: Unknown result type (might be due to invalid IL or missing references)
				//IL_01f8: Unknown result type (might be due to invalid IL or missing references)
				//IL_020d: Unknown result type (might be due to invalid IL or missing references)
				//IL_020f: Unknown result type (might be due to invalid IL or missing references)
				//IL_03c7: Unknown result type (might be due to invalid IL or missing references)
				int num = _003C_003E1__state;
				string[] result;
				try
				{
					TaskAwaiter<List<string>> val;
					if (num != 0)
					{
						if ((uint)(num - 1) <= 2u)
						{
							goto IL_00b6;
						}
						val = ReadGoogleSheetData(RANGE_SERIAL).GetAwaiter();
						if (!val.IsCompleted)
						{
							num = (_003C_003E1__state = 0);
							_003C_003Eu__1 = val;
							_003CCheckSerial_003Ed__17 _003CCheckSerial_003Ed__ = this;
							_003C_003Et__builder.AwaitUnsafeOnCompleted<TaskAwaiter<List<string>>, _003CCheckSerial_003Ed__17>(ref val, ref _003CCheckSerial_003Ed__);
							return;
						}
					}
					else
					{
						val = _003C_003Eu__1;
						_003C_003Eu__1 = default(TaskAwaiter<List<string>>);
						num = (_003C_003E1__state = -1);
					}
					_003C_003Es__3 = val.GetResult();
					_003Cserials_003E5__1 = _003C_003Es__3;
					_003C_003Es__3 = null;
					_003ClocalSerials_003E5__2 = myID.GetHardDriveSerials();
					_003C_003Es__4 = _003ClocalSerials_003E5__2.GetEnumerator();
					goto IL_00b6;
					IL_00b6:
					try
					{
						if ((uint)(num - 1) > 2u)
						{
							goto IL_03dd;
						}
						goto IL_0119;
						IL_03dd:
						if (_003C_003Es__4.MoveNext())
						{
							_003ClocalSerial_003E5__5 = _003C_003Es__4.Current;
							_003Cpositions_003E5__6 = FindExactMatches(_003Cserials_003E5__1, _003ClocalSerial_003E5__5);
							if (_003Cpositions_003E5__6.Count > 0)
							{
								_003C_003Es__7 = _003Cpositions_003E5__6.GetEnumerator();
								goto IL_0119;
							}
							goto IL_03ce;
						}
						goto end_IL_00b6;
						IL_0119:
						try
						{
							TaskAwaiter<string> val2;
							TaskAwaiter<string> val3;
							TaskAwaiter<string> val4;
							switch (num)
							{
							case 1:
								val2 = _003C_003Eu__2;
								_003C_003Eu__2 = default(TaskAwaiter<string>);
								num = (_003C_003E1__state = -1);
								goto IL_0248;
							case 2:
								val3 = _003C_003Eu__2;
								_003C_003Eu__2 = default(TaskAwaiter<string>);
								num = (_003C_003E1__state = -1);
								goto IL_02c8;
							case 3:
								val4 = _003C_003Eu__2;
								_003C_003Eu__2 = default(TaskAwaiter<string>);
								num = (_003C_003E1__state = -1);
								break;
							default:
								{
									if (_003C_003Es__7.MoveNext())
									{
										_003Cpos_003E5__8 = _003C_003Es__7.Current;
										_003CmodelRange_003E5__9 = $"{RANGE_MODEL}{_003Cpos_003E5__8}";
										_003CuserRange_003E5__10 = $"{RANGE_USER}{_003Cpos_003E5__8}";
										_003CdateTimeRange_003E5__11 = $"{RANGE_DATETIME}{_003Cpos_003E5__8}";
										val2 = ReadGoogleSheetCell(_003CmodelRange_003E5__9).GetAwaiter();
										if (!val2.IsCompleted)
										{
											num = (_003C_003E1__state = 1);
											_003C_003Eu__2 = val2;
											_003CCheckSerial_003Ed__17 _003CCheckSerial_003Ed__ = this;
											_003C_003Et__builder.AwaitUnsafeOnCompleted<TaskAwaiter<string>, _003CCheckSerial_003Ed__17>(ref val2, ref _003CCheckSerial_003Ed__);
											return;
										}
										goto IL_0248;
									}
									goto end_IL_0119;
								}
								IL_0248:
								_003C_003Es__15 = val2.GetResult();
								_003Cmodel_003E5__12 = _003C_003Es__15;
								_003C_003Es__15 = null;
								val3 = ReadGoogleSheetCell(_003CuserRange_003E5__10).GetAwaiter();
								if (!val3.IsCompleted)
								{
									num = (_003C_003E1__state = 2);
									_003C_003Eu__2 = val3;
									_003CCheckSerial_003Ed__17 _003CCheckSerial_003Ed__ = this;
									_003C_003Et__builder.AwaitUnsafeOnCompleted<TaskAwaiter<string>, _003CCheckSerial_003Ed__17>(ref val3, ref _003CCheckSerial_003Ed__);
									return;
								}
								goto IL_02c8;
								IL_02c8:
								_003C_003Es__16 = val3.GetResult();
								_003Cuser_003E5__13 = _003C_003Es__16;
								_003C_003Es__16 = null;
								val4 = ReadGoogleSheetCell(_003CdateTimeRange_003E5__11).GetAwaiter();
								if (!val4.IsCompleted)
								{
									num = (_003C_003E1__state = 3);
									_003C_003Eu__2 = val4;
									_003CCheckSerial_003Ed__17 _003CCheckSerial_003Ed__ = this;
									_003C_003Et__builder.AwaitUnsafeOnCompleted<TaskAwaiter<string>, _003CCheckSerial_003Ed__17>(ref val4, ref _003CCheckSerial_003Ed__);
									return;
								}
								break;
							}
							_003C_003Es__17 = val4.GetResult();
							_003CdateTime_003E5__14 = _003C_003Es__17;
							_003C_003Es__17 = null;
							result = new string[4] { _003ClocalSerial_003E5__5, _003Cmodel_003E5__12, _003Cuser_003E5__13, _003CdateTime_003E5__14 };
							goto end_IL_0007;
							end_IL_0119:;
						}
						finally
						{
							if (num < 0)
							{
								((System.IDisposable)_003C_003Es__7/*cast due to .constrained prefix*/).Dispose();
							}
						}
						_003C_003Es__7 = default(Enumerator<int>);
						goto IL_03ce;
						IL_03ce:
						_003Cpositions_003E5__6 = null;
						_003ClocalSerial_003E5__5 = null;
						goto IL_03dd;
						end_IL_00b6:;
					}
					finally
					{
						if (num < 0)
						{
							((System.IDisposable)_003C_003Es__4/*cast due to .constrained prefix*/).Dispose();
						}
					}
					_003C_003Es__4 = default(Enumerator<string>);
					result = new string[0];
					end_IL_0007:;
				}
				catch (System.Exception exception)
				{
					_003C_003E1__state = -2;
					_003Cserials_003E5__1 = null;
					_003ClocalSerials_003E5__2 = null;
					_003C_003Et__builder.SetException(exception);
					return;
				}
				_003C_003E1__state = -2;
				_003Cserials_003E5__1 = null;
				_003ClocalSerials_003E5__2 = null;
				_003C_003Et__builder.SetResult(result);
			}

			[DebuggerHidden]
			private void SetStateMachine(IAsyncStateMachine stateMachine)
			{
			}
		}

		[CompilerGenerated]
		private sealed class _003CCheckSheetsFileName_003Ed__3 : IAsyncStateMachine
		{
			public int _003C_003E1__state;

			public AsyncTaskMethodBuilder<string> _003C_003Et__builder;

			private HttpClient _003Cclient_003E5__1;

			private string _003CsheetsUrl_003E5__2;

			private HttpResponseMessage _003Cresponse_003E5__3;

			private string _003Cresult_003E5__4;

			private JObject _003Cjson_003E5__5;

			private string _003CfileName_003E5__6;

			private HttpResponseMessage _003C_003Es__7;

			private string _003C_003Es__8;

			private System.Exception _003Cex_003E5__9;

			private TaskAwaiter<HttpResponseMessage> _003C_003Eu__1;

			private TaskAwaiter<string> _003C_003Eu__2;

			private void MoveNext()
			{
				//IL_001b: Unknown result type (might be due to invalid IL or missing references)
				//IL_0025: Expected O, but got Unknown
				//IL_00a0: Unknown result type (might be due to invalid IL or missing references)
				//IL_00a5: Unknown result type (might be due to invalid IL or missing references)
				//IL_00ac: Unknown result type (might be due to invalid IL or missing references)
				//IL_00eb: Unknown result type (might be due to invalid IL or missing references)
				//IL_00f0: Unknown result type (might be due to invalid IL or missing references)
				//IL_0105: Unknown result type (might be due to invalid IL or missing references)
				//IL_0107: Unknown result type (might be due to invalid IL or missing references)
				//IL_0124: Unknown result type (might be due to invalid IL or missing references)
				//IL_0129: Unknown result type (might be due to invalid IL or missing references)
				//IL_0131: Unknown result type (might be due to invalid IL or missing references)
				//IL_0069: Unknown result type (might be due to invalid IL or missing references)
				//IL_006e: Unknown result type (might be due to invalid IL or missing references)
				//IL_0082: Unknown result type (might be due to invalid IL or missing references)
				//IL_0083: Unknown result type (might be due to invalid IL or missing references)
				int num = _003C_003E1__state;
				string result;
				try
				{
					if ((uint)num > 1u)
					{
					}
					try
					{
						if ((uint)num > 1u)
						{
							_003Cclient_003E5__1 = new HttpClient();
						}
						try
						{
							TaskAwaiter<string> val;
							TaskAwaiter<HttpResponseMessage> val2;
							if (num != 0)
							{
								if (num == 1)
								{
									val = _003C_003Eu__2;
									_003C_003Eu__2 = default(TaskAwaiter<string>);
									num = (_003C_003E1__state = -1);
									goto IL_0140;
								}
								_003CsheetsUrl_003E5__2 = "https://www.googleapis.com/drive/v3/files/" + myInfo.sheetID + "?fields=name&key=" + API_KEY;
								val2 = _003Cclient_003E5__1.GetAsync(_003CsheetsUrl_003E5__2).GetAwaiter();
								if (!val2.IsCompleted)
								{
									num = (_003C_003E1__state = 0);
									_003C_003Eu__1 = val2;
									_003CCheckSheetsFileName_003Ed__3 _003CCheckSheetsFileName_003Ed__ = this;
									_003C_003Et__builder.AwaitUnsafeOnCompleted<TaskAwaiter<HttpResponseMessage>, _003CCheckSheetsFileName_003Ed__3>(ref val2, ref _003CCheckSheetsFileName_003Ed__);
									return;
								}
							}
							else
							{
								val2 = _003C_003Eu__1;
								_003C_003Eu__1 = default(TaskAwaiter<HttpResponseMessage>);
								num = (_003C_003E1__state = -1);
							}
							_003C_003Es__7 = val2.GetResult();
							_003Cresponse_003E5__3 = _003C_003Es__7;
							_003C_003Es__7 = null;
							val = _003Cresponse_003E5__3.Content.ReadAsStringAsync().GetAwaiter();
							if (!val.IsCompleted)
							{
								num = (_003C_003E1__state = 1);
								_003C_003Eu__2 = val;
								_003CCheckSheetsFileName_003Ed__3 _003CCheckSheetsFileName_003Ed__ = this;
								_003C_003Et__builder.AwaitUnsafeOnCompleted<TaskAwaiter<string>, _003CCheckSheetsFileName_003Ed__3>(ref val, ref _003CCheckSheetsFileName_003Ed__);
								return;
							}
							goto IL_0140;
							IL_0140:
							_003C_003Es__8 = val.GetResult();
							_003Cresult_003E5__4 = _003C_003Es__8;
							_003C_003Es__8 = null;
							_003Cjson_003E5__5 = JObject.Parse(_003Cresult_003E5__4);
							_003CfileName_003E5__6 = ((object)_003Cjson_003E5__5["name"])?.ToString();
							result = ((_003CfileName_003E5__6 == myInfo.nameApp_checkGooogleSheets) ? null : ("Không tìm thấy " + myInfo.nameApp_checkGooogleSheets + " từ Google Sheets"));
						}
						finally
						{
							if (num < 0 && _003Cclient_003E5__1 != null)
							{
								((System.IDisposable)_003Cclient_003E5__1).Dispose();
							}
						}
					}
					catch (System.Exception ex)
					{
						_003Cex_003E5__9 = ex;
						result = "Lỗi khi kiểm tra tên file Google Sheets: " + _003Cex_003E5__9.Message;
					}
				}
				catch (System.Exception ex)
				{
					_003C_003E1__state = -2;
					_003C_003Et__builder.SetException(ex);
					return;
				}
				_003C_003E1__state = -2;
				_003C_003Et__builder.SetResult(result);
			}

			[DebuggerHidden]
			private void SetStateMachine(IAsyncStateMachine stateMachine)
			{
			}
		}

		[CompilerGenerated]
		private sealed class _003CDownloadFile_003Ed__10 : IAsyncStateMachine
		{
			public int _003C_003E1__state;

			public AsyncTaskMethodBuilder _003C_003Et__builder;

			public string fileId;

			public string savePath;

			public RichTextBox console;

			private string _003CapiUrl_003E5__1;

			private HttpClient _003Cclient_003E5__2;

			private HttpResponseMessage _003Cresponse_003E5__3;

			private HttpResponseMessage _003C_003Es__4;

			private Stream _003Cstream_003E5__5;

			private Stream _003C_003Es__6;

			private FileStream _003CfileStream_003E5__7;

			private TaskAwaiter<HttpResponseMessage> _003C_003Eu__1;

			private TaskAwaiter<Stream> _003C_003Eu__2;

			private TaskAwaiter _003C_003Eu__3;

			private void MoveNext()
			{
				//IL_0069: Unknown result type (might be due to invalid IL or missing references)
				//IL_0073: Expected O, but got Unknown
				//IL_00d0: Unknown result type (might be due to invalid IL or missing references)
				//IL_00d5: Unknown result type (might be due to invalid IL or missing references)
				//IL_00dc: Unknown result type (might be due to invalid IL or missing references)
				//IL_0099: Unknown result type (might be due to invalid IL or missing references)
				//IL_009e: Unknown result type (might be due to invalid IL or missing references)
				//IL_00b2: Unknown result type (might be due to invalid IL or missing references)
				//IL_00b3: Unknown result type (might be due to invalid IL or missing references)
				//IL_0168: Unknown result type (might be due to invalid IL or missing references)
				//IL_016d: Unknown result type (might be due to invalid IL or missing references)
				//IL_0175: Unknown result type (might be due to invalid IL or missing references)
				//IL_012f: Unknown result type (might be due to invalid IL or missing references)
				//IL_0134: Unknown result type (might be due to invalid IL or missing references)
				//IL_0149: Unknown result type (might be due to invalid IL or missing references)
				//IL_014b: Unknown result type (might be due to invalid IL or missing references)
				//IL_01b7: Unknown result type (might be due to invalid IL or missing references)
				//IL_01c1: Expected O, but got Unknown
				//IL_0215: Unknown result type (might be due to invalid IL or missing references)
				//IL_021a: Unknown result type (might be due to invalid IL or missing references)
				//IL_0222: Unknown result type (might be due to invalid IL or missing references)
				//IL_01dc: Unknown result type (might be due to invalid IL or missing references)
				//IL_01e1: Unknown result type (might be due to invalid IL or missing references)
				//IL_01f6: Unknown result type (might be due to invalid IL or missing references)
				//IL_01f8: Unknown result type (might be due to invalid IL or missing references)
				int num = _003C_003E1__state;
				try
				{
					if ((uint)num > 2u)
					{
						_003CapiUrl_003E5__1 = $"{BASE_URL}/{fileId}?alt=media&key={API_KEY}";
						_003Cclient_003E5__2 = new HttpClient();
					}
					try
					{
						TaskAwaiter<HttpResponseMessage> val;
						if (num != 0)
						{
							if ((uint)(num - 1) <= 1u)
							{
								goto IL_010c;
							}
							val = _003Cclient_003E5__2.GetAsync(_003CapiUrl_003E5__1).GetAwaiter();
							if (!val.IsCompleted)
							{
								num = (_003C_003E1__state = 0);
								_003C_003Eu__1 = val;
								_003CDownloadFile_003Ed__10 _003CDownloadFile_003Ed__ = this;
								((AsyncTaskMethodBuilder)(ref _003C_003Et__builder)).AwaitUnsafeOnCompleted<TaskAwaiter<HttpResponseMessage>, _003CDownloadFile_003Ed__10>(ref val, ref _003CDownloadFile_003Ed__);
								return;
							}
						}
						else
						{
							val = _003C_003Eu__1;
							_003C_003Eu__1 = default(TaskAwaiter<HttpResponseMessage>);
							num = (_003C_003E1__state = -1);
						}
						_003C_003Es__4 = val.GetResult();
						_003Cresponse_003E5__3 = _003C_003Es__4;
						_003C_003Es__4 = null;
						goto IL_010c;
						IL_010c:
						try
						{
							TaskAwaiter<Stream> val2;
							if (num != 1)
							{
								if (num == 2)
								{
									goto IL_01a5;
								}
								val2 = _003Cresponse_003E5__3.Content.ReadAsStreamAsync().GetAwaiter();
								if (!val2.IsCompleted)
								{
									num = (_003C_003E1__state = 1);
									_003C_003Eu__2 = val2;
									_003CDownloadFile_003Ed__10 _003CDownloadFile_003Ed__ = this;
									((AsyncTaskMethodBuilder)(ref _003C_003Et__builder)).AwaitUnsafeOnCompleted<TaskAwaiter<Stream>, _003CDownloadFile_003Ed__10>(ref val2, ref _003CDownloadFile_003Ed__);
									return;
								}
							}
							else
							{
								val2 = _003C_003Eu__2;
								_003C_003Eu__2 = default(TaskAwaiter<Stream>);
								num = (_003C_003E1__state = -1);
							}
							_003C_003Es__6 = val2.GetResult();
							_003Cstream_003E5__5 = _003C_003Es__6;
							_003C_003Es__6 = null;
							goto IL_01a5;
							IL_01a5:
							try
							{
								if (num != 2)
								{
									_003CfileStream_003E5__7 = new FileStream(savePath, (FileMode)2, (FileAccess)2, (FileShare)0);
								}
								try
								{
									TaskAwaiter val3;
									if (num != 2)
									{
										val3 = _003Cstream_003E5__5.CopyToAsync((Stream)(object)_003CfileStream_003E5__7).GetAwaiter();
										if (!((TaskAwaiter)(ref val3)).IsCompleted)
										{
											num = (_003C_003E1__state = 2);
											_003C_003Eu__3 = val3;
											_003CDownloadFile_003Ed__10 _003CDownloadFile_003Ed__ = this;
											((AsyncTaskMethodBuilder)(ref _003C_003Et__builder)).AwaitUnsafeOnCompleted<TaskAwaiter, _003CDownloadFile_003Ed__10>(ref val3, ref _003CDownloadFile_003Ed__);
											return;
										}
									}
									else
									{
										val3 = _003C_003Eu__3;
										_003C_003Eu__3 = default(TaskAwaiter);
										num = (_003C_003E1__state = -1);
									}
									((TaskAwaiter)(ref val3)).GetResult();
								}
								finally
								{
									if (num < 0 && _003CfileStream_003E5__7 != null)
									{
										((System.IDisposable)_003CfileStream_003E5__7).Dispose();
									}
								}
								_003CfileStream_003E5__7 = null;
							}
							finally
							{
								if (num < 0 && _003Cstream_003E5__5 != null)
								{
									((System.IDisposable)_003Cstream_003E5__5).Dispose();
								}
							}
							_003Cstream_003E5__5 = null;
						}
						finally
						{
							if (num < 0 && _003Cresponse_003E5__3 != null)
							{
								((System.IDisposable)_003Cresponse_003E5__3).Dispose();
							}
						}
						_003Cresponse_003E5__3 = null;
					}
					finally
					{
						if (num < 0 && _003Cclient_003E5__2 != null)
						{
							((System.IDisposable)_003Cclient_003E5__2).Dispose();
						}
					}
					_003Cclient_003E5__2 = null;
					successCount++;
					myClass.debugText(console, "✅ Hoàn tất: " + Path.GetFileName(savePath));
				}
				catch (System.Exception exception)
				{
					_003C_003E1__state = -2;
					_003CapiUrl_003E5__1 = null;
					((AsyncTaskMethodBuilder)(ref _003C_003Et__builder)).SetException(exception);
					return;
				}
				_003C_003E1__state = -2;
				_003CapiUrl_003E5__1 = null;
				((AsyncTaskMethodBuilder)(ref _003C_003Et__builder)).SetResult();
			}

			[DebuggerHidden]
			private void SetStateMachine(IAsyncStateMachine stateMachine)
			{
			}
		}

		[CompilerGenerated]
		private sealed class _003CDownloadFolder_003Ed__8 : IAsyncStateMachine
		{
			public int _003C_003E1__state;

			public AsyncTaskMethodBuilder _003C_003Et__builder;

			public string folderId;

			public string localBasePath;

			public RichTextBox console;

			private _003C_003Ec__DisplayClass8_0 _003C_003E8__1;

			private List<JObject> _003CfileList_003E5__2;

			private List<System.Threading.Tasks.Task> _003Ctasks_003E5__3;

			private List<JObject> _003C_003Es__4;

			private Enumerator<JObject> _003C_003Es__5;

			private _003C_003Ec__DisplayClass8_1 _003C_003E8__6;

			private _003C_003Ec__DisplayClass8_2 _003C_003E8__7;

			private TaskAwaiter<List<JObject>> _003C_003Eu__1;

			private TaskAwaiter _003C_003Eu__2;

			private void MoveNext()
			{
				//IL_00ad: Unknown result type (might be due to invalid IL or missing references)
				//IL_00b2: Unknown result type (might be due to invalid IL or missing references)
				//IL_00b9: Unknown result type (might be due to invalid IL or missing references)
				//IL_0550: Unknown result type (might be due to invalid IL or missing references)
				//IL_0555: Unknown result type (might be due to invalid IL or missing references)
				//IL_055d: Unknown result type (might be due to invalid IL or missing references)
				//IL_00f3: Unknown result type (might be due to invalid IL or missing references)
				//IL_00fd: Expected O, but got Unknown
				//IL_0110: Unknown result type (might be due to invalid IL or missing references)
				//IL_0115: Unknown result type (might be due to invalid IL or missing references)
				//IL_0076: Unknown result type (might be due to invalid IL or missing references)
				//IL_007b: Unknown result type (might be due to invalid IL or missing references)
				//IL_008f: Unknown result type (might be due to invalid IL or missing references)
				//IL_0090: Unknown result type (might be due to invalid IL or missing references)
				//IL_02d6: Unknown result type (might be due to invalid IL or missing references)
				//IL_02db: Unknown result type (might be due to invalid IL or missing references)
				//IL_02e3: Unknown result type (might be due to invalid IL or missing references)
				//IL_040b: Unknown result type (might be due to invalid IL or missing references)
				//IL_0410: Unknown result type (might be due to invalid IL or missing references)
				//IL_0418: Unknown result type (might be due to invalid IL or missing references)
				//IL_029d: Unknown result type (might be due to invalid IL or missing references)
				//IL_02a2: Unknown result type (might be due to invalid IL or missing references)
				//IL_0509: Unknown result type (might be due to invalid IL or missing references)
				//IL_051a: Unknown result type (might be due to invalid IL or missing references)
				//IL_051f: Unknown result type (might be due to invalid IL or missing references)
				//IL_02b7: Unknown result type (might be due to invalid IL or missing references)
				//IL_02b9: Unknown result type (might be due to invalid IL or missing references)
				//IL_0534: Unknown result type (might be due to invalid IL or missing references)
				//IL_0536: Unknown result type (might be due to invalid IL or missing references)
				//IL_0368: Unknown result type (might be due to invalid IL or missing references)
				//IL_03d2: Unknown result type (might be due to invalid IL or missing references)
				//IL_03d7: Unknown result type (might be due to invalid IL or missing references)
				//IL_03ec: Unknown result type (might be due to invalid IL or missing references)
				//IL_03ee: Unknown result type (might be due to invalid IL or missing references)
				int num = _003C_003E1__state;
				try
				{
					TaskAwaiter<List<JObject>> val2;
					TaskAwaiter val;
					switch (num)
					{
					default:
						_003C_003E8__1 = new _003C_003Ec__DisplayClass8_0();
						_003C_003E8__1.console = console;
						if (!Directory.Exists(localBasePath))
						{
							Directory.CreateDirectory(localBasePath);
						}
						val2 = GetAllFilesInFolder(folderId).GetAwaiter();
						if (!val2.IsCompleted)
						{
							num = (_003C_003E1__state = 0);
							_003C_003Eu__1 = val2;
							_003CDownloadFolder_003Ed__8 _003CDownloadFolder_003Ed__ = this;
							((AsyncTaskMethodBuilder)(ref _003C_003Et__builder)).AwaitUnsafeOnCompleted<TaskAwaiter<List<JObject>>, _003CDownloadFolder_003Ed__8>(ref val2, ref _003CDownloadFolder_003Ed__);
							return;
						}
						goto IL_00c8;
					case 0:
						val2 = _003C_003Eu__1;
						_003C_003Eu__1 = default(TaskAwaiter<List<JObject>>);
						num = (_003C_003E1__state = -1);
						goto IL_00c8;
					case 1:
					case 2:
						try
						{
							TaskAwaiter val3;
							if (num != 1)
							{
								if (num != 2)
								{
									goto IL_04da;
								}
								val3 = _003C_003Eu__2;
								_003C_003Eu__2 = default(TaskAwaiter);
								num = (_003C_003E1__state = -1);
								goto IL_0427;
							}
							TaskAwaiter val4 = _003C_003Eu__2;
							_003C_003Eu__2 = default(TaskAwaiter);
							num = (_003C_003E1__state = -1);
							goto IL_02f2;
							IL_0427:
							((TaskAwaiter)(ref val3)).GetResult();
							_003Ctasks_003E5__3.Add(System.Threading.Tasks.Task.Run((Func<System.Threading.Tasks.Task>)([AsyncStateMachine(typeof(_003C_003Ec__DisplayClass8_2._003C_003CDownloadFolder_003Eb__0_003Ed))] [DebuggerStepThrough] () =>
							{
								//IL_0007: Unknown result type (might be due to invalid IL or missing references)
								//IL_000c: Unknown result type (might be due to invalid IL or missing references)
								_003C_003Ec__DisplayClass8_2._003C_003CDownloadFolder_003Eb__0_003Ed _003C_003CDownloadFolder_003Eb__0_003Ed = new _003C_003Ec__DisplayClass8_2._003C_003CDownloadFolder_003Eb__0_003Ed
								{
									_003C_003Et__builder = AsyncTaskMethodBuilder.Create(),
									_003C_003E4__this = _003C_003E8__7,
									_003C_003E1__state = -1
								};
								((AsyncTaskMethodBuilder)(ref _003C_003CDownloadFolder_003Eb__0_003Ed._003C_003Et__builder)).Start<_003C_003Ec__DisplayClass8_2._003C_003CDownloadFolder_003Eb__0_003Ed>(ref _003C_003CDownloadFolder_003Eb__0_003Ed);
								return ((AsyncTaskMethodBuilder)(ref _003C_003CDownloadFolder_003Eb__0_003Ed._003C_003Et__builder)).Task;
							})));
							goto IL_04cb;
							IL_04cb:
							_003C_003E8__7 = null;
							_003C_003E8__6 = null;
							goto IL_04da;
							IL_02f2:
							((TaskAwaiter)(ref val4)).GetResult();
							goto IL_04cb;
							IL_04da:
							if (_003C_003Es__5.MoveNext())
							{
								_003C_003E8__6 = new _003C_003Ec__DisplayClass8_1();
								_003C_003E8__6.CS_0024_003C_003E8__locals1 = _003C_003E8__1;
								_003C_003E8__6.file = _003C_003Es__5.Current;
								_003C_003E8__7 = new _003C_003Ec__DisplayClass8_2();
								_003C_003E8__7.CS_0024_003C_003E8__locals2 = _003C_003E8__6;
								_003C_003E8__7.localPath = Path.Combine(localBasePath, ((object)_003C_003E8__7.CS_0024_003C_003E8__locals2.file["name"]).ToString());
								if (((object)_003C_003E8__7.CS_0024_003C_003E8__locals2.file["mimeType"]).ToString() == "application/vnd.google-apps.folder")
								{
									myClass.debugText(_003C_003E8__7.CS_0024_003C_003E8__locals2.CS_0024_003C_003E8__locals1.console, $"\ud83d\udcc2 Mở thư mục: {_003C_003E8__7.CS_0024_003C_003E8__locals2.file["name"]}");
									Directory.CreateDirectory(_003C_003E8__7.localPath);
									val4 = DownloadFolder(((object)_003C_003E8__7.CS_0024_003C_003E8__locals2.file["id"]).ToString(), _003C_003E8__7.localPath, _003C_003E8__7.CS_0024_003C_003E8__locals2.CS_0024_003C_003E8__locals1.console).GetAwaiter();
									if (!((TaskAwaiter)(ref val4)).IsCompleted)
									{
										num = (_003C_003E1__state = 1);
										_003C_003Eu__2 = val4;
										_003CDownloadFolder_003Ed__8 _003CDownloadFolder_003Ed__ = this;
										((AsyncTaskMethodBuilder)(ref _003C_003Et__builder)).AwaitUnsafeOnCompleted<TaskAwaiter, _003CDownloadFolder_003Ed__8>(ref val4, ref _003CDownloadFolder_003Ed__);
										return;
									}
									goto IL_02f2;
								}
								totalFileCount++;
								if (!File.Exists(_003C_003E8__7.localPath) || File.GetLastWriteTime(_003C_003E8__7.localPath) < System.DateTime.Parse(((object)_003C_003E8__7.CS_0024_003C_003E8__locals2.file["modifiedTime"]).ToString()) || new FileInfo(_003C_003E8__7.localPath).Length != long.Parse(((object)_003C_003E8__7.CS_0024_003C_003E8__locals2.file["size"])?.ToString() ?? "0"))
								{
									val3 = _003C_003E8__7.CS_0024_003C_003E8__locals2.CS_0024_003C_003E8__locals1.semaphore.WaitAsync().GetAwaiter();
									if (!((TaskAwaiter)(ref val3)).IsCompleted)
									{
										num = (_003C_003E1__state = 2);
										_003C_003Eu__2 = val3;
										_003CDownloadFolder_003Ed__8 _003CDownloadFolder_003Ed__ = this;
										((AsyncTaskMethodBuilder)(ref _003C_003Et__builder)).AwaitUnsafeOnCompleted<TaskAwaiter, _003CDownloadFolder_003Ed__8>(ref val3, ref _003CDownloadFolder_003Ed__);
										return;
									}
									goto IL_0427;
								}
								successCount++;
								myClass.debugText(_003C_003E8__7.CS_0024_003C_003E8__locals2.CS_0024_003C_003E8__locals1.console, $"⏩ {_003C_003E8__7.CS_0024_003C_003E8__locals2.file["name"]} (đã cập nhật)");
								goto IL_04cb;
							}
						}
						finally
						{
							if (num < 0)
							{
								((System.IDisposable)_003C_003Es__5/*cast due to .constrained prefix*/).Dispose();
							}
						}
						_003C_003Es__5 = default(Enumerator<JObject>);
						val = System.Threading.Tasks.Task.WhenAll((System.Collections.Generic.IEnumerable<System.Threading.Tasks.Task>)_003Ctasks_003E5__3).GetAwaiter();
						if (!((TaskAwaiter)(ref val)).IsCompleted)
						{
							num = (_003C_003E1__state = 3);
							_003C_003Eu__2 = val;
							_003CDownloadFolder_003Ed__8 _003CDownloadFolder_003Ed__ = this;
							((AsyncTaskMethodBuilder)(ref _003C_003Et__builder)).AwaitUnsafeOnCompleted<TaskAwaiter, _003CDownloadFolder_003Ed__8>(ref val, ref _003CDownloadFolder_003Ed__);
							return;
						}
						break;
					case 3:
						{
							val = _003C_003Eu__2;
							_003C_003Eu__2 = default(TaskAwaiter);
							num = (_003C_003E1__state = -1);
							break;
						}
						IL_00c8:
						_003C_003Es__4 = val2.GetResult();
						_003CfileList_003E5__2 = _003C_003Es__4;
						_003C_003Es__4 = null;
						_003C_003E8__1.semaphore = new SemaphoreSlim(numberDownload);
						_003Ctasks_003E5__3 = new List<System.Threading.Tasks.Task>();
						_003C_003Es__5 = _003CfileList_003E5__2.GetEnumerator();
						goto case 1;
					}
					((TaskAwaiter)(ref val)).GetResult();
				}
				catch (System.Exception exception)
				{
					_003C_003E1__state = -2;
					_003C_003E8__1 = null;
					_003CfileList_003E5__2 = null;
					_003Ctasks_003E5__3 = null;
					((AsyncTaskMethodBuilder)(ref _003C_003Et__builder)).SetException(exception);
					return;
				}
				_003C_003E1__state = -2;
				_003C_003E8__1 = null;
				_003CfileList_003E5__2 = null;
				_003Ctasks_003E5__3 = null;
				((AsyncTaskMethodBuilder)(ref _003C_003Et__builder)).SetResult();
			}

			[DebuggerHidden]
			private void SetStateMachine(IAsyncStateMachine stateMachine)
			{
			}
		}

		[CompilerGenerated]
		private sealed class _003CGetAllFilesInFolder_003Ed__11 : IAsyncStateMachine
		{
			public int _003C_003E1__state;

			public AsyncTaskMethodBuilder<List<JObject>> _003C_003Et__builder;

			public string folderId;

			private List<JObject> _003CallFiles_003E5__1;

			private string _003CpageToken_003E5__2;

			private HttpClient _003Cclient_003E5__3;

			private string _003CapiUrl_003E5__4;

			private HttpResponseMessage _003Cresponse_003E5__5;

			private string _003Cresult_003E5__6;

			private JObject _003Cjson_003E5__7;

			private HttpResponseMessage _003C_003Es__8;

			private string _003C_003Es__9;

			private System.Collections.Generic.IEnumerator<JToken> _003C_003Es__10;

			private JToken _003Cfile_003E5__11;

			private System.Exception _003Cex_003E5__12;

			private TaskAwaiter<HttpResponseMessage> _003C_003Eu__1;

			private TaskAwaiter<string> _003C_003Eu__2;

			private void MoveNext()
			{
				//IL_002d: Unknown result type (might be due to invalid IL or missing references)
				//IL_0037: Expected O, but got Unknown
				//IL_00f0: Unknown result type (might be due to invalid IL or missing references)
				//IL_00f5: Unknown result type (might be due to invalid IL or missing references)
				//IL_00fc: Unknown result type (might be due to invalid IL or missing references)
				//IL_013b: Unknown result type (might be due to invalid IL or missing references)
				//IL_0140: Unknown result type (might be due to invalid IL or missing references)
				//IL_0155: Unknown result type (might be due to invalid IL or missing references)
				//IL_0157: Unknown result type (might be due to invalid IL or missing references)
				//IL_0175: Unknown result type (might be due to invalid IL or missing references)
				//IL_017a: Unknown result type (might be due to invalid IL or missing references)
				//IL_0182: Unknown result type (might be due to invalid IL or missing references)
				//IL_00b8: Unknown result type (might be due to invalid IL or missing references)
				//IL_00bd: Unknown result type (might be due to invalid IL or missing references)
				//IL_00d1: Unknown result type (might be due to invalid IL or missing references)
				//IL_00d2: Unknown result type (might be due to invalid IL or missing references)
				//IL_01fe: Unknown result type (might be due to invalid IL or missing references)
				//IL_0208: Expected O, but got Unknown
				int num = _003C_003E1__state;
				List<JObject> result;
				try
				{
					if ((uint)num > 1u)
					{
						_003CallFiles_003E5__1 = new List<JObject>();
						_003CpageToken_003E5__2 = null;
					}
					try
					{
						if ((uint)num > 1u)
						{
							_003Cclient_003E5__3 = new HttpClient();
						}
						try
						{
							TaskAwaiter<string> val;
							if (num != 0)
							{
								if (num != 1)
								{
									goto IL_004e;
								}
								val = _003C_003Eu__2;
								_003C_003Eu__2 = default(TaskAwaiter<string>);
								num = (_003C_003E1__state = -1);
								goto IL_0191;
							}
							TaskAwaiter<HttpResponseMessage> val2 = _003C_003Eu__1;
							_003C_003Eu__1 = default(TaskAwaiter<HttpResponseMessage>);
							num = (_003C_003E1__state = -1);
							goto IL_010b;
							IL_010b:
							_003C_003Es__8 = val2.GetResult();
							_003Cresponse_003E5__5 = _003C_003Es__8;
							_003C_003Es__8 = null;
							val = _003Cresponse_003E5__5.Content.ReadAsStringAsync().GetAwaiter();
							if (!val.IsCompleted)
							{
								num = (_003C_003E1__state = 1);
								_003C_003Eu__2 = val;
								_003CGetAllFilesInFolder_003Ed__11 _003CGetAllFilesInFolder_003Ed__ = this;
								_003C_003Et__builder.AwaitUnsafeOnCompleted<TaskAwaiter<string>, _003CGetAllFilesInFolder_003Ed__11>(ref val, ref _003CGetAllFilesInFolder_003Ed__);
								return;
							}
							goto IL_0191;
							IL_004e:
							_003CapiUrl_003E5__4 = $"{BASE_URL}?q='{folderId}' in parents and trashed=false&fields=nextPageToken, files(id, name, mimeType, modifiedTime, size)&pageSize=100&key={API_KEY}";
							val2 = _003Cclient_003E5__3.GetAsync(_003CapiUrl_003E5__4).GetAwaiter();
							if (!val2.IsCompleted)
							{
								num = (_003C_003E1__state = 0);
								_003C_003Eu__1 = val2;
								_003CGetAllFilesInFolder_003Ed__11 _003CGetAllFilesInFolder_003Ed__ = this;
								_003C_003Et__builder.AwaitUnsafeOnCompleted<TaskAwaiter<HttpResponseMessage>, _003CGetAllFilesInFolder_003Ed__11>(ref val2, ref _003CGetAllFilesInFolder_003Ed__);
								return;
							}
							goto IL_010b;
							IL_0191:
							_003C_003Es__9 = val.GetResult();
							_003Cresult_003E5__6 = _003C_003Es__9;
							_003C_003Es__9 = null;
							_003Cjson_003E5__7 = JObject.Parse(_003Cresult_003E5__6);
							_003C_003Es__10 = ((System.Collections.Generic.IEnumerable<JToken>)_003Cjson_003E5__7["files"]).GetEnumerator();
							try
							{
								while (((System.Collections.IEnumerator)_003C_003Es__10).MoveNext())
								{
									_003Cfile_003E5__11 = _003C_003Es__10.Current;
									_003CallFiles_003E5__1.Add((JObject)_003Cfile_003E5__11);
									_003Cfile_003E5__11 = null;
								}
							}
							finally
							{
								if (num < 0 && _003C_003Es__10 != null)
								{
									((System.IDisposable)_003C_003Es__10).Dispose();
								}
							}
							_003C_003Es__10 = null;
							_003CpageToken_003E5__2 = ((object)_003Cjson_003E5__7["nextPageToken"])?.ToString();
							_003CapiUrl_003E5__4 = null;
							_003Cresponse_003E5__5 = null;
							_003Cresult_003E5__6 = null;
							_003Cjson_003E5__7 = null;
							if (_003CpageToken_003E5__2 != null)
							{
								goto IL_004e;
							}
						}
						finally
						{
							if (num < 0 && _003Cclient_003E5__3 != null)
							{
								((System.IDisposable)_003Cclient_003E5__3).Dispose();
							}
						}
						_003Cclient_003E5__3 = null;
					}
					catch (System.Exception ex)
					{
						_003Cex_003E5__12 = ex;
						Console.WriteLine("Error: " + _003Cex_003E5__12.Message);
					}
					result = _003CallFiles_003E5__1;
				}
				catch (System.Exception ex)
				{
					_003C_003E1__state = -2;
					_003CallFiles_003E5__1 = null;
					_003CpageToken_003E5__2 = null;
					_003C_003Et__builder.SetException(ex);
					return;
				}
				_003C_003E1__state = -2;
				_003CallFiles_003E5__1 = null;
				_003CpageToken_003E5__2 = null;
				_003C_003Et__builder.SetResult(result);
			}

			[DebuggerHidden]
			private void SetStateMachine(IAsyncStateMachine stateMachine)
			{
			}
		}

		[CompilerGenerated]
		private sealed class _003CGetRealTimeFromSheets_003Ed__21 : IAsyncStateMachine
		{
			public int _003C_003E1__state;

			public AsyncTaskMethodBuilder<System.DateTime> _003C_003Et__builder;

			private string _003CdateTime_003E5__1;

			private System.DateTime _003CmyDateTime_003E5__2;

			private string _003C_003Es__3;

			private TaskAwaiter<string> _003C_003Eu__1;

			private void MoveNext()
			{
				//IL_0059: Unknown result type (might be due to invalid IL or missing references)
				//IL_005e: Unknown result type (might be due to invalid IL or missing references)
				//IL_0065: Unknown result type (might be due to invalid IL or missing references)
				//IL_0022: Unknown result type (might be due to invalid IL or missing references)
				//IL_0027: Unknown result type (might be due to invalid IL or missing references)
				//IL_003b: Unknown result type (might be due to invalid IL or missing references)
				//IL_003c: Unknown result type (might be due to invalid IL or missing references)
				int num = _003C_003E1__state;
				System.DateTime result;
				try
				{
					if (num != 0)
					{
					}
					try
					{
						TaskAwaiter<string> val;
						if (num != 0)
						{
							val = ReadGoogleSheetCell(RANGE_DATETIME_REAL).GetAwaiter();
							if (!val.IsCompleted)
							{
								num = (_003C_003E1__state = 0);
								_003C_003Eu__1 = val;
								_003CGetRealTimeFromSheets_003Ed__21 _003CGetRealTimeFromSheets_003Ed__ = this;
								_003C_003Et__builder.AwaitUnsafeOnCompleted<TaskAwaiter<string>, _003CGetRealTimeFromSheets_003Ed__21>(ref val, ref _003CGetRealTimeFromSheets_003Ed__);
								return;
							}
						}
						else
						{
							val = _003C_003Eu__1;
							_003C_003Eu__1 = default(TaskAwaiter<string>);
							num = (_003C_003E1__state = -1);
						}
						_003C_003Es__3 = val.GetResult();
						_003CdateTime_003E5__1 = _003C_003Es__3;
						_003C_003Es__3 = null;
						result = (System.DateTime.TryParseExact(_003CdateTime_003E5__1, "yyyyMMdd", (IFormatProvider)null, (DateTimeStyles)0, ref _003CmyDateTime_003E5__2) ? _003CmyDateTime_003E5__2 : System.DateTime.MinValue);
					}
					catch (HttpRequestException)
					{
						result = System.DateTime.MinValue;
					}
				}
				catch (System.Exception exception)
				{
					_003C_003E1__state = -2;
					_003C_003Et__builder.SetException(exception);
					return;
				}
				_003C_003E1__state = -2;
				_003C_003Et__builder.SetResult(result);
			}

			[DebuggerHidden]
			private void SetStateMachine(IAsyncStateMachine stateMachine)
			{
			}
		}

		[CompilerGenerated]
		private sealed class _003CReadGoogleSheetCell_003Ed__19 : IAsyncStateMachine
		{
			public int _003C_003E1__state;

			public AsyncTaskMethodBuilder<string> _003C_003Et__builder;

			public string range;

			private string _003CapiUrl_003E5__1;

			private HttpClient _003Cclient_003E5__2;

			private HttpResponseMessage _003Cresponse_003E5__3;

			private string _003Cresult_003E5__4;

			private JObject _003Cjson_003E5__5;

			private HttpResponseMessage _003C_003Es__6;

			private string _003C_003Es__7;

			private System.Exception _003Cex_003E5__8;

			private TaskAwaiter<HttpResponseMessage> _003C_003Eu__1;

			private TaskAwaiter<string> _003C_003Eu__2;

			private void MoveNext()
			{
				//IL_0080: Unknown result type (might be due to invalid IL or missing references)
				//IL_008a: Expected O, but got Unknown
				//IL_0101: Unknown result type (might be due to invalid IL or missing references)
				//IL_0106: Unknown result type (might be due to invalid IL or missing references)
				//IL_010d: Unknown result type (might be due to invalid IL or missing references)
				//IL_0158: Unknown result type (might be due to invalid IL or missing references)
				//IL_015d: Unknown result type (might be due to invalid IL or missing references)
				//IL_0172: Unknown result type (might be due to invalid IL or missing references)
				//IL_0174: Unknown result type (might be due to invalid IL or missing references)
				//IL_0192: Unknown result type (might be due to invalid IL or missing references)
				//IL_0197: Unknown result type (might be due to invalid IL or missing references)
				//IL_019f: Unknown result type (might be due to invalid IL or missing references)
				//IL_00ad: Unknown result type (might be due to invalid IL or missing references)
				//IL_00c9: Unknown result type (might be due to invalid IL or missing references)
				//IL_00ce: Unknown result type (might be due to invalid IL or missing references)
				//IL_00e2: Unknown result type (might be due to invalid IL or missing references)
				//IL_00e3: Unknown result type (might be due to invalid IL or missing references)
				int num = _003C_003E1__state;
				string result;
				try
				{
					if ((uint)num > 1u)
					{
						_003CapiUrl_003E5__1 = $"https://sheets.googleapis.com/v4/spreadsheets/{myInfo.sheetID}/values/{range}?key={API_KEY}";
					}
					try
					{
						if ((uint)num > 1u)
						{
							_003Cclient_003E5__2 = new HttpClient();
						}
						try
						{
							TaskAwaiter<string> val;
							TaskAwaiter<HttpResponseMessage> val2;
							if (num != 0)
							{
								if (num == 1)
								{
									val = _003C_003Eu__2;
									_003C_003Eu__2 = default(TaskAwaiter<string>);
									num = (_003C_003E1__state = -1);
									goto IL_01ae;
								}
								_003Cclient_003E5__2.Timeout = TimeSpan.FromSeconds(10.0);
								val2 = _003Cclient_003E5__2.GetAsync(_003CapiUrl_003E5__1).GetAwaiter();
								if (!val2.IsCompleted)
								{
									num = (_003C_003E1__state = 0);
									_003C_003Eu__1 = val2;
									_003CReadGoogleSheetCell_003Ed__19 _003CReadGoogleSheetCell_003Ed__ = this;
									_003C_003Et__builder.AwaitUnsafeOnCompleted<TaskAwaiter<HttpResponseMessage>, _003CReadGoogleSheetCell_003Ed__19>(ref val2, ref _003CReadGoogleSheetCell_003Ed__);
									return;
								}
							}
							else
							{
								val2 = _003C_003Eu__1;
								_003C_003Eu__1 = default(TaskAwaiter<HttpResponseMessage>);
								num = (_003C_003E1__state = -1);
							}
							_003C_003Es__6 = val2.GetResult();
							_003Cresponse_003E5__3 = _003C_003Es__6;
							_003C_003Es__6 = null;
							_003Cresponse_003E5__3.EnsureSuccessStatusCode();
							val = _003Cresponse_003E5__3.Content.ReadAsStringAsync().GetAwaiter();
							if (!val.IsCompleted)
							{
								num = (_003C_003E1__state = 1);
								_003C_003Eu__2 = val;
								_003CReadGoogleSheetCell_003Ed__19 _003CReadGoogleSheetCell_003Ed__ = this;
								_003C_003Et__builder.AwaitUnsafeOnCompleted<TaskAwaiter<string>, _003CReadGoogleSheetCell_003Ed__19>(ref val, ref _003CReadGoogleSheetCell_003Ed__);
								return;
							}
							goto IL_01ae;
							IL_01ae:
							_003C_003Es__7 = val.GetResult();
							_003Cresult_003E5__4 = _003C_003Es__7;
							_003C_003Es__7 = null;
							_003Cjson_003E5__5 = JObject.Parse(_003Cresult_003E5__4);
							result = ((object)_003Cjson_003E5__5["values"][(object)0][(object)0]).ToString();
						}
						finally
						{
							if (num < 0 && _003Cclient_003E5__2 != null)
							{
								((System.IDisposable)_003Cclient_003E5__2).Dispose();
							}
						}
					}
					catch (System.Exception ex)
					{
						_003Cex_003E5__8 = ex;
						Console.WriteLine("Lỗi khi lấy ô từ Google Sheet: " + _003Cex_003E5__8.Message);
						result = "Lỗi";
					}
				}
				catch (System.Exception ex)
				{
					_003C_003E1__state = -2;
					_003CapiUrl_003E5__1 = null;
					_003C_003Et__builder.SetException(ex);
					return;
				}
				_003C_003E1__state = -2;
				_003CapiUrl_003E5__1 = null;
				_003C_003Et__builder.SetResult(result);
			}

			[DebuggerHidden]
			private void SetStateMachine(IAsyncStateMachine stateMachine)
			{
			}
		}

		[CompilerGenerated]
		private sealed class _003CReadGoogleSheetData_003Ed__18 : IAsyncStateMachine
		{
			public int _003C_003E1__state;

			public AsyncTaskMethodBuilder<List<string>> _003C_003Et__builder;

			public string range;

			private string _003CapiUrl_003E5__1;

			private List<string> _003Cvalues_003E5__2;

			private HttpClient _003Cclient_003E5__3;

			private HttpResponseMessage _003Cresponse_003E5__4;

			private string _003Cresult_003E5__5;

			private JObject _003Cjson_003E5__6;

			private HttpResponseMessage _003C_003Es__7;

			private string _003C_003Es__8;

			private System.Collections.Generic.IEnumerator<JToken> _003C_003Es__9;

			private JToken _003Citem_003E5__10;

			private System.Exception _003Cex_003E5__11;

			private TaskAwaiter<HttpResponseMessage> _003C_003Eu__1;

			private TaskAwaiter<string> _003C_003Eu__2;

			private void MoveNext()
			{
				//IL_008b: Unknown result type (might be due to invalid IL or missing references)
				//IL_0095: Expected O, but got Unknown
				//IL_010c: Unknown result type (might be due to invalid IL or missing references)
				//IL_0111: Unknown result type (might be due to invalid IL or missing references)
				//IL_0118: Unknown result type (might be due to invalid IL or missing references)
				//IL_0163: Unknown result type (might be due to invalid IL or missing references)
				//IL_0168: Unknown result type (might be due to invalid IL or missing references)
				//IL_017d: Unknown result type (might be due to invalid IL or missing references)
				//IL_017f: Unknown result type (might be due to invalid IL or missing references)
				//IL_019d: Unknown result type (might be due to invalid IL or missing references)
				//IL_01a2: Unknown result type (might be due to invalid IL or missing references)
				//IL_01aa: Unknown result type (might be due to invalid IL or missing references)
				//IL_00b8: Unknown result type (might be due to invalid IL or missing references)
				//IL_00d4: Unknown result type (might be due to invalid IL or missing references)
				//IL_00d9: Unknown result type (might be due to invalid IL or missing references)
				//IL_00ed: Unknown result type (might be due to invalid IL or missing references)
				//IL_00ee: Unknown result type (might be due to invalid IL or missing references)
				int num = _003C_003E1__state;
				List<string> result;
				try
				{
					if ((uint)num > 1u)
					{
						_003CapiUrl_003E5__1 = $"https://sheets.googleapis.com/v4/spreadsheets/{myInfo.sheetID}/values/{range}?key={API_KEY}";
						_003Cvalues_003E5__2 = new List<string>();
					}
					try
					{
						if ((uint)num > 1u)
						{
							_003Cclient_003E5__3 = new HttpClient();
						}
						try
						{
							TaskAwaiter<string> val;
							TaskAwaiter<HttpResponseMessage> val2;
							if (num != 0)
							{
								if (num == 1)
								{
									val = _003C_003Eu__2;
									_003C_003Eu__2 = default(TaskAwaiter<string>);
									num = (_003C_003E1__state = -1);
									goto IL_01b9;
								}
								_003Cclient_003E5__3.Timeout = TimeSpan.FromSeconds(10.0);
								val2 = _003Cclient_003E5__3.GetAsync(_003CapiUrl_003E5__1).GetAwaiter();
								if (!val2.IsCompleted)
								{
									num = (_003C_003E1__state = 0);
									_003C_003Eu__1 = val2;
									_003CReadGoogleSheetData_003Ed__18 _003CReadGoogleSheetData_003Ed__ = this;
									_003C_003Et__builder.AwaitUnsafeOnCompleted<TaskAwaiter<HttpResponseMessage>, _003CReadGoogleSheetData_003Ed__18>(ref val2, ref _003CReadGoogleSheetData_003Ed__);
									return;
								}
							}
							else
							{
								val2 = _003C_003Eu__1;
								_003C_003Eu__1 = default(TaskAwaiter<HttpResponseMessage>);
								num = (_003C_003E1__state = -1);
							}
							_003C_003Es__7 = val2.GetResult();
							_003Cresponse_003E5__4 = _003C_003Es__7;
							_003C_003Es__7 = null;
							_003Cresponse_003E5__4.EnsureSuccessStatusCode();
							val = _003Cresponse_003E5__4.Content.ReadAsStringAsync().GetAwaiter();
							if (!val.IsCompleted)
							{
								num = (_003C_003E1__state = 1);
								_003C_003Eu__2 = val;
								_003CReadGoogleSheetData_003Ed__18 _003CReadGoogleSheetData_003Ed__ = this;
								_003C_003Et__builder.AwaitUnsafeOnCompleted<TaskAwaiter<string>, _003CReadGoogleSheetData_003Ed__18>(ref val, ref _003CReadGoogleSheetData_003Ed__);
								return;
							}
							goto IL_01b9;
							IL_01b9:
							_003C_003Es__8 = val.GetResult();
							_003Cresult_003E5__5 = _003C_003Es__8;
							_003C_003Es__8 = null;
							_003Cjson_003E5__6 = JObject.Parse(_003Cresult_003E5__5);
							_003C_003Es__9 = ((System.Collections.Generic.IEnumerable<JToken>)_003Cjson_003E5__6["values"]).GetEnumerator();
							try
							{
								while (((System.Collections.IEnumerator)_003C_003Es__9).MoveNext())
								{
									_003Citem_003E5__10 = _003C_003Es__9.Current;
									_003Cvalues_003E5__2.Add(((object)_003Citem_003E5__10[(object)0]).ToString().Substring(1, ((object)_003Citem_003E5__10[(object)0]).ToString().Length - 2));
									_003Citem_003E5__10 = null;
								}
							}
							finally
							{
								if (num < 0 && _003C_003Es__9 != null)
								{
									((System.IDisposable)_003C_003Es__9).Dispose();
								}
							}
							_003C_003Es__9 = null;
							_003Cresponse_003E5__4 = null;
							_003Cresult_003E5__5 = null;
							_003Cjson_003E5__6 = null;
						}
						finally
						{
							if (num < 0 && _003Cclient_003E5__3 != null)
							{
								((System.IDisposable)_003Cclient_003E5__3).Dispose();
							}
						}
						_003Cclient_003E5__3 = null;
					}
					catch (System.Exception ex)
					{
						_003Cex_003E5__11 = ex;
						Console.WriteLine("Lỗi khi lấy dữ liệu từ Google Sheet: " + _003Cex_003E5__11.Message);
					}
					result = _003Cvalues_003E5__2;
				}
				catch (System.Exception ex)
				{
					_003C_003E1__state = -2;
					_003CapiUrl_003E5__1 = null;
					_003Cvalues_003E5__2 = null;
					_003C_003Et__builder.SetException(ex);
					return;
				}
				_003C_003E1__state = -2;
				_003CapiUrl_003E5__1 = null;
				_003Cvalues_003E5__2 = null;
				_003C_003Et__builder.SetResult(result);
			}

			[DebuggerHidden]
			private void SetStateMachine(IAsyncStateMachine stateMachine)
			{
			}
		}

		[CompilerGenerated]
		private sealed class _003CRetryDownloadFile_003Ed__9 : IAsyncStateMachine
		{
			public int _003C_003E1__state;

			public AsyncTaskMethodBuilder _003C_003Et__builder;

			public string fileId;

			public string savePath;

			public RichTextBox console;

			public int maxRetries;

			private int _003CretryCount_003E5__1;

			private System.Exception _003Cex_003E5__2;

			private TaskAwaiter _003C_003Eu__1;

			private void MoveNext()
			{
				//IL_0073: Unknown result type (might be due to invalid IL or missing references)
				//IL_0078: Unknown result type (might be due to invalid IL or missing references)
				//IL_007f: Unknown result type (might be due to invalid IL or missing references)
				//IL_003c: Unknown result type (might be due to invalid IL or missing references)
				//IL_0041: Unknown result type (might be due to invalid IL or missing references)
				//IL_0055: Unknown result type (might be due to invalid IL or missing references)
				//IL_0056: Unknown result type (might be due to invalid IL or missing references)
				int num = _003C_003E1__state;
				try
				{
					if (num == 0)
					{
						goto IL_001d;
					}
					_003CretryCount_003E5__1 = 0;
					goto IL_0148;
					IL_001d:
					try
					{
						TaskAwaiter val;
						if (num != 0)
						{
							val = DownloadFile(fileId, savePath, console).GetAwaiter();
							if (!((TaskAwaiter)(ref val)).IsCompleted)
							{
								num = (_003C_003E1__state = 0);
								_003C_003Eu__1 = val;
								_003CRetryDownloadFile_003Ed__9 _003CRetryDownloadFile_003Ed__ = this;
								((AsyncTaskMethodBuilder)(ref _003C_003Et__builder)).AwaitUnsafeOnCompleted<TaskAwaiter, _003CRetryDownloadFile_003Ed__9>(ref val, ref _003CRetryDownloadFile_003Ed__);
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
					}
					catch (System.Exception ex)
					{
						_003Cex_003E5__2 = ex;
						_003CretryCount_003E5__1++;
						if (_003CretryCount_003E5__1 == maxRetries)
						{
							myClass.debugText(console, $"❌ Không thể tải {Path.GetFileName(savePath)} sau {maxRetries} lần thử: {_003Cex_003E5__2.Message}");
						}
						goto IL_0148;
					}
					goto end_IL_0007;
					IL_0148:
					if (_003CretryCount_003E5__1 < maxRetries)
					{
						goto IL_001d;
					}
					end_IL_0007:;
				}
				catch (System.Exception ex)
				{
					_003C_003E1__state = -2;
					((AsyncTaskMethodBuilder)(ref _003C_003Et__builder)).SetException(ex);
					return;
				}
				_003C_003E1__state = -2;
				((AsyncTaskMethodBuilder)(ref _003C_003Et__builder)).SetResult();
			}

			[DebuggerHidden]
			private void SetStateMachine(IAsyncStateMachine stateMachine)
			{
			}
		}

		private static readonly string API_KEY = "AIzaSyA25tk6YnP3voEKgKApHQxhnAnrSbX593c";

		public static int successCount = 0;

		public static int totalFileCount = 0;

		private static int numberDownload = 5;

		private static readonly string BASE_URL = "https://www.googleapis.com/drive/v3/files";

		private static readonly string RANGE_USER = "ID!A";

		private static readonly string RANGE_MODEL = "ID!B";

		private static readonly string RANGE_SERIAL = "ID!C2:C";

		private static readonly string RANGE_DATETIME = "ID!D";

		private static readonly string RANGE_DATETIME_REAL = "ID!G3";

		[AsyncStateMachine(typeof(_003CCheckApiKey_003Ed__1))]
		[DebuggerStepThrough]
		public static async System.Threading.Tasks.Task<string[]> CheckApiKey()
		{
			//IL_0007: Unknown result type (might be due to invalid IL or missing references)
			//IL_000c: Unknown result type (might be due to invalid IL or missing references)
			string driveError = await CheckDriveFolder();
			string sheetsError = await CheckSheetsFileName();
			if (driveError == null && sheetsError == null)
			{
				return new string[1] { "OK" };
			}
			return new string[2]
			{
				"Fail",
				(driveError + " " + sheetsError).Trim()
			};
		}

		[AsyncStateMachine(typeof(_003CCheckDriveFolder_003Ed__2))]
		[DebuggerStepThrough]
		private static async System.Threading.Tasks.Task<string> CheckDriveFolder()
		{
			//IL_0007: Unknown result type (might be due to invalid IL or missing references)
			//IL_000c: Unknown result type (might be due to invalid IL or missing references)
			try
			{
				HttpClient client = new HttpClient();
				try
				{
					string driveUrl = "https://www.googleapis.com/drive/v3/files/" + myInfo.folderID_VG + "?fields=name&key=" + API_KEY;
					JObject json = JObject.Parse(await (await client.GetAsync(driveUrl)).Content.ReadAsStringAsync());
					string folderName = ((object)json["name"])?.ToString();
					return (folderName == myInfo.nameApp_checkGooogleDrive) ? null : ("Không tìm thấy " + myInfo.nameApp_checkGooogleDrive + " từ Google Drive");
				}
				finally
				{
					((System.IDisposable)client)?.Dispose();
				}
			}
			catch (System.Exception ex)
			{
				System.Exception ex2 = ex;
				return "Lỗi khi kiểm tra thư mục Google Drive: " + ex2.Message;
			}
		}

		[AsyncStateMachine(typeof(_003CCheckSheetsFileName_003Ed__3))]
		[DebuggerStepThrough]
		private static async System.Threading.Tasks.Task<string> CheckSheetsFileName()
		{
			//IL_0007: Unknown result type (might be due to invalid IL or missing references)
			//IL_000c: Unknown result type (might be due to invalid IL or missing references)
			try
			{
				HttpClient client = new HttpClient();
				try
				{
					string sheetsUrl = "https://www.googleapis.com/drive/v3/files/" + myInfo.sheetID + "?fields=name&key=" + API_KEY;
					JObject json = JObject.Parse(await (await client.GetAsync(sheetsUrl)).Content.ReadAsStringAsync());
					string fileName = ((object)json["name"])?.ToString();
					return (fileName == myInfo.nameApp_checkGooogleSheets) ? null : ("Không tìm thấy " + myInfo.nameApp_checkGooogleSheets + " từ Google Sheets");
				}
				finally
				{
					((System.IDisposable)client)?.Dispose();
				}
			}
			catch (System.Exception ex)
			{
				System.Exception ex2 = ex;
				return "Lỗi khi kiểm tra tên file Google Sheets: " + ex2.Message;
			}
		}

		[AsyncStateMachine(typeof(_003CDownloadFolder_003Ed__8))]
		[DebuggerStepThrough]
		public static System.Threading.Tasks.Task DownloadFolder(string folderId, string localBasePath, RichTextBox console)
		{
			//IL_0007: Unknown result type (might be due to invalid IL or missing references)
			//IL_000c: Unknown result type (might be due to invalid IL or missing references)
			_003CDownloadFolder_003Ed__8 _003CDownloadFolder_003Ed__ = new _003CDownloadFolder_003Ed__8();
			_003CDownloadFolder_003Ed__._003C_003Et__builder = AsyncTaskMethodBuilder.Create();
			_003CDownloadFolder_003Ed__.folderId = folderId;
			_003CDownloadFolder_003Ed__.localBasePath = localBasePath;
			_003CDownloadFolder_003Ed__.console = console;
			_003CDownloadFolder_003Ed__._003C_003E1__state = -1;
			((AsyncTaskMethodBuilder)(ref _003CDownloadFolder_003Ed__._003C_003Et__builder)).Start<_003CDownloadFolder_003Ed__8>(ref _003CDownloadFolder_003Ed__);
			return ((AsyncTaskMethodBuilder)(ref _003CDownloadFolder_003Ed__._003C_003Et__builder)).Task;
		}

		[AsyncStateMachine(typeof(_003CRetryDownloadFile_003Ed__9))]
		[DebuggerStepThrough]
		public static System.Threading.Tasks.Task RetryDownloadFile(string fileId, string savePath, RichTextBox console, int maxRetries)
		{
			//IL_0007: Unknown result type (might be due to invalid IL or missing references)
			//IL_000c: Unknown result type (might be due to invalid IL or missing references)
			_003CRetryDownloadFile_003Ed__9 _003CRetryDownloadFile_003Ed__ = new _003CRetryDownloadFile_003Ed__9();
			_003CRetryDownloadFile_003Ed__._003C_003Et__builder = AsyncTaskMethodBuilder.Create();
			_003CRetryDownloadFile_003Ed__.fileId = fileId;
			_003CRetryDownloadFile_003Ed__.savePath = savePath;
			_003CRetryDownloadFile_003Ed__.console = console;
			_003CRetryDownloadFile_003Ed__.maxRetries = maxRetries;
			_003CRetryDownloadFile_003Ed__._003C_003E1__state = -1;
			((AsyncTaskMethodBuilder)(ref _003CRetryDownloadFile_003Ed__._003C_003Et__builder)).Start<_003CRetryDownloadFile_003Ed__9>(ref _003CRetryDownloadFile_003Ed__);
			return ((AsyncTaskMethodBuilder)(ref _003CRetryDownloadFile_003Ed__._003C_003Et__builder)).Task;
		}

		[AsyncStateMachine(typeof(_003CDownloadFile_003Ed__10))]
		[DebuggerStepThrough]
		public static System.Threading.Tasks.Task DownloadFile(string fileId, string savePath, RichTextBox console)
		{
			//IL_0007: Unknown result type (might be due to invalid IL or missing references)
			//IL_000c: Unknown result type (might be due to invalid IL or missing references)
			_003CDownloadFile_003Ed__10 _003CDownloadFile_003Ed__ = new _003CDownloadFile_003Ed__10();
			_003CDownloadFile_003Ed__._003C_003Et__builder = AsyncTaskMethodBuilder.Create();
			_003CDownloadFile_003Ed__.fileId = fileId;
			_003CDownloadFile_003Ed__.savePath = savePath;
			_003CDownloadFile_003Ed__.console = console;
			_003CDownloadFile_003Ed__._003C_003E1__state = -1;
			((AsyncTaskMethodBuilder)(ref _003CDownloadFile_003Ed__._003C_003Et__builder)).Start<_003CDownloadFile_003Ed__10>(ref _003CDownloadFile_003Ed__);
			return ((AsyncTaskMethodBuilder)(ref _003CDownloadFile_003Ed__._003C_003Et__builder)).Task;
		}

		[AsyncStateMachine(typeof(_003CGetAllFilesInFolder_003Ed__11))]
		[DebuggerStepThrough]
		public static async System.Threading.Tasks.Task<List<JObject>> GetAllFilesInFolder(string folderId)
		{
			//IL_0007: Unknown result type (might be due to invalid IL or missing references)
			//IL_000c: Unknown result type (might be due to invalid IL or missing references)
			List<JObject> allFiles = new List<JObject>();
			try
			{
				HttpClient client = new HttpClient();
				try
				{
					string pageToken;
					do
					{
						string apiUrl = $"{BASE_URL}?q='{folderId}' in parents and trashed=false&fields=nextPageToken, files(id, name, mimeType, modifiedTime, size)&pageSize=100&key={API_KEY}";
						JObject json = JObject.Parse(await (await client.GetAsync(apiUrl)).Content.ReadAsStringAsync());
						System.Collections.Generic.IEnumerator<JToken> enumerator = ((System.Collections.Generic.IEnumerable<JToken>)json["files"]).GetEnumerator();
						try
						{
							while (((System.Collections.IEnumerator)enumerator).MoveNext())
							{
								JToken file = enumerator.Current;
								allFiles.Add((JObject)file);
							}
						}
						finally
						{
							((System.IDisposable)enumerator)?.Dispose();
						}
						pageToken = ((object)json["nextPageToken"])?.ToString();
					}
					while (pageToken != null);
				}
				finally
				{
					((System.IDisposable)client)?.Dispose();
				}
			}
			catch (System.Exception ex)
			{
				System.Exception ex2 = ex;
				Console.WriteLine("Error: " + ex2.Message);
			}
			return allFiles;
		}

		[AsyncStateMachine(typeof(_003CCheckSerial_003Ed__17))]
		[DebuggerStepThrough]
		public static async System.Threading.Tasks.Task<string[]> CheckSerial()
		{
			//IL_0007: Unknown result type (might be due to invalid IL or missing references)
			//IL_000c: Unknown result type (might be due to invalid IL or missing references)
			List<string> serials = await ReadGoogleSheetData(RANGE_SERIAL);
			List<string> localSerials = myID.GetHardDriveSerials();
			Enumerator<string> enumerator = localSerials.GetEnumerator();
			try
			{
				while (enumerator.MoveNext())
				{
					string localSerial = enumerator.Current;
					List<int> positions = FindExactMatches(serials, localSerial);
					if (positions.Count <= 0)
					{
						continue;
					}
					Enumerator<int> enumerator2 = positions.GetEnumerator();
					try
					{
						if (enumerator2.MoveNext())
						{
							int pos = enumerator2.Current;
							string modelRange = $"{RANGE_MODEL}{pos}";
							string userRange = $"{RANGE_USER}{pos}";
							string dateTimeRange = $"{RANGE_DATETIME}{pos}";
							string model = await ReadGoogleSheetCell(modelRange);
							string user = await ReadGoogleSheetCell(userRange);
							string dateTime = await ReadGoogleSheetCell(dateTimeRange);
							return new string[4] { localSerial, model, user, dateTime };
						}
					}
					finally
					{
						((System.IDisposable)enumerator2/*cast due to .constrained prefix*/).Dispose();
					}
				}
			}
			finally
			{
				((System.IDisposable)enumerator/*cast due to .constrained prefix*/).Dispose();
			}
			return new string[0];
		}

		[AsyncStateMachine(typeof(_003CReadGoogleSheetData_003Ed__18))]
		[DebuggerStepThrough]
		private static async System.Threading.Tasks.Task<List<string>> ReadGoogleSheetData(string range)
		{
			//IL_0007: Unknown result type (might be due to invalid IL or missing references)
			//IL_000c: Unknown result type (might be due to invalid IL or missing references)
			string apiUrl = $"https://sheets.googleapis.com/v4/spreadsheets/{myInfo.sheetID}/values/{range}?key={API_KEY}";
			List<string> values = new List<string>();
			try
			{
				HttpClient client = new HttpClient();
				try
				{
					client.Timeout = TimeSpan.FromSeconds(10.0);
					HttpResponseMessage response = await client.GetAsync(apiUrl);
					response.EnsureSuccessStatusCode();
					JObject json = JObject.Parse(await response.Content.ReadAsStringAsync());
					System.Collections.Generic.IEnumerator<JToken> enumerator = ((System.Collections.Generic.IEnumerable<JToken>)json["values"]).GetEnumerator();
					try
					{
						while (((System.Collections.IEnumerator)enumerator).MoveNext())
						{
							JToken item = enumerator.Current;
							values.Add(((object)item[(object)0]).ToString().Substring(1, ((object)item[(object)0]).ToString().Length - 2));
						}
					}
					finally
					{
						((System.IDisposable)enumerator)?.Dispose();
					}
				}
				finally
				{
					((System.IDisposable)client)?.Dispose();
				}
			}
			catch (System.Exception ex)
			{
				System.Exception ex2 = ex;
				Console.WriteLine("Lỗi khi lấy dữ liệu từ Google Sheet: " + ex2.Message);
			}
			return values;
		}

		[AsyncStateMachine(typeof(_003CReadGoogleSheetCell_003Ed__19))]
		[DebuggerStepThrough]
		public static async System.Threading.Tasks.Task<string> ReadGoogleSheetCell(string range)
		{
			//IL_0007: Unknown result type (might be due to invalid IL or missing references)
			//IL_000c: Unknown result type (might be due to invalid IL or missing references)
			string apiUrl = $"https://sheets.googleapis.com/v4/spreadsheets/{myInfo.sheetID}/values/{range}?key={API_KEY}";
			try
			{
				HttpClient client = new HttpClient();
				try
				{
					client.Timeout = TimeSpan.FromSeconds(10.0);
					HttpResponseMessage response = await client.GetAsync(apiUrl);
					response.EnsureSuccessStatusCode();
					JObject json = JObject.Parse(await response.Content.ReadAsStringAsync());
					return ((object)json["values"][(object)0][(object)0]).ToString();
				}
				finally
				{
					((System.IDisposable)client)?.Dispose();
				}
			}
			catch (System.Exception ex)
			{
				System.Exception ex2 = ex;
				Console.WriteLine("Lỗi khi lấy ô từ Google Sheet: " + ex2.Message);
				return "Lỗi";
			}
		}

		private static List<int> FindExactMatches(List<string> data, string target)
		{
			List<int> val = new List<int>();
			for (int i = 0; i < data.Count; i++)
			{
				if (data[i].Trim(new char[2] { '[', ']' }) == target)
				{
					val.Add(i + 2);
				}
			}
			return val;
		}

		[AsyncStateMachine(typeof(_003CGetRealTimeFromSheets_003Ed__21))]
		[DebuggerStepThrough]
		public static async System.Threading.Tasks.Task<System.DateTime> GetRealTimeFromSheets()
		{
			//IL_0007: Unknown result type (might be due to invalid IL or missing references)
			//IL_000c: Unknown result type (might be due to invalid IL or missing references)
			try
			{
				System.DateTime myDateTime = default(System.DateTime);
				if (!System.DateTime.TryParseExact(await ReadGoogleSheetCell(RANGE_DATETIME_REAL), "yyyyMMdd", (IFormatProvider)null, (DateTimeStyles)0, ref myDateTime))
				{
					return System.DateTime.MinValue;
				}
				return myDateTime;
			}
			catch (HttpRequestException)
			{
				return System.DateTime.MinValue;
			}
		}
	}

	public class myClass
	{
		public static void debugText(TextBox console, string text)
		{
		}

		public static void debugText(RichTextBox console, string message)
		{
		}
	}

	[STAThread]
	private static void Main()
	{
		Encoding.RegisterProvider(CodePagesEncodingProvider.Instance);
		ApplicationConfiguration.Initialize();
		string text;
		try
		{
			text = Environment.GetCommandLineArgs()[1];
		}
		catch (System.Exception)
		{
			text = "null";
		}
		string text2 = text;
		string text3 = text2;
		switch (_003CPrivateImplementationDetails_003E.ComputeStringHash(text3))
		{
		case 3559873585u:
			if (!(text3 == "BMx_Noti"))
			{
				break;
			}
			AppMain.iconNoti = Environment.GetCommandLineArgs()[2];
			AppMain.titleNoti = Environment.GetCommandLineArgs()[3];
			AppMain.contentNoti = Environment.GetCommandLineArgs()[4];
			Application.Run((Form)(object)new ThongBao());
			return;
		case 3328242933u:
		{
			if (!(text3 == "BMx_Loggin"))
			{
				break;
			}
			Process val = Process.Start(Environment.GetCommandLineArgs()[2], Environment.GetCommandLineArgs()[3]);
			val.WaitForInputIdle();
			System.IntPtr intPtr = AutoControl.FindWindowHandle((string)null, "Adobe Flash Player 20");
			SetWindowPos(intPtr, 0, 20, 20, 1066, 724, 32);
			AutoControl.SendText(intPtr, Environment.GetCommandLineArgs()[4]);
			return;
		}
		case 1508175847u:
			if (!(text3 == "BMx_admin65_CBXT"))
			{
				break;
			}
			Application.Run((Form)(object)new ComboXT());
			return;
		case 1759654185u:
			if (!(text3 == "BMx_admin48_ATC"))
			{
				break;
			}
			Application.Run((Form)(object)new AutoClick());
			return;
		case 578997239u:
			if (!(text3 == "BMx_admin92_TI"))
			{
				break;
			}
			Application.Run((Form)(object)new TienIch());
			return;
		case 1716228517u:
			if (!(text3 == "BMx_admin16_DVCT"))
			{
				break;
			}
			Application.Run((Form)(object)new DoVuiCoThuong());
			return;
		case 644942822u:
		{
			if (!(text3 == "BMx_Daily"))
			{
				break;
			}
			AppMain.nameFlash = Environment.GetCommandLineArgs()[2];
			AppMain.nameUser = Environment.GetCommandLineArgs()[3];
			AppMain.link = Environment.GetCommandLineArgs()[4];
			string text4 = Environment.GetCommandLineArgs()[5];
			string text5 = text4;
			if (!(text5 == "True"))
			{
				if (!(text5 == "CalendarMode"))
				{
					if (text5 == "H_T_C_end")
					{
						AppMain.autoRun = true;
						AppMain.H_T_C_end = true;
					}
					else
					{
						AppMain.autoRun = false;
					}
				}
				else
				{
					AppMain.autoRun = false;
					AppMain.modeCalendar = true;
				}
			}
			else
			{
				AppMain.autoRun = true;
			}
			if (Environment.GetCommandLineArgs()[6] == "True")
			{
				AppMain.onlyTrong = true;
			}
			else
			{
				AppMain.onlyTrong = false;
			}
			Application.Run((Form)(object)new Daily());
			return;
		}
		case 206566721u:
			if (!(text3 == "BMx_BatPet"))
			{
				break;
			}
			AppMain.nameFlash = Environment.GetCommandLineArgs()[2];
			AppMain.nameUser = Environment.GetCommandLineArgs()[3];
			AppMain.link = Environment.GetCommandLineArgs()[4];
			if (Environment.GetCommandLineArgs()[5] == "True")
			{
				AppMain.autoRun = true;
			}
			else
			{
				AppMain.autoRun = false;
			}
			Application.Run((Form)(object)new BatPet());
			return;
		case 1783028508u:
			if (!(text3 == "BMx_TruMa"))
			{
				break;
			}
			AppMain.nameFlash = Environment.GetCommandLineArgs()[2];
			AppMain.nameUser = Environment.GetCommandLineArgs()[3];
			AppMain.link = Environment.GetCommandLineArgs()[4];
			if (Environment.GetCommandLineArgs()[5] == "True")
			{
				AppMain.autoRun = true;
			}
			else
			{
				AppMain.autoRun = false;
			}
			Application.Run((Form)(object)new TruMa());
			return;
		case 3099413174u:
			if (!(text3 == "BMx_HaiTrongCau"))
			{
				break;
			}
			AppMain.nameFlash = Environment.GetCommandLineArgs()[2];
			AppMain.nameUser = Environment.GetCommandLineArgs()[3];
			AppMain.link = Environment.GetCommandLineArgs()[4];
			AppMain.H_T_C_job = Environment.GetCommandLineArgs()[5];
			if (Environment.GetCommandLineArgs()[6] == "True")
			{
				AppMain.autoRun = true;
			}
			else
			{
				AppMain.autoRun = false;
			}
			Application.Run((Form)(object)new HaiTrongCau());
			return;
		case 409924214u:
			if (!(text3 == "BMx_Control"))
			{
				break;
			}
			AppMain.nameFlash = Environment.GetCommandLineArgs()[2];
			AppMain.nameUser = Environment.GetCommandLineArgs()[3];
			AppMain.link = Environment.GetCommandLineArgs()[4];
			Application.Run((Form)(object)new Control());
			return;
		case 2361025752u:
			if (!(text3 == "BMx_HoTroQ200"))
			{
				break;
			}
			AppMain.nameFlash = Environment.GetCommandLineArgs()[2];
			AppMain.nameUser = Environment.GetCommandLineArgs()[3];
			AppMain.link = Environment.GetCommandLineArgs()[4];
			Application.Run((Form)(object)new HoTroQ200());
			return;
		case 1253278260u:
			if (!(text3 == "BMx_NangNo"))
			{
				break;
			}
			AppMain.nameFlash = Environment.GetCommandLineArgs()[2];
			AppMain.nameUser = Environment.GetCommandLineArgs()[3];
			AppMain.link = Environment.GetCommandLineArgs()[4];
			if (Environment.GetCommandLineArgs()[5] == "True")
			{
				AppMain.autoRun = true;
			}
			else
			{
				AppMain.autoRun = false;
			}
			Application.Run((Form)(object)new NangNo());
			return;
		case 4008134849u:
			if (!(text3 == "BMx_Train"))
			{
				break;
			}
			AppMain.nameFlash = Environment.GetCommandLineArgs()[2];
			AppMain.nameUser = Environment.GetCommandLineArgs()[3];
			AppMain.link = Environment.GetCommandLineArgs()[4];
			if (Environment.GetCommandLineArgs()[5] == "True")
			{
				AppMain.autoRun = true;
			}
			else
			{
				AppMain.autoRun = false;
			}
			Application.Run((Form)(object)new Train());
			return;
		case 4061356970u:
			if (!(text3 == "BMx_AutoLogAndRun"))
			{
				break;
			}
			AppMain.nameFlash = Environment.GetCommandLineArgs()[2];
			AppMain.nameUser = Environment.GetCommandLineArgs()[3];
			AppMain.link = Environment.GetCommandLineArgs()[4];
			AppMain.Job = Environment.GetCommandLineArgs()[5];
			AppMain.End = Environment.GetCommandLineArgs()[6];
			AppMain.NhanVat = Environment.GetCommandLineArgs()[7];
			AppMain.Kenh = Environment.GetCommandLineArgs()[8];
			AppMain.VaoLaiGame = Environment.GetCommandLineArgs()[9];
			AppMain.DangNhapLai = Environment.GetCommandLineArgs()[10];
			AppMain.Daily_ThongTin = Environment.GetCommandLineArgs()[11];
			AppMain.Source = Environment.GetCommandLineArgs()[12];
			Application.Run((Form)(object)new AutoLogAndRun());
			return;
		}
		Application.Run((Form)(object)new Login());
	}

	[DllImport("user32.dll")]
	public static extern System.IntPtr SetWindowPos(System.IntPtr hWnd, int hWndInsertAfter, int x, int Y, int cx, int cy, int wFlags);
}
