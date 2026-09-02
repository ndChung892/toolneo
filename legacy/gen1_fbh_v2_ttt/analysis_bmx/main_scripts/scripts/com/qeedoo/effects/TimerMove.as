package com.qeedoo.effects
{
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class TimerMove extends EventDispatcher
   {
      
      public static const MOVE_DELAY:Number = 25;
      
      public static const EFFECT_UPDATE:String = "GOM_EFFECT_UPDATE";
      
      public static const EFFECT_END:String = "GOM_EFFECT_END";
      
      private var _speed:Number;
      
      private var xFrom:Number;
      
      private var yFrom:Number;
      
      private var _oldPoint:Point;
      
      private var _timer:Timer;
      
      public var target:DisplayObject;
      
      public var stepLength:Number = 16;
      
      private var xTo:Number;
      
      private var yTo:Number;
      
      private var _count:uint;
      
      private var _nextPoint:Point;
      
      private var _start:Number;
      
      private var xStep:Number;
      
      private var yStep:Number;
      
      public var xBy:Number;
      
      public var yBy:Number;
      
      private var _last:Boolean;
      
      public function TimerMove()
      {
         super();
         _timer = new Timer(MOVE_DELAY);
         _timer.addEventListener(TimerEvent.TIMER,update);
         _timer.addEventListener(TimerEvent.TIMER_COMPLETE,stop);
      }
      
      public function update(param1:Event) : void
      {
         var _loc2_:Event = null;
         if(_count-- <= 0)
         {
            stop();
         }
         _oldPoint = nextPoint;
         if(_oldPoint)
         {
            target.x = _oldPoint.x;
            target.y = _oldPoint.y;
            _loc2_ = new Event(EnterFrameMove.EFFECT_UPDATE);
            dispatchEvent(_loc2_);
         }
      }
      
      public function stop(param1:Event = null) : void
      {
         _timer.stop();
         var _loc2_:Event = new Event(EnterFrameMove.EFFECT_END);
         dispatchEvent(_loc2_);
      }
      
      public function get nextPoint() : Point
      {
         var _loc1_:Number = stepLength / Math.sqrt(xBy * xBy + yBy * yBy);
         xStep = xBy * _loc1_;
         yStep = yBy * _loc1_;
         if(target == null)
         {
            destroy();
            return null;
         }
         if(_last)
         {
            if(Point.distance(new Point(_oldPoint.x,_oldPoint.y),new Point(xTo,yTo)) < stepLength)
            {
               _nextPoint = new Point(xTo,yTo);
            }
            else
            {
               _nextPoint = new Point(_oldPoint.x + xStep,_oldPoint.y + yStep);
            }
         }
         else
         {
            _nextPoint = new Point(_oldPoint.x + xStep,_oldPoint.y + yStep);
         }
         return _nextPoint;
      }
      
      public function play(param1:Boolean = false) : void
      {
         _last = param1;
         _speed = stepLength;
         _oldPoint = new Point(target.x,target.y);
         xTo = target.x + xBy;
         yTo = target.y + yBy;
         _count = Math.ceil(Math.sqrt(xBy * xBy + yBy * yBy) / stepLength);
         _timer.repeatCount = _count;
         _timer.reset();
         _timer.start();
         _start = getTimer();
      }
      
      public function destroy() : void
      {
         _timer.removeEventListener(TimerEvent.TIMER,update);
         _timer.removeEventListener(TimerEvent.TIMER_COMPLETE,stop);
         _timer.stop();
         _nextPoint = null;
         target = null;
      }
   }
}

