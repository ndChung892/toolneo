package com.qeedoo.game.rpc
{
   import com.qeedoo.game.config.RPCConfig;
   import com.qeedoo.game.system.Core;
   import flash.events.NetStatusEvent;
   import flash.net.NetConnection;
   import flash.net.ObjectEncoding;
   import flash.net.Responder;
   import flash.utils.Proxy;
   import flash.utils.clearTimeout;
   import flash.utils.flash_proxy;
   import flash.utils.setTimeout;
   
   use namespace flash_proxy;
   
   public dynamic class RemoteObj extends Proxy
   {
      
      public static var MIN_DELAY:Number = 100;
      
      public static var MAX_CALL:Number = 100;
      
      public static var CHECK_DELAY:Number = 1000;
      
      public static var RECONNECT_DELAY:Number = 3000;
      
      public static var FIRST_RECONNECT_DELAY:Number = 1;
      
      public static var MAX_RECONNECT_DELAY:Number = 30000;
      
      public static var RECONNECT_FAIL_ALERT_DELAY:Number = 30000;
      
      private var _lastCode:String;
      
      private var _lastStatus:String;
      
      private var _callNum:Object;
      
      private var _nc:NetConnection;
      
      private var _callTotal:Object;
      
      public var kickCode:String;
      
      private var _showAlert:Boolean;
      
      private var _cInfo:Array;
      
      private var _lastCall:Object;
      
      private var _manualClose:Boolean;
      
      private var _reconnectTimer:uint;
      
      private var _reconnectFailTimer:uint;
      
      private var _reconnectTimes:int;
      
      private var _reconnectCanceled:Boolean;
      
      private var _reconnectCancelReason:String;
      
      public function RemoteObj(param1:Object)
      {
         super();
         _nc = new NetConnection();
         _nc.addEventListener(NetStatusEvent.NET_STATUS,nsHandler);
         _nc.objectEncoding = ObjectEncoding.AMF0;
         _nc.client = param1;
         _showAlert = true;
         _callNum = {};
         _lastCall = {};
         _callTotal = {};
      }
      
      private function nsHandler(param1:NetStatusEvent) : void
      {
         _lastStatus = param1.info.code;
         _lastCode = param1.info.application;
         switch(_lastStatus)
         {
            case "NetConnection.Connect.Success":
               clearReconnect();
               _manualClose = false;
               _reconnectCanceled = false;
               _reconnectCancelReason = null;
               _reconnectTimes = 0;
               break;
            case "NetConnection.Connect.Closed":
               if(_manualClose)
               {
                  _manualClose = false;
                  break;
               }
               if(kickCode != null && kickCode != "")
               {
                  cancelReconnect(kickCode);
                  _nc.client.close();
                  break;
               }
               reconnectLater();
               break;
            case "NetConnection.Connect.Failed":
               reconnectLater();
               break;
            case "NetConnection.Connect.Rejected":
               clearReconnect();
               if(Boolean(param1.info) && param1.info.application == "ERR_CLASSIFY")
               {
                  _nc.client.classifyAlert();
               }
               if(Boolean(param1.info) && param1.info.application == "ERR_CLASSIFY2")
               {
                  _nc.client.classifyAlert2();
               }
               if(Boolean(param1.info) && param1.info.application == "ERR_CLASSIFY3")
               {
                  _nc.client.classifyAlert3();
               }
               if(Boolean(param1.info) && param1.info.application == "ERR_CLASSIFY4")
               {
                  _nc.client.classifyAlert4();
               }
               if(Boolean(param1.info) && param1.info.application == "ERR_CLASSIFY5")
               {
                  _nc.client.classifyAlert5();
               }
               if(Boolean(param1.info) && param1.info.application == "ERR_CLASSIFY6")
               {
                  _nc.client.classifyAlert6();
               }
               if(Boolean(param1.info) && param1.info.application == "ERR_CLASSIFY7")
               {
                  _nc.client.classifyAlert7();
               }
         }
      }
      
      override flash_proxy function callProperty(param1:*, ... rest) : *
      {
         var _loc3_:Number = new Date().getTime();
         if(!_nc.connected)
         {
            reconnectLater();
            return;
         }
         if(RPCConfig.RPC_DELAY[param1])
         {
            if(!(!(_lastCall[param1] is Number) || _loc3_ - _lastCall[param1] > RPCConfig.RPC_DELAY[param1] || RPCConfig.RPC_DENY_MAX[param1] && _callNum[param1] >= RPCConfig.RPC_DENY_MAX[param1]))
            {
               _callNum[param1] = Number(_callNum[param1]) + 1;
               return;
            }
            _lastCall[param1] = _loc3_;
            _callNum[param1] = 0;
         }
         if(rest.length > 0)
         {
            rest.unshift(param1.toString(),null);
            _nc.call.apply(_nc,rest);
         }
         else
         {
            _nc.call(param1.toString(),null);
         }
         return null;
      }
      
      public function call(param1:String, param2:Responder, ... rest) : Boolean
      {
         var _loc4_:Number = new Date().getTime();
         if(!_nc.connected)
         {
            reconnectLater();
            return false;
         }
         if(RPCConfig.RPC_DELAY[param1])
         {
            if(!(!(_lastCall[param1] is Number) || _loc4_ - _lastCall[param1] > RPCConfig.RPC_DELAY[param1] || RPCConfig.RPC_DENY_MAX[param1] && _callNum[param1] >= RPCConfig.RPC_DENY_MAX[param1]))
            {
               _callNum[param1] = Number(_callNum[param1]) + 1;
               return false;
            }
            _lastCall[param1] = _loc4_;
            _callNum[param1] = 0;
         }
         rest.unshift(param2);
         rest.unshift(param1);
         _nc.call.apply(_nc,rest);
         return true;
      }
      
      public function connect(... rest) : void
      {
         _cInfo = rest.concat();
         _manualClose = false;
         _reconnectCanceled = false;
         _reconnectCancelReason = null;
         clearReconnect();
         _nc.connect.apply(_nc,rest);
      }
      
      public function get info() : String
      {
         return _lastStatus;
      }
      
      public function set nc(param1:NetConnection) : void
      {
         _nc.removeEventListener(NetStatusEvent.NET_STATUS,nsHandler);
         this._nc = param1;
         _nc.addEventListener(NetStatusEvent.NET_STATUS,nsHandler);
         if(!_cInfo && Boolean(_nc.uri))
         {
            _cInfo = [_nc.uri];
         }
      }
      
      public function get nc() : NetConnection
      {
         return _nc;
      }
      
      public function set showAlert(param1:Boolean) : void
      {
         _showAlert = param1;
         if(!param1)
         {
            _manualClose = true;
            clearReconnect();
         }
      }
      
      public function get showAlert() : Boolean
      {
         return _showAlert;
      }
      
      private function reConnect() : void
      {
         var _loc1_:Array = null;
         if(!_cInfo)
         {
            trace("[RemoteObj] reconnect skipped: no connect info");
            return;
         }
         if(!canReconnectNow())
         {
            trace("[RemoteObj] reconnect skipped: not in game state");
            clearReconnect();
            return;
         }
         if(_reconnectCanceled)
         {
            trace("[RemoteObj] reconnect skipped: canceled",_reconnectCancelReason);
            return;
         }
         _loc1_ = getReconnectConnectInfo();
         trace("[RemoteObj] reconnect now",_nc.uri,"type",getConnectType(_loc1_));
         _manualClose = false;
         _nc.connect.apply(_nc,_loc1_);
      }
      
      private function getReconnectConnectInfo() : Array
      {
         var _loc1_:Array = null;
         var _loc2_:Array = null;
         if(!_cInfo)
         {
            return null;
         }
         _loc1_ = _cInfo.concat();
         if(_loc1_.length > 1 && _loc1_[1] is Array)
         {
            _loc2_ = (_loc1_[1] as Array).concat();
            if(_loc2_.length > 0 && (_loc2_[0] == "F" || _loc2_[0] == "G" || _loc2_[0] == "L"))
            {
               _loc2_[0] = "RC";
            }
            _loc1_[1] = _loc2_;
         }
         return _loc1_;
      }
      
      private function getConnectType(param1:Array) : String
      {
         if(Boolean(param1) && param1.length > 1 && param1[1] is Array && (param1[1] as Array).length > 0)
         {
            return String((param1[1] as Array)[0]);
         }
         return null;
      }
      
      private function reconnectLater() : void
      {
         var _loc1_:Number = NaN;
         if(!canReconnectNow())
         {
            trace("[RemoteObj] reconnect skipped: not in game state");
            clearReconnect();
            return;
         }
         if(!_cInfo)
         {
            trace("[RemoteObj] reconnect skipped: no connect info");
            return;
         }
         if(_reconnectCanceled)
         {
            trace("[RemoteObj] reconnect skipped: canceled",_reconnectCancelReason);
            return;
         }
         if(_reconnectTimer)
         {
            trace("[RemoteObj] reconnect already scheduled",_reconnectTimer);
            return;
         }
         startReconnectFailTimer();
         if(_reconnectTimes == 0)
         {
            _loc1_ = FIRST_RECONNECT_DELAY;
         }
         else
         {
            _loc1_ = RECONNECT_DELAY * Math.max(1,_reconnectTimes);
         }
         if(_loc1_ > MAX_RECONNECT_DELAY)
         {
            _loc1_ = MAX_RECONNECT_DELAY;
         }
         ++_reconnectTimes;
         trace("[RemoteObj] reconnect scheduled",_loc1_,"times",_reconnectTimes,"status",_lastStatus);
         _reconnectTimer = setTimeout(onReconnectTimer,_loc1_);
      }
      
      private function canReconnectNow() : Boolean
      {
         var _loc1_:Core = Core.getInstance();
         return Boolean(_loc1_.player) && _loc1_.cid > 0;
      }
      
      private function onReconnectTimer() : void
      {
         _reconnectTimer = 0;
         if(!_nc.connected && !_reconnectCanceled && canReconnectNow())
         {
            reConnect();
         }
      }
      
      private function startReconnectFailTimer() : void
      {
         if(_reconnectFailTimer)
         {
            return;
         }
         _reconnectFailTimer = setTimeout(onReconnectFailTimer,RECONNECT_FAIL_ALERT_DELAY);
         trace("[RemoteObj] reconnect fail alert scheduled",RECONNECT_FAIL_ALERT_DELAY);
      }
      
      private function onReconnectFailTimer() : void
      {
         _reconnectFailTimer = 0;
         if(_nc.connected || _reconnectCanceled)
         {
            return;
         }
         if(!canReconnectNow())
         {
            trace("[RemoteObj] reconnect timeout ignored: not in game state");
            clearReconnect();
            return;
         }
         trace("[RemoteObj] reconnect failed timeout",RECONNECT_FAIL_ALERT_DELAY);
         _reconnectCanceled = true;
         _reconnectCancelReason = "reconnect_timeout";
         clearReconnect();
         _lastStatus = "NetConnection.Connect.Closed";
         _lastCode = null;
         _nc.client.close();
      }
      
      private function clearReconnect() : void
      {
         if(_reconnectTimer)
         {
            clearTimeout(_reconnectTimer);
            _reconnectTimer = 0;
         }
         if(_reconnectFailTimer)
         {
            clearTimeout(_reconnectFailTimer);
            _reconnectFailTimer = 0;
         }
      }
      
      public function debugDisconnectForReconnect() : void
      {
         trace("[RemoteObj] debug disconnect for reconnect","connected",_nc.connected,"uri",_nc.uri);
         _manualClose = false;
         _reconnectCanceled = false;
         _reconnectCancelReason = null;
         clearReconnect();
         try
         {
            _nc.close();
         }
         catch(e:Error)
         {
            trace("[RemoteObj] debug disconnect close error",e.message);
         }
         reconnectLater();
      }
      
      public function cancelReconnect(param1:String = "server", param2:Boolean = false) : void
      {
         trace("[RemoteObj] reconnect canceled",param1,"close",param2);
         _reconnectCanceled = true;
         _reconnectCancelReason = param1;
         clearReconnect();
         if(param2)
         {
            _manualClose = true;
            try
            {
               _nc.close();
            }
            catch(e:Error)
            {
               trace("[RemoteObj] cancel reconnect close error",e.message);
            }
         }
      }
      
      public function getReconnectDebugInfo() : Object
      {
         return {
            "connected":_nc.connected,
            "uri":_nc.uri,
            "lastStatus":_lastStatus,
            "lastCode":_lastCode,
            "manualClose":_manualClose,
            "reconnectCanceled":_reconnectCanceled,
            "reconnectCancelReason":_reconnectCancelReason,
            "reconnectTimer":_reconnectTimer,
            "reconnectFailTimer":_reconnectFailTimer,
            "reconnectTimes":_reconnectTimes,
            "canReconnectNow":canReconnectNow(),
            "connectType":getConnectType(_cInfo),
            "reconnectType":getConnectType(getReconnectConnectInfo()),
            "hasConnectInfo":_cInfo != null
         };
      }
      
      public function close() : void
      {
         var _loc1_:Boolean = showAlert;
         clearReconnect();
         _manualClose = true;
         showAlert = false;
         _nc.close();
         showAlert = _loc1_;
      }
      
      public function get appCode() : String
      {
         return _lastCode;
      }
   }
}

