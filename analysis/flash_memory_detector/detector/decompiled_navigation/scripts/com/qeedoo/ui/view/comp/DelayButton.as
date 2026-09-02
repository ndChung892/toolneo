package com.qeedoo.ui.view.comp
{
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import mx.controls.Button;
   
   public class DelayButton extends Button
   {
      
      public var clickDelay:int = 1000;
      
      public var useDelay:Boolean = true;
      
      public function DelayButton()
      {
         super();
         addEventListener(MouseEvent.CLICK,setDelay);
      }
      
      private function setDelay(param1:MouseEvent) : void
      {
         var _loc2_:Timer = null;
         if(useDelay)
         {
            enabled = false;
            _loc2_ = new Timer(clickDelay,1);
            _loc2_.addEventListener(TimerEvent.TIMER,setEnable);
            _loc2_.start();
         }
      }
      
      private function setEnable(param1:Event) : void
      {
         param1.currentTarget.removeEventListener(TimerEvent.TIMER,setEnable);
         enabled = true;
      }
   }
}

