package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.BasicMultiLineButton;
   import com.qeedoo.ui.view.comp.RoundedButton;
   import com.qeedoo.ui.view.compBattle.AutoBattleCanvas;
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
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class AutoBattleCanva extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _3840xx:Image;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _205990311btnLock:RoundedButton;
      
      private var _lockObj:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var imageXX:Class = AutoBattleCanva_imageXX;
      
      private var _1432384199changBtn:BasicMultiLineButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":86.1,
               "height":52,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicMultiLineButton,
                  "id":"changBtn",
                  "events":{"click":"__changBtn_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":43,
                        "y":6,
                        "width":40,
                        "height":40,
                        "selected":true,
                        "styleName":"BtnBattleFlag"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"xx",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":48.5,
                        "y":11.5,
                        "mouseChildren":false,
                        "mouseEnabled":false,
                        "width":29,
                        "height":29
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedButton,
                  "id":"btnLock",
                  "events":{"click":"__btnLock_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":22,
                        "y":26,
                        "styleName":"btnLock",
                        "height":20,
                        "width":20
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function AutoBattleCanva()
      {
         super();
         mx_internal::_document = this;
         this.width = 86.1;
         this.height = 52;
         this.addEventListener("creationComplete",___AutoBattleCanva_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         AutoBattleCanva._watcherSetupUtil = param1;
      }
      
      private function _AutoBattleCanva_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.AUTOBATTLECANVA_U[0];
         _loc1_ = Language.AUTOBATTLECANVA_U[3];
         _loc1_ = imageXX;
         _loc1_ = Language.AUTOBATTLECANVA_U[2];
      }
      
      public function set xx(param1:Image) : void
      {
         var _loc2_:Object = this._3840xx;
         if(_loc2_ !== param1)
         {
            this._3840xx = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xx",_loc2_,param1));
         }
      }
      
      public function ___AutoBattleCanva_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      private function changeLocking(param1:Boolean) : void
      {
         if(param1)
         {
            btnLock.selected = true;
            setMovable(false);
         }
         else
         {
            btnLock.selected = false;
            setMovable(true);
         }
      }
      
      public function setAutoStyle() : void
      {
         var _loc1_:AutoBattleCanvas = AutoBattleCanvas(_core.view.getUI(ViewManager.PANEL_BATTLEAUTO));
         if(!_loc1_.auto)
         {
            changeStyle(true);
         }
         else
         {
            changeStyle(false);
         }
      }
      
      private function setLocking() : void
      {
         if(_core.player.isLockedUB)
         {
            _core.player.isLockedUB = false;
            changeLocking(false);
         }
         else
         {
            _core.player.isLockedUB = true;
            changeLocking(true);
         }
         updateLockState();
      }
      
      private function autoBattleChange() : void
      {
         var _loc1_:AutoBattleCanvas = AutoBattleCanvas(_core.view.getUI(ViewManager.PANEL_BATTLEAUTO));
         if(!_loc1_.auto)
         {
            _loc1_.startAuto();
            _loc1_.hide();
            changeStyle(false);
            xx.visible = false;
         }
         else
         {
            _loc1_.stopAuto();
            changeStyle(true);
            xx.visible = true;
         }
      }
      
      public function initView() : void
      {
      }
      
      private function updateLockState() : void
      {
         _lockObj["ubl"] = _core.player.isLockedUB;
         _core.updateSetting("ubl",_core.player.isLockedUB);
         _core.remote.call("us",null,_lockObj);
         _lockObj = {};
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:AutoBattleCanva = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _AutoBattleCanva_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compMain_AutoBattleCanvaWatcherSetupUtil");
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
      
      public function changeStyle(param1:Boolean) : void
      {
         xx.visible = param1;
      }
      
      public function initLock() : void
      {
         if(_core.player)
         {
            btnLock.selected = _core.player.isLockedUB;
            changeLocking(btnLock.selected);
         }
      }
      
      private function _AutoBattleCanva_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUTOBATTLECANVA_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            changBtn.label = param1;
         },"changBtn.label");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUTOBATTLECANVA_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            changBtn.toolTip = param1;
         },"changBtn.toolTip");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return imageXX;
         },function(param1:Object):void
         {
            xx.source = param1;
         },"xx.source");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUTOBATTLECANVA_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnLock.toolTip = param1;
         },"btnLock.toolTip");
         result[3] = binding;
         return result;
      }
      
      public function set btnLock(param1:RoundedButton) : void
      {
         var _loc2_:Object = this._205990311btnLock;
         if(_loc2_ !== param1)
         {
            this._205990311btnLock = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnLock",_loc2_,param1));
         }
      }
      
      public function __btnLock_click(param1:MouseEvent) : void
      {
         setLocking();
      }
      
      private function autoExp() : void
      {
         _core.view.changeVisible(ViewManager.MAIN_AUTO_EXP);
      }
      
      public function __changBtn_click(param1:MouseEvent) : void
      {
         autoBattleChange();
      }
      
      public function set changBtn(param1:BasicMultiLineButton) : void
      {
         var _loc2_:Object = this._1432384199changBtn;
         if(_loc2_ !== param1)
         {
            this._1432384199changBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get changBtn() : BasicMultiLineButton
      {
         return this._1432384199changBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get xx() : Image
      {
         return this._3840xx;
      }
      
      private function setMovable(param1:Boolean) : void
      {
         var _loc2_:Object = _core.view.getUI(ViewManager.MAIN_USER_BAR);
         var _loc3_:int = 1;
         while(_loc3_ <= 30)
         {
            _loc2_["s" + _loc3_].movable = param1;
            _loc3_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnLock() : RoundedButton
      {
         return this._205990311btnLock;
      }
   }
}

