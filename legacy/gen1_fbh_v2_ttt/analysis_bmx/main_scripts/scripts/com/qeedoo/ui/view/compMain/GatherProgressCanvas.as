package com.qeedoo.ui.view.compMain
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
   import mx.controls.Button;
   import mx.controls.Label;
   import mx.controls.ProgressBar;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class GatherProgressCanvas extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var hide:Function;
      
      private var _delay:uint = 5000;
      
      private var _timer:Timer = new Timer(30);
      
      private var _1566114207quitButton:Button;
      
      private var _97299bar:ProgressBar;
      
      private var _608094309labelHint:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _startTime:Number;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _hint:String;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "height":400,
               "width":300,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"labelHint",
                  "stylesFactory":function():void
                  {
                     this.fontWeight = "bold";
                     this.fontSize = 14;
                     this.color = 65280;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":180,
                        "height":40,
                        "x":110,
                        "y":166
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"quitButton",
                  "events":{"click":"__quitButton_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":40,
                        "height":40,
                        "styleName":"BtnGatherCancel",
                        "x":130,
                        "y":186
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ProgressBar,
                  "id":"bar",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "mode":"manual",
                        "y":234,
                        "labelPlacement":"center",
                        "label":"",
                        "height":15,
                        "width":250,
                        "x":25
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public var viewType:uint = 16;
      
      public function GatherProgressCanvas()
      {
         hide = quitGathering;
         super();
         mx_internal::_document = this;
         this.height = 400;
         this.width = 300;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GatherProgressCanvas._watcherSetupUtil = param1;
      }
      
      public function __quitButton_click(param1:MouseEvent) : void
      {
         quitGathering();
      }
      
      public function quit(param1:String = null) : void
      {
         if(param1)
         {
            _core.sysMsg(param1);
         }
         _timer.removeEventListener(TimerEvent.TIMER,updateProgessBar);
         _timer.stop();
         visible = false;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:GatherProgressCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GatherProgressCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compMain_GatherProgressCanvasWatcherSetupUtil");
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
      
      private function updateProgessBar(param1:TimerEvent) : void
      {
         bar.setProgress(new Date().getTime() - _startTime,_delay);
         bar.label = "" + Math.round((_startTime + _delay - new Date().getTime()) / 10) / 100;
         if(Boolean(_hint) && Boolean(_timer.currentCount > 0) && _timer.currentCount % 10 == 0)
         {
            if(labelHint.text == _hint + "...")
            {
               labelHint.text = _hint;
            }
            else
            {
               labelHint.text += ".";
            }
         }
         if(new Date().getTime() - _startTime >= _delay)
         {
            complete();
         }
      }
      
      private function _GatherProgressCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            labelHint.filters = param1;
         },"labelHint.filters");
         result[0] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get quitButton() : Button
      {
         return this._1566114207quitButton;
      }
      
      public function set quitButton(param1:Button) : void
      {
         var _loc2_:Object = this._1566114207quitButton;
         if(_loc2_ !== param1)
         {
            this._1566114207quitButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"quitButton",_loc2_,param1));
         }
      }
      
      private function _GatherProgressCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
      }
      
      [Bindable(event="propertyChange")]
      public function get labelHint() : Label
      {
         return this._608094309labelHint;
      }
      
      [Bindable(event="propertyChange")]
      public function get bar() : ProgressBar
      {
         return this._97299bar;
      }
      
      public function play(param1:uint, param2:String = null) : void
      {
         this._delay = param1;
         this._hint = param2;
         labelHint.text = _hint;
         bar.setProgress(0,_delay);
         _startTime = new Date().getTime();
         if(!visible)
         {
            visible = true;
         }
         if(!bar.visible)
         {
            bar.visible = true;
         }
         _timer.addEventListener(TimerEvent.TIMER,updateProgessBar);
         _timer.start();
      }
      
      public function set bar(param1:ProgressBar) : void
      {
         var _loc2_:Object = this._97299bar;
         if(_loc2_ !== param1)
         {
            this._97299bar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bar",_loc2_,param1));
         }
      }
      
      private function quitGathering() : void
      {
         if(this.visible)
         {
            _core.remote.quitGatheringClinet();
            quit();
         }
      }
      
      public function complete() : void
      {
         _timer.removeEventListener(TimerEvent.TIMER,updateProgessBar);
         _timer.stop();
         bar.visible = false;
      }
      
      public function set labelHint(param1:Label) : void
      {
         var _loc2_:Object = this._608094309labelHint;
         if(_loc2_ !== param1)
         {
            this._608094309labelHint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelHint",_loc2_,param1));
         }
      }
   }
}

