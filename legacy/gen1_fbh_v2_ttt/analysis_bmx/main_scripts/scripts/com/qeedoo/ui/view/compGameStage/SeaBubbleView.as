package com.qeedoo.ui.view.compGameStage
{
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import flash.display.Bitmap;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   import mx.controls.Image;
   
   public class SeaBubbleView
   {
      
      private static var _instance:SeaBubbleView;
      
      private var bubble_time_interval:Number = 0;
      
      private var _core:Core;
      
      private var _timer:Timer;
      
      private var iconCode:Object = {
         0:4130090100001,
         10:4130090100002,
         15:4130090100003,
         20:4130090100004,
         25:4130090100005
      };
      
      private const BUBBLE_NUMBER_MAX:int = 3;
      
      private var _isPlaying:Boolean;
      
      private var bubbleBitmapdataObj:Object = {
         0:null,
         10:null,
         15:null,
         20:null,
         25:null
      };
      
      private var bubble_Period:Number;
      
      private var bubbleDataLoaded:Object = {
         0:false,
         10:false,
         15:false,
         20:false,
         25:false
      };
      
      private var bubbleInsArr:Array = [];
      
      public function SeaBubbleView(param1:Single)
      {
         super();
         _core = Core.getInstance();
      }
      
      public static function getInstance() : SeaBubbleView
      {
         if(_instance == null)
         {
            _instance = new SeaBubbleView(new Single());
         }
         return _instance;
      }
      
      public function destroBubble() : void
      {
      }
      
      public function startBubble(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:String = null;
         var _loc4_:Image = null;
         var _loc5_:Object = null;
         var _loc6_:int = 0;
         _isPlaying = param1;
         if(param1)
         {
            _loc2_ = true;
            for(_loc3_ in bubbleDataLoaded)
            {
               if(bubbleDataLoaded[_loc3_] == false)
               {
                  _loc2_ = false;
                  _loc4_ = new Image();
                  _loc4_.source = ResManager.getIconUrl(iconCode[_loc3_]);
                  _loc4_.data = {
                     "id":_loc3_,
                     "code":iconCode
                  };
                  _loc4_.load();
                  _loc4_.addEventListener(Event.COMPLETE,imgDataLoaded);
                  break;
               }
            }
            if(_loc2_)
            {
               _loc5_ = _core.view.getUI(ViewManager.STAGE_MAIN_CONTAINER).middleLayer;
               _loc6_ = 0;
               while(_loc6_ <= BUBBLE_NUMBER_MAX)
               {
                  bubbleInsArr[_loc6_] = new SingleBubbleView(bubbleBitmapdataObj);
                  _loc5_.addChild(bubbleInsArr[_loc6_]);
                  _loc6_++;
               }
               _timer = new Timer(5000);
               _timer.addEventListener(TimerEvent.TIMER,_play);
               _timer.start();
            }
         }
         else
         {
            if(_timer)
            {
               _timer.stop();
               _timer.removeEventListener(TimerEvent.TIMER,_play);
               _timer = null;
            }
            _loc6_ = 0;
            while(_loc6_ <= BUBBLE_NUMBER_MAX)
            {
               if(bubbleInsArr[_loc6_] != null)
               {
                  SingleBubbleView(bubbleInsArr[_loc6_]).stop();
               }
               _loc6_++;
            }
         }
      }
      
      private function _play(param1:TimerEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:Point = null;
         var _loc6_:Point = null;
         if(_isPlaying)
         {
            _loc2_ = 3;
            _loc3_ = {
               0:new Point(563,0),
               1:new Point(0,0),
               2:new Point(0,357),
               3:new Point(563,357)
            };
            _loc4_ = 0;
            while(_loc4_ < _loc2_)
            {
               _loc5_ = genRandomPoint(_loc3_[_loc4_],337,200);
               _loc6_ = _core.view.getUI(ViewManager.STAGE_MAIN_CONTAINER).globalToLocal(new Point(_core.player.posX,_core.player.posY));
               SingleBubbleView(bubbleInsArr[_loc4_]).x = _loc5_.x + _core.player.posX;
               SingleBubbleView(bubbleInsArr[_loc4_]).y = _loc5_.y + _core.player.posY;
               SingleBubbleView(bubbleInsArr[_loc4_]).play();
               _loc4_++;
            }
         }
      }
      
      private function genRandomPoint(param1:Point, param2:Number, param3:Number) : Point
      {
         var _loc4_:Number = Math.ceil(Math.random() * param2);
         var _loc5_:Number = Math.ceil(Math.random() * param3);
         return new Point(param1.x + _loc4_ - 450,param1.y + _loc5_ - 285);
      }
      
      public function get isPlaying() : Boolean
      {
         return _isPlaying;
      }
      
      private function imgDataLoaded(param1:Event) : void
      {
         var _loc3_:String = null;
         param1.target.removeEventListener(Event.COMPLETE,imgDataLoaded);
         var _loc2_:Bitmap = Bitmap(param1.target.content);
         if(_loc2_)
         {
            _loc3_ = param1.target.data.id;
            bubbleDataLoaded[_loc3_] = true;
            bubbleBitmapdataObj[_loc3_] = {
               "bmd":_loc2_.bitmapData,
               "w":_loc2_.width,
               "h":_loc2_.height
            };
         }
         startBubble(_isPlaying);
      }
   }
}

import flash.display.Bitmap;
import flash.display.Sprite;
import flash.events.Event;

class SingleBubbleView extends Sprite
{
   
   private var _maxFrameId:Number;
   
   private var _isPlaying:Boolean = false;
   
   private var frameId:int = 0;
   
   private var bitmap:Bitmap;
   
   private var _playList:Object;
   
   private var _movingSpeed:Number;
   
   public function SingleBubbleView(param1:Object, param2:Number = 50, param3:Number = 3)
   {
      super();
      _playList = param1;
      _maxFrameId = param2;
      _movingSpeed = param3;
      bitmap = new Bitmap();
      this.addChild(bitmap);
   }
   
   public function destroy() : void
   {
      stop();
   }
   
   public function set playList(param1:Object) : void
   {
      _playList = param1;
   }
   
   public function stop() : void
   {
      _isPlaying = false;
      bitmap.bitmapData = null;
      this.visible = false;
      removeEventListener(Event.ENTER_FRAME,onEnterFrame);
   }
   
   private function onEnterFrame(param1:Event) : void
   {
      if(!_isPlaying)
      {
         stop();
         return;
      }
      ++frameId;
      if(frameId > _maxFrameId)
      {
         stop();
         return;
      }
      if(_playList[frameId])
      {
         bitmap.bitmapData = _playList[frameId].bmd;
         bitmap.x = -_playList[frameId].w / 2;
         bitmap.y = -_playList[frameId].h / 2;
      }
      this.y -= _movingSpeed;
   }
   
   public function set movingSpeed(param1:Number) : void
   {
      _movingSpeed = param1;
   }
   
   public function set maxFrameId(param1:Number) : void
   {
      _maxFrameId = param1;
   }
   
   public function get yBase() : Number
   {
      return this.y;
   }
   
   public function play() : void
   {
      _isPlaying = true;
      frameId = 0;
      if(_playList[frameId])
      {
         bitmap.bitmapData = _playList[frameId].bmd;
         bitmap.x = -_playList[frameId].w / 2;
         bitmap.y = -_playList[frameId].h / 2;
      }
      this.visible = true;
      addEventListener(Event.ENTER_FRAME,onEnterFrame);
   }
}

class Single
{
   
   public function Single()
   {
      super();
   }
}
