package com.qeedoo.ui.view.comp
{
   import com.qeedoo.effects.EnterFrameMove;
   import com.qeedoo.game.predef.GamePredef;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   
   public class ScrollText extends Sprite
   {
      
      private var _initY:int;
      
      private var _initX:int;
      
      private var _textField:TextField;
      
      private var _gameObjMove:EnterFrameMove;
      
      public function ScrollText()
      {
         super();
         _textField = new TextField();
         _textField.type = TextFieldType.DYNAMIC;
         _textField.background = false;
         _textField.selectable = false;
         _textField.autoSize = TextFieldAutoSize.CENTER;
         _textField.filters = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _gameObjMove = new EnterFrameMove();
         _gameObjMove.target = _textField;
      }
      
      private function moveEndHandler(param1:Event) : void
      {
         _gameObjMove.removeEventListener(EnterFrameMove.EFFECT_END,moveEndHandler);
         removeChild(_textField);
         reset();
      }
      
      public function freeShow(param1:String, param2:uint = 16711680, param3:int = 32, param4:int = 2, param5:int = 20) : void
      {
         if(!param1 || param1.length == 0)
         {
            return;
         }
         var _loc6_:TextFormat = new TextFormat("黑体",param3,param2,true);
         if(Number(param1))
         {
            _loc6_.font = "GameNumber";
            _textField.embedFonts = true;
         }
         else
         {
            _textField.embedFonts = false;
         }
         _textField.text = param1;
         _textField.setTextFormat(_loc6_);
         _textField.y = 0;
         _textField.x = -_textField.width / 2;
         addChild(_textField);
         _gameObjMove.yBy = -param5;
         _gameObjMove.xBy = 0;
         _gameObjMove.target = _textField;
         _gameObjMove.stepLength = param4;
         _gameObjMove.play();
         _gameObjMove.addEventListener(EnterFrameMove.EFFECT_END,moveEndHandler);
      }
      
      private function reset() : void
      {
         var _loc1_:TextFormat = new TextFormat("黑体",32,16711680,true);
         _textField.text = "";
         _textField.setTextFormat(_loc1_);
      }
      
      public function destroy() : void
      {
         _textField = null;
         _gameObjMove.removeEventListener(EnterFrameMove.EFFECT_END,moveEndHandler);
         _gameObjMove.destroy();
         _gameObjMove = null;
         if(parent)
         {
            parent.removeChild(this);
         }
      }
      
      public function show(param1:String, param2:uint = 16711680, param3:int = 32, param4:int = 2, param5:int = 20) : void
      {
         if(!param1 || param1.length == 0)
         {
            return;
         }
         var _loc6_:TextFormat = new TextFormat("黑体",param3,param2,true);
         if(Number(param1))
         {
            _loc6_.font = "GameNumber";
            _textField.embedFonts = true;
         }
         else
         {
            _loc6_.size = 18;
            _textField.embedFonts = false;
         }
         _textField.text = param1;
         _textField.setTextFormat(_loc6_);
         _textField.y = 0;
         _textField.x = -_textField.width / 2;
         addChild(_textField);
         _gameObjMove.yBy = -param5;
         _gameObjMove.xBy = 0;
         _gameObjMove.target = _textField;
         _gameObjMove.stepLength = param4;
         _gameObjMove.play();
         _gameObjMove.addEventListener(EnterFrameMove.EFFECT_END,moveEndHandler);
      }
   }
}

