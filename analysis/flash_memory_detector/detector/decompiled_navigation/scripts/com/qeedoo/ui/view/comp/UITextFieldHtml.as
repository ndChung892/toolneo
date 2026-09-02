package com.qeedoo.ui.view.comp
{
   import mx.core.UITextField;
   
   public class UITextFieldHtml extends UITextField
   {
      
      public function UITextFieldHtml()
      {
         super();
      }
      
      override public function set text(param1:String) : void
      {
         super.htmlText = param1;
      }
   }
}

