package com.qeedoo.ui.utils
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import mx.collections.ArrayCollection;
   
   public class SmallGame
   {
      
      private static const MAX_CREATURE_ID:* = 1382;
      
      public function SmallGame()
      {
         super();
      }
      
      public static function getUniqueCreatureByIcon(param1:ArrayCollection) : Object
      {
         var _loc5_:Object = null;
         var _loc2_:Number = Math.round(ToolKit.genRangeRandom(1,MAX_CREATURE_ID));
         var _loc3_:Core = Core.getInstance();
         var _loc4_:Object = new Object();
         _loc4_ = _loc3_.data.gameData[GamePredef.TBL_CREATURE][_loc2_];
         if(ToolKit.isEmptyObject(_loc4_) || !_loc4_)
         {
            return getUniqueCreatureByIcon(param1);
         }
         if(_loc4_.catchable <= 0)
         {
            return getUniqueCreatureByIcon(param1);
         }
         for each(_loc5_ in param1)
         {
            if(_loc5_.icon == _loc4_.iconCode)
            {
               return getUniqueCreatureByIcon(param1);
            }
         }
         return _loc4_;
      }
   }
}

