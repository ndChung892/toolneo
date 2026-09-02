package com.qeedoo.game.config
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class Debug
   {
      
      public static var DEBUG_MODE:Boolean = false;
      
      public static var REF_TIMER:Dictionary = new Dictionary(true);
      
      public static var REF_RES:Dictionary = new Dictionary(true);
      
      public static var REF_LOADER:Dictionary = new Dictionary(true);
      
      public static var REF_VIEW:Dictionary = new Dictionary(true);
      
      public static var REF_OBJ:Dictionary = new Dictionary(true);
      
      public static var COUNT_FUNC:Object = {};
      
      public function Debug()
      {
         super();
      }
      
      public static function logFunc(param1:String, param2:Object) : void
      {
         var _loc3_:Count = null;
         var _loc4_:ByteArray = null;
         if(!DEBUG_MODE)
         {
            return;
         }
         if(!COUNT_FUNC[param1])
         {
            _loc3_ = new Count();
            COUNT_FUNC[param1] = new Count();
         }
         else
         {
            _loc3_ = Count(COUNT_FUNC[param1]);
            ++_loc3_.call;
            _loc4_ = new ByteArray();
            _loc4_.writeObject(param2);
            _loc3_.data += _loc4_.length;
         }
         trace(param1,"次数：",_loc3_.call,"数据量:",_loc3_.data);
      }
      
      public static function refTimer(param1:Object) : void
      {
         REF_TIMER[param1] = true;
      }
      
      public static function refObj(param1:Object) : void
      {
         REF_OBJ[param1] = true;
      }
      
      public static function refLoader(param1:Object) : void
      {
         REF_LOADER[param1] = true;
      }
      
      public static function refRes(param1:Object) : void
      {
         REF_RES[param1] = true;
      }
      
      public static function getLen(param1:Dictionary) : int
      {
         var _loc3_:Object = null;
         var _loc2_:int = 0;
         for(_loc3_ in param1)
         {
            _loc2_++;
         }
         return _loc2_;
      }
      
      public static function output() : void
      {
         var _loc1_:Object = null;
         trace("当前View引用数:",getLen(REF_VIEW));
         trace("当前Timer引用数:",getLen(REF_TIMER));
         trace("当前Loader引用数:",getLen(REF_LOADER));
         trace("当前Res引用数:",getLen(REF_RES));
         trace("当前Obj引用数:",getLen(REF_OBJ));
         for(_loc1_ in COUNT_FUNC)
         {
            trace(_loc1_,"-",Count(COUNT_FUNC[_loc1_]).call,"-",Count(COUNT_FUNC[_loc1_]).data);
         }
      }
      
      public static function refView(param1:Object) : void
      {
         REF_VIEW[param1] = true;
      }
   }
}

class Count
{
   
   public var data:int = 0;
   
   public var call:int = 1;
   
   public function Count()
   {
      super();
   }
}
