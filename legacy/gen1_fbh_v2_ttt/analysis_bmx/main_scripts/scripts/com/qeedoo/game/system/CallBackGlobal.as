package com.qeedoo.game.system
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.config.Version;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.view.ViewManager;
   import flash.external.ExternalInterface;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.utils.Proxy;
   import flash.utils.flash_proxy;
   import flash.utils.setTimeout;
   import mx.controls.Alert;
   import mx.events.CloseEvent;
   
   use namespace flash_proxy;
   
   public dynamic class CallBackGlobal extends Proxy
   {
      
      private var _core:Core;
      
      public function CallBackGlobal()
      {
         super();
         _core = Core.getInstance();
      }
      
      public function classifyAlert3() : void
      {
         Alert.show(Language.ANTIADDICTCANVAS_U[46],"",Alert.OK);
      }
      
      public function onGetLimitShopConfig(param1:Object) : void
      {
         var _loc3_:String = null;
         if(param1[0] != 0)
         {
            trace("getLimitShopConfig get error : " + param1[1]);
            return;
         }
         var _loc2_:Array = param1[2];
         for each(_loc3_ in _loc2_)
         {
            parseAndSetShopSlot(_loc3_);
         }
      }
      
      public function classifyAlert5() : void
      {
         Alert.show(Language.ANTIADDICTCANVAS_U[45],"",Alert.OK);
      }
      
      public function onUpdateGuildMember(... rest) : void
      {
      }
      
      public function classifyAlert7() : void
      {
         Alert.show(Language.ANTIADDICTCANVAS_U[47],"",Alert.OK);
      }
      
      public function onLogout(... rest) : void
      {
      }
      
      public function onUpdateGuild(... rest) : void
      {
      }
      
      public function onSay(... rest) : void
      {
      }
      
      public function classifyAlert6() : void
      {
         Alert.show(Language.ANTIADDICTCANVAS_U[42],"",Alert.OK);
      }
      
      public function onUpdateGuildRand(... rest) : void
      {
      }
      
      public function onAddGuild(... rest) : void
      {
      }
      
      private function parseAndSetShopSlot(param1:String) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         var _loc4_:Array = null;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc7_:Object = null;
         var _loc8_:Array = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         if(param1)
         {
            param1 = param1.replace("\r","");
            param1 = param1.replace("\n","");
            _loc2_ = param1.indexOf(";");
            if(_loc2_ <= 0)
            {
               trace("getShopConfig get error : " + param1);
               return;
            }
            _loc3_ = param1.substr(_loc2_ + 1);
            _loc4_ = _loc3_.split(";");
            _loc5_ = new Object();
            for each(_loc6_ in _loc4_)
            {
               if(_loc6_ == null || _loc6_ == "")
               {
                  break;
               }
               _loc6_ = _loc6_.replace("obj.","");
               _loc8_ = _loc6_.split("=");
               _loc9_ = _loc8_[1];
               _loc9_ = _loc9_.replace("\'","");
               _loc9_ = _loc9_.replace("\'","");
               _loc5_[_loc8_[0]] = _loc9_;
            }
            _loc7_ = GameData.d[GamePredef.TBL_SHOP_SLOT][int(_loc5_["id"])];
            if((Boolean(_loc7_)) && _loc7_ != null)
            {
               for(_loc10_ in _loc5_)
               {
                  if(_loc10_ == "st" && _loc7_[_loc10_] != _loc5_[_loc10_])
                  {
                     delete _core.data.gameDataIndex2[GamePredef.TBL_SHOP_SLOT][_loc7_.st][_loc5_.id];
                  }
                  if(_loc10_ == "sid" && _loc7_[_loc10_] != _loc5_[_loc10_])
                  {
                     delete _core.data.gameDataIndex[GamePredef.TBL_SHOP_SLOT][_loc7_.sid][_loc5_.id];
                  }
                  if(_loc10_ != "position")
                  {
                     _loc7_[_loc10_] = _loc5_[_loc10_];
                  }
               }
            }
            if(_core.data.gameDataIndex2[GamePredef.TBL_SHOP_SLOT][_loc5_.st] == null)
            {
               _core.data.gameDataIndex2[GamePredef.TBL_SHOP_SLOT][_loc5_.st] = {};
            }
            if(_core.data.gameDataIndex[GamePredef.TBL_SHOP_SLOT][_loc5_.sid] == null)
            {
               _core.data.gameDataIndex[GamePredef.TBL_SHOP_SLOT][_loc5_.sid] = {};
            }
            _core.data.gameDataIndex2[GamePredef.TBL_SHOP_SLOT][_loc5_.st][_loc5_.id] = _loc7_ == null ? _loc5_ : _loc7_;
            _core.data.gameDataIndex[GamePredef.TBL_SHOP_SLOT][_loc5_.sid][_loc5_.id] = _loc7_ == null ? _loc5_ : _loc7_;
         }
      }
      
      public function classifyAlert4() : void
      {
         Alert.show(Language.ANTIADDICTCANVAS_U[43],"",Alert.OK);
      }
      
      public function onAddGuildMember(... rest) : void
      {
      }
      
      public function onSystemSay(... rest) : void
      {
      }
      
      public function onDelGuildMember(... rest) : void
      {
      }
      
      public function updateAccount(param1:Object) : void
      {
         if(_core.by_session == "sdo")
         {
            if(param1.email)
            {
               _core.user = param1.email;
            }
            if(param1.password)
            {
               _core.pass = param1.password;
            }
         }
      }
      
      public function onSystemMidMsg(... rest) : void
      {
      }
      
      public function onBlueMsg(... rest) : void
      {
      }
      
      public function ipChangeWarn(param1:*) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         if(_core.ipWarnFlag)
         {
            return;
         }
         if(Boolean(param1) && Boolean(param1.lastLocation) && Boolean(param1.location) && Boolean(param1.last))
         {
            if(param1.lastLocation == param1.location)
            {
               _loc2_ = Language.CALLBACKGLOBAL_S[8];
            }
            else
            {
               _loc2_ = Language.CALLBACKGLOBAL_S[9];
            }
            _loc2_ = _loc2_.replace("{lastLocation}",param1.lastLocation);
            _loc2_ = _loc2_.replace("{location}",param1.location);
            _loc3_ = param1.last;
            _loc4_ = _loc3_.split(" ");
            _loc5_ = _loc4_[0].split("-");
            _loc6_ = _loc4_[1].split(":");
            _loc2_ = _loc2_.replace("{m}",Number(_loc5_[1]));
            _loc2_ = _loc2_.replace("{d}",Number(_loc5_[2]));
            _loc2_ = _loc2_.replace("{h}",Number(_loc6_[0]));
            _loc2_ = _loc2_.replace("{min}",Number(_loc6_[1]));
            _loc2_ = "<font color=\'#ff0000\'>" + _loc2_ + "</font>";
            setTimeout(sysDelay,10000,_loc2_);
         }
         _core.ipWarnFlag = true;
      }
      
      public function onRedMsg(... rest) : void
      {
      }
      
      public function onLineList(param1:String, param2:Object) : void
      {
         var func:Function = null;
         var yesLabel:String = null;
         var ver:String = param1;
         var info:Object = param2;
         _core.global.call("getShopConfig",null);
         _core.global.call("getLimitShopConfig",null);
         _core.global.call("getRemainShopConfig",null);
         if(_core.player)
         {
            info.lastLogInfo = "";
         }
         _core.loginTimes = info.loginTimes;
         _core.view.getUI(ViewManager.MAIN_LINE).logInfoText.text = info.lastLogInfo;
         _core.view.show(ViewManager.MAIN_LINE);
         if(ver != Version.VERSION)
         {
            func = function(param1:CloseEvent):void
            {
               if(Boolean(info.forceRefresh) && ExternalInterface.available)
               {
                  ExternalInterface.call("window.location.reload(true)");
               }
            };
            yesLabel = Alert.yesLabel;
            if(Boolean(info.forceRefresh) && ExternalInterface.available)
            {
               Alert.yesLabel = Language.CALLBACKGLOBAL_S[10];
            }
            Alert.show(Language.CALLBACKGLOBAL_S[0] + ver + Language.CALLBACKGLOBAL_S[1] + Version.VERSION,"",Alert.YES,null,func);
            Alert.yesLabel = yesLabel;
         }
      }
      
      public function onGetShopConfig(param1:Object) : void
      {
         var _loc3_:String = null;
         if(param1[0] != 0)
         {
            trace("getShopConfig get error : " + param1[1]);
            return;
         }
         var _loc2_:Array = param1[2];
         for each(_loc3_ in _loc2_)
         {
            parseAndSetShopSlot(_loc3_);
         }
      }
      
      public function close() : void
      {
         var func:Function;
         _core.view.hide(ViewManager.MAIN_LINE);
         if(!_core.global.showAlert)
         {
            return;
         }
         func = function(param1:CloseEvent):void
         {
            Alert.cancelLabel = Language.GAMEPREDEF_S[2];
            Alert.okLabel = Language.GAMEPREDEF_S[3];
            if(_core.by_session == "sdo")
            {
               ExternalInterface.call("flush");
            }
            else if(param1.detail == Alert.OK)
            {
               if(_core.global.appCode == "SERVER_NOT_READY" && GamePredef.SERVER_JUMP_IFEXIST.length > 0)
               {
                  navigateToURL(new URLRequest(GamePredef.SERVER_JUMP_IFEXIST));
               }
            }
         };
         switch(_core.global.appCode)
         {
            case "ERR_LOGINED":
               Alert.show(Language.CALLBACKGLOBAL_S[2],"",Alert.YES,null,func);
               _core.view.hide(ViewManager.POPU_WAIT);
               break;
            case "ERR_LOGIN_FAILED":
               Alert.show(Language.CALLBACKGLOBAL_S[3],"",Alert.YES,null,func);
               _core.view.hide(ViewManager.POPU_WAIT);
               break;
            case "SERVER_NOT_READY":
               if(GamePredef.SERVER_JUMP_IFEXIST.length > 0)
               {
                  Alert.cancelLabel = Language.GAMEPREDEF_S[496];
                  Alert.okLabel = Language.GAMEPREDEF_S[495];
                  Alert.show(Language.CALLBACKGLOBAL_S[4],"",Alert.OK | Alert.CANCEL,null,func);
               }
               else
               {
                  Alert.show(Language.CALLBACKGLOBAL_S[4],"",Alert.YES,null,func);
               }
               break;
            case "IN_CROSS_SERVER":
               Alert.show(Language.CALLBACKGLOBAL_S[6],"",Alert.YES,null,func);
               break;
            case "ERR_LOGIN_BANNED":
               Alert.show(Language.CALLBACKGLOBAL_S[7],"",Alert.YES,null,func);
               break;
            case "ERR_IP_BAN":
               Alert.show(Language.CALLBACKGLOBAL_S[11],"",Alert.YES,null,func);
               break;
            case "ERR_CLASSIFY5":
               break;
            case "ERR_CLASSIFY6":
               Alert.show(Language.ANTIADDICTCANVAS_U[42],"",Alert.OK);
               break;
            case "ERR_CLASSIFY7":
               Alert.show(Language.ANTIADDICTCANVAS_U[47],"",Alert.OK);
         }
      }
      
      public function classifyAlert2() : void
      {
         Alert.show(Language.ANTIADDICTCANVAS_U[45],"",Alert.OK);
      }
      
      public function onGetRemainShopConfig(param1:Object) : void
      {
         if(param1[0] != 0)
         {
            trace("getRemainShopConfig get error : " + param1[1]);
            return;
         }
      }
      
      private function sysDelay(param1:String) : void
      {
         if(_core)
         {
            _core.sysMsg(param1);
         }
      }
      
      public function classifyAlert() : void
      {
         Alert.show(Language.CALLBACKGLOBAL_S[13],"",Alert.OK);
      }
   }
}

