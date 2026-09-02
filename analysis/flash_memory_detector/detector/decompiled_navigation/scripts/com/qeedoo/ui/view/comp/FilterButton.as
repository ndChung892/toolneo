package com.qeedoo.ui.view.comp
{
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import mx.controls.Button;
   
   public class FilterButton extends Button
   {
      
      private var _timer:Timer;
      
      public var delayTime:int;
      
      private var _filters:Array;
      
      public function FilterButton()
      {
         super();
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         textField.filters = _filters;
      }
      
      private function timerHandler(param1:TimerEvent) : void
      {
         param1.stopImmediatePropagation();
         this.enabled = true;
      }
      
      override protected function clickHandler(param1:MouseEvent) : void
      {
         super.clickHandler(param1);
         if(delayTime <= 0 || !this.enabled)
         {
            return;
         }
         if(_timer)
         {
            _timer.reset();
            _timer.delay = delayTime;
         }
         else
         {
            _timer = new Timer(delayTime,1);
            _timer.addEventListener(TimerEvent.TIMER,timerHandler);
         }
         this.enabled = false;
         _timer.start();
      }
      
      override public function get filters() : Array
      {
         return _filters;
      }
      
      override public function set filters(param1:Array) : void
      {
         _filters = param1;
         if(textField)
         {
            textField.filters = param1;
         }
      }
      
      override protected function createInFontContext(param1:Class) : Object
      {
         return super.createInFontContext(UITextFieldHtml);
      }
   }
}

