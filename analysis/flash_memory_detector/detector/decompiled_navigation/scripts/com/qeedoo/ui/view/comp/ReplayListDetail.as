package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ReplayListDetail extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _2927678_bid:String = "";
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _3237038info:BasicTxtButton;
      
      mx_internal var _bindings:Array = [];
      
      public var _ReplayListDetail_BasicGlowButton1:BasicGlowButton;
      
      public var _ReplayListDetail_BasicGlowButton2:BasicGlowButton;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":320,
               "height":30,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"info",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":5,
                        "y":5,
                        "width":230
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_ReplayListDetail_BasicGlowButton1",
                  "events":{"click":"___ReplayListDetail_BasicGlowButton1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":240,
                        "y":4,
                        "styleName":"BtnStdRed"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_ReplayListDetail_BasicGlowButton2",
                  "events":{"click":"___ReplayListDetail_BasicGlowButton2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":280,
                        "y":4,
                        "styleName":"BtnStdRed"
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function ReplayListDetail()
      {
         super();
         mx_internal::_document = this;
         this.width = 320;
         this.height = 30;
         this.styleName = "CanvasAchDetailFinished";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ReplayListDetail._watcherSetupUtil = param1;
      }
      
      private function _ReplayListDetail_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.FAZENDA_LOG_PANEL_U[4];
         _loc1_ = _bid != "";
         _loc1_ = Language.FAZENDA_LOG_PANEL_U[5];
         _loc1_ = _bid != "";
      }
      
      [Bindable(event="propertyChange")]
      private function get _bid() : String
      {
         return this._2927678_bid;
      }
      
      private function set _bid(param1:String) : void
      {
         var _loc2_:Object = this._2927678_bid;
         if(_loc2_ !== param1)
         {
            this._2927678_bid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_bid",_loc2_,param1));
         }
      }
      
      public function clear() : void
      {
         _bid = "";
         info.text = "";
         this.visible = false;
      }
      
      public function set replay(param1:Object) : void
      {
         var _loc2_:String = param1.timestamp.substr(0,16);
         var _loc3_:String = param1.name;
         info.label = _loc2_ + ": " + _loc3_;
         _bid = param1.battleId;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ReplayListDetail = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ReplayListDetail_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_ReplayListDetailWatcherSetupUtil");
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
      
      public function ___ReplayListDetail_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         play();
      }
      
      public function ___ReplayListDetail_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         moreAction();
      }
      
      public function set info(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._3237038info;
         if(_loc2_ !== param1)
         {
            this._3237038info = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"info",_loc2_,param1));
         }
      }
      
      private function _ReplayListDetail_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAZENDA_LOG_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ReplayListDetail_BasicGlowButton1.label = param1;
         },"_ReplayListDetail_BasicGlowButton1.label");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _bid != "";
         },function(param1:Boolean):void
         {
            _ReplayListDetail_BasicGlowButton1.visible = param1;
         },"_ReplayListDetail_BasicGlowButton1.visible");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAZENDA_LOG_PANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ReplayListDetail_BasicGlowButton2.label = param1;
         },"_ReplayListDetail_BasicGlowButton2.label");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _bid != "";
         },function(param1:Boolean):void
         {
            _ReplayListDetail_BasicGlowButton2.visible = param1;
         },"_ReplayListDetail_BasicGlowButton2.visible");
         result[3] = binding;
         return result;
      }
      
      private function moreAction() : void
      {
         _core.view.getUI(ViewManager.POP_FAZENDA_LOG).moreAction(_bid);
      }
      
      private function play() : void
      {
         if(_bid != "")
         {
            _core.remote.call("replayPetFight",null,_bid);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get info() : BasicTxtButton
      {
         return this._3237038info;
      }
   }
}

