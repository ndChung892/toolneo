package com.qeedoo.ui.utils
{
   public class ArrayQueue
   {
      
      private var _lastJoin:String = "";
      
      private var _arr:Array = [];
      
      private var _maxLen:uint;
      
      private var _point:uint = 0;
      
      private var _needJoin:Boolean = true;
      
      public function ArrayQueue(param1:uint = 20)
      {
         super();
         _maxLen = param1;
      }
      
      public function join() : String
      {
         var _loc1_:StringBuffer = null;
         var _loc2_:uint = 0;
         if(_needJoin)
         {
            _loc1_ = new StringBuffer();
            _loc2_ = 0;
            while(_loc2_ < _maxLen)
            {
               _loc1_.append(_arr[(_loc2_ + _point) % _maxLen]);
               _loc2_++;
            }
            _lastJoin = _loc1_.toString();
            _needJoin = false;
         }
         return _lastJoin;
      }
      
      public function clear() : void
      {
         _point = 0;
         _arr = [];
         _lastJoin = "";
         _needJoin = true;
      }
      
      public function get dataUpdated() : Boolean
      {
         return _needJoin;
      }
      
      public function push(param1:*) : void
      {
         if(_arr.length < _maxLen)
         {
            _arr[_arr.length] = param1;
         }
         else
         {
            _arr[_point] = param1;
            _point = (_point + 1) % _maxLen;
         }
         _needJoin = true;
      }
   }
}

