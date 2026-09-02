package com.qeedoo.ui.utils
{
   import com.qeedoo.game.object.Npc;
   import com.qeedoo.game.system.Core;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class WalkNpcController extends EventDispatcher
   {
      
      private static var walk_npc_list:Object = new Object();
      
      private static var walk_npc_num:uint = 0;
      
      private static var _timer:Timer = new Timer(100);
      
      public function WalkNpcController()
      {
         super();
      }
      
      private static function onEnter(param1:Event) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:Npc = null;
         if(Core.getInstance().player.inBattle)
         {
            return;
         }
         var _loc2_:uint = 0;
         for(_loc3_ in walk_npc_list)
         {
            if(walk_npc_list[_loc3_])
            {
               _loc4_ = Core.getInstance().getNpc(uint(_loc3_));
               if((Boolean(_loc4_)) && Boolean(_loc4_.view))
               {
                  if(!_loc4_.busy)
                  {
                     _loc4_.view.onEnter(param1);
                  }
                  _loc2_++;
               }
               else
               {
                  delWalkNpc(uint(_loc3_));
               }
            }
         }
         walk_npc_num = _loc2_;
      }
      
      private static function addEvent() : void
      {
         if(!_timer.hasEventListener(TimerEvent.TIMER))
         {
            _timer.addEventListener(TimerEvent.TIMER,onEnter);
         }
      }
      
      public static function delWalkNpc(param1:uint) : void
      {
         if(walk_npc_list[param1])
         {
            walk_npc_list[param1] = false;
            delete walk_npc_list[param1];
            --walk_npc_num;
            if(walk_npc_num == 0)
            {
               removeEvent();
            }
         }
      }
      
      public static function init() : void
      {
         walk_npc_list = new Object();
         walk_npc_num = 0;
         removeEvent();
         _timer = new Timer(100);
      }
      
      private static function removeEvent() : void
      {
         _timer.stop();
         if(_timer.hasEventListener(TimerEvent.TIMER))
         {
            _timer.removeEventListener(TimerEvent.TIMER,onEnter);
         }
      }
      
      public static function addWalkNpc(param1:uint) : void
      {
         if(walk_npc_num == 0)
         {
            addEvent();
            _timer.start();
         }
         if(!walk_npc_list[param1])
         {
            ++walk_npc_num;
         }
         walk_npc_list[param1] = true;
      }
   }
}

