package com.qeedoo.ui.view.compGameStage
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import flash.display.DisplayObject;
   
   public class DoubleFlyerManager
   {
      
      private var _flyer:FlyerView;
      
      public var host:CharactorView;
      
      private var _container:DynamicItemLayer;
      
      private var _flyerFront:FlyerView;
      
      public var guest:CharactorView;
      
      private var _core:Core;
      
      public function DoubleFlyerManager()
      {
         super();
         _core = Core.getInstance();
         _container = _core.view.getUI(ViewManager.STAGE_MAIN_CONTAINER).flyerLayer;
      }
      
      public function set flyer(param1:FlyerView) : void
      {
         _flyer = param1;
         _container.addChild(_flyer);
      }
      
      private function containObj(param1:DisplayObject) : Boolean
      {
         if(Boolean(param1) && _container.contains(param1))
         {
            return true;
         }
         return false;
      }
      
      public function upFlyerDepth() : void
      {
         if(!containObj(_flyer) || !containObj(host))
         {
            return;
         }
         var _loc1_:int = _container.getChildIndex(host);
         var _loc2_:int = _loc1_;
         var _loc3_:int = _container.numChildren - 1;
         if(_loc2_ < 2)
         {
            _loc2_ = Math.min(2,_container.numChildren - 1);
         }
         else if(_loc2_ > _container.numChildren - 2)
         {
            _loc2_ = Math.max(0,_container.numChildren - 2);
         }
         if(_flyerFront)
         {
            _container.setChildIndex(_flyerFront,Math.min(_loc3_,_loc2_ + 1));
         }
         if(host._cg.dir >= 4)
         {
            if(containObj(guest))
            {
               _container.setChildIndex(guest,Math.max(0,_loc2_ - 1));
               _container.setChildIndex(host,_loc2_);
            }
         }
         else if(host._cg.dir == 0)
         {
            if(containObj(guest))
            {
               _container.setChildIndex(guest,Math.max(0,_loc2_ - 1));
               _container.setChildIndex(host,_loc2_);
            }
         }
         else if(containObj(guest))
         {
            _container.setChildIndex(host,Math.max(0,_loc2_ - 1));
            _container.setChildIndex(guest,_loc2_);
         }
         _container.setChildIndex(_flyer,Math.max(0,_loc2_ - 2));
      }
      
      public function removeFlyer() : void
      {
         if(_flyer)
         {
            _flyer.removeFlyer();
         }
         if(_flyerFront)
         {
            _flyerFront.removeFlyer();
         }
      }
      
      public function set flyerFront(param1:FlyerView) : void
      {
         _flyerFront = param1;
         _container.addChild(_flyerFront);
      }
      
      public function upFlyerPos() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(Boolean(host) && Boolean(host._cg))
         {
            _loc1_ = -Number(host._cg.dir) * Math.PI / 4;
            _loc2_ = Math.cos(_loc1_);
            _loc3_ = Math.sin(_loc1_);
            _loc4_ = -GamePredef.DFLYING_DISTANCE_NORMAL / 2 * _loc2_;
            _loc5_ = -GamePredef.DFLYING_DISTANCE_NORMAL / 4 * _loc3_;
            if(_flyer)
            {
               _flyer.setFlyerXY(host,_loc4_,_loc5_);
            }
            if(_flyerFront)
            {
               _flyerFront.setFlyerXY(host,_loc4_,_loc5_);
            }
         }
         if(guest)
         {
            guest.coordinateSelfXY();
         }
         upFlyerDepth();
      }
   }
}

