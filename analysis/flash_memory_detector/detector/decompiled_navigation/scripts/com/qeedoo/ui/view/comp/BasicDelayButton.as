package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.controls.Button;
   import mx.events.FlexEvent;
   import mx.styles.*;
   
   public class BasicDelayButton extends Button
   {
      
      public var clickDelay:int = 1000;
      
      public var useDelay:Boolean = true;
      
      public function BasicDelayButton()
      {
         super();
         this.addEventListener("initialize",___BasicDelayButton_Button1_initialize);
      }
      
      override public function initialize() : void
      {
         super.initialize();
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
      
      public function ___BasicDelayButton_Button1_initialize(param1:FlexEvent) : void
      {
         init();
      }
      
      private function init() : void
      {
         addEventListener(MouseEvent.CLICK,setDelay);
         textField.filters = [GamePredef.FILTER_TITLE];
      }
   }
}

