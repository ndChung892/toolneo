package com.qeedoo.effects
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   
   public class EnterFrameMove extends EventDispatcher
   {
      
      public static const EFFECT_UPDATE:String = "GOM_EFFECT_UPDATE";
      
      public static const EFFECT_END:String = "GOM_EFFECT_END";
      
      public var target:DisplayObject;
      
      public var xTo:Number;
      
      private var _count:int = 0;
      
      public var updateFunc:Function;
      
      public var yBy:Number;
      
      private var inBattle:Boolean = false;
      
      private var xFrom:Number;
      
      private var yFrom:Number;
      
      private var _speed:Number = 10;
      
      private var _lastEnterTime:Number;
      
      public var stepLength:Number = 10;
      
      public var yTo:Number;
      
      private var _len:Number;
      
      private var _lastTs:Number;
      
      private var _nextPoint:Point;
      
      private var _start:Number;
      
      private var xStep:Number;
      
      private var _xStep:Number;
      
      private var _yStep:Number;
      
      private var _pointTo:Point;
      
      public var xBy:Number;
      
      private var yStep:Number;
      
      private var _last:Boolean;
      
      public function EnterFrameMove()
      {
         super();
      }
      
      public function destroy() : void
      {
         if(target)
         {
            target.removeEventListener(Event.ENTER_FRAME,update);
         }
         _nextPoint = null;
         updateFunc = null;
         target = null;
      }
      
      public function stop() : void
      {
         if(target)
         {
            target.removeEventListener(Event.ENTER_FRAME,update);
         }
         _nextPoint = null;
         _count = 0;
         var _loc1_:Event = new Event(EnterFrameMove.EFFECT_END);
         dispatchEvent(_loc1_);
      }
      
      public function get active() : Boolean
      {
         return Boolean(target) && target.hasEventListener(Event.ENTER_FRAME);
      }
      
      public function play(param1:Boolean = false, param2:Boolean = false) : void
      {
         _last = param1;
         _speed = stepLength;
         xTo = target.x + xBy;
         yTo = target.y + yBy;
         _count = Math.ceil(Math.sqrt(xBy * xBy + yBy * yBy) / stepLength);
         _len = stepLength / Math.sqrt(xBy * xBy + yBy * yBy);
         _xStep = xBy * _len;
         _yStep = yBy * _len;
         _pointTo = new Point(xTo,yTo);
         inBattle = param2;
         target.addEventListener(Event.ENTER_FRAME,update);
         _lastTs = 0;
      }
      
      public function resume() : void
      {
         if(Boolean(target) && _count > 0)
         {
            target.addEventListener(Event.ENTER_FRAME,update);
         }
      }
      
      public function update(param1:Event) : void
      {
         var _loc2_:Point = nextPoint;
         if(_count-- <= 0)
         {
            stop();
            return;
         }
         if(Boolean(target) && Boolean(_loc2_))
         {
            target.x = _loc2_.x;
            target.y = _loc2_.y;
            if(updateFunc != null)
            {
               updateFunc();
            }
         }
      }
      
      private function get nextPoint() : Point
      {
         var _loc4_:Number = NaN;
         if(target == null)
         {
            destroy();
            return null;
         }
         var _loc1_:Number = new Date().getTime();
         var _loc2_:Number = _xStep;
         var _loc3_:Number = _yStep;
         if(Boolean(_lastEnterTime) && !inBattle)
         {
            _loc4_ = _loc1_ - _lastEnterTime;
            if(_loc4_ <= 35)
            {
               _loc2_ = _xStep * _loc4_ * 0.028;
               _loc3_ = _yStep * _loc4_ * 0.028;
            }
         }
         _lastEnterTime = _loc1_;
         if(_last)
         {
            if(Point.distance(new Point(target.x,target.y),_pointTo) < stepLength)
            {
               _nextPoint = _pointTo;
            }
            else
            {
               _nextPoint = new Point(target.x + _loc2_,target.y + _loc3_);
            }
         }
         else
         {
            _nextPoint = new Point(target.x + _loc2_,target.y + _loc3_);
         }
         return _nextPoint;
      }
      
      public function pause() : void
      {
         if(target)
         {
            target.removeEventListener(Event.ENTER_FRAME,update);
         }
      }
   }
}

