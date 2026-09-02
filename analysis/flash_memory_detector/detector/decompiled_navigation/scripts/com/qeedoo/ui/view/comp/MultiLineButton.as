package com.qeedoo.ui.view.comp
{
   import flash.display.DisplayObject;
   import flash.text.TextLineMetrics;
   import mx.controls.Button;
   
   public class MultiLineButton extends Button
   {
      
      public function MultiLineButton()
      {
         super();
      }
      
      override protected function createChildren() : void
      {
         super.createChildren();
         if(!textField)
         {
            textField = new NoTruncationUITextField();
            textField.styleName = this;
            addChild(DisplayObject(textField));
         }
         textField.multiline = true;
         textField.wordWrap = true;
      }
      
      override public function measureText(param1:String) : TextLineMetrics
      {
         textField.text = param1;
         var _loc2_:TextLineMetrics = textField.getLineMetrics(0);
         _loc2_.width = textField.textWidth;
         _loc2_.height = textField.textHeight;
         return _loc2_;
      }
   }
}

