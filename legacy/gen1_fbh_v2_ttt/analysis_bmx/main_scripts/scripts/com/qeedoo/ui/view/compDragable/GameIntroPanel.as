package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.adobe.serialization.json.JSON;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TimeUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.ActivityDetail;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.CharactorShowCanvas;
   import com.qeedoo.ui.view.comp.DescriptionLabel;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.LinkTextArea;
   import com.qeedoo.ui.view.comp.PentagonCanvas;
   import com.qeedoo.ui.view.comp.RendererItemArray;
   import com.qeedoo.ui.view.comp.RendererItemSlot;
   import com.qeedoo.ui.view.comp.RoundedButton;
   import com.qeedoo.ui.view.comp.RoundedLabel;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
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
   import mx.collections.ArrayCollection;
   import mx.collections.Sort;
   import mx.collections.SortField;
   import mx.containers.Canvas;
   import mx.containers.VBox;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.DataGrid;
   import mx.controls.Image;
   import mx.controls.LinkButton;
   import mx.controls.List;
   import mx.controls.RadioButton;
   import mx.controls.RadioButtonGroup;
   import mx.controls.TextArea;
   import mx.controls.TextInput;
   import mx.controls.VRule;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.controls.dataGridClasses.DataGridItemRenderer;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.ItemClickEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import mx.utils.ObjectUtil;
   
   use namespace mx_internal;
   
   public class GameIntroPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static var onlineTimer:Timer;
      
      private static const DateArr:Array = [Language.ACTIVEPANEL_U[33],Language.ACTIVEPANEL_U[34],Language.ACTIVEPANEL_U[35],Language.ACTIVEPANEL_U[36],Language.ACTIVEPANEL_U[37],Language.ACTIVEPANEL_U[38],Language.ACTIVEPANEL_U[39]];
      
      private static var initDate:Number = 0;
      
      private static var timerDate:Number = 0;
      
      private static const PRE_1:String = "N";
      
      private static const PRE_2:String = "G";
      
      private static const PRE_3:String = "D";
      
      private static const PRE_A:String = "A";
      
      private static const PRE_O:String = "O";
      
      private var _692413227classImg:Image;
      
      private var _1091882814factor1:RoundedLabel;
      
      private var _3773vs:ViewStack;
      
      private var _1554141552tabBtn7:BasicGlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _110351504ti_tz:TextInput;
      
      private var _464115109petLevel:RoundedLabel;
      
      private var _804284629consumeActivity:DataGrid;
      
      private var _839070479consumeActDate5:IntroText;
      
      private var noticeDataArr:Array = [null,null];
      
      private var _836980328consumeActivity3:DataGrid;
      
      private var _112496008vs_fl:ViewStack;
      
      private var _1656558897selectACar:RoundedButton;
      
      private var _1742477111currentFestTxt:DescriptionLabel;
      
      private var _core:Core = Core.getInstance();
      
      private var _1632084556StageConsumeBtn2:BasicDelayButton;
      
      private var _529071784trolleyDG:DataGrid;
      
      private var noticeLoader0:URLLoader;
      
      private var _1596220963skillSlot2:ItemSlot;
      
      private var noticeLoader1:URLLoader;
      
      private var _1978100422selectB:RoundedButton;
      
      private var _1554141557tabBtn2:BasicGlowButton;
      
      private var _296859264activityItemList:ArrayCollection;
      
      private var _805962357propertyPentagon:PentagonCanvas;
      
      private var _1198028873dailySlot:ItemSlot;
      
      private var _939851608actAward3:ItemSlot;
      
      private var _411634733getConsumeAwardBtn2:BasicDelayButton;
      
      private var _1269814196noticeBtn0:BasicGlowButton;
      
      private var _1197257913getAwardsFromNet:BasicDelayButton;
      
      private var _1686904016consumeAcMsg3:String = "";
      
      public var _GameIntroPanel_DataGridColumn10:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn11:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn12:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn13:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn14:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn15:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn16:DataGridColumn;
      
      private var _344383225DG_diary:DataGrid;
      
      public var _GameIntroPanel_DataGridColumn18:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn19:DataGridColumn;
      
      private var selectedID:Number;
      
      private var _839070484consumeActDate0:IntroText;
      
      private var _425076048getAwardsByCode:BasicDelayButton;
      
      private var _1858597720sportActiveList:ArrayCollection;
      
      public var _GameIntroPanel_DataGridColumn20:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn21:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn22:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn23:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn24:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn25:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn26:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn27:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn29:DataGridColumn;
      
      public var _GameIntroPanel_BasicTxtButton10:BasicTxtButton;
      
      public var _GameIntroPanel_BasicTxtButton11:BasicTxtButton;
      
      public var _GameIntroPanel_BasicTxtButton12:BasicTxtButton;
      
      public var _GameIntroPanel_BasicTxtButton13:BasicTxtButton;
      
      public var _GameIntroPanel_BasicTxtButton14:BasicTxtButton;
      
      public var _GameIntroPanel_BasicTxtButton15:BasicTxtButton;
      
      public var _GameIntroPanel_DataGridColumn28:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn30:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn31:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn17:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn33:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn34:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn35:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn36:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn37:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn38:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn32:DataGridColumn;
      
      private var _1846619111List_fl:List;
      
      private var _885700253consumeAcMsg:String = "";
      
      private const PET_CAN_USE_COLOR:uint = 16777215;
      
      private var _1162960632actBtn2:BasicGlowButton;
      
      private var _1091882811factor4:RoundedLabel;
      
      private var _839070480consumeActDate4:IntroText;
      
      public var _GameIntroPanel_RoundedLabel2:RoundedLabel;
      
      public var _GameIntroPanel_RoundedLabel3:RoundedLabel;
      
      public var _GameIntroPanel_RoundedLabel4:RoundedLabel;
      
      public var _GameIntroPanel_RoundedLabel5:RoundedLabel;
      
      public var _GameIntroPanel_RoundedLabel6:RoundedLabel;
      
      private var _3701ti:TextInput;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _GameIntroPanel_DataGridColumn1:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn3:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn4:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn5:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn6:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn7:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn2:DataGridColumn;
      
      public var _GameIntroPanel_DataGridColumn8:DataGridColumn;
      
      private var dailyActOnlineObj:Object = {
         "time":0,
         "times":0
      };
      
      public var _GameIntroPanel_DataGridColumn9:DataGridColumn;
      
      private var _1950825047DG_boss:DataGrid;
      
      private var _404225515contiSlot:ItemSlot;
      
      private var _939851609actAward2:ItemSlot;
      
      private var _1554141554tabBtn5:BasicGlowButton;
      
      private var _sortForDiary:Sort = new Sort();
      
      public var _GameIntroPanel_LinkTextArea1:LinkTextArea;
      
      private var sportVbInitFlag:Boolean = false;
      
      private var _1281920134fbList:ArrayCollection;
      
      public var carStyle:int = 0;
      
      private var _1554912757vb_earnMoney:VBox;
      
      private var _1554141559tabBtn0:BasicGlowButton;
      
      private var _836980327consumeActivity2:DataGrid;
      
      private var _411634732getConsumeAwardBtn1:BasicDelayButton;
      
      private var _1632084555StageConsumeBtn3:BasicDelayButton;
      
      private var _836980330consumeActivity5:DataGrid;
      
      private var _1686904017consumeAcMsg2:String = "";
      
      private var _1002706919simplecanvas1:SimpleCanvas;
      
      private var _939851610actAward1:ItemSlot;
      
      private var _1510655195getContiBtn:BasicGlowButton;
      
      private var _808640669levelUpActiveList:ArrayCollection;
      
      private var _1176746971getDiscountBtn:BasicGlowButton;
      
      private var _267684296rgActives:RadioButtonGroup;
      
      private var _3310i7:ItemSlot;
      
      private var eqtVbInitFlag:Boolean = false;
      
      private var _1185079624img_fb:Image;
      
      private var _634901781airBossList:ArrayCollection;
      
      public var itemShowStyle:int = 0;
      
      private var _438810531ta_festDesc:IntroText;
      
      private var _570251182groundBossList:ArrayCollection;
      
      private var activeVbInitFlag:Boolean = false;
      
      private var pets_load:Boolean = false;
      
      private var _1162960634actBtn0:BasicGlowButton;
      
      private var _839070483consumeActDate1:IntroText;
      
      private var _1191222340nextConti:int = 0;
      
      private var _1091882813factor2:RoundedLabel;
      
      private var _1596220964skillSlot3:ItemSlot;
      
      public var _GameIntroPanel_BasicDelayButton3:BasicDelayButton;
      
      private var _436537771_selectedDesc:TextArea;
      
      private var _1554141551tabBtn8:BasicGlowButton;
      
      private var _536153440vs_stageConsume:ViewStack;
      
      private var _itemIcon:Image;
      
      private var _1733959322lb_festdesc:DescriptionLabel;
      
      private var _934044862rgBoss:RadioButtonGroup;
      
      private var _1978100421selectA:RoundedButton;
      
      private var _1554141556tabBtn3:BasicGlowButton;
      
      private var _939851611actAward0:ItemSlot;
      
      private var selectedName:String;
      
      private var _2118150722DG_active:DataGrid;
      
      private var CONTI_GIFT_DAY:Array = [8,18,28,48,68,88,108,128,158,188,218,258,308,358,408];
      
      private const INIT_SYS_AWARD_INTERVAL:int = 300000;
      
      public var _GameIntroPanel_BasicTxtButton3:BasicTxtButton;
      
      public var _GameIntroPanel_BasicTxtButton4:BasicTxtButton;
      
      public var _GameIntroPanel_BasicTxtButton5:BasicTxtButton;
      
      public var _GameIntroPanel_BasicTxtButton6:BasicTxtButton;
      
      mx_internal var _bindings:Array = [];
      
      public var _GameIntroPanel_BasicTxtButton1:BasicTxtButton;
      
      public var _GameIntroPanel_BasicTxtButton2:BasicTxtButton;
      
      private var pointsCar:ArrayCollection;
      
      public var _GameIntroPanel_BasicTxtButton8:BasicTxtButton;
      
      private var _1233647451getConsumeAwardBtn:BasicDelayButton;
      
      private var _74227366getFestBtn:BasicGlowButton;
      
      private var _411634736getConsumeAwardBtn5:BasicDelayButton;
      
      private var seletedItem:Object;
      
      public var _GameIntroPanel_RoundedButton3:RoundedButton;
      
      private var _1686904018consumeAcMsg1:String = "";
      
      private var _2088576552equiptActiveList:ArrayCollection;
      
      private var _836980326consumeActivity1:DataGrid;
      
      private var _1132705419continueDay:int = 0;
      
      private var _110351242ti_ll:TextInput;
      
      private var _713858815DiscountSlot:ItemSlot;
      
      private var _1632084558StageConsumeBtn0:BasicDelayButton;
      
      private var _1142482604earnMoneyActiveList:ArrayCollection;
      
      private var _1632084554StageConsumeBtn4:BasicDelayButton;
      
      private var _1162960631actBtn3:BasicGlowButton;
      
      public var _GameIntroPanel_Image4:Image;
      
      private var _79606734TA_fb:LinkTextArea;
      
      public var _GameIntroPanel_RadioButton1:RadioButton;
      
      public var _GameIntroPanel_RadioButton2:RadioButton;
      
      public var _GameIntroPanel_RadioButton3:RadioButton;
      
      public var _GameIntroPanel_RadioButton4:RadioButton;
      
      private var lastInitTime:Number = 0;
      
      public var _GameIntroPanel_BasicGlowButton12:BasicGlowButton;
      
      public var _GameIntroPanel_BasicGlowButton13:BasicGlowButton;
      
      private var _58843066xmlActivity:XML;
      
      private var spec_skill:Object = {
         1672:6365,
         2145:6712,
         2221:6839,
         2246:6891,
         2249:6920,
         2273:6950
      };
      
      private var _719803452consumeActDate:IntroText;
      
      private var _1809115815enableActiveList:ArrayCollection;
      
      private var _933747994tabBtn10:BasicGlowButton;
      
      private var _534379936_haveDiaryAwarded:Boolean = false;
      
      private var _1064241878getGiftBtn:BasicGlowButton;
      
      private var _1803236098img_active:Image;
      
      private var points:ArrayCollection;
      
      public var _GameIntroPanel_IntroText1:IntroText;
      
      public var _GameIntroPanel_IntroText2:IntroText;
      
      public var _GameIntroPanel_IntroText4:IntroText;
      
      public var _GameIntroPanel_IntroText5:IntroText;
      
      public var _GameIntroPanel_IntroText6:IntroText;
      
      public var _GameIntroPanel_IntroText7:IntroText;
      
      private var obj:Object;
      
      public var _GameIntroPanel_RoundedLabel12:RoundedLabel;
      
      private var _1091882815factor0:RoundedLabel;
      
      private var _2096601730Btn_AllFest:LinkButton;
      
      private var _1554141553tabBtn6:BasicGlowButton;
      
      private var _32480112petItemList:ArrayCollection;
      
      private var _575917863elementImg:Image;
      
      private var _65009144DG_fb:DataGrid;
      
      public var _GameIntroPanel_LinkButton2:LinkButton;
      
      public var _GameIntroPanel_LinkButton3:LinkButton;
      
      private var earnMoneyVbInitFlag:Boolean = false;
      
      private var _839070482consumeActDate2:IntroText;
      
      private var _110502745toCar:RoundedButton;
      
      private var _975828627activityDescription:String = Language.ACTIVEPANEL_S[8];
      
      private var _1554141558tabBtn1:BasicGlowButton;
      
      private var _411634735getConsumeAwardBtn4:BasicDelayButton;
      
      private var _110351271ti_mj:TextInput;
      
      private var _1686904014consumeAcMsg5:String = "";
      
      private var giftCount:int = 0;
      
      private var _1596220962skillSlot1:ItemSlot;
      
      private var _1686904019consumeAcMsg0:String = "";
      
      private var _579057063petDataList:List;
      
      private var _1083063779getStageConsumeAwardBtn0:BasicDelayButton;
      
      private var _110351676ti_zl:TextInput;
      
      private var _1596220965skillSlot4:ItemSlot;
      
      private var _1269814195noticeBtn1:BasicGlowButton;
      
      private var _1162960633actBtn1:BasicGlowButton;
      
      private const PET_CAN_NOT_USE_COLOR:uint = 16711680;
      
      private var _836980325consumeActivity0:DataGrid;
      
      private var _1091882812factor3:RoundedLabel;
      
      private var _836980329consumeActivity4:DataGrid;
      
      private var _1632084557StageConsumeBtn1:BasicDelayButton;
      
      private var _1632084553StageConsumeBtn5:BasicDelayButton;
      
      private var _3311i8:ItemSlot;
      
      private var _1554141550tabBtn9:BasicGlowButton;
      
      private var _1521020673diaryList:ArrayCollection;
      
      public var _GameIntroPanel_DescriptionLabel3:DescriptionLabel;
      
      public var _GameIntroPanel_DescriptionLabel4:DescriptionLabel;
      
      public var _GameIntroPanel_DescriptionLabel5:DescriptionLabel;
      
      public var _GameIntroPanel_DescriptionLabel6:DescriptionLabel;
      
      private var _642554749systemInfo:LinkTextArea;
      
      private var _1554141555tabBtn4:BasicGlowButton;
      
      private var _732738989sysInfoCanvas:Canvas;
      
      private var _1656529106selectBCar:RoundedButton;
      
      private var panelConfig_load:Boolean = false;
      
      private var flListItemArr:Array = [Language.GAMEINTROPANEL_U[19],Language.GAMEINTROPANEL_U[20],Language.GAMEINTROPANEL_U[21],Language.GAMEINTROPANEL_U[22],Language.GAMEINTROPANEL_U[49],Language.GAMEINTROPANEL_U[51]];
      
      private var _411634734getConsumeAwardBtn3:BasicDelayButton;
      
      private var _896341983vb_sport:VBox;
      
      private var _1686904015consumeAcMsg4:String = "";
      
      private var _839070481consumeActDate3:IntroText;
      
      private var flag:Object = {};
      
      private var _110351187ti_js:TextInput;
      
      private var _1287834292panelTitle:BasicTitleCanvas;
      
      mx_internal var _watchers:Array = [];
      
      private var _322625876vb_levelUp:VBox;
      
      private var _849924434totalAct:BasicTxtButton;
      
      private var _1162960630actBtn4:BasicGlowButton;
      
      private var _1637688324SC_boss:CharactorShowCanvas;
      
      private var _823291595vb_eqt:VBox;
      
      private var _755507832xmlPet:XML;
      
      private var _939851607actAward4:ItemSlot;
      
      private var _1367571722cashDG:DataGrid;
      
      private var _223647102festSlot:ItemSlot;
      
      private var _401544427_selectedURL:CharactorShowCanvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":650,
               "height":450,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"panelTitle"
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn0",
                  "events":{"click":"__tabBtn0_click"},
                  "stylesFactory":function():void
                  {
                     this.top = "46";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":14,
                        "width":51,
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn1",
                  "events":{"click":"__tabBtn1_click"},
                  "stylesFactory":function():void
                  {
                     this.top = "46";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":66,
                        "width":51,
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn2",
                  "events":{"click":"__tabBtn2_click"},
                  "stylesFactory":function():void
                  {
                     this.top = "46";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":118,
                        "width":51,
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn3",
                  "events":{"click":"__tabBtn3_click"},
                  "stylesFactory":function():void
                  {
                     this.top = "46";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":170,
                        "width":51,
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn4",
                  "events":{"click":"__tabBtn4_click"},
                  "stylesFactory":function():void
                  {
                     this.top = "46";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":222,
                        "width":51,
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn5",
                  "events":{"click":"__tabBtn5_click"},
                  "stylesFactory":function():void
                  {
                     this.top = "46";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":274,
                        "width":51,
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn6",
                  "events":{"click":"__tabBtn6_click"},
                  "stylesFactory":function():void
                  {
                     this.top = "46";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":326,
                        "width":51,
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn7",
                  "events":{"click":"__tabBtn7_click"},
                  "stylesFactory":function():void
                  {
                     this.top = "46";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":378,
                        "width":51,
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn8",
                  "events":{"click":"__tabBtn8_click"},
                  "stylesFactory":function():void
                  {
                     this.top = "46";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":430,
                        "width":51,
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn9",
                  "events":{"click":"__tabBtn9_click"},
                  "stylesFactory":function():void
                  {
                     this.top = "46";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":534,
                        "width":51,
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn10",
                  "events":{"click":"__tabBtn10_click"},
                  "stylesFactory":function():void
                  {
                     this.top = "46";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":482,
                        "width":51,
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"vs",
                  "stylesFactory":function():void
                  {
                     this.bottom = "20";
                     this.left = "10";
                     this.right = "10";
                     this.top = "65";
                  },
                  "propertiesFactory":function():Object
                  {
                     /*
                      * Decompilation error
                      * Code may be obfuscated
                      * Tip: You can try enabling "Deobfuscate code" option in Settings
                      * Error type: OutOfMemoryError (Java heap space)
                      */
                     throw new flash.errors.IllegalOperationError("Not decompiled due to error");
                  }
               })]
            };
         }
      });
      
      private var _807442945TA_boss:LinkTextArea;
      
      private var _115591369idTimerText:BasicTxtButton;
      
      public function GameIntroPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 650;
         this.height = 450;
         this.styleName = "StandardContent";
         _GameIntroPanel_RadioButtonGroup1_i();
         _GameIntroPanel_RadioButtonGroup2_i();
         _GameIntroPanel_XML1_i();
         _GameIntroPanel_XML2_i();
         this.addEventListener("creationComplete",___GameIntroPanel_DragableCanvas1_creationComplete);
      }
      
      public static function GetDateTime(param1:String) : Date
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         if(param1.length > 0)
         {
            _loc2_ = param1.split(" ");
            _loc3_ = _loc2_[0].split("-");
            _loc4_ = _loc2_[1].split(":");
            return new Date(_loc3_[0],int(_loc3_[1]) - 1,_loc3_[2],_loc4_[0],_loc4_[1],_loc4_[2]);
         }
         return new Date(1970,1,1);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GameIntroPanel._watcherSetupUtil = param1;
      }
      
      public function __selectACar_click(param1:MouseEvent) : void
      {
         carItemShow(0);
      }
      
      public function set SC_boss(param1:CharactorShowCanvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1637688324SC_boss;
         if(_loc2_ !== param1)
         {
            this._1637688324SC_boss = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"SC_boss",_loc2_,param1));
         }
      }
      
      private function onGetDailyAward(param1:Object) : void
      {
         if(param1)
         {
            dailySlot.stackNum = 1;
            dailySlot.giid = 0;
            getGiftBtn.enabled = false;
         }
         changeMiniMapMsgBtnStyle();
      }
      
      [Bindable(event="propertyChange")]
      public function get vb_sport() : VBox
      {
         return this._896341983vb_sport;
      }
      
      private function _GameIntroPanel_DataGridColumn18_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _GameIntroPanel_DataGridColumn18 = _loc1_;
         _loc1_.dataField = "";
         _loc1_.width = 40;
         _loc1_.labelFunction = timeLimitCheck;
         _loc1_.itemRenderer = _GameIntroPanel_ClassFactory5_c();
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_GameIntroPanel_DataGridColumn18",_GameIntroPanel_DataGridColumn18);
         return _loc1_;
      }
      
      public function ___GameIntroPanel_Canvas25_show(param1:FlexEvent) : void
      {
         initTrolley();
      }
      
      private function levelSortCompareFunction(param1:Object, param2:Object) : int
      {
         var _loc3_:RegExp = /\d+/;
         var _loc4_:Number = Number(_loc3_.exec(param1.Level)[0]);
         var _loc5_:Number = Number(_loc3_.exec(param2.Level)[0]);
         if(_loc4_ > _loc5_)
         {
            return -1;
         }
         if(_loc4_ == _loc5_)
         {
            return 0;
         }
         return 1;
      }
      
      private function initPenalConfig() : void
      {
         var _loc1_:XML = null;
         var _loc2_:XMLList = null;
         var _loc3_:XML = null;
         var _loc4_:Boolean = false;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:Array = null;
         var _loc10_:Array = null;
         var _loc11_:Array = null;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:String = null;
         var _loc17_:String = null;
         var _loc18_:String = null;
         var _loc19_:String = null;
         var _loc20_:String = null;
         var _loc21_:String = null;
         var _loc22_:Object = null;
         var _loc23_:String = null;
         var _loc24_:Object = null;
         var _loc25_:Object = null;
         var _loc26_:Object = null;
         var _loc27_:Object = null;
         var _loc28_:Object = null;
         if(!panelConfig_load)
         {
            activityItemList = new ArrayCollection();
            enableActiveList = new ArrayCollection();
            levelUpActiveList = new ArrayCollection();
            earnMoneyActiveList = new ArrayCollection();
            equiptActiveList = new ArrayCollection();
            sportActiveList = new ArrayCollection();
            groundBossList = new ArrayCollection();
            airBossList = new ArrayCollection();
            fbList = new ArrayCollection();
            _loc1_ = new XML(xmlActivity);
            _loc2_ = _loc1_.Node;
            for each(_loc3_ in _loc2_.Activity)
            {
               _loc4_ = false;
               _loc5_ = new Object();
               _loc5_.idx = parseInt(_loc3_.@idx.toString());
               _loc5_.Name = _loc3_.@Name.toString();
               _loc5_.NPC = _loc3_.@NPC.toString();
               _loc5_.Level = _loc3_.@Level.toString();
               _loc5_.Line = _loc3_.@LINE.toString();
               _loc5_.Description = _loc3_.@Description.toString();
               _loc5_.url = ResManager.getIconUrl(parseInt(_loc3_.@resCode.toString()));
               _loc6_ = _loc3_.@NID.toString();
               _loc7_ = _loc3_.@MID.toString();
               _loc8_ = _loc3_.@HID.toString();
               _loc9_ = _loc6_ == "" ? new Array() : _loc6_.split(",");
               _loc10_ = _loc7_ == "" ? new Array() : _loc7_.split(",");
               _loc11_ = _loc8_ == "" ? new Array() : _loc8_.split(",");
               _loc12_ = 0;
               while(_loc12_ < _loc9_.length)
               {
                  _loc13_ = _loc12_ + 1;
                  _loc14_ = "|npc" + _loc13_ + "|";
                  _loc15_ = GameData.d[GamePredef.TBL_NPC][_loc9_[_loc12_]] ? GameData.d[GamePredef.TBL_NPC][_loc9_[_loc12_]].name : "系统";
                  _loc16_ = "<font color=\"#FF0000\"> <a href=\"event:L_N|" + _loc9_[_loc12_] + "|" + _loc15_ + "\">[" + _loc15_ + "]</a></font>";
                  _loc5_.Description = _loc5_.Description.replace(_loc14_,_loc16_);
                  _loc12_++;
               }
               _loc12_ = 0;
               while(_loc12_ < _loc10_.length)
               {
                  _loc13_ = _loc12_ + 1;
                  _loc17_ = "|map" + _loc13_ + "|";
                  _loc18_ = GameData.d[GamePredef.TBL_MAP][_loc10_[_loc12_]].name;
                  _loc19_ = "<font color=\"#0000FF\"> <a href=\"event:L_MA|" + _loc10_[_loc12_] + "|" + _loc18_ + "\">[" + _loc18_ + "]</a></font>";
                  _loc5_.Description = _loc5_.Description.replace(_loc17_,_loc19_);
                  _loc12_++;
               }
               _loc12_ = 0;
               while(_loc12_ < _loc11_.length)
               {
                  _loc13_ = _loc12_ + 1;
                  _loc20_ = "|help" + _loc13_ + "|";
                  _loc18_ = Language.ACTIVEPANEL_S[41];
                  _loc21_ = "<font color=\"#00FF00\"><a href=\"event:L_HELP|" + _loc11_[_loc12_] + "|" + _loc5_.Name + "\">[" + _loc18_ + "]</a></font>";
                  _loc5_.Description = _loc5_.Description.replace(_loc20_,_loc21_);
                  _loc12_++;
               }
               _loc5_.Time = TimeUtil.getTimeStr(_loc3_.@Time.toString());
               activityItemList.addItem(_loc5_);
            }
            for each(_loc3_ in _loc2_.Boss)
            {
               _loc22_ = new Object();
               _loc22_.id = parseInt(_loc3_.@NID.toString());
               _loc22_.level = _loc3_.@Level.toString();
               _loc22_.line = _loc3_.@LINE.toString();
               _loc22_.desc = _loc3_.@Description.toString();
               _loc22_.colorCode = GameData.d[GamePredef.TBL_NPC][_loc22_.id].colorCode;
               _loc22_.name = _loc3_.@Name.toString();
               _loc22_.url = ResManager.getResUrl(GameData.d[GamePredef.TBL_NPC][_loc22_.id].resCode);
               _loc22_.map = "";
               _loc22_.layer = GameData.d[GamePredef.TBL_NPC][_loc22_.id].layer;
               _loc23_ = _loc3_.@MID.toString();
               _loc10_ = _loc23_.split(",");
               _loc12_ = 0;
               while(_loc12_ < _loc10_.length)
               {
                  _loc13_ = _loc12_ + 1;
                  _loc17_ = "|map" + _loc13_ + "|";
                  _loc18_ = GameData.d[GamePredef.TBL_MAP][_loc10_[_loc12_]].name;
                  _loc19_ = "<font color=\"#87d708\"> <a href=\"event:L_MA|" + _loc10_[_loc12_] + "|" + _loc18_ + "\">[" + _loc18_ + "]</a></font>";
                  _loc22_.desc = _loc22_.desc.replace(_loc17_,_loc19_);
                  if(_loc12_ == 0)
                  {
                     _loc22_.map += _loc19_;
                  }
                  else
                  {
                     _loc22_.map += "," + _loc19_;
                  }
                  _loc12_++;
               }
               if(_loc22_.layer == 3)
               {
                  airBossList.addItem(_loc22_);
               }
               else
               {
                  groundBossList.addItem(_loc22_);
               }
            }
            for each(_loc3_ in _loc2_.FB)
            {
               _loc24_ = new Object();
               _loc24_.id = parseInt(_loc3_.@NID.toString());
               _loc24_.level = _loc3_.@Level.toString();
               _loc24_.desc = _loc3_.@Description.toString();
               _loc24_.name = _loc3_.@Name.toString();
               _loc24_.npcId = parseInt(_loc3_.@NID.toString());
               _loc24_.npcName = GameData.d[GamePredef.TBL_NPC][_loc24_.id].name;
               _loc24_.url = ResManager.getIconUrl(parseInt(_loc3_.@resCode.toString()));
               _loc24_.map = "";
               _loc16_ = "<font color=\"#fe6464\"> <a href=\"event:L_N|" + _loc24_.npcId + "|" + _loc24_.npcName + "\">[" + _loc24_.npcName + "]</a></font>";
               _loc24_.desc = _loc24_.desc.replace("|npc|",_loc16_);
               _loc24_.npcStr = _loc16_;
               _loc23_ = _loc3_.@MID.toString();
               _loc10_ = _loc23_.split(",");
               _loc12_ = 0;
               while(_loc12_ < _loc10_.length)
               {
                  _loc13_ = _loc12_ + 1;
                  _loc17_ = "|map" + _loc13_ + "|";
                  _loc18_ = GameData.d[GamePredef.TBL_MAP][_loc10_[_loc12_]].name;
                  _loc19_ = "<font color=\"#0000FF\"> <a href=\"event:L_MA|" + _loc10_[_loc12_] + "|" + _loc18_ + "\">[" + _loc18_ + "]</a></font>";
                  _loc24_.desc = _loc24_.desc.replace(_loc17_,_loc19_);
                  if(_loc12_ == 0)
                  {
                     _loc24_.map += _loc18_;
                  }
                  else
                  {
                     _loc24_.map += "," + _loc18_;
                  }
                  _loc12_++;
               }
               fbList.addItem(_loc24_);
            }
            for each(_loc3_ in _loc2_.LevelUp)
            {
               _loc25_ = new Object();
               _loc25_.name = _loc3_.@Name.toString();
               _loc25_.hard = parseInt(_loc3_.@Hard.toString());
               _loc25_.exp = parseInt(_loc3_.@Exp.toString());
               _loc25_.money = parseInt(_loc3_.@Money.toString());
               _loc25_.sx = parseInt(_loc3_.@Sx.toString());
               _loc25_.desc = _loc3_.@Description.toString();
               _loc25_.resCode = parseInt(_loc3_.@ResCode.toString());
               _loc25_.timeStr = TimeUtil.getTimeStr(_loc3_.@Time.toString());
               _loc6_ = _loc3_.@NID.toString();
               _loc9_ = _loc6_ == "" ? new Array() : _loc6_.split(",");
               _loc12_ = 0;
               while(_loc12_ < _loc9_.length)
               {
                  _loc13_ = _loc12_ + 1;
                  _loc14_ = "|npc" + _loc13_ + "|";
                  _loc15_ = GameData.d[GamePredef.TBL_NPC][_loc9_[_loc12_]].name;
                  _loc16_ = "<font color=\"#FF0000\"> <a href=\"event:L_N|" + _loc9_[_loc12_] + "|" + _loc15_ + "\">[" + _loc15_ + "]</a></font>";
                  _loc25_.desc = _loc25_.desc.replace(_loc14_,_loc16_);
                  _loc12_++;
               }
               levelUpActiveList.addItem(_loc25_);
            }
            for each(_loc3_ in _loc2_.EarnMoney)
            {
               _loc26_ = new Object();
               _loc26_.name = _loc3_.@Name.toString();
               _loc26_.hard = parseInt(_loc3_.@Hard.toString());
               _loc26_.exp = parseInt(_loc3_.@Exp.toString());
               _loc26_.money = parseInt(_loc3_.@Money.toString());
               _loc26_.resCode = parseInt(_loc3_.@ResCode.toString());
               _loc26_.desc = _loc3_.@Description.toString();
               _loc26_.timeStr = TimeUtil.getTimeStr(_loc3_.@Time.toString());
               _loc6_ = _loc3_.@NID.toString();
               _loc9_ = _loc6_ == "" ? new Array() : _loc6_.split(",");
               _loc12_ = 0;
               while(_loc12_ < _loc9_.length)
               {
                  _loc13_ = _loc12_ + 1;
                  _loc14_ = "|npc" + _loc13_ + "|";
                  _loc15_ = GameData.d[GamePredef.TBL_NPC][_loc9_[_loc12_]].name;
                  _loc16_ = "<font color=\"#FF0000\"> <a href=\"event:L_N|" + _loc9_[_loc12_] + "|" + _loc15_ + "\">[" + _loc15_ + "]</a></font>";
                  _loc26_.desc = _loc26_.desc.replace(_loc14_,_loc16_);
                  _loc12_++;
               }
               earnMoneyActiveList.addItem(_loc26_);
            }
            for each(_loc3_ in _loc2_.Treasure)
            {
               _loc27_ = new Object();
               _loc27_.name = _loc3_.@Name.toString();
               _loc27_.hard = parseInt(_loc3_.@Hard.toString());
               _loc27_.quality = parseInt(_loc3_.@Quality.toString());
               _loc27_.exp = parseInt(_loc3_.@Exp.toString());
               _loc27_.sx = parseInt(_loc3_.@Sx.toString());
               _loc27_.resCode = parseInt(_loc3_.@ResCode.toString());
               _loc27_.desc = _loc3_.@Description.toString();
               _loc27_.timeStr = TimeUtil.getTimeStr(_loc3_.@Time.toString());
               _loc7_ = _loc3_.@MID.toString();
               _loc6_ = _loc3_.@NID.toString();
               _loc9_ = _loc6_ == "" ? new Array() : _loc6_.split(",");
               _loc10_ = _loc7_ == "" ? new Array() : _loc7_.split(",");
               _loc12_ = 0;
               while(_loc12_ < _loc9_.length)
               {
                  _loc13_ = _loc12_ + 1;
                  _loc14_ = "|npc" + _loc13_ + "|";
                  _loc15_ = GameData.d[GamePredef.TBL_NPC][_loc9_[_loc12_]].name;
                  _loc16_ = "<font color=\"#FF0000\"> <a href=\"event:L_N|" + _loc9_[_loc12_] + "|" + _loc15_ + "\">[" + _loc15_ + "]</a></font>";
                  _loc27_.desc = _loc27_.desc.replace(_loc14_,_loc16_);
                  _loc12_++;
               }
               _loc12_ = 0;
               while(_loc12_ < _loc10_.length)
               {
                  _loc13_ = _loc12_ + 1;
                  _loc17_ = "|map" + _loc13_ + "|";
                  _loc18_ = GameData.d[GamePredef.TBL_MAP][_loc10_[_loc12_]].name;
                  _loc19_ = "<font color=\"#0000FF\"> <a href=\"event:L_MA|" + _loc10_[_loc12_] + "|" + _loc18_ + "\">[" + _loc18_ + "]</a></font>";
                  _loc27_.desc = _loc27_.desc.replace(_loc17_,_loc19_);
                  _loc12_++;
               }
               equiptActiveList.addItem(_loc27_);
            }
            for each(_loc3_ in _loc2_.Sports)
            {
               _loc28_ = new Object();
               _loc28_.name = _loc3_.@Name.toString();
               _loc28_.hard = parseInt(_loc3_.@Hard.toString());
               _loc28_.quality = parseInt(_loc3_.@Quality.toString());
               _loc28_.money = parseInt(_loc3_.@Money.toString());
               _loc28_.sx = parseInt(_loc3_.@Sx.toString());
               _loc28_.resCode = parseInt(_loc3_.@ResCode.toString());
               _loc28_.desc = _loc3_.@Description.toString();
               _loc28_.timeStr = TimeUtil.getTimeStr(_loc3_.@Time.toString());
               _loc7_ = _loc3_.@MID.toString();
               _loc6_ = _loc3_.@NID.toString();
               _loc9_ = _loc6_ == "" ? new Array() : _loc6_.split(",");
               _loc10_ = _loc7_ == "" ? new Array() : _loc7_.split(",");
               _loc12_ = 0;
               while(_loc12_ < _loc9_.length)
               {
                  _loc13_ = _loc12_ + 1;
                  _loc14_ = "|npc" + _loc13_ + "|";
                  _loc15_ = GameData.d[GamePredef.TBL_NPC][_loc9_[_loc12_]].name;
                  _loc16_ = "<font color=\"#FF0000\"> <a href=\"event:L_N|" + _loc9_[_loc12_] + "|" + _loc15_ + "\">[" + _loc15_ + "]</a></font>";
                  _loc28_.desc = _loc28_.desc.replace(_loc14_,_loc16_);
                  _loc12_++;
               }
               _loc12_ = 0;
               while(_loc12_ < _loc10_.length)
               {
                  _loc13_ = _loc12_ + 1;
                  _loc17_ = "|map" + _loc13_ + "|";
                  _loc18_ = GameData.d[GamePredef.TBL_MAP][_loc10_[_loc12_]].name;
                  _loc19_ = "<font color=\"#0000FF\"> <a href=\"event:L_MA|" + _loc10_[_loc12_] + "|" + _loc18_ + "\">[" + _loc18_ + "]</a></font>";
                  _loc28_.desc = _loc28_.desc.replace(_loc17_,_loc19_);
                  _loc12_++;
               }
               sportActiveList.addItem(_loc28_);
            }
            panelConfig_load = true;
            DG_active.dataProvider = activityItemList;
            DG_boss.dataProvider = groundBossList;
            DG_fb.dataProvider = fbList;
         }
         initDefaultViews();
      }
      
      private function _GameIntroPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _GameIntroPanel_DataGridColumn2 = _loc1_;
         _loc1_.width = 100;
         _loc1_.dataField = "NPC";
         BindingManager.executeBindings(this,"_GameIntroPanel_DataGridColumn2",_GameIntroPanel_DataGridColumn2);
         return _loc1_;
      }
      
      public function ___GameIntroPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function set vb_sport(param1:VBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._896341983vb_sport;
         if(_loc2_ !== param1)
         {
            this._896341983vb_sport = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vb_sport",_loc2_,param1));
         }
      }
      
      private function _GameIntroPanel_ClassFactory11_c() : ClassFactory
      {
         var _loc1_:ClassFactory = null;
         _loc1_ = new ClassFactory();
         _loc1_.generator = RendererItemArray;
         return _loc1_;
      }
      
      private function _GameIntroPanel_DataGridColumn29_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _GameIntroPanel_DataGridColumn29 = _loc1_;
         _loc1_.sortable = true;
         _loc1_.sortCompareFunction = sortConsumeAwardList;
         _loc1_.dataField = "key";
         _loc1_.width = 200;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_GameIntroPanel_DataGridColumn29",_GameIntroPanel_DataGridColumn29);
         return _loc1_;
      }
      
      private function _GameIntroPanel_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = null;
         _loc1_ = new ClassFactory();
         _loc1_.generator = GameIntroPanel_inlineComponent2;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      private function get groundBossList() : ArrayCollection
      {
         return this._570251182groundBossList;
      }
      
      public function set getConsumeAwardBtn1(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._411634732getConsumeAwardBtn1;
         if(_loc2_ !== param1)
         {
            this._411634732getConsumeAwardBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"getConsumeAwardBtn1",_loc2_,param1));
         }
      }
      
      public function set getDiscountBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1176746971getDiscountBtn;
         if(_loc2_ !== param1)
         {
            this._1176746971getDiscountBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"getDiscountBtn",_loc2_,param1));
         }
      }
      
      public function set getConsumeAwardBtn2(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._411634733getConsumeAwardBtn2;
         if(_loc2_ !== param1)
         {
            this._411634733getConsumeAwardBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"getConsumeAwardBtn2",_loc2_,param1));
         }
      }
      
      public function set getConsumeAwardBtn3(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._411634734getConsumeAwardBtn3;
         if(_loc2_ !== param1)
         {
            this._411634734getConsumeAwardBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"getConsumeAwardBtn3",_loc2_,param1));
         }
      }
      
      public function set getConsumeAwardBtn4(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._411634735getConsumeAwardBtn4;
         if(_loc2_ !== param1)
         {
            this._411634735getConsumeAwardBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"getConsumeAwardBtn4",_loc2_,param1));
         }
      }
      
      public function set getConsumeAwardBtn5(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._411634736getConsumeAwardBtn5;
         if(_loc2_ !== param1)
         {
            this._411634736getConsumeAwardBtn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"getConsumeAwardBtn5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get xmlActivity() : XML
      {
         return this._58843066xmlActivity;
      }
      
      public function __actBtn1_click(param1:MouseEvent) : void
      {
         getActAward(param1);
      }
      
      private function set nextConti(param1:int) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1191222340nextConti;
         if(_loc2_ !== param1)
         {
            this._1191222340nextConti = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextConti",_loc2_,param1));
         }
      }
      
      private function onGetFestToday(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(param1.id > 0)
         {
            _loc2_ = GameData.d[GamePredef.TBL_FEAST][param1.id];
            if(Boolean(param1.data) && Boolean(param1.data.aw))
            {
               _loc2_ = param1.data;
            }
            if(_loc2_)
            {
               if(param1.enable == 1)
               {
                  festSlot.giid = _loc2_.aw;
                  getFestBtn.enabled = true;
               }
               ta_festDesc.text = _loc2_.inf;
               ta_festDesc.visible = true;
               ta_festDesc.content.verticalScrollPolicy = "off";
               ta_festDesc.content.horizontalScrollPolicy = "off";
               currentFestTxt.text = Language.ACTIVEPANEL_S[4].toString().replace("{festv.na}",_loc2_.na);
               currentFestTxt.y = 230;
               Btn_AllFest.y = 228;
               lb_festdesc.y = 320;
            }
            else
            {
               currentFestTxt.text = Language.ACTIVEPANEL_S[5];
               currentFestTxt.y = 261;
               Btn_AllFest.y = 260;
               lb_festdesc.y = 314;
            }
         }
         else
         {
            ta_festDesc.visible = false;
            currentFestTxt.text = Language.ACTIVEPANEL_S[5];
            currentFestTxt.y = 261;
            Btn_AllFest.y = 260;
            lb_festdesc.y = 314;
         }
      }
      
      public function set xmlActivity(param1:XML) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._58843066xmlActivity;
         if(_loc2_ !== param1)
         {
            this._58843066xmlActivity = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xmlActivity",_loc2_,param1));
         }
      }
      
      private function initFestToday() : void
      {
         _core.remote.call("getCurrentFeast",new Responder(onGetFestToday));
      }
      
      public function onSerchForGift(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         if(param1)
         {
            _itemIcon = new Image();
            _loc2_ = _core.getTemplateData(GamePredef.TBL_ITEM_TEMPLATE,2059,false);
            if(_loc2_)
            {
               _itemIcon.source = ResManager.getIconUrl(_loc2_.iconCode);
               ResManager.setColorCode(_itemIcon,_loc2_.colorCode);
               i8.addChild(_itemIcon);
            }
         }
      }
      
      public function __DG_active_itemClick(param1:ListEvent) : void
      {
         onActItemClickHandler(param1);
      }
      
      private function onDiaryItemClickHandler(param1:ListEvent) : void
      {
      }
      
      private function _GameIntroPanel_RadioButtonGroup1_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = null;
         _loc1_ = new RadioButtonGroup();
         rgActives = _loc1_;
         _loc1_.addEventListener("itemClick",__rgActives_itemClick);
         _loc1_.initialized(this,"rgActives");
         return _loc1_;
      }
      
      public function set noticeBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1269814196noticeBtn0;
         if(_loc2_ !== param1)
         {
            this._1269814196noticeBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"noticeBtn0",_loc2_,param1));
         }
      }
      
      public function set noticeBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1269814195noticeBtn1;
         if(_loc2_ !== param1)
         {
            this._1269814195noticeBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"noticeBtn1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get actAward0() : ItemSlot
      {
         return this._939851611actAward0;
      }
      
      [Bindable(event="propertyChange")]
      public function get actAward1() : ItemSlot
      {
         return this._939851610actAward1;
      }
      
      [Bindable(event="propertyChange")]
      public function get actAward2() : ItemSlot
      {
         return this._939851609actAward2;
      }
      
      [Bindable(event="propertyChange")]
      public function get actAward3() : ItemSlot
      {
         return this._939851608actAward3;
      }
      
      [Bindable(event="propertyChange")]
      public function get actAward4() : ItemSlot
      {
         return this._939851607actAward4;
      }
      
      private function carItemShow(param1:int = 0) : void
      {
         var _loc5_:Object = null;
         carStyle = param1;
         selectACar.selected = param1 == 0;
         selectBCar.selected = param1 == 1;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:ArrayCollection = new ArrayCollection();
         for each(_loc5_ in pointsCar)
         {
            if(_loc5_)
            {
               if(!_loc2_ && _loc5_.group == 0)
               {
                  _loc2_ = true;
               }
               if(!_loc3_ && _loc5_.group == 1)
               {
                  _loc3_ = true;
               }
               if(_loc5_.group == null || _loc5_.group == carStyle)
               {
                  _loc4_.addItem(_loc5_);
               }
            }
         }
         if(_loc2_ && _loc3_)
         {
            selectACar.visible = true;
            selectBCar.visible = true;
            selectACar.enabled = true;
            selectBCar.enabled = true;
         }
         else
         {
            selectACar.visible = false;
            selectBCar.visible = false;
            selectACar.enabled = false;
            selectBCar.enabled = false;
         }
         trolleyDG.dataProvider = _loc4_;
      }
      
      [Bindable(event="propertyChange")]
      public function get getConsumeAwardBtn() : BasicDelayButton
      {
         return this._1233647451getConsumeAwardBtn;
      }
      
      private function itemShow(param1:int = 0) : void
      {
         var _loc5_:Object = null;
         itemShowStyle = param1;
         selectA.selected = param1 == 0;
         selectB.selected = param1 == 1;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:ArrayCollection = new ArrayCollection();
         for each(_loc5_ in points)
         {
            if(_loc5_)
            {
               if(!_loc2_ && _loc5_.group == 0)
               {
                  _loc2_ = true;
               }
               if(!_loc3_ && _loc5_.group == 1)
               {
                  _loc3_ = true;
               }
               if(_loc5_.group == null || _loc5_.group == itemShowStyle)
               {
                  _loc4_.addItem(_loc5_);
               }
            }
         }
         if(_loc2_ && _loc3_)
         {
            selectA.visible = true;
            selectB.visible = true;
            selectA.enabled = true;
            selectB.enabled = true;
         }
         else
         {
            selectA.visible = false;
            selectB.visible = false;
            selectA.enabled = false;
            selectB.enabled = false;
         }
         cashDG.dataProvider = _loc4_;
      }
      
      private function _GameIntroPanel_DataGridColumn16_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _GameIntroPanel_DataGridColumn16 = _loc1_;
         _loc1_.dataField = "binded";
         _loc1_.labelFunction = pointAwardBinded;
         _loc1_.width = 80;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_GameIntroPanel_DataGridColumn16",_GameIntroPanel_DataGridColumn16);
         return _loc1_;
      }
      
      private function set groundBossList(param1:ArrayCollection) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._570251182groundBossList;
         if(_loc2_ !== param1)
         {
            this._570251182groundBossList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"groundBossList",_loc2_,param1));
         }
      }
      
      private function timeLimitCheck(param1:Object, param2:DataGridColumn) : String
      {
         return param1.start == undefined || param1.start == 0 ? Language.GAMEPREDEF_S[1] : Language.GAMEPREDEF_S[0];
      }
      
      [Bindable(event="propertyChange")]
      public function get factor1() : RoundedLabel
      {
         return this._1091882814factor1;
      }
      
      [Bindable(event="propertyChange")]
      public function get factor2() : RoundedLabel
      {
         return this._1091882813factor2;
      }
      
      private function changeActivesArr(param1:ItemClickEvent) : void
      {
         var _loc2_:* = undefined;
         if(param1.index == 0)
         {
            DG_active.dataProvider = activityItemList;
         }
         else
         {
            enableActiveList.removeAll();
            for(_loc2_ in activityItemList)
            {
               if(activityItemList.getItemAt(_loc2_).Level <= _core.player.level)
               {
                  enableActiveList.addItem(activityItemList.getItemAt(_loc2_));
               }
            }
            DG_active.dataProvider = enableActiveList;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get factor0() : RoundedLabel
      {
         return this._1091882815factor0;
      }
      
      private function _GameIntroPanel_DataGridColumn27_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _GameIntroPanel_DataGridColumn27 = _loc1_;
         _loc1_.sortable = true;
         _loc1_.sortCompareFunction = sortConsumeAwardList;
         _loc1_.dataField = "key";
         _loc1_.width = 200;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_GameIntroPanel_DataGridColumn27",_GameIntroPanel_DataGridColumn27);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get factor4() : RoundedLabel
      {
         return this._1091882811factor4;
      }
      
      public function __DG_fb_itemClick(param1:ListEvent) : void
      {
         onFbItemClickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get factor3() : RoundedLabel
      {
         return this._1091882812factor3;
      }
      
      public function __getDiscountBtn_click(param1:MouseEvent) : void
      {
         buyDiscountGift();
      }
      
      public function __getConsumeAwardBtn5_click(param1:MouseEvent) : void
      {
         getStageConsumeAward(5);
      }
      
      public function ___GameIntroPanel_Canvas45_creationComplete(param1:FlexEvent) : void
      {
         loadSystemInfo();
      }
      
      private function initDailyAct() : void
      {
         _core.remote.call("getTodayOnlineTime",new Responder(onGetTodayOnlineTime));
      }
      
      private function _GameIntroPanel_DataGridColumn38_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _GameIntroPanel_DataGridColumn38 = _loc1_;
         _loc1_.width = 65;
         _loc1_.dataField = "_numStr";
         BindingManager.executeBindings(this,"_GameIntroPanel_DataGridColumn38",_GameIntroPanel_DataGridColumn38);
         return _loc1_;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         closeTimer();
         if(param1)
         {
            initLoginAward();
            if(vs.selectedIndex == 9)
            {
               initDailyAct();
            }
         }
      }
      
      public function autoClickForWordMsg(param1:int) : void
      {
         var _loc2_:* = undefined;
         tabBtnClick(0);
         for(_loc2_ in activityItemList)
         {
            if(activityItemList.getItemAt(_loc2_).idx == param1)
            {
               DG_active.selectedIndex = _loc2_;
               DG_active.scrollToIndex(_loc2_);
               activityDescription = "<font color=\'#FFFFFF\'>" + DG_active.selectedItem.Description + "</font>";
               break;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get actBtn2() : BasicGlowButton
      {
         return this._1162960632actBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get actBtn3() : BasicGlowButton
      {
         return this._1162960631actBtn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get DG_diary() : DataGrid
      {
         return this._344383225DG_diary;
      }
      
      public function __rgActives_itemClick(param1:ItemClickEvent) : void
      {
         changeActivesArr(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get actBtn1() : BasicGlowButton
      {
         return this._1162960633actBtn1;
      }
      
      public function __selectBCar_click(param1:MouseEvent) : void
      {
         carItemShow(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get actBtn4() : BasicGlowButton
      {
         return this._1162960630actBtn4;
      }
      
      public function set ti_tz(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._110351504ti_tz;
         if(_loc2_ !== param1)
         {
            this._110351504ti_tz = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ti_tz",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get actBtn0() : BasicGlowButton
      {
         return this._1162960634actBtn0;
      }
      
      private function _GameIntroPanel_DataGridColumn14_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _GameIntroPanel_DataGridColumn14 = _loc1_;
         _loc1_.dataField = "key";
         _loc1_.width = 110;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_GameIntroPanel_DataGridColumn14",_GameIntroPanel_DataGridColumn14);
         return _loc1_;
      }
      
      private function doBuyPet(param1:Boolean) : void
      {
         var bagpanel:Object = null;
         var view:ConsumPanel = null;
         var gold:int = 0;
         var func:Function = null;
         var showString:String = null;
         var result:Boolean = param1;
         if(result)
         {
            if(!seletedItem.shopSlot)
            {
               return;
            }
            bagpanel = _core.view.getUI(ViewManager.PANEL_BAG);
            if(Boolean(bagpanel) && Boolean(bagpanel.goldSelected))
            {
               bagpanel.goldLockFlag = false;
            }
            view = ConsumPanel(_core.view.getUI(ViewManager.MAIN_CONSUMP));
            gold = int(seletedItem.shopSlot.gold);
            if(seletedItem.shopSlot.id)
            {
               func = function(param1:CloseEvent):void
               {
                  if(param1.detail == Alert.YES)
                  {
                     _core.remote.call("buySystemItemClient",new Responder(onBuyDisc),seletedItem.shopSlot.id,1);
                  }
               };
               showString = Language.ACTIVEPANEL_S[2];
               showString = showString.replace("{gold}",gold);
               showString = showString.replace("{selectedName}",selectedName);
               Alert.show(showString,Language.ACTIVEPANEL_S[3],Alert.YES | Alert.NO,this,func);
            }
         }
      }
      
      public function ___GameIntroPanel_RoundedButton3_click(param1:MouseEvent) : void
      {
         _core.view.changeVisible(ViewManager.PANEL_EXCHANGE);
      }
      
      [Bindable(event="propertyChange")]
      public function get vb_eqt() : VBox
      {
         return this._823291595vb_eqt;
      }
      
      public function set actAward0(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._939851611actAward0;
         if(_loc2_ !== param1)
         {
            this._939851611actAward0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actAward0",_loc2_,param1));
         }
      }
      
      private function set petItemList(param1:ArrayCollection) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._32480112petItemList;
         if(_loc2_ !== param1)
         {
            this._32480112petItemList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petItemList",_loc2_,param1));
         }
      }
      
      public function set actAward2(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._939851609actAward2;
         if(_loc2_ !== param1)
         {
            this._939851609actAward2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actAward2",_loc2_,param1));
         }
      }
      
      private function onGetFlagDisc(param1:Object) : void
      {
         if(!param1 || param1 <= 0)
         {
            getDiscountBtn.enabled = false;
            return;
         }
         var _loc2_:Object = GameData.d[GamePredef.TBL_PLAN][param1];
         if(_loc2_)
         {
            DiscountSlot.type = _loc2_.ti;
            DiscountSlot.giid = _loc2_.ii;
            DiscountSlot.stackNum = _loc2_.n;
            getDiscountBtn.enabled = true;
         }
      }
      
      public function set getConsumeAwardBtn(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1233647451getConsumeAwardBtn;
         if(_loc2_ !== param1)
         {
            this._1233647451getConsumeAwardBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"getConsumeAwardBtn",_loc2_,param1));
         }
      }
      
      public function set actAward1(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._939851610actAward1;
         if(_loc2_ !== param1)
         {
            this._939851610actAward1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actAward1",_loc2_,param1));
         }
      }
      
      private function _GameIntroPanel_DataGridColumn25_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _GameIntroPanel_DataGridColumn25 = _loc1_;
         _loc1_.sortable = true;
         _loc1_.sortCompareFunction = sortConsumeAwardList;
         _loc1_.dataField = "key";
         _loc1_.width = 200;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_GameIntroPanel_DataGridColumn25",_GameIntroPanel_DataGridColumn25);
         return _loc1_;
      }
      
      public function set actAward4(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._939851607actAward4;
         if(_loc2_ !== param1)
         {
            this._939851607actAward4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actAward4",_loc2_,param1));
         }
      }
      
      public function set actAward3(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._939851608actAward3;
         if(_loc2_ !== param1)
         {
            this._939851608actAward3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actAward3",_loc2_,param1));
         }
      }
      
      private function buyContiGift() : void
      {
         var bagpanel:* = _core.view.getUI(ViewManager.PANEL_BAG);
         var func:Function = function(param1:String):void
         {
            _core.remote.call("unlockMoney",new Responder(doBuyContiGift),MD5.hash(param1));
         };
         if(bagpanel.goldDisable())
         {
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],func);
         }
         else
         {
            doBuyContiGift(true);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get consumeAcMsg() : String
      {
         return this._885700253consumeAcMsg;
      }
      
      public function ___GameIntroPanel_Canvas27_show(param1:FlexEvent) : void
      {
         initConsumeAward();
      }
      
      [Bindable(event="propertyChange")]
      private function get activityDescription() : String
      {
         return this._975828627activityDescription;
      }
      
      [Bindable(event="propertyChange")]
      private function get continueDay() : int
      {
         return this._1132705419continueDay;
      }
      
      private function _GameIntroPanel_DataGridColumn36_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = null;
         _loc1_ = new DataGridColumn();
         _GameIntroPanel_DataGridColumn36 = _loc1_;
         _loc1_.width = 150;
         _loc1_.dataField = "name";
         _loc1_.itemRenderer = _GameIntroPanel_ClassFactory15_c();
         BindingManager.executeBindings(this,"_GameIntroPanel_DataGridColumn36",_GameIntroPanel_DataGridColumn36);
         return _loc1_;
      }
      
      public function __tabBtn4_click(param1:MouseEvent) : void
      {
         tabBtnClick(4);
      }
      
      public function set factor0(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1091882815factor0;
         if(_loc2_ !== param1)
         {
            this._1091882815factor0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"factor0",_loc2_,param1));
         }
      }
      
      private function getLoginGift() : void
      {
         if(Boolean(dailySlot.giid) && dailySlot.giid > 0)
         {
            _core.remote.call("getLoginAward",new Responder(onGetDailyAward));
         }
      }
      
      public function __ti_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      public function set factor2(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1091882813factor2;
         if(_loc2_ !== param1)
         {
            this._1091882813factor2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"factor2",_loc2_,param1));
         }
      }
      
      public function set factor3(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1091882812factor3;
         if(_loc2_ !== param1)
         {
            this._1091882812factor3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"factor3",_loc2_,param1));
         }
      }
      
      public function set factor4(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1091882811factor4;
         if(_loc2_ !== param1)
         {
            this._1091882811factor4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"factor4",_loc2_,param1));
         }
      }
      
      public function set factor1(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1091882814factor1;
         if(_loc2_ !== param1)
         {
            this._1091882814factor1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"factor1",_loc2_,param1));
         }
      }
      
      private function doBuyContiGift(param1:Boolean) : void
      {
         var bagpanel:Object = null;
         var shopSlot:Object = null;
         var i:int = 0;
         var func:Function = null;
         var item:Object = null;
         var showString:String = null;
         var result:Boolean = param1;
         if(result)
         {
            bagpanel = _core.view.getUI(ViewManager.PANEL_BAG);
            if(Boolean(bagpanel) && Boolean(bagpanel.goldSelected))
            {
               bagpanel.goldLockFlag = false;
            }
            shopSlot = new Object();
            i = 0;
            while(i <= GameData.d[GamePredef.TBL_SHOP_SLOT].length)
            {
               if(Boolean(GameData.d[GamePredef.TBL_SHOP_SLOT][i] && GameData.d[GamePredef.TBL_SHOP_SLOT][i].type == contiSlot.type && GameData.d[GamePredef.TBL_SHOP_SLOT][i].itemId == contiSlot.giid && GameData.d[GamePredef.TBL_SHOP_SLOT][i].st != 5 && GameData.d[GamePredef.TBL_SHOP_SLOT][i].money <= 0) && Boolean(GameData.d[GamePredef.TBL_SHOP_SLOT][i].gold > 0) && GameData.d[GamePredef.TBL_SHOP_SLOT][i].sid != GamePredef.VIP_SHOP_ID)
               {
                  shopSlot = GameData.d[GamePredef.TBL_SHOP_SLOT][i];
                  break;
               }
               i++;
            }
            if(shopSlot.id)
            {
               func = function(param1:CloseEvent):void
               {
                  if(param1.detail == Alert.YES)
                  {
                     _core.remote.call("buyContiGift",new Responder(onBuyConti),shopSlot.id);
                  }
               };
               item = GameData.d[contiSlot.type][contiSlot.giid];
               if(item)
               {
                  showString = Language.ACTIVEPANEL_S[7];
                  if(shopSlot.gold > 0)
                  {
                     showString = showString.replace("{shopSlot.gold}",shopSlot.gold);
                     showString = showString.replace("{item.name}",item.name);
                  }
                  else
                  {
                     showString = showString.replace("{shopSlot.gold}",item.gold);
                     showString = showString.replace("{item.name}",item.name);
                  }
                  Alert.show(showString,"",Alert.YES | Alert.NO,this,func);
               }
            }
         }
      }
      
      public function showStagePlatform(param1:int) : void
      {
         vs_stageConsume.selectedIndex = param1;
      }
      
      private function _GameIntroPanel_bindingsSetup() : Array
      {
         var result:Array = null;
         var binding:Binding = null;
         result = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            panelTitle.text = param1;
         },"panelTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn2.label = param1;
         },"tabBtn2.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn3.label = param1;
         },"tabBtn3.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn4.label = param1;
         },"tabBtn4.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn5.label = param1;
         },"tabBtn5.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn6.label = param1;
         },"tabBtn6.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn7.label = param1;
         },"tabBtn7.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn8.label = param1;
         },"tabBtn8.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn9.label = param1;
         },"tabBtn9.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[42];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn10.label = param1;
         },"tabBtn10.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_RadioButton1.label = param1;
         },"_GameIntroPanel_RadioButton1.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_RadioButton2.label = param1;
         },"_GameIntroPanel_RadioButton2.label");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn1.headerText = param1;
         },"_GameIntroPanel_DataGridColumn1.headerText");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn2.headerText = param1;
         },"_GameIntroPanel_DataGridColumn2.headerText");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[29];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn3.headerText = param1;
         },"_GameIntroPanel_DataGridColumn3.headerText");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn4.headerText = param1;
         },"_GameIntroPanel_DataGridColumn4.headerText");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[30];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn5.headerText = param1;
         },"_GameIntroPanel_DataGridColumn5.headerText");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = activityDescription;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_LinkTextArea1.htmlText = param1;
         },"_GameIntroPanel_LinkTextArea1.htmlText");
         result[19] = binding;
         binding = new Binding(this,function():Object
         {
            return petItemList;
         },function(param1:Object):void
         {
            petDataList.dataProvider = param1;
         },"petDataList.dataProvider");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_RoundedLabel2.text = param1;
         },"_GameIntroPanel_RoundedLabel2.text");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_RoundedLabel3.text = param1;
         },"_GameIntroPanel_RoundedLabel3.text");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_RoundedLabel4.text = param1;
         },"_GameIntroPanel_RoundedLabel4.text");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_RoundedLabel5.text = param1;
         },"_GameIntroPanel_RoundedLabel5.text");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_RoundedLabel6.text = param1;
         },"_GameIntroPanel_RoundedLabel6.text");
         result[25] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.PET_PENTAGON;
         },function(param1:Object):void
         {
            _GameIntroPanel_Image4.source = param1;
         },"_GameIntroPanel_Image4.source");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARSELECTCANVAS_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            factor0.text = param1;
         },"factor0.text");
         result[27] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            factor0.filters = param1;
         },"factor0.filters");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARSELECTCANVAS_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            factor1.text = param1;
         },"factor1.text");
         result[29] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            factor1.filters = param1;
         },"factor1.filters");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARSELECTCANVAS_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            factor2.text = param1;
         },"factor2.text");
         result[31] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            factor2.filters = param1;
         },"factor2.filters");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARSELECTCANVAS_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            factor3.text = param1;
         },"factor3.text");
         result[33] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            factor3.filters = param1;
         },"factor3.filters");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            /*
             * Decompilation error
             * Code may be obfuscated
             * Tip: You can try enabling "Deobfuscate code" option in Settings
             * Error type: OutOfMemoryError (Java heap space)
             */
            throw new flash.errors.IllegalOperationError("Not decompiled due to error");
         },function(param1:String):void
         {
            factor4.text = param1;
         },"factor4.text");
         result[35] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            factor4.filters = param1;
         },"factor4.filters");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_RoundedLabel12.text = param1;
         },"_GameIntroPanel_RoundedLabel12.text");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_RoundedLabel12.toolTip = param1;
         },"_GameIntroPanel_RoundedLabel12.toolTip");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_BasicGlowButton12.label = param1;
         },"_GameIntroPanel_BasicGlowButton12.label");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_BasicGlowButton13.label = param1;
         },"_GameIntroPanel_BasicGlowButton13.label");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn6.headerText = param1;
         },"_GameIntroPanel_DataGridColumn6.headerText");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn7.headerText = param1;
         },"_GameIntroPanel_DataGridColumn7.headerText");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn8.headerText = param1;
         },"_GameIntroPanel_DataGridColumn8.headerText");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn9.headerText = param1;
         },"_GameIntroPanel_DataGridColumn9.headerText");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn10.headerText = param1;
         },"_GameIntroPanel_DataGridColumn10.headerText");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn11.headerText = param1;
         },"_GameIntroPanel_DataGridColumn11.headerText");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn12.headerText = param1;
         },"_GameIntroPanel_DataGridColumn12.headerText");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn13.headerText = param1;
         },"_GameIntroPanel_DataGridColumn13.headerText");
         result[48] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[29];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_RadioButton3.label = param1;
         },"_GameIntroPanel_RadioButton3.label");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[30];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_RadioButton4.label = param1;
         },"_GameIntroPanel_RadioButton4.label");
         result[50] = binding;
         binding = new Binding(this,function():Object
         {
            return flListItemArr;
         },function(param1:Object):void
         {
            List_fl.dataProvider = param1;
         },"List_fl.dataProvider");
         result[51] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            getGiftBtn.label = param1;
         },"getGiftBtn.label");
         result[52] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            getDiscountBtn.label = param1;
         },"getDiscountBtn.label");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            getContiBtn.label = param1;
         },"getContiBtn.label");
         result[54] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            getFestBtn.label = param1;
         },"getFestBtn.label");
         result[55] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_IntroText1.text = param1;
         },"_GameIntroPanel_IntroText1.text");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_IntroText2.text = param1;
         },"_GameIntroPanel_IntroText2.text");
         result[57] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_ITEM_TEMPLATE;
         },function(param1:int):void
         {
            dailySlot.type = param1;
         },"dailySlot.type");
         result[58] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_ITEM_TEMPLATE;
         },function(param1:int):void
         {
            festSlot.type = param1;
         },"festSlot.type");
         result[59] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            Btn_AllFest.label = param1;
         },"Btn_AllFest.label");
         result[60] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lb_festdesc.text = param1;
         },"lb_festdesc.text");
         result[61] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[13].toString().replace("{continueDay}",continueDay);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DescriptionLabel3.text = param1;
         },"_GameIntroPanel_DescriptionLabel3.text");
         result[62] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[14].toString().replace("{nextConti}",nextConti);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DescriptionLabel4.text = param1;
         },"_GameIntroPanel_DescriptionLabel4.text");
         result[63] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_IntroText4.text = param1;
         },"_GameIntroPanel_IntroText4.text");
         result[64] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_BasicTxtButton1.label = param1;
         },"_GameIntroPanel_BasicTxtButton1.label");
         result[65] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_BasicTxtButton2.label = param1;
         },"_GameIntroPanel_BasicTxtButton2.label");
         result[66] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_BasicTxtButton3.label = param1;
         },"_GameIntroPanel_BasicTxtButton3.label");
         result[67] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_BasicTxtButton4.label = param1;
         },"_GameIntroPanel_BasicTxtButton4.label");
         result[68] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.AWARDALL_S[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            getAwardsByCode.label = param1;
         },"getAwardsByCode.label");
         result[69] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.AWARDALL_S[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            getAwardsFromNet.label = param1;
         },"getAwardsFromNet.label");
         result[70] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.SYSTEMSHOPPANEL_S[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_BasicDelayButton3.toolTip = param1;
         },"_GameIntroPanel_BasicDelayButton3.toolTip");
         result[71] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.AWARDALL_S[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_BasicDelayButton3.label = param1;
         },"_GameIntroPanel_BasicDelayButton3.label");
         result[72] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.AWARDALL_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_IntroText5.text = param1;
         },"_GameIntroPanel_IntroText5.text");
         result[73] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.AWARDALL_S[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_IntroText6.text = param1;
         },"_GameIntroPanel_IntroText6.text");
         result[74] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.AWARDALL_S[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_IntroText7.text = param1;
         },"_GameIntroPanel_IntroText7.text");
         result[75] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn14.headerText = param1;
         },"_GameIntroPanel_DataGridColumn14.headerText");
         result[76] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[35];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn15.headerText = param1;
         },"_GameIntroPanel_DataGridColumn15.headerText");
         result[77] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[55];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn16.headerText = param1;
         },"_GameIntroPanel_DataGridColumn16.headerText");
         result[78] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn17.headerText = param1;
         },"_GameIntroPanel_DataGridColumn17.headerText");
         result[79] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[59];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn18.headerText = param1;
         },"_GameIntroPanel_DataGridColumn18.headerText");
         result[80] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[69];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_LinkButton2.label = param1;
         },"_GameIntroPanel_LinkButton2.label");
         result[81] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[58];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DescriptionLabel5.text = param1;
         },"_GameIntroPanel_DescriptionLabel5.text");
         result[82] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[78];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            selectA.label = param1;
         },"selectA.label");
         result[83] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[79];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            selectB.label = param1;
         },"selectB.label");
         result[84] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[37];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_RoundedButton3.label = param1;
         },"_GameIntroPanel_RoundedButton3.label");
         result[85] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn19.headerText = param1;
         },"_GameIntroPanel_DataGridColumn19.headerText");
         result[86] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[55];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn20.headerText = param1;
         },"_GameIntroPanel_DataGridColumn20.headerText");
         result[87] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn21.headerText = param1;
         },"_GameIntroPanel_DataGridColumn21.headerText");
         result[88] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[59];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn22.headerText = param1;
         },"_GameIntroPanel_DataGridColumn22.headerText");
         result[89] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[78];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            selectACar.label = param1;
         },"selectACar.label");
         result[90] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[79];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            selectBCar.label = param1;
         },"selectBCar.label");
         result[91] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.SYSTEMSHOPPANEL_U[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            toCar.label = param1;
         },"toCar.label");
         result[92] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[70];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_LinkButton3.label = param1;
         },"_GameIntroPanel_LinkButton3.label");
         result[93] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[58];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DescriptionLabel6.text = param1;
         },"_GameIntroPanel_DescriptionLabel6.text");
         result[94] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[61];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn23.headerText = param1;
         },"_GameIntroPanel_DataGridColumn23.headerText");
         result[95] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn24.headerText = param1;
         },"_GameIntroPanel_DataGridColumn24.headerText");
         result[96] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = consumeAcMsg;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            consumeActDate.text = param1;
         },"consumeActDate.text");
         result[97] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            getConsumeAwardBtn.label = param1;
         },"getConsumeAwardBtn.label");
         result[98] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_U[48];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            StageConsumeBtn0.label = param1;
         },"StageConsumeBtn0.label");
         result[99] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_U[49];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            StageConsumeBtn1.label = param1;
         },"StageConsumeBtn1.label");
         result[100] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_U[50];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            StageConsumeBtn2.label = param1;
         },"StageConsumeBtn2.label");
         result[101] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_U[51];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            StageConsumeBtn3.label = param1;
         },"StageConsumeBtn3.label");
         result[102] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_U[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            StageConsumeBtn4.label = param1;
         },"StageConsumeBtn4.label");
         result[103] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_U[53];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            StageConsumeBtn5.label = param1;
         },"StageConsumeBtn5.label");
         result[104] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[61];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn25.headerText = param1;
         },"_GameIntroPanel_DataGridColumn25.headerText");
         result[105] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn26.headerText = param1;
         },"_GameIntroPanel_DataGridColumn26.headerText");
         result[106] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = consumeAcMsg0;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            consumeActDate0.text = param1;
         },"consumeActDate0.text");
         result[107] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            getStageConsumeAwardBtn0.label = param1;
         },"getStageConsumeAwardBtn0.label");
         result[108] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[61];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn27.headerText = param1;
         },"_GameIntroPanel_DataGridColumn27.headerText");
         result[109] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn28.headerText = param1;
         },"_GameIntroPanel_DataGridColumn28.headerText");
         result[110] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = consumeAcMsg1;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            consumeActDate1.text = param1;
         },"consumeActDate1.text");
         result[111] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            getConsumeAwardBtn1.label = param1;
         },"getConsumeAwardBtn1.label");
         result[112] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[61];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn29.headerText = param1;
         },"_GameIntroPanel_DataGridColumn29.headerText");
         result[113] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn30.headerText = param1;
         },"_GameIntroPanel_DataGridColumn30.headerText");
         result[114] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = consumeAcMsg2;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            consumeActDate2.text = param1;
         },"consumeActDate2.text");
         result[115] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            getConsumeAwardBtn2.label = param1;
         },"getConsumeAwardBtn2.label");
         result[116] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[61];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn31.headerText = param1;
         },"_GameIntroPanel_DataGridColumn31.headerText");
         result[117] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn32.headerText = param1;
         },"_GameIntroPanel_DataGridColumn32.headerText");
         result[118] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = consumeAcMsg3;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            consumeActDate3.text = param1;
         },"consumeActDate3.text");
         result[119] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            getConsumeAwardBtn3.label = param1;
         },"getConsumeAwardBtn3.label");
         result[120] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[61];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn33.headerText = param1;
         },"_GameIntroPanel_DataGridColumn33.headerText");
         result[121] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn34.headerText = param1;
         },"_GameIntroPanel_DataGridColumn34.headerText");
         result[122] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = consumeAcMsg4;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            consumeActDate4.text = param1;
         },"consumeActDate4.text");
         result[123] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            getConsumeAwardBtn4.label = param1;
         },"getConsumeAwardBtn4.label");
         result[124] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_S[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn35.headerText = param1;
         },"_GameIntroPanel_DataGridColumn35.headerText");
         result[125] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = consumeAcMsg5;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            consumeActDate5.text = param1;
         },"consumeActDate5.text");
         result[126] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ACTIVEPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            getConsumeAwardBtn5.label = param1;
         },"getConsumeAwardBtn5.label");
         result[127] = binding;
         binding = new Binding(this,function():Object
         {
            return diaryList;
         },function(param1:Object):void
         {
            DG_diary.dataProvider = param1;
         },"DG_diary.dataProvider");
         result[128] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn36.headerText = param1;
         },"_GameIntroPanel_DataGridColumn36.headerText");
         result[129] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn37.headerText = param1;
         },"_GameIntroPanel_DataGridColumn37.headerText");
         result[130] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_DataGridColumn38.headerText = param1;
         },"_GameIntroPanel_DataGridColumn38.headerText");
         result[131] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_BasicTxtButton5.label = param1;
         },"_GameIntroPanel_BasicTxtButton5.label");
         result[132] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_BasicTxtButton6.text = param1;
         },"_GameIntroPanel_BasicTxtButton6.text");
         result[133] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[43];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_BasicTxtButton8.text = param1;
         },"_GameIntroPanel_BasicTxtButton8.text");
         result[134] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[37].replace("{num}",30);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_BasicTxtButton10.text = param1;
         },"_GameIntroPanel_BasicTxtButton10.text");
         result[135] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            actBtn0.label = param1;
         },"actBtn0.label");
         result[136] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _haveDiaryAwarded ? false : Number(totalAct.text) >= 30;
         },function(param1:Boolean):void
         {
            actBtn0.enabled = param1;
         },"actBtn0.enabled");
         result[137] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.GAMEINTROPANEL_U[37].replace("{num}",60);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GameIntroPanel_BasicTxtButton11.text = param1;
         },"_GameIntroPanel_BasicTxtButton11.text");
         result[138] = binding;
