package com.qeedoo.game.utils
{
   import com.qeedoo.game.predef.GamePredef;
   
   public class LinkEncode
   {
      
      public function LinkEncode()
      {
         super();
      }
      
      public static function encode(param1:int, param2:Number, param3:String) : String
      {
         if(!GamePredef.LINK_TYPE_ARRAY[param1])
         {
            return "";
         }
         var _loc4_:String = param2.toString();
         if(GamePredef.LINK_TYPE_ARRAY[param1] == "HELP")
         {
            if(param2 < 1000)
            {
               _loc4_ = "0" + param2.toString();
            }
         }
         return "[@" + GamePredef.LINK_TYPE_ARRAY[param1] + "|" + _loc4_ + "|" + param3 + "|8|0|0]";
      }
   }
}

