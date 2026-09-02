package com.qeedoo.ui.view.compBattle
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
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
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TimeCountCanvas extends SimpleCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var timer:Timer;
      
      private var _25846365lblTime:Label;
      
      private var _2077607820timeLeft:int;
      
      private const TIME_MAX:int = 25;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":Label,
               "id":"lblTime",
               "stylesFactory":function():void
               {
                  this.fontSize = 60;
                  this.color = 16711680;
                  this.textAlign = "center";
                  this.fontWeight = "normal";
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "styleName":"LabelBattleTimer",
                     "width":147,
                     "height":108
                  };
               }
            })]};
         }
      });
      
      public function TimeCountCanvas()
      {
         super();
         mx_internal::_document = this;
         this.addEventListener("creationComplete",___TimeCountCanvas_SimpleCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TimeCountCanvas._watcherSetupUtil = param1;
      }
      
      public function timeOut() : void
      {
         var _loc1_:Core = Core.getInstance();
         var _loc2_:BattleStage = BattleStage(_loc1_.view.getUI(ViewManager.STAGE_BATTLE));
         var _loc3_:Object = _loc1_.battle;
         dispatchEvent(new GameEvent(GameEvent.BATTLE_ROUND_TIME_OUT,true));
         _loc3_.battleCmd(-1,GamePredef.BATTLE_ACTION_TIMEOUT,-1);
         if(Boolean(_loc2_.petActive))
         {
            _loc3_.battleCmd(-1,GamePredef.BATTLE_ACTION_TIMEOUT,-1);
         }
      }
      
      override public function hide() : void
      {
         timer.stop();
         visible = false;
      }
      
      override public function show() : void
      {
         lblTime.setStyle("color","yellow");
         lblTime.setStyle("fontSize",75);
         timeLeft = TIME_MAX;
         timer.start();
         visible = true;
      }
      
      public function set lblTime(param1:Label) : void
      {
         var _loc2_:Object = this._25846365lblTime;
         if(_loc2_ !== param1)
         {
            this._25846365lblTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lblTime",_loc2_,param1));
         }
      }
      
      private function timerHandler(param1:TimerEvent) : void
      {
         --timeLeft;
         if(timeLeft == 9)
         {
            lblTime.setStyle("color","red");
            lblTime.setStyle("fontSize",85);
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
         var target:TimeCountCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TimeCountCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compBattle_TimeCountCanvasWatcherSetupUtil");
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
      
      public function ___TimeCountCanvas_SimpleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function init() : void
      {
         timer = new Timer(1000);
         timeLeft = TIME_MAX;
         timer.addEventListener(TimerEvent.TIMER,timerHandler);
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
      public function get lblTime() : Label
      {
         return this._25846365lblTime;
      }
      
      private function _TimeCountCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = timeLeft.toString();
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lblTime.text = param1;
         },"lblTime.text");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            lblTime.filters = param1;
         },"lblTime.filters");
         result[1] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get timeLeft() : int
      {
         return this._2077607820timeLeft;
      }
      
      private function _TimeCountCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = timeLeft.toString();
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
      }
   }
}

