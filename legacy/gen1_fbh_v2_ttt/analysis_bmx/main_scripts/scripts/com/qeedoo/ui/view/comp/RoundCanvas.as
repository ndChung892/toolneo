package com.qeedoo.ui.view.comp
{
   import mx.containers.Canvas;
   
   public class RoundCanvas extends Canvas
   {
      
      public function RoundCanvas()
      {
         super();
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:LotteryItemSlot = null;
         super.updateDisplayList(param1,param2);
         var _loc3_:Number = param1 / 2 - 30;
         var _loc4_:Number = param2 / 2 - 45;
         var _loc5_:Number = 360 / this.numChildren;
         var _loc6_:Number = _loc3_ - 50;
         var _loc11_:Number = (param1 + param2) / 2 / 640;
         var _loc12_:int = 0;
         while(_loc12_ < this.numChildren)
         {
            _loc10_ = LotteryItemSlot(this.getChildAt(_loc12_));
            _loc7_ = (_loc5_ * _loc12_ + 180) * (Math.PI / 180);
            _loc8_ = _loc3_ + Math.sin(_loc7_) * _loc6_;
            _loc9_ = _loc4_ + Math.cos(_loc7_) * _loc6_;
            _loc10_.x = _loc8_;
            _loc10_.y = _loc9_;
            _loc12_++;
         }
      }
   }
}

