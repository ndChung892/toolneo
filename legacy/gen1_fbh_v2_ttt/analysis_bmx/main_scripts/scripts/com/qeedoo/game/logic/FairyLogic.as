package com.qeedoo.game.logic
{
   import com.qeedoo.game.predef.GamePredef;
   
   public class FairyLogic
   {
      
      public function FairyLogic()
      {
         super();
      }
      
      public static function lvToExp(param1:Number) : Number
      {
         if(param1 <= 0)
         {
            return 0;
         }
         return GamePredef.FAIRY_LEVEL_EXP[param1 - 1];
      }
      
      public static function expToLv(param1:Number) : Number
      {
         if(param1 <= 0)
         {
            return 1;
         }
         var _loc2_:int = 0;
         while(_loc2_ < GamePredef.FAIRY_LEVEL_EXP.length)
         {
            if(param1 < GamePredef.FAIRY_LEVEL_EXP[_loc2_])
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return GamePredef.FAIRY_LEVEL_EXP.length;
      }
      
      public static function gexpToLv(param1:Number) : Number
      {
         if(param1 <= 0)
         {
            return 1;
         }
         var _loc2_:int = 0;
         while(_loc2_ < GamePredef.FAIRY_GROW_EXP.length)
         {
            if(param1 < GamePredef.FAIRY_GROW_EXP[_loc2_])
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return GamePredef.FAIRY_GROW_EXP.length;
      }
      
      public static function lvUpExp(param1:Number) : Number
      {
         return GamePredef.FAIRY_LEVEL_EXP[param1] - GamePredef.FAIRY_LEVEL_EXP[param1 - 1];
      }
   }
}

