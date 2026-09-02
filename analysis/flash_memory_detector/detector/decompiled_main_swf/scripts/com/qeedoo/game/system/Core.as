package com.qeedoo.game.system
{
   import com.qeedoo.game.config.ItemConfig;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.logic.Basic;
   import com.qeedoo.game.logic.Battle;
   import com.qeedoo.game.logic.BattleMap;
   import com.qeedoo.game.logic.BattleServer;
   import com.qeedoo.game.logic.GameScene;
   import com.qeedoo.game.logic.Group;
   import com.qeedoo.game.logic.ObjectMove;
   import com.qeedoo.game.object.Building;
   import com.qeedoo.game.object.Charactor;
   import com.qeedoo.game.object.Creature;
   import com.qeedoo.game.object.Npc;
   import com.qeedoo.game.object.Pet;
   import com.qeedoo.game.object.Player;
   import com.qeedoo.game.object.SceneItem;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.rpc.RemoteObj;
   import com.qeedoo.game.utils.CheatChecker;
   import com.qeedoo.game.utils.LinkEncode;
   import com.qeedoo.game.view.ViewManager;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import flash.events.StatusEvent;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.net.LocalConnection;
   import flash.net.Responder;
   import flash.net.SharedObject;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.Capabilities;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import mx.collections.ArrayCollection;
   import mx.controls.Alert;
   import mx.events.PropertyChangeEvent;
   import mx.managers.ToolTipManager;
   import mx.utils.ObjectUtil;
   
   public class Core implements IEventDispatcher
   {
      
      private static var _instance:Core;
      
      public var pet_rate:uint = 0;
      
      public var error:int;
      
      public var eventTooltipAlready:Boolean = false;
      
      public var _lineList:ArrayCollection;
      
      private var _ui_create_complete:Boolean = false;
      
      public var pass:String;
      
      public var battleServer:BattleServer;
      
      private var _showPetId:Number;
      
      private var timer10:Timer;
      
      private var _npc:Npc;
      
      private var _self:Player;
      
      public var qxWishesArr:Array;
      
      public var basic:Basic;
      
      public var tg_User:Boolean;
      
      public var bagMax:Array;
      
      public var remote:RemoteObj;
      
      public var currentType:int;
      
      public var allowMusic:Boolean = false;
      
      public var currentMusicId:String = "";
      
      public var realFps:Number;
      
      public var activeFairy:Object;
      
      private var _653737042bloodBag:Array;
      
      public var targetIP:*;
      
      public var group:Group;
      
      public var classify:int = 1;
      
      public var scene:GameScene;
      
      public var lastGetItemId:int;
      
      private const MIN_REQUEST_FAZENDA_INTERVAL:Number = 60000;
      
      public var view:ViewManager;
      
      public var groupMemberListArr:Object;
      
      public var by_session:String = "false";
      
      public var battle:Battle;
      
      private var _bindingEventDispatcher:EventDispatcher;
      
      public var delPass:String;
      
      private var farmReqArr:Array;
      
      public var lineInfo:Object;
      
      public var time:String;
      
      public var lastQuestTime:Number;
      
      private var _cmdState:int;
      
      public var questGuideList:Object;
      
      public var productFlag:Boolean = false;
      
      private var _checkEquipEffectTime:int = -1;
      
      private var _checkMagicCrystalEffectTime:int = -1;
      
      public var lastIdxs:Array;
      
      public var urlLogin:Boolean;
      
      public var serverTimeOffSet:Number;
      
      public var timer:Timer;
      
      private var _skill:Object;
      
      public var loopQuestStartTime:Object;
      
      private var _skillLevel:int;
      
      public var loginTimes:int = -1;
      
      public var eventTooltipDict:Dictionary = null;
      
      public var ipWarnFlag:Boolean = false;
      
      public var MC_BIRTH_FLAG:Object;
      
      private var _guid:Number;
      
      public var local:LocalConnection;
      
      public var isGOSU:Boolean = false;
      
      public var acountLv:int;
      
      public var timeLag:Number = 0;
      
      public var battleMap:BattleMap;
      
      public var target:*;
      
      private var _state:int;
      
      public var firstGC:Boolean = true;
      
      public var targetNPC:*;
      
      public var takeAchieveAwardLog:Object;
      
      public var ready:Boolean;
      
      public var firstLoginFlag:int = 0;
      
      public var replayMCZD:Boolean = false;
      
      public var data:DataManager;
      
      public var wbMapId:int = 0;
      
      public var global:RemoteObj;
      
      private var _itemState:int;
      
      public var newPlayerGuideOpen:Boolean = true;
      
      public var VDAYWishesArr:Array;
      
      private var _battlePet:Object;
      
      public var user:String;
      
      public var logined:Boolean;
      
      private var _tid:Number;
      
      public var move:ObjectMove;
      
      public var targetPlayer:Charactor;
      
      public var inBattleServer:Boolean = false;
      
      public var hidesysbar:Boolean = false;
      
      private var _item:Object;
      
      public var lastGC:Number;
      
      private var _cid:Number;
      
      public function Core(param1:Single)
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         _lineList = new ArrayCollection();
         _653737042bloodBag = [];
         bagMax = [0,10000000,10000000,10000000,10000000];
         questGuideList = new Object();
         timer = new Timer(1000);
         timer10 = new Timer(10000);
         loopQuestStartTime = new Object();
         takeAchieveAwardLog = {};
         MC_BIRTH_FLAG = {};
         lastIdxs = [];
         qxWishesArr = [];
         VDAYWishesArr = [];
         farmReqArr = [];
         _bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
         super();
         ready = false;
         ToolTipManager.enabled = false;
         ToolTipManager.showDelay = 0;
         ToolTipManager.hideDelay = 60000;
         logined = false;
         error = 0;
         local = new LocalConnection();
         local.addEventListener(StatusEvent.STATUS,localOnStatus);
         if(ExternalInterface.available)
         {
            _loc2_ = ExternalInterface.call("getLoginInfo");
            if(_loc2_)
            {
               urlLogin = true;
               user = _loc2_.user;
               pass = _loc2_.pass;
               time = _loc2_.time;
               by_session = _loc2_.by_session;
            }
            else
            {
               urlLogin = false;
               by_session = "false";
            }
            _loc3_ = ExternalInterface.call("getTgInfo");
            if(_loc3_)
            {
               tg_User = true;
            }
            else
            {
               tg_User = false;
            }
         }
         timer.addEventListener(TimerEvent.TIMER,onTimer);
         timer10.addEventListener(TimerEvent.TIMER,onTimer10);
         timer10.start();
      }
      
      public static function getInstance() : Core
      {
         if(_instance == null)
         {
            _instance = new Core(new Single());
         }
         return _instance;
      }
      
      public function getItemNumFromBag(param1:int, param2:int) : Object
      {
         var _loc4_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc3_:Object = getTemplateData(param1,param2,false);
         var _loc5_:int = 0;
         if(!_loc3_)
         {
            return {
               "num":_loc5_,
               "slot":_loc4_
            };
         }
         var _loc6_:Object = data.bagSlotIndex;
         for(_loc7_ in data.sList)
         {
            _loc8_ = data.sList[_loc7_];
            if(Boolean((_loc8_) && Number(_loc8_.type) == param1 - 1) && Boolean(_loc8_.sid >= GamePredef.SLOT_SID_BAG[0]) && _loc8_.sid <= GamePredef.SLOT_SID_BAG[9])
            {
               _loc9_ = getTemplateData(_loc8_.type,_loc8_.itemId,false);
               if(_loc9_)
               {
                  if(_loc9_.id == param2)
                  {
                     _loc5_ += Number(_loc8_.stackNum);
                     if(!_loc4_)
                     {
                        _loc4_ = _loc8_;
                     }
                  }
               }
            }
         }
         return {
            "num":_loc5_,
            "slot":_loc4_
         };
      }
      
      public function returnToCharList() : void
      {
         if(!remote.nc.connected)
         {
            logout();
            return;
         }
         init();
         view.show(ViewManager.UI_LOGIN);
         view.show(ViewManager.FORE_C_C);
         view.hide(ViewManager.STAGE_MAIN);
         view.hide(ViewManager.UI_MAIN);
         var _loc1_:Object = view.getUI(ViewManager.PANEL_REDENVELOPE_PANEL);
         if(_loc1_)
         {
            _loc1_.hideAllRedEvnelope();
         }
         if(Boolean(Login_Model.app) && Boolean(Login_Model.app.hasOwnProperty("backToCharSelect")))
         {
            Login_Model.app.backToCharSelect();
         }
         else
         {
            remote.backToCharSelect();
         }
      }
      
      public function initNewPlayerGuide(param1:Object) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:Object = null;
         var _loc5_:Boolean = false;
         if(!newPlayerGuideOpen)
         {
            return;
         }
         lastIdxs = [];
         var _loc2_:Array = [];
         for(_loc3_ in data.gameData[GamePredef.TBL_GUIDE])
         {
            _loc4_ = data.gameData[GamePredef.TBL_GUIDE][_loc3_];
            if(_loc4_.level >= player.level && (!param1 || param1[_loc4_.id] == undefined || !param1[_loc4_.id]))
            {
               _loc5_ = false;
               for(_loc3_ in _loc2_)
               {
                  if(_loc4_.type == _loc2_[_loc3_])
                  {
                     _loc5_ = true;
                     break;
                  }
               }
               if(!_loc5_)
               {
                  lastIdxs[_loc4_.type] = _loc4_.id;
                  _loc2_.push(_loc4_.type);
               }
            }
         }
      }
      
      public function clearPetBattleSetting() : void
      {
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc1_:Object = view.getUI(ViewManager.PANEL_BATTLESET);
         var _loc2_:Boolean = Boolean(_loc1_.initialized);
         for(_loc5_ in GamePredef.PET_AUTO_BATTLE_SLOT_ID)
         {
            _loc6_ = int(GamePredef.PET_AUTO_BATTLE_SLOT_ID[_loc5_]);
            _loc3_ = "bt" + _loc6_;
            _loc4_ = "bs" + _loc6_;
            GamePredef.GLOBAL_SETTING[_loc3_] = 0;
            GamePredef.GLOBAL_SETTING[_loc4_] = 0;
            if(_loc2_)
            {
               _loc1_["i" + _loc6_].clean();
            }
         }
         for(_loc5_ in GamePredef.PET_AUTO_BATTLE_SLIDE_ID)
         {
            _loc7_ = int(GamePredef.PET_AUTO_BATTLE_SLIDE_ID[_loc5_]);
            _loc3_ = "p" + _loc7_;
            GamePredef.GLOBAL_SETTING[_loc3_] = 10;
            if(_loc2_)
            {
               _loc1_["hs" + _loc7_].value = 10;
            }
         }
      }
      
      public function haveSpecialStr2(param1:String) : Boolean
      {
         if(param1.indexOf("[人物]") >= 0 || param1.indexOf("[包裹]") >= 0 || param1.indexOf("[公会]") >= 0 || param1.indexOf("[任务]") >= 0 || param1.indexOf("[社交]") >= 0 || param1.indexOf("[宠物]") >= 0 || param1.indexOf("[技能]") >= 0 || param1.indexOf("[小地图]") >= 0 || param1.indexOf("[排行榜]") >= 0 || param1.indexOf("[公会]") >= 0 || param1.indexOf("[帮助]") >= 0 || param1.indexOf("[设置]") >= 0 || param1.indexOf("[世界地图]") >= 0 || param1.indexOf("[商城]") >= 0 || param1.indexOf("[自动战斗]") >= 0 || param1.indexOf("[婚恋交友]") >= 0 || param1.indexOf("[玩法]") >= 0 || param1 == "人物" || param1 == "包裹" || param1 == "公会" || param1 == "任务" || param1 == "社交" || param1 == "宠物" || param1 == "技能" || param1 == "小地图" || param1 == "排行榜" || param1 == "公会" || param1 == "帮助" || param1 == "设置" || param1 == "世界地图" || param1 == "商城" || param1 == "自动战斗" || param1 == "婚恋交友" || param1 == "玩法" || param1.indexOf("父亲") >= 0 || param1 == "父亲" || param1.indexOf("母亲") >= 0 || param1 == "母亲" || param1.indexOf("商人") >= 0 || param1 == "商人")
         {
            return true;
         }
         return false;
      }
      
      public function initTimer() : void
      {
         remote.call("getTodayOnlineTime",new Responder(onGetTodayOnlineTime));
      }
      
      public function updateSettingNow(param1:String, param2:*, param3:Boolean = false) : void
      {
         if(param3)
         {
            updatePetSetting(param1,param2);
         }
         else
         {
            updateSetting(param1,param2);
         }
         remote.call("uif",null,param1,param2,param3);
      }
      
      public function isPlayer10() : Boolean
      {
         var _loc1_:String = Capabilities.version.split(",")[0];
         if(_loc1_ == "WIN 10")
         {
            return true;
         }
         return false;
      }
      
      public function createSceneItem(param1:Object) : void
      {
         var _loc2_:SceneItem = new SceneItem();
         _loc2_.data = param1.iData;
         _loc2_.templateData = param1.tData;
         if(_loc2_.templateData)
         {
            view.addS(_loc2_);
            data.addNewData(GamePredef.TBL_SCENEITEM_TEMPLATE,param1.tData);
         }
         else
         {
            trace("严重错误：地图遮罩缺少了模板资源，实例id:" + _loc2_.data.id + "，速度找策划解决！！！");
         }
      }
      
      public function set item(param1:Object) : void
      {
         _item = param1;
      }
      
      public function playPK() : void
      {
         if(!player)
         {
            stopAll();
            return;
         }
         playMusic("6");
      }
      
      public function setBloodBag(param1:String) : void
      {
         var _loc2_:Array = null;
         if(param1 == null || param1 == "")
         {
            param1 = "|0|0|0|0";
         }
         if(param1)
         {
            _loc2_ = param1.split("|");
            bloodBag[1] = Number(_loc2_[1]);
            bloodBag[2] = Number(_loc2_[2]);
            bloodBag[3] = Number(_loc2_[3]);
            bloodBag[4] = Number(_loc2_[4]);
         }
         if(!bloodBag[1])
         {
            bloodBag[1] = 0;
         }
         if(!bloodBag[2])
         {
            bloodBag[2] = 0;
         }
         if(!bloodBag[3])
         {
            bloodBag[3] = 0;
         }
         if(!bloodBag[4])
         {
            bloodBag[4] = 0;
         }
         view.getUI(ViewManager.MAIN_SELF).setHpMp();
         view.getUI(ViewManager.MAIN_PET).setHpMp();
      }
      
      public function addLink(param1:int, param2:Number, param3:String) : void
      {
         var _loc4_:int = 1;
         while(_loc4_ <= 6)
         {
            if(GamePredef.PRE_EQU_NAME[_loc4_])
            {
               param3 = param3.replace(GamePredef.PRE_EQU_NAME[_loc4_],"");
            }
            if(GamePredef.ELEMENT_NAME[_loc4_])
            {
               param3 = param3.replace("*" + GamePredef.ELEMENT_NAME[_loc4_],"");
            }
            _loc4_++;
         }
         view.getUI(ViewManager.MAIN_SYS).addLink(LinkEncode.encode(param1,param2,param3));
      }
      
      public function stopAll() : void
      {
         local.send("_SoundConnection","stopMusic");
      }
      
      public function haveSpecialStr(param1:String) : Boolean
      {
         if(param1.indexOf("&") >= 0 || param1.indexOf("\'") >= 0 || param1.indexOf("\"") >= 0 || param1.indexOf("-") >= 0 || param1.indexOf("\\") >= 0 || param1.indexOf("/") >= 0 || param1.indexOf("|") >= 0 || param1.indexOf("%") >= 0 || param1.indexOf("\n") >= 0 || param1.indexOf("\r") >= 0 || param1.indexOf("\t") >= 0 || param1.indexOf("\b") >= 0 || param1.indexOf("\f") >= 0 || param1.indexOf("\x0b") >= 0 || param1.indexOf("<") >= 0 || param1.indexOf(">") >= 0 || param1.indexOf("@") >= 0 || param1.indexOf("*") >= 0)
         {
            return true;
         }
         return false;
      }
      
      public function createNpc(param1:Object) : void
      {
         if((param1.type == GamePredef.NPC_TYPE_AUCTION || param1.type == GamePredef.NPC_TYPE_MAIL) && !lineInfo.auction)
         {
            return;
         }
         if(param1.type == GamePredef.NPC_TYPE_GUILD && !lineInfo.guild)
         {
            return;
         }
         if(param1.type == GamePredef.NPC_TYPE_BUILD && param1.hasOwnProperty("bState"))
         {
            if(Number(param1.bState) == Number(1))
            {
               param1.resCode = GamePredef.BUILD_NPC_INBUILDING_RES;
            }
            else
            {
               param1.resCode = GamePredef.BUILD_NPC_TOBEBUILD_RES;
            }
         }
         if(param1.v == -1)
         {
            if(!npcVisiable(param1))
            {
               return;
            }
         }
         var _loc2_:Npc = new Npc();
         _loc2_.data = param1;
         data.addNewData(GamePredef.TBL_NPC,param1);
         view.addN(_loc2_);
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(param1);
      }
      
      public function haveBadWord(param1:String) : Boolean
      {
         var _loc2_:String = null;
         for each(_loc2_ in GamePredef.BADWORDAR)
         {
            if(_loc2_)
            {
               if(param1.length >= _loc2_.length && param1.indexOf(_loc2_) >= 0)
               {
                  Alert.show(Language.CORE_S[8],"",Alert.OK);
                  return true;
               }
            }
         }
         return false;
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function getHtmlStr(param1:String) : String
      {
         var _loc3_:Boolean = false;
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            _loc3_ = false;
            if(param1.indexOf("<") >= 0)
            {
               _loc3_ = true;
               param1 = param1.replace("<","&lt;");
            }
            if(param1.indexOf(">") >= 0)
            {
               _loc3_ = true;
               param1 = param1.replace(">","&gt;");
            }
            if(!_loc3_)
            {
               break;
            }
            _loc2_++;
         }
         return param1;
      }
      
      public function get skill() : Object
      {
         return _skill;
      }
      
      public function codeMsg(param1:int) : void
      {
      }
      
      public function sysRedMsg(param1:String) : void
      {
         view.showRedMsg(param1);
      }
      
      public function isFriend(param1:String) : Boolean
      {
         return view.getUI(ViewManager.PANEL_IM).isFriend(param1);
      }
      
      public function deal() : void
      {
         var _loc1_:String = null;
         if(by_session == "sdo")
         {
            ExternalInterface.call("sdoPay");
         }
         else if(GamePredef.SERVER_ADD_PAY.indexOf("?thirdparty=va&game_id=1") >= 0)
         {
            _loc1_ = GamePredef.SERVER_ADD_PAY + "&user=" + user;
            navigateToURL(new URLRequest(_loc1_),"_blank");
         }
         else if(isGOSU)
         {
            navigateToURL(new URLRequest("http://game.gosu.vn/game/vua-phap-thuat/Exchange.aspx"),"_blank");
         }
         else
         {
            navigateToURL(new URLRequest(GamePredef.SERVER_ADD_PAY),"_blank");
         }
      }
      
      private function set _985752863player(param1:Player) : void
      {
         _self = param1;
      }
      
      public function hasEggNum() : int
      {
         return hasItemNum(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_EGG);
      }
      
      public function set itemState(param1:int) : void
      {
         _itemState = param1;
      }
      
      public function getGuildItemNum(param1:int, param2:int) : Object
      {
         var _loc4_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc3_:Object = getTemplateData(param1,param2,false);
         var _loc5_:int = 0;
         if(!_loc3_)
         {
            return {
               "num":_loc5_,
               "slot":_loc4_
            };
         }
         for(_loc6_ in data.gsList)
         {
            _loc7_ = data.gsList[_loc6_];
            if((Boolean(_loc7_)) && Number(_loc7_.type) == param1 - 1)
            {
               _loc8_ = getTemplateData(_loc7_.type,_loc7_.itemId,false);
               if(_loc8_)
               {
                  if(_loc8_.id == param2)
                  {
                     _loc5_ += Number(_loc7_.stackNum);
                     if(!_loc4_)
                     {
                        _loc4_ = _loc7_;
                     }
                  }
               }
            }
         }
         return {
            "num":_loc5_,
            "slot":_loc4_
         };
      }
      
      public function createPet(param1:Object) : Pet
      {
         var _loc2_:Pet = new Pet();
         _loc2_.data = param1;
         return _loc2_;
      }
      
      public function get guid() : Number
      {
         return _guid;
      }
      
      public function destroyNpc(param1:int) : void
      {
         view.removeN(param1);
      }
      
      public function get state() : int
      {
         return _state;
      }
      
      public function addCharactorView(param1:Charactor) : void
      {
         view.addC(param1);
      }
      
      public function set battlePet(param1:Object) : void
      {
         _battlePet = param1;
      }
      
      public function checkFinishGuides(param1:int, param2:String, param3:int, param4:int, param5:int) : void
      {
         var _loc6_:* = undefined;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         for(_loc6_ in lastIdxs)
         {
            _loc7_ = int(lastIdxs[_loc6_]);
            _loc8_ = data.gameData[GamePredef.TBL_GUIDE][_loc7_];
            if(Boolean((_loc8_) && param1 == _loc8_.scPid && param2 == _loc8_.scQname) && Boolean(param3 == _loc8_.scNpcid) && param5 == _loc8_.finishType)
            {
               remote.call("saveGuideLog",null,_loc7_);
               _loc9_ = view.getUI(ViewManager.POP_NEW_PLAER_GUIDE);
               _loc9_.hide();
               trace("指引类型：" + _loc6_ + ", step:" + lastIdxs[_loc6_] + " 已经完成");
               delete lastIdxs[_loc6_];
               break;
            }
         }
      }
      
      public function haveItem(param1:int, param2:Number, param3:int) : Boolean
      {
         if(getItemNum(param1,param2).num >= param3)
         {
            return true;
         }
         return false;
      }
      
      public function getNetDelayState(param1:Number) : int
      {
         var _loc3_:* = undefined;
         var _loc2_:int = 4;
         for(_loc3_ in GamePredef.NET_DELAY_STATE)
         {
            if(param1 <= GamePredef.NET_DELAY_STATE[_loc3_])
            {
               _loc2_ = _loc3_;
               break;
            }
         }
         return _loc2_;
      }
      
      public function addFriend(param1:String) : void
      {
         view.getUI(ViewManager.PANEL_IM).addFriend(param1);
      }
      
      private function onTimer(param1:TimerEvent) : void
      {
         var event:TimerEvent = param1;
         var onGetOnlineActive:Function = function(param1:int):void
         {
            if(param1 == -1)
            {
               initTimer();
            }
            else if(param1 > 0)
            {
               timer.stop();
               timer.delay = param1 * 60000;
               timer.start();
            }
         };
         remote.call("getDailyOnlineAct",new Responder(onGetOnlineActive));
      }
      
      public function checkGuideCondition(param1:int, param2:String, param3:int, param4:int) : Boolean
      {
         var _loc5_:* = undefined;
         var _loc6_:int = 0;
         var _loc7_:Object = null;
         for(_loc5_ in lastIdxs)
         {
            _loc6_ = int(lastIdxs[_loc5_]);
            _loc7_ = data.gameData[GamePredef.TBL_GUIDE][_loc6_];
            if(Boolean((_loc7_) && param1 == _loc7_.scPid && param2 == _loc7_.scQname) && Boolean(param3 == _loc7_.scNpcid) && param4 == _loc7_.scOtherId)
            {
               currentType = _loc7_.type;
               return true;
            }
         }
         return false;
      }
      
      public function set skill(param1:Object) : void
      {
         _skill = param1;
      }
      
      public function setNpcState(param1:int) : void
      {
         var _loc4_:Number = NaN;
         var _loc2_:Npc = getNpc(param1);
         var _loc3_:Number = Number(player.posMapId);
         if(_loc3_ > 20000 && Boolean(data.gameData[GamePredef.TBL_MAP][_loc3_]))
         {
            _loc3_ = Number(data.gameData[GamePredef.TBL_MAP][_loc3_].templateId);
         }
         if(_loc2_)
         {
            _loc4_ = Number(_loc2_.posMapId);
            if(_loc4_ > 20000 && Boolean(data.gameData[GamePredef.TBL_MAP][_loc4_]))
            {
               _loc4_ = Number(data.gameData[GamePredef.TBL_MAP][_loc4_].templateId);
            }
            if(_loc4_ == _loc3_)
            {
               remote.setNpcState(param1);
            }
         }
      }
      
      public function playBoss() : void
      {
         if(!player)
         {
            stopAll();
            return;
         }
         playMusic("4");
      }
      
      public function createCharactor(param1:Object) : Charactor
      {
         var _loc2_:Charactor = null;
         _loc2_ = getCharactor(param1.id);
         if(_loc2_ != null)
         {
            if(_loc2_.broT != param1.broT)
            {
               _loc2_.broT = param1.broT;
            }
            if(Boolean(param1.actTN) && _loc2_.actTN != param1.actTN)
            {
               _loc2_.actTN = param1.actTN;
            }
            return _loc2_;
         }
         _loc2_ = new Charactor();
         if(param1.groupAfk)
         {
            _loc2_.groupAfk = param1.groupAfk;
         }
         delete param1.groupAfk;
         _loc2_.data = param1;
         view.addC(_loc2_);
         if(_loc2_.inGroup && !_loc2_.groupAfk)
         {
            return _loc2_;
         }
         var _loc3_:Object = param1.showPetObj;
         if(!_loc3_)
         {
            return _loc2_;
         }
         var _loc4_:Pet = this.createPet(_loc3_);
         this.view.addP(_loc4_);
         return _loc2_;
      }
      
      public function updatePlayerPortrait() : void
      {
         var _loc1_:Object = view.getUI(ViewManager.MAIN_SELF);
         _loc1_.update();
      }
      
      public function addWarn(param1:Object) : void
      {
         view.getUI(ViewManager.MAIN_WARN).addWarn(param1);
      }
      
      public function fetchQxWish(param1:Object) : Object
      {
         var _loc3_:* = undefined;
         var _loc4_:int = 0;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         if(param1)
         {
            if(qxWishesArr[param1.idx])
            {
               qxWishesArr[param1.idx].flag = true;
            }
         }
         var _loc2_:int = 0;
         for(_loc3_ in qxWishesArr)
         {
            if(qxWishesArr[_loc3_].flag)
            {
               _loc2_++;
            }
         }
         if(_loc2_ < 1)
         {
            return null;
         }
         _loc4_ = -1;
         while(true)
         {
            _loc5_ = 0;
            for(_loc6_ in qxWishesArr)
            {
               if(qxWishesArr[_loc6_].flag)
               {
                  _loc5_++;
               }
            }
            if(_loc5_ < 1)
            {
               break;
            }
            _loc4_ = Math.round(Math.random() * qxWishesArr.length);
            if(!(!qxWishesArr[_loc4_] || !qxWishesArr[_loc4_].flag))
            {
               qxWishesArr[_loc4_].flag = false;
               qxWishesArr[_loc4_].idx = _loc4_;
               return qxWishesArr[_loc4_];
            }
         }
         return null;
      }
      
      public function getTargetData() : Object
      {
         return target.data;
      }
      
      public function createBuild(param1:Object) : Building
      {
         var _loc2_:Building = new Building();
         var _loc3_:Object = GameData.d[GamePredef.TBL_BUILDING][param1.tid];
         var _loc4_:Object = ObjectUtil.copy(_loc3_);
         _loc4_.posX = param1.posX;
         _loc4_.posY = param1.posY;
         _loc4_.posDir = param1.posDir;
         _loc4_.tid = param1.tid;
         _loc4_.id = param1.id;
         _loc4_.layer = param1.layer;
         _loc4_.buildState = param1.buildState;
         if(param1.hasOwnProperty("buildType"))
         {
            _loc4_.buildType = param1.buildType;
         }
         _loc2_.data = _loc4_;
         if(Number(_loc4_.type) == Number(GamePredef.TYPE_GUILD_BUILD) || Number(_loc4_.type) == Number(GamePredef.TYPE_PRIVATE_BUILD))
         {
            view.addB(_loc2_);
         }
         else
         {
            view.addE(_loc2_);
         }
         return _loc2_;
      }
      
      public function sysMidNote(param1:String) : void
      {
         view.showMidNote(param1);
      }
      
      public function skillBookBySkillName(param1:String) : Object
      {
         var _loc4_:* = undefined;
         param1 = Language.GAMEPREDEF_S[359] + param1;
         var _loc2_:Object = this.data.gameDataIndex[GamePredef.TBL_ITEM_TEMPLATE][param1];
         var _loc3_:Object = null;
         for each(_loc4_ in _loc2_)
         {
            if(_loc4_.name == param1 && _loc4_.type == 505)
            {
               _loc3_ = _loc4_;
               break;
            }
         }
         return _loc3_;
      }
      
      public function refresh() : void
      {
         if(ExternalInterface.available)
         {
            ExternalInterface.call("refresh");
            trace("call js refresh");
         }
      }
      
      public function gc() : void
      {
         lastGC = new Date().getTime();
         try
         {
            new LocalConnection().connect("foo");
            new LocalConnection().connect("foo");
         }
         catch(error:Error)
         {
         }
      }
      
      public function getTitleByBuffId(param1:int) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in GameData.d[GamePredef.TBL_TITLE])
         {
            if(_loc2_.b == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function get cid() : Number
      {
         return _cid;
      }
      
      public function get player() : Player
      {
         return _self;
      }
      
      public function addAwardWarn(param1:Object) : void
      {
         view.getUI(ViewManager.MAIN_AWARD_WARN).addAwardWarn(param1);
      }
      
      public function createP(param1:Object) : Pet
      {
         var _loc2_:Pet = new Pet();
         _loc2_.data = param1;
         return _loc2_;
      }
      
      public function getPetNum(param1:Number, param2:String) : int
      {
         var _loc5_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:Object = player.petList;
         for each(_loc5_ in _loc4_)
         {
            if(Boolean(_loc5_) && Boolean(Number(_loc5_.tid) == param1) && _loc5_.petName == param2)
            {
               _loc3_++;
            }
         }
         return _loc3_;
      }
      
      public function getShowPetId() : Number
      {
         return _showPetId;
      }
      
      public function set ui_create_complete(param1:Boolean) : void
      {
         this._ui_create_complete = param1;
         if(param1 && logined)
         {
            view.hide(ViewManager.POPU_WAIT);
         }
      }
      
      public function set cmdState(param1:int) : void
      {
         _cmdState = param1;
      }
      
      public function getFazendaLevelByExp(param1:int) : int
      {
         var _loc3_:* = undefined;
         var _loc2_:int = 5;
         for(_loc3_ in GamePredef.FARM_LVUP_CONFIG)
         {
            if(param1 <= GamePredef.FARM_LVUP_CONFIG[_loc3_].exp)
            {
               _loc2_ = _loc3_;
               break;
            }
         }
         return _loc2_;
      }
      
      public function getSkillData(param1:int, param2:int) : Object
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc3_:Object = data.getData(GamePredef.TBL_SKILL,param1);
         if(_loc3_)
         {
            _loc4_ = data.gameDataIndex[GamePredef.TBL_SKILL];
            _loc5_ = _loc4_[_loc3_.codeName];
            for(_loc6_ in _loc5_)
            {
               _loc7_ = _loc5_[_loc6_];
               if(_loc7_.level == param2)
               {
                  return _loc7_;
               }
            }
            return null;
         }
         return null;
      }
      
      public function hasTrackNum() : int
      {
         return hasItemNum(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_TRACK);
      }
      
      public function checkSkillRequire(param1:Object, param2:Boolean = false, param3:Boolean = false) : Boolean
      {
         var _loc4_:Object = null;
         if(param3)
         {
            _loc4_ = battlePet;
            if(!_loc4_)
            {
               return false;
            }
            if(_loc4_.currentHp < param1.useHp)
            {
               if(param2)
               {
                  sysMidNote(Language.CORE_S[0] + param1.name + Language.CORE_S[1]);
               }
               return false;
            }
            if(param1.useMp > 0 && param1.useMp < 1)
            {
               if(_loc4_.currentMp < param1.useMp * _loc4_.property.finalMp)
               {
                  if(param2)
                  {
                     sysMidNote(Language.CORE_S[2] + param1.name + Language.CORE_S[3]);
                  }
                  return false;
               }
               return true;
            }
            if(_loc4_.currentMp < param1.useMp)
            {
               if(param2)
               {
                  sysMidNote(Language.CORE_S[2] + param1.name + Language.CORE_S[3]);
               }
               return false;
            }
            return true;
         }
         if(param1.useHp > 0 && param1.useHp < 1)
         {
            if(player.currentHp < param1.useHp * player.property.finalHp)
            {
               if(param2)
               {
                  sysMidNote(Language.CORE_S[4] + param1.name + Language.CORE_S[7]);
               }
               return false;
            }
            return true;
         }
         if(player.currentHp < param1.useHp)
         {
            if(param2)
            {
               sysMidNote(Language.CORE_S[4] + param1.name + Language.CORE_S[5]);
            }
            return false;
         }
         if(param1.useMp > 0 && param1.useMp < 1)
         {
            if(player.currentMp < param1.useMp * player.property.finalMp)
            {
               if(param2)
               {
                  sysMidNote(Language.CORE_S[6] + param1.name + Language.CORE_S[7]);
               }
               return false;
            }
            return true;
         }
         if(player.currentMp < param1.useMp)
         {
            if(param2)
            {
               sysMidNote(Language.CORE_S[6] + param1.name + Language.CORE_S[7]);
            }
            return false;
         }
         player.currentSp = player.currentSp || 0;
         if(param1.useSp > 0 && param1.useSp < 1)
         {
            if(player.currentSp < param1.useSp * player.property.finalSp)
            {
               if(param2)
               {
                  sysMidNote(Language.CORE_S[10].replace("{skillName}",param1.name));
               }
               return false;
            }
            return true;
         }
         if(player.currentSp < param1.useSp)
         {
            if(param2)
            {
               sysMidNote(Language.CORE_S[10].replace("{skillName}",param1.name));
            }
            return false;
         }
         return true;
      }
      
      public function createPlayer(param1:Object) : Player
      {
         var _loc2_:Player = null;
         var _loc3_:Object = null;
         var _loc4_:Pet = null;
         _loc2_ = getCharactor(param1.id) as Player;
         if(_loc2_ != null)
         {
            return _loc2_;
         }
         _loc2_ = new Player();
         _loc2_.data = param1;
         view.addC(_loc2_);
         if(_loc2_.inGroup && !_loc2_.groupAfk)
         {
            return _loc2_;
         }
         if(!this.view.getUI(ViewManager.MAIN_LONGBUFF).containBuff(GamePredef.SHOW_PET_BUFF) && !this.view.getUI(ViewManager.MAIN_LONGBUFF).containBuff(GamePredef.SHOW_PET_BUFF2) && (Boolean(this.player) && (Boolean(!this.player.pmLevel || Number(this.player.pmLevel) == 0))))
         {
            this.remote.call("cancelPetFollow",null,getShowPetId());
            return _loc2_;
         }
         if(getShowPetId() > 0)
         {
            _loc3_ = param1.showPetObj;
            if(!_loc3_)
            {
               return _loc2_;
            }
            _loc4_ = createPet(_loc3_);
            view.addP(_loc4_);
         }
         return _loc2_;
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(param1);
      }
      
      public function isBlack(param1:String) : Boolean
      {
         return view.getUI(ViewManager.PANEL_IM).isBlack(param1);
      }
      
      public function getSceneItem(param1:int) : SceneItem
      {
         var _loc2_:Object = view.getS(param1);
         if(_loc2_)
         {
            return _loc2_.gameObject;
         }
         return null;
      }
      
      public function playBattle() : void
      {
         if(!player)
         {
            stopAll();
            return;
         }
         var _loc1_:Object = view.getUI(ViewManager.STAGE_BATTLE);
         if(Boolean(_loc1_) && _loc1_.boss > 0)
         {
            playMusic("4");
            return;
         }
         playMusic("5");
      }
      
      public function addMidWarn(param1:Object) : void
      {
         view.getUI(ViewManager.MID_MAIN_WARN).addWarn(param1);
      }
      
      public function set guid(param1:Number) : void
      {
         _guid = param1;
      }
      
      public function get item() : Object
      {
         return _item;
      }
      
      public function isCollegeMap(param1:int) : Boolean
      {
         var _loc2_:* = undefined;
         for(_loc2_ in GamePredef.MAP_ID_BY_CLASS)
         {
            if(param1 == GamePredef.MAP_ID_BY_CLASS[_loc2_])
            {
               return true;
            }
         }
         return false;
      }
      
      public function init() : void
      {
         cid = -1;
         guid = -1;
         if(player)
         {
            player.onLogout();
            destroyCharactor(player.id);
            player = null;
         }
         resetLine();
         view.reset();
         stopAll();
      }
      
      public function haveSpecialStr_vn(param1:String) : Boolean
      {
         if(param1.indexOf("@") >= 0)
         {
            return true;
         }
         return false;
      }
      
      public function getItemNumNew(param1:int, param2:int) : Object
      {
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         var _loc7_:Array = null;
         var _loc8_:Object = null;
         var _loc9_:String = null;
         var _loc3_:Object = getTemplateData(param1,param2,false);
         if(!_loc3_)
         {
            return {
               "num":_loc5_,
               "slot":_loc4_
            };
         }
         switch(param1)
         {
            case GamePredef.TBL_ITEM_TEMPLATE:
            case GamePredef.TBL_EQUIPT_TEMPLATE:
               param1--;
         }
         _loc5_ = 0;
         var _loc6_:Object = data.bagSlotIndex;
         if((Boolean(_loc6_)) && Boolean(_loc6_[param1]))
         {
            _loc7_ = _loc6_[param1][_loc3_.id];
            if(!_loc7_)
            {
               return {
                  "num":_loc5_,
                  "slot":_loc4_
               };
            }
            for(_loc9_ in _loc7_)
            {
               _loc8_ = data.sList[_loc7_[_loc9_]];
               if((Boolean(_loc8_)) && Boolean(Number(_loc8_.sid) > GamePredef.SLOT_SID_BAG[0]) && Number(_loc8_.sid) <= GamePredef.SLOT_SID_BAG[_self.bagSlotNum])
               {
                  _loc5_ += Number(_loc8_.stackNum);
                  if(!_loc4_)
                  {
                     _loc4_ = data.sList[_loc7_[_loc9_]];
                  }
               }
            }
         }
         return {
            "num":_loc5_,
            "slot":_loc4_
         };
      }
      
      private function npcVisiable(param1:Object) : Boolean
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         if(param1.type == GamePredef.NPC_TYPE_BATTLE)
         {
            if(param1.subType == "all")
            {
               return true;
            }
            _loc2_ = param1.subType;
         }
         for each(_loc3_ in player.questList)
         {
            if(_loc3_.data.finishNpc == param1.id)
            {
               return true;
            }
            if(param1.type == GamePredef.NPC_TYPE_BATTLE && _loc2_.indexOf(_loc3_.data.id) >= 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function set state(param1:int) : void
      {
         _state = param1;
      }
      
      public function checkTempBagItemPos(param1:Object) : Boolean
      {
         var _loc3_:* = undefined;
         var _loc2_:Object = player.tBag.tempList;
         for(_loc3_ in _loc2_)
         {
            if(_loc3_ == param1.slotData.idx)
            {
               if(_loc2_[_loc3_].t != param1.slotData.ii || _loc2_[_loc3_].n != param1.slotData.n || _loc2_[_loc3_].c * 5 != param1.slotData.q)
               {
                  sysMidNote("你的材料位置发生了变化，请重新放入材料");
                  param1.clean();
                  return true;
               }
            }
         }
         return false;
      }
      
      public function playNormal() : void
      {
         if(!player)
         {
            stopAll();
            return;
         }
         var _loc1_:Object = data.gameData[GamePredef.TBL_MAP][player.posMapId];
         if(Boolean(_loc1_) && _loc1_.m >= 0)
         {
            playMusic(_loc1_.m);
            return;
         }
         playMusic("1");
      }
      
      private function localOnStatus(param1:StatusEvent) : void
      {
         switch(param1.level)
         {
            case "status":
               trace("LocalConnection.send() succeeded");
               break;
            case "error":
               trace("LocalConnection.send() failed");
         }
      }
      
      public function initMainUI() : void
      {
         view.initView(ViewManager.MAIN_SELF);
         view.initView(ViewManager.MAIN_PET);
         view.initView(ViewManager.MAIN_USER_BAR);
         view.initView(ViewManager.MAIN_MINIMAP);
         view.initView(ViewManager.PANEL_BAG);
         view.initView(ViewManager.PANEL_IM);
         view.initView(ViewManager.PANEL_PETMANAGER);
         view.initView(ViewManager.PANEL_SYSTEM);
         view.initView(ViewManager.PANEL_ACHIEVE);
         view.initView(ViewManager.PANEL_ACHIEVE_WATCHING);
         view.initView(ViewManager.PANEL_FAIRY_MANAGER);
      }
      
      public function lotteryBlueMsg(param1:String) : void
      {
         view.showLotteryBlueMsg(param1);
      }
      
      public function sysBlueMsg(param1:String) : void
      {
         view.showBlueMsg(param1);
      }
      
      public function getItemNum(param1:int, param2:int) : Object
      {
         var _loc4_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc9_:* = undefined;
         var _loc3_:Object = getTemplateData(param1,param2,false);
         var _loc5_:int = 0;
         if(!_loc3_)
         {
            return {
               "num":_loc5_,
               "slot":_loc4_
            };
         }
         for(_loc6_ in data.sList)
         {
            _loc7_ = data.sList[_loc6_];
            if((Boolean(_loc7_)) && Number(_loc7_.type) == param1 - 1)
            {
               _loc8_ = getTemplateData(_loc7_.type,_loc7_.itemId,false);
               if(_loc8_)
               {
                  if(_loc8_.id == param2)
                  {
                     _loc5_ += Number(_loc7_.stackNum);
                     if(!_loc4_)
                     {
                        _loc4_ = _loc7_;
                     }
                  }
               }
            }
         }
         if(param1 == GamePredef.TBL_ITEM_TEMPLATE && Boolean(Core.getInstance().player.tBag))
         {
            _loc9_ = Core.getInstance().player.tBag.tempList;
            if(_loc9_)
            {
               for(_loc6_ in _loc9_)
               {
                  if(Boolean(_loc9_[_loc6_]) && Boolean(_loc9_[_loc6_].t) && _loc9_[_loc6_].t == param2)
                  {
                     _loc5_ += Number(_loc9_[_loc6_].n);
                  }
               }
            }
         }
         return {
            "num":_loc5_,
            "slot":_loc4_
         };
      }
      
      public function updateSetting(param1:String, param2:*) : void
      {
         var _loc5_:SharedObject = null;
         GamePredef.GLOBAL_SETTING[param1] = param2;
         var _loc3_:RegExp = /([a-zA-Z]*)(\d*)/;
         var _loc4_:Object = _loc3_.exec(param1);
         if((Boolean(_loc4_)) && _loc4_[1] == "sid")
         {
            view.getUI(ViewManager.MAIN_USER_BAR).updateUserBar(_loc4_[2]);
            return;
         }
         if(Boolean(_loc4_) && _loc4_[1] == "bs")
         {
            view.getUI(ViewManager.PANEL_BATTLESET).updateSlot(_loc4_[2]);
            return;
         }
         if(param1 == "am")
         {
            _loc5_ = SharedObject.getLocal("musicSetting");
            _loc5_.data.musicSetting = param2;
            if(param2)
            {
               playNormal();
            }
            else
            {
               stopAll();
            }
         }
         switch(param1)
         {
            case "pid":
               view.getUI(ViewManager.PANEL_PRODUCT).updateMana(param2);
               break;
            case "am":
               break;
            case "he":
               view.getUI(ViewManager.STAGE_BATTLE).useEffect = !param2;
               break;
            case "hm":
               view.getUI(ViewManager.STAGE_BATTLE).useModel = !param2;
               break;
            case "glid":
               view.getUI(ViewManager.PANEL_PRODUCT).updateGlove(param2);
               break;
            case "dressHide":
               view.initView(ViewManager.PANEL_CHARACTOR);
               view.getUI(ViewManager.PANEL_CHARACTOR).setDressHideCBSelected(param2);
               view.getUI(ViewManager.PANEL_CHARACTOR).setDressHide();
            case "flyEffect":
               if(param2)
               {
                  GamePredef.FLYING_ZOOM_RATE = 0.7;
                  GamePredef.FLYING_PLAYER_ZOOM_RATE = 0.9;
               }
               else
               {
                  GamePredef.FLYING_ZOOM_RATE = 1;
                  GamePredef.FLYING_PLAYER_ZOOM_RATE = 1;
               }
               if(player.flyingState == GamePredef.FLYING_STATE_IN_THE_AIR)
               {
                  player.view.switchFlyingView();
               }
               if(player.flyingState == GamePredef.FLYING_STATE_IN_THE_AIR || player.flyingState == GamePredef.FLYING_STATE_TAKING_OFF)
               {
                  if(param2)
                  {
                     view.getUI(ViewManager.STAGE_MAIN_CONTAINER).drawClouds();
                  }
                  else
                  {
                     view.getUI(ViewManager.STAGE_MAIN_CONTAINER).clearClouds();
                  }
               }
               break;
            case "sjan":
               view.getUI(ViewManager.MAIN_SELF).setLevelUpBtn();
         }
      }
      
      public function hasSpeakerNum() : int
      {
         return hasItemNum(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_SPEAKER);
      }
      
      public function useItem(param1:int, param2:Object = null, param3:Boolean = false) : void
      {
         var _loc4_:Object = getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,param1);
         var _loc5_:int = int(_loc4_.num);
         var _loc6_:Object = _loc4_.slot;
         if(param2)
         {
            param2.stackNum = _loc5_;
         }
         if(!_loc6_)
         {
            sysMidNote(Language.CORE_S[9]);
            param2.alpha = 0.5;
            return;
         }
         if(state == GamePredef.ST_CORE_NORMAL)
         {
            player.useItem(GamePredef.MOUSE_TARGET_CHA,-1,_loc6_.id,param3);
         }
         else
         {
            view.showSelect();
            cmdState = GamePredef.ST_BATTLE_ITEM;
            item = _loc6_;
         }
         if(param2)
         {
            --param2.stackNum;
         }
      }
      
      private function onTimer10(param1:TimerEvent) : void
      {
         CheatChecker.check(param1);
         if(Boolean(view) && Boolean(view.getUI(ViewManager.MAIN_MINIMAP)))
         {
            view.getUI(ViewManager.MAIN_MINIMAP).handleDelayTimer(param1);
         }
         if(player)
         {
            ++_checkEquipEffectTime;
            if(_checkEquipEffectTime >= 60 && _checkEquipEffectTime % 60 == 0)
            {
               remote.call("checkLimitWingEffect",null);
               _checkEquipEffectTime = -1;
            }
            ++_checkMagicCrystalEffectTime;
            if(_checkMagicCrystalEffectTime >= 60 && _checkMagicCrystalEffectTime % 60 == 0)
            {
               remote.call("initMagicCrystalData",null);
               _checkMagicCrystalEffectTime = -1;
            }
         }
      }
      
      public function getItemNumByColor(param1:int, param2:int, param3:int) : Object
      {
         var _loc5_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:Object = null;
         var _loc11_:* = undefined;
         var _loc4_:Object = getTemplateData(param1,param2,false);
         var _loc6_:int = 0;
         if(!_loc4_)
         {
            return {
               "num":_loc6_,
               "slot":_loc5_
            };
         }
         for(_loc7_ in data.sList)
         {
            _loc8_ = data.sList[_loc7_];
            if((Boolean(_loc8_)) && Boolean(data.isBagSlot(Number(_loc8_.sid))) && Number(_loc8_.type) == param1 - 1)
            {
               _loc9_ = getTemplateData(_loc8_.type,_loc8_.itemId,false);
               _loc10_ = data.getGameData(_loc8_.type,_loc8_.itemId);
               if(!(!_loc9_ || !_loc10_))
               {
                  if(!(param1 == GamePredef.TBL_EQUIPT_TEMPLATE && _loc9_.king == GamePredef.ITEM_KIND_PETEQU && _loc8_.stackNum <= 0))
                  {
                     if(_loc9_.id == param2 && _loc10_.color == param3)
                     {
                        _loc6_ += Number(_loc8_.stackNum);
                        if(!_loc5_)
                        {
                           _loc5_ = _loc8_;
                        }
                     }
                  }
               }
            }
         }
         if(param1 == GamePredef.TBL_ITEM_TEMPLATE && Boolean(Core.getInstance().player.tBag))
         {
            _loc11_ = Core.getInstance().player.tBag.tempList;
            if(_loc11_)
            {
               for(_loc7_ in _loc11_)
               {
                  if(Boolean(_loc11_[_loc7_] && _loc11_[_loc7_].t) && Boolean(_loc11_[_loc7_].t == param2) && _loc11_[_loc7_].c == param3)
                  {
                     _loc6_ += Number(_loc11_[_loc7_].n);
                  }
               }
            }
         }
         return {
            "num":_loc6_,
            "slot":_loc5_
         };
      }
      
      public function sysMidMsg(param1:String) : void
      {
         if(Boolean(param1) && param1.length >= 1)
         {
            view.showMidMsg(param1);
            view.showRedMsg(param1);
         }
      }
      
      public function get itemState() : int
      {
         return _itemState;
      }
      
      public function createCreature(param1:Object) : Creature
      {
         var _loc2_:Creature = new Creature();
         _loc2_.data = param1;
         return _loc2_;
      }
      
      public function replaceBadWord(param1:String) : String
      {
         var _loc2_:String = null;
         var _loc3_:RegExp = null;
         for each(_loc2_ in GamePredef.BADWORDAR)
         {
            if(_loc2_)
            {
               if(param1.length >= _loc2_.length)
               {
                  _loc3_ = new RegExp(_loc2_,"g");
                  param1 = param1.replace(_loc3_,"×");
               }
            }
         }
         return param1;
      }
      
      public function checkTitleShow(param1:int) : Boolean
      {
         var _loc2_:Object = GameData.d[GamePredef.TBL_TITLE][param1];
         if(_loc2_)
         {
            if(Number(_loc2_.s) > 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function set skillLevel(param1:int) : void
      {
         _skillLevel = param1;
      }
      
      public function playMusic(param1:String) : void
      {
         currentMusicId = param1;
         if(Boolean(GamePredef.GLOBAL_SETTING.am) && Boolean(allowMusic) && currentMusicId != "")
         {
            local.send("_SoundConnection","playMusicByID",param1);
         }
      }
      
      public function setShowPetId(param1:Number) : void
      {
         _showPetId = param1;
         if(param1 == -1)
         {
            this.view.getUI(ViewManager.PANEL_PETMANAGER).showPetFollowBtn.label = Language.PETMANAGERPANEL_S[23];
         }
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(param1,param2,param3);
      }
      
      public function getClassName(param1:int) : String
      {
         var _loc2_:Object = data.getGameData(GamePredef.TBL_CLASS,param1);
         if(_loc2_ != null)
         {
            return _loc2_.name;
         }
         return "";
      }
      
      public function get ui_create_complete() : Boolean
      {
         return _ui_create_complete;
      }
      
      public function get cmdState() : int
      {
         return _cmdState;
      }
      
      public function hasItemNum(param1:int, param2:int) : int
      {
         var _loc3_:Object = getItemNum(param1,param2);
         return _loc3_.num;
      }
      
      public function startGame(param1:uint) : void
      {
         global.nc.client = new CallBackGlobal();
         remote.nc.client = new CallBack();
         remote.call("chooseCharactor",null,param1);
         remote.call("getShopConfig",null);
         var _loc2_:* = view.getUI(ViewManager.MAIN_LINE);
         _loc2_.lineList = Login_Model.lineList;
         lineInfo = Login_Model.lineInfo;
         user = Login_Model.user;
         pass = Login_Model.pass;
         GamePredef.SERVER_ISACTING = Login_Model.SERVER_ISACTING;
      }
      
      public function set cid(param1:Number) : void
      {
         _cid = param1;
      }
      
      public function get battlePet() : Object
      {
         return _battlePet;
      }
      
      public function getStarColor(param1:Number) : int
      {
         var _loc2_:int = 0;
         var _loc3_:* = undefined;
         if(param1 <= 1)
         {
            _loc2_ = 0;
         }
         else
         {
            for(_loc3_ in GamePredef.STAR_ADDITION_COLOR)
            {
               if(param1 <= GamePredef.STAR_ADDITION_COLOR[_loc3_])
               {
                  _loc2_ = _loc3_;
                  break;
               }
            }
         }
         return _loc2_;
      }
      
      public function sysMsg(param1:String) : void
      {
         view.showSysMsg(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(param1);
      }
      
      public function set bloodBag(param1:Array) : void
      {
         var _loc2_:Object = this._653737042bloodBag;
         if(_loc2_ !== param1)
         {
            this._653737042bloodBag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bloodBag",_loc2_,param1));
         }
      }
      
      public function logout() : void
      {
         init();
         remote.showAlert = false;
         remote.nc.close();
         remote.showAlert = true;
         lineInfo = null;
         view.show(ViewManager.UI_LOGIN);
         view.show(ViewManager.FORE_L_R);
         view.hide(ViewManager.STAGE_MAIN);
         view.hide(ViewManager.UI_MAIN);
         var _loc1_:Object = view.getUI(ViewManager.PANEL_TRIPLE_TURN);
         _loc1_ && _loc1_.tripleHideUI(false);
         var _loc2_:Object = view.getUI(ViewManager.PANEL_REDENVELOPE_PANEL);
         if(_loc2_)
         {
            _loc2_.hideAllRedEvnelope();
         }
         if(Boolean(Login_Model.app) && Boolean(Login_Model.app.hasOwnProperty("backToCharSelect")))
         {
            Login_Model.app.backToLogin();
         }
         if(by_session == "sdo")
         {
            ExternalInterface.call("flush");
         }
      }
      
      public function destroyCharactor(param1:Number) : void
      {
         if(Boolean(this.player) && this.player.id == param1)
         {
            if(this.player.view)
            {
               this.player.view.stopPlayingFlyingEffect();
            }
         }
         view.removeC(param1);
      }
      
      public function lottoBlueMsg(param1:String) : void
      {
         view.showLottoBlueMsg(param1);
      }
      
      public function getCharactor(param1:Number) : Charactor
      {
         var _loc2_:Object = view.getC(param1);
         if(_loc2_ != null)
         {
            return _loc2_.gameObject;
         }
         return null;
      }
      
      public function getNpc(param1:int) : Npc
      {
         var _loc2_:Object = view.getN(param1);
         if(_loc2_ != null)
         {
            return _loc2_.gameObject;
         }
         return null;
      }
      
      public function selectTarget(param1:int, param2:Event = null) : void
      {
         if(_state == GamePredef.ST_BATTLE)
         {
            return;
         }
         if(param2)
         {
            param2.stopImmediatePropagation();
         }
         view.showSelect();
         view.actionState = param1;
      }
      
      public function getPetNumByColor(param1:Number, param2:String, param3:int) : int
      {
         var _loc6_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:Object = player.petList;
         for each(_loc6_ in _loc5_)
         {
            if(Boolean(_loc6_ && Number(_loc6_.tid) == param1) && Boolean(_loc6_.petName == param2) && basic.colorByGrowRate(_loc6_.growRate) >= param3)
            {
               _loc4_++;
            }
         }
         return _loc4_;
      }
      
      public function checkBatchItemList(param1:int) : Boolean
      {
         var _loc2_:* = undefined;
         for(_loc2_ in ItemConfig.BATCH_ITEM_LIST)
         {
            if(ItemConfig.BATCH_ITEM_LIST[_loc2_] == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function hasFlowerNum() : int
      {
         return hasItemNum(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_FLOWER);
      }
      
      public function get skillLevel() : int
      {
         return _skillLevel;
      }
      
      [Bindable(event="propertyChange")]
      public function get bloodBag() : Array
      {
         return this._653737042bloodBag;
      }
      
      public function checkTitleType(param1:int, param2:int) : Boolean
      {
         var _loc3_:Object = GameData.d[GamePredef.TBL_TITLE][param1];
         if(_loc3_)
         {
            if(_loc3_.k == param2)
            {
               return true;
            }
         }
         return false;
      }
      
      public function hasRavingNum() : int
      {
         return hasItemNum(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_FOOTLE);
      }
      
      public function getTemplateData(param1:uint, param2:Number, param3:Boolean = true) : Object
      {
         var _loc5_:Object = null;
         if(!data.hasData(param1,param2) && !param3)
         {
            return null;
         }
         var _loc4_:Object = data.getGameData(param1,param2);
         if(_loc4_ == null)
         {
            return null;
         }
         switch(param1)
         {
            case GamePredef.TBL_ITEM_INSTANCE:
            case GamePredef.TBL_EQUIPT_INSTANCE:
            case GamePredef.TBL_SCENEITEM_INSTANCE:
               _loc5_ = data.getGameData(param1 + 1,_loc4_.tid);
               break;
            case GamePredef.TBL_ELEMENT_TEMPLATE:
            case GamePredef.TBL_ITEM_TEMPLATE:
            case GamePredef.TBL_EQUIPT_TEMPLATE:
            case GamePredef.TBL_SCENEITEM_TEMPLATE:
            case GamePredef.TBL_CREATURE:
            case GamePredef.TBL_BUILDING:
            case GamePredef.TBL_SKILL:
            case GamePredef.TBL_EQUIPT_SUIT:
            case GamePredef.TBL_MINERAL_TEMPLATE:
            case GamePredef.TBL_MEDAL:
            case GamePredef.TBL_PET_TALENT:
            case GamePredef.TBL_DECO_SHOW:
            case GamePredef.TBL_DECO_RUNE:
            case GamePredef.TBL_MYSTRE:
            case GamePredef.TBL_RUNE_CHIP:
            case GamePredef.TBL_PRS_CHIP:
            case GamePredef.TBL_PRS_SHOW:
            case GamePredef.TBL_PRS_TREE:
            case GamePredef.TBL_CREATUREH_HEART:
            case GamePredef.TBL_PET_STONE:
               _loc5_ = _loc4_;
               break;
            case GamePredef.TBL_PET:
               _loc5_ = data.getGameData(GamePredef.TBL_CREATURE,_loc4_.tid);
         }
         return _loc5_;
      }
      
      [Bindable(event="propertyChange")]
      public function set player(param1:Player) : void
      {
         var _loc2_:Object = this.player;
         if(_loc2_ !== param1)
         {
            this._985752863player = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"player",_loc2_,param1));
         }
      }
      
      public function setFrameRate(param1:int) : void
      {
         var _loc2_:* = view.getUI(ViewManager.UI_CONTAINER);
         scene.secneSetSpeed(_loc2_.parentApplication.stage.frameRate,param1);
         _loc2_.parentApplication.stage.frameRate = param1;
         GamePredef.GLOBAL_FRAME_RATE = param1;
      }
      
      public function getGameObject(param1:int, param2:Number) : *
      {
         switch(param1)
         {
            case GamePredef.TBL_CHARACTOR:
               return getCharactor(param2);
            case GamePredef.TBL_NPC:
               return getNpc(param2);
            default:
               return;
         }
      }
      
      public function nextGuide(param1:int, param2:String, param3:int, param4:int = -1, param5:int = -1) : void
      {
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         if(!newPlayerGuideOpen)
         {
            return;
         }
         var _loc6_:Object = view.getUI(ViewManager.POP_NEW_PLAER_GUIDE);
         if(checkGuideCondition(param1,param2,param3,param5))
         {
            _loc7_ = data.gameData[GamePredef.TBL_GUIDE][lastIdxs[currentType]];
            if(_loc7_.level < player.level)
            {
               return;
            }
            remote.call("saveGuideLog",null,lastIdxs[currentType]);
            ++lastIdxs[currentType];
            if(_loc7_.finishType > 0)
            {
               delete lastIdxs[currentType];
            }
            if(_loc7_.promptType == GamePredef.SHOW_GUIDE_TYPE_BUBBLE)
            {
               _loc6_.init(_loc7_);
               _loc6_.showGuide(_loc7_.promptText);
            }
            else
            {
               _loc8_ = view.getUI(ViewManager.POP_NEW_PLAER_ALERT);
               _loc8_.init(_loc7_);
            }
         }
      }
      
      public function getFazendaDataByCid(param1:int) : Boolean
      {
         var _loc3_:Number = NaN;
         var _loc2_:Number = new Date().getTime();
         if(!farmReqArr[param1])
         {
            farmReqArr[param1] = _loc2_;
            remote.getFarmByCid(param1);
            return true;
         }
         _loc3_ = _loc2_ - farmReqArr[param1];
         if(_loc3_ > MIN_REQUEST_FAZENDA_INTERVAL)
         {
            farmReqArr[param1] = _loc2_;
            remote.getFarmByCid(param1);
            return true;
         }
         return false;
      }
      
      public function clearCharHistory() : void
      {
         view.getUI(ViewManager.MAIN_CHAT).init();
      }
      
      public function updatePetSetting(param1:String, param2:*) : void
      {
         GamePredef.GLOBAL_SETTING[param1] = param2;
         _battlePet.pi[param1] = param2;
         var _loc3_:RegExp = /([a-zA-Z]*)(\d*)/;
         var _loc4_:Object = _loc3_.exec(param1);
         if((Boolean(_loc4_)) && _loc4_[1] == "bs")
         {
            view.getUI(ViewManager.PANEL_BATTLESET).updateSlot(_loc4_[2]);
         }
      }
      
      public function addBlack(param1:String) : void
      {
         view.getUI(ViewManager.PANEL_IM).addBlack(param1);
      }
      
      public function clearMidWarn() : void
      {
         view.getUI(ViewManager.MID_MAIN_WARN).delThisImage();
      }
      
      public function resetLine() : void
      {
         ready = false;
         logined = false;
         clearTargets();
         data.reset();
         scene.sceneLeave();
         if(state == GamePredef.ST_CORE_BATTLE)
         {
            battle.battleOnEnd();
         }
      }
      
      public function fetchVDAYWish(param1:Object) : Object
      {
         var _loc3_:* = undefined;
         var _loc4_:int = 0;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc2_:int = 0;
         for(_loc3_ in VDAYWishesArr)
         {
            _loc2_++;
         }
         if(_loc2_ < 1)
         {
            return null;
         }
         _loc4_ = -1;
         while(true)
         {
            _loc5_ = 0;
            for(_loc6_ in VDAYWishesArr)
            {
               if(!VDAYWishesArr[_loc6_].flag)
               {
                  _loc5_++;
               }
            }
            if(_loc5_ < 1)
            {
               break;
            }
            _loc4_ = Math.round(Math.random() * VDAYWishesArr.length);
            if(!(!VDAYWishesArr[_loc4_] || Boolean(VDAYWishesArr[_loc4_].flag)))
            {
               VDAYWishesArr[_loc4_].flag = true;
               return VDAYWishesArr[_loc4_];
            }
         }
         return param1;
      }
      
      public function getPet(param1:Number) : Pet
      {
         var _loc2_:Object = view.getP(param1);
         if(_loc2_ != null)
         {
            return _loc2_.gameObject;
         }
         return null;
      }
      
      private function onGetTodayOnlineTime(param1:Object) : void
      {
         var _loc2_:int = int(param1.t);
         var _loc3_:int = param1.f != undefined ? int(param1.f) : 0;
         var _loc4_:int = (_loc3_ + 1) * GamePredef.ONLINE_ACT_AWARD_DURATION - _loc2_;
         if(timer.running)
         {
            timer.stop();
         }
         if(_loc4_ <= 0)
         {
            onTimer(null);
         }
         else
         {
            timer.delay = _loc4_ * 60000;
            timer.start();
         }
      }
      
      public function hasSeekNum() : int
      {
         return hasItemNum(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_SEEK);
      }
      
      public function clearTargets() : void
      {
         targetIP = null;
         targetNPC = null;
         targetPlayer = null;
         target = null;
      }
      
      public function getNpcData(param1:int) : Object
      {
         return data.getGameData(GamePredef.TBL_NPC,param1);
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
