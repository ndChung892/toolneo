package com.qeedoo.game.utils
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class CheatChecker
   {
      
      private static var _timer:Timer;
      
      private static const CHECK_DELAY:Number = 10000;
      
      private static const CHECK_ROUND:Number = 9000;
      
      private static const GC_DELAY:Number = 120000;
      
      private static var _last:Number = 0;
      
      private static var _frameNum:Number = 0;
      
      public function CheatChecker()
      {
         super();
      }
      
      public static function init() : void
      {
      }
      
      public static function check(param1:TimerEvent = null) : void
      {
         var _loc2_:Number = new Date().getTime();
         var _loc3_:Core = Core.getInstance();
         if(_loc2_ - _last < CHECK_ROUND)
         {
            if(_loc3_.player)
            {
               _loc3_.player.say(Language.CHEATCHECKER_S[0],GamePredef.MSG_CHANNEL_LOCAL);
               ++_loc3_.error;
            }
            if(_loc3_.error >= 3)
            {
               _loc3_.error = 0;
               _loc3_.logout();
               _loc3_.refresh();
            }
         }
         _last = _loc2_;
         if(_loc2_ - _loc3_.lastGC > GC_DELAY)
         {
            _loc3_.gc();
         }
      }
   }
}

