package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TimeUtil;
   import com.qeedoo.game.view.ViewManager;
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
   import mx.containers.Canvas;
   import mx.controls.Alert;
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.effects.Glow;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.CursorManager;
   import mx.styles.*;
   
   public class FazendaFarm extends Canvas
   {
      
      private var _207684226glowEffect:Glow;
      
      private var _core:Core = Core.getInstance();
      
      private var _mid:int = -1;
      
      private var _state:int = 0;
      
      private var _idx:int;
      
      public var _time:Number;
      
      private var _mState:int = -1;
      
      private var _timer:Timer;
      
      private var _104387img:Image;
      
      public var _num:Number;
      
      private var havestFlag:Boolean;
      
      private var _imgFilters:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":106,
               "height":64,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"img",
                  "events":{
                     "mouseOver":"__img_mouseOver",
                     "mouseOut":"__img_mouseOut"
                  },
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"visible":false};
                  }
               })]
            };
         }
      });
      
      private var _cid:int;
      
      public function FazendaFarm()
      {
         super();
         mx_internal::_document = this;
         this.width = 106;
         this.height = 64;
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
         _FazendaFarm_Glow1_i();
         this.addEventListener("creationComplete",___FazendaFarm_Canvas1_creationComplete);
      }
      
      public function ___FazendaFarm_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function imageMouseOver(param1:MouseEvent) : void
      {
         if(img.visible)
         {
            if(glowEffect.isPlaying)
            {
               glowEffect.end();
               img.filters = [];
            }
            if(_state != GamePredef.FARM_STATE_WAIT)
            {
               if(_imgFilters.length > 1 || _imgFilters[0] is GlowFilter)
               {
                  _imgFilters.pop();
               }
               _imgFilters.push(GamePredef.FILTER_CHAR_SELECTED);
               img.filters = _imgFilters;
            }
            else
            {
               img.filters = [GamePredef.FILTER_CHAR_SELECTED];
            }
         }
      }
      
      public function onMineTimeOut() : void
      {
         this.setState(GamePredef.FARM_STATE_OPEN);
         this.resetMine();
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function set glowEffect(param1:Glow) : void
      {
         var _loc2_:Object = this._207684226glowEffect;
         if(_loc2_ !== param1)
         {
            this._207684226glowEffect = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"glowEffect",_loc2_,param1));
         }
      }
      
      private function loadImage() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Date = null;
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         _loc1_ = GameData.d[GamePredef.TBL_MINERAL_TEMPLATE][_mid];
         if(_state == GamePredef.FARM_STATE_CAN_OPEN)
         {
            if(_cid == _core.player.id)
            {
               img.source = ResManager.MOUSE_ACTION_PLANT_BUILD;
               img.visible = true;
               img.toolTip = null;
            }
         }
         else if(_state == GamePredef.FARM_STATE_WAIT)
         {
            img.source = ResManager.MOUSE_ACTION_PLANT_WAIT;
            img.visible = true;
            _loc2_ = new Date();
            _loc3_ = _time - _core.timeLag;
            _loc2_.setTime(_loc3_);
            _loc4_ = TimeUtil.dateFormatter.format(_loc2_);
            img.toolTip = Language.FAZENDAPANEL_S[22].replace("{time}",_loc4_);
            if(glowEffect.isPlaying)
            {
               glowEffect.end();
            }
            img.filters = [];
         }
         else if(_mState < 0)
         {
            img.visible = false;
         }
         else if(_mState == GamePredef.MINE_GROW_ING)
         {
            _loc1_ = GameData.d[GamePredef.TBL_MINERAL_TEMPLATE][_mid];
            img.source = ResManager.getResUrl(_loc1_.resCode1);
            ResManager.setColorCode(img,_loc1_.colorCode);
            _imgFilters = img.filters;
            img.visible = true;
            setImageTooltip();
         }
         else if(_mState == GamePredef.MINE_GROW_UP)
         {
            _loc1_ = GameData.d[GamePredef.TBL_MINERAL_TEMPLATE][_mid];
            img.source = ResManager.getResUrl(_loc1_.resCode2);
            ResManager.setColorCode(img,_loc1_.colorCode);
            _imgFilters = img.filters;
            img.visible = true;
            setImageTooltip();
            if(!glowEffect.isPlaying)
            {
               glowEffect.play([img]);
            }
         }
      }
      
      public function updateView() : void
      {
         if(_state == GamePredef.FARM_STATE_CLOSE)
         {
            styleName = "farmClose";
         }
         else if(_state == GamePredef.FARM_STATE_OPEN)
         {
            styleName = "farmOpen";
         }
         else if(_state == GamePredef.FARM_STATE_CAN_OPEN)
         {
            styleName = "farmClose";
         }
         else if(_state == GamePredef.FARM_STATE_WAIT)
         {
            styleName = "farmClose";
         }
         loadImage();
      }
      
      public function setMid(param1:int) : void
      {
         _mid = param1;
      }
      
      public function init() : void
      {
         addEventListener(MouseEvent.CLICK,onClick);
      }
      
      [Bindable(event="propertyChange")]
      public function get glowEffect() : Glow
      {
         return this._207684226glowEffect;
      }
      
      private function removeTimer() : void
      {
         if(Boolean(_timer) && _timer.running)
         {
            _timer.stop();
            _timer.removeEventListener(TimerEvent.TIMER,handleTimer);
            _timer = null;
            trace("回自己庄园, 删除农田_" + _idx + "的定时器");
         }
      }
      
      public function onSteelMine(param1:int) : void
      {
         _num -= param1;
         setImageTooltip();
         playerAction();
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
      
      private function addTimer() : void
      {
         if(Boolean(_timer) && _timer.running)
         {
            _timer.stop();
            _timer.removeEventListener(TimerEvent.TIMER,handleTimer);
            _timer = null;
         }
         if(_state == GamePredef.FARM_STATE_WAIT)
         {
            _timer = new Timer(10000,0);
            _timer.addEventListener(TimerEvent.TIMER,handleTimer);
            _timer.start();
         }
      }
      
      private function setImageTooltip() : void
      {
         var _loc5_:String = null;
         var _loc1_:Date = new Date();
         var _loc2_:Number = _time - _core.timeLag;
         _loc1_.setTime(_loc2_);
         var _loc3_:String = TimeUtil.dateFormatter.format(_loc1_);
         var _loc4_:Object = GameData.d[GamePredef.TBL_MINERAL_TEMPLATE][_mid];
         var _loc6_:Object = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][_loc4_.tid];
         _loc4_.info = Language.FAZENDAPANEL_S[18].toString().replace("{num}",_loc4_.num).replace("{name}",_loc6_.name);
         _loc5_ = _loc4_.name + "\n";
         _loc5_ = _loc5_ + (Language.FAZENDAPANEL_S[8] + _loc4_.info + "\n");
         _loc5_ = _loc5_ + (Language.FAZENDAPANEL_S[0].toString().replace("{num}",_num).replace("{maxNum}",_loc4_.num) + "\n");
         if(_mState == GamePredef.MINE_GROW_ING)
         {
            _loc5_ += Language.FAZENDAPANEL_S[1].toString().replace("{time}",_loc3_);
         }
         else if(_mState == GamePredef.MINE_GROW_UP)
         {
            _loc5_ += Language.FAZENDAPANEL_S[2];
         }
         img.toolTip = _loc5_;
      }
      
      public function setMineState(param1:int) : void
      {
         _mState = param1;
      }
      
      public function __img_mouseOver(param1:MouseEvent) : void
      {
         imageMouseOver(param1);
      }
      
      public function resetMine() : void
      {
         _mid = -1;
         _mState = GamePredef.MINE_NULL;
         _num = 0;
         _time = -1;
         glowEffect.end();
         img.filters = [];
         img.visible = false;
      }
      
      public function setNum(param1:int) : void
      {
         _num = param1;
      }
      
      public function __img_mouseOut(param1:MouseEvent) : void
      {
         imageMouseOut(param1);
      }
      
      public function getMineState() : int
      {
         return _mState;
      }
      
      [Bindable(event="propertyChange")]
      public function get img() : Image
      {
         return this._104387img;
      }
      
      public function getHavestFlag() : Boolean
      {
         return havestFlag;
      }
      
      public function reset() : void
      {
         _state = 0;
         resetMine();
      }
      
      private function _FazendaFarm_Glow1_i() : Glow
      {
         var _loc1_:Glow = new Glow();
         glowEffect = _loc1_;
         _loc1_.duration = 1000;
         _loc1_.repeatCount = 10000;
         _loc1_.alphaFrom = 1;
         _loc1_.alphaTo = 1;
         _loc1_.blurXFrom = 0;
         _loc1_.blurXTo = 10;
         _loc1_.blurYFrom = 0;
         _loc1_.blurYTo = 10;
         _loc1_.color = 16771584;
         return _loc1_;
      }
      
      public function setTime(param1:Number) : void
      {
         _time = param1;
      }
      
      public function setState(param1:int) : void
      {
         _state = param1;
      }
      
      private function imageMouseOut(param1:MouseEvent) : void
      {
         if(img.visible)
         {
            if(_state != GamePredef.FARM_STATE_WAIT)
            {
               if(_mState == GamePredef.MINE_GROW_UP && !glowEffect.isPlaying)
               {
                  glowEffect.play([img]);
               }
               _imgFilters.pop();
               img.filters = _imgFilters;
            }
            else
            {
               img.filters = [];
            }
         }
      }
      
      public function setHavestFlag(param1:Boolean) : void
      {
         havestFlag = param1;
      }
      
      public function onClick(param1:MouseEvent) : void
      {
         var resetMouse:Boolean;
         var func:Function = null;
         var mid:* = undefined;
         var flag:Boolean = false;
         var view:* = undefined;
         var farmNum:int = 0;
         var msg:String = null;
         var evt:MouseEvent = param1;
         evt.stopPropagation();
         resetMouse = true;
         if(_core.view.mouseState == GamePredef.ACTION_CLEAR_PLANT)
         {
            if(_cid == _core.player.id)
            {
               if(_mid > 0)
               {
                  func = function(param1:CloseEvent):*
                  {
                     if(param1.detail == Alert.YES)
                     {
                        _core.remote.delMinearl(_idx);
                     }
                  };
                  Alert.show(Language.FAZENDAPANEL_S[16],"",Alert.YES | Alert.NO,this,func);
               }
            }
         }
         else if(_core.view.mouseState == GamePredef.ACTION_REAP_MINE)
         {
            resetMouse = false;
            if(_cid == _core.player.id)
            {
               if(_mid > 0)
               {
                  _core.remote.harvestMine(_idx);
               }
               else
               {
                  resetMouse = true;
               }
            }
            else
            {
               _core.remote.steelMine(_cid,_idx);
               if(_mid < 0)
               {
                  resetMouse = true;
               }
            }
         }
         else if(_core.view.mouseState == GamePredef.ACTION_REAP_ALL)
         {
            _core.view.getUI(ViewManager.PANEL_FAZENDA).reapAllMines();
         }
         else
         {
            mid = (_core.view.mouseState - 160) / 10 + 1;
            if(mid > 0 && _cid == _core.player.id)
            {
               resetMouse = false;
               _core.remote.call("addMineral",null,_idx,mid);
            }
            else if(_state == GamePredef.FARM_STATE_CAN_OPEN && _cid == _core.player.id)
            {
               flag = img.hitTestPoint(evt.stageX,evt.stageY);
               if(flag)
               {
                  func = function(param1:CloseEvent):void
                  {
                     if(param1.detail == Alert.YES)
                     {
                        _core.remote.addFarmNum(_idx);
                     }
                  };
                  view = _core.view.getUI(ViewManager.PANEL_FAZENDA);
                  if(view.canBuildFarm())
                  {
                     farmNum = int(view.getFarmNum());
                     msg = Language.FAZENDAPANEL_S[3].toString().replace("{num}",GamePredef.FARM_NUM_MONEY[farmNum]);
                     Alert.show(msg,"",Alert.YES | Alert.NO,null,func);
                  }
                  else
                  {
                     Alert.show(Language.FAZENDAPANEL_S[10]);
                  }
               }
            }
         }
         if(resetMouse)
         {
            _core.view.resoreMouse();
            CursorManager.removeAllCursors();
         }
      }
      
      public function setOwnerId(param1:int) : void
      {
         _cid = param1;
         if(_cid != _core.player.id)
         {
            addTimer();
         }
         else
         {
            removeTimer();
         }
      }
      
      public function playerAction() : void
      {
         _core.view.getUI(ViewManager.PANEL_FAZENDA).playerAction(_idx,img.source,img.filters);
      }
      
      public function set idx(param1:int) : *
      {
         _idx = param1;
      }
      
      public function handleTimer(param1:TimerEvent) : void
      {
         if(!this.havestFlag)
         {
            return;
         }
         var _loc2_:Number = new Date().getTime();
         trace("检测农田_" + _idx + "否冷却时间是否已过:" + (_loc2_ - _time));
         if(_loc2_ >= _time)
         {
            _timer.stop();
            _timer.removeEventListener(TimerEvent.TIMER,handleTimer);
            _timer = null;
            trace("冷却时间到了, 删除农田_" + _idx + "的定时器， 并请求服务器数据");
            this.setState(GamePredef.FARM_STATE_OPEN);
            this.resetMine();
            updateView();
         }
      }
   }
}

