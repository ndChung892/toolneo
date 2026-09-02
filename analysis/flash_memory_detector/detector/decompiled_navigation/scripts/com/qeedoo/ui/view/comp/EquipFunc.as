package com.qeedoo.ui.view.comp
{
   import com.adobe.crypto.MD5;
   import com.adobe.serialization.json.JSON;
   import com.qeedoo.game.config.ItemConfig;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.ui.ISlot;
   import com.qeedoo.game.utils.JSONUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.LanguageUtil;
   import com.qeedoo.ui.utils.ToolKit;
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
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.controls.Alert;
   import mx.controls.CheckBox;
   import mx.controls.ComboBox;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.List;
   import mx.controls.NumericStepper;
   import mx.controls.RadioButtonGroup;
   import mx.controls.Spacer;
   import mx.controls.VRule;
   import mx.core.ClassFactory;
   import mx.core.DeferredInstanceFromFunction;
   import mx.core.IUITextField;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.NumericStepperEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.AddChild;
   import mx.states.State;
   import mx.styles.*;
   import style.Assets;
   
   use namespace mx_internal;
   
   public class EquipFunc extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _EquipFunc_BasicTxtButton13:BasicTxtButton;
      
      public var _EquipFunc_BasicTxtButton14:BasicTxtButton;
      
      public var _EquipFunc_BasicTxtButton16:BasicTxtButton;
      
      public var _EquipFunc_BasicTxtButton18:BasicTxtButton;
      
      public var _EquipFunc_BasicTxtButton15:BasicTxtButton;
      
      public var _EquipFunc_BasicTxtButton17:BasicTxtButton;
      
      public var _EquipFunc_BasicTxtButton19:BasicTxtButton;
      
      private var _1448813832jewelSet7:ItemSlotJewel;
      
      public var _EquipFunc_BasicTxtButton20:BasicTxtButton;
      
      public var _EquipFunc_BasicTxtButton21:BasicTxtButton;
      
      public var _EquipFunc_BasicTxtButton22:BasicTxtButton;
      
      public var _EquipFunc_BasicTxtButton23:BasicTxtButton;
      
      public var _EquipFunc_BasicTxtButton24:BasicTxtButton;
      
      private var _1492095729changeSoulItemRequire:ItemSlot;
      
      public var _EquipFunc_BasicTxtButton28:BasicTxtButton;
      
      public var _EquipFunc_BasicTxtButton29:BasicTxtButton;
      
      public var _EquipFunc_RoundedRadioButton1:RoundedRadioButton;
      
      public var _EquipFunc_RoundedRadioButton2:RoundedRadioButton;
      
      public var _EquipFunc_BasicTxtButton30:BasicTxtButton;
      
      public var _EquipFunc_BasicTxtButton32:BasicTxtButton;
      
      public var _EquipFunc_BasicTxtButton34:BasicTxtButton;
      
      private var _1534888386changePrefixItem3:ItemSlotMaterial;
      
      private var _1885394232sublimeItem:ItemSlot;
      
      public var _EquipFunc_BasicTxtButton31:BasicTxtButton;
      
      public var _EquipFunc_BasicTxtButton33:BasicTxtButton;
      
      public var _EquipFunc_BasicTxtButton35:BasicTxtButton;
      
      public var _EquipFunc_BasicGlowButton13:BasicGlowButton;
      
      public var _EquipFunc_BasicGlowButton12:BasicGlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _EquipFunc_BasicGlowButton14:BasicGlowButton;
      
      private var _1816798changePrefixItemRequire2:ItemSlotMaterial;
      
      private var _core:Core = Core.getInstance();
      
      private var _1036064102autoSublime:CheckBox;
      
      public var _autoMatchSlots:Object;
      
      private var _892482113state0:State;
      
      private var _1900875002starOneButton:BasicGlowButton;
      
      private var _646578732changeLevelItem3:ItemSlotMaterial;
      
      private var _dm:DataManager = DataManager.getInstance();
      
      private var _1448813833jewelSet6:ItemSlotJewel;
      
      private var _2126732817starInfo1:BasicTxtButton;
      
      private var _92144656btnResolve:BasicGlowButton;
      
      private var _1554701737changeNameInfo:Label;
      
      public var _EquipFunc_AddChild10:AddChild;
      
      public var _EquipFunc_AddChild11:AddChild;
      
      public var _EquipFunc_AddChild12:AddChild;
      
      public var _EquipFunc_AddChild13:AddChild;
      
      public var _EquipFunc_AddChild14:AddChild;
      
      public var _EquipFunc_AddChild15:AddChild;
      
      public var _EquipFunc_AddChild16:AddChild;
      
      public var _EquipFunc_AddChild17:AddChild;
      
      public var _EquipFunc_AddChild18:AddChild;
      
      public var _EquipFunc_AddChild19:AddChild;
      
      private var _1552437369changePrefixEqu:ItemSlotEquFunc;
      
      public var _EquipFunc_AddChild20:AddChild;
      
      public var _EquipFunc_AddChild21:AddChild;
      
      public var _EquipFunc_AddChild22:AddChild;
      
      public var _EquipFunc_AddChild23:AddChild;
      
      public var _EquipFunc_AddChild24:AddChild;
      
      public var _EquipFunc_AddChild25:AddChild;
      
      public var _EquipFunc_AddChild26:AddChild;
      
      public var _EquipFunc_AddChild27:AddChild;
      
      public var _EquipFunc_AddChild28:AddChild;
      
      public var _EquipFunc_AddChild29:AddChild;
      
      private var _880802256changePrefixInfo:Label;
      
      public var _EquipFunc_AddChild30:AddChild;
      
      public var _EquipFunc_AddChild31:AddChild;
      
      public var _EquipFunc_AddChild32:AddChild;
      
      public var _EquipFunc_AddChild33:AddChild;
      
      public var _EquipFunc_AddChild34:AddChild;
      
      public var _EquipFunc_AddChild35:AddChild;
      
      public var _EquipFunc_AddChild36:AddChild;
      
      public var _EquipFunc_AddChild37:AddChild;
      
      public var _EquipFunc_AddChild38:AddChild;
      
      public var _EquipFunc_AddChild39:AddChild;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _EquipFunc_AddChild40:AddChild;
      
      public var _EquipFunc_AddChild41:AddChild;
      
      public var _EquipFunc_AddChild42:AddChild;
      
      public var _EquipFunc_AddChild43:AddChild;
      
      public var _EquipFunc_AddChild44:AddChild;
      
      public var _EquipFunc_AddChild45:AddChild;
      
      public var _EquipFunc_AddChild46:AddChild;
      
      public var _EquipFunc_AddChild47:AddChild;
      
      public var _EquipFunc_AddChild48:AddChild;
      
      public var _EquipFunc_AddChild49:AddChild;
      
      public var _EquipFunc_AddChild50:AddChild;
      
      public var _EquipFunc_AddChild51:AddChild;
      
      public var _EquipFunc_AddChild52:AddChild;
      
      public var _EquipFunc_AddChild53:AddChild;
      
      public var _EquipFunc_AddChild54:AddChild;
      
      public var _EquipFunc_AddChild55:AddChild;
      
      public var _EquipFunc_AddChild56:AddChild;
      
      public var _EquipFunc_AddChild57:AddChild;
      
      public var _EquipFunc_AddChild58:AddChild;
      
      public var _EquipFunc_AddChild59:AddChild;
      
      private var _116825163resolvegetItem2:ItemSlotMaterial;
      
      private var _1214703760holeDigInfo:DescriptionLabel;
      
      public var _EquipFunc_AddChild60:AddChild;
      
      public var _EquipFunc_AddChild61:AddChild;
      
      public var _EquipFunc_AddChild62:AddChild;
      
      public var _EquipFunc_AddChild63:AddChild;
      
      public var _EquipFunc_AddChild64:AddChild;
      
      public var _EquipFunc_AddChild65:AddChild;
      
      public var _EquipFunc_AddChild66:AddChild;
      
      public var _EquipFunc_AddChild67:AddChild;
      
      public var _EquipFunc_AddChild68:AddChild;
      
      public var _EquipFunc_AddChild69:AddChild;
      
      private var _1963555970jewelSet10:ItemSlotJewel;
      
      private var _567481205changeLevelItemRequire3:ItemSlotMaterial;
      
      public var _EquipFunc_AddChild70:AddChild;
      
      public var _EquipFunc_AddChild71:AddChild;
      
      public var _EquipFunc_AddChild72:AddChild;
      
      public var _EquipFunc_AddChild73:AddChild;
      
      public var _EquipFunc_AddChild74:AddChild;
      
      public var _EquipFunc_AddChild75:AddChild;
      
      public var _EquipFunc_AddChild76:AddChild;
      
      public var _EquipFunc_AddChild77:AddChild;
      
      public var _EquipFunc_AddChild78:AddChild;
      
      public var _EquipFunc_AddChild79:AddChild;
      
      private var _1554707470changeNameItem:ItemSlotMaterial;
      
      private var _1448813834jewelSet5:ItemSlotJewel;
      
      public var _EquipFunc_AddChild80:AddChild;
      
      public var _EquipFunc_AddChild81:AddChild;
      
      public var _EquipFunc_AddChild82:AddChild;
      
      public var _EquipFunc_AddChild83:AddChild;
      
      public var _EquipFunc_AddChild84:AddChild;
      
      public var _EquipFunc_AddChild85:AddChild;
      
      public var _EquipFunc_AddChild86:AddChild;
      
      public var _EquipFunc_AddChild87:AddChild;
      
      public var _EquipFunc_AddChild88:AddChild;
      
      public var _EquipFunc_AddChild89:AddChild;
      
      private var _2042664543changeElementItem:ItemSlotMaterial;
      
      private var _1534888387changePrefixItem2:ItemSlotMaterial;
      
      public var _EquipFunc_DescriptionLabel2:DescriptionLabel;
      
      public var _EquipFunc_DescriptionLabel3:DescriptionLabel;
      
      public var _EquipFunc_DescriptionLabel5:DescriptionLabel;
      
      public var _EquipFunc_DescriptionLabel6:DescriptionLabel;
      
      public var _EquipFunc_DescriptionLabel7:DescriptionLabel;
      
      public var _EquipFunc_DescriptionLabel8:DescriptionLabel;
      
      public var _EquipFunc_DescriptionLabel9:DescriptionLabel;
      
      public var _EquipFunc_AddChild90:AddChild;
      
      public var _EquipFunc_AddChild91:AddChild;
      
      public var _EquipFunc_AddChild92:AddChild;
      
      public var _EquipFunc_AddChild93:AddChild;
      
      public var _EquipFunc_AddChild94:AddChild;
      
      public var _EquipFunc_AddChild95:AddChild;
      
      public var _EquipFunc_AddChild96:AddChild;
      
      public var _EquipFunc_AddChild97:AddChild;
      
      public var _EquipFunc_AddChild98:AddChild;
      
      public var _EquipFunc_AddChild99:AddChild;
      
      private var _2126732818starInfo2:BasicTxtButton;
      
      public var _EquipFunc_BasicTxtButton1:BasicTxtButton;
      
      public var _EquipFunc_BasicTxtButton2:BasicTxtButton;
      
      public var _EquipFunc_BasicTxtButton3:BasicTxtButton;
      
      public var _EquipFunc_BasicTxtButton4:BasicTxtButton;
      
      public var _EquipFunc_BasicTxtButton5:BasicTxtButton;
      
      public var _EquipFunc_BasicTxtButton6:BasicTxtButton;
      
      public var _EquipFunc_BasicTxtButton8:BasicTxtButton;
      
      public var _EquipFunc_BasicTxtButton9:BasicTxtButton;
      
      private var _707277172holeDigButton:BasicGlowButton;
      
      private var _103370449lvtip:BasicTxtButton;
      
      private var _638137383sublimeConsume:Label;
      
      private var _1214698027holeDigItem:ItemSlotEquFunc;
      
      private var _367582873changeSoulRadioGroup:RadioButtonGroup;
      
      private var _646578731changeLevelItem2:ItemSlotMaterial;
      
      public var _EquipFunc_Label10:Label;
      
      public var _EquipFunc_Label11:Label;
      
      public var _EquipFunc_Label12:Label;
      
      public var _EquipFunc_Label13:Label;
      
      public var _EquipFunc_Label15:Label;
      
      public var _EquipFunc_Label16:Label;
      
      public var _EquipFunc_Label17:Label;
      
      public var _EquipFunc_Label19:Label;
      
      public var _EquipFunc_Label21:Label;
      
      private var _1864458066holeDigDiamond:ItemSlotMaterial;
      
      public var _EquipFunc_Label22:Label;
      
      private var _567481204changeLevelItemRequire2:ItemSlotMaterial;
      
      private var _1897222734starMax:NumericStepper;
      
      private var _510410697autoRestrain:CheckBox;
      
      private var _1448813835jewelSet4:ItemSlotJewel;
      
      private var _1816797changePrefixItemRequire3:ItemSlotMaterial;
      
      private var _1678552859sublimeEquip:ItemSlotEquFunc;
      
      public var _EquipFunc_DescriptionLabel10:DescriptionLabel;
      
      public var _EquipFunc_DescriptionLabel11:DescriptionLabel;
      
      public var _EquipFunc_DescriptionLabel12:DescriptionLabel;
      
      public var _EquipFunc_DescriptionLabel13:DescriptionLabel;
      
      public var _EquipFunc_DescriptionLabel14:DescriptionLabel;
      
      public var _EquipFunc_DescriptionLabel15:DescriptionLabel;
      
      private var _2126732819starInfo3:BasicTxtButton;
      
      private var _1784770749restrainBox:ComboBox;
      
      private var _1087298052changeBindEqu:ItemSlotEquFunc;
      
      private var starNum:int;
      
      mx_internal var _bindings:Array = [];
      
      private var _650132332changeLevelMoney:Label;
      
      private var _773763731changeNameButton:BasicGlowButton;
      
      public var _EquipFunc_AddChild1:AddChild;
      
      public var _EquipFunc_AddChild2:AddChild;
      
      public var _EquipFunc_AddChild3:AddChild;
      
      public var _EquipFunc_AddChild4:AddChild;
      
      public var _EquipFunc_AddChild5:AddChild;
      
      public var _EquipFunc_AddChild6:AddChild;
      
      public var _EquipFunc_AddChild7:AddChild;
      
      public var _EquipFunc_AddChild8:AddChild;
      
      public var _EquipFunc_AddChild9:AddChild;
      
      private var _1454472054changeSoulItem:ItemSlot;
      
      private var _116825162resolvegetItem3:ItemSlotMaterial;
      
      public var _EquipFunc_Image1:Image;
      
      public var _EquipFunc_Image2:Image;
      
      private var _2112997681jewelSetButton:BasicGlowButton;
      
      private var _506894491restrainItem:ItemSlot;
      
      private var _567481203changeLevelItemRequire1:ItemSlotMaterial;
      
      private var _1534888388changePrefixItem1:ItemSlotMaterial;
      
      private var _1321368703changeLevelEquFinal:ItemSlotEquFunc;
      
      private var _1448813836jewelSet3:ItemSlotJewel;
      
      private var _535924684changePrefixButton:BasicGlowButton;
      
      private var _1591128955changeBindItemRequire:ItemSlotMaterial;
      
      private var listArr:Array = [Language.EQUIPTFUNCPANEL_U[10],Language.EQUIPTFUNCPANEL_U[11],Language.EQUIPTFUNCPANEL_U[12],Language.EQUIPTFUNCPANEL_U[13],Language.EQUIPTFUNCPANEL_U[14],Language.EQUIPTFUNCPANEL_U[15],Language.EQUIPTFUNCPANEL_U[16],Language.EQUIPTFUNCPANEL_U[156],Language.EQUIPTFUNCPANEL_U[23],Language.EQUIPTFUNCPANEL_U[24],Language.EQUIPTFUNCPANEL_U[243],Language.EQUIPTFUNCPANEL_U[260]];
      
      public var _EquipFunc_HBox1:HBox;
      
      public var _EquipFunc_HBox2:HBox;
      
      public var _EquipFunc_HBox4:HBox;
      
      public var _EquipFunc_HBox3:HBox;
      
      private var _506854415restrainHint:Label;
      
      private var _1531334786changePrefixMoney:Label;
      
      private var _1409033749equFuncList:List;
      
      private var _646578730changeLevelItem1:ItemSlotMaterial;
      
      private var _1315536005starItem:ItemSlotEquFunc;
      
      private var _1469908056restrainEquip:ItemSlotEquFunc;
      
      private var _653919215changeBindSucc:Label;
      
      private var _1035719805changeElementEqu:ItemSlotEquFunc;
      
      private var _1599588419resolveEqu:ItemSlotEquFunc;
      
      private var _1816799changePrefixItemRequire1:ItemSlotMaterial;
      
      private var _1684249301changeSoulButton:BasicGlowButton;
      
      private var _892482112state1:State;
      
      private var _1690306823sublimeRight:AutoTextArea;
      
      private var _1293840518changeSoulEqu:ItemSlotEquFunc;
      
      private var _864971167changeBindButton:BasicGlowButton;
      
      private var _1448813837jewelSet2:ItemSlotJewel;
      
      private var _1548158changeElementButton:BasicGlowButton;
      
      public var selectedIndx:uint = 0;
      
      private var newJewelList:Object;
      
      private var _1103497543descriptionlabel1:DescriptionLabel;
      
      private var _1448813830jewelSet9:ItemSlotJewel;
      
      private var _922290793hintTxt:AutoTextArea;
      
      private var _360588801starAllButton:BasicGlowButton;
      
      private var _1454466321changeSoulInfo:Label;
      
      private var _799140358changeElementItemRequire:ItemSlotMaterial;
      
      private var introArr3:Array = [46,48,50,51,72,57,63,73,36,39,161,171];
      
      private var _1505596530equView:Canvas;
      
      private var _1877761781changeLevelEqu:ItemSlotEquFunc;
      
      private var _653614683changeBindInfo:Label;
      
      private var _1448813838jewelSet1:ItemSlotJewel;
      
      private var _2042658810changeElementInfo:Label;
      
      private var _507271213restrainView:Label;
      
      private var _1485860654jewelSetItem:ItemSlotEquFunc;
      
      private var _1448813831jewelSet8:ItemSlotJewel;
      
      private var _1885319236sublimeLeft:AutoTextArea;
      
      private var _2119893244starBasic:NumericStepper;
      
      public var _EquipFunc_AddChild100:AddChild;
      
      public var _EquipFunc_AddChild101:AddChild;
      
      public var _EquipFunc_AddChild102:AddChild;
      
      public var _EquipFunc_AddChild103:AddChild;
      
      public var _EquipFunc_AddChild104:AddChild;
      
      public var _EquipFunc_AddChild105:AddChild;
      
      public var _EquipFunc_AddChild106:AddChild;
      
      public var _EquipFunc_AddChild107:AddChild;
      
      public var _EquipFunc_AddChild108:AddChild;
      
      public var _EquipFunc_AddChild109:AddChild;
      
      public var _EquipFunc_AddChild110:AddChild;
      
      public var _EquipFunc_AddChild111:AddChild;
      
      public var _EquipFunc_AddChild112:AddChild;
      
      public var _EquipFunc_AddChild113:AddChild;
      
      public var _EquipFunc_AddChild114:AddChild;
      
      public var _EquipFunc_AddChild115:AddChild;
      
      public var _EquipFunc_AddChild116:AddChild;
      
      public var _EquipFunc_AddChild117:AddChild;
      
      public var _EquipFunc_AddChild118:AddChild;
      
      public var _EquipFunc_AddChild119:AddChild;
      
      private var _508389001changeNameItemRequire:ItemSlotMaterial;
      
      public var _EquipFunc_AddChild120:AddChild;
      
      public var _EquipFunc_AddChild121:AddChild;
      
      public var _EquipFunc_AddChild122:AddChild;
      
      public var _EquipFunc_AddChild123:AddChild;
      
      public var _EquipFunc_AddChild124:AddChild;
      
      public var _EquipFunc_AddChild125:AddChild;
      
      public var _EquipFunc_AddChild126:AddChild;
      
      public var _EquipFunc_AddChild127:AddChild;
      
      public var _EquipFunc_AddChild128:AddChild;
      
      public var _EquipFunc_AddChild129:AddChild;
      
      private var _1918811006changeLevelInfo:Label;
      
      private var _1629920762changeLevelButton:BasicGlowButton;
      
      public var _EquipFunc_AddChild130:AddChild;
      
      public var _EquipFunc_AddChild131:AddChild;
      
      public var _EquipFunc_AddChild132:AddChild;
      
      public var _EquipFunc_AddChild133:AddChild;
      
      public var _EquipFunc_AddChild134:AddChild;
      
      public var _EquipFunc_AddChild135:AddChild;
      
      public var _EquipFunc_AddChild136:AddChild;
      
      public var _EquipFunc_AddChild137:AddChild;
      
      public var _EquipFunc_AddChild138:AddChild;
      
      public var _EquipFunc_AddChild139:AddChild;
      
      mx_internal var _watchers:Array = [];
      
      private var _742884590changeNameEqu:ItemSlotEquFunc;
      
      public var _EquipFunc_AddChild140:AddChild;
      
      public var _EquipFunc_AddChild141:AddChild;
      
      public var _EquipFunc_AddChild142:AddChild;
      
      public var _EquipFunc_AddChild143:AddChild;
      
      private var _itemList:Object = {
         "val":new Number(-1),
         "type":new Number(-1),
         "idList":new Array()
      };
      
      private var _2127404305starJewel:ItemSlotStar;
      
      private var _116825164resolvegetItem1:ItemSlotMaterial;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":400,
               "height":300,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"_EquipFunc_Image1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":175,
                        "y":110,
                        "width":295,
                        "height":215
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"equView",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":95,
                        "y":5,
                        "width":370,
                        "height":312,
                        "clipContent":false,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":VRule,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":90,
                        "y":8,
                        "height":311
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":List,
                  "id":"equFuncList",
                  "events":{"change":"__equFuncList_change"},
                  "stylesFactory":function():void
                  {
                     this.borderSides = "0";
                     this.backgroundAlpha = 0;
                     this.textRollOverColor = 16366965;
                     this.textSelectedColor = 1961723;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":80,
                        "height":310,
                        "x":10,
                        "y":8
                     };
                  }
               })]
            };
         }
      });
      
      private var _653620416changeBindItem:ItemSlotMaterial;
      
      public var _EquipFunc_BasicTxtButton10:BasicTxtButton;
      
      public var _EquipFunc_BasicTxtButton11:BasicTxtButton;
      
      public var _EquipFunc_BasicTxtButton12:BasicTxtButton;
      
      public function EquipFunc()
      {
         super();
         mx_internal::_document = this;
         this.width = 400;
         this.height = 300;
         this.states = [_EquipFunc_State1_i(),_EquipFunc_State2_i(),_EquipFunc_State3_c(),_EquipFunc_State4_c(),_EquipFunc_State5_c(),_EquipFunc_State6_c(),_EquipFunc_State7_c(),_EquipFunc_State8_c(),_EquipFunc_State9_c(),_EquipFunc_State10_c(),_EquipFunc_State11_c(),_EquipFunc_State12_c()];
         this.addEventListener("creationComplete",___EquipFunc_Canvas1_creationComplete);
      }
      
      public static function isPetEqu(param1:Object) : Boolean
      {
         return ToolKit.isEqual(param1.kind,GamePredef.ITEM_KIND_PETEQU) && ToolKit.isBigOrEqual(param1.position,GamePredef.PETEQU_POS_BEGIN) && ToolKit.isSmallOrEqual(param1.position,GamePredef.PETEQU_POS_END);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         EquipFunc._watcherSetupUtil = param1;
      }
      
      public static function isSpecPetEqu(param1:Object) : Boolean
      {
         return ToolKit.isEqual(param1.kind,GamePredef.ITEM_KIND_PETEQU) && ToolKit.isBigOrEqual(param1.position,56) && ToolKit.isSmallOrEqual(param1.position,57);
      }
      
      public function onRestrainEquip(param1:Object = null) : void
      {
         if(!param1 || !restrainEquip)
         {
            return;
         }
         var _loc2_:Object = restrainEquip.slotData;
         if(!_loc2_ || _loc2_.itemId != param1.itemId)
         {
            restrainViewClear();
            return;
         }
         var _loc3_:Object = _dm.getGameData(_loc2_.type,_loc2_.itemId);
         if(_loc3_)
         {
            _loc3_.flag = param1.flagStr;
            _dm.updateData(_loc2_.type,_loc3_);
            restrainEquipChange();
         }
         param1.hasOwnProperty("num") && (ToolKit.isBigThan(param1.num,0) ? (restrainItem.stackNum = param1.num) : restrainItem.clean());
      }
      
      private function _EquipFunc_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         changeLevelInfo = _loc1_;
         _loc1_.y = 291;
         _loc1_.setStyle("color",14026246);
         _loc1_.setStyle("horizontalCenter","-111");
         _loc1_.id = "changeLevelInfo";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_BasicTxtButton8_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         _EquipFunc_BasicTxtButton8 = _loc1_;
         _loc1_.x = 29;
         _loc1_.y = 173;
         _loc1_.width = 76;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton8";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton8",_EquipFunc_BasicTxtButton8);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild46_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild46 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotEquFunc6_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild46",_EquipFunc_AddChild46);
         return _loc1_;
      }
      
      private function _EquipFunc_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = ResManager.TOTEM_CHARACTER;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[17];
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[44];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[45];
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[18];
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[46];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[47];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[48];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[49];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[50];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[51];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[52];
         _loc1_ = descriptionlabel1;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[19];
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[46];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[47];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[53];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[49];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[50];
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[19];
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_S[59];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_S[60];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[53];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[49];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[50];
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[19];
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_S[53];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_S[52];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_S[61];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_S[62];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[53];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[49];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[50];
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[19];
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_S[59];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_S[60];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[53];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[49];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[50];
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[20];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[54];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[55];
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[19];
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[46];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_S[59];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[157];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[49];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[50];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[52];
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[2];
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[3];
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_S[37];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[33];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[34];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[35];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[36];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[37];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[38];
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[4];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_S[40];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[5];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[39];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[40];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[244];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[245];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = {"types":{523:true}};
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[246];
         _loc1_ = equView;
         _loc1_ = !hintTxt.visible;
         _loc1_ = Assets.UP_ARROW;
         _loc1_ = equView;
         _loc1_ = !hintTxt.visible;
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = equView;
         _loc1_ = !hintTxt.visible;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[249];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[248];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[261];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[262];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = equView;
         _loc1_ = equView;
         _loc1_ = {"types":{524:true}};
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[263];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = equView;
         _loc1_ = !restrainHint.visible;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[264];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[266];
         _loc1_ = !restrainHint.visible;
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[268];
         _loc1_ = !restrainHint.visible;
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = equView;
         _loc1_ = !restrainHint.visible;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[269];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = equView;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[270];
         _loc1_ = listArr;
      }
      
      private function _EquipFunc_BasicTxtButton12_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         _EquipFunc_BasicTxtButton12 = _loc1_;
         _loc1_.x = 151;
         _loc1_.y = 173;
         _loc1_.width = 76;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton12";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton12",_EquipFunc_BasicTxtButton12);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function set changeNameItem(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1554707470changeNameItem;
         if(_loc2_ !== param1)
         {
            this._1554707470changeNameItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeNameItem",_loc2_,param1));
         }
      }
      
      private function changeSoulViewClear() : void
      {
         if(changeSoulEqu)
         {
            changeSoulInfo.htmlText = "";
            changeSoulButton.enabled = false;
            changeSoulEqu.clean();
            changeSoulItem.clean();
            changeSoulItemRequire.clean();
         }
      }
      
      private function _EquipFunc_BasicGlowButton9_i() : BasicGlowButton
      {
         var _loc1_:BasicGlowButton = null;
         _loc1_ = new BasicGlowButton();
         starAllButton = _loc1_;
         _loc1_.y = 230;
         _loc1_.styleName = "BtnStdGreen";
         _loc1_.x = 143;
         _loc1_.width = 80;
         _loc1_.setStyle("paddingTop",1);
         _loc1_.addEventListener("click",__starAllButton_click);
         _loc1_.id = "starAllButton";
         BindingManager.executeBindings(this,"starAllButton",starAllButton);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild100_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild100 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton26_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild100",_EquipFunc_AddChild100);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild11_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild11 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotMaterial2_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild11",_EquipFunc_AddChild11);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild57_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild57 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton15_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild57",_EquipFunc_AddChild57);
         return _loc1_;
      }
      
      public function __starBasic_change(param1:NumericStepperEvent) : void
      {
         setStarInfo();
      }
      
      [Bindable(event="propertyChange")]
      public function get changePrefixButton() : BasicGlowButton
      {
         return this._535924684changePrefixButton;
      }
      
      private function _EquipFunc_AddChild111_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild111 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotJewel2_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild111",_EquipFunc_AddChild111);
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotJewel5_i() : ItemSlotJewel
      {
         var _loc1_:ItemSlotJewel = null;
         _loc1_ = new ItemSlotJewel();
         jewelSet5 = _loc1_;
         _loc1_.y = 192;
         _loc1_.movable = false;
         _loc1_.x = 266.5;
         _loc1_.doubleClickEnabled = true;
         _loc1_.addEventListener("doubleClick",__jewelSet5_doubleClick);
         _loc1_.id = "jewelSet5";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get autoRestrain() : CheckBox
      {
         return this._510410697autoRestrain;
      }
      
      private function _EquipFunc_BasicTxtButton23_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         _EquipFunc_BasicTxtButton23 = _loc1_;
         _loc1_.x = 148;
         _loc1_.y = 134;
         _loc1_.width = 76;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton23";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton23",_EquipFunc_BasicTxtButton23);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild22_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild22 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton5_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild22",_EquipFunc_AddChild22);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild68_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild68 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton18_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild68",_EquipFunc_AddChild68);
         return _loc1_;
      }
      
      private function _EquipFunc_State5_c() : State
      {
         var _loc1_:State = null;
         _loc1_ = new State();
         _loc1_.name = "state4";
         _loc1_.overrides = [_EquipFunc_AddChild46_i(),_EquipFunc_AddChild47_i(),_EquipFunc_AddChild48_i(),_EquipFunc_AddChild49_i(),_EquipFunc_AddChild50_i(),_EquipFunc_AddChild51_i(),_EquipFunc_AddChild52_i(),_EquipFunc_AddChild53_i(),_EquipFunc_AddChild54_i(),_EquipFunc_AddChild55_i(),_EquipFunc_AddChild56_i(),_EquipFunc_AddChild57_i(),_EquipFunc_AddChild58_i()];
         return _loc1_;
      }
      
      private function _EquipFunc_Label12_i() : Label
      {
         var _loc1_:Label = null;
         _loc1_ = new Label();
         _EquipFunc_Label12 = _loc1_;
         _loc1_.x = 105;
         _loc1_.y = 95;
         _loc1_.setStyle("color",16777215);
         _loc1_.id = "_EquipFunc_Label12";
         BindingManager.executeBindings(this,"_EquipFunc_Label12",_EquipFunc_Label12);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild122_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild122 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicGlowButton12_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild122",_EquipFunc_AddChild122);
         return _loc1_;
      }
      
      public function __jewelSet8_doubleClick(param1:MouseEvent) : void
      {
         jewelDel(8);
      }
      
      private function _EquipFunc_AddChild4_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild4 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_DescriptionLabel1_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild4",_EquipFunc_AddChild4);
         return _loc1_;
      }
      
      private function _EquipFunc_Canvas4_c() : Canvas
      {
         var _loc1_:Canvas = null;
         _loc1_ = new Canvas();
         _loc1_.clipContent = false;
         _loc1_.percentHeight = 100;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         _loc1_.addChild(_EquipFunc_Spacer1_c());
         _loc1_.addChild(_EquipFunc_Image2_i());
         return _loc1_;
      }
      
      public function ___EquipFunc_BasicGlowButton14_click(param1:MouseEvent) : void
      {
         restrainHandler(param1);
      }
      
      private function _EquipFunc_BasicTxtButton34_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         _EquipFunc_BasicTxtButton34 = _loc1_;
         _loc1_.x = 156;
         _loc1_.y = 111;
         _loc1_.width = 54;
         _loc1_.height = 19;
         _loc1_.setStyle("fontSize",12);
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.setStyle("paddingTop",1);
         _loc1_.setStyle("paddingBottom",1);
         _loc1_.id = "_EquipFunc_BasicTxtButton34";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton34",_EquipFunc_BasicTxtButton34);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild33_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild33 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton8_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild33",_EquipFunc_AddChild33);
         return _loc1_;
      }
      
      public function set sublimeConsume(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._638137383sublimeConsume;
         if(_loc2_ !== param1)
         {
            this._638137383sublimeConsume = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sublimeConsume",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_AddChild79_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild79 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_Label8_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild79",_EquipFunc_AddChild79);
         return _loc1_;
      }
      
      public function set restrainHint(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._506854415restrainHint;
         if(_loc2_ !== param1)
         {
            this._506854415restrainHint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrainHint",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get restrainView() : Label
      {
         return this._507271213restrainView;
      }
      
      private function _EquipFunc_ItemSlotStar1_i() : ItemSlotStar
      {
         var _loc1_:ItemSlotStar = null;
         _loc1_ = new ItemSlotStar();
         starJewel = _loc1_;
         _loc1_.y = 160;
         _loc1_.movable = false;
         _loc1_.x = 280;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "starJewel";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function set changePrefixButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._535924684changePrefixButton;
         if(_loc2_ !== param1)
         {
            this._535924684changePrefixButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changePrefixButton",_loc2_,param1));
         }
      }
      
      private function starViewClear() : void
      {
         if(starItem)
         {
            starItem.clean();
            starJewel.clean();
            starInfo1.label = "";
            starInfo2.label = "";
         }
         starNum = 0;
      }
      
      public function set autoRestrain(param1:CheckBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._510410697autoRestrain;
         if(_loc2_ !== param1)
         {
            this._510410697autoRestrain = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"autoRestrain",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_BasicTxtButton6_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = new BasicTxtButton();
         _EquipFunc_BasicTxtButton6 = _loc1_;
         _loc1_.x = 29;
         _loc1_.y = 197;
         _loc1_.width = 76;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton6";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton6",_EquipFunc_BasicTxtButton6);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotEquFunc13_i() : ItemSlotEquFunc
      {
         var _loc1_:ItemSlotEquFunc = null;
         _loc1_ = new ItemSlotEquFunc();
         restrainEquip = _loc1_;
         _loc1_.x = 120;
         _loc1_.y = 137;
         _loc1_.movable = false;
         _loc1_.id = "restrainEquip";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_BasicGlowButton7_i() : BasicGlowButton
      {
         var _loc1_:BasicGlowButton = null;
         _loc1_ = new BasicGlowButton();
         btnResolve = _loc1_;
         _loc1_.x = 159;
         _loc1_.styleName = "BtnStdRed";
         _loc1_.enabled = false;
         _loc1_.width = 50;
         _loc1_.y = 286;
         _loc1_.setStyle("paddingBottom",1);
         _loc1_.addEventListener("click",__btnResolve_click);
         _loc1_.id = "btnResolve";
         BindingManager.executeBindings(this,"btnResolve",btnResolve);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild133_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild133 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicGlowButton13_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild133",_EquipFunc_AddChild133);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild44_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild44 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton12_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild44",_EquipFunc_AddChild44);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get changeElementInfo() : Label
      {
         return this._2042658810changeElementInfo;
      }
      
      public function set restrainView(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._507271213restrainView;
         if(_loc2_ !== param1)
         {
            this._507271213restrainView = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrainView",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get changeSoulEqu() : ItemSlotEquFunc
      {
         return this._1293840518changeSoulEqu;
      }
      
      [Bindable(event="propertyChange")]
      public function get restrainItem() : ItemSlot
      {
         return this._506894491restrainItem;
      }
      
      private function changePrefixItemChange(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         var _loc6_:* = undefined;
         var _loc2_:Boolean = false;
         if(Boolean(changePrefixEqu.slotData && ToolKit.isBigThan(changePrefixItemRequire1.giid,0)) && Boolean(ToolKit.isBigThan(changePrefixItemRequire2.giid,0)) && ToolKit.isBigThan(changePrefixItemRequire3.giid,0))
         {
            _loc2_ = true;
            _loc3_ = null;
            _loc4_ = null;
            _loc5_ = 1;
            while(_loc5_ <= 3)
            {
               _loc4_ = this["changePrefixItem" + _loc5_];
               if(_loc4_.slotData != null)
               {
                  if(_loc4_.tempBagFlag)
                  {
                     _loc3_ = GameData.d[_loc4_.slotData.ti][_loc4_.slotData.ii];
                     _loc6_ = {"color":int(_loc4_.slotData.q / 5)};
                  }
                  else
                  {
                     _loc3_ = _core.getTemplateData(_loc4_.slotData.type,_loc4_.slotData.itemId,false);
                     _loc6_ = _core.data.gameData[GamePredef.TBL_ITEM_INSTANCE][_loc4_.slotData.itemId];
                  }
                  if(_loc6_.color < 3)
                  {
                     _loc4_.slotData = null;
                     _loc4_.stackNum = 0;
                     _loc4_.giid = 0;
                     _loc2_ = false;
                  }
                  if(!(_loc3_ && ToolKit.isEqual(_loc3_.id,this["changePrefixItemRequire" + _loc5_].giid)))
                  {
                     _loc4_.clean();
                     _loc2_ = false;
                  }
               }
               else
               {
                  _loc2_ = false;
               }
               _loc5_++;
            }
         }
         changePrefixButton.enabled = _loc2_;
      }
      
      private function _EquipFunc_BasicTxtButton10_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         _EquipFunc_BasicTxtButton10 = _loc1_;
         _loc1_.x = 266;
         _loc1_.y = 173;
         _loc1_.width = 76;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton10";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton10",_EquipFunc_BasicTxtButton10);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild55_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild55 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_DescriptionLabel10_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild55",_EquipFunc_AddChild55);
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotJewel3_i() : ItemSlotJewel
      {
         var _loc1_:ItemSlotJewel = null;
         _loc1_ = new ItemSlotJewel();
         jewelSet3 = _loc1_;
         _loc1_.y = 192;
         _loc1_.x = 166;
         _loc1_.movable = false;
         _loc1_.doubleClickEnabled = true;
         _loc1_.addEventListener("doubleClick",__jewelSet3_doubleClick);
         _loc1_.id = "jewelSet3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function resetItemList() : void
      {
         _itemList.val = -1;
         _itemList.type = -1;
         _itemList.idList = [];
      }
      
      private function _EquipFunc_AddChild20_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild20 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton3_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild20",_EquipFunc_AddChild20);
         return _loc1_;
      }
      
      private function _EquipFunc_BasicTxtButton21_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         _EquipFunc_BasicTxtButton21 = _loc1_;
         _loc1_.x = 255;
         _loc1_.y = 130;
         _loc1_.width = 76;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton21";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton21",_EquipFunc_BasicTxtButton21);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function jewelDel(param1:int) : void
      {
         var jewel:Object = null;
         var func:Function = null;
         var showString:String = null;
         var view:* = undefined;
         var rate:Number = NaN;
         var moneyCost:uint = 0;
         var index:int = param1;
         if(Boolean(this["jewelSet" + index].giid) && this["jewelSet" + index].giid > 0)
         {
            jewel = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][this["jewelSet" + index].giid];
            if(jewel)
            {
               func = function(param1:CloseEvent):void
               {
                  if(param1.detail == Alert.YES)
                  {
                     _core.remote.call("jewelDel",new Responder(onJewelDel),jewelSetItem.slotData.id,index);
                  }
               };
               showString = Language.EQUIPTFUNCPANEL_S[66].toString();
               view = _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC);
               rate = 1;
               if(view)
               {
                  rate = Number(view.jweOffMoney);
               }
               moneyCost = Math.round(jewel.gold * 0.2 * rate);
               if(moneyCost == 0)
               {
                  _core.remote.call("jewelDel",new Responder(onJewelDel),jewelSetItem.slotData.id,index);
                  return;
               }
               showString = showString.replace("{gold}",moneyCost);
               showString = showString.replace("{name}",jewel.name);
               Alert.show(showString,"",3,this,func);
            }
         }
      }
      
      public function onStar(param1:Object) : void
      {
         var _loc2_:String = "";
         if(param1)
         {
            if(ToolKit.isEqual(param1.equSlotId,starItem.slotData.id) && ToolKit.isEqual(param1.starSlotId,starJewel.slotData.id))
            {
               starOneButton.enabled = true;
               starAllButton.enabled = true;
               if(ToolKit.isBigThan(param1.num,0))
               {
                  starJewel.stackNum = param1.num;
               }
               else
               {
                  starJewel.clean();
               }
            }
            starNum = param1.starNum;
            setStarInfo();
            if(param1.flag)
            {
               _loc2_ = Language.EQUIPTFUNCPANEL_S[4];
               _loc2_ = _loc2_.replace("{starNum}",starNum);
               _core.sysMidNote(_loc2_);
            }
            else
            {
               _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[6]);
            }
         }
      }
      
      public function onHoleDig(param1:Object) : void
      {
         holeDigButton.enabled = true;
         if(param1)
         {
            if(ToolKit.isEqual(param1.equSlotId,holeDigItem.slotData.id) && ToolKit.isEqual(param1.diamondSlotId,holeDigDiamond.slotData.id))
            {
               if(ToolKit.isBigThan(param1.num,0))
               {
                  holeDigDiamond.stackNum = param1.num;
                  holeDigItemChange(null);
               }
               else
               {
                  holeDigDiamond.clean();
                  holeDigItemChange(null);
               }
            }
            if(param1.flag)
            {
               _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[24]);
            }
            else
            {
               _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[25]);
            }
         }
         _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC).equipBag.showItem(1,_itemList);
      }
      
      private function changeBindEquChange(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(changeBindEqu.slotData)
         {
            _loc2_ = _core.getTemplateData(changeBindEqu.slotData.type,changeBindEqu.slotData.itemId,false);
            if(_loc2_)
            {
               changeBindItemRequire.type = GamePredef.TBL_ITEM_TEMPLATE;
               changeBindItemRequire.giid = _loc2_.requireItem2;
               changeBindItemChange(null);
               _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC).equipBag.showItem(1,{
                  "type":1,
                  "idList":[changeBindItemRequire.giid]
               });
            }
         }
      }
      
      private function _EquipFunc_AddChild120_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild120 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicGlowButton11_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild120",_EquipFunc_AddChild120);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild66_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild66 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_DescriptionLabel12_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild66",_EquipFunc_AddChild66);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild2_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild2 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotMaterial1_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild2",_EquipFunc_AddChild2);
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotEquFunc9_i() : ItemSlotEquFunc
      {
         var _loc1_:ItemSlotEquFunc = null;
         _loc1_ = new ItemSlotEquFunc();
         changePrefixEqu = _loc1_;
         _loc1_.y = 190;
         _loc1_.movable = false;
         _loc1_.x = 52;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changePrefixEqu";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelSetItem() : ItemSlotEquFunc
      {
         return this._1485860654jewelSetItem;
      }
      
      private function _EquipFunc_ItemSlotEquFunc11_i() : ItemSlotEquFunc
      {
         var _loc1_:ItemSlotEquFunc = null;
         _loc1_ = new ItemSlotEquFunc();
         jewelSetItem = _loc1_;
         _loc1_.y = 139;
         _loc1_.movable = false;
         _loc1_.x = 167;
         _loc1_.id = "jewelSetItem";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_State3_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "state2";
         _loc1_.overrides = [_EquipFunc_AddChild26_i(),_EquipFunc_AddChild27_i(),_EquipFunc_AddChild28_i(),_EquipFunc_AddChild29_i(),_EquipFunc_AddChild30_i(),_EquipFunc_AddChild31_i(),_EquipFunc_AddChild32_i(),_EquipFunc_AddChild33_i(),_EquipFunc_AddChild34_i(),_EquipFunc_AddChild35_i()];
         return _loc1_;
      }
      
      private function _EquipFunc_Label10_i() : Label
      {
         var _loc1_:Label = null;
         _loc1_ = new Label();
         _EquipFunc_Label10 = _loc1_;
         _loc1_.x = 6;
         _loc1_.y = 87;
         _loc1_.width = 360;
         _loc1_.setStyle("color",16468278);
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("fontSize",12);
         _loc1_.id = "_EquipFunc_Label10";
         BindingManager.executeBindings(this,"_EquipFunc_Label10",_EquipFunc_Label10);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_DescriptionLabel8_i() : DescriptionLabel
      {
         var _loc1_:DescriptionLabel = null;
         _loc1_ = new DescriptionLabel();
         _EquipFunc_DescriptionLabel8 = _loc1_;
         _loc1_.x = 10;
         _loc1_.y = 144;
         _loc1_.id = "_EquipFunc_DescriptionLabel8";
         BindingManager.executeBindings(this,"_EquipFunc_DescriptionLabel8",_EquipFunc_DescriptionLabel8);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild31_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild31 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_DescriptionLabel5_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild31",_EquipFunc_AddChild31);
         return _loc1_;
      }
      
      private function _EquipFunc_BasicTxtButton32_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         _EquipFunc_BasicTxtButton32 = _loc1_;
         _loc1_.x = 37;
         _loc1_.y = 230;
         _loc1_.width = 65;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton32";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton32",_EquipFunc_BasicTxtButton32);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild77_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild77 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotEquFunc9_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild77",_EquipFunc_AddChild77);
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotMaterial18_i() : ItemSlotMaterial
      {
         var _loc1_:ItemSlotMaterial = null;
         _loc1_ = new ItemSlotMaterial();
         changePrefixItemRequire2 = _loc1_;
         _loc1_.y = 190;
         _loc1_.haveRequireSlot = false;
         _loc1_.x = 167;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changePrefixItemRequire2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild131_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild131 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_Label14_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild131",_EquipFunc_AddChild131);
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotMaterial9_i() : ItemSlotMaterial
      {
         var _loc1_:ItemSlotMaterial = new ItemSlotMaterial();
         changeNameItem = _loc1_;
         _loc1_.y = 202;
         _loc1_.haveRequireSlot = false;
         _loc1_.x = 279;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changeNameItem";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_Label21_i() : Label
      {
         var _loc1_:Label = null;
         _loc1_ = new Label();
         _EquipFunc_Label21 = _loc1_;
         _loc1_.y = 240;
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("color",65535);
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "_EquipFunc_Label21";
         BindingManager.executeBindings(this,"_EquipFunc_Label21",_EquipFunc_Label21);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_BasicGlowButton5_i() : BasicGlowButton
      {
         var _loc1_:BasicGlowButton = null;
         _loc1_ = new BasicGlowButton();
         changeSoulButton = _loc1_;
         _loc1_.styleName = "BtnStdRed";
         _loc1_.x = 159;
         _loc1_.width = 50;
         _loc1_.y = 286;
         _loc1_.setStyle("paddingBottom",1);
         _loc1_.addEventListener("click",__changeSoulButton_click);
         _loc1_.id = "changeSoulButton";
         BindingManager.executeBindings(this,"changeSoulButton",changeSoulButton);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function set changeLevelInfo(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1918811006changeLevelInfo;
         if(_loc2_ !== param1)
         {
            this._1918811006changeLevelInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeLevelInfo",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_BasicTxtButton4_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = new BasicTxtButton();
         _EquipFunc_BasicTxtButton4 = _loc1_;
         _loc1_.x = 155;
         _loc1_.y = 134;
         _loc1_.width = 76;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton4";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton4",_EquipFunc_BasicTxtButton4);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function set changeElementEqu(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1035719805changeElementEqu;
         if(_loc2_ !== param1)
         {
            this._1035719805changeElementEqu = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeElementEqu",_loc2_,param1));
         }
      }
      
      public function set changeBindItemRequire(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1591128955changeBindItemRequire;
         if(_loc2_ !== param1)
         {
            this._1591128955changeBindItemRequire = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeBindItemRequire",_loc2_,param1));
         }
      }
      
      public function __jewelSet2_doubleClick(param1:MouseEvent) : void
      {
         jewelDel(2);
      }
      
      public function set changeSoulEqu(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1293840518changeSoulEqu;
         if(_loc2_ !== param1)
         {
            this._1293840518changeSoulEqu = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeSoulEqu",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_AddChild42_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild42 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_DescriptionLabel8_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild42",_EquipFunc_AddChild42);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get sublimeRight() : AutoTextArea
      {
         return this._1690306823sublimeRight;
      }
      
      private function _EquipFunc_AddChild88_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild88 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_DescriptionLabel14_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild88",_EquipFunc_AddChild88);
         return _loc1_;
      }
      
      public function set starItem(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1315536005starItem;
         if(_loc2_ !== param1)
         {
            this._1315536005starItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starItem",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_AddChild142_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild142 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_HBox4_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild142",_EquipFunc_AddChild142);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get starBasic() : NumericStepper
      {
         return this._2119893244starBasic;
      }
      
      private function jewelSet() : void
      {
         var _loc1_:int = 0;
         if(jewelSetItem.slotData)
         {
            _loc1_ = 1;
            while(_loc1_ <= 10)
            {
               if(this["jewelSet" + _loc1_].slotData)
               {
                  if(!newJewelList)
                  {
                     newJewelList = {};
                  }
                  newJewelList[_loc1_] = {
                     "idx":this["jewelSet" + _loc1_].slotData.id,
                     "tempBagFlag":this["jewelSet" + _loc1_].tempBagFlag
                  };
               }
               _loc1_++;
            }
            if(newJewelList)
            {
               Alert.show(Language.EQUIPTFUNCPANEL_S[7],"",3,this,jewelSetHandler);
            }
            else
            {
               _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[8]);
            }
         }
      }
      
      private function holeDigViewClear() : void
      {
         if(holeDigItem)
         {
            holeDigItem.clean();
            holeDigDiamond.clean();
            holeDigInfo.htmlText = "";
         }
      }
      
      private function _EquipFunc_AddChild53_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild53 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_RoundedRadioButton2_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild53",_EquipFunc_AddChild53);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild99_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild99 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotStar1_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild99",_EquipFunc_AddChild99);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelSetButton() : BasicGlowButton
      {
         return this._2112997681jewelSetButton;
      }
      
      public function set restrainItem(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._506894491restrainItem;
         if(_loc2_ !== param1)
         {
            this._506894491restrainItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrainItem",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_ItemSlotJewel1_i() : ItemSlotJewel
      {
         var _loc1_:ItemSlotJewel = null;
         _loc1_ = new ItemSlotJewel();
         jewelSet1 = _loc1_;
         _loc1_.y = 192;
         _loc1_.movable = false;
         _loc1_.x = 66;
         _loc1_.doubleClickEnabled = true;
         _loc1_.addEventListener("doubleClick",__jewelSet1_doubleClick);
         _loc1_.id = "jewelSet1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_RadioButtonGroup1_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = null;
         _loc1_ = new RadioButtonGroup();
         changeSoulRadioGroup = _loc1_;
         _loc1_.initialized(this,"changeSoulRadioGroup");
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild64_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild64 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_Label7_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild64",_EquipFunc_AddChild64);
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotEquFunc7_i() : ItemSlotEquFunc
      {
         var _loc1_:ItemSlotEquFunc = null;
         _loc1_ = new ItemSlotEquFunc();
         changeBindEqu = _loc1_;
         _loc1_.y = 202;
         _loc1_.movable = false;
         _loc1_.x = 52;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changeBindEqu";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_State1_i() : State
      {
         var _loc1_:State = new State();
         state0 = _loc1_;
         _loc1_.name = "state0";
         _loc1_.overrides = [_EquipFunc_AddChild1_i(),_EquipFunc_AddChild2_i(),_EquipFunc_AddChild3_i(),_EquipFunc_AddChild4_i(),_EquipFunc_AddChild5_i(),_EquipFunc_AddChild6_i()];
         return _loc1_;
      }
      
      private function changeNameItemChange(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(changeNameItem.slotData)
         {
            if(Boolean(changeNameEqu.slotData) && ToolKit.isBigThan(changeNameItemRequire.giid,0))
            {
               if(changeNameItem.tempBagFlag)
               {
                  _loc2_ = GameData.d[changeNameItem.slotData.ti][changeNameItem.slotData.ii];
               }
               else
               {
                  _loc2_ = _core.getTemplateData(changeNameItem.slotData.type,changeNameItem.slotData.itemId,false);
               }
               if(Boolean(_loc2_) && ToolKit.isEqual(_loc2_.id,changeNameItemRequire.giid))
               {
                  changeNameButton.enabled = true;
                  return;
               }
               changeNameItem.clean();
            }
         }
         changeNameButton.enabled = false;
      }
      
      private function _EquipFunc_DescriptionLabel6_i() : DescriptionLabel
      {
         var _loc1_:DescriptionLabel = null;
         _loc1_ = new DescriptionLabel();
         _EquipFunc_DescriptionLabel6 = _loc1_;
         _loc1_.x = 251;
         _loc1_.y = 143;
         _loc1_.id = "_EquipFunc_DescriptionLabel6";
         BindingManager.executeBindings(this,"_EquipFunc_DescriptionLabel6",_EquipFunc_DescriptionLabel6);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild75_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild75 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton20_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild75",_EquipFunc_AddChild75);
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotMaterial16_i() : ItemSlotMaterial
      {
         var _loc1_:ItemSlotMaterial = null;
         _loc1_ = new ItemSlotMaterial();
         resolvegetItem3 = _loc1_;
         _loc1_.y = 235;
         _loc1_.haveRequireSlot = false;
         _loc1_.x = 279;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "resolvegetItem3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_BasicTxtButton30_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         _EquipFunc_BasicTxtButton30 = _loc1_;
         _loc1_.x = 37;
         _loc1_.y = 202;
         _loc1_.width = 65;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton30";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton30",_EquipFunc_BasicTxtButton30);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get changeSoulRadioGroup() : RadioButtonGroup
      {
         return this._367582873changeSoulRadioGroup;
      }
      
      private function changeLevelItemChange(param1:Event) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(Boolean(changeLevelItem1.slotData) && Boolean(changeLevelItem2.slotData) && Boolean(changeLevelItem3.slotData))
         {
            if(Boolean(changeLevelEqu.slotData && ToolKit.isBigThan(changeLevelItemRequire1.giid,0)) && Boolean(ToolKit.isBigThan(changeLevelItemRequire2.giid,0)) && ToolKit.isBigThan(changeLevelItemRequire3.giid,0))
            {
               _loc2_ = [];
               _loc3_ = 1;
               while(_loc3_ <= 3)
               {
                  if(this["changeLevelItem" + _loc3_].tempBagFlag)
                  {
                     _loc4_ = int(this["changeLevelItem" + _loc3_].slotData.idx);
                     _loc2_[_loc3_] = _core.player.tBag.tempList[_loc4_];
                     _loc2_[_loc3_].id = _core.player.tBag.tempList[_loc4_].t;
                  }
                  else
                  {
                     _loc2_[_loc3_] = _core.getTemplateData(this["changeLevelItem" + _loc3_].slotData.type,this["changeLevelItem" + _loc3_].slotData.itemId,false);
                  }
                  _loc3_++;
               }
               if(Boolean(_loc2_[1]) && ToolKit.isEqual(_loc2_[1].id,changeLevelItemRequire1.giid))
               {
                  if(Boolean(_loc2_[2]) && ToolKit.isEqual(_loc2_[2].id,changeLevelItemRequire2.giid))
                  {
                     if(Boolean(_loc2_[3]) && ToolKit.isEqual(_loc2_[3].id,changeLevelItemRequire3.giid))
                     {
                        changeLevelButton.enabled = true;
                        return;
                     }
                     changeLevelItem3.clean();
                  }
                  else
                  {
                     changeLevelItem2.clean();
                  }
               }
               else
               {
                  changeLevelItem1.clean();
               }
            }
         }
         changeLevelButton.enabled = false;
      }
      
      private function _EquipFunc_BasicGlowButton3_i() : BasicGlowButton
      {
         var _loc1_:BasicGlowButton = new BasicGlowButton();
         changeNameButton = _loc1_;
         _loc1_.styleName = "BtnStdRed";
         _loc1_.x = 159;
         _loc1_.width = 50;
         _loc1_.y = 286;
         _loc1_.setStyle("paddingBottom",1);
         _loc1_.addEventListener("click",__changeNameButton_click);
         _loc1_.id = "changeNameButton";
         BindingManager.executeBindings(this,"changeNameButton",changeNameButton);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_ComboBox1_i() : ComboBox
      {
         var _loc1_:ComboBox = null;
         _loc1_ = new ComboBox();
         restrainBox = _loc1_;
         _loc1_.width = 95;
         _loc1_.rowCount = 4;
         _loc1_.itemRenderer = _EquipFunc_ClassFactory1_c();
         _loc1_.addEventListener("change",__restrainBox_change);
         _loc1_.id = "restrainBox";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_CheckBox1_i() : CheckBox
      {
         var _loc1_:CheckBox = null;
         _loc1_ = new CheckBox();
         autoSublime = _loc1_;
         _loc1_.id = "autoSublime";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_BasicTxtButton2_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = new BasicTxtButton();
         _EquipFunc_BasicTxtButton2 = _loc1_;
         _loc1_.x = 260;
         _loc1_.y = 152;
         _loc1_.width = 76;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton2";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton2",_EquipFunc_BasicTxtButton2);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotMaterial7_i() : ItemSlotMaterial
      {
         var _loc1_:ItemSlotMaterial = new ItemSlotMaterial();
         changeLevelItem3 = _loc1_;
         _loc1_.y = 223;
         _loc1_.haveRequireSlot = true;
         _loc1_.x = 279;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changeLevelItem3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function set changeBindItem(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._653620416changeBindItem;
         if(_loc2_ !== param1)
         {
            this._653620416changeBindItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeBindItem",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get holeDigButton() : BasicGlowButton
      {
         return this._707277172holeDigButton;
      }
      
      [Bindable(event="propertyChange")]
      public function get changeNameItemRequire() : ItemSlotMaterial
      {
         return this._508389001changeNameItemRequire;
      }
      
      private function _EquipFunc_AddChild40_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild40 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_Label4_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild40",_EquipFunc_AddChild40);
         return _loc1_;
      }
      
      public function onChangeElement(param1:Object) : void
      {
         var yesAlert:String = null;
         var noAlert:String = null;
         var func:Function = null;
         var title:String = null;
         var contentMsg:String = null;
         var after:String = null;
         var before:String = null;
         var msg:String = null;
         var _alert:Alert = null;
         var tf:IUITextField = null;
         var data:Object = param1;
         if(data)
         {
            if(data.f)
            {
               if(!data.saveType)
               {
                  if(ToolKit.isEqual(changeElementItem.slotData.id,data.ii))
                  {
                     if(data.n <= 0)
                     {
                        changeElementItem.clean();
                     }
                     else
                     {
                        changeElementItem.stackNum = data.n;
                     }
                  }
               }
               yesAlert = Alert.yesLabel;
               noAlert = Alert.noLabel;
               func = function(param1:CloseEvent):void
               {
                  Alert.yesLabel = yesAlert;
                  Alert.noLabel = noAlert;
                  if(param1.detail == Alert.YES)
                  {
                     if(data.saveType)
                     {
                        _core.remote.nc.call("sureChangeElement",null,1);
                     }
                     else
                     {
                        _core.remote.nc.call("sureChangeElement",new Responder(onSureChangeElement),data.ii,data.ei);
                     }
                  }
                  else if(data.saveType)
                  {
                     _core.remote.nc.call("sureChangeElement",null,-1,-1);
                  }
                  else
                  {
                     _core.remote.nc.call("sureChangeElement",new Responder(onSureChangeElement),-1,-1);
                  }
               };
               title = Language.EQUIPTFUNCPANEL_S[125];
               contentMsg = Language.EQUIPTFUNCPANEL_S[126] + "\n";
               after = "";
               before = "";
               if(data.e == GamePredef.ELEMENT_LIGHT)
               {
                  after = Language.GAMEPREDEF_S[242];
               }
               if(data.b == GamePredef.ELEMENT_LIGHT)
               {
                  before = Language.GAMEPREDEF_S[242];
               }
               if(data.e == GamePredef.ELEMENT_DARK)
               {
                  after = Language.GAMEPREDEF_S[243];
               }
               if(data.b == GamePredef.ELEMENT_DARK)
               {
                  before = Language.GAMEPREDEF_S[243];
               }
               if(data.e == GamePredef.ELEMENT_WIND)
               {
                  after = Language.GAMEPREDEF_S[244];
               }
               if(data.b == GamePredef.ELEMENT_WIND)
               {
                  before = Language.GAMEPREDEF_S[244];
               }
               if(data.e == GamePredef.ELEMENT_THUNDER)
               {
                  after = Language.GAMEPREDEF_S[245];
               }
               if(data.b == GamePredef.ELEMENT_THUNDER)
               {
                  before = Language.GAMEPREDEF_S[245];
               }
               if(data.e == GamePredef.ELEMENT_WATER)
               {
                  after = Language.GAMEPREDEF_S[246];
               }
               if(data.b == GamePredef.ELEMENT_WATER)
               {
                  before = Language.GAMEPREDEF_S[246];
               }
               if(data.e == GamePredef.ELEMENT_FIRE)
               {
                  after = Language.GAMEPREDEF_S[247];
               }
               if(data.b == GamePredef.ELEMENT_FIRE)
               {
                  before = Language.GAMEPREDEF_S[247];
               }
               contentMsg += title + before + Language.EQUIPTFUNCPANEL_S[129] + "<font color=\'#00ff00\'>" + after + "</font>";
               msg = contentMsg.replace(/<font(.*?)>/g,"");
               msg = msg.replace(/<\/font>/g,"");
               msg = msg.replace(/<b>/g,"");
               msg = msg.replace(/<\/b>/g,"");
               Alert.yesLabel = Language.EQUIPTFUNCPANEL_S[113];
               Alert.noLabel = Language.EQUIPTFUNCPANEL_S[127];
               _alert = Alert.show(msg,"",Alert.YES | Alert.NO,null,func);
               Alert.yesLabel = yesAlert;
               Alert.noLabel = noAlert;
               tf = _alert.mx_internal::alertForm.mx_internal::textField;
               tf.htmlText = contentMsg;
               tf.filters = GamePredef.FILTER_TEXT1;
            }
            else
            {
               changeElementButton.enabled = true;
               changeElementInfo.htmlText = Language.EQUIPTFUNCPANEL_S[31];
            }
         }
         else
         {
            changeElementButton.enabled = true;
         }
      }
      
      public function __jewelSet7_doubleClick(param1:MouseEvent) : void
      {
         jewelDel(7);
      }
      
      private function _EquipFunc_AddChild140_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild140 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_Label20_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild140",_EquipFunc_AddChild140);
         return _loc1_;
      }
      
      private function onChangeName(param1:Object) : void
      {
         if(param1)
         {
            if(param1.f)
            {
               changeNameInfo.htmlText = Language.EQUIPTFUNCPANEL_S[27];
               if(ToolKit.isEqual(changeNameItem.slotData.id,param1.ii))
               {
                  if(param1.n <= 0)
                  {
                     changeNameItem.clean();
                  }
                  else
                  {
                     changeNameItem.stackNum = param1.n;
                  }
               }
            }
            else
            {
               changeNameInfo.htmlText = Language.EQUIPTFUNCPANEL_S[28];
            }
            _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC).equipBag.showItem(1,_itemList);
         }
      }
      
      private function _EquipFunc_AddChild86_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild86 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_Label9_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild86",_EquipFunc_AddChild86);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get changeBindButton() : BasicGlowButton
      {
         return this._864971167changeBindButton;
      }
      
      private function holeDigDiamondChange(param1:Event) : void
      {
         var _loc2_:Object = _core.getTemplateData(holeDigDiamond.type,holeDigDiamond.giid);
         if(Boolean(_loc2_) && ToolKit.isEqual(_loc2_.type,GamePredef.ITEM_TYPE_DIAMOND))
         {
            holeDigButton.enabled = true;
         }
         else
         {
            holeDigDiamond.clean();
            holeDigButton.enabled = false;
         }
      }
      
      private function _EquipFunc_AddChild97_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild97 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton25_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild97",_EquipFunc_AddChild97);
         return _loc1_;
      }
      
      public function __changeElementButton_click(param1:MouseEvent) : void
      {
         changeElement();
      }
      
      public function onGetHoleNum(param1:Object) : void
      {
         var _loc2_:String = "";
         if(param1.flag)
         {
            if(ToolKit.isBigOrEqual(param1.holeNum,0))
            {
               if(ToolKit.isEqual(param1.holeNum,10))
               {
                  _loc2_ = Language.EQUIPTFUNCPANEL_S[19];
                  holeDigInfo.htmlText = _loc2_.replace("{holeNum}",param1.holeNum);
               }
               else
               {
                  _loc2_ = Language.EQUIPTFUNCPANEL_S[21];
                  _loc2_ = _loc2_.replace("{holeNum}",param1.holeNum);
                  holeDigInfo.htmlText = _loc2_.replace("{materialName}",GamePredef.POSTFIX_MATERIAL_NAME[Math.floor(param1.holeNum / 2)]);
                  holeDigDiamondChange(null);
               }
            }
         }
         else
         {
            holeDigItem.clean();
            holeDigInfo.htmlText = Language.EQUIPTFUNCPANEL_S[23];
         }
      }
      
      private function _EquipFunc_AddChild51_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild51 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_RadioButtonGroup1_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild51",_EquipFunc_AddChild51);
         return _loc1_;
      }
      
      public function set jewelSetItem(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1485860654jewelSetItem;
         if(_loc2_ !== param1)
         {
            this._1485860654jewelSetItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelSetItem",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = null;
         _loc1_ = new Spacer();
         _loc1_.width = 12;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild62_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild62 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicGlowButton6_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild62",_EquipFunc_AddChild62);
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotEquFunc5_i() : ItemSlotEquFunc
      {
         var _loc1_:ItemSlotEquFunc = null;
         _loc1_ = new ItemSlotEquFunc();
         changeElementEqu = _loc1_;
         _loc1_.y = 202;
         _loc1_.movable = false;
         _loc1_.x = 52;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changeElementEqu";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_DescriptionLabel4_i() : DescriptionLabel
      {
         var _loc1_:DescriptionLabel = new DescriptionLabel();
         descriptionlabel1 = _loc1_;
         _loc1_.x = 125;
         _loc1_.y = 258;
         _loc1_.id = "descriptionlabel1";
         BindingManager.executeBindings(this,"descriptionlabel1",descriptionlabel1);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild109_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild109 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotEquFunc11_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild109",_EquipFunc_AddChild109);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild73_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild73 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotMaterial16_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild73",_EquipFunc_AddChild73);
         return _loc1_;
      }
      
      private function holeDigItemChange(param1:Event) : void
      {
         var _loc3_:Object = null;
         holeDigInfo.htmlText = "";
         var _loc2_:Object = holeDigItem.slotData;
         if(_loc2_)
         {
            _loc3_ = _core.getTemplateData(_loc2_.type,_loc2_.itemId,false);
            if(_loc3_)
            {
               _core.remote.call("getHoleNum",new Responder(onGetHoleNum),_loc2_.id);
            }
            else
            {
               holeDigItem.slotData = null;
               holeDigItem.clean();
            }
         }
      }
      
      private function _EquipFunc_NumericStepper1_i() : NumericStepper
      {
         var _loc1_:NumericStepper = null;
         _loc1_ = new NumericStepper();
         starBasic = _loc1_;
         _loc1_.y = 256;
         _loc1_.minimum = 1;
         _loc1_.maximum = 5;
         _loc1_.width = 50;
         _loc1_.x = 37;
         _loc1_.value = 5;
         _loc1_.addEventListener("change",__starBasic_change);
         _loc1_.id = "starBasic";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function starAll() : void
      {
         var equIns:Object = null;
         var starIns:Object = null;
         var func:Function = null;
         var e:CloseEvent = null;
         if(Boolean(starItem.slotData) && Boolean(starJewel.slotData))
         {
            equIns = _core.data.gameData[starItem.slotData.type][starItem.slotData.itemId];
            starIns = _core.data.gameData[starJewel.slotData.type][starJewel.slotData.itemId];
            if(Boolean(equIns) && Boolean(starIns))
            {
               func = function(param1:CloseEvent):void
               {
                  if(param1.detail == Alert.YES)
                  {
                     _core.remote.call("starAll",new Responder(onStar),starBasic.value,starItem.slotData.id,starMax.value,starJewel.slotData.id);
                     starOneButton.enabled = false;
                     starAllButton.enabled = false;
                  }
               };
               if(ToolKit.isEqual(equIns.binded,0) && ToolKit.isEqual(starIns.binded,1))
               {
                  Alert.show(Language.EQUIPTFUNCPANEL_S[102],"",Alert.YES | Alert.NO,null,func);
               }
               else
               {
                  e = new CloseEvent("");
                  e.detail = Alert.YES;
                  func(e);
               }
            }
         }
      }
      
      public function onChangePrefix(param1:Object) : void
      {
         var msg:String = null;
         var _alert:Alert = null;
         var tf:IUITextField = null;
         var slot:ISlot = null;
         var yesAlert:String = null;
         var noAlert:String = null;
         var func:Function = null;
         var title:String = null;
         var contentMsg:String = null;
         var oldequData:Object = null;
         var rate:* = undefined;
         var newequData:Object = null;
         var data:Object = param1;
         if(data)
         {
            if(!data.f && !data.saveType)
            {
               changePrefixItemChange(null);
               changePrefixInfo.htmlText = Language.EQUIPTFUNCPANEL_S[34];
               return;
            }
            if(Boolean(data.f) && Boolean(data.equIns))
            {
               if(!data.saveType)
               {
                  changePrefixItem1.clean();
                  changePrefixItem2.clean();
                  changePrefixItem3.clean();
               }
               slot = _core.view.getSlot(data.sid);
               if(slot)
               {
                  slot.giid = data.i;
               }
               yesAlert = Alert.yesLabel;
               noAlert = Alert.noLabel;
               func = function(param1:CloseEvent):void
               {
                  Alert.yesLabel = yesAlert;
                  Alert.noLabel = noAlert;
                  if(param1.detail == Alert.YES)
                  {
                     if(data.saveType)
                     {
                        _core.remote.nc.call("sureChangePrefix",null,1);
                     }
                     else
                     {
                        _core.remote.nc.call("sureChangePrefix",new Responder(onSureChangePrefix),1);
                     }
                  }
                  else if(data.saveType)
                  {
                     _core.remote.nc.call("sureChangePrefix",null,-1);
                  }
                  else
                  {
                     _core.remote.nc.call("sureChangePrefix",new Responder(onSureChangePrefix),-1);
                  }
               };
               title = Language.EQUIPTFUNCPANEL_S[136];
               contentMsg = "<b>" + Language.EQUIPTFUNCPANEL_S[136] + "</b>" + "    \n";
               if(data.saveType)
               {
                  oldequData = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][data.i];
               }
               else
               {
                  oldequData = data.oldEquIns;
               }
               rate = GamePredef.EQUIPT_STAR_NUM[oldequData.upgradeNum];
               newequData = data.equIns;
               if(newequData.color >= 0 && newequData.preNameType > 0)
               {
                  contentMsg = contentMsg + "\n" + "<font color=\'" + GamePredef.MSG_ITEM_COLOR[oldequData.color] + "\'>" + GamePredef.PRE_EQU_NAME[oldequData.preNameType] + "</font>" + Language.EQUIPTFUNCPANEL_S[129] + "<font color=\'" + GamePredef.MSG_ITEM_COLOR[newequData.color] + "\'>" + GamePredef.PRE_EQU_NAME[newequData.preNameType] + "</font>";
               }
               if(newequData.element > 0)
               {
                  contentMsg = contentMsg + "\n" + "<font color=\'" + GamePredef.ELEMENT_COLOR[oldequData.element] + "\'>[" + GamePredef.ELEMENT_NAME[oldequData.element] + "]</font>" + Language.EQUIPTFUNCPANEL_S[129] + "<font color=\'" + GamePredef.ELEMENT_COLOR[newequData.element] + "\'>[" + GamePredef.ELEMENT_NAME[newequData.element] + "]</font>";
               }
            }
            if(newequData.mainProp1 > 0)
            {
               contentMsg = contentMsg + "\n" + GamePredef.EQUIPT_PROP_NAME[oldequData.mainProp1] + ": " + "<font color=\'#00FFFF\'>" + int(oldequData.mainPropNum1 * rate) + (oldequData.mainProp1 == GamePredef.EQUIPT_PROP_HP_PER || oldequData.mainProp1 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "") + "</font>" + Language.EQUIPTFUNCPANEL_S[129] + GamePredef.EQUIPT_PROP_NAME[newequData.mainProp1] + ": " + "<font color=\'#00FFFF\'>" + int(newequData.mainPropNum1 * rate) + (newequData.mainProp1 == GamePredef.EQUIPT_PROP_HP_PER || newequData.mainProp1 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "") + "</font>";
            }
            if(newequData.mainProp2 > 0)
            {
               contentMsg = contentMsg + "\n" + GamePredef.EQUIPT_PROP_NAME[oldequData.mainProp2] + ": " + "<font color=\'#00FFFF\'>" + int(oldequData.mainPropNum2 * rate) + (oldequData.mainProp2 == GamePredef.EQUIPT_PROP_HP_PER || oldequData.mainProp2 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "") + "</font>" + Language.EQUIPTFUNCPANEL_S[129] + GamePredef.EQUIPT_PROP_NAME[newequData.mainProp2] + ": " + "<font color=\'#00FFFF\'>" + int(newequData.mainPropNum2 * rate) + (newequData.mainProp2 == GamePredef.EQUIPT_PROP_HP_PER || newequData.mainProp2 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "") + "</font>";
            }
            if(newequData.prop1 > 0)
            {
               contentMsg = contentMsg + "\n" + GamePredef.EQUIPT_PROP_NAME[oldequData.prop1] + ": " + "<font color=\'#00FFFF\'>" + oldequData.propNum1 + "</font>" + Language.EQUIPTFUNCPANEL_S[129] + GamePredef.EQUIPT_PROP_NAME[newequData.prop1] + ": " + "<font color=\'#00FFFF\'>" + newequData.propNum1 + "</font>";
            }
            if(newequData.prop2 > 0)
            {
               contentMsg = contentMsg + "\n" + GamePredef.EQUIPT_PROP_NAME[oldequData.prop2] + ": " + "<font color=\'#00FFFF\'>" + oldequData.propNum2 + "</font>" + Language.EQUIPTFUNCPANEL_S[129] + GamePredef.EQUIPT_PROP_NAME[newequData.prop2] + ": " + "<font color=\'#00FFFF\'>" + newequData.propNum2 + "</font>";
            }
            if(newequData.bindMainPropNum1 > 0 || newequData.bindMainPropNum2 > 0)
            {
               contentMsg = contentMsg + "\n" + "<font color=\'#FF11CC\'>" + Language.EQUIPTFUNCPANEL_S[138] + "</font>";
            }
            if(newequData.mainProp1 > 0)
            {
               contentMsg = contentMsg + "\n" + GamePredef.EQUIPT_PROP_NAME[oldequData.mainProp1] + ": " + "<font color=\'#00FFFF\'>" + oldequData.bindMainPropNum1 + "%" + "</font>" + Language.EQUIPTFUNCPANEL_S[129] + GamePredef.EQUIPT_PROP_NAME[newequData.mainProp1] + ": " + "<font color=\'#00FFFF\'>" + newequData.bindMainPropNum1 + "%" + "</font>";
            }
            if(newequData.mainProp2 > 0)
            {
               contentMsg = contentMsg + "\n" + GamePredef.EQUIPT_PROP_NAME[oldequData.mainProp2] + ": " + "<font color=\'#00FFFF\'>" + oldequData.bindMainPropNum2 + "%" + "</font>" + Language.EQUIPTFUNCPANEL_S[129] + GamePredef.EQUIPT_PROP_NAME[newequData.mainProp2] + ": " + "<font color=\'#00FFFF\'>" + newequData.bindMainPropNum2 + "%" + "</font>";
            }
            if(newequData.activeProp > 0)
            {
               contentMsg = contentMsg + "\n" + "<font color=\'#11CCFF\'>" + Language.BASICTOOLTIP_S[2] + "</font>\n";
               if(oldequData.activeProp > 0)
               {
                  contentMsg = contentMsg + GamePredef.EQUIPT_ACTIVE_NAME[oldequData.activeProp] + "<font color=\'#00ff00\'>" + oldequData.activePropNum + "</font>%";
               }
               else
               {
                  contentMsg += Language.EQUIPTFUNCPANEL_U[200];
               }
               contentMsg = contentMsg + Language.EQUIPTFUNCPANEL_S[129] + GamePredef.EQUIPT_ACTIVE_NAME[newequData.activeProp] + "<font color=\'#00ff00\'>" + newequData.activePropNum + "</font>%";
            }
            msg = contentMsg.replace(/<font(.*?)>/g,"");
            msg = msg.replace(/<\/font>/g,"");
            msg = msg.replace(/<b>/g,"");
            msg = msg.replace(/<\/b>/g,"");
            Alert.yesLabel = Language.EQUIPTFUNCPANEL_S[113];
            Alert.noLabel = Language.EQUIPTFUNCPANEL_S[127];
            _alert = Alert.show(msg,"",Alert.YES | Alert.NO,null,func);
            Alert.yesLabel = yesAlert;
            Alert.noLabel = noAlert;
            tf = _alert.mx_internal::alertForm.mx_internal::textField;
            tf.htmlText = contentMsg;
            tf.filters = GamePredef.FILTER_TEXT1;
         }
         else
         {
            changePrefixItemChange(null);
            changePrefixInfo.htmlText = "";
            changePrefixInfo.htmlText = Language.EQUIPTFUNCPANEL_S[34];
         }
      }
      
      public function __starAllButton_click(param1:MouseEvent) : void
      {
         starAll();
      }
      
      [Bindable(event="propertyChange")]
      public function get equFuncList() : List
      {
         return this._1409033749equFuncList;
      }
      
      public function set changeNameEqu(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._742884590changeNameEqu;
         if(_loc2_ !== param1)
         {
            this._742884590changeNameEqu = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeNameEqu",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_ItemSlotMaterial14_i() : ItemSlotMaterial
      {
         var _loc1_:ItemSlotMaterial = null;
         _loc1_ = new ItemSlotMaterial();
         resolvegetItem1 = _loc1_;
         _loc1_.y = 156;
         _loc1_.haveRequireSlot = false;
         _loc1_.x = 279;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "resolvegetItem1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function ___EquipFunc_BasicGlowButton12_click(param1:MouseEvent) : void
      {
         mouseAction(param1,GamePredef.ACTION_JEWEL_DEL);
      }
      
      private function _EquipFunc_ItemSlotMaterial5_i() : ItemSlotMaterial
      {
         var _loc1_:ItemSlotMaterial = new ItemSlotMaterial();
         changeLevelItem1 = _loc1_;
         _loc1_.y = 153;
         _loc1_.haveRequireSlot = true;
         _loc1_.x = 279;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changeLevelItem1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_BasicGlowButton1_i() : BasicGlowButton
      {
         var _loc1_:BasicGlowButton = new BasicGlowButton();
         holeDigButton = _loc1_;
         _loc1_.styleName = "BtnStdRed";
         _loc1_.x = 159;
         _loc1_.width = 50;
         _loc1_.y = 286;
         _loc1_.addEventListener("click",__holeDigButton_click);
         _loc1_.id = "holeDigButton";
         BindingManager.executeBindings(this,"holeDigButton",holeDigButton);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get changeElementItemRequire() : ItemSlotMaterial
      {
         return this._799140358changeElementItemRequire;
      }
      
      public function set sublimeRight(param1:AutoTextArea) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1690306823sublimeRight;
         if(_loc2_ !== param1)
         {
            this._1690306823sublimeRight = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sublimeRight",_loc2_,param1));
         }
      }
      
      public function set starBasic(param1:NumericStepper) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2119893244starBasic;
         if(_loc2_ !== param1)
         {
            this._2119893244starBasic = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starBasic",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_RoundedRadioButton2_i() : RoundedRadioButton
      {
         var _loc1_:RoundedRadioButton = null;
         _loc1_ = new RoundedRadioButton();
         _EquipFunc_RoundedRadioButton2 = _loc1_;
         _loc1_.x = 49;
         _loc1_.y = 262;
         _loc1_.styleName = "CanvasBorder";
         _loc1_.value = 2;
         _loc1_.groupName = "changeSoulRadioGroup";
         _loc1_.width = 90;
         _loc1_.setStyle("color",1961723);
         _loc1_.id = "_EquipFunc_RoundedRadioButton2";
         BindingManager.executeBindings(this,"_EquipFunc_RoundedRadioButton2",_EquipFunc_RoundedRadioButton2);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get changeLevelButton() : BasicGlowButton
      {
         return this._1629920762changeLevelButton;
      }
      
      private function _EquipFunc_AddChild84_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild84 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotMaterial21_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild84",_EquipFunc_AddChild84);
         return _loc1_;
      }
      
      public function set changeSoulItemRequire(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1492095729changeSoulItemRequire;
         if(_loc2_ !== param1)
         {
            this._1492095729changeSoulItemRequire = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeSoulItemRequire",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_ItemSlot3_i() : ItemSlot
      {
         var _loc1_:ItemSlot = null;
         _loc1_ = new ItemSlot();
         sublimeItem = _loc1_;
         _loc1_.x = 213;
         _loc1_.y = 117;
         _loc1_.movable = false;
         _loc1_.id = "sublimeItem";
         BindingManager.executeBindings(this,"sublimeItem",sublimeItem);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get changeLevelItem1() : ItemSlotMaterial
      {
         return this._646578730changeLevelItem1;
      }
      
      private function _EquipFunc_AddChild95_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild95 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicGlowButton9_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild95",_EquipFunc_AddChild95);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get changeLevelItem3() : ItemSlotMaterial
      {
         return this._646578732changeLevelItem3;
      }
      
      public function set changeSoulInfo(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1454466321changeSoulInfo;
         if(_loc2_ !== param1)
         {
            this._1454466321changeSoulInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeSoulInfo",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get changeLevelItem2() : ItemSlotMaterial
      {
         return this._646578731changeLevelItem2;
      }
      
      private function restrainViewClear() : void
      {
         restrainEquip && restrainEquip.clean();
         restrainItem && restrainItem.clean();
         if(!restrainHint)
         {
            return;
         }
         restrainHint.visible = true;
         restrainHint.text = Language.EQUIPTFUNCPANEL_U[263];
      }
      
      public function set starJewel(param1:ItemSlotStar) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2127404305starJewel;
         if(_loc2_ !== param1)
         {
            this._2127404305starJewel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starJewel",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_AutoTextArea2_i() : AutoTextArea
      {
         var _loc1_:AutoTextArea = null;
         _loc1_ = new AutoTextArea();
         sublimeLeft = _loc1_;
         _loc1_.setStyle("backgroundAlpha",0);
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "sublimeLeft";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotEquFunc3_i() : ItemSlotEquFunc
      {
         var _loc1_:ItemSlotEquFunc = new ItemSlotEquFunc();
         changeLevelEquFinal = _loc1_;
         _loc1_.y = 224;
         _loc1_.movable = false;
         _loc1_.x = 51;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changeLevelEquFinal";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function changeNameEquChange(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(changeNameEqu.slotData)
         {
            _loc2_ = _core.getTemplateData(changeNameEqu.slotData.type,changeNameEqu.slotData.itemId,false);
            if(_loc2_)
            {
               changeNameItemRequire.type = GamePredef.TBL_ITEM_TEMPLATE;
               changeNameItemRequire.giid = _loc2_.requireItem3;
               changeNameItemChange(null);
               _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC).equipBag.showItem(1,{
                  "type":1,
                  "idList":[changeNameItemRequire.giid]
               });
            }
         }
      }
      
      private function _EquipFunc_DescriptionLabel14_i() : DescriptionLabel
      {
         var _loc1_:DescriptionLabel = null;
         _loc1_ = new DescriptionLabel();
         _EquipFunc_DescriptionLabel14 = _loc1_;
         _loc1_.x = 251;
         _loc1_.y = 116;
         _loc1_.id = "_EquipFunc_DescriptionLabel14";
         BindingManager.executeBindings(this,"_EquipFunc_DescriptionLabel14",_EquipFunc_DescriptionLabel14);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild60_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild60 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotMaterial12_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild60",_EquipFunc_AddChild60);
         return _loc1_;
      }
      
      private function _EquipFunc_DescriptionLabel2_i() : DescriptionLabel
      {
         var _loc1_:DescriptionLabel = new DescriptionLabel();
         _EquipFunc_DescriptionLabel2 = _loc1_;
         _loc1_.x = 12;
         _loc1_.y = 116;
         _loc1_.id = "_EquipFunc_DescriptionLabel2";
         BindingManager.executeBindings(this,"_EquipFunc_DescriptionLabel2",_EquipFunc_DescriptionLabel2);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function changeName() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Boolean = false;
         if(Boolean(changeNameEqu.slotData) && Boolean(changeNameItem.slotData))
         {
            if(_core.player.enoughMoneyAuto(1,GamePredef.MONEY_EQUFUNC_NAME))
            {
               changeNameButton.enabled = false;
               _loc2_ = changeNameItem.tempBagFlag;
               if(_loc2_)
               {
                  _loc1_ = int(changeNameItem.slotData.idx);
               }
               else
               {
                  _loc1_ = int(changeNameItem.slotData.id);
               }
               _core.remote.nc.call("changeName",new Responder(onChangeName),changeNameEqu.slotData.id,_loc1_,_loc2_);
            }
            else
            {
               changeNameInfo.htmlText = Language.EQUIPTFUNCPANEL_S[26];
            }
         }
      }
      
      private function _EquipFunc_Label8_i() : Label
      {
         var _loc1_:Label = null;
         _loc1_ = new Label();
         changePrefixInfo = _loc1_;
         _loc1_.y = 291;
         _loc1_.setStyle("color",14026246);
         _loc1_.setStyle("horizontalCenter","-111");
         _loc1_.id = "changePrefixInfo";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild71_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild71 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotMaterial14_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild71",_EquipFunc_AddChild71);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild107_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild107 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton32_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild107",_EquipFunc_AddChild107);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get hintTxt() : AutoTextArea
      {
         return this._922290793hintTxt;
      }
      
      public function set jewelSetButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2112997681jewelSetButton;
         if(_loc2_ !== param1)
         {
            this._2112997681jewelSetButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelSetButton",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_ItemSlotMaterial3_i() : ItemSlotMaterial
      {
         var _loc1_:ItemSlotMaterial = new ItemSlotMaterial();
         changeLevelItemRequire2 = _loc1_;
         _loc1_.y = 188;
         _loc1_.haveRequireSlot = false;
         _loc1_.x = 167;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changeLevelItemRequire2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function get autoMatchSlots() : Object
      {
         _autoMatchSlots = new Object();
         var _loc1_:Array = [];
         var _loc2_:Array = [];
         _autoMatchSlots.hasReq = false;
         switch(equFuncList.selectedIndex)
         {
            case 0:
               _loc1_.push(holeDigItem);
               _loc1_.push(holeDigDiamond);
               _loc2_.push({"itemType":GamePredef.TBL_EQUIPT_INSTANCE});
               _loc2_.push({
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "type":GamePredef.ITEM_TYPE_DIAMOND
               });
               break;
            case 1:
               _loc1_.push(changeLevelEqu);
               _loc1_.push(changeLevelItem1);
               _loc1_.push(changeLevelItem2);
               _loc1_.push(changeLevelItem3);
               _loc2_.push({"itemType":GamePredef.TBL_EQUIPT_INSTANCE});
               _loc2_.push({
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "id":changeLevelItemRequire1.giid
               });
               _loc2_.push({
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "id":changeLevelItemRequire2.giid
               });
               _loc2_.push({
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "id":changeLevelItemRequire3.giid
               });
               break;
            case 2:
               _loc1_.push(changeNameEqu);
               _loc1_.push(changeNameItem);
               _loc2_.push({"itemType":GamePredef.TBL_EQUIPT_INSTANCE});
               _loc2_.push({"itemType":GamePredef.TBL_ITEM_INSTANCE});
               break;
            case 3:
               _loc1_.push(changeElementEqu);
               _loc1_.push(changeElementItem);
               _loc2_.push({"itemType":GamePredef.TBL_EQUIPT_INSTANCE});
               _loc2_.push({"itemType":GamePredef.TBL_ITEM_INSTANCE});
               break;
            case 4:
               _loc1_.push(changeSoulEqu);
               _loc1_.push(changeSoulItem);
               _loc2_.push({"itemType":GamePredef.TBL_EQUIPT_INSTANCE});
               _loc2_.push({"itemType":GamePredef.TBL_ITEM_INSTANCE});
               break;
            case 5:
               _loc1_.push(changeBindEqu);
               _loc1_.push(changeBindItem);
               _loc2_.push({"itemType":GamePredef.TBL_EQUIPT_INSTANCE});
               _loc2_.push({"itemType":GamePredef.TBL_ITEM_INSTANCE});
               break;
            case 6:
               _loc1_.push(resolveEqu);
               _loc2_.push({"itemType":GamePredef.TBL_EQUIPT_INSTANCE});
               break;
            case 7:
               _loc1_.push(changePrefixEqu);
               _loc1_.push(changePrefixItem1);
               _loc1_.push(changePrefixItem2);
               _loc1_.push(changePrefixItem3);
               _loc2_.push({"itemType":GamePredef.TBL_EQUIPT_INSTANCE});
               _loc2_.push({
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "id":changePrefixItemRequire1.giid
               });
               _loc2_.push({
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "id":changePrefixItemRequire2.giid
               });
               _loc2_.push({
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "id":changePrefixItemRequire3.giid
               });
               break;
            case 8:
               _loc1_.push(starItem);
               _loc1_.push(starJewel);
               _loc2_.push({"itemType":GamePredef.TBL_EQUIPT_INSTANCE});
               _loc2_.push({
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "type":GamePredef.ITEM_TYPE_STAR
               });
               break;
            case 9:
               _loc1_.push(jewelSetItem);
               _loc2_.push({"itemType":GamePredef.TBL_EQUIPT_INSTANCE});
               break;
            case 10:
               _loc1_.push(sublimeEquip);
               _loc1_.push(sublimeItem);
               _loc2_.push({"itemType":GamePredef.TBL_EQUIPT_INSTANCE});
               _loc2_.push({
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "type":GamePredef.ITEM_TYPE_SUBLIME
               });
               break;
            case 11:
               _loc1_.push(restrainEquip);
               _loc1_.push(restrainItem);
               _loc2_.push({"itemType":GamePredef.TBL_EQUIPT_INSTANCE});
               _loc2_.push({
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "type":GamePredef.ITEM_TYPE_RESTRAIN
               });
         }
         _autoMatchSlots.reqSlots = _loc2_;
         _autoMatchSlots.inputSlots = _loc1_;
         return _autoMatchSlots;
      }
      
      private function changePrefixViewClear() : void
      {
         if(changePrefixEqu)
         {
            changePrefixInfo.htmlText = "";
            changePrefixButton.enabled = false;
            changePrefixEqu.clean();
            changePrefixMoney.text = "";
            changePrefixItem1.clean();
            changePrefixItem2.clean();
            changePrefixItem3.clean();
            changePrefixItemRequire1.clean();
            changePrefixItemRequire2.clean();
            changePrefixItemRequire3.clean();
         }
      }
      
      private function _EquipFunc_AddChild82_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild82 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotMaterial19_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild82",_EquipFunc_AddChild82);
         return _loc1_;
      }
      
      public function __jewelSet1_doubleClick(param1:MouseEvent) : void
      {
         jewelDel(1);
      }
      
      private function _EquipFunc_AddChild118_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild118 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotJewel9_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild118",_EquipFunc_AddChild118);
         return _loc1_;
      }
      
      private function changeElementEquChange(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(changeElementEqu.slotData)
         {
            _loc2_ = _core.getTemplateData(changeElementEqu.slotData.type,changeElementEqu.slotData.itemId,false);
            if(_loc2_)
            {
               changeElementItemRequire.type = GamePredef.TBL_ITEM_TEMPLATE;
               changeElementItemRequire.giid = _loc2_.requireItem1;
               changeElementItemChange(null);
               _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC).equipBag.showItem(1,{
                  "type":1,
                  "idList":[changeElementItemRequire.giid]
               });
            }
         }
      }
      
      private function _EquipFunc_ItemSlotMaterial12_i() : ItemSlotMaterial
      {
         var _loc1_:ItemSlotMaterial = null;
         _loc1_ = new ItemSlotMaterial();
         changeBindItemRequire = _loc1_;
         _loc1_.y = 202;
         _loc1_.haveRequireSlot = false;
         _loc1_.x = 167;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changeBindItemRequire";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_BasicTxtButton19_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         _EquipFunc_BasicTxtButton19 = _loc1_;
         _loc1_.x = 266;
         _loc1_.y = 173;
         _loc1_.width = 76;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton19";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton19",_EquipFunc_BasicTxtButton19);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_Label19_i() : Label
      {
         var _loc1_:Label = null;
         _loc1_ = new Label();
         _EquipFunc_Label19 = _loc1_;
         _loc1_.setStyle("color",16777215);
         _loc1_.id = "_EquipFunc_Label19";
         BindingManager.executeBindings(this,"_EquipFunc_Label19",_EquipFunc_Label19);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild29_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild29 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicGlowButton3_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild29",_EquipFunc_AddChild29);
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlot1_i() : ItemSlot
      {
         var _loc1_:ItemSlot = null;
         _loc1_ = new ItemSlot();
         changeSoulItemRequire = _loc1_;
         _loc1_.y = 202;
         _loc1_.x = 167;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changeSoulItemRequire";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function onSublimeEquip(param1:Object = null) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:Object = sublimeEquip.slotData;
         if(!_loc2_ || _loc2_.itemId != param1.itemId)
         {
            sublimeViewClear();
            return;
         }
         var _loc3_:Object = _dm.getGameData(_loc2_.type,_loc2_.itemId);
         if(_loc3_)
         {
            _loc3_.flag = param1.flagStr;
            _dm.updateData(_loc2_.type,_loc3_);
            sublimeEquipChange();
         }
         param1.hasOwnProperty("num") && (ToolKit.isBigThan(param1.num,0) && Boolean(sublimeItem) ? (sublimeItem.stackNum = param1.num) : sublimeItem.clean());
      }
      
      private function _EquipFunc_AddChild18_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild18 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_DescriptionLabel2_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild18",_EquipFunc_AddChild18);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild129_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild129 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_Canvas3_c);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild129",_EquipFunc_AddChild129);
         return _loc1_;
      }
      
      public function ___EquipFunc_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function _EquipFunc_AddChild93_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild93 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotEquFunc10_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild93",_EquipFunc_AddChild93);
         return _loc1_;
      }
      
      private function changeSoulItemChange(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(changeSoulItem.slotData)
         {
            if(Boolean(changeSoulEqu.slotData) && ToolKit.isBigThan(changeSoulItemRequire.giid,0))
            {
               _loc2_ = _core.getTemplateData(changeSoulItem.slotData.type,changeSoulItem.slotData.itemId,false);
               if(Boolean(_loc2_) && ToolKit.isEqual(_loc2_.id,changeSoulItemRequire.giid))
               {
                  changeSoulButton.enabled = true;
                  return;
               }
               changeSoulItem.clean();
            }
         }
         changeSoulButton.enabled = false;
      }
      
      public function __changeBindButton_click(param1:MouseEvent) : void
      {
         changeBind();
      }
      
      private function _EquipFunc_ItemSlotEquFunc1_i() : ItemSlotEquFunc
      {
         var _loc1_:ItemSlotEquFunc = new ItemSlotEquFunc();
         holeDigItem = _loc1_;
         _loc1_.y = 190;
         _loc1_.movable = false;
         _loc1_.x = 50;
         _loc1_.id = "holeDigItem";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function set autoSublime(param1:CheckBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1036064102autoSublime;
         if(_loc2_ !== param1)
         {
            this._1036064102autoSublime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"autoSublime",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_DescriptionLabel12_i() : DescriptionLabel
      {
         var _loc1_:DescriptionLabel = null;
         _loc1_ = new DescriptionLabel();
         _EquipFunc_DescriptionLabel12 = _loc1_;
         _loc1_.x = 10;
         _loc1_.y = 144;
         _loc1_.id = "_EquipFunc_DescriptionLabel12";
         BindingManager.executeBindings(this,"_EquipFunc_DescriptionLabel12",_EquipFunc_DescriptionLabel12);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get sublimeItem() : ItemSlot
      {
         return this._1885394232sublimeItem;
      }
      
      private function _EquipFunc_BasicGlowButton14_i() : BasicGlowButton
      {
         var _loc1_:BasicGlowButton = null;
         _loc1_ = new BasicGlowButton();
         _EquipFunc_BasicGlowButton14 = _loc1_;
         _loc1_.styleName = "BtnStdRed";
         _loc1_.height = 23;
         _loc1_.y = 285;
         _loc1_.width = 50;
         _loc1_.setStyle("horizontalCenter","0");
         _loc1_.addEventListener("click",___EquipFunc_BasicGlowButton14_click);
         _loc1_.id = "_EquipFunc_BasicGlowButton14";
         BindingManager.executeBindings(this,"_EquipFunc_BasicGlowButton14",_EquipFunc_BasicGlowButton14);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_Label6_i() : Label
      {
         var _loc1_:Label = null;
         _loc1_ = new Label();
         changeBindSucc = _loc1_;
         _loc1_.y = 255;
         _loc1_.width = 111.5;
         _loc1_.x = 45;
         _loc1_.height = 21;
         _loc1_.setStyle("color",14026246);
         _loc1_.setStyle("textAlign","right");
         _loc1_.id = "changeBindSucc";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild105_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild105 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton30_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild105",_EquipFunc_AddChild105);
         return _loc1_;
      }
      
      public function set changeSoulRadioGroup(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._367582873changeSoulRadioGroup;
         if(_loc2_ !== param1)
         {
            this._367582873changeSoulRadioGroup = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeSoulRadioGroup",_loc2_,param1));
         }
      }
      
      public function set holeDigButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._707277172holeDigButton;
         if(_loc2_ !== param1)
         {
            this._707277172holeDigButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"holeDigButton",_loc2_,param1));
         }
      }
      
      public function set changeNameButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._773763731changeNameButton;
         if(_loc2_ !== param1)
         {
            this._773763731changeNameButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeNameButton",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_ItemSlotMaterial10_i() : ItemSlotMaterial
      {
         var _loc1_:ItemSlotMaterial = null;
         _loc1_ = new ItemSlotMaterial();
         changeElementItemRequire = _loc1_;
         _loc1_.y = 202;
         _loc1_.haveRequireSlot = false;
         _loc1_.x = 167;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changeElementItemRequire";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get changeSoulButton() : BasicGlowButton
      {
         return this._1684249301changeSoulButton;
      }
      
      private function _EquipFunc_BasicTxtButton17_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         _EquipFunc_BasicTxtButton17 = _loc1_;
         _loc1_.x = 29;
         _loc1_.y = 173;
         _loc1_.width = 76;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton17";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton17",_EquipFunc_BasicTxtButton17);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function changeElementItemChange(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(changeElementItem.slotData)
         {
            if(Boolean(changeElementEqu.slotData) && ToolKit.isBigThan(changeElementItemRequire.giid,0))
            {
               if(changeElementItem.tempBagFlag)
               {
                  _loc2_ = GameData.d[changeElementItem.slotData.ti][changeElementItem.slotData.ii];
               }
               else
               {
                  _loc2_ = _core.getTemplateData(changeElementItem.slotData.type,changeElementItem.slotData.itemId,false);
               }
               if(Boolean(_loc2_) && ToolKit.isEqual(_loc2_.id,changeElementItemRequire.giid))
               {
                  changeElementButton.enabled = true;
                  return;
               }
               changeElementItem.clean();
            }
         }
         changeElementButton.enabled = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelSet1() : ItemSlotJewel
      {
         return this._1448813838jewelSet1;
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelSet2() : ItemSlotJewel
      {
         return this._1448813837jewelSet2;
      }
      
      private function _EquipFunc_AddChild16_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild16 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotMaterial7_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild16",_EquipFunc_AddChild16);
         return _loc1_;
      }
      
      public function set changeNameItemRequire(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._508389001changeNameItemRequire;
         if(_loc2_ !== param1)
         {
            this._508389001changeNameItemRequire = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeNameItemRequire",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelSet5() : ItemSlotJewel
      {
         return this._1448813834jewelSet5;
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelSet6() : ItemSlotJewel
      {
         return this._1448813833jewelSet6;
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelSet7() : ItemSlotJewel
      {
         return this._1448813832jewelSet7;
      }
      
      private function _EquipFunc_ItemSlotMaterial1_i() : ItemSlotMaterial
      {
         var _loc1_:ItemSlotMaterial = new ItemSlotMaterial();
         holeDigDiamond = _loc1_;
         _loc1_.y = 190;
         _loc1_.haveRequireSlot = false;
         _loc1_.x = 279;
         _loc1_.id = "holeDigDiamond";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelSet9() : ItemSlotJewel
      {
         return this._1448813830jewelSet9;
      }
      
      private function _EquipFunc_AddChild116_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild116 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotJewel7_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild116",_EquipFunc_AddChild116);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelSet4() : ItemSlotJewel
      {
         return this._1448813835jewelSet4;
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelSet8() : ItemSlotJewel
      {
         return this._1448813831jewelSet8;
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelSet3() : ItemSlotJewel
      {
         return this._1448813836jewelSet3;
      }
      
      private function changeLevelEquChange(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         if(changeLevelEqu.slotData)
         {
            _loc2_ = _core.getTemplateData(changeLevelEqu.slotData.type,changeLevelEqu.slotData.itemId,false);
            if(_loc2_)
            {
               _loc3_ = _core.data.getData(GamePredef.TBL_EQUIPT_TEMPLATE,_loc2_.nextEquTid);
               resetItemList();
               if(_loc3_)
               {
                  _loc4_ = 1;
                  while(_loc4_ <= 3)
                  {
                     this["changeLevelItemRequire" + _loc4_].type = GamePredef.TBL_ITEM_TEMPLATE;
                     this["changeLevelItemRequire" + _loc4_].giid = _loc3_["requireItem" + _loc4_];
                     this["changeLevelItemRequire" + _loc4_].stackNum = _loc3_["requireNum" + _loc4_];
                     this["changeLevelItem" + _loc4_].requireSlot = {
                        "type":GamePredef.TBL_ITEM_TEMPLATE,
                        "giid":_loc3_["requireItem" + _loc4_],
                        "stackNum":_loc3_["requireNum" + _loc4_]
                     };
                     _itemList.idList.push(this["changeLevelItemRequire" + _loc4_].giid);
                     _loc4_++;
                  }
                  _itemList.type = 1;
                  changeLevelEquFinal.type = GamePredef.TBL_EQUIPT_TEMPLATE;
                  changeLevelEquFinal.giid = _loc2_.nextEquTid;
                  changeLevelMoney.text = (_loc3_.reqLevel * _loc3_.reqLevel * GamePredef.MONEY_EQUFUNC_MAKE).toString();
                  lvtip.text = "Lv sau:" + _loc3_.reqLevel;
                  changeLevelItemChange(null);
                  if(param1)
                  {
                     _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC).equipBag.showItem(1,_itemList);
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get starOneButton() : BasicGlowButton
      {
         return this._1900875002starOneButton;
      }
      
      private function _EquipFunc_AddChild80_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild80 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotMaterial17_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild80",_EquipFunc_AddChild80);
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotMaterial21_i() : ItemSlotMaterial
      {
         var _loc1_:ItemSlotMaterial = null;
         _loc1_ = new ItemSlotMaterial();
         changePrefixItem2 = _loc1_;
         _loc1_.y = 190;
         _loc1_.haveRequireSlot = true;
         _loc1_.x = 279;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changePrefixItem2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_HBox4_i() : HBox
      {
         var _loc1_:HBox = null;
         _loc1_ = new HBox();
         _EquipFunc_HBox4 = _loc1_;
         _loc1_.y = 260;
         _loc1_.setStyle("horizontalCenter","0");
         _loc1_.setStyle("horizontalGap",2);
         _loc1_.id = "_EquipFunc_HBox4";
         BindingManager.executeBindings(this,"_EquipFunc_HBox4",_EquipFunc_HBox4);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         _loc1_.addChild(_EquipFunc_CheckBox2_i());
         _loc1_.addChild(_EquipFunc_Label22_i());
         return _loc1_;
      }
      
      private function _EquipFunc_BasicTxtButton28_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         _EquipFunc_BasicTxtButton28 = _loc1_;
         _loc1_.x = 37;
         _loc1_.y = 132;
         _loc1_.width = 76;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton28";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton28",_EquipFunc_BasicTxtButton28);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild27_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild27 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotMaterial8_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild27",_EquipFunc_AddChild27);
         return _loc1_;
      }
      
      private function onSureChangePrefix(param1:Object) : void
      {
         if(param1)
         {
            if(param1.f)
            {
               changePrefixInfo.htmlText = Language.EQUIPTFUNCPANEL_S[74];
               if(ToolKit.isEqual(changePrefixEqu.slotData.id,param1.e))
               {
                  changePrefixEqu.giid = param1.i;
               }
               _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][param1.i] = param1.n;
               changePrefixEquChange(null);
            }
            else
            {
               changePrefixItemChange(null);
            }
         }
      }
      
      private function _EquipFunc_AddChild9_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild9 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_Label1_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild9",_EquipFunc_AddChild9);
         return _loc1_;
      }
      
      private function _EquipFunc_Label17_i() : Label
      {
         var _loc1_:Label = null;
         _loc1_ = new Label();
         _EquipFunc_Label17 = _loc1_;
         _loc1_.x = 204;
         _loc1_.y = 115;
         _loc1_.setStyle("color",16777215);
         _loc1_.id = "_EquipFunc_Label17";
         BindingManager.executeBindings(this,"_EquipFunc_Label17",_EquipFunc_Label17);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild127_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild127 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotEquFunc12_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild127",_EquipFunc_AddChild127);
         return _loc1_;
      }
      
      public function __holeDigButton_click(param1:MouseEvent) : void
      {
         holeDig();
      }
      
      private function _EquipFunc_AddChild91_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild91 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton24_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild91",_EquipFunc_AddChild91);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild38_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild38 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotMaterial11_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild38",_EquipFunc_AddChild38);
         return _loc1_;
      }
      
      private function _EquipFunc_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = null;
         _loc1_ = new ClassFactory();
         _loc1_.generator = HtmlComboItemRenderer;
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild138_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild138 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_Label18_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild138",_EquipFunc_AddChild138);
         return _loc1_;
      }
      
      public function __jewelSet6_doubleClick(param1:MouseEvent) : void
      {
         jewelDel(6);
      }
      
      public function set changeBindButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._864971167changeBindButton;
         if(_loc2_ !== param1)
         {
            this._864971167changeBindButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeBindButton",_loc2_,param1));
         }
      }
      
      public function tabBtnBUpdate() : void
      {
         var _loc2_:int = 0;
         var _loc1_:int = selectedIndx ? int(selectedIndx) : 0;
         resetItemList();
         switch(_loc1_)
         {
            case 0:
               _itemList.val = GamePredef.ITEM_TYPE_DIAMOND;
               _itemList.type = 2;
               holeDigItem && holeDigItem.addEventListener(GameEvent.SLOT_GIID_CHANGE,holeDigItemChange);
               holeDigDiamond && holeDigDiamond.addEventListener(GameEvent.SLOT_GIID_CHANGE,holeDigDiamondChange);
               break;
            case 8:
               _itemList.val = GamePredef.ITEM_TYPE_STAR;
               _itemList.type = 2;
               starItem && starItem.addEventListener(GameEvent.SLOT_GIID_CHANGE,starItemChange);
               starJewel && starJewel.addEventListener(GameEvent.SLOT_NUM_CHANGE,setStarInfo);
               break;
            case 9:
               _itemList.val = GamePredef.ITEM_TYPE_JEWEL;
               _itemList.type = 2;
               jewelSetItem && jewelSetItem.addEventListener(GameEvent.SLOT_GIID_CHANGE,jewelSetChange);
               break;
            case 1:
               _loc2_ = 1;
               while(_loc2_ <= 3)
               {
                  if(Boolean(this["changeLevelItemRequire" + _loc2_]) && this["changeLevelItemRequire" + _loc2_].giid > 0)
                  {
                     _itemList.idList.push(this["changeLevelItemRequire" + _loc2_].giid);
                  }
                  _loc2_++;
               }
               if(_itemList.idList.length > 0)
               {
                  _itemList.type = 1;
               }
               else
               {
                  _itemList.type = -1;
               }
               changeLevelEqu && changeLevelEqu.addEventListener(GameEvent.SLOT_GIID_CHANGE,changeLevelEquChange);
               changeLevelItem1 && changeLevelItem1.addEventListener(GameEvent.SLOT_GIID_CHANGE,changeLevelItemChange);
               changeLevelItem2 && changeLevelItem2.addEventListener(GameEvent.SLOT_GIID_CHANGE,changeLevelItemChange);
               changeLevelItem3 && changeLevelItem3.addEventListener(GameEvent.SLOT_GIID_CHANGE,changeLevelItemChange);
               break;
            case 2:
               if(Boolean(changeNameItemRequire) && changeNameItemRequire.giid > 0)
               {
                  _itemList.idList.push(changeNameItemRequire.giid);
                  _itemList.type = 1;
               }
               changeNameEqu && changeNameEqu.addEventListener(GameEvent.SLOT_GIID_CHANGE,changeNameEquChange);
               changeNameItem && changeNameItem.addEventListener(GameEvent.SLOT_GIID_CHANGE,changeNameItemChange);
               break;
            case 3:
               if(Boolean(changeElementItemRequire) && changeElementItemRequire.giid > 0)
               {
                  _itemList.idList.push(changeElementItemRequire.giid);
                  _itemList.type = 1;
               }
               changeElementEqu && changeElementEqu.addEventListener(GameEvent.SLOT_GIID_CHANGE,changeElementEquChange);
               changeElementItem && changeElementItem.addEventListener(GameEvent.SLOT_GIID_CHANGE,changeElementItemChange);
               break;
            case 4:
               if(Boolean(changeSoulItemRequire) && changeSoulItemRequire.giid > 0)
               {
                  _itemList.idList.push(changeSoulItemRequire.giid);
                  _itemList.type = 1;
               }
               changeSoulEqu && changeSoulEqu.addEventListener(GameEvent.SLOT_GIID_CHANGE,changeSoulEquChange);
               changeSoulItem && changeSoulItem.addEventListener(GameEvent.SLOT_GIID_CHANGE,changeSoulItemChange);
               break;
            case 5:
               if(Boolean(changeBindItemRequire) && changeBindItemRequire.giid > 0)
               {
                  _itemList.idList.push(changeBindItemRequire.giid);
                  _itemList.type = 1;
               }
               changeBindEqu && changeBindEqu.addEventListener(GameEvent.SLOT_GIID_CHANGE,changeBindEquChange);
               changeBindItem && changeBindItem.addEventListener(GameEvent.SLOT_GIID_CHANGE,changeBindItemChange);
               break;
            case 7:
               _loc2_ = 1;
               while(_loc2_ <= 3)
               {
                  if(Boolean(this["changePrefixItemRequire" + _loc2_]) && this["changePrefixItemRequire" + _loc2_].giid > 0)
                  {
                     _itemList.idList.push(this["changePrefixItemRequire" + _loc2_].giid);
                  }
                  _loc2_++;
               }
               if(_itemList.idList.length > 0)
               {
                  _itemList.type = 1;
               }
               else
               {
                  _itemList.type = -1;
               }
               changePrefixEqu && changePrefixEqu.addEventListener(GameEvent.SLOT_GIID_CHANGE,changePrefixEquChange);
               changePrefixItem1 && changePrefixItem1.addEventListener(GameEvent.SLOT_GIID_CHANGE,changePrefixItemChange);
               changePrefixItem2 && changePrefixItem2.addEventListener(GameEvent.SLOT_GIID_CHANGE,changePrefixItemChange);
               changePrefixItem3 && changePrefixItem3.addEventListener(GameEvent.SLOT_GIID_CHANGE,changePrefixItemChange);
               break;
            case 6:
               _itemList.type = 1;
               _itemList.idList = [-1];
               resolveEqu && resolveEqu.addEventListener(GameEvent.SLOT_GIID_CHANGE,changeResolveEquChange);
               break;
            case 10:
               _itemList.type = 1;
               _itemList.idList = [GamePredef.SUBLIME_ITEMID];
               sublimeEquip && sublimeEquip.addEventListener(GameEvent.SLOT_GIID_CHANGE,sublimeEquipChange);
               break;
            case 11:
               _itemList.type = 1;
               _itemList.idList = [GamePredef.RESTRAIN_ITEMID];
               restrainEquip && restrainEquip.addEventListener(GameEvent.SLOT_GIID_CHANGE,restrainEquipChange);
         }
         _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC).equipBag.showItem(1,_itemList);
      }
      
      private function _EquipFunc_bindingsSetup() : Array
      {
         var result:Array = null;
         var binding:Binding = null;
         result = [];
         binding = new Binding(this,function():Object
         {
            return ResManager.TOTEM_CHARACTER;
         },function(param1:Object):void
         {
            _EquipFunc_Image1.source = param1;
         },"_EquipFunc_Image1.source");
         result[0] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild1.relativeTo = param1;
         },"_EquipFunc_AddChild1.relativeTo");
         result[1] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild2.relativeTo = param1;
         },"_EquipFunc_AddChild2.relativeTo");
         result[2] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild3.relativeTo = param1;
         },"_EquipFunc_AddChild3.relativeTo");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            holeDigButton.label = param1;
         },"holeDigButton.label");
         result[4] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild4.relativeTo = param1;
         },"_EquipFunc_AddChild4.relativeTo");
         result[5] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild5.relativeTo = param1;
         },"_EquipFunc_AddChild5.relativeTo");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[44];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton1.label = param1;
         },"_EquipFunc_BasicTxtButton1.label");
         result[7] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild6.relativeTo = param1;
         },"_EquipFunc_AddChild6.relativeTo");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[45];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton2.label = param1;
         },"_EquipFunc_BasicTxtButton2.label");
         result[9] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild7.relativeTo = param1;
         },"_EquipFunc_AddChild7.relativeTo");
         result[10] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild8.relativeTo = param1;
         },"_EquipFunc_AddChild8.relativeTo");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            changeLevelButton.label = param1;
         },"changeLevelButton.label");
         result[12] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild9.relativeTo = param1;
         },"_EquipFunc_AddChild9.relativeTo");
         result[13] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild10.relativeTo = param1;
         },"_EquipFunc_AddChild10.relativeTo");
         result[14] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild11.relativeTo = param1;
         },"_EquipFunc_AddChild11.relativeTo");
         result[15] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild12.relativeTo = param1;
         },"_EquipFunc_AddChild12.relativeTo");
         result[16] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild13.relativeTo = param1;
         },"_EquipFunc_AddChild13.relativeTo");
         result[17] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild14.relativeTo = param1;
         },"_EquipFunc_AddChild14.relativeTo");
         result[18] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild15.relativeTo = param1;
         },"_EquipFunc_AddChild15.relativeTo");
         result[19] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild16.relativeTo = param1;
         },"_EquipFunc_AddChild16.relativeTo");
         result[20] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild17.relativeTo = param1;
         },"_EquipFunc_AddChild17.relativeTo");
         result[21] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild18.relativeTo = param1;
         },"_EquipFunc_AddChild18.relativeTo");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_DescriptionLabel2.text = param1;
         },"_EquipFunc_DescriptionLabel2.text");
         result[23] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild19.relativeTo = param1;
         },"_EquipFunc_AddChild19.relativeTo");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[47];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_DescriptionLabel3.text = param1;
         },"_EquipFunc_DescriptionLabel3.text");
         result[25] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild20.relativeTo = param1;
         },"_EquipFunc_AddChild20.relativeTo");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[48];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton3.label = param1;
         },"_EquipFunc_BasicTxtButton3.label");
         result[27] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild21.relativeTo = param1;
         },"_EquipFunc_AddChild21.relativeTo");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[49];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton4.label = param1;
         },"_EquipFunc_BasicTxtButton4.label");
         result[29] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild22.relativeTo = param1;
         },"_EquipFunc_AddChild22.relativeTo");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[50];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton5.label = param1;
         },"_EquipFunc_BasicTxtButton5.label");
         result[31] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild23.relativeTo = param1;
         },"_EquipFunc_AddChild23.relativeTo");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[51];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton6.label = param1;
         },"_EquipFunc_BasicTxtButton6.label");
         result[33] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild24.relativeTo = param1;
         },"_EquipFunc_AddChild24.relativeTo");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            descriptionlabel1.text = param1;
         },"descriptionlabel1.text");
         result[35] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return descriptionlabel1;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild25.relativeTo = param1;
         },"_EquipFunc_AddChild25.relativeTo");
         result[36] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild26.relativeTo = param1;
         },"_EquipFunc_AddChild26.relativeTo");
         result[37] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild27.relativeTo = param1;
         },"_EquipFunc_AddChild27.relativeTo");
         result[38] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild28.relativeTo = param1;
         },"_EquipFunc_AddChild28.relativeTo");
         result[39] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild29.relativeTo = param1;
         },"_EquipFunc_AddChild29.relativeTo");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            changeNameButton.label = param1;
         },"changeNameButton.label");
         result[41] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild30.relativeTo = param1;
         },"_EquipFunc_AddChild30.relativeTo");
         result[42] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild31.relativeTo = param1;
         },"_EquipFunc_AddChild31.relativeTo");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_DescriptionLabel5.text = param1;
         },"_EquipFunc_DescriptionLabel5.text");
         result[44] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild32.relativeTo = param1;
         },"_EquipFunc_AddChild32.relativeTo");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[47];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_DescriptionLabel6.text = param1;
         },"_EquipFunc_DescriptionLabel6.text");
         result[46] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild33.relativeTo = param1;
         },"_EquipFunc_AddChild33.relativeTo");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[53];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton8.label = param1;
         },"_EquipFunc_BasicTxtButton8.label");
         result[48] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild34.relativeTo = param1;
         },"_EquipFunc_AddChild34.relativeTo");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[49];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton9.label = param1;
         },"_EquipFunc_BasicTxtButton9.label");
         result[50] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild35.relativeTo = param1;
         },"_EquipFunc_AddChild35.relativeTo");
         result[51] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[50];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton10.label = param1;
         },"_EquipFunc_BasicTxtButton10.label");
         result[52] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild36.relativeTo = param1;
         },"_EquipFunc_AddChild36.relativeTo");
         result[53] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild37.relativeTo = param1;
         },"_EquipFunc_AddChild37.relativeTo");
         result[54] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild38.relativeTo = param1;
         },"_EquipFunc_AddChild38.relativeTo");
         result[55] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild39.relativeTo = param1;
         },"_EquipFunc_AddChild39.relativeTo");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            changeElementButton.label = param1;
         },"changeElementButton.label");
         result[57] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild40.relativeTo = param1;
         },"_EquipFunc_AddChild40.relativeTo");
         result[58] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild41.relativeTo = param1;
         },"_EquipFunc_AddChild41.relativeTo");
         result[59] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_S[59];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_DescriptionLabel7.text = param1;
         },"_EquipFunc_DescriptionLabel7.text");
         result[60] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild42.relativeTo = param1;
         },"_EquipFunc_AddChild42.relativeTo");
         result[61] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_S[60];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_DescriptionLabel8.text = param1;
         },"_EquipFunc_DescriptionLabel8.text");
         result[62] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild43.relativeTo = param1;
         },"_EquipFunc_AddChild43.relativeTo");
         result[63] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[53];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton11.label = param1;
         },"_EquipFunc_BasicTxtButton11.label");
         result[64] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild44.relativeTo = param1;
         },"_EquipFunc_AddChild44.relativeTo");
         result[65] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[49];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton12.label = param1;
         },"_EquipFunc_BasicTxtButton12.label");
         result[66] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild45.relativeTo = param1;
         },"_EquipFunc_AddChild45.relativeTo");
         result[67] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[50];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton13.label = param1;
         },"_EquipFunc_BasicTxtButton13.label");
         result[68] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild46.relativeTo = param1;
         },"_EquipFunc_AddChild46.relativeTo");
         result[69] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild47.relativeTo = param1;
         },"_EquipFunc_AddChild47.relativeTo");
         result[70] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild48.relativeTo = param1;
         },"_EquipFunc_AddChild48.relativeTo");
         result[71] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            changeSoulItem.slotType = param1;
         },"changeSoulItem.slotType");
         result[72] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild49.relativeTo = param1;
         },"_EquipFunc_AddChild49.relativeTo");
         result[73] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            changeSoulButton.label = param1;
         },"changeSoulButton.label");
         result[74] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild50.relativeTo = param1;
         },"_EquipFunc_AddChild50.relativeTo");
         result[75] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild51.relativeTo = param1;
         },"_EquipFunc_AddChild51.relativeTo");
         result[76] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild52.relativeTo = param1;
         },"_EquipFunc_AddChild52.relativeTo");
         result[77] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_S[53];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_RoundedRadioButton1.label = param1;
         },"_EquipFunc_RoundedRadioButton1.label");
         result[78] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild53.relativeTo = param1;
         },"_EquipFunc_AddChild53.relativeTo");
         result[79] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_S[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_RoundedRadioButton2.label = param1;
         },"_EquipFunc_RoundedRadioButton2.label");
         result[80] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild54.relativeTo = param1;
         },"_EquipFunc_AddChild54.relativeTo");
         result[81] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_S[61];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_DescriptionLabel9.text = param1;
         },"_EquipFunc_DescriptionLabel9.text");
         result[82] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild55.relativeTo = param1;
         },"_EquipFunc_AddChild55.relativeTo");
         result[83] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_S[62];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_DescriptionLabel10.text = param1;
         },"_EquipFunc_DescriptionLabel10.text");
         result[84] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild56.relativeTo = param1;
         },"_EquipFunc_AddChild56.relativeTo");
         result[85] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[53];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton14.label = param1;
         },"_EquipFunc_BasicTxtButton14.label");
         result[86] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild57.relativeTo = param1;
         },"_EquipFunc_AddChild57.relativeTo");
         result[87] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[49];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton15.label = param1;
         },"_EquipFunc_BasicTxtButton15.label");
         result[88] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild58.relativeTo = param1;
         },"_EquipFunc_AddChild58.relativeTo");
         result[89] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[50];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton16.label = param1;
         },"_EquipFunc_BasicTxtButton16.label");
         result[90] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild59.relativeTo = param1;
         },"_EquipFunc_AddChild59.relativeTo");
         result[91] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild60.relativeTo = param1;
         },"_EquipFunc_AddChild60.relativeTo");
         result[92] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild61.relativeTo = param1;
         },"_EquipFunc_AddChild61.relativeTo");
         result[93] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild62.relativeTo = param1;
         },"_EquipFunc_AddChild62.relativeTo");
         result[94] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            changeBindButton.label = param1;
         },"changeBindButton.label");
         result[95] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild63.relativeTo = param1;
         },"_EquipFunc_AddChild63.relativeTo");
         result[96] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild64.relativeTo = param1;
         },"_EquipFunc_AddChild64.relativeTo");
         result[97] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild65.relativeTo = param1;
         },"_EquipFunc_AddChild65.relativeTo");
         result[98] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_S[59];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_DescriptionLabel11.text = param1;
         },"_EquipFunc_DescriptionLabel11.text");
         result[99] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild66.relativeTo = param1;
         },"_EquipFunc_AddChild66.relativeTo");
         result[100] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_S[60];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_DescriptionLabel12.text = param1;
         },"_EquipFunc_DescriptionLabel12.text");
         result[101] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild67.relativeTo = param1;
         },"_EquipFunc_AddChild67.relativeTo");
         result[102] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[53];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton17.label = param1;
         },"_EquipFunc_BasicTxtButton17.label");
         result[103] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild68.relativeTo = param1;
         },"_EquipFunc_AddChild68.relativeTo");
         result[104] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[49];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton18.label = param1;
         },"_EquipFunc_BasicTxtButton18.label");
         result[105] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild69.relativeTo = param1;
         },"_EquipFunc_AddChild69.relativeTo");
         result[106] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[50];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton19.label = param1;
         },"_EquipFunc_BasicTxtButton19.label");
         result[107] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild70.relativeTo = param1;
         },"_EquipFunc_AddChild70.relativeTo");
         result[108] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild71.relativeTo = param1;
         },"_EquipFunc_AddChild71.relativeTo");
         result[109] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild72.relativeTo = param1;
         },"_EquipFunc_AddChild72.relativeTo");
         result[110] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild73.relativeTo = param1;
         },"_EquipFunc_AddChild73.relativeTo");
         result[111] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild74.relativeTo = param1;
         },"_EquipFunc_AddChild74.relativeTo");
         result[112] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnResolve.label = param1;
         },"btnResolve.label");
         result[113] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild75.relativeTo = param1;
         },"_EquipFunc_AddChild75.relativeTo");
         result[114] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[54];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton20.label = param1;
         },"_EquipFunc_BasicTxtButton20.label");
         result[115] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild76.relativeTo = param1;
         },"_EquipFunc_AddChild76.relativeTo");
         result[116] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[55];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton21.label = param1;
         },"_EquipFunc_BasicTxtButton21.label");
         result[117] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild77.relativeTo = param1;
         },"_EquipFunc_AddChild77.relativeTo");
         result[118] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild78.relativeTo = param1;
         },"_EquipFunc_AddChild78.relativeTo");
         result[119] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            changePrefixButton.label = param1;
         },"changePrefixButton.label");
         result[120] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild79.relativeTo = param1;
         },"_EquipFunc_AddChild79.relativeTo");
         result[121] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild80.relativeTo = param1;
         },"_EquipFunc_AddChild80.relativeTo");
         result[122] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild81.relativeTo = param1;
         },"_EquipFunc_AddChild81.relativeTo");
         result[123] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild82.relativeTo = param1;
         },"_EquipFunc_AddChild82.relativeTo");
         result[124] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild83.relativeTo = param1;
         },"_EquipFunc_AddChild83.relativeTo");
         result[125] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild84.relativeTo = param1;
         },"_EquipFunc_AddChild84.relativeTo");
         result[126] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild85.relativeTo = param1;
         },"_EquipFunc_AddChild85.relativeTo");
         result[127] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild86.relativeTo = param1;
         },"_EquipFunc_AddChild86.relativeTo");
         result[128] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild87.relativeTo = param1;
         },"_EquipFunc_AddChild87.relativeTo");
         result[129] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_DescriptionLabel13.text = param1;
         },"_EquipFunc_DescriptionLabel13.text");
         result[130] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild88.relativeTo = param1;
         },"_EquipFunc_AddChild88.relativeTo");
         result[131] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_S[59];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_DescriptionLabel14.text = param1;
         },"_EquipFunc_DescriptionLabel14.text");
         result[132] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild89.relativeTo = param1;
         },"_EquipFunc_AddChild89.relativeTo");
         result[133] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[157];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton22.label = param1;
         },"_EquipFunc_BasicTxtButton22.label");
         result[134] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild90.relativeTo = param1;
         },"_EquipFunc_AddChild90.relativeTo");
         result[135] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[49];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton23.label = param1;
         },"_EquipFunc_BasicTxtButton23.label");
         result[136] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild91.relativeTo = param1;
         },"_EquipFunc_AddChild91.relativeTo");
         result[137] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[50];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton24.label = param1;
         },"_EquipFunc_BasicTxtButton24.label");
         result[138] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild92.relativeTo = param1;
         },"_EquipFunc_AddChild92.relativeTo");
         result[139] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_DescriptionLabel15.text = param1;
         },"_EquipFunc_DescriptionLabel15.text");
         result[140] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild93.relativeTo = param1;
         },"_EquipFunc_AddChild93.relativeTo");
         result[141] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild94.relativeTo = param1;
         },"_EquipFunc_AddChild94.relativeTo");
         result[142] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild95.relativeTo = param1;
         },"_EquipFunc_AddChild95.relativeTo");
         result[143] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            starAllButton.label = param1;
         },"starAllButton.label");
         result[144] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild96.relativeTo = param1;
         },"_EquipFunc_AddChild96.relativeTo");
         result[145] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild97.relativeTo = param1;
         },"_EquipFunc_AddChild97.relativeTo");
         result[146] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild98.relativeTo = param1;
         },"_EquipFunc_AddChild98.relativeTo");
         result[147] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            starOneButton.label = param1;
         },"starOneButton.label");
         result[148] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild99.relativeTo = param1;
         },"_EquipFunc_AddChild99.relativeTo");
         result[149] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild100.relativeTo = param1;
         },"_EquipFunc_AddChild100.relativeTo");
         result[150] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild101.relativeTo = param1;
         },"_EquipFunc_AddChild101.relativeTo");
         result[151] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild102.relativeTo = param1;
         },"_EquipFunc_AddChild102.relativeTo");
         result[152] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_S[37];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_Label10.text = param1;
         },"_EquipFunc_Label10.text");
         result[153] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild103.relativeTo = param1;
         },"_EquipFunc_AddChild103.relativeTo");
         result[154] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton28.label = param1;
         },"_EquipFunc_BasicTxtButton28.label");
         result[155] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild104.relativeTo = param1;
         },"_EquipFunc_AddChild104.relativeTo");
         result[156] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton29.label = param1;
         },"_EquipFunc_BasicTxtButton29.label");
         result[157] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild105.relativeTo = param1;
         },"_EquipFunc_AddChild105.relativeTo");
         result[158] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[35];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton30.label = param1;
         },"_EquipFunc_BasicTxtButton30.label");
         result[159] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild106.relativeTo = param1;
         },"_EquipFunc_AddChild106.relativeTo");
         result[160] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton31.label = param1;
         },"_EquipFunc_BasicTxtButton31.label");
         result[161] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild107.relativeTo = param1;
         },"_EquipFunc_AddChild107.relativeTo");
         result[162] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[37];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton32.label = param1;
         },"_EquipFunc_BasicTxtButton32.label");
         result[163] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild108.relativeTo = param1;
         },"_EquipFunc_AddChild108.relativeTo");
         result[164] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton33.label = param1;
         },"_EquipFunc_BasicTxtButton33.label");
         result[165] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild109.relativeTo = param1;
         },"_EquipFunc_AddChild109.relativeTo");
         result[166] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild110.relativeTo = param1;
         },"_EquipFunc_AddChild110.relativeTo");
         result[167] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild111.relativeTo = param1;
         },"_EquipFunc_AddChild111.relativeTo");
         result[168] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild112.relativeTo = param1;
         },"_EquipFunc_AddChild112.relativeTo");
         result[169] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild113.relativeTo = param1;
         },"_EquipFunc_AddChild113.relativeTo");
         result[170] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild114.relativeTo = param1;
         },"_EquipFunc_AddChild114.relativeTo");
         result[171] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild115.relativeTo = param1;
         },"_EquipFunc_AddChild115.relativeTo");
         result[172] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild116.relativeTo = param1;
         },"_EquipFunc_AddChild116.relativeTo");
         result[173] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild117.relativeTo = param1;
         },"_EquipFunc_AddChild117.relativeTo");
         result[174] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild118.relativeTo = param1;
         },"_EquipFunc_AddChild118.relativeTo");
         result[175] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild119.relativeTo = param1;
         },"_EquipFunc_AddChild119.relativeTo");
         result[176] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild120.relativeTo = param1;
         },"_EquipFunc_AddChild120.relativeTo");
         result[177] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            jewelSetButton.label = param1;
         },"jewelSetButton.label");
         result[178] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild121.relativeTo = param1;
         },"_EquipFunc_AddChild121.relativeTo");
         result[179] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_S[40];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_Label11.text = param1;
         },"_EquipFunc_Label11.text");
         result[180] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild122.relativeTo = param1;
         },"_EquipFunc_AddChild122.relativeTo");
         result[181] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicGlowButton12.label = param1;
         },"_EquipFunc_BasicGlowButton12.label");
         result[182] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild123.relativeTo = param1;
         },"_EquipFunc_AddChild123.relativeTo");
         result[183] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton34.label = param1;
         },"_EquipFunc_BasicTxtButton34.label");
         result[184] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild124.relativeTo = param1;
         },"_EquipFunc_AddChild124.relativeTo");
         result[185] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[40];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicTxtButton35.label = param1;
         },"_EquipFunc_BasicTxtButton35.label");
         result[186] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild125.relativeTo = param1;
         },"_EquipFunc_AddChild125.relativeTo");
         result[187] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[244];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_Label12.text = param1;
         },"_EquipFunc_Label12.text");
         result[188] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _EquipFunc_Label12.filters = param1;
         },"_EquipFunc_Label12.filters");
         result[189] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild126.relativeTo = param1;
         },"_EquipFunc_AddChild126.relativeTo");
         result[190] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[245];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_Label13.text = param1;
         },"_EquipFunc_Label13.text");
         result[191] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _EquipFunc_Label13.filters = param1;
         },"_EquipFunc_Label13.filters");
         result[192] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild127.relativeTo = param1;
         },"_EquipFunc_AddChild127.relativeTo");
         result[193] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild128.relativeTo = param1;
         },"_EquipFunc_AddChild128.relativeTo");
         result[194] = binding;
         binding = new Binding(this,function():Object
         {
            return {"types":{523:true}};
         },function(param1:Object):void
         {
            sublimeItem.acceptObj = param1;
         },"sublimeItem.acceptObj");
         result[195] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild129.relativeTo = param1;
         },"_EquipFunc_AddChild129.relativeTo");
         result[196] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[246];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            hintTxt.htmlText = param1;
         },"hintTxt.htmlText");
         result[197] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild130.relativeTo = param1;
         },"_EquipFunc_AddChild130.relativeTo");
         result[198] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !hintTxt.visible;
         },function(param1:Boolean):void
         {
            _EquipFunc_HBox1.visible = param1;
         },"_EquipFunc_HBox1.visible");
         result[199] = binding;
         binding = new Binding(this,function():Object
         {
            return Assets.UP_ARROW;
         },function(param1:Object):void
         {
            _EquipFunc_Image2.source = param1;
         },"_EquipFunc_Image2.source");
         result[200] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild131.relativeTo = param1;
         },"_EquipFunc_AddChild131.relativeTo");
         result[201] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !hintTxt.visible;
         },function(param1:Boolean):void
         {
            sublimeConsume.visible = param1;
         },"sublimeConsume.visible");
         result[202] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            sublimeConsume.filters = param1;
         },"sublimeConsume.filters");
         result[203] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild132.relativeTo = param1;
         },"_EquipFunc_AddChild132.relativeTo");
         result[204] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !hintTxt.visible;
         },function(param1:Boolean):void
         {
            _EquipFunc_HBox2.visible = param1;
         },"_EquipFunc_HBox2.visible");
         result[205] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[249];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_Label15.text = param1;
         },"_EquipFunc_Label15.text");
         result[206] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _EquipFunc_Label15.filters = param1;
         },"_EquipFunc_Label15.filters");
         result[207] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild133.relativeTo = param1;
         },"_EquipFunc_AddChild133.relativeTo");
         result[208] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[248];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicGlowButton13.label = param1;
         },"_EquipFunc_BasicGlowButton13.label");
         result[209] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild134.relativeTo = param1;
         },"_EquipFunc_AddChild134.relativeTo");
         result[210] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[261];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_Label16.text = param1;
         },"_EquipFunc_Label16.text");
         result[211] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _EquipFunc_Label16.filters = param1;
         },"_EquipFunc_Label16.filters");
         result[212] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild135.relativeTo = param1;
         },"_EquipFunc_AddChild135.relativeTo");
         result[213] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[262];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_Label17.text = param1;
         },"_EquipFunc_Label17.text");
         result[214] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _EquipFunc_Label17.filters = param1;
         },"_EquipFunc_Label17.filters");
         result[215] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild136.relativeTo = param1;
         },"_EquipFunc_AddChild136.relativeTo");
         result[216] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild137.relativeTo = param1;
         },"_EquipFunc_AddChild137.relativeTo");
         result[217] = binding;
         binding = new Binding(this,function():Object
         {
            return {"types":{524:true}};
         },function(param1:Object):void
         {
            restrainItem.acceptObj = param1;
         },"restrainItem.acceptObj");
         result[218] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild138.relativeTo = param1;
         },"_EquipFunc_AddChild138.relativeTo");
         result[219] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[263];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            restrainHint.text = param1;
         },"restrainHint.text");
         result[220] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            restrainHint.filters = param1;
         },"restrainHint.filters");
         result[221] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild139.relativeTo = param1;
         },"_EquipFunc_AddChild139.relativeTo");
         result[222] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !restrainHint.visible;
         },function(param1:Boolean):void
         {
            _EquipFunc_HBox3.visible = param1;
         },"_EquipFunc_HBox3.visible");
         result[223] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[264];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_Label19.text = param1;
         },"_EquipFunc_Label19.text");
         result[224] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _EquipFunc_Label19.filters = param1;
         },"_EquipFunc_Label19.filters");
         result[225] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild140.relativeTo = param1;
         },"_EquipFunc_AddChild140.relativeTo");
         result[226] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[266];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            restrainView.htmlText = param1;
         },"restrainView.htmlText");
         result[227] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !restrainHint.visible;
         },function(param1:Boolean):void
         {
            restrainView.visible = param1;
         },"restrainView.visible");
         result[228] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            restrainView.filters = param1;
         },"restrainView.filters");
         result[229] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild141.relativeTo = param1;
         },"_EquipFunc_AddChild141.relativeTo");
         result[230] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[268];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_Label21.htmlText = param1;
         },"_EquipFunc_Label21.htmlText");
         result[231] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !restrainHint.visible;
         },function(param1:Boolean):void
         {
            _EquipFunc_Label21.visible = param1;
         },"_EquipFunc_Label21.visible");
         result[232] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _EquipFunc_Label21.filters = param1;
         },"_EquipFunc_Label21.filters");
         result[233] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild142.relativeTo = param1;
         },"_EquipFunc_AddChild142.relativeTo");
         result[234] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !restrainHint.visible;
         },function(param1:Boolean):void
         {
            _EquipFunc_HBox4.visible = param1;
         },"_EquipFunc_HBox4.visible");
         result[235] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[269];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_Label22.text = param1;
         },"_EquipFunc_Label22.text");
         result[236] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _EquipFunc_Label22.filters = param1;
         },"_EquipFunc_Label22.filters");
         result[237] = binding;
         binding = new Binding(this,function():UIComponent
         {
            return equView;
         },function(param1:UIComponent):void
         {
            _EquipFunc_AddChild143.relativeTo = param1;
         },"_EquipFunc_AddChild143.relativeTo");
         result[238] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[270];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquipFunc_BasicGlowButton14.label = param1;
         },"_EquipFunc_BasicGlowButton14.label");
         result[239] = binding;
         binding = new Binding(this,function():Object
         {
            return listArr;
         },function(param1:Object):void
         {
            equFuncList.dataProvider = param1;
         },"equFuncList.dataProvider");
         result[240] = binding;
         return result;
      }
      
      private function _EquipFunc_DescriptionLabel10_i() : DescriptionLabel
      {
         var _loc1_:DescriptionLabel = null;
         _loc1_ = new DescriptionLabel();
         _EquipFunc_DescriptionLabel10 = _loc1_;
         _loc1_.x = 255;
         _loc1_.y = 144;
         _loc1_.id = "_EquipFunc_DescriptionLabel10";
         BindingManager.executeBindings(this,"_EquipFunc_DescriptionLabel10",_EquipFunc_DescriptionLabel10);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function onChangeBind(param1:Object) : void
      {
         var yesAlert:String = null;
         var noAlert:String = null;
         var func:Function = null;
         var title:String = null;
         var contentMsg:String = null;
         var suffix1:String = null;
         var color:String = null;
         var suffix2:String = null;
         var color1:String = null;
         var title1:String = null;
         var equTmp:Object = null;
         var msg:String = null;
         var _alert:Alert = null;
         var tf:IUITextField = null;
         var data:Object = param1;
         if(data)
         {
            if(data.f)
            {
               if(!data.saveType)
               {
                  if(ToolKit.isEqual(changeBindItem.slotData.id,data.ii))
                  {
                     if(data.n <= 0)
                     {
                        changeBindItem.clean();
                     }
                     else
                     {
                        changeBindItem.stackNum = data.n;
                     }
                  }
               }
               yesAlert = Alert.yesLabel;
               noAlert = Alert.noLabel;
               func = function(param1:CloseEvent):void
               {
                  Alert.yesLabel = yesAlert;
                  Alert.noLabel = noAlert;
                  if(param1.detail == Alert.YES)
                  {
                     if(data.saveType)
                     {
                        _core.remote.nc.call("sureChangeBind",null,1);
                     }
                     else
                     {
                        _core.remote.nc.call("sureChangeBind",new Responder(onSureChangeBind),1);
                     }
                  }
                  else if(data.saveType)
                  {
                     _core.remote.nc.call("sureChangeBind",null,-1);
                  }
                  else
                  {
                     _core.remote.nc.call("sureChangeBind",new Responder(onSureChangeBind),-1);
                  }
               };
               title = Language.EQUIPTFUNCPANEL_S[137];
               contentMsg = "<b>" + Language.EQUIPTFUNCPANEL_S[137] + "</b>" + "    \n";
               suffix1 = "";
               suffix2 = "";
               if(!data.saveType)
               {
                  equTmp = _core.getTemplateData(changeBindEqu.slotData.type,changeBindEqu.slotData.itemId,false);
               }
               else
               {
                  equTmp = new Object();
                  equTmp.mainProp1 = data.mainProp1;
                  equTmp.mainProp2 = data.mainProp2;
               }
               if(Number(data.b1) < Number(data.b11) && ToolKit.isBigThan(Number(data.b11),0))
               {
                  title = "\n" + GamePredef.EQUIPT_PROP_NAME[equTmp.mainProp1];
                  color = "<font color=\'#00ff00\'>";
                  suffix1 = "<font color=\'#00ff00\'>" + Language.EQUIPTFUNCPANEL_S[106] + "</font>";
               }
               else if(Number(data.b1) > Number(data.b11) && ToolKit.isBigThan(Number(data.b11),0))
               {
                  title = "\n" + GamePredef.EQUIPT_PROP_NAME[equTmp.mainProp1];
                  color = "<font color=\'#ff0000\'>";
                  suffix1 = "<font color=\'#ff0000\'>" + Language.EQUIPTFUNCPANEL_S[107] + "</font>";
               }
               else if(Number(data.b1) == Number(data.b11) && ToolKit.isBigThan(Number(data.b11),0))
               {
                  title = "\n" + GamePredef.EQUIPT_PROP_NAME[equTmp.mainProp1];
                  color = "<font color=\'#00ff00\'>";
                  suffix1 = "<font color=\'#00ff00\'>" + Language.EQUIPTFUNCPANEL_S[108] + "</font>";
               }
               if(Number(data.b2) < Number(data.b12) && ToolKit.isBigThan(Number(data.b12),0))
               {
                  title1 = "\n" + GamePredef.EQUIPT_PROP_NAME[equTmp.mainProp2];
                  color1 = "<font color=\'#00ff00\'>";
                  suffix2 = "<font color=\'#00ff00\'>" + Language.EQUIPTFUNCPANEL_S[106] + "</font>";
               }
               else if(Number(data.b2) > Number(data.b12) && ToolKit.isBigThan(Number(data.b12),0))
               {
                  title1 = "\n" + GamePredef.EQUIPT_PROP_NAME[equTmp.mainProp2];
                  color1 = "<font color=\'#ff0000\'>";
                  suffix2 = "<font color=\'#ff0000\'>" + Language.EQUIPTFUNCPANEL_S[107] + "</font>";
               }
               else if(Number(data.b2) == Number(data.b12) && ToolKit.isBigThan(Number(data.b12),0))
               {
                  title1 = "\n" + GamePredef.EQUIPT_PROP_NAME[equTmp.mainProp2];
                  color1 = "<font color=\'#00ff00\'>";
                  suffix2 = "<font color=\'#00ff00\'>" + Language.EQUIPTFUNCPANEL_S[108] + "</font>";
               }
               if(ToolKit.isBigThan(Number(data.b11),0))
               {
                  contentMsg += title + ": " + data.b1 + "%" + Language.EQUIPTFUNCPANEL_S[129] + color + data.b11 + "%</font>" + suffix1;
               }
               else if(ToolKit.isEqual(Number(data.b11),0) && ToolKit.isBigThan(Number(data.b1),0))
               {
                  contentMsg += "\n" + Language.BASICTOOLTIP_S[3] + GamePredef.EQUIPT_PROP_NAME[equTmp.mainProp1] + ": " + data.b1 + "%" + Language.EQUIPTFUNCPANEL_S[129] + "<font color=\'#00ff00\'>" + data.b1 + "%</font>" + "<font color=\'#00ff00\'>" + Language.EQUIPTFUNCPANEL_S[106] + "</font>";
               }
               if(ToolKit.isBigThan(Number(data.b12),0))
               {
                  contentMsg = contentMsg + title1 + ": " + data.b2 + "%" + Language.EQUIPTFUNCPANEL_S[129] + color1 + data.b12 + "%</font>" + suffix2;
               }
               else if(ToolKit.isEqual(Number(data.b12),0) && ToolKit.isBigThan(Number(data.b2),0))
               {
                  contentMsg += "\n" + Language.BASICTOOLTIP_S[3] + GamePredef.EQUIPT_PROP_NAME[equTmp.mainProp2] + ": " + data.b2 + "%" + Language.EQUIPTFUNCPANEL_S[129] + "<font color=\'#00ff00\'>" + data.b2 + "%</font>" + "<font color=\'#00ff00\'>" + Language.EQUIPTFUNCPANEL_S[106] + "</font>";
               }
               msg = contentMsg.replace(/<font(.*?)>/g,"");
               msg = msg.replace(/<\/font>/g,"");
               msg = msg.replace(/<b>/g,"");
               msg = msg.replace(/<\/b>/g,"");
               Alert.yesLabel = Language.EQUIPTFUNCPANEL_S[113];
               Alert.noLabel = Language.EQUIPTFUNCPANEL_S[127];
               _alert = Alert.show(msg,"",Alert.YES | Alert.NO,null,func);
               Alert.yesLabel = yesAlert;
               Alert.noLabel = noAlert;
               tf = _alert.mx_internal::alertForm.mx_internal::textField;
               tf.htmlText = contentMsg;
               tf.filters = GamePredef.FILTER_TEXT1;
            }
            else
            {
               changeBindButton.enabled = true;
               changeBindInfo.htmlText = Language.EQUIPTFUNCPANEL_S[31];
            }
         }
         else
         {
            changeBindButton.enabled = true;
         }
      }
      
      private function _EquipFunc_BasicGlowButton12_i() : BasicGlowButton
      {
         var _loc1_:BasicGlowButton = null;
         _loc1_ = new BasicGlowButton();
         _EquipFunc_BasicGlowButton12 = _loc1_;
         _loc1_.x = 200;
         _loc1_.styleName = "BtnStdRed";
         _loc1_.width = 50;
         _loc1_.y = 286;
         _loc1_.addEventListener("click",___EquipFunc_BasicGlowButton12_click);
         _loc1_.id = "_EquipFunc_BasicGlowButton12";
         BindingManager.executeBindings(this,"_EquipFunc_BasicGlowButton12",_EquipFunc_BasicGlowButton12);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild103_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild103 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton28_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild103",_EquipFunc_AddChild103);
         return _loc1_;
      }
      
      public function set changeNameInfo(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1554701737changeNameInfo;
         if(_loc2_ !== param1)
         {
            this._1554701737changeNameInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeNameInfo",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_Label4_i() : Label
      {
         var _loc1_:Label = null;
         _loc1_ = new Label();
         changeElementInfo = _loc1_;
         _loc1_.y = 249;
         _loc1_.setStyle("horizontalCenter","0");
         _loc1_.setStyle("color",14026246);
         _loc1_.id = "changeElementInfo";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function set starMax(param1:NumericStepper) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1897222734starMax;
         if(_loc2_ !== param1)
         {
            this._1897222734starMax = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starMax",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_AddChild49_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild49 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicGlowButton5_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild49",_EquipFunc_AddChild49);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild14_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild14 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotMaterial5_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild14",_EquipFunc_AddChild14);
         return _loc1_;
      }
      
      private function _EquipFunc_BasicTxtButton15_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         _EquipFunc_BasicTxtButton15 = _loc1_;
         _loc1_.x = 151;
         _loc1_.y = 173;
         _loc1_.width = 76;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton15";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton15",_EquipFunc_BasicTxtButton15);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get changeLevelItemRequire3() : ItemSlotMaterial
      {
         return this._567481205changeLevelItemRequire3;
      }
      
      private function _EquipFunc_AddChild114_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild114 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotJewel5_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild114",_EquipFunc_AddChild114);
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotJewel8_i() : ItemSlotJewel
      {
         var _loc1_:ItemSlotJewel = null;
         _loc1_ = new ItemSlotJewel();
         jewelSet8 = _loc1_;
         _loc1_.y = 240;
         _loc1_.movable = false;
         _loc1_.x = 166;
         _loc1_.doubleClickEnabled = true;
         _loc1_.addEventListener("doubleClick",__jewelSet8_doubleClick);
         _loc1_.id = "jewelSet8";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get changeLevelItemRequire2() : ItemSlotMaterial
      {
         return this._567481204changeLevelItemRequire2;
      }
      
      [Bindable(event="propertyChange")]
      public function get changeSoulItem() : ItemSlot
      {
         return this._1454472054changeSoulItem;
      }
      
      public function __changeSoulButton_click(param1:MouseEvent) : void
      {
         changeSoul();
      }
      
      public function set state1(param1:State) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._892482112state1;
         if(_loc2_ !== param1)
         {
            this._892482112state1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"state1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get changeLevelEquFinal() : ItemSlotEquFunc
      {
         return this._1321368703changeLevelEquFinal;
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelSet10() : ItemSlotJewel
      {
         return this._1963555970jewelSet10;
      }
      
      [Bindable(event="propertyChange")]
      public function get changeLevelItemRequire1() : ItemSlotMaterial
      {
         return this._567481203changeLevelItemRequire1;
      }
      
      public function set state0(param1:State) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._892482113state0;
         if(_loc2_ !== param1)
         {
            this._892482113state0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"state0",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_HBox2_i() : HBox
      {
         var _loc1_:HBox = null;
         _loc1_ = new HBox();
         _EquipFunc_HBox2 = _loc1_;
         _loc1_.y = 260;
         _loc1_.setStyle("horizontalCenter","0");
         _loc1_.setStyle("horizontalGap",2);
         _loc1_.id = "_EquipFunc_HBox2";
         BindingManager.executeBindings(this,"_EquipFunc_HBox2",_EquipFunc_HBox2);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         _loc1_.addChild(_EquipFunc_CheckBox1_i());
         _loc1_.addChild(_EquipFunc_Label15_i());
         return _loc1_;
      }
      
      private function _EquipFunc_BasicTxtButton26_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         starInfo1 = _loc1_;
         _loc1_.y = 202;
         _loc1_.label = "10";
         _loc1_.x = 110;
         _loc1_.width = 27;
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "starInfo1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_State8_c() : State
      {
         var _loc1_:State = null;
         _loc1_ = new State();
         _loc1_.name = "state7";
         _loc1_.overrides = [_EquipFunc_AddChild77_i(),_EquipFunc_AddChild78_i(),_EquipFunc_AddChild79_i(),_EquipFunc_AddChild80_i(),_EquipFunc_AddChild81_i(),_EquipFunc_AddChild82_i(),_EquipFunc_AddChild83_i(),_EquipFunc_AddChild84_i(),_EquipFunc_AddChild85_i(),_EquipFunc_AddChild86_i(),_EquipFunc_AddChild87_i(),_EquipFunc_AddChild88_i(),_EquipFunc_AddChild89_i(),_EquipFunc_AddChild90_i(),_EquipFunc_AddChild91_i(),_EquipFunc_AddChild92_i()];
         return _loc1_;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:EquipFunc = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _EquipFunc_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_EquipFuncWatcherSetupUtil");
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
      
      private function _EquipFunc_Label15_i() : Label
      {
         var _loc1_:Label = null;
         _loc1_ = new Label();
         _EquipFunc_Label15 = _loc1_;
         _loc1_.setStyle("color",16777215);
         _loc1_.id = "_EquipFunc_Label15";
         BindingManager.executeBindings(this,"_EquipFunc_Label15",_EquipFunc_Label15);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild25_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild25 = _loc1_;
         _loc1_.position = "before";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton7_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild25",_EquipFunc_AddChild25);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild7_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild7 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotEquFunc2_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild7",_EquipFunc_AddChild7);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get equView() : Canvas
      {
         return this._1505596530equView;
      }
      
      private function _EquipFunc_AddChild125_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild125 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_Label12_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild125",_EquipFunc_AddChild125);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get restrainEquip() : ItemSlotEquFunc
      {
         return this._1469908056restrainEquip;
      }
      
      private function onEquResolve(param1:*) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            resolveEqu.reset();
            _loc2_ = 1;
            while(_loc2_ <= 3)
            {
               this["resolvegetItem" + _loc2_].reset();
               _loc2_++;
            }
            delete _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][resolveEqu.slotData.id];
            _core.sysBlueMsg(Language.EQUIPTFUNCPANEL_S[70]);
         }
         else
         {
            _core.sysBlueMsg(Language.EQUIPTFUNCPANEL_S[71]);
            btnResolve.enabled = true;
         }
      }
      
      private function _EquipFunc_State11_c() : State
      {
         var _loc1_:State = null;
         _loc1_ = new State();
         _loc1_.name = "state10";
         _loc1_.overrides = [_EquipFunc_AddChild125_i(),_EquipFunc_AddChild126_i(),_EquipFunc_AddChild127_i(),_EquipFunc_AddChild128_i(),_EquipFunc_AddChild129_i(),_EquipFunc_AddChild130_i(),_EquipFunc_AddChild131_i(),_EquipFunc_AddChild132_i(),_EquipFunc_AddChild133_i()];
         return _loc1_;
      }
      
      public function set holeDigItem(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1214698027holeDigItem;
         if(_loc2_ !== param1)
         {
            this._1214698027holeDigItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"holeDigItem",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get resolvegetItem1() : ItemSlotMaterial
      {
         return this._116825164resolvegetItem1;
      }
      
      [Bindable(event="propertyChange")]
      public function get resolvegetItem2() : ItemSlotMaterial
      {
         return this._116825163resolvegetItem2;
      }
      
      private function _EquipFunc_AddChild36_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild36 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotEquFunc5_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild36",_EquipFunc_AddChild36);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get resolvegetItem3() : ItemSlotMaterial
      {
         return this._116825162resolvegetItem3;
      }
      
      private function _EquipFunc_AddChild136_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild136 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotEquFunc13_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild136",_EquipFunc_AddChild136);
         return _loc1_;
      }
      
      public function onScriptSublimeEquip(param1:Number, param2:String) : void
      {
         if(!sublimeEquip || !sublimeEquip.slotData)
         {
            return;
         }
         var _loc3_:Object = sublimeEquip.slotData;
         if(!_loc3_ || _loc3_.itemId != param1)
         {
            return;
         }
         var _loc4_:Object = _dm.getGameData(_loc3_.type,_loc3_.itemId);
         if(!_loc4_)
         {
            return;
         }
         _loc4_.flag = param2;
         _dm.updateData(_loc3_.type,_loc4_);
         sublimeEquipChange();
      }
      
      public function onJewelDel(param1:*) : void
      {
         var _loc2_:Event = null;
         if(param1)
         {
            _loc2_ = null;
            jewelSetChange(_loc2_);
            _core.sysBlueMsg(Language.EQUIPTFUNCPANEL_S[67]);
         }
         else
         {
            _core.sysBlueMsg(Language.EQUIPTFUNCPANEL_S[68]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get changeLevelMoney() : Label
      {
         return this._650132332changeLevelMoney;
      }
      
      private function _EquipFunc_AddChild47_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild47 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlot1_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild47",_EquipFunc_AddChild47);
         return _loc1_;
      }
      
      private function _EquipFunc_BasicGlowButton10_i() : BasicGlowButton
      {
         var _loc1_:BasicGlowButton = null;
         _loc1_ = new BasicGlowButton();
         starOneButton = _loc1_;
         _loc1_.styleName = "BtnStdRed";
         _loc1_.x = 158;
         _loc1_.width = 50;
         _loc1_.y = 286;
         _loc1_.addEventListener("click",__starOneButton_click);
         _loc1_.id = "starOneButton";
         BindingManager.executeBindings(this,"starOneButton",starOneButton);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function changeSoulEquChange(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(changeSoulEqu.slotData)
         {
            _loc2_ = _core.getTemplateData(changeSoulEqu.slotData.type,changeSoulEqu.slotData.itemId,false);
            if(_loc2_)
            {
               changeSoulItemRequire.type = GamePredef.TBL_ITEM_TEMPLATE;
               _loc2_.reqLevel = Number(_loc2_.reqLevel);
               if(_loc2_.reqLevel > 0 && _loc2_.reqLevel <= 60)
               {
                  changeSoulItemRequire.giid = ItemConfig.ITEM_SOUL_1;
               }
               else if(_loc2_.reqLevel > 60 && _loc2_.reqLevel <= 80)
               {
                  changeSoulItemRequire.giid = ItemConfig.ITEM_SOUL_2;
               }
               else if(_loc2_.reqLevel > 80 && _loc2_.reqLevel <= 100)
               {
                  changeSoulItemRequire.giid = ItemConfig.ITEM_SOUL_3;
               }
               else if(_loc2_.reqLevel > 100)
               {
                  changeSoulItemRequire.giid = ItemConfig.ITEM_SOUL_4;
               }
               else
               {
                  changeSoulItemRequire.giid = -1;
               }
               changeSoulItemChange(null);
               _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC).equipBag.showItem(1,{
                  "type":1,
                  "idList":[changeSoulItemRequire.giid]
               });
            }
         }
      }
      
      private function _EquipFunc_AddChild101_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild101 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton27_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild101",_EquipFunc_AddChild101);
         return _loc1_;
      }
      
      private function _EquipFunc_BasicTxtButton9_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         _EquipFunc_BasicTxtButton9 = _loc1_;
         _loc1_.x = 151;
         _loc1_.y = 173;
         _loc1_.width = 76;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton9";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton9",_EquipFunc_BasicTxtButton9);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         changeLevelMoney = _loc1_;
         _loc1_.x = 252;
         _loc1_.y = 258;
         _loc1_.width = 65;
         _loc1_.setStyle("color",14026246);
         _loc1_.id = "changeLevelMoney";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function set equFuncList(param1:List) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1409033749equFuncList;
         if(_loc2_ !== param1)
         {
            this._1409033749equFuncList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equFuncList",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_BasicTxtButton13_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         _EquipFunc_BasicTxtButton13 = _loc1_;
         _loc1_.x = 266;
         _loc1_.y = 173;
         _loc1_.width = 76;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton13";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton13",_EquipFunc_BasicTxtButton13);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get changeBindSucc() : Label
      {
         return this._653919215changeBindSucc;
      }
      
      private function _EquipFunc_AddChild12_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild12 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotMaterial3_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild12",_EquipFunc_AddChild12);
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotJewel10_i() : ItemSlotJewel
      {
         var _loc1_:ItemSlotJewel = null;
         _loc1_ = new ItemSlotJewel();
         jewelSet10 = _loc1_;
         _loc1_.y = 240;
         _loc1_.movable = false;
         _loc1_.x = 266.5;
         _loc1_.doubleClickEnabled = true;
         _loc1_.addEventListener("doubleClick",__jewelSet10_doubleClick);
         _loc1_.id = "jewelSet10";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild58_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild58 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton16_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild58",_EquipFunc_AddChild58);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild112_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild112 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotJewel3_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild112",_EquipFunc_AddChild112);
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotJewel6_i() : ItemSlotJewel
      {
         var _loc1_:ItemSlotJewel = null;
         _loc1_ = new ItemSlotJewel();
         jewelSet6 = _loc1_;
         _loc1_.y = 241;
         _loc1_.x = 66;
         _loc1_.movable = false;
         _loc1_.doubleClickEnabled = true;
         _loc1_.addEventListener("doubleClick",__jewelSet6_doubleClick);
         _loc1_.id = "jewelSet6";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnResolve() : BasicGlowButton
      {
         return this._92144656btnResolve;
      }
      
      public function set starAllButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._360588801starAllButton;
         if(_loc2_ !== param1)
         {
            this._360588801starAllButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starAllButton",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_Image2_i() : Image
      {
         var _loc1_:Image = null;
         _loc1_ = new Image();
         _EquipFunc_Image2 = _loc1_;
         _loc1_.rotation = 90;
         _loc1_.setStyle("verticalCenter","0");
         _loc1_.setStyle("horizontalCenter","15");
         _loc1_.id = "_EquipFunc_Image2";
         BindingManager.executeBindings(this,"_EquipFunc_Image2",_EquipFunc_Image2);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function changeBind() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:int = 0;
         changeBindSucc.htmlText = "";
         if(Boolean(changeBindEqu.slotData) && Boolean(changeBindItem.slotData))
         {
            if(_core.player.enoughMoneyAuto(1,GamePredef.MONEY_EQUFUNC_ELEMENT))
            {
               changeBindButton.enabled = false;
               _loc1_ = changeBindItem.tempBagFlag;
               if(_loc1_)
               {
                  _loc2_ = int(changeBindItem.slotData.idx);
               }
               else
               {
                  _loc2_ = int(changeBindItem.slotData.id);
               }
               _core.remote.nc.call("changeBind",new Responder(onChangeBind),changeBindEqu.slotData.id,_loc2_,_loc1_);
            }
            else
            {
               changeBindInfo.htmlText = Language.EQUIPTFUNCPANEL_S[29];
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get restrainHint() : Label
      {
         return this._506854415restrainHint;
      }
      
      private function _EquipFunc_BasicTxtButton24_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         _EquipFunc_BasicTxtButton24 = _loc1_;
         _loc1_.x = 262;
         _loc1_.y = 134;
         _loc1_.width = 76;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton24";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton24",_EquipFunc_BasicTxtButton24);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function sublimeViewClear() : void
      {
         sublimeEquip && sublimeEquip.clean();
         sublimeItem && sublimeItem.clean();
         if(!hintTxt)
         {
            return;
         }
         hintTxt.htmlText = Language.EQUIPTFUNCPANEL_U[246];
         hintTxt.visible = true;
      }
      
      private function _EquipFunc_AddChild23_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild23 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton6_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild23",_EquipFunc_AddChild23);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild69_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild69 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton19_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild69",_EquipFunc_AddChild69);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild5_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild5 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton1_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild5",_EquipFunc_AddChild5);
         return _loc1_;
      }
      
      public function __restrainBox_change(param1:ListEvent) : void
      {
         restrainElement(param1);
      }
      
      public function __changeNameButton_click(param1:MouseEvent) : void
      {
         changeName();
      }
      
      public function onJewelSet(param1:int) : void
      {
         jewelSetChange(null);
         var _loc2_:String = Language.EQUIPTFUNCPANEL_S[9].toString();
         _loc2_ = _loc2_.replace("{successNum}",param1.toString());
         _core.sysMidNote(_loc2_);
         jewelSetButton.enabled = true;
      }
      
      public function set changeElementItemRequire(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._799140358changeElementItemRequire;
         if(_loc2_ !== param1)
         {
            this._799140358changeElementItemRequire = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeElementItemRequire",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_Label13_i() : Label
      {
         var _loc1_:Label = null;
         _loc1_ = new Label();
         _EquipFunc_Label13 = _loc1_;
         _loc1_.x = 204;
         _loc1_.y = 95;
         _loc1_.setStyle("color",16777215);
         _loc1_.id = "_EquipFunc_Label13";
         BindingManager.executeBindings(this,"_EquipFunc_Label13",_EquipFunc_Label13);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild123_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild123 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton34_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild123",_EquipFunc_AddChild123);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get sublimeConsume() : Label
      {
         return this._638137383sublimeConsume;
      }
      
      public function set starInfo1(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2126732817starInfo1;
         if(_loc2_ !== param1)
         {
            this._2126732817starInfo1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starInfo1",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_BasicTxtButton35_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         _EquipFunc_BasicTxtButton35 = _loc1_;
         _loc1_.x = 27;
         _loc1_.y = 192;
         _loc1_.width = 19;
         _loc1_.height = 60;
         _loc1_.setStyle("fontSize",12);
         _loc1_.setStyle("paddingTop",0);
         _loc1_.setStyle("paddingBottom",0);
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton35";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton35",_EquipFunc_BasicTxtButton35);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_State6_c() : State
      {
         var _loc1_:State = null;
         _loc1_ = new State();
         _loc1_.name = "state5";
         _loc1_.overrides = [_EquipFunc_AddChild59_i(),_EquipFunc_AddChild60_i(),_EquipFunc_AddChild61_i(),_EquipFunc_AddChild62_i(),_EquipFunc_AddChild63_i(),_EquipFunc_AddChild64_i(),_EquipFunc_AddChild65_i(),_EquipFunc_AddChild66_i(),_EquipFunc_AddChild67_i(),_EquipFunc_AddChild68_i(),_EquipFunc_AddChild69_i()];
         return _loc1_;
      }
      
      public function set starInfo3(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2126732819starInfo3;
         if(_loc2_ !== param1)
         {
            this._2126732819starInfo3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starInfo3",_loc2_,param1));
         }
      }
      
      public function set changeLevelButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1629920762changeLevelButton;
         if(_loc2_ !== param1)
         {
            this._1629920762changeLevelButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeLevelButton",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_AddChild34_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild34 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton9_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild34",_EquipFunc_AddChild34);
         return _loc1_;
      }
      
      private function _EquipFunc_BasicTxtButton7_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = new BasicTxtButton();
         lvtip = _loc1_;
         _loc1_.x = 88;
         _loc1_.y = 232;
         _loc1_.width = 80;
         _loc1_.height = 18;
         _loc1_.label = "";
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.setStyle("color",16711680);
         _loc1_.id = "lvtip";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get changeNameItem() : ItemSlotMaterial
      {
         return this._1554707470changeNameItem;
      }
      
      private function jewelSetViewClear(param1:Boolean) : void
      {
         if(!jewelSetItem)
         {
            return;
         }
         newJewelList = null;
         if(param1)
         {
            jewelSetItem.clean();
         }
         var _loc2_:int = 1;
         while(_loc2_ <= 10)
         {
            this["jewelSet" + _loc2_].clean();
            this["jewelSet" + _loc2_].enabled = false;
            this["jewelSet" + _loc2_].selected = true;
            this["jewelSet" + _loc2_].hasSeted = false;
            _loc2_++;
         }
      }
      
      private function _EquipFunc_AddChild134_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild134 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_Label16_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild134",_EquipFunc_AddChild134);
         return _loc1_;
      }
      
      public function set starInfo2(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2126732818starInfo2;
         if(_loc2_ !== param1)
         {
            this._2126732818starInfo2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starInfo2",_loc2_,param1));
         }
      }
      
      public function set changeLevelItem1(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._646578730changeLevelItem1;
         if(_loc2_ !== param1)
         {
            this._646578730changeLevelItem1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeLevelItem1",_loc2_,param1));
         }
      }
      
      public function set changeLevelItem2(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._646578731changeLevelItem2;
         if(_loc2_ !== param1)
         {
            this._646578731changeLevelItem2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeLevelItem2",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_AddChild45_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild45 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton13_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild45",_EquipFunc_AddChild45);
         return _loc1_;
      }
      
      public function set changeLevelItem3(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._646578732changeLevelItem3;
         if(_loc2_ !== param1)
         {
            this._646578732changeLevelItem3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeLevelItem3",_loc2_,param1));
         }
      }
      
      public function __btnResolve_click(param1:MouseEvent) : void
      {
         equResolve();
      }
      
      public function set changeBindEqu(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1087298052changeBindEqu;
         if(_loc2_ !== param1)
         {
            this._1087298052changeBindEqu = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeBindEqu",_loc2_,param1));
         }
      }
      
      private function equResolve() : void
      {
         var func:Function = null;
         if(resolveEqu.slotData)
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  if(_core.delPass)
                  {
                     _core.remote.call("equResolve",new Responder(onEquResolve),resolveEqu.slotData.id,_core.delPass);
                  }
                  else
                  {
                     _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.EQUIPTFUNCPANEL_U[56],delSlot);
                  }
                  btnResolve.enabled = false;
               }
            };
            Alert.show(Language.EQUIPTFUNCPANEL_S[69],"",3,this,func);
         }
      }
      
      public function __equFuncList_change(param1:ListEvent) : void
      {
         tabBtnBClick(equFuncList.selectedIndex);
      }
      
      private function _EquipFunc_BasicGlowButton8_i() : BasicGlowButton
      {
         var _loc1_:BasicGlowButton = null;
         _loc1_ = new BasicGlowButton();
         changePrefixButton = _loc1_;
         _loc1_.styleName = "BtnStdRed";
         _loc1_.x = 159;
         _loc1_.width = 50;
         _loc1_.y = 286;
         _loc1_.setStyle("paddingBottom",1);
         _loc1_.addEventListener("click",__changePrefixButton_click);
         _loc1_.id = "changePrefixButton";
         BindingManager.executeBindings(this,"changePrefixButton",changePrefixButton);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild10_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild10 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotEquFunc3_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild10",_EquipFunc_AddChild10);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild110_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild110 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotJewel1_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild110",_EquipFunc_AddChild110);
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotJewel4_i() : ItemSlotJewel
      {
         var _loc1_:ItemSlotJewel = null;
         _loc1_ = new ItemSlotJewel();
         jewelSet4 = _loc1_;
         _loc1_.y = 192;
         _loc1_.movable = false;
         _loc1_.x = 216.5;
         _loc1_.doubleClickEnabled = true;
         _loc1_.addEventListener("doubleClick",__jewelSet4_doubleClick);
         _loc1_.id = "jewelSet4";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_BasicTxtButton11_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         _EquipFunc_BasicTxtButton11 = _loc1_;
         _loc1_.x = 29;
         _loc1_.y = 173;
         _loc1_.width = 76;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton11";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton11",_EquipFunc_BasicTxtButton11);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function set changePrefixInfo(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._880802256changePrefixInfo;
         if(_loc2_ !== param1)
         {
            this._880802256changePrefixInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changePrefixInfo",_loc2_,param1));
         }
      }
      
      public function set changePrefixItem2(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1534888387changePrefixItem2;
         if(_loc2_ !== param1)
         {
            this._1534888387changePrefixItem2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changePrefixItem2",_loc2_,param1));
         }
      }
      
      private function restrainElement(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         var _loc2_:Object = restrainEquip.slotData;
         var _loc3_:Object = _core.data.getGameData(_loc2_.type,_loc2_.itemId);
         var _loc4_:String = _loc3_ ? _loc3_.flag : null;
         if(!_loc4_ || _loc4_.indexOf("sublimeId") == -1)
         {
            return;
         }
         var _loc5_:Object = restrainBox ? restrainBox.selectedItem : null;
         var _loc6_:int = _loc5_ ? int(_loc5_.element) : 0;
         if(_loc6_ <= 0)
         {
            if(restrainView)
            {
               restrainView.htmlText = Language.EQUIPTFUNCPANEL_U[266];
            }
            return;
         }
         var _loc7_:Object = GameData.d[GamePredef.TBL_EQUIPT_TEMPLATE][_loc3_.tid];
         if(!_loc7_)
         {
            return;
         }
         var _loc8_:int = int(GamePredef.EQUIP_FUNCTYPE[_loc7_.position]);
         var _loc9_:int = _loc8_ == GamePredef.EQUIP_TYPE_ATTACK ? 1 : 3;
         var _loc10_:int = _loc8_ == GamePredef.EQUIP_TYPE_ATTACK ? 254 : 255;
         var _loc11_:String = Language.EQUIPTFUNCPANEL_U[_loc10_];
         var _loc12_:String = GamePredef.ELEMENT_NAME[_loc6_];
         var _loc13_:String = GamePredef.ELEMENT_COLOR[_loc6_];
         _loc12_ = "<font color=\'" + _loc13_ + "\'>" + _loc12_ + "</font>";
         var _loc14_:Object = com.adobe.serialization.json.JSON.decode(JSONUtil.JSONfy(_loc4_));
         var _loc15_:int = _loc14_ ? int(_loc14_.sublimeId) : 0;
         var _loc16_:Object = GameData.d[GamePredef.TBL_SUBLIMATION][_loc15_];
         if(!_loc16_)
         {
            return;
         }
         var _loc17_:String = (Number(_loc16_.elementNum) * 100).toFixed(2);
         _loc11_ = LanguageUtil.replace(_loc11_,{
            "element":_loc12_,
            "num":_loc17_
         });
         _loc11_ = Language.EQUIPTFUNCPANEL_U[267] + _loc11_;
         if(restrainView)
         {
            restrainView.htmlText = _loc11_;
         }
      }
      
      private function _EquipFunc_AddChild56_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild56 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton14_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild56",_EquipFunc_AddChild56);
         return _loc1_;
      }
      
      public function set changePrefixItem1(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1534888388changePrefixItem1;
         if(_loc2_ !== param1)
         {
            this._1534888388changePrefixItem1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changePrefixItem1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get changeLevelInfo() : Label
      {
         return this._1918811006changeLevelInfo;
      }
      
      public function set changePrefixItem3(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1534888386changePrefixItem3;
         if(_loc2_ !== param1)
         {
            this._1534888386changePrefixItem3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changePrefixItem3",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_BasicTxtButton22_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         _EquipFunc_BasicTxtButton22 = _loc1_;
         _loc1_.x = 29;
         _loc1_.y = 168;
         _loc1_.width = 76;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton22";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton22",_EquipFunc_BasicTxtButton22);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function changeBindItemChange(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(changeBindItem.slotData)
         {
            if(Boolean(changeBindEqu.slotData) && ToolKit.isBigThan(changeBindItemRequire.giid,0))
            {
               if(changeBindItem.tempBagFlag)
               {
                  _loc2_ = GameData.d[changeBindItem.slotData.ti][changeBindItem.slotData.ii];
               }
               else
               {
                  _loc2_ = _core.getTemplateData(changeBindItem.slotData.type,changeBindItem.slotData.itemId,false);
               }
               if(Boolean(_loc2_) && ToolKit.isEqual(_loc2_.id,changeBindItemRequire.giid))
               {
                  changeBindButton.enabled = true;
                  return;
               }
               changeBindItem.clean();
            }
         }
         changeBindButton.enabled = false;
      }
      
      private function _EquipFunc_State4_c() : State
      {
         var _loc1_:State = null;
         _loc1_ = new State();
         _loc1_.name = "state3";
         _loc1_.overrides = [_EquipFunc_AddChild36_i(),_EquipFunc_AddChild37_i(),_EquipFunc_AddChild38_i(),_EquipFunc_AddChild39_i(),_EquipFunc_AddChild40_i(),_EquipFunc_AddChild41_i(),_EquipFunc_AddChild42_i(),_EquipFunc_AddChild43_i(),_EquipFunc_AddChild44_i(),_EquipFunc_AddChild45_i()];
         return _loc1_;
      }
      
      private function _EquipFunc_Label11_i() : Label
      {
         var _loc1_:Label = null;
         _loc1_ = new Label();
         _EquipFunc_Label11 = _loc1_;
         _loc1_.x = 10;
         _loc1_.y = 87;
         _loc1_.width = 360.5;
         _loc1_.setStyle("color",16468278);
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("fontSize",12);
         _loc1_.id = "_EquipFunc_Label11";
         BindingManager.executeBindings(this,"_EquipFunc_Label11",_EquipFunc_Label11);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function starItemChange(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(starItem.slotData)
         {
            _loc2_ = _core.getTemplateData(starItem.slotData.type,starItem.slotData.itemId);
            if(Boolean(_loc2_) && !isPetEqu(_loc2_))
            {
               _core.remote.call("getStarNum",new Responder(onGetStarNum),starItem.slotData.id);
            }
            else
            {
               starItem.slotData = null;
               starItem.clean();
            }
         }
      }
      
      private function _EquipFunc_AddChild67_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild67 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton17_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild67",_EquipFunc_AddChild67);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild3_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild3 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicGlowButton1_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild3",_EquipFunc_AddChild3);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild121_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild121 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_Label11_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild121",_EquipFunc_AddChild121);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild21_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild21 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton4_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild21",_EquipFunc_AddChild21);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get changeElementEqu() : ItemSlotEquFunc
      {
         return this._1035719805changeElementEqu;
      }
      
      private function _EquipFunc_DescriptionLabel9_i() : DescriptionLabel
      {
         var _loc1_:DescriptionLabel = null;
         _loc1_ = new DescriptionLabel();
         _EquipFunc_DescriptionLabel9 = _loc1_;
         _loc1_.x = 10;
         _loc1_.y = 144;
         _loc1_.id = "_EquipFunc_DescriptionLabel9";
         BindingManager.executeBindings(this,"_EquipFunc_DescriptionLabel9",_EquipFunc_DescriptionLabel9);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotEquFunc12_i() : ItemSlotEquFunc
      {
         var _loc1_:ItemSlotEquFunc = null;
         _loc1_ = new ItemSlotEquFunc();
         sublimeEquip = _loc1_;
         _loc1_.x = 120;
         _loc1_.y = 117;
         _loc1_.movable = false;
         _loc1_.id = "sublimeEquip";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function __jewelSet5_doubleClick(param1:MouseEvent) : void
      {
         jewelDel(5);
      }
      
      [Bindable(event="propertyChange")]
      public function get changeBindItemRequire() : ItemSlotMaterial
      {
         return this._1591128955changeBindItemRequire;
      }
      
      private function _EquipFunc_BasicTxtButton33_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         _EquipFunc_BasicTxtButton33 = _loc1_;
         _loc1_.x = 270;
         _loc1_.y = 230;
         _loc1_.width = 92;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton33";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton33",_EquipFunc_BasicTxtButton33);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function setStarInfo(param1:Event = null) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc2_:* = false;
         if(starItem.slotData)
         {
            if(ToolKit.isBigOrEqual(starNum,GamePredef.EQUIPT_STAR_MAX))
            {
               starInfo1.label = Language.EQUIPTFUNCPANEL_S[3];
               starOneButton.enabled = false;
               starAllButton.enabled = false;
            }
            else
            {
               _loc3_ = int(GamePredef.EQUIPT_STAR_SUCCESS[ToolKit.add(starNum,1)] * starBasic.value / 5);
               if(_core.MC_BIRTH_FLAG[8])
               {
                  _loc3_ = int(GamePredef.MC_BIRTH_CONFIG[8][ToolKit.add(starNum,1)] * starBasic.value / 5);
                  _loc2_ = true;
               }
               _loc4_ = _core.view.getUI(ViewManager.MAIN_LONGBUFF);
               if((Boolean(_loc4_)) && Boolean(_loc4_.isBuffOn(3263)))
               {
                  _loc3_ = int(GamePredef.EQUIPT_STAR_SUCCESS_BUFF[ToolKit.add(starNum,1)] * starBasic.value / 5);
                  _loc2_ = true;
               }
               starInfo1.label = starNum.toString();
               starInfo2.label = _loc3_.toString() + "%";
               if(_loc2_)
               {
                  starInfo3.label = Language.EQUIPTFUNCPANEL_S[182];
               }
               else
               {
                  starInfo3.label = "";
               }
               if(Boolean(starJewel.slotData) && ToolKit.isBigOrEqual(starJewel.stackNum,starBasic.value))
               {
                  starOneButton.enabled = true;
                  starAllButton.enabled = true;
               }
               else
               {
                  starOneButton.enabled = false;
                  starAllButton.enabled = false;
               }
            }
         }
      }
      
      private function _EquipFunc_Canvas3_c() : Canvas
      {
         var _loc1_:Canvas = null;
         _loc1_ = new Canvas();
         _loc1_.mouseEnabled = false;
         _loc1_.mouseChildren = false;
         _loc1_.percentWidth = 100;
         _loc1_.height = 80;
         _loc1_.y = 180;
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         _loc1_.addChild(_EquipFunc_AutoTextArea1_i());
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild32_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild32 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_DescriptionLabel6_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild32",_EquipFunc_AddChild32);
         return _loc1_;
      }
      
      private function delSlot(param1:String) : void
      {
         var _loc2_:String = null;
         if(param1)
         {
            _loc2_ = MD5.hash(param1);
            _core.remote.call("equResolve",new Responder(onEquResolve),resolveEqu.slotData.id,_loc2_);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get starItem() : ItemSlotEquFunc
      {
         return this._1315536005starItem;
      }
      
      private function _EquipFunc_ItemSlotMaterial19_i() : ItemSlotMaterial
      {
         var _loc1_:ItemSlotMaterial = null;
         _loc1_ = new ItemSlotMaterial();
         changePrefixItemRequire3 = _loc1_;
         _loc1_.y = 225;
         _loc1_.haveRequireSlot = false;
         _loc1_.x = 167;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changePrefixItemRequire3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild132_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild132 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_HBox2_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild132",_EquipFunc_AddChild132);
         return _loc1_;
      }
      
      public function set changeBindInfo(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._653614683changeBindInfo;
         if(_loc2_ !== param1)
         {
            this._653614683changeBindInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeBindInfo",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_AddChild78_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild78 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicGlowButton8_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild78",_EquipFunc_AddChild78);
         return _loc1_;
      }
      
      private function _EquipFunc_Label22_i() : Label
      {
         var _loc1_:Label = null;
         _loc1_ = new Label();
         _EquipFunc_Label22 = _loc1_;
         _loc1_.setStyle("color",16777215);
         _loc1_.id = "_EquipFunc_Label22";
         BindingManager.executeBindings(this,"_EquipFunc_Label22",_EquipFunc_Label22);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_BasicGlowButton6_i() : BasicGlowButton
      {
         var _loc1_:BasicGlowButton = null;
         _loc1_ = new BasicGlowButton();
         changeBindButton = _loc1_;
         _loc1_.styleName = "BtnStdRed";
         _loc1_.x = 159;
         _loc1_.width = 50;
         _loc1_.y = 286;
         _loc1_.setStyle("paddingBottom",1);
         _loc1_.addEventListener("click",__changeBindButton_click);
         _loc1_.id = "changeBindButton";
         BindingManager.executeBindings(this,"changeBindButton",changeBindButton);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_BasicTxtButton5_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = new BasicTxtButton();
         _EquipFunc_BasicTxtButton5 = _loc1_;
         _loc1_.x = 262;
         _loc1_.y = 134;
         _loc1_.width = 76;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton5";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton5",_EquipFunc_BasicTxtButton5);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get changeBindItem() : ItemSlotMaterial
      {
         return this._653620416changeBindItem;
      }
      
      private function restrainHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         if(!restrainEquip || !restrainEquip.slotData)
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[172]);
            return;
         }
         if(Boolean(restrainItem) && Boolean(restrainItem.slotData) && restrainItem.slotData.tid != GamePredef.RESTRAIN_ITEMID)
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[173]);
            return;
         }
         var _loc2_:Object = restrainEquip.slotData;
         var _loc3_:Object = _core.data.getGameData(_loc2_.type,_loc2_.itemId);
         var _loc4_:String = _loc3_ ? _loc3_.flag : null;
         if(!_loc4_ || _loc4_.indexOf("sublimeId") == -1)
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[172]);
            return;
         }
         var _loc5_:Object = com.adobe.serialization.json.JSON.decode(JSONUtil.JSONfy(_loc4_));
         var _loc6_:int = _loc5_ ? int(_loc5_.sublimeElement) : 0;
         var _loc7_:Object = restrainBox ? restrainBox.selectedItem : null;
         var _loc8_:int = _loc7_ ? int(_loc7_.element) : 0;
         if(_loc8_ <= 0 || _loc8_ == _loc6_)
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_U[271]);
            return;
         }
         var _loc9_:Number = Boolean(restrainItem) && Boolean(restrainItem.slotData) ? Number(restrainItem.slotData.id) : Number(null);
         var _loc10_:Boolean = Boolean(autoRestrain) && autoRestrain.selected;
         _core.remote.call("restrainEquip",new Responder(onRestrainEquip),restrainEquip.slotData.id,_loc9_,_loc8_,_loc10_);
      }
      
      public function set changeElementItem(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2042664543changeElementItem;
         if(_loc2_ !== param1)
         {
            this._2042664543changeElementItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeElementItem",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_AddChild89_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild89 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton22_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild89",_EquipFunc_AddChild89);
         return _loc1_;
      }
      
      public function set hintTxt(param1:AutoTextArea) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._922290793hintTxt;
         if(_loc2_ !== param1)
         {
            this._922290793hintTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hintTxt",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_AddChild43_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild43 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton11_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild43",_EquipFunc_AddChild43);
         return _loc1_;
      }
      
      public function __jewelSet10_doubleClick(param1:MouseEvent) : void
      {
         jewelDel(10);
      }
      
      public function __jewelSetButton_click(param1:MouseEvent) : void
      {
         jewelSet();
      }
      
      private function _EquipFunc_AddChild143_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild143 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicGlowButton14_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild143",_EquipFunc_AddChild143);
         return _loc1_;
      }
      
      public function onJeweSetUpdate(param1:Object) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            jewelSetViewClear(false);
            if(ToolKit.isBigThan(param1.holeNum,0))
            {
               _loc2_ = 1;
               while(_loc2_ <= Number(param1.holeNum))
               {
                  this["jewelSet" + _loc2_].enabled = true;
                  this["jewelSet" + _loc2_].selected = false;
                  this["jewelSet" + _loc2_].type = GamePredef.TBL_ITEM_TEMPLATE;
                  this["jewelSet" + _loc2_].giid = param1["t" + _loc2_];
                  if(param1["t" + _loc2_] > 0)
                  {
                     this["jewelSet" + _loc2_].hasSeted = true;
                  }
                  _loc2_++;
               }
            }
         }
      }
      
      private function _EquipFunc_ItemSlotJewel2_i() : ItemSlotJewel
      {
         var _loc1_:ItemSlotJewel = null;
         _loc1_ = new ItemSlotJewel();
         jewelSet2 = _loc1_;
         _loc1_.y = 192;
         _loc1_.movable = false;
         _loc1_.x = 116.5;
         _loc1_.doubleClickEnabled = true;
         _loc1_.addEventListener("doubleClick",__jewelSet2_doubleClick);
         _loc1_.id = "jewelSet2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild54_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild54 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_DescriptionLabel9_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild54",_EquipFunc_AddChild54);
         return _loc1_;
      }
      
      private function sublimeInitHint() : void
      {
         if(!hintTxt)
         {
            return;
         }
         hintTxt.htmlText = Language.EQUIPTFUNCPANEL_U[246];
         hintTxt.visible = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get changeNameEqu() : ItemSlotEquFunc
      {
         return this._742884590changeNameEqu;
      }
      
      public function onChangeSoul(param1:Object) : void
      {
         var yesAlert:String = null;
         var func:Function = null;
         var title:String = null;
         var htmlMsg:String = null;
         var suffix1:String = null;
         var color:String = null;
         var msg:String = null;
         var _alert:Alert = null;
         var tf:IUITextField = null;
         var noAlert:String = null;
         var contentMsg:String = null;
         var after:String = null;
         var before:String = null;
         var data:Object = param1;
         if(data)
         {
            if(data.f)
            {
               if(!data.saveType)
               {
                  if(ToolKit.isEqual(changeSoulItem.slotData.id,data.ii))
                  {
                     if(data.n <= 0)
                     {
                        changeSoulItem.clean();
                     }
                     else
                     {
                        changeSoulItem.stackNum = data.n;
                     }
                  }
               }
               if(data.type == "2")
               {
                  yesAlert = Alert.yesLabel;
                  func = function(param1:CloseEvent):void
                  {
                     Alert.yesLabel = yesAlert;
                     if(param1.detail == Alert.YES)
                     {
                        if(Number(data.apropnu) < Number(data.apro))
                        {
                           changeSoulInfo.htmlText = Language.EQUIPTFUNCPANEL_S[55] + GamePredef.EQUIPT_ACTIVE_NAME[data.ap] + " " + data.apn + "%";
                        }
                        else
                        {
                           changeSoulInfo.htmlText = "";
                        }
                     }
                     changeSoulButton.enabled = true;
                  };
                  title = Language.EQUIPTFUNCPANEL_S[131];
                  htmlMsg = "<b>" + Language.EQUIPTFUNCPANEL_S[130] + "</b>" + "\n";
                  suffix1 = "";
                  if(Number(data.apro) > Number(data.apropnum))
                  {
                     Alert.yesLabel = Language.EQUIPTFUNCPANEL_S[113];
                     color = "<font color=\'#00ff00\'>";
                     suffix1 = "<font color=\'#00ff00\'>" + Language.EQUIPTFUNCPANEL_S[106] + "</font>";
                  }
                  else if(Number(data.apro) < Number(data.apropnum))
                  {
                     Alert.yesLabel = Language.EQUIPTFUNCPANEL_S[127];
                     color = "<font color=\'#ff0000\'>";
                     suffix1 = "<font color=\'#ff0000\'>" + Language.EQUIPTFUNCPANEL_S[107] + "</font>";
                  }
                  else
                  {
                     Alert.yesLabel = Language.EQUIPTFUNCPANEL_S[127];
                     color = "<font color=\'#00ff00\'>";
                     suffix1 = "<font color=\'#00ff00\'>" + Language.EQUIPTFUNCPANEL_S[108] + "</font>";
                  }
                  htmlMsg += Language.EQUIPTFUNCPANEL_S[131] + GamePredef.EQUIPT_ACTIVE_NAME[data.ap] + data.apropnum + "%" + Language.EQUIPTFUNCPANEL_S[129] + GamePredef.EQUIPT_ACTIVE_NAME[data.ap] + "<font color=\'#00ff00\'>" + data.apro + "</font>%";
                  htmlMsg += suffix1;
                  msg = htmlMsg.replace(/<font(.*?)>/g,"");
                  msg = msg.replace(/<\/font>/g,"");
                  msg = msg.replace(/<b>/g,"");
                  msg = msg.replace(/<\/b>/g,"");
                  _alert = Alert.show(msg,"",Alert.YES,null,func);
                  Alert.yesLabel = yesAlert;
                  tf = _alert.mx_internal::alertForm.mx_internal::textField;
                  tf.htmlText = htmlMsg;
                  tf.filters = GamePredef.FILTER_TEXT1;
               }
               if(data.type == "1")
               {
                  yesAlert = Alert.yesLabel;
                  noAlert = Alert.noLabel;
                  func = function(param1:CloseEvent):void
                  {
                     Alert.yesLabel = yesAlert;
                     Alert.noLabel = noAlert;
                     if(param1.detail == Alert.YES)
                     {
                        if(data.saveType)
                        {
                           _core.remote.nc.call("sureChangeSoul",null,1);
                        }
                        else
                        {
                           _core.remote.nc.call("sureChangeSoul",new Responder(onSureChangeSoul),1);
                        }
                     }
                     else if(data.saveType)
                     {
                        _core.remote.nc.call("sureChangeSoul",null,-1);
                     }
                     else
                     {
                        _core.remote.nc.call("sureChangeSoul",new Responder(onSureChangeSoul),-1);
                     }
                  };
                  title = Language.EQUIPTFUNCPANEL_S[131];
                  contentMsg = "<b>" + Language.EQUIPTFUNCPANEL_S[130] + "</b>" + "\n";
                  after = "";
                  before = "";
                  contentMsg += Language.EQUIPTFUNCPANEL_S[131] + GamePredef.EQUIPT_ACTIVE_NAME[data.ap] + data.apn + "%" + Language.EQUIPTFUNCPANEL_S[129] + "<font color=\'#00ff00\'>" + GamePredef.EQUIPT_ACTIVE_NAME[data.apro] + data.apropnum + "%" + "</font>";
                  msg = contentMsg.replace(/<font(.*?)>/g,"");
                  msg = msg.replace(/<\/font>/g,"");
                  msg = msg.replace(/<b>/g,"");
                  msg = msg.replace(/<\/b>/g,"");
                  Alert.yesLabel = Language.EQUIPTFUNCPANEL_S[113];
                  Alert.noLabel = Language.EQUIPTFUNCPANEL_S[127];
                  _alert = Alert.show(msg,"",Alert.YES | Alert.NO,null,func);
                  Alert.yesLabel = yesAlert;
                  Alert.noLabel = noAlert;
                  tf = _alert.mx_internal::alertForm.mx_internal::textField;
                  tf.htmlText = contentMsg;
                  tf.filters = GamePredef.FILTER_TEXT1;
               }
            }
            else
            {
               changeSoulButton.enabled = true;
            }
         }
         else
         {
            changeSoulButton.enabled = true;
         }
      }
      
      private function _EquipFunc_BasicTxtButton20_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         _EquipFunc_BasicTxtButton20 = _loc1_;
         _loc1_.x = 29;
         _loc1_.y = 163;
         _loc1_.width = 76;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton20";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton20",_EquipFunc_BasicTxtButton20);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get changeSoulItemRequire() : ItemSlot
      {
         return this._1492095729changeSoulItemRequire;
      }
      
      private function init() : void
      {
         equFuncList.selectedIndex = 0;
         tabBtnBClick(0);
      }
      
      [Bindable(event="propertyChange")]
      public function get changeSoulInfo() : Label
      {
         return this._1454466321changeSoulInfo;
      }
      
      private function _EquipFunc_State2_i() : State
      {
         var _loc1_:State = new State();
         state1 = _loc1_;
         _loc1_.name = "state1";
         _loc1_.overrides = [_EquipFunc_AddChild7_i(),_EquipFunc_AddChild8_i(),_EquipFunc_AddChild9_i(),_EquipFunc_AddChild10_i(),_EquipFunc_AddChild11_i(),_EquipFunc_AddChild12_i(),_EquipFunc_AddChild13_i(),_EquipFunc_AddChild14_i(),_EquipFunc_AddChild15_i(),_EquipFunc_AddChild16_i(),_EquipFunc_AddChild17_i(),_EquipFunc_AddChild18_i(),_EquipFunc_AddChild19_i(),_EquipFunc_AddChild20_i(),_EquipFunc_AddChild21_i(),_EquipFunc_AddChild22_i(),_EquipFunc_AddChild23_i(),_EquipFunc_AddChild24_i(),_EquipFunc_AddChild25_i()];
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild1_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild1 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotEquFunc1_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild1",_EquipFunc_AddChild1);
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotEquFunc8_i() : ItemSlotEquFunc
      {
         var _loc1_:ItemSlotEquFunc = null;
         _loc1_ = new ItemSlotEquFunc();
         resolveEqu = _loc1_;
         _loc1_.y = 196;
         _loc1_.movable = false;
         _loc1_.x = 50;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "resolveEqu";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get starJewel() : ItemSlotStar
      {
         return this._2127404305starJewel;
      }
      
      private function changeBindViewClear() : void
      {
         if(changeBindEqu)
         {
            changeBindInfo.htmlText = "";
            changeBindButton.enabled = false;
            changeBindEqu.clean();
            changeBindItem.clean();
            changeBindItemRequire.clean();
         }
      }
      
      private function _EquipFunc_AddChild65_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild65 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_DescriptionLabel11_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild65",_EquipFunc_AddChild65);
         return _loc1_;
      }
      
      private function _EquipFunc_DescriptionLabel7_i() : DescriptionLabel
      {
         var _loc1_:DescriptionLabel = null;
         _loc1_ = new DescriptionLabel();
         _EquipFunc_DescriptionLabel7 = _loc1_;
         _loc1_.x = 255;
         _loc1_.y = 144;
         _loc1_.id = "_EquipFunc_DescriptionLabel7";
         BindingManager.executeBindings(this,"_EquipFunc_DescriptionLabel7",_EquipFunc_DescriptionLabel7);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotEquFunc10_i() : ItemSlotEquFunc
      {
         var _loc1_:ItemSlotEquFunc = null;
         _loc1_ = new ItemSlotEquFunc();
         starItem = _loc1_;
         _loc1_.y = 160;
         _loc1_.movable = false;
         _loc1_.x = 53;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "starItem";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function jewelSetHandler(param1:CloseEvent) : void
      {
         if(Boolean(param1.detail == Alert.YES) && Boolean(jewelSetItem.slotData) && Boolean(newJewelList))
         {
            jewelSetButton.enabled = false;
            _core.remote.call("jewelSet",new Responder(onJewelSet),jewelSetItem.slotData.id,newJewelList);
         }
      }
      
      private function _EquipFunc_BasicTxtButton31_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         _EquipFunc_BasicTxtButton31 = _loc1_;
         _loc1_.x = 270;
         _loc1_.y = 204;
         _loc1_.width = 65;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton31";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton31",_EquipFunc_BasicTxtButton31);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_CheckBox2_i() : CheckBox
      {
         var _loc1_:CheckBox = null;
         _loc1_ = new CheckBox();
         autoRestrain = _loc1_;
         _loc1_.id = "autoRestrain";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function changeElement() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:int = 0;
         if(Boolean(changeElementEqu.slotData) && Boolean(changeElementItem.slotData))
         {
            if(_core.player.enoughMoneyAuto(1,GamePredef.MONEY_EQUFUNC_ELEMENT))
            {
               changeElementButton.enabled = false;
               _loc1_ = changeElementItem.tempBagFlag;
               if(_loc1_)
               {
                  _loc2_ = int(changeElementItem.slotData.idx);
               }
               else
               {
                  _loc2_ = int(changeElementItem.slotData.id);
               }
               _core.remote.nc.call("changeElement",new Responder(onChangeElement),changeElementEqu.slotData.id,_loc2_,_loc1_);
            }
            else
            {
               changeElementInfo.htmlText = Language.EQUIPTFUNCPANEL_S[29];
            }
         }
      }
      
      private function _EquipFunc_AddChild76_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild76 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton21_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild76",_EquipFunc_AddChild76);
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotMaterial17_i() : ItemSlotMaterial
      {
         var _loc1_:ItemSlotMaterial = null;
         _loc1_ = new ItemSlotMaterial();
         changePrefixItemRequire1 = _loc1_;
         _loc1_.y = 155;
         _loc1_.haveRequireSlot = false;
         _loc1_.x = 167;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changePrefixItemRequire1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild130_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild130 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_HBox1_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild130",_EquipFunc_AddChild130);
         return _loc1_;
      }
      
      private function _EquipFunc_BasicGlowButton4_i() : BasicGlowButton
      {
         var _loc1_:BasicGlowButton = null;
         _loc1_ = new BasicGlowButton();
         changeElementButton = _loc1_;
         _loc1_.styleName = "BtnStdRed";
         _loc1_.x = 159;
         _loc1_.width = 50;
         _loc1_.y = 286;
         _loc1_.setStyle("paddingBottom",1);
         _loc1_.addEventListener("click",__changeElementButton_click);
         _loc1_.id = "changeElementButton";
         BindingManager.executeBindings(this,"changeElementButton",changeElementButton);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_BasicTxtButton3_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = new BasicTxtButton();
         _EquipFunc_BasicTxtButton3 = _loc1_;
         _loc1_.x = 29;
         _loc1_.y = 134;
         _loc1_.width = 76;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton3";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton3",_EquipFunc_BasicTxtButton3);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotMaterial8_i() : ItemSlotMaterial
      {
         var _loc1_:ItemSlotMaterial = new ItemSlotMaterial();
         changeNameItemRequire = _loc1_;
         _loc1_.y = 202;
         _loc1_.haveRequireSlot = false;
         _loc1_.x = 167;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changeNameItemRequire";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_Label20_i() : Label
      {
         var _loc1_:Label = null;
         _loc1_ = new Label();
         restrainView = _loc1_;
         _loc1_.y = 205;
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("color",16777215);
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "restrainView";
         BindingManager.executeBindings(this,"restrainView",restrainView);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild30_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild30 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_Label3_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild30",_EquipFunc_AddChild30);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild41_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild41 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_DescriptionLabel7_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild41",_EquipFunc_AddChild41);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild87_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild87 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_DescriptionLabel13_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild87",_EquipFunc_AddChild87);
         return _loc1_;
      }
      
      public function ___EquipFunc_BasicGlowButton13_click(param1:MouseEvent) : void
      {
         sublimeHandler(param1);
      }
      
      private function _EquipFunc_AddChild141_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild141 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_Label21_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild141",_EquipFunc_AddChild141);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get autoSublime() : CheckBox
      {
         return this._1036064102autoSublime;
      }
      
      private function _EquipFunc_AddChild52_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild52 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_RoundedRadioButton1_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild52",_EquipFunc_AddChild52);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild98_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild98 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicGlowButton10_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild98",_EquipFunc_AddChild98);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get changeNameButton() : BasicGlowButton
      {
         return this._773763731changeNameButton;
      }
      
      public function set descriptionlabel1(param1:DescriptionLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1103497543descriptionlabel1;
         if(_loc2_ !== param1)
         {
            this._1103497543descriptionlabel1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"descriptionlabel1",_loc2_,param1));
         }
      }
      
      private function restrainEquipChange(param1:Event = null) : void
      {
         var _loc11_:Object = null;
         if(!restrainEquip || !restrainEquip.slotData)
         {
            this.restrainViewClear();
            return;
         }
         var _loc2_:Object = restrainEquip.slotData;
         var _loc3_:Object = _core.data.getGameData(_loc2_.type,_loc2_.itemId);
         var _loc4_:String = _loc3_ ? _loc3_.flag : null;
         if(!_loc4_ || _loc4_.indexOf("sublimeId") == -1)
         {
            if(restrainHint)
            {
               restrainHint.visible = true;
               restrainHint.text = Language.EQUIPTFUNCPANEL_U[263];
            }
            return;
         }
         if(restrainHint)
         {
            restrainHint.visible = false;
         }
         var _loc5_:Object = com.adobe.serialization.json.JSON.decode(JSONUtil.JSONfy(_loc4_));
         var _loc6_:int = (Boolean(_loc5_)) && Boolean(_loc5_.sublimeElement) ? int(_loc5_.sublimeElement) : 0;
         var _loc7_:Array = [];
         var _loc8_:Array = Language.EQUIPTFUNCPANEL_U[265];
         var _loc9_:int = int(_loc8_.length);
         var _loc10_:int = 0;
         while(_loc10_ < _loc9_)
         {
            _loc11_ = _loc8_[_loc10_];
            if(_loc11_.element != _loc6_)
            {
               _loc7_.push(_loc11_);
            }
            _loc10_++;
         }
         if(restrainBox)
         {
            restrainBox.dataProvider = new ArrayCollection(_loc7_);
            restrainBox.selectedIndex = 0;
         }
         if(restrainView)
         {
            restrainView.htmlText = Language.EQUIPTFUNCPANEL_U[266];
         }
      }
      
      private function equResolveViewClear() : void
      {
         if(resolveEqu)
         {
            resolveEqu.reset();
            resolvegetItem1.reset();
            resolvegetItem2.reset();
            resolvegetItem3.reset();
            btnResolve.enabled = true;
         }
      }
      
      private function _EquipFunc_AddChild63_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild63 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_Label6_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild63",_EquipFunc_AddChild63);
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotEquFunc6_i() : ItemSlotEquFunc
      {
         var _loc1_:ItemSlotEquFunc = null;
         _loc1_ = new ItemSlotEquFunc();
         changeSoulEqu = _loc1_;
         _loc1_.y = 202;
         _loc1_.movable = false;
         _loc1_.x = 52;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changeSoulEqu";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function set sublimeItem(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1885394232sublimeItem;
         if(_loc2_ !== param1)
         {
            this._1885394232sublimeItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sublimeItem",_loc2_,param1));
         }
      }
      
      private function changeResolveEquChange(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:int = 0;
         if(resolveEqu.slotData)
         {
            if(resolveEqu.tempBagFlag)
            {
               _loc2_ = GameData.d[resolveEqu.slotData.ti][resolveEqu.slotData.ii];
            }
            else
            {
               _loc2_ = _core.getTemplateData(resolveEqu.slotData.type,resolveEqu.slotData.itemId,false);
            }
            _loc3_ = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][resolveEqu.slotData.itemId];
            if(Boolean(_loc2_) && Boolean(_loc3_))
            {
               if(_loc3_.color < 1)
               {
                  resolveEqu.restore();
                  return;
               }
               _loc4_ = 0;
               _loc5_ = uint(_loc3_.color);
               if(_loc5_ == 3 && _loc3_.preNameType == 5)
               {
                  _loc4_ = _loc5_;
               }
               else
               {
                  _loc4_ = int(_loc5_) - 1;
               }
               _loc6_ = 1;
               while(_loc6_ <= 3)
               {
                  this["resolvegetItem" + _loc6_].type = GamePredef.TBL_ITEM_TEMPLATE;
                  this["resolvegetItem" + _loc6_].giid = _loc2_["requireItem" + _loc6_];
                  this["resolvegetItem" + _loc6_].stackNum = _loc2_["requireNum" + _loc6_];
                  this["resolvegetItem" + _loc6_].temp_quality = _loc4_;
                  _loc6_++;
               }
               btnResolve.enabled = true;
               return;
            }
         }
         btnResolve.enabled = false;
      }
      
      public function set lvtip(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._103370449lvtip;
         if(_loc2_ !== param1)
         {
            this._103370449lvtip = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lvtip",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get changeNameInfo() : Label
      {
         return this._1554701737changeNameInfo;
      }
      
      private function _EquipFunc_AutoTextArea3_i() : AutoTextArea
      {
         var _loc1_:AutoTextArea = null;
         _loc1_ = new AutoTextArea();
         sublimeRight = _loc1_;
         _loc1_.setStyle("backgroundAlpha",0);
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "sublimeRight";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_DescriptionLabel5_i() : DescriptionLabel
      {
         var _loc1_:DescriptionLabel = null;
         _loc1_ = new DescriptionLabel();
         _EquipFunc_DescriptionLabel5 = _loc1_;
         _loc1_.x = 12;
         _loc1_.y = 143;
         _loc1_.id = "_EquipFunc_DescriptionLabel5";
         BindingManager.executeBindings(this,"_EquipFunc_DescriptionLabel5",_EquipFunc_DescriptionLabel5);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_NumericStepper2_i() : NumericStepper
      {
         var _loc1_:NumericStepper = null;
         _loc1_ = new NumericStepper();
         starMax = _loc1_;
         _loc1_.y = 256;
         _loc1_.minimum = 1;
         _loc1_.maximum = 10;
         _loc1_.width = 50;
         _loc1_.x = 280;
         _loc1_.id = "starMax";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function jewelSetChange(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(jewelSetItem.slotData)
         {
            _loc2_ = _core.getTemplateData(jewelSetItem.slotData.type,jewelSetItem.slotData.itemId,false);
            if(_loc2_)
            {
               _core.remote.call("getJewelData",new Responder(onJeweSetUpdate),jewelSetItem.slotData.id);
            }
         }
      }
      
      private function _EquipFunc_ItemSlotMaterial15_i() : ItemSlotMaterial
      {
         var _loc1_:ItemSlotMaterial = null;
         _loc1_ = new ItemSlotMaterial();
         resolvegetItem2 = _loc1_;
         _loc1_.y = 196;
         _loc1_.haveRequireSlot = false;
         _loc1_.x = 279;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "resolvegetItem2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get starMax() : NumericStepper
      {
         return this._1897222734starMax;
      }
      
      private function _EquipFunc_AddChild74_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild74 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicGlowButton7_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild74",_EquipFunc_AddChild74);
         return _loc1_;
      }
      
      public function __changePrefixButton_click(param1:MouseEvent) : void
      {
         changePrefix();
      }
      
      private function _EquipFunc_BasicGlowButton2_i() : BasicGlowButton
      {
         var _loc1_:BasicGlowButton = new BasicGlowButton();
         changeLevelButton = _loc1_;
         _loc1_.styleName = "BtnStdRed";
         _loc1_.x = 159;
         _loc1_.width = 50;
         _loc1_.y = 286;
         _loc1_.setStyle("paddingBottom",1);
         _loc1_.addEventListener("click",__changeLevelButton_click);
         _loc1_.id = "changeLevelButton";
         BindingManager.executeBindings(this,"changeLevelButton",changeLevelButton);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function changeLevel() : void
      {
         var gfunc:Function = null;
         var color:int = 0;
         var color1:int = 0;
         var color2:int = 0;
         var color3:int = 0;
         var data:Object = null;
         if(!_core.delPass)
         {
            gfunc = function(param1:String):void
            {
               _core.remote.call("unlockMoney",null,MD5.hash(param1));
            };
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.DELETE_BY_PASS[1],gfunc);
            return;
         }
         if(Boolean(changeLevelEqu.slotData) && Boolean(changeLevelItem1.slotData) && Boolean(changeLevelItem2.slotData) && Boolean(changeLevelItem3.slotData))
         {
            color = getMaterialColor(changeLevelEqu.slotData);
            if(changeLevelItem1.tempBagFlag)
            {
               color1 = Math.ceil(changeLevelItem1.slotData.q / 5);
            }
            else
            {
               color1 = getMaterialColor(changeLevelItem1.slotData);
            }
            if(changeLevelItem2.tempBagFlag)
            {
               color2 = Math.ceil(changeLevelItem2.slotData.q / 5);
            }
            else
            {
               color2 = getMaterialColor(changeLevelItem2.slotData);
            }
            if(changeLevelItem3.tempBagFlag)
            {
               color3 = Math.ceil(changeLevelItem3.slotData.q / 5);
            }
            else
            {
               color3 = getMaterialColor(changeLevelItem3.slotData);
            }
            if(!(color1 == color2 && color2 == color3))
            {
               Alert.show(Language.EQUIPTFUNCPANEL_S[100],"");
               return;
            }
            if(color == 4 && color1 < color)
            {
               Alert.show(Language.EQUIPTFUNCPANEL_S[101],"");
               return;
            }
            if(_core.player.enoughMoneyAuto(1,Number(changeLevelMoney.text)))
            {
               data = {};
               data.e = changeLevelEqu.slotData.id;
               if(changeLevelItem1.tempBagFlag)
               {
                  data.i1 = {
                     "idx":changeLevelItem1.slotData.idx,
                     "flag":true
                  };
               }
               else
               {
                  data.i1 = {
                     "idx":changeLevelItem1.slotData.id,
                     "flag":false
                  };
               }
               if(changeLevelItem2.tempBagFlag)
               {
                  data.i2 = {
                     "idx":changeLevelItem2.slotData.idx,
                     "flag":true
                  };
               }
               else
               {
                  data.i2 = {
                     "idx":changeLevelItem2.slotData.id,
                     "flag":false
                  };
               }
               if(changeLevelItem3.tempBagFlag)
               {
                  data.i3 = {
                     "idx":changeLevelItem3.slotData.idx,
                     "flag":true
                  };
               }
               else
               {
                  data.i3 = {
                     "idx":changeLevelItem3.slotData.id,
                     "flag":false
                  };
               }
               changeLevelButton.enabled = false;
               _core.remote.nc.call("changeLevel",new Responder(onChangeLevel),data);
            }
            else
            {
               changeLevelInfo.htmlText = Language.EQUIPTFUNCPANEL_S[32];
            }
         }
      }
      
      private function _EquipFunc_BasicTxtButton1_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = new BasicTxtButton();
         _EquipFunc_BasicTxtButton1 = _loc1_;
         _loc1_.x = 29;
         _loc1_.y = 152;
         _loc1_.width = 76;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton1";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton1",_EquipFunc_BasicTxtButton1);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotMaterial6_i() : ItemSlotMaterial
      {
         var _loc1_:ItemSlotMaterial = new ItemSlotMaterial();
         changeLevelItem2 = _loc1_;
         _loc1_.y = 188;
         _loc1_.haveRequireSlot = true;
         _loc1_.x = 279;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changeLevelItem2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get state0() : State
      {
         return this._892482113state0;
      }
      
      [Bindable(event="propertyChange")]
      public function get state1() : State
      {
         return this._892482112state1;
      }
      
      private function changeSoul() : void
      {
         if(Boolean(changeSoulEqu.slotData) && Boolean(changeSoulItem.slotData))
         {
            if(_core.player.enoughMoneyAuto(1,GamePredef.MONEY_EQUFUNC_ACTIVE * int(changeSoulRadioGroup.selectedValue)))
            {
               if(changeSoulItem.stackNum >= changeSoulRadioGroup.selectedValue)
               {
                  changeSoulButton.enabled = false;
                  _core.remote.nc.call("changeSoul",new Responder(onChangeSoul),changeSoulEqu.slotData.id,changeSoulItem.slotData.id,changeSoulRadioGroup.selectedValue);
               }
               else
               {
                  changeSoulInfo.htmlText = Language.EQUIPTFUNCPANEL_S[56];
               }
            }
            else
            {
               changeSoulInfo.htmlText = Language.EQUIPTFUNCPANEL_S[29];
            }
         }
      }
      
      private function onSureChangeBind(param1:Object) : void
      {
         var _loc2_:Object = null;
         changeBindButton.enabled = true;
         if(param1)
         {
            if(param1.f == "sure")
            {
               _loc2_ = _core.getTemplateData(changeBindEqu.slotData.type,changeBindEqu.slotData.itemId,false);
               if(_loc2_)
               {
                  changeBindSucc.htmlText = Language.EQUIPTFUNCPANEL_S[58];
                  if(ToolKit.isBigThan(param1.b1,0))
                  {
                     changeBindInfo.htmlText = "<font color=\'#FFFFFF\'>" + Language.BASICTOOLTIP_S[3] + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp1] + ":" + "</font>" + "<font color=\'#00FFFF\'>" + param1.b1 + "%" + "</font>";
                  }
                  if(ToolKit.isBigThan(param1.b2,0))
                  {
                     changeBindInfo.htmlText += "\n" + "<font color=\'#FFFFFF\'>" + Language.BASICTOOLTIP_S[3] + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp2] + ":" + "</font>" + "<font color=\'#00FFFF\'>" + param1.b2 + "%" + "</font>";
                  }
               }
            }
            else
            {
               changeBindSucc.htmlText = "";
               changeBindInfo.htmlText = "";
            }
         }
      }
      
      private function _EquipFunc_AddChild85_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild85 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotMaterial22_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild85",_EquipFunc_AddChild85);
         return _loc1_;
      }
      
      public function set changeSoulButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1684249301changeSoulButton;
         if(_loc2_ !== param1)
         {
            this._1684249301changeSoulButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeSoulButton",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get holeDigItem() : ItemSlotEquFunc
      {
         return this._1214698027holeDigItem;
      }
      
      private function _EquipFunc_ItemSlot4_i() : ItemSlot
      {
         var _loc1_:ItemSlot = null;
         _loc1_ = new ItemSlot();
         restrainItem = _loc1_;
         _loc1_.x = 213;
         _loc1_.y = 137;
         _loc1_.movable = false;
         _loc1_.id = "restrainItem";
         BindingManager.executeBindings(this,"restrainItem",restrainItem);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function set jewelSet2(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1448813837jewelSet2;
         if(_loc2_ !== param1)
         {
            this._1448813837jewelSet2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelSet2",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_AddChild50_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild50 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_Label5_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild50",_EquipFunc_AddChild50);
         return _loc1_;
      }
      
      public function set jewelSet1(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1448813838jewelSet1;
         if(_loc2_ !== param1)
         {
            this._1448813838jewelSet1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelSet1",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_AddChild96_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild96 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_NumericStepper2_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild96",_EquipFunc_AddChild96);
         return _loc1_;
      }
      
      public function set jewelSet3(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1448813836jewelSet3;
         if(_loc2_ !== param1)
         {
            this._1448813836jewelSet3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelSet3",_loc2_,param1));
         }
      }
      
      public function set jewelSet7(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1448813832jewelSet7;
         if(_loc2_ !== param1)
         {
            this._1448813832jewelSet7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelSet7",_loc2_,param1));
         }
      }
      
      public function set changeLevelEqu(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1877761781changeLevelEqu;
         if(_loc2_ !== param1)
         {
            this._1877761781changeLevelEqu = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeLevelEqu",_loc2_,param1));
         }
      }
      
      public function set jewelSet8(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1448813831jewelSet8;
         if(_loc2_ !== param1)
         {
            this._1448813831jewelSet8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelSet8",_loc2_,param1));
         }
      }
      
      public function set jewelSet5(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1448813834jewelSet5;
         if(_loc2_ !== param1)
         {
            this._1448813834jewelSet5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelSet5",_loc2_,param1));
         }
      }
      
      public function set jewelSet9(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1448813830jewelSet9;
         if(_loc2_ !== param1)
         {
            this._1448813830jewelSet9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelSet9",_loc2_,param1));
         }
      }
      
      public function set jewelSet6(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1448813833jewelSet6;
         if(_loc2_ !== param1)
         {
            this._1448813833jewelSet6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelSet6",_loc2_,param1));
         }
      }
      
      public function set jewelSet4(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1448813835jewelSet4;
         if(_loc2_ !== param1)
         {
            this._1448813835jewelSet4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelSet4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get changeBindEqu() : ItemSlotEquFunc
      {
         return this._1087298052changeBindEqu;
      }
      
      [Bindable(event="propertyChange")]
      public function get starAllButton() : BasicGlowButton
      {
         return this._360588801starAllButton;
      }
      
      private function _EquipFunc_AddChild61_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild61 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotMaterial13_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild61",_EquipFunc_AddChild61);
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotEquFunc4_i() : ItemSlotEquFunc
      {
         var _loc1_:ItemSlotEquFunc = new ItemSlotEquFunc();
         changeNameEqu = _loc1_;
         _loc1_.y = 202;
         _loc1_.movable = false;
         _loc1_.x = 52;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changeNameEqu";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function __jewelSet4_doubleClick(param1:MouseEvent) : void
      {
         jewelDel(4);
      }
      
      private function _EquipFunc_DescriptionLabel15_i() : DescriptionLabel
      {
         var _loc1_:DescriptionLabel = null;
         _loc1_ = new DescriptionLabel();
         _EquipFunc_DescriptionLabel15 = _loc1_;
         _loc1_.x = 102;
         _loc1_.y = 262;
         _loc1_.id = "_EquipFunc_DescriptionLabel15";
         BindingManager.executeBindings(this,"_EquipFunc_DescriptionLabel15",_EquipFunc_DescriptionLabel15);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get starInfo1() : BasicTxtButton
      {
         return this._2126732817starInfo1;
      }
      
      [Bindable(event="propertyChange")]
      public function get starInfo2() : BasicTxtButton
      {
         return this._2126732818starInfo2;
      }
      
      [Bindable(event="propertyChange")]
      public function get starInfo3() : BasicTxtButton
      {
         return this._2126732819starInfo3;
      }
      
      private function changePrefixEquChange(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         if(changePrefixEqu.slotData)
         {
            _loc2_ = _core.getTemplateData(changePrefixEqu.slotData.type,changePrefixEqu.slotData.itemId,false);
            if(_loc2_)
            {
               resetItemList();
               _loc3_ = 1;
               while(_loc3_ <= 3)
               {
                  this["changePrefixItemRequire" + _loc3_].type = GamePredef.TBL_ITEM_TEMPLATE;
                  this["changePrefixItemRequire" + _loc3_].giid = _loc2_["requireItem" + _loc3_];
                  this["changePrefixItemRequire" + _loc3_].stackNum = _loc2_["requireNum" + _loc3_];
                  this["changePrefixItem" + _loc3_].requireSlot = {
                     "type":GamePredef.TBL_ITEM_TEMPLATE,
                     "giid":_loc2_["requireItem" + _loc3_],
                     "stackNum":_loc2_["requireNum" + _loc3_]
                  };
                  _itemList.idList.push(this["changePrefixItemRequire" + _loc3_].giid);
                  _loc3_++;
               }
               _itemList.type = 1;
               changePrefixMoney.text = (_loc2_.reqLevel * _loc2_.reqLevel * GamePredef.MONEY_EQUFUNC_MAKE).toString();
               changePrefixItemChange(null);
               _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC).equipBag.showItem(1,_itemList);
            }
         }
      }
      
      private function _EquipFunc_Label9_i() : Label
      {
         var _loc1_:Label = null;
         _loc1_ = new Label();
         changePrefixMoney = _loc1_;
         _loc1_.x = 235;
         _loc1_.y = 262;
         _loc1_.setStyle("color",14026246);
         _loc1_.id = "changePrefixMoney";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_DescriptionLabel3_i() : DescriptionLabel
      {
         var _loc1_:DescriptionLabel = new DescriptionLabel();
         _EquipFunc_DescriptionLabel3 = _loc1_;
         _loc1_.x = 251;
         _loc1_.y = 116;
         _loc1_.id = "_EquipFunc_DescriptionLabel3";
         BindingManager.executeBindings(this,"_EquipFunc_DescriptionLabel3",_EquipFunc_DescriptionLabel3);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild108_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild108 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton33_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild108",_EquipFunc_AddChild108);
         return _loc1_;
      }
      
      public function set starOneButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1900875002starOneButton;
         if(_loc2_ !== param1)
         {
            this._1900875002starOneButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starOneButton",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_AutoTextArea1_i() : AutoTextArea
      {
         var _loc1_:AutoTextArea = null;
         _loc1_ = new AutoTextArea();
         hintTxt = _loc1_;
         _loc1_.setStyle("color",16776960);
         _loc1_.setStyle("borderStyle","none");
         _loc1_.setStyle("horizontalCenter","0");
         _loc1_.setStyle("verticalCenter","0");
         _loc1_.setStyle("backgroundAlpha",0);
         _loc1_.id = "hintTxt";
         BindingManager.executeBindings(this,"hintTxt",hintTxt);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild72_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild72 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotMaterial15_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild72",_EquipFunc_AddChild72);
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotMaterial13_i() : ItemSlotMaterial
      {
         var _loc1_:ItemSlotMaterial = null;
         _loc1_ = new ItemSlotMaterial();
         changeBindItem = _loc1_;
         _loc1_.y = 202;
         _loc1_.haveRequireSlot = false;
         _loc1_.x = 279;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changeBindItem";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function __changeLevelButton_click(param1:MouseEvent) : void
      {
         changeLevel();
      }
      
      private function _EquipFunc_AddChild19_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild19 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_DescriptionLabel3_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild19",_EquipFunc_AddChild19);
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotMaterial4_i() : ItemSlotMaterial
      {
         var _loc1_:ItemSlotMaterial = new ItemSlotMaterial();
         changeLevelItemRequire3 = _loc1_;
         _loc1_.y = 223;
         _loc1_.haveRequireSlot = false;
         _loc1_.x = 167;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changeLevelItemRequire3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get changePrefixItem2() : ItemSlotMaterial
      {
         return this._1534888387changePrefixItem2;
      }
      
      private function _EquipFunc_AddChild119_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild119 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotJewel10_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild119",_EquipFunc_AddChild119);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get changePrefixInfo() : Label
      {
         return this._880802256changePrefixInfo;
      }
      
      public function set changePrefixItemRequire1(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1816799changePrefixItemRequire1;
         if(_loc2_ !== param1)
         {
            this._1816799changePrefixItemRequire1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changePrefixItemRequire1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get changePrefixItem1() : ItemSlotMaterial
      {
         return this._1534888388changePrefixItem1;
      }
      
      public function set changePrefixItemRequire2(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1816798changePrefixItemRequire2;
         if(_loc2_ !== param1)
         {
            this._1816798changePrefixItemRequire2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changePrefixItemRequire2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get changePrefixItem3() : ItemSlotMaterial
      {
         return this._1534888386changePrefixItem3;
      }
      
      private function _EquipFunc_AddChild83_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild83 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotMaterial20_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild83",_EquipFunc_AddChild83);
         return _loc1_;
      }
      
      public function clear() : void
      {
         holeDigViewClear();
         changeLevelViewClear();
         changeNameViewClear();
         changeElementViewClear();
         changeSoulViewClear();
         changeBindViewClear();
         equResolveViewClear();
         changePrefixViewClear();
         starViewClear();
         jewelSetViewClear(true);
         sublimeViewClear();
         restrainViewClear();
      }
      
      public function set sublimeEquip(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1678552859sublimeEquip;
         if(_loc2_ !== param1)
         {
            this._1678552859sublimeEquip = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sublimeEquip",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_RoundedRadioButton1_i() : RoundedRadioButton
      {
         var _loc1_:RoundedRadioButton = null;
         _loc1_ = new RoundedRadioButton();
         _EquipFunc_RoundedRadioButton1 = _loc1_;
         _loc1_.x = 50;
         _loc1_.y = 238;
         _loc1_.value = 1;
         _loc1_.groupName = "changeSoulRadioGroup";
         _loc1_.width = 90;
         _loc1_.selected = true;
         _loc1_.setStyle("color",1961723);
         _loc1_.id = "_EquipFunc_RoundedRadioButton1";
         BindingManager.executeBindings(this,"_EquipFunc_RoundedRadioButton1",_EquipFunc_RoundedRadioButton1);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function onChangeLevel(param1:Object) : void
      {
         var _loc2_:ISlot = null;
         if(param1)
         {
            if(param1.f)
            {
               changeLevelInfo.htmlText = Language.EQUIPTFUNCPANEL_S[33];
               changeLevelItem1.clean();
               changeLevelItem2.clean();
               changeLevelItem3.clean();
               _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][param1.i] = param1.n;
               if(ToolKit.isEqual(changeLevelEqu.slotData.id,param1.e))
               {
                  changeLevelEqu.giid = param1.i;
               }
               _loc2_ = _core.view.getSlot(param1.sid);
               if(_loc2_)
               {
                  _loc2_.giid = param1.i;
               }
               changeLevelEquChange(null);
            }
            else
            {
               changeLevelItemChange(null);
               changeLevelInfo.htmlText = Language.EQUIPTFUNCPANEL_S[34];
            }
         }
         _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC).equipBag.showItem(1,_itemList);
      }
      
      [Bindable(event="propertyChange")]
      public function get changeBindInfo() : Label
      {
         return this._653614683changeBindInfo;
      }
      
      private function _EquipFunc_ItemSlot2_i() : ItemSlot
      {
         var _loc1_:ItemSlot = null;
         _loc1_ = new ItemSlot();
         changeSoulItem = _loc1_;
         _loc1_.y = 202;
         _loc1_.x = 279;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changeSoulItem";
         BindingManager.executeBindings(this,"changeSoulItem",changeSoulItem);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function changePrefix() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         if(Boolean(changePrefixEqu.slotData) && Boolean(changePrefixItem1.slotData) && Boolean(changePrefixItem2.slotData) && Boolean(changePrefixItem3.slotData))
         {
            _loc1_ = getMaterialColor(changePrefixEqu.slotData);
            if(changePrefixItem1.tempBagFlag)
            {
               _loc2_ = Math.ceil(changePrefixItem1.slotData.q / 5);
            }
            else
            {
               _loc2_ = getMaterialColor(changePrefixItem1.slotData);
            }
            if(changePrefixItem2.tempBagFlag)
            {
               _loc3_ = Math.ceil(changePrefixItem2.slotData.q / 5);
            }
            else
            {
               _loc3_ = getMaterialColor(changePrefixItem2.slotData);
            }
            if(changePrefixItem3.tempBagFlag)
            {
               _loc4_ = Math.ceil(changePrefixItem3.slotData.q / 5);
            }
            else
            {
               _loc4_ = getMaterialColor(changePrefixItem3.slotData);
            }
            if(!(_loc2_ == _loc3_ && _loc3_ == _loc4_))
            {
               Alert.show(Language.EQUIPTFUNCPANEL_S[100],"");
               return;
            }
            if(_loc2_ <= 3)
            {
               Alert.show(Language.EQUIPTFUNCPANEL_S[117],"");
               return;
            }
            if(_loc1_ == 4 && _loc2_ < _loc1_)
            {
               Alert.show(Language.EQUIPTFUNCPANEL_S[101],"");
               return;
            }
            if(_core.player.enoughMoneyAuto(1,Number(changePrefixMoney.text)))
            {
               _loc5_ = {};
               _loc5_.e = changePrefixEqu.slotData.id;
               if(changePrefixItem1.tempBagFlag)
               {
                  _loc5_.i1 = {
                     "idx":changePrefixItem1.slotData.idx,
                     "flag":true
                  };
               }
               else
               {
                  _loc5_.i1 = {
                     "idx":changePrefixItem1.slotData.id,
                     "flag":false
                  };
               }
               if(changePrefixItem2.tempBagFlag)
               {
                  _loc5_.i2 = {
                     "idx":changePrefixItem2.slotData.idx,
                     "flag":true
                  };
               }
               else
               {
                  _loc5_.i2 = {
                     "idx":changePrefixItem2.slotData.id,
                     "flag":false
                  };
               }
               if(changePrefixItem3.tempBagFlag)
               {
                  _loc5_.i3 = {
                     "idx":changePrefixItem3.slotData.idx,
                     "flag":true
                  };
               }
               else
               {
                  _loc5_.i3 = {
                     "idx":changePrefixItem3.slotData.id,
                     "flag":false
                  };
               }
               changePrefixButton.enabled = false;
               _core.remote.nc.call("changePrefix",new Responder(onChangePrefix),_loc5_);
            }
            else
            {
               changePrefixInfo.htmlText = Language.EQUIPTFUNCPANEL_S[32];
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get changeElementItem() : ItemSlotMaterial
      {
         return this._2042664543changeElementItem;
      }
      
      private function _EquipFunc_AddChild94_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild94 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_NumericStepper1_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild94",_EquipFunc_AddChild94);
         return _loc1_;
      }
      
      public function set changePrefixItemRequire3(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1816797changePrefixItemRequire3;
         if(_loc2_ !== param1)
         {
            this._1816797changePrefixItemRequire3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changePrefixItemRequire3",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_ItemSlotEquFunc2_i() : ItemSlotEquFunc
      {
         var _loc1_:ItemSlotEquFunc = new ItemSlotEquFunc();
         changeLevelEqu = _loc1_;
         _loc1_.y = 154;
         _loc1_.movable = false;
         _loc1_.x = 52;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changeLevelEqu";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function changeNameViewClear() : void
      {
         if(changeNameEqu)
         {
            changeNameInfo.htmlText = "";
            changeNameButton.enabled = false;
            changeNameEqu.clean();
            changeNameItem.clean();
            changeNameItemRequire.clean();
         }
      }
      
      private function _EquipFunc_DescriptionLabel13_i() : DescriptionLabel
      {
         var _loc1_:DescriptionLabel = null;
         _loc1_ = new DescriptionLabel();
         _EquipFunc_DescriptionLabel13 = _loc1_;
         _loc1_.x = 12;
         _loc1_.y = 116;
         _loc1_.id = "_EquipFunc_DescriptionLabel13";
         BindingManager.executeBindings(this,"_EquipFunc_DescriptionLabel13",_EquipFunc_DescriptionLabel13);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function set restrainBox(param1:ComboBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1784770749restrainBox;
         if(_loc2_ !== param1)
         {
            this._1784770749restrainBox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrainBox",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_Label7_i() : Label
      {
         var _loc1_:Label = null;
         _loc1_ = new Label();
         changeBindInfo = _loc1_;
         _loc1_.y = 255;
         _loc1_.width = 155.5;
         _loc1_.x = 156;
         _loc1_.height = 35;
         _loc1_.setStyle("color",14026246);
         _loc1_.setStyle("textAlign","left");
         _loc1_.id = "changeBindInfo";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function __jewelSet9_doubleClick(param1:MouseEvent) : void
      {
         jewelDel(9);
      }
      
      private function _EquipFunc_AddChild106_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild106 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton31_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild106",_EquipFunc_AddChild106);
         return _loc1_;
      }
      
      private function sublimeEquipChange(param1:Event = null) : void
      {
         var _loc26_:String = null;
         var _loc27_:Object = null;
         var _loc28_:Object = null;
         var _loc29_:String = null;
         var _loc30_:String = null;
         var _loc31_:Object = null;
         var _loc32_:int = 0;
         var _loc33_:int = 0;
         var _loc34_:Number = NaN;
         var _loc35_:int = 0;
         var _loc36_:int = 0;
         var _loc37_:Number = NaN;
         var _loc38_:int = 0;
         if(!sublimeEquip || !sublimeEquip.slotData)
         {
            this.sublimeViewClear();
            return;
         }
         var _loc2_:Object = sublimeEquip.slotData;
         var _loc3_:Object = _core.data.getGameData(_loc2_.type,_loc2_.itemId);
         if(!_loc3_ || !ToolKit.isEqual(_loc3_.binded,1))
         {
            sublimeInitHint();
            return;
         }
         var _loc4_:Object = GameData.d[GamePredef.TBL_EQUIPT_TEMPLATE][_loc3_.tid];
         if(!_loc4_ || int(_loc4_.reqLevel) < int(GamePredef.SUBLIME_LEVEL))
         {
            sublimeInitHint();
            return;
         }
         if(!_loc3_.hasOwnProperty("preNameType") || !_loc3_.hasOwnProperty("color") || Number(_loc3_.preNameType) < 5 || Number(_loc3_.color) < 4)
         {
            sublimeInitHint();
            return;
         }
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(_loc3_.hasOwnProperty("flag"))
         {
            _loc26_ = JSONUtil.JSONfy(_loc3_.flag);
            _loc27_ = _loc26_ ? com.adobe.serialization.json.JSON.decode(_loc26_) : null;
            if(_loc27_)
            {
               _loc5_ = _loc27_.sublimeId ? int(_loc27_.sublimeId) : 0;
               _loc6_ = _loc27_.sublimeAdd ? int(_loc27_.sublimeAdd) : 0;
               _loc7_ = _loc27_.sublimeElement ? int(_loc27_.sublimeElement) : 0;
            }
         }
         if(_loc5_ >= GamePredef.SUBLIME_MAX)
         {
            if(hintTxt)
            {
               hintTxt.htmlText = Language.EQUIPTFUNCPANEL_U[250];
               hintTxt.visible = true;
            }
            sublimeEquip.clean();
            sublimeItem && sublimeItem.clean();
            return;
         }
         if(hintTxt)
         {
            hintTxt.visible = false;
         }
         var _loc8_:int = int(_loc4_.position);
         var _loc9_:int = int(GamePredef.EQUIP_FUNCTYPE[_loc8_]);
         var _loc10_:int = _loc9_ == GamePredef.EQUIP_TYPE_ATTACK ? 1 : 3;
         var _loc11_:int = _loc9_ == GamePredef.EQUIP_TYPE_ATTACK ? 254 : 255;
         var _loc12_:String = Language.EQUIPTFUNCPANEL_U[_loc11_];
         var _loc13_:String = Language.EQUIPTFUNCPANEL_U[256];
         if(_loc7_ > 0)
         {
            _loc13_ = GamePredef.ELEMENT_NAME[_loc7_];
            _loc13_ = "<font color=\'" + GamePredef.ELEMENT_COLOR[_loc7_] + "\'>" + _loc13_ + "</font>";
         }
         var _loc14_:String = "";
         if(_loc5_ <= 0)
         {
            _loc14_ = Language.EQUIPTFUNCPANEL_U[253];
         }
         else
         {
            _loc28_ = GameData.d[GamePredef.TBL_SUBLIMATION][_loc5_];
            if(!_loc28_)
            {
               return;
            }
            _loc29_ = (Number(_loc28_.elementNum) * 100).toFixed(2);
            _loc30_ = LanguageUtil.replace(_loc12_,{
               "element":_loc13_,
               "num":_loc29_
            });
            _loc14_ = Language.EQUIPTFUNCPANEL_U[251];
            _loc31_ = {
               "propName0":"",
               "propNum0":0,
               "propName1":"",
               "propNum1":0,
               "element":_loc30_
            };
            _loc32_ = _loc10_;
            while(_loc32_ < _loc10_ + 2)
            {
               _loc33_ = int(_loc28_["prop" + _loc32_]);
               _loc34_ = Number(_loc28_["propNum" + _loc32_]);
               _loc35_ = _loc32_ - _loc10_;
               _loc31_["propName" + _loc35_] = GamePredef.EQUIPT_PROP_NAME[_loc33_];
               _loc31_["propNum" + _loc35_] = _loc34_;
               _loc32_++;
            }
            _loc14_ = LanguageUtil.replace(_loc14_,_loc31_);
         }
         if(sublimeLeft)
         {
            sublimeLeft.htmlText = _loc14_;
         }
         var _loc15_:int = _loc5_ + 1;
         var _loc16_:Object = GameData.d[GamePredef.TBL_SUBLIMATION][_loc15_];
         if(!_loc16_)
         {
            return;
         }
         var _loc17_:String = (Number(_loc16_.elementNum) * 100).toFixed(2);
         var _loc18_:String = LanguageUtil.replace(_loc12_,{
            "element":_loc13_,
            "num":_loc17_
         });
         var _loc19_:String = Language.EQUIPTFUNCPANEL_U[252];
         var _loc20_:Object = {
            "propName0":"",
            "propNum0":0,
            "propName1":"",
            "propNum1":0,
            "element":_loc18_
         };
         var _loc21_:int = _loc10_;
         while(_loc21_ < _loc10_ + 2)
         {
            _loc36_ = int(_loc16_["prop" + _loc21_]);
            _loc37_ = Number(_loc16_["propNum" + _loc21_]);
            _loc38_ = _loc21_ - _loc10_;
            _loc20_["propName" + _loc38_] = GamePredef.EQUIPT_PROP_NAME[_loc36_];
            _loc20_["propNum" + _loc38_] = _loc37_;
            _loc21_++;
         }
         _loc19_ = LanguageUtil.replace(_loc19_,_loc20_);
         if(sublimeRight)
         {
            sublimeRight.htmlText = _loc19_;
         }
         var _loc22_:int = _loc9_ == GamePredef.EQUIP_TYPE_ATTACK ? 1 : 2;
         var _loc23_:int = int(_loc16_["itemNum" + _loc22_]);
         var _loc24_:String = String(_loc16_["rate"]) + "%";
         if(_core.MC_BIRTH_FLAG[16])
         {
            _loc24_ = String(GamePredef.MC_BIRTH_CONFIG[16][_loc16_["id"]]) + "%";
         }
         if(_loc6_ > 0)
         {
            _loc24_ += " <font color=\'#00FF00\'>+" + _loc6_ + "%</font>";
         }
         var _loc25_:String = Language.EQUIPTFUNCPANEL_U[247];
         _loc25_ = LanguageUtil.replace(_loc25_,{
            "num":_loc23_,
            "rate":_loc24_
         });
         if(sublimeConsume)
         {
            sublimeConsume.htmlText = _loc25_;
         }
      }
      
      private function _EquipFunc_ItemSlotMaterial11_i() : ItemSlotMaterial
      {
         var _loc1_:ItemSlotMaterial = null;
         _loc1_ = new ItemSlotMaterial();
         changeElementItem = _loc1_;
         _loc1_.y = 202;
         _loc1_.haveRequireSlot = false;
         _loc1_.x = 279;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changeElementItem";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_DescriptionLabel1_i() : DescriptionLabel
      {
         var _loc1_:DescriptionLabel = new DescriptionLabel();
         holeDigInfo = _loc1_;
         _loc1_.y = 228;
         _loc1_.setStyle("horizontalCenter","0");
         _loc1_.id = "holeDigInfo";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function set holeDigDiamond(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1864458066holeDigDiamond;
         if(_loc2_ !== param1)
         {
            this._1864458066holeDigDiamond = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"holeDigDiamond",_loc2_,param1));
         }
      }
      
      private function starOne() : void
      {
         var equIns:Object = null;
         var starIns:Object = null;
         var func:Function = null;
         var e:CloseEvent = null;
         if(Boolean(starItem.slotData) && Boolean(starJewel.slotData))
         {
            equIns = _core.data.gameData[starItem.slotData.type][starItem.slotData.itemId];
            starIns = _core.data.gameData[starJewel.slotData.type][starJewel.slotData.itemId];
            if(Boolean(equIns) && Boolean(starIns))
            {
               func = function(param1:CloseEvent):void
               {
                  if(param1.detail == Alert.YES)
                  {
                     _core.remote.call("starOne",new Responder(onStar),starBasic.value,starItem.slotData.id,starJewel.slotData.id);
                     starOneButton.enabled = false;
                     starAllButton.enabled = false;
                  }
               };
               if(ToolKit.isEqual(equIns.binded,0) && ToolKit.isEqual(starIns.binded,1))
               {
                  Alert.show(Language.EQUIPTFUNCPANEL_S[102],"",Alert.YES | Alert.NO,null,func);
               }
               else
               {
                  e = new CloseEvent("");
                  e.detail = Alert.YES;
                  func(e);
               }
            }
         }
      }
      
      private function _EquipFunc_AddChild17_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild17 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_Label2_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild17",_EquipFunc_AddChild17);
         return _loc1_;
      }
      
      private function _EquipFunc_BasicTxtButton18_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         _EquipFunc_BasicTxtButton18 = _loc1_;
         _loc1_.x = 151;
         _loc1_.y = 173;
         _loc1_.width = 76;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton18";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton18",_EquipFunc_BasicTxtButton18);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get descriptionlabel1() : DescriptionLabel
      {
         return this._1103497543descriptionlabel1;
      }
      
      private function _EquipFunc_ItemSlotMaterial2_i() : ItemSlotMaterial
      {
         var _loc1_:ItemSlotMaterial = new ItemSlotMaterial();
         changeLevelItemRequire1 = _loc1_;
         _loc1_.y = 153;
         _loc1_.haveRequireSlot = false;
         _loc1_.x = 167;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changeLevelItemRequire1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild117_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild117 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotJewel8_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild117",_EquipFunc_AddChild117);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild70_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild70 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotEquFunc8_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild70",_EquipFunc_AddChild70);
         return _loc1_;
      }
      
      private function getMaterialColor(param1:Object) : int
      {
         var _loc2_:Object = _core.data.getGameData(param1.type,param1.itemId);
         if(_loc2_)
         {
            return _loc2_.color;
         }
         return -1;
      }
      
      private function _EquipFunc_AddChild81_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild81 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotMaterial18_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild81",_EquipFunc_AddChild81);
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotMaterial22_i() : ItemSlotMaterial
      {
         var _loc1_:ItemSlotMaterial = null;
         _loc1_ = new ItemSlotMaterial();
         changePrefixItem3 = _loc1_;
         _loc1_.y = 225;
         _loc1_.haveRequireSlot = true;
         _loc1_.x = 279;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changePrefixItem3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_BasicTxtButton29_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         _EquipFunc_BasicTxtButton29 = _loc1_;
         _loc1_.x = 270;
         _loc1_.y = 132;
         _loc1_.width = 76;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton29";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton29",_EquipFunc_BasicTxtButton29);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get lvtip() : BasicTxtButton
      {
         return this._103370449lvtip;
      }
      
      private function _EquipFunc_AddChild28_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild28 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotMaterial9_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild28",_EquipFunc_AddChild28);
         return _loc1_;
      }
      
      private function _EquipFunc_Label18_i() : Label
      {
         var _loc1_:Label = null;
         _loc1_ = new Label();
         restrainHint = _loc1_;
         _loc1_.y = 205;
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("color",16776960);
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "restrainHint";
         BindingManager.executeBindings(this,"restrainHint",restrainHint);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function onGetStarNum(param1:int) : void
      {
         starNum = param1;
         setStarInfo();
      }
      
      public function set changeLevelMoney(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._650132332changeLevelMoney;
         if(_loc2_ !== param1)
         {
            this._650132332changeLevelMoney = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeLevelMoney",_loc2_,param1));
         }
      }
      
      private function changeElementViewClear() : void
      {
         if(changeElementEqu)
         {
            changeElementInfo.htmlText = "";
            changeElementButton.enabled = false;
            changeElementEqu.clean();
            changeElementItem.clean();
            changeElementItemRequire.clean();
         }
      }
      
      public function set holeDigInfo(param1:DescriptionLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1214703760holeDigInfo;
         if(_loc2_ !== param1)
         {
            this._1214703760holeDigInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"holeDigInfo",_loc2_,param1));
         }
      }
      
      public function set changeLevelItemRequire3(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._567481205changeLevelItemRequire3;
         if(_loc2_ !== param1)
         {
            this._567481205changeLevelItemRequire3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeLevelItemRequire3",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_AddChild128_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild128 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlot3_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild128",_EquipFunc_AddChild128);
         return _loc1_;
      }
      
      public function set changeLevelItemRequire1(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._567481203changeLevelItemRequire1;
         if(_loc2_ !== param1)
         {
            this._567481203changeLevelItemRequire1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeLevelItemRequire1",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_AddChild92_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild92 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_DescriptionLabel15_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild92",_EquipFunc_AddChild92);
         return _loc1_;
      }
      
      public function set changeSoulItem(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1454472054changeSoulItem;
         if(_loc2_ !== param1)
         {
            this._1454472054changeSoulItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeSoulItem",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_AddChild39_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild39 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicGlowButton4_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild39",_EquipFunc_AddChild39);
         return _loc1_;
      }
      
      private function onSureChangeElement(param1:Object) : void
      {
         changeElementButton.enabled = true;
         if(param1.f)
         {
            if(param1.f == "true")
            {
               changeElementInfo.htmlText = Language.EQUIPTFUNCPANEL_S[30] + "<font color=\'" + GamePredef.ELEMENT_COLOR[param1.e] + "\'>[" + GamePredef.ELEMENT_NAME[param1.e] + "]</font>";
            }
            else
            {
               changeElementInfo.htmlText = "";
            }
         }
      }
      
      private function _EquipFunc_AddChild139_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild139 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_HBox3_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild139",_EquipFunc_AddChild139);
         return _loc1_;
      }
      
      public function set changeLevelItemRequire2(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._567481204changeLevelItemRequire2;
         if(_loc2_ !== param1)
         {
            this._567481204changeLevelItemRequire2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeLevelItemRequire2",_loc2_,param1));
         }
      }
      
      public function set changeLevelEquFinal(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1321368703changeLevelEquFinal;
         if(_loc2_ !== param1)
         {
            this._1321368703changeLevelEquFinal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeLevelEquFinal",_loc2_,param1));
         }
      }
      
      public function set changeElementButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1548158changeElementButton;
         if(_loc2_ !== param1)
         {
            this._1548158changeElementButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeElementButton",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get changeLevelEqu() : ItemSlotEquFunc
      {
         return this._1877761781changeLevelEqu;
      }
      
      public function set changePrefixMoney(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1531334786changePrefixMoney;
         if(_loc2_ !== param1)
         {
            this._1531334786changePrefixMoney = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changePrefixMoney",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_DescriptionLabel11_i() : DescriptionLabel
      {
         var _loc1_:DescriptionLabel = null;
         _loc1_ = new DescriptionLabel();
         _EquipFunc_DescriptionLabel11 = _loc1_;
         _loc1_.x = 255;
         _loc1_.y = 144;
         _loc1_.id = "_EquipFunc_DescriptionLabel11";
         BindingManager.executeBindings(this,"_EquipFunc_DescriptionLabel11",_EquipFunc_DescriptionLabel11);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function set changePrefixEqu(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1552437369changePrefixEqu;
         if(_loc2_ !== param1)
         {
            this._1552437369changePrefixEqu = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changePrefixEqu",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_BasicGlowButton13_i() : BasicGlowButton
      {
         var _loc1_:BasicGlowButton = null;
         _loc1_ = new BasicGlowButton();
         _EquipFunc_BasicGlowButton13 = _loc1_;
         _loc1_.styleName = "BtnStdRed";
         _loc1_.height = 23;
         _loc1_.y = 285;
         _loc1_.width = 50;
         _loc1_.setStyle("horizontalCenter","0");
         _loc1_.addEventListener("click",___EquipFunc_BasicGlowButton13_click);
         _loc1_.id = "_EquipFunc_BasicGlowButton13";
         BindingManager.executeBindings(this,"_EquipFunc_BasicGlowButton13",_EquipFunc_BasicGlowButton13);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_Label5_i() : Label
      {
         var _loc1_:Label = null;
         _loc1_ = new Label();
         changeSoulInfo = _loc1_;
         _loc1_.y = 249;
         _loc1_.setStyle("horizontalCenter","26");
         _loc1_.setStyle("color",14026246);
         _loc1_.id = "changeSoulInfo";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild104_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild104 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton29_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild104",_EquipFunc_AddChild104);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get changePrefixItemRequire3() : ItemSlotMaterial
      {
         return this._1816797changePrefixItemRequire3;
      }
      
      [Bindable(event="propertyChange")]
      public function get changePrefixItemRequire1() : ItemSlotMaterial
      {
         return this._1816799changePrefixItemRequire1;
      }
      
      [Bindable(event="propertyChange")]
      public function get changePrefixItemRequire2() : ItemSlotMaterial
      {
         return this._1816798changePrefixItemRequire2;
      }
      
      [Bindable(event="propertyChange")]
      public function get sublimeEquip() : ItemSlotEquFunc
      {
         return this._1678552859sublimeEquip;
      }
      
      public function set equView(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1505596530equView;
         if(_loc2_ !== param1)
         {
            this._1505596530equView = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equView",_loc2_,param1));
         }
      }
      
      public function __starOneButton_click(param1:MouseEvent) : void
      {
         starOne();
      }
      
      private function _EquipFunc_AddChild15_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild15 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotMaterial6_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild15",_EquipFunc_AddChild15);
         return _loc1_;
      }
      
      private function mouseAction(param1:MouseEvent, param2:uint) : void
      {
         param1.stopImmediatePropagation();
         if(_core.state == GamePredef.ST_BATTLE)
         {
            return;
         }
         _core.view.showMouse(ResManager.MOUSE_ACTION_IMG[GamePredef.ACTION_BIND]);
         _core.view.mouseState = param2;
         _core.view.mouseTargetType = GamePredef.MOUSE_TARGET_CHA;
      }
      
      private function _EquipFunc_BasicTxtButton16_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         _EquipFunc_BasicTxtButton16 = _loc1_;
         _loc1_.x = 266;
         _loc1_.y = 173;
         _loc1_.width = 76;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton16";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton16",_EquipFunc_BasicTxtButton16);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild115_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild115 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotJewel6_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild115",_EquipFunc_AddChild115);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get restrainBox() : ComboBox
      {
         return this._1784770749restrainBox;
      }
      
      private function _EquipFunc_AddChild26_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild26 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotEquFunc4_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild26",_EquipFunc_AddChild26);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild8_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild8 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicGlowButton2_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild8",_EquipFunc_AddChild8);
         return _loc1_;
      }
      
      private function _EquipFunc_HBox3_i() : HBox
      {
         var _loc1_:HBox = null;
         _loc1_ = new HBox();
         _EquipFunc_HBox3 = _loc1_;
         _loc1_.y = 180;
         _loc1_.setStyle("horizontalGap",0);
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.setStyle("horizontalCenter","0");
         _loc1_.id = "_EquipFunc_HBox3";
         BindingManager.executeBindings(this,"_EquipFunc_HBox3",_EquipFunc_HBox3);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         _loc1_.addChild(_EquipFunc_Label19_i());
         _loc1_.addChild(_EquipFunc_ComboBox1_i());
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild126_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild126 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_Label13_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild126",_EquipFunc_AddChild126);
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotMaterial20_i() : ItemSlotMaterial
      {
         var _loc1_:ItemSlotMaterial = null;
         _loc1_ = new ItemSlotMaterial();
         changePrefixItem1 = _loc1_;
         _loc1_.y = 155;
         _loc1_.haveRequireSlot = true;
         _loc1_.x = 279;
         _loc1_.setStyle("borderStyle","none");
         _loc1_.id = "changePrefixItem1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function changeLevelViewClear() : void
      {
         if(changeLevelEqu)
         {
            changeLevelInfo.htmlText = "";
            changeLevelButton.enabled = false;
            changeLevelEqu.clean();
            changeLevelEquFinal.clean();
            changeLevelMoney.text = "";
            changeLevelItem1.clean();
            changeLevelItem2.clean();
            changeLevelItem3.clean();
            changeLevelItemRequire1.clean();
            changeLevelItemRequire2.clean();
            changeLevelItemRequire3.clean();
            lvtip.text = "";
         }
      }
      
      private function _EquipFunc_State9_c() : State
      {
         var _loc1_:State = null;
         _loc1_ = new State();
         _loc1_.name = "state8";
         _loc1_.overrides = [_EquipFunc_AddChild93_i(),_EquipFunc_AddChild94_i(),_EquipFunc_AddChild95_i(),_EquipFunc_AddChild96_i(),_EquipFunc_AddChild97_i(),_EquipFunc_AddChild98_i(),_EquipFunc_AddChild99_i(),_EquipFunc_AddChild100_i(),_EquipFunc_AddChild101_i(),_EquipFunc_AddChild102_i(),_EquipFunc_AddChild103_i(),_EquipFunc_AddChild104_i(),_EquipFunc_AddChild105_i(),_EquipFunc_AddChild106_i(),_EquipFunc_AddChild107_i(),_EquipFunc_AddChild108_i()];
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild90_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild90 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton23_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild90",_EquipFunc_AddChild90);
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotJewel9_i() : ItemSlotJewel
      {
         var _loc1_:ItemSlotJewel = null;
         _loc1_ = new ItemSlotJewel();
         jewelSet9 = _loc1_;
         _loc1_.y = 240;
         _loc1_.x = 216.5;
         _loc1_.movable = false;
         _loc1_.doubleClickEnabled = true;
         _loc1_.addEventListener("doubleClick",__jewelSet9_doubleClick);
         _loc1_.id = "jewelSet9";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get holeDigDiamond() : ItemSlotMaterial
      {
         return this._1864458066holeDigDiamond;
      }
      
      private function sublimeHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         if(!sublimeEquip || !sublimeEquip.slotData)
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[162]);
            return;
         }
         if(Boolean(sublimeItem) && Boolean(sublimeItem.slotData) && sublimeItem.slotData.tid != GamePredef.SUBLIME_ITEMID)
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[164]);
            return;
         }
         var _loc2_:Object = sublimeEquip.slotData;
         var _loc3_:Object = _core.data.getGameData(_loc2_.type,_loc2_.itemId);
         if(!_loc3_ || !ToolKit.isEqual(_loc3_.binded,1))
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[162]);
            return;
         }
         var _loc4_:Object = GameData.d[GamePredef.TBL_EQUIPT_TEMPLATE][_loc3_.tid];
         if(!_loc4_ || int(_loc4_.reqLevel) < int(GamePredef.SUBLIME_LEVEL))
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[162]);
            return;
         }
         if(!_loc3_.hasOwnProperty("preNameType") || !_loc3_.hasOwnProperty("color") || Number(_loc3_.preNameType) < 5 || Number(_loc3_.color) < 4)
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[162]);
            return;
         }
         var _loc5_:String = _loc3_.flag ? JSONUtil.JSONfy(_loc3_.flag) : "";
         var _loc6_:Object = _loc5_ ? com.adobe.serialization.json.JSON.decode(_loc5_) : null;
         var _loc7_:int = _loc6_ ? int(_loc6_.sublimeId) : 0;
         if(_loc7_ >= GamePredef.SUBLIME_MAX)
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[163]);
            return;
         }
         var _loc8_:Number = Boolean(sublimeItem) && Boolean(sublimeItem.slotData) ? Number(sublimeItem.slotData.id) : Number(null);
         var _loc9_:Boolean = Boolean(autoSublime) && autoSublime.selected;
         _core.remote.call("sublimeEquip",new Responder(onSublimeEquip),sublimeEquip.slotData.id,_loc8_,_loc9_);
      }
      
      private function onSureChangeSoul(param1:Object) : void
      {
         changeSoulButton.enabled = true;
         if(param1)
         {
            if(Boolean(param1.f) && this.visible)
            {
               if(param1.f == "true")
               {
                  changeSoulInfo.htmlText = Language.EQUIPTFUNCPANEL_S[55] + GamePredef.EQUIPT_ACTIVE_NAME[param1.activeProp] + " " + param1.activePropNum + "%";
               }
               else
               {
                  changeSoulInfo.htmlText = "";
               }
            }
         }
      }
      
      public function set sublimeLeft(param1:AutoTextArea) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1885319236sublimeLeft;
         if(_loc2_ !== param1)
         {
            this._1885319236sublimeLeft = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sublimeLeft",_loc2_,param1));
         }
      }
      
      public function set resolvegetItem2(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._116825163resolvegetItem2;
         if(_loc2_ !== param1)
         {
            this._116825163resolvegetItem2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resolvegetItem2",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_AddChild37_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild37 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotMaterial10_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild37",_EquipFunc_AddChild37);
         return _loc1_;
      }
      
      public function set restrainEquip(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1469908056restrainEquip;
         if(_loc2_ !== param1)
         {
            this._1469908056restrainEquip = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrainEquip",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get changeElementButton() : BasicGlowButton
      {
         return this._1548158changeElementButton;
      }
      
      private function _EquipFunc_AddChild137_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild137 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlot4_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild137",_EquipFunc_AddChild137);
         return _loc1_;
      }
      
      private function _EquipFunc_State12_c() : State
      {
         var _loc1_:State = null;
         _loc1_ = new State();
         _loc1_.name = "state11";
         _loc1_.overrides = [_EquipFunc_AddChild134_i(),_EquipFunc_AddChild135_i(),_EquipFunc_AddChild136_i(),_EquipFunc_AddChild137_i(),_EquipFunc_AddChild138_i(),_EquipFunc_AddChild139_i(),_EquipFunc_AddChild140_i(),_EquipFunc_AddChild141_i(),_EquipFunc_AddChild142_i(),_EquipFunc_AddChild143_i()];
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get changePrefixMoney() : Label
      {
         return this._1531334786changePrefixMoney;
      }
      
      [Bindable(event="propertyChange")]
      public function get changePrefixEqu() : ItemSlotEquFunc
      {
         return this._1552437369changePrefixEqu;
      }
      
      [Bindable(event="propertyChange")]
      public function get holeDigInfo() : DescriptionLabel
      {
         return this._1214703760holeDigInfo;
      }
      
      private function _EquipFunc_Label3_i() : Label
      {
         var _loc1_:Label = new Label();
         changeNameInfo = _loc1_;
         _loc1_.y = 249;
         _loc1_.setStyle("horizontalCenter","0");
         _loc1_.setStyle("color",14026246);
         _loc1_.id = "changeNameInfo";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_BasicGlowButton11_i() : BasicGlowButton
      {
         var _loc1_:BasicGlowButton = null;
         _loc1_ = new BasicGlowButton();
         jewelSetButton = _loc1_;
         _loc1_.styleName = "BtnStdRed";
         _loc1_.x = 120;
         _loc1_.width = 50;
         _loc1_.y = 286;
         _loc1_.addEventListener("click",__jewelSetButton_click);
         _loc1_.id = "jewelSetButton";
         BindingManager.executeBindings(this,"jewelSetButton",jewelSetButton);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public function set resolvegetItem1(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._116825164resolvegetItem1;
         if(_loc2_ !== param1)
         {
            this._116825164resolvegetItem1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resolvegetItem1",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_AddChild102_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild102 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_Label10_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild102",_EquipFunc_AddChild102);
         return _loc1_;
      }
      
      public function set resolvegetItem3(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._116825162resolvegetItem3;
         if(_loc2_ !== param1)
         {
            this._116825162resolvegetItem3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resolvegetItem3",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_AddChild48_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild48 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlot2_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild48",_EquipFunc_AddChild48);
         return _loc1_;
      }
      
      public function __jewelSet3_doubleClick(param1:MouseEvent) : void
      {
         jewelDel(3);
      }
      
      private function _EquipFunc_Label16_i() : Label
      {
         var _loc1_:Label = null;
         _loc1_ = new Label();
         _EquipFunc_Label16 = _loc1_;
         _loc1_.x = 105;
         _loc1_.y = 115;
         _loc1_.setStyle("color",16777215);
         _loc1_.id = "_EquipFunc_Label16";
         BindingManager.executeBindings(this,"_EquipFunc_Label16",_EquipFunc_Label16);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_BasicTxtButton27_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         starInfo2 = _loc1_;
         _loc1_.y = 204;
         _loc1_.label = "100%";
         _loc1_.x = 320;
         _loc1_.width = 50;
         _loc1_.height = 18;
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "starInfo2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function holeDig() : void
      {
         if(Boolean(holeDigItem.slotData) && Boolean(holeDigDiamond.slotData))
         {
            holeDigButton.enabled = false;
            _core.remote.call("holeDig",new Responder(onHoleDig),holeDigDiamond.slotData.id,holeDigItem.slotData.id);
         }
      }
      
      public function set jewelSet10(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1963555970jewelSet10;
         if(_loc2_ !== param1)
         {
            this._1963555970jewelSet10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelSet10",_loc2_,param1));
         }
      }
      
      public function set resolveEqu(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1599588419resolveEqu;
         if(_loc2_ !== param1)
         {
            this._1599588419resolveEqu = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resolveEqu",_loc2_,param1));
         }
      }
      
      private function tabBtnBClick(param1:int) : void
      {
         this.currentState = "state" + param1;
         selectedIndx = param1;
         var _loc2_:IntroText = _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC).introText;
         _loc2_.height = selectedIndx == 10 ? 80 : 100;
         _loc2_.htmlText = Language.EQUIPTFUNCPANEL_S[introArr3[param1]];
         tabBtnBUpdate();
      }
      
      private function _EquipFunc_AddChild13_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild13 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotMaterial4_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild13",_EquipFunc_AddChild13);
         return _loc1_;
      }
      
      private function _EquipFunc_BasicTxtButton14_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         _EquipFunc_BasicTxtButton14 = _loc1_;
         _loc1_.x = 29;
         _loc1_.y = 173;
         _loc1_.width = 76;
         _loc1_.height = 18;
         _loc1_.setStyle("paddingLeft",0);
         _loc1_.setStyle("paddingRight",0);
         _loc1_.id = "_EquipFunc_BasicTxtButton14";
         BindingManager.executeBindings(this,"_EquipFunc_BasicTxtButton14",_EquipFunc_BasicTxtButton14);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild59_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild59 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotEquFunc7_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild59",_EquipFunc_AddChild59);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild113_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild113 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_ItemSlotJewel4_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild113",_EquipFunc_AddChild113);
         return _loc1_;
      }
      
      private function _EquipFunc_ItemSlotJewel7_i() : ItemSlotJewel
      {
         var _loc1_:ItemSlotJewel = null;
         _loc1_ = new ItemSlotJewel();
         jewelSet7 = _loc1_;
         _loc1_.y = 241;
         _loc1_.x = 116.5;
         _loc1_.movable = false;
         _loc1_.doubleClickEnabled = true;
         _loc1_.addEventListener("doubleClick",__jewelSet7_doubleClick);
         _loc1_.id = "jewelSet7";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get sublimeLeft() : AutoTextArea
      {
         return this._1885319236sublimeLeft;
      }
      
      [Bindable(event="propertyChange")]
      public function get resolveEqu() : ItemSlotEquFunc
      {
         return this._1599588419resolveEqu;
      }
      
      private function _EquipFunc_BasicTxtButton25_i() : BasicTxtButton
      {
         var _loc1_:BasicTxtButton = null;
         _loc1_ = new BasicTxtButton();
         starInfo3 = _loc1_;
         _loc1_.y = 286;
         _loc1_.label = "";
         _loc1_.x = 280;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("color",16468278);
         _loc1_.id = "starInfo3";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild24_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild24 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_DescriptionLabel4_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild24",_EquipFunc_AddChild24);
         return _loc1_;
      }
      
      private function _EquipFunc_State7_c() : State
      {
         var _loc1_:State = null;
         _loc1_ = new State();
         _loc1_.name = "state6";
         _loc1_.overrides = [_EquipFunc_AddChild70_i(),_EquipFunc_AddChild71_i(),_EquipFunc_AddChild72_i(),_EquipFunc_AddChild73_i(),_EquipFunc_AddChild74_i(),_EquipFunc_AddChild75_i(),_EquipFunc_AddChild76_i()];
         return _loc1_;
      }
      
      private function _EquipFunc_HBox1_i() : HBox
      {
         var _loc1_:HBox = null;
         _loc1_ = new HBox();
         _EquipFunc_HBox1 = _loc1_;
         _loc1_.x = 85;
         _loc1_.y = 155;
         _loc1_.setStyle("horizontalGap",0);
         _loc1_.id = "_EquipFunc_HBox1";
         BindingManager.executeBindings(this,"_EquipFunc_HBox1",_EquipFunc_HBox1);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         _loc1_.addChild(_EquipFunc_AutoTextArea2_i());
         _loc1_.addChild(_EquipFunc_Canvas4_c());
         _loc1_.addChild(_EquipFunc_AutoTextArea3_i());
         return _loc1_;
      }
      
      private function _EquipFunc_Label14_i() : Label
      {
         var _loc1_:Label = null;
         _loc1_ = new Label();
         sublimeConsume = _loc1_;
         _loc1_.y = 240;
         _loc1_.percentWidth = 100;
         _loc1_.setStyle("color",16777215);
         _loc1_.setStyle("textAlign","center");
         _loc1_.id = "sublimeConsume";
         BindingManager.executeBindings(this,"sublimeConsume",sublimeConsume);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild124_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild124 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton35_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild124",_EquipFunc_AddChild124);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild6_i() : AddChild
      {
         var _loc1_:AddChild = new AddChild();
         _EquipFunc_AddChild6 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton2_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild6",_EquipFunc_AddChild6);
         return _loc1_;
      }
      
      public function set changeBindSucc(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._653919215changeBindSucc;
         if(_loc2_ !== param1)
         {
            this._653919215changeBindSucc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeBindSucc",_loc2_,param1));
         }
      }
      
      public function set btnResolve(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._92144656btnResolve;
         if(_loc2_ !== param1)
         {
            this._92144656btnResolve = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnResolve",_loc2_,param1));
         }
      }
      
      private function _EquipFunc_State10_c() : State
      {
         var _loc1_:State = null;
         _loc1_ = new State();
         _loc1_.name = "state9";
         _loc1_.overrides = [_EquipFunc_AddChild109_i(),_EquipFunc_AddChild110_i(),_EquipFunc_AddChild111_i(),_EquipFunc_AddChild112_i(),_EquipFunc_AddChild113_i(),_EquipFunc_AddChild114_i(),_EquipFunc_AddChild115_i(),_EquipFunc_AddChild116_i(),_EquipFunc_AddChild117_i(),_EquipFunc_AddChild118_i(),_EquipFunc_AddChild119_i(),_EquipFunc_AddChild120_i(),_EquipFunc_AddChild121_i(),_EquipFunc_AddChild122_i(),_EquipFunc_AddChild123_i(),_EquipFunc_AddChild124_i()];
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild35_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild35 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_BasicTxtButton10_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild35",_EquipFunc_AddChild35);
         return _loc1_;
      }
      
      private function _EquipFunc_AddChild135_i() : AddChild
      {
         var _loc1_:AddChild = null;
         _loc1_ = new AddChild();
         _EquipFunc_AddChild135 = _loc1_;
         _loc1_.position = "lastChild";
         _loc1_.targetFactory = new DeferredInstanceFromFunction(_EquipFunc_Label17_i);
         BindingManager.executeBindings(this,"_EquipFunc_AddChild135",_EquipFunc_AddChild135);
         return _loc1_;
      }
      
      public function set changeElementInfo(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2042658810changeElementInfo;
         if(_loc2_ !== param1)
         {
            this._2042658810changeElementInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeElementInfo",_loc2_,param1));
         }
      }
   }
}

