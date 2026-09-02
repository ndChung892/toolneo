package com.qeedoo.ui.view.comp
{
   import mx.core.UIComponent;
   
   public class SimpleConainer extends UIComponent
   {
      
      public function SimpleConainer()
      {
         super();
      }
      
      public function removeAllChildren() : void
      {
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function getChildren() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:int = numChildren;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_.push(getChildAt(_loc3_));
            _loc3_++;
         }
         return _loc1_;
      }
   }
}

