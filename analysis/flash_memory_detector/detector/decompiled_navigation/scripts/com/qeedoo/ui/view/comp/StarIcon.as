package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
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
   import mx.controls.Image;
   import mx.effects.Glow;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class StarIcon extends Image
   {
      
      private var _207684226glowEffect:Glow;
      
      private var _core:Core = Core.getInstance();
      
      public var starData:Object;
      
      private var iconC:Class = StarIcon_iconC;
      
      private var _stype:int;
      
      private var iconN:Class = StarIcon_iconN;
      
      private var _showTip:Boolean;
      
      private var iconL:Class = StarIcon_iconL;
      
      public function StarIcon()
      {
         super();
         this.width = 20;
         this.height = 20;
         _StarIcon_Glow1_i();
         this.addEventListener("rollOver",___StarIcon_Image1_rollOver);
         this.addEventListener("rollOut",___StarIcon_Image1_rollOut);
         this.addEventListener("creationComplete",___StarIcon_Image1_creationComplete);
      }
      
      private function _StarIcon_Glow1_i() : Glow
      {
         var _loc1_:Glow = new Glow();
         glowEffect = _loc1_;
         _loc1_.duration = 1000;
         _loc1_.repeatCount = 100;
         _loc1_.alphaFrom = 1;
         _loc1_.alphaTo = 1;
         _loc1_.blurXFrom = 0;
         _loc1_.blurXTo = 10;
         _loc1_.blurYFrom = 0;
         _loc1_.blurYTo = 10;
         _loc1_.color = 16771584;
         return _loc1_;
      }
      
      public function setSourceC() : void
      {
         source = iconC;
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
      
      public function ___StarIcon_Image1_rollOver(param1:MouseEvent) : void
      {
         showTip();
      }
      
      [Bindable(event="propertyChange")]
      public function get glowEffect() : Glow
      {
         return this._207684226glowEffect;
      }
      
      public function setSourceL() : void
      {
         source = iconL;
      }
      
      public function init() : void
      {
         source = iconN;
      }
      
      public function setSourceN() : void
      {
         source = iconN;
      }
      
      public function ___StarIcon_Image1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function set stype(param1:int) : void
      {
         _stype = param1;
      }
      
      public function showTip() : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:String = null;
         filters = [GamePredef.FILTER_ALLOW_SELECTED];
         var _loc1_:TipStarReq = TipStarReq(_core.view.getUI(ViewManager.TOOLTIP_REQSTAR));
         var _loc2_:Object = GameData.d[GamePredef.TBL_STARS_TEMPLATE][starData.currentId];
         var _loc3_:Object = GameData.d[GamePredef.TBL_STARS_TEMPLATE][starData.nextId];
         var _loc4_:Object = new Object();
         _loc4_.type = _stype;
         if(_loc3_)
         {
            _loc4_.name = _loc3_.name;
            _loc4_.reqStarLevel = _loc3_.reqStarLevel;
            _loc4_.reqMoney = _loc3_.reqMoney;
            _loc4_.reqLevel = _loc3_.reqLevel;
            _loc4_.addValue2 = _loc3_.addValue;
            _loc5_ = int(_loc3_.reqSeconds);
            _loc6_ = _loc5_ / (3600 * 24);
            _loc7_ = _loc5_ % (3600 * 24) / 3600;
            _loc8_ = _loc5_ % 3600 / 60;
            _loc9_ = _loc5_ % 3600 % 60;
            _loc10_ = Language.CHARACTORPANEL_S[67].toString().replace("{d}",_loc6_).replace("{h}",_loc7_).replace("{m}",_loc8_).replace("{s}",_loc9_);
            _loc4_.reqTime = _loc10_;
         }
         else
         {
            _loc2_ && (_loc4_.name = _loc2_.name);
            _loc4_.reqStarLevel = "--";
            _loc4_.reqMoney = "--";
            _loc4_.reqLevel = "--";
            _loc4_.addValue2 = "--";
            _loc4_.reqTime = "--";
         }
         if(_loc2_)
         {
            _loc4_.addValue1 = _loc2_.addValue;
            _loc4_.level = _loc2_.level;
         }
         else
         {
            _loc4_.addValue1 = 0;
            _loc4_.level = 0;
         }
         if(parseInt(_loc4_.addValue1) == _loc4_.addValue1)
         {
            _loc4_.addValue1 = parseInt(_loc4_.addValue1);
         }
         if(parseInt(_loc4_.addValue2) == _loc4_.addValue2)
         {
            _loc4_.addValue2 = parseInt(_loc4_.addValue2);
         }
         if(_loc1_)
         {
            _loc1_.object = _loc4_;
            _loc1_.show();
         }
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      public function setData(param1:Object) : void
      {
         starData = param1;
         if(param1.finishDate > 0)
         {
         }
      }
      
      public function checkLvUpCond(param1:int) : void
      {
         var _loc2_:Object = GameData.d[GamePredef.TBL_STARS_TEMPLATE][starData.nextId];
         var _loc3_:Object = GameData.d[GamePredef.TBL_STARS_TEMPLATE][starData.currentId];
         if(_loc2_)
         {
            if(param1 >= _loc2_.reqStarLevel && _core.player.level >= _loc2_.reqLevel && (_core.player.money >= _loc2_.reqMoney || _core.player.moneyBind >= _loc2_.reqMoney))
            {
               if(!glowEffect.isPlaying)
               {
                  glowEffect.play([this]);
               }
            }
            else
            {
               stopEffect();
            }
         }
      }
      
      public function stopEffect() : void
      {
         if(glowEffect.isPlaying)
         {
            glowEffect.stop();
            this.filters = null;
         }
      }
      
      public function showStar() : void
      {
         setSourceC();
      }
      
      public function hideTip() : void
      {
         filters = [];
         var _loc1_:TipStarReq = TipStarReq(_core.view.getUI(ViewManager.TOOLTIP_REQSTAR));
         _loc1_ && _loc1_.hide();
      }
      
      public function ___StarIcon_Image1_rollOut(param1:MouseEvent) : void
      {
         hideTip();
      }
   }
}

