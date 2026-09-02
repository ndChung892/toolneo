package mx.utils
{
   import flash.display.LoaderInfo;
   
   public class LoaderUtil
   {
      
      public function LoaderUtil()
      {
         super();
      }
      
      public static function normalizeURL(param1:LoaderInfo) : String
      {
         var _loc2_:String = param1.url;
         var _loc3_:Array = _loc2_.split("/[[DYNAMIC]]/");
         return _loc3_[0];
      }
   }
}

