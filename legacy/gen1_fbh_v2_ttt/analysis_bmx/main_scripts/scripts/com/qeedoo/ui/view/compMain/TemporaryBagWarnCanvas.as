package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
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
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TemporaryBagWarnCanvas extends SimpleCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var timer:Timer;
      
      private var _104387img:Image;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var img1:Class = TemporaryBagWarnCanvas_img1;
      
      private var img2:Class = TemporaryBagWarnCanvas_img2;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _warnState:Boolean = false;
      
      mx_internal var _bindings:Array = [];
      
      private var flag:Boolean = false;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":32,
               "height":32,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"img",
                  "events":{"click":"__img_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100,
                        "mouseChildren":false
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function TemporaryBagWarnCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 32;
         this.height = 32;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TemporaryBagWarnCanvas._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get img() : Image
      {
         return this._104387img;
      }
      
      public function __img_click(param1:MouseEvent) : void
      {
         _core.view.changeVisible(ViewManager.PANEL_TEMPORARY_BAG);
      }
      
      private function _TemporaryBagWarnCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return img1;
         },function(param1:Object):void
         {
            img.source = param1;
         },"img.source");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TEMPORARYBAGWARNCANVAS_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            img.toolTip = param1;
         },"img.toolTip");
         result[1] = binding;
         return result;
      }
      
      public function set img(param1:Image) : void
      {
         var _loc2_:Object = this._104387img;
         if(_loc2_ !== param1)
         {
            this._104387img = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TemporaryBagWarnCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TemporaryBagWarnCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compMain_TemporaryBagWarnCanvasWatcherSetupUtil");
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
      
      private function _TemporaryBagWarnCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = img1;
         _loc1_ = Language.TEMPORARYBAGWARNCANVAS_U[0];
      }
      
      public function reset() : void
      {
         _warnState = false;
         visible = false;
      }
      
      public function set warnState(param1:Boolean) : void
      {
         _warnState = param1;
         visible = param1;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         setVisible(param1);
         if(param1)
         {
            if(timer)
            {
               return;
            }
            timer = new Timer(500,0);
            timer.addEventListener(TimerEvent.TIMER,handleTimer);
            timer.start();
         }
         else
         {
            if(Boolean(timer) && timer.running == true)
            {
               timer.stop();
            }
            timer = null;
         }
      }
      
      public function restore() : void
      {
         visible = _warnState;
      }
      
      public function get warnState() : Boolean
      {
         return _warnState;
      }
      
      private function handleTimer(param1:TimerEvent) : void
      {
         if(flag == true)
         {
            img.source = img1;
            flag = false;
         }
         else
         {
            img.source = img2;
            flag = true;
         }
      }
   }
}

