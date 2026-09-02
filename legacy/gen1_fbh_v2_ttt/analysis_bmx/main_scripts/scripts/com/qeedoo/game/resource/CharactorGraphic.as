package com.qeedoo.game.resource
{
   import com.qeedoo.game.system.Core;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.utils.Dictionary;
   
   public class CharactorGraphic extends Sprite
   {
      
      public static var TOTAL_FRAME_COUNT:int = 704;
      
      public static var FRAME_ARRAY:Array = new Array(704);
      
      public static var KEYFRAME_ARRAY:Dictionary = new Dictionary();
      
      public static var KEYFRAME_REF:Dictionary = new Dictionary();
      
      public static var LABEL_ARRAY:Dictionary = new Dictionary();
      
      public static var SCRIPT_ARRAY:Dictionary = new Dictionary();
      
      private static var _instance:Object = null;
      
      private static var keyFrameArr:Array = [];
      
      keyFrameArr[1] = true;
      keyFrameArr[10] = true;
      keyFrameArr[16] = true;
      keyFrameArr[22] = true;
      keyFrameArr[89] = true;
      keyFrameArr[98] = true;
      keyFrameArr[104] = true;
      keyFrameArr[110] = true;
      keyFrameArr[177] = true;
      keyFrameArr[186] = true;
      keyFrameArr[192] = true;
      keyFrameArr[198] = true;
      keyFrameArr[265] = true;
      keyFrameArr[274] = true;
      keyFrameArr[280] = true;
      keyFrameArr[286] = true;
      keyFrameArr[353] = true;
      keyFrameArr[362] = true;
      keyFrameArr[368] = true;
      keyFrameArr[374] = true;
      keyFrameArr[441] = true;
      keyFrameArr[450] = true;
      keyFrameArr[456] = true;
      keyFrameArr[462] = true;
      keyFrameArr[529] = true;
      keyFrameArr[538] = true;
      keyFrameArr[544] = true;
      keyFrameArr[550] = true;
      keyFrameArr[617] = true;
      keyFrameArr[626] = true;
      keyFrameArr[632] = true;
      keyFrameArr[638] = true;
      
      private var _accRate:int = 0;
      
      private var _callBack:Function = null;
      
      public var _dir:int = 0;
      
      private var _bitmap:Bitmap = new Bitmap();
      
      private var current_frame:int = 0;
      
      private var last_Frame_Time:Number;
      
      public var _behavior:int = 0;
      
      private var _isWing:Boolean = false;
      
      private var _mc:MovieClip;
      
      private var url:String = "";
      
      private var is_stop:Boolean = false;
      
      public function CharactorGraphic(param1:String, param2:MovieClip, param3:Boolean = false)
      {
         super();
         _mc = param2;
         this.url = param1;
         if(_instance == null)
         {
            CharactorGraphic.init();
         }
         _isWing = param3;
         if(param3)
         {
            _mc.keyframeArr = keyFrameArr;
         }
         this.addEventListener(Event.ENTER_FRAME,onEnterFrame);
         this.addChild(_bitmap);
      }
      
      private static function init() : void
      {
         _instance = new Object();
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:int = 0;
         if(is_stop)
         {
            return;
         }
         var _loc2_:int = 0;
         for each(_loc3_ in _mc.keyframeArr)
         {
            if(++_loc2_ > 1)
            {
               break;
            }
         }
         _loc4_ = 0;
         if(_loc2_ == 1)
         {
            _loc4_ = current_frame;
            current_frame = 1;
         }
         _play();
         if(Boolean(Core.getInstance().realFps && Core.getInstance().realFps < 12) && Boolean(Core.getInstance().player) && Core.getInstance().player.inBattle)
         {
            _loc5_ = Math.max(3,Math.round(28 / Core.getInstance().realFps));
            _loc6_ = 0;
            while(_loc6_ < _loc5_)
            {
               if(_loc2_ == 1)
               {
                  current_frame = _loc4_;
               }
               if(_mc.asArr[current_frame] == null)
               {
                  ++current_frame;
               }
               else if(_mc.asArr[current_frame] == 0)
               {
                  if(_callBack != null)
                  {
                     stop();
                     _callBack();
                  }
               }
               else
               {
                  current_frame = _mc.asArr[current_frame];
               }
               _loc6_++;
            }
         }
         else
         {
            if(_loc2_ == 1)
            {
               current_frame = _loc4_;
            }
            _loc7_ = 0;
            while(_loc7_ < _accRate)
            {
               if(!(!_mc.keyframeArr[current_frame + 1] && _mc.asArr[current_frame] == null))
               {
                  break;
               }
               ++current_frame;
               _loc7_++;
            }
            if(_mc.asArr[current_frame] == null)
            {
               ++current_frame;
            }
            else if(_mc.asArr[current_frame] == 0)
            {
               if(_callBack != null)
               {
                  stop();
                  _callBack();
               }
            }
            else
            {
               current_frame = _mc.asArr[current_frame];
            }
         }
      }
      
      public function stop() : void
      {
         is_stop = true;
      }
      
      public function set callBack(param1:Function) : void
      {
         _callBack = param1;
      }
      
      public function get dir() : int
      {
         return _dir;
      }
      
      public function set accRate(param1:int) : void
      {
         _accRate = param1;
      }
      
      public function get behavior() : int
      {
         return _behavior;
      }
      
      private function _play() : void
      {
         var _loc3_:BitmapData = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         if(!_mc.keyframeArr[current_frame])
         {
            return;
         }
         var _loc1_:int = current_frame;
         if(_mc.keyframeRef[current_frame])
         {
            _loc1_ = int(_mc.keyframeRef[current_frame]);
         }
         var _loc2_:BitmapData = BitmapDataCacher.getInstance().getBmd(url,_loc1_,_isWing);
         if(Boolean(_loc2_) && _loc2_ != this._bitmap.bitmapData)
         {
            _loc3_ = this._bitmap.bitmapData as BitmapData;
            _loc4_ = 0;
            _loc5_ = 0;
            if(_loc3_)
            {
               _loc4_ = Number(_loc3_["xoff"]);
               _loc5_ = Number(_loc3_["yoff"]);
            }
            this._bitmap.bitmapData = _loc2_;
            _loc6_ = _loc2_["xoff"];
            _loc7_ = _loc2_["yoff"];
            _loc8_ = Math.ceil(_loc6_ - 0.49) - Math.ceil(_loc4_ - 0.49);
            _loc9_ = Math.ceil(_loc7_ - 0.49) - Math.ceil(_loc5_ - 0.49);
            this.x += Number(_loc8_.toFixed(2));
            this.y += Number(_loc9_.toFixed(2));
         }
      }
      
      public function get midX() : Number
      {
         return _mc["midX"];
      }
      
      public function set dir(param1:int) : void
      {
         _dir = param1;
      }
      
      public function set behavior(param1:int) : void
      {
         _behavior = param1;
      }
      
      public function get callBack() : Function
      {
         return _callBack;
      }
      
      public function get footY() : Number
      {
         return _mc.footY;
      }
      
      override public function hitTestPoint(param1:Number, param2:Number, param3:Boolean = false) : Boolean
      {
         var _loc4_:uint = uint(this._bitmap.bitmapData.getPixel32(param1,param2) >> 24);
         if(_loc4_ == 0)
         {
            return false;
         }
         return true;
      }
      
      public function get headY() : Number
      {
         return _mc.headY;
      }
      
      public function play(param1:String = null) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = int(_mc.frameLabel[param1]);
            current_frame = _loc2_;
         }
         is_stop = false;
      }
      
      public function onLoadComplete(param1:Event) : void
      {
      }
      
      public function unload() : void
      {
         if(_bitmap)
         {
            this.removeChild(_bitmap);
         }
         this.removeEventListener(Event.ENTER_FRAME,onEnterFrame);
      }
   }
}

