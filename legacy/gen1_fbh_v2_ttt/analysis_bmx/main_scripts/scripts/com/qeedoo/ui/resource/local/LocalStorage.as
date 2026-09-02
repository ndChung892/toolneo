package com.qeedoo.ui.resource.local
{
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import flash.events.NetStatusEvent;
   import flash.net.SharedObject;
   import flash.net.SharedObjectFlushStatus;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   
   public class LocalStorage
   {
      
      private static var localStorage:LocalStorage;
      
      public static const StandardFragmentSize:uint = 5242880;
      
      private static const MaxFragmentSize:uint = 10485800;
      
      private static const FlushDelayTime:int = 20000;
      
      public var isUserDeny:Boolean = false;
      
      public var shareObjectMap:Object;
      
      private var isShowingTips:Boolean = false;
      
      private var isShowTips:Boolean = false;
      
      private var isLocalStorageOpened:Boolean = false;
      
      public var shareObjectFlushPlan:Object;
      
      public function LocalStorage(param1:Single)
      {
         super();
         this.shareObjectMap = new Object();
         this.shareObjectFlushPlan = new Object();
         var _loc2_:* = this.getConfiguration("isLocalStorageOpened");
         if(_loc2_ == null)
         {
            this.isLocalStorageOpened = false;
         }
         else
         {
            this.isLocalStorageOpened = Boolean(_loc2_);
         }
      }
      
      public static function getInstance() : LocalStorage
      {
         if(localStorage == null)
         {
            localStorage = new LocalStorage(new Single());
         }
         return localStorage;
      }
      
      private static function countUrlKey(param1:String) : String
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         if(param1.indexOf("resource/scene/") >= 0)
         {
            _loc2_ = uint(param1.indexOf("resource/scene/"));
            _loc3_ = uint(param1.lastIndexOf("."));
            return param1.substr(_loc2_ + 15,_loc3_ - _loc2_ - 15);
         }
         return param1;
      }
      
      public function getConfiguration(param1:String) : Object
      {
         var _loc2_:* = this.getSharedObject(SharedConfig.DefaultFragmentKey);
         if(_loc2_ == null)
         {
            return null;
         }
         return _loc2_.data[param1];
      }
      
      public function flush(param1:String) : void
      {
         if(this.isUserDeny)
         {
            return;
         }
         var _loc2_:* = this.shareObjectMap[param1];
         if(_loc2_ != null)
         {
            this.shareObjectMap[param1] = null;
            delete this.shareObjectMap[param1];
            delete this.shareObjectFlushPlan[param1];
            if(_loc2_.size > StandardFragmentSize)
            {
               _loc2_.clear();
               trace("flush local data:",param1);
            }
         }
      }
      
      public function saveData(param1:String, param2:Object) : void
      {
         if(this.isUserDeny)
         {
            return;
         }
         var _loc3_:* = SharedConfig.countSharedObjectName(param1);
         var _loc4_:* = this.getSharedObject(_loc3_);
         _loc4_.data[countUrlKey(param1)] = param2;
      }
      
      public function getConfigBool(param1:String) : Boolean
      {
         var _loc2_:* = this.getConfiguration(param1);
         if(_loc2_ == null)
         {
            return false;
         }
         return Boolean(_loc2_);
      }
      
      private function delayToFlush(param1:String) : void
      {
         clearTimeout(this.shareObjectFlushPlan[param1]);
         this.shareObjectFlushPlan[param1] = setTimeout(this.flush,FlushDelayTime,param1);
      }
      
      public function deleteSharedObject(param1:String) : void
      {
         var _loc2_:SharedObject = SharedObject.getLocal(param1);
         if(_loc2_)
         {
            _loc2_.clear();
         }
      }
      
      public function deleteStorage(param1:String) : void
      {
         var _loc2_:* = this.getSharedObject(SharedConfig.countSharedObjectName(param1));
         if(_loc2_ != null)
         {
            _loc2_.clear();
         }
      }
      
      private function onTipCancel() : void
      {
         this.isShowingTips = false;
         this.isUserDeny = true;
      }
      
      public function getData(param1:String) : Object
      {
         if(this.isUserDeny)
         {
            return null;
         }
         var _loc2_:SharedObject = this.getSharedObject(SharedConfig.countSharedObjectName(param1));
         if(_loc2_ == null)
         {
            return null;
         }
         var _loc3_:* = countUrlKey(param1);
         return _loc2_.data[_loc3_];
      }
      
      private function onFlushError(param1:NetStatusEvent = null) : void
      {
         if(param1.info.code == "SharedObject.Flush.Success")
         {
            this.isUserDeny = false;
         }
         else if(param1.info.code == "SharedObject.Flush.Failed")
         {
            this.isUserDeny = true;
         }
         var _loc2_:* = param1.target as SharedObject;
         if(_loc2_)
         {
            _loc2_.removeEventListener(NetStatusEvent.NET_STATUS,this.onFlushError);
         }
      }
      
      public function checkLocalStorageSetting() : void
      {
         var func:Function = null;
         if(!this.isLocalStorageOpened && !this.isUserDeny)
         {
            func = function():void
            {
               onTipEnter(SharedConfig.DefaultFragmentKey);
            };
            Core.getInstance().view.getUI(ViewManager.POP_LOCAL_ALERT).setGuide(func);
         }
      }
      
      public function saveConfiguration(param1:String, param2:Object) : SharedObject
      {
         var _loc3_:* = this.getSharedObject(SharedConfig.DefaultFragmentKey);
         if(_loc3_ != null)
         {
            if(param2 == null)
            {
               delete _loc3_.data[param1];
            }
            else
            {
               _loc3_.data[param1] = param2;
            }
         }
         return _loc3_;
      }
      
      private function getSharedObject(param1:String) : SharedObject
      {
         var soName:* = undefined;
         var path:String = param1;
         soName = path;
         var so:* = this.shareObjectMap[soName];
         if(so == null)
         {
            try
            {
               so = SharedObject.getLocal(soName);
               this.shareObjectMap[soName] = so;
            }
            catch(e:Error)
            {
               trace("获取SharedObject失败：" + soName,e);
            }
         }
         if(so == null)
         {
            trace("获取SharedObject失败：" + soName);
            return null;
         }
         this.delayToFlush(soName);
         return so;
      }
      
      private function onTipEnter(param1:String) : void
      {
         var shareObject:SharedObject = null;
         var result:String = null;
         var soName:* = param1;
         this.isShowingTips = false;
         try
         {
            shareObject = this.saveConfiguration("isLocalStorageOpened",true);
            result = shareObject.flush(MaxFragmentSize);
            if(result == SharedObjectFlushStatus.FLUSHED)
            {
               trace("flush local data:",soName);
               this.isLocalStorageOpened = true;
            }
            else if(result == SharedObjectFlushStatus.PENDING)
            {
               shareObject.addEventListener(NetStatusEvent.NET_STATUS,this.onFlushError);
            }
         }
         catch(e:*)
         {
            trace("使用本地存储时发生错误：" + e.toString());
            shareObject.removeEventListener(NetStatusEvent.NET_STATUS,onFlushError);
         }
      }
   }
}

class Single
{
   
   public function Single()
   {
      super();
   }
}
