package com.qeedoo.game.utils
{
   import flash.display.Stage;
   import flash.events.MouseEvent;
   
   public class MouseManager
   {
      
      private static const MIN_DELAY:int = 1500;
      
      private static var lastClickTime:int = 0;
      
      private static var initialized:Boolean = false;
      
      public static var mouseDownFlag:Boolean = false;
      
      public function MouseManager()
      {
         super();
      }
      
      public static function checkClick() : Boolean
      {
         var _loc1_:int = new Date().getTime();
         if(_loc1_ - lastClickTime < MIN_DELAY)
         {
            return false;
         }
         lastClickTime = _loc1_;
         return true;
      }
      
      private static function mouseDownHandler(param1:MouseEvent) : void
      {
         mouseDownFlag = true;
      }
      
      public static function setUnClickable(param1:int) : void
      {
         lastClickTime = new Date().getTime() + param1;
      }
      
      private static function mouseUpHandler(param1:MouseEvent) : void
      {
         mouseDownFlag = false;
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(!initialized)
         {
            param1.addEventListener(MouseEvent.MOUSE_DOWN,mouseDownHandler);
            param1.addEventListener(MouseEvent.MOUSE_UP,mouseUpHandler);
            initialized = true;
         }
      }
      
      public static function setClickTime() : void
      {
         lastClickTime = new Date().getTime();
      }
   }
}

