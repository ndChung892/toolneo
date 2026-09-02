package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.MouseEvent;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import mx.core.UIComponent;
   
   public class MyButton extends UIComponent
   {
      
      private var _orient_horizon:Boolean = false;
      
      private var _enabled:Boolean = true;
      
      private var _progress:Number = 1;
      
      private var _textField:TextField;
      
      private var _skin:Class;
      
      private var _clickFunc:Function;
      
      private var _selected:Boolean = false;
      
      public function MyButton()
      {
         super();
         this.addEventListener(MouseEvent.MOUSE_OVER,onMouseOver);
         this.addEventListener(MouseEvent.MOUSE_OUT,onMouseOut);
         this.addEventListener(MouseEvent.MOUSE_DOWN,onMouseDown);
         this.addEventListener(MouseEvent.MOUSE_UP,onMouseUp);
         this.addEventListener(MouseEvent.CLICK,onClick);
      }
      
      private function onMouseOver(param1:MouseEvent) : void
      {
         if(this._enabled && !this._selected)
         {
            this.filters = [GamePredef.FILTER_SLOT_SELECTED];
         }
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
      }
      
      public function set orient(param1:Boolean) : void
      {
         _orient_horizon = param1;
      }
      
      public function set clickHandler(param1:Function) : void
      {
         this._clickFunc = param1;
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
      }
      
      override public function set enabled(param1:Boolean) : void
      {
         super.enabled = param1;
         if(this._enabled != param1)
         {
            this._enabled = param1;
            if(!param1)
            {
               this.filters = [GamePredef.FILTER_SLOT_SKILL_01];
            }
            else
            {
               this.filters = null;
            }
         }
      }
      
      public function set skin(param1:Class) : void
      {
         if(_skin != param1)
         {
            restSkin(param1);
         }
      }
      
      public function get selected() : Boolean
      {
         return this._selected;
      }
      
      public function set progress(param1:Number) : void
      {
         if(this._progress != param1)
         {
            this._progress = param1;
            if(this._skin)
            {
               restSkin(_skin);
            }
         }
      }
      
      override public function get enabled() : Boolean
      {
         return _enabled;
      }
      
      private function onMouseOut(param1:MouseEvent) : void
      {
         if(this._enabled)
         {
            if(this._selected)
            {
               this.filters = [GamePredef.FILTER_NOALLOW_SELECTED];
            }
            else
            {
               this.filters = null;
            }
         }
      }
      
      private function onClick(param1:MouseEvent) : void
      {
         if(this._enabled && Boolean(this._clickFunc))
         {
            _clickFunc(param1);
         }
      }
      
      public function set label(param1:String) : void
      {
         var _loc2_:TextFormat = null;
         if(!_textField)
         {
            _textField = new TextField();
            _textField.selectable = false;
            _textField.height = this.height;
            _textField.width = this.width;
            _textField.textColor = 16777215;
            this.addChild(_textField);
            _loc2_ = new TextFormat();
            _loc2_.align = "center";
            _textField.setTextFormat(_loc2_);
         }
         _textField.text = param1;
      }
      
      private function restSkin(param1:Class) : void
      {
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:ColorMatrixFilter = null;
         var _loc12_:Number = NaN;
         var _loc13_:Rectangle = null;
         var _loc14_:Point = null;
         _skin = param1;
         var _loc2_:DisplayObject = new param1();
         var _loc3_:Number = 1;
         var _loc4_:Number = 1;
         if(this.width)
         {
            _loc3_ = this.width / _loc2_.width;
            _loc2_.width = this.width;
         }
         if(this.height)
         {
            _loc4_ = this.height / _loc2_.height;
            _loc2_.height = this.height;
         }
         var _loc5_:BitmapData = new BitmapData(_loc2_.width,_loc2_.height,true,0);
         var _loc6_:Matrix = new Matrix();
         _loc6_.scale(_loc3_,_loc4_);
         _loc5_.draw(_loc2_,_loc6_);
         if(this._progress < 1)
         {
            _loc8_ = 0.212671;
            _loc9_ = 0.71516;
            _loc10_ = 0.072169;
            _loc11_ = new ColorMatrixFilter(new Array(_loc8_,_loc9_,_loc10_,0,0,_loc8_,_loc9_,_loc10_,0,0,_loc8_,_loc9_,_loc10_,0,0,0,0,0,1,0));
            if(_orient_horizon)
            {
               _loc12_ = _loc5_.width * _progress;
               _loc13_ = new Rectangle(_loc12_,0,_loc2_.width,_loc5_.height);
               _loc14_ = new Point(_loc12_,0);
            }
            else
            {
               _loc12_ = _loc5_.height * _progress;
               _loc13_ = new Rectangle(0,_loc12_,_loc5_.width,_loc2_.height);
               _loc14_ = new Point(0,_loc12_);
            }
            _loc5_.applyFilter(_loc5_,_loc13_,_loc14_,_loc11_);
         }
         _loc2_ = null;
         var _loc7_:Bitmap = new Bitmap(_loc5_);
         _loc5_ = null;
         this.addChildAt(_loc7_,0);
      }
      
      public function set selected(param1:Boolean) : void
      {
         if(_enabled)
         {
            if(this._selected != param1)
            {
               this._selected = param1;
               if(!param1)
               {
                  this.filters = null;
               }
               else
               {
                  this.filters = [GamePredef.FILTER_NOALLOW_SELECTED];
               }
            }
         }
      }
   }
}

