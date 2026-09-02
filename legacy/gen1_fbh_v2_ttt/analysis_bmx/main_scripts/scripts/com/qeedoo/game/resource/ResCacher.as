package com.qeedoo.game.resource
{
   import com.qeedoo.game.event.GameDataEvent;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.utils.Dictionary;
   
   public class ResCacher extends EventDispatcher
   {
      
      public static var _instance:ResCacher = null;
      
      public var loading_list:Dictionary = new Dictionary();
      
      public var current_complete_loader:LoaderInfo;
      
      public var RES_MAP:Dictionary = new Dictionary();
      
      public var callbacks:Array = new Array();
      
      public function ResCacher()
      {
         super();
      }
      
      public static function getInstance() : ResCacher
      {
         if(!_instance)
         {
            _instance = new ResCacher();
         }
         return _instance;
      }
      
      public function onLoadComplete(param1:Event) : void
      {
         var _loc2_:LoaderInfo = param1.target as LoaderInfo;
         current_complete_loader = _loc2_;
         _loc2_.removeEventListener(Event.COMPLETE,onLoadComplete);
         var _loc3_:String = _loc2_.url.substr(-36);
         RES_MAP[_loc3_] = _loc2_.content;
         loading_list[_loc3_] = null;
         this.dispatchEvent(param1);
         var _loc4_:GameDataEvent = new GameDataEvent(GameDataEvent.RES_LOADED);
         _loc4_.data = {"urlAlias":_loc3_};
         this.dispatchEvent(_loc4_);
      }
      
      public function getRes(param1:String) : Object
      {
         var _loc2_:String = param1.substr(-36);
         var _loc3_:* = RES_MAP[_loc2_];
         if(_loc3_ != null)
         {
            return _loc3_;
         }
         if(loading_list[_loc2_])
         {
            return null;
         }
         var _loc4_:Loader = new Loader();
         loading_list[param1] = _loc4_;
         _loc4_.contentLoaderInfo.addEventListener(Event.COMPLETE,onLoadComplete);
         var _loc5_:LoaderContext = new LoaderContext(false,ApplicationDomain.currentDomain,null);
         _loc4_.load(new URLRequest(param1),_loc5_);
         return null;
      }
   }
}

