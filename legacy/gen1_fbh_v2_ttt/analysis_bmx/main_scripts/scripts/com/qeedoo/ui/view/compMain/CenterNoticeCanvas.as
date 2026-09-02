package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
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
   import mx.controls.Image;
   import mx.controls.Text;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.effects.Resize;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class CenterNoticeCanvas extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var setTime:Timer = new Timer(1000,1);
      
      mx_internal var _watchers:Array = [];
      
      private var newZoom:Resize = new Resize();
      
      private var _108417msg:Text;
      
      private var _100325eff:Image;
      
      private var noticeArr:ArrayCollection = new ArrayCollection();
      
      mx_internal var _bindings:Array = [];
      
      private var noticeOn:Boolean = false;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":Image,
               "id":"eff",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":0,
                     "y":0,
                     "percentHeight":100,
                     "percentWidth":100
                  };
               }
            }),new UIComponentDescriptor({
               "type":Text,
               "id":"msg",
               "stylesFactory":function():void
               {
                  this.fontSize = 36;
                  this.textAlign = "center";
                  this.fontWeight = "bold";
                  this.horizontalCenter = "0";
               },
               "propertiesFactory":function():Object
               {
                  return {"enabled":false};
               }
            })]};
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function CenterNoticeCanvas()
      {
         super();
         mx_internal::_document = this;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.mouseChildren = false;
         this.mouseEnabled = false;
         this.addEventListener("creationComplete",___CenterNoticeCanvas_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CenterNoticeCanvas._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get msg() : Text
      {
         return this._108417msg;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CenterNoticeCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CenterNoticeCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compMain_CenterNoticeCanvasWatcherSetupUtil");
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
      
      public function set eff(param1:Image) : void
      {
         var _loc2_:Object = this._100325eff;
         if(_loc2_ !== param1)
         {
            this._100325eff = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eff",_loc2_,param1));
         }
      }
      
      private function onOver(param1:TimerEvent) : void
      {
         var _loc2_:Object = null;
         this.visible = false;
         eff.source = "";
         newZoom.stop();
         if(noticeArr.length <= 0)
         {
            noticeOn = false;
         }
         else
         {
            _loc2_ = noticeArr.removeItemAt(0);
            onNotice(_loc2_);
         }
      }
      
      private function _CenterNoticeCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_RED_SELECTED];
         },function(param1:Array):void
         {
            msg.filters = param1;
         },"msg.filters");
         result[0] = binding;
         binding = new Binding(this,function():Number
         {
            return this.height / 2 - 100;
         },function(param1:Number):void
         {
            msg.y = param1;
         },"msg.y");
         result[1] = binding;
         return result;
      }
      
      private function onNotice(param1:Object) : void
      {
         this.visible = true;
         noticeOn = true;
         msg.text = param1.msg;
         msg.y = this.height / 2 + 150;
         var _loc2_:uint = uint(param1.delay);
         var _loc3_:Number = Number(param1.effect);
         eff.source = ResManager.getResUrl(_loc3_);
         newZoom.heightFrom = 3.7;
         newZoom.widthFrom = msg.text.length * 4 - 3;
         newZoom.heightBy = 40;
         newZoom.widthBy = msg.text.length * 40;
         newZoom.target = msg;
         newZoom.repeatCount = 0;
         newZoom.duration = 2000;
         newZoom.repeatDelay = 1000;
         newZoom.play();
         setTime.delay = _loc2_;
         setTime.addEventListener(TimerEvent.TIMER_COMPLETE,onOver);
         setTime.reset();
         setTime.start();
      }
      
      public function addNotice(param1:Object) : void
      {
         if(noticeOn)
         {
            noticeArr.addItem(param1);
         }
         else
         {
            onNotice(param1);
         }
      }
      
      public function set msg(param1:Text) : void
      {
         var _loc2_:Object = this._108417msg;
         if(_loc2_ !== param1)
         {
            this._108417msg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"msg",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get eff() : Image
      {
         return this._100325eff;
      }
      
      private function init() : void
      {
         this.x = (this.parent.width - this.width) / 2;
         this.y = (this.parent.height - this.height) / 2;
      }
      
      private function _CenterNoticeCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = [GamePredef.FILTER_RED_SELECTED];
         _loc1_ = this.height / 2 - 100;
      }
      
      public function ___CenterNoticeCanvas_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
   }
}

