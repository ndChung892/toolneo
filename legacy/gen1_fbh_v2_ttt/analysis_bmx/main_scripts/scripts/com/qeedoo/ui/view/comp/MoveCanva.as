package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
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
   import mx.controls.TextArea;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MoveCanva extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var timer:Timer;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _1070270502RL_sender:RoundedLabel;
      
      private var _2669TA:TextArea;
      
      private var _205517396RL_receiver:RoundedLabel;
      
      mx_internal var _bindings:Array = [];
      
      private const MOVE_DELAY:* = 30;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":120,
               "height":120,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"RL_sender",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.bottom = "25";
                     this.fontSize = 9;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":18,
                        "width":65
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"RL_receiver",
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.top = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"height":18};
                  }
               }),new UIComponentDescriptor({
                  "type":TextArea,
                  "id":"TA",
                  "stylesFactory":function():void
                  {
                     this.verticalCenter = "-5";
                     this.horizontalCenter = "0";
                     this.backgroundAlpha = 0;
                     this.borderStyle = "none";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":100,
                        "height":40,
                        "editable":false
                     };
                  }
               })]
            };
         }
      });
      
      private var info:Object;
      
      private var _core:Core = Core.getInstance();
      
      public function MoveCanva()
      {
         super();
         mx_internal::_document = this;
         this.width = 120;
         this.height = 120;
         this.styleName = "CanvasLove";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MoveCanva._watcherSetupUtil = param1;
      }
      
      public function setWishWords(param1:String) : void
      {
         TA.htmlText = param1;
      }
      
      public function set RL_sender(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1070270502RL_sender;
         if(_loc2_ !== param1)
         {
            this._1070270502RL_sender = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"RL_sender",_loc2_,param1));
         }
      }
      
      private function _MoveCanva_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = TA.text;
      }
      
      [Bindable(event="propertyChange")]
      public function get TA() : TextArea
      {
         return this._2669TA;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MoveCanva = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MoveCanva_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_MoveCanvaWatcherSetupUtil");
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
      
      public function updateData() : void
      {
         var _loc1_:Object = null;
         _loc1_ = _core.fetchQxWish(info);
         if(_loc1_)
         {
            RL_receiver.text = "to:" + _loc1_.rname;
            RL_sender.text = "from:" + _loc1_.sname;
            TA.htmlText = _loc1_.words;
            TA.setStyle("color",parseInt(_loc1_.color));
            RL_receiver.visible = true;
            RL_sender.visible = true;
            info = _loc1_;
            if(_loc1_.type == 1)
            {
               RL_receiver.visible = false;
            }
            else
            {
               RL_receiver.visible = true;
            }
         }
         else
         {
            RL_receiver.visible = false;
            RL_sender.visible = false;
         }
      }
      
      public function beginMove() : void
      {
         stopMove();
         timer = new Timer(MOVE_DELAY,0);
         timer.addEventListener(TimerEvent.TIMER,handleTiemr);
         timer.start();
      }
      
      private function _MoveCanva_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            TA.filters = param1;
         },"TA.filters");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = TA.text;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            TA.toolTip = param1;
         },"TA.toolTip");
         result[1] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get RL_receiver() : RoundedLabel
      {
         return this._205517396RL_receiver;
      }
      
      public function set RL_receiver(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._205517396RL_receiver;
         if(_loc2_ !== param1)
         {
            this._205517396RL_receiver = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"RL_receiver",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get RL_sender() : RoundedLabel
      {
         return this._1070270502RL_sender;
      }
      
      private function handleTiemr(param1:TimerEvent) : void
      {
         x += 1;
         if(x >= parent.width + width)
         {
            x = -width;
            updateData();
         }
      }
      
      public function set TA(param1:TextArea) : void
      {
         var _loc2_:Object = this._2669TA;
         if(_loc2_ !== param1)
         {
            this._2669TA = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"TA",_loc2_,param1));
         }
      }
      
      public function stopMove() : void
      {
         trace(this.name + " stopMove");
         if(timer)
         {
            if(timer.running)
            {
               timer.stop();
            }
            timer.removeEventListener(TimerEvent.TIMER,handleTiemr);
            timer = null;
            trace(this.name + " removeTimer");
         }
      }
   }
}

