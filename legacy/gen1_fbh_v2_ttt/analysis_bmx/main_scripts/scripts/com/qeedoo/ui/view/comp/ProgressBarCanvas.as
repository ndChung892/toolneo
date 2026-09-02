package com.qeedoo.ui.view.comp
{
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
   import mx.controls.ProgressBar;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ProgressBarCanvas extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _717410904progressName:String = "";
      
      private var myTimer:Timer;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _183067657cancelToolTip:String = "";
      
      private var _979847642proBar:ProgressBar;
      
      mx_internal var _watchers:Array = [];
      
      private var _606509545showCancelButton:Boolean = false;
      
      public var _ProgressBarCanvas_Button1:Button;
      
      mx_internal var _bindings:Array = [];
      
      public var completeFunction:Function;
      
      public var cancelFunction:Function;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":232,
               "height":16,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":ProgressBar,
                  "id":"proBar",
                  "stylesFactory":function():void
                  {
                     this.left = "0";
                     this.right = "22";
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "labelPlacement":"center",
                        "height":16,
                        "mode":"manual"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"_ProgressBarCanvas_Button1",
                  "events":{"click":"___ProgressBarCanvas_Button1_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "0";
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":16,
                        "label":"X",
                        "height":16
                     };
                  }
               })]
            };
         }
      });
      
      public function ProgressBarCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 232;
         this.height = 16;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ProgressBarCanvas._watcherSetupUtil = param1;
      }
      
      public function hide() : void
      {
         showCancelButton = false;
         progressName = "";
         cancelToolTip = "";
         cancelFunction = null;
         completeFunction = null;
         if(myTimer)
         {
            myTimer.removeEventListener(TimerEvent.TIMER,timerHandler);
            myTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,completeHandler);
            myTimer.stop();
            myTimer = null;
         }
         visible = false;
      }
      
      public function show() : void
      {
         visible = true;
      }
      
      private function timerHandler(param1:TimerEvent) : void
      {
         proBar.setProgress(myTimer.currentCount,100);
      }
      
      [Bindable(event="propertyChange")]
      public function get cancelToolTip() : String
      {
         return this._183067657cancelToolTip;
      }
      
      public function setCurrentPercent(param1:Number) : void
      {
         proBar.setProgress(param1,100);
      }
      
      public function ___ProgressBarCanvas_Button1_click(param1:MouseEvent) : void
      {
         cancelBar();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ProgressBarCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ProgressBarCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_ProgressBarCanvasWatcherSetupUtil");
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
      
      private function completeHandler(param1:TimerEvent) : void
      {
         completeFunction();
         hide();
      }
      
      public function set showCancelButton(param1:Boolean) : void
      {
         var _loc2_:Object = this._606509545showCancelButton;
         if(_loc2_ !== param1)
         {
            this._606509545showCancelButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCancelButton",_loc2_,param1));
         }
      }
      
      public function set proBar(param1:ProgressBar) : void
      {
         var _loc2_:Object = this._979847642proBar;
         if(_loc2_ !== param1)
         {
            this._979847642proBar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"proBar",_loc2_,param1));
         }
      }
      
      private function _ProgressBarCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = progressName;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            proBar.label = param1;
         },"proBar.label");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return showCancelButton;
         },function(param1:Boolean):void
         {
            _ProgressBarCanvas_Button1.visible = param1;
         },"_ProgressBarCanvas_Button1.visible");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = cancelToolTip;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ProgressBarCanvas_Button1.toolTip = param1;
         },"_ProgressBarCanvas_Button1.toolTip");
         result[2] = binding;
         return result;
      }
      
      private function _ProgressBarCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = progressName;
         _loc1_ = showCancelButton;
         _loc1_ = cancelToolTip;
      }
      
      public function showByTime(param1:int) : void
      {
         show();
         myTimer = new Timer(param1 * 10,100);
         myTimer.addEventListener(TimerEvent.TIMER,timerHandler);
         myTimer.addEventListener(TimerEvent.TIMER_COMPLETE,completeHandler);
         myTimer.reset();
         myTimer.start();
      }
      
      private function cancelBar() : void
      {
         cancelFunction();
         hide();
      }
      
      [Bindable(event="propertyChange")]
      public function get progressName() : String
      {
         return this._717410904progressName;
      }
      
      [Bindable(event="propertyChange")]
      public function get showCancelButton() : Boolean
      {
         return this._606509545showCancelButton;
      }
      
      public function set progressName(param1:String) : void
      {
         var _loc2_:Object = this._717410904progressName;
         if(_loc2_ !== param1)
         {
            this._717410904progressName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressName",_loc2_,param1));
         }
      }
      
      public function set cancelToolTip(param1:String) : void
      {
         var _loc2_:Object = this._183067657cancelToolTip;
         if(_loc2_ !== param1)
         {
            this._183067657cancelToolTip = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cancelToolTip",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get proBar() : ProgressBar
      {
         return this._979847642proBar;
      }
   }
}

