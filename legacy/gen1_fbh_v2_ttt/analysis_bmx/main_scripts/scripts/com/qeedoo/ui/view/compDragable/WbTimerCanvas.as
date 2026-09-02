package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
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
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class WbTimerCanvas extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var timer:Timer = new Timer(1000);
      
      private var _2077607820timeLeft:int = 25;
      
      private const TIME_MAX:int = 25;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _WbTimerCanvas_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _607736863labelTime:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _75360398getLife:BasicGlowButton;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":200,
               "height":100,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_WbTimerCanvas_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"labelTime",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.color = 1961723;
                     this.horizontalCenter = "0";
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":40};
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"getLife",
                  "events":{"click":"__getLife_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "70";
                     this.bottom = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "label":"Đấu Ngay",
                        "styleName":"BtnStdRed"
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function WbTimerCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 200;
         this.styleName = "StandardContent";
         this.height = 100;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         WbTimerCanvas._watcherSetupUtil = param1;
      }
      
      public function timeOut() : void
      {
         if(timer)
         {
            timer.removeEventListener(TimerEvent.TIMER,timerHandler);
            timer.stop();
         }
         if(_core.state == GamePredef.ST_NORMAL)
         {
            _core.remote.call("wbBattleCheck",null,_core.player.id);
            this.hide();
         }
      }
      
      override public function hide() : void
      {
         this.visible = false;
         timeLeft = TIME_MAX;
      }
      
      public function set labelTime(param1:Label) : void
      {
         var _loc2_:Object = this._607736863labelTime;
         if(_loc2_ !== param1)
         {
            this._607736863labelTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelTime",_loc2_,param1));
         }
      }
      
      private function timerHandler(param1:TimerEvent) : void
      {
         if(timeLeft > 0)
         {
            --timeLeft;
            labelTime.htmlText = "<font color=\'#ff0000\'>" + timeLeft + "</font>giây sau sẽ tiếp tục chiến đấu";
         }
         if(timeLeft <= 0)
         {
            timeOut();
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:WbTimerCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _WbTimerCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_WbTimerCanvasWatcherSetupUtil");
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
      
      public function __getLife_click(param1:MouseEvent) : void
      {
         reliveNow();
      }
      
      private function _WbTimerCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.WBQUTOBATTLECANVA_U[12];
      }
      
      private function init() : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get labelTime() : Label
      {
         return this._607736863labelTime;
      }
      
      private function _WbTimerCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WBQUTOBATTLECANVA_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WbTimerCanvas_BasicTitleCanvas1.text = param1;
         },"_WbTimerCanvas_BasicTitleCanvas1.text");
         result[0] = binding;
         return result;
      }
      
      public function set getLife(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._75360398getLife;
         if(_loc2_ !== param1)
         {
            this._75360398getLife = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"getLife",_loc2_,param1));
         }
      }
      
      public function set timeLeft(param1:int) : void
      {
         var _loc2_:Object = this._2077607820timeLeft;
         if(_loc2_ !== param1)
         {
            this._2077607820timeLeft = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"timeLeft",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get timeLeft() : int
      {
         return this._2077607820timeLeft;
      }
      
      public function reliveNow() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("wbReliveNow",null,_core.player.id);
            }
         };
         Alert.show(Language.WBQUTOBATTLECANVA_U[9],"",Alert.YES | Alert.NO,null,func);
      }
      
      [Bindable(event="propertyChange")]
      public function get getLife() : BasicGlowButton
      {
         return this._75360398getLife;
      }
      
      override public function show() : void
      {
         this.visible = true;
         timeLeft = TIME_MAX;
         if(Boolean(labelTime) && Boolean(labelTime.htmlText))
         {
            labelTime.htmlText = "<font color=\'#ff0000\'>" + timeLeft + "</font>giây sau sẽ tiếp tục chiến đấu";
         }
         if(Boolean(timer) && timer.running)
         {
            timer.removeEventListener(TimerEvent.TIMER,timerHandler);
            timer.stop();
         }
         timer.addEventListener(TimerEvent.TIMER,timerHandler);
         timer.start();
      }
   }
}

