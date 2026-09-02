package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
   import mx.controls.Button;
   import mx.events.FlexEvent;
   
   public class BasicShadowButton extends Button
   {
      
      public function BasicShadowButton()
      {
         super();
         this.addEventListener("initialize",___BasicShadowButton_Button1_initialize);
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private function init() : void
      {
         textField.filters = GamePredef.FILTER_TEXT2;
      }
      
      public function ___BasicShadowButton_Button1_initialize(param1:FlexEvent) : void
      {
         init();
      }
   }
}

