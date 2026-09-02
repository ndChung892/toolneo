package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   
   public class PopupText extends Sprite
   {
      
      private var _timeout:int = 5000;
      
      private var _timeoutHandler:uint;
      
      private var _textField:TextField;
      
      public function PopupText()
      {
         super();
         _textField = new TextField();
         _textField.background = false;
         _textField.border = false;
         _textField.selectable = false;
         _textField.type = TextFieldType.DYNAMIC;
         _textField.autoSize = TextFieldAutoSize.CENTER;
         _textField.wordWrap = true;
         addChild(_textField);
         visible = false;
         cacheAsBitmap = true;
      }
      
      private function hide() : void
      {
         _textField.text = "";
         visible = false;
      }
      
      private function drawRound(param1:DisplayObject) : void
      {
         graphics.clear();
         graphics.beginFill(16750848);
         graphics.drawRoundRect(param1.x - 5,param1.y - 5,param1.width + 10,param1.height + 10,4,4);
         graphics.endFill();
         graphics.beginFill(16777061);
         graphics.drawRoundRect(param1.x - 3,param1.y - 3,param1.width + 6,param1.height + 6,4,4);
         graphics.endFill();
         graphics.beginFill(16750848);
         graphics.moveTo(param1.x + 3,param1.height + 5);
         graphics.lineTo(param1.x + 8,param1.height + 12);
         graphics.lineTo(param1.x + 10,param1.height + 5);
         graphics.lineTo(param1.x + 3,param1.height + 5);
         graphics.endFill();
      }
      
      public function show(param1:String) : void
      {
         if(param1 == null)
         {
            return;
         }
         _textField.width = 100;
         _textField.x = -50;
         _textField.textColor = 0;
         _textField.htmlText = param1;
         if(_textField.text.length > GamePredef.CHAT_POPUP_MAXCHAR)
         {
            _textField.text = _textField.text.substr(0,GamePredef.CHAT_POPUP_MAXCHAR) + "...";
         }
         if(_textField.textWidth < 100)
         {
            _textField.width = _textField.textWidth + 5;
            _textField.x = -_textField.width / 2;
         }
         _textField.height = _textField.textHeight + 5;
         drawRound(_textField);
         if(_timeoutHandler > 0)
         {
            clearTimeout(_timeoutHandler);
         }
         if(_timeout > 0)
         {
            _timeoutHandler = setTimeout(hide,_timeout);
         }
         visible = true;
      }
   }
}

