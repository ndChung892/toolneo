package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.ItemConfig;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TimeUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.LanguageUtil;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.BoxLabel;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.RoundedLabel;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
   import com.qeedoo.ui.view.comp.Slot;
   import com.qeedoo.ui.view.comp.StarIcon;
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
   import mx.containers.Canvas;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.CheckBox;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.TextArea;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class CharactorPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static var firstLoad:Boolean = true;
      
      private var _109757473star3:StarIcon;
      
      private var _3119057eq16:ItemSlot;
      
      private var _1420795392addIntelligence:RoundedLabel;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1205539178infoClass:BoxLabel;
      
      private var _699206467PopLabel:BasicTxtButton;
      
      private var _10433186vigorTxt7:BoxLabel;
      
      private var _177868763styleAddName:String;
      
      private var _787926635btnPosToolTip:String;
      
      private var _1649711042actpoint:BoxLabel;
      
      private var _3119056eq15:ItemSlot;
      
      private var _1554141557tabBtn2:BasicGlowButton;
      
      private var _109757474star4:StarIcon;
      
      private var _1155663430lb_sLevel:RoundedLabel;
      
      private var _104387img:Image;
      
      private var _1328020574MWCanvas:Canvas;
      
      private var LAST_PLAYER_ID:int = -1;
      
      private var _123813654mountImg:Image;
      
      private var _100613eq1:ItemSlot;
      
      private var _1061902657mwSub5:ItemSlot;
      
      private var _19957965addBtnCanvas:SimpleCanvas;
      
      private var _1378810356btn_js:BasicGlowButton;
      
      private var _3119055eq14:ItemSlot;
      
      private var _dm:DataManager = DataManager.getInstance();
      
      private var _1864769379minusStrengthButton:Button;
      
      private var _817036290addStrength:RoundedLabel;
      
      private var _1113783315wingHide:CheckBox;
      
      private var _850872420addAgility:RoundedLabel;
      
      private var chivalArr:Array = [0,0,0,0,0,1,1,1,2,2,3,4,4,5,6,7,9,10,11,13,14,16,18,20,22,25,27,30,32,35,38,41,45,48,52,56,59,64,68,72];
      
      private var _1271911908iconImage02:Image;
      
      private var _109757475star5:StarIcon;
      
      private var _323428904vigorTxt10:BoxLabel;
      
      private var _694777522img_star:Image;
      
      private var _708846363addEnergyButton:Button;
      
      private var _1952151455critical:BoxLabel;
      
      private var _1180791939GXLabel:BasicTxtButton;
      
      private var _1662853568elemUIC:UIComponent;
      
      private var _10433187vigorTxt6:BoxLabel;
      
      private var _3119054eq13:ItemSlot;
      
      private var _1246589433vigorTxt:BoxLabel;
      
      private var _100615eq3:ItemSlot;
      
      private var _1099375777infoRebirthExp:BoxLabel;
      
      public var hasMount:int = -1;
      
      private var _892485646star11:StarIcon;
      
      private var _3491mp:BoxLabel;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1863068566minusEnergyButton:Button;
      
      private var _109757476star6:StarIcon;
      
      private var _652133081XGCanvas:Canvas;
      
      private var _1365556561levelUpButton:BasicGlowButton;
      
      private var newGradeLevelInfo:Array = ["","+10000HP","+10000HP,+3000Phòng","+10000HP,+3000Công,+3000Phòng,+100Tốc"];
      
      private var _97632477mDefence:BoxLabel;
      
      private var _189045043chivalTxt:BoxLabel;
      
      private var _1378824616btnPos:BasicDelayButton;
      
      private var _3119053eq12:ItemSlot;
      
      private var _1275572471chivalLabel:BasicTxtButton;
      
      private var _3336hp:BoxLabel;
      
      private var _1271911911iconImage05:Image;
      
      public var _CharactorPanel_BasicTxtButton10:BasicTxtButton;
      
      public var _CharactorPanel_BasicTxtButton11:BasicTxtButton;
      
      public var _CharactorPanel_BasicTxtButton12:BasicTxtButton;
      
      public var _CharactorPanel_BasicTxtButton13:BasicTxtButton;
      
      public var _CharactorPanel_BasicTxtButton14:BasicTxtButton;
      
      public var _CharactorPanel_BasicTxtButton15:BasicTxtButton;
      
      public var _CharactorPanel_BasicTxtButton16:BasicTxtButton;
      
      public var _CharactorPanel_BasicTxtButton17:BasicTxtButton;
      
      public var _CharactorPanel_BasicTxtButton18:BasicTxtButton;
      
      public var _CharactorPanel_BasicTxtButton19:BasicTxtButton;
      
      private var _1271911939iconImage12:Image;
      
      private var _95758295dodge:BoxLabel;
      
      private var _1061902661mwSub1:ItemSlot;
      
      private var _2033231541starLvUping:Boolean = false;
      
      public var _CharactorPanel_BasicTxtButton20:BasicTxtButton;
      
      public var _CharactorPanel_BasicTxtButton21:BasicTxtButton;
      
      public var _CharactorPanel_BasicTxtButton22:BasicTxtButton;
      
      public var _CharactorPanel_BasicTxtButton23:BasicTxtButton;
      
      public var _CharactorPanel_BasicTxtButton24:BasicTxtButton;
      
      public var _CharactorPanel_BasicTxtButton25:BasicTxtButton;
      
      private var _1271911914iconImage08:Image;
      
      private var _1577469134lb_leftSecDesc:RoundedLabel;
      
      private var _1554141559tabBtn0:BasicGlowButton;
      
      private var _100617eq5:ItemSlot;
      
      private var _1109587368lb_add:RoundedLabel;
      
      public var _CharactorPanel_Image14:Image;
      
      private var _14326624addStaminaButton:Button;
      
      private var _109757477star7:StarIcon;
      
      private var _557678129showDetailProp:BasicGlowButton;
      
      private var _3119052eq11:ItemSlot;
      
      private var _10433188vigorTxt5:BoxLabel;
      
      private var _1062100349mwMain:ItemSlot;
      
      private var _426146348addStrengthButton:Button;
      
      private var _94069048btnOK:BasicDelayButton;
      
      private var _30739193attLastPoint:BoxLabel;
      
      private var _3119051eq10:ItemSlot;
      
      private var _100619eq7:ItemSlot;
      
      private var _1555913437ta_desc:TextArea;
      
      private var _1542401647decoBtn:BasicGlowButton;
      
      private var _109757478star8:StarIcon;
      
      private var _100620eq8:ItemSlot;
      
      private var _1270522743attEnergy:BoxLabel;
      
      private var _1628156161lb_leftSec:RoundedLabel;
      
      public var _CharactorPanel_Canvas2:Canvas;
      
      public var _CharactorPanel_Canvas3:Canvas;
      
      private var _508557257mWRepairButton:BasicGlowButton;
      
      private var _1023416178attStamina:BoxLabel;
      
      private var _1378810134btn_qx:BasicGlowButton;
      
      private var _106755206pmImg:Image;
      
      private var _1378810086btn_sj:BasicGlowButton;
      
      private var _206211513PKLabel:BasicTxtButton;
      
      public var _CharactorPanel_BasicGlowButton1:BasicGlowButton;
      
      private var _1554141556tabBtn3:BasicGlowButton;
      
      private var _10433189vigorTxt4:BoxLabel;
      
      private var _206036743btnName:BasicGlowButton;
      
      private var _1378809934btn_xg:BasicGlowButton;
      
      private var _109757479star9:StarIcon;
      
      private var _323428902vigorTxt12:BoxLabel;
      
      private var _1271911907iconImage01:Image;
      
      private var _selectStarType:int;
      
      mx_internal var _bindings:Array = [];
      
      private var _1221167690infoTitle:BoxLabel;
      
      private var _103315hit:BoxLabel;
      
      private var _1061902658mwSub4:ItemSlot;
      
      private var detailPanel:* = null;
      
      public var _CharactorPanel_BasicGlowButton12:BasicGlowButton;
      
      public var _CharactorPanel_BasicGlowButton13:BasicGlowButton;
      
      private var _10433190vigorTxt3:BoxLabel;
      
      private var _111185pop:BoxLabel;
      
      private var _114581tab:ViewStack;
      
      private var _106706549pkTxt:BoxLabel;
      
      private var _177753177infoName:BoxLabel;
      
      private var _10889870addStamina:RoundedLabel;
      
      private var tempPropMultiple:int = 0;
      
      private var _37085260lb_name:RoundedLabel;
      
      private var _459185494actpointLabel:BasicTxtButton;
      
      private var _1940048781propertyCanvas:Canvas;
      
      private var _1271911910iconImage04:Image;
      
      private var _1271911938iconImage11:Image;
      
      private var _892485647star10:StarIcon;
      
      private var _1271911913iconImage07:Image;
      
      private var _1606233953minusIntelligenceButton:Button;
      
      private var _74771179mAttack:BoxLabel;
      
      private var _100614eq2:ItemSlot;
      
      private var _808946632makerActiveInfo:TextArea;
      
      private var _331517891vigorLabel:BasicTxtButton;
      
      private var _695539687dressHide:CheckBox;
      
      private var _1554141558tabBtn1:BasicGlowButton;
      
      private var _10433191vigorTxt2:BoxLabel;
      
      private var mc:MovieClip;
      
      private var maskMc:MovieClip;
      
      private var _1991903918addIntelligenceButton:Button;
      
      private var _279478090addAgilityButton:Button;
      
      private var _100616eq4:ItemSlot;
      
      private var _1544916048defence:BoxLabel;
      
      private var maxMc:MovieClip;
      
      private var _10433184vigorTxt9:BoxLabel;
      
      private var _interval:Number;
      
      private var firstFlag:Boolean = true;
      
      public var _CharactorPanel_BasicTxtButton1:BasicTxtButton;
      
      public var _CharactorPanel_BasicTxtButton2:BasicTxtButton;
      
      public var _CharactorPanel_BasicTxtButton3:BasicTxtButton;
      
      private var _1595537735minusAgilityButton:Button;
      
      private var _1319279616attIntelligence:BoxLabel;
      
      private var _892485645star12:StarIcon;
      
      private var _90794110_core:Core = Core.getInstance();
      
      private var _405874039addEnergy:RoundedLabel;
      
      private var _323428903vigorTxt11:BoxLabel;
      
      private var _104729418ngImg:Image;
      
      private var _starTimer:Timer;
      
      private var _1271911909iconImage03:Image;
      
      private var _10433192vigorTxt1:BoxLabel;
      
      public var firstTimeFlag:Boolean = true;
      
      private var _283222949lb_addition:RoundedLabel;
      
      private var PropMultiple:int = 1;
      
      private var _100618eq6:ItemSlot;
      
      private var _1295447866starActiveInfo:TextArea;
      
      public var _CharactorPanel_RoundedLabel1:RoundedLabel;
      
      private var _109757471star1:StarIcon;
      
      private var _1181680126attStrength:BoxLabel;
      
      private var _1554141555tabBtn4:BasicGlowButton;
      
      private var _721177480imgCanva:Canvas;
      
      private var _1378810059btn_tf:BasicGlowButton;
      
      private var element:Class = CharactorPanel_element;
      
      private var _1061902660mwSub2:ItemSlot;
      
      private var _108274547rbImg:Image;
      
      private var _109641799speed:BoxLabel;
      
      public var _CharactorPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var changeFlag:String = "☆";
      
      private var _10433185vigorTxt8:BoxLabel;
      
      private var _1889342449minusStaminaButton:Button;
      
      private var _109757472star2:StarIcon;
      
      private var _lvUpStarType:int;
      
      private var _1061902659mwSub3:ItemSlot;
      
      private var _183433628attAgility:BoxLabel;
      
      private var _1965289807MountCanvas:Canvas;
      
      private var _1271911937iconImage10:Image;
      
      private var _1271911912iconImage06:Image;
      
      mx_internal var _watchers:Array = [];
      
      private var _100621eq9:ItemSlot;
      
      private var _1271911915iconImage09:Image;
      
      private var newGradeLevel:Array = ["","Nhập Môn","Bậc Thầy","Siêu Phàm"];
      
      private var _2097958236btnTitle:BasicGlowButton;
      
      public var _CharactorPanel_Image1:Image;
      
      private var _727902236AddPropCheck:CheckBox;
      
      private var _1213662070infoLevel:BoxLabel;
      
      private var _844311679spirituality:Label;
      
      private var _1407259064attack:BoxLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":315,
               "height":460,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_CharactorPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":295,
                        "height":417,
                        "horizontalScrollPolicy":"off",
                        "x":10,
                        "y":37,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ViewStack,
                           "id":"tab",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":385,
                                 "tabEnabled":false,
                                 "styleName":"TabNavPlayer",
                                 "width":285,
                                 "x":5,
                                 "y":22,
                                 "creationPolicy":"all",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_CharactorPanel_Canvas2",
                                    "events":{"show":"___CharactorPanel_Canvas2_show"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "styleName":"CanvasBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_CharactorPanel_Image1",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":10,
                                                   "width":192,
                                                   "height":191
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":UIComponent,
                                             "id":"elemUIC",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":100,
                                                   "y":16,
                                                   "width":80,
                                                   "height":175
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"eq1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":1,
                                                   "y":10,
                                                   "slotType":4,
                                                   "x":11,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"eq2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":2,
                                                   "y":82,
                                                   "x":11,
                                                   "slotType":4,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"eq3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":3,
                                                   "x":57,
                                                   "y":119,
                                                   "slotType":4,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"eq4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":4,
                                                   "y":46,
                                                   "slotType":4,
                                                   "x":11,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"eq5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":5,
                                                   "y":120,
                                                   "slotType":4,
                                                   "x":11,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"eq6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":6,
                                                   "x":11,
                                                   "y":156,
                                                   "slotType":4,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"eq7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":7,
                                                   "y":119,
                                                   "slotType":4,
                                                   "x":187,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"eq8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":8,
                                                   "y":10,
                                                   "slotType":4,
                                                   "x":232,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"eq9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":9,
                                                   "y":82,
                                                   "slotType":4,
                                                   "x":232,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"eq10",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":10,
                                                   "y":46,
                                                   "slotType":4,
                                                   "x":232,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"eq11",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":11,
                                                   "y":155,
                                                   "slotType":4,
                                                   "x":232,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"eq12",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":12,
                                                   "y":119,
                                                   "slotType":4,
                                                   "x":232,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"eq13",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":13,
                                                   "y":156,
                                                   "slotType":4,
                                                   "x":187,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"eq14",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":14,
                                                   "y":156,
                                                   "slotType":4,
                                                   "x":57,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"eq15",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":21,
                                                   "x":57,
                                                   "y":83,
                                                   "slotType":4,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"eq16",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":22,
                                                   "x":187,
                                                   "y":82,
                                                   "slotType":4,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":CheckBox,
                                             "id":"dressHide",
                                             "events":{"click":"__dressHide_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":90,
                                                   "y":81
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":CheckBox,
                                             "id":"wingHide",
                                             "events":{"click":"__wingHide_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":174,
                                                   "y":81
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TextArea,
                                             "id":"makerActiveInfo",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.backgroundAlpha = 0;
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "selectable":false,
                                                   "x":46,
                                                   "y":13,
                                                   "width":68,
                                                   "height":60,
                                                   "editable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TextArea,
                                             "id":"starActiveInfo",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.backgroundAlpha = 0;
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "selectable":false,
                                                   "x":163,
                                                   "y":13,
                                                   "width":68,
                                                   "height":60,
                                                   "editable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_CharactorPanel_BasicGlowButton1",
                                             "events":{"click":"___CharactorPanel_BasicGlowButton1_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "-30";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "y":175
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"decoBtn",
                                             "events":{"click":"__decoBtn_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "20";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "y":175,
                                                   "visible":true
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_CharactorPanel_Canvas3",
                                    "events":{"show":"___CharactorPanel_Canvas3_show"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "styleName":"CanvasBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":169,
                                                   "y":10,
                                                   "width":98,
                                                   "height":216,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":BoxLabel,
                                                      "id":"infoName",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "y":0,
                                                            "width":94.5,
                                                            "text":"ss名称",
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BoxLabel,
                                                      "id":"infoClass",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":22,
                                                            "width":93.5,
                                                            "text":"ss职业",
                                                            "height":18,
                                                            "x":0
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BoxLabel,
                                                      "id":"infoLevel",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "y":44,
                                                            "width":50,
                                                            "text":"ss等级",
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BoxLabel,
                                                      "id":"infoRebirthExp",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "y":88,
                                                            "text":"战绩",
                                                            "width":94.5,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BoxLabel,
                                                      "id":"pkTxt",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "y":110,
                                                            "text":"ssPK",
                                                            "width":94.5,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BoxLabel,
                                                      "id":"pop",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "y":132,
                                                            "text":"ss人气",
                                                            "width":94.5,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BoxLabel,
                                                      "id":"chivalTxt",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "y":154,
                                                            "text":"ss荣誉",
                                                            "width":94.5,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BoxLabel,
                                                      "id":"actpoint",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "y":176,
                                                            "text":"ss活力",
                                                            "width":94.5,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BoxLabel,
                                                      "id":"vigorTxt",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "y":198,
                                                            "text":"ss精力",
                                                            "width":94.5,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BoxLabel,
                                                      "id":"infoTitle",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "y":66,
                                                            "width":94.5,
                                                            "text":"",
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"levelUpButton",
                                                      "events":{"click":"__levelUpButton_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":43,
                                                            "styleName":"BtnNormalRed",
                                                            "width":38,
                                                            "height":18,
                                                            "x":55.5
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"btnTitle",
                                             "events":{"click":"__btnTitle_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":125,
                                                   "y":76,
                                                   "styleName":"BtnNormalRed",
                                                   "buttonMode":true,
                                                   "useHandCursor":true,
                                                   "width":38,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_CharactorPanel_BasicTxtButton1",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":125,
                                                   "y":10,
                                                   "width":38,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"btnName",
                                             "events":{"click":"__btnName_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":125,
                                                   "y":10,
                                                   "styleName":"BtnNormalRed",
                                                   "width":38,
                                                   "height":18,
                                                   "buttonMode":true,
                                                   "useHandCursor":true
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_CharactorPanel_BasicTxtButton2",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":125,
                                                   "y":32,
                                                   "width":38,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_CharactorPanel_BasicTxtButton3",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":125,
                                                   "y":54,
                                                   "width":38,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"GXLabel",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":125,
                                                   "y":98,
                                                   "width":38,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"PKLabel",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":125,
                                                   "y":120,
                                                   "width":38,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"PopLabel",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                                this.textAlign = "right";
                                                this.right = "122";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":142,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"chivalLabel",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                                this.right = "122";
                                                this.textAlign = "right";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":164,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"actpointLabel",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                                this.right = "122";
                                                this.textAlign = "right";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":186,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"vigorLabel",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                                this.right = "122";
                                                this.textAlign = "right";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":208,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BoxLabel,
                                             "id":"vigorTxt1",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":38.5,
                                                   "y":231,
                                                   "width":94.5,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BoxLabel,
                                             "id":"vigorTxt2",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":38.5,
                                                   "y":256,
                                                   "width":94.5,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BoxLabel,
                                             "id":"vigorTxt3",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":38.5,
                                                   "y":282,
                                                   "width":94.5,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BoxLabel,
                                             "id":"vigorTxt4",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":38.5,
                                                   "y":307,
                                                   "width":94.5,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BoxLabel,
                                             "id":"vigorTxt5",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":38.5,
                                                   "y":333,
                                                   "width":94.5,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BoxLabel,
                                             "id":"vigorTxt6",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":38.5,
                                                   "y":357,
                                                   "width":94.5,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BoxLabel,
                                             "id":"vigorTxt7",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":168.5,
                                                   "y":231,
                                                   "width":94.5,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BoxLabel,
                                             "id":"vigorTxt8",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":168.5,
                                                   "y":256,
                                                   "width":94.5,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BoxLabel,
                                             "id":"vigorTxt9",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":168.5,
                                                   "y":282,
                                                   "width":94.5,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BoxLabel,
                                             "id":"vigorTxt10",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":168.5,
                                                   "y":307,
                                                   "width":94.5,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BoxLabel,
                                             "id":"vigorTxt11",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":168.5,
                                                   "y":333,
                                                   "width":94.5,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BoxLabel,
                                             "id":"vigorTxt12",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":168.5,
                                                   "y":357,
                                                   "width":94.5,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"iconImage01",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":229,
                                                   "width":22,
                                                   "height":22
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"iconImage02",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":254,
                                                   "width":22,
                                                   "height":22
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"iconImage03",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":280,
                                                   "width":22,
                                                   "height":22
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"iconImage04",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":306,
                                                   "width":22,
                                                   "height":22
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"iconImage05",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":331,
                                                   "width":22,
                                                   "height":22
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"iconImage06",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":356,
                                                   "width":22,
                                                   "height":22
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"iconImage07",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":141,
                                                   "y":229,
                                                   "width":22,
                                                   "height":22
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"iconImage08",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":141,
                                                   "y":255,
                                                   "width":22,
                                                   "height":22
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"iconImage09",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":141,
                                                   "y":280,
                                                   "width":22,
                                                   "height":22
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"iconImage10",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":141,
                                                   "y":306,
                                                   "width":22,
                                                   "height":22
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"iconImage11",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":141,
                                                   "y":331,
                                                   "width":22,
                                                   "height":22
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"iconImage12",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":141,
                                                   "y":356,
                                                   "width":22,
                                                   "height":22
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"MWCanvas",
                                    "events":{"show":"__MWCanvas_show"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "styleName":"CanvasBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_CharactorPanel_Image14",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":5,
                                                   "width":188,
                                                   "height":189
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"mwMain",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":15,
                                                   "y":84,
                                                   "slotType":4,
                                                   "x":126.5,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"mwSub1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":16,
                                                   "y":22,
                                                   "slotType":4,
                                                   "x":80,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"mwSub2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":17,
                                                   "y":22,
                                                   "slotType":4,
                                                   "x":170,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"mwSub3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":18,
                                                   "y":107,
                                                   "slotType":4,
                                                   "x":197,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"mwSub4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":19,
                                                   "y":157,
                                                   "slotType":4,
                                                   "x":126,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"mwSub5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "index":20,
                                                   "y":107,
                                                   "slotType":4,
                                                   "x":59,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"spirituality",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 3591381;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":17,
                                                   "y":172,
                                                   "width":103,
                                                   "text":"123456",
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"mWRepairButton",
                                             "events":{"click":"__mWRepairButton_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.right = "10";
                                                this.paddingBottom = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "width":50,
                                                   "y":165
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"XGCanvas",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "styleName":"CanvasBorder",
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"imgCanva",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "percentWidth":100,
                                                   "percentHeight":100
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"img_star",
                                             "events":{
                                                "click":"__img_star_click",
                                                "mouseOver":"__img_star_mouseOver",
                                                "mouseOut":"__img_star_mouseOut"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.verticalCenter = "-50";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "stylesFactory":function():void
                                             {
                                                this.top = "0";
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":285,
                                                   "width":285,
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":StarIcon,
                                                      "id":"star1",
                                                      "events":{"click":"__star1_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalCenter = "72";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":205,
                                                            "width":18,
                                                            "height":18,
                                                            "stype":1
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":StarIcon,
                                                      "id":"star2",
                                                      "events":{"click":"__star2_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalCenter = "26";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":232,
                                                            "width":18,
                                                            "height":18,
                                                            "stype":2
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":StarIcon,
                                                      "id":"star3",
                                                      "events":{"click":"__star3_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalCenter = "-25";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":232,
                                                            "width":18,
                                                            "height":18,
                                                            "stype":3
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":StarIcon,
                                                      "id":"star4",
                                                      "events":{"click":"__star4_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalCenter = "-69";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":208,
                                                            "width":18,
                                                            "height":18,
                                                            "stype":4
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":StarIcon,
                                                      "id":"star5",
                                                      "events":{"click":"__star5_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalCenter = "-98";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":160,
                                                            "width":18,
                                                            "height":18,
                                                            "stype":5
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":StarIcon,
                                                      "id":"star6",
                                                      "events":{"click":"__star6_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalCenter = "-100";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":109,
                                                            "width":18,
                                                            "height":18,
                                                            "stype":6
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":StarIcon,
                                                      "id":"star7",
                                                      "events":{"click":"__star7_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalCenter = "-73";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":61,
                                                            "width":18,
                                                            "height":18,
                                                            "stype":7
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":StarIcon,
                                                      "id":"star8",
                                                      "events":{"click":"__star8_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalCenter = "-25";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":36,
                                                            "width":18,
                                                            "height":18,
                                                            "stype":8
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":StarIcon,
                                                      "id":"star9",
                                                      "events":{"click":"__star9_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalCenter = "27";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":36,
                                                            "width":18,
                                                            "height":18,
                                                            "stype":9
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":StarIcon,
                                                      "id":"star10",
                                                      "events":{"click":"__star10_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalCenter = "73";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":62,
                                                            "width":18,
                                                            "height":18,
                                                            "stype":10
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":StarIcon,
                                                      "id":"star11",
                                                      "events":{"click":"__star11_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalCenter = "98";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":109,
                                                            "width":18,
                                                            "height":18,
                                                            "stype":11
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":StarIcon,
                                                      "id":"star12",
                                                      "events":{"click":"__star12_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalCenter = "98";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":161,
                                                            "width":18,
                                                            "height":18,
                                                            "stype":12
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"_CharactorPanel_RoundedLabel1",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "height":18,
                                                            "width":65,
                                                            "x":195,
                                                            "y":10
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"lb_sLevel",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 65280;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":256,
                                                            "y":10
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"lb_name",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "10";
                                                this.bottom = "75";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TextArea,
                                             "id":"ta_desc",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "10";
                                                this.bottom = "10";
                                                this.backgroundAlpha = 0;
                                                this.borderStyle = "none";
                                                this.color = 16774324;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":195,
                                                   "height":60,
                                                   "mouseEnabled":false,
                                                   "editable":false,
                                                   "enabled":true,
                                                   "selectable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"lb_add",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "80";
                                                this.bottom = "63";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"height":18};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"lb_addition",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "165";
                                                this.bottom = "63";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"height":18};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"btn_js",
                                             "events":{"click":"__btn_js_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.right = "10";
                                                this.paddingTop = 1;
                                                this.bottom = "100";
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"CrystalYellowButton",
                                                   "labelPlacement":"bottom",
                                                   "width":65,
                                                   "height":20
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"btn_sj",
                                             "events":{"click":"__btn_sj_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.right = "10";
                                                this.paddingTop = 1;
                                                this.bottom = "66";
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"CrystalYellowButton",
                                                   "labelPlacement":"bottom",
                                                   "width":65,
                                                   "height":20
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"btn_qx",
                                             "events":{"click":"__btn_qx_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.right = "10";
                                                this.paddingTop = 1;
                                                this.bottom = "66";
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"CrystalYellowButton",
                                                   "labelPlacement":"bottom",
                                                   "width":65,
                                                   "height":20
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"btn_tf",
                                             "events":{"click":"__btn_tf_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.right = "10";
                                                this.paddingTop = 1;
                                                this.bottom = "38";
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"CrystalYellowButton",
                                                   "labelPlacement":"bottom",
                                                   "width":65,
                                                   "height":20
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"btn_xg",
                                             "events":{"click":"__btn_xg_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.right = "10";
                                                this.paddingTop = 1;
                                                this.bottom = "10";
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"CrystalYellowButton",
                                                   "labelPlacement":"bottom",
                                                   "width":65,
                                                   "height":20
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"lb_leftSec",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "10";
                                                this.bottom = "100";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"lb_leftSecDesc",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "83";
                                                this.bottom = "100";
                                                this.color = 65280;
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_CharactorPanel_BasicGlowButton12",
                                             "events":{"click":"___CharactorPanel_BasicGlowButton12_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "y":132
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"MountCanvas",
                                    "events":{"show":"__MountCanvas_show"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "styleName":"CanvasBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"mountImg",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "40";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":180,
                                                   "width":180,
                                                   "y":10,
                                                   "visible":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_CharactorPanel_BasicGlowButton13",
                                             "events":{"click":"___CharactorPanel_BasicGlowButton13_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.right = "10";
                                                this.paddingBottom = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "width":50,
                                                   "y":165
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"propertyCanvas",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":181,
                                 "y":204,
                                 "width":275,
                                 "x":5,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_CharactorPanel_BasicTxtButton10",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":8,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_CharactorPanel_BasicTxtButton11",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":30,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_CharactorPanel_BasicTxtButton12",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":50,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_CharactorPanel_BasicTxtButton13",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":72,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_CharactorPanel_BasicTxtButton14",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":95,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_CharactorPanel_BasicTxtButton15",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":117,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_CharactorPanel_BasicTxtButton16",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":139,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_CharactorPanel_BasicTxtButton17",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":159,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_CharactorPanel_BasicTxtButton18",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":155.2,
                                          "y":8,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_CharactorPanel_BasicTxtButton19",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":155.2,
                                          "y":30,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_CharactorPanel_BasicTxtButton20",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":155.2,
                                          "y":52,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_CharactorPanel_BasicTxtButton21",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":155.2,
                                          "y":73,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_CharactorPanel_BasicTxtButton22",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":155.2,
                                          "y":95,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_CharactorPanel_BasicTxtButton23",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":155.2,
                                          "y":117,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_CharactorPanel_BasicTxtButton24",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":155.2,
                                          "y":139,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_CharactorPanel_BasicTxtButton25",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 1;
                                       this.paddingRight = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":155.2,
                                          "y":159,
                                          "width":37,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"attStrength",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":37,
                                          "y":52,
                                          "width":60.5,
                                          "text":"1234",
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"attAgility",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":37,
                                          "y":95,
                                          "width":60.433334,
                                          "text":"1234",
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"attStamina",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":37,
                                          "y":72.95,
                                          "width":60,
                                          "text":"1234",
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"attIntelligence",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":37.1,
                                          "y":117,
                                          "width":60.4,
                                          "text":"1234",
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"attEnergy",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":37.1,
                                          "y":139,
                                          "width":60.4,
                                          "text":"1234",
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"hp",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":36,
                                          "y":8,
                                          "width":104,
                                          "text":"123456/123456",
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"mp",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":37,
                                          "y":30,
                                          "width":103,
                                          "text":"123456/123456",
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":SimpleCanvas,
                                    "id":"addBtnCanvas",
                                    "stylesFactory":function():void
                                    {
                                       this.disabledOverlayAlpha = 0;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":71.1,
                                          "y":49,
                                          "width":76.1,
                                          "height":130,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"addStrengthButton",
                                             "events":{"buttonDown":"__addStrengthButton_buttonDown"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingBottom = 0;
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                                this.paddingTop = 0;
                                                this.cornerRadius = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "autoRepeat":true,
                                                   "x":29.95,
                                                   "y":2
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"addAgilityButton",
                                             "events":{"buttonDown":"__addAgilityButton_buttonDown"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingBottom = 0;
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                                this.paddingTop = 0;
                                                this.cornerRadius = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "autoRepeat":true,
                                                   "x":29.95,
                                                   "y":46
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"addStaminaButton",
                                             "events":{"buttonDown":"__addStaminaButton_buttonDown"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingBottom = 0;
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                                this.paddingTop = 0;
                                                this.cornerRadius = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "autoRepeat":true,
                                                   "x":29.95,
                                                   "y":24
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"addIntelligenceButton",
                                             "events":{"buttonDown":"__addIntelligenceButton_buttonDown"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingBottom = 0;
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                                this.paddingTop = 0;
                                                this.cornerRadius = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "autoRepeat":true,
                                                   "x":29.9,
                                                   "y":67
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"addEnergyButton",
                                             "events":{"buttonDown":"__addEnergyButton_buttonDown"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingBottom = 0;
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                                this.paddingTop = 0;
                                                this.cornerRadius = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "autoRepeat":true,
                                                   "x":29.9,
                                                   "y":88
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"minusStrengthButton",
                                             "events":{"buttonDown":"__minusStrengthButton_buttonDown"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingBottom = 0;
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                                this.paddingTop = 0;
                                                this.cornerRadius = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "autoRepeat":true,
                                                   "x":52.7,
                                                   "y":2,
                                                   "styleName":"BtnReduce2"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"minusAgilityButton",
                                             "events":{"buttonDown":"__minusAgilityButton_buttonDown"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingBottom = 0;
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                                this.paddingTop = 0;
                                                this.cornerRadius = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "autoRepeat":true,
                                                   "x":52.7,
                                                   "y":46,
                                                   "styleName":"BtnReduce2"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"minusStaminaButton",
                                             "events":{"buttonDown":"__minusStaminaButton_buttonDown"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingBottom = 0;
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                                this.paddingTop = 0;
                                                this.cornerRadius = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "autoRepeat":true,
                                                   "x":52.7,
                                                   "y":23.95,
                                                   "styleName":"BtnReduce2"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"minusIntelligenceButton",
                                             "events":{"buttonDown":"__minusIntelligenceButton_buttonDown"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingBottom = 0;
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                                this.paddingTop = 0;
                                                this.cornerRadius = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "autoRepeat":true,
                                                   "x":52.7,
                                                   "y":68,
                                                   "styleName":"BtnReduce2"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"minusEnergyButton",
                                             "events":{"buttonDown":"__minusEnergyButton_buttonDown"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingBottom = 0;
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                                this.paddingTop = 0;
                                                this.cornerRadius = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "autoRepeat":true,
                                                   "x":52.7,
                                                   "y":88,
                                                   "styleName":"BtnReduce2"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"addStrength",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":0.95,
                                                   "y":3,
                                                   "width":19,
                                                   "text":"99",
                                                   "styleName":"LabelPropertyText"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"addAgility",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":1,
                                                   "y":46,
                                                   "width":19,
                                                   "text":"99",
                                                   "styleName":"LabelPropertyText"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"addStamina",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":1,
                                                   "y":24,
                                                   "width":19,
                                                   "text":"99",
                                                   "styleName":"LabelPropertyText"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"addIntelligence",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":0.95,
                                                   "y":68,
                                                   "width":19,
                                                   "text":"99",
                                                   "styleName":"LabelPropertyText"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"addEnergy",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":0.95,
                                                   "y":90,
                                                   "width":19,
                                                   "text":"99",
                                                   "styleName":"LabelPropertyText"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":CheckBox,
                                             "id":"AddPropCheck",
                                             "events":{"change":"__AddPropCheck_change"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":0,
                                                   "y":110,
                                                   "width":18,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":12,
                                                   "y":110,
                                                   "width":32,
                                                   "height":20,
                                                   "label":"*10"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicDelayButton,
                                             "id":"btnOK",
                                             "events":{"click":"__btnOK_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingBottom = 0;
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                                this.paddingTop = 0;
                                                this.cornerRadius = 3;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":110,
                                                   "height":19,
                                                   "width":40,
                                                   "x":32.85,
                                                   "styleName":"BtnNormalRed"
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"attack",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":191,
                                          "y":8,
                                          "text":"123456",
                                          "width":66,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"mAttack",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":191,
                                          "y":30,
                                          "text":"123456",
                                          "width":66,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"defence",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":191,
                                          "y":52,
                                          "text":"123456",
                                          "width":66,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"mDefence",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":191,
                                          "y":73,
                                          "text":"123456",
                                          "width":66,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"hit",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":191,
                                          "y":96,
                                          "width":66,
                                          "text":"123456",
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"dodge",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":191,
                                          "y":117,
                                          "width":66,
                                          "text":"123456",
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"critical",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":191,
                                          "y":160,
                                          "text":"123456",
                                          "width":66,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"speed",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":191,
                                          "y":139,
                                          "width":66,
                                          "text":"123456",
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"attLastPoint",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":37.1,
                                          "y":160,
                                          "width":35,
                                          "text":"12345",
                                          "height":18
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn0",
                           "events":{"click":"__tabBtn0_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":14,
                                 "y":3,
                                 "width":45,
                                 "styleName":"HorizontalTab",
                                 "height":20,
                                 "selected":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn2",
                           "events":{"click":"__tabBtn2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":61,
                                 "y":3,
                                 "width":45,
                                 "styleName":"HorizontalTab",
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn1",
                           "events":{"click":"__tabBtn1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":155,
                                 "y":3,
                                 "width":45,
                                 "styleName":"HorizontalTab",
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn3",
                           "events":{"click":"__tabBtn3_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":108,
                                 "y":3,
                                 "width":45,
                                 "styleName":"HorizontalTab",
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn4",
                           "events":{"click":"__tabBtn4_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":203,
                                 "y":3,
                                 "width":45,
                                 "styleName":"HorizontalTab",
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicDelayButton,
                           "id":"btnPos",
                           "events":{"click":"__btnPos_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":250,
                                 "y":1,
                                 "styleName":"BtnBatPos",
                                 "width":55,
                                 "height":19
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"img",
                  "stylesFactory":function():void
                  {
                     this.left = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":230,
                        "width":150,
                        "y":60,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"pmImg",
                  "stylesFactory":function():void
                  {
                     this.left = "20";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":20,
                        "width":25,
                        "y":60,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"ngImg",
                  "stylesFactory":function():void
                  {
                     this.left = "20";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":25,
                        "width":25,
                        "y":85,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"rbImg",
                  "events":{"click":"__rbImg_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "100";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":45,
                        "width":40,
                        "y":60,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"showDetailProp",
                  "events":{"click":"__showDetailProp_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":303,
                        "y":147,
                        "height":155,
                        "width":12,
                        "styleName":"EquipBagRight"
                     };
                  }
               })]
            };
         }
      });
      
      public function CharactorPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 315;
         this.height = 460;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CharactorPanel._watcherSetupUtil = param1;
      }
      
      public function set attIntelligence(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1319279616attIntelligence;
         if(_loc2_ !== param1)
         {
            this._1319279616attIntelligence = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attIntelligence",_loc2_,param1));
         }
      }
      
      public function __btn_sj_click(param1:MouseEvent) : void
      {
         beginStarLvUp();
      }
      
      public function set addStrength(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._817036290addStrength;
         if(_loc2_ !== param1)
         {
            this._817036290addStrength = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addStrength",_loc2_,param1));
         }
      }
      
      public function set wingHide(param1:CheckBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1113783315wingHide;
         if(_loc2_ !== param1)
         {
            this._1113783315wingHide = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wingHide",_loc2_,param1));
         }
      }
      
      public function __star3_click(param1:MouseEvent) : void
      {
         clickStar(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get dressHide() : CheckBox
      {
         return this._695539687dressHide;
      }
      
      public function ___CharactorPanel_Canvas3_show(param1:FlexEvent) : void
      {
         updateProperty();
      }
      
      public function __minusStaminaButton_buttonDown(param1:FlexEvent) : void
      {
         buttonClick(param1);
      }
      
      public function set dressHide(param1:CheckBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._695539687dressHide;
         if(_loc2_ !== param1)
         {
            this._695539687dressHide = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dressHide",_loc2_,param1));
         }
      }
      
      private function setBattlePos() : void
      {
         btnPos.selected = !btnPos.selected;
         if(btnPos.selected)
         {
            btnPos.label = Language.CHARACTORPANEL_U[6];
         }
         else
         {
            btnPos.label = Language.CHARACTORPANEL_U[5];
         }
         _core.remote.setBp(btnPos.selected);
         _core.player.bp = int(btnPos.selected);
      }
      
      [Bindable(event="propertyChange")]
      public function get vigorLabel() : BasicTxtButton
      {
         return this._331517891vigorLabel;
      }
      
      [Bindable(event="propertyChange")]
      public function get actpoint() : BoxLabel
      {
         return this._1649711042actpoint;
      }
      
      public function set star2(param1:StarIcon) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109757472star2;
         if(_loc2_ !== param1)
         {
            this._109757472star2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star2",_loc2_,param1));
         }
      }
      
      public function set star3(param1:StarIcon) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109757473star3;
         if(_loc2_ !== param1)
         {
            this._109757473star3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star3",_loc2_,param1));
         }
      }
      
      public function set star4(param1:StarIcon) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109757474star4;
         if(_loc2_ !== param1)
         {
            this._109757474star4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star4",_loc2_,param1));
         }
      }
      
      public function set star1(param1:StarIcon) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109757471star1;
         if(_loc2_ !== param1)
         {
            this._109757471star1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star1",_loc2_,param1));
         }
      }
      
      public function set star5(param1:StarIcon) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109757475star5;
         if(_loc2_ !== param1)
         {
            this._109757475star5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star5",_loc2_,param1));
         }
      }
      
      public function set star6(param1:StarIcon) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109757476star6;
         if(_loc2_ !== param1)
         {
            this._109757476star6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star6",_loc2_,param1));
         }
      }
      
      public function set star8(param1:StarIcon) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109757478star8;
         if(_loc2_ !== param1)
         {
            this._109757478star8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star8",_loc2_,param1));
         }
      }
      
      public function __star8_click(param1:MouseEvent) : void
      {
         clickStar(8);
      }
      
      public function set star7(param1:StarIcon) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109757477star7;
         if(_loc2_ !== param1)
         {
            this._109757477star7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star7",_loc2_,param1));
         }
      }
      
      public function resetStars() : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(Boolean(_starTimer) && _starTimer.running)
         {
            _starTimer.stop();
            _starTimer = null;
         }
         starLvUping = false;
         _lvUpStarType = -1;
         _interval = 0;
         lb_sLevel.text = "";
         lb_addition.text = "";
         lb_leftSecDesc.text = "";
         lb_name.text = "";
         ta_desc.text = "";
         lb_add.text = "";
         var _loc1_:Object = _core.data.gameDataIndex2[GamePredef.TBL_STARS_TEMPLATE][1];
         for each(_loc2_ in _loc1_)
         {
            _loc3_ = new Object();
            _loc3_.currentId = 0;
            _loc3_.finishDate = -1;
            _loc3_.nextId = _loc2_.id;
            this["star" + _loc2_.type].setData(_loc3_);
            this["star" + _loc2_.type].stopEffect();
         }
      }
      
      public function set star9(param1:StarIcon) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109757479star9;
         if(_loc2_ !== param1)
         {
            this._109757479star9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get speed() : BoxLabel
      {
         return this._109641799speed;
      }
      
      [Bindable(event="propertyChange")]
      public function get addAgility() : RoundedLabel
      {
         return this._850872420addAgility;
      }
      
      public function set makerActiveInfo(param1:TextArea) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._808946632makerActiveInfo;
         if(_loc2_ !== param1)
         {
            this._808946632makerActiveInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"makerActiveInfo",_loc2_,param1));
         }
      }
      
      public function set vigorLabel(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._331517891vigorLabel;
         if(_loc2_ !== param1)
         {
            this._331517891vigorLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vigorLabel",_loc2_,param1));
         }
      }
      
      public function set actpoint(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1649711042actpoint;
         if(_loc2_ !== param1)
         {
            this._1649711042actpoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actpoint",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _core() : Core
      {
         return this._90794110_core;
      }
      
      public function __AddPropCheck_change(param1:Event) : void
      {
         if(AddPropCheck.selected)
         {
            PropMultiple = 10;
         }
         else
         {
            PropMultiple = 1;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get attStamina() : BoxLabel
      {
         return this._1023416178attStamina;
      }
      
      public function set speed(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._109641799speed;
         if(_loc2_ !== param1)
         {
            this._109641799speed = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"speed",_loc2_,param1));
         }
      }
      
      public function set defence(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1544916048defence;
         if(_loc2_ !== param1)
         {
            this._1544916048defence = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"defence",_loc2_,param1));
         }
      }
      
      public function set infoName(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._177753177infoName;
         if(_loc2_ !== param1)
         {
            this._177753177infoName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoName",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get addAgilityButton() : Button
      {
         return this._279478090addAgilityButton;
      }
      
      public function __btnPos_click(param1:MouseEvent) : void
      {
         setBattlePos();
      }
      
      [Bindable(event="propertyChange")]
      public function get starActiveInfo() : TextArea
      {
         return this._1295447866starActiveInfo;
      }
      
      public function set addAgility(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._850872420addAgility;
         if(_loc2_ !== param1)
         {
            this._850872420addAgility = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addAgility",_loc2_,param1));
         }
      }
      
      public function set minusEnergyButton(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1863068566minusEnergyButton;
         if(_loc2_ !== param1)
         {
            this._1863068566minusEnergyButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"minusEnergyButton",_loc2_,param1));
         }
      }
      
      private function updateStarsData(param1:Object) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Number = NaN;
         var _loc2_:int = 0;
         for(_loc3_ in param1)
         {
            _loc5_ = new Object();
            _loc5_.currentId = param1[_loc3_].tid;
            _loc5_.finishDate = param1[_loc3_].finishDate;
            _loc5_.nextId = getNextStarId(_loc5_.currentId,_loc3_);
            this["star" + _loc3_].setData(_loc5_);
            if(_loc5_.finishDate > 0)
            {
               _loc7_ = new Date().getTime() + _core.timeLag - TimeUtil.timeOSOffSet;
               if(_loc7_ >= _loc5_.finishDate)
               {
                  _core.remote.call("finishStarLvUp",new Responder(onFinishStarLvUp),_loc3_);
               }
               else
               {
                  onBeginStarLvUp(param1);
               }
            }
            _loc6_ = GameData.d[GamePredef.TBL_STARS_TEMPLATE][_loc5_.currentId];
            if(_loc6_)
            {
               _loc2_ += parseInt(_loc6_.level);
            }
         }
         lb_sLevel.text = _loc2_.toString();
         _loc4_ = 1;
         while(_loc4_ <= 12)
         {
            this["star" + _loc4_].checkLvUpCond(_loc2_);
            _loc4_++;
         }
         if(firstFlag)
         {
            clickStar(1);
            firstFlag = false;
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1 && firstTimeFlag)
         {
            initView();
            firstTimeFlag = false;
         }
      }
      
      public function updateMount() : void
      {
         var _loc3_:* = undefined;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         if(!this.initialized)
         {
            return;
         }
         if(!this.visible || tab.selectedIndex != 4)
         {
            return;
         }
         propertyCanvas.x = 20;
         propertyCanvas.y = 212;
         var _loc1_:Boolean = false;
         var _loc2_:Object = GameData.d[GamePredef.TBL_MOUNT_DRESS];
         for(_loc3_ in _loc2_)
         {
            if(Boolean(_loc2_[_loc3_]) && Number(_loc2_[_loc3_]["resCode"]) == _core.player.mountResCode)
            {
               _loc4_ = ResManager.hash(ResManager.getIconUrlNoHash(Number(_loc2_[_loc3_]["iconCode"])));
               mountImg.source = _loc4_;
               _loc1_ = true;
               break;
            }
         }
         if(!_loc1_)
         {
            _loc5_ = GameData.d[GamePredef.TBL_MOUNT_DRESS][1];
            if(!_loc5_)
            {
               return;
            }
            _loc4_ = ResManager.hash(ResManager.getIconUrlNoHash(Number(_loc5_["iconCode"])));
            mountImg.source = _loc4_;
         }
         mountImg.visible = true;
      }
      
      public function set imgCanva(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._721177480imgCanva;
         if(_loc2_ !== param1)
         {
            this._721177480imgCanva = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgCanva",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mountImg() : Image
      {
         return this._123813654mountImg;
      }
      
      [Bindable(event="propertyChange")]
      public function get chivalLabel() : BasicTxtButton
      {
         return this._1275572471chivalLabel;
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_leftSec() : RoundedLabel
      {
         return this._1628156161lb_leftSec;
      }
      
      private function set _core(param1:Core) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._90794110_core;
         if(_loc2_ !== param1)
         {
            this._90794110_core = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_core",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get eq1() : ItemSlot
      {
         return this._100613eq1;
      }
      
      public function set GXLabel(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1180791939GXLabel;
         if(_loc2_ !== param1)
         {
            this._1180791939GXLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"GXLabel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get eq3() : ItemSlot
      {
         return this._100615eq3;
      }
      
      [Bindable(event="propertyChange")]
      public function get eq5() : ItemSlot
      {
         return this._100617eq5;
      }
      
      [Bindable(event="propertyChange")]
      public function get eq6() : ItemSlot
      {
         return this._100618eq6;
      }
      
      public function __minusAgilityButton_buttonDown(param1:FlexEvent) : void
      {
         buttonClick(param1);
      }
      
      public function set spirituality(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._844311679spirituality;
         if(_loc2_ !== param1)
         {
            this._844311679spirituality = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spirituality",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get eq4() : ItemSlot
      {
         return this._100616eq4;
      }
      
      public function set attEnergy(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1270522743attEnergy;
         if(_loc2_ !== param1)
         {
            this._1270522743attEnergy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attEnergy",_loc2_,param1));
         }
      }
      
      private function dressHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_DRESS);
         _loc2_ && _loc2_.show();
      }
      
      [Bindable(event="propertyChange")]
      public function get eq9() : ItemSlot
      {
         return this._100621eq9;
      }
      
      [Bindable(event="propertyChange")]
      public function get eq8() : ItemSlot
      {
         return this._100620eq8;
      }
      
      public function set attStamina(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1023416178attStamina;
         if(_loc2_ !== param1)
         {
            this._1023416178attStamina = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attStamina",_loc2_,param1));
         }
      }
      
      public function handleStarLvComplete(param1:TimerEvent) : void
      {
         var _loc2_:int = 0;
         _interval = 0;
         var _loc3_:int = 1;
         while(_loc3_ <= 12)
         {
            if(this["star" + _loc3_].starData.finishDate > 0)
            {
               _loc2_ = _loc3_;
               break;
            }
            _loc3_++;
         }
         _core.remote.call("finishStarLvUp",new Responder(onFinishStarLvUp),_loc2_);
      }
      
      [Bindable(event="propertyChange")]
      public function get eq2() : ItemSlot
      {
         return this._100614eq2;
      }
      
      [Bindable(event="propertyChange")]
      public function get eq7() : ItemSlot
      {
         return this._100619eq7;
      }
      
      public function set pmImg(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._106755206pmImg;
         if(_loc2_ !== param1)
         {
            this._106755206pmImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pmImg",_loc2_,param1));
         }
      }
      
      private function setIconImagesSouce() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         iconImage01.source = ResManager.ICON_CURRENCY_BTPOINT;
         iconImage02.source = ResManager.ICON_CURRENCY_DOGMEDAL;
         iconImage03.source = ResManager.ICON_CURRENCY_ACHILLESMEDAL;
         iconImage04.source = ResManager.ICON_CURRENCY_BTPOINT;
         iconImage05.source = ResManager.ICON_MAGIC_SOULPNT;
         iconImage06.source = ResManager.ICON_PVP_DOGMEDAL;
         iconImage07.source = ResManager.ICON_BATTLE_EXP;
         iconImage08.source = ResManager.ICON_ELEMENT;
         iconImage09.source = ResManager.ICON_MAGIC_SOULPNT;
         iconImage10.source = ResManager.ICON_MAGIC_SOULPNT;
         iconImage11.source = ResManager.ICON_ELEMENT;
         iconImage12.source = ResManager.ICON_ELEMENT;
         if(_core.player.levelRe > 0)
         {
            this.rbImg.source = ResManager["ICON_REBIRTH_" + _core.player.classId];
            _loc1_ = Language.PLAYER_RELEVEL_TITLE_U[_core.player.levelRe];
            _loc1_ ||= Language.PLAYER_RELEVEL_TITLE_U[Language.PLAYER_RELEVEL_TITLE_U.length];
            _loc2_ = GamePredef.PLAYER_RELEVEL_EXP[_core.player.levelRe];
            _loc2_ ||= "-";
            rbImg.toolTip = LanguageUtil.replace(Language.CHARACTORPANEL_U[73],{
               "military":_loc1_,
               "feats":_core.player.expRe,
               "nextFeats":_loc2_
            });
         }
         else
         {
            this.rbImg.visible = false;
         }
      }
      
      public function setDressHideCBSelected(param1:Boolean) : void
      {
         if(dressHide)
         {
            dressHide.selected = param1;
         }
         GamePredef.GLOBAL_SETTING["dressHide"] = param1;
      }
      
      private function showPropertyPanel() : void
      {
         _core.view.hide(ViewManager.PANEL_CHARACTOR_HONOR);
         _core.view.changeVisible(ViewManager.PANEL_CHARACTOR_PROPERTY);
         _core.view.getUI(ViewManager.PANEL_CHARACTOR_PROPERTY).startFollow(this);
      }
      
      [Bindable(event="propertyChange")]
      public function get chivalTxt() : BoxLabel
      {
         return this._189045043chivalTxt;
      }
      
      [Bindable(event="propertyChange")]
      public function get minusAgilityButton() : Button
      {
         return this._1595537735minusAgilityButton;
      }
      
      public function __img_star_mouseOver(param1:MouseEvent) : void
      {
         img_star.filters = [GamePredef.FILTER_ALLOW_SELECTED];
      }
      
      private function initStars() : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc1_:Object = _core.data.gameDataIndex2[GamePredef.TBL_STARS_TEMPLATE][1];
         for each(_loc2_ in _loc1_)
         {
            _loc3_ = new Object();
            _loc3_.currentId = 0;
            _loc3_.finishDate = -1;
            _loc3_.nextId = _loc2_.id;
            this["star" + _loc2_.type].setData(_loc3_);
         }
         _core.player && updateStarsData(_core.player.starsData);
      }
      
      [Bindable(event="propertyChange")]
      private function get starLvUping() : Boolean
      {
         return this._2033231541starLvUping;
      }
      
      [Bindable(event="propertyChange")]
      public function get img_star() : Image
      {
         return this._694777522img_star;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnOK() : BasicDelayButton
      {
         return this._94069048btnOK;
      }
      
      public function set addAgilityButton(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._279478090addAgilityButton;
         if(_loc2_ !== param1)
         {
            this._279478090addAgilityButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addAgilityButton",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get infoClass() : BoxLabel
      {
         return this._1205539178infoClass;
      }
      
      public function __mWRepairButton_click(param1:MouseEvent) : void
      {
         magicWeaponRepair(param1);
      }
      
      public function __btn_js_click(param1:MouseEvent) : void
      {
         speedUpStarLvUp();
      }
      
      public function __tabBtn4_click(param1:MouseEvent) : void
      {
         tabBtnClick(4,0,1,2,3);
      }
      
      public function setSlot(param1:Object) : void
      {
         _dm.initSlotData(param1);
      }
      
      public function __star1_click(param1:MouseEvent) : void
      {
         clickStar(1);
      }
      
      public function set starActiveInfo(param1:TextArea) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1295447866starActiveInfo;
         if(_loc2_ !== param1)
         {
            this._1295447866starActiveInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starActiveInfo",_loc2_,param1));
         }
      }
      
      public function onChangeName(param1:String) : void
      {
         var _loc2_:String = param1;
         if(_core.haveSpecialStr(_loc2_))
         {
            Alert.show(Language.CHARACTORPANEL_S[11],"");
            return;
         }
         if(_core.haveSpecialStr2(_loc2_))
         {
            Alert.show(Language.CHARSELECTCANVAS_S[19],"");
            return;
         }
         if(_core.haveBadWord(_loc2_))
         {
            return;
         }
         _core.remote.changeNameFree(_loc2_);
      }
      
      [Bindable(event="propertyChange")]
      public function get PKLabel() : BasicTxtButton
      {
         return this._206211513PKLabel;
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_sLevel() : RoundedLabel
      {
         return this._1155663430lb_sLevel;
      }
      
      private function updateProperty() : void
      {
         propertyCanvas.x = 20;
         propertyCanvas.y = 162;
      }
      
      public function __star6_click(param1:MouseEvent) : void
      {
         clickStar(6);
      }
      
      public function updateLastPoint() : void
      {
         if(!_core.player)
         {
            return;
         }
         if(Boolean(_core.player.property) && Boolean(_core.player.property.lastPoint) && Boolean(attLastPoint))
         {
            attLastPoint.text = int(_core.player.property.lastPoint).toString();
         }
      }
      
      public function set mountImg(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._123813654mountImg;
         if(_loc2_ !== param1)
         {
            this._123813654mountImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mountImg",_loc2_,param1));
         }
      }
      
      public function setDressHide() : void
      {
         var _loc1_:Boolean = false;
         if(dressHide)
         {
            _loc1_ = dressHide.selected;
         }
         else
         {
            _loc1_ = Boolean(_core.view.getUI(ViewManager.PANEL_SYSTEM).getDressHideCB());
         }
         if(_loc1_)
         {
            _core.remote.call("setDressHide",new Responder(onSetDressHide),true);
         }
         else
         {
            _core.remote.call("setDressHide",new Responder(onSetDressHide),false);
         }
      }
      
      public function __rbImg_click(param1:MouseEvent) : void
      {
         showRebirthDetail();
      }
      
      public function showRebirthDetail() : void
      {
      }
      
      public function __showDetailProp_click(param1:MouseEvent) : void
      {
         changeDetailVis();
      }
      
      [Bindable(event="propertyChange")]
      public function get vigorTxt() : BoxLabel
      {
         return this._1246589433vigorTxt;
      }
      
      public function set chivalLabel(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1275572471chivalLabel;
         if(_loc2_ !== param1)
         {
            this._1275572471chivalLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chivalLabel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get addIntelligence() : RoundedLabel
      {
         return this._1420795392addIntelligence;
      }
      
      public function __dressHide_click(param1:MouseEvent) : void
      {
         setDressHide();
      }
      
      public function set eq1(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._100613eq1;
         if(_loc2_ !== param1)
         {
            this._100613eq1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eq1",_loc2_,param1));
         }
      }
      
      public function set eq2(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._100614eq2;
         if(_loc2_ !== param1)
         {
            this._100614eq2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eq2",_loc2_,param1));
         }
      }
      
      public function set eq3(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._100615eq3;
         if(_loc2_ !== param1)
         {
            this._100615eq3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eq3",_loc2_,param1));
         }
      }
      
      public function set eq4(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._100616eq4;
         if(_loc2_ !== param1)
         {
            this._100616eq4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eq4",_loc2_,param1));
         }
      }
      
      public function set lb_leftSec(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1628156161lb_leftSec;
         if(_loc2_ !== param1)
         {
            this._1628156161lb_leftSec = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_leftSec",_loc2_,param1));
         }
      }
      
      public function set eq5(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._100617eq5;
         if(_loc2_ !== param1)
         {
            this._100617eq5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eq5",_loc2_,param1));
         }
      }
      
      public function set eq6(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._100618eq6;
         if(_loc2_ !== param1)
         {
            this._100618eq6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eq6",_loc2_,param1));
         }
      }
      
      public function set hp(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3336hp;
         if(_loc2_ !== param1)
         {
            this._3336hp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hp",_loc2_,param1));
         }
      }
      
      public function set eq8(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._100620eq8;
         if(_loc2_ !== param1)
         {
            this._100620eq8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eq8",_loc2_,param1));
         }
      }
      
      public function set eq9(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._100621eq9;
         if(_loc2_ !== param1)
         {
            this._100621eq9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eq9",_loc2_,param1));
         }
      }
      
      public function __star12_click(param1:MouseEvent) : void
      {
         clickStar(12);
      }
      
      public function set eq7(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._100619eq7;
         if(_loc2_ !== param1)
         {
            this._100619eq7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eq7",_loc2_,param1));
         }
      }
      
      public function set mAttack(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._74771179mAttack;
         if(_loc2_ !== param1)
         {
            this._74771179mAttack = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mAttack",_loc2_,param1));
         }
      }
      
      public function set ta_desc(param1:TextArea) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1555913437ta_desc;
         if(_loc2_ !== param1)
         {
            this._1555913437ta_desc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ta_desc",_loc2_,param1));
         }
      }
      
      private function openEffectPanel() : void
      {
         _core.view.changeVisible(ViewManager.PANEL_STAR_EFFECT);
         _core.view.getUI(ViewManager.PANEL_STAR_EFFECT).startFollow(this);
      }
      
      public function set XGCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._652133081XGCanvas;
         if(_loc2_ !== param1)
         {
            this._652133081XGCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"XGCanvas",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pop() : BoxLabel
      {
         return this._111185pop;
      }
      
      [Bindable(event="propertyChange")]
      public function get infoTitle() : BoxLabel
      {
         return this._1221167690infoTitle;
      }
      
      private function changeName() : void
      {
         if(infoName.text.indexOf(changeFlag) < 0)
         {
            return;
         }
         _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.CHARACTORPANEL_S[9],Language.CHARACTORPANEL_S[10],onChangeName);
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_add() : RoundedLabel
      {
         return this._1109587368lb_add;
      }
      
      public function set chivalTxt(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._189045043chivalTxt;
         if(_loc2_ !== param1)
         {
            this._189045043chivalTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chivalTxt",_loc2_,param1));
         }
      }
      
      private function setWingHide() : void
      {
         _core.remote.call("setWingHide",new Responder(onSetWingHide),wingHide.selected);
      }
      
      public function set btnOK(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._94069048btnOK;
         if(_loc2_ !== param1)
         {
            this._94069048btnOK = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnOK",_loc2_,param1));
         }
      }
      
      public function __minusIntelligenceButton_buttonDown(param1:FlexEvent) : void
      {
         buttonClick(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get addEnergy() : RoundedLabel
      {
         return this._405874039addEnergy;
      }
      
      [Bindable(event="propertyChange")]
      public function get addStamina() : RoundedLabel
      {
         return this._10889870addStamina;
      }
      
      [Bindable(event="propertyChange")]
      public function get mwMain() : ItemSlot
      {
         return this._1062100349mwMain;
      }
      
      public function set minusAgilityButton(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1595537735minusAgilityButton;
         if(_loc2_ !== param1)
         {
            this._1595537735minusAgilityButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"minusAgilityButton",_loc2_,param1));
         }
      }
      
      public function __wingHide_click(param1:MouseEvent) : void
      {
         setWingHide();
      }
      
      private function initCharEquListen() : void
      {
         var _loc1_:int = int(GamePredef.SLOT_SID_EQUIP[0]);
         while(_loc1_ <= GamePredef.SLOT_SID_EQUIP[1] - 6)
         {
            this["eq" + _loc1_].addEventListener(Slot.EVENT_SLOT_DCLICK,equDClickHandler);
            _loc1_++;
         }
         mwMain.addEventListener(Slot.EVENT_SLOT_DCLICK,equDClickHandler);
         mwSub1.addEventListener(Slot.EVENT_SLOT_DCLICK,equDClickHandler);
         mwSub2.addEventListener(Slot.EVENT_SLOT_DCLICK,equDClickHandler);
         mwSub3.addEventListener(Slot.EVENT_SLOT_DCLICK,equDClickHandler);
         mwSub4.addEventListener(Slot.EVENT_SLOT_DCLICK,equDClickHandler);
         mwSub5.addEventListener(Slot.EVENT_SLOT_DCLICK,equDClickHandler);
      }
      
      public function set img_star(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._694777522img_star;
         if(_loc2_ !== param1)
         {
            this._694777522img_star = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img_star",_loc2_,param1));
         }
      }
      
      private function set starLvUping(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2033231541starLvUping;
         if(_loc2_ !== param1)
         {
            this._2033231541starLvUping = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starLvUping",_loc2_,param1));
         }
      }
      
      public function set levelUpButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1365556561levelUpButton;
         if(_loc2_ !== param1)
         {
            this._1365556561levelUpButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelUpButton",_loc2_,param1));
         }
      }
      
      public function set addIntelligenceButton(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1991903918addIntelligenceButton;
         if(_loc2_ !== param1)
         {
            this._1991903918addIntelligenceButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addIntelligenceButton",_loc2_,param1));
         }
      }
      
      public function set actpointLabel(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._459185494actpointLabel;
         if(_loc2_ !== param1)
         {
            this._459185494actpointLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actpointLabel",_loc2_,param1));
         }
      }
      
      public function set vigorTxt1(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._10433192vigorTxt1;
         if(_loc2_ !== param1)
         {
            this._10433192vigorTxt1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vigorTxt1",_loc2_,param1));
         }
      }
      
      public function set vigorTxt2(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._10433191vigorTxt2;
         if(_loc2_ !== param1)
         {
            this._10433191vigorTxt2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vigorTxt2",_loc2_,param1));
         }
      }
      
      public function set vigorTxt3(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._10433190vigorTxt3;
         if(_loc2_ !== param1)
         {
            this._10433190vigorTxt3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vigorTxt3",_loc2_,param1));
         }
      }
      
      public function set vigorTxt4(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._10433189vigorTxt4;
         if(_loc2_ !== param1)
         {
            this._10433189vigorTxt4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vigorTxt4",_loc2_,param1));
         }
      }
      
      public function set btnTitle(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2097958236btnTitle;
         if(_loc2_ !== param1)
         {
            this._2097958236btnTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnTitle",_loc2_,param1));
         }
      }
      
      public function set vigorTxt8(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._10433185vigorTxt8;
         if(_loc2_ !== param1)
         {
            this._10433185vigorTxt8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vigorTxt8",_loc2_,param1));
         }
      }
      
      public function set vigorTxt5(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._10433188vigorTxt5;
         if(_loc2_ !== param1)
         {
            this._10433188vigorTxt5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vigorTxt5",_loc2_,param1));
         }
      }
      
      public function set vigorTxt9(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._10433184vigorTxt9;
         if(_loc2_ !== param1)
         {
            this._10433184vigorTxt9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vigorTxt9",_loc2_,param1));
         }
      }
      
      public function set vigorTxt6(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._10433187vigorTxt6;
         if(_loc2_ !== param1)
         {
            this._10433187vigorTxt6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vigorTxt6",_loc2_,param1));
         }
      }
      
      public function ___CharactorPanel_BasicGlowButton12_click(param1:MouseEvent) : void
      {
         awakenHandler(param1);
      }
      
      public function handleStarTimer(param1:TimerEvent) : void
      {
         var _loc2_:int = _interval / (3600 * 24);
         var _loc3_:int = _interval % (3600 * 24) / 3600;
         var _loc4_:int = _interval % 3600 / 60;
         var _loc5_:int = _interval % 3600 % 60;
         lb_leftSecDesc.text = Language.CHARACTORPANEL_S[67].toString().replace("{d}",_loc2_).replace("{h}",_loc3_).replace("{m}",_loc4_).replace("{s}",_loc5_);
         --_interval;
      }
      
      private function _CharactorPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CHARACTORPANEL_U[7];
         _loc1_ = Language.CHARACTORPANEL_U[3];
         _loc1_ = ResManager.TOTEM_CHARACTER;
         _loc1_ = Language.CHARACTORPANEL_S[12];
         _loc1_ = [1];
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.CHARACTORPANEL_S[13];
         _loc1_ = [2];
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.CHARACTORPANEL_S[14];
         _loc1_ = [3];
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.CHARACTORPANEL_S[15];
         _loc1_ = [4];
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.CHARACTORPANEL_S[16];
         _loc1_ = [5];
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.CHARACTORPANEL_S[17];
         _loc1_ = [6];
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.CHARACTORPANEL_S[18];
         _loc1_ = [7];
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.CHARACTORPANEL_S[19];
         _loc1_ = [8];
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.CHARACTORPANEL_S[20];
         _loc1_ = [9];
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.CHARACTORPANEL_S[21];
         _loc1_ = [10];
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.CHARACTORPANEL_S[22];
         _loc1_ = [11];
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.CHARACTORPANEL_S[23];
         _loc1_ = [12];
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.CHARACTORPANEL_S[41];
         _loc1_ = [13];
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.CHARACTORPANEL_S[53];
         _loc1_ = [14];
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.CHARACTORPANEL_S[54];
         _loc1_ = [21];
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.CHARACTORPANEL_S[63];
         _loc1_ = [22];
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = getDressHideData();
         _loc1_ = Language.CHARACTORPANEL_S[56];
         _loc1_ = getWingHideData();
         _loc1_ = Language.CHARACTORPANEL_S[64];
         _loc1_ = Language.CHARACTORPANEL_S[24];
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = Language.CHARACTORPANEL_S[26];
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = Language.DRESS_PANEL[48];
         _loc1_ = Language.DECORATE_PANEL[17];
         _loc1_ = Language.CHARACTORINFOPANEL_S[46];
         _loc1_ = Language.CHARACTORPANEL_U[2];
         _loc1_ = Language.CHARACTORPANEL_S[35];
         _loc1_ = Language.CHARACTORPANEL_U[1];
         _loc1_ = Language.CHARACTORPANEL_U[24];
         _loc1_ = LanguageUtil.replace(Language.CHARACTORPANEL_U[74],{
            "name":infoName.text,
            "gender":GamePredef.GENDER_NAME[_core.player.gender],
            "cid":_core.cid
         });
         _loc1_ = Language.CHARACTORPANEL_U[24];
         _loc1_ = infoName.text.indexOf(changeFlag) > 0;
         _loc1_ = Language.CHARACTORPANEL_U[25];
         _loc1_ = Language.CHARACTORPANEL_S[58];
         _loc1_ = Language.CHARACTORPANEL_U[26];
         _loc1_ = Language.CHARACTORPANEL_S[59];
         _loc1_ = Language.CHARACTORPANEL_U[66];
         _loc1_ = Language.CHARACTORPANEL_U[69];
         _loc1_ = Language.CHARACTORPANEL_U[35];
         _loc1_ = Language.CHARACTORPANEL_S[37];
         _loc1_ = Language.CHARACTORPANEL_U[36];
         _loc1_ = Language.CHARACTORPANEL_S[38];
         _loc1_ = Language.CHARACTORPANEL_U[37];
         _loc1_ = Language.CHARACTORPANEL_U[38];
         _loc1_ = Language.CHARACTORPANEL_S[40];
         _loc1_ = Language.CHARACTORPANEL_U[39];
         _loc1_ = Language.CHARACTORPANEL_S[40];
         _loc1_ = _core.player.btPnt;
         _loc1_ = _core.player.dogM;
         _loc1_ = _core.player.cbM;
         _loc1_ = _core.player.paPnt;
         _loc1_ = _core.player.soulPnt;
         _loc1_ = _core.player.threePvpPnt;
         _loc1_ = _core.player.stoneSealPoint;
         _loc1_ = _core.player.elementPnt;
         _loc1_ = _core.player.pvePoint;
         _loc1_ = _core.player.wisdonCrystal;
         _loc1_ = _core.player.npPnt;
         _loc1_ = _core.player.mysteryCrystal;
         _loc1_ = Language.CHARACTORPANEL_U[40];
         _loc1_ = Language.CHARACTORPANEL_U[41];
         _loc1_ = Language.CHARACTORPANEL_U[43];
         _loc1_ = Language.CHARACTORPANEL_U[46];
         _loc1_ = Language.CHARACTORPANEL_U[62];
         _loc1_ = Language.CHARACTORPANEL_U[63];
         _loc1_ = Language.CHARACTORPANEL_S[57];
         _loc1_ = Language.CHARACTORPANEL_U[68];
         _loc1_ = Language.CHARACTORPANEL_U[70];
         _loc1_ = Language.CHARACTORPANEL_U[71];
         _loc1_ = Language.CHARACTORPANEL_U[72];
         _loc1_ = Language.CHARACTORPANEL_U[75];
         _loc1_ = Language.CHARACTORPANEL_U[32];
         _loc1_ = ResManager.TOTEM_MAGIC_WEAPON;
         _loc1_ = Language.CHARACTORPANEL_U[33];
         _loc1_ = [15];
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.CHARACTORPANEL_U[34] + "1";
         _loc1_ = [16];
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.CHARACTORPANEL_U[34] + "2";
         _loc1_ = [17];
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.CHARACTORPANEL_U[34] + "3";
         _loc1_ = [18];
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.CHARACTORPANEL_U[34] + "4";
         _loc1_ = [19];
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.CHARACTORPANEL_U[34] + "5";
         _loc1_ = [20];
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.CHARACTORPANEL_U[61];
         _loc1_ = Language.CHARACTORPANEL_S[77];
         _loc1_ = Language.CHARACTORPANEL_U[47];
         _loc1_ = starLvUping;
         _loc1_ = Language.CHARACTORPANEL_U[59];
         _loc1_ = Language.CHARACTORPANEL_S[71];
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = Language.CHARACTORPANEL_U[50];
         _loc1_ = starLvUping;
         _loc1_ = Language.CHARACTORPANEL_U[49];
         _loc1_ = !starLvUping;
         _loc1_ = Language.CHARACTORPANEL_U[60];
         _loc1_ = Language.CHARACTORPANEL_U[48];
         _loc1_ = Language.CHARACTORPANEL_U[58];
         _loc1_ = Language.CHARACTORPANEL_U[55];
         _loc1_ = starLvUping;
         _loc1_ = starLvUping;
         _loc1_ = Language.AWAKEN_PANEL[0];
         _loc1_ = Language.CHARACTORPANEL_U[64];
         _loc1_ = Language.CHARACTORPANEL_U[65];
         _loc1_ = Language.CHARACTORPANEL_U[8];
         _loc1_ = Language.CHARACTORPANEL_U[10];
         _loc1_ = Language.CHARACTORPANEL_U[12];
         _loc1_ = Language.CHARACTORPANEL_U[14];
         _loc1_ = Language.CHARACTORPANEL_U[16];
         _loc1_ = Language.CHARACTORPANEL_U[18];
         _loc1_ = Language.CHARACTORPANEL_U[20];
         _loc1_ = Language.CHARACTORPANEL_U[22];
         _loc1_ = Language.CHARACTORPANEL_U[9];
         _loc1_ = Language.CHARACTORPANEL_U[11];
         _loc1_ = Language.CHARACTORPANEL_U[13];
         _loc1_ = Language.CHARACTORPANEL_U[15];
         _loc1_ = Language.CHARACTORPANEL_U[17];
         _loc1_ = Language.CHARACTORPANEL_U[19];
         _loc1_ = Language.CHARACTORPANEL_U[21];
         _loc1_ = Language.CHARACTORPANEL_U[23];
         _loc1_ = GamePredef.PROP_STR;
         _loc1_ = GamePredef.PROP_AGI;
         _loc1_ = GamePredef.PROP_STA;
         _loc1_ = GamePredef.PROP_INT;
         _loc1_ = GamePredef.PROP_SPR;
         _loc1_ = GamePredef.PROP_STR;
         _loc1_ = styleAddName;
         _loc1_ = GamePredef.PROP_AGI;
         _loc1_ = styleAddName;
         _loc1_ = GamePredef.PROP_STA;
         _loc1_ = styleAddName;
         _loc1_ = GamePredef.PROP_INT;
         _loc1_ = styleAddName;
         _loc1_ = GamePredef.PROP_SPR;
         _loc1_ = styleAddName;
         _loc1_ = GamePredef.AADPROPCHECK;
         _loc1_ = Language.CHARACTORPANEL_U[0];
         _loc1_ = Language.CHARACTORPANEL_U[3];
         _loc1_ = Language.CHARACTORPANEL_U[32];
         _loc1_ = Language.CHARACTORPANEL_U[4];
         _loc1_ = Language.CHARACTORPANEL_U[47];
         _loc1_ = Language.MOUNTPANEL_U[0];
         _loc1_ = Language.CHARACTORPANEL_S[60];
      }
      
      public function set vigorTxt7(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._10433186vigorTxt7;
         if(_loc2_ !== param1)
         {
            this._10433186vigorTxt7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vigorTxt7",_loc2_,param1));
         }
      }
      
      public function set infoClass(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1205539178infoClass;
         if(_loc2_ !== param1)
         {
            this._1205539178infoClass = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoClass",_loc2_,param1));
         }
      }
      
      public function __tabBtn2_click(param1:MouseEvent) : void
      {
         tabBtnClick(2,0,1,3,4);
      }
      
      [Bindable(event="propertyChange")]
      public function get attLastPoint() : BoxLabel
      {
         return this._30739193attLastPoint;
      }
      
      private function beginStarLvUp() : void
      {
         if(_interval > 0)
         {
            Alert.show(Language.CHARACTORPANEL_S[65]);
            return;
         }
         if(_selectStarType <= 0)
         {
            Alert.show(Language.CHARACTORPANEL_S[66]);
            return;
         }
         var _loc1_:Object = this["star" + _selectStarType].starData;
         _core.remote.call("beginStarLvUp",new Responder(onBeginStarLvUp),_loc1_.nextId);
      }
      
      public function updateView() : void
      {
         updateProp();
         updateInfo();
         if(tab.selectedIndex == 0 || tab.selectedIndex == 2)
         {
            updateEquip();
         }
      }
      
      public function onSetWingHide(param1:*) : void
      {
         if(param1 == -1)
         {
            wingHide.selected = false;
            GamePredef.GLOBAL_SETTING["wingHide"] = false;
         }
         else
         {
            GamePredef.GLOBAL_SETTING["wingHide"] = param1;
         }
      }
      
      private function magicWeaponRepair(param1:MouseEvent) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc5_:Object = null;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var _loc8_:Array = null;
         param1.stopImmediatePropagation();
         if(_core.state == GamePredef.ST_BATTLE)
         {
            return;
         }
         if(param1.ctrlKey)
         {
            _loc2_ = new Array();
            _loc3_ = null;
            _loc4_ = 0;
            if(Boolean(mwMain.slotData) && ToolKit.isBigThan(mwMain.slotData.id,0))
            {
               _loc3_ = _core.data.gameData[mwMain.slotData.type][mwMain.slotData.itemId];
               if(!_loc3_)
               {
                  return;
               }
               _loc4_ += _loc3_.endureMax - _loc3_.endureLeft;
               _loc2_.push(mwMain.slotData.id);
            }
            _loc6_ = 1;
            while(_loc6_ < 6)
            {
               _loc5_ = this["mwSub" + _loc6_].slotData;
               if((Boolean(_loc5_)) && ToolKit.isBigThan(_loc5_.id,0))
               {
                  _loc3_ = _core.data.gameData[_loc5_.type][_loc5_.itemId];
                  if(!_loc3_)
                  {
                     return;
                  }
                  _loc4_ += _loc3_.endureMax - _loc3_.endureLeft;
                  _loc2_.push(_loc5_.id);
               }
               _loc6_++;
            }
            _loc7_ = Math.ceil(_loc4_ / GamePredef.MAGIC_WEAPON_REPAIR_ENDURE_BASIC);
            _loc8_ = _core.basic.getItemSlotList(ItemConfig.ITEM_DARKBLUE_STONE,_loc7_);
            if(_loc8_)
            {
               _core.remote.magicWeaponAllRepair(_loc2_,_loc8_);
            }
            else
            {
               _core.sysMidNote(Language.CHARACTORPANEL_S[78].replace("{num}",_loc7_));
            }
         }
         else
         {
            _core.view.showMouse(ResManager.MOUSE_ACTION_IMG[GamePredef.ACTION_REPAIR_MAGIC_WEAPON]);
            _core.view.mouseState = GamePredef.ACTION_REPAIR_MAGIC_WEAPON;
            _core.view.mouseTargetType = GamePredef.MOUSE_TARGET_CHA;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get addEnergyButton() : Button
      {
         return this._708846363addEnergyButton;
      }
      
      public function __img_star_click(param1:MouseEvent) : void
      {
         clickStar(img_star.data.type);
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_leftSecDesc() : RoundedLabel
      {
         return this._1577469134lb_leftSecDesc;
      }
      
      [Bindable(event="propertyChange")]
      public function get PopLabel() : BasicTxtButton
      {
         return this._699206467PopLabel;
      }
      
      public function __star4_click(param1:MouseEvent) : void
      {
         clickStar(4);
      }
      
      public function set mp(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3491mp;
         if(_loc2_ !== param1)
         {
            this._3491mp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mp",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ngImg() : Image
      {
         return this._104729418ngImg;
      }
      
      public function enableUI() : void
      {
         this.btnOK.enabled = true;
         this.levelUpButton.enabled = true;
         this.btnName.enabled = false;
         this.decoBtn.enabled = true;
      }
      
      public function cancelLvUp() : void
      {
         var func:Function;
         if(_interval <= 0)
         {
            _core.sysMidNote(Language.CHARACTORPANEL_S[74]);
            return;
         }
         if(_core.player.starsData[_selectStarType].finishDate < 0)
         {
            _core.sysMidNote(Language.CHARACTORPANEL_S[75].toString().replace("{name}",lb_name.text));
            return;
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("cancelStarLvUp",new Responder(onCancelStarLvUp),_selectStarType);
            }
         };
         Alert.show(Language.CHARACTORPANEL_S[76].toString().replace("{name}",lb_name.text.substr(0,3)),null,Alert.YES | Alert.NO,null,func);
      }
      
      [Bindable(event="propertyChange")]
      public function get addStaminaButton() : Button
      {
         return this._14326624addStaminaButton;
      }
      
      [Bindable(event="propertyChange")]
      public function get infoRebirthExp() : BoxLabel
      {
         return this._1099375777infoRebirthExp;
      }
      
      public function set PKLabel(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._206211513PKLabel;
         if(_loc2_ !== param1)
         {
            this._206211513PKLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PKLabel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rbImg() : Image
      {
         return this._108274547rbImg;
      }
      
      public function set lb_sLevel(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1155663430lb_sLevel;
         if(_loc2_ !== param1)
         {
            this._1155663430lb_sLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_sLevel",_loc2_,param1));
         }
      }
      
      public function disableUI() : void
      {
         this.btnOK.enabled = false;
         this.levelUpButton.enabled = false;
         this.btnName.enabled = false;
         this.decoBtn.enabled = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get infoLevel() : BoxLabel
      {
         return this._1213662070infoLevel;
      }
      
      private function awakenHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_AWAKEN);
         _loc2_ && _loc2_.show();
      }
      
      [Bindable(event="propertyChange")]
      public function get propertyCanvas() : Canvas
      {
         return this._1940048781propertyCanvas;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CharactorPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CharactorPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_CharactorPanelWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },bindings,watchers);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         super.initialize();
      }
      
      [Bindable(event="propertyChange")]
      public function get hit() : BoxLabel
      {
         return this._103315hit;
      }
      
      private function newProperty(param1:Object) : Object
      {
         return null;
      }
      
      public function __star10_click(param1:MouseEvent) : void
      {
         clickStar(10);
      }
      
      [Bindable(event="propertyChange")]
      public function get MWCanvas() : Canvas
      {
         return this._1328020574MWCanvas;
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_addition() : RoundedLabel
      {
         return this._283222949lb_addition;
      }
      
      public function __star9_click(param1:MouseEvent) : void
      {
         clickStar(9);
      }
      
      public function set addStrengthButton(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._426146348addStrengthButton;
         if(_loc2_ !== param1)
         {
            this._426146348addStrengthButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addStrengthButton",_loc2_,param1));
         }
      }
      
      public function set vigorTxt10(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._323428904vigorTxt10;
         if(_loc2_ !== param1)
         {
            this._323428904vigorTxt10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vigorTxt10",_loc2_,param1));
         }
      }
      
      public function set vigorTxt11(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._323428903vigorTxt11;
         if(_loc2_ !== param1)
         {
            this._323428903vigorTxt11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vigorTxt11",_loc2_,param1));
         }
      }
      
      private function getWingHideData() : Boolean
      {
         return Boolean(GamePredef.GLOBAL_SETTING["wingHide"]);
      }
      
      private function getDressHideData() : Boolean
      {
         if(GamePredef.GLOBAL_SETTING["dressHide"] == -1)
         {
            return false;
         }
         return Boolean(Number(GamePredef.GLOBAL_SETTING["dressHide"]));
      }
      
      public function set vigorTxt12(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._323428902vigorTxt12;
         if(_loc2_ !== param1)
         {
            this._323428902vigorTxt12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vigorTxt12",_loc2_,param1));
         }
      }
      
      public function set iconImage03(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1271911909iconImage03;
         if(_loc2_ !== param1)
         {
            this._1271911909iconImage03 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconImage03",_loc2_,param1));
         }
      }
      
      public function set iconImage04(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1271911910iconImage04;
         if(_loc2_ !== param1)
         {
            this._1271911910iconImage04 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconImage04",_loc2_,param1));
         }
      }
      
      public function set iconImage05(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1271911911iconImage05;
         if(_loc2_ !== param1)
         {
            this._1271911911iconImage05 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconImage05",_loc2_,param1));
         }
      }
      
      public function set iconImage06(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1271911912iconImage06;
         if(_loc2_ !== param1)
         {
            this._1271911912iconImage06 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconImage06",_loc2_,param1));
         }
      }
      
      public function set iconImage07(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1271911913iconImage07;
         if(_loc2_ !== param1)
         {
            this._1271911913iconImage07 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconImage07",_loc2_,param1));
         }
      }
      
      public function updateProp() : void
      {
         var _loc2_:String = null;
         if(!_core.player)
         {
            return;
         }
         if(!firstLoad && (addStrength.text != "" || addAgility.text != "" || addStamina.text != "" || addIntelligence.text != "" || addEnergy.text != ""))
         {
            return;
         }
         addElement();
         var _loc1_:Object = _core.player.property;
         if(_loc1_)
         {
            if(Boolean(_loc1_.makerActive) && _loc1_.qualityType > 0)
            {
               makerActiveInfo.text = Language.CHARACTORPANEL_S[25] + "\n";
               if(_loc1_.qualityType == 10)
               {
                  makerActiveInfo.text += Language.GAMEPREDEF_S[348] + "10%\n";
                  makerActiveInfo.text += Language.GAMEPREDEF_S[349] + "2%\n";
                  makerActiveInfo.text += Language.GAMEPREDEF_S[350] + "2%";
               }
               else if(_loc1_.qualityType == 11)
               {
                  makerActiveInfo.text += Language.GAMEPREDEF_S[348] + "10%\n";
                  makerActiveInfo.text += Language.GAMEPREDEF_S[349] + "5%\n";
                  makerActiveInfo.text += Language.GAMEPREDEF_S[350] + "5%";
               }
               else if(_loc1_.qualityType == 15)
               {
                  makerActiveInfo.text += Language.GAMEPREDEF_S[348] + "16%\n";
                  makerActiveInfo.text += Language.GAMEPREDEF_S[349] + "8%\n";
                  makerActiveInfo.text += Language.GAMEPREDEF_S[350] + "8%";
               }
               else if(_loc1_.qualityType == 16)
               {
                  makerActiveInfo.text += Language.GAMEPREDEF_S[348] + "30%\n";
                  makerActiveInfo.text += Language.GAMEPREDEF_S[349] + "15%\n";
                  makerActiveInfo.text += Language.GAMEPREDEF_S[350] + "15%";
               }
               else if(_loc1_.qualityType == 20)
               {
                  makerActiveInfo.text += Language.GAMEPREDEF_S[348] + "40%\n";
                  makerActiveInfo.text += Language.GAMEPREDEF_S[349] + "20%\n";
                  makerActiveInfo.text += Language.GAMEPREDEF_S[350] + "20%";
               }
               makerActiveInfo.visible = true;
            }
            else
            {
               makerActiveInfo.visible = false;
            }
            if(_loc1_.starType > 0)
            {
               starActiveInfo.text = Language.CHARACTORPANEL_S[27] + "\n";
               if(_loc1_.starType == 8)
               {
                  starActiveInfo.text += Language.GAMEPREDEF_S[348] + "10%\n";
                  starActiveInfo.text += Language.GAMEPREDEF_S[349] + "5%\n";
                  starActiveInfo.text += Language.GAMEPREDEF_S[350] + "5%";
               }
               else if(_loc1_.starType == 9)
               {
                  starActiveInfo.text += Language.GAMEPREDEF_S[348] + "20%\n";
                  starActiveInfo.text += Language.GAMEPREDEF_S[349] + "10%\n";
                  starActiveInfo.text += Language.GAMEPREDEF_S[350] + "10%";
               }
               else if(_loc1_.starType == 10)
               {
                  starActiveInfo.text += Language.GAMEPREDEF_S[348] + "30%\n";
                  starActiveInfo.text += Language.GAMEPREDEF_S[349] + "15%\n";
                  starActiveInfo.text += Language.GAMEPREDEF_S[350] + "15%";
               }
               starActiveInfo.visible = true;
            }
            else
            {
               starActiveInfo.visible = false;
            }
            hp.text = int(_core.player.currentHp) + "/" + int(_loc1_.finalHp).toString();
            mp.text = int(_core.player.currentMp) + "/" + int(_loc1_.finalMp).toString();
            attack.text = int(_loc1_.finalAttack).toString();
            mAttack.text = int(_loc1_.finalMAttack).toString();
            defence.text = int(_loc1_.finalDefence).toString();
            mDefence.text = int(_loc1_.finalMDefence).toString();
            hit.text = int(_loc1_.finalHit).toString();
            critical.text = int(_loc1_.finalCritical).toString();
            dodge.text = int(_loc1_.finalDodge).toString();
            speed.text = int(_loc1_.finalSpeed).toString();
            attStrength.text = int(_loc1_.finalStrength).toString();
            attAgility.text = int(_loc1_.finalAgility).toString();
            attStamina.text = int(_loc1_.finalStamina).toString();
            attIntelligence.text = int(_loc1_.finalIntelligence).toString();
            attEnergy.text = int(_loc1_.finalEnergy).toString();
            attLastPoint.text = int(_loc1_.lastPoint).toString();
            spirituality.text = Language.CHARACTORINFOPANEL_S[52].toString().replace("{spirituality}",_loc1_.spirituality);
            addStrength.text = "";
            addAgility.text = "";
            addStamina.text = "";
            addIntelligence.text = "";
            addEnergy.text = "";
            _loc1_.ee = Number(_loc1_.ee);
            _loc1_.en = Number(_loc1_.en);
            _loc1_.ef = Boolean(_loc1_.ef);
            mc.gotoAndStop(1 + _loc1_.ee);
            maskMc.gotoAndStop(1 + _loc1_.en);
            maxMc.visible = _loc1_.ef;
            elemUIC.toolTip = Language.CHARACTORPANEL_S[2] + GamePredef.ELEMENT_INFO[_loc1_.ee];
            _loc2_ = Language.CHARACTORPANEL_S[3];
            if(_loc1_.en < 4)
            {
               _loc2_ = Language.CHARACTORPANEL_S[3];
            }
            else if(_loc1_.en >= 4 && _loc1_.en < 9)
            {
               _loc2_ = Language.CHARACTORPANEL_S[4];
            }
            else if(_loc1_.en >= 9 && _loc1_.en < 13)
            {
               _loc2_ = Language.CHARACTORPANEL_S[5];
            }
            if(_loc1_.ef)
            {
               _loc2_ = Language.CHARACTORPANEL_S[36];
            }
            elemUIC.toolTip += Language.CHARACTORPANEL_S[6] + _loc2_;
            if(Number(_loc1_.lastPoint) > 0)
            {
               addBtnCanvas.enabled = true;
            }
            else
            {
               addBtnCanvas.enabled = false;
            }
            firstLoad = false;
         }
      }
      
      public function set iconImage08(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1271911914iconImage08;
         if(_loc2_ !== param1)
         {
            this._1271911914iconImage08 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconImage08",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         if(!_dm.sInited)
         {
            _core.remote.call("getInitSlot",new Responder(setSlot));
         }
         updateView();
         initCharEquListen();
         setAddStyleName();
      }
      
      public function set iconImage09(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1271911915iconImage09;
         if(_loc2_ !== param1)
         {
            this._1271911915iconImage09 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconImage09",_loc2_,param1));
         }
      }
      
      public function __btn_qx_click(param1:MouseEvent) : void
      {
         cancelLvUp();
      }
      
      public function set iconImage02(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1271911908iconImage02;
         if(_loc2_ !== param1)
         {
            this._1271911908iconImage02 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconImage02",_loc2_,param1));
         }
      }
      
      public function __addIntelligenceButton_buttonDown(param1:FlexEvent) : void
      {
         buttonClick(param1);
      }
      
      public function set iconImage01(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1271911907iconImage01;
         if(_loc2_ !== param1)
         {
            this._1271911907iconImage01 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconImage01",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get minusStaminaButton() : Button
      {
         return this._1889342449minusStaminaButton;
      }
      
      public function set vigorTxt(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1246589433vigorTxt;
         if(_loc2_ !== param1)
         {
            this._1246589433vigorTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vigorTxt",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get wingHide() : CheckBox
      {
         return this._1113783315wingHide;
      }
      
      public function clickStar(param1:int) : void
      {
         var _loc2_:int = 1;
         while(_loc2_ <= 12)
         {
            this["star" + _loc2_].setSourceN();
            _loc2_++;
         }
         this["star" + param1].setSourceC();
         _selectStarType = param1;
         showStar(param1);
      }
      
      public function set addIntelligence(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1420795392addIntelligence;
         if(_loc2_ !== param1)
         {
            this._1420795392addIntelligence = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addIntelligence",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get addStrength() : RoundedLabel
      {
         return this._817036290addStrength;
      }
      
      public function set iconImage12(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1271911939iconImage12;
         if(_loc2_ !== param1)
         {
            this._1271911939iconImage12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconImage12",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get attIntelligence() : BoxLabel
      {
         return this._1319279616attIntelligence;
      }
      
      public function set iconImage10(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1271911937iconImage10;
         if(_loc2_ !== param1)
         {
            this._1271911937iconImage10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconImage10",_loc2_,param1));
         }
      }
      
      public function set attStrength(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1181680126attStrength;
         if(_loc2_ !== param1)
         {
            this._1181680126attStrength = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attStrength",_loc2_,param1));
         }
      }
      
      public function set iconImage11(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1271911938iconImage11;
         if(_loc2_ !== param1)
         {
            this._1271911938iconImage11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconImage11",_loc2_,param1));
         }
      }
      
      public function set btn_js(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1378810356btn_js;
         if(_loc2_ !== param1)
         {
            this._1378810356btn_js = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_js",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get star1() : StarIcon
      {
         return this._109757471star1;
      }
      
      [Bindable(event="propertyChange")]
      public function get star2() : StarIcon
      {
         return this._109757472star2;
      }
      
      [Bindable(event="propertyChange")]
      public function get star3() : StarIcon
      {
         return this._109757473star3;
      }
      
      [Bindable(event="propertyChange")]
      public function get star4() : StarIcon
      {
         return this._109757474star4;
      }
      
      [Bindable(event="propertyChange")]
      public function get star5() : StarIcon
      {
         return this._109757475star5;
      }
      
      [Bindable(event="propertyChange")]
      public function get star6() : StarIcon
      {
         return this._109757476star6;
      }
      
      [Bindable(event="propertyChange")]
      public function get star7() : StarIcon
      {
         return this._109757477star7;
      }
      
      [Bindable(event="propertyChange")]
      public function get star8() : StarIcon
      {
         return this._109757478star8;
      }
      
      [Bindable(event="propertyChange")]
      public function get star9() : StarIcon
      {
         return this._109757479star9;
      }
      
      [Bindable(event="propertyChange")]
      public function get makerActiveInfo() : TextArea
      {
         return this._808946632makerActiveInfo;
      }
      
      private function changeDetailVis() : void
      {
         detailPanel = _core.view.getUI(ViewManager.DETAIL_PROP_PANEL);
         detailPanel.ownerType = DetailPropPanel.OWNER_TYPE_CHAR;
         detailPanel.startFollow(this);
         detailPanel.visible = !detailPanel.visible;
         detailPanel.updateCharDetailData();
         showDetailProp.styleName = "EquipBagLeft";
      }
      
      [Bindable(event="propertyChange")]
      public function get defence() : BoxLabel
      {
         return this._1544916048defence;
      }
      
      public function onInitViewProp(param1:Object) : void
      {
         if(_core.player)
         {
            _core.player.property = param1;
            updateView();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get infoName() : BoxLabel
      {
         return this._177753177infoName;
      }
      
      private function equDClickHandler(param1:GameEvent) : void
      {
         var _loc2_:ItemSlot = ItemSlot(param1.currentTarget);
         if(_loc2_.giid < 0)
         {
            return;
         }
         _core.remote.equipOff(_loc2_.slotData.id,-1);
      }
      
      public function __img_star_mouseOut(param1:MouseEvent) : void
      {
         img_star.filters = null;
      }
      
      public function set showDetailProp(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._557678129showDetailProp;
         if(_loc2_ !== param1)
         {
            this._557678129showDetailProp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showDetailProp",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get minusEnergyButton() : Button
      {
         return this._1863068566minusEnergyButton;
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         tabBtnClick(0,1,2,3,4);
      }
      
      [Bindable(event="propertyChange")]
      public function get imgCanva() : Canvas
      {
         return this._721177480imgCanva;
      }
      
      [Bindable(event="propertyChange")]
      public function get GXLabel() : BasicTxtButton
      {
         return this._1180791939GXLabel;
      }
      
      [Bindable(event="propertyChange")]
      public function get attEnergy() : BoxLabel
      {
         return this._1270522743attEnergy;
      }
      
      public function set elemUIC(param1:UIComponent) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1662853568elemUIC;
         if(_loc2_ !== param1)
         {
            this._1662853568elemUIC = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"elemUIC",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pmImg() : Image
      {
         return this._106755206pmImg;
      }
      
      public function set attack(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1407259064attack;
         if(_loc2_ !== param1)
         {
            this._1407259064attack = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attack",_loc2_,param1));
         }
      }
      
      public function set infoTitle(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1221167690infoTitle;
         if(_loc2_ !== param1)
         {
            this._1221167690infoTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoTitle",_loc2_,param1));
         }
      }
      
      public function onFinishStarLvUp(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         if(param1)
         {
            _loc2_ = Language.CHARACTORPANEL_S[68];
            _core.sysMidNote(_loc2_);
            _core.sysMsg(_loc2_);
            starLvUping = false;
            btn_sj.visible = true;
            btn_qx.visible = false;
            _core.player.starsData = param1;
            _lvUpStarType = -1;
            updateStarsData(param1);
            _loc3_ = _core.view.getUI(ViewManager.PANEL_STAR_SPEED_UP);
            _loc3_.hide();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get spirituality() : Label
      {
         return this._844311679spirituality;
      }
      
      public function set btnPos(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1378824616btnPos;
         if(_loc2_ !== param1)
         {
            this._1378824616btnPos = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnPos",_loc2_,param1));
         }
      }
      
      public function set pop(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._111185pop;
         if(_loc2_ !== param1)
         {
            this._111185pop = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pop",_loc2_,param1));
         }
      }
      
      public function set lb_add(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1109587368lb_add;
         if(_loc2_ !== param1)
         {
            this._1109587368lb_add = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_add",_loc2_,param1));
         }
      }
      
      public function __btnTitle_click(param1:MouseEvent) : void
      {
         _core.view.changeVisible(ViewManager.PANEL_TITLE);
      }
      
      public function set attAgility(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._183433628attAgility;
         if(_loc2_ !== param1)
         {
            this._183433628attAgility = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attAgility",_loc2_,param1));
         }
      }
      
      public function __star2_click(param1:MouseEvent) : void
      {
         clickStar(2);
      }
      
      public function updateCharImage(param1:Number) : void
      {
         img.source = ResManager.getIconUrl(param1);
      }
      
      private function set btnPosToolTip(param1:String) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._787926635btnPosToolTip;
         if(_loc2_ !== param1)
         {
            this._787926635btnPosToolTip = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnPosToolTip",_loc2_,param1));
         }
      }
      
      public function set decoBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1542401647decoBtn;
         if(_loc2_ !== param1)
         {
            this._1542401647decoBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"decoBtn",_loc2_,param1));
         }
      }
      
      public function updateEquip() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         propertyCanvas.x = 20;
         propertyCanvas.y = 212;
         for each(_loc1_ in _dm.sList)
         {
            if(!(_loc1_.sid < GamePredef.SLOT_SID_EQUIP[0] || _loc1_.sid > GamePredef.SLOT_SID_EQUIP[1]))
            {
               _loc2_ = _core.view.getSlot(_loc1_.sid);
               _loc2_.slotData = _loc1_;
               _loc2_.type = _loc1_.type;
               _loc2_.giid = _loc1_.itemId;
               _loc2_.stackNum = _loc1_.stackNum;
            }
         }
      }
      
      public function ___CharactorPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         dressHandler(param1);
      }
      
      public function set pkTxt(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._106706549pkTxt;
         if(_loc2_ !== param1)
         {
            this._106706549pkTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pkTxt",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hp() : BoxLabel
      {
         return this._3336hp;
      }
      
      public function __star7_click(param1:MouseEvent) : void
      {
         clickStar(7);
      }
      
      public function set addEnergy(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._405874039addEnergy;
         if(_loc2_ !== param1)
         {
            this._405874039addEnergy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addEnergy",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mAttack() : BoxLabel
      {
         return this._74771179mAttack;
      }
      
      public function set tabBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1554141557tabBtn2;
         if(_loc2_ !== param1)
         {
            this._1554141557tabBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn2",_loc2_,param1));
         }
      }
      
      public function updateInfo() : void
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:* = undefined;
         var _loc7_:Number = NaN;
         setIconImagesSouce();
         infoName.text = _core.player.name;
         infoLevel.text = _core.player.level.toString();
         infoClass.text = _core.player.classLevel + _core.player.className;
         infoRebirthExp.text = String(_core.player.expBattle);
         infoTitle.text = "";
         if(_core.player.t > 0)
         {
            _loc5_ = _core.data.getGameData(GamePredef.TBL_TITLE,_core.player.t);
            if(_loc5_)
            {
               infoTitle.text = _loc5_.n;
            }
         }
         var _loc1_:uint = int(_core.player.honor) >= 0 ? uint(_core.player.honor) : 0;
         var _loc2_:uint = int(_core.player.chival) >= 0 ? uint(_core.player.chival) : 0;
         pkTxt.text = _loc1_.toString();
         pop.text = _core.player.pop.toString();
         actpoint.text = _core.player.actpoint + "/" + _core.player.maxActpoint;
         chivalTxt.text = _loc2_.toString();
         vigorTxt.text = _core.player.vigor + "/" + _core.player.maxVigor;
         chivalLabel.toolTip = _core.player.level < 40 ? Language.CHARACTORPANEL_S[32].toString().replace("{chivalArr}",chivalArr[_core.player.level]) : Language.CHARACTORPANEL_S[33].toString();
         img.source = ResManager.getIconUrl(_core.player.imgCode);
         if(Boolean(_core.player) && Boolean(_core.player.pmLevel) && Number(_core.player.pmLevel) > 0)
         {
            if(ResManager["PM_ZUAN" + _core.player.pmLevel])
            {
               pmImg.source = ResManager["PM_ZUAN" + _core.player.pmLevel];
            }
         }
         if(Boolean(_core.player) && _core.player.newGrade > 0)
         {
            _loc6_ = int(_core.player.newGrade);
            if(ResManager["NEW_GRADE" + _loc6_])
            {
               ngImg.source = ResManager["NEW_GRADE" + _loc6_];
               ngImg.toolTip = newGradeLevel[_loc6_] + "的" + _core.player.className + "\n" + newGradeLevelInfo[_loc6_];
            }
            else
            {
               ngImg.visible = false;
               ngImg.toolTip = "";
               ngImg.source = "";
            }
         }
         else
         {
            ngImg.visible = false;
            ngImg.toolTip = "";
            ngImg.source = "";
         }
         var _loc3_:String = _core.player.expSkill.toString();
         if(_core.player.level >= GamePredef.MAX_LEVEL)
         {
            _loc4_ = "-";
         }
         else
         {
            _loc7_ = _core.basic.levelUpExp(_core.player.level);
            _loc4_ = Math.round(_loc7_).toString();
         }
         levelUpButton.toolTip = Language.CHARACTORPANEL_S[34].toString().replace("{exp}",_loc3_).replace("{next}",_loc4_);
         btnPos.selected = _core.player.bp > 0;
         if(btnPos.selected)
         {
            btnPos.label = Language.CHARACTORPANEL_U[6];
         }
         else
         {
            btnPos.label = Language.CHARACTORPANEL_U[5];
         }
      }
      
      public function set tabBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1554141556tabBtn3;
         if(_loc2_ !== param1)
         {
            this._1554141556tabBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn3",_loc2_,param1));
         }
      }
      
      public function set tabBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1554141559tabBtn0;
         if(_loc2_ !== param1)
         {
            this._1554141559tabBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn0",_loc2_,param1));
         }
      }
      
      public function set tabBtn4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1554141555tabBtn4;
         if(_loc2_ !== param1)
         {
            this._1554141555tabBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn4",_loc2_,param1));
         }
      }
      
      public function set addStamina(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._10889870addStamina;
         if(_loc2_ !== param1)
         {
            this._10889870addStamina = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addStamina",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get XGCanvas() : Canvas
      {
         return this._652133081XGCanvas;
      }
      
      [Bindable(event="propertyChange")]
      public function get ta_desc() : TextArea
      {
         return this._1555913437ta_desc;
      }
      
      public function set tabBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1554141558tabBtn1;
         if(_loc2_ !== param1)
         {
            this._1554141558tabBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn1",_loc2_,param1));
         }
      }
      
      public function __minusStrengthButton_buttonDown(param1:FlexEvent) : void
      {
         buttonClick(param1);
      }
      
      public function set mwMain(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1062100349mwMain;
         if(_loc2_ !== param1)
         {
            this._1062100349mwMain = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mwMain",_loc2_,param1));
         }
      }
      
      public function __levelUpButton_click(param1:MouseEvent) : void
      {
         levelUp();
         setLevelUPStyleName();
      }
      
      private function levelUp() : void
      {
         var func:Function;
         var _levelUp:Function = null;
         if(_core.player.level >= GamePredef.MAX_LEVEL)
         {
            return;
         }
         _levelUp = function(param1:String):void
         {
            var _loc2_:String = null;
            if(param1)
            {
               _loc2_ = MD5.hash(param1);
               _core.remote.call("lvUp",new Responder(onLevelUp),_core.player.level,_loc2_);
               levelUpButton.enabled = false;
            }
         };
         func = function(param1:CloseEvent):void
         {
            var _loc2_:Number = NaN;
            var _loc3_:Number = NaN;
            if(Alert.YES == param1.detail)
            {
               _loc2_ = _core.player.expSkill;
               _loc3_ = _core.basic.levelUpExp(_core.player.level);
               if(_loc2_ >= _loc3_)
               {
                  if(_core.delPass)
                  {
                     _core.remote.call("lvUp",new Responder(onLevelUp),_core.player.level,_core.delPass);
                     levelUpButton.enabled = false;
                  }
                  else
                  {
                     _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.CHARACTORPANEL_U[2],_levelUp);
                  }
               }
            }
         };
         Alert.show(Language.CHARACTORPANEL_U[31],"",Alert.YES | Alert.NO,this,func);
      }
      
      [Bindable(event="propertyChange")]
      public function get levelUpButton() : BasicGlowButton
      {
         return this._1365556561levelUpButton;
      }
      
      public function __addStaminaButton_buttonDown(param1:FlexEvent) : void
      {
         buttonClick(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get vigorTxt1() : BoxLabel
      {
         return this._10433192vigorTxt1;
      }
      
      [Bindable(event="propertyChange")]
      public function get addIntelligenceButton() : Button
      {
         return this._1991903918addIntelligenceButton;
      }
      
      [Bindable(event="propertyChange")]
      public function get vigorTxt3() : BoxLabel
      {
         return this._10433190vigorTxt3;
      }
      
      [Bindable(event="propertyChange")]
      public function get vigorTxt4() : BoxLabel
      {
         return this._10433189vigorTxt4;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnTitle() : BasicGlowButton
      {
         return this._2097958236btnTitle;
      }
      
      public function reset() : void
      {
         firstFlag = true;
         firstTimeFlag = true;
         hasMount = -1;
         resetStars();
      }
      
      [Bindable(event="propertyChange")]
      public function get vigorTxt8() : BoxLabel
      {
         return this._10433185vigorTxt8;
      }
      
      [Bindable(event="propertyChange")]
      public function get vigorTxt2() : BoxLabel
      {
         return this._10433191vigorTxt2;
      }
      
      public function set MountCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1965289807MountCanvas;
         if(_loc2_ !== param1)
         {
            this._1965289807MountCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"MountCanvas",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vigorTxt5() : BoxLabel
      {
         return this._10433188vigorTxt5;
      }
      
      public function onSetDressHide(param1:*) : void
      {
         if(param1 == -1)
         {
            dressHide.selected = false;
            _core.view.getUI(ViewManager.PANEL_SYSTEM).setDressHideCB(false);
            GamePredef.GLOBAL_SETTING["dressHide"] = false;
         }
         else
         {
            _core.view.getUI(ViewManager.PANEL_SYSTEM).setDressHideCB(param1);
            GamePredef.GLOBAL_SETTING["dressHide"] = param1;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vigorTxt9() : BoxLabel
      {
         return this._10433184vigorTxt9;
      }
      
      public function onChangeProperty() : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get vigorTxt7() : BoxLabel
      {
         return this._10433186vigorTxt7;
      }
      
      [Bindable(event="propertyChange")]
      public function get actpointLabel() : BasicTxtButton
      {
         return this._459185494actpointLabel;
      }
      
      private function getNeedExp(param1:int, param2:Number) : String
      {
         if(param1 >= GamePredef.MAX_LEVEL)
         {
            return Language.CHARACTORPANEL_S[7];
         }
         var _loc3_:int = _core.basic.levelUpExp(_core.player.level);
         return Language.CHARACTORPANEL_S[8] + _loc3_.toString();
      }
      
      [Bindable(event="propertyChange")]
      public function get vigorTxt6() : BoxLabel
      {
         return this._10433187vigorTxt6;
      }
      
      private function buttonClick(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         switch(param1.currentTarget.id)
         {
            case "addStrengthButton":
               if(Number(attLastPoint.text) >= PropMultiple)
               {
                  tempPropMultiple = PropMultiple;
               }
               else if(0 < Number(attLastPoint.text) && Number(attLastPoint.text) < PropMultiple)
               {
                  tempPropMultiple = Number(attLastPoint.text);
               }
               else
               {
                  tempPropMultiple = 0;
               }
               _loc2_ = Number(addStrength.text);
               _loc2_ += tempPropMultiple;
               addStrength.text = _loc2_.toString();
               _loc7_ = Number(attLastPoint.text);
               _loc7_ = _loc7_ - tempPropMultiple;
               attLastPoint.text = _loc7_.toString();
               minusStrengthButton.styleName = "BtnReduce";
               break;
            case "addAgilityButton":
               if(Number(attLastPoint.text) >= PropMultiple)
               {
                  tempPropMultiple = PropMultiple;
               }
               else if(0 < Number(attLastPoint.text) && Number(attLastPoint.text) < PropMultiple)
               {
                  tempPropMultiple = Number(attLastPoint.text);
               }
               else
               {
                  tempPropMultiple = 0;
               }
               _loc3_ = Number(addAgility.text);
               _loc3_ += tempPropMultiple;
               addAgility.text = _loc3_.toString();
               _loc7_ = Number(attLastPoint.text);
               _loc7_ = _loc7_ - tempPropMultiple;
               attLastPoint.text = _loc7_.toString();
               minusAgilityButton.styleName = "BtnReduce";
               break;
            case "addStaminaButton":
               if(Number(attLastPoint.text) >= PropMultiple)
               {
                  tempPropMultiple = PropMultiple;
               }
               else if(0 < Number(attLastPoint.text) && Number(attLastPoint.text) < PropMultiple)
               {
                  tempPropMultiple = Number(attLastPoint.text);
               }
               else
               {
                  tempPropMultiple = 0;
               }
               _loc4_ = Number(addStamina.text);
               _loc4_ = _loc4_ + tempPropMultiple;
               addStamina.text = _loc4_.toString();
               _loc7_ = Number(attLastPoint.text);
               _loc7_ = _loc7_ - tempPropMultiple;
               attLastPoint.text = _loc7_.toString();
               minusStaminaButton.styleName = "BtnReduce";
               break;
            case "addIntelligenceButton":
               if(Number(attLastPoint.text) >= PropMultiple)
               {
                  tempPropMultiple = PropMultiple;
               }
               else if(0 < Number(attLastPoint.text) && Number(attLastPoint.text) < PropMultiple)
               {
                  tempPropMultiple = Number(attLastPoint.text);
               }
               else
               {
                  tempPropMultiple = 0;
               }
               _loc5_ = Number(addIntelligence.text);
               _loc5_ = _loc5_ + tempPropMultiple;
               addIntelligence.text = _loc5_.toString();
               _loc7_ = Number(attLastPoint.text);
               _loc7_ = _loc7_ - tempPropMultiple;
               attLastPoint.text = _loc7_.toString();
               minusIntelligenceButton.styleName = "BtnReduce";
               break;
            case "addEnergyButton":
               if(Number(attLastPoint.text) >= PropMultiple)
               {
                  tempPropMultiple = PropMultiple;
               }
               else if(0 < Number(attLastPoint.text) && Number(attLastPoint.text) < PropMultiple)
               {
                  tempPropMultiple = Number(attLastPoint.text);
               }
               else
               {
                  tempPropMultiple = 0;
               }
               _loc6_ = Number(addEnergy.text);
               _loc6_ = _loc6_ + tempPropMultiple;
               addEnergy.text = _loc6_.toString();
               _loc7_ = Number(attLastPoint.text);
               _loc7_ = _loc7_ - tempPropMultiple;
               attLastPoint.text = _loc7_.toString();
               minusEnergyButton.styleName = "BtnReduce";
               break;
            case "minusStrengthButton":
               if(Number(addStrength.text) >= PropMultiple)
               {
                  tempPropMultiple = PropMultiple;
               }
               else if(0 < Number(addStrength.text) && Number(addStrength.text) < PropMultiple)
               {
                  tempPropMultiple = Number(addStrength.text);
               }
               else
               {
                  tempPropMultiple = 0;
               }
               _loc2_ = Number(addStrength.text);
               _loc2_ -= tempPropMultiple;
               addStrength.text = _loc2_.toString();
               _loc7_ = Number(attLastPoint.text);
               _loc7_ = _loc7_ + tempPropMultiple;
               attLastPoint.text = _loc7_.toString();
               if(_loc2_ < PropMultiple)
               {
                  minusStrengthButton.styleName = "BtnReduce2";
               }
               break;
            case "minusAgilityButton":
               if(Number(addAgility.text) >= PropMultiple)
               {
                  tempPropMultiple = PropMultiple;
               }
               else if(0 < Number(addAgility.text) && Number(addAgility.text) < PropMultiple)
               {
                  tempPropMultiple = Number(addAgility.text);
               }
               else
               {
                  tempPropMultiple = 0;
               }
               _loc3_ = Number(addAgility.text);
               _loc3_ -= tempPropMultiple;
               addAgility.text = _loc3_.toString();
               _loc7_ = Number(attLastPoint.text);
               _loc7_ = _loc7_ + tempPropMultiple;
               attLastPoint.text = _loc7_.toString();
               if(_loc3_ < PropMultiple)
               {
                  minusAgilityButton.styleName = "BtnReduce2";
               }
               break;
            case "minusStaminaButton":
               if(Number(addStamina.text) >= PropMultiple)
               {
                  tempPropMultiple = PropMultiple;
               }
               else if(0 < Number(addStamina.text) && Number(addStamina.text) < PropMultiple)
               {
                  tempPropMultiple = Number(addStamina.text);
               }
               else
               {
                  tempPropMultiple = 0;
               }
               _loc4_ = Number(addStamina.text);
               _loc4_ = _loc4_ - tempPropMultiple;
               addStamina.text = _loc4_.toString();
               _loc7_ = Number(attLastPoint.text);
               _loc7_ = _loc7_ + tempPropMultiple;
               attLastPoint.text = _loc7_.toString();
               if(_loc4_ < PropMultiple)
               {
                  minusStaminaButton.styleName = "BtnReduce2";
               }
               break;
            case "minusIntelligenceButton":
               if(Number(addIntelligence.text) >= PropMultiple)
               {
                  tempPropMultiple = PropMultiple;
               }
               else if(0 < Number(addIntelligence.text) && Number(addIntelligence.text) < PropMultiple)
               {
                  tempPropMultiple = Number(addIntelligence.text);
               }
               else
               {
                  tempPropMultiple = 0;
               }
               _loc5_ = Number(addIntelligence.text);
               _loc5_ = _loc5_ - tempPropMultiple;
               addIntelligence.text = _loc5_.toString();
               _loc7_ = Number(attLastPoint.text);
               _loc7_ = _loc7_ + tempPropMultiple;
               attLastPoint.text = _loc7_.toString();
               if(_loc5_ < PropMultiple)
               {
                  minusIntelligenceButton.styleName = "BtnReduce2";
               }
               break;
            case "minusEnergyButton":
               if(Number(addEnergy.text) >= PropMultiple)
               {
                  tempPropMultiple = PropMultiple;
               }
               else if(0 < Number(addEnergy.text) && Number(addEnergy.text) < PropMultiple)
               {
                  tempPropMultiple = Number(addEnergy.text);
               }
               else
               {
                  tempPropMultiple = 0;
               }
               _loc6_ = Number(addEnergy.text);
               _loc6_ = _loc6_ - tempPropMultiple;
               addEnergy.text = _loc6_.toString();
               _loc7_ = Number(attLastPoint.text);
               _loc7_ = _loc7_ + tempPropMultiple;
               attLastPoint.text = _loc7_.toString();
               if(_loc6_ < PropMultiple)
               {
                  minusEnergyButton.styleName = "BtnReduce2";
               }
         }
         setAddStyleName();
      }
      
      public function set mwSub2(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1061902660mwSub2;
         if(_loc2_ !== param1)
         {
            this._1061902660mwSub2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mwSub2",_loc2_,param1));
         }
      }
      
      public function set mwSub3(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1061902659mwSub3;
         if(_loc2_ !== param1)
         {
            this._1061902659mwSub3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mwSub3",_loc2_,param1));
         }
      }
      
      public function set mwSub4(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1061902658mwSub4;
         if(_loc2_ !== param1)
         {
            this._1061902658mwSub4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mwSub4",_loc2_,param1));
         }
      }
      
      public function set mwSub1(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1061902661mwSub1;
         if(_loc2_ !== param1)
         {
            this._1061902661mwSub1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mwSub1",_loc2_,param1));
         }
      }
      
      public function __MWCanvas_show(param1:FlexEvent) : void
      {
         updateEquip();
      }
      
      public function set mwSub5(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1061902657mwSub5;
         if(_loc2_ !== param1)
         {
            this._1061902657mwSub5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mwSub5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mp() : BoxLabel
      {
         return this._3491mp;
      }
      
      private function changeProperty() : void
      {
         _core.remote.changeProperty({
            "addStrength":addStrength.text,
            "addAgility":addAgility.text,
            "addStamina":addStamina.text,
            "addIntelligence":addIntelligence.text,
            "addEnergy":addEnergy.text
         });
         addStrength.text = "";
         addAgility.text = "";
         addStamina.text = "";
         addIntelligence.text = "";
         addEnergy.text = "";
         setAddStyleName();
         minusStrengthButton.styleName = "BtnReduce2";
         minusAgilityButton.styleName = "BtnReduce2";
         minusStaminaButton.styleName = "BtnReduce2";
         minusIntelligenceButton.styleName = "BtnReduce2";
         minusEnergyButton.styleName = "BtnReduce2";
      }
      
      public function setAddStyleName() : void
      {
         if(Number(attLastPoint.text) > 0)
         {
            styleAddName = "BtnAdd";
         }
         else
         {
            styleAddName = "BtnAdd2";
         }
      }
      
      public function __minusEnergyButton_buttonDown(param1:FlexEvent) : void
      {
         buttonClick(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get vigorTxt10() : BoxLabel
      {
         return this._323428904vigorTxt10;
      }
      
      [Bindable(event="propertyChange")]
      public function get vigorTxt11() : BoxLabel
      {
         return this._323428903vigorTxt11;
      }
      
      [Bindable(event="propertyChange")]
      public function get vigorTxt12() : BoxLabel
      {
         return this._323428902vigorTxt12;
      }
      
      [Bindable(event="propertyChange")]
      public function get addStrengthButton() : Button
      {
         return this._426146348addStrengthButton;
      }
      
      public function set btn_qx(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1378810134btn_qx;
         if(_loc2_ !== param1)
         {
            this._1378810134btn_qx = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_qx",_loc2_,param1));
         }
      }
      
      private function decoHandler(param1:Event) : void
      {
         var _loc2_:Object = null;
         param1.stopImmediatePropagation();
         if(_core.player.decoInfo)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_DECORATE);
            _loc2_ && _loc2_.show();
            trace("显示魂器主面板");
         }
         else
         {
            _core.remote.call("initDecoratePanel",null,_core.cid);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconImage03() : Image
      {
         return this._1271911909iconImage03;
      }
      
      [Bindable(event="propertyChange")]
      public function get iconImage04() : Image
      {
         return this._1271911910iconImage04;
      }
      
      [Bindable(event="propertyChange")]
      public function get iconImage05() : Image
      {
         return this._1271911911iconImage05;
      }
      
      [Bindable(event="propertyChange")]
      public function get iconImage07() : Image
      {
         return this._1271911913iconImage07;
      }
      
      [Bindable(event="propertyChange")]
      public function get iconImage08() : Image
      {
         return this._1271911914iconImage08;
      }
      
      [Bindable(event="propertyChange")]
      public function get iconImage02() : Image
      {
         return this._1271911908iconImage02;
      }
      
      [Bindable(event="propertyChange")]
      public function get iconImage06() : Image
      {
         return this._1271911912iconImage06;
      }
      
      public function set attLastPoint(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._30739193attLastPoint;
         if(_loc2_ !== param1)
         {
            this._30739193attLastPoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attLastPoint",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconImage01() : Image
      {
         return this._1271911907iconImage01;
      }
      
      public function ___CharactorPanel_BasicGlowButton13_click(param1:MouseEvent) : void
      {
         showMount();
      }
      
      [Bindable(event="propertyChange")]
      public function get iconImage10() : Image
      {
         return this._1271911937iconImage10;
      }
      
      [Bindable(event="propertyChange")]
      public function get attStrength() : BoxLabel
      {
         return this._1181680126attStrength;
      }
      
      [Bindable(event="propertyChange")]
      public function get iconImage09() : Image
      {
         return this._1271911915iconImage09;
      }
      
      [Bindable(event="propertyChange")]
      public function get iconImage11() : Image
      {
         return this._1271911938iconImage11;
      }
      
      [Bindable(event="propertyChange")]
      public function get iconImage12() : Image
      {
         return this._1271911939iconImage12;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_js() : BasicGlowButton
      {
         return this._1378810356btn_js;
      }
      
      public function set btnName(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._206036743btnName;
         if(_loc2_ !== param1)
         {
            this._206036743btnName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnName",_loc2_,param1));
         }
      }
      
      public function __addStrengthButton_buttonDown(param1:FlexEvent) : void
      {
         buttonClick(param1);
      }
      
      public function setLevelUPStyleName() : void
      {
         styleAddName = "BtnAdd";
      }
      
      [Bindable(event="propertyChange")]
      public function get showDetailProp() : BasicGlowButton
      {
         return this._557678129showDetailProp;
      }
      
      public function set btn_sj(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1378810086btn_sj;
         if(_loc2_ !== param1)
         {
            this._1378810086btn_sj = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_sj",_loc2_,param1));
         }
      }
      
      public function __tabBtn3_click(param1:MouseEvent) : void
      {
         tabBtnClick(3,0,1,2,4);
      }
      
      public function set addEnergyButton(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._708846363addEnergyButton;
         if(_loc2_ !== param1)
         {
            this._708846363addEnergyButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addEnergyButton",_loc2_,param1));
         }
      }
      
      public function __addAgilityButton_buttonDown(param1:FlexEvent) : void
      {
         buttonClick(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get elemUIC() : UIComponent
      {
         return this._1662853568elemUIC;
      }
      
      [Bindable(event="propertyChange")]
      public function get attack() : BoxLabel
      {
         return this._1407259064attack;
      }
      
      public function set mDefence(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._97632477mDefence;
         if(_loc2_ !== param1)
         {
            this._97632477mDefence = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mDefence",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnPos() : BasicDelayButton
      {
         return this._1378824616btnPos;
      }
      
      private function onLevelUp(param1:Boolean) : void
      {
         levelUpButton.enabled = true;
         if(_core.view.getUI(ViewManager.PANEL_ACTIVE).visible)
         {
            _core.view.getUI(ViewManager.PANEL_ACTIVE).visible = false;
            _core.view.getUI(ViewManager.PANEL_ACTIVE).visible = true;
         }
         if(_core.view.getUI(ViewManager.PANEL_SKILLMANAGER).visible)
         {
            _core.view.getUI(ViewManager.PANEL_SKILLMANAGER).update();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get attAgility() : BoxLabel
      {
         return this._183433628attAgility;
      }
      
      public function set addBtnCanvas(param1:SimpleCanvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._19957965addBtnCanvas;
         if(_loc2_ !== param1)
         {
            this._19957965addBtnCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addBtnCanvas",_loc2_,param1));
         }
      }
      
      public function set btn_tf(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1378810059btn_tf;
         if(_loc2_ !== param1)
         {
            this._1378810059btn_tf = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_tf",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get decoBtn() : BasicGlowButton
      {
         return this._1542401647decoBtn;
      }
      
      public function __btnName_click(param1:MouseEvent) : void
      {
         changeName();
      }
      
      [Bindable(event="propertyChange")]
      private function get btnPosToolTip() : String
      {
         return this._787926635btnPosToolTip;
      }
      
      public function set lb_leftSecDesc(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1577469134lb_leftSecDesc;
         if(_loc2_ !== param1)
         {
            this._1577469134lb_leftSecDesc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_leftSecDesc",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pkTxt() : BoxLabel
      {
         return this._106706549pkTxt;
      }
      
      public function __addEnergyButton_buttonDown(param1:FlexEvent) : void
      {
         buttonClick(param1);
      }
      
      public function set PopLabel(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._699206467PopLabel;
         if(_loc2_ !== param1)
         {
            this._699206467PopLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PopLabel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : BasicGlowButton
      {
         return this._1554141559tabBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn2() : BasicGlowButton
      {
         return this._1554141557tabBtn2;
      }
      
      public function __star5_click(param1:MouseEvent) : void
      {
         clickStar(5);
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn4() : BasicGlowButton
      {
         return this._1554141555tabBtn4;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn1() : BasicGlowButton
      {
         return this._1554141558tabBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn3() : BasicGlowButton
      {
         return this._1554141556tabBtn3;
      }
      
      private function speedUpStarLvUp() : void
      {
         if(_lvUpStarType <= 0)
         {
            Alert.show(Language.CHARACTORPANEL_S[69]);
            return;
         }
         var _loc1_:Number = Number(this["star" + _lvUpStarType].starData.finishDate);
         if(_loc1_ <= 0)
         {
            Alert.show(Language.CHARACTORPANEL_S[70]);
            return;
         }
         _core.view.changeVisible(ViewManager.PANEL_STAR_SPEED_UP);
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_STAR_SPEED_UP);
         _loc2_.startFollow(this);
         _loc2_.setSelectStar(_lvUpStarType);
      }
      
      public function set ngImg(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._104729418ngImg;
         if(_loc2_ !== param1)
         {
            this._104729418ngImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ngImg",_loc2_,param1));
         }
      }
      
      private function showHonorPanel() : void
      {
         _core.view.hide(ViewManager.PANEL_CHARACTOR_PROPERTY);
         _core.view.changeVisible(ViewManager.PANEL_CHARACTOR_HONOR);
         _core.view.getUI(ViewManager.PANEL_CHARACTOR_HONOR).startFollow(this);
      }
      
      public function __btn_xg_click(param1:MouseEvent) : void
      {
         openEffectPanel();
      }
      
      private function addStarAddition() : void
      {
         _core.view.changeVisible(ViewManager.PANEL_STAR_ADDITION);
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_STAR_ADDITION);
         _loc1_.startFollow(this);
      }
      
      [Bindable(event="propertyChange")]
      public function get MountCanvas() : Canvas
      {
         return this._1965289807MountCanvas;
      }
      
      private function _CharactorPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicTitleCanvas1.text = param1;
         },"_CharactorPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_Canvas2.label = param1;
         },"_CharactorPanel_Canvas2.label");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.TOTEM_CHARACTER;
         },function(param1:Object):void
         {
            _CharactorPanel_Image1.source = param1;
         },"_CharactorPanel_Image1.source");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_S[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            eq1.text = param1;
         },"eq1.text");
         result[3] = binding;
         binding = new Binding(this,function():Array
         {
            return [1];
         },function(param1:Array):void
         {
            eq1.acceptPos = param1;
         },"eq1.acceptPos");
         result[4] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            eq1.acceptType = param1;
         },"eq1.acceptType");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_S[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            eq2.text = param1;
         },"eq2.text");
         result[6] = binding;
         binding = new Binding(this,function():Array
         {
            return [2];
         },function(param1:Array):void
         {
            eq2.acceptPos = param1;
         },"eq2.acceptPos");
         result[7] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            eq2.acceptType = param1;
         },"eq2.acceptType");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_S[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            eq3.text = param1;
         },"eq3.text");
         result[9] = binding;
         binding = new Binding(this,function():Array
         {
            return [3];
         },function(param1:Array):void
         {
            eq3.acceptPos = param1;
         },"eq3.acceptPos");
         result[10] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            eq3.acceptType = param1;
         },"eq3.acceptType");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_S[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            eq4.text = param1;
         },"eq4.text");
         result[12] = binding;
         binding = new Binding(this,function():Array
         {
            return [4];
         },function(param1:Array):void
         {
            eq4.acceptPos = param1;
         },"eq4.acceptPos");
         result[13] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            eq4.acceptType = param1;
         },"eq4.acceptType");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_S[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            eq5.text = param1;
         },"eq5.text");
         result[15] = binding;
         binding = new Binding(this,function():Array
         {
            return [5];
         },function(param1:Array):void
         {
            eq5.acceptPos = param1;
         },"eq5.acceptPos");
         result[16] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            eq5.acceptType = param1;
         },"eq5.acceptType");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_S[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            eq6.text = param1;
         },"eq6.text");
         result[18] = binding;
         binding = new Binding(this,function():Array
         {
            return [6];
         },function(param1:Array):void
         {
            eq6.acceptPos = param1;
         },"eq6.acceptPos");
         result[19] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            eq6.acceptType = param1;
         },"eq6.acceptType");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_S[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            eq7.text = param1;
         },"eq7.text");
         result[21] = binding;
         binding = new Binding(this,function():Array
         {
            return [7];
         },function(param1:Array):void
         {
            eq7.acceptPos = param1;
         },"eq7.acceptPos");
         result[22] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            eq7.acceptType = param1;
         },"eq7.acceptType");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_S[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            eq8.text = param1;
         },"eq8.text");
         result[24] = binding;
         binding = new Binding(this,function():Array
         {
            return [8];
         },function(param1:Array):void
         {
            eq8.acceptPos = param1;
         },"eq8.acceptPos");
         result[25] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            eq8.acceptType = param1;
         },"eq8.acceptType");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_S[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            eq9.text = param1;
         },"eq9.text");
         result[27] = binding;
         binding = new Binding(this,function():Array
         {
            return [9];
         },function(param1:Array):void
         {
            eq9.acceptPos = param1;
         },"eq9.acceptPos");
         result[28] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            eq9.acceptType = param1;
         },"eq9.acceptType");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_S[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            eq10.text = param1;
         },"eq10.text");
         result[30] = binding;
         binding = new Binding(this,function():Array
         {
            return [10];
         },function(param1:Array):void
         {
            eq10.acceptPos = param1;
         },"eq10.acceptPos");
         result[31] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            eq10.acceptType = param1;
         },"eq10.acceptType");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_S[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            eq11.text = param1;
         },"eq11.text");
         result[33] = binding;
         binding = new Binding(this,function():Array
         {
            return [11];
         },function(param1:Array):void
         {
            eq11.acceptPos = param1;
         },"eq11.acceptPos");
         result[34] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            eq11.acceptType = param1;
         },"eq11.acceptType");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_S[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            eq12.text = param1;
         },"eq12.text");
         result[36] = binding;
         binding = new Binding(this,function():Array
         {
            return [12];
         },function(param1:Array):void
         {
            eq12.acceptPos = param1;
         },"eq12.acceptPos");
         result[37] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            eq12.acceptType = param1;
         },"eq12.acceptType");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_S[41];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            eq13.text = param1;
         },"eq13.text");
         result[39] = binding;
         binding = new Binding(this,function():Array
         {
            return [13];
         },function(param1:Array):void
         {
            eq13.acceptPos = param1;
         },"eq13.acceptPos");
         result[40] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            eq13.acceptType = param1;
         },"eq13.acceptType");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_S[53];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            eq14.text = param1;
         },"eq14.text");
         result[42] = binding;
         binding = new Binding(this,function():Array
         {
            return [14];
         },function(param1:Array):void
         {
            eq14.acceptPos = param1;
         },"eq14.acceptPos");
         result[43] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            eq14.acceptType = param1;
         },"eq14.acceptType");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_S[54];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            eq15.text = param1;
         },"eq15.text");
         result[45] = binding;
         binding = new Binding(this,function():Array
         {
            return [21];
         },function(param1:Array):void
         {
            eq15.acceptPos = param1;
         },"eq15.acceptPos");
         result[46] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            eq15.acceptType = param1;
         },"eq15.acceptType");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_S[63];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            eq16.text = param1;
         },"eq16.text");
         result[48] = binding;
         binding = new Binding(this,function():Array
         {
            return [22];
         },function(param1:Array):void
         {
            eq16.acceptPos = param1;
         },"eq16.acceptPos");
         result[49] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            eq16.acceptType = param1;
         },"eq16.acceptType");
         result[50] = binding;
         binding = new Binding(this,function():Boolean
         {
            return getDressHideData();
         },function(param1:Boolean):void
         {
            dressHide.selected = param1;
         },"dressHide.selected");
         result[51] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_S[56];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dressHide.toolTip = param1;
         },"dressHide.toolTip");
         result[52] = binding;
         binding = new Binding(this,function():Boolean
         {
            return getWingHideData();
         },function(param1:Boolean):void
         {
            wingHide.selected = param1;
         },"wingHide.selected");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_S[64];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            wingHide.toolTip = param1;
         },"wingHide.toolTip");
         result[54] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_S[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            makerActiveInfo.toolTip = param1;
         },"makerActiveInfo.toolTip");
         result[55] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            makerActiveInfo.filters = param1;
         },"makerActiveInfo.filters");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_S[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            starActiveInfo.toolTip = param1;
         },"starActiveInfo.toolTip");
         result[57] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            starActiveInfo.filters = param1;
         },"starActiveInfo.filters");
         result[58] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DRESS_PANEL[48];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicGlowButton1.label = param1;
         },"_CharactorPanel_BasicGlowButton1.label");
         result[59] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DECORATE_PANEL[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            decoBtn.label = param1;
         },"decoBtn.label");
         result[60] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_S[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_Canvas3.label = param1;
         },"_CharactorPanel_Canvas3.label");
         result[61] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            levelUpButton.label = param1;
         },"levelUpButton.label");
         result[62] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_S[35];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnTitle.toolTip = param1;
         },"btnTitle.toolTip");
         result[63] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnTitle.label = param1;
         },"btnTitle.label");
         result[64] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_U[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicTxtButton1.label = param1;
         },"_CharactorPanel_BasicTxtButton1.label");
         result[65] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = LanguageUtil.replace(Language.CHARACTORPANEL_U[74],{
               "name":infoName.text,
               "gender":GamePredef.GENDER_NAME[_core.player.gender],
               "cid":_core.cid
            });
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicTxtButton1.toolTip = param1;
         },"_CharactorPanel_BasicTxtButton1.toolTip");
         result[66] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnName.label = param1;
         },"btnName.label");
         result[67] = binding;
         binding = new Binding(this,function():Boolean
         {
            return infoName.text.indexOf(changeFlag) > 0;
         },function(param1:Boolean):void
         {
            btnName.visible = param1;
         },"btnName.visible");
         result[68] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicTxtButton2.label = param1;
         },"_CharactorPanel_BasicTxtButton2.label");
         result[69] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_S[58];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicTxtButton2.toolTip = param1;
         },"_CharactorPanel_BasicTxtButton2.toolTip");
         result[70] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicTxtButton3.label = param1;
         },"_CharactorPanel_BasicTxtButton3.label");
         result[71] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_S[59];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicTxtButton3.toolTip = param1;
         },"_CharactorPanel_BasicTxtButton3.toolTip");
         result[72] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[66];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            GXLabel.label = param1;
         },"GXLabel.label");
         result[73] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[69];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            GXLabel.toolTip = param1;
         },"GXLabel.toolTip");
         result[74] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[35];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            PKLabel.label = param1;
         },"PKLabel.label");
         result[75] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_S[37];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            PKLabel.toolTip = param1;
         },"PKLabel.toolTip");
         result[76] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            PopLabel.label = param1;
         },"PopLabel.label");
         result[77] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_S[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            PopLabel.toolTip = param1;
         },"PopLabel.toolTip");
         result[78] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[37];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            chivalLabel.label = param1;
         },"chivalLabel.label");
         result[79] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            actpointLabel.label = param1;
         },"actpointLabel.label");
         result[80] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_S[40];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            actpointLabel.toolTip = param1;
         },"actpointLabel.toolTip");
         result[81] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            vigorLabel.label = param1;
         },"vigorLabel.label");
         result[82] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_S[40];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            vigorLabel.toolTip = param1;
         },"vigorLabel.toolTip");
         result[83] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = _core.player.btPnt;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            vigorTxt1.text = param1;
         },"vigorTxt1.text");
         result[84] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = _core.player.dogM;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            vigorTxt2.text = param1;
         },"vigorTxt2.text");
         result[85] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = _core.player.cbM;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            vigorTxt3.text = param1;
         },"vigorTxt3.text");
         result[86] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = _core.player.paPnt;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            vigorTxt4.text = param1;
         },"vigorTxt4.text");
         result[87] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = _core.player.soulPnt;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            vigorTxt5.text = param1;
         },"vigorTxt5.text");
         result[88] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = _core.player.threePvpPnt;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            vigorTxt6.text = param1;
         },"vigorTxt6.text");
         result[89] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = _core.player.stoneSealPoint;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            vigorTxt7.text = param1;
         },"vigorTxt7.text");
         result[90] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = _core.player.elementPnt;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            vigorTxt8.text = param1;
         },"vigorTxt8.text");
         result[91] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = _core.player.pvePoint;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            vigorTxt9.text = param1;
         },"vigorTxt9.text");
         result[92] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = _core.player.wisdonCrystal;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            vigorTxt10.text = param1;
         },"vigorTxt10.text");
         result[93] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = _core.player.npPnt;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            vigorTxt11.text = param1;
         },"vigorTxt11.text");
         result[94] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = _core.player.mysteryCrystal;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            vigorTxt12.text = param1;
         },"vigorTxt12.text");
         result[95] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[40];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            iconImage01.toolTip = param1;
         },"iconImage01.toolTip");
         result[96] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[41];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            iconImage02.toolTip = param1;
         },"iconImage02.toolTip");
         result[97] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[43];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            iconImage03.toolTip = param1;
         },"iconImage03.toolTip");
         result[98] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            iconImage04.toolTip = param1;
         },"iconImage04.toolTip");
         result[99] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[62];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            iconImage05.toolTip = param1;
         },"iconImage05.toolTip");
         result[100] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[63];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            iconImage06.toolTip = param1;
         },"iconImage06.toolTip");
         result[101] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_S[57];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            iconImage07.toolTip = param1;
         },"iconImage07.toolTip");
         result[102] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[68];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            iconImage08.toolTip = param1;
         },"iconImage08.toolTip");
         result[103] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[70];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            iconImage09.toolTip = param1;
         },"iconImage09.toolTip");
         result[104] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[71];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            iconImage10.toolTip = param1;
         },"iconImage10.toolTip");
         result[105] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[72];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            iconImage11.toolTip = param1;
         },"iconImage11.toolTip");
         result[106] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[75];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            iconImage12.toolTip = param1;
         },"iconImage12.toolTip");
         result[107] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            MWCanvas.label = param1;
         },"MWCanvas.label");
         result[108] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.TOTEM_MAGIC_WEAPON;
         },function(param1:Object):void
         {
            _CharactorPanel_Image14.source = param1;
         },"_CharactorPanel_Image14.source");
         result[109] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            mwMain.text = param1;
         },"mwMain.text");
         result[110] = binding;
         binding = new Binding(this,function():Array
         {
            return [15];
         },function(param1:Array):void
         {
            mwMain.acceptPos = param1;
         },"mwMain.acceptPos");
         result[111] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            mwMain.acceptType = param1;
         },"mwMain.acceptType");
         result[112] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[34] + "1";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            mwSub1.text = param1;
         },"mwSub1.text");
         result[113] = binding;
         binding = new Binding(this,function():Array
         {
            return [16];
         },function(param1:Array):void
         {
            mwSub1.acceptPos = param1;
         },"mwSub1.acceptPos");
         result[114] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            mwSub1.acceptType = param1;
         },"mwSub1.acceptType");
         result[115] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[34] + "2";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            mwSub2.text = param1;
         },"mwSub2.text");
         result[116] = binding;
         binding = new Binding(this,function():Array
         {
            return [17];
         },function(param1:Array):void
         {
            mwSub2.acceptPos = param1;
         },"mwSub2.acceptPos");
         result[117] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            mwSub2.acceptType = param1;
         },"mwSub2.acceptType");
         result[118] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[34] + "3";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            mwSub3.text = param1;
         },"mwSub3.text");
         result[119] = binding;
         binding = new Binding(this,function():Array
         {
            return [18];
         },function(param1:Array):void
         {
            mwSub3.acceptPos = param1;
         },"mwSub3.acceptPos");
         result[120] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            mwSub3.acceptType = param1;
         },"mwSub3.acceptType");
         result[121] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[34] + "4";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            mwSub4.text = param1;
         },"mwSub4.text");
         result[122] = binding;
         binding = new Binding(this,function():Array
         {
            return [19];
         },function(param1:Array):void
         {
            mwSub4.acceptPos = param1;
         },"mwSub4.acceptPos");
         result[123] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            mwSub4.acceptType = param1;
         },"mwSub4.acceptType");
         result[124] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[34] + "5";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            mwSub5.text = param1;
         },"mwSub5.text");
         result[125] = binding;
         binding = new Binding(this,function():Array
         {
            return [20];
         },function(param1:Array):void
         {
            mwSub5.acceptPos = param1;
         },"mwSub5.acceptPos");
         result[126] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            mwSub5.acceptType = param1;
         },"mwSub5.acceptType");
         result[127] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[61];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            mWRepairButton.label = param1;
         },"mWRepairButton.label");
         result[128] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_S[77];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            mWRepairButton.toolTip = param1;
         },"mWRepairButton.toolTip");
         result[129] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[47];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            XGCanvas.label = param1;
         },"XGCanvas.label");
         result[130] = binding;
         binding = new Binding(this,function():Boolean
         {
            return starLvUping;
         },function(param1:Boolean):void
         {
            img_star.visible = param1;
         },"img_star.visible");
         result[131] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[59];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_RoundedLabel1.text = param1;
         },"_CharactorPanel_RoundedLabel1.text");
         result[132] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_S[71];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_RoundedLabel1.toolTip = param1;
         },"_CharactorPanel_RoundedLabel1.toolTip");
         result[133] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            ta_desc.filters = param1;
         },"ta_desc.filters");
         result[134] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[50];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn_js.label = param1;
         },"btn_js.label");
         result[135] = binding;
         binding = new Binding(this,function():Boolean
         {
            return starLvUping;
         },function(param1:Boolean):void
         {
            btn_js.visible = param1;
         },"btn_js.visible");
         result[136] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[49];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn_sj.label = param1;
         },"btn_sj.label");
         result[137] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !starLvUping;
         },function(param1:Boolean):void
         {
            btn_sj.enabled = param1;
         },"btn_sj.enabled");
         result[138] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[60];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn_qx.label = param1;
         },"btn_qx.label");
         result[139] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[48];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn_tf.label = param1;
         },"btn_tf.label");
         result[140] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[58];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn_xg.label = param1;
         },"btn_xg.label");
         result[141] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[55];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lb_leftSec.text = param1;
         },"lb_leftSec.text");
         result[142] = binding;
         binding = new Binding(this,function():Boolean
         {
            return starLvUping;
         },function(param1:Boolean):void
         {
            lb_leftSec.visible = param1;
         },"lb_leftSec.visible");
         result[143] = binding;
         binding = new Binding(this,function():Boolean
         {
            return starLvUping;
         },function(param1:Boolean):void
         {
            lb_leftSecDesc.visible = param1;
         },"lb_leftSecDesc.visible");
         result[144] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.AWAKEN_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicGlowButton12.label = param1;
         },"_CharactorPanel_BasicGlowButton12.label");
         result[145] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[64];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicGlowButton13.label = param1;
         },"_CharactorPanel_BasicGlowButton13.label");
         result[146] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[65];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicGlowButton13.toolTip = param1;
         },"_CharactorPanel_BasicGlowButton13.toolTip");
         result[147] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicTxtButton10.label = param1;
         },"_CharactorPanel_BasicTxtButton10.label");
         result[148] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicTxtButton11.label = param1;
         },"_CharactorPanel_BasicTxtButton11.label");
         result[149] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicTxtButton12.label = param1;
         },"_CharactorPanel_BasicTxtButton12.label");
         result[150] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicTxtButton13.label = param1;
         },"_CharactorPanel_BasicTxtButton13.label");
         result[151] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicTxtButton14.label = param1;
         },"_CharactorPanel_BasicTxtButton14.label");
         result[152] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicTxtButton15.label = param1;
         },"_CharactorPanel_BasicTxtButton15.label");
         result[153] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicTxtButton16.label = param1;
         },"_CharactorPanel_BasicTxtButton16.label");
         result[154] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicTxtButton17.label = param1;
         },"_CharactorPanel_BasicTxtButton17.label");
         result[155] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicTxtButton18.label = param1;
         },"_CharactorPanel_BasicTxtButton18.label");
         result[156] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicTxtButton19.label = param1;
         },"_CharactorPanel_BasicTxtButton19.label");
         result[157] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicTxtButton20.label = param1;
         },"_CharactorPanel_BasicTxtButton20.label");
         result[158] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicTxtButton21.label = param1;
         },"_CharactorPanel_BasicTxtButton21.label");
         result[159] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicTxtButton22.label = param1;
         },"_CharactorPanel_BasicTxtButton22.label");
         result[160] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicTxtButton23.label = param1;
         },"_CharactorPanel_BasicTxtButton23.label");
         result[161] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicTxtButton24.label = param1;
         },"_CharactorPanel_BasicTxtButton24.label");
         result[162] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorPanel_BasicTxtButton25.label = param1;
         },"_CharactorPanel_BasicTxtButton25.label");
         result[163] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.PROP_STR;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            attStrength.toolTip = param1;
         },"attStrength.toolTip");
         result[164] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.PROP_AGI;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            attAgility.toolTip = param1;
         },"attAgility.toolTip");
         result[165] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.PROP_STA;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            attStamina.toolTip = param1;
         },"attStamina.toolTip");
         result[166] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.PROP_INT;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            attIntelligence.toolTip = param1;
         },"attIntelligence.toolTip");
         result[167] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.PROP_SPR;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            attEnergy.toolTip = param1;
         },"attEnergy.toolTip");
         result[168] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.PROP_STR;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            addStrengthButton.toolTip = param1;
         },"addStrengthButton.toolTip");
         result[169] = binding;
         binding = new Binding(this,function():Object
         {
            return styleAddName;
         },function(param1:Object):void
         {
            addStrengthButton.styleName = param1;
         },"addStrengthButton.styleName");
         result[170] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.PROP_AGI;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            addAgilityButton.toolTip = param1;
         },"addAgilityButton.toolTip");
         result[171] = binding;
         binding = new Binding(this,function():Object
         {
            return styleAddName;
         },function(param1:Object):void
         {
            addAgilityButton.styleName = param1;
         },"addAgilityButton.styleName");
         result[172] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.PROP_STA;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            addStaminaButton.toolTip = param1;
         },"addStaminaButton.toolTip");
         result[173] = binding;
         binding = new Binding(this,function():Object
         {
            return styleAddName;
         },function(param1:Object):void
         {
            addStaminaButton.styleName = param1;
         },"addStaminaButton.styleName");
         result[174] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.PROP_INT;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            addIntelligenceButton.toolTip = param1;
         },"addIntelligenceButton.toolTip");
         result[175] = binding;
         binding = new Binding(this,function():Object
         {
            return styleAddName;
         },function(param1:Object):void
         {
            addIntelligenceButton.styleName = param1;
         },"addIntelligenceButton.styleName");
         result[176] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.PROP_SPR;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            addEnergyButton.toolTip = param1;
         },"addEnergyButton.toolTip");
         result[177] = binding;
         binding = new Binding(this,function():Object
         {
            return styleAddName;
         },function(param1:Object):void
         {
            addEnergyButton.styleName = param1;
         },"addEnergyButton.styleName");
         result[178] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = GamePredef.AADPROPCHECK;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            AddPropCheck.toolTip = param1;
         },"AddPropCheck.toolTip");
         result[179] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnOK.label = param1;
         },"btnOK.label");
         result[180] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[181] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn2.label = param1;
         },"tabBtn2.label");
         result[182] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[183] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_U[47];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn3.label = param1;
         },"tabBtn3.label");
         result[184] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.MOUNTPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn4.label = param1;
         },"tabBtn4.label");
         result[185] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.CHARACTORPANEL_S[60];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnPos.toolTip = param1;
         },"btnPos.toolTip");
         result[186] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get mwSub1() : ItemSlot
      {
         return this._1061902661mwSub1;
      }
      
      [Bindable(event="propertyChange")]
      public function get mwSub2() : ItemSlot
      {
         return this._1061902660mwSub2;
      }
      
      [Bindable(event="propertyChange")]
      public function get mwSub3() : ItemSlot
      {
         return this._1061902659mwSub3;
      }
      
      public function set infoRebirthExp(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1099375777infoRebirthExp;
         if(_loc2_ !== param1)
         {
            this._1099375777infoRebirthExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoRebirthExp",_loc2_,param1));
         }
      }
      
      public function set minusIntelligenceButton(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1606233953minusIntelligenceButton;
         if(_loc2_ !== param1)
         {
            this._1606233953minusIntelligenceButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"minusIntelligenceButton",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mwSub4() : ItemSlot
      {
         return this._1061902658mwSub4;
      }
      
      public function set minusStrengthButton(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1864769379minusStrengthButton;
         if(_loc2_ !== param1)
         {
            this._1864769379minusStrengthButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"minusStrengthButton",_loc2_,param1));
         }
      }
      
      public function set addStaminaButton(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._14326624addStaminaButton;
         if(_loc2_ !== param1)
         {
            this._14326624addStaminaButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addStaminaButton",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mwSub5() : ItemSlot
      {
         return this._1061902657mwSub5;
      }
      
      public function onAddStarAddition(param1:int) : void
      {
         if(param1 == _selectStarType)
         {
            clickStar(param1);
         }
      }
      
      public function __star11_click(param1:MouseEvent) : void
      {
         clickStar(11);
      }
      
      public function set rbImg(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._108274547rbImg;
         if(_loc2_ !== param1)
         {
            this._108274547rbImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rbImg",_loc2_,param1));
         }
      }
      
      public function set infoLevel(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1213662070infoLevel;
         if(_loc2_ !== param1)
         {
            this._1213662070infoLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLevel",_loc2_,param1));
         }
      }
      
      private function showStar(param1:int) : void
      {
         var _loc2_:Object = GameData.d[GamePredef.TBL_STARS_TEMPLATE][this["star" + param1].starData.currentId];
         var _loc3_:Object = GameData.d[GamePredef.TBL_STARS_TEMPLATE][this["star" + param1].starData.nextId];
         var _loc4_:Number = 1;
         if(_core.player.starsData[param1])
         {
            _loc4_ = Number(_core.player.starsData[param1].addition);
         }
         var _loc5_:String = _loc4_.toFixed(2);
         lb_addition.text = _loc5_;
         var _loc6_:int = _core.getStarColor(_loc4_);
         lb_addition.setStyle("color",GamePredef.CODE_ITEM_COLOR[_loc6_]);
         lb_add.text = Language.CHARACTORPANEL_U[56];
         if(_loc2_)
         {
            lb_name.text = _loc2_.name + " Lv." + _loc2_.level;
            ta_desc.htmlText = _loc2_.description;
         }
         else if(_loc3_)
         {
            lb_name.text = _loc3_.name + " Lv.0";
            ta_desc.htmlText = _loc3_.description;
         }
         if(Boolean(_core.player.starsData[param1]) && _core.player.starsData[param1].finishDate > 0)
         {
            btn_sj.visible = false;
            btn_qx.visible = true;
         }
         else
         {
            btn_sj.visible = true;
            btn_qx.visible = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_qx() : BasicGlowButton
      {
         return this._1378810134btn_qx;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnName() : BasicGlowButton
      {
         return this._206036743btnName;
      }
      
      private function addElement() : void
      {
         if(!mc)
         {
            mc = new (element as Class)();
            elemUIC.addChild(mc);
            maskMc = MovieClip(mc.getChildByName("maskMC"));
            maxMc = MovieClip(mc.getChildByName("maxMc"));
            mc.gotoAndStop(1);
            maskMc.gotoAndStop(1);
            maxMc.visible = false;
         }
      }
      
      private function showMount() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_MOUNT);
         if(_loc1_)
         {
            if(LAST_PLAYER_ID != _core.player.id)
            {
               _loc1_.initView();
               LAST_PLAYER_ID = _core.player.id;
            }
            else
            {
               _loc1_.visible = true;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_sj() : BasicGlowButton
      {
         return this._1378810086btn_sj;
      }
      
      [Bindable(event="propertyChange")]
      public function get mDefence() : BoxLabel
      {
         return this._97632477mDefence;
      }
      
      public function set hit(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._103315hit;
         if(_loc2_ !== param1)
         {
            this._103315hit = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hit",_loc2_,param1));
         }
      }
      
      public function set propertyCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1940048781propertyCanvas;
         if(_loc2_ !== param1)
         {
            this._1940048781propertyCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propertyCanvas",_loc2_,param1));
         }
      }
      
      public function set tab(param1:ViewStack) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._114581tab;
         if(_loc2_ !== param1)
         {
            this._114581tab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tab",_loc2_,param1));
         }
      }
      
      public function onCheckHaveMount(param1:int) : void
      {
         hasMount = param1;
         if(!param1)
         {
            Alert.show(Language.CHARACTORPANEL_S[81]);
            return;
         }
         tabBtnClick(4,0,1,2,3);
      }
      
      [Bindable(event="propertyChange")]
      public function get addBtnCanvas() : SimpleCanvas
      {
         return this._19957965addBtnCanvas;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_tf() : BasicGlowButton
      {
         return this._1378810059btn_tf;
      }
      
      public function tabBtnClick(param1:int, param2:int, param3:int, param4:int, param5:int) : void
      {
         var _loc6_:Image = null;
         pmImg.visible = false;
         ngImg.visible = false;
         rbImg.visible = false;
         if(param1 == 3)
         {
            if(_core.player.level < 80)
            {
               Alert.show(Language.CHARACTORPANEL_S[73]);
               return;
            }
            if(imgCanva.getChildren().length <= 0)
            {
               _loc6_ = new Image();
               _loc6_.source = ResManager.IMG_STARS_BACKGROUND;
               _loc6_.width = 285;
               _loc6_.height = 385;
               _loc6_.owner = XGCanvas;
               _loc6_.x = 0;
               _loc6_.y = 0;
               imgCanva.addChild(_loc6_);
            }
            initStars();
         }
         else
         {
            imgCanva.removeAllChildren();
         }
         if(2 == param1 && _core.player.level < 50)
         {
            Alert.show(Language.CHARACTORPANEL_S[62]);
            return;
         }
         if(param1 == 4)
         {
            if(!_core.player.expRe)
            {
               Alert.show(Language.CHARACTORPANEL_S[81]);
               return;
            }
            if(hasMount != 1)
            {
               _core.remote.call("checkHaveMount",new Responder(onCheckHaveMount),null);
               return;
            }
         }
         tab.selectedIndex = param1;
         this["tabBtn" + param1].selected = true;
         this["tabBtn" + param2].selected = false;
         this["tabBtn" + param3].selected = false;
         this["tabBtn" + param4].selected = false;
         this["tabBtn" + param5].selected = false;
         if(param1 == 1 && param2 == 0 && param3 == 2)
         {
            propertyCanvas.visible = false;
            pmImg.visible = true;
            ngImg.visible = true;
            img.visible = true;
            if(_core.player.levelRe > 0)
            {
               rbImg.visible = true;
            }
         }
         else if(param1 == 3)
         {
            propertyCanvas.visible = false;
            img.visible = false;
         }
         else
         {
            propertyCanvas.visible = true;
            img.visible = false;
         }
      }
      
      public function set MWCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1328020574MWCanvas;
         if(_loc2_ !== param1)
         {
            this._1328020574MWCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"MWCanvas",_loc2_,param1));
         }
      }
      
      public function set critical(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1952151455critical;
         if(_loc2_ !== param1)
         {
            this._1952151455critical = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"critical",_loc2_,param1));
         }
      }
      
      public function set lb_addition(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._283222949lb_addition;
         if(_loc2_ !== param1)
         {
            this._283222949lb_addition = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_addition",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get minusStrengthButton() : Button
      {
         return this._1864769379minusStrengthButton;
      }
      
      public function set btn_xg(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1378809934btn_xg;
         if(_loc2_ !== param1)
         {
            this._1378809934btn_xg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_xg",_loc2_,param1));
         }
      }
      
      public function onBeginStarLvUp(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:* = undefined;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         if(param1)
         {
            _core.player.starsData = param1;
            _loc2_ = new Date().getTime() + _core.timeLag;
            for(_loc3_ in param1)
            {
               if(param1[_loc3_].finishDate > 0)
               {
                  _lvUpStarType = _loc3_;
                  this["star" + _loc3_].starData.finishDate = param1[_loc3_].finishDate;
                  _interval = (this["star" + _loc3_].starData.finishDate - _loc2_) / 1000;
                  if(_interval <= 0)
                  {
                     _interval = 1;
                  }
                  _loc4_ = getNextStarId(param1[_loc3_].tid,_loc3_);
                  _loc5_ = GameData.d[GamePredef.TBL_STARS_TEMPLATE][_loc4_];
                  if(_loc5_)
                  {
                     img_star.source = ResManager.getIconUrl(_loc5_.resCode);
                     img_star.toolTip = Language.CHARACTORPANEL_S[72].toString().replace("{name}",_loc5_.name);
                     img_star.data = _loc5_;
                  }
                  break;
               }
            }
            if(Boolean(_starTimer) && _starTimer.running)
            {
               _starTimer.stop();
               _starTimer = null;
            }
            starLvUping = true;
            btn_sj.visible = false;
            btn_qx.visible = true;
            _interval = Math.round(_interval);
            _starTimer = new Timer(1000,_interval);
            _starTimer.addEventListener(TimerEvent.TIMER,handleStarTimer);
            _starTimer.addEventListener(TimerEvent.TIMER_COMPLETE,handleStarLvComplete);
            _starTimer.start();
         }
      }
      
      public function set lb_name(param1:RoundedLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._37085260lb_name;
         if(_loc2_ !== param1)
         {
            this._37085260lb_name = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_name",_loc2_,param1));
         }
      }
      
      public function ___CharactorPanel_Canvas2_show(param1:FlexEvent) : void
      {
         updateEquip();
      }
      
      public function set img(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._104387img;
         if(_loc2_ !== param1)
         {
            this._104387img = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get minusIntelligenceButton() : Button
      {
         return this._1606233953minusIntelligenceButton;
      }
      
      public function onCancelStarLvUp(param1:Object) : void
      {
         starLvUping = false;
         btn_sj.visible = true;
         btn_qx.visible = false;
         _core.player.starsData = param1;
         _lvUpStarType = -1;
         _interval = 0;
         updateStarsData(param1);
      }
      
      public function set mWRepairButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._508557257mWRepairButton;
         if(_loc2_ !== param1)
         {
            this._508557257mWRepairButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mWRepairButton",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tab() : ViewStack
      {
         return this._114581tab;
      }
      
      public function set eq11(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3119052eq11;
         if(_loc2_ !== param1)
         {
            this._3119052eq11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eq11",_loc2_,param1));
         }
      }
      
      public function set eq13(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3119054eq13;
         if(_loc2_ !== param1)
         {
            this._3119054eq13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eq13",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get critical() : BoxLabel
      {
         return this._1952151455critical;
      }
      
      public function set eq12(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3119053eq12;
         if(_loc2_ !== param1)
         {
            this._3119053eq12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eq12",_loc2_,param1));
         }
      }
      
      public function set eq10(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3119051eq10;
         if(_loc2_ !== param1)
         {
            this._3119051eq10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eq10",_loc2_,param1));
         }
      }
      
      public function set eq16(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3119057eq16;
         if(_loc2_ !== param1)
         {
            this._3119057eq16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eq16",_loc2_,param1));
         }
      }
      
      public function __MountCanvas_show(param1:FlexEvent) : void
      {
         updateMount();
      }
      
      public function set dodge(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._95758295dodge;
         if(_loc2_ !== param1)
         {
            this._95758295dodge = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dodge",_loc2_,param1));
         }
      }
      
      public function set eq15(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3119056eq15;
         if(_loc2_ !== param1)
         {
            this._3119056eq15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eq15",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_xg() : BasicGlowButton
      {
         return this._1378809934btn_xg;
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         tabBtnClick(1,0,2,3,4);
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_name() : RoundedLabel
      {
         return this._37085260lb_name;
      }
      
      private function set styleAddName(param1:String) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._177868763styleAddName;
         if(_loc2_ !== param1)
         {
            this._177868763styleAddName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"styleAddName",_loc2_,param1));
         }
      }
      
      public function set eq14(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3119055eq14;
         if(_loc2_ !== param1)
         {
            this._3119055eq14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eq14",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get img() : Image
      {
         return this._104387img;
      }
      
      public function set AddPropCheck(param1:CheckBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._727902236AddPropCheck;
         if(_loc2_ !== param1)
         {
            this._727902236AddPropCheck = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"AddPropCheck",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mWRepairButton() : BasicGlowButton
      {
         return this._508557257mWRepairButton;
      }
      
      [Bindable(event="propertyChange")]
      public function get eq10() : ItemSlot
      {
         return this._3119051eq10;
      }
      
      [Bindable(event="propertyChange")]
      public function get eq11() : ItemSlot
      {
         return this._3119052eq11;
      }
      
      [Bindable(event="propertyChange")]
      public function get eq12() : ItemSlot
      {
         return this._3119053eq12;
      }
      
      [Bindable(event="propertyChange")]
      public function get eq14() : ItemSlot
      {
         return this._3119055eq14;
      }
      
      [Bindable(event="propertyChange")]
      public function get eq16() : ItemSlot
      {
         return this._3119057eq16;
      }
      
      [Bindable(event="propertyChange")]
      public function get eq13() : ItemSlot
      {
         return this._3119054eq13;
      }
      
      private function getNextStarId(param1:int, param2:int) : int
      {
         var _loc5_:Object = null;
         var _loc3_:Object = _core.data.gameDataIndex[GamePredef.TBL_STARS_TEMPLATE][param2];
         var _loc4_:Object = GameData.d[GamePredef.TBL_STARS_TEMPLATE][param1];
         if(!_loc4_)
         {
            for each(_loc5_ in _loc3_)
            {
               if(parseInt(_loc5_.level) == 1)
               {
                  return _loc5_.id;
               }
            }
         }
         else
         {
            for each(_loc5_ in _loc3_)
            {
               if(parseInt(_loc5_.level) == parseFloat(_loc4_.level) + 1)
               {
                  return _loc5_.id;
               }
            }
         }
         return -1;
      }
      
      [Bindable(event="propertyChange")]
      public function get eq15() : ItemSlot
      {
         return this._3119056eq15;
      }
      
      public function __btn_tf_click(param1:MouseEvent) : void
      {
         addStarAddition();
      }
      
      public function __decoBtn_click(param1:MouseEvent) : void
      {
         decoHandler(param1);
      }
      
      public function __btnOK_click(param1:MouseEvent) : void
      {
         changeProperty();
      }
      
      public function set minusStaminaButton(param1:Button) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1889342449minusStaminaButton;
         if(_loc2_ !== param1)
         {
            this._1889342449minusStaminaButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"minusStaminaButton",_loc2_,param1));
         }
      }
      
      public function set star12(param1:StarIcon) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._892485645star12;
         if(_loc2_ !== param1)
         {
            this._892485645star12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star12",_loc2_,param1));
         }
      }
      
      public function set star10(param1:StarIcon) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._892485647star10;
         if(_loc2_ !== param1)
         {
            this._892485647star10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star10",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get styleAddName() : String
      {
         return this._177868763styleAddName;
      }
      
      [Bindable(event="propertyChange")]
      public function get AddPropCheck() : CheckBox
      {
         return this._727902236AddPropCheck;
      }
      
      [Bindable(event="propertyChange")]
      public function get dodge() : BoxLabel
      {
         return this._95758295dodge;
      }
      
      [Bindable(event="propertyChange")]
      public function get star10() : StarIcon
      {
         return this._892485647star10;
      }
      
      [Bindable(event="propertyChange")]
      public function get star11() : StarIcon
      {
         return this._892485646star11;
      }
      
      [Bindable(event="propertyChange")]
      public function get star12() : StarIcon
      {
         return this._892485645star12;
      }
      
      public function set star11(param1:StarIcon) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._892485646star11;
         if(_loc2_ !== param1)
         {
            this._892485646star11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star11",_loc2_,param1));
         }
      }
   }
}

