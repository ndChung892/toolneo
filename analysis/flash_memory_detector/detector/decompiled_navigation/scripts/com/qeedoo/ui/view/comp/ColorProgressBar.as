package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
   import flash.display.Shape;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   import mx.core.UIComponent;
   
   public class ColorProgressBar extends UIComponent
   {
      
      private var _downColorChanged:Boolean;
      
      private var _height:Number = 15;
      
      private var _width:Number = 100;
      
      private var _progressChanged:Boolean;
      
      private var _upColor:uint = 16711680;
      
      private var _textField:TextField;
      
      private var _fontSize:int = 12;
      
      private var _fontColor:uint = 16777215;
      
      private var _maskShape:Shape;
      
      private var _title:String;
      
      private var _titleChanged:Boolean;
      
      private var _upShape:Shape;
      
      private var _downShape:Shape;
      
      private var _maximum:uint = 100;
      
      private var _downColor:uint = 0;
      
      private var _upColorChanged:Boolean;
      
      private const UP_OFFSET:Number = 0.5;
      
      private var _value:uint = 0;
      
      public function ColorProgressBar()
      {
         super();
         _upShape = new Shape();
         _downShape = new Shape();
         _maskShape = new Shape();
         this.addChild(_downShape);
         this.addChild(_upShape);
         this.addChild(_maskShape);
         _upShape.x = UP_OFFSET;
         _upShape.y = UP_OFFSET;
         _upShape.mask = _maskShape;
         _maskShape.visible = true;
         _upColorChanged = true;
         _downColorChanged = true;
         _progressChanged = true;
      }
      
      public function set downColor(param1:uint) : void
      {
         if(_upColor == param1)
         {
            return;
         }
         _downColor = param1;
         _downColorChanged = true;
         invalidateDisplayList();
      }
      
      override public function set width(param1:Number) : void
      {
         if(isNaN(_width) || _width <= 0 || _width == param1)
         {
            return;
         }
         _width = param1;
         _upColorChanged = true;
         _downColorChanged = true;
         invalidateDisplayList();
      }
      
      public function set upColor(param1:uint) : void
      {
         if(_downColor == param1)
         {
            return;
         }
         _upColor = param1;
         _upColorChanged = true;
         invalidateDisplayList();
      }
      
      public function get maximum() : Number
      {
         return _maximum;
      }
      
      public function setProgress(param1:uint, param2:uint) : void
      {
         if(isNaN(param1) || isNaN(param2))
         {
            return;
         }
         if(param1 > param2)
         {
            param1 == param2;
         }
         if(_value == param1 && _maximum == param2)
         {
            return;
         }
         _value = param1;
         _maximum = param2;
         _progressChanged = true;
         _titleChanged = true;
         invalidateDisplayList();
      }
      
      public function set title(param1:String) : void
      {
         if(_title == param1)
         {
            return;
         }
         _title = param1;
         _titleChanged = true;
         invalidateDisplayList();
      }
      
      public function get value() : Number
      {
         return _value;
      }
      
      override public function set height(param1:Number) : void
      {
         if(isNaN(_height) || _height <= 0 || _height == param1)
         {
            return;
         }
         _height = param1;
         _upColorChanged = true;
         _downColorChanged = true;
         invalidateDisplayList();
      }
      
      private function createTitle() : void
      {
         if(_textField)
         {
            return;
         }
         _textField = new TextField();
         _textField.selectable = false;
         _textField.mouseEnabled = false;
         _textField.mouseWheelEnabled = false;
         var _loc1_:TextFormat = new TextFormat("宋体",_fontSize,_fontColor);
         _loc1_.align = TextFormatAlign.CENTER;
         _textField.defaultTextFormat = _loc1_;
         _textField.filters = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         this.addChild(_textField);
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         super.updateDisplayList(param1,param2);
         if(_upColorChanged)
         {
            _upShape.graphics.clear();
            _upShape.graphics.beginFill(_upColor);
            _upShape.graphics.drawRect(0,0,_width - 2 * UP_OFFSET,_height - 2 * UP_OFFSET);
            _upShape.graphics.endFill();
            _upColorChanged = false;
         }
         if(_downColorChanged)
         {
            _downShape.graphics.clear();
            _downShape.graphics.beginFill(_downColor);
            _downShape.graphics.drawRect(0,0,_width,_height);
            _upShape.graphics.endFill();
            _downColorChanged = false;
         }
         if(_progressChanged)
         {
            _maskShape.graphics.clear();
            _maskShape.graphics.beginFill(16776960);
            _maskShape.graphics.drawRect(0,0,_width * _value / _maximum,_height);
            _maskShape.graphics.endFill();
            _progressChanged = false;
         }
         if(_titleChanged)
         {
            this.createTitle();
            _textField.width = _width;
            _textField.height = _height;
            _textField.text = _title + _value + "/" + _maximum;
            _titleChanged = false;
         }
      }
   }
}

