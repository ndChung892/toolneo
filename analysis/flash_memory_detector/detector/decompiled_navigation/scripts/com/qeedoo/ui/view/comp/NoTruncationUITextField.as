package com.qeedoo.ui.view.comp
{
   import mx.core.UITextField;
   
   public class NoTruncationUITextField extends UITextField
   {
      
      public function NoTruncationUITextField()
      {
         super();
      }
      
      override public function truncateToFit(param1:String = null) : Boolean
      {
         return false;
      }
   }
}

