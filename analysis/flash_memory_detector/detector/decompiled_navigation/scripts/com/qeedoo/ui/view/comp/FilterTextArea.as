package com.qeedoo.ui.view.comp
{
   import mx.controls.TextArea;
   
   public class FilterTextArea extends TextArea
   {
      
      private var _filters:Array;
      
      public function FilterTextArea()
      {
         super();
      }
      
      override public function set filters(param1:Array) : void
      {
         _filters = param1;
         if(textField)
         {
            textField.filters = param1;
         }
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         textField.filters = _filters;
      }
      
      override public function get filters() : Array
      {
         return _filters;
      }
   }
}

