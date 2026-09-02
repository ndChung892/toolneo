package com.qeedoo.ui.utils
{
   import flash.utils.ByteArray;
   
   public class LanguageUtil
   {
      
      public function LanguageUtil()
      {
         super();
      }
      
      public static function html2PlainText(param1:String) : String
      {
         return param1.replace(/<[^>].*?>/g,"");
      }
      
      public static function replace(param1:String, param2:Object) : String
      {
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:RegExp = null;
         var _loc3_:String = param1;
         if(param2)
         {
            for(_loc4_ in param2)
            {
               _loc5_ = "\\{" + _loc4_ + "\\}";
               _loc6_ = new RegExp(_loc5_,"g");
               _loc3_ = _loc3_.replace(_loc6_,param2[_loc4_]);
            }
         }
         return _loc3_;
      }
      
      public static function getByteLen(param1:String) : int
      {
         var _loc3_:ByteArray = null;
         var _loc2_:int = -1;
         if(param1 != null)
         {
            _loc3_ = new ByteArray();
            _loc3_.writeMultiByte(param1,"");
            _loc2_ = int(_loc3_.length);
         }
         return _loc2_;
      }
      
      public static function appendText(param1:String, param2:Array) : String
      {
         var _loc3_:int = 0;
         var _loc4_:RegExp = null;
         var _loc5_:String = "";
         _loc3_ = 0;
         while(_loc3_ < param2.length)
         {
            _loc5_ = "\\{" + _loc3_.toString() + "\\}";
            _loc4_ = new RegExp(_loc5_,"g");
            param1 = param1.replace(_loc4_,String(param2[_loc3_]));
            _loc3_++;
         }
         return param1;
      }
   }
}

