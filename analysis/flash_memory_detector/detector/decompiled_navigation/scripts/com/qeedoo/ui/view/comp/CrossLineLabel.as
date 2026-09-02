package com.qeedoo.ui.view.comp
{
   import mx.controls.Label;
   
   public class CrossLineLabel extends Label
   {
      
      private var _lineColor:uint = 9503234;
      
      public function CrossLineLabel()
      {
         super();
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         super.updateDisplayList(param1,param2);
         if(this.textWidth)
         {
            this.graphics.clear();
            this.graphics.lineStyle(1,lineColor);
            this.graphics.moveTo(0,this.height / 2);
            this.graphics.lineTo(this.textWidth + 5,this.height / 2);
            this.graphics.endFill();
         }
      }
      
      public function set lineColor(param1:uint) : void
      {
         if(param1 != _lineColor)
         {
            _lineColor = param1;
            this.invalidateDisplayList();
         }
      }
      
      public function get lineColor() : uint
      {
         return _lineColor;
      }
   }
}

