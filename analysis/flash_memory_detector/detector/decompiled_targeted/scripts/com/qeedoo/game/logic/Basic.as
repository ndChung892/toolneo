package com.qeedoo.game.logic
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   
   public class Basic
   {
      
      public function Basic()
      {
         super();
      }
      
      public function getPreByQuality(param1:int) : int
      {
         var _loc2_:int = 0;
         if(param1 == 0)
         {
            return 0;
         }
         _loc2_ = param1 % 5;
         if(_loc2_ == 0)
         {
            return 5;
         }
         return _loc2_;
      }
      
      public function levelToExp(param1:Number) : Number
      {
         if(param1 <= 0)
         {
            return 0;
         }
         return GamePredef.PLAYER_LEVEL_EXP[param1 - 1];
      }
      
      public function getItemSlotList(param1:uint, param2:int = -1) : Array
      {
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc3_:Core = Core.getInstance();
         var _loc4_:Array = [];
         var _loc5_:Array = [];
         var _loc6_:uint = 0;
         for each(_loc7_ in _loc3_.data.sList)
         {
            if(Boolean(_loc7_) && Boolean(_loc3_.data.isBagSlot(_loc7_.sid)) && _loc7_.type == GamePredef.TBL_ITEM_INSTANCE)
            {
               _loc8_ = _loc3_.data.gameData[_loc7_.type][_loc7_.itemId];
               _loc9_ = _loc3_.getTemplateData(_loc7_.type,_loc7_.itemId);
               if((Boolean(_loc9_)) && _loc9_.id == param1)
               {
                  if(_loc8_.binded == 1)
                  {
                     if(!(param2 == -1 || _loc6_ < param2))
                     {
                        break;
                     }
                     _loc4_.push(_loc7_.id);
                     _loc6_ += _loc7_.stackNum;
                  }
                  else
                  {
                     _loc5_.push({
                        "id":_loc7_.id,
                        "stackNum":_loc7_.stackNum
                     });
                  }
               }
            }
         }
         for each(_loc7_ in _loc5_)
         {
            if(!(param2 == -1 || _loc6_ < param2))
            {
               break;
            }
            _loc4_.push(_loc7_.id);
            _loc6_ += _loc7_.stackNum;
         }
         if(param2 == -1 || _loc6_ >= param2)
         {
            return _loc4_;
         }
         return null;
      }
      
      public function randIn(param1:Number, param2:Number) : Number
      {
         return param1 + (param2 - param1) * Math.random();
      }
      
      public function getDistance(param1:Object, param2:Object) : int
      {
         var _loc3_:int = param1.posX - param2.posX;
         var _loc4_:int = param1.posY - param2.posY;
         return Math.sqrt(Math.pow(_loc3_,2) + Math.pow(_loc4_,2));
      }
      
      public function expReToLevelRe(param1:Number) : Number
      {
         if(param1 <= 0)
         {
            return 1;
         }
         var _loc2_:int = 0;
         while(_loc2_ < GamePredef.PLAYER_RELEVEL_EXP.length)
         {
            if(param1 < GamePredef.PLAYER_RELEVEL_EXP[_loc2_])
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return GamePredef.PLAYER_RELEVEL_EXP.length;
      }
      
      public function colorByGrowRate(param1:Number) : int
      {
         var _loc2_:String = null;
         for(_loc2_ in GamePredef.PET_GROWRATE_NUM)
         {
            if(param1 <= GamePredef.PET_GROWRATE_NUM[_loc2_])
            {
               return int(_loc2_);
            }
         }
         return 4;
      }
      
      public function rand3(param1:int, param2:int) : int
      {
         return Math.floor(randIn(param1,param2 + 1));
      }
      
      public function expToLevel(param1:Number) : Number
      {
         if(param1 <= 0)
         {
            return 1;
         }
         var _loc2_:int = 0;
         while(_loc2_ < GamePredef.PLAYER_LEVEL_EXP.length)
         {
            if(param1 < GamePredef.PLAYER_LEVEL_EXP[_loc2_])
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return GamePredef.PLAYER_LEVEL_EXP.length;
      }
      
      public function rand2(param1:Number, param2:Number) : int
      {
         return Math.round(randIn(param1,param2));
      }
      
      public function checkLevelUp(param1:*) : int
      {
         return expToLevel(param1.exp) - param1.level;
      }
      
      public function getObjProNum(param1:Object) : Number
      {
         var _loc3_:* = undefined;
         var _loc2_:Number = 0;
         if(param1)
         {
            for each(_loc3_ in param1)
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function getColorByQuality(param1:int) : int
      {
         return Math.ceil(param1 / 5);
      }
      
      public function skillExpToLevel(param1:int) : int
      {
         return 0;
      }
      
      public function levelUpExp(param1:Number) : Number
      {
         return GamePredef.PLAYER_LEVEL_EXP[param1] - GamePredef.PLAYER_LEVEL_EXP[param1 - 1];
      }
   }
}

