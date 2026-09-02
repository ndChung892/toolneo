package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
   import mx.controls.Label;
   import mx.events.FlexEvent;
   
   public class BasicTxtButton extends Label
   {
      
      public function BasicTxtButton()
      {
         super();
         this.height = 20;
         this.styleName = "TxtHorStyle";
         this.addEventListener("initialize",___BasicTxtButton_Label1_initialize);
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private function init() : void
      {
         textField.filters = [GamePredef.FILTER_ROUNDED_TEXT2];
      }
      
      public function set label(param1:String) : void
      {
         this.text = param1;
      }
      
      public function ___BasicTxtButton_Label1_initialize(param1:FlexEvent) : void
      {
         init();
      }
   }
}

