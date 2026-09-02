package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
   import mx.controls.RadioButton;
   import mx.events.FlexEvent;
   
   public class RoundedRadioButton extends RadioButton
   {
      
      public function RoundedRadioButton()
      {
         super();
         this.addEventListener("initialize",___RoundedRadioButton_RadioButton1_initialize);
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private function roundText() : void
      {
         textField.filters = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
      }
      
      public function ___RoundedRadioButton_RadioButton1_initialize(param1:FlexEvent) : void
      {
         roundText();
      }
   }
}

