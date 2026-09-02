package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.CharactorShowCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
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
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Text;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class AnniversarySignInPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const FAIRY_BACKGROUND:Class = AnniversarySignInPanel_FAIRY_BACKGROUND;
      
      private var _3236047img2:Image;
      
      private var _2143218000itemText0:Text;
      
      private var _3236049img4:Image;
      
      private var _879099501signInCount:Text;
      
      private var _100525953item4:ItemSlot;
      
      private var ASI_SIGNIN_DATE_LIST:* = ["0919","0920","0921","0922","0923","0924"];
      
      private var _3236050img5:Image;
      
      private var _2143218001itemText1:Text;
      
      private var _3034453btn1:BasicGlowButton;
      
      private var _3034455btn3:BasicGlowButton;
      
      private var _100525950item1:ItemSlot;
      
      private var _3034457btn5:BasicGlowButton;
      
      private var _2143218002itemText2:Text;
      
      private var today:String = null;
      
      private var _1144939184btn_getBigAward:Button;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _AnniversarySignInPanel_Image10:Image;
      
      public var _AnniversarySignInPanel_Image11:Image;
      
      public var _AnniversarySignInPanel_Image12:Image;
      
      public var _AnniversarySignInPanel_Image13:Image;
      
      private var _2143218003itemText3:Text;
      
      public var _AnniversarySignInPanel_Image1:Image;
      
      public var _AnniversarySignInPanel_Image2:Image;
      
      public var _AnniversarySignInPanel_Image3:Image;
      
      public var _AnniversarySignInPanel_Image5:Image;
      
      public var _AnniversarySignInPanel_Image6:Image;
      
      public var _AnniversarySignInPanel_Image7:Image;
      
      public var _AnniversarySignInPanel_Image20:Image;
      
      public var _AnniversarySignInPanel_Image9:Image;
      
      public var _AnniversarySignInPanel_Image4:Image;
      
      private var _100525952item3:ItemSlot;
      
      public var _AnniversarySignInPanel_Image8:Image;
      
      public var ASI_SIGNIN_BIGAWARD:* = 7242;
      
      private var _2143218004itemText4:Text;
      
      private var _core:Core = Core.getInstance();
      
      private var _3236046img1:Image;
      
      private var _3236048img3:Image;
      
      private var _100525949item0:ItemSlot;
      
      mx_internal var _watchers:Array = [];
      
      private var _2143218005itemText5:Text;
      
      private var _3034452btn0:BasicGlowButton;
      
      private var _firstTimeFlag:Boolean = true;
      
      private var _3034454btn2:BasicGlowButton;
      
      private var _3034456btn4:BasicGlowButton;
      
      private var _100525954item5:ItemSlot;
      
      public var _AnniversarySignInPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      public var ASI_SIGNIN_AWARD_MAP:Object = {
         "0":{
            "i":7247,
            "n":1
         },
         "1":{
            "i":7247,
            "n":1
         },
         "2":{
            "i":7247,
            "n":1
         },
         "3":{
            "i":7247,
            "n":1
         },
         "4":{
            "i":7247,
            "n":1
         },
         "5":{
            "i":7247,
            "n":1
         }
      };
      
      private var _100525951item2:ItemSlot;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _307382965showCanvas:CharactorShowCanvas;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":619,
               "height":465,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_AnniversarySignInPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_AnniversarySignInPanel_Image1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":5,
                        "y":32
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_AnniversarySignInPanel_Image2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":230,
                        "y":50
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_AnniversarySignInPanel_Image3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":355,
                        "y":50
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_AnniversarySignInPanel_Image4",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":480,
                        "y":50
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_AnniversarySignInPanel_Image5",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":230,
                        "y":255
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_AnniversarySignInPanel_Image6",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":355,
                        "y":255
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_AnniversarySignInPanel_Image7",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":480,
                        "y":255
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_AnniversarySignInPanel_Image8",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":230,
                        "y":50
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_AnniversarySignInPanel_Image9",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":355,
                        "y":50
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_AnniversarySignInPanel_Image10",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":480,
                        "y":50
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_AnniversarySignInPanel_Image11",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":230,
                        "y":255
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_AnniversarySignInPanel_Image12",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":355,
                        "y":255
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_AnniversarySignInPanel_Image13",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":480,
                        "y":255
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"item0",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "movable":false,
                        "acceptable":false,
                        "x":270,
                        "y":115
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"item1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "movable":false,
                        "acceptable":false,
                        "x":395,
                        "y":115
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"item2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "movable":false,
                        "acceptable":false,
                        "x":520,
                        "y":115
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"item3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "movable":false,
                        "acceptable":false,
                        "x":270,
                        "y":320
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"item4",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "movable":false,
                        "acceptable":false,
                        "x":395,
                        "y":320
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"item5",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "movable":false,
                        "acceptable":false,
                        "x":520,
                        "y":320
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"img0",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":230,
                        "y":50,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"img1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":355,
                        "y":50,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"img2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":480,
                        "y":50,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"img3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":230,
                        "y":255,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"img4",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":355,
                        "y":255,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"img5",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":480,
                        "y":255,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"_AnniversarySignInPanel_Image20",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":15,
                        "y":42
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":CharactorShowCanvas,
                  "id":"showCanvas",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":160,
                        "y":245,
                        "height":13,
                        "width":10
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Text,
                  "id":"itemText0",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"",
                        "x":230,
                        "y":170,
                        "height":158
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Text,
                  "id":"itemText1",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"",
                        "x":355,
                        "y":170,
                        "height":158
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Text,
                  "id":"itemText2",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"",
                        "x":480,
                        "y":170,
                        "height":158
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Text,
                  "id":"itemText3",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"",
                        "x":230,
                        "y":375,
                        "height":158
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Text,
                  "id":"itemText4",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"",
                        "x":355,
                        "y":375,
                        "height":158
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Text,
                  "id":"itemText5",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"",
                        "x":480,
                        "y":375,
                        "height":158
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Text,
                  "id":"signInCount",
                  "stylesFactory":function():void
                  {
                     this.left = "70";
                     this.fontSize = 12;
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":340,
                        "text":"累计签到: 0/6天",
                        "width":418,
                        "height":158
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btn_getBigAward",
                  "events":{"click":"__btn_getBigAward_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnASIGETAWARD",
                        "width":121,
                        "height":39,
                        "x":58,
                        "y":370,
                        "enabled":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btn0",
                  "events":{"click":"__btn0_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdGreen",
                        "label":"未开始",
                        "x":265,
                        "y":210
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btn1",
                  "events":{"click":"__btn1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdGreen",
                        "label":"未开始",
                        "x":390,
                        "y":210
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btn2",
                  "events":{"click":"__btn2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdGreen",
                        "label":"未开始",
                        "x":515,
                        "y":210
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btn3",
                  "events":{"click":"__btn3_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdGreen",
                        "label":"未开始",
                        "x":265,
                        "y":415
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btn4",
                  "events":{"click":"__btn4_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdGreen",
                        "label":"未开始",
                        "x":390,
                        "y":415
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btn5",
                  "events":{"click":"__btn5_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdGreen",
                        "label":"未开始",
                        "x":515,
                        "y":415
                     };
                  }
               })]
            };
         }
      });
      
      private var _3236045img0:Image;
      
      public function AnniversarySignInPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 619;
         this.height = 465;
         this.styleName = "StandardContent";
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         AnniversarySignInPanel._watcherSetupUtil = param1;
      }
      
      public function set item3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525952item3;
         if(_loc2_ !== param1)
         {
            this._100525952item3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item3",_loc2_,param1));
         }
      }
      
      public function set item5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525954item5;
         if(_loc2_ !== param1)
         {
            this._100525954item5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item5",_loc2_,param1));
         }
      }
      
      public function showPanel() : void
      {
         visible = true;
         _core.remote.call("getASIInfo",new Responder(onGetASIInfo),_core.cid);
      }
      
      public function __btn5_click(param1:MouseEvent) : void
      {
         signin(5);
      }
      
      public function set item1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525950item1;
         if(_loc2_ !== param1)
         {
            this._100525950item1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item1",_loc2_,param1));
         }
      }
      
      public function __btn1_click(param1:MouseEvent) : void
      {
         signin(1);
      }
      
      public function updateView(param1:Object) : void
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         today = param1.today;
         var _loc2_:int = 0;
         if(today)
         {
            _loc3_ = 0;
            while(_loc3_ < 6)
            {
               _loc4_ = ASI_SIGNIN_DATE_LIST[_loc3_];
               if(param1.date[_loc3_] == 1)
               {
                  this["btn" + _loc3_].label = "已签到";
                  this["btn" + _loc3_].enabled = false;
                  this["img" + _loc3_].visible = true;
                  _loc2_++;
               }
               else
               {
                  this["img" + _loc3_].visible = false;
                  if(today > _loc4_)
                  {
                     this["btn" + _loc3_].label = "补签";
                     this["btn" + _loc3_].enabled = true;
                  }
                  else if(today == _loc4_)
                  {
                     this["btn" + _loc3_].label = "签到";
                     this["btn" + _loc3_].enabled = true;
                  }
                  else
                  {
                     this["btn" + _loc3_].label = "未开始";
                     this["btn" + _loc3_].enabled = false;
                  }
               }
               _loc5_ = ASI_SIGNIN_AWARD_MAP[_loc3_];
               _loc6_ = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][_loc5_.i];
               this["itemText" + _loc3_].text = "[" + _loc6_.name + "]*" + _loc5_.n;
               this["item" + _loc3_].slotData = _loc6_;
               this["item" + _loc3_].giid = _loc5_.i;
               _loc3_++;
            }
            signInCount.text = "累计签到: " + _loc2_ + "/6天";
            if(param1.isGetBigAward == 1)
            {
               btn_getBigAward.enabled = false;
            }
            else if(_loc2_ == 6)
            {
               btn_getBigAward.enabled = true;
            }
         }
      }
      
      public function set item0(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525949item0;
         if(_loc2_ !== param1)
         {
            this._100525949item0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item0",_loc2_,param1));
         }
      }
      
      public function set item2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525951item2;
         if(_loc2_ !== param1)
         {
            this._100525951item2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item2",_loc2_,param1));
         }
      }
      
      public function set item4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525953item4;
         if(_loc2_ !== param1)
         {
            this._100525953item4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item4",_loc2_,param1));
         }
      }
      
      private function _AnniversarySignInPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.ASP_PANEL[0];
         _loc1_ = ResManager.getIconUrl(4130220004000);
         _loc1_ = ResManager.getIconUrl(4130220004007);
         _loc1_ = ResManager.getIconUrl(4130220004007);
         _loc1_ = ResManager.getIconUrl(4130220004007);
         _loc1_ = ResManager.getIconUrl(4130220004007);
         _loc1_ = ResManager.getIconUrl(4130220004007);
         _loc1_ = ResManager.getIconUrl(4130220004007);
         _loc1_ = ResManager.getIconUrl(4130220004001);
         _loc1_ = ResManager.getIconUrl(4130220004002);
         _loc1_ = ResManager.getIconUrl(4130220004003);
         _loc1_ = ResManager.getIconUrl(4130220004004);
         _loc1_ = ResManager.getIconUrl(4130220004005);
         _loc1_ = ResManager.getIconUrl(4130220004006);
         _loc1_ = GamePredef.TBL_ITEM_TEMPLATE;
         _loc1_ = GamePredef.TBL_ITEM_TEMPLATE;
         _loc1_ = GamePredef.TBL_ITEM_TEMPLATE;
         _loc1_ = GamePredef.TBL_ITEM_TEMPLATE;
         _loc1_ = GamePredef.TBL_ITEM_TEMPLATE;
         _loc1_ = GamePredef.TBL_ITEM_TEMPLATE;
         _loc1_ = ResManager.getIconUrl(4130220004009);
         _loc1_ = ResManager.getIconUrl(4130220004009);
         _loc1_ = ResManager.getIconUrl(4130220004009);
         _loc1_ = ResManager.getIconUrl(4130220004009);
         _loc1_ = ResManager.getIconUrl(4130220004009);
         _loc1_ = ResManager.getIconUrl(4130220004009);
         _loc1_ = ResManager.getIconUrl(4130220004008);
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
      }
      
      public function __btn2_click(param1:MouseEvent) : void
      {
         signin(2);
      }
      
      private function doUnlockMoneyGold(param1:Boolean) : void
      {
         var _loc2_:BagPanel = null;
         var _loc3_:Boolean = false;
         if(param1)
         {
            _loc2_ = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
            _loc3_ = _loc2_.goldLockFlag;
            if(_loc3_ != false && Boolean(_loc2_))
            {
               _loc2_.goldLockFlag = false;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemText2() : Text
      {
         return this._2143218002itemText2;
      }
      
      [Bindable(event="propertyChange")]
      public function get itemText3() : Text
      {
         return this._2143218003itemText3;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn1() : BasicGlowButton
      {
         return this._3034453btn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn2() : BasicGlowButton
      {
         return this._3034454btn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn3() : BasicGlowButton
      {
         return this._3034455btn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn5() : BasicGlowButton
      {
         return this._3034457btn5;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn4() : BasicGlowButton
      {
         return this._3034456btn4;
      }
      
      [Bindable(event="propertyChange")]
      public function get itemText5() : Text
      {
         return this._2143218005itemText5;
      }
      
      public function set showCanvas(param1:CharactorShowCanvas) : void
      {
         var _loc2_:Object = this._307382965showCanvas;
         if(_loc2_ !== param1)
         {
            this._307382965showCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCanvas",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get signInCount() : Text
      {
         return this._879099501signInCount;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn0() : BasicGlowButton
      {
         return this._3034452btn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_getBigAward() : Button
      {
         return this._1144939184btn_getBigAward;
      }
      
      public function __btn3_click(param1:MouseEvent) : void
      {
         signin(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get item4() : ItemSlot
      {
         return this._100525953item4;
      }
      
      [Bindable(event="propertyChange")]
      public function get item0() : ItemSlot
      {
         return this._100525949item0;
      }
      
      [Bindable(event="propertyChange")]
      public function get item3() : ItemSlot
      {
         return this._100525952item3;
      }
      
      [Bindable(event="propertyChange")]
      public function get item1() : ItemSlot
      {
         return this._100525950item1;
      }
      
      [Bindable(event="propertyChange")]
      public function get item2() : ItemSlot
      {
         return this._100525951item2;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:AnniversarySignInPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _AnniversarySignInPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_AnniversarySignInPanelWatcherSetupUtil");
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
      public function get item5() : ItemSlot
      {
         return this._100525954item5;
      }
      
      public function set img0(param1:Image) : void
      {
         var _loc2_:Object = this._3236045img0;
         if(_loc2_ !== param1)
         {
            this._3236045img0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img0",_loc2_,param1));
         }
      }
      
      private function signin(param1:int) : void
      {
         var func:Function = null;
         var idx:int = param1;
         var str:String = ASI_SIGNIN_DATE_LIST[idx];
         if(today > str)
         {
            func = function(param1:CloseEvent):void
            {
               var bagPanel:BagPanel = null;
               var goldLockFlag:Boolean = false;
               var gfunc:Function = null;
               var event:CloseEvent = param1;
               if(event.detail == Alert.YES)
               {
                  bagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
                  goldLockFlag = bagPanel.goldLockFlag;
                  if(goldLockFlag || !bagPanel)
                  {
                     _core.sysMsg(Language.JUHUASUAN_PANEL[15]);
                     gfunc = function(param1:String):void
                     {
                        _core.remote.call("unlockMoney",new Responder(doUnlockMoneyGold),MD5.hash(param1));
                     };
                     _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],gfunc);
                     return;
                  }
                  _core.remote.call("ASIReSignIn",new Responder(onGetASIInfo),_core.cid,idx);
               }
            };
            Alert.show("是否消耗100金子完成补签?","",Alert.YES | Alert.NO,null,func);
         }
         else if(today == str)
         {
            _core.remote.call("ASISignIn",new Responder(onGetASIInfo),_core.cid,idx);
         }
      }
      
      public function set img5(param1:Image) : void
      {
         var _loc2_:Object = this._3236050img5;
         if(_loc2_ !== param1)
         {
            this._3236050img5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img5",_loc2_,param1));
         }
      }
      
      public function set img2(param1:Image) : void
      {
         var _loc2_:Object = this._3236047img2;
         if(_loc2_ !== param1)
         {
            this._3236047img2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img2",_loc2_,param1));
         }
      }
      
      public function set itemText3(param1:Text) : void
      {
         var _loc2_:Object = this._2143218003itemText3;
         if(_loc2_ !== param1)
         {
            this._2143218003itemText3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemText3",_loc2_,param1));
         }
      }
      
      public function set btn_getBigAward(param1:Button) : void
      {
         var _loc2_:Object = this._1144939184btn_getBigAward;
         if(_loc2_ !== param1)
         {
            this._1144939184btn_getBigAward = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_getBigAward",_loc2_,param1));
         }
      }
      
      public function set img4(param1:Image) : void
      {
         var _loc2_:Object = this._3236049img4;
         if(_loc2_ !== param1)
         {
            this._3236049img4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img4",_loc2_,param1));
         }
      }
      
      public function set img1(param1:Image) : void
      {
         var _loc2_:Object = this._3236046img1;
         if(_loc2_ !== param1)
         {
            this._3236046img1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img1",_loc2_,param1));
         }
      }
      
      public function set btn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._3034455btn3;
         if(_loc2_ !== param1)
         {
            this._3034455btn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn3",_loc2_,param1));
         }
      }
      
      public function set btn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._3034452btn0;
         if(_loc2_ !== param1)
         {
            this._3034452btn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn0",_loc2_,param1));
         }
      }
      
      public function set btn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._3034453btn1;
         if(_loc2_ !== param1)
         {
            this._3034453btn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn1",_loc2_,param1));
         }
      }
      
      public function set btn5(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._3034457btn5;
         if(_loc2_ !== param1)
         {
            this._3034457btn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn5",_loc2_,param1));
         }
      }
      
      private function getBigAward() : void
      {
         _core.remote.call("getASIBigAward",new Responder(onGetASIInfo),_core.cid);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemText1() : Text
      {
         return this._2143218001itemText1;
      }
      
      [Bindable(event="propertyChange")]
      public function get showCanvas() : CharactorShowCanvas
      {
         return this._307382965showCanvas;
      }
      
      public function set itemText5(param1:Text) : void
      {
         var _loc2_:Object = this._2143218005itemText5;
         if(_loc2_ !== param1)
         {
            this._2143218005itemText5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemText5",_loc2_,param1));
         }
      }
      
      public function set itemText1(param1:Text) : void
      {
         var _loc2_:Object = this._2143218001itemText1;
         if(_loc2_ !== param1)
         {
            this._2143218001itemText1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemText1",_loc2_,param1));
         }
      }
      
      public function set btn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._3034454btn2;
         if(_loc2_ !== param1)
         {
            this._3034454btn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn2",_loc2_,param1));
         }
      }
      
      public function set itemText2(param1:Text) : void
      {
         var _loc2_:Object = this._2143218002itemText2;
         if(_loc2_ !== param1)
         {
            this._2143218002itemText2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemText2",_loc2_,param1));
         }
      }
      
      public function __btn0_click(param1:MouseEvent) : void
      {
         signin(0);
      }
      
      public function set btn4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._3034456btn4;
         if(_loc2_ !== param1)
         {
            this._3034456btn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn4",_loc2_,param1));
         }
      }
      
      public function set itemText4(param1:Text) : void
      {
         var _loc2_:Object = this._2143218004itemText4;
         if(_loc2_ !== param1)
         {
            this._2143218004itemText4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemText4",_loc2_,param1));
         }
      }
      
      public function set img3(param1:Image) : void
      {
         var _loc2_:Object = this._3236048img3;
         if(_loc2_ !== param1)
         {
            this._3236048img3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemText0() : Text
      {
         return this._2143218000itemText0;
      }
      
      [Bindable(event="propertyChange")]
      public function get itemText4() : Text
      {
         return this._2143218004itemText4;
      }
      
      [Bindable(event="propertyChange")]
      public function get img0() : Image
      {
         return this._3236045img0;
      }
      
      [Bindable(event="propertyChange")]
      public function get img2() : Image
      {
         return this._3236047img2;
      }
      
      [Bindable(event="propertyChange")]
      public function get img4() : Image
      {
         return this._3236049img4;
      }
      
      override public function initView() : void
      {
         showFairy();
         _core.remote.call("getASIInfo",new Responder(onGetASIInfo),_core.cid);
      }
      
      private function showFairy() : void
      {
         var _loc2_:String = null;
         _firstTimeFlag = false;
         var _loc1_:Object = GameData.d[GamePredef.TBL_FAIRY_TEMPALTE][17];
         if(_loc1_)
         {
            _loc2_ = ResManager.getResUrl(_loc1_.rc);
            if(showCanvas.url != _loc2_)
            {
               showCanvas.url = _loc2_;
            }
            showCanvas.color = _loc1_.cc;
            return;
         }
      }
      
      public function __btn4_click(param1:MouseEvent) : void
      {
         signin(4);
      }
      
      [Bindable(event="propertyChange")]
      public function get img5() : Image
      {
         return this._3236050img5;
      }
      
      private function _AnniversarySignInPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ASP_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AnniversarySignInPanel_BasicTitleCanvas1.text = param1;
         },"_AnniversarySignInPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220004000);
         },function(param1:Object):void
         {
            _AnniversarySignInPanel_Image1.source = param1;
         },"_AnniversarySignInPanel_Image1.source");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220004007);
         },function(param1:Object):void
         {
            _AnniversarySignInPanel_Image2.source = param1;
         },"_AnniversarySignInPanel_Image2.source");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220004007);
         },function(param1:Object):void
         {
            _AnniversarySignInPanel_Image3.source = param1;
         },"_AnniversarySignInPanel_Image3.source");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220004007);
         },function(param1:Object):void
         {
            _AnniversarySignInPanel_Image4.source = param1;
         },"_AnniversarySignInPanel_Image4.source");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220004007);
         },function(param1:Object):void
         {
            _AnniversarySignInPanel_Image5.source = param1;
         },"_AnniversarySignInPanel_Image5.source");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220004007);
         },function(param1:Object):void
         {
            _AnniversarySignInPanel_Image6.source = param1;
         },"_AnniversarySignInPanel_Image6.source");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220004007);
         },function(param1:Object):void
         {
            _AnniversarySignInPanel_Image7.source = param1;
         },"_AnniversarySignInPanel_Image7.source");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220004001);
         },function(param1:Object):void
         {
            _AnniversarySignInPanel_Image8.source = param1;
         },"_AnniversarySignInPanel_Image8.source");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220004002);
         },function(param1:Object):void
         {
            _AnniversarySignInPanel_Image9.source = param1;
         },"_AnniversarySignInPanel_Image9.source");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220004003);
         },function(param1:Object):void
         {
            _AnniversarySignInPanel_Image10.source = param1;
         },"_AnniversarySignInPanel_Image10.source");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220004004);
         },function(param1:Object):void
         {
            _AnniversarySignInPanel_Image11.source = param1;
         },"_AnniversarySignInPanel_Image11.source");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220004005);
         },function(param1:Object):void
         {
            _AnniversarySignInPanel_Image12.source = param1;
         },"_AnniversarySignInPanel_Image12.source");
         result[12] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220004006);
         },function(param1:Object):void
         {
            _AnniversarySignInPanel_Image13.source = param1;
         },"_AnniversarySignInPanel_Image13.source");
         result[13] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_ITEM_TEMPLATE;
         },function(param1:int):void
         {
            item0.type = param1;
         },"item0.type");
         result[14] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_ITEM_TEMPLATE;
         },function(param1:int):void
         {
            item1.type = param1;
         },"item1.type");
         result[15] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_ITEM_TEMPLATE;
         },function(param1:int):void
         {
            item2.type = param1;
         },"item2.type");
         result[16] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_ITEM_TEMPLATE;
         },function(param1:int):void
         {
            item3.type = param1;
         },"item3.type");
         result[17] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_ITEM_TEMPLATE;
         },function(param1:int):void
         {
            item4.type = param1;
         },"item4.type");
         result[18] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_ITEM_TEMPLATE;
         },function(param1:int):void
         {
            item5.type = param1;
         },"item5.type");
         result[19] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220004009);
         },function(param1:Object):void
         {
            img0.source = param1;
         },"img0.source");
         result[20] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220004009);
         },function(param1:Object):void
         {
            img1.source = param1;
         },"img1.source");
         result[21] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220004009);
         },function(param1:Object):void
         {
            img2.source = param1;
         },"img2.source");
         result[22] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220004009);
         },function(param1:Object):void
         {
            img3.source = param1;
         },"img3.source");
         result[23] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220004009);
         },function(param1:Object):void
         {
            img4.source = param1;
         },"img4.source");
         result[24] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220004009);
         },function(param1:Object):void
         {
            img5.source = param1;
         },"img5.source");
         result[25] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220004008);
         },function(param1:Object):void
         {
            _AnniversarySignInPanel_Image20.source = param1;
         },"_AnniversarySignInPanel_Image20.source");
         result[26] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            itemText0.filters = param1;
         },"itemText0.filters");
         result[27] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            itemText1.filters = param1;
         },"itemText1.filters");
         result[28] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            itemText2.filters = param1;
         },"itemText2.filters");
         result[29] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            itemText3.filters = param1;
         },"itemText3.filters");
         result[30] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            itemText4.filters = param1;
         },"itemText4.filters");
         result[31] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            itemText5.filters = param1;
         },"itemText5.filters");
         result[32] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            signInCount.filters = param1;
         },"signInCount.filters");
         result[33] = binding;
         return result;
      }
      
      private function onGetASIInfo(param1:Object) : void
      {
         var _loc2_:int = 0;
         _firstTimeFlag = false;
         if(param1)
         {
            updateView(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get img3() : Image
      {
         return this._3236048img3;
      }
      
      public function set signInCount(param1:Text) : void
      {
         var _loc2_:Object = this._879099501signInCount;
         if(_loc2_ !== param1)
         {
            this._879099501signInCount = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"signInCount",_loc2_,param1));
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1)
         {
            if(_firstTimeFlag)
            {
               initView();
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get img1() : Image
      {
         return this._3236046img1;
      }
      
      public function set itemText0(param1:Text) : void
      {
         var _loc2_:Object = this._2143218000itemText0;
         if(_loc2_ !== param1)
         {
            this._2143218000itemText0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemText0",_loc2_,param1));
         }
      }
      
      public function __btn_getBigAward_click(param1:MouseEvent) : void
      {
         getBigAward();
      }
   }
}

