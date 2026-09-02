package com.qeedoo.game.rpc
{
   public class RemoteNc
   {
      
      private static var _global:RemoteObj;
      
      private static var _remote:RemoteObj;
      
      public function RemoteNc()
      {
         super();
      }
      
      public static function get global() : RemoteObj
      {
         return _global;
      }
      
      public static function set global(param1:RemoteObj) : void
      {
         _global = param1;
      }
      
      public static function set remote(param1:RemoteObj) : void
      {
         _remote = param1;
      }
      
      public static function get remote() : RemoteObj
      {
         return _remote;
      }
   }
}

