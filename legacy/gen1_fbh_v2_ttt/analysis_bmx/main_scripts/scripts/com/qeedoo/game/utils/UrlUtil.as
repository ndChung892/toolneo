package com.qeedoo.game.utils
{
   import com.qeedoo.game.predef.GamePredef;
   
   public class UrlUtil
   {
      
      private static const ROOT_RES:String = "resource/";
      
      private static const ROOT_ICON:String = "icon/";
      
      private static const ROOT_HASH:String = "res/";
      
      private static const URL_WORD_EXT:Number = 1000000000000;
      
      private static const URL_WORD_1:Number = 1000000000;
      
      private static const URL_WORD_2:Number = 1000000;
      
      private static const URL_NUM_LENGTH:int = 6;
      
      public function UrlUtil()
      {
         super();
      }
      
      public static function getResUrlNoHash(param1:Number) : String
      {
         return ROOT_RES + getUrl(param1);
      }
      
      public static function getUrl(param1:Number) : String
      {
         var _loc2_:int = int(param1 / URL_WORD_EXT);
         param1 %= URL_WORD_EXT;
         var _loc3_:int = int(param1 / URL_WORD_1);
         param1 %= URL_WORD_1;
         var _loc4_:int = int(param1 / URL_WORD_2);
         var _loc5_:String = param1.toString();
         _loc5_ = _loc5_.substr(_loc5_.length - URL_NUM_LENGTH);
         return GamePredef.RES_URL_FOLDER[_loc3_] + GamePredef.RES_URL_WORD1[_loc3_] + GamePredef.RES_URL_WORD2[_loc4_] + _loc5_ + GamePredef.RES_URL_EXT[_loc2_];
      }
   }
}

