package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.object.Charactor;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.ui.IMainUI;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ChatPanelUtil;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
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
   import mx.controls.Button;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TargetCanvas extends SimpleCanvas implements IMainUI, IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "height":83,
               "width":89,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Button,
                  "id":"btn1",
                  "events":{"click":"__btn1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnTarget1",
                        "y":57,
                        "x":19
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btn2",
                  "events":{"click":"__btn2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnTarget2",
                        "x":2.9,
                        "y":35
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btn7",
                  "events":{"click":"__btn7_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnTarget7",
                        "x":8.85,
                        "y":10
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btn5",
                  "events":{"click":"__btn5_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnTarget5",
                        "x":33.05,
                        "y":2
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btn3",
                  "events":{"click":"__btn3_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnTarget3",
                        "x":57.05,
                        "y":10
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btn4",
                  "events":{"click":"__btn4_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnTarget4",
                        "x":64.1,
                        "y":35
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btn6",
                  "events":{"click":"__btn6_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnTarget6",
                        "x":45.9,
                        "y":57
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btn8",
                  "events":{"click":"__btn8_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnNormalRed",
                        "y":-30,
                        "width":40,
                        "height":19
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btn9",
                  "events":{"click":"__btn9_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnNormalRed",
                        "y":-30,
                        "toolTip":"",
                        "width":40,
                        "height":19
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      mx_internal var _watchers:Array = [];
      
      private var _91108202_name:String;
      
      private var _3034453btn1:Button;
      
      private var _3034454btn2:Button;
      
      private var _3034455btn3:Button;
      
      private var _3034456btn4:Button;
      
      private var _3034457btn5:Button;
      
      private var _3034458btn6:Button;
      
      private var _3034459btn7:Button;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _3034460btn8:BasicGlowButton;
      
      private var _3034461btn9:BasicGlowButton;
      
      private var _1480455047_class:String;
      
      private var targetData:Object;
      
      private var _1472332155_level:String;
      
      private var _75282144_charactor:Charactor;
      
      mx_internal var _bindings:Array = [];
      
      public function TargetCanvas()
      {
         super();
         mx_internal::_document = this;
         this.height = 83;
         this.cacheAsBitmap = true;
         this.width = 89;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TargetCanvas._watcherSetupUtil = param1;
      }
      
      public function __btn3_click(param1:MouseEvent) : void
      {
         menuClickHandler(param1);
      }
      
      private function set _name(param1:String) : void
      {
         var _loc2_:Object = this._91108202_name;
         if(_loc2_ !== param1)
         {
            this._91108202_name = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_name",_loc2_,param1));
         }
      }
      
      public function __btn5_click(param1:MouseEvent) : void
      {
         menuClickHandler(param1);
      }
      
      public function __btn7_click(param1:MouseEvent) : void
      {
         menuClickHandler(param1);
      }
      
      public function __btn9_click(param1:MouseEvent) : void
      {
         menuClickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get btn8() : BasicGlowButton
      {
         return this._3034460btn8;
      }
      
      private function set _level(param1:String) : void
      {
         var _loc2_:Object = this._1472332155_level;
         if(_loc2_ !== param1)
         {
            this._1472332155_level = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_level",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _level() : String
      {
         return this._1472332155_level;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TargetCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TargetCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compMain_TargetCanvasWatcherSetupUtil");
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
      
      private function menuClickHandler(param1:Event) : void
      {
         var _loc2_:Button = Button(param1.currentTarget);
         if(!_core.targetPlayer)
         {
            hide();
            return;
         }
         switch(_loc2_.id)
         {
            case "btn1":
               _core.view.getUI(ViewManager.PANEL_CHARACTORINFO).showChaInfo(_core.targetPlayer.id);
               break;
            case "btn2":
               _core.remote.groupInvite(_core.targetPlayer.id);
               break;
            case "btn3":
               _core.view.getUI(ViewManager.MAIN_SYS).wisperChat(_core.targetPlayer.name);
               break;
            case "btn4":
               ChatPanelUtil.createChatPanel(_core.targetPlayer.id);
               break;
            case "btn5":
               _core.addFriend(_core.targetPlayer.name);
               break;
            case "btn6":
               _core.view.getUI(ViewManager.PANEL_TRADE).newTrade(_core.targetPlayer.id,_core.targetPlayer.name);
               break;
            case "btn7":
               _core.remote.startWatch(_core.targetPlayer.id);
               break;
            case "btn8":
               _core.remote.groupRequest(_core.cid,_core.targetPlayer.id);
               break;
            case "btn9":
               _core.remote.assassinate(_core.targetPlayer.id);
         }
         hide();
      }
      
      public function set btn1(param1:Button) : void
      {
         var _loc2_:Object = this._3034453btn1;
         if(_loc2_ !== param1)
         {
            this._3034453btn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn1",_loc2_,param1));
         }
      }
      
      public function set btn3(param1:Button) : void
      {
         var _loc2_:Object = this._3034455btn3;
         if(_loc2_ !== param1)
         {
            this._3034455btn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn3",_loc2_,param1));
         }
      }
      
      public function set btn8(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._3034460btn8;
         if(_loc2_ !== param1)
         {
            this._3034460btn8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn8",_loc2_,param1));
         }
      }
      
      public function set btn5(param1:Button) : void
      {
         var _loc2_:Object = this._3034457btn5;
         if(_loc2_ !== param1)
         {
            this._3034457btn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn5",_loc2_,param1));
         }
      }
      
      public function set btn9(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._3034461btn9;
         if(_loc2_ !== param1)
         {
            this._3034461btn9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn9",_loc2_,param1));
         }
      }
      
      public function __btn2_click(param1:MouseEvent) : void
      {
         menuClickHandler(param1);
      }
      
      private function set _charactor(param1:Charactor) : void
      {
         var _loc2_:Object = this._75282144_charactor;
         if(_loc2_ !== param1)
         {
            this._75282144_charactor = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_charactor",_loc2_,param1));
         }
      }
      
      public function __btn4_click(param1:MouseEvent) : void
      {
         menuClickHandler(param1);
      }
      
      public function __btn6_click(param1:MouseEvent) : void
      {
         menuClickHandler(param1);
      }
      
      public function __btn8_click(param1:MouseEvent) : void
      {
         menuClickHandler(param1);
      }
      
      private function _TargetCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.TARGETCANVAS_S[0];
         _loc1_ = Language.TARGETCANVAS_S[1];
         _loc1_ = Language.TARGETCANVAS_S[2];
         _loc1_ = Language.TARGETCANVAS_S[3];
         _loc1_ = Language.TARGETCANVAS_S[4];
         _loc1_ = Language.TARGETCANVAS_S[5];
         _loc1_ = Language.TARGETCANVAS_S[6];
         _loc1_ = Language.TARGETCANVAS_S[7];
         _loc1_ = Language.TARGETCANVAS_U[0];
         _loc1_ = Language.TARGETCANVAS_U[1];
      }
      
      public function set btn2(param1:Button) : void
      {
         var _loc2_:Object = this._3034454btn2;
         if(_loc2_ !== param1)
         {
            this._3034454btn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn2",_loc2_,param1));
         }
      }
      
      public function update() : void
      {
         if(_core.targetPlayer == null || _core.view.actionState == GamePredef.ACTION_PK || _core.targetPlayer.npcFlag)
         {
            _charactor = null;
            visible = false;
            return;
         }
         visible = true;
         if(_charactor != _core.targetPlayer)
         {
            _charactor = _core.targetPlayer;
         }
      }
      
      public function initView() : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get btn2() : Button
      {
         return this._3034454btn2;
      }
      
      public function enableUI() : void
      {
         this.btn3.enabled = true;
         this.btn6.enabled = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn5() : Button
      {
         return this._3034457btn5;
      }
      
      public function set btn4(param1:Button) : void
      {
         var _loc2_:Object = this._3034456btn4;
         if(_loc2_ !== param1)
         {
            this._3034456btn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn3() : Button
      {
         return this._3034455btn3;
      }
      
      private function _TargetCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TARGETCANVAS_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn1.toolTip = param1;
         },"btn1.toolTip");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TARGETCANVAS_S[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn2.toolTip = param1;
         },"btn2.toolTip");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TARGETCANVAS_S[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn7.toolTip = param1;
         },"btn7.toolTip");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TARGETCANVAS_S[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn5.toolTip = param1;
         },"btn5.toolTip");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TARGETCANVAS_S[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn3.toolTip = param1;
         },"btn3.toolTip");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TARGETCANVAS_S[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn4.toolTip = param1;
         },"btn4.toolTip");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TARGETCANVAS_S[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn6.toolTip = param1;
         },"btn6.toolTip");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TARGETCANVAS_S[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn8.toolTip = param1;
         },"btn8.toolTip");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TARGETCANVAS_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn8.label = param1;
         },"btn8.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TARGETCANVAS_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn9.label = param1;
         },"btn9.label");
         result[9] = binding;
         return result;
      }
      
      public function set btn7(param1:Button) : void
      {
         var _loc2_:Object = this._3034459btn7;
         if(_loc2_ !== param1)
         {
            this._3034459btn7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn7",_loc2_,param1));
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(!param1)
         {
            _charactor = null;
            _core.targetPlayer = null;
         }
         else
         {
            x = stage.mouseX - width / 2;
            y = stage.mouseY - height / 2;
         }
         if(_core.targetPlayer != null)
         {
            if(_core.targetPlayer.inGroup == false || _core.player.inGroup == true)
            {
               btn8.visible = false;
            }
            else
            {
               btn8.visible = true;
            }
            trace("inGroup:" + _core.targetPlayer.inGroup);
         }
         else
         {
            btn8.visible = false;
         }
         if(_core.battleServer.inBattleServer && _core.targetPlayer != null)
         {
            btn8.visible = false;
            btn9.visible = true;
            if(Boolean(_core.targetPlayer.posMapId) && Number(_core.targetPlayer.posMapId) == 75)
            {
               btn9.visible = false;
            }
         }
         else
         {
            btn9.visible = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn4() : Button
      {
         return this._3034456btn4;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn6() : Button
      {
         return this._3034458btn6;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn7() : Button
      {
         return this._3034459btn7;
      }
      
      [Bindable(event="propertyChange")]
      private function get _charactor() : Charactor
      {
         return this._75282144_charactor;
      }
      
      [Bindable(event="propertyChange")]
      private function get _name() : String
      {
         return this._91108202_name;
      }
      
      private function set _class(param1:String) : void
      {
         var _loc2_:Object = this._1480455047_class;
         if(_loc2_ !== param1)
         {
            this._1480455047_class = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_class",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn9() : BasicGlowButton
      {
         return this._3034461btn9;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn1() : Button
      {
         return this._3034453btn1;
      }
      
      [Bindable(event="propertyChange")]
      private function get _class() : String
      {
         return this._1480455047_class;
      }
      
      public function set btn6(param1:Button) : void
      {
         var _loc2_:Object = this._3034458btn6;
         if(_loc2_ !== param1)
         {
            this._3034458btn6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn6",_loc2_,param1));
         }
      }
      
      public function disableUI() : void
      {
         this.btn3.enabled = false;
         this.btn6.enabled = false;
      }
      
      public function __btn1_click(param1:MouseEvent) : void
      {
         menuClickHandler(param1);
      }
   }
}

