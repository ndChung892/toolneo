package com.qeedoo.game.resource
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class FootprintGraphic extends Sprite
   {
      
      private var _bitmap:Bitmap = new Bitmap();
      
      private var current_frame:int = 1;
      
      private var _url:String = "";
      
      private var _mc:MovieClip;
      
      private var bitmapHeight:Number;
      
      private var bitmapWidth:Number;
      
      public function FootprintGraphic(param1:String, param2:MovieClip, param3:Number, param4:Number)
      {
         super();
         _mc = param2;
         _url = param1;
         bitmapWidth = param3;
         bitmapHeight = param4;
         addChild(_bitmap);
         addEventListener(Event.ENTER_FRAME,onEnterFrame);
      }
      
      public function get mc() : MovieClip
      {
         return _mc;
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc2_:BitmapData = BitmapDataCacher.getInstance().getBmdNew(_url,current_frame,bitmapWidth,bitmapHeight);
         if(Boolean(_loc2_) && _loc2_ != this._bitmap.bitmapData)
         {
            this._bitmap.bitmapData = _loc2_;
         }
         ++current_frame;
         if(current_frame > _mc.totalFrames)
         {
            removeEventListener(Event.ENTER_FRAME,onEnterFrame);
         }
      }
   }
}

