package
{
   import mx.controls.ToolTip;
   
   public class ToolTipHtml extends ToolTip
   {
      
      private var _text:String;
      
      private var _textChanged:Boolean;
      
      public function ToolTipHtml()
      {
         super();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         if(_textChanged && Boolean(textField))
         {
            textField.htmlText = _text;
            _textChanged = false;
         }
      }
      
      override public function set text(param1:String) : void
      {
         if(_text == param1)
         {
            return;
         }
         _text = param1;
         _textChanged = true;
         super.text = param1;
      }
   }
}

