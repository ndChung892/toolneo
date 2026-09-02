package
{
   import com.qeedoo.MMOGame;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.config.Version;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.rpc.RemoteObj;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.system.Login_Model;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.Slot;
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.controls.Alert;
   import mx.core.Application;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MMO_Game_Main_O91a extends Application
   {
      
      mx_internal static var _MMO_Game_Main_O91a_StylesInit_done:Boolean = false;
      
      private var _embed_css__style_Panels_Fazenda_swf______1179734145:Class;
      
      private var _embed_css___Components_swf_BtnReduceUp_653867284:Class;
      
      private var _embed_css__style_Miscellaneous______swf_______2_1770656047:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e113_1859253091:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf____1_144226947:Class;
      
      private var _embed_css__style_Common_ActivityIcon7_swf_jingxi1_909408975:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf_SettingOver_1183889717:Class;
      
      private var _embed_css__style_Panels_Vow_swf___1_1417649099:Class;
      
      private var _embed_css__style_Common_Components_swf_huangdi2_824549887:Class;
      
      private var _embed_css__style_Common_ActivityIcon7_swf_meirifuli1_191703556:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_button_Lock_up_mc2_1492751790:Class;
      
      private var _embed_css__style_Common_Components_swf_YellowButtonDown_1656088361:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_LockUp_814947485:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_xinfu_861328589:Class;
      
      private var _embed_css___SkillUseSlot_swf_7Disabled_1297831636:Class;
      
      private var _embed_css__style_Common_Components_swf_ZhanLiUp3_579766399:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_ChannelButtonBlueUp_429989409:Class;
      
      private var _embed_css__style_Panels____swf___1_3_53382045:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_HealHPHalfDisabled_1714784218:Class;
      
      private var _embed_css__style_Panels_Misc_swf______1_545048348:Class;
      
      private var _embed_css__style_Common_ActivityIcon6_swf_Elimination_competition1_603230710:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsShowUp_1037296302:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf_aixin2_2068175508:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_shier1_21331599:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf___3_709048028:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_SPBar_1303779517:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf____3_1419199913:Class;
      
      private var _embed_css__style_Maps_WorldMap_Back_jpg_1100806335:Class;
      
      private var _embed_css__style_Common_Components_swf_jinbi4_963862359:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_medal1_985488161:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_tower3_720646447:Class;
      
      private var _embed_css__style_Maps_MapIcons_swf___1_485900790:Class;
      
      private var _embed_css__style_Common_Components_swf_CrystalButtonDown_1724131541:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf____740181703:Class;
      
      private var _embed_css___TargetPortrait_swf___1_1201161199:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_laodonggr_1133860944:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_xinfu1_414031684:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_MoWuShouJi_425909377:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_huanjingxunbao1_1803901921:Class;
      
      private var _embed_css___TargetPortrait_swf___4_1201161196:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons2_swf_richang2_2098451015:Class;
      
      private var _embed_css___Callboard_swf___2_1979826751:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e881_1859245709:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf_AutoBattleDown_1122091844:Class;
      
      private var _embed_css__style_Common_Components_swf_chognzhi4_1404956757:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_huannengshuijin1_1398333036:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf_SettingDown_1183821451:Class;
      
      private var _embed_css__style_Common_Components_swf_Star1_951427086:Class;
      
      private var _embed_css__style_MainStage_LocationBar_swf_LocationIndicator_432413889:Class;
      
      private var _embed_css__style_Common_Components_swf_CheckBoxUnticked_1812981305:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_HealEmptyUp_1920581897:Class;
      
      private var _embed_css__style_Common_Components_swf_dscjlingjiang3_1159601469:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf__4_322320133:Class;
      
      private var _embed_css___CommandPanel_swf_CommandPanel_1217049137:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e552_1859249134:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonBlueOver_111367868:Class;
      
      private var _embed_css__style_Common_Components_swf_goldButtonLight_851067197:Class;
      
      private var _embed_css___SkillUseSlot_swf_5Over_273133638:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_button_use_over_mc2_63268299:Class;
      
      private var _embed_css________swf_SliderTrack_Skin_1955168507:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_ChannelButtonAquaUp_287108099:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_bloodyBattle_931075818:Class;
      
      private var _embed_css__style_Panels___icon_swf_Zuojiantou3_1076280200:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsHideDisabled_2002675196:Class;
      
      private var _embed_css__style_Common_Components_swf_manjiujian1_1369718644:Class;
      
      private var _embed_css__style_Common_Components_swf_CheckBoxTickedOver_1833743502:Class;
      
      private var _embed_css__style_Common_Components_swf___over_1968743897:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_mojin1_187634363:Class;
      
      private var _embed_css__style_Common_Components_swf_xingyunshai3_356412263:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e772_1859254958:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_renqi_855160182:Class;
      
      private var _embed_css___SkillUseSlot_swf_8Up_221774348:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf___4_1191389228:Class;
      
      private var _embed_css___TargetPortrait_swf___3_1230041649:Class;
      
      private var _embed_css__style_Panels________swf_PurpleBtn4_738887501:Class;
      
      private var _embed_css__style_Miscellaneous______old_swf___1209350812:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf___1_1191389239:Class;
      
      private var _embed_css___MiniMap_swf____714503733:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_dati1_808565426:Class;
      
      private var _embed_css__style_Common_Components_swf_huangdi1_824549518:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_molizhixin2_1397544504:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_HealEmptyDown_284841330:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf________3_1558469725:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf_____1_71722262:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_HealMPEmptyDisabled_32512475:Class;
      
      private var _embed_css__style_Common_Components_swf_CanvasBorder_270691325:Class;
      
      private var _embed_css__style_Common_Components_swf_GreenButtonUp_1435476623:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonDisabled_1289213522:Class;
      
      private var _embed_css___TargetPortrait_swf___1_1230090076:Class;
      
      private var _embed_css___SkillUseSlot_swf_5Disabled_887177426:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_EmotionButtonDown_1892803524:Class;
      
      private var _embed_css__style_Common_ActivityIcon7_swf_mengchongzhidou_1620548088:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_button_Discarded_over_mc2_597919425:Class;
      
      private var _embed_css___Components_swf_BtnReduceOver_1137762595:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Yongqizhijian1_238319728:Class;
      
      private var _embed_css___TargetPortrait_swf___4_1230090073:Class;
      
      private var _embed_css___Callboard_swf___3_1988566052:Class;
      
      private var _embed_css__style_Common_Components_swf_DownArrowDown_614660052:Class;
      
      private var _embed_css__style_MainStage_Emotions_swf_BtnEm_mc0_897036822:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_AnnouncementCanvas_355353696:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_task_down_mc_1647096851:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_____L1_1606072746:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf___3_747361712:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e223_1859227203:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_button_Lock_down_mc2_1121308069:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_HealEmptyOver_277037696:Class;
      
      private var _embed_css__style_Common_Components_swf_chongci2_305437236:Class;
      
      private var _embed_css__style_Common_Components_swf_quantujihuo3_835336003:Class;
      
      private var _embed_css___Callboard_swf___2_1980482785:Class;
      
      private var _embed_css__style_Common_Components_swf_tiantianfanli_1232879355:Class;
      
      private var _embed_css___MiniMap_swf____715207264:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_NotAllowPKDisabled_517928958:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_xianshi1_980406110:Class;
      
      private var _embed_css__style_Common_Components_swf_ComboBoxUp_169186567:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_____L4_1606072743:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_InputBox_160442334:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf___2_1206870553:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf___4_308398689:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_Achievement_over_mc_955067765:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf______1212720359:Class;
      
      private var _embed_css__style_Panels___icon_swf_Youjiantou3_1925744589:Class;
      
      private var _embed_css__style_Common_Components_swf_tuohuang2_326648366:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_tower21_1158124567:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Xinnianzhijian2_1344003951:Class;
      
      private var _embed_css___SkillUseSlot_swf_2Over_240283065:Class;
      
      private var _embed_css__style_Common_Components_swf_max2_1038734521:Class;
      
      private var _embed_css___Callboard_swf___1_1979113956:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf________1026284914:Class;
      
      private var _embed_css__style_LoginStage_CHA_CRE_swf_____1_1267423210:Class;
      
      private var _embed_css__style_Common_Components_swf_tuichu1_2041111028:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Mituzhijian4_187510727:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_LoginButtonOver_1267752624:Class;
      
      private var _embed_css___TargetPortrait_swf___2_1211055972:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_task_upbig_mc_1028216562:Class;
      
      private var _embed_css__style_Common_Components_swf_UpArrowDown_1224432593:Class;
      
      private var _embed_css__style_Miscellaneous________swf_____5_1424998865:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Jinrutiaozhan1_410976992:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf___1_312162291:Class;
      
      private var _embed_css__style_Common_Components_swf_InputBox_597776956:Class;
      
      private var _embed_css__style_Miscellaneous________swf_____2_1424998878:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_person_over_mc_1234213109:Class;
      
      private var _embed_css__style_Common_Components_swf_zidongxunbao4_1057047901:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_HuiKuiChouJiang_1521620348:Class;
      
      private var _embed_css__style_Common_Components_swf_zidongxunbao1_1057047918:Class;
      
      private var _embed_css__style_Common_Components_swf_tuichu4_2041111035:Class;
      
      private var _embed_css___Callboard_swf___4_1979113969:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Pkzhengba_1677903691:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e661_1859256013:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_yixianqian_1662462262:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf____1_194162015:Class;
      
      private var _embed_css__style_Common_Components_swf_DragablePanel_221916689:Class;
      
      private var _embed_css__style_Common_Components_swf_CrystalYellowButtonUp_1470023894:Class;
      
      private var _embed_css__style_Miscellaneous________swf_____8_1424998872:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_sijie_858740849:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_ZuanShiShangCheng_2020146945:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_ChannelButtonYellowOver_793581906:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_mijinglixian_854860990:Class;
      
      private var _embed_css__style_Common_Components_swf_DatagridHeader_129121592:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Qishiguangchang1_637889869:Class;
      
      private var _embed_css__style_Common_Components_swf_yanshi1_783495454:Class;
      
      private var _embed_css__style_LoginStage_CHA_CRE_swf_____2_1622969404:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf_____2_71722267:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonOrangeDown_374901286:Class;
      
      private var _embed_css________swf_ScrollBars_trackSkin_1555845111:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Wuyouyuanzheng_862921925:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_sirendinggou1_1920454534:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf_LastRowDown_52693289:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_union_down_mc_43852509:Class;
      
      private var _embed_css__979869417:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf_____3_1187425782:Class;
      
      private var _embed_css__style_Panels_envelope_swf_re1_221501011:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_CharacterYellowUp_970757529:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_ppbg2_1826720366:Class;
      
      private var _embed_css__style_Common_Components_swf_BlueButtonOver_688169793:Class;
      
      private var _embed_css__style_Common_Components_swf_dianjigoumai3_2107071301:Class;
      
      private var _embed_css__style_Common_Components_swf_HTabSelected_573204457:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_XiaLingYing1_1657277511:Class;
      
      private var _embed_css__style_Common_Components_swf_UpArrowDisabled_1622635733:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf_ShowShortcutsOver_1000918763:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_ButtonWrapper_1272556094:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Zhoujiangli4_1340607311:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_duikang1_1324856239:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_baoshijuling_1321859428:Class;
      
      private var _embed_css___TargetPortrait_swf___1_1197648113:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_Contest_up_mc_796346935:Class;
      
      private var _embed_css__style_Common_Components_swf_LeftArrow4_1810752941:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf___2_439915052:Class;
      
      private var _embed_css___Callboard_swf___4_1986998099:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_shenmironglu_1968746720:Class;
      
      private var _embed_css__style_MainStage_LocationBar_swf_ChangeChannelOver_1309548600:Class;
      
      private var _embed_css__style_Panels________swf_OrangeBtn4_602545403:Class;
      
      private var _embed_css__style_Common_Components_swf_LeftArrow1_1810752958:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_DiminishDown_1187235256:Class;
      
      private var _embed_css__style_Common_Components_swf_chaopiao2_458630201:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_shengzhewenzhang1_1824905226:Class;
      
      private var _embed_css__style_Common_Components_swf_LongHideBtnLeftDisabled_1312976964:Class;
      
      private var _embed_css__style_Panels___icon_swf_Shengjijiantou1_1524052346:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf____2_144226946:Class;
      
      private var _embed_css__style_Panels_jxhd_swf_jxhdbg1_1468996445:Class;
      
      private var _embed_css__style_Panels________swf_GreenBtn4_1767741128:Class;
      
      private var _embed_css__style_Panels_Vow_swf___4_1417649104:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_team_down_mc_1275399061:Class;
      
      private var _embed_css___TargetPortrait_swf___4_1197648126:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_ShiJieBei1_988981460:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Jianglizhaohui1_1954266480:Class;
      
      private var _embed_css__style_Panels________swf_GreenBtn1_1767741145:Class;
      
      private var _embed_css__style_Common_Components_swf_yaoshai3_1789674754:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_Contest_over_mc_1575240738:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_ExpBar_1252804643:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_sijie1_21469976:Class;
      
      private var _embed_css__style_Common_Components_swf_ZhanLiUp4_579766396:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Zhoujiangli1_1340607356:Class;
      
      private var _embed_css__style_Common_Components_swf_AchievementPanelB1Over_648876903:Class;
      
      private var _embed_css__style_Panels_Misc_swf______2_545048347:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_medal2_985488160:Class;
      
      private var _embed_css___Callboard_swf___1_1981927986:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_ChatBar_957376656:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonBlueDown_111836942:Class;
      
      private var _embed_css__style_Panels________swf_BackBtn4_1497218788:Class;
      
      private var _embed_css__style_Panels________swf_BackBtn1_1497218789:Class;
      
      private var _embed_css__style_Common_Components_swf_qiandaolingjiang1_270192068:Class;
      
      private var _embed_css__style_Panels___icon_swf_Zuojiantou2_1076279415:Class;
      
      private var _embed_css__style_Common_Components_swf_RightArrow2_1372528608:Class;
      
      private var _embed_css__style_Common_Components_swf_GreenButtonDown_1434805078:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_richang1_1776958986:Class;
      
      private var _embed_css___SkillUseSlot_swf_8Down_270852629:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_tower4_720646448:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Lunhuizhijian2_1994221425:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_xinshou1_314528032:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_LoginButtonDown_1268135646:Class;
      
      private var _embed_css__style_Common_Components_swf_ZhanLiUp1_579767049:Class;
      
      private var _embed_css___Callboard_swf___4_1981927999:Class;
      
      private var _embed_css__style_LoginStage_CHA_CRE_swf_____1898394353:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_qiandao1_219735109:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_team_up_mc_784893718:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf_HideShortcutsDown_1768050432:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_ZuanShiShangCheng1_1638781912:Class;
      
      private var _embed_css__style_Common_newresource_swf_mczdfightbtn2_619445699:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf_____3_71722268:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Baonuzhanhun_1523237698:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_skills_up_mc_80387777:Class;
      
      private var _embed_css__style_Common_Components_swf_TrackUp_1347629729:Class;
      
      private var _embed_css__style_Common_newresource_swf_mczdfightbtn_20415381:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_person_up_mc_1201979762:Class;
      
      private var _embed_css__style_Common_Components_swf_ComboBoxDisabled_846674844:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_team_over_mc_2099375427:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_EarthDisabled_900430249:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Shilianzhidi1_1732559618:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf___1_758359819:Class;
      
      private var _embed_css__style_Panels____swf___5_3_53410513:Class;
      
      private var _embed_css__style_Common_Components_swf_TreasureSlotBG_2114513011:Class;
      
      private var _embed_css__style_Panels___icon_swf_Zuojiantou1_1076280198:Class;
      
      private var _embed_css__style_Common_Components_swf_CloseButtonUp_1172960480:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e6_1857497906:Class;
      
      private var _embed_css________swf_ScrollBars_thumbDownSkin_446138102:Class;
      
      public var hideLoaderLater:Boolean = false;
      
      private var _embed_css__style_LoginStage_CHA_CRE_new_swf___2_1932735912:Class;
      
      private var _embed_css__style_LoginStage_CHA_CRE_swf____pass_19225659:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_SpeakerDown_61066438:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_dianshichengjin1_1709639968:Class;
      
      private var _embed_css__style_Miscellaneous_dot4heiyaoshi_swf_dianjihuo3_2068111991:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_ChooseCharacterTitle_180737831:Class;
      
      private var _embed_css___TargetPortrait_swf___2_1206527340:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e3_1857497923:Class;
      
      private var _embed_css__style_MainStage_fuli_swf_normal_1471258718:Class;
      
      private var _embed_css________swf______923680687:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_union_up_mc_226304270:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf_____1_1190660477:Class;
      
      private var _embed_css__style_Panels________swf_StartBtn1_1866679468:Class;
      
      private var _embed_css__style_Common_Components_swf_xingyunshai4_356412258:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_ChatButtonOver_1110826197:Class;
      
      private var _embed_css__style_Panels________swf_StartBtn4_1866679463:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_xieshousuiyue1_111724801:Class;
      
      private var _embed_css__style_Common_Components_swf_PageNoIndicator_1135125614:Class;
      
      private var _embed_css___SkillUseSlot_swf_2Disabled_369783329:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Tuangoufanli1_1995667583:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Menghuimoli1_228690022:Class;
      
      private var _embed_css__style_Common_Components_swf_kaishi2_2087331756:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_HPBar_1254231858:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Mingyunzhijian2_1596048633:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_bazhounianqing1_753313948:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_SilverBinded_204893712:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_EarthUp_438245898:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Shilianzhidi_373238439:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_putup_1316373347:Class;
      
      private var _embed_css________swf_ScrollBars_thumbIcon_919716352:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e442_1859249678:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Dulayinshi_1877696381:Class;
      
      private var _embed_css___SkillUseSlot_swf_6Up_221776526:Class;
      
      private var _embed_css__style_Common_Components_swf_chognzhi1_1404956838:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_ChannelButtonRedOver_114984823:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_rankingDisabled_985722443:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_putDisabled_1211229348:Class;
      
      private var _embed_css__style_Common_Components_swf_ThumbDown_2057063559:Class;
      
      private var _embed_css__style_Common_Components_swf_AchievementPanelB1Disabled_731169343:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_ClearOver_1527801626:Class;
      
      private var _embed_css__style_Common_Components_swf_VTabUp_1401237595:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf___4_747361715:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_____R1_1606073936:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf________28000983:Class;
      
      private var _embed_css__style_Panels_envelope_swf_guan1_164969467:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_EarthOver_1494495729:Class;
      
      private var _embed_css__style_Common_Components_swf_chongci3_305437237:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_mowuzhixin_1402850713:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_HealMPHalfOver_1610051257:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_PetPortrait_png_1860433212:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_JingJiChang_1957138861:Class;
      
      private var _embed_css__style_Common_Components_swf_BlueButtonUp_815735482:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_baoshijuling1_629689485:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf_shangxin1_1808644056:Class;
      
      private var _embed_css________swf_ScrollBars_thumbUpSkin_917667903:Class;
      
      private var _embed_css__style_MainStage_fuli_swf_disable_198626705:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf_shangxin4_1808644051:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf_____3_1187907286:Class;
      
      private var _embed_css___SkillUseSlot_swf_1Up_221770819:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf_LastRowOver_53694767:Class;
      
      private var _embed_css__style_Common_wbIcon_swf_____2_596606982:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf________3_1557428793:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_HealEmptyDisabled_692905176:Class;
      
      private var _embed_css__style_Panels_jxhd_swf_jxhdgotobtn4_1722896064:Class;
      
      private var _embed_css___TargetPortrait_swf___3_1209451906:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_ChannelButtonAquaOver_214589978:Class;
      
      private var _embed_css___SkillUseSlot_swf_3Over_241467704:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Yongqizhijian2_238319743:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_HealMPFullDisabled_90191293:Class;
      
      private var _embed_css__style_Common_Components_swf_changtiao3_1111613174:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_HelpOver_535659194:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf__1_445936937:Class;
      
      private var _embed_css__style_MainStage_fuli_swf_down_295188889:Class;
      
      private var _embed_css___SkillUseSlot_swf_7Down_269671062:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf___2_312162292:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf___1_759491052:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_ZhanBu1_2054978022:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_KaPai1_1276450622:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_tanxianxunzhang_1761435135:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e332_1859226158:Class;
      
      private var _embed_css__style_Panels_jxhd_swf_jxhdgotobtn1_1722896093:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_____R4_1606073965:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Jinhuazhishu_328353425:Class;
      
      private var _embed_css___SkillUseSlot_swf_9Up_221779531:Class;
      
      private var _embed_css__style_Panels________swf_BlueBtn4_1924823279:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_LoginPanelTitle_356451102:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_person_disabled_mc_712388531:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf____2_194162014:Class;
      
      private var _embed_css__style_Panels____swf___5__1786501980:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_ChannelButtonBlueOver_1380744008:Class;
      
      private var _embed_css___SkillUseSlot_swf_4Over_272017607:Class;
      
      private var _embed_css__style_Common_Components_swf_yanshi2_783495453:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsShowDown_1871146027:Class;
      
      private var _embed_css__style_Common_wbIcon_swf___4_1395951545:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Shuang11choujiang1_1918336510:Class;
      
      private var _embed_css__style_Panels________swf_RedBtn1_1179025253:Class;
      
      private var _embed_css___MiniMap_swf____714678320:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_qizhounianqing_1792410716:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_medal331_915790399:Class;
      
      private var _embed_css__style_Common_Components_swf_BlackButton3_1274957923:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_LoginButtonDisabled_1338206536:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_HealMPHalfDown_1609533015:Class;
      
      private var _embed_css___Callboard_swf___1_1986998102:Class;
      
      private var _embed_css__style_Common_Components_swf_LongHideBtnRightOver_1055260749:Class;
      
      private var _embed_css___MiniMap_swf______157796331:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_qiling1_660795654:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_ShopDisabled_224720469:Class;
      
      private var _embed_css__style_Panels_envelope_swf_re2_221501010:Class;
      
      private var _embed_css__style_Panels_______3_swf_Caidanshang1_375022321:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_EnlargeDisabled_1260602597:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_diaokekongjian_177328619:Class;
      
      private var _embed_css__style_Common_wbIcon_swf_____4_1405602322:Class;
      
      private var _embed_css__style_Common_Components_swf_GreenButtonOver_1435528084:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf___3_439915051:Class;
      
      private var _embed_css__style_Miscellaneous________swf_____11_1433061110:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_HelpDisabled_488273298:Class;
      
      private var _embed_css__style_Common_Components_swf_MinimizeButtonDisabled_1499993947:Class;
      
      private var _embed_css__style_Miscellaneous______swf_______3_1770656046:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_fanpai1_1976659507:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_CharacterRedDown_1556231061:Class;
      
      private var _embed_css__style_Common_Components_swf_ThumbOver_2070377941:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_MouseUp_1499378663:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_friend_up_mc_791598381:Class;
      
      private var _embed_css__style_Common_Components_swf_chaopiao3_458630204:Class;
      
      private var _embed_css__style_LoginStage_CHA_CRE_swf____1892522236:Class;
      
      private var _embed_css__style_Common_Components_swf_dscjlingjiang1_1159601411:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf______1179748065:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_HelpUp_865696947:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf____1_1419199919:Class;
      
      private var _embed_css__style_Panels_envelope_swf_re3_221500929:Class;
      
      private var _embed_css___SkillUseSlot_swf_8Over_271452867:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_xianshi_1320302805:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_ChannelButtonGreenDown_364691977:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_huanlexiaochu_312207597:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf____4_1419199912:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_button_Repair_down_mc2_1958948283:Class;
      
      private var _embed_css__style_Common_ActivityIcon6_swf_chongwudaPK1_688961857:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf_ShowShortcutsDown_996009493:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_DiminishDisabled_2105069918:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf_aixin3_2068175517:Class;
      
      private var _embed_css__style_Panels_Misc_swf______3_545048346:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_ChannelButtonRedDown_115892021:Class;
      
      private var _embed_css___SkillUseSlot_swf_3Down_240875658:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Wuyouyuanzheng1_1009213710:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_medal3_985488163:Class;
      
      private var _embed_css__style_Common_Components_swf_qiandaolingjiang2_270192069:Class;
      
      private var _embed_css___SkillUseSlot_swf_3Up_221768641:Class;
      
      private var _embed_css__style_Miscellaneous_UIHelp_swf_UIHelp_205113004:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_tanxianxunzhang1_110793226:Class;
      
      private var _embed_css__style_Common_Components_swf_CloseButtonDown_1951595749:Class;
      
      private var _embed_css___TargetPortrait_swf___2_1201161198:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_CharacterYellowDown_1096204576:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_huanlexiaochu1_1925886550:Class;
      
      private var _embed_css___MiniMap_swf____714534162:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_duikang_1108433338:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_huangleshiguang_190109357:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_chongwuzhenhun_523060688:Class;
      
      private var _embed_css__style_Maps_WorldMap1_jpg_349752265:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_zhuxue_494832568:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons2_swf_richang3_2098451016:Class;
      
      private var _embed_css___Callboard_swf___3_1979826750:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Huikuishangcheng1_688344671:Class;
      
      private var _embed_css__style_Common_Components_swf_chognzhi2_1404956759:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Jinhuazhishu1_1795664730:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_Speakerover_63350996:Class;
      
      private var _embed_css__style_Common_newresource_swf_mczdfightbtn3_619445696:Class;
      
      private var _embed_css__style_Common_ActivityIcon6_swf_ConsumeNotice1_600093594:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_manjiujian1_410985008:Class;
      
      private var _embed_css__style_Panels___icon_swf_Youjiantou_164879550:Class;
      
      private var _embed_css__style_MainStage_LocationBar_swf_shizhongUp_186253110:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf___2_758359818:Class;
      
      private var _embed_css___SkillUseSlot_swf_10Disabled_1851018068:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e882_1859245710:Class;
      
      private var _embed_css__style_Common_Components_swf_ZhanLiUp2_579767054:Class;
      
      private var _embed_css__style_Panels________swf_PurpleBtn1_738887490:Class;
      
      private var _embed_css________swf_SliderThumb_disabledSkin_197857223:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e553_1859249123:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Jinrutiaozhan2_410977007:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_CharacterPortrait_16857899:Class;
      
      private var _embed_css__style_Common_ActivityIcon6_swf_ConsumeNotice_1889511267:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_MPBar_1299876263:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_ShopOver_460112125:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_____1_779808610:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_EarthDown_1495384707:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_tower11_1158124854:Class;
      
      private var _embed_css__style_Common_ActivityIcon6_swf_huanmotaxiulian_1256412862:Class;
      
      private var _embed_css___Components_swf_BtnAddOver_224685488:Class;
      
      private var _embed_css__style_Panels_______3_swf_Caidanxia1_888383008:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e773_1859254947:Class;
      
      private var _embed_css________swf_SliderHighlight_Skin_1820318516:Class;
      
      private var _embed_css__style_Common_Components_swf_manjiujian2_1369718645:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Baonuzhanhun1_1765556615:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_shenmironglu1_1072134713:Class;
      
      private var _embed_css__style_Common_Components_swf_qiandaolingjiang_327130247:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf_NextRowOver_521233870:Class;
      
      private var _embed_css___TargetPortrait_swf___1_1230041651:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_shrinkagedown_1382996655:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf___2_1191389238:Class;
      
      private var _embed_css___TargetPortrait_swf___4_1230041648:Class;
      
      private var _embed_css__style_Common_Components_swf_LastPageUp_1724292065:Class;
      
      private var _embed_css___SystemShopPanel_swf_____LIMIT_736410460:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_skills_disabled_mc_653527490:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf________1_1558469731:Class;
      
      private var _embed_css__style_Common_ActivityIcon7_swf_zuanshitequan1_1331584370:Class;
      
      private var _embed_css__style_Common_wbIcon_swf______1815365510:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_____1_780047743:Class;
      
      private var _embed_css___Components_swf_BtnReduceDisabled_1286483339:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_button_repair_up_mc2_392924140:Class;
      
      private var _embed_css___TargetPortrait_swf___2_1230090075:Class;
      
      private var _embed_css___Callboard_swf___1_1988566054:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_LevelUpDisabled_419524638:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf________4_1558469724:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_LevelUpUp_1570995201:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_skills_over_mc_910872874:Class;
      
      private var _embed_css__style_Common_Components_swf_Star2_951428479:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Pkzhengba1_895978356:Class;
      
      private var _embed_css___SkillUseSlot_swf_9Over_268440130:Class;
      
      private var _embed_css___Callboard_swf___4_1988566051:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_pet_down_mc_1890657267:Class;
      
      private var _embed_css__style_Common_Components_swf_ZhanBu1_207186558:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf_ShortcutBackground_327127749:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_____L2_1606072745:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e221_1859227213:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf____739948502:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_XingYunZhuanPan_1058705048:Class;
      
      private var _embed_css__style_Common_Components_swf_LongHideBtnRightUp_2028677756:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_button_Resolution_over_mc2_644966570:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_CharacterRedDisabled_1382428485:Class;
      
      private var _embed_css___Callboard_swf___3_1980482784:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_ChooseChannelCanvas_876114597:Class;
      
      private var _embed_css___SkillUseSlot_swf_5Down_272607112:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_wuyou1_467369647:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonOrangeUp_529593279:Class;
      
      private var _embed_css__style_Common_Components_swf_BlackButton4_1274957854:Class;
      
      private var _embed_css__style_Miscellaneous________swf_____3_1424998851:Class;
      
      private var _embed_css__style_Panels___icon_swf_Youjiantou1_1925744591:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_putdown_637353430:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_HealMPHalfUp_51787552:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf___3_1206870560:Class;
      
      private var _embed_css___Callboard_swf___2_1979113955:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Xinnianzhijian3_1344003952:Class;
      
      private var _embed_css__313177394:Class;
      
      private var _embed_css________swf_SliderThumb_upSkin_891122714:Class;
      
      private var _embed_css__style_Common_Components_swf_chongci4_305437242:Class;
      
      private var _embed_css__style_Common_Components_swf_UpArrowUp_1721464140:Class;
      
      private var _embed_css__style_Common_Components_swf_max3_1038734526:Class;
      
      private var _embed_css___TargetPortrait_swf___3_1211055971:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Yongqizhijian3_238319742:Class;
      
      private var _embed_css__style_Common_Components_swf_tuichu2_2041111029:Class;
      
      private var _embed_css__style_Common_ActivityIcon6_swf_moyintuce_1991580968:Class;
      
      private var _embed_css__style_Common_Components_swf_zidongxunbao2_1057047903:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_EnlargeDown_260238069:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_ShopDown_456714575:Class;
      
      private var _embed_css__style_MainStage_LocationBar_swf_ChangeChannelDisabled_282581808:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_bag_up_mc_837243965:Class;
      
      private var _embed_css__style_LoginStage_CHA_CRE_swf_____2_1267423229:Class;
      
      private var _embed_css__style_Miscellaneous________swf_____6_1424998866:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonOrangeOver_380088888:Class;
      
      private var _embed_css__style_MainStage_LocationBar_swf_shizhongOver_2071584959:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_Mouseover_1316896590:Class;
      
      private var _embed_css__style_Miscellaneous________swf_____9_1424998869:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e662_1859256014:Class;
      
      private var _embed_css__style_Common_wbIcon_swf_____3_596606999:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_button_use_down_mc2_196332123:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_AllowPKUp_949681520:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf___2_759491055:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_jilei_849970680:Class;
      
      private var _embed_css___SkillUseSlot_swf____1_545606001:Class;
      
      private var _embed_css__style_Common_Components_swf_heiyaoshi_1010669820:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf__2_445936940:Class;
      
      private var _embed_css__style_Common_Components_swf_StoneButton1_950088773:Class;
      
      private var _embed_css___SkillUseSlot_swf_1Disabled_441516834:Class;
      
      private var _embed_css__style_Common_Components_swf_LastPageOver_1797409060:Class;
      
      private var _embed_css__style_Panels____swf___10_1_451092967:Class;
      
      private var _embed_css__style_LoginStage_CHA_CRE_swf_____3_1622969407:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_AllowPKDown_1280727113:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf____3_194162013:Class;
      
      private var _embed_css__style_Panels_______3_swf_Caidanxia2_888382991:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Ziranzhili1_1254881552:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf_____1_1187425784:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_ppbg3_1826720355:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_ChannelButtonYellowDown_792858944:Class;
      
      private var _embed_css__style_Common_Components_swf_YellowButtonOver_1667677403:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_friend_over_mc_1792582334:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_shrinkageDisabled_888929173:Class;
      
      private var _embed_css__style_Common_Components_swf_AlertBox_421126942:Class;
      
      private var _embed_css__style_Panels_jxhd_swf_jxhdbg2_1468996418:Class;
      
      private var _embed_css__style_Common_Components_swf_dianjigoumai1_2107071303:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_LoginButtonUp_1585670679:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Tuangoufanli_1433722232:Class;
      
      private var _embed_css___SkillUseSlot_swf_10Down_987146366:Class;
      
      private var _embed_css__style_Common_Components_swf_heiyaoshi1_949029287:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsHideDown_2044430334:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_fanpaichuangguan1_911546630:Class;
      
      private var _embed_css__style_Common_Components_swf_LeftArrow2_1810752943:Class;
      
      private var _embed_css__style_Common_Components_swf_dianjigoumai4_2107071306:Class;
      
      private var _embed_css__255506289:Class;
      
      private var _embed_css___TargetPortrait_swf___2_1197648112:Class;
      
      private var _embed_css___SkillUseSlot_swf_6Down_273724183:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e111_1859253101:Class;
      
      private var _embed_css__style_Common_Components_swf_MinimizeButtonUp_1495179334:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_huodong1_375141518:Class;
      
      private var _embed_css__style_Common_wbIcon_swf____1366223417:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_button_Discarded_down_mc2_1810344317:Class;
      
      private var _embed_css__style_Common_Components_swf_CloseButtonDisabled_369549313:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf___4_439915046:Class;
      
      private var _embed_css__style_Panels_______3_swf_Caidanshang2_375022324:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf____739737071:Class;
      
      private var _embed_css__style_Common_Components_swf_CloseButtonOver_2047604631:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_shrinkageup_310607082:Class;
      
      private var _embed_css__882111722:Class;
      
      private var _embed_css__style_Common_Components_swf_jinbi1_963862358:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf___3_1289688183:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_ClearUp_536952815:Class;
      
      private var _embed_css__style_Panels_Vow_swf___2_1417649102:Class;
      
      private var _embed_css__style_Panels________swf_RedBtn3_1179025047:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Heiyaoshizhen_1820006065:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_HealHPHalfOver_1436962850:Class;
      
      private var _embed_css__style_Panels_envelope_swf_kai1_220543795:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Ziranzhili_156476183:Class;
      
      private var _embed_css__style_Common_ActivityIcon6_swf_huanmotaxiulian2_868653238:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_renqi1_52810093:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_MoWuShouJi1_1151760522:Class;
      
      private var _embed_css__style_Common_Components_swf_chaopiao4_458630203:Class;
      
      private var _embed_css__style_Common_Components_swf_LongHideBtnLeftDown_990983014:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf_AutoBattleUp_2146729861:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf______1177527854:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_CreateCharacterCanvas_1321765754:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_ItemBagOver_1640857168:Class;
      
      private var _embed_css__style_Panels________swf_GreenBtn2_1767741146:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_richang_1977192179:Class;
      
      private var _embed_css__style_Panels___icon_swf_Shengjijiantou2_1524052347:Class;
      
      private var _embed_css__style_MainStage_Emotions_swf_CanvasEm_mc1_283394853:Class;
      
      private var _embed_css__style_Common_Components_swf_yaoshai1_1789674760:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf____3_144227057:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Zhoujiangli2_1340607357:Class;
      
      private var _embed_css___SkillUseSlot_swf_2Up_221771650:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_HealMPEmptyOver_2078903715:Class;
      
      private var _embed_css__style_Common_ActivityIcon6_swf_moyintuce2_1538788356:Class;
      
      private var _embed_css__style_Common_Components_swf_yaoshai4_1789674769:Class;
      
      private var _embed_css__style_Panels_Misc_swf______4_545048329:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_mizhen_191735434:Class;
      
      private var _embed_css__style_Panels________swf_BackBtn2_1497218790:Class;
      
      private var _embed_css___Components_swf_BtnAddUp_2030929017:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonGreenOver_878265827:Class;
      
      private var _embed_css__style_Common_Components_swf_CheckBoxUntickedOver_580077275:Class;
      
      private var _embed_css__style_MainStage_LocationBar_swf_ChangeChannelUp_1885286477:Class;
      
      private var _embed_css__style_Common_Components_swf_RightArrow3_1372528609:Class;
      
      private var seted:Boolean = false;
      
      private var _embed_css__style_MainStage_ChatArea_swf_ChannelButtonGreenUp_809884814:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_person_down_mc_2026601123:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf__1_322320128:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf___1_308398614:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf____3_1418934554:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_task_up_mc_1100977150:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Lunhuizhijian3_1994221426:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_EmotionButtonDisabled_461997102:Class;
      
      private var _embed_css___MiniMap_swf_______1032407870:Class;
      
      private var _embed_css__style_Common_Components_swf_lingqu_1020043547:Class;
      
      private var _embed_css___MiniMap_swf____714346264:Class;
      
      private var _embed_css__style_Common_ActivityIcon_huanleixia_swf_Huanleyixia_1107642736:Class;
      
      private var _embed_css__style_Common_Components_swf_qiandaolingjiang3_270192074:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e883_1859245699:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf___1_758261211:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_EmotionButtonUp_148758031:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_button_rpeair_over_mc2_150649313:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_rankingup_241508662:Class;
      
      private var _embed_css__style_Common_Components_swf_ThumbUp_798295820:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf_LastRowUp_1217426294:Class;
      
      private var _embed_css__style_LoginStage_CHA_CRE_swf______2115259660:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_Contest_disabled_mc_687074490:Class;
      
      private var _embed_css__style_Panels___icon_swf_Shengjijiantou_637218987:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf___3_758359813:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_mowuzhixin1_1867254974:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Jinrutiaozhan3_410977006:Class;
      
      private var _embed_css___SystemShopPanel_swf_____HOT_117133902:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e7_1857497911:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_ChannelButtonAquaDown_219953864:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e4_1857497924:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e1_1857497933:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_wawaji_452880682:Class;
      
      private var _embed_css___TargetPortrait_swf___3_1206527339:Class;
      
      private var _embed_css__style_Panels___icon_swf_Zuojiantou_1728371337:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Lunhuizhijian_587579857:Class;
      
      private var _embed_css__style_Common_Components_swf_TrackDisabled_1548151546:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Xinnianzhijian1_1344003870:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_team_upbig_mc_1409262262:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf____740036774:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_CharacterBlueDisabled_1572266848:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_____2_779808611:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_laodonggr1_2083687063:Class;
      
      private var _embed_css__style_LoginStage_CHA_CRE_new_swf___3_1932735929:Class;
      
      public var beActive:Boolean = false;
      
      private var _embed_css__style_Panels_Fazenda_swf_____2_1190660478:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_GroupMemberBox_769715065:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_CharacterRedOver_1556548483:Class;
      
      private var _embed_css___SkillUseSlot_swf_2Down_240734475:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_molizhixin1_1397544497:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_HealHPFullUp_2028167711:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_shang_858780316:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_qizhounianqing1_1642668493:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_XingYunZhuanPan1_1927602529:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_StripeButton_1037616192:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_LockDown_957791038:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_tower31_1158125028:Class;
      
      private var _embed_css__style_Common_Components_swf_kaishi3_2087331757:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e443_1859249667:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_____2_780047736:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf_ShowShortcutsDisabled_1819805443:Class;
      
      private var _embed_css__style_Common_Components_swf_tiantianfanli1_487104864:Class;
      
      private var _embed_css__style_Common_Components_swf_GradientTextArea_1438669621:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Mingyunzhijian3_1596048632:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_HealMPHalfDisabled_158690049:Class;
      
      private var _embed_css__style_Panels________swf_StartBtn2_1866679481:Class;
      
      private var _embed_css__style_Panels_envelope_swf_kai_221494238:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_fanpai_2046143396:Class;
      
      private var _embed_css__style_Common_ActivityIcon6_swf_chongwudaPK_1504031834:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_ChatButtonUp_1286670502:Class;
      
      private var _embed_css__style_LoginStage_CHA_CRE_swf____dis_870795252:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_ItemBagDisabled_1269116856:Class;
      
      private var _embed_css__style_Common_Components_swf_AwardButtonGray_288785619:Class;
      
      private var _embed_css__style_Common_Components_swf_AchievementPanelB1Up_1313236270:Class;
      
      private var _embed_css__style_Common_Components_swf_CrystalButtonDisabled_1982005955:Class;
      
      private var _embed_css__style_Common_Components_swf_ZhanBu2_207186557:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf_shangxin2_1808644049:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_skills_down_mc_413945192:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf___1_748464653:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_ChannelButtonRedUp_622608972:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_AllowPKOver_1280880719:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_friend_down_mc_1678637972:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf_____1_1187907288:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf________1_1557428799:Class;
      
      private var _embed_css__style_Common_Components_swf_TrackOver_559351058:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_ChatButtonDown_1110103235:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonGreenDown_877601297:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_qiling_212357597:Class;
      
      private var _embed_css__style_Common_Components_swf_LongHideBtnRightDisabled_1733797413:Class;
      
      private var _embed_css__style_Common_Components_swf_lingqu1_930888502:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf________4_1557428792:Class;
      
      private var _embed_css__style_Common_Components_swf_lingqu2_930888487:Class;
      
      private var _embed_css__style_Panels_jxhd_swf_jxhdgotobtn2_1722896066:Class;
      
      private var _embed_css___TargetPortrait_swf___1_1209451908:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_button_sorting_up_mc2_1326759489:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Mituzhijian1_187510730:Class;
      
      private var _embed_css__style_LoginStage_CHA_CRE_swf____1892622578:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Yongqizhijian4_238319741:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_EnlargeUp_544827266:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_qiandao_651808964:Class;
      
      private var _embed_css___TargetPortrait_swf___4_1209451905:Class;
      
      private var _embed_css___Callboard_swf___2_1981928001:Class;
      
      private var _embed_css___Components_swf_BtnReduce_630234889:Class;
      
      private var _embed_css__style_Common_Components_swf_changtiao1_1111613180:Class;
      
      private var _embed_css__style_Common_Components_swf_changtiao4_1111613173:Class;
      
      private var _embed_css___SkillUseSlot_swf_4Up_221770496:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_manjiujian_1133173449:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsShowDisabled_1120343311:Class;
      
      private var _embed_css__style_Panels________swf_BlueBtn2_1924823265:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_mijinglixian1_790382983:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_____R2_1606073967:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_zidongfuben1_663514857:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_fuli_883072685:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf___3_312162301:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e333_1859226147:Class;
      
      private var _embed_css__style_Panels_envelope_swf_guan_220513302:Class;
      
      private var _embed_css__1839737291:Class;
      
      private var _embed_css__style_Panels____swf___1__1786507224:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_ZhenFaXiuLian1_1257318028:Class;
      
      private var _embed_css__style_Common_Components_swf_dianjihuo1_848186463:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf__3_445936939:Class;
      
      private var _embed_css__style_Common_Components_swf_goldButtonGray_1143699024:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_task_diasbled_mc_121378849:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_DiminishUp_741962365:Class;
      
      private var _embed_css__style_Common_Components_swf_HTabUp_60689367:Class;
      
      private var _embed_css__style_Panels_______3_swf_Caidanxia3_888382986:Class;
      
      private var _embed_css__style_Common_wbIcon_swf___2_1395951543:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_huannengshuijin_137206691:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_pet_over_mc_1100570245:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_RoleName_1703610974:Class;
      
      private var _embed_css__style_Panels________swf_OrangeBtn1_602545408:Class;
      
      private var _embed_css__150904276:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Heiyaoshizhen1_640346712:Class;
      
      private var _embed_css___SkillUseSlot_swf____2_545606002:Class;
      
      private var _embed_css__style_Panels____swf___10_2_451092968:Class;
      
      private var _embed_css__style_Panels________swf_RedBtn2_1179025252:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_HelpDown_535726660:Class;
      
      private var _embed_css__style_Common_ActivityIcon7_swf_jingxi_942159312:Class;
      
      private var _embed_css__style_Common_Components_swf_StoneButton2_950088778:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_CharacterRedUp_1256798108:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_HealHPHalfUp_1924159163:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_bloodyBattle1_1847681471:Class;
      
      private var _embed_css__style_Common_Components_swf_BlackButton1_1274957921:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_tiantianfanli1_1806435548:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_huanjingxunbao_1750663192:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf_______1477720989:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf___3_759491054:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_zidongfubenxin1_1847490636:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_huodong_2115708485:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf____4_194162012:Class;
      
      private var _embed_css__style_Panels_______3_swf_Caidanshang4_375022286:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf____740043933:Class;
      
      private var _embed_css___SystemShopPanel_swf_____NEW_117129649:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_GoldBinded_195638531:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf_____3_1190660355:Class;
      
      private var _embed_css___Callboard_swf___2_1986998101:Class;
      
      private var _embed_css__style_Common_wbIcon_swf_____2_1405602324:Class;
      
      private var _embed_css__style_Common_Components_swf_HTabOver_1101572828:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_HealHPFullDown_288365720:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf_SettingDisabled_2012671843:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Chongwutianfu_936535465:Class;
      
      private var _embed_css__style_Miscellaneous______swf_______1_1770656048:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Jubaopen_677858251:Class;
      
      private var _embed_css__style_Miscellaneous________swf_____12_1433061115:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Jianglizhaohui_1432535913:Class;
      
      private var _embed_css__style_MainStage_Emotions_swf_BtnEm_mc1_897037031:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf___1_709048034:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_rankingDown_1504797521:Class;
      
      private var _embed_css__style_Panels_______3_swf_Caidanshang3_375022323:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsHideUp_1217161051:Class;
      
      private var _embed_css__style_Panels____swf___10__66003804:Class;
      
      private var _embed_css__style_Common_Components_swf_DownArrowOver_615644714:Class;
      
      private var _embed_css__style_Common_Components_swf_CheckBoxTicked_502798062:Class;
      
      private var _embed_css__style_Common_Components_swf_jinbi2_963862357:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf_aixin1_2068175507:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Shuang11choujiang_1153518709:Class;
      
      private var _embed_css__style_Miscellaneous______swf_______4_1770656045:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_JingJiChang1_778113814:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_tower1_720646441:Class;
      
      private var _embed_css__style_Common_Components_swf_HTabDisabled_390008780:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf____2_1419199918:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_EmotionButtonOver_1893255942:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Kuafujingji_1965641964:Class;
      
      private var _embed_css__style_Panels_jxhd_swf_jxhditem_1943955624:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf____4_144227056:Class;
      
      private var _embed_css__style_Common_Components_swf_MinimizeButtonDown_1910027859:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_bazhounianqing_1698756115:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_chongwuzhenhun1_276402377:Class;
      
      private var _embed_css__style_Common_Components_swf_ComboBoxDown_2000061902:Class;
      
      private var _embed_css__style_Common_Components_swf_DownArrowDisabled_264037054:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf_aixin4_2068175518:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_ZhenFaXiuLian_1249751101:Class;
      
      private var _embed_css__style_Common_ActivityIcon6_swf_kexunkecheng_860266767:Class;
      
      private var _embed_css__style_MainStage_fuli_swf_over_294068619:Class;
      
      private var _embed_css__style_Common_Components_swf_YellowButtonDisabled_655016957:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons2_swf_richang1_2098451002:Class;
      
      private var _embed_css__style_Common_ActivityIcon7_swf_meirifuli_635431907:Class;
      
      private var _embed_css__style_Common_Components_swf_MinimizeButtonOver_1910343997:Class;
      
      private var _embed_css__style_Common_Components_swf_TrackDown_559821416:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf_HideShortcutsOver_1768535062:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_shier_858771848:Class;
      
      private var _embed_css___TargetPortrait_swf___3_1201161197:Class;
      
      private var _embed_css___Callboard_swf___1_1979826752:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_MouseDisabled_1694705722:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_NotAllowPKUp_766845149:Class;
      
      private var _embed_css___Callboard_swf___4_1979826749:Class;
      
      private var _embed_css__style_Common_ActivityIcon7_swf_mengchongzhidou2_491252280:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_fuli1_811504348:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_button_Lock_over_mc2_1802724953:Class;
      
      private var _embed_css__83754981:Class;
      
      private var _embed_css__style_Common_Components_swf_chognzhi3_1404956756:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Dulayinshi1_529708212:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons2_swf_richang4_2098451013:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf__2_322320135:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_AvatarCanvas_1566019058:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Mingyunzhijian1_1596048586:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf_NextRowDisabled_1052896118:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_HealMPFullUp_21381860:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf___2_758261210:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_NotAllowPKOver_2056330966:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf____738296924:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Xiuluozhanchang_1609361561:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Qishiguangchang_2000497884:Class;
      
      private var _embed_css___Components_swf_BtnAdd_1906420468:Class;
      
      private var _embed_css__style_Panels________swf_PurpleBtn2_738887503:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_HealMPFullOver_1302624811:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_medal221_915791711:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_mizhen1_1954974355:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Mingyunzhijian4_1596048583:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_tiantianfanli_18293933:Class;
      
      private var _embed_css________swf_ScrollBars_thumbOverSkin_417212408:Class;
      
      private var _embed_css__style_Common_Components_swf_dscjlingjiang2_1159601470:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf_AutoBattleOver_1117182126:Class;
      
      private var _embed__font_GameNumber_medium_normal_1311999343:Class;
      
      private var _embed_css__style_Common_ActivityIcon7_swf_zuanshitequan_1551894165:Class;
      
      private var _embed_css__style_Common_Components_swf_xuanzhongnew_730628817:Class;
      
      private var _embed_css__style_Common_wbIcon_swf_____4_596607000:Class;
      
      private var _embed_css__style_Common_Components_swf_xingyunshai1_356412261:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_ItemBagUp_992993095:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Jinrutiaozhan4_410977005:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_zidongfubenxin_743537547:Class;
      
      private var _embed_css__style_Common_Components_swf_NextPageUp_1510074248:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_button_sorting_down_mc2_153195258:Class;
      
      private var _embed_css__style_Common_Components_swf_CloseBtnOver_2043824551:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_Tray_1269799111:Class;
      
      private var _embed_css___MiniMap_swf______149664042:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_wawaji1_2045305139:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_ClearDisabled_1399442162:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_diaokekongjian2_1237286243:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf____740080972:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_shrinkageover_1383147997:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e771_1859254957:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_LevelUpDown_430219912:Class;
      
      private var _embed_css___SkillUseSlot_swf_4Down_242057225:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_ClearDown_1528000092:Class;
      
      private var _embed_css___TargetPortrait_swf___2_1230041650:Class;
      
      private var _embed_css__style_Common_Components_swf_manjiujian3_1369718650:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_shang1_20053875:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf___3_1191389237:Class;
      
      private var _embed_css__style_Common_newresource_swf_mczdfightbtn4_619445745:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf________2_1558469730:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_Achievement_disable_mc_1456016513:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_____3_779808620:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf_HideShortcutsUp_832818249:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e551_1859249133:Class;
      
      private var _embed_css__style_Common_Components_swf_CrystalButtonOver_1724928811:Class;
      
      private var _embed_css__style_Miscellaneous_icon_ICON_QUEST_STATE_4_png_746277926:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_xinshou_1278867431:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_____3_780047737:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_HuiKuiChouJiang1_1234343035:Class;
      
      private var _embed_css__style_Common_Components_swf_quantujihuo1_835336001:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_ZhanBu_1377162429:Class;
      
      private var _embed_css___MiniMap_swf____714380231:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf___1_747361718:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf___1_1206870538:Class;
      
      private var _embed_css__style_Common_Components_swf_CrystalButtonUp_570620126:Class;
      
      private var _embed_css___TargetPortrait_swf___3_1230090074:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_ShiJieBei_1222600917:Class;
      
      private var _embed_css___Callboard_swf___2_1988566053:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_ChannelButtonGreenOver_356968359:Class;
      
      private var _embed_css___Callboard_swf___1_1980482770:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_NotAllowPKDown_2059958028:Class;
      
      private var _embed_css__style_Common_Components_swf_tiantianfanli2_487104863:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_ChannelButtonDisabled_231044682:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_button_Resolution_up_mc2_1396255603:Class;
      
      private var _embed_css___SkillUseSlot_swf_9Down_267848084:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_____L3_1606072744:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_MouseDown_1314472872:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_bag_down_mc_208334308:Class;
      
      private var _embed_css__style_Common_Components_swf_VTabDisabled_1802366730:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Xinnianzhijian4_1344003937:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_ppbg_1858834726:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf___2_308398695:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf_SettingBg_886543000:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_ExchangePoint_1073340476:Class;
      
      private var _embed_css__style_Common_Components_swf_qiandaojinkuang_197931225:Class;
      
      private var _embed_css___Callboard_swf___4_1980482783:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e222_1859227214:Class;
      
      private var _embed_css__style_Miscellaneous________swf_____4_1424998852:Class;
      
      private var _embed_css__style_Common_Components_swf_max4_1038734511:Class;
      
      private var _embed_css__style_Common_Components_swf_max1_1038734520:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_yixianqian1_1370280659:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_Contest_down_mc_2098185008:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_union_over_mc_1002013835:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf___2_748464652:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf___4_1206870559:Class;
      
      private var _embed_css___TargetPortrait_swf___1_1211055973:Class;
      
      private var _embed_css__style_Common_Components_swf_lingqu3_930888484:Class;
      
      private var _embed_css___Callboard_swf___3_1979113954:Class;
      
      private var _embed_css__style_Panels___icon_swf_Youjiantou2_1925744590:Class;
      
      private var _embed_css__style_Miscellaneous________swf_____1_1424998877:Class;
      
      private var _embed_css___SkillUseSlot_swf_1Down_243744140:Class;
      
      private var _embed_css___TargetPortrait_swf___4_1211055970:Class;
      
      private var _embed_css__style_Common_Components_swf_AwardButtonLight_1845747910:Class;
      
      private var _embed_css__style_Common_Components_swf_zidongxunbao3_1057047900:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf_LastRowDisabled_1657741319:Class;
      
      private var _embed_css__style_Common_Components_swf_DownArrowUp_1117353629:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e663_1859256003:Class;
      
      private var _embed_css__style_Common_Components_swf_dscjlingjiang_1884132354:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_HealHPFullDisabled_1540029118:Class;
      
      private var _embed_css__style_Common_Components_swf_tuichu3_2041111034:Class;
      
      private var _embed_css__style_LoginStage_CHA_CRE_new_swf____1928903862:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Huikuishangcheng_116025802:Class;
      
      private var _embed_css__style_Miscellaneous________swf_____7_1424998871:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_sirendinggou_520866737:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_EnlargeOver_264998819:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_jilei1_1891256575:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Chongwutianfu1_2022478446:Class;
      
      private var _embed_css__style_LoginStage_CHA_CRE_swf_____1_1622969405:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf___4_312162302:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Kuafujingji1_1104943797:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonGreenUp_1907031894:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf_SettingUp_886546178:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf__4_445936934:Class;
      
      private var _embed_css__style_LoginStage_CHA_CRE_swf_____4_1622969406:Class;
      
      private var _embed_css__style_Panels________swf_OrangeBtn2_602545405:Class;
      
      private var _embed_css__style_Panels_______3_swf_Caidanxia4_888382985:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Mituzhijian2_187510777:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_HealHPFullOver_287913094:Class;
      
      private var _embed_css___SkillUseSlot_swf____3_545606003:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_button_Resolution_down_mc2_2010629188:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_dati_883970487:Class;
      
      private var _embed_css__style_Common_Components_swf_StoneButton3_950088779:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf_NextRowUp_1680351899:Class;
      
      private var _embed_css__style_Common_Components_swf_SkillBoxDisabled_734603153:Class;
      
      private var _embed_css__style_Common_Components_swf_dianjigoumai2_2107071300:Class;
      
      private var _embed_css__style_Common_Components_swf_chaopiao1_458630186:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_button_Discarded_up_mc2_1437533958:Class;
      
      private var _embed_css___SkillUseSlot_swf_10Up_222509813:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_ChatButtonDisabled_8837955:Class;
      
      private var _embed_css__style_Panels________swf_BlueBtn1_1924823060:Class;
      
      private var _embed_css__style_Common_Components_swf_LeftArrow3_1810752940:Class;
      
      private var _embed_css__style_Common_Components_swf_TitleStrip_824463423:Class;
      
      private var _embed_css__style_Panels____swf___10_3_451092985:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_ChannelButtonBlueDown_1388010666:Class;
      
      private var _embed_css___Components_swf_BtnAddDown_223823282:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf_____2_1187425781:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e112_1859253102:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf___2_709048029:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_shengzhewenzhang_376657919:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf_HideShortcutsDisabled_439506158:Class;
      
      private var _embed_css__style_Panels________swf_GreenBtn3_1767741127:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_bag_disabled_mc_1909961914:Class;
      
      private var _embed_css___SkillUseSlot_swf_7Up_221773517:Class;
      
      private var _embed_css________swf_SliderThumb_downSkin_1360380893:Class;
      
      private var _embed_css__style_Panels_Vow_swf___3_1417649101:Class;
      
      private var _embed_css__style_Panels________swf_RedBtn4_1179025046:Class;
      
      private var _embed_css___SkillUseSlot_swf_6Disabled_1189621293:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_shopup_29081098:Class;
      
      private var _embed_css___TargetPortrait_swf___3_1197648127:Class;
      
      private var _embed_css__style_Common_Components_swf_ThumbDisabled_166392915:Class;
      
      private var _embed_css___Components_swf_BtnReduceDown_1141365045:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_medal0_985488166:Class;
      
      private var _embed_css__style_Panels___icon_swf_Shengjijiantou3_1524052348:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_LoginPanel_135241212:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_task_over_mc_1123039579:Class;
      
      private var _embed_css__style_Common_Components_swf_yaoshai2_1789674759:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_ButtonBackground_947845177:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf___4_1289688184:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_AllowPKDisabled_753707929:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_pet_up_mc_992183262:Class;
      
      private var _embed_css___SkillUseSlot_swf_6Over_273274821:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_HealHPHalfDown_1436899380:Class;
      
      private var _embed_css__style_Panels________swf_BackBtn3_1497218787:Class;
      
      private var _embed_css__style_Common_Components_swf_jinbi3_963862360:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Zhoujiangli3_1340607358:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_tower2_720646442:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Jubaopen2_1949606899:Class;
      
      private var _embed_css__style_Common_Components_swf_ComboBoxOver_1999997964:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf___2_1289688458:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_wuyou_862825640:Class;
      
      private var _embed_css__style_LoginStage_CHA_CRE_swf_title_1970285253:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_LockDisabled_308126660:Class;
      
      private var _embed_css__style_Common_Components_swf_RightArrow1_1372528611:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf____1_1418934552:Class;
      
      private var _embed_css___SkillUseSlot_swf_5Up_221775695:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf____4_1418934549:Class;
      
      private var _embed_css__style_Common_ActivityIcon6_swf_Elimination_competition_1661470637:Class;
      
      private var _embed_css________swf________2127118710:Class;
      
      private var _embed_css__style_Common_Components_swf_NextPageOver_2104711855:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_fanpaichuangguan_2088482767:Class;
      
      private var _embed_css___SkillUseSlot_swf_9Disabled_64124118:Class;
      
      private var _embed_css__style_Common_Components_swf_RightArrow4_1372528614:Class;
      
      private var _embed_css__style_Panels____swf___1_1_53382043:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Lunhuizhijian4_1994221427:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_button_sorting_over_mc2_1599354880:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Lunhuizhijian1_1994221440:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_Achievement_down_mc_519401693:Class;
      
      private var _embed_css__style_Common_Components_swf_CrystalYellowButtonOver_1774553585:Class;
      
      private var _embed_css__style_Panels____swf___5_1_53410463:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e5_1857497905:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf___3_758261205:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_XiaLingYing_270040958:Class;
      
      private var _embed_css__style_Common_Components_swf_CloseBtnDown_2044084641:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf__3_322320134:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_Achievement_up_mc_1009118450:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_KaPai_818999015:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_mojin_851349444:Class;
      
      private var _embed_css___SkillUseSlot_swf_3Disabled_2120884960:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Xiuluozhanchang1_1917926752:Class;
      
      private var _embed_css__style_Common_wbEnterImage_png_599238823:Class;
      
      private var _embed_css___Components_swf_BtnAddDisabled_277323864:Class;
      
      private var _embed_css__style_LoginStage_CHA_CRE_new_swf___1_1932735915:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_bag_over_mc_1031107410:Class;
      
      private var _embed_css__style_Miscellaneous_dot4heiyaoshi_swf_dianjihuo2_2068111984:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_HealMPEmptyDown_2079626677:Class;
      
      private var _embed_css___MiniMap_swf____714404362:Class;
      
      private var _embed_css__style_Common_Components_swf_SkillBox_1333852635:Class;
      
      private var _embed_css__style_Common_Components_swf_VTabSelected_843756645:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_LockOver_957330220:Class;
      
      private var _embed_css___TargetPortrait_swf___1_1206527341:Class;
      
      private var _embed_css__style_Common_Components_swf_VTabOver_1858401998:Class;
      
      private var _embed_css__style_Common_Components_swf_BlueButtonDown_692038535:Class;
      
      private var _embed_css___TargetPortrait_swf___4_1206527338:Class;
      
      private var _embed_css__style_Common_Components_swf_xingyunshai2_356412264:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_ChannelButtonYellowUp_1371439771:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e8_1857497912:Class;
      
      private var _embed_css__style_Common_Components_swf_YellowButtonUp_177483940:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e2_1857497934:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_HealMPEmptyUp_504888444:Class;
      
      private var _embed_css__style_Panels________swf_PurpleBtn3_738887504:Class;
      
      private var _embed_css___SkillUseSlot_swf_8Disabled_1905256405:Class;
      
      private var _embed_css___SkillPromptCanvas_swf_________21364270:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_medal111_915784575:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf_DiminishOver_1192598630:Class;
      
      private var _embed_css__style_Common_Components_swf_kaishi1_2087331759:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf_NextRowDown_520908260:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_xieshousuiyue_1650775048:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_team_disabled_mc_2129318187:Class;
      
      private var _embed_css__style_LoginStage_CHA_CRE_new_swf___4_1932735934:Class;
      
      private var _embed_css__style_Common_Components_swf_ItemSlot_138201044:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_dianshichengjin_1931390951:Class;
      
      private var _embed_css__style_Common_Components_swf_goldButton_1134589491:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_____4_779808621:Class;
      
      private var _embed_css__981587384:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_Tray2_807253389:Class;
      
      private var _embed_css__style_Panels________swf_StartBtn3_1866679482:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_HealMPFullDown_1302536829:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf___2_747361713:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_zhuxue1_666110543:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_CharacterBlueUp_285706945:Class;
      
      private var _embed_css__style_Common_Components_swf_tiantianfanli3_487104858:Class;
      
      private var _embed_css__style_Common_Components_swf_kaishi4_2087331762:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_____4_780047738:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_LevelUpOver_430151066:Class;
      
      private var _embed_css__style_Common_Components_swf_quantujihuo2_835336004:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_CharacterBlueOver_366319544:Class;
      
      private var _embed_css__style_Common_Components_swf_chongci1_305437239:Class;
      
      private var _embed_css__style_Common_Components_swf_AwardButton_1840383938:Class;
      
      private var _embed_css__style_Panels_Misc_swf_renrendou_1735379633:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e441_1859249677:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf_ShowShortcutsUp_2094111778:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_SpeakerUp_1152530611:Class;
      
      private var _embed_css__style_LoginStage_CHA_CRE_swf____nor_870781247:Class;
      
      private var _embed_css___SkillUseSlot_swf_1Over_244344378:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_friend_disabled_mc_876283478:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_putover_620763652:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_button_use_up_mc2_604626604:Class;
      
      private var _embed_css__style_LoginStage_CHA_CRE_swf____down_50142282:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_Menghuimoli_1066366673:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsHideOver_2031263724:Class;
      
      private var _embed_css__style_Common_ActivityIcon6_swf_texunkecheng2_1173796508:Class;
      
      private var _embed_css__style_Common_Components_swf___up_1092641808:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf________2_1557428798:Class;
      
      private var _embed_css__style_Panels____swf___1_2_53382044:Class;
      
      private var _embed_css__style_MainStage_SystemBarButtons_swf_button_union_disabled_mc_2025255629:Class;
      
      private var _embed_css___SkillUseSlot_swf_4Disabled_581743569:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf___3_308398696:Class;
      
      private var _embed_css__style_Common_Components_swf_tuohuang1_326648371:Class;
      
      private var _embed_css__style_MainStage_ChatArea_swf___1_Lock_1412462800:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_zidongfuben_1184779728:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf_____2_1187907285:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_rankingover_1505984515:Class;
      
      private var _embed_css__style_Panels____swf___5_2_53410464:Class;
      
      private var _embed_css__style_Miscellaneous_____________swf_shangxin3_1808644050:Class;
      
      private var _embed_css___SystemShopPanel_swf_____SALE_31953962:Class;
      
      private var _embed_css__style_Panels_Fazenda_swf___3_748464655:Class;
      
      private var _embed_css___TargetPortrait_swf___2_1209451907:Class;
      
      private var _embed_css__style_Panels_jxhd_swf_jxhdgotobtn3_1722896067:Class;
      
      private var _embed_css__style_Maps_MapIcons_swf___2_485900679:Class;
      
      private var _embed_css__style_Common_Components_swf_changtiao2_1111613179:Class;
      
      private var _embed_css__style_MainStage_LocationBar_swf_ChangeChannelDown_1309753194:Class;
      
      private var _embed_css___Callboard_swf___3_1981928000:Class;
      
      private var _embed_css__style_Common_Components_swf_CloseBtnDisabled_1854343809:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_CharacterBlueDown_366374822:Class;
      
      private var _embed_css___SkillUseSlot_swf_10Over_986886508:Class;
      
      private var _embed_css__style_Panels________swf_BlueBtn3_1924823266:Class;
      
      private var _embed_css__style_Common_Components_swf_dianjihuo_520281012:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonBlueUp_1701921739:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_____R3_1606073966:Class;
      
      private var _embed_css__style_Panels_diaoke_swf_e331_1859226157:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsShowOver_1871266841:Class;
      
      private var _embed_css__style_Common_Components_swf_UpArrowOver_1223442051:Class;
      
      private var _embed_css__style_Common_Components_swf_LongHideBtnRightDown_1042274431:Class;
      
      private var _embed_css__style_MainStage_TopRightButtonTray_swf_SpeakerDisabled_1514374956:Class;
      
      private var _embed_css__style_Common_Components_swf_CloseBtnUp_2028984210:Class;
      
      private var _embed_css__style_Panels_BagPanel_swf_____1073924059:Class;
      
      private var _embed_css__style_Common_wbIcon_swf___3_1395951544:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_CharacterYellowDisabled_202395718:Class;
      
      private var _embed_css________swf_SliderThumb_overSkin_1383066641:Class;
      
      private var _embed_css__style_Common_Components_swf_LongHideBtnLeftUp_1355031713:Class;
      
      private var _embed_css__style_Common_ActivityIcon_huanleixia_swf_Huanleyixia1_1960593129:Class;
      
      private var _embed_css__style_Panels_trialsPanel_swf_Mituzhijian3_187510776:Class;
      
      private var _embed_css___SkillUseSlot_swf_7Over_270263108:Class;
      
      private var _embed_css__style_MainStage_ShortcutCanvas_swf___1_439915049:Class;
      
      private var _embed_css__style_Common_Components_swf_BlackButton2_1274957924:Class;
      
      private var _embed_css__style_Panels________swf_OrangeBtn3_602545406:Class;
      
      private var _embed_css__style_Common_wbIcon_swf______791312916:Class;
      
      private var _embed_css___SkillUseSlot_swf____4_545606004:Class;
      
      private var _embed_css__style_LoginStage_LoginStage_swf_CharacterYellowOver_1096800622:Class;
      
      private var _embed_css__style_MainStage_CharInfo_swf_ItemBagDown_1641190942:Class;
      
      private var _embed_css__style_Miscellaneous________swf_____10_1433061109:Class;
      
      private var _embed_css__style_Common_Components_swf_StoneButton4_950088776:Class;
      
      private var _embed_css__style_Common_wbIcon_swf_____3_1405602323:Class;
      
      private var _embed_css___Callboard_swf___3_1986998100:Class;
      
      private var _embed_css__style_Common_Components_swf_CrystalYellowButtonDown_1774235703:Class;
      
      private var _embed_css__style_Common_ActivityIcon_swf_huangleshiguang1_1935161366:Class;
      
      private var _embed_css__style_Common_Components_swf_LongHideBtnLeftOver_995637348:Class;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _embed_css__style_Common_Components_swf_AchievementPanelB1Down_648998497:Class;
      
      private var _embed_css__style_Common_Components_swf_PageNoIndicator1_1021391603:Class;
      
      public function MMO_Game_Main_O91a()
      {
         _documentDescriptor_ = new UIComponentDescriptor({"type":Application});
         _embed__font_GameNumber_medium_normal_1311999343 = MMO_Game_Main_O91a__embed__font_GameNumber_medium_normal_1311999343;
         _embed_css__150904276 = MMO_Game_Main_O91a__embed_css__150904276;
         _embed_css__1839737291 = MMO_Game_Main_O91a__embed_css__1839737291;
         _embed_css__255506289 = MMO_Game_Main_O91a__embed_css__255506289;
         _embed_css__313177394 = MMO_Game_Main_O91a__embed_css__313177394;
         _embed_css__83754981 = MMO_Game_Main_O91a__embed_css__83754981;
         _embed_css__882111722 = MMO_Game_Main_O91a__embed_css__882111722;
         _embed_css__979869417 = MMO_Game_Main_O91a__embed_css__979869417;
         _embed_css__981587384 = MMO_Game_Main_O91a__embed_css__981587384;
         _embed_css___Callboard_swf___1_1979113956 = MMO_Game_Main_O91a__embed_css___Callboard_swf___1_1979113956;
         _embed_css___Callboard_swf___1_1979826752 = MMO_Game_Main_O91a__embed_css___Callboard_swf___1_1979826752;
         _embed_css___Callboard_swf___1_1980482770 = MMO_Game_Main_O91a__embed_css___Callboard_swf___1_1980482770;
         _embed_css___Callboard_swf___1_1981927986 = MMO_Game_Main_O91a__embed_css___Callboard_swf___1_1981927986;
         _embed_css___Callboard_swf___1_1986998102 = MMO_Game_Main_O91a__embed_css___Callboard_swf___1_1986998102;
         _embed_css___Callboard_swf___1_1988566054 = MMO_Game_Main_O91a__embed_css___Callboard_swf___1_1988566054;
         _embed_css___Callboard_swf___2_1979113955 = MMO_Game_Main_O91a__embed_css___Callboard_swf___2_1979113955;
         _embed_css___Callboard_swf___2_1979826751 = MMO_Game_Main_O91a__embed_css___Callboard_swf___2_1979826751;
         _embed_css___Callboard_swf___2_1980482785 = MMO_Game_Main_O91a__embed_css___Callboard_swf___2_1980482785;
         _embed_css___Callboard_swf___2_1981928001 = MMO_Game_Main_O91a__embed_css___Callboard_swf___2_1981928001;
         _embed_css___Callboard_swf___2_1986998101 = MMO_Game_Main_O91a__embed_css___Callboard_swf___2_1986998101;
         _embed_css___Callboard_swf___2_1988566053 = MMO_Game_Main_O91a__embed_css___Callboard_swf___2_1988566053;
         _embed_css___Callboard_swf___3_1979113954 = MMO_Game_Main_O91a__embed_css___Callboard_swf___3_1979113954;
         _embed_css___Callboard_swf___3_1979826750 = MMO_Game_Main_O91a__embed_css___Callboard_swf___3_1979826750;
         _embed_css___Callboard_swf___3_1980482784 = MMO_Game_Main_O91a__embed_css___Callboard_swf___3_1980482784;
         _embed_css___Callboard_swf___3_1981928000 = MMO_Game_Main_O91a__embed_css___Callboard_swf___3_1981928000;
         _embed_css___Callboard_swf___3_1986998100 = MMO_Game_Main_O91a__embed_css___Callboard_swf___3_1986998100;
         _embed_css___Callboard_swf___3_1988566052 = MMO_Game_Main_O91a__embed_css___Callboard_swf___3_1988566052;
         _embed_css___Callboard_swf___4_1979113969 = MMO_Game_Main_O91a__embed_css___Callboard_swf___4_1979113969;
         _embed_css___Callboard_swf___4_1979826749 = MMO_Game_Main_O91a__embed_css___Callboard_swf___4_1979826749;
         _embed_css___Callboard_swf___4_1980482783 = MMO_Game_Main_O91a__embed_css___Callboard_swf___4_1980482783;
         _embed_css___Callboard_swf___4_1981927999 = MMO_Game_Main_O91a__embed_css___Callboard_swf___4_1981927999;
         _embed_css___Callboard_swf___4_1986998099 = MMO_Game_Main_O91a__embed_css___Callboard_swf___4_1986998099;
         _embed_css___Callboard_swf___4_1988566051 = MMO_Game_Main_O91a__embed_css___Callboard_swf___4_1988566051;
         _embed_css___CommandPanel_swf_CommandPanel_1217049137 = MMO_Game_Main_O91a__embed_css___CommandPanel_swf_CommandPanel_1217049137;
         _embed_css___Components_swf_BtnAddDisabled_277323864 = MMO_Game_Main_O91a__embed_css___Components_swf_BtnAddDisabled_277323864;
         _embed_css___Components_swf_BtnAddDown_223823282 = MMO_Game_Main_O91a__embed_css___Components_swf_BtnAddDown_223823282;
         _embed_css___Components_swf_BtnAddOver_224685488 = MMO_Game_Main_O91a__embed_css___Components_swf_BtnAddOver_224685488;
         _embed_css___Components_swf_BtnAddUp_2030929017 = MMO_Game_Main_O91a__embed_css___Components_swf_BtnAddUp_2030929017;
         _embed_css___Components_swf_BtnAdd_1906420468 = MMO_Game_Main_O91a__embed_css___Components_swf_BtnAdd_1906420468;
         _embed_css___Components_swf_BtnReduceDisabled_1286483339 = MMO_Game_Main_O91a__embed_css___Components_swf_BtnReduceDisabled_1286483339;
         _embed_css___Components_swf_BtnReduceDown_1141365045 = MMO_Game_Main_O91a__embed_css___Components_swf_BtnReduceDown_1141365045;
         _embed_css___Components_swf_BtnReduceOver_1137762595 = MMO_Game_Main_O91a__embed_css___Components_swf_BtnReduceOver_1137762595;
         _embed_css___Components_swf_BtnReduceUp_653867284 = MMO_Game_Main_O91a__embed_css___Components_swf_BtnReduceUp_653867284;
         _embed_css___Components_swf_BtnReduce_630234889 = MMO_Game_Main_O91a__embed_css___Components_swf_BtnReduce_630234889;
         _embed_css___MiniMap_swf____714346264 = MMO_Game_Main_O91a__embed_css___MiniMap_swf____714346264;
         _embed_css___MiniMap_swf____714380231 = MMO_Game_Main_O91a__embed_css___MiniMap_swf____714380231;
         _embed_css___MiniMap_swf____714404362 = MMO_Game_Main_O91a__embed_css___MiniMap_swf____714404362;
         _embed_css___MiniMap_swf____714503733 = MMO_Game_Main_O91a__embed_css___MiniMap_swf____714503733;
         _embed_css___MiniMap_swf____714534162 = MMO_Game_Main_O91a__embed_css___MiniMap_swf____714534162;
         _embed_css___MiniMap_swf____714678320 = MMO_Game_Main_O91a__embed_css___MiniMap_swf____714678320;
         _embed_css___MiniMap_swf____715207264 = MMO_Game_Main_O91a__embed_css___MiniMap_swf____715207264;
         _embed_css___MiniMap_swf______149664042 = MMO_Game_Main_O91a__embed_css___MiniMap_swf______149664042;
         _embed_css___MiniMap_swf______157796331 = MMO_Game_Main_O91a__embed_css___MiniMap_swf______157796331;
         _embed_css___MiniMap_swf_______1032407870 = MMO_Game_Main_O91a__embed_css___MiniMap_swf_______1032407870;
         _embed_css___SkillPromptCanvas_swf_________21364270 = MMO_Game_Main_O91a__embed_css___SkillPromptCanvas_swf_________21364270;
         _embed_css___SkillUseSlot_swf_10Disabled_1851018068 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_10Disabled_1851018068;
         _embed_css___SkillUseSlot_swf_10Down_987146366 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_10Down_987146366;
         _embed_css___SkillUseSlot_swf_10Over_986886508 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_10Over_986886508;
         _embed_css___SkillUseSlot_swf_10Up_222509813 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_10Up_222509813;
         _embed_css___SkillUseSlot_swf_1Disabled_441516834 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_1Disabled_441516834;
         _embed_css___SkillUseSlot_swf_1Down_243744140 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_1Down_243744140;
         _embed_css___SkillUseSlot_swf_1Over_244344378 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_1Over_244344378;
         _embed_css___SkillUseSlot_swf_1Up_221770819 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_1Up_221770819;
         _embed_css___SkillUseSlot_swf_2Disabled_369783329 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_2Disabled_369783329;
         _embed_css___SkillUseSlot_swf_2Down_240734475 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_2Down_240734475;
         _embed_css___SkillUseSlot_swf_2Over_240283065 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_2Over_240283065;
         _embed_css___SkillUseSlot_swf_2Up_221771650 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_2Up_221771650;
         _embed_css___SkillUseSlot_swf_3Disabled_2120884960 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_3Disabled_2120884960;
         _embed_css___SkillUseSlot_swf_3Down_240875658 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_3Down_240875658;
         _embed_css___SkillUseSlot_swf_3Over_241467704 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_3Over_241467704;
         _embed_css___SkillUseSlot_swf_3Up_221768641 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_3Up_221768641;
         _embed_css___SkillUseSlot_swf_4Disabled_581743569 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_4Disabled_581743569;
         _embed_css___SkillUseSlot_swf_4Down_242057225 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_4Down_242057225;
         _embed_css___SkillUseSlot_swf_4Over_272017607 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_4Over_272017607;
         _embed_css___SkillUseSlot_swf_4Up_221770496 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_4Up_221770496;
         _embed_css___SkillUseSlot_swf_5Disabled_887177426 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_5Disabled_887177426;
         _embed_css___SkillUseSlot_swf_5Down_272607112 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_5Down_272607112;
         _embed_css___SkillUseSlot_swf_5Over_273133638 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_5Over_273133638;
         _embed_css___SkillUseSlot_swf_5Up_221775695 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_5Up_221775695;
         _embed_css___SkillUseSlot_swf_6Disabled_1189621293 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_6Disabled_1189621293;
         _embed_css___SkillUseSlot_swf_6Down_273724183 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_6Down_273724183;
         _embed_css___SkillUseSlot_swf_6Over_273274821 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_6Over_273274821;
         _embed_css___SkillUseSlot_swf_6Up_221776526 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_6Up_221776526;
         _embed_css___SkillUseSlot_swf_7Disabled_1297831636 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_7Disabled_1297831636;
         _embed_css___SkillUseSlot_swf_7Down_269671062 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_7Down_269671062;
         _embed_css___SkillUseSlot_swf_7Over_270263108 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_7Over_270263108;
         _embed_css___SkillUseSlot_swf_7Up_221773517 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_7Up_221773517;
         _embed_css___SkillUseSlot_swf_8Disabled_1905256405 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_8Disabled_1905256405;
         _embed_css___SkillUseSlot_swf_8Down_270852629 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_8Down_270852629;
         _embed_css___SkillUseSlot_swf_8Over_271452867 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_8Over_271452867;
         _embed_css___SkillUseSlot_swf_8Up_221774348 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_8Up_221774348;
         _embed_css___SkillUseSlot_swf_9Disabled_64124118 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_9Disabled_64124118;
         _embed_css___SkillUseSlot_swf_9Down_267848084 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_9Down_267848084;
         _embed_css___SkillUseSlot_swf_9Over_268440130 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_9Over_268440130;
         _embed_css___SkillUseSlot_swf_9Up_221779531 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf_9Up_221779531;
         _embed_css___SkillUseSlot_swf____1_545606001 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf____1_545606001;
         _embed_css___SkillUseSlot_swf____2_545606002 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf____2_545606002;
         _embed_css___SkillUseSlot_swf____3_545606003 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf____3_545606003;
         _embed_css___SkillUseSlot_swf____4_545606004 = MMO_Game_Main_O91a__embed_css___SkillUseSlot_swf____4_545606004;
         _embed_css___SystemShopPanel_swf_____HOT_117133902 = MMO_Game_Main_O91a__embed_css___SystemShopPanel_swf_____HOT_117133902;
         _embed_css___SystemShopPanel_swf_____LIMIT_736410460 = MMO_Game_Main_O91a__embed_css___SystemShopPanel_swf_____LIMIT_736410460;
         _embed_css___SystemShopPanel_swf_____NEW_117129649 = MMO_Game_Main_O91a__embed_css___SystemShopPanel_swf_____NEW_117129649;
         _embed_css___SystemShopPanel_swf_____SALE_31953962 = MMO_Game_Main_O91a__embed_css___SystemShopPanel_swf_____SALE_31953962;
         _embed_css___TargetPortrait_swf___1_1197648113 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___1_1197648113;
         _embed_css___TargetPortrait_swf___1_1201161199 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___1_1201161199;
         _embed_css___TargetPortrait_swf___1_1206527341 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___1_1206527341;
         _embed_css___TargetPortrait_swf___1_1209451908 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___1_1209451908;
         _embed_css___TargetPortrait_swf___1_1211055973 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___1_1211055973;
         _embed_css___TargetPortrait_swf___1_1230041651 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___1_1230041651;
         _embed_css___TargetPortrait_swf___1_1230090076 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___1_1230090076;
         _embed_css___TargetPortrait_swf___2_1197648112 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___2_1197648112;
         _embed_css___TargetPortrait_swf___2_1201161198 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___2_1201161198;
         _embed_css___TargetPortrait_swf___2_1206527340 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___2_1206527340;
         _embed_css___TargetPortrait_swf___2_1209451907 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___2_1209451907;
         _embed_css___TargetPortrait_swf___2_1211055972 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___2_1211055972;
         _embed_css___TargetPortrait_swf___2_1230041650 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___2_1230041650;
         _embed_css___TargetPortrait_swf___2_1230090075 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___2_1230090075;
         _embed_css___TargetPortrait_swf___3_1197648127 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___3_1197648127;
         _embed_css___TargetPortrait_swf___3_1201161197 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___3_1201161197;
         _embed_css___TargetPortrait_swf___3_1206527339 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___3_1206527339;
         _embed_css___TargetPortrait_swf___3_1209451906 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___3_1209451906;
         _embed_css___TargetPortrait_swf___3_1211055971 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___3_1211055971;
         _embed_css___TargetPortrait_swf___3_1230041649 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___3_1230041649;
         _embed_css___TargetPortrait_swf___3_1230090074 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___3_1230090074;
         _embed_css___TargetPortrait_swf___4_1197648126 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___4_1197648126;
         _embed_css___TargetPortrait_swf___4_1201161196 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___4_1201161196;
         _embed_css___TargetPortrait_swf___4_1206527338 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___4_1206527338;
         _embed_css___TargetPortrait_swf___4_1209451905 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___4_1209451905;
         _embed_css___TargetPortrait_swf___4_1211055970 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___4_1211055970;
         _embed_css___TargetPortrait_swf___4_1230041648 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___4_1230041648;
         _embed_css___TargetPortrait_swf___4_1230090073 = MMO_Game_Main_O91a__embed_css___TargetPortrait_swf___4_1230090073;
         _embed_css________swf_ScrollBars_thumbDownSkin_446138102 = MMO_Game_Main_O91a__embed_css________swf_ScrollBars_thumbDownSkin_446138102;
         _embed_css________swf_ScrollBars_thumbIcon_919716352 = MMO_Game_Main_O91a__embed_css________swf_ScrollBars_thumbIcon_919716352;
         _embed_css________swf_ScrollBars_thumbOverSkin_417212408 = MMO_Game_Main_O91a__embed_css________swf_ScrollBars_thumbOverSkin_417212408;
         _embed_css________swf_ScrollBars_thumbUpSkin_917667903 = MMO_Game_Main_O91a__embed_css________swf_ScrollBars_thumbUpSkin_917667903;
         _embed_css________swf_ScrollBars_trackSkin_1555845111 = MMO_Game_Main_O91a__embed_css________swf_ScrollBars_trackSkin_1555845111;
         _embed_css________swf_SliderHighlight_Skin_1820318516 = MMO_Game_Main_O91a__embed_css________swf_SliderHighlight_Skin_1820318516;
         _embed_css________swf_SliderThumb_disabledSkin_197857223 = MMO_Game_Main_O91a__embed_css________swf_SliderThumb_disabledSkin_197857223;
         _embed_css________swf_SliderThumb_downSkin_1360380893 = MMO_Game_Main_O91a__embed_css________swf_SliderThumb_downSkin_1360380893;
         _embed_css________swf_SliderThumb_overSkin_1383066641 = MMO_Game_Main_O91a__embed_css________swf_SliderThumb_overSkin_1383066641;
         _embed_css________swf_SliderThumb_upSkin_891122714 = MMO_Game_Main_O91a__embed_css________swf_SliderThumb_upSkin_891122714;
         _embed_css________swf_SliderTrack_Skin_1955168507 = MMO_Game_Main_O91a__embed_css________swf_SliderTrack_Skin_1955168507;
         _embed_css________swf______923680687 = MMO_Game_Main_O91a__embed_css________swf______923680687;
         _embed_css________swf________2127118710 = MMO_Game_Main_O91a__embed_css________swf________2127118710;
         _embed_css__style_Common_ActivityIcon6_swf_ConsumeNotice1_600093594 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon6_swf_ConsumeNotice1_600093594;
         _embed_css__style_Common_ActivityIcon6_swf_ConsumeNotice_1889511267 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon6_swf_ConsumeNotice_1889511267;
         _embed_css__style_Common_ActivityIcon6_swf_Elimination_competition1_603230710 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon6_swf_Elimination_competition1_603230710;
         _embed_css__style_Common_ActivityIcon6_swf_Elimination_competition_1661470637 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon6_swf_Elimination_competition_1661470637;
         _embed_css__style_Common_ActivityIcon6_swf_chongwudaPK1_688961857 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon6_swf_chongwudaPK1_688961857;
         _embed_css__style_Common_ActivityIcon6_swf_chongwudaPK_1504031834 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon6_swf_chongwudaPK_1504031834;
         _embed_css__style_Common_ActivityIcon6_swf_huanmotaxiulian2_868653238 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon6_swf_huanmotaxiulian2_868653238;
         _embed_css__style_Common_ActivityIcon6_swf_huanmotaxiulian_1256412862 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon6_swf_huanmotaxiulian_1256412862;
         _embed_css__style_Common_ActivityIcon6_swf_kexunkecheng_860266767 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon6_swf_kexunkecheng_860266767;
         _embed_css__style_Common_ActivityIcon6_swf_moyintuce2_1538788356 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon6_swf_moyintuce2_1538788356;
         _embed_css__style_Common_ActivityIcon6_swf_moyintuce_1991580968 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon6_swf_moyintuce_1991580968;
         _embed_css__style_Common_ActivityIcon6_swf_texunkecheng2_1173796508 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon6_swf_texunkecheng2_1173796508;
         _embed_css__style_Common_ActivityIcon7_swf_jingxi1_909408975 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon7_swf_jingxi1_909408975;
         _embed_css__style_Common_ActivityIcon7_swf_jingxi_942159312 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon7_swf_jingxi_942159312;
         _embed_css__style_Common_ActivityIcon7_swf_meirifuli1_191703556 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon7_swf_meirifuli1_191703556;
         _embed_css__style_Common_ActivityIcon7_swf_meirifuli_635431907 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon7_swf_meirifuli_635431907;
         _embed_css__style_Common_ActivityIcon7_swf_mengchongzhidou2_491252280 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon7_swf_mengchongzhidou2_491252280;
         _embed_css__style_Common_ActivityIcon7_swf_mengchongzhidou_1620548088 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon7_swf_mengchongzhidou_1620548088;
         _embed_css__style_Common_ActivityIcon7_swf_zuanshitequan1_1331584370 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon7_swf_zuanshitequan1_1331584370;
         _embed_css__style_Common_ActivityIcon7_swf_zuanshitequan_1551894165 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon7_swf_zuanshitequan_1551894165;
         _embed_css__style_Common_ActivityIcon_huanleixia_swf_Huanleyixia1_1960593129 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_huanleixia_swf_Huanleyixia1_1960593129;
         _embed_css__style_Common_ActivityIcon_huanleixia_swf_Huanleyixia_1107642736 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_huanleixia_swf_Huanleyixia_1107642736;
         _embed_css__style_Common_ActivityIcon_swf_Baonuzhanhun1_1765556615 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Baonuzhanhun1_1765556615;
         _embed_css__style_Common_ActivityIcon_swf_Baonuzhanhun_1523237698 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Baonuzhanhun_1523237698;
         _embed_css__style_Common_ActivityIcon_swf_Chongwutianfu1_2022478446 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Chongwutianfu1_2022478446;
         _embed_css__style_Common_ActivityIcon_swf_Chongwutianfu_936535465 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Chongwutianfu_936535465;
         _embed_css__style_Common_ActivityIcon_swf_Dulayinshi1_529708212 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Dulayinshi1_529708212;
         _embed_css__style_Common_ActivityIcon_swf_Dulayinshi_1877696381 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Dulayinshi_1877696381;
         _embed_css__style_Common_ActivityIcon_swf_Heiyaoshizhen1_640346712 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Heiyaoshizhen1_640346712;
         _embed_css__style_Common_ActivityIcon_swf_Heiyaoshizhen_1820006065 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Heiyaoshizhen_1820006065;
         _embed_css__style_Common_ActivityIcon_swf_HuiKuiChouJiang1_1234343035 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_HuiKuiChouJiang1_1234343035;
         _embed_css__style_Common_ActivityIcon_swf_HuiKuiChouJiang_1521620348 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_HuiKuiChouJiang_1521620348;
         _embed_css__style_Common_ActivityIcon_swf_Huikuishangcheng1_688344671 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Huikuishangcheng1_688344671;
         _embed_css__style_Common_ActivityIcon_swf_Huikuishangcheng_116025802 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Huikuishangcheng_116025802;
         _embed_css__style_Common_ActivityIcon_swf_Jianglizhaohui1_1954266480 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Jianglizhaohui1_1954266480;
         _embed_css__style_Common_ActivityIcon_swf_Jianglizhaohui_1432535913 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Jianglizhaohui_1432535913;
         _embed_css__style_Common_ActivityIcon_swf_JingJiChang1_778113814 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_JingJiChang1_778113814;
         _embed_css__style_Common_ActivityIcon_swf_JingJiChang_1957138861 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_JingJiChang_1957138861;
         _embed_css__style_Common_ActivityIcon_swf_Jinhuazhishu1_1795664730 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Jinhuazhishu1_1795664730;
         _embed_css__style_Common_ActivityIcon_swf_Jinhuazhishu_328353425 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Jinhuazhishu_328353425;
         _embed_css__style_Common_ActivityIcon_swf_Jubaopen2_1949606899 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Jubaopen2_1949606899;
         _embed_css__style_Common_ActivityIcon_swf_Jubaopen_677858251 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Jubaopen_677858251;
         _embed_css__style_Common_ActivityIcon_swf_KaPai1_1276450622 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_KaPai1_1276450622;
         _embed_css__style_Common_ActivityIcon_swf_KaPai_818999015 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_KaPai_818999015;
         _embed_css__style_Common_ActivityIcon_swf_Kuafujingji1_1104943797 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Kuafujingji1_1104943797;
         _embed_css__style_Common_ActivityIcon_swf_Kuafujingji_1965641964 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Kuafujingji_1965641964;
         _embed_css__style_Common_ActivityIcon_swf_Menghuimoli1_228690022 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Menghuimoli1_228690022;
         _embed_css__style_Common_ActivityIcon_swf_Menghuimoli_1066366673 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Menghuimoli_1066366673;
         _embed_css__style_Common_ActivityIcon_swf_MoWuShouJi1_1151760522 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_MoWuShouJi1_1151760522;
         _embed_css__style_Common_ActivityIcon_swf_MoWuShouJi_425909377 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_MoWuShouJi_425909377;
         _embed_css__style_Common_ActivityIcon_swf_Pkzhengba1_895978356 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Pkzhengba1_895978356;
         _embed_css__style_Common_ActivityIcon_swf_Pkzhengba_1677903691 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Pkzhengba_1677903691;
         _embed_css__style_Common_ActivityIcon_swf_Qishiguangchang1_637889869 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Qishiguangchang1_637889869;
         _embed_css__style_Common_ActivityIcon_swf_Qishiguangchang_2000497884 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Qishiguangchang_2000497884;
         _embed_css__style_Common_ActivityIcon_swf_ShiJieBei1_988981460 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_ShiJieBei1_988981460;
         _embed_css__style_Common_ActivityIcon_swf_ShiJieBei_1222600917 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_ShiJieBei_1222600917;
         _embed_css__style_Common_ActivityIcon_swf_Shilianzhidi1_1732559618 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Shilianzhidi1_1732559618;
         _embed_css__style_Common_ActivityIcon_swf_Shilianzhidi_373238439 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Shilianzhidi_373238439;
         _embed_css__style_Common_ActivityIcon_swf_Shuang11choujiang1_1918336510 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Shuang11choujiang1_1918336510;
         _embed_css__style_Common_ActivityIcon_swf_Shuang11choujiang_1153518709 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Shuang11choujiang_1153518709;
         _embed_css__style_Common_ActivityIcon_swf_Tuangoufanli1_1995667583 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Tuangoufanli1_1995667583;
         _embed_css__style_Common_ActivityIcon_swf_Tuangoufanli_1433722232 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Tuangoufanli_1433722232;
         _embed_css__style_Common_ActivityIcon_swf_Wuyouyuanzheng1_1009213710 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Wuyouyuanzheng1_1009213710;
         _embed_css__style_Common_ActivityIcon_swf_Wuyouyuanzheng_862921925 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Wuyouyuanzheng_862921925;
         _embed_css__style_Common_ActivityIcon_swf_XiaLingYing1_1657277511 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_XiaLingYing1_1657277511;
         _embed_css__style_Common_ActivityIcon_swf_XiaLingYing_270040958 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_XiaLingYing_270040958;
         _embed_css__style_Common_ActivityIcon_swf_XingYunZhuanPan1_1927602529 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_XingYunZhuanPan1_1927602529;
         _embed_css__style_Common_ActivityIcon_swf_XingYunZhuanPan_1058705048 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_XingYunZhuanPan_1058705048;
         _embed_css__style_Common_ActivityIcon_swf_Xiuluozhanchang1_1917926752 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Xiuluozhanchang1_1917926752;
         _embed_css__style_Common_ActivityIcon_swf_Xiuluozhanchang_1609361561 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Xiuluozhanchang_1609361561;
         _embed_css__style_Common_ActivityIcon_swf_ZhanBu1_2054978022 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_ZhanBu1_2054978022;
         _embed_css__style_Common_ActivityIcon_swf_ZhanBu_1377162429 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_ZhanBu_1377162429;
         _embed_css__style_Common_ActivityIcon_swf_ZhenFaXiuLian1_1257318028 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_ZhenFaXiuLian1_1257318028;
         _embed_css__style_Common_ActivityIcon_swf_ZhenFaXiuLian_1249751101 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_ZhenFaXiuLian_1249751101;
         _embed_css__style_Common_ActivityIcon_swf_Ziranzhili1_1254881552 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Ziranzhili1_1254881552;
         _embed_css__style_Common_ActivityIcon_swf_Ziranzhili_156476183 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_Ziranzhili_156476183;
         _embed_css__style_Common_ActivityIcon_swf_ZuanShiShangCheng1_1638781912 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_ZuanShiShangCheng1_1638781912;
         _embed_css__style_Common_ActivityIcon_swf_ZuanShiShangCheng_2020146945 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_ZuanShiShangCheng_2020146945;
         _embed_css__style_Common_ActivityIcon_swf_baoshijuling1_629689485 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_baoshijuling1_629689485;
         _embed_css__style_Common_ActivityIcon_swf_baoshijuling_1321859428 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_baoshijuling_1321859428;
         _embed_css__style_Common_ActivityIcon_swf_bazhounianqing1_753313948 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_bazhounianqing1_753313948;
         _embed_css__style_Common_ActivityIcon_swf_bazhounianqing_1698756115 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_bazhounianqing_1698756115;
         _embed_css__style_Common_ActivityIcon_swf_bloodyBattle1_1847681471 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_bloodyBattle1_1847681471;
         _embed_css__style_Common_ActivityIcon_swf_bloodyBattle_931075818 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_bloodyBattle_931075818;
         _embed_css__style_Common_ActivityIcon_swf_chongwuzhenhun1_276402377 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_chongwuzhenhun1_276402377;
         _embed_css__style_Common_ActivityIcon_swf_chongwuzhenhun_523060688 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_chongwuzhenhun_523060688;
         _embed_css__style_Common_ActivityIcon_swf_dati1_808565426 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_dati1_808565426;
         _embed_css__style_Common_ActivityIcon_swf_dati_883970487 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_dati_883970487;
         _embed_css__style_Common_ActivityIcon_swf_dianshichengjin1_1709639968 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_dianshichengjin1_1709639968;
         _embed_css__style_Common_ActivityIcon_swf_dianshichengjin_1931390951 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_dianshichengjin_1931390951;
         _embed_css__style_Common_ActivityIcon_swf_diaokekongjian2_1237286243 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_diaokekongjian2_1237286243;
         _embed_css__style_Common_ActivityIcon_swf_diaokekongjian_177328619 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_diaokekongjian_177328619;
         _embed_css__style_Common_ActivityIcon_swf_duikang1_1324856239 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_duikang1_1324856239;
         _embed_css__style_Common_ActivityIcon_swf_duikang_1108433338 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_duikang_1108433338;
         _embed_css__style_Common_ActivityIcon_swf_fanpai1_1976659507 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_fanpai1_1976659507;
         _embed_css__style_Common_ActivityIcon_swf_fanpai_2046143396 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_fanpai_2046143396;
         _embed_css__style_Common_ActivityIcon_swf_fanpaichuangguan1_911546630 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_fanpaichuangguan1_911546630;
         _embed_css__style_Common_ActivityIcon_swf_fanpaichuangguan_2088482767 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_fanpaichuangguan_2088482767;
         _embed_css__style_Common_ActivityIcon_swf_fuli1_811504348 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_fuli1_811504348;
         _embed_css__style_Common_ActivityIcon_swf_fuli_883072685 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_fuli_883072685;
         _embed_css__style_Common_ActivityIcon_swf_huangleshiguang1_1935161366 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_huangleshiguang1_1935161366;
         _embed_css__style_Common_ActivityIcon_swf_huangleshiguang_190109357 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_huangleshiguang_190109357;
         _embed_css__style_Common_ActivityIcon_swf_huanjingxunbao1_1803901921 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_huanjingxunbao1_1803901921;
         _embed_css__style_Common_ActivityIcon_swf_huanjingxunbao_1750663192 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_huanjingxunbao_1750663192;
         _embed_css__style_Common_ActivityIcon_swf_huanlexiaochu1_1925886550 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_huanlexiaochu1_1925886550;
         _embed_css__style_Common_ActivityIcon_swf_huanlexiaochu_312207597 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_huanlexiaochu_312207597;
         _embed_css__style_Common_ActivityIcon_swf_huannengshuijin1_1398333036 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_huannengshuijin1_1398333036;
         _embed_css__style_Common_ActivityIcon_swf_huannengshuijin_137206691 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_huannengshuijin_137206691;
         _embed_css__style_Common_ActivityIcon_swf_huodong1_375141518 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_huodong1_375141518;
         _embed_css__style_Common_ActivityIcon_swf_huodong_2115708485 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_huodong_2115708485;
         _embed_css__style_Common_ActivityIcon_swf_jilei1_1891256575 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_jilei1_1891256575;
         _embed_css__style_Common_ActivityIcon_swf_jilei_849970680 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_jilei_849970680;
         _embed_css__style_Common_ActivityIcon_swf_laodonggr1_2083687063 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_laodonggr1_2083687063;
         _embed_css__style_Common_ActivityIcon_swf_laodonggr_1133860944 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_laodonggr_1133860944;
         _embed_css__style_Common_ActivityIcon_swf_manjiujian1_410985008 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_manjiujian1_410985008;
         _embed_css__style_Common_ActivityIcon_swf_manjiujian_1133173449 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_manjiujian_1133173449;
         _embed_css__style_Common_ActivityIcon_swf_mijinglixian1_790382983 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_mijinglixian1_790382983;
         _embed_css__style_Common_ActivityIcon_swf_mijinglixian_854860990 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_mijinglixian_854860990;
         _embed_css__style_Common_ActivityIcon_swf_mizhen1_1954974355 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_mizhen1_1954974355;
         _embed_css__style_Common_ActivityIcon_swf_mizhen_191735434 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_mizhen_191735434;
         _embed_css__style_Common_ActivityIcon_swf_mojin1_187634363 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_mojin1_187634363;
         _embed_css__style_Common_ActivityIcon_swf_mojin_851349444 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_mojin_851349444;
         _embed_css__style_Common_ActivityIcon_swf_molizhixin1_1397544497 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_molizhixin1_1397544497;
         _embed_css__style_Common_ActivityIcon_swf_molizhixin2_1397544504 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_molizhixin2_1397544504;
         _embed_css__style_Common_ActivityIcon_swf_mowuzhixin1_1867254974 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_mowuzhixin1_1867254974;
         _embed_css__style_Common_ActivityIcon_swf_mowuzhixin_1402850713 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_mowuzhixin_1402850713;
         _embed_css__style_Common_ActivityIcon_swf_qiandao1_219735109 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_qiandao1_219735109;
         _embed_css__style_Common_ActivityIcon_swf_qiandao_651808964 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_qiandao_651808964;
         _embed_css__style_Common_ActivityIcon_swf_qiling1_660795654 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_qiling1_660795654;
         _embed_css__style_Common_ActivityIcon_swf_qiling_212357597 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_qiling_212357597;
         _embed_css__style_Common_ActivityIcon_swf_qizhounianqing1_1642668493 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_qizhounianqing1_1642668493;
         _embed_css__style_Common_ActivityIcon_swf_qizhounianqing_1792410716 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_qizhounianqing_1792410716;
         _embed_css__style_Common_ActivityIcon_swf_renqi1_52810093 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_renqi1_52810093;
         _embed_css__style_Common_ActivityIcon_swf_renqi_855160182 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_renqi_855160182;
         _embed_css__style_Common_ActivityIcon_swf_richang1_1776958986 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_richang1_1776958986;
         _embed_css__style_Common_ActivityIcon_swf_richang_1977192179 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_richang_1977192179;
         _embed_css__style_Common_ActivityIcon_swf_shang1_20053875 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_shang1_20053875;
         _embed_css__style_Common_ActivityIcon_swf_shang_858780316 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_shang_858780316;
         _embed_css__style_Common_ActivityIcon_swf_shengzhewenzhang1_1824905226 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_shengzhewenzhang1_1824905226;
         _embed_css__style_Common_ActivityIcon_swf_shengzhewenzhang_376657919 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_shengzhewenzhang_376657919;
         _embed_css__style_Common_ActivityIcon_swf_shenmironglu1_1072134713 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_shenmironglu1_1072134713;
         _embed_css__style_Common_ActivityIcon_swf_shenmironglu_1968746720 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_shenmironglu_1968746720;
         _embed_css__style_Common_ActivityIcon_swf_shier1_21331599 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_shier1_21331599;
         _embed_css__style_Common_ActivityIcon_swf_shier_858771848 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_shier_858771848;
         _embed_css__style_Common_ActivityIcon_swf_sijie1_21469976 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_sijie1_21469976;
         _embed_css__style_Common_ActivityIcon_swf_sijie_858740849 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_sijie_858740849;
         _embed_css__style_Common_ActivityIcon_swf_sirendinggou1_1920454534 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_sirendinggou1_1920454534;
         _embed_css__style_Common_ActivityIcon_swf_sirendinggou_520866737 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_sirendinggou_520866737;
         _embed_css__style_Common_ActivityIcon_swf_tanxianxunzhang1_110793226 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_tanxianxunzhang1_110793226;
         _embed_css__style_Common_ActivityIcon_swf_tanxianxunzhang_1761435135 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_tanxianxunzhang_1761435135;
         _embed_css__style_Common_ActivityIcon_swf_tiantianfanli1_1806435548 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_tiantianfanli1_1806435548;
         _embed_css__style_Common_ActivityIcon_swf_tiantianfanli_18293933 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_tiantianfanli_18293933;
         _embed_css__style_Common_ActivityIcon_swf_wawaji1_2045305139 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_wawaji1_2045305139;
         _embed_css__style_Common_ActivityIcon_swf_wawaji_452880682 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_wawaji_452880682;
         _embed_css__style_Common_ActivityIcon_swf_wuyou1_467369647 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_wuyou1_467369647;
         _embed_css__style_Common_ActivityIcon_swf_wuyou_862825640 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_wuyou_862825640;
         _embed_css__style_Common_ActivityIcon_swf_xianshi1_980406110 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_xianshi1_980406110;
         _embed_css__style_Common_ActivityIcon_swf_xianshi_1320302805 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_xianshi_1320302805;
         _embed_css__style_Common_ActivityIcon_swf_xieshousuiyue1_111724801 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_xieshousuiyue1_111724801;
         _embed_css__style_Common_ActivityIcon_swf_xieshousuiyue_1650775048 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_xieshousuiyue_1650775048;
         _embed_css__style_Common_ActivityIcon_swf_xinfu1_414031684 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_xinfu1_414031684;
         _embed_css__style_Common_ActivityIcon_swf_xinfu_861328589 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_xinfu_861328589;
         _embed_css__style_Common_ActivityIcon_swf_xinshou1_314528032 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_xinshou1_314528032;
         _embed_css__style_Common_ActivityIcon_swf_xinshou_1278867431 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_xinshou_1278867431;
         _embed_css__style_Common_ActivityIcon_swf_yixianqian1_1370280659 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_yixianqian1_1370280659;
         _embed_css__style_Common_ActivityIcon_swf_yixianqian_1662462262 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_yixianqian_1662462262;
         _embed_css__style_Common_ActivityIcon_swf_zhuxue1_666110543 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_zhuxue1_666110543;
         _embed_css__style_Common_ActivityIcon_swf_zhuxue_494832568 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_zhuxue_494832568;
         _embed_css__style_Common_ActivityIcon_swf_zidongfuben1_663514857 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_zidongfuben1_663514857;
         _embed_css__style_Common_ActivityIcon_swf_zidongfuben_1184779728 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_zidongfuben_1184779728;
         _embed_css__style_Common_ActivityIcon_swf_zidongfubenxin1_1847490636 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_zidongfubenxin1_1847490636;
         _embed_css__style_Common_ActivityIcon_swf_zidongfubenxin_743537547 = MMO_Game_Main_O91a__embed_css__style_Common_ActivityIcon_swf_zidongfubenxin_743537547;
         _embed_css__style_Common_Components_swf_AchievementPanelB1Disabled_731169343 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_AchievementPanelB1Disabled_731169343;
         _embed_css__style_Common_Components_swf_AchievementPanelB1Down_648998497 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_AchievementPanelB1Down_648998497;
         _embed_css__style_Common_Components_swf_AchievementPanelB1Over_648876903 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_AchievementPanelB1Over_648876903;
         _embed_css__style_Common_Components_swf_AchievementPanelB1Up_1313236270 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_AchievementPanelB1Up_1313236270;
         _embed_css__style_Common_Components_swf_AlertBox_421126942 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_AlertBox_421126942;
         _embed_css__style_Common_Components_swf_AwardButtonGray_288785619 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_AwardButtonGray_288785619;
         _embed_css__style_Common_Components_swf_AwardButtonLight_1845747910 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_AwardButtonLight_1845747910;
         _embed_css__style_Common_Components_swf_AwardButton_1840383938 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_AwardButton_1840383938;
         _embed_css__style_Common_Components_swf_BlackButton1_1274957921 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_BlackButton1_1274957921;
         _embed_css__style_Common_Components_swf_BlackButton2_1274957924 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_BlackButton2_1274957924;
         _embed_css__style_Common_Components_swf_BlackButton3_1274957923 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_BlackButton3_1274957923;
         _embed_css__style_Common_Components_swf_BlackButton4_1274957854 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_BlackButton4_1274957854;
         _embed_css__style_Common_Components_swf_BlueButtonDown_692038535 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_BlueButtonDown_692038535;
         _embed_css__style_Common_Components_swf_BlueButtonOver_688169793 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_BlueButtonOver_688169793;
         _embed_css__style_Common_Components_swf_BlueButtonUp_815735482 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_BlueButtonUp_815735482;
         _embed_css__style_Common_Components_swf_CanvasBorder_270691325 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_CanvasBorder_270691325;
         _embed_css__style_Common_Components_swf_CheckBoxTickedOver_1833743502 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_CheckBoxTickedOver_1833743502;
         _embed_css__style_Common_Components_swf_CheckBoxTicked_502798062 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_CheckBoxTicked_502798062;
         _embed_css__style_Common_Components_swf_CheckBoxUntickedOver_580077275 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_CheckBoxUntickedOver_580077275;
         _embed_css__style_Common_Components_swf_CheckBoxUnticked_1812981305 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_CheckBoxUnticked_1812981305;
         _embed_css__style_Common_Components_swf_CloseBtnDisabled_1854343809 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_CloseBtnDisabled_1854343809;
         _embed_css__style_Common_Components_swf_CloseBtnDown_2044084641 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_CloseBtnDown_2044084641;
         _embed_css__style_Common_Components_swf_CloseBtnOver_2043824551 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_CloseBtnOver_2043824551;
         _embed_css__style_Common_Components_swf_CloseBtnUp_2028984210 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_CloseBtnUp_2028984210;
         _embed_css__style_Common_Components_swf_CloseButtonDisabled_369549313 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_CloseButtonDisabled_369549313;
         _embed_css__style_Common_Components_swf_CloseButtonDown_1951595749 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_CloseButtonDown_1951595749;
         _embed_css__style_Common_Components_swf_CloseButtonOver_2047604631 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_CloseButtonOver_2047604631;
         _embed_css__style_Common_Components_swf_CloseButtonUp_1172960480 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_CloseButtonUp_1172960480;
         _embed_css__style_Common_Components_swf_ComboBoxDisabled_846674844 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_ComboBoxDisabled_846674844;
         _embed_css__style_Common_Components_swf_ComboBoxDown_2000061902 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_ComboBoxDown_2000061902;
         _embed_css__style_Common_Components_swf_ComboBoxOver_1999997964 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_ComboBoxOver_1999997964;
         _embed_css__style_Common_Components_swf_ComboBoxUp_169186567 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_ComboBoxUp_169186567;
         _embed_css__style_Common_Components_swf_CrystalButtonDisabled_1982005955 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_CrystalButtonDisabled_1982005955;
         _embed_css__style_Common_Components_swf_CrystalButtonDown_1724131541 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_CrystalButtonDown_1724131541;
         _embed_css__style_Common_Components_swf_CrystalButtonOver_1724928811 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_CrystalButtonOver_1724928811;
         _embed_css__style_Common_Components_swf_CrystalButtonUp_570620126 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_CrystalButtonUp_570620126;
         _embed_css__style_Common_Components_swf_CrystalYellowButtonDown_1774235703 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_CrystalYellowButtonDown_1774235703;
         _embed_css__style_Common_Components_swf_CrystalYellowButtonOver_1774553585 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_CrystalYellowButtonOver_1774553585;
         _embed_css__style_Common_Components_swf_CrystalYellowButtonUp_1470023894 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_CrystalYellowButtonUp_1470023894;
         _embed_css__style_Common_Components_swf_DatagridHeader_129121592 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_DatagridHeader_129121592;
         _embed_css__style_Common_Components_swf_DownArrowDisabled_264037054 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_DownArrowDisabled_264037054;
         _embed_css__style_Common_Components_swf_DownArrowDown_614660052 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_DownArrowDown_614660052;
         _embed_css__style_Common_Components_swf_DownArrowOver_615644714 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_DownArrowOver_615644714;
         _embed_css__style_Common_Components_swf_DownArrowUp_1117353629 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_DownArrowUp_1117353629;
         _embed_css__style_Common_Components_swf_DragablePanel_221916689 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_DragablePanel_221916689;
         _embed_css__style_Common_Components_swf_GradientTextArea_1438669621 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_GradientTextArea_1438669621;
         _embed_css__style_Common_Components_swf_GreenButtonDown_1434805078 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_GreenButtonDown_1434805078;
         _embed_css__style_Common_Components_swf_GreenButtonOver_1435528084 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_GreenButtonOver_1435528084;
         _embed_css__style_Common_Components_swf_GreenButtonUp_1435476623 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_GreenButtonUp_1435476623;
         _embed_css__style_Common_Components_swf_HTabDisabled_390008780 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_HTabDisabled_390008780;
         _embed_css__style_Common_Components_swf_HTabOver_1101572828 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_HTabOver_1101572828;
         _embed_css__style_Common_Components_swf_HTabSelected_573204457 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_HTabSelected_573204457;
         _embed_css__style_Common_Components_swf_HTabUp_60689367 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_HTabUp_60689367;
         _embed_css__style_Common_Components_swf_InputBox_597776956 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_InputBox_597776956;
         _embed_css__style_Common_Components_swf_ItemSlot_138201044 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_ItemSlot_138201044;
         _embed_css__style_Common_Components_swf_LastPageOver_1797409060 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_LastPageOver_1797409060;
         _embed_css__style_Common_Components_swf_LastPageUp_1724292065 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_LastPageUp_1724292065;
         _embed_css__style_Common_Components_swf_LeftArrow1_1810752958 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_LeftArrow1_1810752958;
         _embed_css__style_Common_Components_swf_LeftArrow2_1810752943 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_LeftArrow2_1810752943;
         _embed_css__style_Common_Components_swf_LeftArrow3_1810752940 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_LeftArrow3_1810752940;
         _embed_css__style_Common_Components_swf_LeftArrow4_1810752941 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_LeftArrow4_1810752941;
         _embed_css__style_Common_Components_swf_LongHideBtnLeftDisabled_1312976964 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_LongHideBtnLeftDisabled_1312976964;
         _embed_css__style_Common_Components_swf_LongHideBtnLeftDown_990983014 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_LongHideBtnLeftDown_990983014;
         _embed_css__style_Common_Components_swf_LongHideBtnLeftOver_995637348 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_LongHideBtnLeftOver_995637348;
         _embed_css__style_Common_Components_swf_LongHideBtnLeftUp_1355031713 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_LongHideBtnLeftUp_1355031713;
         _embed_css__style_Common_Components_swf_LongHideBtnRightDisabled_1733797413 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_LongHideBtnRightDisabled_1733797413;
         _embed_css__style_Common_Components_swf_LongHideBtnRightDown_1042274431 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_LongHideBtnRightDown_1042274431;
         _embed_css__style_Common_Components_swf_LongHideBtnRightOver_1055260749 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_LongHideBtnRightOver_1055260749;
         _embed_css__style_Common_Components_swf_LongHideBtnRightUp_2028677756 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_LongHideBtnRightUp_2028677756;
         _embed_css__style_Common_Components_swf_MinimizeButtonDisabled_1499993947 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_MinimizeButtonDisabled_1499993947;
         _embed_css__style_Common_Components_swf_MinimizeButtonDown_1910027859 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_MinimizeButtonDown_1910027859;
         _embed_css__style_Common_Components_swf_MinimizeButtonOver_1910343997 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_MinimizeButtonOver_1910343997;
         _embed_css__style_Common_Components_swf_MinimizeButtonUp_1495179334 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_MinimizeButtonUp_1495179334;
         _embed_css__style_Common_Components_swf_NextPageOver_2104711855 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_NextPageOver_2104711855;
         _embed_css__style_Common_Components_swf_NextPageUp_1510074248 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_NextPageUp_1510074248;
         _embed_css__style_Common_Components_swf_PageNoIndicator1_1021391603 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_PageNoIndicator1_1021391603;
         _embed_css__style_Common_Components_swf_PageNoIndicator_1135125614 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_PageNoIndicator_1135125614;
         _embed_css__style_Common_Components_swf_RightArrow1_1372528611 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_RightArrow1_1372528611;
         _embed_css__style_Common_Components_swf_RightArrow2_1372528608 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_RightArrow2_1372528608;
         _embed_css__style_Common_Components_swf_RightArrow3_1372528609 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_RightArrow3_1372528609;
         _embed_css__style_Common_Components_swf_RightArrow4_1372528614 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_RightArrow4_1372528614;
         _embed_css__style_Common_Components_swf_SkillBoxDisabled_734603153 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_SkillBoxDisabled_734603153;
         _embed_css__style_Common_Components_swf_SkillBox_1333852635 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_SkillBox_1333852635;
         _embed_css__style_Common_Components_swf_Star1_951427086 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_Star1_951427086;
         _embed_css__style_Common_Components_swf_Star2_951428479 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_Star2_951428479;
         _embed_css__style_Common_Components_swf_StoneButton1_950088773 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_StoneButton1_950088773;
         _embed_css__style_Common_Components_swf_StoneButton2_950088778 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_StoneButton2_950088778;
         _embed_css__style_Common_Components_swf_StoneButton3_950088779 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_StoneButton3_950088779;
         _embed_css__style_Common_Components_swf_StoneButton4_950088776 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_StoneButton4_950088776;
         _embed_css__style_Common_Components_swf_ThumbDisabled_166392915 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_ThumbDisabled_166392915;
         _embed_css__style_Common_Components_swf_ThumbDown_2057063559 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_ThumbDown_2057063559;
         _embed_css__style_Common_Components_swf_ThumbOver_2070377941 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_ThumbOver_2070377941;
         _embed_css__style_Common_Components_swf_ThumbUp_798295820 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_ThumbUp_798295820;
         _embed_css__style_Common_Components_swf_TitleStrip_824463423 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_TitleStrip_824463423;
         _embed_css__style_Common_Components_swf_TrackDisabled_1548151546 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_TrackDisabled_1548151546;
         _embed_css__style_Common_Components_swf_TrackDown_559821416 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_TrackDown_559821416;
         _embed_css__style_Common_Components_swf_TrackOver_559351058 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_TrackOver_559351058;
         _embed_css__style_Common_Components_swf_TrackUp_1347629729 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_TrackUp_1347629729;
         _embed_css__style_Common_Components_swf_TreasureSlotBG_2114513011 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_TreasureSlotBG_2114513011;
         _embed_css__style_Common_Components_swf_UpArrowDisabled_1622635733 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_UpArrowDisabled_1622635733;
         _embed_css__style_Common_Components_swf_UpArrowDown_1224432593 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_UpArrowDown_1224432593;
         _embed_css__style_Common_Components_swf_UpArrowOver_1223442051 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_UpArrowOver_1223442051;
         _embed_css__style_Common_Components_swf_UpArrowUp_1721464140 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_UpArrowUp_1721464140;
         _embed_css__style_Common_Components_swf_VTabDisabled_1802366730 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_VTabDisabled_1802366730;
         _embed_css__style_Common_Components_swf_VTabOver_1858401998 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_VTabOver_1858401998;
         _embed_css__style_Common_Components_swf_VTabSelected_843756645 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_VTabSelected_843756645;
         _embed_css__style_Common_Components_swf_VTabUp_1401237595 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_VTabUp_1401237595;
         _embed_css__style_Common_Components_swf_YellowButtonDisabled_655016957 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_YellowButtonDisabled_655016957;
         _embed_css__style_Common_Components_swf_YellowButtonDown_1656088361 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_YellowButtonDown_1656088361;
         _embed_css__style_Common_Components_swf_YellowButtonOver_1667677403 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_YellowButtonOver_1667677403;
         _embed_css__style_Common_Components_swf_YellowButtonUp_177483940 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_YellowButtonUp_177483940;
         _embed_css__style_Common_Components_swf_ZhanBu1_207186558 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_ZhanBu1_207186558;
         _embed_css__style_Common_Components_swf_ZhanBu2_207186557 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_ZhanBu2_207186557;
         _embed_css__style_Common_Components_swf_ZhanLiUp1_579767049 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_ZhanLiUp1_579767049;
         _embed_css__style_Common_Components_swf_ZhanLiUp2_579767054 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_ZhanLiUp2_579767054;
         _embed_css__style_Common_Components_swf_ZhanLiUp3_579766399 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_ZhanLiUp3_579766399;
         _embed_css__style_Common_Components_swf_ZhanLiUp4_579766396 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_ZhanLiUp4_579766396;
         _embed_css__style_Common_Components_swf___over_1968743897 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf___over_1968743897;
         _embed_css__style_Common_Components_swf___up_1092641808 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf___up_1092641808;
         _embed_css__style_Common_Components_swf_changtiao1_1111613180 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_changtiao1_1111613180;
         _embed_css__style_Common_Components_swf_changtiao2_1111613179 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_changtiao2_1111613179;
         _embed_css__style_Common_Components_swf_changtiao3_1111613174 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_changtiao3_1111613174;
         _embed_css__style_Common_Components_swf_changtiao4_1111613173 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_changtiao4_1111613173;
         _embed_css__style_Common_Components_swf_chaopiao1_458630186 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_chaopiao1_458630186;
         _embed_css__style_Common_Components_swf_chaopiao2_458630201 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_chaopiao2_458630201;
         _embed_css__style_Common_Components_swf_chaopiao3_458630204 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_chaopiao3_458630204;
         _embed_css__style_Common_Components_swf_chaopiao4_458630203 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_chaopiao4_458630203;
         _embed_css__style_Common_Components_swf_chognzhi1_1404956838 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_chognzhi1_1404956838;
         _embed_css__style_Common_Components_swf_chognzhi2_1404956759 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_chognzhi2_1404956759;
         _embed_css__style_Common_Components_swf_chognzhi3_1404956756 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_chognzhi3_1404956756;
         _embed_css__style_Common_Components_swf_chognzhi4_1404956757 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_chognzhi4_1404956757;
         _embed_css__style_Common_Components_swf_chongci1_305437239 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_chongci1_305437239;
         _embed_css__style_Common_Components_swf_chongci2_305437236 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_chongci2_305437236;
         _embed_css__style_Common_Components_swf_chongci3_305437237 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_chongci3_305437237;
         _embed_css__style_Common_Components_swf_chongci4_305437242 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_chongci4_305437242;
         _embed_css__style_Common_Components_swf_dianjigoumai1_2107071303 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_dianjigoumai1_2107071303;
         _embed_css__style_Common_Components_swf_dianjigoumai2_2107071300 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_dianjigoumai2_2107071300;
         _embed_css__style_Common_Components_swf_dianjigoumai3_2107071301 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_dianjigoumai3_2107071301;
         _embed_css__style_Common_Components_swf_dianjigoumai4_2107071306 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_dianjigoumai4_2107071306;
         _embed_css__style_Common_Components_swf_dianjihuo1_848186463 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_dianjihuo1_848186463;
         _embed_css__style_Common_Components_swf_dianjihuo_520281012 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_dianjihuo_520281012;
         _embed_css__style_Common_Components_swf_dscjlingjiang1_1159601411 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_dscjlingjiang1_1159601411;
         _embed_css__style_Common_Components_swf_dscjlingjiang2_1159601470 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_dscjlingjiang2_1159601470;
         _embed_css__style_Common_Components_swf_dscjlingjiang3_1159601469 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_dscjlingjiang3_1159601469;
         _embed_css__style_Common_Components_swf_dscjlingjiang_1884132354 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_dscjlingjiang_1884132354;
         _embed_css__style_Common_Components_swf_goldButtonGray_1143699024 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_goldButtonGray_1143699024;
         _embed_css__style_Common_Components_swf_goldButtonLight_851067197 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_goldButtonLight_851067197;
         _embed_css__style_Common_Components_swf_goldButton_1134589491 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_goldButton_1134589491;
         _embed_css__style_Common_Components_swf_heiyaoshi1_949029287 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_heiyaoshi1_949029287;
         _embed_css__style_Common_Components_swf_heiyaoshi_1010669820 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_heiyaoshi_1010669820;
         _embed_css__style_Common_Components_swf_huangdi1_824549518 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_huangdi1_824549518;
         _embed_css__style_Common_Components_swf_huangdi2_824549887 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_huangdi2_824549887;
         _embed_css__style_Common_Components_swf_jinbi1_963862358 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_jinbi1_963862358;
         _embed_css__style_Common_Components_swf_jinbi2_963862357 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_jinbi2_963862357;
         _embed_css__style_Common_Components_swf_jinbi3_963862360 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_jinbi3_963862360;
         _embed_css__style_Common_Components_swf_jinbi4_963862359 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_jinbi4_963862359;
         _embed_css__style_Common_Components_swf_kaishi1_2087331759 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_kaishi1_2087331759;
         _embed_css__style_Common_Components_swf_kaishi2_2087331756 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_kaishi2_2087331756;
         _embed_css__style_Common_Components_swf_kaishi3_2087331757 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_kaishi3_2087331757;
         _embed_css__style_Common_Components_swf_kaishi4_2087331762 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_kaishi4_2087331762;
         _embed_css__style_Common_Components_swf_lingqu1_930888502 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_lingqu1_930888502;
         _embed_css__style_Common_Components_swf_lingqu2_930888487 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_lingqu2_930888487;
         _embed_css__style_Common_Components_swf_lingqu3_930888484 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_lingqu3_930888484;
         _embed_css__style_Common_Components_swf_lingqu_1020043547 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_lingqu_1020043547;
         _embed_css__style_Common_Components_swf_manjiujian1_1369718644 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_manjiujian1_1369718644;
         _embed_css__style_Common_Components_swf_manjiujian2_1369718645 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_manjiujian2_1369718645;
         _embed_css__style_Common_Components_swf_manjiujian3_1369718650 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_manjiujian3_1369718650;
         _embed_css__style_Common_Components_swf_max1_1038734520 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_max1_1038734520;
         _embed_css__style_Common_Components_swf_max2_1038734521 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_max2_1038734521;
         _embed_css__style_Common_Components_swf_max3_1038734526 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_max3_1038734526;
         _embed_css__style_Common_Components_swf_max4_1038734511 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_max4_1038734511;
         _embed_css__style_Common_Components_swf_qiandaojinkuang_197931225 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_qiandaojinkuang_197931225;
         _embed_css__style_Common_Components_swf_qiandaolingjiang1_270192068 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_qiandaolingjiang1_270192068;
         _embed_css__style_Common_Components_swf_qiandaolingjiang2_270192069 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_qiandaolingjiang2_270192069;
         _embed_css__style_Common_Components_swf_qiandaolingjiang3_270192074 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_qiandaolingjiang3_270192074;
         _embed_css__style_Common_Components_swf_qiandaolingjiang_327130247 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_qiandaolingjiang_327130247;
         _embed_css__style_Common_Components_swf_quantujihuo1_835336001 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_quantujihuo1_835336001;
         _embed_css__style_Common_Components_swf_quantujihuo2_835336004 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_quantujihuo2_835336004;
         _embed_css__style_Common_Components_swf_quantujihuo3_835336003 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_quantujihuo3_835336003;
         _embed_css__style_Common_Components_swf_tiantianfanli1_487104864 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_tiantianfanli1_487104864;
         _embed_css__style_Common_Components_swf_tiantianfanli2_487104863 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_tiantianfanli2_487104863;
         _embed_css__style_Common_Components_swf_tiantianfanli3_487104858 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_tiantianfanli3_487104858;
         _embed_css__style_Common_Components_swf_tiantianfanli_1232879355 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_tiantianfanli_1232879355;
         _embed_css__style_Common_Components_swf_tuichu1_2041111028 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_tuichu1_2041111028;
         _embed_css__style_Common_Components_swf_tuichu2_2041111029 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_tuichu2_2041111029;
         _embed_css__style_Common_Components_swf_tuichu3_2041111034 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_tuichu3_2041111034;
         _embed_css__style_Common_Components_swf_tuichu4_2041111035 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_tuichu4_2041111035;
         _embed_css__style_Common_Components_swf_tuohuang1_326648371 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_tuohuang1_326648371;
         _embed_css__style_Common_Components_swf_tuohuang2_326648366 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_tuohuang2_326648366;
         _embed_css__style_Common_Components_swf_xingyunshai1_356412261 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_xingyunshai1_356412261;
         _embed_css__style_Common_Components_swf_xingyunshai2_356412264 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_xingyunshai2_356412264;
         _embed_css__style_Common_Components_swf_xingyunshai3_356412263 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_xingyunshai3_356412263;
         _embed_css__style_Common_Components_swf_xingyunshai4_356412258 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_xingyunshai4_356412258;
         _embed_css__style_Common_Components_swf_xuanzhongnew_730628817 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_xuanzhongnew_730628817;
         _embed_css__style_Common_Components_swf_yanshi1_783495454 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_yanshi1_783495454;
         _embed_css__style_Common_Components_swf_yanshi2_783495453 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_yanshi2_783495453;
         _embed_css__style_Common_Components_swf_yaoshai1_1789674760 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_yaoshai1_1789674760;
         _embed_css__style_Common_Components_swf_yaoshai2_1789674759 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_yaoshai2_1789674759;
         _embed_css__style_Common_Components_swf_yaoshai3_1789674754 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_yaoshai3_1789674754;
         _embed_css__style_Common_Components_swf_yaoshai4_1789674769 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_yaoshai4_1789674769;
         _embed_css__style_Common_Components_swf_zidongxunbao1_1057047918 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_zidongxunbao1_1057047918;
         _embed_css__style_Common_Components_swf_zidongxunbao2_1057047903 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_zidongxunbao2_1057047903;
         _embed_css__style_Common_Components_swf_zidongxunbao3_1057047900 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_zidongxunbao3_1057047900;
         _embed_css__style_Common_Components_swf_zidongxunbao4_1057047901 = MMO_Game_Main_O91a__embed_css__style_Common_Components_swf_zidongxunbao4_1057047901;
         _embed_css__style_Common_newresource_swf_mczdfightbtn2_619445699 = MMO_Game_Main_O91a__embed_css__style_Common_newresource_swf_mczdfightbtn2_619445699;
         _embed_css__style_Common_newresource_swf_mczdfightbtn3_619445696 = MMO_Game_Main_O91a__embed_css__style_Common_newresource_swf_mczdfightbtn3_619445696;
         _embed_css__style_Common_newresource_swf_mczdfightbtn4_619445745 = MMO_Game_Main_O91a__embed_css__style_Common_newresource_swf_mczdfightbtn4_619445745;
         _embed_css__style_Common_newresource_swf_mczdfightbtn_20415381 = MMO_Game_Main_O91a__embed_css__style_Common_newresource_swf_mczdfightbtn_20415381;
         _embed_css__style_Common_wbEnterImage_png_599238823 = MMO_Game_Main_O91a__embed_css__style_Common_wbEnterImage_png_599238823;
         _embed_css__style_Common_wbIcon_swf___2_1395951543 = MMO_Game_Main_O91a__embed_css__style_Common_wbIcon_swf___2_1395951543;
         _embed_css__style_Common_wbIcon_swf___3_1395951544 = MMO_Game_Main_O91a__embed_css__style_Common_wbIcon_swf___3_1395951544;
         _embed_css__style_Common_wbIcon_swf___4_1395951545 = MMO_Game_Main_O91a__embed_css__style_Common_wbIcon_swf___4_1395951545;
         _embed_css__style_Common_wbIcon_swf____1366223417 = MMO_Game_Main_O91a__embed_css__style_Common_wbIcon_swf____1366223417;
         _embed_css__style_Common_wbIcon_swf_____2_1405602324 = MMO_Game_Main_O91a__embed_css__style_Common_wbIcon_swf_____2_1405602324;
         _embed_css__style_Common_wbIcon_swf_____2_596606982 = MMO_Game_Main_O91a__embed_css__style_Common_wbIcon_swf_____2_596606982;
         _embed_css__style_Common_wbIcon_swf_____3_1405602323 = MMO_Game_Main_O91a__embed_css__style_Common_wbIcon_swf_____3_1405602323;
         _embed_css__style_Common_wbIcon_swf_____3_596606999 = MMO_Game_Main_O91a__embed_css__style_Common_wbIcon_swf_____3_596606999;
         _embed_css__style_Common_wbIcon_swf_____4_1405602322 = MMO_Game_Main_O91a__embed_css__style_Common_wbIcon_swf_____4_1405602322;
         _embed_css__style_Common_wbIcon_swf_____4_596607000 = MMO_Game_Main_O91a__embed_css__style_Common_wbIcon_swf_____4_596607000;
         _embed_css__style_Common_wbIcon_swf______1815365510 = MMO_Game_Main_O91a__embed_css__style_Common_wbIcon_swf______1815365510;
         _embed_css__style_Common_wbIcon_swf______791312916 = MMO_Game_Main_O91a__embed_css__style_Common_wbIcon_swf______791312916;
         _embed_css__style_LoginStage_CHA_CRE_new_swf___1_1932735915 = MMO_Game_Main_O91a__embed_css__style_LoginStage_CHA_CRE_new_swf___1_1932735915;
         _embed_css__style_LoginStage_CHA_CRE_new_swf___2_1932735912 = MMO_Game_Main_O91a__embed_css__style_LoginStage_CHA_CRE_new_swf___2_1932735912;
         _embed_css__style_LoginStage_CHA_CRE_new_swf___3_1932735929 = MMO_Game_Main_O91a__embed_css__style_LoginStage_CHA_CRE_new_swf___3_1932735929;
         _embed_css__style_LoginStage_CHA_CRE_new_swf___4_1932735934 = MMO_Game_Main_O91a__embed_css__style_LoginStage_CHA_CRE_new_swf___4_1932735934;
         _embed_css__style_LoginStage_CHA_CRE_new_swf____1928903862 = MMO_Game_Main_O91a__embed_css__style_LoginStage_CHA_CRE_new_swf____1928903862;
         _embed_css__style_LoginStage_CHA_CRE_swf____1892522236 = MMO_Game_Main_O91a__embed_css__style_LoginStage_CHA_CRE_swf____1892522236;
         _embed_css__style_LoginStage_CHA_CRE_swf____1892622578 = MMO_Game_Main_O91a__embed_css__style_LoginStage_CHA_CRE_swf____1892622578;
         _embed_css__style_LoginStage_CHA_CRE_swf_____1898394353 = MMO_Game_Main_O91a__embed_css__style_LoginStage_CHA_CRE_swf_____1898394353;
         _embed_css__style_LoginStage_CHA_CRE_swf_____1_1267423210 = MMO_Game_Main_O91a__embed_css__style_LoginStage_CHA_CRE_swf_____1_1267423210;
         _embed_css__style_LoginStage_CHA_CRE_swf_____1_1622969405 = MMO_Game_Main_O91a__embed_css__style_LoginStage_CHA_CRE_swf_____1_1622969405;
         _embed_css__style_LoginStage_CHA_CRE_swf_____2_1267423229 = MMO_Game_Main_O91a__embed_css__style_LoginStage_CHA_CRE_swf_____2_1267423229;
         _embed_css__style_LoginStage_CHA_CRE_swf_____2_1622969404 = MMO_Game_Main_O91a__embed_css__style_LoginStage_CHA_CRE_swf_____2_1622969404;
         _embed_css__style_LoginStage_CHA_CRE_swf_____3_1622969407 = MMO_Game_Main_O91a__embed_css__style_LoginStage_CHA_CRE_swf_____3_1622969407;
         _embed_css__style_LoginStage_CHA_CRE_swf_____4_1622969406 = MMO_Game_Main_O91a__embed_css__style_LoginStage_CHA_CRE_swf_____4_1622969406;
         _embed_css__style_LoginStage_CHA_CRE_swf______2115259660 = MMO_Game_Main_O91a__embed_css__style_LoginStage_CHA_CRE_swf______2115259660;
         _embed_css__style_LoginStage_CHA_CRE_swf____dis_870795252 = MMO_Game_Main_O91a__embed_css__style_LoginStage_CHA_CRE_swf____dis_870795252;
         _embed_css__style_LoginStage_CHA_CRE_swf____down_50142282 = MMO_Game_Main_O91a__embed_css__style_LoginStage_CHA_CRE_swf____down_50142282;
         _embed_css__style_LoginStage_CHA_CRE_swf____nor_870781247 = MMO_Game_Main_O91a__embed_css__style_LoginStage_CHA_CRE_swf____nor_870781247;
         _embed_css__style_LoginStage_CHA_CRE_swf____pass_19225659 = MMO_Game_Main_O91a__embed_css__style_LoginStage_CHA_CRE_swf____pass_19225659;
         _embed_css__style_LoginStage_CHA_CRE_swf_title_1970285253 = MMO_Game_Main_O91a__embed_css__style_LoginStage_CHA_CRE_swf_title_1970285253;
         _embed_css__style_LoginStage_LoginStage_swf_AnnouncementCanvas_355353696 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_AnnouncementCanvas_355353696;
         _embed_css__style_LoginStage_LoginStage_swf_AvatarCanvas_1566019058 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_AvatarCanvas_1566019058;
         _embed_css__style_LoginStage_LoginStage_swf_ButtonWrapper_1272556094 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_ButtonWrapper_1272556094;
         _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonBlueDown_111836942 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_ChannelButtonBlueDown_111836942;
         _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonBlueOver_111367868 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_ChannelButtonBlueOver_111367868;
         _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonBlueUp_1701921739 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_ChannelButtonBlueUp_1701921739;
         _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonDisabled_1289213522 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_ChannelButtonDisabled_1289213522;
         _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonGreenDown_877601297 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_ChannelButtonGreenDown_877601297;
         _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonGreenOver_878265827 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_ChannelButtonGreenOver_878265827;
         _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonGreenUp_1907031894 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_ChannelButtonGreenUp_1907031894;
         _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonOrangeDown_374901286 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_ChannelButtonOrangeDown_374901286;
         _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonOrangeOver_380088888 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_ChannelButtonOrangeOver_380088888;
         _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonOrangeUp_529593279 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_ChannelButtonOrangeUp_529593279;
         _embed_css__style_LoginStage_LoginStage_swf_CharacterBlueDisabled_1572266848 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_CharacterBlueDisabled_1572266848;
         _embed_css__style_LoginStage_LoginStage_swf_CharacterBlueDown_366374822 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_CharacterBlueDown_366374822;
         _embed_css__style_LoginStage_LoginStage_swf_CharacterBlueOver_366319544 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_CharacterBlueOver_366319544;
         _embed_css__style_LoginStage_LoginStage_swf_CharacterBlueUp_285706945 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_CharacterBlueUp_285706945;
         _embed_css__style_LoginStage_LoginStage_swf_CharacterRedDisabled_1382428485 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_CharacterRedDisabled_1382428485;
         _embed_css__style_LoginStage_LoginStage_swf_CharacterRedDown_1556231061 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_CharacterRedDown_1556231061;
         _embed_css__style_LoginStage_LoginStage_swf_CharacterRedOver_1556548483 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_CharacterRedOver_1556548483;
         _embed_css__style_LoginStage_LoginStage_swf_CharacterRedUp_1256798108 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_CharacterRedUp_1256798108;
         _embed_css__style_LoginStage_LoginStage_swf_CharacterYellowDisabled_202395718 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_CharacterYellowDisabled_202395718;
         _embed_css__style_LoginStage_LoginStage_swf_CharacterYellowDown_1096204576 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_CharacterYellowDown_1096204576;
         _embed_css__style_LoginStage_LoginStage_swf_CharacterYellowOver_1096800622 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_CharacterYellowOver_1096800622;
         _embed_css__style_LoginStage_LoginStage_swf_CharacterYellowUp_970757529 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_CharacterYellowUp_970757529;
         _embed_css__style_LoginStage_LoginStage_swf_ChooseChannelCanvas_876114597 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_ChooseChannelCanvas_876114597;
         _embed_css__style_LoginStage_LoginStage_swf_ChooseCharacterTitle_180737831 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_ChooseCharacterTitle_180737831;
         _embed_css__style_LoginStage_LoginStage_swf_CreateCharacterCanvas_1321765754 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_CreateCharacterCanvas_1321765754;
         _embed_css__style_LoginStage_LoginStage_swf_InputBox_160442334 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_InputBox_160442334;
         _embed_css__style_LoginStage_LoginStage_swf_LoginButtonDisabled_1338206536 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_LoginButtonDisabled_1338206536;
         _embed_css__style_LoginStage_LoginStage_swf_LoginButtonDown_1268135646 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_LoginButtonDown_1268135646;
         _embed_css__style_LoginStage_LoginStage_swf_LoginButtonOver_1267752624 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_LoginButtonOver_1267752624;
         _embed_css__style_LoginStage_LoginStage_swf_LoginButtonUp_1585670679 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_LoginButtonUp_1585670679;
         _embed_css__style_LoginStage_LoginStage_swf_LoginPanelTitle_356451102 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_LoginPanelTitle_356451102;
         _embed_css__style_LoginStage_LoginStage_swf_LoginPanel_135241212 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_LoginPanel_135241212;
         _embed_css__style_LoginStage_LoginStage_swf_RoleName_1703610974 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_RoleName_1703610974;
         _embed_css__style_LoginStage_LoginStage_swf_StripeButton_1037616192 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_StripeButton_1037616192;
         _embed_css__style_LoginStage_LoginStage_swf_____L1_1606072746 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_____L1_1606072746;
         _embed_css__style_LoginStage_LoginStage_swf_____L2_1606072745 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_____L2_1606072745;
         _embed_css__style_LoginStage_LoginStage_swf_____L3_1606072744 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_____L3_1606072744;
         _embed_css__style_LoginStage_LoginStage_swf_____L4_1606072743 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_____L4_1606072743;
         _embed_css__style_LoginStage_LoginStage_swf_____R1_1606073936 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_____R1_1606073936;
         _embed_css__style_LoginStage_LoginStage_swf_____R2_1606073967 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_____R2_1606073967;
         _embed_css__style_LoginStage_LoginStage_swf_____R3_1606073966 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_____R3_1606073966;
         _embed_css__style_LoginStage_LoginStage_swf_____R4_1606073965 = MMO_Game_Main_O91a__embed_css__style_LoginStage_LoginStage_swf_____R4_1606073965;
         _embed_css__style_MainStage_CharInfo_swf_CharacterPortrait_16857899 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_CharacterPortrait_16857899;
         _embed_css__style_MainStage_CharInfo_swf_ExpBar_1252804643 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_ExpBar_1252804643;
         _embed_css__style_MainStage_CharInfo_swf_GroupMemberBox_769715065 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_GroupMemberBox_769715065;
         _embed_css__style_MainStage_CharInfo_swf_HPBar_1254231858 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_HPBar_1254231858;
         _embed_css__style_MainStage_CharInfo_swf_HealEmptyDisabled_692905176 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_HealEmptyDisabled_692905176;
         _embed_css__style_MainStage_CharInfo_swf_HealEmptyDown_284841330 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_HealEmptyDown_284841330;
         _embed_css__style_MainStage_CharInfo_swf_HealEmptyOver_277037696 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_HealEmptyOver_277037696;
         _embed_css__style_MainStage_CharInfo_swf_HealEmptyUp_1920581897 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_HealEmptyUp_1920581897;
         _embed_css__style_MainStage_CharInfo_swf_HealHPFullDisabled_1540029118 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_HealHPFullDisabled_1540029118;
         _embed_css__style_MainStage_CharInfo_swf_HealHPFullDown_288365720 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_HealHPFullDown_288365720;
         _embed_css__style_MainStage_CharInfo_swf_HealHPFullOver_287913094 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_HealHPFullOver_287913094;
         _embed_css__style_MainStage_CharInfo_swf_HealHPFullUp_2028167711 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_HealHPFullUp_2028167711;
         _embed_css__style_MainStage_CharInfo_swf_HealHPHalfDisabled_1714784218 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_HealHPHalfDisabled_1714784218;
         _embed_css__style_MainStage_CharInfo_swf_HealHPHalfDown_1436899380 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_HealHPHalfDown_1436899380;
         _embed_css__style_MainStage_CharInfo_swf_HealHPHalfOver_1436962850 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_HealHPHalfOver_1436962850;
         _embed_css__style_MainStage_CharInfo_swf_HealHPHalfUp_1924159163 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_HealHPHalfUp_1924159163;
         _embed_css__style_MainStage_CharInfo_swf_HealMPEmptyDisabled_32512475 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_HealMPEmptyDisabled_32512475;
         _embed_css__style_MainStage_CharInfo_swf_HealMPEmptyDown_2079626677 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_HealMPEmptyDown_2079626677;
         _embed_css__style_MainStage_CharInfo_swf_HealMPEmptyOver_2078903715 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_HealMPEmptyOver_2078903715;
         _embed_css__style_MainStage_CharInfo_swf_HealMPEmptyUp_504888444 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_HealMPEmptyUp_504888444;
         _embed_css__style_MainStage_CharInfo_swf_HealMPFullDisabled_90191293 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_HealMPFullDisabled_90191293;
         _embed_css__style_MainStage_CharInfo_swf_HealMPFullDown_1302536829 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_HealMPFullDown_1302536829;
         _embed_css__style_MainStage_CharInfo_swf_HealMPFullOver_1302624811 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_HealMPFullOver_1302624811;
         _embed_css__style_MainStage_CharInfo_swf_HealMPFullUp_21381860 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_HealMPFullUp_21381860;
         _embed_css__style_MainStage_CharInfo_swf_HealMPHalfDisabled_158690049 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_HealMPHalfDisabled_158690049;
         _embed_css__style_MainStage_CharInfo_swf_HealMPHalfDown_1609533015 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_HealMPHalfDown_1609533015;
         _embed_css__style_MainStage_CharInfo_swf_HealMPHalfOver_1610051257 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_HealMPHalfOver_1610051257;
         _embed_css__style_MainStage_CharInfo_swf_HealMPHalfUp_51787552 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_HealMPHalfUp_51787552;
         _embed_css__style_MainStage_CharInfo_swf_ItemBagDisabled_1269116856 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_ItemBagDisabled_1269116856;
         _embed_css__style_MainStage_CharInfo_swf_ItemBagDown_1641190942 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_ItemBagDown_1641190942;
         _embed_css__style_MainStage_CharInfo_swf_ItemBagOver_1640857168 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_ItemBagOver_1640857168;
         _embed_css__style_MainStage_CharInfo_swf_ItemBagUp_992993095 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_ItemBagUp_992993095;
         _embed_css__style_MainStage_CharInfo_swf_LevelUpDisabled_419524638 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_LevelUpDisabled_419524638;
         _embed_css__style_MainStage_CharInfo_swf_LevelUpDown_430219912 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_LevelUpDown_430219912;
         _embed_css__style_MainStage_CharInfo_swf_LevelUpOver_430151066 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_LevelUpOver_430151066;
         _embed_css__style_MainStage_CharInfo_swf_LevelUpUp_1570995201 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_LevelUpUp_1570995201;
         _embed_css__style_MainStage_CharInfo_swf_MPBar_1299876263 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_MPBar_1299876263;
         _embed_css__style_MainStage_CharInfo_swf_PetPortrait_png_1860433212 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_PetPortrait_png_1860433212;
         _embed_css__style_MainStage_CharInfo_swf_SPBar_1303779517 = MMO_Game_Main_O91a__embed_css__style_MainStage_CharInfo_swf_SPBar_1303779517;
         _embed_css__style_MainStage_ChatArea_swf_ChannelButtonAquaDown_219953864 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_ChannelButtonAquaDown_219953864;
         _embed_css__style_MainStage_ChatArea_swf_ChannelButtonAquaOver_214589978 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_ChannelButtonAquaOver_214589978;
         _embed_css__style_MainStage_ChatArea_swf_ChannelButtonAquaUp_287108099 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_ChannelButtonAquaUp_287108099;
         _embed_css__style_MainStage_ChatArea_swf_ChannelButtonBlueDown_1388010666 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_ChannelButtonBlueDown_1388010666;
         _embed_css__style_MainStage_ChatArea_swf_ChannelButtonBlueOver_1380744008 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_ChannelButtonBlueOver_1380744008;
         _embed_css__style_MainStage_ChatArea_swf_ChannelButtonBlueUp_429989409 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_ChannelButtonBlueUp_429989409;
         _embed_css__style_MainStage_ChatArea_swf_ChannelButtonDisabled_231044682 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_ChannelButtonDisabled_231044682;
         _embed_css__style_MainStage_ChatArea_swf_ChannelButtonGreenDown_364691977 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_ChannelButtonGreenDown_364691977;
         _embed_css__style_MainStage_ChatArea_swf_ChannelButtonGreenOver_356968359 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_ChannelButtonGreenOver_356968359;
         _embed_css__style_MainStage_ChatArea_swf_ChannelButtonGreenUp_809884814 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_ChannelButtonGreenUp_809884814;
         _embed_css__style_MainStage_ChatArea_swf_ChannelButtonRedDown_115892021 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_ChannelButtonRedDown_115892021;
         _embed_css__style_MainStage_ChatArea_swf_ChannelButtonRedOver_114984823 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_ChannelButtonRedOver_114984823;
         _embed_css__style_MainStage_ChatArea_swf_ChannelButtonRedUp_622608972 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_ChannelButtonRedUp_622608972;
         _embed_css__style_MainStage_ChatArea_swf_ChannelButtonYellowDown_792858944 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_ChannelButtonYellowDown_792858944;
         _embed_css__style_MainStage_ChatArea_swf_ChannelButtonYellowOver_793581906 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_ChannelButtonYellowOver_793581906;
         _embed_css__style_MainStage_ChatArea_swf_ChannelButtonYellowUp_1371439771 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_ChannelButtonYellowUp_1371439771;
         _embed_css__style_MainStage_ChatArea_swf_ChatBar_957376656 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_ChatBar_957376656;
         _embed_css__style_MainStage_ChatArea_swf_ChatButtonDisabled_8837955 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_ChatButtonDisabled_8837955;
         _embed_css__style_MainStage_ChatArea_swf_ChatButtonDown_1110103235 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_ChatButtonDown_1110103235;
         _embed_css__style_MainStage_ChatArea_swf_ChatButtonOver_1110826197 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_ChatButtonOver_1110826197;
         _embed_css__style_MainStage_ChatArea_swf_ChatButtonUp_1286670502 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_ChatButtonUp_1286670502;
         _embed_css__style_MainStage_ChatArea_swf_ClearDisabled_1399442162 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_ClearDisabled_1399442162;
         _embed_css__style_MainStage_ChatArea_swf_ClearDown_1528000092 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_ClearDown_1528000092;
         _embed_css__style_MainStage_ChatArea_swf_ClearOver_1527801626 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_ClearOver_1527801626;
         _embed_css__style_MainStage_ChatArea_swf_ClearUp_536952815 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_ClearUp_536952815;
         _embed_css__style_MainStage_ChatArea_swf_DiminishDisabled_2105069918 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_DiminishDisabled_2105069918;
         _embed_css__style_MainStage_ChatArea_swf_DiminishDown_1187235256 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_DiminishDown_1187235256;
         _embed_css__style_MainStage_ChatArea_swf_DiminishOver_1192598630 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_DiminishOver_1192598630;
         _embed_css__style_MainStage_ChatArea_swf_DiminishUp_741962365 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_DiminishUp_741962365;
         _embed_css__style_MainStage_ChatArea_swf_EmotionButtonDisabled_461997102 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_EmotionButtonDisabled_461997102;
         _embed_css__style_MainStage_ChatArea_swf_EmotionButtonDown_1892803524 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_EmotionButtonDown_1892803524;
         _embed_css__style_MainStage_ChatArea_swf_EmotionButtonOver_1893255942 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_EmotionButtonOver_1893255942;
         _embed_css__style_MainStage_ChatArea_swf_EmotionButtonUp_148758031 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_EmotionButtonUp_148758031;
         _embed_css__style_MainStage_ChatArea_swf_EnlargeDisabled_1260602597 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_EnlargeDisabled_1260602597;
         _embed_css__style_MainStage_ChatArea_swf_EnlargeDown_260238069 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_EnlargeDown_260238069;
         _embed_css__style_MainStage_ChatArea_swf_EnlargeOver_264998819 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_EnlargeOver_264998819;
         _embed_css__style_MainStage_ChatArea_swf_EnlargeUp_544827266 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_EnlargeUp_544827266;
         _embed_css__style_MainStage_ChatArea_swf_LockDisabled_308126660 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_LockDisabled_308126660;
         _embed_css__style_MainStage_ChatArea_swf_LockDown_957791038 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_LockDown_957791038;
         _embed_css__style_MainStage_ChatArea_swf_LockOver_957330220 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_LockOver_957330220;
         _embed_css__style_MainStage_ChatArea_swf_LockUp_814947485 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf_LockUp_814947485;
         _embed_css__style_MainStage_ChatArea_swf___1_Lock_1412462800 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf___1_Lock_1412462800;
         _embed_css__style_MainStage_ChatArea_swf___2_1289688458 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf___2_1289688458;
         _embed_css__style_MainStage_ChatArea_swf___3_1289688183 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf___3_1289688183;
         _embed_css__style_MainStage_ChatArea_swf___4_1289688184 = MMO_Game_Main_O91a__embed_css__style_MainStage_ChatArea_swf___4_1289688184;
         _embed_css__style_MainStage_Emotions_swf_BtnEm_mc0_897036822 = MMO_Game_Main_O91a__embed_css__style_MainStage_Emotions_swf_BtnEm_mc0_897036822;
         _embed_css__style_MainStage_Emotions_swf_BtnEm_mc1_897037031 = MMO_Game_Main_O91a__embed_css__style_MainStage_Emotions_swf_BtnEm_mc1_897037031;
         _embed_css__style_MainStage_Emotions_swf_CanvasEm_mc1_283394853 = MMO_Game_Main_O91a__embed_css__style_MainStage_Emotions_swf_CanvasEm_mc1_283394853;
         _embed_css__style_MainStage_LocationBar_swf_ChangeChannelDisabled_282581808 = MMO_Game_Main_O91a__embed_css__style_MainStage_LocationBar_swf_ChangeChannelDisabled_282581808;
         _embed_css__style_MainStage_LocationBar_swf_ChangeChannelDown_1309753194 = MMO_Game_Main_O91a__embed_css__style_MainStage_LocationBar_swf_ChangeChannelDown_1309753194;
         _embed_css__style_MainStage_LocationBar_swf_ChangeChannelOver_1309548600 = MMO_Game_Main_O91a__embed_css__style_MainStage_LocationBar_swf_ChangeChannelOver_1309548600;
         _embed_css__style_MainStage_LocationBar_swf_ChangeChannelUp_1885286477 = MMO_Game_Main_O91a__embed_css__style_MainStage_LocationBar_swf_ChangeChannelUp_1885286477;
         _embed_css__style_MainStage_LocationBar_swf_LocationIndicator_432413889 = MMO_Game_Main_O91a__embed_css__style_MainStage_LocationBar_swf_LocationIndicator_432413889;
         _embed_css__style_MainStage_LocationBar_swf_shizhongOver_2071584959 = MMO_Game_Main_O91a__embed_css__style_MainStage_LocationBar_swf_shizhongOver_2071584959;
         _embed_css__style_MainStage_LocationBar_swf_shizhongUp_186253110 = MMO_Game_Main_O91a__embed_css__style_MainStage_LocationBar_swf_shizhongUp_186253110;
         _embed_css__style_MainStage_ShortcutCanvas_swf_AutoBattleDown_1122091844 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf_AutoBattleDown_1122091844;
         _embed_css__style_MainStage_ShortcutCanvas_swf_AutoBattleOver_1117182126 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf_AutoBattleOver_1117182126;
         _embed_css__style_MainStage_ShortcutCanvas_swf_AutoBattleUp_2146729861 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf_AutoBattleUp_2146729861;
         _embed_css__style_MainStage_ShortcutCanvas_swf_HideShortcutsDisabled_439506158 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf_HideShortcutsDisabled_439506158;
         _embed_css__style_MainStage_ShortcutCanvas_swf_HideShortcutsDown_1768050432 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf_HideShortcutsDown_1768050432;
         _embed_css__style_MainStage_ShortcutCanvas_swf_HideShortcutsOver_1768535062 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf_HideShortcutsOver_1768535062;
         _embed_css__style_MainStage_ShortcutCanvas_swf_HideShortcutsUp_832818249 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf_HideShortcutsUp_832818249;
         _embed_css__style_MainStage_ShortcutCanvas_swf_LastRowDisabled_1657741319 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf_LastRowDisabled_1657741319;
         _embed_css__style_MainStage_ShortcutCanvas_swf_LastRowDown_52693289 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf_LastRowDown_52693289;
         _embed_css__style_MainStage_ShortcutCanvas_swf_LastRowOver_53694767 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf_LastRowOver_53694767;
         _embed_css__style_MainStage_ShortcutCanvas_swf_LastRowUp_1217426294 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf_LastRowUp_1217426294;
         _embed_css__style_MainStage_ShortcutCanvas_swf_NextRowDisabled_1052896118 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf_NextRowDisabled_1052896118;
         _embed_css__style_MainStage_ShortcutCanvas_swf_NextRowDown_520908260 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf_NextRowDown_520908260;
         _embed_css__style_MainStage_ShortcutCanvas_swf_NextRowOver_521233870 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf_NextRowOver_521233870;
         _embed_css__style_MainStage_ShortcutCanvas_swf_NextRowUp_1680351899 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf_NextRowUp_1680351899;
         _embed_css__style_MainStage_ShortcutCanvas_swf_SettingBg_886543000 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf_SettingBg_886543000;
         _embed_css__style_MainStage_ShortcutCanvas_swf_SettingDisabled_2012671843 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf_SettingDisabled_2012671843;
         _embed_css__style_MainStage_ShortcutCanvas_swf_SettingDown_1183821451 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf_SettingDown_1183821451;
         _embed_css__style_MainStage_ShortcutCanvas_swf_SettingOver_1183889717 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf_SettingOver_1183889717;
         _embed_css__style_MainStage_ShortcutCanvas_swf_SettingUp_886546178 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf_SettingUp_886546178;
         _embed_css__style_MainStage_ShortcutCanvas_swf_ShortcutBackground_327127749 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf_ShortcutBackground_327127749;
         _embed_css__style_MainStage_ShortcutCanvas_swf_ShowShortcutsDisabled_1819805443 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf_ShowShortcutsDisabled_1819805443;
         _embed_css__style_MainStage_ShortcutCanvas_swf_ShowShortcutsDown_996009493 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf_ShowShortcutsDown_996009493;
         _embed_css__style_MainStage_ShortcutCanvas_swf_ShowShortcutsOver_1000918763 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf_ShowShortcutsOver_1000918763;
         _embed_css__style_MainStage_ShortcutCanvas_swf_ShowShortcutsUp_2094111778 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf_ShowShortcutsUp_2094111778;
         _embed_css__style_MainStage_ShortcutCanvas_swf__1_445936937 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf__1_445936937;
         _embed_css__style_MainStage_ShortcutCanvas_swf__2_445936940 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf__2_445936940;
         _embed_css__style_MainStage_ShortcutCanvas_swf__3_445936939 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf__3_445936939;
         _embed_css__style_MainStage_ShortcutCanvas_swf__4_445936934 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf__4_445936934;
         _embed_css__style_MainStage_ShortcutCanvas_swf___1_439915049 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf___1_439915049;
         _embed_css__style_MainStage_ShortcutCanvas_swf___2_439915052 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf___2_439915052;
         _embed_css__style_MainStage_ShortcutCanvas_swf___3_439915051 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf___3_439915051;
         _embed_css__style_MainStage_ShortcutCanvas_swf___4_439915046 = MMO_Game_Main_O91a__embed_css__style_MainStage_ShortcutCanvas_swf___4_439915046;
         _embed_css__style_MainStage_SystemBarButtons2_swf_richang1_2098451002 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons2_swf_richang1_2098451002;
         _embed_css__style_MainStage_SystemBarButtons2_swf_richang2_2098451015 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons2_swf_richang2_2098451015;
         _embed_css__style_MainStage_SystemBarButtons2_swf_richang3_2098451016 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons2_swf_richang3_2098451016;
         _embed_css__style_MainStage_SystemBarButtons2_swf_richang4_2098451013 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons2_swf_richang4_2098451013;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_Achievement_disable_mc_1456016513 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_Achievement_disable_mc_1456016513;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_Achievement_down_mc_519401693 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_Achievement_down_mc_519401693;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_Achievement_over_mc_955067765 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_Achievement_over_mc_955067765;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_Achievement_up_mc_1009118450 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_Achievement_up_mc_1009118450;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_Contest_disabled_mc_687074490 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_Contest_disabled_mc_687074490;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_Contest_down_mc_2098185008 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_Contest_down_mc_2098185008;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_Contest_over_mc_1575240738 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_Contest_over_mc_1575240738;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_Contest_up_mc_796346935 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_Contest_up_mc_796346935;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_bag_disabled_mc_1909961914 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_bag_disabled_mc_1909961914;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_bag_down_mc_208334308 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_bag_down_mc_208334308;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_bag_over_mc_1031107410 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_bag_over_mc_1031107410;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_bag_up_mc_837243965 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_bag_up_mc_837243965;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_friend_disabled_mc_876283478 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_friend_disabled_mc_876283478;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_friend_down_mc_1678637972 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_friend_down_mc_1678637972;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_friend_over_mc_1792582334 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_friend_over_mc_1792582334;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_friend_up_mc_791598381 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_friend_up_mc_791598381;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_person_disabled_mc_712388531 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_person_disabled_mc_712388531;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_person_down_mc_2026601123 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_person_down_mc_2026601123;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_person_over_mc_1234213109 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_person_over_mc_1234213109;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_person_up_mc_1201979762 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_person_up_mc_1201979762;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_pet_down_mc_1890657267 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_pet_down_mc_1890657267;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_pet_over_mc_1100570245 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_pet_over_mc_1100570245;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_pet_up_mc_992183262 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_pet_up_mc_992183262;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_skills_disabled_mc_653527490 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_skills_disabled_mc_653527490;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_skills_down_mc_413945192 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_skills_down_mc_413945192;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_skills_over_mc_910872874 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_skills_over_mc_910872874;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_skills_up_mc_80387777 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_skills_up_mc_80387777;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_task_diasbled_mc_121378849 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_task_diasbled_mc_121378849;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_task_down_mc_1647096851 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_task_down_mc_1647096851;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_task_over_mc_1123039579 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_task_over_mc_1123039579;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_task_up_mc_1100977150 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_task_up_mc_1100977150;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_task_upbig_mc_1028216562 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_task_upbig_mc_1028216562;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_team_disabled_mc_2129318187 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_team_disabled_mc_2129318187;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_team_down_mc_1275399061 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_team_down_mc_1275399061;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_team_over_mc_2099375427 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_team_over_mc_2099375427;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_team_up_mc_784893718 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_team_up_mc_784893718;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_team_upbig_mc_1409262262 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_team_upbig_mc_1409262262;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_union_disabled_mc_2025255629 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_union_disabled_mc_2025255629;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_union_down_mc_43852509 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_union_down_mc_43852509;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_union_over_mc_1002013835 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_union_over_mc_1002013835;
         _embed_css__style_MainStage_SystemBarButtons_swf_button_union_up_mc_226304270 = MMO_Game_Main_O91a__embed_css__style_MainStage_SystemBarButtons_swf_button_union_up_mc_226304270;
         _embed_css__style_MainStage_TopRightButtonTray_swf_AllowPKDisabled_753707929 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_AllowPKDisabled_753707929;
         _embed_css__style_MainStage_TopRightButtonTray_swf_AllowPKDown_1280727113 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_AllowPKDown_1280727113;
         _embed_css__style_MainStage_TopRightButtonTray_swf_AllowPKOver_1280880719 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_AllowPKOver_1280880719;
         _embed_css__style_MainStage_TopRightButtonTray_swf_AllowPKUp_949681520 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_AllowPKUp_949681520;
         _embed_css__style_MainStage_TopRightButtonTray_swf_ButtonBackground_947845177 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_ButtonBackground_947845177;
         _embed_css__style_MainStage_TopRightButtonTray_swf_EarthDisabled_900430249 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_EarthDisabled_900430249;
         _embed_css__style_MainStage_TopRightButtonTray_swf_EarthDown_1495384707 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_EarthDown_1495384707;
         _embed_css__style_MainStage_TopRightButtonTray_swf_EarthOver_1494495729 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_EarthOver_1494495729;
         _embed_css__style_MainStage_TopRightButtonTray_swf_EarthUp_438245898 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_EarthUp_438245898;
         _embed_css__style_MainStage_TopRightButtonTray_swf_HelpDisabled_488273298 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_HelpDisabled_488273298;
         _embed_css__style_MainStage_TopRightButtonTray_swf_HelpDown_535726660 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_HelpDown_535726660;
         _embed_css__style_MainStage_TopRightButtonTray_swf_HelpOver_535659194 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_HelpOver_535659194;
         _embed_css__style_MainStage_TopRightButtonTray_swf_HelpUp_865696947 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_HelpUp_865696947;
         _embed_css__style_MainStage_TopRightButtonTray_swf_MouseDisabled_1694705722 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_MouseDisabled_1694705722;
         _embed_css__style_MainStage_TopRightButtonTray_swf_MouseDown_1314472872 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_MouseDown_1314472872;
         _embed_css__style_MainStage_TopRightButtonTray_swf_MouseUp_1499378663 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_MouseUp_1499378663;
         _embed_css__style_MainStage_TopRightButtonTray_swf_Mouseover_1316896590 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_Mouseover_1316896590;
         _embed_css__style_MainStage_TopRightButtonTray_swf_NotAllowPKDisabled_517928958 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_NotAllowPKDisabled_517928958;
         _embed_css__style_MainStage_TopRightButtonTray_swf_NotAllowPKDown_2059958028 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_NotAllowPKDown_2059958028;
         _embed_css__style_MainStage_TopRightButtonTray_swf_NotAllowPKOver_2056330966 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_NotAllowPKOver_2056330966;
         _embed_css__style_MainStage_TopRightButtonTray_swf_NotAllowPKUp_766845149 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_NotAllowPKUp_766845149;
         _embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsHideDisabled_2002675196 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsHideDisabled_2002675196;
         _embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsHideDown_2044430334 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsHideDown_2044430334;
         _embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsHideOver_2031263724 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsHideOver_2031263724;
         _embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsHideUp_1217161051 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsHideUp_1217161051;
         _embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsShowDisabled_1120343311 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsShowDisabled_1120343311;
         _embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsShowDown_1871146027 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsShowDown_1871146027;
         _embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsShowOver_1871266841 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsShowOver_1871266841;
         _embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsShowUp_1037296302 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsShowUp_1037296302;
         _embed_css__style_MainStage_TopRightButtonTray_swf_ShopDisabled_224720469 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_ShopDisabled_224720469;
         _embed_css__style_MainStage_TopRightButtonTray_swf_ShopDown_456714575 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_ShopDown_456714575;
         _embed_css__style_MainStage_TopRightButtonTray_swf_ShopOver_460112125 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_ShopOver_460112125;
         _embed_css__style_MainStage_TopRightButtonTray_swf_SpeakerDisabled_1514374956 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_SpeakerDisabled_1514374956;
         _embed_css__style_MainStage_TopRightButtonTray_swf_SpeakerDown_61066438 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_SpeakerDown_61066438;
         _embed_css__style_MainStage_TopRightButtonTray_swf_SpeakerUp_1152530611 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_SpeakerUp_1152530611;
         _embed_css__style_MainStage_TopRightButtonTray_swf_Speakerover_63350996 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_Speakerover_63350996;
         _embed_css__style_MainStage_TopRightButtonTray_swf_Tray2_807253389 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_Tray2_807253389;
         _embed_css__style_MainStage_TopRightButtonTray_swf_Tray_1269799111 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_Tray_1269799111;
         _embed_css__style_MainStage_TopRightButtonTray_swf_putDisabled_1211229348 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_putDisabled_1211229348;
         _embed_css__style_MainStage_TopRightButtonTray_swf_putdown_637353430 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_putdown_637353430;
         _embed_css__style_MainStage_TopRightButtonTray_swf_putover_620763652 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_putover_620763652;
         _embed_css__style_MainStage_TopRightButtonTray_swf_putup_1316373347 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_putup_1316373347;
         _embed_css__style_MainStage_TopRightButtonTray_swf_rankingDisabled_985722443 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_rankingDisabled_985722443;
         _embed_css__style_MainStage_TopRightButtonTray_swf_rankingDown_1504797521 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_rankingDown_1504797521;
         _embed_css__style_MainStage_TopRightButtonTray_swf_rankingover_1505984515 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_rankingover_1505984515;
         _embed_css__style_MainStage_TopRightButtonTray_swf_rankingup_241508662 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_rankingup_241508662;
         _embed_css__style_MainStage_TopRightButtonTray_swf_shopup_29081098 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_shopup_29081098;
         _embed_css__style_MainStage_TopRightButtonTray_swf_shrinkageDisabled_888929173 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_shrinkageDisabled_888929173;
         _embed_css__style_MainStage_TopRightButtonTray_swf_shrinkagedown_1382996655 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_shrinkagedown_1382996655;
         _embed_css__style_MainStage_TopRightButtonTray_swf_shrinkageover_1383147997 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_shrinkageover_1383147997;
         _embed_css__style_MainStage_TopRightButtonTray_swf_shrinkageup_310607082 = MMO_Game_Main_O91a__embed_css__style_MainStage_TopRightButtonTray_swf_shrinkageup_310607082;
         _embed_css__style_MainStage_fuli_swf_disable_198626705 = MMO_Game_Main_O91a__embed_css__style_MainStage_fuli_swf_disable_198626705;
         _embed_css__style_MainStage_fuli_swf_down_295188889 = MMO_Game_Main_O91a__embed_css__style_MainStage_fuli_swf_down_295188889;
         _embed_css__style_MainStage_fuli_swf_normal_1471258718 = MMO_Game_Main_O91a__embed_css__style_MainStage_fuli_swf_normal_1471258718;
         _embed_css__style_MainStage_fuli_swf_over_294068619 = MMO_Game_Main_O91a__embed_css__style_MainStage_fuli_swf_over_294068619;
         _embed_css__style_Maps_MapIcons_swf___1_485900790 = MMO_Game_Main_O91a__embed_css__style_Maps_MapIcons_swf___1_485900790;
         _embed_css__style_Maps_MapIcons_swf___2_485900679 = MMO_Game_Main_O91a__embed_css__style_Maps_MapIcons_swf___2_485900679;
         _embed_css__style_Maps_WorldMap1_jpg_349752265 = MMO_Game_Main_O91a__embed_css__style_Maps_WorldMap1_jpg_349752265;
         _embed_css__style_Maps_WorldMap_Back_jpg_1100806335 = MMO_Game_Main_O91a__embed_css__style_Maps_WorldMap_Back_jpg_1100806335;
         _embed_css__style_Miscellaneous_UIHelp_swf_UIHelp_205113004 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_UIHelp_swf_UIHelp_205113004;
         _embed_css__style_Miscellaneous_____________swf__1_322320128 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf__1_322320128;
         _embed_css__style_Miscellaneous_____________swf__2_322320135 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf__2_322320135;
         _embed_css__style_Miscellaneous_____________swf__3_322320134 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf__3_322320134;
         _embed_css__style_Miscellaneous_____________swf__4_322320133 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf__4_322320133;
         _embed_css__style_Miscellaneous_____________swf___1_308398614 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf___1_308398614;
         _embed_css__style_Miscellaneous_____________swf___1_312162291 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf___1_312162291;
         _embed_css__style_Miscellaneous_____________swf___2_308398695 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf___2_308398695;
         _embed_css__style_Miscellaneous_____________swf___2_312162292 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf___2_312162292;
         _embed_css__style_Miscellaneous_____________swf___3_308398696 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf___3_308398696;
         _embed_css__style_Miscellaneous_____________swf___3_312162301 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf___3_312162301;
         _embed_css__style_Miscellaneous_____________swf___4_308398689 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf___4_308398689;
         _embed_css__style_Miscellaneous_____________swf___4_312162302 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf___4_312162302;
         _embed_css__style_Miscellaneous_____________swf____1_144226947 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf____1_144226947;
         _embed_css__style_Miscellaneous_____________swf____1_194162015 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf____1_194162015;
         _embed_css__style_Miscellaneous_____________swf____2_144226946 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf____2_144226946;
         _embed_css__style_Miscellaneous_____________swf____2_194162014 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf____2_194162014;
         _embed_css__style_Miscellaneous_____________swf____3_144227057 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf____3_144227057;
         _embed_css__style_Miscellaneous_____________swf____3_194162013 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf____3_194162013;
         _embed_css__style_Miscellaneous_____________swf____4_144227056 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf____4_144227056;
         _embed_css__style_Miscellaneous_____________swf____4_194162012 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf____4_194162012;
         _embed_css__style_Miscellaneous_____________swf_aixin1_2068175507 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf_aixin1_2068175507;
         _embed_css__style_Miscellaneous_____________swf_aixin2_2068175508 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf_aixin2_2068175508;
         _embed_css__style_Miscellaneous_____________swf_aixin3_2068175517 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf_aixin3_2068175517;
         _embed_css__style_Miscellaneous_____________swf_aixin4_2068175518 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf_aixin4_2068175518;
         _embed_css__style_Miscellaneous_____________swf_shangxin1_1808644056 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf_shangxin1_1808644056;
         _embed_css__style_Miscellaneous_____________swf_shangxin2_1808644049 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf_shangxin2_1808644049;
         _embed_css__style_Miscellaneous_____________swf_shangxin3_1808644050 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf_shangxin3_1808644050;
         _embed_css__style_Miscellaneous_____________swf_shangxin4_1808644051 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_____________swf_shangxin4_1808644051;
         _embed_css__style_Miscellaneous________swf_____10_1433061109 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous________swf_____10_1433061109;
         _embed_css__style_Miscellaneous________swf_____11_1433061110 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous________swf_____11_1433061110;
         _embed_css__style_Miscellaneous________swf_____12_1433061115 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous________swf_____12_1433061115;
         _embed_css__style_Miscellaneous________swf_____1_1424998877 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous________swf_____1_1424998877;
         _embed_css__style_Miscellaneous________swf_____2_1424998878 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous________swf_____2_1424998878;
         _embed_css__style_Miscellaneous________swf_____3_1424998851 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous________swf_____3_1424998851;
         _embed_css__style_Miscellaneous________swf_____4_1424998852 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous________swf_____4_1424998852;
         _embed_css__style_Miscellaneous________swf_____5_1424998865 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous________swf_____5_1424998865;
         _embed_css__style_Miscellaneous________swf_____6_1424998866 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous________swf_____6_1424998866;
         _embed_css__style_Miscellaneous________swf_____7_1424998871 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous________swf_____7_1424998871;
         _embed_css__style_Miscellaneous________swf_____8_1424998872 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous________swf_____8_1424998872;
         _embed_css__style_Miscellaneous________swf_____9_1424998869 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous________swf_____9_1424998869;
         _embed_css__style_Miscellaneous______old_swf___1209350812 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous______old_swf___1209350812;
         _embed_css__style_Miscellaneous______swf_______1_1770656048 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous______swf_______1_1770656048;
         _embed_css__style_Miscellaneous______swf_______2_1770656047 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous______swf_______2_1770656047;
         _embed_css__style_Miscellaneous______swf_______3_1770656046 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous______swf_______3_1770656046;
         _embed_css__style_Miscellaneous______swf_______4_1770656045 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous______swf_______4_1770656045;
         _embed_css__style_Miscellaneous_dot4heiyaoshi_swf_dianjihuo2_2068111984 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_dot4heiyaoshi_swf_dianjihuo2_2068111984;
         _embed_css__style_Miscellaneous_dot4heiyaoshi_swf_dianjihuo3_2068111991 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_dot4heiyaoshi_swf_dianjihuo3_2068111991;
         _embed_css__style_Miscellaneous_icon_ICON_QUEST_STATE_4_png_746277926 = MMO_Game_Main_O91a__embed_css__style_Miscellaneous_icon_ICON_QUEST_STATE_4_png_746277926;
         _embed_css__style_Panels_BagPanel_swf_ExchangePoint_1073340476 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_ExchangePoint_1073340476;
         _embed_css__style_Panels_BagPanel_swf_GoldBinded_195638531 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_GoldBinded_195638531;
         _embed_css__style_Panels_BagPanel_swf_SilverBinded_204893712 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_SilverBinded_204893712;
         _embed_css__style_Panels_BagPanel_swf___1_1191389239 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf___1_1191389239;
         _embed_css__style_Panels_BagPanel_swf___1_1206870538 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf___1_1206870538;
         _embed_css__style_Panels_BagPanel_swf___2_1191389238 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf___2_1191389238;
         _embed_css__style_Panels_BagPanel_swf___2_1206870553 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf___2_1206870553;
         _embed_css__style_Panels_BagPanel_swf___3_1191389237 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf___3_1191389237;
         _embed_css__style_Panels_BagPanel_swf___3_1206870560 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf___3_1206870560;
         _embed_css__style_Panels_BagPanel_swf___4_1191389228 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf___4_1191389228;
         _embed_css__style_Panels_BagPanel_swf___4_1206870559 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf___4_1206870559;
         _embed_css__style_Panels_BagPanel_swf_____1073924059 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_____1073924059;
         _embed_css__style_Panels_BagPanel_swf_____1_779808610 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_____1_779808610;
         _embed_css__style_Panels_BagPanel_swf_____1_780047743 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_____1_780047743;
         _embed_css__style_Panels_BagPanel_swf_____2_779808611 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_____2_779808611;
         _embed_css__style_Panels_BagPanel_swf_____2_780047736 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_____2_780047736;
         _embed_css__style_Panels_BagPanel_swf_____3_779808620 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_____3_779808620;
         _embed_css__style_Panels_BagPanel_swf_____3_780047737 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_____3_780047737;
         _embed_css__style_Panels_BagPanel_swf_____4_779808621 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_____4_779808621;
         _embed_css__style_Panels_BagPanel_swf_____4_780047738 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_____4_780047738;
         _embed_css__style_Panels_BagPanel_swf_button_Discarded_down_mc2_1810344317 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_button_Discarded_down_mc2_1810344317;
         _embed_css__style_Panels_BagPanel_swf_button_Discarded_over_mc2_597919425 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_button_Discarded_over_mc2_597919425;
         _embed_css__style_Panels_BagPanel_swf_button_Discarded_up_mc2_1437533958 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_button_Discarded_up_mc2_1437533958;
         _embed_css__style_Panels_BagPanel_swf_button_Lock_down_mc2_1121308069 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_button_Lock_down_mc2_1121308069;
         _embed_css__style_Panels_BagPanel_swf_button_Lock_over_mc2_1802724953 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_button_Lock_over_mc2_1802724953;
         _embed_css__style_Panels_BagPanel_swf_button_Lock_up_mc2_1492751790 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_button_Lock_up_mc2_1492751790;
         _embed_css__style_Panels_BagPanel_swf_button_Repair_down_mc2_1958948283 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_button_Repair_down_mc2_1958948283;
         _embed_css__style_Panels_BagPanel_swf_button_Resolution_down_mc2_2010629188 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_button_Resolution_down_mc2_2010629188;
         _embed_css__style_Panels_BagPanel_swf_button_Resolution_over_mc2_644966570 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_button_Resolution_over_mc2_644966570;
         _embed_css__style_Panels_BagPanel_swf_button_Resolution_up_mc2_1396255603 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_button_Resolution_up_mc2_1396255603;
         _embed_css__style_Panels_BagPanel_swf_button_repair_up_mc2_392924140 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_button_repair_up_mc2_392924140;
         _embed_css__style_Panels_BagPanel_swf_button_rpeair_over_mc2_150649313 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_button_rpeair_over_mc2_150649313;
         _embed_css__style_Panels_BagPanel_swf_button_sorting_down_mc2_153195258 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_button_sorting_down_mc2_153195258;
         _embed_css__style_Panels_BagPanel_swf_button_sorting_over_mc2_1599354880 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_button_sorting_over_mc2_1599354880;
         _embed_css__style_Panels_BagPanel_swf_button_sorting_up_mc2_1326759489 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_button_sorting_up_mc2_1326759489;
         _embed_css__style_Panels_BagPanel_swf_button_use_down_mc2_196332123 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_button_use_down_mc2_196332123;
         _embed_css__style_Panels_BagPanel_swf_button_use_over_mc2_63268299 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_button_use_over_mc2_63268299;
         _embed_css__style_Panels_BagPanel_swf_button_use_up_mc2_604626604 = MMO_Game_Main_O91a__embed_css__style_Panels_BagPanel_swf_button_use_up_mc2_604626604;
         _embed_css__style_Panels_Fazenda_swf___1_709048034 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf___1_709048034;
         _embed_css__style_Panels_Fazenda_swf___1_747361718 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf___1_747361718;
         _embed_css__style_Panels_Fazenda_swf___1_748464653 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf___1_748464653;
         _embed_css__style_Panels_Fazenda_swf___1_758261211 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf___1_758261211;
         _embed_css__style_Panels_Fazenda_swf___1_758359819 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf___1_758359819;
         _embed_css__style_Panels_Fazenda_swf___1_759491052 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf___1_759491052;
         _embed_css__style_Panels_Fazenda_swf___2_709048029 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf___2_709048029;
         _embed_css__style_Panels_Fazenda_swf___2_747361713 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf___2_747361713;
         _embed_css__style_Panels_Fazenda_swf___2_748464652 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf___2_748464652;
         _embed_css__style_Panels_Fazenda_swf___2_758261210 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf___2_758261210;
         _embed_css__style_Panels_Fazenda_swf___2_758359818 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf___2_758359818;
         _embed_css__style_Panels_Fazenda_swf___2_759491055 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf___2_759491055;
         _embed_css__style_Panels_Fazenda_swf___3_709048028 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf___3_709048028;
         _embed_css__style_Panels_Fazenda_swf___3_747361712 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf___3_747361712;
         _embed_css__style_Panels_Fazenda_swf___3_748464655 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf___3_748464655;
         _embed_css__style_Panels_Fazenda_swf___3_758261205 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf___3_758261205;
         _embed_css__style_Panels_Fazenda_swf___3_758359813 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf___3_758359813;
         _embed_css__style_Panels_Fazenda_swf___3_759491054 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf___3_759491054;
         _embed_css__style_Panels_Fazenda_swf___4_747361715 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf___4_747361715;
         _embed_css__style_Panels_Fazenda_swf____1_1418934552 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf____1_1418934552;
         _embed_css__style_Panels_Fazenda_swf____1_1419199919 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf____1_1419199919;
         _embed_css__style_Panels_Fazenda_swf____2_1419199918 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf____2_1419199918;
         _embed_css__style_Panels_Fazenda_swf____3_1418934554 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf____3_1418934554;
         _embed_css__style_Panels_Fazenda_swf____3_1419199913 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf____3_1419199913;
         _embed_css__style_Panels_Fazenda_swf____4_1418934549 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf____4_1418934549;
         _embed_css__style_Panels_Fazenda_swf____4_1419199912 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf____4_1419199912;
         _embed_css__style_Panels_Fazenda_swf____738296924 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf____738296924;
         _embed_css__style_Panels_Fazenda_swf____739737071 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf____739737071;
         _embed_css__style_Panels_Fazenda_swf____739948502 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf____739948502;
         _embed_css__style_Panels_Fazenda_swf____740036774 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf____740036774;
         _embed_css__style_Panels_Fazenda_swf____740043933 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf____740043933;
         _embed_css__style_Panels_Fazenda_swf____740080972 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf____740080972;
         _embed_css__style_Panels_Fazenda_swf____740181703 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf____740181703;
         _embed_css__style_Panels_Fazenda_swf_____1_1187425784 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf_____1_1187425784;
         _embed_css__style_Panels_Fazenda_swf_____1_1187907288 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf_____1_1187907288;
         _embed_css__style_Panels_Fazenda_swf_____1_1190660477 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf_____1_1190660477;
         _embed_css__style_Panels_Fazenda_swf_____1_71722262 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf_____1_71722262;
         _embed_css__style_Panels_Fazenda_swf_____2_1187425781 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf_____2_1187425781;
         _embed_css__style_Panels_Fazenda_swf_____2_1187907285 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf_____2_1187907285;
         _embed_css__style_Panels_Fazenda_swf_____2_1190660478 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf_____2_1190660478;
         _embed_css__style_Panels_Fazenda_swf_____2_71722267 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf_____2_71722267;
         _embed_css__style_Panels_Fazenda_swf_____3_1187425782 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf_____3_1187425782;
         _embed_css__style_Panels_Fazenda_swf_____3_1187907286 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf_____3_1187907286;
         _embed_css__style_Panels_Fazenda_swf_____3_1190660355 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf_____3_1190660355;
         _embed_css__style_Panels_Fazenda_swf_____3_71722268 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf_____3_71722268;
         _embed_css__style_Panels_Fazenda_swf______1177527854 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf______1177527854;
         _embed_css__style_Panels_Fazenda_swf______1179734145 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf______1179734145;
         _embed_css__style_Panels_Fazenda_swf______1179748065 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf______1179748065;
         _embed_css__style_Panels_Fazenda_swf______1212720359 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf______1212720359;
         _embed_css__style_Panels_Fazenda_swf_______1477720989 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf_______1477720989;
         _embed_css__style_Panels_Fazenda_swf________1026284914 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf________1026284914;
         _embed_css__style_Panels_Fazenda_swf________1_1557428799 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf________1_1557428799;
         _embed_css__style_Panels_Fazenda_swf________1_1558469731 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf________1_1558469731;
         _embed_css__style_Panels_Fazenda_swf________28000983 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf________28000983;
         _embed_css__style_Panels_Fazenda_swf________2_1557428798 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf________2_1557428798;
         _embed_css__style_Panels_Fazenda_swf________2_1558469730 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf________2_1558469730;
         _embed_css__style_Panels_Fazenda_swf________3_1557428793 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf________3_1557428793;
         _embed_css__style_Panels_Fazenda_swf________3_1558469725 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf________3_1558469725;
         _embed_css__style_Panels_Fazenda_swf________4_1557428792 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf________4_1557428792;
         _embed_css__style_Panels_Fazenda_swf________4_1558469724 = MMO_Game_Main_O91a__embed_css__style_Panels_Fazenda_swf________4_1558469724;
         _embed_css__style_Panels_Misc_swf______1_545048348 = MMO_Game_Main_O91a__embed_css__style_Panels_Misc_swf______1_545048348;
         _embed_css__style_Panels_Misc_swf______2_545048347 = MMO_Game_Main_O91a__embed_css__style_Panels_Misc_swf______2_545048347;
         _embed_css__style_Panels_Misc_swf______3_545048346 = MMO_Game_Main_O91a__embed_css__style_Panels_Misc_swf______3_545048346;
         _embed_css__style_Panels_Misc_swf______4_545048329 = MMO_Game_Main_O91a__embed_css__style_Panels_Misc_swf______4_545048329;
         _embed_css__style_Panels_Misc_swf_renrendou_1735379633 = MMO_Game_Main_O91a__embed_css__style_Panels_Misc_swf_renrendou_1735379633;
         _embed_css__style_Panels_Vow_swf___1_1417649099 = MMO_Game_Main_O91a__embed_css__style_Panels_Vow_swf___1_1417649099;
         _embed_css__style_Panels_Vow_swf___2_1417649102 = MMO_Game_Main_O91a__embed_css__style_Panels_Vow_swf___2_1417649102;
         _embed_css__style_Panels_Vow_swf___3_1417649101 = MMO_Game_Main_O91a__embed_css__style_Panels_Vow_swf___3_1417649101;
         _embed_css__style_Panels_Vow_swf___4_1417649104 = MMO_Game_Main_O91a__embed_css__style_Panels_Vow_swf___4_1417649104;
         _embed_css__style_Panels_______3_swf_Caidanshang1_375022321 = MMO_Game_Main_O91a__embed_css__style_Panels_______3_swf_Caidanshang1_375022321;
         _embed_css__style_Panels_______3_swf_Caidanshang2_375022324 = MMO_Game_Main_O91a__embed_css__style_Panels_______3_swf_Caidanshang2_375022324;
         _embed_css__style_Panels_______3_swf_Caidanshang3_375022323 = MMO_Game_Main_O91a__embed_css__style_Panels_______3_swf_Caidanshang3_375022323;
         _embed_css__style_Panels_______3_swf_Caidanshang4_375022286 = MMO_Game_Main_O91a__embed_css__style_Panels_______3_swf_Caidanshang4_375022286;
         _embed_css__style_Panels_______3_swf_Caidanxia1_888383008 = MMO_Game_Main_O91a__embed_css__style_Panels_______3_swf_Caidanxia1_888383008;
         _embed_css__style_Panels_______3_swf_Caidanxia2_888382991 = MMO_Game_Main_O91a__embed_css__style_Panels_______3_swf_Caidanxia2_888382991;
         _embed_css__style_Panels_______3_swf_Caidanxia3_888382986 = MMO_Game_Main_O91a__embed_css__style_Panels_______3_swf_Caidanxia3_888382986;
         _embed_css__style_Panels_______3_swf_Caidanxia4_888382985 = MMO_Game_Main_O91a__embed_css__style_Panels_______3_swf_Caidanxia4_888382985;
         _embed_css__style_Panels________swf_BackBtn1_1497218789 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_BackBtn1_1497218789;
         _embed_css__style_Panels________swf_BackBtn2_1497218790 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_BackBtn2_1497218790;
         _embed_css__style_Panels________swf_BackBtn3_1497218787 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_BackBtn3_1497218787;
         _embed_css__style_Panels________swf_BackBtn4_1497218788 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_BackBtn4_1497218788;
         _embed_css__style_Panels________swf_BlueBtn1_1924823060 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_BlueBtn1_1924823060;
         _embed_css__style_Panels________swf_BlueBtn2_1924823265 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_BlueBtn2_1924823265;
         _embed_css__style_Panels________swf_BlueBtn3_1924823266 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_BlueBtn3_1924823266;
         _embed_css__style_Panels________swf_BlueBtn4_1924823279 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_BlueBtn4_1924823279;
         _embed_css__style_Panels________swf_GreenBtn1_1767741145 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_GreenBtn1_1767741145;
         _embed_css__style_Panels________swf_GreenBtn2_1767741146 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_GreenBtn2_1767741146;
         _embed_css__style_Panels________swf_GreenBtn3_1767741127 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_GreenBtn3_1767741127;
         _embed_css__style_Panels________swf_GreenBtn4_1767741128 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_GreenBtn4_1767741128;
         _embed_css__style_Panels________swf_OrangeBtn1_602545408 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_OrangeBtn1_602545408;
         _embed_css__style_Panels________swf_OrangeBtn2_602545405 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_OrangeBtn2_602545405;
         _embed_css__style_Panels________swf_OrangeBtn3_602545406 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_OrangeBtn3_602545406;
         _embed_css__style_Panels________swf_OrangeBtn4_602545403 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_OrangeBtn4_602545403;
         _embed_css__style_Panels________swf_PurpleBtn1_738887490 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_PurpleBtn1_738887490;
         _embed_css__style_Panels________swf_PurpleBtn2_738887503 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_PurpleBtn2_738887503;
         _embed_css__style_Panels________swf_PurpleBtn3_738887504 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_PurpleBtn3_738887504;
         _embed_css__style_Panels________swf_PurpleBtn4_738887501 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_PurpleBtn4_738887501;
         _embed_css__style_Panels________swf_RedBtn1_1179025253 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_RedBtn1_1179025253;
         _embed_css__style_Panels________swf_RedBtn2_1179025252 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_RedBtn2_1179025252;
         _embed_css__style_Panels________swf_RedBtn3_1179025047 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_RedBtn3_1179025047;
         _embed_css__style_Panels________swf_RedBtn4_1179025046 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_RedBtn4_1179025046;
         _embed_css__style_Panels________swf_StartBtn1_1866679468 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_StartBtn1_1866679468;
         _embed_css__style_Panels________swf_StartBtn2_1866679481 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_StartBtn2_1866679481;
         _embed_css__style_Panels________swf_StartBtn3_1866679482 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_StartBtn3_1866679482;
         _embed_css__style_Panels________swf_StartBtn4_1866679463 = MMO_Game_Main_O91a__embed_css__style_Panels________swf_StartBtn4_1866679463;
         _embed_css__style_Panels____swf___10_1_451092967 = MMO_Game_Main_O91a__embed_css__style_Panels____swf___10_1_451092967;
         _embed_css__style_Panels____swf___10_2_451092968 = MMO_Game_Main_O91a__embed_css__style_Panels____swf___10_2_451092968;
         _embed_css__style_Panels____swf___10_3_451092985 = MMO_Game_Main_O91a__embed_css__style_Panels____swf___10_3_451092985;
         _embed_css__style_Panels____swf___10__66003804 = MMO_Game_Main_O91a__embed_css__style_Panels____swf___10__66003804;
         _embed_css__style_Panels____swf___1_1_53382043 = MMO_Game_Main_O91a__embed_css__style_Panels____swf___1_1_53382043;
         _embed_css__style_Panels____swf___1_2_53382044 = MMO_Game_Main_O91a__embed_css__style_Panels____swf___1_2_53382044;
         _embed_css__style_Panels____swf___1_3_53382045 = MMO_Game_Main_O91a__embed_css__style_Panels____swf___1_3_53382045;
         _embed_css__style_Panels____swf___1__1786507224 = MMO_Game_Main_O91a__embed_css__style_Panels____swf___1__1786507224;
         _embed_css__style_Panels____swf___5_1_53410463 = MMO_Game_Main_O91a__embed_css__style_Panels____swf___5_1_53410463;
         _embed_css__style_Panels____swf___5_2_53410464 = MMO_Game_Main_O91a__embed_css__style_Panels____swf___5_2_53410464;
         _embed_css__style_Panels____swf___5_3_53410513 = MMO_Game_Main_O91a__embed_css__style_Panels____swf___5_3_53410513;
         _embed_css__style_Panels____swf___5__1786501980 = MMO_Game_Main_O91a__embed_css__style_Panels____swf___5__1786501980;
         _embed_css__style_Panels___icon_swf_Shengjijiantou1_1524052346 = MMO_Game_Main_O91a__embed_css__style_Panels___icon_swf_Shengjijiantou1_1524052346;
         _embed_css__style_Panels___icon_swf_Shengjijiantou2_1524052347 = MMO_Game_Main_O91a__embed_css__style_Panels___icon_swf_Shengjijiantou2_1524052347;
         _embed_css__style_Panels___icon_swf_Shengjijiantou3_1524052348 = MMO_Game_Main_O91a__embed_css__style_Panels___icon_swf_Shengjijiantou3_1524052348;
         _embed_css__style_Panels___icon_swf_Shengjijiantou_637218987 = MMO_Game_Main_O91a__embed_css__style_Panels___icon_swf_Shengjijiantou_637218987;
         _embed_css__style_Panels___icon_swf_Youjiantou1_1925744591 = MMO_Game_Main_O91a__embed_css__style_Panels___icon_swf_Youjiantou1_1925744591;
         _embed_css__style_Panels___icon_swf_Youjiantou2_1925744590 = MMO_Game_Main_O91a__embed_css__style_Panels___icon_swf_Youjiantou2_1925744590;
         _embed_css__style_Panels___icon_swf_Youjiantou3_1925744589 = MMO_Game_Main_O91a__embed_css__style_Panels___icon_swf_Youjiantou3_1925744589;
         _embed_css__style_Panels___icon_swf_Youjiantou_164879550 = MMO_Game_Main_O91a__embed_css__style_Panels___icon_swf_Youjiantou_164879550;
         _embed_css__style_Panels___icon_swf_Zuojiantou1_1076280198 = MMO_Game_Main_O91a__embed_css__style_Panels___icon_swf_Zuojiantou1_1076280198;
         _embed_css__style_Panels___icon_swf_Zuojiantou2_1076279415 = MMO_Game_Main_O91a__embed_css__style_Panels___icon_swf_Zuojiantou2_1076279415;
         _embed_css__style_Panels___icon_swf_Zuojiantou3_1076280200 = MMO_Game_Main_O91a__embed_css__style_Panels___icon_swf_Zuojiantou3_1076280200;
         _embed_css__style_Panels___icon_swf_Zuojiantou_1728371337 = MMO_Game_Main_O91a__embed_css__style_Panels___icon_swf_Zuojiantou_1728371337;
         _embed_css__style_Panels_diaoke_swf_e111_1859253101 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e111_1859253101;
         _embed_css__style_Panels_diaoke_swf_e112_1859253102 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e112_1859253102;
         _embed_css__style_Panels_diaoke_swf_e113_1859253091 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e113_1859253091;
         _embed_css__style_Panels_diaoke_swf_e1_1857497933 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e1_1857497933;
         _embed_css__style_Panels_diaoke_swf_e221_1859227213 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e221_1859227213;
         _embed_css__style_Panels_diaoke_swf_e222_1859227214 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e222_1859227214;
         _embed_css__style_Panels_diaoke_swf_e223_1859227203 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e223_1859227203;
         _embed_css__style_Panels_diaoke_swf_e2_1857497934 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e2_1857497934;
         _embed_css__style_Panels_diaoke_swf_e331_1859226157 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e331_1859226157;
         _embed_css__style_Panels_diaoke_swf_e332_1859226158 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e332_1859226158;
         _embed_css__style_Panels_diaoke_swf_e333_1859226147 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e333_1859226147;
         _embed_css__style_Panels_diaoke_swf_e3_1857497923 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e3_1857497923;
         _embed_css__style_Panels_diaoke_swf_e441_1859249677 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e441_1859249677;
         _embed_css__style_Panels_diaoke_swf_e442_1859249678 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e442_1859249678;
         _embed_css__style_Panels_diaoke_swf_e443_1859249667 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e443_1859249667;
         _embed_css__style_Panels_diaoke_swf_e4_1857497924 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e4_1857497924;
         _embed_css__style_Panels_diaoke_swf_e551_1859249133 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e551_1859249133;
         _embed_css__style_Panels_diaoke_swf_e552_1859249134 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e552_1859249134;
         _embed_css__style_Panels_diaoke_swf_e553_1859249123 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e553_1859249123;
         _embed_css__style_Panels_diaoke_swf_e5_1857497905 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e5_1857497905;
         _embed_css__style_Panels_diaoke_swf_e661_1859256013 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e661_1859256013;
         _embed_css__style_Panels_diaoke_swf_e662_1859256014 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e662_1859256014;
         _embed_css__style_Panels_diaoke_swf_e663_1859256003 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e663_1859256003;
         _embed_css__style_Panels_diaoke_swf_e6_1857497906 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e6_1857497906;
         _embed_css__style_Panels_diaoke_swf_e771_1859254957 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e771_1859254957;
         _embed_css__style_Panels_diaoke_swf_e772_1859254958 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e772_1859254958;
         _embed_css__style_Panels_diaoke_swf_e773_1859254947 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e773_1859254947;
         _embed_css__style_Panels_diaoke_swf_e7_1857497911 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e7_1857497911;
         _embed_css__style_Panels_diaoke_swf_e881_1859245709 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e881_1859245709;
         _embed_css__style_Panels_diaoke_swf_e882_1859245710 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e882_1859245710;
         _embed_css__style_Panels_diaoke_swf_e883_1859245699 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e883_1859245699;
         _embed_css__style_Panels_diaoke_swf_e8_1857497912 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_e8_1857497912;
         _embed_css__style_Panels_diaoke_swf_medal0_985488166 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_medal0_985488166;
         _embed_css__style_Panels_diaoke_swf_medal111_915784575 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_medal111_915784575;
         _embed_css__style_Panels_diaoke_swf_medal1_985488161 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_medal1_985488161;
         _embed_css__style_Panels_diaoke_swf_medal221_915791711 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_medal221_915791711;
         _embed_css__style_Panels_diaoke_swf_medal2_985488160 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_medal2_985488160;
         _embed_css__style_Panels_diaoke_swf_medal331_915790399 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_medal331_915790399;
         _embed_css__style_Panels_diaoke_swf_medal3_985488163 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_medal3_985488163;
         _embed_css__style_Panels_diaoke_swf_ppbg2_1826720366 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_ppbg2_1826720366;
         _embed_css__style_Panels_diaoke_swf_ppbg3_1826720355 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_ppbg3_1826720355;
         _embed_css__style_Panels_diaoke_swf_ppbg_1858834726 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_ppbg_1858834726;
         _embed_css__style_Panels_diaoke_swf_tower11_1158124854 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_tower11_1158124854;
         _embed_css__style_Panels_diaoke_swf_tower1_720646441 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_tower1_720646441;
         _embed_css__style_Panels_diaoke_swf_tower21_1158124567 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_tower21_1158124567;
         _embed_css__style_Panels_diaoke_swf_tower2_720646442 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_tower2_720646442;
         _embed_css__style_Panels_diaoke_swf_tower31_1158125028 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_tower31_1158125028;
         _embed_css__style_Panels_diaoke_swf_tower3_720646447 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_tower3_720646447;
         _embed_css__style_Panels_diaoke_swf_tower4_720646448 = MMO_Game_Main_O91a__embed_css__style_Panels_diaoke_swf_tower4_720646448;
         _embed_css__style_Panels_envelope_swf_guan1_164969467 = MMO_Game_Main_O91a__embed_css__style_Panels_envelope_swf_guan1_164969467;
         _embed_css__style_Panels_envelope_swf_guan_220513302 = MMO_Game_Main_O91a__embed_css__style_Panels_envelope_swf_guan_220513302;
         _embed_css__style_Panels_envelope_swf_kai1_220543795 = MMO_Game_Main_O91a__embed_css__style_Panels_envelope_swf_kai1_220543795;
         _embed_css__style_Panels_envelope_swf_kai_221494238 = MMO_Game_Main_O91a__embed_css__style_Panels_envelope_swf_kai_221494238;
         _embed_css__style_Panels_envelope_swf_re1_221501011 = MMO_Game_Main_O91a__embed_css__style_Panels_envelope_swf_re1_221501011;
         _embed_css__style_Panels_envelope_swf_re2_221501010 = MMO_Game_Main_O91a__embed_css__style_Panels_envelope_swf_re2_221501010;
         _embed_css__style_Panels_envelope_swf_re3_221500929 = MMO_Game_Main_O91a__embed_css__style_Panels_envelope_swf_re3_221500929;
         _embed_css__style_Panels_jxhd_swf_jxhdbg1_1468996445 = MMO_Game_Main_O91a__embed_css__style_Panels_jxhd_swf_jxhdbg1_1468996445;
         _embed_css__style_Panels_jxhd_swf_jxhdbg2_1468996418 = MMO_Game_Main_O91a__embed_css__style_Panels_jxhd_swf_jxhdbg2_1468996418;
         _embed_css__style_Panels_jxhd_swf_jxhdgotobtn1_1722896093 = MMO_Game_Main_O91a__embed_css__style_Panels_jxhd_swf_jxhdgotobtn1_1722896093;
         _embed_css__style_Panels_jxhd_swf_jxhdgotobtn2_1722896066 = MMO_Game_Main_O91a__embed_css__style_Panels_jxhd_swf_jxhdgotobtn2_1722896066;
         _embed_css__style_Panels_jxhd_swf_jxhdgotobtn3_1722896067 = MMO_Game_Main_O91a__embed_css__style_Panels_jxhd_swf_jxhdgotobtn3_1722896067;
         _embed_css__style_Panels_jxhd_swf_jxhdgotobtn4_1722896064 = MMO_Game_Main_O91a__embed_css__style_Panels_jxhd_swf_jxhdgotobtn4_1722896064;
         _embed_css__style_Panels_jxhd_swf_jxhditem_1943955624 = MMO_Game_Main_O91a__embed_css__style_Panels_jxhd_swf_jxhditem_1943955624;
         _embed_css__style_Panels_trialsPanel_swf_Jinrutiaozhan1_410976992 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Jinrutiaozhan1_410976992;
         _embed_css__style_Panels_trialsPanel_swf_Jinrutiaozhan2_410977007 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Jinrutiaozhan2_410977007;
         _embed_css__style_Panels_trialsPanel_swf_Jinrutiaozhan3_410977006 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Jinrutiaozhan3_410977006;
         _embed_css__style_Panels_trialsPanel_swf_Jinrutiaozhan4_410977005 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Jinrutiaozhan4_410977005;
         _embed_css__style_Panels_trialsPanel_swf_Lunhuizhijian1_1994221440 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Lunhuizhijian1_1994221440;
         _embed_css__style_Panels_trialsPanel_swf_Lunhuizhijian2_1994221425 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Lunhuizhijian2_1994221425;
         _embed_css__style_Panels_trialsPanel_swf_Lunhuizhijian3_1994221426 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Lunhuizhijian3_1994221426;
         _embed_css__style_Panels_trialsPanel_swf_Lunhuizhijian4_1994221427 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Lunhuizhijian4_1994221427;
         _embed_css__style_Panels_trialsPanel_swf_Lunhuizhijian_587579857 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Lunhuizhijian_587579857;
         _embed_css__style_Panels_trialsPanel_swf_Mingyunzhijian1_1596048586 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Mingyunzhijian1_1596048586;
         _embed_css__style_Panels_trialsPanel_swf_Mingyunzhijian2_1596048633 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Mingyunzhijian2_1596048633;
         _embed_css__style_Panels_trialsPanel_swf_Mingyunzhijian3_1596048632 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Mingyunzhijian3_1596048632;
         _embed_css__style_Panels_trialsPanel_swf_Mingyunzhijian4_1596048583 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Mingyunzhijian4_1596048583;
         _embed_css__style_Panels_trialsPanel_swf_Mituzhijian1_187510730 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Mituzhijian1_187510730;
         _embed_css__style_Panels_trialsPanel_swf_Mituzhijian2_187510777 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Mituzhijian2_187510777;
         _embed_css__style_Panels_trialsPanel_swf_Mituzhijian3_187510776 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Mituzhijian3_187510776;
         _embed_css__style_Panels_trialsPanel_swf_Mituzhijian4_187510727 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Mituzhijian4_187510727;
         _embed_css__style_Panels_trialsPanel_swf_Xinnianzhijian1_1344003870 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Xinnianzhijian1_1344003870;
         _embed_css__style_Panels_trialsPanel_swf_Xinnianzhijian2_1344003951 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Xinnianzhijian2_1344003951;
         _embed_css__style_Panels_trialsPanel_swf_Xinnianzhijian3_1344003952 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Xinnianzhijian3_1344003952;
         _embed_css__style_Panels_trialsPanel_swf_Xinnianzhijian4_1344003937 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Xinnianzhijian4_1344003937;
         _embed_css__style_Panels_trialsPanel_swf_Yongqizhijian1_238319728 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Yongqizhijian1_238319728;
         _embed_css__style_Panels_trialsPanel_swf_Yongqizhijian2_238319743 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Yongqizhijian2_238319743;
         _embed_css__style_Panels_trialsPanel_swf_Yongqizhijian3_238319742 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Yongqizhijian3_238319742;
         _embed_css__style_Panels_trialsPanel_swf_Yongqizhijian4_238319741 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Yongqizhijian4_238319741;
         _embed_css__style_Panels_trialsPanel_swf_Zhoujiangli1_1340607356 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Zhoujiangli1_1340607356;
         _embed_css__style_Panels_trialsPanel_swf_Zhoujiangli2_1340607357 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Zhoujiangli2_1340607357;
         _embed_css__style_Panels_trialsPanel_swf_Zhoujiangli3_1340607358 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Zhoujiangli3_1340607358;
         _embed_css__style_Panels_trialsPanel_swf_Zhoujiangli4_1340607311 = MMO_Game_Main_O91a__embed_css__style_Panels_trialsPanel_swf_Zhoujiangli4_1340607311;
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.verticalCenter = "0";
            this.horizontalCenter = "0";
         };
         mx_internal::_MMO_Game_Main_O91a_StylesInit();
         this.layout = "absolute";
         this.addEventListener("creationComplete",___MMO_Game_Main_O91a_Application1_creationComplete);
      }
      
      public function setTicket(param1:String) : void
      {
         var _loc2_:Core = null;
         if(seted)
         {
            return;
         }
         seted = true;
         _loc2_ = Core.getInstance();
         if(!_loc2_)
         {
            return;
         }
         _loc2_.user = param1;
         _loc2_.by_session = "sdo";
         _loc2_.urlLogin = true;
         if(!_loc2_.view)
         {
            return;
         }
         if(_loc2_.view.getUI(ViewManager.FORE_L_R))
         {
            _loc2_.view.getUI(ViewManager.FORE_L_R).onShow();
            _loc2_.view.getUI(ViewManager.FORE_L_R).btnLoginForce.visiable = false;
            setTimeout(logined,10000);
         }
      }
      
      public function setApp(param1:*) : void
      {
         Login_Model.app = param1;
      }
      
      public function closeRemoteNc() : void
      {
         var _loc1_:Core = null;
         _loc1_ = Core.getInstance();
         _loc1_.logout();
         _loc1_.remote.close();
      }
      
      public function setProp(param1:*, param2:*) : void
      {
         var _loc3_:Core = null;
         var _loc4_:Array = null;
         var _loc5_:Object = null;
         Login_Model[param1] = param2;
         if(param1 == "lineList")
         {
            _loc3_ = Core.getInstance();
            _loc4_ = new Array();
            for each(_loc5_ in param2)
            {
               _loc4_.push(_loc5_);
            }
            _loc3_._lineList.source = _loc4_;
         }
      }
      
      public function startGame(param1:uint) : void
      {
         var _loc2_:Core = null;
         _loc2_ = Core.getInstance();
         _loc2_.startGame(param1);
      }
      
      public function rightClick() : void
      {
         var _loc1_:Point = null;
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         if(stage)
         {
            _loc1_ = new Point(stage.mouseX,stage.mouseY);
            _loc2_ = stage.getObjectsUnderPoint(_loc1_);
            for(_loc3_ in _loc2_)
            {
               _loc4_ = _loc2_[_loc3_].parent;
               if((Boolean(_loc4_)) && _loc4_ is Slot)
               {
                  _loc4_.rightClick();
                  break;
               }
            }
         }
      }
      
      public function setExpand(param1:String = "true") : void
      {
         var _core:Core = null;
         var contextMenuItem_changeScreen:ContextMenuItem = null;
         var changeFunction:Function = null;
         var isExpand:String = param1;
         if(isExpand == "true")
         {
            GamePredef.APP_HEIGHT = 665;
            GamePredef.APP_WIDTH = 1050;
            GamePredef.APP_HALF_HEIGHT = 332;
            GamePredef.APP_HALF_WIDTH = 525;
            if(GamePredef.APP_WIDTH != GamePredef.APP_WIDTH_OLD && ExternalInterface.available)
            {
               contextMenuItem_changeScreen = new ContextMenuItem(Language.MMOGAME_S[10]);
               Login_Model.game_app.contextMenu.customItems.push(contextMenuItem_changeScreen);
               changeFunction = function():void
               {
                  if(ExternalInterface.available)
                  {
                     ExternalInterface.call("setCookiesAndLocation");
                  }
               };
               contextMenuItem_changeScreen.addEventListener(ContextMenuEvent.MENU_ITEM_SELECT,changeFunction);
            }
         }
         else
         {
            GamePredef.APP_HEIGHT = 570;
            GamePredef.APP_WIDTH = 900;
            GamePredef.APP_HALF_HEIGHT = 285;
            GamePredef.APP_HALF_WIDTH = 450;
         }
         _core = Core.getInstance();
         _core.view.getUI(ViewManager.MAIN_QUEST_GUIDE).x = 650 + GamePredef.APP_WIDTH - GamePredef.APP_WIDTH_OLD;
         this.width = GamePredef.APP_WIDTH;
         this.height = GamePredef.APP_HEIGHT;
      }
      
      private function logined() : void
      {
         var _loc1_:Core = null;
         _loc1_ = Core.getInstance();
         if(!_loc1_.remote.nc.connected && _loc1_.global.showAlert)
         {
            _loc1_.view.getUI(ViewManager.FORE_L_R).logined();
         }
      }
      
      mx_internal function _MMO_Game_Main_O91a_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         if(mx_internal::_MMO_Game_Main_O91a_StylesInit_done)
         {
            return;
         }
         mx_internal::_MMO_Game_Main_O91a_StylesInit_done = true;
         style = StyleManager.getStyleDeclaration(".BtnZiRanZhiLi");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnZiRanZhiLi",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_Ziranzhili_156476183;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_Ziranzhili1_1254881552;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_Ziranzhili1_1254881552;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_Ziranzhili_156476183;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".farmOpen");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".farmOpen",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Panels_Fazenda_swf________28000983;
            };
         }
         style = StyleManager.getStyleDeclaration(".LabelTitle");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".LabelTitle",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 16768881;
               this.letterSpacing = 2;
               this.fontSize = 15;
               this.horizontalCenter = 0;
               this.fontWeight = "bold";
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnBarAch");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnBarAch",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_Achievement_up_mc_1009118450;
               this.downSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_Achievement_down_mc_519401693;
               this.overSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_Achievement_over_mc_955067765;
               this.disabledSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_Achievement_disable_mc_1456016513;
            };
         }
         style = StyleManager.getStyleDeclaration("Button");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("Button",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.paddingBottom = 1;
               this.paddingRight = 2;
               this.paddingTop = 1;
               this.paddingLeft = 2;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnQuestItem");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnQuestItem",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_Vow_swf___1_1417649099;
               this.downSkin = _embed_css__style_Panels_Vow_swf___3_1417649101;
               this.overSkin = _embed_css__style_Panels_Vow_swf___2_1417649102;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Panels_Vow_swf___4_1417649104;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnDailyAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnDailyAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_richang_1977192179;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_richang1_1776958986;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_richang1_1776958986;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_richang_1977192179;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".secretTreasureHuntExit");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".secretTreasureHuntExit",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_tuichu1_2041111028;
               this.downSkin = _embed_css__style_Common_Components_swf_tuichu3_2041111034;
               this.overSkin = _embed_css__style_Common_Components_swf_tuichu2_2041111029;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_Components_swf_tuichu4_2041111035;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".InputContent");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".InputContent",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Common_Components_swf_InputBox_597776956;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnMp0");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnMp0",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_CharInfo_swf_HealMPEmptyUp_504888444;
               this.downSkin = _embed_css__style_MainStage_CharInfo_swf_HealMPEmptyDown_2079626677;
               this.selectedDownSkin = _embed_css__style_MainStage_CharInfo_swf_HealMPEmptyDown_2079626677;
               this.overSkin = _embed_css__style_MainStage_CharInfo_swf_HealMPEmptyOver_2078903715;
               this.selectedUpSkin = _embed_css__style_MainStage_CharInfo_swf_HealMPEmptyUp_504888444;
               this.disabledSkin = _embed_css__style_MainStage_CharInfo_swf_HealMPEmptyDisabled_32512475;
               this.selectedOverSkin = _embed_css__style_MainStage_CharInfo_swf_HealMPEmptyOver_2078903715;
               this.selectedDisabledSkin = _embed_css__style_MainStage_CharInfo_swf_HealMPEmptyDisabled_32512475;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnMp2");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnMp2",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_CharInfo_swf_HealMPFullUp_21381860;
               this.downSkin = _embed_css__style_MainStage_CharInfo_swf_HealMPFullDown_1302536829;
               this.selectedDownSkin = _embed_css__style_MainStage_CharInfo_swf_HealMPFullDown_1302536829;
               this.overSkin = _embed_css__style_MainStage_CharInfo_swf_HealMPFullOver_1302624811;
               this.selectedUpSkin = _embed_css__style_MainStage_CharInfo_swf_HealMPFullUp_21381860;
               this.disabledSkin = _embed_css__style_MainStage_CharInfo_swf_HealMPFullDisabled_90191293;
               this.selectedOverSkin = _embed_css__style_MainStage_CharInfo_swf_HealMPFullOver_1302624811;
               this.selectedDisabledSkin = _embed_css__style_MainStage_CharInfo_swf_HealMPFullDisabled_90191293;
            };
         }
         style = StyleManager.getStyleDeclaration(".soulKeyBtn");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".soulKeyBtn",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_CrystalButtonDown_1724131541;
               this.downSkin = _embed_css__style_Common_Components_swf_CrystalButtonDown_1724131541;
               this.color = 16366965;
               this.overSkin = _embed_css__style_Common_Components_swf_CrystalButtonDown_1724131541;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_Components_swf_CrystalButtonDown_1724131541;
               this.textRollOverColor = 16515001;
            };
         }
         style = StyleManager.getStyleDeclaration(".dailySignInAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".dailySignInAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_xieshousuiyue_1650775048;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_xieshousuiyue1_111724801;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_xieshousuiyue1_111724801;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_xieshousuiyue_1650775048;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnMp1");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnMp1",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_CharInfo_swf_HealMPHalfUp_51787552;
               this.downSkin = _embed_css__style_MainStage_CharInfo_swf_HealMPHalfDown_1609533015;
               this.selectedDownSkin = _embed_css__style_MainStage_CharInfo_swf_HealMPHalfDown_1609533015;
               this.overSkin = _embed_css__style_MainStage_CharInfo_swf_HealMPHalfOver_1610051257;
               this.selectedUpSkin = _embed_css__style_MainStage_CharInfo_swf_HealMPHalfUp_51787552;
               this.disabledSkin = _embed_css__style_MainStage_CharInfo_swf_HealMPHalfDisabled_158690049;
               this.selectedOverSkin = _embed_css__style_MainStage_CharInfo_swf_HealMPHalfOver_1610051257;
               this.selectedDisabledSkin = _embed_css__style_MainStage_CharInfo_swf_HealMPHalfDisabled_158690049;
            };
         }
         style = StyleManager.getStyleDeclaration(".yazhu");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".yazhu",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_goldButton_1134589491;
               this.downSkin = _embed_css__style_Common_Components_swf_goldButtonGray_1143699024;
               this.overSkin = _embed_css__style_Common_Components_swf_goldButtonLight_851067197;
               this.disabledSkin = _embed_css__style_Common_Components_swf_goldButton_1134589491;
            };
         }
         style = StyleManager.getStyleDeclaration(".Anniversary");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Anniversary",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_qizhounianqing_1792410716;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_qizhounianqing1_1642668493;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_qizhounianqing1_1642668493;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_qizhounianqing_1792410716;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".ConsumeNotice");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ConsumeNotice",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon6_swf_ConsumeNotice_1889511267;
               this.downSkin = _embed_css__style_Common_ActivityIcon6_swf_ConsumeNotice1_600093594;
               this.overSkin = _embed_css__style_Common_ActivityIcon6_swf_ConsumeNotice1_600093594;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon6_swf_ConsumeNotice_1889511267;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasBorder");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasBorder",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Common_Components_swf_CanvasBorder_270691325;
            };
         }
         style = StyleManager.getStyleDeclaration(".ExchangePoint");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ExchangePoint",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.disabledSkin = _embed_css__style_Panels_BagPanel_swf_ExchangePoint_1073340476;
            };
         }
         style = StyleManager.getStyleDeclaration(".ProgressMp");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ProgressMp",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderColor = 0;
               this.fontFamily = "Verdana";
               this.color = 0;
               this.barSkin = _embed_css__style_MainStage_CharInfo_swf_MPBar_1299876263;
               this.fontSize = 9;
               this.trackColors = [1986152,16777215];
            };
         }
         style = StyleManager.getStyleDeclaration(".MiniMapTitle");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".MiniMapTitle",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_MainStage_LocationBar_swf_LocationIndicator_432413889;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasMapQGetAble");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasMapQGetAble",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css___MiniMap_swf______149664042;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnBarTeamBig");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnBarTeamBig",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_team_upbig_mc_1409262262;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnBarWelfare");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnBarWelfare",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_fuli_swf_normal_1471258718;
               this.downSkin = _embed_css__style_MainStage_fuli_swf_down_295188889;
               this.overSkin = _embed_css__style_MainStage_fuli_swf_over_294068619;
               this.disabledSkin = _embed_css__style_MainStage_fuli_swf_disable_198626705;
            };
         }
         style = StyleManager.getStyleDeclaration(".EquipBagRight");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".EquipBagRight",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_LongHideBtnRightUp_2028677756;
               this.downSkin = _embed_css__style_Common_Components_swf_LongHideBtnRightDown_1042274431;
               this.overSkin = _embed_css__style_Common_Components_swf_LongHideBtnRightOver_1055260749;
               this.disabledSkin = _embed_css__style_Common_Components_swf_LongHideBtnRightDisabled_1733797413;
            };
         }
         style = StyleManager.getStyleDeclaration(".Fanpai");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Fanpai",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_fanpai_2046143396;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_fanpai1_1976659507;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_fanpai1_1976659507;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_fanpai_2046143396;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnShowButtons");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnShowButtons",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsShowUp_1037296302;
               this.downSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsShowDown_1871146027;
               this.overSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsShowOver_1871266841;
               this.disabledSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsShowDisabled_1120343311;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnFundAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnFundAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_zhuxue_494832568;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_zhuxue1_666110543;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_zhuxue1_666110543;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_zhuxue_494832568;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".stoneToGoldBtn");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".stoneToGoldBtn",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_dscjlingjiang_1884132354;
               this.downSkin = _embed_css__style_Common_Components_swf_dscjlingjiang2_1159601470;
               this.overSkin = _embed_css__style_Common_Components_swf_dscjlingjiang1_1159601411;
               this.disabledSkin = _embed_css__style_Common_Components_swf_dscjlingjiang3_1159601469;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasAchDetailFinished");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasAchDetailFinished",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Common_Components_swf_SkillBox_1333852635;
            };
         }
         style = StyleManager.getStyleDeclaration(".ChannelGreen");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ChannelGreen",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonGreenUp_1907031894;
               this.downSkin = _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonGreenDown_877601297;
               this.overSkin = _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonGreenOver_878265827;
               this.disabledSkin = _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonDisabled_1289213522;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnWbMoney");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnWbMoney",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_wbIcon_swf_____2_596606982;
               this.downSkin = _embed_css__style_Common_wbIcon_swf_____3_596606999;
               this.color = 16366965;
               this.overSkin = _embed_css__style_Common_wbIcon_swf______1815365510;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_wbIcon_swf_____4_596607000;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration("DataGrid");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("DataGrid",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.horizontalGridLineColor = 7434609;
               this.borderColor = 5342608;
               this.color = 16777215;
               this.bottom = 8;
               this.paddingRight = 0;
               this.selectionColor = 16765440;
               this.headerStyleName = "datagridHeader";
               this.backgroundAlpha = 0;
               this.right = 8;
               this.headerBackgroundSkin = _embed_css__style_Common_Components_swf_DatagridHeader_129121592;
               this.borderThickness = 0;
               this.paddingBottom = 0;
               this.rollOverColor = 14925141;
               this.top = 8;
               this.left = 8;
               this.verticalGridLines = false;
               this.textSelectedColor = 5706001;
               this.textRollOverColor = 7406336;
               this.paddingTop = 0;
               this.paddingLeft = 0;
            };
         }
         style = StyleManager.getStyleDeclaration(".SilverUnlock");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".SilverUnlock",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_BagPanel_swf___1_1206870538;
               this.downSkin = _embed_css__style_Panels_BagPanel_swf___3_1206870560;
               this.overSkin = _embed_css__style_Panels_BagPanel_swf___2_1206870553;
               this.disabledSkin = _embed_css__style_Panels_BagPanel_swf___4_1206870559;
            };
         }
         style = StyleManager.getStyleDeclaration(".soulUpBtn");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".soulUpBtn",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_ZhanLiUp1_579767049;
               this.downSkin = _embed_css__style_Common_Components_swf_ZhanLiUp3_579766399;
               this.overSkin = _embed_css__style_Common_Components_swf_ZhanLiUp2_579767054;
               this.disabledSkin = _embed_css__style_Common_Components_swf_ZhanLiUp4_579766396;
            };
         }
         style = StyleManager.getStyleDeclaration(".TransparentSlotGreen");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".TransparentSlotGreen",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderThickness = 1;
               this.borderColor = 65280;
               this.backgroundAlpha = 0;
               this.borderStyle = "solid";
               this.cornerRadius = 2;
            };
         }
         style = StyleManager.getStyleDeclaration(".wakaishi");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".wakaishi",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_kaishi1_2087331759;
               this.downSkin = _embed_css__style_Common_Components_swf_kaishi3_2087331757;
               this.overSkin = _embed_css__style_Common_Components_swf_kaishi2_2087331756;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_Components_swf_kaishi4_2087331762;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnUseItem");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnUseItem",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_CharInfo_swf_ItemBagUp_992993095;
               this.downSkin = _embed_css__style_MainStage_CharInfo_swf_ItemBagDown_1641190942;
               this.selectedDownSkin = _embed_css__style_MainStage_CharInfo_swf_ItemBagDown_1641190942;
               this.overSkin = _embed_css__style_MainStage_CharInfo_swf_ItemBagOver_1640857168;
               this.selectedUpSkin = _embed_css__style_MainStage_CharInfo_swf_ItemBagUp_992993095;
               this.disabledSkin = _embed_css__style_MainStage_CharInfo_swf_ItemBagDisabled_1269116856;
               this.selectedOverSkin = _embed_css__style_MainStage_CharInfo_swf_ItemBagOver_1640857168;
               this.selectedDisabledSkin = _embed_css__style_MainStage_CharInfo_swf_ItemBagDisabled_1269116856;
            };
         }
         style = StyleManager.getStyleDeclaration(".PetSlotLocked");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".PetSlotLocked",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Panels_BagPanel_swf_____1073924059;
            };
         }
         style = StyleManager.getStyleDeclaration(".Btnshengzhewenzhang");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Btnshengzhewenzhang",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_shengzhewenzhang_376657919;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_shengzhewenzhang1_1824905226;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_shengzhewenzhang1_1824905226;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_shengzhewenzhang_376657919;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnBagDivide");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnBagDivide",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_BagPanel_swf_button_Resolution_up_mc2_1396255603;
               this.downSkin = _embed_css__style_Panels_BagPanel_swf_button_Resolution_down_mc2_2010629188;
               this.selectedDownSkin = _embed_css__style_Panels_BagPanel_swf_button_Resolution_up_mc2_1396255603;
               this.overSkin = _embed_css__style_Panels_BagPanel_swf_button_Resolution_over_mc2_644966570;
               this.selectedUpSkin = _embed_css__style_Panels_BagPanel_swf_button_Resolution_up_mc2_1396255603;
               this.disabledSkin = _embed_css__style_Panels_BagPanel_swf_button_Resolution_up_mc2_1396255603;
               this.selectedOverSkin = _embed_css__style_Panels_BagPanel_swf_button_Resolution_up_mc2_1396255603;
               this.selectedDisabledSkin = _embed_css__style_Panels_BagPanel_swf_button_Resolution_up_mc2_1396255603;
            };
         }
         style = StyleManager.getStyleDeclaration(".Selected");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Selected",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Common_Components_swf_xuanzhongnew_730628817;
            };
         }
         style = StyleManager.getStyleDeclaration(".re2");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".re2",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Panels_envelope_swf_re2_221501010;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnBarIm");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnBarIm",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_friend_up_mc_791598381;
               this.downSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_friend_down_mc_1678637972;
               this.overSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_friend_over_mc_1792582334;
               this.disabledSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_friend_disabled_mc_876283478;
            };
         }
         style = StyleManager.getStyleDeclaration(".re1");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".re1",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Panels_envelope_swf_re1_221501011;
            };
         }
         style = StyleManager.getStyleDeclaration(".re3");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".re3",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Panels_envelope_swf_re3_221500929;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnBarSkill");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnBarSkill",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_skills_up_mc_80387777;
               this.downSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_skills_down_mc_413945192;
               this.overSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_skills_over_mc_910872874;
               this.disabledSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_skills_disabled_mc_653527490;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnLottery");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnLottery",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels________swf_StartBtn1_1866679468;
               this.downSkin = _embed_css__style_Panels________swf_StartBtn3_1866679482;
               this.selectedDownSkin = _embed_css__style_Panels________swf_StartBtn3_1866679482;
               this.overSkin = _embed_css__style_Panels________swf_StartBtn2_1866679481;
               this.selectedUpSkin = _embed_css__style_Panels________swf_StartBtn1_1866679468;
               this.disabledSkin = _embed_css__style_Panels________swf_StartBtn4_1866679463;
               this.selectedOverSkin = _embed_css__style_Panels________swf_StartBtn2_1866679481;
               this.selectedDisabledSkin = _embed_css__style_Panels________swf_StartBtn4_1866679463;
            };
         }
         style = StyleManager.getStyleDeclaration(".TxtHorStyle");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".TxtHorStyle",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 16777215;
               this.fontSize = 12;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnLoginTurnRight");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnLoginTurnRight",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_LoginStage_LoginStage_swf_____R1_1606073936;
               this.downSkin = _embed_css__style_LoginStage_LoginStage_swf_____R3_1606073966;
               this.overSkin = _embed_css__style_LoginStage_LoginStage_swf_____R2_1606073967;
               this.disabledSkin = _embed_css__style_LoginStage_LoginStage_swf_____R4_1606073965;
            };
         }
         style = StyleManager.getStyleDeclaration(".ChannelBlue");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ChannelBlue",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonBlueUp_1701921739;
               this.downSkin = _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonBlueDown_111836942;
               this.overSkin = _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonBlueOver_111367868;
               this.disabledSkin = _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonDisabled_1289213522;
            };
         }
         style = StyleManager.getStyleDeclaration(".dailySignInDoBtn");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".dailySignInDoBtn",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_qiandaolingjiang_327130247;
               this.downSkin = _embed_css__style_Common_Components_swf_qiandaolingjiang2_270192069;
               this.overSkin = _embed_css__style_Common_Components_swf_qiandaolingjiang1_270192068;
               this.disabledSkin = _embed_css__style_Common_Components_swf_qiandaolingjiang3_270192074;
            };
         }
         style = StyleManager.getStyleDeclaration(".LoginInputBox");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".LoginInputBox",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_LoginStage_LoginStage_swf_InputBox_160442334;
            };
         }
         style = StyleManager.getStyleDeclaration(".ListChannel");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ListChannel",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.paddingBottom = 1;
               this.paddingRight = 0;
               this.backgroundAlpha = 0;
               this.paddingTop = 0;
               this.borderStyle = "none";
               this.paddingLeft = 0;
            };
         }
         style = StyleManager.getStyleDeclaration(".laodonggr");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".laodonggr",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_laodonggr_1133860944;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_laodonggr1_2083687063;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_laodonggr1_2083687063;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_laodonggr_1133860944;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".MCZDFightBtn");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".MCZDFightBtn",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_newresource_swf_mczdfightbtn_20415381;
               this.downSkin = _embed_css__style_Common_newresource_swf_mczdfightbtn3_619445696;
               this.overSkin = _embed_css__style_Common_newresource_swf_mczdfightbtn2_619445699;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_newresource_swf_mczdfightbtn4_619445745;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnJXHD");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnJXHD",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon7_swf_jingxi_942159312;
               this.downSkin = _embed_css__style_Common_ActivityIcon7_swf_jingxi1_909408975;
               this.overSkin = _embed_css__style_Common_ActivityIcon7_swf_jingxi1_909408975;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon7_swf_jingxi_942159312;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".fazendaFrientsHide");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".fazendaFrientsHide",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_Fazenda_swf________1_1558469731;
               this.downSkin = _embed_css__style_Panels_Fazenda_swf________3_1558469725;
               this.overSkin = _embed_css__style_Panels_Fazenda_swf________2_1558469730;
               this.disabledSkin = _embed_css__style_Panels_Fazenda_swf________4_1558469724;
            };
         }
         style = StyleManager.getStyleDeclaration(".DescriptionText");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".DescriptionText",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 1961723;
               this.fontSize = 12;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnMysTreasureSelected");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnMysTreasureSelected",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_AchievementPanelB1Over_648876903;
               this.fontFamily = "宋体";
               this.color = 16777215;
               this.overSkin = _embed_css__style_Common_Components_swf_AchievementPanelB1Over_648876903;
               this.selectedUpSkin = _embed_css__style_Common_Components_swf_AchievementPanelB1Over_648876903;
               this.textSelectedColor = 11235111;
               this.selectedOverSkin = _embed_css__style_Common_Components_swf_AchievementPanelB1Over_648876903;
               this.fontSize = 14;
               this.textRollOverColor = 16515001;
               this.disabledColor = 14010039;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration("ToolTip");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("ToolTip",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderThickness = 1;
               this.backgroundColor = 197379;
               this.borderColor = 55551;
               this.color = 16777215;
               this.fontSize = 12;
               this.backgroundAlpha = 0.6;
               this.borderSkin = _embed_css________swf______923680687;
               this.cornerRadius = 0;
            };
         }
         style = StyleManager.getStyleDeclaration(".soulRedBtn");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".soulRedBtn",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels________swf_RedBtn1_1179025253;
               this.downSkin = _embed_css__style_Panels________swf_RedBtn3_1179025047;
               this.overSkin = _embed_css__style_Panels________swf_RedBtn2_1179025252;
               this.disabledSkin = _embed_css__style_Panels________swf_RedBtn4_1179025046;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasTipCre");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasTipCre",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css________swf________2127118710;
            };
         }
         style = StyleManager.getStyleDeclaration(".Dulayinshi");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Dulayinshi",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_Dulayinshi_1877696381;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_Dulayinshi1_529708212;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_Dulayinshi1_529708212;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_Dulayinshi_1877696381;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".txtArea");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".txtArea",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Common_Components_swf_GradientTextArea_1438669621;
            };
         }
         style = StyleManager.getStyleDeclaration(".Zumaguangchang");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Zumaguangchang",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_Qishiguangchang_2000497884;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_Qishiguangchang1_637889869;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_Qishiguangchang1_637889869;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_Qishiguangchang_2000497884;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".plantClean");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".plantClean",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_Fazenda_swf____739737071;
               this.downSkin = _embed_css__style_Panels_Fazenda_swf___2_709048029;
               this.overSkin = _embed_css__style_Panels_Fazenda_swf___1_709048034;
               this.disabledSkin = _embed_css__style_Panels_Fazenda_swf___3_709048028;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnBagSort");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnBagSort",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_BagPanel_swf_button_sorting_up_mc2_1326759489;
               this.downSkin = _embed_css__style_Panels_BagPanel_swf_button_sorting_down_mc2_153195258;
               this.selectedDownSkin = _embed_css__style_Panels_BagPanel_swf_button_sorting_up_mc2_1326759489;
               this.overSkin = _embed_css__style_Panels_BagPanel_swf_button_sorting_over_mc2_1599354880;
               this.selectedUpSkin = _embed_css__style_Panels_BagPanel_swf_button_sorting_up_mc2_1326759489;
               this.selectedOverSkin = _embed_css__style_Panels_BagPanel_swf_button_sorting_up_mc2_1326759489;
               this.disabledSkin = _embed_css__style_Panels_BagPanel_swf_button_sorting_down_mc2_153195258;
               this.selectedDisabledSkin = _embed_css__style_Panels_BagPanel_swf_button_sorting_up_mc2_1326759489;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnSystemShop");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnSystemShop",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_shopup_29081098;
               this.downSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_ShopDown_456714575;
               this.overSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_ShopOver_460112125;
               this.disabledSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_ShopDisabled_224720469;
            };
         }
         style = StyleManager.getStyleDeclaration("VRule");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("VRule",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.strokeColor = 5236712;
               this.shadowColor = 1389630;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnMsg");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnMsg",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_SpeakerUp_1152530611;
               this.downSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_SpeakerDown_61066438;
               this.overSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_Speakerover_63350996;
               this.disabledSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_SpeakerDisabled_1514374956;
            };
         }
         style = StyleManager.getStyleDeclaration(".starActive");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".starActive",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_Star2_951428479;
               this.downSkin = _embed_css__style_Common_Components_swf_Star2_951428479;
               this.selectedDownSkin = _embed_css__style_Common_Components_swf_Star2_951428479;
               this.overSkin = _embed_css__style_Common_Components_swf_Star2_951428479;
               this.selectedUpSkin = _embed_css__style_Common_Components_swf_Star2_951428479;
               this.disabledSkin = _embed_css__style_Common_Components_swf_Star2_951428479;
               this.selectedOverSkin = _embed_css__style_Common_Components_swf_Star2_951428479;
               this.selectedDisabledSkin = _embed_css__style_Common_Components_swf_Star2_951428479;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnBarBag");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnBarBag",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_bag_up_mc_837243965;
               this.downSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_bag_down_mc_208334308;
               this.overSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_bag_over_mc_1031107410;
               this.disabledSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_bag_disabled_mc_1909961914;
            };
         }
         style = StyleManager.getStyleDeclaration(".happyFrontLineFresh");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".happyFrontLineFresh",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_chognzhi1_1404956838;
               this.downSkin = _embed_css__style_Common_Components_swf_chognzhi3_1404956756;
               this.overSkin = _embed_css__style_Common_Components_swf_chognzhi2_1404956759;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_Components_swf_chognzhi4_1404956757;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration("List");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("List",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.rollOverColor = 14925141;
               this.fontFamily = "Arial";
               this.color = 16777215;
               this.selectionColor = 16501317;
               this.textSelectedColor = 5706001;
               this.backgroundAlpha = 0.6;
               this.textRollOverColor = 7406336;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasMapDialogue");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasMapDialogue",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css___MiniMap_swf____714534162;
            };
         }
         style = StyleManager.getStyleDeclaration(".starNotActive");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".starNotActive",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_Star1_951427086;
               this.downSkin = _embed_css__style_Common_Components_swf_Star1_951427086;
               this.selectedDownSkin = _embed_css__style_Common_Components_swf_Star1_951427086;
               this.overSkin = _embed_css__style_Common_Components_swf_Star1_951427086;
               this.selectedUpSkin = _embed_css__style_Common_Components_swf_Star1_951427086;
               this.disabledSkin = _embed_css__style_Common_Components_swf_Star1_951427086;
               this.selectedOverSkin = _embed_css__style_Common_Components_swf_Star1_951427086;
               this.selectedDisabledSkin = _embed_css__style_Common_Components_swf_Star1_951427086;
            };
         }
         style = StyleManager.getStyleDeclaration(".farmClose");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".farmClose",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Panels_Fazenda_swf____740181703;
            };
         }
         style = StyleManager.getStyleDeclaration(".TxtInput");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".TxtInput",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderColor = 3633562;
               this.cornerRadius = 0;
            };
         }
         style = StyleManager.getStyleDeclaration(".huanmotaxiulian");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".huanmotaxiulian",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon6_swf_huanmotaxiulian_1256412862;
               this.downSkin = _embed_css__style_Common_ActivityIcon6_swf_huanmotaxiulian2_868653238;
               this.overSkin = _embed_css__style_Common_ActivityIcon6_swf_huanmotaxiulian2_868653238;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon6_swf_huanmotaxiulian_1256412862;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnSoulAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnSoulAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_ZhanBu_1377162429;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_ZhanBu1_2054978022;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_ZhanBu1_2054978022;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_ZhanBu_1377162429;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasSkill");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasSkill",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css___SkillPromptCanvas_swf_________21364270;
            };
         }
         style = StyleManager.getStyleDeclaration("RadioButton");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("RadioButton",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.downIcon = _embed_css__style_Common_Components_swf_CheckBoxUnticked_1812981305;
               this.color = 1961723;
               this.upIcon = _embed_css__style_Common_Components_swf_CheckBoxUnticked_1812981305;
               this.selectedUpIcon = _embed_css__style_Common_Components_swf_CheckBoxTicked_502798062;
               this.overIcon = _embed_css__style_Common_Components_swf_CheckBoxUntickedOver_580077275;
               this.selectedOverIcon = _embed_css__style_Common_Components_swf_CheckBoxTickedOver_1833743502;
               this.selectedDownIcon = _embed_css__style_Common_Components_swf_CheckBoxTicked_502798062;
            };
         }
         style = StyleManager.getStyleDeclaration("NumericStepper");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("NumericStepper",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderColor = 0;
               this.downArrowSkin = _embed_css__313177394;
               this.upArrowSkin = _embed_css__1839737291;
               this.backgroundAlpha = 0;
               this.borderStyle = "solid";
               this.cornerRadius = 0;
            };
         }
         style = StyleManager.getStyleDeclaration(".TransparentSlot");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".TransparentSlot",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderThickness = 1;
               this.borderColor = 0;
               this.backgroundAlpha = 0;
               this.borderSkin = _embed_css__style_Common_Components_swf_ItemSlot_138201044;
               this.borderStyle = "solid";
            };
         }
         style = StyleManager.getStyleDeclaration(".ppBgImg");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ppBgImg",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Panels_diaoke_swf_ppbg_1858834726;
            };
         }
         style = StyleManager.getStyleDeclaration("CheckBox");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("CheckBox",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.downIcon = _embed_css__style_Common_Components_swf_CheckBoxUnticked_1812981305;
               this.color = 1961723;
               this.upIcon = _embed_css__style_Common_Components_swf_CheckBoxUnticked_1812981305;
               this.selectedUpIcon = _embed_css__style_Common_Components_swf_CheckBoxTicked_502798062;
               this.overIcon = _embed_css__style_Common_Components_swf_CheckBoxUntickedOver_580077275;
               this.selectedOverIcon = _embed_css__style_Common_Components_swf_CheckBoxTickedOver_1833743502;
               this.selectedDownIcon = _embed_css__style_Common_Components_swf_CheckBoxTicked_502798062;
            };
         }
         style = StyleManager.getStyleDeclaration(".horseCrash");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".horseCrash",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_chongci1_305437239;
               this.downSkin = _embed_css__style_Common_Components_swf_chongci3_305437237;
               this.overSkin = _embed_css__style_Common_Components_swf_chongci2_305437236;
               this.disabledSkin = _embed_css__style_Common_Components_swf_chongci4_305437242;
            };
         }
         style = StyleManager.getStyleDeclaration(".EquLastPage");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".EquLastPage",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_LastPageUp_1724292065;
               this.color = 16366965;
               this.textAlign = "center";
               this.fontAntiAliasType = "advance";
               this.disabledSkin = _embed_css__style_Common_Components_swf_LastPageUp_1724292065;
               this.disabledColor = 13944759;
               this.downSkin = _embed_css__style_Common_Components_swf_LastPageUp_1724292065;
               this.fontFamily = "Tahoma";
               this.overSkin = _embed_css__style_Common_Components_swf_LastPageOver_1797409060;
               this.textSelectedColor = 11235111;
               this.fontSize = 12;
               this.textRollOverColor = 16515000;
               this.paddingTop = 2;
               this.paddingLeft = 0;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".sirendinggou");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".sirendinggou",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_sirendinggou_520866737;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_sirendinggou1_1920454534;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_sirendinggou1_1920454534;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_sirendinggou_520866737;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".qiling");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".qiling",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_qiling_212357597;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_qiling1_660795654;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_qiling1_660795654;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_qiling_212357597;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnSquGreen");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnSquGreen",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___SkillUseSlot_swf____1_545606001;
               this.downSkin = _embed_css___SkillUseSlot_swf____3_545606003;
               this.fontFamily = "Tahoma";
               this.color = 16761179;
               this.overSkin = _embed_css___SkillUseSlot_swf____2_545606002;
               this.textSelectedColor = 10053120;
               this.disabledSkin = _embed_css___SkillUseSlot_swf____4_545606004;
               this.fontSize = 10;
               this.textRollOverColor = 16646088;
               this.disabledColor = 12102807;
               this.paddingLeft = 0;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".chaopiao");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".chaopiao",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_chaopiao1_458630186;
               this.downSkin = _embed_css__style_Common_Components_swf_chaopiao3_458630204;
               this.overSkin = _embed_css__style_Common_Components_swf_chaopiao2_458630201;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_Components_swf_chaopiao4_458630203;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".soulOperationBtn");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".soulOperationBtn",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_DownArrowUp_1117353629;
               this.downSkin = _embed_css__style_Common_Components_swf_DownArrowUp_1117353629;
               this.overSkin = _embed_css__style_Common_Components_swf_DownArrowUp_1117353629;
               this.disabledSkin = _embed_css__style_Common_Components_swf_DownArrowUp_1117353629;
            };
         }
         style = StyleManager.getStyleDeclaration(".heiyaoshiZhen");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".heiyaoshiZhen",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_Heiyaoshizhen_1820006065;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_Heiyaoshizhen1_640346712;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_Heiyaoshizhen1_640346712;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_Heiyaoshizhen_1820006065;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".ProgressHp");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ProgressHp",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderColor = 0;
               this.fontFamily = "Verdana";
               this.borderRadius = 10;
               this.color = 0;
               this.barSkin = _embed_css__style_MainStage_CharInfo_swf_HPBar_1254231858;
               this.fontSize = 9;
               this.trackColors = [1986152,16777215];
            };
         }
         style = StyleManager.getStyleDeclaration(".SilverBinded");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".SilverBinded",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.disabledSkin = _embed_css__style_Panels_BagPanel_swf_SilverBinded_204893712;
            };
         }
         style = StyleManager.getStyleDeclaration(".HorizontalTab");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".HorizontalTab",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_HTabUp_60689367;
               this.color = 16366965;
               this.textAlign = "center";
               this.fontAntiAliasType = "advance";
               this.disabledSkin = _embed_css__style_Common_Components_swf_HTabDisabled_390008780;
               this.selectedOverSkin = _embed_css__style_Common_Components_swf_HTabOver_1101572828;
               this.selectedDisabledSkin = _embed_css__style_Common_Components_swf_HTabDisabled_390008780;
               this.disabledColor = 13944759;
               this.downSkin = _embed_css__style_Common_Components_swf_HTabUp_60689367;
               this.fontFamily = "Tahoma";
               this.selectedDownSkin = _embed_css__style_Common_Components_swf_HTabUp_60689367;
               this.overSkin = _embed_css__style_Common_Components_swf_HTabOver_1101572828;
               this.selectedUpSkin = _embed_css__style_Common_Components_swf_HTabSelected_573204457;
               this.textSelectedColor = 11235111;
               this.fontSize = 12;
               this.textRollOverColor = 16515000;
               this.paddingTop = 2;
               this.paddingLeft = 0;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".MiniCanvaHideBtn");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".MiniCanvaHideBtn",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_shrinkageup_310607082;
               this.downSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_shrinkagedown_1382996655;
               this.overSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_shrinkageover_1383147997;
               this.disabledSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_shrinkageDisabled_888929173;
            };
         }
         style = StyleManager.getStyleDeclaration(".manjiujianBtn");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".manjiujianBtn",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_manjiujian1_1369718644;
               this.downSkin = _embed_css__style_Common_Components_swf_manjiujian2_1369718645;
               this.overSkin = _embed_css__style_Common_Components_swf_manjiujian2_1369718645;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_Components_swf_manjiujian3_1369718650;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasGuideLocal");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasGuideLocal",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_LoginStage_CHA_CRE_new_swf____1928903862;
            };
         }
         style = StyleManager.getStyleDeclaration(".wamax");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".wamax",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_max1_1038734520;
               this.downSkin = _embed_css__style_Common_Components_swf_max3_1038734526;
               this.overSkin = _embed_css__style_Common_Components_swf_max2_1038734521;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_Components_swf_max4_1038734511;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnHelp");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnHelp",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_HelpUp_865696947;
               this.downSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_HelpDown_535726660;
               this.overSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_HelpOver_535659194;
               this.disabledSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_HelpDisabled_488273298;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasPopup");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasPopup",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Common_Components_swf_AlertBox_421126942;
            };
         }
         style = StyleManager.getStyleDeclaration(".LabelBattleTimer");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".LabelBattleTimer",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "GameNumber";
               this.fontSize = 78;
            };
         }
         style = StyleManager.getStyleDeclaration(".fazendaPet");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".fazendaPet",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_Fazenda_swf______1179734145;
               this.downSkin = _embed_css__style_Panels_Fazenda_swf_____2_1187425781;
               this.overSkin = _embed_css__style_Panels_Fazenda_swf_____1_1187425784;
               this.disabledSkin = _embed_css__style_Panels_Fazenda_swf_____3_1187425782;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnToolTipClose");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnToolTipClose",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_CloseBtnUp_2028984210;
               this.downSkin = _embed_css__style_Common_Components_swf_CloseBtnDown_2044084641;
               this.overSkin = _embed_css__style_Common_Components_swf_CloseBtnOver_2043824551;
               this.disabledSkin = _embed_css__style_Common_Components_swf_CloseBtnDisabled_1854343809;
            };
         }
         style = StyleManager.getStyleDeclaration(".WspPageSelLeft");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".WspPageSelLeft",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_LeftArrow1_1810752958;
               this.downSkin = _embed_css__style_Common_Components_swf_LeftArrow3_1810752940;
               this.selectedDownSkin = _embed_css__style_Common_Components_swf_LeftArrow3_1810752940;
               this.overSkin = _embed_css__style_Common_Components_swf_LeftArrow2_1810752943;
               this.selectedUpSkin = _embed_css__style_Common_Components_swf_LeftArrow1_1810752958;
               this.disabledSkin = _embed_css__style_Common_Components_swf_LeftArrow4_1810752941;
               this.selectedOverSkin = _embed_css__style_Common_Components_swf_LeftArrow2_1810752943;
               this.selectedDisabledSkin = _embed_css__style_Common_Components_swf_LeftArrow4_1810752941;
            };
         }
         style = StyleManager.getStyleDeclaration(".PageNoIndicator");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".PageNoIndicator",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.textAlign = "center";
               this.fontSize = 10;
               this.borderSkin = _embed_css__style_Common_Components_swf_PageNoIndicator_1135125614;
            };
         }
         style = StyleManager.getStyleDeclaration(".trialsBtn011");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".trialsBtn011",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_trialsPanel_swf_Yongqizhijian4_238319741;
               this.downSkin = _embed_css__style_Panels_trialsPanel_swf_Yongqizhijian4_238319741;
               this.overSkin = _embed_css__style_Panels_trialsPanel_swf_Yongqizhijian4_238319741;
               this.disabledSkin = _embed_css__style_Panels_trialsPanel_swf_Yongqizhijian4_238319741;
            };
         }
         style = StyleManager.getStyleDeclaration(".changtiao");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".changtiao",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_changtiao1_1111613180;
               this.downSkin = _embed_css__style_Common_Components_swf_changtiao3_1111613174;
               this.overSkin = _embed_css__style_Common_Components_swf_changtiao2_1111613179;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_Components_swf_changtiao4_1111613173;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".NextPage");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".NextPage",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf___up_1092641808;
               this.color = 16366965;
               this.textAlign = "center";
               this.fontAntiAliasType = "advance";
               this.disabledSkin = _embed_css__style_Common_Components_swf___up_1092641808;
               this.disabledColor = 13944759;
               this.downSkin = _embed_css__style_Common_Components_swf___up_1092641808;
               this.fontFamily = "Tahoma";
               this.overSkin = _embed_css__style_Common_Components_swf___over_1968743897;
               this.textSelectedColor = 11235111;
               this.fontSize = 12;
               this.textRollOverColor = 16515000;
               this.paddingTop = 2;
               this.paddingLeft = 0;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".ShiJieBei");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ShiJieBei",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_ShiJieBei_1222600917;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_ShiJieBei1_988981460;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_ShiJieBei1_988981460;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_ShiJieBei_1222600917;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".mengchongzhidou");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".mengchongzhidou",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon7_swf_mengchongzhidou_1620548088;
               this.downSkin = _embed_css__style_Common_ActivityIcon7_swf_mengchongzhidou2_491252280;
               this.overSkin = _embed_css__style_Common_ActivityIcon7_swf_mengchongzhidou2_491252280;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon7_swf_mengchongzhidou_1620548088;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".WishOneTime");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".WishOneTime",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels____swf___1__1786507224;
               this.downSkin = _embed_css__style_Panels____swf___1_2_53382044;
               this.overSkin = _embed_css__style_Panels____swf___1_1_53382043;
               this.disabledSkin = _embed_css__style_Panels____swf___1_3_53382045;
            };
         }
         style = StyleManager.getStyleDeclaration(".fazendaSelf");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".fazendaSelf",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_Fazenda_swf______1179748065;
               this.downSkin = _embed_css__style_Panels_Fazenda_swf_____2_1187907285;
               this.overSkin = _embed_css__style_Panels_Fazenda_swf_____1_1187907288;
               this.disabledSkin = _embed_css__style_Panels_Fazenda_swf_____3_1187907286;
            };
         }
         style = StyleManager.getStyleDeclaration(".Wuyouyuanzheng");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Wuyouyuanzheng",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_Wuyouyuanzheng_862921925;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_Wuyouyuanzheng1_1009213710;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_Wuyouyuanzheng1_1009213710;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_Wuyouyuanzheng_862921925;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BoxLabel");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BoxLabel",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.backgroundColor = 2252673;
               this.color = 16777215;
               this.borderSkin = _embed_css__style_Common_Components_swf_InputBox_597776956;
               this.height = 18;
            };
         }
         style = StyleManager.getStyleDeclaration(".monthWelfareKaiShi");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".monthWelfareKaiShi",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_kaishi1_2087331759;
               this.downSkin = _embed_css__style_Common_Components_swf_kaishi3_2087331757;
               this.overSkin = _embed_css__style_Common_Components_swf_kaishi2_2087331756;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_Components_swf_kaishi4_2087331762;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasGuideLocalTY");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasGuideLocalTY",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_LoginStage_CHA_CRE_new_swf___1_1932735915;
               this.downSkin = _embed_css__style_LoginStage_CHA_CRE_new_swf___3_1932735929;
               this.selectedDownSkin = _embed_css__style_LoginStage_CHA_CRE_new_swf___3_1932735929;
               this.overSkin = _embed_css__style_LoginStage_CHA_CRE_new_swf___2_1932735912;
               this.selectedUpSkin = _embed_css__style_LoginStage_CHA_CRE_new_swf___1_1932735915;
               this.disabledSkin = _embed_css__style_LoginStage_CHA_CRE_new_swf___4_1932735934;
               this.selectedOverSkin = _embed_css__style_LoginStage_CHA_CRE_new_swf___2_1932735912;
               this.selectedDisabledSkin = _embed_css__style_LoginStage_CHA_CRE_new_swf___4_1932735934;
            };
         }
         style = StyleManager.getStyleDeclaration(".soulBlueBtn");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".soulBlueBtn",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels________swf_BlueBtn1_1924823060;
               this.downSkin = _embed_css__style_Panels________swf_BlueBtn3_1924823266;
               this.overSkin = _embed_css__style_Panels________swf_BlueBtn2_1924823265;
               this.disabledSkin = _embed_css__style_Panels________swf_BlueBtn4_1924823279;
            };
         }
         style = StyleManager.getStyleDeclaration(".trialsBtn021");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".trialsBtn021",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_trialsPanel_swf_Xinnianzhijian4_1344003937;
               this.downSkin = _embed_css__style_Panels_trialsPanel_swf_Xinnianzhijian4_1344003937;
               this.overSkin = _embed_css__style_Panels_trialsPanel_swf_Xinnianzhijian4_1344003937;
               this.disabledSkin = _embed_css__style_Panels_trialsPanel_swf_Xinnianzhijian4_1344003937;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnBussinessAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnBussinessAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_shang_858780316;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_shang1_20053875;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_shang_858780316;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_shang_858780316;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".moyintuce");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".moyintuce",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon6_swf_moyintuce_1991580968;
               this.downSkin = _embed_css__style_Common_ActivityIcon6_swf_moyintuce2_1538788356;
               this.overSkin = _embed_css__style_Common_ActivityIcon6_swf_moyintuce2_1538788356;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon6_swf_moyintuce_1991580968;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".soulGreenBtn");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".soulGreenBtn",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels________swf_GreenBtn1_1767741145;
               this.downSkin = _embed_css__style_Panels________swf_GreenBtn3_1767741127;
               this.overSkin = _embed_css__style_Panels________swf_GreenBtn2_1767741146;
               this.disabledSkin = _embed_css__style_Panels________swf_GreenBtn4_1767741128;
            };
         }
         style = StyleManager.getStyleDeclaration("text");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("text",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.fontSize = 4;
            };
         }
         style = StyleManager.getStyleDeclaration(".SoulSlotClose");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".SoulSlotClose",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderThickness = 1;
               this.borderColor = 0;
               this.backgroundAlpha = 0;
               this.borderSkin = _embed_css__style_Common_Components_swf_ZhanBu1_207186558;
               this.borderStyle = "solid";
            };
         }
         style = StyleManager.getStyleDeclaration(".PanelTreasure");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".PanelTreasure",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_LoginStage_LoginStage_swf_CreateCharacterCanvas_1321765754;
            };
         }
         style = StyleManager.getStyleDeclaration(".Jubaopen");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Jubaopen",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_Jubaopen_677858251;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_Jubaopen2_1949606899;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_Jubaopen2_1949606899;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_Jubaopen_677858251;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".CharCreCareerText");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CharCreCareerText",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "宋体";
               this.color = 16768881;
               this.fontSize = 14;
               this.borderSkin = _embed_css__style_LoginStage_CHA_CRE_swf____1892622578;
            };
         }
         style = StyleManager.getStyleDeclaration(".getMineAll");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".getMineAll",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_Fazenda_swf____740043933;
               this.downSkin = _embed_css__style_Panels_Fazenda_swf___2_759491055;
               this.overSkin = _embed_css__style_Panels_Fazenda_swf___1_759491052;
               this.disabledSkin = _embed_css__style_Panels_Fazenda_swf___3_759491054;
            };
         }
         style = StyleManager.getStyleDeclaration(".trialsBtn031");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".trialsBtn031",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_trialsPanel_swf_Lunhuizhijian4_1994221427;
               this.downSkin = _embed_css__style_Panels_trialsPanel_swf_Lunhuizhijian4_1994221427;
               this.overSkin = _embed_css__style_Panels_trialsPanel_swf_Lunhuizhijian4_1994221427;
               this.disabledSkin = _embed_css__style_Panels_trialsPanel_swf_Lunhuizhijian4_1994221427;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnMeirifuli");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnMeirifuli",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon7_swf_meirifuli_635431907;
               this.downSkin = _embed_css__style_Common_ActivityIcon7_swf_meirifuli1_191703556;
               this.overSkin = _embed_css__style_Common_ActivityIcon7_swf_meirifuli1_191703556;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon7_swf_meirifuli_635431907;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".SlotDailySignIn");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".SlotDailySignIn",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderThickness = 1;
               this.borderColor = 0;
               this.backgroundAlpha = 0;
               this.borderSkin = _embed_css__style_Common_Components_swf_qiandaojinkuang_197931225;
               this.borderStyle = "solid";
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnCallBoardFlag5");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnCallBoardFlag5",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___Callboard_swf___1_1986998102;
               this.downSkin = _embed_css___Callboard_swf___3_1986998100;
               this.overSkin = _embed_css___Callboard_swf___2_1986998101;
               this.disabledSkin = _embed_css___Callboard_swf___4_1986998099;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnReduce2");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnReduce2",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___Components_swf_BtnReduce_630234889;
               this.downSkin = _embed_css___Components_swf_BtnReduce_630234889;
               this.selectedDownSkin = _embed_css___Components_swf_BtnReduce_630234889;
               this.overSkin = _embed_css___Components_swf_BtnReduce_630234889;
               this.selectedUpSkin = _embed_css___Components_swf_BtnReduce_630234889;
               this.disabledSkin = _embed_css___Components_swf_BtnReduce_630234889;
               this.selectedOverSkin = _embed_css___Components_swf_BtnReduce_630234889;
               this.selectedDisabledSkin = _embed_css___Components_swf_BtnReduce_630234889;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnCallBoardFlag4");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnCallBoardFlag4",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___Callboard_swf___1_1979113956;
               this.downSkin = _embed_css___Callboard_swf___3_1979113954;
               this.overSkin = _embed_css___Callboard_swf___2_1979113955;
               this.disabledSkin = _embed_css___Callboard_swf___4_1979113969;
            };
         }
         style = StyleManager.getStyleDeclaration(".tanxianzhexunzhang");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".tanxianzhexunzhang",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_tanxianxunzhang_1761435135;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_tanxianxunzhang_1761435135;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_tanxianxunzhang1_110793226;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_tanxianxunzhang_1761435135;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnCallBoardFlag3");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnCallBoardFlag3",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___Callboard_swf___1_1980482770;
               this.downSkin = _embed_css___Callboard_swf___3_1980482784;
               this.overSkin = _embed_css___Callboard_swf___2_1980482785;
               this.disabledSkin = _embed_css___Callboard_swf___4_1980482783;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnCallBoardFlag2");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnCallBoardFlag2",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___Callboard_swf___1_1979826752;
               this.downSkin = _embed_css___Callboard_swf___3_1979826750;
               this.overSkin = _embed_css___Callboard_swf___2_1979826751;
               this.disabledSkin = _embed_css___Callboard_swf___4_1979826749;
            };
         }
         style = StyleManager.getStyleDeclaration(".Shilianzhidi");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Shilianzhidi",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_Shilianzhidi_373238439;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_Shilianzhidi1_1732559618;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_Shilianzhidi1_1732559618;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_Shilianzhidi_373238439;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".mijinglixian");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".mijinglixian",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_mijinglixian_854860990;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_mijinglixian1_790382983;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_mijinglixian1_790382983;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_mijinglixian_854860990;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnCallBoardFlag1");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnCallBoardFlag1",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___Callboard_swf___1_1981927986;
               this.downSkin = _embed_css___Callboard_swf___3_1981928000;
               this.overSkin = _embed_css___Callboard_swf___2_1981928001;
               this.disabledSkin = _embed_css___Callboard_swf___4_1981927999;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnCallBoardFlag0");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnCallBoardFlag0",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___Callboard_swf___1_1988566054;
               this.downSkin = _embed_css___Callboard_swf___3_1988566052;
               this.overSkin = _embed_css___Callboard_swf___2_1988566053;
               this.disabledSkin = _embed_css___Callboard_swf___4_1988566051;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasPetPortrait");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasPetPortrait",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_MainStage_CharInfo_swf_PetPortrait_png_1860433212;
            };
         }
         style = StyleManager.getStyleDeclaration(".soulPurpleBtn");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".soulPurpleBtn",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels________swf_PurpleBtn1_738887490;
               this.downSkin = _embed_css__style_Panels________swf_PurpleBtn3_738887504;
               this.overSkin = _embed_css__style_Panels________swf_PurpleBtn2_738887503;
               this.disabledSkin = _embed_css__style_Panels________swf_PurpleBtn4_738887501;
            };
         }
         style = StyleManager.getStyleDeclaration("Application");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("Application",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.backgroundColor = 0;
               this.fontFamily = "Tahoma";
               this.fontSize = 12;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnNormalBlue");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnNormalBlue",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_BlueButtonUp_815735482;
               this.downSkin = _embed_css__style_Common_Components_swf_BlueButtonDown_692038535;
               this.fontFamily = "Tahoma";
               this.color = 16759672;
               this.overSkin = _embed_css__style_Common_Components_swf_BlueButtonOver_688169793;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_Components_swf_YellowButtonDisabled_655016957;
               this.fontSize = 12;
               this.textRollOverColor = 16515001;
               this.disabledColor = 14010039;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".ButtonWrapper");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ButtonWrapper",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_LoginStage_LoginStage_swf_ButtonWrapper_1272556094;
            };
         }
         style = StyleManager.getStyleDeclaration(".StandardTitle");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".StandardTitle",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Common_Components_swf_TitleStrip_824463423;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnChatGH");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnChatGH",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonGreenUp_809884814;
               this.downSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonGreenDown_364691977;
               this.fontFamily = "Tahoma";
               this.color = 7591735;
               this.overSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonGreenOver_356968359;
               this.disabledSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonDisabled_231044682;
               this.fontSize = 12;
               this.textRollOverColor = 7591735;
               this.paddingTop = 2;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".trialsBtn041");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".trialsBtn041",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_trialsPanel_swf_Mingyunzhijian4_1596048583;
               this.downSkin = _embed_css__style_Panels_trialsPanel_swf_Mingyunzhijian4_1596048583;
               this.overSkin = _embed_css__style_Panels_trialsPanel_swf_Mingyunzhijian4_1596048583;
               this.disabledSkin = _embed_css__style_Panels_trialsPanel_swf_Mingyunzhijian4_1596048583;
            };
         }
         style = StyleManager.getStyleDeclaration(".duihuanjiangli");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".duihuanjiangli",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_AwardButton_1840383938;
               this.downSkin = _embed_css__style_Common_Components_swf_AwardButtonGray_288785619;
               this.overSkin = _embed_css__style_Common_Components_swf_AwardButtonLight_1845747910;
               this.disabledSkin = _embed_css__style_Common_Components_swf_AwardButton_1840383938;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnChatDown");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnChatDown",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_ChatArea_swf_DiminishUp_741962365;
               this.downSkin = _embed_css__style_MainStage_ChatArea_swf_DiminishDown_1187235256;
               this.overSkin = _embed_css__style_MainStage_ChatArea_swf_DiminishOver_1192598630;
               this.disabledSkin = _embed_css__style_MainStage_ChatArea_swf_DiminishDisabled_2105069918;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnMysTreasure");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnMysTreasure",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_AchievementPanelB1Up_1313236270;
               this.color = 16777215;
               this.disabledSkin = _embed_css__style_Common_Components_swf_AchievementPanelB1Disabled_731169343;
               this.selectedOverSkin = _embed_css__style_Common_Components_swf_AchievementPanelB1Over_648876903;
               this.selectedDisabledSkin = _embed_css__style_Common_Components_swf_AchievementPanelB1Over_648876903;
               this.disabledColor = 14010039;
               this.downSkin = _embed_css__style_Common_Components_swf_AchievementPanelB1Down_648998497;
               this.fontFamily = "宋体";
               this.selectedDownSkin = _embed_css__style_Common_Components_swf_AchievementPanelB1Over_648876903;
               this.overSkin = _embed_css__style_Common_Components_swf_AchievementPanelB1Over_648876903;
               this.selectedUpSkin = _embed_css__style_Common_Components_swf_AchievementPanelB1Over_648876903;
               this.textSelectedColor = 11235111;
               this.fontSize = 14;
               this.textRollOverColor = 16515001;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasToolTip");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasToolTip",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.backgroundColor = 65793;
               this.borderColor = 10866681;
               this.color = 16777215;
               this.backgroundAlpha = 0.65;
               this.borderStyle = "solid";
            };
         }
         style = StyleManager.getStyleDeclaration(".texunkecheng");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".texunkecheng",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon6_swf_kexunkecheng_860266767;
               this.downSkin = _embed_css__style_Common_ActivityIcon6_swf_texunkecheng2_1173796508;
               this.overSkin = _embed_css__style_Common_ActivityIcon6_swf_texunkecheng2_1173796508;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon6_swf_kexunkecheng_860266767;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".GoldLocked");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".GoldLocked",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_BagPanel_swf_____1_779808610;
               this.downSkin = _embed_css__style_Panels_BagPanel_swf_____3_779808620;
               this.overSkin = _embed_css__style_Panels_BagPanel_swf_____2_779808611;
               this.disabledSkin = _embed_css__style_Panels_BagPanel_swf_____4_779808621;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnZuanshitequan");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnZuanshitequan",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon7_swf_zuanshitequan_1551894165;
               this.downSkin = _embed_css__style_Common_ActivityIcon7_swf_zuanshitequan1_1331584370;
               this.overSkin = _embed_css__style_Common_ActivityIcon7_swf_zuanshitequan1_1331584370;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon7_swf_zuanshitequan_1551894165;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration("Menu");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("Menu",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.leftIconGap = 10;
               this.rightIconGap = 7;
               this.selectionColor = 1520453;
               this.textSelectedColor = 16777215;
               this.textRollOverColor = 16777215;
               this.disabledColor = 16777215;
               this.borderSkin = _embed_css__83754981;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasUIHelp");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasUIHelp",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Miscellaneous_UIHelp_swf_UIHelp_205113004;
            };
         }
         style = StyleManager.getStyleDeclaration(".pkgame");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".pkgame",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_molizhixin1_1397544497;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_molizhixin2_1397544504;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_molizhixin2_1397544504;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_molizhixin1_1397544497;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnChatUserEm");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnChatUserEm",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_ChatArea_swf_EmotionButtonUp_148758031;
               this.downSkin = _embed_css__style_MainStage_ChatArea_swf_EmotionButtonDown_1892803524;
               this.overSkin = _embed_css__style_MainStage_ChatArea_swf_EmotionButtonOver_1893255942;
               this.disabledSkin = _embed_css__style_MainStage_ChatArea_swf_EmotionButtonDisabled_461997102;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnAcceptMarriage");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnAcceptMarriage",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Miscellaneous_____________swf_aixin1_2068175507;
               this.downSkin = _embed_css__style_Miscellaneous_____________swf_aixin3_2068175517;
               this.selectedDownSkin = _embed_css__style_Miscellaneous_____________swf_aixin3_2068175517;
               this.overSkin = _embed_css__style_Miscellaneous_____________swf_aixin2_2068175508;
               this.selectedUpSkin = _embed_css__style_Miscellaneous_____________swf_aixin1_2068175507;
               this.disabledSkin = _embed_css__style_Miscellaneous_____________swf_aixin4_2068175518;
               this.selectedOverSkin = _embed_css__style_Miscellaneous_____________swf_aixin2_2068175508;
               this.selectedDisabledSkin = _embed_css__style_Miscellaneous_____________swf_aixin4_2068175518;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnCardAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnCardAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_KaPai_818999015;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_KaPai1_1276450622;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_KaPai1_1276450622;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_KaPai_818999015;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".trialsBtn051");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".trialsBtn051",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_trialsPanel_swf_Mituzhijian4_187510727;
               this.downSkin = _embed_css__style_Panels_trialsPanel_swf_Mituzhijian4_187510727;
               this.overSkin = _embed_css__style_Panels_trialsPanel_swf_Mituzhijian4_187510727;
               this.disabledSkin = _embed_css__style_Panels_trialsPanel_swf_Mituzhijian4_187510727;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasWorldMapBack");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasWorldMapBack",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Maps_WorldMap_Back_jpg_1100806335;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnEmotion");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnEmotion",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.downSkin = _embed_css__style_MainStage_Emotions_swf_BtnEm_mc1_897037031;
               this.paddingBottom = 0;
               this.paddingRight = 0;
               this.overSkin = _embed_css__style_MainStage_Emotions_swf_BtnEm_mc0_897036822;
               this.paddingTop = 0;
               this.fillColors = [16777215,16777215,16777215,16777215];
               this.fillAlphas = [0,0,0,0];
               this.paddingLeft = 0;
               this.fontWeight = "normal";
               this.cornerRadius = 0;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnPanelMinimize");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnPanelMinimize",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_MinimizeButtonUp_1495179334;
               this.downSkin = _embed_css__style_Common_Components_swf_MinimizeButtonDown_1910027859;
               this.overSkin = _embed_css__style_Common_Components_swf_MinimizeButtonOver_1910343997;
               this.disabledSkin = _embed_css__style_Common_Components_swf_MinimizeButtonDisabled_1499993947;
            };
         }
         style = StyleManager.getStyleDeclaration(".fazendaShop");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".fazendaShop",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_Fazenda_swf______1212720359;
               this.downSkin = _embed_css__style_Panels_Fazenda_swf_____2_71722267;
               this.overSkin = _embed_css__style_Panels_Fazenda_swf_____1_71722262;
               this.disabledSkin = _embed_css__style_Panels_Fazenda_swf_____3_71722268;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasMapQFinishing");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasMapQFinishing",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css___MiniMap_swf_______1032407870;
            };
         }
         style = StyleManager.getStyleDeclaration(".ProgressSp");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ProgressSp",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderColor = 0;
               this.fontFamily = "Verdana";
               this.color = 0;
               this.barSkin = _embed_css__style_MainStage_CharInfo_swf_SPBar_1303779517;
               this.fontSize = 9;
               this.barColor = 16776960;
               this.trackColors = [1986152,16777215];
            };
         }
         style = StyleManager.getStyleDeclaration(".UserBarSwitchDown");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".UserBarSwitchDown",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_NextRowUp_1680351899;
               this.downSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_NextRowDown_520908260;
               this.overSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_NextRowOver_521233870;
               this.disabledSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_NextRowDisabled_1052896118;
            };
         }
         style = StyleManager.getStyleDeclaration(".HTabWrapper");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".HTabWrapper",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.horizontalGap = 1;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasChooseChannel");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasChooseChannel",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_LoginStage_LoginStage_swf_ChooseChannelCanvas_876114597;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnBarRichang");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnBarRichang",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_SystemBarButtons2_swf_richang1_2098451002;
               this.downSkin = _embed_css__style_MainStage_SystemBarButtons2_swf_richang4_2098451013;
               this.overSkin = _embed_css__style_MainStage_SystemBarButtons2_swf_richang2_2098451015;
               this.disabledSkin = _embed_css__style_MainStage_SystemBarButtons2_swf_richang3_2098451016;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnBagUse");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnBagUse",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_BagPanel_swf_button_use_up_mc2_604626604;
               this.downSkin = _embed_css__style_Panels_BagPanel_swf_button_use_down_mc2_196332123;
               this.selectedDownSkin = _embed_css__style_Panels_BagPanel_swf_button_use_up_mc2_604626604;
               this.overSkin = _embed_css__style_Panels_BagPanel_swf_button_use_over_mc2_63268299;
               this.selectedUpSkin = _embed_css__style_Panels_BagPanel_swf_button_use_up_mc2_604626604;
               this.disabledSkin = _embed_css__style_Panels_BagPanel_swf_button_use_up_mc2_604626604;
               this.selectedOverSkin = _embed_css__style_Panels_BagPanel_swf_button_use_up_mc2_604626604;
               this.selectedDisabledSkin = _embed_css__style_Panels_BagPanel_swf_button_use_up_mc2_604626604;
            };
         }
         style = StyleManager.getStyleDeclaration(".monthWelfare");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".monthWelfare",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_Huikuishangcheng_116025802;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_Huikuishangcheng1_688344671;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_Huikuishangcheng1_688344671;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_Huikuishangcheng_116025802;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".ppBgImg3");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ppBgImg3",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Panels_diaoke_swf_ppbg3_1826720355;
            };
         }
         style = StyleManager.getStyleDeclaration(".ppBgImg2");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ppBgImg2",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Panels_diaoke_swf_ppbg2_1826720366;
            };
         }
         style = StyleManager.getStyleDeclaration(".secretTreasureHuntXY");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".secretTreasureHuntXY",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_xingyunshai1_356412261;
               this.downSkin = _embed_css__style_Common_Components_swf_xingyunshai3_356412263;
               this.overSkin = _embed_css__style_Common_Components_swf_xingyunshai2_356412264;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_Components_swf_xingyunshai4_356412258;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnAutoTaskAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnAutoTaskAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_zidongfuben_1184779728;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_zidongfuben1_663514857;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_zidongfuben1_663514857;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_zidongfuben_1184779728;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasMapSend");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasMapSend",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css___MiniMap_swf____714503733;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasShopLimit");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasShopLimit",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css___SystemShopPanel_swf_____LIMIT_736410460;
            };
         }
         style = StyleManager.getStyleDeclaration(".CharacterYellow");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CharacterYellow",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_LoginStage_LoginStage_swf_CharacterYellowUp_970757529;
               this.downSkin = _embed_css__style_LoginStage_LoginStage_swf_CharacterYellowDown_1096204576;
               this.selectedDownSkin = _embed_css__style_LoginStage_LoginStage_swf_CharacterYellowDown_1096204576;
               this.overSkin = _embed_css__style_LoginStage_LoginStage_swf_CharacterYellowOver_1096800622;
               this.selectedUpSkin = _embed_css__style_LoginStage_LoginStage_swf_CharacterYellowOver_1096800622;
               this.disabledSkin = _embed_css__style_LoginStage_LoginStage_swf_CharacterYellowDisabled_202395718;
               this.selectedOverSkin = _embed_css__style_LoginStage_LoginStage_swf_CharacterYellowOver_1096800622;
               this.selectedDisabledSkin = _embed_css__style_LoginStage_LoginStage_swf_CharacterYellowDisabled_202395718;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnWbQuit");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnWbQuit",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_wbIcon_swf___2_1395951543;
               this.downSkin = _embed_css__style_Common_wbIcon_swf___3_1395951544;
               this.color = 16366965;
               this.overSkin = _embed_css__style_Common_wbIcon_swf____1366223417;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_wbIcon_swf___4_1395951545;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasJXHDItem");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasJXHDItem",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Panels_jxhd_swf_jxhditem_1943955624;
            };
         }
         style = StyleManager.getStyleDeclaration(".talentRightBtn");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".talentRightBtn",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels___icon_swf_Youjiantou_164879550;
               this.downSkin = _embed_css__style_Panels___icon_swf_Youjiantou2_1925744590;
               this.overSkin = _embed_css__style_Panels___icon_swf_Youjiantou1_1925744591;
               this.disabledSkin = _embed_css__style_Panels___icon_swf_Youjiantou3_1925744589;
            };
         }
         style = StyleManager.getStyleDeclaration(".jinbi");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".jinbi",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_jinbi1_963862358;
               this.downSkin = _embed_css__style_Common_Components_swf_jinbi3_963862360;
               this.overSkin = _embed_css__style_Common_Components_swf_jinbi2_963862357;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_Components_swf_jinbi4_963862359;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnChatDW");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnChatDW",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonBlueUp_429989409;
               this.downSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonBlueDown_1388010666;
               this.fontFamily = "Tahoma";
               this.color = 3784959;
               this.overSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonBlueOver_1380744008;
               this.disabledSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonDisabled_231044682;
               this.fontSize = 12;
               this.textRollOverColor = 3784959;
               this.paddingTop = 2;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".summerGames");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".summerGames",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_huanleixia_swf_Huanleyixia_1107642736;
               this.downSkin = _embed_css__style_Common_ActivityIcon_huanleixia_swf_Huanleyixia1_1960593129;
               this.overSkin = _embed_css__style_Common_ActivityIcon_huanleixia_swf_Huanleyixia1_1960593129;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_huanleixia_swf_Huanleyixia_1107642736;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnChatDQ");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnChatDQ",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonAquaUp_287108099;
               this.downSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonAquaDown_219953864;
               this.fontFamily = "Tahoma";
               this.color = 4257237;
               this.overSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonAquaOver_214589978;
               this.disabledSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonDisabled_231044682;
               this.fontSize = 12;
               this.textRollOverColor = 4257237;
               this.paddingTop = 2;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasRightBottom");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasRightBottom",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_SettingBg_886543000;
            };
         }
         style = StyleManager.getStyleDeclaration(".wawajiicon");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".wawajiicon",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_wawaji_452880682;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_wawaji1_2045305139;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_wawaji1_2045305139;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_wawaji_452880682;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnPKZhengBa");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnPKZhengBa",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_Pkzhengba_1677903691;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_Pkzhengba1_895978356;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_Pkzhengba1_895978356;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_Pkzhengba_1677903691;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".huannengshuijin");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".huannengshuijin",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_huannengshuijin_137206691;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_huannengshuijin1_1398333036;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_huannengshuijin1_1398333036;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_huannengshuijin_137206691;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnBagRepair");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnBagRepair",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_BagPanel_swf_button_repair_up_mc2_392924140;
               this.downSkin = _embed_css__style_Panels_BagPanel_swf_button_Repair_down_mc2_1958948283;
               this.selectedDownSkin = _embed_css__style_Panels_BagPanel_swf_button_repair_up_mc2_392924140;
               this.overSkin = _embed_css__style_Panels_BagPanel_swf_button_rpeair_over_mc2_150649313;
               this.selectedUpSkin = _embed_css__style_Panels_BagPanel_swf_button_repair_up_mc2_392924140;
               this.disabledSkin = _embed_css__style_Panels_BagPanel_swf_button_repair_up_mc2_392924140;
               this.selectedOverSkin = _embed_css__style_Panels_BagPanel_swf_button_repair_up_mc2_392924140;
               this.selectedDisabledSkin = _embed_css__style_Panels_BagPanel_swf_button_repair_up_mc2_392924140;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasSlot");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasSlot",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderThickness = 1;
               this.borderColor = 0;
               this.backgroundColor = 15252611;
               this.borderStyle = "solid";
               this.cornerRadius = 3;
            };
         }
         style = StyleManager.getStyleDeclaration(".GoldUnlock");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".GoldUnlock",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_BagPanel_swf___1_1191389239;
               this.downSkin = _embed_css__style_Panels_BagPanel_swf___3_1191389237;
               this.overSkin = _embed_css__style_Panels_BagPanel_swf___2_1191389238;
               this.disabledSkin = _embed_css__style_Panels_BagPanel_swf___4_1191389228;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnStdBlue");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnStdBlue",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_CrystalButtonUp_570620126;
               this.color = 16775802;
               this.disabledSkin = _embed_css__style_Common_Components_swf_CrystalButtonDisabled_1982005955;
               this.selectedOverSkin = _embed_css__style_Common_Components_swf_CrystalYellowButtonOver_1774553585;
               this.selectedDisabledSkin = _embed_css__style_Common_Components_swf_CrystalButtonDisabled_1982005955;
               this.disabledColor = 14737632;
               this.downSkin = _embed_css__style_Common_Components_swf_CrystalButtonDown_1724131541;
               this.fontFamily = "Tahoma";
               this.selectedDownSkin = _embed_css__style_Common_Components_swf_CrystalYellowButtonDown_1774235703;
               this.overSkin = _embed_css__style_Common_Components_swf_CrystalButtonOver_1724928811;
               this.selectedUpSkin = _embed_css__style_Common_Components_swf_CrystalYellowButtonUp_1470023894;
               this.textSelectedColor = 16775802;
               this.fontSize = 12;
               this.textRollOverColor = 16775802;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasBattleCommand");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasBattleCommand",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css___CommandPanel_swf_CommandPanel_1217049137;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnBarPet");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnBarPet",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_pet_up_mc_992183262;
               this.downSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_pet_down_mc_1890657267;
               this.overSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_pet_over_mc_1100570245;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnKuaFuJingJi");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnKuaFuJingJi",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_Kuafujingji_1965641964;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_Kuafujingji1_1104943797;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_Kuafujingji1_1104943797;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_Kuafujingji_1965641964;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".moliyixia");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".moliyixia",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_molizhixin1_1397544497;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_molizhixin2_1397544504;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_molizhixin2_1397544504;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_molizhixin1_1397544497;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".WarSprite");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".WarSprite",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_Baonuzhanhun_1523237698;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_Baonuzhanhun1_1765556615;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_Baonuzhanhun1_1765556615;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_Baonuzhanhun_1523237698;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".btnSet");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".btnSet",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_SettingUp_886546178;
               this.downSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_SettingDown_1183821451;
               this.fontFamily = "Tahoma";
               this.color = 16775802;
               this.overSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_SettingOver_1183889717;
               this.textSelectedColor = 16775802;
               this.disabledSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_SettingDisabled_2012671843;
               this.fontSize = 12;
               this.textRollOverColor = 16775802;
               this.disabledColor = 14737632;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnHeiyaoshiSmall");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnHeiyaoshiSmall",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_heiyaoshi_1010669820;
               this.downSkin = _embed_css__style_Common_Components_swf_heiyaoshi_1010669820;
               this.selectedDownSkin = _embed_css__style_Common_Components_swf_heiyaoshi1_949029287;
               this.overSkin = _embed_css__style_Common_Components_swf_heiyaoshi1_949029287;
               this.selectedUpSkin = _embed_css__style_Common_Components_swf_heiyaoshi1_949029287;
               this.selectedOverSkin = _embed_css__style_Common_Components_swf_heiyaoshi1_949029287;
            };
         }
         style = StyleManager.getStyleDeclaration(".CharCreEnter");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CharCreEnter",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_LoginStage_CHA_CRE_swf_____1_1622969405;
               this.downSkin = _embed_css__style_LoginStage_CHA_CRE_swf_____3_1622969407;
               this.overSkin = _embed_css__style_LoginStage_CHA_CRE_swf_____2_1622969404;
               this.disabledSkin = _embed_css__style_LoginStage_CHA_CRE_swf_____4_1622969406;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnHeiyaoshiNotActive");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnHeiyaoshiNotActive",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_quantujihuo3_835336003;
               this.downSkin = _embed_css__style_Common_Components_swf_quantujihuo3_835336003;
               this.overSkin = _embed_css__style_Common_Components_swf_quantujihuo3_835336003;
               this.selectedUpSkin = _embed_css__style_Common_Components_swf_quantujihuo3_835336003;
               this.selectedOverSkin = _embed_css__style_Common_Components_swf_quantujihuo3_835336003;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnSys");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnSys",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_MouseUp_1499378663;
               this.downSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_MouseDown_1314472872;
               this.overSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_Mouseover_1316896590;
               this.disabledSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_MouseDisabled_1694705722;
            };
         }
         style = StyleManager.getStyleDeclaration(".PanelAnnouncement");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".PanelAnnouncement",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_LoginStage_LoginStage_swf_AnnouncementCanvas_355353696;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnHeiyaoshiPointNotActiveStage2");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnHeiyaoshiPointNotActiveStage2",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Miscellaneous_dot4heiyaoshi_swf_dianjihuo2_2068111984;
               this.downSkin = _embed_css__style_Miscellaneous_dot4heiyaoshi_swf_dianjihuo2_2068111984;
               this.overSkin = _embed_css__style_Miscellaneous_dot4heiyaoshi_swf_dianjihuo3_2068111991;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnNineBossAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnNineBossAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_wuyou_862825640;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_wuyou1_467369647;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_wuyou1_467369647;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_wuyou_862825640;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration("VSlider");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("VSlider",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.thumbUpSkin = _embed_css________swf_SliderThumb_upSkin_891122714;
               this.showTrackHighlight = true;
               this.thumbDownSkin = _embed_css________swf_SliderThumb_downSkin_1360380893;
               this.trackHighlightSkin = _embed_css________swf_SliderHighlight_Skin_1820318516;
               this.trackSkin = _embed_css________swf_SliderTrack_Skin_1955168507;
               this.thumbDisabledSkin = _embed_css________swf_SliderThumb_disabledSkin_197857223;
               this.thumbOverSkin = _embed_css________swf_SliderThumb_overSkin_1383066641;
               this.dataTipOffset = 5;
            };
         }
         style = StyleManager.getStyleDeclaration(".QuestGuideChange");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".QuestGuideChange",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Miscellaneous________swf_____1_1424998877;
               this.downSkin = _embed_css__style_Miscellaneous________swf_____3_1424998851;
               this.selectedDownSkin = _embed_css__style_Miscellaneous________swf_____7_1424998871;
               this.overSkin = _embed_css__style_Miscellaneous________swf_____2_1424998878;
               this.selectedUpSkin = _embed_css__style_Miscellaneous________swf_____5_1424998865;
               this.disabledSkin = _embed_css__style_Miscellaneous________swf_____4_1424998852;
               this.selectedOverSkin = _embed_css__style_Miscellaneous________swf_____6_1424998866;
               this.selectedDisabledSkin = _embed_css__style_Miscellaneous________swf_____8_1424998872;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnStdOrg");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnStdOrg",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_CrystalButtonUp_570620126;
               this.color = 16775802;
               this.disabledSkin = _embed_css__style_Common_Components_swf_CrystalButtonDisabled_1982005955;
               this.selectedOverSkin = _embed_css__style_Common_Components_swf_CrystalYellowButtonOver_1774553585;
               this.selectedDisabledSkin = _embed_css__style_Common_Components_swf_CrystalButtonDisabled_1982005955;
               this.disabledColor = 14737632;
               this.downSkin = _embed_css__style_Common_Components_swf_CrystalButtonDown_1724131541;
               this.fontFamily = "Tahoma";
               this.selectedDownSkin = _embed_css__style_Common_Components_swf_CrystalYellowButtonDown_1774235703;
               this.overSkin = _embed_css__style_Common_Components_swf_CrystalButtonOver_1724928811;
               this.selectedUpSkin = _embed_css__style_Common_Components_swf_CrystalYellowButtonUp_1470023894;
               this.textSelectedColor = 16775802;
               this.fontSize = 12;
               this.textRollOverColor = 16775802;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".TransparentSlotPurple");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".TransparentSlotPurple",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderThickness = 1;
               this.borderColor = 16724991;
               this.backgroundAlpha = 0;
               this.borderStyle = "solid";
               this.cornerRadius = 2;
            };
         }
         style = StyleManager.getStyleDeclaration(".masterMedal0");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".masterMedal0",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_diaoke_swf_medal0_985488166;
               this.downSkin = _embed_css__style_Panels_diaoke_swf_medal0_985488166;
               this.overSkin = _embed_css__style_Panels_diaoke_swf_medal0_985488166;
               this.disabledSkin = _embed_css__style_Panels_diaoke_swf_medal0_985488166;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnStarAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnStarAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_shier_858771848;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_shier1_21331599;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_shier1_21331599;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_shier_858771848;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".MiniCanvaShowBtn");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".MiniCanvaShowBtn",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_putup_1316373347;
               this.downSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_putdown_637353430;
               this.overSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_putover_620763652;
               this.disabledSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_putDisabled_1211229348;
            };
         }
         style = StyleManager.getStyleDeclaration(".SilverLocked");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".SilverLocked",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_BagPanel_swf_____1_780047743;
               this.downSkin = _embed_css__style_Panels_BagPanel_swf_____3_780047737;
               this.overSkin = _embed_css__style_Panels_BagPanel_swf_____2_780047736;
               this.disabledSkin = _embed_css__style_Panels_BagPanel_swf_____4_780047738;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasMapSelf");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasMapSelf",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css___MiniMap_swf____714346264;
            };
         }
         style = StyleManager.getStyleDeclaration(".masterMedal3");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".masterMedal3",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_diaoke_swf_medal3_985488163;
               this.downSkin = _embed_css__style_Panels_diaoke_swf_medal331_915790399;
               this.overSkin = _embed_css__style_Panels_diaoke_swf_medal331_915790399;
               this.disabledSkin = _embed_css__style_Panels_diaoke_swf_medal3_985488163;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnBagBind");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnBagBind",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_BagPanel_swf_button_Lock_up_mc2_1492751790;
               this.downSkin = _embed_css__style_Panels_BagPanel_swf_button_Lock_down_mc2_1121308069;
               this.selectedDownSkin = _embed_css__style_Panels_BagPanel_swf_button_Lock_up_mc2_1492751790;
               this.overSkin = _embed_css__style_Panels_BagPanel_swf_button_Lock_over_mc2_1802724953;
               this.selectedUpSkin = _embed_css__style_Panels_BagPanel_swf_button_Lock_up_mc2_1492751790;
               this.disabledSkin = _embed_css__style_Panels_BagPanel_swf_button_Lock_up_mc2_1492751790;
               this.selectedOverSkin = _embed_css__style_Panels_BagPanel_swf_button_Lock_up_mc2_1492751790;
               this.selectedDisabledSkin = _embed_css__style_Panels_BagPanel_swf_button_Lock_up_mc2_1492751790;
            };
         }
         style = StyleManager.getStyleDeclaration(".masterMedal2");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".masterMedal2",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_diaoke_swf_medal2_985488160;
               this.downSkin = _embed_css__style_Panels_diaoke_swf_medal221_915791711;
               this.overSkin = _embed_css__style_Panels_diaoke_swf_medal221_915791711;
               this.disabledSkin = _embed_css__style_Panels_diaoke_swf_medal2_985488160;
            };
         }
         style = StyleManager.getStyleDeclaration(".masterMedal1");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".masterMedal1",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_diaoke_swf_medal1_985488161;
               this.downSkin = _embed_css__style_Panels_diaoke_swf_medal111_915784575;
               this.overSkin = _embed_css__style_Panels_diaoke_swf_medal111_915784575;
               this.disabledSkin = _embed_css__style_Panels_diaoke_swf_medal1_985488161;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnChatLock");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnChatLock",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_ChatArea_swf___1_Lock_1412462800;
               this.downSkin = _embed_css__style_MainStage_ChatArea_swf___3_1289688183;
               this.selectedDownSkin = _embed_css__style_MainStage_ChatArea_swf_LockDown_957791038;
               this.overSkin = _embed_css__style_MainStage_ChatArea_swf___2_1289688458;
               this.selectedUpSkin = _embed_css__style_MainStage_ChatArea_swf_LockUp_814947485;
               this.disabledSkin = _embed_css__style_MainStage_ChatArea_swf___4_1289688184;
               this.selectedOverSkin = _embed_css__style_MainStage_ChatArea_swf_LockOver_957330220;
               this.selectedDisabledSkin = _embed_css__style_MainStage_ChatArea_swf_LockDisabled_308126660;
            };
         }
         style = StyleManager.getStyleDeclaration(".fazendaFriendSearch");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".fazendaFriendSearch",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_Fazenda_swf___1_747361718;
               this.downSkin = _embed_css__style_Panels_Fazenda_swf___3_747361712;
               this.overSkin = _embed_css__style_Panels_Fazenda_swf___2_747361713;
               this.disabledSkin = _embed_css__style_Panels_Fazenda_swf___4_747361715;
            };
         }
         style = StyleManager.getStyleDeclaration(".Xiuluozhanchang");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Xiuluozhanchang",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_Xiuluozhanchang_1609361561;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_Xiuluozhanchang1_1917926752;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_Xiuluozhanchang1_1917926752;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_Xiuluozhanchang_1609361561;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".rebtnclose");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".rebtnclose",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_envelope_swf_guan_220513302;
               this.downSkin = _embed_css__style_Panels_envelope_swf_guan1_164969467;
               this.overSkin = _embed_css__style_Panels_envelope_swf_guan1_164969467;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Panels_envelope_swf_guan_220513302;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".talentUpBtn");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".talentUpBtn",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels___icon_swf_Shengjijiantou_637218987;
               this.downSkin = _embed_css__style_Panels___icon_swf_Shengjijiantou2_1524052347;
               this.overSkin = _embed_css__style_Panels___icon_swf_Shengjijiantou1_1524052346;
               this.disabledSkin = _embed_css__style_Panels___icon_swf_Shengjijiantou3_1524052348;
            };
         }
         style = StyleManager.getStyleDeclaration(".btnLock");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".btnLock",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_ShortcutCanvas_swf___1_439915049;
               this.downSkin = _embed_css__style_MainStage_ShortcutCanvas_swf___3_439915051;
               this.selectedDownSkin = _embed_css__style_MainStage_ShortcutCanvas_swf__3_445936939;
               this.overSkin = _embed_css__style_MainStage_ShortcutCanvas_swf___2_439915052;
               this.selectedUpSkin = _embed_css__style_MainStage_ShortcutCanvas_swf__1_445936937;
               this.disabledSkin = _embed_css__style_MainStage_ShortcutCanvas_swf___4_439915046;
               this.selectedOverSkin = _embed_css__style_MainStage_ShortcutCanvas_swf__2_445936940;
               this.selectedDisabledSkin = _embed_css__style_MainStage_ShortcutCanvas_swf__4_445936934;
            };
         }
         style = StyleManager.getStyleDeclaration(".soulBackBtn");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".soulBackBtn",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels________swf_BackBtn1_1497218789;
               this.downSkin = _embed_css__style_Panels________swf_BackBtn3_1497218787;
               this.overSkin = _embed_css__style_Panels________swf_BackBtn2_1497218790;
               this.disabledSkin = _embed_css__style_Panels________swf_BackBtn4_1497218788;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasShopHot");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasShopHot",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css___SystemShopPanel_swf_____HOT_117133902;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnShuangShiYi");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnShuangShiYi",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_Shuang11choujiang_1153518709;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_Shuang11choujiang1_1918336510;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_Shuang11choujiang1_1918336510;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_Shuang11choujiang_1153518709;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".Fanpaichuangguan");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Fanpaichuangguan",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_fanpaichuangguan_2088482767;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_fanpaichuangguan1_911546630;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_fanpaichuangguan1_911546630;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_fanpaichuangguan_2088482767;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnNormalGreen");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnNormalGreen",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_GreenButtonUp_1435476623;
               this.downSkin = _embed_css__style_Common_Components_swf_GreenButtonDown_1434805078;
               this.fontFamily = "Tahoma";
               this.color = 16759672;
               this.overSkin = _embed_css__style_Common_Components_swf_GreenButtonOver_1435528084;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_Components_swf_YellowButtonDisabled_655016957;
               this.fontSize = 12;
               this.textRollOverColor = 16515001;
               this.disabledColor = 14010039;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".WishTenTime");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".WishTenTime",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels____swf___10__66003804;
               this.downSkin = _embed_css__style_Panels____swf___10_2_451092968;
               this.overSkin = _embed_css__style_Panels____swf___10_1_451092967;
               this.disabledSkin = _embed_css__style_Panels____swf___10_3_451092985;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasShopSlot");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasShopSlot",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Common_Components_swf_SkillBox_1333852635;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnYellow");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnYellow",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_YellowButtonUp_177483940;
               this.downSkin = _embed_css__style_Common_Components_swf_YellowButtonDown_1656088361;
               this.overSkin = _embed_css__style_Common_Components_swf_YellowButtonOver_1667677403;
               this.disabledSkin = _embed_css__style_Common_Components_swf_YellowButtonDisabled_655016957;
            };
         }
         style = StyleManager.getStyleDeclaration(".CharCreTitle");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CharCreTitle",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_LoginStage_CHA_CRE_swf_title_1970285253;
            };
         }
         style = StyleManager.getStyleDeclaration(".stoneToGoldAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".stoneToGoldAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_dianshichengjin_1931390951;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_dianshichengjin1_1709639968;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_dianshichengjin1_1709639968;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_dianshichengjin_1931390951;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnWBAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnWBAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_sijie_858740849;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_sijie1_21469976;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_sijie1_21469976;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_sijie_858740849;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".TransparentSlotRed");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".TransparentSlotRed",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderThickness = 1;
               this.borderColor = 16711680;
               this.backgroundAlpha = 0;
               this.borderStyle = "solid";
               this.cornerRadius = 2;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnSword");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnSword",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Miscellaneous_____________swf__1_322320128;
               this.downSkin = _embed_css__style_Miscellaneous_____________swf__3_322320134;
               this.selectedDownSkin = _embed_css__style_Miscellaneous_____________swf__3_322320134;
               this.overSkin = _embed_css__style_Miscellaneous_____________swf__2_322320135;
               this.selectedUpSkin = _embed_css__style_Miscellaneous_____________swf__1_322320128;
               this.disabledSkin = _embed_css__style_Miscellaneous_____________swf__4_322320133;
               this.selectedOverSkin = _embed_css__style_Miscellaneous_____________swf__2_322320135;
               this.selectedDisabledSkin = _embed_css__style_Miscellaneous_____________swf__4_322320133;
            };
         }
         style = StyleManager.getStyleDeclaration(".SkillUseBar");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".SkillUseBar",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Common_Components_swf_SkillBox_1333852635;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnStdRed");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnStdRed",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_CrystalButtonUp_570620126;
               this.color = 16775802;
               this.disabledSkin = _embed_css__style_Common_Components_swf_CrystalButtonDisabled_1982005955;
               this.selectedOverSkin = _embed_css__style_Common_Components_swf_CrystalYellowButtonOver_1774553585;
               this.selectedDisabledSkin = _embed_css__style_Common_Components_swf_CrystalButtonDisabled_1982005955;
               this.disabledColor = 14737632;
               this.downSkin = _embed_css__style_Common_Components_swf_CrystalButtonDown_1724131541;
               this.fontFamily = "Tahoma";
               this.selectedDownSkin = _embed_css__style_Common_Components_swf_CrystalYellowButtonDown_1774235703;
               this.overSkin = _embed_css__style_Common_Components_swf_CrystalButtonOver_1724928811;
               this.selectedUpSkin = _embed_css__style_Common_Components_swf_CrystalYellowButtonUp_1470023894;
               this.textSelectedColor = 16775802;
               this.fontSize = 12;
               this.textRollOverColor = 16775802;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".soulOrangeBtn");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".soulOrangeBtn",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels________swf_OrangeBtn1_602545408;
               this.downSkin = _embed_css__style_Panels________swf_OrangeBtn3_602545406;
               this.overSkin = _embed_css__style_Panels________swf_OrangeBtn2_602545405;
               this.disabledSkin = _embed_css__style_Panels________swf_OrangeBtn4_602545403;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnJinHuaZhiShu");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnJinHuaZhiShu",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_Jinhuazhishu_328353425;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_Jinhuazhishu1_1795664730;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_Jinhuazhishu1_1795664730;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_Jinhuazhishu_328353425;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasLoginTitle");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasLoginTitle",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_LoginStage_LoginStage_swf_LoginPanelTitle_356451102;
            };
         }
         style = StyleManager.getStyleDeclaration(".ProgressGlobal");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ProgressGlobal",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.trackHeight = 5;
            };
         }
         style = StyleManager.getStyleDeclaration("TextInput");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("TextInput",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.color = 16777215;
               this.borderSkin = _embed_css__style_Common_Components_swf_InputBox_597776956;
               this.textIndent = 5;
               this.borderStyle = "none";
            };
         }
         style = StyleManager.getStyleDeclaration(".CrystalYellowButton");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CrystalYellowButton",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_CrystalYellowButtonUp_1470023894;
               this.color = 16759672;
               this.textAlign = "center";
               this.disabledSkin = _embed_css__style_Common_Components_swf_CrystalButtonDisabled_1982005955;
               this.disabledColor = 14010039;
               this.downSkin = _embed_css__style_Common_Components_swf_CrystalYellowButtonDown_1774235703;
               this.fontFamily = "Tahoma";
               this.overSkin = _embed_css__style_Common_Components_swf_CrystalYellowButtonOver_1774553585;
               this.textSelectedColor = 11235111;
               this.fontSize = 14;
               this.textRollOverColor = 16515001;
               this.paddingTop = 2;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasGuide");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasGuide",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_LoginStage_CHA_CRE_swf______2115259660;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnBattleFlag");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnBattleFlag",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_AutoBattleUp_2146729861;
               this.color = 16366965;
               this.selectedOverSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_AutoBattleOver_1117182126;
               this.downSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_AutoBattleDown_1122091844;
               this.paddingBottom = 0;
               this.fontFamily = "Tahoma";
               this.selectedDownSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_AutoBattleDown_1122091844;
               this.overSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_AutoBattleOver_1117182126;
               this.selectedUpSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_AutoBattleUp_2146729861;
               this.textSelectedColor = 11235111;
               this.fontSize = 12;
               this.textRollOverColor = 16515001;
               this.paddingLeft = 0;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasCharacterPortrait");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasCharacterPortrait",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_MainStage_CharInfo_swf_CharacterPortrait_16857899;
            };
         }
         style = StyleManager.getStyleDeclaration(".ButtonTree");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ButtonTree",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.folderClosedIcon = null;
               this.disclosureOpenIcon = null;
               this.indentation = 5;
               this.folderOpenIcon = null;
               this.backgroundAlpha = 0;
               this.defaultLeafIcon = null;
               this.disclosureClosedIcon = null;
            };
         }
         style = StyleManager.getStyleDeclaration("ComboBox");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("ComboBox",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_ComboBoxUp_169186567;
               this.downSkin = _embed_css__style_Common_Components_swf_ComboBoxDown_2000061902;
               this.overSkin = _embed_css__style_Common_Components_swf_ComboBoxOver_1999997964;
               this.disabledSkin = _embed_css__style_Common_Components_swf_ComboBoxDisabled_846674844;
               this.paddingTop = 3;
               this.dropdownStyleName = "comboBoxDropdown";
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasGroupMember");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasGroupMember",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_MainStage_CharInfo_swf_GroupMemberBox_769715065;
            };
         }
         style = StyleManager.getStyleDeclaration(".monthWelfareMax");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".monthWelfareMax",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_max1_1038734520;
               this.downSkin = _embed_css__style_Common_Components_swf_max3_1038734526;
               this.overSkin = _embed_css__style_Common_Components_swf_max2_1038734521;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_Components_swf_max4_1038734511;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".Huanjingxunbao");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Huanjingxunbao",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_huanjingxunbao_1750663192;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_huanjingxunbao1_1803901921;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_huanjingxunbao1_1803901921;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_huanjingxunbao_1750663192;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".manjiujian");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".manjiujian",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_manjiujian_1133173449;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_manjiujian1_410985008;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_manjiujian1_410985008;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_manjiujian_1133173449;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnStdAlphaGreen");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnStdAlphaGreen",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_CrystalButtonUp_570620126;
               this.color = 16775802;
               this.disabledSkin = _embed_css__style_Common_Components_swf_CrystalButtonDisabled_1982005955;
               this.selectedOverSkin = _embed_css__style_Common_Components_swf_CrystalYellowButtonOver_1774553585;
               this.selectedDisabledSkin = _embed_css__style_Common_Components_swf_CrystalButtonDisabled_1982005955;
               this.disabledColor = 14737632;
               this.downSkin = _embed_css__style_Common_Components_swf_CrystalButtonDown_1724131541;
               this.fontFamily = "Tahoma";
               this.selectedDownSkin = _embed_css__style_Common_Components_swf_CrystalYellowButtonDown_1774235703;
               this.overSkin = _embed_css__style_Common_Components_swf_CrystalButtonOver_1724928811;
               this.selectedUpSkin = _embed_css__style_Common_Components_swf_CrystalYellowButtonUp_1470023894;
               this.textSelectedColor = 16775802;
               this.fontSize = 12;
               this.textRollOverColor = 16775802;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnMonthAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnMonthAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_fuli_883072685;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_fuli1_811504348;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_fuli1_811504348;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_fuli_883072685;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".fazendaPageNext");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".fazendaPageNext",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_Fazenda_swf____1_1419199919;
               this.downSkin = _embed_css__style_Panels_Fazenda_swf____3_1419199913;
               this.overSkin = _embed_css__style_Panels_Fazenda_swf____2_1419199918;
               this.disabledSkin = _embed_css__style_Panels_Fazenda_swf____4_1419199912;
            };
         }
         style = StyleManager.getStyleDeclaration(".ChatButton");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ChatButton",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_ChatArea_swf_ChatButtonUp_1286670502;
               this.downSkin = _embed_css__style_MainStage_ChatArea_swf_ChatButtonDown_1110103235;
               this.fontFamily = "Tahoma";
               this.color = 16775802;
               this.overSkin = _embed_css__style_MainStage_ChatArea_swf_ChatButtonOver_1110826197;
               this.textSelectedColor = 16775802;
               this.disabledSkin = _embed_css__style_MainStage_ChatArea_swf_ChatButtonDisabled_8837955;
               this.fontSize = 12;
               this.textRollOverColor = 16775802;
               this.disabledColor = 14737632;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".ChatBar");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ChatBar",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_MainStage_ChatArea_swf_ChatBar_957376656;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasSystemShopBack2");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasSystemShopBack2",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_Tray2_807253389;
            };
         }
         style = StyleManager.getStyleDeclaration(".rebateEverydayLQ");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".rebateEverydayLQ",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_lingqu_1020043547;
               this.downSkin = _embed_css__style_Common_Components_swf_lingqu2_930888487;
               this.overSkin = _embed_css__style_Common_Components_swf_lingqu1_930888502;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_Components_swf_lingqu3_930888484;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".LabelCharCreTitle");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".LabelCharCreTitle",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "宋体";
               this.color = 16768881;
               this.letterSpacing = 2;
               this.fontSize = 15;
               this.fontWeight = "bold";
            };
         }
         style = StyleManager.getStyleDeclaration(".ppe5");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ppe5",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_diaoke_swf_e6_1857497906;
               this.downSkin = _embed_css__style_Panels_diaoke_swf_e662_1859256014;
               this.overSkin = _embed_css__style_Panels_diaoke_swf_e661_1859256013;
               this.disabledSkin = _embed_css__style_Panels_diaoke_swf_e663_1859256003;
            };
         }
         style = StyleManager.getStyleDeclaration(".ppe6");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ppe6",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_diaoke_swf_e7_1857497911;
               this.downSkin = _embed_css__style_Panels_diaoke_swf_e772_1859254958;
               this.overSkin = _embed_css__style_Panels_diaoke_swf_e771_1859254957;
               this.disabledSkin = _embed_css__style_Panels_diaoke_swf_e773_1859254947;
            };
         }
         style = StyleManager.getStyleDeclaration(".ppe7");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ppe7",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_diaoke_swf_e8_1857497912;
               this.downSkin = _embed_css__style_Panels_diaoke_swf_e882_1859245710;
               this.overSkin = _embed_css__style_Panels_diaoke_swf_e881_1859245709;
               this.disabledSkin = _embed_css__style_Panels_diaoke_swf_e883_1859245699;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnAnswerAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnAnswerAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_dati_883970487;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_dati1_808565426;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_dati1_808565426;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_dati_883970487;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnStdGreen");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnStdGreen",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_CrystalButtonUp_570620126;
               this.color = 16775802;
               this.disabledSkin = _embed_css__style_Common_Components_swf_CrystalButtonDisabled_1982005955;
               this.selectedOverSkin = _embed_css__style_Common_Components_swf_CrystalYellowButtonOver_1774553585;
               this.selectedDisabledSkin = _embed_css__style_Common_Components_swf_CrystalButtonDisabled_1982005955;
               this.disabledColor = 14737632;
               this.downSkin = _embed_css__style_Common_Components_swf_CrystalButtonDown_1724131541;
               this.fontFamily = "Tahoma";
               this.selectedDownSkin = _embed_css__style_Common_Components_swf_CrystalYellowButtonDown_1774235703;
               this.overSkin = _embed_css__style_Common_Components_swf_CrystalButtonOver_1724928811;
               this.selectedUpSkin = _embed_css__style_Common_Components_swf_CrystalYellowButtonUp_1470023894;
               this.textSelectedColor = 16775802;
               this.fontSize = 12;
               this.textRollOverColor = 16775802;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".farmMaster");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".farmMaster",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_huangdi1_824549518;
               this.downSkin = _embed_css__style_Common_Components_swf_huangdi1_824549518;
               this.overSkin = _embed_css__style_Common_Components_swf_huangdi2_824549887;
               this.disabledSkin = _embed_css__style_Common_Components_swf_huangdi1_824549518;
            };
         }
         style = StyleManager.getStyleDeclaration(".ProgressExp");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ProgressExp",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderColor = 0;
               this.fontFamily = "Verdana";
               this.color = 0;
               this.barSkin = _embed_css__style_MainStage_CharInfo_swf_ExpBar_1252804643;
               this.fontSize = 9;
               this.barColor = 1048323;
               this.trackColors = [1986152,16777215];
            };
         }
         style = StyleManager.getStyleDeclaration(".TreeGeneral");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".TreeGeneral",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.folderClosedIcon = null;
               this.disclosureOpenIcon = _embed_css__882111722;
               this.indentation = 5;
               this.folderOpenIcon = null;
               this.backgroundAlpha = 0;
               this.defaultLeafIcon = null;
               this.disclosureClosedIcon = _embed_css__981587384;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasPetSkillSlot");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasPetSkillSlot",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderThickness = 1;
               this.borderColor = 0;
               this.backgroundColor = 16777215;
               this.backgroundAlpha = 0.2;
               this.borderStyle = "solid";
               this.cornerRadius = 3;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnChatHeadline");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnChatHeadline",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonRedUp_622608972;
               this.downSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonRedDown_115892021;
               this.fontFamily = "Tahoma";
               this.color = 13398385;
               this.overSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonRedOver_114984823;
               this.disabledSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonDisabled_231044682;
               this.fontSize = 12;
               this.textRollOverColor = 13398385;
               this.paddingTop = 2;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".LabelCommon");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".LabelCommon",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.color = 16768881;
               this.letterSpacing = 0;
               this.fontSize = 15;
               this.horizontalCenter = 0;
               this.fontWeight = "bold";
            };
         }
         style = StyleManager.getStyleDeclaration(".ppe1");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ppe1",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_diaoke_swf_e2_1857497934;
               this.downSkin = _embed_css__style_Panels_diaoke_swf_e222_1859227214;
               this.overSkin = _embed_css__style_Panels_diaoke_swf_e221_1859227213;
               this.disabledSkin = _embed_css__style_Panels_diaoke_swf_e223_1859227203;
            };
         }
         style = StyleManager.getStyleDeclaration(".diaokekongjian");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".diaokekongjian",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_diaokekongjian_177328619;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_diaokekongjian_177328619;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_diaokekongjian2_1237286243;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_diaokekongjian_177328619;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".ppe2");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ppe2",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_diaoke_swf_e3_1857497923;
               this.downSkin = _embed_css__style_Panels_diaoke_swf_e332_1859226158;
               this.overSkin = _embed_css__style_Panels_diaoke_swf_e331_1859226157;
               this.disabledSkin = _embed_css__style_Panels_diaoke_swf_e333_1859226147;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnStdRed2");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnStdRed2",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_CrystalButtonUp_570620126;
               this.color = 16775802;
               this.disabledSkin = _embed_css__style_Common_Components_swf_CrystalButtonDisabled_1982005955;
               this.selectedOverSkin = _embed_css__style_Common_Components_swf_CrystalYellowButtonOver_1774553585;
               this.selectedDisabledSkin = _embed_css__style_Common_Components_swf_CrystalButtonDisabled_1982005955;
               this.disabledColor = 14737632;
               this.downSkin = _embed_css__style_Common_Components_swf_CrystalButtonDown_1724131541;
               this.fontFamily = "Tahoma";
               this.selectedDownSkin = _embed_css__style_Common_Components_swf_CrystalYellowButtonDown_1774235703;
               this.overSkin = _embed_css__style_Common_Components_swf_CrystalButtonOver_1724928811;
               this.selectedUpSkin = _embed_css__style_Common_Components_swf_CrystalYellowButtonUp_1470023894;
               this.textSelectedColor = 16775802;
               this.fontSize = 12;
               this.textRollOverColor = 16775802;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".ppe3");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ppe3",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_diaoke_swf_e4_1857497924;
               this.downSkin = _embed_css__style_Panels_diaoke_swf_e442_1859249678;
               this.overSkin = _embed_css__style_Panels_diaoke_swf_e441_1859249677;
               this.disabledSkin = _embed_css__style_Panels_diaoke_swf_e443_1859249667;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnHeiyaoshiActived");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnHeiyaoshiActived",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_quantujihuo1_835336001;
               this.downSkin = _embed_css__style_Common_Components_swf_quantujihuo1_835336001;
               this.overSkin = _embed_css__style_Common_Components_swf_quantujihuo2_835336004;
               this.selectedUpSkin = _embed_css__style_Common_Components_swf_quantujihuo1_835336001;
               this.selectedOverSkin = _embed_css__style_Common_Components_swf_quantujihuo1_835336001;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnBagDrop");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnBagDrop",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_BagPanel_swf_button_Discarded_up_mc2_1437533958;
               this.downSkin = _embed_css__style_Panels_BagPanel_swf_button_Discarded_down_mc2_1810344317;
               this.selectedDownSkin = _embed_css__style_Panels_BagPanel_swf_button_Discarded_up_mc2_1437533958;
               this.overSkin = _embed_css__style_Panels_BagPanel_swf_button_Discarded_over_mc2_597919425;
               this.selectedUpSkin = _embed_css__style_Panels_BagPanel_swf_button_Discarded_up_mc2_1437533958;
               this.disabledSkin = _embed_css__style_Panels_BagPanel_swf_button_Discarded_up_mc2_1437533958;
               this.selectedOverSkin = _embed_css__style_Panels_BagPanel_swf_button_Discarded_up_mc2_1437533958;
               this.selectedDisabledSkin = _embed_css__style_Panels_BagPanel_swf_button_Discarded_up_mc2_1437533958;
            };
         }
         style = StyleManager.getStyleDeclaration(".ppe4");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ppe4",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_diaoke_swf_e5_1857497905;
               this.downSkin = _embed_css__style_Panels_diaoke_swf_e552_1859249134;
               this.overSkin = _embed_css__style_Panels_diaoke_swf_e551_1859249133;
               this.disabledSkin = _embed_css__style_Panels_diaoke_swf_e553_1859249123;
            };
         }
         style = StyleManager.getStyleDeclaration(".ppe0");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ppe0",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_diaoke_swf_e1_1857497933;
               this.downSkin = _embed_css__style_Panels_diaoke_swf_e112_1859253102;
               this.overSkin = _embed_css__style_Panels_diaoke_swf_e111_1859253101;
               this.disabledSkin = _embed_css__style_Panels_diaoke_swf_e113_1859253091;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnSkillLevel1");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnSkillLevel1",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___SkillUseSlot_swf_1Up_221770819;
               this.downSkin = _embed_css___SkillUseSlot_swf_1Down_243744140;
               this.overSkin = _embed_css___SkillUseSlot_swf_1Over_244344378;
               this.disabledSkin = _embed_css___SkillUseSlot_swf_1Disabled_441516834;
            };
         }
         style = StyleManager.getStyleDeclaration(".StripeButton");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".StripeButton",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontFamily = "Tahoma";
               this.letterSpacing = 2;
               this.disabledSkin = _embed_css__style_LoginStage_LoginStage_swf_StripeButton_1037616192;
               this.fontSize = 15;
               this.disabledColor = 16768881;
               this.fontWeight = "bold";
               this.height = 27;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnSkillLevel2");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnSkillLevel2",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___SkillUseSlot_swf_2Up_221771650;
               this.downSkin = _embed_css___SkillUseSlot_swf_2Down_240734475;
               this.overSkin = _embed_css___SkillUseSlot_swf_2Over_240283065;
               this.disabledSkin = _embed_css___SkillUseSlot_swf_2Disabled_369783329;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnSkillLevel5");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnSkillLevel5",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___SkillUseSlot_swf_5Up_221775695;
               this.downSkin = _embed_css___SkillUseSlot_swf_5Down_272607112;
               this.overSkin = _embed_css___SkillUseSlot_swf_5Over_273133638;
               this.disabledSkin = _embed_css___SkillUseSlot_swf_5Disabled_887177426;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnSkillLevel6");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnSkillLevel6",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___SkillUseSlot_swf_6Up_221776526;
               this.downSkin = _embed_css___SkillUseSlot_swf_6Down_273724183;
               this.overSkin = _embed_css___SkillUseSlot_swf_6Over_273274821;
               this.disabledSkin = _embed_css___SkillUseSlot_swf_6Disabled_1189621293;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnSkillLevel3");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnSkillLevel3",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___SkillUseSlot_swf_3Up_221768641;
               this.downSkin = _embed_css___SkillUseSlot_swf_3Down_240875658;
               this.overSkin = _embed_css___SkillUseSlot_swf_3Over_241467704;
               this.disabledSkin = _embed_css___SkillUseSlot_swf_3Disabled_2120884960;
            };
         }
         style = StyleManager.getStyleDeclaration(".UserBarSwitchUp");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".UserBarSwitchUp",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_LastRowUp_1217426294;
               this.downSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_LastRowDown_52693289;
               this.overSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_LastRowOver_53694767;
               this.disabledSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_LastRowDisabled_1657741319;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnSkillLevel4");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnSkillLevel4",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___SkillUseSlot_swf_4Up_221770496;
               this.downSkin = _embed_css___SkillUseSlot_swf_4Down_242057225;
               this.overSkin = _embed_css___SkillUseSlot_swf_4Over_272017607;
               this.disabledSkin = _embed_css___SkillUseSlot_swf_4Disabled_581743569;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnSkillLevel9");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnSkillLevel9",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___SkillUseSlot_swf_9Up_221779531;
               this.downSkin = _embed_css___SkillUseSlot_swf_9Down_267848084;
               this.overSkin = _embed_css___SkillUseSlot_swf_9Over_268440130;
               this.disabledSkin = _embed_css___SkillUseSlot_swf_9Disabled_64124118;
            };
         }
         style = StyleManager.getStyleDeclaration(".trialsBtnAward");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".trialsBtnAward",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_trialsPanel_swf_Zhoujiangli1_1340607356;
               this.downSkin = _embed_css__style_Panels_trialsPanel_swf_Zhoujiangli3_1340607358;
               this.overSkin = _embed_css__style_Panels_trialsPanel_swf_Zhoujiangli2_1340607357;
               this.disabledSkin = _embed_css__style_Panels_trialsPanel_swf_Zhoujiangli4_1340607311;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnSkillLevel7");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnSkillLevel7",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___SkillUseSlot_swf_7Up_221773517;
               this.downSkin = _embed_css___SkillUseSlot_swf_7Down_269671062;
               this.overSkin = _embed_css___SkillUseSlot_swf_7Over_270263108;
               this.disabledSkin = _embed_css___SkillUseSlot_swf_7Disabled_1297831636;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnBarGuild");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnBarGuild",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_union_up_mc_226304270;
               this.downSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_union_down_mc_43852509;
               this.overSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_union_over_mc_1002013835;
               this.disabledSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_union_disabled_mc_2025255629;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnSkillLevel8");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnSkillLevel8",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___SkillUseSlot_swf_8Up_221774348;
               this.downSkin = _embed_css___SkillUseSlot_swf_8Down_270852629;
               this.overSkin = _embed_css___SkillUseSlot_swf_8Over_271452867;
               this.disabledSkin = _embed_css___SkillUseSlot_swf_8Disabled_1905256405;
            };
         }
         style = StyleManager.getStyleDeclaration(".CSSBorder");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CSSBorder",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderThickness = 1;
               this.borderColor = 9029849;
               this.backgroundAlpha = 0;
               this.borderStyle = "solid";
               this.cornerRadius = 3;
            };
         }
         style = StyleManager.getStyleDeclaration(".bossDailyButton");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".bossDailyButton",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_BlackButton1_1274957921;
               this.downSkin = _embed_css__style_Common_Components_swf_BlackButton3_1274957923;
               this.fontFamily = "宋体";
               this.color = 16759672;
               this.overSkin = _embed_css__style_Common_Components_swf_BlackButton2_1274957924;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_Components_swf_BlackButton4_1274957854;
               this.fontSize = 12;
               this.textRollOverColor = 16515001;
               this.disabledColor = 14010039;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasStartBtnBack");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasStartBtnBack",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_LoginStage_LoginStage_swf_AvatarCanvas_1566019058;
            };
         }
         style = StyleManager.getStyleDeclaration(".panelTitle");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".panelTitle",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.color = 8664591;
               this.textAlign = "center";
               this.fontWeight = "bold";
            };
         }
         style = StyleManager.getStyleDeclaration(".bazhounianqing");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".bazhounianqing",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_bazhounianqing_1698756115;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_bazhounianqing1_753313948;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_bazhounianqing1_753313948;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_bazhounianqing_1698756115;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".EquNextPage");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".EquNextPage",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_NextPageUp_1510074248;
               this.color = 16366965;
               this.textAlign = "center";
               this.fontAntiAliasType = "advance";
               this.disabledSkin = _embed_css__style_Common_Components_swf_NextPageUp_1510074248;
               this.disabledColor = 13944759;
               this.downSkin = _embed_css__style_Common_Components_swf_NextPageUp_1510074248;
               this.fontFamily = "Tahoma";
               this.overSkin = _embed_css__style_Common_Components_swf_NextPageOver_2104711855;
               this.textSelectedColor = 11235111;
               this.fontSize = 12;
               this.textRollOverColor = 16515000;
               this.paddingTop = 2;
               this.paddingLeft = 0;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".Display");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Display",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.disabledSkin = _embed_css__style_Panels_BagPanel_swf___1_1191389239;
            };
         }
         style = StyleManager.getStyleDeclaration(".fazendaEvents");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".fazendaEvents",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_Fazenda_swf____739948502;
               this.downSkin = _embed_css__style_Panels_Fazenda_swf___2_758261210;
               this.overSkin = _embed_css__style_Panels_Fazenda_swf___1_758261211;
               this.disabledSkin = _embed_css__style_Panels_Fazenda_swf___3_758261205;
            };
         }
         style = StyleManager.getStyleDeclaration(".fazendaFrientsShow");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".fazendaFrientsShow",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_Fazenda_swf________1_1557428799;
               this.downSkin = _embed_css__style_Panels_Fazenda_swf________3_1557428793;
               this.overSkin = _embed_css__style_Panels_Fazenda_swf________2_1557428798;
               this.disabledSkin = _embed_css__style_Panels_Fazenda_swf________4_1557428792;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnPanelClose");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnPanelClose",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_CloseButtonUp_1172960480;
               this.downSkin = _embed_css__style_Common_Components_swf_CloseButtonDown_1951595749;
               this.selectedDownSkin = _embed_css__style_Common_Components_swf_CloseButtonDown_1951595749;
               this.overSkin = _embed_css__style_Common_Components_swf_CloseButtonOver_2047604631;
               this.selectedUpSkin = _embed_css__style_Common_Components_swf_CloseButtonUp_1172960480;
               this.disabledSkin = _embed_css__style_Common_Components_swf_CloseButtonDisabled_369549313;
               this.selectedOverSkin = _embed_css__style_Common_Components_swf_CloseButtonOver_2047604631;
               this.selectedDisabledSkin = _embed_css__style_Common_Components_swf_CloseButtonDisabled_369549313;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnReduce");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnReduce",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___Components_swf_BtnReduceUp_653867284;
               this.downSkin = _embed_css___Components_swf_BtnReduceDown_1141365045;
               this.selectedDownSkin = _embed_css___Components_swf_BtnReduceDown_1141365045;
               this.overSkin = _embed_css___Components_swf_BtnReduceOver_1137762595;
               this.selectedUpSkin = _embed_css___Components_swf_BtnReduceUp_653867284;
               this.disabledSkin = _embed_css___Components_swf_BtnReduceDisabled_1286483339;
               this.selectedOverSkin = _embed_css___Components_swf_BtnReduceOver_1137762595;
               this.selectedDisabledSkin = _embed_css___Components_swf_BtnReduceDisabled_1286483339;
            };
         }
         style = StyleManager.getStyleDeclaration(".secretTreasureHuntPT");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".secretTreasureHuntPT",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_yaoshai1_1789674760;
               this.downSkin = _embed_css__style_Common_Components_swf_yaoshai3_1789674754;
               this.overSkin = _embed_css__style_Common_Components_swf_yaoshai2_1789674759;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_Components_swf_yaoshai4_1789674769;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnPanelHelp");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnPanelHelp",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Miscellaneous_icon_ICON_QUEST_STATE_4_png_746277926;
               this.downSkin = _embed_css__style_Miscellaneous_icon_ICON_QUEST_STATE_4_png_746277926;
               this.selectedDownSkin = _embed_css__style_Miscellaneous_icon_ICON_QUEST_STATE_4_png_746277926;
               this.overSkin = _embed_css__style_Miscellaneous_icon_ICON_QUEST_STATE_4_png_746277926;
               this.selectedUpSkin = _embed_css__style_Miscellaneous_icon_ICON_QUEST_STATE_4_png_746277926;
               this.disabledSkin = _embed_css__style_Miscellaneous_icon_ICON_QUEST_STATE_4_png_746277926;
               this.selectedOverSkin = _embed_css__style_Miscellaneous_icon_ICON_QUEST_STATE_4_png_746277926;
               this.selectedDisabledSkin = _embed_css__style_Miscellaneous_icon_ICON_QUEST_STATE_4_png_746277926;
            };
         }
         style = StyleManager.getStyleDeclaration(".TransparentSlotOrange");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".TransparentSlotOrange",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderThickness = 1;
               this.borderColor = 16407301;
               this.backgroundAlpha = 0;
               this.borderStyle = "solid";
               this.cornerRadius = 2;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnJingJiAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnJingJiAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_JingJiChang_1957138861;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_JingJiChang1_778113814;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_JingJiChang1_778113814;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_JingJiChang_1957138861;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnGlass");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnGlass",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Miscellaneous_____________swf____1_144226947;
               this.downSkin = _embed_css__style_Miscellaneous_____________swf____3_144227057;
               this.selectedDownSkin = _embed_css__style_Miscellaneous_____________swf____3_144227057;
               this.overSkin = _embed_css__style_Miscellaneous_____________swf____2_144226946;
               this.selectedUpSkin = _embed_css__style_Miscellaneous_____________swf____1_144226947;
               this.disabledSkin = _embed_css__style_Miscellaneous_____________swf____4_144227056;
               this.selectedOverSkin = _embed_css__style_Miscellaneous_____________swf____2_144226946;
               this.selectedDisabledSkin = _embed_css__style_Miscellaneous_____________swf____4_144227056;
            };
         }
         style = StyleManager.getStyleDeclaration(".RoundedGradientBorder");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".RoundedGradientBorder",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Common_Components_swf_GradientTextArea_1438669621;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnBarQuestBig");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnBarQuestBig",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_task_upbig_mc_1028216562;
            };
         }
         style = StyleManager.getStyleDeclaration(".CharCreNameInput");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CharCreNameInput",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_LoginStage_CHA_CRE_swf_____1898394353;
            };
         }
         style = StyleManager.getStyleDeclaration(".fazendaPageLast");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".fazendaPageLast",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_Fazenda_swf____1_1418934552;
               this.downSkin = _embed_css__style_Panels_Fazenda_swf____3_1418934554;
               this.overSkin = _embed_css__style_Panels_Fazenda_swf____1_1418934552;
               this.disabledSkin = _embed_css__style_Panels_Fazenda_swf____4_1418934549;
            };
         }
         style = StyleManager.getStyleDeclaration(".SmallTab");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".SmallTab",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_GreenButtonUp_1435476623;
               this.color = 16759672;
               this.textAlign = "center";
               this.disabledSkin = _embed_css__style_Common_Components_swf_YellowButtonDisabled_655016957;
               this.selectedOverSkin = _embed_css__style_Common_Components_swf_YellowButtonOver_1667677403;
               this.selectedDisabledSkin = _embed_css__style_Common_Components_swf_YellowButtonDisabled_655016957;
               this.disabledColor = 14010039;
               this.downSkin = _embed_css__style_Common_Components_swf_GreenButtonDown_1434805078;
               this.fontFamily = "Tahoma";
               this.selectedDownSkin = _embed_css__style_Common_Components_swf_YellowButtonDown_1656088361;
               this.overSkin = _embed_css__style_Common_Components_swf_GreenButtonOver_1435528084;
               this.selectedUpSkin = _embed_css__style_Common_Components_swf_YellowButtonUp_177483940;
               this.textSelectedColor = 11235111;
               this.fontSize = 12;
               this.textRollOverColor = 16515001;
               this.paddingTop = 2;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnMiZhen");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnMiZhen",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_mizhen_191735434;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_mizhen1_1954974355;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_mizhen1_1954974355;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_mizhen_191735434;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".renrendou");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".renrendou",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_Misc_swf_renrendou_1735379633;
               this.downSkin = _embed_css__style_Panels_Misc_swf_renrendou_1735379633;
               this.selectedDownSkin = _embed_css__style_Panels_Misc_swf_renrendou_1735379633;
               this.overSkin = _embed_css__style_Panels_Misc_swf_renrendou_1735379633;
               this.selectedUpSkin = _embed_css__style_Panels_Misc_swf_renrendou_1735379633;
               this.disabledSkin = _embed_css__style_Panels_Misc_swf_renrendou_1735379633;
               this.selectedOverSkin = _embed_css__style_Panels_Misc_swf_renrendou_1735379633;
               this.selectedDisabledSkin = _embed_css__style_Panels_Misc_swf_renrendou_1735379633;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasJXHD2");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasJXHD2",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Panels_jxhd_swf_jxhdbg2_1468996418;
            };
         }
         style = StyleManager.getStyleDeclaration(".comboBoxDropdown");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".comboBoxDropdown",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.backgroundColor = 0;
               this.backgroundAlpha = 0.6;
            };
         }
         style = StyleManager.getStyleDeclaration(".trialsBtn05");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".trialsBtn05",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_trialsPanel_swf_Mituzhijian1_187510730;
               this.downSkin = _embed_css__style_Panels_trialsPanel_swf_Mituzhijian3_187510776;
               this.overSkin = _embed_css__style_Panels_trialsPanel_swf_Mituzhijian2_187510777;
               this.disabledSkin = _embed_css__style_Panels_trialsPanel_swf_Mituzhijian4_187510727;
            };
         }
         style = StyleManager.getStyleDeclaration(".QuestGuideClose");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".QuestGuideClose",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Miscellaneous________swf_____9_1424998869;
               this.downSkin = _embed_css__style_Miscellaneous________swf_____11_1433061110;
               this.overSkin = _embed_css__style_Miscellaneous________swf_____10_1433061109;
               this.disabledSkin = _embed_css__style_Miscellaneous________swf_____12_1433061115;
            };
         }
         style = StyleManager.getStyleDeclaration(".trialsBtn04");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".trialsBtn04",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_trialsPanel_swf_Mingyunzhijian1_1596048586;
               this.downSkin = _embed_css__style_Panels_trialsPanel_swf_Mingyunzhijian3_1596048632;
               this.overSkin = _embed_css__style_Panels_trialsPanel_swf_Mingyunzhijian2_1596048633;
               this.disabledSkin = _embed_css__style_Panels_trialsPanel_swf_Mingyunzhijian4_1596048583;
            };
         }
         style = StyleManager.getStyleDeclaration(".pptower3selected");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".pptower3selected",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Panels_diaoke_swf_tower31_1158125028;
            };
         }
         style = StyleManager.getStyleDeclaration(".trialsBtn03");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".trialsBtn03",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_trialsPanel_swf_Lunhuizhijian_587579857;
               this.downSkin = _embed_css__style_Panels_trialsPanel_swf_Lunhuizhijian2_1994221425;
               this.overSkin = _embed_css__style_Panels_trialsPanel_swf_Lunhuizhijian1_1994221440;
               this.disabledSkin = _embed_css__style_Panels_trialsPanel_swf_Lunhuizhijian3_1994221426;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnMsg2");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnMsg2",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_SpeakerUp_1152530611;
               this.downSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_SpeakerDown_61066438;
               this.overSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_Speakerover_63350996;
               this.disabledSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_SpeakerDisabled_1514374956;
            };
         }
         style = StyleManager.getStyleDeclaration(".trialsBtn02");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".trialsBtn02",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_trialsPanel_swf_Xinnianzhijian1_1344003870;
               this.downSkin = _embed_css__style_Panels_trialsPanel_swf_Xinnianzhijian3_1344003952;
               this.overSkin = _embed_css__style_Panels_trialsPanel_swf_Xinnianzhijian2_1344003951;
               this.disabledSkin = _embed_css__style_Panels_trialsPanel_swf_Xinnianzhijian4_1344003937;
            };
         }
         style = StyleManager.getStyleDeclaration(".trialsBtn01");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".trialsBtn01",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_trialsPanel_swf_Yongqizhijian1_238319728;
               this.downSkin = _embed_css__style_Panels_trialsPanel_swf_Yongqizhijian3_238319742;
               this.overSkin = _embed_css__style_Panels_trialsPanel_swf_Yongqizhijian2_238319743;
               this.disabledSkin = _embed_css__style_Panels_trialsPanel_swf_Yongqizhijian4_238319741;
            };
         }
         style = StyleManager.getStyleDeclaration(".WspPageSelRight");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".WspPageSelRight",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_RightArrow1_1372528611;
               this.downSkin = _embed_css__style_Common_Components_swf_RightArrow3_1372528609;
               this.selectedDownSkin = _embed_css__style_Common_Components_swf_RightArrow3_1372528609;
               this.overSkin = _embed_css__style_Common_Components_swf_RightArrow2_1372528608;
               this.selectedUpSkin = _embed_css__style_Common_Components_swf_RightArrow1_1372528611;
               this.disabledSkin = _embed_css__style_Common_Components_swf_RightArrow4_1372528614;
               this.selectedOverSkin = _embed_css__style_Common_Components_swf_RightArrow2_1372528608;
               this.selectedDisabledSkin = _embed_css__style_Common_Components_swf_RightArrow4_1372528614;
            };
         }
         style = StyleManager.getStyleDeclaration(".mojinAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".mojinAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_mojin_851349444;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_mojin1_187634363;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_mojin1_187634363;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_mojin_851349444;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnMap");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnMap",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_EarthUp_438245898;
               this.downSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_EarthDown_1495384707;
               this.overSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_EarthOver_1494495729;
               this.disabledSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_EarthDisabled_900430249;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasJXHD1");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasJXHD1",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Panels_jxhd_swf_jxhdbg1_1468996445;
            };
         }
         style = StyleManager.getStyleDeclaration(".RightButtonBackground");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".RightButtonBackground",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_ButtonBackground_947845177;
            };
         }
         style = StyleManager.getStyleDeclaration(".LastPage");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".LastPage",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf___up_1092641808;
               this.color = 16366965;
               this.textAlign = "center";
               this.fontAntiAliasType = "advance";
               this.disabledSkin = _embed_css__style_Common_Components_swf___up_1092641808;
               this.disabledColor = 13944759;
               this.downSkin = _embed_css__style_Common_Components_swf___up_1092641808;
               this.fontFamily = "Tahoma";
               this.overSkin = _embed_css__style_Common_Components_swf___over_1968743897;
               this.textSelectedColor = 11235111;
               this.fontSize = 12;
               this.textRollOverColor = 16515000;
               this.paddingTop = 2;
               this.paddingLeft = 0;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".ChannelOrange");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".ChannelOrange",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonOrangeUp_529593279;
               this.downSkin = _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonOrangeDown_374901286;
               this.overSkin = _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonOrangeOver_380088888;
               this.disabledSkin = _embed_css__style_LoginStage_LoginStage_swf_ChannelButtonDisabled_1289213522;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnBarQuest");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnBarQuest",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_task_up_mc_1100977150;
               this.downSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_task_down_mc_1647096851;
               this.overSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_task_over_mc_1123039579;
               this.disabledSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_task_diasbled_mc_121378849;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnLuckDrawAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnLuckDrawAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_HuiKuiChouJiang_1521620348;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_HuiKuiChouJiang1_1234343035;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_HuiKuiChouJiang1_1234343035;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_HuiKuiChouJiang_1521620348;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnTarget7");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnTarget7",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___TargetPortrait_swf___1_1230090076;
               this.downSkin = _embed_css___TargetPortrait_swf___3_1230090074;
               this.selectedDownSkin = _embed_css___TargetPortrait_swf___3_1230090074;
               this.overSkin = _embed_css___TargetPortrait_swf___2_1230090075;
               this.selectedUpSkin = _embed_css___TargetPortrait_swf___1_1230090076;
               this.disabledSkin = _embed_css___TargetPortrait_swf___4_1230090073;
               this.selectedOverSkin = _embed_css___TargetPortrait_swf___2_1230090075;
               this.selectedDisabledSkin = _embed_css___TargetPortrait_swf___4_1230090073;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnTarget6");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnTarget6",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___TargetPortrait_swf___1_1211055973;
               this.downSkin = _embed_css___TargetPortrait_swf___3_1211055971;
               this.selectedDownSkin = _embed_css___TargetPortrait_swf___3_1211055971;
               this.overSkin = _embed_css___TargetPortrait_swf___2_1211055972;
               this.selectedUpSkin = _embed_css___TargetPortrait_swf___1_1211055973;
               this.disabledSkin = _embed_css___TargetPortrait_swf___4_1211055970;
               this.selectedOverSkin = _embed_css___TargetPortrait_swf___2_1211055972;
               this.selectedDisabledSkin = _embed_css___TargetPortrait_swf___4_1211055970;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnTarget5");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnTarget5",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___TargetPortrait_swf___1_1209451908;
               this.downSkin = _embed_css___TargetPortrait_swf___3_1209451906;
               this.selectedDownSkin = _embed_css___TargetPortrait_swf___3_1209451906;
               this.overSkin = _embed_css___TargetPortrait_swf___2_1209451907;
               this.selectedUpSkin = _embed_css___TargetPortrait_swf___1_1209451908;
               this.disabledSkin = _embed_css___TargetPortrait_swf___4_1209451905;
               this.selectedOverSkin = _embed_css___TargetPortrait_swf___2_1209451907;
               this.selectedDisabledSkin = _embed_css___TargetPortrait_swf___4_1209451905;
            };
         }
         style = StyleManager.getStyleDeclaration(".PetRealSoul");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".PetRealSoul",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_chongwuzhenhun_523060688;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_chongwuzhenhun1_276402377;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_chongwuzhenhun1_276402377;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_chongwuzhenhun_523060688;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasCreateCharacter");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasCreateCharacter",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_LoginStage_LoginStage_swf_CreateCharacterCanvas_1321765754;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnWbEnter");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnWbEnter",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_wbEnterImage_png_599238823;
               this.downSkin = _embed_css__style_Common_wbEnterImage_png_599238823;
               this.fontFamily = "宋体";
               this.color = 16775802;
               this.overSkin = _embed_css__style_Common_wbEnterImage_png_599238823;
               this.textSelectedColor = 16775802;
               this.disabledSkin = _embed_css__style_Common_wbEnterImage_png_599238823;
               this.fontSize = 12;
               this.textRollOverColor = 16775802;
               this.disabledColor = 14737632;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnTarget4");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnTarget4",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___TargetPortrait_swf___1_1201161199;
               this.downSkin = _embed_css___TargetPortrait_swf___3_1201161197;
               this.selectedDownSkin = _embed_css___TargetPortrait_swf___3_1201161197;
               this.overSkin = _embed_css___TargetPortrait_swf___2_1201161198;
               this.selectedUpSkin = _embed_css___TargetPortrait_swf___1_1201161199;
               this.disabledSkin = _embed_css___TargetPortrait_swf___4_1201161196;
               this.selectedOverSkin = _embed_css___TargetPortrait_swf___2_1201161198;
               this.selectedDisabledSkin = _embed_css___TargetPortrait_swf___4_1201161196;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnGrouponAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnGrouponAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_Tuangoufanli_1433722232;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_Tuangoufanli1_1995667583;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_Tuangoufanli1_1995667583;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_Tuangoufanli_1433722232;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnTarget3");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnTarget3",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___TargetPortrait_swf___1_1206527341;
               this.downSkin = _embed_css___TargetPortrait_swf___3_1206527339;
               this.selectedDownSkin = _embed_css___TargetPortrait_swf___3_1206527339;
               this.overSkin = _embed_css___TargetPortrait_swf___2_1206527340;
               this.selectedUpSkin = _embed_css___TargetPortrait_swf___1_1206527341;
               this.disabledSkin = _embed_css___TargetPortrait_swf___4_1206527338;
               this.selectedOverSkin = _embed_css___TargetPortrait_swf___2_1206527340;
               this.selectedDisabledSkin = _embed_css___TargetPortrait_swf___4_1206527338;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnLotteryAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnLotteryAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_XingYunZhuanPan_1058705048;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_XingYunZhuanPan1_1927602529;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_XingYunZhuanPan1_1927602529;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_XingYunZhuanPan_1058705048;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnTarget2");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnTarget2",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___TargetPortrait_swf___1_1197648113;
               this.downSkin = _embed_css___TargetPortrait_swf___3_1197648127;
               this.selectedDownSkin = _embed_css___TargetPortrait_swf___3_1197648127;
               this.overSkin = _embed_css___TargetPortrait_swf___2_1197648112;
               this.selectedUpSkin = _embed_css___TargetPortrait_swf___1_1197648113;
               this.disabledSkin = _embed_css___TargetPortrait_swf___4_1197648126;
               this.selectedOverSkin = _embed_css___TargetPortrait_swf___2_1197648112;
               this.selectedDisabledSkin = _embed_css___TargetPortrait_swf___4_1197648126;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnTarget1");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnTarget1",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___TargetPortrait_swf___1_1230041651;
               this.downSkin = _embed_css___TargetPortrait_swf___3_1230041649;
               this.selectedDownSkin = _embed_css___TargetPortrait_swf___3_1230041649;
               this.overSkin = _embed_css___TargetPortrait_swf___2_1230041650;
               this.selectedUpSkin = _embed_css___TargetPortrait_swf___1_1230041651;
               this.disabledSkin = _embed_css___TargetPortrait_swf___4_1230041648;
               this.selectedOverSkin = _embed_css___TargetPortrait_swf___2_1230041650;
               this.selectedDisabledSkin = _embed_css___TargetPortrait_swf___4_1230041648;
            };
         }
         style = StyleManager.getStyleDeclaration(".Menghuimoli");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Menghuimoli",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_Menghuimoli_1066366673;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_Menghuimoli1_228690022;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_Menghuimoli1_228690022;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_Menghuimoli_1066366673;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".xiaochudasai");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".xiaochudasai",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon6_swf_Elimination_competition_1661470637;
               this.downSkin = _embed_css__style_Common_ActivityIcon6_swf_Elimination_competition1_603230710;
               this.overSkin = _embed_css__style_Common_ActivityIcon6_swf_Elimination_competition1_603230710;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon6_swf_Elimination_competition_1661470637;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".trialsBtnBattle");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".trialsBtnBattle",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_trialsPanel_swf_Jinrutiaozhan1_410976992;
               this.downSkin = _embed_css__style_Panels_trialsPanel_swf_Jinrutiaozhan3_410977006;
               this.overSkin = _embed_css__style_Panels_trialsPanel_swf_Jinrutiaozhan2_410977007;
               this.disabledSkin = _embed_css__style_Panels_trialsPanel_swf_Jinrutiaozhan4_410977005;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasEmotion");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasEmotion",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderColor = 0;
               this.backgroundColor = 16770048;
               this.backgroundAlpha = 0.3;
               this.borderStyle = "solid";
               this.borderSkin = _embed_css__style_MainStage_Emotions_swf_CanvasEm_mc1_283394853;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnPK");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnPK",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_AllowPKUp_949681520;
               this.downSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_AllowPKDown_1280727113;
               this.selectedDownSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_NotAllowPKDown_2059958028;
               this.overSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_AllowPKOver_1280880719;
               this.selectedUpSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_NotAllowPKUp_766845149;
               this.disabledSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_AllowPKDisabled_753707929;
               this.selectedOverSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_NotAllowPKOver_2056330966;
               this.selectedDisabledSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_NotAllowPKDisabled_517928958;
            };
         }
         style = StyleManager.getStyleDeclaration(".PageIndicator1");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".PageIndicator1",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.textAlign = "center";
               this.fontSize = 10;
               this.borderSkin = _embed_css__style_Common_Components_swf_PageNoIndicator1_1021391603;
            };
         }
         style = StyleManager.getStyleDeclaration(".tripleTownBtn");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".tripleTownBtn",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_huanlexiaochu_312207597;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_huanlexiaochu1_1925886550;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_huanlexiaochu1_1925886550;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_huanlexiaochu_312207597;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".StandardContent");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".StandardContent",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Common_Components_swf_DragablePanel_221916689;
            };
         }
         style = StyleManager.getStyleDeclaration("Alert");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("Alert",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.buttonStyleName = "CrystalBlueButton";
               this.horizontalGap = 10;
               this.paddingBottom = 10;
               this.modalTransparencyBlur = 0;
               this.color = 16777215;
               this.paddingRight = 10;
               this.modalTransparency = 0;
               this.paddingTop = 10;
               this.headerHeight = 0;
               this.borderSkin = _embed_css__style_Common_Components_swf_AlertBox_421126942;
               this.paddingLeft = 10;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnChatYY");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnChatYY",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonYellowUp_1371439771;
               this.downSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonYellowDown_792858944;
               this.fontFamily = "宋体";
               this.color = 13483628;
               this.overSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonYellowOver_793581906;
               this.disabledSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonDisabled_231044682;
               this.fontSize = 12;
               this.textRollOverColor = 13483628;
               this.paddingTop = 2;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasWorldMap");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasWorldMap",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Maps_WorldMap1_jpg_349752265;
            };
         }
         style = StyleManager.getStyleDeclaration(".datagridHeaderSeparator");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".datagridHeaderSeparator",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderColor = 5276558;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnRank");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnRank",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_rankingup_241508662;
               this.downSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_rankingDown_1504797521;
               this.overSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_rankingover_1505984515;
               this.disabledSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_rankingDisabled_985722443;
            };
         }
         style = StyleManager.getStyleDeclaration(".CharCreBorder");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CharCreBorder",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_LoginStage_CHA_CRE_swf____1892522236;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasLove");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasLove",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Miscellaneous______old_swf___1209350812;
            };
         }
         style = StyleManager.getStyleDeclaration(".CharacterRed");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CharacterRed",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_LoginStage_LoginStage_swf_CharacterRedUp_1256798108;
               this.downSkin = _embed_css__style_LoginStage_LoginStage_swf_CharacterRedDown_1556231061;
               this.selectedDownSkin = _embed_css__style_LoginStage_LoginStage_swf_CharacterRedDown_1556231061;
               this.overSkin = _embed_css__style_LoginStage_LoginStage_swf_CharacterRedOver_1556548483;
               this.selectedUpSkin = _embed_css__style_LoginStage_LoginStage_swf_CharacterRedOver_1556548483;
               this.disabledSkin = _embed_css__style_LoginStage_LoginStage_swf_CharacterRedDisabled_1382428485;
               this.selectedOverSkin = _embed_css__style_LoginStage_LoginStage_swf_CharacterRedOver_1556548483;
               this.selectedDisabledSkin = _embed_css__style_LoginStage_LoginStage_swf_CharacterRedDisabled_1382428485;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasShopNew");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasShopNew",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css___SystemShopPanel_swf_____NEW_117129649;
            };
         }
         style = StyleManager.getStyleDeclaration(".LoginButton");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".LoginButton",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_LoginStage_LoginStage_swf_LoginButtonUp_1585670679;
               this.downSkin = _embed_css__style_LoginStage_LoginStage_swf_LoginButtonDown_1268135646;
               this.fontFamily = "Tahoma";
               this.color = 16775802;
               this.overSkin = _embed_css__style_LoginStage_LoginStage_swf_LoginButtonOver_1267752624;
               this.textSelectedColor = 16775802;
               this.disabledSkin = _embed_css__style_LoginStage_LoginStage_swf_LoginButtonDisabled_1338206536;
               this.fontSize = 14;
               this.textRollOverColor = 16775802;
               this.disabledColor = 14737632;
               this.fontWeight = "normal";
               this.height = 29;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasSkillBar");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasSkillBar",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_ShortcutBackground_327127749;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnEgg");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnEgg",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Miscellaneous_____________swf___1_308398614;
               this.downSkin = _embed_css__style_Miscellaneous_____________swf___3_308398696;
               this.selectedDownSkin = _embed_css__style_Miscellaneous_____________swf___3_308398696;
               this.overSkin = _embed_css__style_Miscellaneous_____________swf___2_308398695;
               this.selectedUpSkin = _embed_css__style_Miscellaneous_____________swf___1_308398614;
               this.disabledSkin = _embed_css__style_Miscellaneous_____________swf___4_308398689;
               this.selectedOverSkin = _embed_css__style_Miscellaneous_____________swf___2_308398695;
               this.selectedDisabledSkin = _embed_css__style_Miscellaneous_____________swf___4_308398689;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnDuiKangAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnDuiKangAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_duikang_1108433338;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_duikang1_1324856239;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_duikang1_1324856239;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_duikang_1108433338;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnConsumeAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnConsumeAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_jilei_849970680;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_jilei1_1891256575;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_jilei1_1891256575;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_jilei_849970680;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".TreasureSlotBackground");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".TreasureSlotBackground",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Common_Components_swf_TreasureSlotBG_2114513011;
            };
         }
         style = StyleManager.getStyleDeclaration(".pptower1selected");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".pptower1selected",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Panels_diaoke_swf_tower11_1158124854;
            };
         }
         style = StyleManager.getStyleDeclaration(".shenmironglu");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".shenmironglu",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_shenmironglu_1968746720;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_shenmironglu1_1072134713;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_shenmironglu1_1072134713;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_shenmironglu_1968746720;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnAchievement");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnAchievement",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_AchievementPanelB1Up_1313236270;
               this.color = 16759672;
               this.disabledSkin = _embed_css__style_Common_Components_swf_AchievementPanelB1Disabled_731169343;
               this.selectedOverSkin = _embed_css__style_Common_Components_swf_AchievementPanelB1Over_648876903;
               this.selectedDisabledSkin = _embed_css__style_Common_Components_swf_AchievementPanelB1Over_648876903;
               this.disabledColor = 14010039;
               this.downSkin = _embed_css__style_Common_Components_swf_AchievementPanelB1Down_648998497;
               this.fontFamily = "Tahoma";
               this.selectedDownSkin = _embed_css__style_Common_Components_swf_AchievementPanelB1Over_648876903;
               this.overSkin = _embed_css__style_Common_Components_swf_AchievementPanelB1Over_648876903;
               this.selectedUpSkin = _embed_css__style_Common_Components_swf_AchievementPanelB1Over_648876903;
               this.textSelectedColor = 11235111;
               this.fontSize = 12;
               this.textRollOverColor = 16515001;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".VerticalTab");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".VerticalTab",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_VTabUp_1401237595;
               this.color = 16366965;
               this.textAlign = "center";
               this.fontAntiAliasType = "advance";
               this.disabledSkin = _embed_css__style_Common_Components_swf_VTabDisabled_1802366730;
               this.selectedOverSkin = _embed_css__style_Common_Components_swf_VTabOver_1858401998;
               this.selectedDisabledSkin = _embed_css__style_Common_Components_swf_VTabDisabled_1802366730;
               this.disabledColor = 13944759;
               this.downSkin = _embed_css__style_Common_Components_swf_VTabUp_1401237595;
               this.fontFamily = "Tahoma";
               this.selectedDownSkin = _embed_css__style_Common_Components_swf_VTabUp_1401237595;
               this.overSkin = _embed_css__style_Common_Components_swf_VTabOver_1858401998;
               this.selectedUpSkin = _embed_css__style_Common_Components_swf_VTabSelected_843756645;
               this.textSelectedColor = 11235111;
               this.fontSize = 12;
               this.textRollOverColor = 16515000;
               this.paddingTop = 2;
               this.paddingLeft = 0;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".monsterHeart");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".monsterHeart",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_mowuzhixin_1402850713;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_mowuzhixin1_1867254974;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_mowuzhixin1_1867254974;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_mowuzhixin_1402850713;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnServerClock");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnServerClock",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_LocationBar_swf_shizhongUp_186253110;
               this.downSkin = _embed_css__style_MainStage_LocationBar_swf_shizhongUp_186253110;
               this.overSkin = _embed_css__style_MainStage_LocationBar_swf_shizhongOver_2071584959;
               this.disabledSkin = _embed_css__style_MainStage_LocationBar_swf_shizhongUp_186253110;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnGatherCancel");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnGatherCancel",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Miscellaneous______swf_______1_1770656048;
               this.downSkin = _embed_css__style_Miscellaneous______swf_______3_1770656046;
               this.overSkin = _embed_css__style_Miscellaneous______swf_______2_1770656047;
               this.disabledSkin = _embed_css__style_Miscellaneous______swf_______4_1770656045;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasMapTreatment");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasMapTreatment",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css___MiniMap_swf____714404362;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnNewPlayerAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnNewPlayerAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_xinshou_1278867431;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_xinshou1_314528032;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_xinshou1_314528032;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_xinshou_1278867431;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".plantMine");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".plantMine",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_Fazenda_swf____740036774;
               this.downSkin = _embed_css__style_Panels_Fazenda_swf___2_758359818;
               this.overSkin = _embed_css__style_Panels_Fazenda_swf___1_758359819;
               this.disabledSkin = _embed_css__style_Panels_Fazenda_swf___3_758359813;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnBarTeam");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnBarTeam",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_team_up_mc_784893718;
               this.downSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_team_down_mc_1275399061;
               this.overSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_team_over_mc_2099375427;
               this.disabledSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_team_disabled_mc_2129318187;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnDailyGiftAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnDailyGiftAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_qiandao_651808964;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_qiandao1_219735109;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_qiandao1_219735109;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_qiandao_651808964;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasChatOutput");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasChatOutput",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderColor = 0;
               this.backgroundAlpha = 0.3;
               this.borderStyle = "none";
            };
         }
         style = StyleManager.getStyleDeclaration(".rebateEverydayDH");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".rebateEverydayDH",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_tiantianfanli_1232879355;
               this.downSkin = _embed_css__style_Common_Components_swf_tiantianfanli2_487104863;
               this.overSkin = _embed_css__style_Common_Components_swf_tiantianfanli1_487104864;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_Components_swf_tiantianfanli3_487104858;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".rockLandMaster");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".rockLandMaster",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_yanshi1_783495454;
               this.downSkin = _embed_css__style_Common_Components_swf_yanshi1_783495454;
               this.overSkin = _embed_css__style_Common_Components_swf_yanshi2_783495453;
               this.disabledSkin = _embed_css__style_Common_Components_swf_yanshi1_783495454;
            };
         }
         style = StyleManager.getStyleDeclaration(".getMine");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".getMine",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_Fazenda_swf____738296924;
               this.downSkin = _embed_css__style_Panels_Fazenda_swf___2_748464652;
               this.overSkin = _embed_css__style_Panels_Fazenda_swf___1_748464653;
               this.disabledSkin = _embed_css__style_Panels_Fazenda_swf___3_748464655;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasMapQFinished");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasMapQFinished",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css___MiniMap_swf______157796331;
            };
         }
         style = StyleManager.getStyleDeclaration(".talentLeftBtn");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".talentLeftBtn",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels___icon_swf_Zuojiantou_1728371337;
               this.downSkin = _embed_css__style_Panels___icon_swf_Zuojiantou2_1076279415;
               this.overSkin = _embed_css__style_Panels___icon_swf_Zuojiantou1_1076280198;
               this.disabledSkin = _embed_css__style_Panels___icon_swf_Zuojiantou3_1076280200;
            };
         }
         style = StyleManager.getStyleDeclaration(".Chongwutianfu");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Chongwutianfu",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_Chongwutianfu_936535465;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_Chongwutianfu1_2022478446;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_Chongwutianfu1_2022478446;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_Chongwutianfu_936535465;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".EquipBagLeft");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".EquipBagLeft",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_LongHideBtnLeftUp_1355031713;
               this.downSkin = _embed_css__style_Common_Components_swf_LongHideBtnLeftDown_990983014;
               this.overSkin = _embed_css__style_Common_Components_swf_LongHideBtnLeftOver_995637348;
               this.disabledSkin = _embed_css__style_Common_Components_swf_LongHideBtnLeftDisabled_1312976964;
            };
         }
         style = StyleManager.getStyleDeclaration("VScrollBar");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("VScrollBar",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.thumbDownSkin = _embed_css__style_Common_Components_swf_ThumbDown_2057063559;
               this.trackDownSkin = _embed_css__style_Common_Components_swf_TrackDown_559821416;
               this.downArrowDownSkin = _embed_css__style_Common_Components_swf_DownArrowDown_614660052;
               this.upArrowDisabledSkin = _embed_css__style_Common_Components_swf_UpArrowDisabled_1622635733;
               this.downArrowDisabledSkin = _embed_css__style_Common_Components_swf_DownArrowDisabled_264037054;
               this.thumbOverSkin = _embed_css__style_Common_Components_swf_ThumbOver_2070377941;
               this.upArrowOverSkin = _embed_css__style_Common_Components_swf_UpArrowOver_1223442051;
               this.thumbUpSkin = _embed_css__style_Common_Components_swf_ThumbUp_798295820;
               this.trackUpSkin = _embed_css__style_Common_Components_swf_TrackUp_1347629729;
               this.upArrowDownSkin = _embed_css__style_Common_Components_swf_UpArrowDown_1224432593;
               this.thumbDisabledSkin = _embed_css__style_Common_Components_swf_ThumbDisabled_166392915;
               this.upArrowUpSkin = _embed_css__style_Common_Components_swf_UpArrowUp_1721464140;
               this.trackOverSkin = _embed_css__style_Common_Components_swf_TrackOver_559351058;
               this.trackDisabledSkin = _embed_css__style_Common_Components_swf_TrackDisabled_1548151546;
               this.downArrowUpSkin = _embed_css__style_Common_Components_swf_DownArrowUp_1117353629;
               this.downArrowOverSkin = _embed_css__style_Common_Components_swf_DownArrowOver_615644714;
            };
         }
         style = StyleManager.getStyleDeclaration(".fazendaMenuCanva");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".fazendaMenuCanva",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Panels_Fazenda_swf____740080972;
            };
         }
         style = StyleManager.getStyleDeclaration(".PetPKBut");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".PetPKBut",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon6_swf_chongwudaPK_1504031834;
               this.downSkin = _embed_css__style_Common_ActivityIcon6_swf_chongwudaPK1_688961857;
               this.overSkin = _embed_css__style_Common_ActivityIcon6_swf_chongwudaPK1_688961857;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon6_swf_chongwudaPK_1504031834;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnHeiyaoshiPointNotActive");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnHeiyaoshiPointNotActive",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_dianjihuo_520281012;
               this.downSkin = _embed_css__style_Common_Components_swf_dianjihuo_520281012;
               this.overSkin = _embed_css__style_Common_Components_swf_dianjihuo1_848186463;
            };
         }
         style = StyleManager.getStyleDeclaration(".CrystalBlueButton");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CrystalBlueButton",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_CrystalButtonUp_570620126;
               this.color = 16775802;
               this.disabledSkin = _embed_css__style_Common_Components_swf_CrystalButtonDisabled_1982005955;
               this.selectedOverSkin = _embed_css__style_Common_Components_swf_CrystalYellowButtonOver_1774553585;
               this.selectedDisabledSkin = _embed_css__style_Common_Components_swf_CrystalButtonDisabled_1982005955;
               this.disabledColor = 14737632;
               this.downSkin = _embed_css__style_Common_Components_swf_CrystalButtonDown_1724131541;
               this.fontFamily = "Tahoma";
               this.selectedDownSkin = _embed_css__style_Common_Components_swf_CrystalYellowButtonDown_1774235703;
               this.overSkin = _embed_css__style_Common_Components_swf_CrystalButtonOver_1724928811;
               this.selectedUpSkin = _embed_css__style_Common_Components_swf_CrystalYellowButtonUp_1470023894;
               this.textSelectedColor = 16775802;
               this.fontSize = 12;
               this.textRollOverColor = 16775802;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasLogined");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasLogined",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_LoginStage_LoginStage_swf_LoginPanel_135241212;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnNewServerAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnNewServerAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_xinfu_861328589;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_xinfu1_414031684;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_xinfu1_414031684;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_xinfu_861328589;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnJiangLiZhaoHui");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnJiangLiZhaoHui",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_Jianglizhaohui_1432535913;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_Jianglizhaohui1_1954266480;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_Jianglizhaohui1_1954266480;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_Jianglizhaohui_1432535913;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnChatChannel");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnChatChannel",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonBlueUp_429989409;
               this.color = 3784959;
               this.disabledSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonDisabled_231044682;
               this.selectedOverSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonRedOver_114984823;
               this.selectedDisabledSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonDisabled_231044682;
               this.downSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonBlueDown_1388010666;
               this.fontFamily = "宋体";
               this.selectedDownSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonRedDown_115892021;
               this.overSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonBlueOver_1380744008;
               this.selectedUpSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonRedUp_622608972;
               this.fontSize = 12;
               this.textRollOverColor = 3784959;
               this.paddingTop = 2;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnChangeLine");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnChangeLine",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_LocationBar_swf_ChangeChannelUp_1885286477;
               this.downSkin = _embed_css__style_MainStage_LocationBar_swf_ChangeChannelDown_1309753194;
               this.overSkin = _embed_css__style_MainStage_LocationBar_swf_ChangeChannelOver_1309548600;
               this.disabledSkin = _embed_css__style_MainStage_LocationBar_swf_ChangeChannelDisabled_282581808;
            };
         }
         style = StyleManager.getStyleDeclaration(".rebateEveryday");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".rebateEveryday",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_tiantianfanli_18293933;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_tiantianfanli1_1806435548;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_tiantianfanli1_1806435548;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_tiantianfanli_18293933;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".secretTreasureHuntAuto");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".secretTreasureHuntAuto",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_zidongxunbao1_1057047918;
               this.downSkin = _embed_css__style_Common_Components_swf_zidongxunbao3_1057047900;
               this.overSkin = _embed_css__style_Common_Components_swf_zidongxunbao2_1057047903;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_Components_swf_zidongxunbao4_1057047901;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnSkillBar");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnSkillBar",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_ShowShortcutsUp_2094111778;
               this.downSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_ShowShortcutsDown_996009493;
               this.selectedDownSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_HideShortcutsDown_1768050432;
               this.overSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_ShowShortcutsOver_1000918763;
               this.selectedUpSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_HideShortcutsUp_832818249;
               this.disabledSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_ShowShortcutsDisabled_1819805443;
               this.selectedOverSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_HideShortcutsOver_1768535062;
               this.selectedDisabledSkin = _embed_css__style_MainStage_ShortcutCanvas_swf_HideShortcutsDisabled_439506158;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnLoginTurnLeft");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnLoginTurnLeft",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_LoginStage_LoginStage_swf_____L1_1606072746;
               this.downSkin = _embed_css__style_LoginStage_LoginStage_swf_____L3_1606072744;
               this.overSkin = _embed_css__style_LoginStage_LoginStage_swf_____L2_1606072745;
               this.disabledSkin = _embed_css__style_LoginStage_LoginStage_swf_____L4_1606072743;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnRefuseMarriage");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnRefuseMarriage",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Miscellaneous_____________swf_shangxin1_1808644056;
               this.downSkin = _embed_css__style_Miscellaneous_____________swf_shangxin3_1808644050;
               this.selectedDownSkin = _embed_css__style_Miscellaneous_____________swf_shangxin3_1808644050;
               this.overSkin = _embed_css__style_Miscellaneous_____________swf_shangxin2_1808644049;
               this.selectedUpSkin = _embed_css__style_Miscellaneous_____________swf_shangxin1_1808644056;
               this.disabledSkin = _embed_css__style_Miscellaneous_____________swf_shangxin4_1808644051;
               this.selectedOverSkin = _embed_css__style_Miscellaneous_____________swf_shangxin2_1808644049;
               this.selectedDisabledSkin = _embed_css__style_Miscellaneous_____________swf_shangxin4_1808644051;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnAdd2");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnAdd2",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___Components_swf_BtnAdd_1906420468;
               this.downSkin = _embed_css___Components_swf_BtnAdd_1906420468;
               this.selectedDownSkin = _embed_css___Components_swf_BtnAdd_1906420468;
               this.overSkin = _embed_css___Components_swf_BtnAdd_1906420468;
               this.selectedUpSkin = _embed_css___Components_swf_BtnAdd_1906420468;
               this.disabledSkin = _embed_css___Components_swf_BtnAdd_1906420468;
               this.selectedOverSkin = _embed_css___Components_swf_BtnAdd_1906420468;
               this.selectedDisabledSkin = _embed_css___Components_swf_BtnAdd_1906420468;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnLevelUp");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnLevelUp",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_CharInfo_swf_LevelUpUp_1570995201;
               this.downSkin = _embed_css__style_MainStage_CharInfo_swf_LevelUpDown_430219912;
               this.fontFamily = "Tahoma";
               this.color = 16759415;
               this.overSkin = _embed_css__style_MainStage_CharInfo_swf_LevelUpOver_430151066;
               this.textSelectedColor = 11627561;
               this.disabledSkin = _embed_css__style_MainStage_CharInfo_swf_LevelUpDisabled_419524638;
               this.fontSize = 14;
               this.textRollOverColor = 16515000;
               this.disabledColor = 14075576;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasMapMail");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasMapMail",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css___MiniMap_swf____715207264;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnHp1");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnHp1",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_CharInfo_swf_HealHPHalfUp_1924159163;
               this.downSkin = _embed_css__style_MainStage_CharInfo_swf_HealHPHalfDown_1436899380;
               this.selectedDownSkin = _embed_css__style_MainStage_CharInfo_swf_HealHPHalfDown_1436899380;
               this.overSkin = _embed_css__style_MainStage_CharInfo_swf_HealHPHalfOver_1436962850;
               this.selectedUpSkin = _embed_css__style_MainStage_CharInfo_swf_HealHPHalfUp_1924159163;
               this.disabledSkin = _embed_css__style_MainStage_CharInfo_swf_HealHPHalfDisabled_1714784218;
               this.selectedOverSkin = _embed_css__style_MainStage_CharInfo_swf_HealHPHalfOver_1436962850;
               this.selectedDisabledSkin = _embed_css__style_MainStage_CharInfo_swf_HealHPHalfDisabled_1714784218;
            };
         }
         style = StyleManager.getStyleDeclaration("HRule");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("HRule",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.strokeColor = 5236712;
               this.shadowColor = 1389630;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnBeginGuide");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnBeginGuide",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_LoginStage_CHA_CRE_swf_____1_1267423210;
               this.downSkin = _embed_css__style_LoginStage_CHA_CRE_swf_____1_1267423210;
               this.overSkin = _embed_css__style_LoginStage_CHA_CRE_swf_____2_1267423229;
               this.disabledSkin = _embed_css__style_LoginStage_CHA_CRE_swf_____1_1267423210;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnHp0");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnHp0",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_CharInfo_swf_HealEmptyUp_1920581897;
               this.downSkin = _embed_css__style_MainStage_CharInfo_swf_HealEmptyDown_284841330;
               this.selectedDownSkin = _embed_css__style_MainStage_CharInfo_swf_HealEmptyDown_284841330;
               this.overSkin = _embed_css__style_MainStage_CharInfo_swf_HealEmptyOver_277037696;
               this.selectedUpSkin = _embed_css__style_MainStage_CharInfo_swf_HealEmptyUp_1920581897;
               this.disabledSkin = _embed_css__style_MainStage_CharInfo_swf_HealEmptyDisabled_692905176;
               this.selectedOverSkin = _embed_css__style_MainStage_CharInfo_swf_HealEmptyOver_277037696;
               this.selectedDisabledSkin = _embed_css__style_MainStage_CharInfo_swf_HealEmptyDisabled_692905176;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnHp2");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnHp2",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_CharInfo_swf_HealHPFullUp_2028167711;
               this.downSkin = _embed_css__style_MainStage_CharInfo_swf_HealHPFullDown_288365720;
               this.selectedDownSkin = _embed_css__style_MainStage_CharInfo_swf_HealHPFullDown_288365720;
               this.overSkin = _embed_css__style_MainStage_CharInfo_swf_HealHPFullOver_287913094;
               this.selectedUpSkin = _embed_css__style_MainStage_CharInfo_swf_HealHPFullUp_2028167711;
               this.disabledSkin = _embed_css__style_MainStage_CharInfo_swf_HealHPFullDisabled_1540029118;
               this.selectedOverSkin = _embed_css__style_MainStage_CharInfo_swf_HealHPFullOver_287913094;
               this.selectedDisabledSkin = _embed_css__style_MainStage_CharInfo_swf_HealHPFullDisabled_1540029118;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnRed");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnRed",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_YellowButtonUp_177483940;
               this.downSkin = _embed_css__style_Common_Components_swf_YellowButtonDown_1656088361;
               this.color = 16366965;
               this.overSkin = _embed_css__style_Common_Components_swf_YellowButtonOver_1667677403;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_Components_swf_YellowButtonDisabled_655016957;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnHideButtons");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnHideButtons",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsHideUp_1217161051;
               this.downSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsHideDown_2044430334;
               this.overSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsHideOver_2031263724;
               this.disabledSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_RightButtonsHideDisabled_2002675196;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnFlower");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnFlower",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Miscellaneous_____________swf___1_312162291;
               this.downSkin = _embed_css__style_Miscellaneous_____________swf___3_312162301;
               this.selectedDownSkin = _embed_css__style_Miscellaneous_____________swf___3_312162301;
               this.overSkin = _embed_css__style_Miscellaneous_____________swf___2_312162292;
               this.selectedUpSkin = _embed_css__style_Miscellaneous_____________swf___1_312162291;
               this.disabledSkin = _embed_css__style_Miscellaneous_____________swf___4_312162302;
               this.selectedOverSkin = _embed_css__style_Miscellaneous_____________swf___2_312162292;
               this.selectedDisabledSkin = _embed_css__style_Miscellaneous_____________swf___4_312162302;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasMapBattle");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasMapBattle",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css___MiniMap_swf____714380231;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnSkillLevel10");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnSkillLevel10",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___SkillUseSlot_swf_10Up_222509813;
               this.downSkin = _embed_css___SkillUseSlot_swf_10Down_987146366;
               this.overSkin = _embed_css___SkillUseSlot_swf_10Over_986886508;
               this.disabledSkin = _embed_css___SkillUseSlot_swf_10Disabled_1851018068;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnChatClear");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnChatClear",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_ChatArea_swf_ClearUp_536952815;
               this.downSkin = _embed_css__style_MainStage_ChatArea_swf_ClearDown_1528000092;
               this.overSkin = _embed_css__style_MainStage_ChatArea_swf_ClearOver_1527801626;
               this.disabledSkin = _embed_css__style_MainStage_ChatArea_swf_ClearDisabled_1399442162;
            };
         }
         style = StyleManager.getStyleDeclaration(".WishFiveTime");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".WishFiveTime",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels____swf___5__1786501980;
               this.downSkin = _embed_css__style_Panels____swf___5_2_53410464;
               this.overSkin = _embed_css__style_Panels____swf___5_1_53410463;
               this.disabledSkin = _embed_css__style_Panels____swf___5_3_53410513;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasChangeMap");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasChangeMap",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Maps_MapIcons_swf___1_485900790;
               this.downSkin = _embed_css__style_Maps_MapIcons_swf___2_485900679;
               this.overSkin = _embed_css__style_Maps_MapIcons_swf___2_485900679;
               this.disabledSkin = _embed_css__style_Maps_MapIcons_swf___2_485900679;
            };
         }
         style = StyleManager.getStyleDeclaration(".CharSelectTitle");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CharSelectTitle",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_LoginStage_LoginStage_swf_ChooseCharacterTitle_180737831;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnActivityPageUp");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnActivityPageUp",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_______3_swf_Caidanshang1_375022321;
               this.downSkin = _embed_css__style_Panels_______3_swf_Caidanshang3_375022323;
               this.color = 16366965;
               this.overSkin = _embed_css__style_Panels_______3_swf_Caidanshang2_375022324;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Panels_______3_swf_Caidanshang4_375022286;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnBarPK");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnBarPK",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_Contest_up_mc_796346935;
               this.downSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_Contest_down_mc_2098185008;
               this.overSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_Contest_over_mc_1575240738;
               this.disabledSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_Contest_disabled_mc_687074490;
            };
         }
         style = StyleManager.getStyleDeclaration("Tree");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("Tree",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.folderClosedIcon = _embed_css__979869417;
               this.disclosureOpenIcon = _embed_css__882111722;
               this.indentation = 5;
               this.folderOpenIcon = _embed_css__255506289;
               this.backgroundAlpha = 0;
               this.defaultLeafIcon = _embed_css__150904276;
               this.disclosureClosedIcon = _embed_css__981587384;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnBatPos");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnBatPos",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_Misc_swf______1_545048348;
               this.color = 16104051;
               this.disabledSkin = _embed_css__style_Panels_Misc_swf______4_545048329;
               this.selectedOverSkin = _embed_css__style_Panels_Misc_swf______2_545048347;
               this.selectedDisabledSkin = _embed_css__style_Panels_Misc_swf______4_545048329;
               this.disabledColor = 13944759;
               this.downSkin = _embed_css__style_Panels_Misc_swf______3_545048346;
               this.fontFamily = "Tahoma";
               this.selectedDownSkin = _embed_css__style_Panels_Misc_swf______3_545048346;
               this.overSkin = _embed_css__style_Panels_Misc_swf______2_545048347;
               this.selectedUpSkin = _embed_css__style_Panels_Misc_swf______1_545048348;
               this.textSelectedColor = 11235111;
               this.fontSize = 12;
               this.textRollOverColor = 16515000;
               this.paddingTop = 4;
               this.paddingLeft = 10;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration("HScrollBar");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("HScrollBar",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.thumbUpSkin = _embed_css________swf_ScrollBars_thumbUpSkin_917667903;
               this.thumbIcon = _embed_css________swf_ScrollBars_thumbIcon_919716352;
               this.thumbDownSkin = _embed_css________swf_ScrollBars_thumbDownSkin_446138102;
               this.trackSkin = _embed_css________swf_ScrollBars_trackSkin_1555845111;
               this.downArrowSkin = null;
               this.upArrowSkin = null;
               this.thumbOverSkin = _embed_css________swf_ScrollBars_thumbOverSkin_417212408;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnRaving");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnRaving",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Miscellaneous_____________swf____1_194162015;
               this.downSkin = _embed_css__style_Miscellaneous_____________swf____3_194162013;
               this.selectedDownSkin = _embed_css__style_Miscellaneous_____________swf____3_194162013;
               this.overSkin = _embed_css__style_Miscellaneous_____________swf____2_194162014;
               this.selectedUpSkin = _embed_css__style_Miscellaneous_____________swf____1_194162015;
               this.disabledSkin = _embed_css__style_Miscellaneous_____________swf____4_194162012;
               this.selectedOverSkin = _embed_css__style_Miscellaneous_____________swf____2_194162014;
               this.selectedDisabledSkin = _embed_css__style_Miscellaneous_____________swf____4_194162012;
            };
         }
         style = StyleManager.getStyleDeclaration(".openedLandMaster");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".openedLandMaster",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_tuohuang1_326648371;
               this.downSkin = _embed_css__style_Common_Components_swf_tuohuang1_326648371;
               this.overSkin = _embed_css__style_Common_Components_swf_tuohuang2_326648366;
               this.disabledSkin = _embed_css__style_Common_Components_swf_tuohuang1_326648371;
            };
         }
         style = StyleManager.getStyleDeclaration(".GoldBinded");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".GoldBinded",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.disabledSkin = _embed_css__style_Panels_BagPanel_swf_GoldBinded_195638531;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnWbGold");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnWbGold",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_wbIcon_swf_____2_1405602324;
               this.downSkin = _embed_css__style_Common_wbIcon_swf_____3_1405602323;
               this.color = 16366965;
               this.overSkin = _embed_css__style_Common_wbIcon_swf______791312916;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_wbIcon_swf_____4_1405602322;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasShopSale");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasShopSale",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css___SystemShopPanel_swf_____SALE_31953962;
            };
         }
         style = StyleManager.getStyleDeclaration(".RoleName");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".RoleName",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_LoginStage_LoginStage_swf_RoleName_1703610974;
               this.downSkin = _embed_css__style_LoginStage_LoginStage_swf_RoleName_1703610974;
               this.color = 16775802;
               this.overSkin = _embed_css__style_LoginStage_LoginStage_swf_RoleName_1703610974;
               this.width = 26;
               this.textSelectedColor = 16775802;
               this.disabledSkin = _embed_css__style_LoginStage_LoginStage_swf_RoleName_1703610974;
               this.textRollOverColor = 16775802;
               this.disabledColor = 14737632;
            };
         }
         style = StyleManager.getStyleDeclaration(".rebtnopen");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".rebtnopen",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_envelope_swf_kai_221494238;
               this.downSkin = _embed_css__style_Panels_envelope_swf_kai1_220543795;
               this.overSkin = _embed_css__style_Panels_envelope_swf_kai1_220543795;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Panels_envelope_swf_kai_221494238;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BloodyBattle");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BloodyBattle",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_bloodyBattle_931075818;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_bloodyBattle1_1847681471;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_bloodyBattle1_1847681471;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_bloodyBattle_931075818;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnChatUp");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnChatUp",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_ChatArea_swf_EnlargeUp_544827266;
               this.downSkin = _embed_css__style_MainStage_ChatArea_swf_EnlargeDown_260238069;
               this.overSkin = _embed_css__style_MainStage_ChatArea_swf_EnlargeOver_264998819;
               this.disabledSkin = _embed_css__style_MainStage_ChatArea_swf_EnlargeDisabled_1260602597;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasSystemShopBack");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasSystemShopBack",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_MainStage_TopRightButtonTray_swf_Tray_1269799111;
            };
         }
         style = StyleManager.getStyleDeclaration(".fazendaCharDataCanva");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".fazendaCharDataCanva",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Panels_Fazenda_swf________1026284914;
            };
         }
         style = StyleManager.getStyleDeclaration(".TileSlot");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".TileSlot",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.horizontalGap = 2;
               this.paddingBottom = 5;
               this.paddingRight = 5;
               this.backgroundAlpha = 0;
               this.paddingTop = 3;
               this.verticalGap = 1;
               this.paddingLeft = 5;
            };
         }
         style = StyleManager.getStyleDeclaration(".datagridHeader");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".datagridHeader",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.color = 16501317;
            };
         }
         style = StyleManager.getStyleDeclaration(".juhuasuanBtn");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".juhuasuanBtn",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_dianjigoumai1_2107071303;
               this.downSkin = _embed_css__style_Common_Components_swf_dianjigoumai3_2107071301;
               this.overSkin = _embed_css__style_Common_Components_swf_dianjigoumai2_2107071300;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_Components_swf_dianjigoumai4_2107071306;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnNormalRed");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnNormalRed",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_YellowButtonUp_177483940;
               this.color = 16759672;
               this.textAlign = "center";
               this.disabledSkin = _embed_css__style_Common_Components_swf_YellowButtonDisabled_655016957;
               this.selectedOverSkin = _embed_css__style_Common_Components_swf_YellowButtonOver_1667677403;
               this.selectedDisabledSkin = _embed_css__style_Common_Components_swf_YellowButtonDisabled_655016957;
               this.disabledColor = 14010039;
               this.downSkin = _embed_css__style_Common_Components_swf_YellowButtonDown_1656088361;
               this.fontFamily = "Tahoma";
               this.selectedDownSkin = _embed_css__style_Common_Components_swf_YellowButtonDown_1656088361;
               this.overSkin = _embed_css__style_Common_Components_swf_YellowButtonOver_1667677403;
               this.selectedUpSkin = _embed_css__style_Common_Components_swf_YellowButtonUp_177483940;
               this.textSelectedColor = 11235111;
               this.fontSize = 12;
               this.textRollOverColor = 16515001;
               this.paddingTop = 2;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnZhenFaXiuLian");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnZhenFaXiuLian",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_ZhenFaXiuLian_1249751101;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_ZhenFaXiuLian1_1257318028;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_ZhenFaXiuLian1_1257318028;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_ZhenFaXiuLian_1249751101;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnVipAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnVipAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_ZuanShiShangCheng_2020146945;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_ZuanShiShangCheng1_1638781912;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_ZuanShiShangCheng1_1638781912;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_ZuanShiShangCheng_2020146945;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".pptower4");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".pptower4",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Panels_diaoke_swf_tower4_720646448;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasAchDetail");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasAchDetail",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Common_Components_swf_SkillBoxDisabled_734603153;
            };
         }
         style = StyleManager.getStyleDeclaration(".baoshijuling");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".baoshijuling",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_baoshijuling_1321859428;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_baoshijuling1_629689485;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_baoshijuling1_629689485;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_baoshijuling_1321859428;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".pptower3");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".pptower3",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Panels_diaoke_swf_tower3_720646447;
            };
         }
         style = StyleManager.getStyleDeclaration(".pptower2");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".pptower2",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Panels_diaoke_swf_tower2_720646442;
            };
         }
         style = StyleManager.getStyleDeclaration(".pptower1");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".pptower1",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Panels_diaoke_swf_tower1_720646441;
            };
         }
         style = StyleManager.getStyleDeclaration("HSlider");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("HSlider",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.thumbUpSkin = _embed_css________swf_SliderThumb_upSkin_891122714;
               this.showTrackHighlight = true;
               this.thumbDownSkin = _embed_css________swf_SliderThumb_downSkin_1360380893;
               this.trackHighlightSkin = _embed_css________swf_SliderHighlight_Skin_1820318516;
               this.trackSkin = _embed_css________swf_SliderTrack_Skin_1955168507;
               this.thumbDisabledSkin = _embed_css________swf_SliderThumb_disabledSkin_197857223;
               this.thumbOverSkin = _embed_css________swf_SliderThumb_overSkin_1383066641;
               this.dataTipOffset = 5;
            };
         }
         style = StyleManager.getStyleDeclaration(".secretTreasureHuntJiejiu");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".secretTreasureHuntJiejiu",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_zidongxunbao1_1057047918;
               this.downSkin = _embed_css__style_Common_Components_swf_zidongxunbao3_1057047900;
               this.overSkin = _embed_css__style_Common_Components_swf_zidongxunbao2_1057047903;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_Components_swf_zidongxunbao4_1057047901;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".canOpenUpMaster");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".canOpenUpMaster",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_huangdi2_824549887;
               this.downSkin = _embed_css__style_Common_Components_swf_huangdi2_824549887;
               this.overSkin = _embed_css__style_Common_Components_swf_huangdi2_824549887;
               this.disabledSkin = _embed_css__style_Common_Components_swf_huangdi2_824549887;
            };
         }
         style = StyleManager.getStyleDeclaration(".TransparentSlotBlue");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".TransparentSlotBlue",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderThickness = 1;
               this.borderColor = 26367;
               this.backgroundAlpha = 0;
               this.borderStyle = "solid";
               this.cornerRadius = 2;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnLimitAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnLimitAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_xianshi_1320302805;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_xianshi1_980406110;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_xianshi1_980406110;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_xianshi_1320302805;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".Mowubiji");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Mowubiji",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_MoWuShouJi_425909377;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_MoWuShouJi1_1151760522;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_MoWuShouJi1_1151760522;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_MoWuShouJi_425909377;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".SoulSlotOpen");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".SoulSlotOpen",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderThickness = 1;
               this.borderColor = 0;
               this.backgroundAlpha = 0;
               this.borderSkin = _embed_css__style_Common_Components_swf_ZhanBu2_207186557;
               this.borderStyle = "solid";
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnChatSJ");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnChatSJ",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonYellowUp_1371439771;
               this.downSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonYellowDown_792858944;
               this.fontFamily = "Tahoma";
               this.color = 13483628;
               this.overSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonYellowOver_793581906;
               this.disabledSkin = _embed_css__style_MainStage_ChatArea_swf_ChannelButtonDisabled_231044682;
               this.fontSize = 12;
               this.textRollOverColor = 13483628;
               this.paddingTop = 2;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnActivityPageDown");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnActivityPageDown",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_______3_swf_Caidanxia1_888383008;
               this.downSkin = _embed_css__style_Panels_______3_swf_Caidanxia3_888382986;
               this.color = 16366965;
               this.overSkin = _embed_css__style_Panels_______3_swf_Caidanxia2_888382991;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Panels_______3_swf_Caidanxia4_888382985;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".pptower2selected");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".pptower2selected",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Panels_diaoke_swf_tower21_1158124567;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnSendAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnSendAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_renqi_855160182;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_renqi1_52810093;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_renqi1_52810093;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_renqi_855160182;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnBarPlayer");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnBarPlayer",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_person_up_mc_1201979762;
               this.downSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_person_down_mc_2026601123;
               this.overSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_person_over_mc_1234213109;
               this.disabledSkin = _embed_css__style_MainStage_SystemBarButtons_swf_button_person_disabled_mc_712388531;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnTestAct");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnTestAct",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_huodong_2115708485;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_huodong1_375141518;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_huodong1_375141518;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_huodong_2115708485;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".CharacterBlue");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CharacterBlue",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_LoginStage_LoginStage_swf_CharacterBlueUp_285706945;
               this.downSkin = _embed_css__style_LoginStage_LoginStage_swf_CharacterBlueDown_366374822;
               this.selectedDownSkin = _embed_css__style_LoginStage_LoginStage_swf_CharacterBlueDown_366374822;
               this.overSkin = _embed_css__style_LoginStage_LoginStage_swf_CharacterBlueOver_366319544;
               this.selectedUpSkin = _embed_css__style_LoginStage_LoginStage_swf_CharacterBlueOver_366319544;
               this.disabledSkin = _embed_css__style_LoginStage_LoginStage_swf_CharacterBlueDisabled_1572266848;
               this.selectedOverSkin = _embed_css__style_LoginStage_LoginStage_swf_CharacterBlueOver_366319544;
               this.selectedDisabledSkin = _embed_css__style_LoginStage_LoginStage_swf_CharacterBlueDisabled_1572266848;
            };
         }
         style = StyleManager.getStyleDeclaration(".huangleshiguang");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".huangleshiguang",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_huangleshiguang_190109357;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_huangleshiguang1_1935161366;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_huangleshiguang1_1935161366;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_huangleshiguang_190109357;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".Dice");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".Dice",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_LoginStage_CHA_CRE_swf____nor_870781247;
               this.downSkin = _embed_css__style_LoginStage_CHA_CRE_swf____down_50142282;
               this.overSkin = _embed_css__style_LoginStage_CHA_CRE_swf____pass_19225659;
               this.disabledSkin = _embed_css__style_LoginStage_CHA_CRE_swf____dis_870795252;
            };
         }
         style = StyleManager.getStyleDeclaration(".fazendaCharCanva");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".fazendaCharCanva",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css__style_Panels_Fazenda_swf_______1477720989;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnXiaLingYing");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnXiaLingYing",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_XiaLingYing_270040958;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_XiaLingYing1_1657277511;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_XiaLingYing1_1657277511;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_XiaLingYing_270040958;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".CanvasMapTrade");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".CanvasMapTrade",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.borderSkin = _embed_css___MiniMap_swf____714678320;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnAdd");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnAdd",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css___Components_swf_BtnAddUp_2030929017;
               this.downSkin = _embed_css___Components_swf_BtnAddDown_223823282;
               this.selectedDownSkin = _embed_css___Components_swf_BtnAddDown_223823282;
               this.overSkin = _embed_css___Components_swf_BtnAddOver_224685488;
               this.selectedUpSkin = _embed_css___Components_swf_BtnAddUp_2030929017;
               this.disabledSkin = _embed_css___Components_swf_BtnAddDisabled_277323864;
               this.selectedOverSkin = _embed_css___Components_swf_BtnAddOver_224685488;
               this.selectedDisabledSkin = _embed_css___Components_swf_BtnAddDisabled_277323864;
            };
         }
         style = StyleManager.getStyleDeclaration(".bossDailyBattle");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".bossDailyBattle",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_Components_swf_StoneButton1_950088773;
               this.downSkin = _embed_css__style_Common_Components_swf_StoneButton3_950088779;
               this.fontFamily = "宋体";
               this.color = 16759672;
               this.overSkin = _embed_css__style_Common_Components_swf_StoneButton2_950088778;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_Components_swf_StoneButton4_950088776;
               this.fontSize = 12;
               this.textRollOverColor = 16515001;
               this.disabledColor = 14010039;
               this.fontWeight = "normal";
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnJXHDGOTO");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnJXHDGOTO",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_jxhd_swf_jxhdgotobtn1_1722896093;
               this.downSkin = _embed_css__style_Panels_jxhd_swf_jxhdgotobtn3_1722896067;
               this.overSkin = _embed_css__style_Panels_jxhd_swf_jxhdgotobtn2_1722896066;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Panels_jxhd_swf_jxhdgotobtn4_1722896064;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".happyFrontLine");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".happyFrontLine",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_yixianqian_1662462262;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_yixianqian1_1370280659;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_yixianqian1_1370280659;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_yixianqian_1662462262;
               this.textRollOverColor = 16515000;
            };
         }
         style = StyleManager.getStyleDeclaration(".fazendaBag");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".fazendaBag",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Panels_Fazenda_swf______1177527854;
               this.downSkin = _embed_css__style_Panels_Fazenda_swf_____2_1190660478;
               this.overSkin = _embed_css__style_Panels_Fazenda_swf_____1_1190660477;
               this.disabledSkin = _embed_css__style_Panels_Fazenda_swf_____3_1190660355;
            };
         }
         style = StyleManager.getStyleDeclaration(".BtnAutoTaskActNew");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration(".BtnAutoTaskActNew",style,false);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.upSkin = _embed_css__style_Common_ActivityIcon_swf_zidongfubenxin_743537547;
               this.downSkin = _embed_css__style_Common_ActivityIcon_swf_zidongfubenxin1_1847490636;
               this.overSkin = _embed_css__style_Common_ActivityIcon_swf_zidongfubenxin1_1847490636;
               this.textSelectedColor = 11235111;
               this.disabledSkin = _embed_css__style_Common_ActivityIcon_swf_zidongfubenxin_743537547;
               this.textRollOverColor = 16515000;
            };
         }
         StyleManager.mx_internal::initProtoChainRoots();
      }
      
      public function ___MMO_Game_Main_O91a_Application1_creationComplete(param1:FlexEvent) : void
      {
         new MMOGame(this);
      }
      
      public function setUser(param1:String, param2:String) : void
      {
         var _loc3_:Core = null;
         hideLoaderLater = false;
         _loc3_ = Core.getInstance();
         if(!_loc3_)
         {
            return;
         }
         if(!_loc3_.view)
         {
            return;
         }
         _loc3_.user = param1;
         _loc3_.pass = param2;
         _loc3_.urlLogin = true;
         if(_loc3_.view.getUI(ViewManager.FORE_L_R))
         {
            _loc3_.view.getUI(ViewManager.FORE_L_R).onShow();
         }
         if(_loc3_.tg_User)
         {
            hideLoaderLater = true;
            if(_loc3_.remote.nc.connected)
            {
               _loc3_.remote.close();
            }
            _loc3_.global.connect(GamePredef.SERVER_ADD_GLOBAL,["G",_loc3_.user,_loc3_.pass,_loc3_.time,_loc3_.by_session]);
         }
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function setModel(param1:*, param2:*) : void
      {
         var _loc3_:Core = null;
         _loc3_ = Core.getInstance();
         _loc3_.global = new RemoteObj(this);
         _loc3_.global.nc = param1.nc;
         _loc3_.remote = new RemoteObj(this);
         _loc3_.remote.nc = param2.nc;
      }
      
      public function getGamePrompt() : String
      {
         var _loc1_:int = 0;
         _loc1_ = Math.floor(Math.random() * GamePredef.SYSTEM_TIP[1].length);
         return GamePredef.SYSTEM_TIP[1][_loc1_];
      }
      
      public function initGame() : void
      {
         Application.application.dispatchEvent(new Event("InitGame"));
      }
      
      public function checkVer(param1:String) : void
      {
         if(Version.VERSION != param1)
         {
            Alert.show(Language.GAME_S[0] + param1 + Language.GAME_S[1] + Version.VERSION);
         }
      }
      
      public function setContent(param1:uint, param2:uint) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         _loc3_ = param1;
         _loc4_ = param2;
         if(_loc3_ >= 1200 || _loc4_ >= 760)
         {
            _loc3_ = 1200;
            _loc4_ = 760;
         }
         if(_loc3_ <= 900 || _loc4_ <= 570)
         {
            _loc3_ = 900;
            _loc4_ = 570;
         }
         this.width = _loc3_;
         this.height = _loc4_;
         GamePredef.APP_WIDTH = _loc3_;
         GamePredef.APP_HEIGHT = _loc4_;
         GamePredef.APP_HALF_WIDTH = Math.round(_loc3_ / 2);
         GamePredef.APP_HALF_HEIGHT = Math.round(_loc4_ / 2);
      }
   }
}

