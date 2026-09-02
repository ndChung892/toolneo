package com.qeedoo.ui.resource.local
{
   import com.qeedoo.ui.resource.ResManager;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.SecurityDomain;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.setTimeout;
   
   public class CacheLoader extends Loader implements ILoaderInfo
   {
      
      private static var t:Timer;
      
      private static var lc:LoaderContext = new LoaderContext(true,ApplicationDomain.currentDomain,SecurityDomain.currentDomain);
      
      public static var cacheLoaderTable:Object = new Object();
      
      private static const MaxRetryCount:int = 10;
      
      private static var loadingCount:int = 0;
      
      private static const MAX_LOADING_COUNT:int = 5;
      
      private static var loaderQueue:Array = new Array();
      
      private static const CacheTimeout:Number = 5000;
      
      public static var lastCachedTime:Object = new Object();
      
      private var retryCount:int = 0;
      
      private var loadedCallbacks:Array;
      
      private var usingLocalData:Boolean = false;
      
      private var isLocalResource:Boolean = false;
      
      private var isCanceled:Boolean = false;
      
      private var url:String;
      
      public var hasLoaded:Boolean = false;
      
      public function CacheLoader(param1:Function)
      {
         super();
         loadedCallbacks = new Array();
         loadedCallbacks.push(param1);
         this.contentLoaderInfo.addEventListener(Event.COMPLETE,onComplete);
         this.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onError);
      }
      
      private static function detectCacheTimeout() : void
      {
         if(t == null)
         {
            t = new Timer(CacheTimeout,10000);
            t.addEventListener(TimerEvent.TIMER,onTimer);
         }
         if(!t.running)
         {
            t.start();
         }
      }
      
      public static function getLoader(param1:String, param2:Function) : CacheLoader
      {
         if(param1 == null)
         {
            throw new Error("url is null");
         }
         var _loc3_:* = cacheLoaderTable[param1];
         refreshCacheTimeout(param1);
         if(_loc3_ != null)
         {
            if(param2 != null)
            {
               _loc3_.addLoadedEventListener(param2);
            }
            return _loc3_;
         }
         var _loc4_:CacheLoader = new CacheLoader(param2);
         _loc4_.url = param1;
         cacheLoaderTable[param1] = _loc4_;
         detectCacheTimeout();
         loaderQueue.push(_loc4_);
         startNextLoader();
         return _loc4_;
      }
      
      public static function getBitmapLoader(param1:String, param2:Function) : ILoaderInfo
      {
         var loadUrl:String = param1;
         var callBack:Function = param2;
         var url:* = loadUrl;
         var onLoadedCallback:* = callBack;
         var func:Function = function(param1:Loader):void
         {
            var _loc2_:* = undefined;
            var _loc3_:* = undefined;
            var _loc4_:* = undefined;
            if(param1.content is MovieClip)
            {
               _loc2_ = new BitmapData(param1.width,param1.height,true,0);
               _loc2_.draw(param1.content);
               _loc3_ = new Bitmap(_loc2_);
               onLoadedCallback(_loc3_);
            }
            else if(param1.content is Bitmap)
            {
               _loc4_ = new BitmapData(param1.width,param1.height,true,0);
               _loc4_.draw(param1.content as Bitmap);
               onLoadedCallback(new Bitmap(_loc4_));
            }
         };
         return getLoader(url,func) as ILoaderInfo;
      }
      
      public static function getMovieClipLoader(param1:String, param2:Function, param3:Object) : ILoaderInfo
      {
         var params:* = undefined;
         var loadUrl:String = param1;
         var callback:Function = param2;
         var param:Object = param3;
         var url:* = loadUrl;
         var onLoadedCallback:* = callback;
         params = param;
         var func:Function = function(param1:Loader):void
         {
            if(param1.content)
            {
               if(params != null)
               {
                  onLoadedCallback(param1.content,params);
               }
               else
               {
                  onLoadedCallback(param1.content);
               }
            }
         };
         return getLoader(url,func) as ILoaderInfo;
      }
      
      private static function onTimer(param1:TimerEvent) : void
      {
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc2_:* = new Date().time;
         var _loc3_:* = 200;
         var _loc4_:int = 0;
         var _loc5_:Array = [];
         var _loc6_:* = CacheLoader.cacheLoaderTable;
         var _loc7_:Array = [];
         for(_loc8_ in _loc6_)
         {
            _loc6_[_loc8_] = null;
            _loc7_.push(_loc8_);
         }
         for(_loc9_ in lastCachedTime)
         {
            if(_loc2_ - lastCachedTime[_loc9_] > CacheTimeout)
            {
               cacheLoaderTable[_loc9_] = null;
               _loc5_.push(_loc9_);
               delete cacheLoaderTable[_loc9_];
               _loc4_++;
            }
            _loc3_--;
            if(_loc3_ < 0)
            {
               break;
            }
         }
         for each(_loc10_ in _loc5_)
         {
            delete lastCachedTime[_loc10_];
         }
         if(_loc4_ < 1)
         {
            t.stop();
         }
      }
      
      private static function startNextLoader() : void
      {
         var _loc1_:CacheLoader = null;
         var _loc2_:* = undefined;
         while(loadingCount < MAX_LOADING_COUNT && loaderQueue.length > 0)
         {
            _loc1_ = loaderQueue.shift();
            _loc1_.startLoad();
            _loc2_ = loadingCount + 1;
            loadingCount = _loc2_;
         }
      }
      
      private static function refreshCacheTimeout(param1:String) : void
      {
         lastCachedTime[param1] = new Date().time;
      }
      
      public function addLoadedEventListener(param1:Function) : void
      {
         if(this.hasLoaded)
         {
            setTimeout(param1,1,this);
         }
         else
         {
            this.loadedCallbacks.push(param1);
         }
      }
      
      public function get bytesLoaded() : int
      {
         return this.contentLoaderInfo.bytesLoaded;
      }
      
      public function get bytesTotal() : int
      {
         if(contentLoaderInfo.bytesTotal == 0)
         {
            return 100000;
         }
         return contentLoaderInfo.bytesTotal;
      }
      
      public function get isLoaded() : Boolean
      {
         return hasLoaded;
      }
      
      private function startLoad(param1:Boolean = true) : void
      {
         var _loc2_:ByteArray = null;
         this.contentLoaderInfo.addEventListener(Event.COMPLETE,onComplete);
         this.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,onError);
         if(param1)
         {
            this.isLocalResource = true;
            _loc2_ = ByteArray(LocalStorage.getInstance().getData(this.url));
            if(_loc2_)
            {
               this.usingLocalData = true;
               loadBytes(_loc2_);
               trace(" ------------------------------------------------------------- ");
               trace("载入本地资源Local : " + this.url);
               trace(" ------------------------------------------------------------- ");
               return;
            }
            this.usingLocalData = false;
            load(new URLRequest(ResManager.hash(this.url)));
         }
         else
         {
            this.isLocalResource = false;
            load(new URLRequest(ResManager.hash(this.url)));
         }
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
         if(this.usingLocalData)
         {
            LocalStorage.getInstance().deleteStorage(this.url);
            this.startLoad(true);
            return;
         }
         var _loc2_:* = this;
         var _loc3_:* = this.retryCount + 1;
         _loc2_.retryCount = _loc3_;
         if(this.retryCount <= MaxRetryCount)
         {
            this.startLoad();
         }
         else
         {
            _loc3_ = loadingCount - 1;
            loadingCount = _loc3_;
            cacheLoaderTable[this.url] = null;
            delete cacheLoaderTable[this.url];
            startNextLoader();
            trace("load file error: " + this.url + ", " + param1);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Function = null;
         this.hasLoaded = true;
         if(!this.usingLocalData && this.isLocalResource)
         {
            LocalStorage.getInstance().saveData(this.url,this.content.loaderInfo.bytes);
         }
         if(!this.isCanceled)
         {
            if(this.content is Bitmap)
            {
               while(this.loadedCallbacks.length > 0)
               {
                  _loc3_ = this.loadedCallbacks.shift();
                  _loc3_(this);
               }
            }
            else if(this.loadedCallbacks.length > 0)
            {
               _loc3_ = this.loadedCallbacks.shift();
               _loc3_(this);
               while(this.loadedCallbacks.length > 0)
               {
                  _loc3_ = this.loadedCallbacks.shift();
                  new CacheLoader(_loc3_).loadBytes(this.contentLoaderInfo.bytes);
               }
            }
         }
         var _loc4_:* = loadingCount - 1;
         loadingCount = _loc4_;
         startNextLoader();
      }
      
      public function cancel() : void
      {
         this.isCanceled = true;
      }
   }
}

