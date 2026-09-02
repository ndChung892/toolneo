package com.qeedoo.ui.utils
{
   import flash.display.Stage;
   import flash.events.MouseEvent;
   
   public class MouseManager
   {
      
      private static const MIN_DELAY:int = 1500;
      
      private static var _lastClick:Number = 0;
      
      private static var _lastFirstClick:Number = 0;
      
      private static var _dClickDelay:Number = 800;
      
      private static var initialized:Boolean = false;
      
      public static var mouseDownFlag:Boolean = false;
      
      public function MouseManager()
      {
         super();
      }
      
      private static function mouseDownHandler(param1:MouseEvent) : void
      {
         mouseDownFlag = true;
      }
      
      public static function setUnClickable(param1:int) : void
      {
         _lastClick = new Date().getTime() + param1;
      }
      
      private static function mouseUpHandler(param1:MouseEvent) : void
      {
         mouseDownFlag = false;
      }
      
      public static function setClickTime() : void
      {
         _lastClick = new Date().getTime();
      }
      
      public static function get isDClick() : Boolean
      {
         return Boolean(_lastFirstClick + _dClickDelay > new Date().getTime());
      }
      
      public static function checkClick() : Boolean
      {
         var _loc1_:int = new Date().getTime();
         if(_loc1_ - _lastClick < MIN_DELAY)
         {
            return false;
         }
         _lastClick = _loc1_;
         return true;
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
      
      public static function setFirstClickTime() : void
      {
         _lastFirstClick = new Date().getTime();
      }
   }
}

