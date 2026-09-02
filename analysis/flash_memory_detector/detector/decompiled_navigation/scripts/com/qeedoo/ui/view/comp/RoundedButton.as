package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
   import mx.controls.Button;
   import mx.events.FlexEvent;
   
   public class RoundedButton extends Button
   {
      
      public function RoundedButton()
      {
         super();
         this.addEventListener("initialize",___RoundedButton_Button1_initialize);
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private function roundText() : void
      {
         textField.filters = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
      }
      
      public function ___RoundedButton_Button1_initialize(param1:FlexEvent) : void
      {
         roundText();
      }
   }
}

