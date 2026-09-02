package com.qeedoo.game.utils
{
   public class JSONUtil
   {
      
      public function JSONUtil()
      {
         super();
      }
      
      public static function isEmptyObject(param1:Object) : Boolean
      {
         var _loc2_:String = null;
         if(param1)
         {
            for(_loc2_ in param1)
            {
               if(param1[_loc2_])
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      public static function JSONfy(param1:String) : String
      {
         if(!param1)
         {
            return "";
         }
         var _loc2_:RegExp = /"/g;
         var _loc3_:String = param1.replace(_loc2_,"");
         _loc2_ = /'/g;
         _loc3_ = _loc3_.replace(_loc2_,"");
         _loc2_ = /([+-] ?)?\b\w+\b/g;
         _loc3_ = _loc3_.replace(_loc2_,"\"$&\"");
         _loc2_ = /"\."/g;
         return _loc3_.replace(_loc2_,".");
      }
   }
}

