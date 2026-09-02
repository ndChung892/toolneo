package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
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
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SysInfoPanel extends SimpleCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private const UPDATE_COUNT:int = 10;
      
      private const GAP_THRESHOLD:Number = 1.2;
      
      private var _checkCount:int;
      
      private var _107989mem:String;
      
      private var last:Number = 0;
      
      mx_internal var _watchers:Array = [];
      
      private var frameRateState:uint = 1;
      
      private var frames:int;
      
      private var _1080618603realFps:Number;
      
      private var total:Number = 0;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _prevDateTime:Number;
      
      private var _prevGetTime:Number;
      
      private var lastFpS:Number;
      
      public var _SysInfoPanel_Label1:Label;
      
      public var _SysInfoPanel_Label2:Label;
      
      private const CHECK_COUNT:int = 79;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var fps:Number;
      
      mx_internal var _bindings:Array = [];
      
      private var _accCount:int;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":200,
               "height":100,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"_SysInfoPanel_Label1",
                  "stylesFactory":function():void
                  {
                     this.color = 65280;
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_SysInfoPanel_Label2",
                  "stylesFactory":function():void
                  {
                     this.color = 16711680;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":20};
                  }
               })]
            };
         }
      });
      
      private var current:Number;
      
      private var _core:Core = Core.getInstance();
      
      public function SysInfoPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 200;
         this.height = 100;
         this.addEventListener("initialize",___SysInfoPanel_SimpleCanvas1_initialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SysInfoPanel._watcherSetupUtil = param1;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SysInfoPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SysInfoPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_SysInfoPanelWatcherSetupUtil");
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
      
      private function updateInfo(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:* = undefined;
         var _loc6_:Object = null;
         current = getTimer();
         if(Boolean(_core.player) && _checkCount % CHECK_COUNT == 0)
         {
            _loc2_ = new Date().getTime();
            if(Boolean(_prevGetTime) && Boolean(_prevDateTime))
            {
               _loc3_ = current - _prevGetTime;
               _loc4_ = _loc2_ - _prevDateTime;
               if(_loc3_ > GAP_THRESHOLD * _loc4_)
               {
                  _core.player.say(Language.CHEATCHECKER_S[0],GamePredef.MSG_CHANNEL_LOCAL);
                  ++_accCount;
                  if(_accCount >= 3)
                  {
                     _accCount = 0;
                     _core.logout();
                     _core.refresh();
                  }
               }
            }
            _prevGetTime = current;
            _prevDateTime = _loc2_;
         }
         ++_checkCount;
         fps = 1 / (current - last) * 1000;
         last = current;
         frames = (frames + 1) % UPDATE_COUNT;
         total += fps;
         if(frames == 0)
         {
            if(realFps)
            {
               lastFpS = realFps;
            }
            realFps = Math.round(total / UPDATE_COUNT);
            if(_core)
            {
               _core.realFps = realFps;
            }
            if(Boolean(lastFpS) && lastFpS != realFps)
            {
               if(frameRateState == 1 && realFps <= 5)
               {
                  for(_loc5_ in _core.view.cDict)
                  {
                     _loc6_ = _core.view.getC(_loc5_);
                     if(_loc6_)
                     {
                        _loc6_.speed = int(9 * GamePredef.GLOBAL_FRAME_RATE_DEFAULT / realFps);
                     }
                  }
                  if(Boolean(_core) && Boolean(_core.player) && _core.player.inBattle)
                  {
                     _core.view.getUI(ViewManager.STAGE_BATTLE).setBattleSpeed(realFps);
                  }
                  frameRateState = 2;
               }
               else if(frameRateState == 2 && realFps > 5)
               {
                  for(_loc5_ in _core.view.cDict)
                  {
                     _loc6_ = _core.view.getC(_loc5_);
                     if(_loc6_)
                     {
                        _loc6_.speed = int(9 * GamePredef.GLOBAL_FRAME_RATE_DEFAULT / GamePredef.GLOBAL_FRAME_RATE);
                     }
                  }
                  if(Boolean(_core) && Boolean(_core.player) && _core.player.inBattle)
                  {
                     _core.view.getUI(ViewManager.STAGE_BATTLE).setBattleSpeed(realFps);
                  }
                  frameRateState = 1;
               }
            }
            total = 0;
         }
      }
      
      private function init() : void
      {
         this.addEventListener(Event.ENTER_FRAME,updateInfo);
      }
      
      private function set mem(param1:String) : void
      {
         var _loc2_:Object = this._107989mem;
         if(_loc2_ !== param1)
         {
            this._107989mem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mem",_loc2_,param1));
         }
      }
      
      private function _SysInfoPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = "FPS:" + realFps.toString();
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SysInfoPanel_Label1.text = param1;
         },"_SysInfoPanel_Label1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = "MEM:" + mem;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SysInfoPanel_Label2.text = param1;
         },"_SysInfoPanel_Label2.text");
         result[1] = binding;
         return result;
      }
      
      public function ___SysInfoPanel_SimpleCanvas1_initialize(param1:FlexEvent) : void
      {
         init();
      }
      
      private function _SysInfoPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = "FPS:" + realFps.toString();
         _loc1_ = "MEM:" + mem;
      }
      
      private function set realFps(param1:Number) : void
      {
         var _loc2_:Object = this._1080618603realFps;
         if(_loc2_ !== param1)
         {
            this._1080618603realFps = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"realFps",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get mem() : String
      {
         return this._107989mem;
      }
      
      [Bindable(event="propertyChange")]
      private function get realFps() : Number
      {
         return this._1080618603realFps;
      }
   }
}

