package com.qeedoo.ui.view.comp
{
   import com.qeedoo.ui.utils.LinkEventUtil;
   import flash.events.TextEvent;
   import mx.controls.TextInput;
   
   public class LinkTextInput extends TextInput
   {
      
      public function LinkTextInput()
      {
         super();
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private function linkEventHandler(param1:TextEvent) : void
      {
         LinkEventUtil.linkHandler(param1,stage);
      }
      
      public function init() : void
      {
         addEventListener(TextEvent.LINK,linkEventHandler);
      }
   }
}

