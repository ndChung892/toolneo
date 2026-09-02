package com.qeedoo.game.object
{
   import com.qeedoo.game.config.ItemConfig;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.logic.PetLogic;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.utils.JSONUtil;
   import com.qeedoo.game.view.ViewManager;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.ByteArray;
   import flash.utils.Timer;
   import flash.utils.setTimeout;
   import mx.collections.ArrayCollection;
   import mx.controls.Alert;
   import mx.core.IUITextField;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   
   public class Player extends Charactor
   {
      
      private static const UPDATE_DIS:Number = 30;
      
      public var attIntelligence:int;
      
      public var trainSoulExp:Number;
      
      public var evolutionPetObject:Object;
      
      public var fairyList:Object;
      
      public var enableSpeedValidation:Boolean = true;
      
      public var propCritical:int;
      
      public var portraitCode:Number;
      
      public var posBattle:Number;
      
      public var creditDayDict:Object;
      
      private var _1589513115tkyyhpointV2:Number = 0;
      
      public var actpoint:int;
      
      private var _747604609magiccystalrec:Number = 0;
      
      private var _1489943514yijieElement:Number = 0;
      
      public var bp:int;
      
      public var imgCode:Number;
      
      private var _907859034medalExp:Number = 0;
      
      public var awakenAdd:int;
      
      public var cl:int;
      
      public var cp:String;
      
      private var _683269445realSoulCrystal:Number = 0;
      
      public var reputation:Number;
      
      public var lastHitNpc:Object;
      
      private var _1093046749shishangdian:Number = 0;
      
      private var _2030127989petguardin:Number = 0;
      
      private var _104079552money:Number;
      
      private var _106557274petPK:Number = 0;
      
      public var attStamina:int;
      
      public var attEnergy:int;
      
      public var questList:Object = {};
      
      private var _1590959536posCenterY:int;
      
      public var movePnt:int;
      
      public var gData:Object;
      
      private var _292525742stoneSealPoint:Number;
      
      private var _1338617699exPoint:Number;
      
      private var _1490547880petguardout:Number = 0;
      
      private var _1070495180realSoulStone:Number = 0;
      
      private var _99509454groupRequestAC:ArrayCollection;
      
      private var _1183081836magiccystallimit:Number = 0;
      
      private var _2035869885goldBind:Number;
      
      private var _1550481539runeExp:Number = 0;
      
      public var activePetObject:Object;
      
      public var propReduceHurt1:int;
      
      public var soulChip:int;
      
      public var propReduceHurt2:int;
      
      private var _508024386heroScore2507:Number = 0;
      
      private var _lastChatTime:Number;
      
      public var vigor:int;
      
      private var _lastMoveRoute:Array = [];
      
      private var _2053648975pvePoint:Number;
      
      private var _634593770threePvpPnt:Number;
      
      private var _105004308npPnt:Number;
      
      private var _98254cbM:Number;
      
      private var _540145372worldCupGoldPoint:Number;
      
      public var propCounter:int;
      
      private var _3089041dogM:Number;
      
      public var equipActiveList:Object;
      
      private var _293427937groupAC:ArrayCollection;
      
      public var expBattle:Number;
      
      public var propHit:int;
      
      public var petTalentData:Object;
      
      private var _747603092magiccystalpre:Number = 0;
      
      public var loopList:Object = {};
      
      public var awakenLevel:int;
      
      public var ll:String;
      
      private var _178419583mhjingshi:Number = 0;
      
      public var petMaxNum:Number;
      
      public var petGuardData:Object = {
         "lvData":{},
         "petData":{}
      };
      
      private var _2022073533soulPnt:Number;
      
      public var crystalSid:int;
      
      public var maxActpoint:int;
      
      private var _1590959535posCenterX:int;
      
      private var _mapData:Object;
      
      public var createTime:Number;
      
      private var _489540817xcds2403p:Number = 0;
      
      public var maxVigor:int;
      
      public var safeCBMids:Array;
      
      private var _1056511154xmCandy24:Number = 0;
      
      private var _lastPlayerPosition:Object = {
         "time":null,
         "posX":-1,
         "posY":-1
      };
      
      public var attStrength:int;
      
      public var serverSpeedThreshold:Number = 300;
      
      public var trainSoulLvl:int;
      
      public var newGrade:int;
      
      public var qn:int;
      
      public var soulTempBag:Object;
      
      private var _lp:Point;
      
      public var creditTotalDict:Object;
      
      public var propDodge:int;
      
      private var _94078750lottoBagLength:String;
      
      private var _94041220btPnt:Number;
      
      public var petArenaAct:Object;
      
      public var cpid:Number = -1;
      
      public var pop:int;
      
      private var setTime:Timer;
      
      public var isHanged:Boolean;
      
      private var _1966126374couragePoint:Number;
      
      public var petList:Object;
      
      public var soulBagData:Object;
      
      public var isLockedUB:Boolean;
      
      public var attAgility:int;
      
      public var ti:Number;
      
      public var tl:int;
      
      public var tn:String;
      
      public var tp:Number;
      
      private var _lastWorldChatTime:Number;
      
      public var guid:Number;
      
      public var skillList:Object;
      
      private var _2052063483heiyaoshiPoint2:Number = 0;
      
      private var _1789520845warSprite:Number = 0;
      
      public var walkable:Boolean;
      
      public var propSpeed:int;
      
      public var guideLog:String;
      
      private var _575924634elementPnt:Number;
      
      private var _1466742551txkc2508p:Number = 0;
      
      public var alertTrans:Alert;
      
      public var contractPet:Object;
      
      public var maxMovePnt:int;
      
      private var _481837591heiyaoshiPoint:Number = 0;
      
      public var totalOnline:Number;
      
      public var loopTakeTime:Array;
      
      private var _continuousMoveCount:int = 0;
      
      public var bankSlotNum:Number;
      
      private var _1654691932worldCupPoint:Number;
      
      public var tBag:Object;
      
      private var _1829557571energyStone:Number = 0;
      
      public var attLastPoint:Number;
      
      public var questLog:String;
      
      private var _1897219452starPnt:Number;
      
      private var _3178592gold:Number;
      
      public var propDefy:int;
      
      public var mapSafe:Boolean;
      
      private var _1691040230decoSilver:Number = 0;
      
      private var _523115282dmbk2509p:Number = 0;
      
      public var soulExp:int;
      
      public var achieveLog:Object;
      
      public var offlineTime:uint = 0;
      
      public var creditMonthDict:Object;
      
      public var mapArr:ArrayCollection = new ArrayCollection();
      
      private var _1714071267moneyBind:Number;
      
      private var _1952114124expSkill:Number;
      
      public var achieveReqLog:Object;
      
      public var bagSlotNum:Number;
      
      public var dressInfo:String;
      
      public var awakenPoint:int;
      
      private var _1933665075summerGameScore2015:Number;
      
      private var _2100767331battleSprite:Number = 0;
      
      private var _1067362586realSoulWater:Number = 0;
      
      private var _162163465mysteryCrystal:Number = 0;
      
      public var starsData:Object;
      
      private var _530944140monsterHeart:Number = 0;
      
      public var questGuideAble:Boolean = true;
      
      private var mapArrComplete:Boolean = false;
      
      public var achPnt:int;
      
      private var _465052908wisdonCrystal:Number;
      
      public var awakenPointDict:Object;
      
      public var creditWeekDict:Object;
      
      public var propCombo:int;
      
      private var _1086658619lotteryBagLength:String;
      
      public var farmBag:Object;
      
      public var guild:Object;
      
      private var _106404485paPnt:Number;
      
      public var awakenPointUsed:int;
      
      public function Player()
      {
         super();
         isSelf = true;
         walkable = true;
         isHanged = false;
         equipActiveList = {};
         _lp = new Point(0,0);
         _lastChatTime = new Date().getTime();
         _lastWorldChatTime = 0;
         safeCBMids = new Array();
         setTime = new Timer(10 * 60 * 1000);
         setTime.addEventListener(TimerEvent.TIMER,onlineReport);
         setTime.start();
      }
      
      public function stop() : void
      {
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc1_:Point = new Point(normalView.posX,normalView.posY);
         if(!_inBattle && state != GamePredef.ST_BATTLE && state != GamePredef.ST_BATTLE_EXEC && Point.distance(_lp,_loc1_) > UPDATE_DIS)
         {
            _loc3_ = {
               "id":id,
               "route":_lastMoveRoute,
               "x":normalView.posX,
               "y":normalView.posY
            };
            _loc3_ = _continuousMoveCount > 1 ? _loc3_ : null;
            _continuousMoveCount = 0;
            if(enableSpeedValidation)
            {
               _loc4_ = new Date().getTime();
               if((Boolean(!inGroup || isLeader)) && Boolean(_lastPlayerPosition.time) && _lastPlayerPosition.mapId == this.posMapId)
               {
                  _loc5_ = Math.sqrt((_lastPlayerPosition.posX - posX) * (_lastPlayerPosition.posX - posX) + (_lastPlayerPosition.posY - posY) * (_lastPlayerPosition.posY - posY));
                  _loc6_ = _loc5_ * 1000 / (_loc4_ - _lastPlayerPosition.time);
                  if(_loc5_ > 100)
                  {
                     if(_loc6_ > serverSpeedThreshold)
                     {
                        _core.sysMsg(Language.PLAYER_S[34]);
                        normalView.posX = _lastPlayerPosition.posX;
                        normalView.posY = _lastPlayerPosition.posY;
                        this.posX = _lastPlayerPosition.posX;
                        this.posY = _lastPlayerPosition.posY;
                        _core.view.getUI(ViewManager.STAGE_MAIN).centerPlayer();
                     }
                  }
               }
            }
            _core.remote.udcp(normalView.posX,normalView.posY,normalView.centerX,normalView.centerY,dir,_loc3_);
            _lp = _loc1_;
         }
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_MAP);
         _loc2_.clearRoute();
      }
      
      public function enoughPetSlot(param1:int) : Boolean
      {
         if(petMaxNum - getPetNumAll() >= param1)
         {
            return true;
         }
         return false;
      }
      
      public function set decoSilver(param1:Number) : void
      {
         var _loc2_:Object = this._1691040230decoSilver;
         if(_loc2_ !== param1)
         {
            this._1691040230decoSilver = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"decoSilver",_loc2_,param1));
         }
      }
      
      public function set heiyaoshiPoint(param1:Number) : void
      {
         var _loc2_:Object = this._481837591heiyaoshiPoint;
         if(_loc2_ !== param1)
         {
            this._481837591heiyaoshiPoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"heiyaoshiPoint",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get yijieElement() : Number
      {
         return this._1489943514yijieElement;
      }
      
      public function set yijieElement(param1:Number) : void
      {
         var _loc2_:Object = this._1489943514yijieElement;
         if(_loc2_ !== param1)
         {
            this._1489943514yijieElement = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"yijieElement",_loc2_,param1));
         }
      }
      
      public function set shishangdian(param1:Number) : void
      {
         var _loc2_:Object = this._1093046749shishangdian;
         if(_loc2_ !== param1)
         {
            this._1093046749shishangdian = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shishangdian",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gold() : Number
      {
         return this._3178592gold;
      }
      
      public function onLogout() : void
      {
         if(normalView != null)
         {
            normalView.stopCheckBattleTimer();
         }
      }
      
      public function set expSkill(param1:Number) : void
      {
         var _loc2_:Object = this._1952114124expSkill;
         if(_loc2_ !== param1)
         {
            this._1952114124expSkill = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expSkill",_loc2_,param1));
         }
      }
      
      public function set realSoulStone(param1:Number) : void
      {
         var _loc2_:Object = this._1070495180realSoulStone;
         if(_loc2_ !== param1)
         {
            this._1070495180realSoulStone = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"realSoulStone",_loc2_,param1));
         }
      }
      
      public function enoughBag(param1:int) : Boolean
      {
         if(getEmptyBagSlotNum() >= param1)
         {
            return true;
         }
         return false;
      }
      
      [Bindable(event="propertyChange")]
      public function get runeExp() : Number
      {
         return this._1550481539runeExp;
      }
      
      [Bindable(event="propertyChange")]
      public function get mhjingshi() : Number
      {
         return this._178419583mhjingshi;
      }
      
      [Bindable(event="propertyChange")]
      public function get btPnt() : Number
      {
         return this._94041220btPnt;
      }
      
      public function isFinishQuest(param1:Number) : Boolean
      {
         if(_core.player.questLog)
         {
            if(_core.player.questLog.indexOf("|" + param1 + "|") >= 0)
            {
               return true;
            }
         }
         return false;
      }
      
      public function set heroScore2507(param1:Number) : void
      {
         var _loc2_:Object = this._508024386heroScore2507;
         if(_loc2_ !== param1)
         {
            this._508024386heroScore2507 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"heroScore2507",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petguardin() : Number
      {
         return this._2030127989petguardin;
      }
      
      [Bindable(event="propertyChange")]
      public function get monsterHeart() : Number
      {
         return this._530944140monsterHeart;
      }
      
      [Bindable(event="propertyChange")]
      public function get exPoint() : Number
      {
         return this._1338617699exPoint;
      }
      
      public function setConditionWalkable() : void
      {
         if(inGroup && !isLeader && !groupAfk && taskSweep)
         {
            return;
         }
         walkable = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get petguardout() : Number
      {
         return this._1490547880petguardout;
      }
      
      public function get isDead() : Boolean
      {
         return Boolean(currentHp <= 0);
      }
      
      [Bindable(event="propertyChange")]
      public function get xmCandy24() : Number
      {
         return this._1056511154xmCandy24;
      }
      
      [Bindable(event="propertyChange")]
      public function get money() : Number
      {
         return this._104079552money;
      }
      
      [Bindable(event="propertyChange")]
      public function get magiccystalpre() : Number
      {
         return this._747603092magiccystalpre;
      }
      
      private function useSnowBall(param1:String) : void
      {
         _core.remote.useSnowBall(param1);
      }
      
      public function transToGuildMap() : void
      {
         var func:Function = function(param1:CloseEvent):*
         {
            if(param1.detail == Alert.YES)
            {
               _core.useItem(GamePredef.ITEM_GUILD_TRANSPORT);
            }
         };
         Alert.show(Language.WORLDMAPICON_S[7],"",Alert.YES | Alert.NO,null,func);
      }
      
      public function createNpcs() : void
      {
         _core.remote.createNpcs();
         _core.remote.createBoss();
         _core.remote.createChars();
         _core.remote.createGuildBuildings();
      }
      
      private function transGroup(param1:int) : void
      {
         var okLabel:String = null;
         var yesLabel:String = null;
         var transGWithGold:Function = null;
         var mapId:int = param1;
         okLabel = Alert.okLabel;
         yesLabel = Alert.yesLabel;
         transGWithGold = function(param1:CloseEvent):void
         {
            var _loc2_:* = undefined;
            var _loc3_:Object = null;
            if(param1.detail == Alert.YES)
            {
               _loc2_ = _core.view.getUI(ViewManager.PANEL_BAG);
               if(_loc2_.goldDisable())
               {
                  Alert.show(Language.PLAYER_S[23]);
                  return;
               }
               _loc3_ = {
                  "tid":ItemConfig.ITEM_TRANSPORT_SENIOR,
                  "mid":mapId
               };
               if(!_core.player.inBattle && !_core.player.taskSweep)
               {
                  _core.remote.useItemGold(_loc3_);
               }
               _core.view.hide(ViewManager.POPU_WORLDMAP);
               _core.view.hide(ViewManager.TOOLTIP_MAP);
               _core.view.getUI(ViewManager.TOOLTIP_PET).hide();
               _core.view.getUI(ViewManager.TOOLTIP_QUEST).hide();
            }
         };
         var leaderTransport:Function = function(param1:CloseEvent):void
         {
            Alert.okLabel = okLabel;
            Alert.yesLabel = yesLabel;
            if(param1.detail == Alert.YES)
            {
               if(_core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_TRANSPORT_SENIOR).num > 0 || _core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_TRANSPORT_SENIOR_WEEK).num > 0 || _core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_TRANSPORT_SENIOR_HALF_MONTH).num > 0 || _core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_TRANSPORT_SENIOR_MONTH).num > 0 || _core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_TRANSPORT_SENIOR_WEEK_TRUE).num > 0 || _core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_TRANSPORT_SENIOR_DAY).num > 0 || _core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_TRANSPORT_SENIOR_HALF_DAY).num > 0)
               {
                  transTo(mapId,true,true);
               }
               else
               {
                  Alert.show(Language.WORLDMAPICON_S[2],"",Alert.YES | Alert.NO,null,transGWithGold);
               }
            }
            else if(param1.detail == Alert.OK)
            {
               transSingle(mapId);
            }
         };
         Alert.okLabel = Language.WORLDMAPICON_S[4];
         Alert.yesLabel = Language.WORLDMAPICON_S[5];
         Alert.show(Language.WORLDMAPICON_S[1],"",Alert.OK | Alert.YES | Alert.NO,null,leaderTransport);
      }
      
      [Bindable(event="propertyChange")]
      public function get xcds2403p() : Number
      {
         return this._489540817xcds2403p;
      }
      
      [Bindable(event="propertyChange")]
      public function get goldBind() : Number
      {
         return this._2035869885goldBind;
      }
      
      public function set gold(param1:Number) : void
      {
         var _loc2_:Object = this._3178592gold;
         if(_loc2_ !== param1)
         {
            this._3178592gold = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gold",_loc2_,param1));
         }
      }
      
      public function get classLevel() : String
      {
         return GamePredef.CLASS_LEVEL[cl];
      }
      
      [Bindable(event="propertyChange")]
      public function get lottoBagLength() : String
      {
         return this._94078750lottoBagLength;
      }
      
      private function festfootleName(param1:String) : void
      {
         _core.remote.useFestFootle(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get heiyaoshiPoint2() : Number
      {
         return this._2052063483heiyaoshiPoint2;
      }
      
      [Bindable(event="propertyChange")]
      public function get mysteryCrystal() : Number
      {
         return this._162163465mysteryCrystal;
      }
      
      [Bindable(event="propertyChange")]
      public function get txkc2508p() : Number
      {
         return this._1466742551txkc2508p;
      }
      
      public function set mhjingshi(param1:Number) : void
      {
         var _loc2_:Object = this._178419583mhjingshi;
         if(_loc2_ !== param1)
         {
            this._178419583mhjingshi = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mhjingshi",_loc2_,param1));
         }
      }
      
      public function set runeExp(param1:Number) : void
      {
         var _loc2_:Object = this._1550481539runeExp;
         if(_loc2_ !== param1)
         {
            this._1550481539runeExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"runeExp",_loc2_,param1));
         }
      }
      
      public function set btPnt(param1:Number) : void
      {
         var _loc2_:Object = this._94041220btPnt;
         if(_loc2_ !== param1)
         {
            this._94041220btPnt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btPnt",_loc2_,param1));
         }
      }
      
      private function transSingle(param1:int) : void
      {
         var transWithGold:Function;
         var tf:IUITextField = null;
         var mapId:int = param1;
         var transWithItem:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               transTo(mapId,false,true);
            }
         };
         if(alertTrans)
         {
            PopUpManager.removePopUp(alertTrans);
            alertTrans = null;
         }
         transWithGold = function(param1:CloseEvent):void
         {
            var _loc2_:* = undefined;
            var _loc3_:Object = null;
            if(param1.detail == Alert.YES)
            {
               _loc2_ = _core.view.getUI(ViewManager.PANEL_BAG);
               if(_loc2_.goldDisable())
               {
                  Alert.show(Language.PLAYER_S[23]);
                  return;
               }
               _loc3_ = {
                  "tid":ItemConfig.ITEM_TRANSPORT,
                  "mid":mapId
               };
               if(!_core.player.inBattle && !_core.player.taskSweep)
               {
                  _core.remote.useItemGold(_loc3_);
               }
               _core.view.hide(ViewManager.POPU_WORLDMAP);
               _core.view.hide(ViewManager.TOOLTIP_MAP);
               _core.view.getUI(ViewManager.TOOLTIP_PET).hide();
               _core.view.getUI(ViewManager.TOOLTIP_QUEST).hide();
            }
         };
         if(_core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_TRANSPORT_WEEK).num > 0 || _core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_TRANSPORT_HALF_MONTH).num > 0 || _core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_TRANSPORT_MONTH).num > 0 || _core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_TRANSPORT_SENIOR_WEEK).num > 0 || _core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_TRANSPORT_SENIOR_HALF_MONTH).num > 0 || _core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_TRANSPORT_SENIOR_MONTH).num > 0 || _core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_TRANSPORT_SENIOR_WEEK_TRUE).num > 0 || _core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_TRANSPORT_SENIOR_DAY).num > 0 || _core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_TRANSPORT_SENIOR_HALF_DAY).num > 0)
         {
            transTo(mapId,false,false);
         }
         else if(_core.hasItemNum(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_TRANSPORT) > 0)
         {
            alertTrans = Alert.show(Language.WORLDMAPICON_S[1],"",Alert.YES | Alert.NO,null,transWithItem);
         }
         else if(_core.hasItemNum(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_TRANSPORT_SENIOR) > 0)
         {
            alertTrans = Alert.show(Language.WORLDMAPICON_S[8],"",Alert.YES | Alert.NO,null,transWithItem);
            tf = alertTrans.mx_internal::alertForm.mx_internal::textField;
            tf.htmlText = Language.WORLDMAPICON_S[8];
         }
         else
         {
            alertTrans = Alert.show(Language.WORLDMAPICON_S[0],"",Alert.YES | Alert.NO,null,transWithGold);
         }
      }
      
      public function set starPnt(param1:Number) : void
      {
         var _loc2_:Object = this._1897219452starPnt;
         if(_loc2_ !== param1)
         {
            this._1897219452starPnt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starPnt",_loc2_,param1));
         }
      }
      
      public function set monsterHeart(param1:Number) : void
      {
         var _loc2_:Object = this._530944140monsterHeart;
         if(_loc2_ !== param1)
         {
            this._530944140monsterHeart = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"monsterHeart",_loc2_,param1));
         }
      }
      
      public function set magiccystalrec(param1:Number) : void
      {
         var _loc2_:Object = this._747604609magiccystalrec;
         if(_loc2_ !== param1)
         {
            this._747604609magiccystalrec = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"magiccystalrec",_loc2_,param1));
         }
      }
      
      public function set dogM(param1:Number) : void
      {
         var _loc2_:Object = this._3089041dogM;
         if(_loc2_ !== param1)
         {
            this._3089041dogM = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dogM",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moneyBind() : Number
      {
         return this._1714071267moneyBind;
      }
      
      public function set petguardin(param1:Number) : void
      {
         var _loc2_:Object = this._2030127989petguardin;
         if(_loc2_ !== param1)
         {
            this._2030127989petguardin = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petguardin",_loc2_,param1));
         }
      }
      
      public function set magiccystalpre(param1:Number) : void
      {
         var _loc2_:Object = this._747603092magiccystalpre;
         if(_loc2_ !== param1)
         {
            this._747603092magiccystalpre = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"magiccystalpre",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get worldCupGoldPoint() : Number
      {
         return this._540145372worldCupGoldPoint;
      }
      
      private function seekName(param1:String) : void
      {
         _core.remote.useSeek(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get npPnt() : Number
      {
         return this._105004308npPnt;
      }
      
      public function getActiveFairy() : Object
      {
         var _loc1_:Object = null;
         for each(_loc1_ in fairyList)
         {
            if(Boolean(_loc1_) && int(_loc1_.state) == 1)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function useItem(param1:int, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var slot:Object = null;
         var tData:Object = null;
         var item:Object = null;
         var func:Function = null;
         var panel:Object = null;
         var pet:Object = null;
         var splitChar:String = null;
         var itemId:int = 0;
         var useMultiFunc:Function = null;
         var onDiv:Function = null;
         var hasNum:int = 0;
         var cname:String = null;
         var targetName:Function = null;
         var rename:Function = null;
         var obj:Object = null;
         var maxNum:uint = 0;
         var targetType:int = param1;
         var petId:Number = param2;
         var slotId:Number = param3;
         var ctrlToPet:Boolean = param4;
         slot = _core.data.sList[slotId];
         if(ctrlToPet)
         {
            targetType = GamePredef.MOUSE_TARGET_PET;
            if(_core.battlePet != null)
            {
               petId = Number(_core.battlePet.id);
            }
         }
         if(slot)
         {
            if(Boolean(_core.player) && Boolean(slot.type) && Boolean(slot.giid))
            {
               item = _core.getTemplateData(slot.type,slot.giid);
               if(Boolean(item) && Boolean(item.skillId <= 0) && _core.player.taskSweep)
               {
                  _core.sysMidNote(Language.TASKSWEEPPANEL_U[22]);
                  return;
               }
            }
            tData = _core.getTemplateData(slot.type,slot.itemId);
            if(tData)
            {
               if(tData.kind == GamePredef.ITEM_KIND_PETEQU && GamePredef.PETEQU_POS_BEGIN <= tData.position && tData.position <= GamePredef.PETEQU_POS_END)
               {
                  targetType = GamePredef.MOUSE_TARGET_PET;
                  panel = _core.view.getUI(ViewManager.PANEL_PETMANAGER);
                  if(Boolean(panel.petData) && Boolean(panel.visible))
                  {
                     petId = Number(panel.petData.id);
                  }
                  else if(_core.battlePet)
                  {
                     petId = Number(_core.battlePet.id);
                  }
                  if(petId < 0)
                  {
                     Alert.show(Language.PLAYER_S[26]);
                     return;
                  }
               }
               if(targetType == GamePredef.MOUSE_TARGET_CHA)
               {
                  if(Number(tData.useType) != 1 && Number(tData.useType) != 3)
                  {
                     _core.sysMidNote(Language.PLAYER_S[3]);
                     return;
                  }
                  if(Number(_core.player.level) < Number(tData.reqLevel))
                  {
                     _core.sysMidNote(Language.PLAYER_S[4]);
                     return;
                  }
                  if(tData.reqClass.indexOf("|" + _core.player.classId + "|") < 0)
                  {
                     _core.sysMidNote(Language.PLAYER_S[5]);
                     return;
                  }
               }
               else if(targetType == GamePredef.MOUSE_TARGET_PET)
               {
                  if(Number(tData.useType) != 2 && Number(tData.useType) != 3)
                  {
                     _core.sysMidNote(Language.PLAYER_S[6]);
                     return;
                  }
                  pet = _core.player.petList[petId];
                  if(!pet)
                  {
                     return;
                  }
                  if(PetLogic.expToLv(pet.exp) < Number(tData.reqLevel))
                  {
                     _core.sysMidNote(Language.PLAYER_S[7]);
                     return;
                  }
               }
               switch(Number(tData.type))
               {
                  case GamePredef.ITEM_TYPE_KEY:
                     if(!enoughBag(1))
                     {
                        _core.sysMidNote(Language.PLAYER_S[8]);
                        return;
                     }
                     if(Boolean(_core.view.getUI(ViewManager.PANEL_TREASURE)) && Boolean(_core.view.getUI(ViewManager.PANEL_TREASURE).useFlag()))
                     {
                        return;
                     }
                     break;
                  case GamePredef.ITEM_TYPE_TARGET_ITEM:
                     _core.remote.itemToTarget(slotId);
                     return;
               }
               if(tData.id == 3012)
               {
                  if(!enoughBag(1))
                  {
                     _core.sysMidNote(Language.PLAYER_S[8]);
                     return;
                  }
                  if(Boolean(_core.view.getUI(ViewManager.PANEL_TREASURE)) && Boolean(_core.view.getUI(ViewManager.PANEL_TREASURE).useFlag()))
                  {
                     return;
                  }
               }
               func = function(param1:CloseEvent):void
               {
                  if(param1.detail == Alert.YES)
                  {
                     _core.remote.useItem(targetType,petId,slotId);
                  }
               };
               if(slot.type == GamePredef.TBL_ITEM_INSTANCE)
               {
                  splitChar = GamePredef.INPUT_PANEL_TITLE_SPLIT;
                  itemId = int(tData.id);
                  if(itemId >= 5375 && itemId <= 5697 || _core.checkBatchItemList(itemId))
                  {
                     if(slot.stackNum > 1)
                     {
                        useMultiFunc = function(param1:uint):void
                        {
                           _core.remote.useMultiItem(targetType,petId,slotId,param1);
                        };
                        _core.view.getUI(ViewManager.PANEL_INPUT).showInputNum(Language.PLAYER_S[31],Language.PLAYER_S[30],useMultiFunc,slot.stackNum,1,slot.stackNum);
                     }
                     else if(slot.stackNum == 1)
                     {
                        _core.remote.useItem(targetType,petId,slotId);
                     }
                     return;
                  }
                  switch(itemId)
                  {
                     case ItemConfig.ITEM_RESETPOINT:
                        Alert.show(Language.PLAYER_S[10],"",3,null,func);
                        break;
                     case ItemConfig.ITEM_GOOD_CARD:
                        onDiv = function(param1:CloseEvent):void
                        {
                           if(param1.detail == Alert.YES)
                           {
                              _core.remote.useGoodCard();
                           }
                        };
                        Alert.show(Language.PLAYER_S[24],"",3,null,onDiv);
                        break;
                     case ItemConfig.ITEM_SEEK_MONTH:
                     case ItemConfig.ITEM_SEEK:
                        _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.PLAYER_S[11] + splitChar + itemId,Language.PLAYER_S[12],seekName);
                        break;
                     case ItemConfig.ITEM_RADAR_MONTH:
                     case ItemConfig.ITEM_RADAR:
                     case ItemConfig.ITEM_RADAR_WEEK:
                        _core.view.getUI(ViewManager.PANEL_INPUT).showNpcNameInput(Language.PLAYER_S[13],Language.PLAYER_S[14],seekNpc);
                        break;
                     case ItemConfig.ITEM_TRACK:
                        _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.PLAYER_S[15] + splitChar + itemId,Language.PLAYER_S[16],trackName);
                        break;
                     case ItemConfig.ITEM_FOOTLE:
                        _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.PLAYER_S[15] + splitChar + itemId,Language.PLAYER_S[16],footleName);
                        break;
                     case ItemConfig.ITEM_ANTI_FOOTLE:
                        _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.PLAYER_S[15] + splitChar + itemId,Language.PLAYER_S[16],antiFootleName);
                        break;
                     case ItemConfig.ITEM_TRANSPORT_WEEK:
                     case ItemConfig.ITEM_TRANSPORT_MONTH:
                     case ItemConfig.ITEM_TRANSPORT_HALF_MONTH:
                     case ItemConfig.ITEM_TRANSPORT:
                        if(mapArrComplete == false)
                        {
                           for each(obj in GameData.d[GamePredef.TBL_MAP])
                           {
                              if(obj.t > 0)
                              {
                                 mapArr.addItem(obj);
                              }
                           }
                           if(mapArr.length > 0)
                           {
                              mapArrComplete = true;
                           }
                        }
                        _core.view.getUI(ViewManager.PANEL_INPUT).showPositionInput(Language.PLAYER_S[17],Language.PLAYER_S[27],useTransport,mapArr);
                        break;
                     case ItemConfig.ITEM_RETURN_TEAM:
                        hasNum = _core.hasItemNum(GamePredef.TBL_ITEM_TEMPLATE,itemId);
                        if(!hasNum)
                        {
                           _core.sysMidNote(Language.GROUPPANEL_U[14]);
                           return;
                        }
                        if(Boolean(_core.groupMemberListArr) && Boolean(_core.groupMemberListArr[_core.cid]) && Boolean(_core.groupMemberListArr[_core.cid].groupAfk))
                        {
                           _core.player.groupAfk = _core.groupMemberListArr[_core.cid].groupAfk;
                        }
                        if(!_core.player.groupAfk)
                        {
                           _core.sysMidNote(Language.GROUPPANEL_U[15]);
                           return;
                        }
                        if(Boolean(_core.player.state) && (_core.player.state == GamePredef.ST_BATTLE || _core.player.state == GamePredef.ST_WATCH))
                        {
                           _core.sysMidNote(Language.GROUPPANEL_U[17]);
                           return;
                        }
                        if(hasNum > 0 && _core.player.groupAfk)
                        {
                           func = function(param1:CloseEvent):void
                           {
                              if(param1.detail == Alert.YES)
                              {
                                 _core.remote.call("unGroupAFK",null,false);
                              }
                           };
                           Alert.show(Language.GROUPPANEL_U[16],"",Alert.YES | Alert.NO,null,func);
                        }
                        break;
                     case ItemConfig.ITEM_TRANSPORT_SENIOR:
                     case ItemConfig.ITEM_TRANSPORT_SENIOR_WEEK:
                     case ItemConfig.ITEM_TRANSPORT_SENIOR_HALF_MONTH:
                     case ItemConfig.ITEM_TRANSPORT_SENIOR_MONTH:
                     case ItemConfig.ITEM_TRANSPORT_SENIOR_WEEK_TRUE:
                     case ItemConfig.ITEM_TRANSPORT_SENIOR_DAY:
                     case ItemConfig.ITEM_TRANSPORT_SENIOR_HALF_DAY:
                        if(mapArr.length < 1)
                        {
                           for each(obj in GameData.d[GamePredef.TBL_MAP])
                           {
                              if(obj.t > 0)
                              {
                                 mapArr.addItem(obj);
                              }
                           }
                        }
                        if(isLeader)
                        {
                           _core.view.getUI(ViewManager.PANEL_INPUT).showPositionInput(Language.PLAYER_S[17],Language.PLAYER_S[27],useTransportGroup,mapArr);
                        }
                        else
                        {
                           _core.view.getUI(ViewManager.PANEL_INPUT).showPositionInput(Language.PLAYER_S[17],Language.PLAYER_S[27],useTransport,mapArr);
                        }
                        break;
                     case ItemConfig.ITEM_ROSES:
                     case ItemConfig.ITEM_CHACO:
                     case ItemConfig.ITEM_CHACOS:
                     case ItemConfig.ITEM_ROSE:
                        cname = "";
                        hasNum = _core.hasItemNum(GamePredef.TBL_ITEM_TEMPLATE,itemId);
                        targetName = function(param1:String):void
                        {
                           var name:String = param1;
                           cname = name;
                           var showNumPanel:Function = function():void
                           {
                              var targetNum:Function = function(param1:int):void
                              {
                                 _core.remote.useIntimacyItem(cname,param1,Number(tData.id));
                                 cname = "";
                              };
                              if(slot.stackNum > 0 && hasNum > 0 && cname != "")
                              {
                                 _core.view.getUI(ViewManager.PANEL_INPUT).showInputNum(Language.PLAYER_S[31],Language.PLAYER_S[31],targetNum,1,1,hasNum);
                              }
                           };
                           setTimeout(showNumPanel,500);
                        };
                        _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.CALLBACK_S[58] + splitChar + itemId,Language.PLAYER_S[19],targetName);
                        break;
                     case ItemConfig.WEDDING_INVITATION_1:
                     case ItemConfig.WEDDING_INVITATION_2:
                     case ItemConfig.WEDDING_INVITATION_3:
                        _core.remote.useWeddingBag(slotId);
                        break;
                     case ItemConfig.WEDDING_RED_BAG_1:
                        _core.remote.useRedBag(slotId);
                        break;
                     case ItemConfig.ITEM_RENAME_CARD:
                        rename = function(param1:String):void
                        {
                           if(_core.haveSpecialStr(param1))
                           {
                              Alert.show(Language.CHARACTORPANEL_S[11],"");
                              return;
                           }
                           if(_core.haveSpecialStr2(param1))
                           {
                              Alert.show(Language.CHARSELECTCANVAS_S[19],"");
                              return;
                           }
                           if(_core.haveBadWord(param1))
                           {
                              return;
                           }
                           _core.remote.changeNameByCard(param1);
                        };
                        _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.CHARACTORPANEL_S[9],Language.CHARACTORPANEL_S[10],rename);
                        break;
                     case ItemConfig.ITEM_HALLOWEEN_CARD:
                        _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.PLAYER_S[15],Language.PLAYER_S[16],useHalloweenCard);
                        break;
                     case ItemConfig.ITEM_SNOW_BALL:
                        _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.PLAYER_S[15],Language.PLAYER_S[16],useSnowBall);
                        break;
                     case ItemConfig.ITEM_FEAST_FOOL:
                        _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.PLAYER_S[15],Language.PLAYER_S[16],festfootleName);
                        break;
                     case ItemConfig.ITEM_CHANGE_SEX_CARD:
                        func = function(param1:CloseEvent):void
                        {
                           if(param1.detail == Alert.YES)
                           {
                              _core.remote.changeCharSex();
                           }
                        };
                        Alert.show(Language.CHANGE_SEX_CARD[0],"",Alert.YES | Alert.NO,null,func);
                        break;
                     case ItemConfig.ITEM_PET_GROW_POTION_A:
                     case ItemConfig.ITEM_PET_GROW_POTION_B:
                     case ItemConfig.ITEM_PET_GROW_POTION_C:
                     case ItemConfig.ITEM_PET_GROW_POTION_SUPER_A:
                     case ItemConfig.ITEM_PET_GROW_POTION_SUPER_B:
                     case ItemConfig.ITEM_PET_GROW_POTION_SUPER_C:
                     case ItemConfig.ITEM_PET_GROW_POTION_SUPER_D:
                     case ItemConfig.ITEM_PET_GROW_POTION_SUPER_E:
                        if(slot.stackNum > 1)
                        {
                           useMultiFunc = function(param1:uint):void
                           {
                              _core.remote.useMultiItem(targetType,petId,slotId,param1);
                           };
                           maxNum = getMaxPetGrowItemCanUse(petId,itemId);
                           if(maxNum > slot.stackNum)
                           {
                              maxNum = uint(slot.stackNum);
                           }
                           if(maxNum > 0)
                           {
                              _core.view.getUI(ViewManager.PANEL_INPUT).showInputNum(Language.PLAYER_S[31],Language.PLAYER_S[30],useMultiFunc,1,1,maxNum);
                           }
                        }
                        else if(slot.stackNum == 1)
                        {
                           _core.remote.useItem(targetType,petId,slotId);
                        }
                        break;
                     case ItemConfig.ITEM_WALLET:
                     case ItemConfig.ITEM_WALLET_SMALL:
                     case ItemConfig.ITEM_WALLET_BIG:
                     case ItemConfig.ITEM_GAONENG_ELEMENT_FRUIT:
                     case ItemConfig.ITEM_ELEMENT_FRUIT:
                     case ItemConfig.ITEM_YINGHUN_FRAGMENT:
                     case ItemConfig.ITEM_HEIYAOSHI_CHEST:
                     case ItemConfig.ITEM_MINGHUN_PACKAGE:
                     case ItemConfig.ITEM_RONGYAO_JADE:
                     case ItemConfig.ITEM_WHITEFUSHENQI_PACKAGE:
                     case ItemConfig.ITEM_GREENFUSHENQI_PACKAGE:
                     case ItemConfig.ITEM_TIANFUSHI_PACKAGE_HP:
                     case ItemConfig.ITEM_TIANFUSHI_PACKAGE_MP:
                     case ItemConfig.ITEM_TIANFUSHI_PACKAGE_DEFENCE:
                     case ItemConfig.ITEM_TIANFUSHI_PACKAGE_MDEFENCE:
                     case ItemConfig.ITEM_TIANFUSHI_PACKAGE_ATTACK:
                     case ItemConfig.ITEM_TIANFUSHI_PACKAGE_MATTACK:
                     case ItemConfig.ITEM_TIANFUSHI_PACKAGE_DODGE:
                     case ItemConfig.ITEM_TIANFUSHI_PACKAGE_HIT:
                     case ItemConfig.ITEM_TIANFUSHI_PACKAGE_RESICRITICAL:
                     case ItemConfig.ITEM_TIANFUSHI_PACKAGE_CRITICAL:
                     case ItemConfig.ITEM_TIANFUSHI_PACKAGE_DEBUFFSUCCRATE:
                     case ItemConfig.ITEM_TIANFUSHI_PACKAGE_DEBUFFPROP:
                     case ItemConfig.ITEM_TIANFUSHI_PACKAGE_COUNTER:
                     case ItemConfig.ITEM_TIANFUSHI_PACKAGE_SPEED:
                     case ItemConfig.ITEM_TIANFUSHI_PACKAGE_HURT:
                     case ItemConfig.ITEM_TIANFUSHI_PACKAGE_MAGICHURT:
                     case ItemConfig.ITEM_TIANFUSHI_PACKAGE_REDUDEFY:
                     case ItemConfig.ITEM_TIANFUSHI_PACKAGE_HURTADD:
                     case ItemConfig.ITEM_TIANFUSHI_PACKAGE_MAGICHURTADD:
                     case ItemConfig.ITEM_ZIRANZHILI:
                     case ItemConfig.ITEM_DOUCHONGYINGBI:
                     case ItemConfig.ITEM_YINGHUNSUIXIE:
                     case ItemConfig.ITEM_ZHANCHONGSHOUFU:
                     case ItemConfig.ITEM_ZHONGCHENGLINGPAI:
                     case ItemConfig.ITEM_HUANNENGFENCHENG:
                     case ItemConfig.ITEM_YONGHENGSHUIJING:
                     case ItemConfig.ITEM_FUWENJINGHU:
                     case ItemConfig.ITEM_FUWENSUIPIAN:
                     case ItemConfig.ITEM_YINSHISUIXUE:
                        if(slot.stackNum > 1)
                        {
                           useMultiFunc = function(param1:uint):void
                           {
                              _core.remote.useMultiItem(targetType,petId,slotId,param1);
                           };
                           _core.view.getUI(ViewManager.PANEL_INPUT).showInputNum(Language.PLAYER_S[31],Language.PLAYER_S[30],useMultiFunc,1,1,slot.stackNum);
                        }
                        else if(slot.stackNum == 1)
                        {
                           _core.remote.useItem(targetType,petId,slotId);
                        }
                        break;
                     default:
                        _core.remote.useItem(targetType,petId,slotId);
                  }
               }
               else
               {
                  _core.remote.useItem(targetType,petId,slotId);
               }
            }
         }
      }
      
      public function set exPoint(param1:Number) : void
      {
         var _loc2_:Object = this._1338617699exPoint;
         if(_loc2_ !== param1)
         {
            this._1338617699exPoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"exPoint",_loc2_,param1));
         }
      }
      
      public function set paPnt(param1:Number) : void
      {
         var _loc2_:Object = this._106404485paPnt;
         if(_loc2_ !== param1)
         {
            this._106404485paPnt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"paPnt",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get realSoulCrystal() : Number
      {
         return this._683269445realSoulCrystal;
      }
      
      public function enoughMoney(param1:String, param2:Number) : Boolean
      {
         if(_core.player)
         {
            if(_core.player[param1] >= param2)
            {
               return true;
            }
         }
         return false;
      }
      
      public function set petguardout(param1:Number) : void
      {
         var _loc2_:Object = this._1490547880petguardout;
         if(_loc2_ !== param1)
         {
            this._1490547880petguardout = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petguardout",_loc2_,param1));
         }
      }
      
      public function set stoneSealPoint(param1:Number) : void
      {
         var _loc2_:Object = this._292525742stoneSealPoint;
         if(_loc2_ !== param1)
         {
            this._292525742stoneSealPoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stoneSealPoint",_loc2_,param1));
         }
      }
      
      private function routeCopy(param1:Array) : Array
      {
         var _loc2_:Array = [];
         var _loc3_:ByteArray = new ByteArray();
         _loc3_.writeObject(param1);
         _loc3_.position = 0;
         return _loc3_.readObject() as Array;
      }
      
      private function seekNpc(param1:String) : void
      {
         var _loc2_:Object = null;
         if(_core.data.gameDataIndex2[GamePredef.TBL_NPC][param1])
         {
            for each(_loc2_ in _core.data.gameDataIndex2[GamePredef.TBL_NPC][param1])
            {
               if(_loc2_.fd > 0)
               {
                  _core.remote.useRadar(param1);
                  return;
               }
            }
            _core.sysBlueMsg(Language.PLAYER_S[25]);
            return;
         }
         _core.sysBlueMsg(Language.PLAYER_S[21]);
      }
      
      public function set xmCandy24(param1:Number) : void
      {
         var _loc2_:Object = this._1056511154xmCandy24;
         if(_loc2_ !== param1)
         {
            this._1056511154xmCandy24 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xmCandy24",_loc2_,param1));
         }
      }
      
      private function onlineReport(param1:TimerEvent) : void
      {
         _core.remote.onlineReport();
      }
      
      public function needToCheckBattle() : Boolean
      {
         var _loc2_:* = undefined;
         var _loc1_:Number = _core.player._posMapId;
         for(_loc2_ in this.safeCBMids)
         {
            if(safeCBMids[_loc2_] == _loc1_)
            {
               return true;
            }
         }
         return false;
      }
      
      public function useTransport(param1:String) : void
      {
         var _loc4_:Object = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         for each(_loc4_ in mapArr)
         {
            if(_loc4_.name == param1)
            {
               _loc2_ = int(_loc4_.id);
               _loc3_ = int(_loc4_.level);
               break;
            }
         }
         if(_loc2_ == 0)
         {
            _core.sysBlueMsg(Language.PLAYER_S[20]);
         }
         else
         {
            _core.remote.useTransport(_loc2_,true);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get magiccystallimit() : Number
      {
         return this._1183081836magiccystallimit;
      }
      
      public function set money(param1:Number) : void
      {
         var _loc2_:Object = this._104079552money;
         if(_loc2_ !== param1)
         {
            this._104079552money = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"money",_loc2_,param1));
         }
      }
      
      public function set goldBind(param1:Number) : void
      {
         var _loc2_:Object = this._2035869885goldBind;
         if(_loc2_ !== param1)
         {
            this._2035869885goldBind = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldBind",_loc2_,param1));
         }
      }
      
      private function footleName(param1:String) : void
      {
         _core.remote.useFootle(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get elementPnt() : Number
      {
         return this._575924634elementPnt;
      }
      
      public function set energyStone(param1:Number) : void
      {
         var _loc2_:Object = this._1829557571energyStone;
         if(_loc2_ !== param1)
         {
            this._1829557571energyStone = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energyStone",_loc2_,param1));
         }
      }
      
      public function set xcds2403p(param1:Number) : void
      {
         var _loc2_:Object = this._489540817xcds2403p;
         if(_loc2_ !== param1)
         {
            this._489540817xcds2403p = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xcds2403p",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get battleSprite() : Number
      {
         return this._2100767331battleSprite;
      }
      
      [Bindable(event="propertyChange")]
      public function get posCenterX() : int
      {
         return this._1590959535posCenterX;
      }
      
      [Bindable(event="propertyChange")]
      public function get pvePoint() : Number
      {
         return this._2053648975pvePoint;
      }
      
      [Bindable(event="propertyChange")]
      public function get posCenterY() : int
      {
         return this._1590959536posCenterY;
      }
      
      public function set couragePoint(param1:Number) : void
      {
         var _loc2_:Object = this._1966126374couragePoint;
         if(_loc2_ !== param1)
         {
            this._1966126374couragePoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"couragePoint",_loc2_,param1));
         }
      }
      
      public function set lottoBagLength(param1:String) : void
      {
         var _loc2_:Object = this._94078750lottoBagLength;
         if(_loc2_ !== param1)
         {
            this._94078750lottoBagLength = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lottoBagLength",_loc2_,param1));
         }
      }
      
      public function set groupAC(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._293427937groupAC;
         if(_loc2_ !== param1)
         {
            this._293427937groupAC = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"groupAC",_loc2_,param1));
         }
      }
      
      public function set realSoulWater(param1:Number) : void
      {
         var _loc2_:Object = this._1067362586realSoulWater;
         if(_loc2_ !== param1)
         {
            this._1067362586realSoulWater = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"realSoulWater",_loc2_,param1));
         }
      }
      
      public function set txkc2508p(param1:Number) : void
      {
         var _loc2_:Object = this._1466742551txkc2508p;
         if(_loc2_ !== param1)
         {
            this._1466742551txkc2508p = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txkc2508p",_loc2_,param1));
         }
      }
      
      public function getGroupMemberByCid(param1:Number) : Charactor
      {
         var _loc2_:* = undefined;
         for(_loc2_ in groupAC)
         {
            if(param1 == Charactor(groupAC[_loc2_]).id)
            {
               return Charactor(groupAC[_loc2_]);
            }
         }
         return null;
      }
      
      [Bindable(event="propertyChange")]
      public function get threePvpPnt() : Number
      {
         return this._634593770threePvpPnt;
      }
      
      public function set heiyaoshiPoint2(param1:Number) : void
      {
         var _loc2_:Object = this._2052063483heiyaoshiPoint2;
         if(_loc2_ !== param1)
         {
            this._2052063483heiyaoshiPoint2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"heiyaoshiPoint2",_loc2_,param1));
         }
      }
      
      public function set mysteryCrystal(param1:Number) : void
      {
         var _loc2_:Object = this._162163465mysteryCrystal;
         if(_loc2_ !== param1)
         {
            this._162163465mysteryCrystal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mysteryCrystal",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get decoSilver() : Number
      {
         return this._1691040230decoSilver;
      }
      
      [Bindable(event="propertyChange")]
      public function get heiyaoshiPoint() : Number
      {
         return this._481837591heiyaoshiPoint;
      }
      
      public function set dmbk2509p(param1:Number) : void
      {
         var _loc2_:Object = this._523115282dmbk2509p;
         if(_loc2_ !== param1)
         {
            this._523115282dmbk2509p = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dmbk2509p",_loc2_,param1));
         }
      }
      
      public function set npPnt(param1:Number) : void
      {
         var _loc2_:Object = this._105004308npPnt;
         if(_loc2_ !== param1)
         {
            this._105004308npPnt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"npPnt",_loc2_,param1));
         }
      }
      
      public function getMyLoopData(param1:Number) : Object
      {
         var _loc2_:Object = null;
         if(loopList)
         {
            for each(_loc2_ in loopList)
            {
               if(Boolean(_loc2_) && Number(_loc2_.qid) == param1)
               {
                  return _loc2_;
               }
            }
         }
         return null;
      }
      
      public function set moneyBind(param1:Number) : void
      {
         var _loc2_:Object = this._1714071267moneyBind;
         if(_loc2_ !== param1)
         {
            this._1714071267moneyBind = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moneyBind",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get expSkill() : Number
      {
         return this._1952114124expSkill;
      }
      
      public function set wisdonCrystal(param1:Number) : void
      {
         var _loc2_:Object = this._465052908wisdonCrystal;
         if(_loc2_ !== param1)
         {
            this._465052908wisdonCrystal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wisdonCrystal",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get realSoulStone() : Number
      {
         return this._1070495180realSoulStone;
      }
      
      public function useTransportGroup(param1:String) : void
      {
         var _loc4_:Object = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         for each(_loc4_ in mapArr)
         {
            if(_loc4_.name == param1)
            {
               _loc2_ = int(_loc4_.id);
               _loc3_ = int(_loc4_.level);
               break;
            }
         }
         if(_loc2_ == 0)
         {
            _core.sysBlueMsg(Language.PLAYER_S[20]);
         }
         else
         {
            _core.remote.useTransportGroup(_loc2_);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shishangdian() : Number
      {
         return this._1093046749shishangdian;
      }
      
      [Bindable(event="propertyChange")]
      public function get heroScore2507() : Number
      {
         return this._508024386heroScore2507;
      }
      
      public function set mapData(param1:Object) : void
      {
         _mapData = param1;
         mapSafe = _mapData.safeFlag > 0;
      }
      
      public function behavior(param1:Number) : void
      {
         _core.remote.behavior(param1);
      }
      
      public function set worldCupGoldPoint(param1:Number) : void
      {
         var _loc2_:Object = this._540145372worldCupGoldPoint;
         if(_loc2_ !== param1)
         {
            this._540145372worldCupGoldPoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"worldCupGoldPoint",_loc2_,param1));
         }
      }
      
      public function set groupRequestAC(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._99509454groupRequestAC;
         if(_loc2_ !== param1)
         {
            this._99509454groupRequestAC = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"groupRequestAC",_loc2_,param1));
         }
      }
      
      public function set summerGameScore2015(param1:Number) : void
      {
         var _loc2_:Object = this._1933665075summerGameScore2015;
         if(_loc2_ !== param1)
         {
            this._1933665075summerGameScore2015 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"summerGameScore2015",_loc2_,param1));
         }
      }
      
      private function trackName(param1:String) : void
      {
         _core.remote.useTrack(param1);
      }
      
      public function getEmptyBagSlotNum() : int
      {
         var _loc3_:Object = null;
         var _loc1_:int = _core.player.bagSlotNum * 30;
         var _loc2_:int = 0;
         for each(_loc3_ in _core.data.sList)
         {
            if(Boolean(_loc3_) && Boolean(_loc3_.sid > GamePredef.SLOT_SID_BAG[0]) && _loc3_.sid <= GamePredef.SLOT_SID_BAG[_core.player.bagSlotNum])
            {
               _loc2_++;
            }
         }
         return _loc1_ - _loc2_;
      }
      
      [Bindable(event="propertyChange")]
      public function get magiccystalrec() : Number
      {
         return this._747604609magiccystalrec;
      }
      
      [Bindable(event="propertyChange")]
      public function get starPnt() : Number
      {
         return this._1897219452starPnt;
      }
      
      [Bindable(event="propertyChange")]
      public function get paPnt() : Number
      {
         return this._106404485paPnt;
      }
      
      public function set soulPnt(param1:Number) : void
      {
         var _loc2_:Object = this._2022073533soulPnt;
         if(_loc2_ !== param1)
         {
            this._2022073533soulPnt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soulPnt",_loc2_,param1));
         }
      }
      
      public function set realSoulCrystal(param1:Number) : void
      {
         var _loc2_:Object = this._683269445realSoulCrystal;
         if(_loc2_ !== param1)
         {
            this._683269445realSoulCrystal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"realSoulCrystal",_loc2_,param1));
         }
      }
      
      public function isTakeQuest(param1:Number) : Boolean
      {
         return _core.view.getUI(ViewManager.PANEL_QUESTMANAGER).isTakeQuest(param1);
      }
      
      override public function closeTo(param1:int, param2:int) : void
      {
         var _loc3_:Array = null;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:Object = null;
         checkWalkable();
         if(walkable && !_inBattle)
         {
            _loc4_ = null;
            if(flyingState != GamePredef.FLYING_STATE_TAKING_OFF && flyingState != GamePredef.FLYING_STATE_IN_THE_AIR)
            {
               _loc4_ = normalView.hitTestLayer;
            }
            else
            {
               _loc5_ = _core.view.getUI(ViewManager.STAGE_MAIN).mapContainer;
               if(param1 > _loc5_.mwidth || param2 > _loc5_.mheight)
               {
                  return;
               }
            }
            _loc3_ = _core.move.getCloseToRoute(normalView.posX,normalView.posY,param1,param2,_loc4_);
            moveRoute = _loc3_;
            _lastMoveRoute = routeCopy(_loc3_);
            ++_continuousMoveCount;
            _core.remote.udcr({
               "id":id,
               "route":moveRoute,
               "x":normalView.posX,
               "y":normalView.posY
            });
            if(Boolean(moveRoute) && moveRoute.length > 0)
            {
               _loc6_ = _core.view.getUI(ViewManager.PANEL_MAP);
               _loc6_.drawRoute(normalView.posX,normalView.posY,param1,param2,moveRoute);
            }
            walk();
         }
      }
      
      private function antiFootleName(param1:String) : void
      {
         _core.remote.useAntiFootle(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get dogM() : Number
      {
         return this._3089041dogM;
      }
      
      [Bindable(event="propertyChange")]
      public function get stoneSealPoint() : Number
      {
         return this._292525742stoneSealPoint;
      }
      
      public function canTakeQuest(param1:Number) : Boolean
      {
         var _loc3_:Object = null;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         if(isTakeQuest(param1))
         {
            return false;
         }
         if(isFinishQuest(param1))
         {
            return false;
         }
         var _loc2_:Object = _core.data.getData(GamePredef.TBL_QUEST,param1);
         if(_loc2_)
         {
            if(Boolean(_loc2_.isRebirth) && Number(_loc2_.isRebirth) > 0)
            {
               if(_core.player.levelRe > _loc2_.maxLevel || _core.player.levelRe < _loc2_.minLevel)
               {
                  return false;
               }
            }
            else if(!_loc2_.isRebirth || Number(_loc2_.isRebirth) == 0)
            {
               if(_core.player.level > _loc2_.maxLevel || _core.player.level < _loc2_.minLevel)
               {
                  return false;
               }
            }
            if(_core.player.gender != _loc2_.gender && _loc2_.gender != GamePredef.GENDER_NONE)
            {
               return false;
            }
            if(_loc2_.reqClass != "all" && _loc2_.reqClass.indexOf("|" + _core.player.classId + "|") < 0)
            {
               return false;
            }
            _loc3_ = _core.data.getQuestPre(param1);
            _loc4_ = false;
            if(_loc3_)
            {
               for(_loc5_ in _loc3_)
               {
                  if(!_loc3_[_loc5_])
                  {
                     continue;
                  }
                  switch(Number(_loc3_[_loc5_].kind))
                  {
                     case GamePredef.QUEST_PRE_ITEM:
                        if(!_core.haveItem(_loc3_[_loc5_].type,_loc3_[_loc5_].itemId,_loc3_[_loc5_].num))
                        {
                           return false;
                        }
                        break;
                     case GamePredef.QUEST_PRE_QUEST:
                        if(_loc2_.preQuestType == 1)
                        {
                           if(!isFinishQuest(_loc3_[_loc5_].itemId))
                           {
                              return false;
                           }
                        }
                        else if(_loc2_.preQuestType == 2)
                        {
                           if(isFinishQuest(_loc3_[_loc5_].itemId))
                           {
                              _loc4_ = true;
                           }
                        }
                  }
               }
            }
            if(_loc2_.preQuestType == 2 && !_loc4_)
            {
               return false;
            }
            return true;
         }
         return false;
      }
      
      public function mapTrans(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:* = undefined;
         if(param1 <= 0 || !param1)
         {
            return;
         }
         if(isLeader)
         {
            _loc2_ = true;
            for(_loc3_ in groupAC)
            {
               if(Boolean(Charactor(groupAC[_loc3_])) && Boolean(!Charactor(groupAC[_loc3_]).groupAfk) && Boolean(groupAC[_loc3_].id) && _core.player.id != groupAC[_loc3_].id)
               {
                  transGroup(param1);
                  _loc2_ = false;
                  break;
               }
            }
            if(_loc2_)
            {
               transSingle(param1);
            }
         }
         else
         {
            transSingle(param1);
         }
      }
      
      public function set petPK(param1:Number) : void
      {
         var _loc2_:Object = this._106557274petPK;
         if(_loc2_ !== param1)
         {
            this._106557274petPK = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petPK",_loc2_,param1));
         }
      }
      
      public function getEmptyBankSlotNum() : int
      {
         var _loc3_:Object = null;
         var _loc1_:int = _core.player.bankSlotNum * 30;
         var _loc2_:int = 0;
         for each(_loc3_ in _core.data.sList)
         {
            if(Boolean(_loc3_) && Boolean(_loc3_.sid > GamePredef.SLOT_SID_BANK[0]) && _loc3_.sid <= GamePredef.SLOT_SID_BANK[_core.player.bankSlotNum])
            {
               _loc2_++;
            }
         }
         return _loc1_ - _loc2_;
      }
      
      override public function routeTo(param1:int, param2:int) : void
      {
         var _loc3_:Array = null;
         var _loc4_:* = undefined;
         var _loc5_:Point = null;
         var _loc6_:Object = null;
         checkWalkable();
         if(walkable && !_inBattle && Boolean(normalView))
         {
            _loc4_ = null;
            if(flyingState != GamePredef.FLYING_STATE_TAKING_OFF && flyingState != GamePredef.FLYING_STATE_IN_THE_AIR)
            {
               _loc4_ = normalView.hitTestLayer;
            }
            _loc3_ = _core.move.getRoute(normalView.posX,normalView.posY,param1,param2,_loc4_);
            moveRoute = _loc3_;
            _lastMoveRoute = routeCopy(_loc3_);
            ++_continuousMoveCount;
            if(Boolean(moveRoute) && moveRoute.length == 1)
            {
               _loc5_ = new Point(moveRoute[0][0],moveRoute[0][1]);
               if(Point.distance(_lp,_loc5_) < UPDATE_DIS)
               {
                  return;
               }
            }
            _core.remote.udcr({
               "id":id,
               "route":moveRoute,
               "x":normalView.posX,
               "y":normalView.posY
            });
            if(Boolean(moveRoute) && moveRoute.length > 0)
            {
               _loc6_ = _core.view.getUI(ViewManager.PANEL_MAP);
               _loc6_.drawRoute(normalView.posX,normalView.posY,param1,param2,moveRoute);
            }
            _lastPlayerPosition.time = new Date().getTime();
            _lastPlayerPosition.mapId = this.posMapId;
            _lastPlayerPosition.posX = normalView.posX;
            _lastPlayerPosition.posY = normalView.posY;
            walk();
         }
      }
      
      private function useHalloweenCard(param1:String) : void
      {
         _core.remote.useHalloweenCard(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get energyStone() : Number
      {
         return this._1829557571energyStone;
      }
      
      [Bindable(event="propertyChange")]
      public function get couragePoint() : Number
      {
         return this._1966126374couragePoint;
      }
      
      public function set magiccystallimit(param1:Number) : void
      {
         var _loc2_:Object = this._1183081836magiccystallimit;
         if(_loc2_ !== param1)
         {
            this._1183081836magiccystallimit = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"magiccystallimit",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get groupAC() : ArrayCollection
      {
         return this._293427937groupAC;
      }
      
      [Bindable(event="propertyChange")]
      public function get realSoulWater() : Number
      {
         return this._1067362586realSoulWater;
      }
      
      public function enoughMoneyAuto(param1:int, param2:Number) : Object
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1 == 1)
         {
            _loc3_ = int(GamePredef.GLOBAL_SETTING.defaultMoney);
            switch(_loc3_)
            {
               case 1:
                  return enoughMoney("moneyBind",param2);
               case 2:
                  return enoughMoney("money",param2);
            }
         }
         else if(param1 == 2)
         {
            _loc4_ = int(GamePredef.GLOBAL_SETTING.defaultGold);
            switch(_loc4_)
            {
               case 1:
                  return enoughMoney("goldBind",param2);
               case 2:
                  return enoughMoney("gold",param2);
            }
         }
         return false;
      }
      
      [Bindable(event="propertyChange")]
      public function get dmbk2509p() : Number
      {
         return this._523115282dmbk2509p;
      }
      
      [Bindable(event="propertyChange")]
      public function get wisdonCrystal() : Number
      {
         return this._465052908wisdonCrystal;
      }
      
      public function isTakeLoop(param1:Number) : Boolean
      {
         var _loc3_:Object = null;
         var _loc2_:Object = getMyLoopData(param1);
         if(_loc2_)
         {
            _loc3_ = _core.data.getData(GamePredef.TBL_QUEST_LOOP,_loc2_.qid);
            if(_loc3_)
            {
               if(Number(_loc2_.finished) <= 0 && Number(_loc2_.ft) < _loc3_.num)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function get mapData() : Object
      {
         return _mapData;
      }
      
      [Bindable(event="propertyChange")]
      public function get groupRequestAC() : ArrayCollection
      {
         return this._99509454groupRequestAC;
      }
      
      public function set elementPnt(param1:Number) : void
      {
         var _loc2_:Object = this._575924634elementPnt;
         if(_loc2_ !== param1)
         {
            this._575924634elementPnt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"elementPnt",_loc2_,param1));
         }
      }
      
      public function set tkyyhpointV2(param1:Number) : void
      {
         var _loc2_:Object = this._1589513115tkyyhpointV2;
         if(_loc2_ !== param1)
         {
            this._1589513115tkyyhpointV2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tkyyhpointV2",_loc2_,param1));
         }
      }
      
      public function set battleSprite(param1:Number) : void
      {
         var _loc2_:Object = this._2100767331battleSprite;
         if(_loc2_ !== param1)
         {
            this._2100767331battleSprite = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battleSprite",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get summerGameScore2015() : Number
      {
         return this._1933665075summerGameScore2015;
      }
      
      private function transTo(param1:int, param2:Boolean = false, param3:Boolean = false) : void
      {
         if(param2)
         {
            _core.remote.useTransportGroup(param1);
         }
         else
         {
            _core.remote.useTransport(param1,param3);
         }
         _core.view.hide(ViewManager.TOOLTIP_MAP);
         _core.view.hide(ViewManager.POPU_WORLDMAP);
         _core.view.getUI(ViewManager.TOOLTIP_PET).hide();
         _core.view.getUI(ViewManager.TOOLTIP_QUEST).hide();
      }
      
      public function set worldCupPoint(param1:Number) : void
      {
         var _loc2_:Object = this._1654691932worldCupPoint;
         if(_loc2_ !== param1)
         {
            this._1654691932worldCupPoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"worldCupPoint",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get soulPnt() : Number
      {
         return this._2022073533soulPnt;
      }
      
      public function set medalExp(param1:Number) : void
      {
         var _loc2_:Object = this._907859034medalExp;
         if(_loc2_ !== param1)
         {
            this._907859034medalExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medalExp",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petPK() : Number
      {
         return this._106557274petPK;
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         petPK = param1.petPK;
         dogM = param1.dogM;
         btPnt = param1.btPnt;
         cbM = param1.cbM;
         lottoBagLength = param1.lotooBagLength;
         lotteryBagLength = param1.lotteryBagLength;
         achPnt = param1.achPnt;
         paPnt = param1.paPnt;
         starPnt = param1.starPnt;
         soulPnt = param1.soulPnt;
         threePvpPnt = param1.threePvpPnt;
         elementPnt = param1.elementPnt;
         npPnt = param1.npPnt;
         summerGameScore2015 = param1.summerGameScore2015;
         pvePoint = param1.pvePoint;
         stoneSealPoint = param1.stoneSealPoint;
         activePetObject = param1.activePetObject;
         evolutionPetObject = param1.activePetObject;
         wisdonCrystal = param1.wisdonCrystal;
         couragePoint = param1.couragePoint;
         dressInfo = JSONUtil.JSONfy(param1.dressInfo);
         medalExp = param1.medalExp;
         mysteryCrystal = param1.mysteryCrystal;
         heroScore2507 = param1.heroScore2507;
         xmCandy24 = param1.xmCandy;
         xcds2403p = param1.xcdsp;
         txkc2508p = param1.txkcp;
         dmbk2509p = param1.dmbkp;
         tkyyhpointV2 = param1.tkyyhp;
         shishangdian = param1.shishangdian;
         decoSilver = param1.decoSilver;
         runeExp = param1.runeExp;
         heiyaoshiPoint = param1.heiyaoshiPoint;
         heiyaoshiPoint2 = param1.heiyaoshiPoint2;
         realSoulStone = param1.realSoulStone;
         realSoulCrystal = param1.realSoulCrystal;
         realSoulWater = param1.realSoulWater;
         yijieElement = param1.yijieElement;
         warSprite = param1.warSprite;
         battleSprite = param1.battleSprite;
         monsterHeart = param1.monsterHeart;
         mhjingshi = param1.mhjingshi;
         petguardout = param1.petguardout;
         petguardin = param1.petguardin;
         awakenLevel = param1.hasOwnProperty("awakenLevel") ? int(param1.awakenLevel) : 0;
         awakenAdd = param1.hasOwnProperty("awakenAdd") ? int(param1.awakenAdd) : 0;
         awakenPoint = param1.hasOwnProperty("awakenPoint") ? int(param1.awakenPoint) : 0;
         awakenPointUsed = param1.hasOwnProperty("awakenPointUsed") ? int(param1.awakenPointUsed) : 0;
         awakenPointDict = param1.awakenPointDict;
         trainSoulLvl = param1.trainSoulLvl;
         trainSoulExp = param1.trainSoulExp;
         contractPet = param1.contractPet;
         magiccystallimit = param1.magiccystallimit;
         magiccystalpre = param1.magiccystalpre;
         magiccystalrec = param1.magiccystalrec;
         energyStone = param1.energyStone;
         newGrade = param1.newGrade;
      }
      
      public function set posCenterX(param1:int) : void
      {
         var _loc2_:Object = this._1590959535posCenterX;
         if(_loc2_ !== param1)
         {
            this._1590959535posCenterX = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"posCenterX",_loc2_,param1));
         }
      }
      
      public function set posCenterY(param1:int) : void
      {
         var _loc2_:Object = this._1590959536posCenterY;
         if(_loc2_ !== param1)
         {
            this._1590959536posCenterY = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"posCenterY",_loc2_,param1));
         }
      }
      
      public function set pvePoint(param1:Number) : void
      {
         var _loc2_:Object = this._2053648975pvePoint;
         if(_loc2_ !== param1)
         {
            this._2053648975pvePoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pvePoint",_loc2_,param1));
         }
      }
      
      public function checkChatTime() : Boolean
      {
         var _loc1_:Number = new Date().getTime();
         if(_loc1_ > _lastChatTime + GamePredef.CHAT_INTERVAL * 1000)
         {
            _lastChatTime = _loc1_;
            return true;
         }
         return false;
      }
      
      private function getMaxPetGrowItemCanUse(param1:uint, param2:uint) : uint
      {
         var _loc4_:Object = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:Number = NaN;
         var _loc8_:uint = 0;
         var _loc3_:uint = uint(GamePredef.PET_GROW_ITEM_ADD_EXP[param2]);
         if(Boolean(petList) && Boolean(petList[param1]) && Boolean(_loc3_))
         {
            _loc4_ = petList[param1];
            _loc5_ = PetLogic.expToLv(_loc4_.exp);
            _loc6_ = level + 5;
            if(_loc6_ > GamePredef.MAX_LEVEL)
            {
               _loc6_ = uint(GamePredef.MAX_LEVEL);
            }
            if(_loc5_ < _loc6_)
            {
               _loc7_ = PetLogic.lvToExp(_loc6_) - _loc4_.exp;
               return uint(Math.ceil(_loc7_ / _loc3_));
            }
         }
         return 0;
      }
      
      public function set groupList(param1:Object) : void
      {
         var _loc3_:Charactor = null;
         groupAC = new ArrayCollection();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:Object = param1.head;
         while(_loc2_)
         {
            if(Boolean(_core.groupMemberListArr) && Boolean(_core.groupMemberListArr[Number(_loc2_.obj)]))
            {
               groupAC.addItem(_core.groupMemberListArr[Number(_loc2_.obj)]);
            }
            else
            {
               _loc3_ = _core.getCharactor(Number(_loc2_.obj));
               if(_loc3_)
               {
                  groupAC.addItem(_loc3_);
               }
            }
            _loc2_ = _loc2_.next;
         }
      }
      
      public function set lotteryBagLength(param1:String) : void
      {
         var _loc2_:Object = this._1086658619lotteryBagLength;
         if(_loc2_ !== param1)
         {
            this._1086658619lotteryBagLength = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lotteryBagLength",_loc2_,param1));
         }
      }
      
      public function getPetNumAll() : int
      {
         var _loc2_:Object = null;
         var _loc1_:Number = 0;
         if(petList)
         {
            for each(_loc2_ in petList)
            {
               if(_loc2_)
               {
                  _loc1_++;
               }
            }
         }
         return _loc1_;
      }
      
      public function set warSprite(param1:Number) : void
      {
         var _loc2_:Object = this._1789520845warSprite;
         if(_loc2_ !== param1)
         {
            this._1789520845warSprite = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"warSprite",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tkyyhpointV2() : Number
      {
         return this._1589513115tkyyhpointV2;
      }
      
      public function set cbM(param1:Number) : void
      {
         var _loc2_:Object = this._98254cbM;
         if(_loc2_ !== param1)
         {
            this._98254cbM = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cbM",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get worldCupPoint() : Number
      {
         return this._1654691932worldCupPoint;
      }
      
      [Bindable(event="propertyChange")]
      public function get medalExp() : Number
      {
         return this._907859034medalExp;
      }
      
      public function updateSafeCBMids(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(param1 == null)
         {
            return;
         }
         this.safeCBMids.length = 0;
         for(_loc2_ in param1)
         {
            this.safeCBMids.push(param1[_loc2_]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lotteryBagLength() : String
      {
         return this._1086658619lotteryBagLength;
      }
      
      private function checkWalkable() : void
      {
         var func:Function = null;
         if(isDead && _core.hasItemNum(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_STAND_IN_BABY) < 1 && _core.player.posMapId != 110)
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.CANCEL)
               {
                  _core.remote.toSafe();
               }
               else
               {
                  _core.remote.reliveUseItem();
               }
            };
            Alert.show(Language.PLAYER_S[0],"",Alert.OK | Alert.CANCEL,null,func);
            walkable = false;
         }
         else if(isDead && _core.player.posMapId == 110)
         {
            Alert.show("你还处在死亡状态，无法行动","",Alert.OK,null);
            walkable = false;
         }
         else
         {
            if(inGroup && !isLeader && !groupAfk)
            {
               walkable = false;
               _core.sysMidNote(Language.PLAYER_S[1]);
               say(Language.PLAYER_S[2],GamePredef.MSG_CHANNEL_GROUP);
            }
            else if(taskSweep)
            {
               walkable = false;
               _core.sysMidNote(Language.TASKSWEEPPANEL_U[16]);
            }
            else
            {
               walkable = true;
            }
            if(isHanged)
            {
               walkable = false;
            }
         }
      }
      
      public function checkWorldChatTime() : Boolean
      {
         var _loc1_:Number = new Date().getTime();
         if(_loc1_ > _lastWorldChatTime + GamePredef.CHAT_WORLD_INTERVAL * 1000)
         {
            _lastWorldChatTime = _loc1_;
            return true;
         }
         return false;
      }
      
      public function set threePvpPnt(param1:Number) : void
      {
         var _loc2_:Object = this._634593770threePvpPnt;
         if(_loc2_ !== param1)
         {
            this._634593770threePvpPnt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"threePvpPnt",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cbM() : Number
      {
         return this._98254cbM;
      }
      
      public function enoughBank(param1:int) : Boolean
      {
         if(getEmptyBankSlotNum() >= param1)
         {
            return true;
         }
         return false;
      }
      
      [Bindable(event="propertyChange")]
      public function get warSprite() : Number
      {
         return this._1789520845warSprite;
      }
   }
}

