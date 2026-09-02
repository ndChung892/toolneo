package com.qeedoo.effects
{
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class AlphaResize extends EventDispatcher
   {
      
      public var alphaTo:Number = 1;
      
      private var _timer:Timer;
      
      public var heightTo:Number = 1;
      
      public var widthFrom:Number = 1;
      
      public var target:DisplayObject;
      
      private var _xStepper:Number;
      
      public var widthTo:Number = 1;
      
      public var alphaFrom:Number = 0;
      
      public var heightFrom:Number = 1;
      
      private var _alphaStepper:Number;
      
      private var _yStepper:Number;
      
      public function AlphaResize(param1:DisplayObject = null)
      {
         super();
         this.target = param1;
         _timer = new Timer(100);
         _timer.repeatCount = 10;
      }
      
      private function timerHandler(param1:TimerEvent) : void
      {
         target.scaleX += _xStepper;
         target.scaleY += _yStepper;
         target.alpha += _alphaStepper;
      }
      
      private function timerComplete(param1:TimerEvent) : void
      {
         _timer.removeEventListener(TimerEvent.TIMER,timerHandler);
         _timer.removeEventListener(TimerEvent.TIMER_COMPLETE,timerComplete);
         target.scaleX = widthTo;
         target.scaleY = heightTo;
         target.alpha = alphaTo;
         dispatchEvent(param1);
      }
      
      public function set duration(param1:Number) : void
      {
         _timer.repeatCount = int(param1 / 100);
      }
      
      public function play() : void
      {
         if(!target)
         {
            return;
         }
         target.scaleX = widthFrom;
         target.scaleY = heightFrom;
         target.alpha = alphaFrom;
         _xStepper = (widthTo - widthFrom) / _timer.repeatCount;
         _yStepper = (heightTo - heightFrom) / _timer.repeatCount;
         _alphaStepper = (alphaTo - alphaFrom) / _timer.repeatCount;
         _timer.addEventListener(TimerEvent.TIMER,timerHandler);
         _timer.addEventListener(TimerEvent.TIMER_COMPLETE,timerComplete);
         _timer.start();
      }
   }
}

