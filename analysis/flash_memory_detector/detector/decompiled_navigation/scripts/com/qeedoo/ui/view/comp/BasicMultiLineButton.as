package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
   import mx.events.FlexEvent;
   
   public class BasicMultiLineButton extends MultiLineButton
   {
      
      public function BasicMultiLineButton()
      {
         super();
         this.addEventListener("initialize",___BasicMultiLineButton_MultiLineButton1_initialize);
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private function init() : void
      {
         textField.filters = [GamePredef.FILTER_ROUNDED_TEXT2];
      }
      
      public function ___BasicMultiLineButton_MultiLineButton1_initialize(param1:FlexEvent) : void
      {
         init();
      }
   }
}

