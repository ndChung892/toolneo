package com.qeedoo.game.utils
{
   public class ArrayUtil
   {
      
      public function ArrayUtil()
      {
         super();
      }
      
      public static function getElement(param1:Array, param2:String, param3:Object) : Object
      {
         var _loc5_:Object = null;
         var _loc4_:Object = null;
         for each(_loc5_ in param1)
         {
            if(_loc5_.hasOwnProperty(param2) && _loc5_[param2] == param3)
            {
               _loc4_ = _loc5_;
               break;
            }
         }
         return _loc4_;
      }
   }
}

