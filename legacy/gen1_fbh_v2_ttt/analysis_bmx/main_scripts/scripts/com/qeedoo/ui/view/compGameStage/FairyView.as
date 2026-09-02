package com.qeedoo.ui.view.compGameStage
{
   import com.qeedoo.effects.EnterFrameMove;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ToolKit;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class FairyView extends DynamicItemView
   {
      
      private var _host:CreatureView;
      
      private var _yOffSet:Number = 0;
      
      private var _fairy:Sprite;
      
      private var _gameObjMove:EnterFrameMove;
      
      private var _fairy_cg:Object;
      
      private var _isFlying:Boolean = false;
      
      private var _core:Core = Core.getInstance();
      
      public function FairyView(param1:Object)
      {
         super();
         _fairy = new Sprite();
         _fairy_cg = param1;
         _fairy_cg.x = -param1.midX;
         _fairy_cg.y = -param1.footY;
         _fairy.addChild(DisplayObject(_fairy_cg));
         addChild(_fairy);
         _gameObjMove = new EnterFrameMove();
         _gameObjMove.addEventListener(EnterFrameMove.EFFECT_END,stopMove);
         _gameObjMove.target = this;
      }
      
      public function get posX() : int
      {
         return x;
      }
      
      public function get posY() : int
      {
         return y;
      }
      
      public function set posX(param1:int) : void
      {
         x = param1;
      }
      
      public function set posY(param1:int) : void
      {
         y = param1;
      }
      
      public function set host(param1:CreatureView) : void
      {
         _host = param1;
         addEventListener(Event.ENTER_FRAME,follow);
      }
      
      public function behavior(param1:int) : void
      {
         if(_fairy_cg)
         {
            if(_fairy_cg.behavior == param1)
            {
               return;
            }
            _fairy_cg.behavior = param1;
            _fairy_cg.play(_fairy_cg.dir + "-" + param1);
         }
      }
      
      public function hoof() : void
      {
      }
      
      public function get centerX() : int
      {
         return _core.view.getUI(ViewManager.STAGE_MAIN).centerX;
      }
      
      public function get centerY() : int
      {
         return _core.view.getUI(ViewManager.STAGE_MAIN).centerY;
      }
      
      public function get yBase() : int
      {
         return y;
      }
      
      public function follow(param1:Event = null) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(_host)
         {
            if(_host is BattleCreatureView)
            {
               this.x = _host.x;
               this.y = _host.y + _yOffSet;
               if(_host._cg)
               {
                  faceTo(_host._cg.dir);
               }
            }
            else
            {
               _loc2_ = _host.x - this.x;
               _loc3_ = _host.y - this.y + _yOffSet;
               _loc4_ = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
               if(_loc4_ > 10)
               {
                  faceTo(ToolKit.getDir(_loc2_,_loc3_));
               }
               else if(_host._cg)
               {
                  faceTo(_host._cg.dir);
               }
               if(_loc4_ > 3)
               {
                  _loc5_ = Math.round(_loc4_ / 4);
                  _gameObjMove.stepLength = _loc5_;
                  _gameObjMove.xBy = _loc2_;
                  _gameObjMove.yBy = _loc3_;
                  if(_loc5_ > 1)
                  {
                     _fairy_cg.accRate = int(_loc5_);
                  }
                  else
                  {
                     _fairy_cg.accRate = 0;
                  }
                  _gameObjMove.play();
               }
            }
         }
      }
      
      public function set isFlying(param1:Boolean) : void
      {
         _isFlying = param1;
         if(param1)
         {
            _yOffSet = -GamePredef.FLIGHT_HEIGHT;
         }
         else
         {
            _yOffSet = 0;
         }
      }
      
      private function stopMove(param1:Event = null) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(Boolean(_host) && Boolean(_host.visible) && Boolean(_host._cg))
         {
            if(_host.container == this.parent)
            {
               _loc2_ = int(_host._cg.dir);
               _loc3_ = this.parent.getChildIndex(this);
               _loc4_ = _host.container.getChildIndex(_host);
               if(_loc2_ >= 4 && _loc3_ > _loc4_)
               {
                  this.parent.setChildIndex(this,_loc4_);
                  _host.container.setChildIndex(_host,_loc4_);
               }
               else if(_loc2_ < 4 && _loc3_ <= _loc4_)
               {
                  this.parent.setChildIndex(this,_loc4_);
               }
            }
         }
      }
      
      override public function destroy() : void
      {
         if(_deleted)
         {
            return;
         }
         super.destroy();
         removeEventListener(Event.ENTER_FRAME,follow);
         _host = null;
         while(_fairy.numChildren > 0)
         {
            _fairy.removeChildAt(0);
         }
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
         if(_fairy_cg)
         {
            _fairy_cg.filters = [];
            _fairy_cg.stop();
            _fairy_cg = null;
         }
         _fairy = null;
         _gameObjMove.destroy();
         _gameObjMove = null;
         _core = null;
      }
      
      public function switchLayer() : void
      {
         if(Boolean(_host) && _host.container != this.parent)
         {
            if(this.parent)
            {
               this.parent.removeChild(this);
            }
            _host.container.addChild(this);
         }
      }
      
      private function faceTo(param1:int) : void
      {
         if(!_fairy_cg)
         {
            return;
         }
         var _loc2_:int = int(_fairy_cg.dir);
         if(_loc2_ == param1)
         {
            return;
         }
         _fairy_cg.dir = param1;
         _fairy_cg.play(_fairy_cg.dir + "-" + _fairy_cg.behavior);
      }
   }
}

