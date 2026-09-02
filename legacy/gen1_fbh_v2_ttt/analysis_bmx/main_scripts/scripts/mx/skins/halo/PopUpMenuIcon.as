package mx.skins.halo
{
   import flash.display.Graphics;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class PopUpMenuIcon extends PopUpIcon
   {
      
      mx_internal static const VERSION:String = "3.0.0.0";
      
      public function PopUpMenuIcon()
      {
         super();
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         super.updateDisplayList(param1,param2);
         var _loc3_:Graphics = graphics;
         _loc3_.clear();
         _loc3_.lineStyle(1,mx_internal::arrowColor);
         _loc3_.moveTo(0,0);
         _loc3_.lineTo(param1 / 2,height);
         _loc3_.lineTo(param1,0);
      }
   }
}

