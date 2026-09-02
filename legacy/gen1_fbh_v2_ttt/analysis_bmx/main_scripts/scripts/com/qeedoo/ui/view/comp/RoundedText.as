package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   
   public class RoundedText extends TextField
   {
      
      public function RoundedText()
      {
         super();
         var _loc1_:TextFormat = new TextFormat("Arial",12);
         setTextFormat(_loc1_);
         textColor = 16777215;
         selectable = false;
         type = TextFieldType.DYNAMIC;
         background = false;
         width = 100;
         height = 20;
         filters = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         autoSize = TextFieldAutoSize.CENTER;
      }
   }
}

