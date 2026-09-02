package com.qeedoo.game.logic
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.event.GameDataEvent;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.UrlUtil;
   import com.qeedoo.game.view.ViewManager;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.net.Responder;
   import flash.utils.setTimeout;
   import mx.controls.Alert;
   import mx.core.UIComponent;
   import mx.events.CloseEvent;
   
   public class BattleServer extends EventDispatcher
   {
      
      public static var EVENT_BATTLE_SERVER_FREE_SPACE:* = "BATTLE_SERVER_FREE_SPACE";
      
      private var _ORIGINAL_SERVER_URL:String = null;
      
      private var _ORIGINAL_SERVER_ID:int = -1;
      
      private var _BATTLE_SERVER_URL:String = null;
      
      private var _DISABLE_UI_ARRAY:Array = [ViewManager.FORE_C_C,ViewManager.PANEL_SYSTEM,ViewManager.MAIN_SYS,ViewManager.PANEL_BAG,ViewManager.PANEL_PETMANAGER,ViewManager.PANEL_PET,ViewManager.PANEL_SKILLMANAGER,ViewManager.MAIN_MINIMAP,ViewManager.PANEL_CHARACTOR,ViewManager.MAIN_SELF,ViewManager.MAIN_PET,ViewManager.PANEL_CHARACTORINFO,ViewManager.MAIN_TARGET,ViewManager.PANEL_MAP,ViewManager.PANEL_FAIRY_MANAGER];
      
      private var _CROSS_SERVER_INDEX:int;
      
      private var _VERIFY_KEY:String = "";
      
      public var inBattleServer:Boolean = false;
      
      private var _ID_OFFSET:Number = 1000000000000;
      
      private var _RECREATE_INDEX_ARRAY:Array = [GamePredef.TBL_CHARACTOR,GamePredef.TBL_CHARACTOR_SLOT,GamePredef.TBL_EQUIPT_INSTANCE,GamePredef.TBL_ITEM_INSTANCE,GamePredef.TBL_PET];
      
      private var _core:Core = Core.getInstance();
      
      public function BattleServer()
      {
         super();
      }
      
      private function _resetCharactorViewData() : void
      {
         _core.view.getUI(ViewManager.PANEL_CHARACTOR).reset();
         _core.view.getUI(ViewManager.PANEL_SKILLMANAGER).reset();
      }
      
      public function onReqLeaveCrossBattle(param1:Boolean) : void
      {
         if(param1)
         {
            if(_core.remote.nc.connected && inBattleServer)
            {
               trace("lineInfo.id=" + _core.lineInfo.id);
               _core.logined = false;
               _core.remote.showAlert = false;
               _core.view.clearStage();
               _core.remote.connect(_ORIGINAL_SERVER_URL,["LBS",_core.user,_core.pass,_core.time,_core.by_session,_ORIGINAL_SERVER_ID,_core.lineInfo.id,_core.cid]);
               _core.remote.showAlert = true;
            }
         }
      }
      
      public function onAddCrossBattleWaitList(param1:Array) : void
      {
         var _loc2_:int = 0;
         if(Boolean(param1) && param1[1] == _core.cid)
         {
            _ORIGINAL_SERVER_ID = param1[0];
            _VERIFY_KEY = param1[2];
            _loc2_ = int(param1[3]);
            _CROSS_SERVER_INDEX = param1[3];
            _BATTLE_SERVER_URL = param1[4].url;
            Alert.show(Language.BATTLE_SERVER_S[1].toString().replace("{name}",param1[4].name),"",Alert.YES);
            this.addEventListener(EVENT_BATTLE_SERVER_FREE_SPACE,_getFreeSpaceHandle);
         }
      }
      
      public function updateBattlePoint() : void
      {
      }
      
      private function _disableBattleServerUI() : void
      {
         var _loc2_:Object = null;
         var _loc1_:int = 0;
         while(_loc1_ < _DISABLE_UI_ARRAY.length)
         {
            _loc2_ = _core.view.getUI(_DISABLE_UI_ARRAY[_loc1_]);
            if(_loc2_)
            {
               _loc2_.disableUI();
            }
            _loc1_++;
         }
      }
      
      private function _doConnectBattleServer(param1:int) : void
      {
         if(this.hasEventListener(EVENT_BATTLE_SERVER_FREE_SPACE))
         {
            this.removeEventListener(EVENT_BATTLE_SERVER_FREE_SPACE,_getFreeSpaceHandle);
         }
         var _loc2_:String = _core.view.getUI(ViewManager.MAIN_LINE).dnsResolve(_BATTLE_SERVER_URL);
         if(_loc2_ != null)
         {
            _BATTLE_SERVER_URL = _loc2_;
         }
         if(GamePredef.SERVER_ISACTING)
         {
            _BATTLE_SERVER_URL = _BATTLE_SERVER_URL.replace("rtmp","rtmpte");
         }
         else
         {
            _BATTLE_SERVER_URL = _BATTLE_SERVER_URL.replace("rtmp","rtmpe");
         }
         if(_core.remote.nc.connected && !inBattleServer)
         {
            _ORIGINAL_SERVER_URL = _core.remote.nc.uri;
            _core.logined = false;
            _core.destroyCharactor(_core.cid);
            _core.remote.showAlert = false;
            if(param1 == 75)
            {
               _core.remote.connect(_BATTLE_SERVER_URL,["CPK",_core.user,_core.pass,_core.time,_core.by_session,_ORIGINAL_SERVER_ID,_core.cid,_VERIFY_KEY]);
            }
            else
            {
               _core.remote.connect(_BATTLE_SERVER_URL,["EBS",_core.user,_core.pass,_core.time,_core.by_session,_ORIGINAL_SERVER_ID,_core.cid,_VERIFY_KEY]);
            }
            _core.remote.showAlert = true;
         }
      }
      
      public function reqEnterCrossBattle() : void
      {
         _core.remote.reqEnterCrossBattle();
      }
      
      public function reqLeaveCrossBattle() : void
      {
         if(_ORIGINAL_SERVER_URL)
         {
            _core.remote.reqLeaveCrossBattle(_ORIGINAL_SERVER_URL);
         }
         else
         {
            trace("original server url is null");
         }
      }
      
      public function leaveCrossBattle() : void
      {
         this.inBattleServer = false;
         _resetCharactorViewData();
         _enableBattleServerUI();
      }
      
      public function onReqEnterCrossPK(param1:Array) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         if(Boolean(param1) && param1[1] == _core.cid)
         {
            _ORIGINAL_SERVER_ID = param1[0];
            _VERIFY_KEY = param1[2];
            _loc2_ = int(param1[3]);
            _CROSS_SERVER_INDEX = param1[3];
            _BATTLE_SERVER_URL = param1[4].url;
            trace("server_id=" + param1[0] + ",cid=" + param1[1] + ",key=" + _VERIFY_KEY + ",bs_url=" + _BATTLE_SERVER_URL);
            trace("cross_server_index = " + param1[3]);
            _loc3_ = _core.data.gameData[GamePredef.TBL_MAP][75];
            if(_loc3_)
            {
               _loc4_ = UrlUtil.getResUrlNoHash(_loc3_.resCode);
               _loc5_ = _core.view.getUI(ViewManager.STAGE_MAIN);
               if((Boolean(_loc5_)) && Boolean(_loc5_.mapContainer))
               {
                  _loc5_.loadHitTestLayer(_loc4_);
                  _loc5_.mapContainer.loadSpecialMaps(_loc5_,_loc3_.id);
                  (_loc5_ as UIComponent).addEventListener(GameDataEvent.MAP_READY,handleCrossPKMapReady);
               }
            }
         }
      }
      
      public function enterCrossBattle() : void
      {
         this.inBattleServer = true;
         _resetCharactorViewData();
         _disableBattleServerUI();
      }
      
      private function _getFreeSpaceHandle(param1:Event) : void
      {
         var findNextFunc:Function;
         var handle:Function;
         var _alert:Alert;
         var event:Event = param1;
         this.removeEventListener(EVENT_BATTLE_SERVER_FREE_SPACE,_getFreeSpaceHandle);
         findNextFunc = function():void
         {
            _core.remote.findNextWaitChar();
         };
         handle = function(param1:CloseEvent):void
         {
            var onSetCharWaitToAccept:Function = null;
            var event:CloseEvent = param1;
            if(Boolean(event) && event.detail == Alert.YES)
            {
               trace("您得到一个空闲位置, 确定进入..");
               onSetCharWaitToAccept = function(param1:Boolean):*
               {
                  if(param1)
                  {
                     _core.remote.call("crossDFPayIn",null,_CROSS_SERVER_INDEX);
                  }
               };
               _core.remote.call("setCharWaitToAccept",new Responder(onSetCharWaitToAccept));
            }
            else
            {
               findNextFunc();
            }
         };
         _alert = Alert.show(Language.BATTLE_SERVER_S[2],"",Alert.YES | Alert.NO,null,handle);
         setTimeout(findNextFunc,15000);
      }
      
      private function handleMapReady(param1:Event) : void
      {
         var _loc2_:Object = _core.view.getUI(ViewManager.STAGE_MAIN);
         (_loc2_ as UIComponent).removeEventListener(GameDataEvent.MAP_READY,handleMapReady);
         _doConnectBattleServer(60);
      }
      
      private function _enableBattleServerUI() : void
      {
         var _loc2_:Object = null;
         var _loc1_:int = 0;
         while(_loc1_ < _DISABLE_UI_ARRAY.length)
         {
            _loc2_ = _core.view.getUI(_DISABLE_UI_ARRAY[_loc1_]);
            if(_loc2_)
            {
               _loc2_.enableUI();
            }
            _loc1_++;
         }
      }
      
      private function handleCrossPKMapReady(param1:Event) : void
      {
         var _loc2_:Object = _core.view.getUI(ViewManager.STAGE_MAIN);
         (_loc2_ as UIComponent).removeEventListener(GameDataEvent.MAP_READY,handleCrossPKMapReady);
         _doConnectBattleServer(75);
      }
      
      public function onReqEnterCrossBattle(param1:Array) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         if(Boolean(param1) && param1[1] == _core.cid)
         {
            _ORIGINAL_SERVER_ID = param1[0];
            _VERIFY_KEY = param1[2];
            _loc2_ = int(param1[3]);
            _CROSS_SERVER_INDEX = param1[3];
            _BATTLE_SERVER_URL = param1[4].url;
            trace("server_id=" + param1[0] + ",cid=" + param1[1] + ",key=" + _VERIFY_KEY + ",bs_url=" + _BATTLE_SERVER_URL);
            trace("cross_server_index = " + param1[3]);
            _loc3_ = _core.data.gameData[GamePredef.TBL_MAP][60];
            if(_loc3_)
            {
               _loc4_ = UrlUtil.getResUrlNoHash(_loc3_.resCode);
               _loc5_ = _core.view.getUI(ViewManager.STAGE_MAIN);
               if((Boolean(_loc5_)) && Boolean(_loc5_.mapContainer))
               {
                  _loc5_.loadHitTestLayer(_loc4_);
                  _loc5_.mapContainer.loadSpecialMaps(_loc5_,_loc3_.id);
                  (_loc5_ as UIComponent).addEventListener(GameDataEvent.MAP_READY,handleMapReady);
               }
            }
         }
      }
   }
}

