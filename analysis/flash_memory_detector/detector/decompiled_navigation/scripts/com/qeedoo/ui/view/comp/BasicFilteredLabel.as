package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
   import mx.controls.TextInput;
   import mx.effects.Glow;
   import mx.events.FlexEvent;
   
   public class BasicFilteredLabel extends TextInput
   {
      
      private var glow:Glow;
      
      public function BasicFilteredLabel()
      {
         super();
         this.addEventListener("initialize",___BasicFilteredLabel_TextInput1_initialize);
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      public function ___BasicFilteredLabel_TextInput1_initialize(param1:FlexEvent) : void
      {
         init();
      }
      
      private function init() : void
      {
         textField.filters = [GamePredef.FILTER_TITLE];
         textField.selectable = false;
      }
   }
}

