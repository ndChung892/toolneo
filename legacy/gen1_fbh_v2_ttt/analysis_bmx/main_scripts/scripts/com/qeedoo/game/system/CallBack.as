package com.qeedoo.game.system
{
   import com.qeedoo.game.config.Debug;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.event.GameDataEvent;
   import com.qeedoo.game.logic.BattleServer;
   import com.qeedoo.game.object.Charactor;
   import com.qeedoo.game.object.Npc;
   import com.qeedoo.game.object.Pet;
   import com.qeedoo.game.object.Player;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.resource.AbstractGameRes;
   import com.qeedoo.game.ui.IPanelUI;
   import com.qeedoo.game.ui.ISlot;
   import com.qeedoo.game.utils.*;
   import com.qeedoo.game.view.ViewManager;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   import flash.utils.setTimeout;
   import mx.collections.ArrayCollection;
   import mx.controls.Alert;
   import mx.core.ByteArrayAsset;
   import mx.core.IUITextField;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   
   public class CallBack
   {
      
      private var _pvpResAlert:Alert;
      
      private var _core:Core;
      
      private var agreeFuncEnable:Boolean = false;
      
      private var last_diray_alert_time:Date;
      
      private var disbondBroFunEnable:Boolean = false;
      
      private var accpetBroFunEnable:Boolean = false;
      
      public function CallBack()
      {
         super();
         _core = Core.getInstance();
      }
      
      public function onBattleIncome(param1:Object) : void
      {
      }
      
      public function throwTo(param1:Object) : void
      {
         var _loc2_:Charactor = _core.getCharactor(param1.cid);
         var _loc3_:Charactor = _core.getCharactor(param1.tid);
         if(Boolean(_loc2_) && Boolean(_loc3_))
         {
            _loc2_.view.bulletTo(param1.resCode,_loc3_.view);
            _loc2_.view.faceToTarget(_loc3_.view);
            _loc2_.view.behavior(AbstractGameRes.BH_BREATH_SLOW);
            _loc2_.view.behavior(AbstractGameRes.BH_ATTACK);
            _loc3_.view.faceToTarget(_loc2_.view);
            _loc3_.view.behavior(AbstractGameRes.BH_BREATH_SLOW);
            _loc3_.view.behavior(AbstractGameRes.BH_HURT);
         }
      }
      
      public function onGetArenaLogActivity(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_PET_ARENA_ACTIVITY).onGetArenaLog(param1);
      }
      
      public function onExAwardPointToGoldBind(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_EXCHANGE).onExAwardPointToGoldBind(param1);
      }
      
      public function initShowLovePanel() : void
      {
         var _loc1_:Object = null;
         _loc1_ = _core.view.getUI(ViewManager.PANEL_SHOW_LOVE);
         _loc1_.visible = true;
      }
      
      public function onBossHpChanged(param1:Number) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_WB_BATTLEAUTO);
         _loc2_.changeBossHp(param1);
      }
      
      public function tripleTwonTurnInfo(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_TRIPLE_TOWN);
         _loc2_ && _loc2_.tripleTwonTurnInfo(param1);
      }
      
      public function onCreateNpcs(param1:Object) : void
      {
         _core.scene.setNpcList(param1);
      }
      
      public function onCreateChatPanel(param1:Object) : void
      {
         _core.view.getUI(ViewManager.MAIN_CHAT).onCreateChatPanel(param1);
      }
      
      public function onCharTeleport2(param1:Object) : void
      {
         var _loc2_:Number = Number(param1.cid);
         var _loc3_:int = int(param1.posX);
         var _loc4_:int = int(param1.posY);
         var _loc5_:Charactor = _core.getCharactor(_loc2_);
         _loc5_.posX = _loc3_;
         _loc5_.posY = _loc4_;
         _loc5_.view.posX = _loc3_;
         _loc5_.view.posY = _loc4_;
         if(_loc5_ == _core.player)
         {
            _core.view.getUI(ViewManager.STAGE_MAIN).centerTo(_loc3_,_loc4_);
         }
      }
      
      public function onGetFirstOccupyAward(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_FIRST_AWARD);
         if(_loc2_)
         {
            _loc2_.onGetFirstOccupyAward(param1);
         }
      }
      
      public function onApplyListChange(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_GROUP_RECRUIT_DETAIL);
         if(param1.f)
         {
            _loc2_.onSomeoneApply(param1.d);
            if(param1.leaderId == _core.player.id)
            {
               _loc3_ = String(Language.GROUP_RECRUIT_PANEL_S[34].toString().replace("{name}",param1.d.name));
               onMidNote(_loc3_);
               !_loc2_.visible && _core.addWarn({
                  "warnType":GamePredef.WARN_TYPE_GROUP_APPLY,
                  "name":param1.d.name
               });
            }
         }
         else
         {
            _loc2_.onDeleteApply(param1.d);
         }
      }
      
      public function validateSublime(param1:Number, param2:Number, param3:int) : void
      {
         var _loc4_:Object = null;
         _loc4_ = _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC);
         _loc4_ && _loc4_.validateSublime(param1,param2,param3);
      }
      
      public function onReqEnterCrossPK(param1:Array) : void
      {
         _core.battleServer.onReqEnterCrossPK(param1);
      }
      
      public function onChooseCharactor(param1:Object) : void
      {
         var _loc5_:Object = null;
         var _loc13_:Array = null;
         var _loc14_:uint = 0;
         var _loc15_:Class = null;
         var _loc16_:ByteArrayAsset = null;
         var _loc17_:XML = null;
         _core.firstLoginFlag = 1;
         var _loc2_:Object = _core.view.getUI(ViewManager.FORE_C_C);
         if(_loc2_)
         {
            _loc2_.currentState = "choose";
         }
         if(_core.logined)
         {
            return;
         }
         _core.logined = true;
         if(param1.cData.vipT < 0 && param1.cData.SpeT > 0)
         {
            param1.cData.vipT = param1.cData.SpeT;
         }
         var _loc3_:Object = param1.cData;
         var _loc4_:Object = param1.cProp;
         _core.timeLag = param1.serverTime - new Date().getTime();
         _core.setShowPetId(_loc3_.showPetId);
         _core.setBloodBag(_loc3_.ep);
         _core.cid = _loc3_.id;
         _core.ready = false;
         _core.state = GamePredef.ST_NORMAL;
         _core.view.getUI(ViewManager.PANEL_SKILLMANAGER).reset();
         _core.view.initView(ViewManager.STAGE_MAIN);
         _core.view.show(ViewManager.STAGE_CONTAINER);
         _core.player = _core.createPlayer(_loc3_);
         _core.player.property = _loc4_;
         _core.player.equipActiveList = param1.equipActiveList;
         _core.player.skillList = param1.s;
         _core.player.guild = param1.guild;
         _core.player.gData = param1.gData;
         _core.player.offlineTime = param1.offlineTime;
         _core.data.initSlotData(param1.i);
         _core.player.achieveLog = param1.achieveLog;
         _core.player.achieveReqLog = param1.achieveReqLog;
         if(param1.guild != null)
         {
            _core.data.initGuildSlotData(param1.gi);
         }
         _core.player.qn = param1.qn;
         _core.player.maxActpoint = _loc3_.maxActPoint;
         _core.player.maxVigor = _loc3_.maxVigor;
         if(param1.cp)
         {
            _core.player.cpid = param1.cp;
         }
         GamePredef.interfaceSetting = param1.interfaceData;
         _core.view.getUI(ViewManager.STAGE_BATTLE).useEffect = !GamePredef.GLOBAL_SETTING["he"];
         _core.view.getUI(ViewManager.STAGE_BATTLE).useModel = !GamePredef.GLOBAL_SETTING["hm"];
         GamePredef.GLOBAL_SETTING["url"] = param1.bossKey.url;
         GamePredef.GLOBAL_SETTING["title"] = param1.bossKey.title;
         if(GamePredef.GLOBAL_SETTING["cf"])
         {
            _core.setFrameRate(GamePredef.GLOBAL_FRAME_RATE_20);
         }
         _core.player.isLockedUB = GamePredef.GLOBAL_SETTING["ubl"];
         _core.view.initView(ViewManager.MAIN_SYS);
         _core.getTemplateData(GamePredef.TBL_EQUIPT_INSTANCE,GamePredef.GLOBAL_SETTING["glid"],true);
         if(Boolean(_loc3_.inBattleServer) && !_core.battleServer.inBattleServer)
         {
            _core.battleServer.enterCrossBattle();
         }
         else if(!_loc3_.inBattleServer && _core.battleServer.inBattleServer)
         {
            _core.battleServer.leaveCrossBattle();
            _core.remote.sceneLogin();
         }
         else
         {
            _core.remote.sceneLogin();
         }
         _core.view.hide(ViewManager.UI_LOGIN);
         _core.view.hide(ViewManager.FORE_C_C);
         _core.view.hide(ViewManager.FORE_L_R);
         _core.view.hide(ViewManager.POPU_WAIT);
         _core.view.show(ViewManager.UI_SHADE);
         _core.view.show(ViewManager.UI_MAIN);
         _core.view.show(ViewManager.UI_PANEL);
         _core.view.show(ViewManager.UI_TOOLTIP);
         _core.view.show(ViewManager.UI_POPUP);
         _core.view.show(ViewManager.MAIN_AWARD_WARN);
         _core.initMainUI();
         if(!_core.battleServer.inBattleServer)
         {
            _core.remote.getRepeatSysMsg();
            _core.view.getUI(ViewManager.MAIN_CHAT).headline.htmlText = "";
            _core.remote.getHeadline();
         }
         _core.view.getUI(ViewManager.PANEL_GAMEINTRO).visible = true;
         _core.view.getUI(ViewManager.PANEL_GAMEINTRO).autoClick(8);
         _core.view.getUI(ViewManager.PANEL_GAMEINTRO).hide();
         if(Boolean(_loc5_ = _core.view.getUI(ViewManager.DAILY_ACTIVITY)) && Boolean(param1.showDailyAct))
         {
            _loc5_.vs.selectedIndex = 1;
            _loc5_.visible = true;
            _loc5_.tabBtnClick(1);
         }
         if(param1.ifShowJXHDCircleByASI)
         {
            _core.view.getUI(ViewManager.MAIN_ACTIVITY).addJXHDCircle();
         }
         if(Boolean(_core.player) && _core.player.posMapId == 110)
         {
            _loc13_ = [ViewManager.MAIN_ACTIVITY,ViewManager.MAIN_MINIMAP,ViewManager.MAIN_QUEST_GUIDE];
            for each(_loc14_ in _loc13_)
            {
               _loc5_ = _core.view.getUI(_loc14_);
               if(_loc5_)
               {
                  if(_loc14_ == ViewManager.MAIN_QUEST_GUIDE)
                  {
                     _loc5_.hide();
                  }
                  else
                  {
                     _loc5_.visible = false;
                  }
               }
            }
            _loc5_ = _core.view.getUI(ViewManager.PANEL_BLOODY_BATTLE_INFO);
            if(_loc5_)
            {
               _loc5_.show();
            }
         }
         else
         {
            _loc5_ = _core.view.getUI(ViewManager.PANEL_BLOODY_BATTLE_INFO);
            if(_loc5_)
            {
               _loc5_.visible = false;
            }
         }
         _core.view.getUI(ViewManager.PANEL_QUESTMANAGER).initQuestGuide();
         _core.view.getUI(ViewManager.MAIN_ACTIVITY).initView(param1.startedActList);
         _core.remote.checkDoubleExpTime();
         if(_core.view.getUI(ViewManager.PANEL_BATTLESET).isInited)
         {
            _core.view.getUI(ViewManager.PANEL_BATTLESET).updateView();
         }
         if(_core.view.getUI(ViewManager.PANEL_PRODUCT).isInited)
         {
            _core.view.getUI(ViewManager.PANEL_PRODUCT).updateView();
         }
         var _loc6_:Object = _core.player.mapData;
         _core.newPlayerGuideOpen = param1.guideOpen;
         _core.initNewPlayerGuide(param1.guideFlag);
         _core.player.starsData = param1.starsData;
         var _loc7_:Object = _core.view.getUI(ViewManager.PANEL_PETFUNC);
         _loc7_.seniorPetJoinEnable = param1.seniorPetJoinEnable;
         var _loc8_:Object = _core.view.getUI(ViewManager.PANEL_WING_FUNC);
         _loc8_.advanceJoinEnable = param1.seniorWingJoinEnable;
         var _loc9_:Object = _core.view.getUI(ViewManager.PANEL_HELP);
         _loc9_.submitQuestionEnable = param1.submitQuestionEnable;
         _core.player.tBag = param1.tBag;
         _core.view.getUI(ViewManager.PANEL_IM).onInitViewImC(param1.black);
         if(_core.eventTooltipAlready == false)
         {
            _loc15_ = GamePredef.EVENT_TOOLTIP_CONFIG;
            _loc16_ = ByteArrayAsset(new _loc15_());
            _loc17_ = new XML(_loc16_);
            initEventTooltip(_loc17_);
         }
         _core.initTimer();
         _loc5_ = _core.view.getUI(ViewManager.PANEL_CHARACTOR);
         _loc5_.tabBtnClick(0,1,2,3,4);
         _core.serverTimeOffSet = param1.timeZone;
         if(param1.sph > 0)
         {
            _core.player.enableSpeedValidation = true;
            _core.player.serverSpeedThreshold = param1.sph;
         }
         else
         {
            _core.player.enableSpeedValidation = false;
         }
         var _loc10_:Object = _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC);
         _loc10_.setSpirituality(_core.player.property.spirituality);
         clearView();
         _core.player.soulBagData = param1.soulBagData;
         _core.player.soulTempBag = param1.tempSoulData;
         _core.player.soulExp = param1.soulExp;
         _core.player.soulChip = param1.soulChip;
         _core.player.petGuardData = param1.petGuardData;
         _core.player.crystalSid = param1.crystalSid;
         var _loc11_:Object = _core.view.getUI(ViewManager.POPU_SOUL_PRODUCT);
         if(_loc11_)
         {
            _loc11_.reset();
         }
         var _loc12_:Object = _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC);
         if(_loc12_)
         {
            _loc12_.MWSuccinictViewClear(true);
         }
         if(param1.takeAchieveAwardLog)
         {
            _core.takeAchieveAwardLog = param1.takeAchieveAwardLog;
         }
         else
         {
            _core.takeAchieveAwardLog = {};
         }
         updateJewelOffPrice(param1.jewelOffRate);
         _core.view.getUI(ViewManager.PANEL_MAIL_NOTICE).closeHandler();
         _core.replayMCZD = false;
      }
      
      public function onAddMXTempDirect(param1:Object, param2:uint, param3:Object, param4:uint) : void
      {
         var _loc5_:* = undefined;
         var _loc6_:* = null;
         var _loc7_:Object = null;
         if(param1)
         {
            _loc6_ = "";
            if(param1.c >= 0)
            {
               _loc6_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[param1.c] + "\'>" + param1.n + "</font>";
            }
            else if(param1.tt == GamePredef.ITEM_KIND_MATERIAL)
            {
               _loc6_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_core.basic.getColorByQuality(param1.q)] + "\'>" + param1.n + "[" + GamePredef.POSTFIX_MATERIAL_NAME[_core.basic.getColorByQuality(param1.q)] + "]" + "</font>";
            }
            else
            {
               _loc6_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[0] + "\'>" + param1.n + "</font>";
            }
            _loc6_ += param1.s + Language.CALLBACK_S[100];
            _core.sysBlueMsg(Language.CALLBACK_S[235] + _loc6_);
            if(Boolean(_loc7_ = _core.view.getUI(ViewManager.MAIN_ADD_ITEM_EFFECT)) && !_core.hidesysbar)
            {
               _loc7_.addItem(param1.t,param1.i);
            }
         }
         _core.player.tBag.mx.curNum = param4;
         _loc5_ = _core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT);
         if(_loc5_ && Boolean(_loc5_.initialized))
         {
            _core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT).setnTxt();
         }
         _core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT).UpdatemxSlot(param2,param3);
      }
      
      public function onInitViewImC(param1:Object) : void
      {
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_IM);
         if(_loc2_)
         {
            _loc2_.onInitViewImC(param1);
         }
      }
      
      public function onPetArenaFight(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_PET_ARENA).onPetArenaFight(param1);
      }
      
      public function addPetRateBuff(param1:Object) : void
      {
         var _loc2_:Object = new Object();
         _loc2_.bid = GamePredef.GLOBAL_PET_RATE_BID;
         _loc2_.id = 0;
         _loc2_.type = 0;
         _loc2_.timeLeft = param1.remain / 1000;
         _loc2_.desc = Language.CALLBACK_S[194].replace("{rate}",param1.rate);
         _core.view.getUI(ViewManager.MAIN_LONGBUFF).addGlobalDoubleExpBuff(_loc2_);
         _core.pet_rate = param1.rate;
      }
      
      public function onIcl(param1:Object) : void
      {
         var _loc3_:Object = null;
         _core.view.hide(ViewManager.POPU_WAIT);
         _core.view.hide(ViewManager.FORE_L_R);
         var _loc2_:Object = _core.view.getUI(ViewManager.FORE_C_C);
         _loc2_.visible = true;
         if(param1 != null)
         {
            if(_loc2_.charName != "")
            {
               for(_loc3_ in param1)
               {
                  if(param1[_loc3_].name == _loc2_.charName)
                  {
                     _core.remote.chooseCharactor(int(param1[_loc3_].id));
                     _core.view.getUI(ViewManager.POPU_WAIT).showText(Language.CHARSELECTCANVAS_S[9]);
                     _loc2_.charName = "";
                  }
               }
            }
            else
            {
               _loc2_.currentState = "choose";
               _loc2_.charactorDataList = param1;
            }
         }
         else
         {
            _loc2_.currentState = "create";
         }
         if(Login_Model.app && Boolean(Login_Model.app.hasOwnProperty("initCharList")))
         {
            Login_Model.app.initCharList(param1);
         }
      }
      
      public function onPreyByMoney(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(!param1)
         {
            return;
         }
         _loc2_ = _core.view.getUI(ViewManager.POPU_SOUL_PRODUCT);
         if(_loc2_)
         {
            _loc2_.addTempSoul(param1.index,param1.ii);
            _core.player.soulTempBag[param1.index] = param1.ii;
         }
      }
      
      public function onClearTimer() : void
      {
         var _loc1_:Object = null;
         _loc1_ = _core.view.getUI(ViewManager.PANEL_WB_TIMER);
         _loc1_.hide();
      }
      
      public function onPreySoulAll(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Object = null;
         if(!param1 || !param1.data)
         {
            return;
         }
         for(_loc2_ in param1.data)
         {
            onPreySoulSingle(param1.data[_loc2_]);
         }
         _loc3_ = _core.view.getUI(ViewManager.POPU_SOUL_PRODUCT);
         if(_loc3_)
         {
            _loc3_.changeBtnState(param1.newIndex);
            if(param1.point)
            {
               _loc3_.changePointInfo(_core.player.soulPnt);
            }
         }
      }
      
      public function onGetQuestionList(param1:int, param2:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_HELP).onGetQuestionList(param1,param2);
      }
      
      public function onEndFeastivalDay(param1:Boolean) : void
      {
         if(param1)
         {
            _core.view.getUI(ViewManager.MAIN_AWARD_WARN).delWarnByType(GamePredef.WARN_TYPE_FEASTIVAL);
         }
      }
      
      public function onCharPos(param1:Object = null) : void
      {
         if(param1 == null)
         {
            _core.sysBlueMsg(Language.CALLBACK_S[63]);
         }
         else
         {
            _core.sysBlueMsg(Language.CALLBACK_S[64] + "[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.cid + "|" + param1.name + "|0|0|0]" + Language.CALLBACK_S[65] + String(param1.line + 1) + Language.CALLBACK_S[66] + param1.mName + "," + Language.CALLBACK_S[67] + "X:" + int(param1.x / 10) + " Y:" + int(param1.y / 10));
         }
      }
      
      public function onSystemMsgCode(param1:int) : void
      {
         _core.view.getUI(ViewManager.MAIN_CHAT).showSystemMsg(GamePredef.SYS_MSG[param1]);
      }
      
      public function showRandomPKBtn(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.MAIN_MINIMAP);
         if(_loc2_)
         {
            if(param1)
            {
               _loc2_.changeWbBtn(4);
            }
            else
            {
               _loc2_.changeWbBtn(5);
            }
         }
      }
      
      public function onSystemRoomSay(param1:String) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_GROUP_RECRUIT_DETAIL);
         _loc2_.onSystemRoomSay(param1);
         if(!_loc2_.visible)
         {
            _core.addWarn({"warnType":GamePredef.WARN_TYPE_GROUP_CHAT});
         }
      }
      
      public function updateJewelOffPrice(param1:Number) : void
      {
         var _loc2_:* = undefined;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC);
         if(_loc2_)
         {
            _loc2_.jweOffMoney = param1;
         }
      }
      
      public function onHulaBattleEnd(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_HULA);
         if(_loc2_)
         {
            _loc2_.onBattleEnd(param1);
         }
      }
      
      public function onAddItemDelTemp(param1:Object, param2:uint, param3:uint) : void
      {
         var _loc4_:Object = null;
         _loc4_ = _core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT);
         _core.player.tBag.curNum = param3;
         _core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT).UpdateSlot(param2,param1);
         if(Boolean(_loc4_) && Boolean(_loc4_.initialized))
         {
            _core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT).setnTxt();
         }
      }
      
      public function showPVPGroupResultAlert(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         if(Boolean(param1) && Boolean(_core.player))
         {
            _loc2_ = _core.view.getUI(ViewManager.POPU_PVP_WAIT);
            if(_loc2_ && Boolean(_loc2_.visible))
            {
               _loc3_ = {};
               _loc3_["rank"] = param1["rank"];
               _loc3_["point"] = param1["pvpPoint"];
               _loc2_.setPoint(param1);
            }
            _loc2_ = _core.view.getUI(ViewManager.PANEL_PVP_RESULT);
            if(_loc2_)
            {
               _loc2_.showResult(param1);
            }
         }
      }
      
      public function onResetWaWaGameItem(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_WAWA_GAME);
         _loc2_ && _loc2_.onResetWaWaGameItem(param1);
      }
      
      public function openShopById(param1:int) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_NPC_SHOP);
         _loc2_ && _loc2_.updateView(param1);
      }
      
      public function dressActiveValidate(param1:Number) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DRESS);
         _loc2_ && _loc2_.dressActiveValidate(param1);
      }
      
      public function onAutoTaskLogin(param1:Object) : void
      {
         var _loc2_:* = undefined;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_AUTOTASK);
         if(_loc2_)
         {
            _loc2_.onGetAutoTaskData(param1);
         }
      }
      
      public function updateLongBuffCanvas(param1:Object) : void
      {
         if(Boolean(param1) && Boolean(param1.flag))
         {
            _core.view.getUI(ViewManager.MAIN_LONGBUFF).upLongBuff(param1);
         }
         else
         {
            _core.view.getUI(ViewManager.MAIN_LONGBUFF).delBuff(0);
         }
      }
      
      public function startRoom(param1:*) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_GROUP_RECRUIT_DETAIL);
         _loc3_ = _core.view.getUI(ViewManager.PANEL_GROUP_RECRUIT);
         _loc2_.hide();
         _loc2_.clearChatLog();
         _loc3_.setFirstFlag(true);
         _loc3_.setAcceptBtnEnable(true);
         onMidNote(Language.GROUP_RECRUIT_PANEL_S[35]);
      }
      
      public function a(param1:String) : void
      {
         var _loc2_:String = param1.replace(/<font(.*?)>/g,"");
         _loc2_ = _loc2_.replace(/<\/font>/g,"");
         var _loc3_:Alert = Alert.show(_loc2_);
         var _loc4_:IUITextField = _loc3_.mx_internal::alertForm.mx_internal::textField;
         _loc4_.htmlText = param1;
      }
      
      public function onInitGuildList(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_GUILD).onInitGuildList(param1);
      }
      
      public function confirmHandler(param1:Object) : void
      {
         var func:Function = null;
         var arg:Object = param1;
         if(null == arg)
         {
            return;
         }
         func = function(param1:CloseEvent):void
         {
            if(Alert.YES == param1.detail && Boolean(arg.onYes))
            {
               _core.remote.call(arg.onYes,null,arg.argBack);
            }
            else if(Alert.NO == param1.detail && Boolean(arg.onNo))
            {
               _core.remote.call(arg.onNo,null,arg.argBack);
            }
         };
         Alert.show(arg.text,arg.title,Alert.YES | Alert.NO,null,func);
      }
      
      public function onSoulLevelUp(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:* = undefined;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PET_SOUL);
         if(_loc2_)
         {
            if(param1.pid)
            {
               if(_core.player.petList)
               {
                  for each(_loc3_ in _core.player.petList)
                  {
                     if(_loc3_.id == param1.pid)
                     {
                        _loc3_.soulInfo["data"][int(param1.soulData.s) - 100] = param1.soulData;
                     }
                     if(_loc3_.id == _loc2_.selPetData.id)
                     {
                        _loc2_.selPetData.soulInfo["data"][int(param1.soulData.s) - 100] = param1.soulData;
                        _loc2_.updatePetSoulSlotView(int(param1.soulData.s) - 100);
                     }
                  }
               }
            }
            else
            {
               _core.player.soulBagData["data"][param1.soulData.s] = param1.soulData;
               _loc2_.updateSoulSlotView(param1.soulData.s);
            }
            _core.player.soulExp = param1.soulExp;
            _loc2_.changeSoulPanelInfo(_core.player.soulExp,_core.player.soulChip);
         }
      }
      
      public function onAddGuildMoney(param1:Number) : void
      {
         _core.sysBlueMsg(Language.CALLBACK_S[42] + param1 + GamePredef.CURRENCY_TIP[0]);
      }
      
      public function showMazeDiscPanel(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MAZE_DISC);
         if(Boolean(_loc2_) && Boolean(param1))
         {
            _loc2_.showPanel(param1);
         }
      }
      
      public function onAddItem(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:String = null;
         var _loc6_:* = undefined;
         if(param1)
         {
            _loc2_ = "";
            if(param1.t == GamePredef.TBL_EQUIPT_TEMPLATE || param1.t == GamePredef.TBL_EQUIPT_INSTANCE)
            {
               if(param1.c >= 0)
               {
                  _loc2_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[param1.c] + "\'>" + param1.n + "</font>";
               }
               else
               {
                  _loc4_ = _core.getTemplateData(param1.t,param1.i);
                  _loc5_ = _loc4_.kind == GamePredef.ITEM_KIND_PETEQU || _loc4_.kind == GamePredef.ITEM_KIND_MAGICWEAPON || _loc4_.kind == GamePredef.ITEM_KIND_WING ? "" : String(GamePredef.PRE_EQU_NAME[_core.basic.getPreByQuality(param1.q)]);
                  _loc6_ = _loc4_.kind == GamePredef.ITEM_KIND_MAGICWEAPON ? GamePredef.MSG_ITEM_COLOR[0] : GamePredef.MSG_ITEM_COLOR[_core.basic.getColorByQuality(param1.q)];
                  _loc2_ = "<font color=\'" + _loc6_ + "\'>" + _loc5_ + param1.n + "</font>";
               }
            }
            else if(param1.t == GamePredef.TBL_ITEM_TEMPLATE || param1.t == GamePredef.TBL_ITEM_INSTANCE)
            {
               if(param1.c >= 0)
               {
                  _loc2_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[param1.c] + "\'>" + param1.n + "</font>";
               }
               else if(param1.tt == GamePredef.ITEM_KIND_MATERIAL)
               {
                  _loc2_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_core.basic.getColorByQuality(param1.q)] + "\'>" + param1.n + "[" + GamePredef.POSTFIX_MATERIAL_NAME[_core.basic.getColorByQuality(param1.q)] + "]" + "</font>";
               }
               else
               {
                  _loc2_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[0] + "\'>" + param1.n + "</font>";
               }
               _loc2_ += param1.s + Language.CALLBACK_S[100];
            }
            _core.sysBlueMsg(Language.CALLBACK_S[52] + _loc2_);
            _loc3_ = _core.view.getUI(ViewManager.MAIN_ADD_ITEM_EFFECT);
            if(Boolean(_loc3_) && !_core.hidesysbar)
            {
               _loc3_.addItem(param1.t,param1.i);
            }
         }
      }
      
      public function onAddGuildSlot(param1:Object) : void
      {
         var _loc2_:ISlot = _core.view.getSlot(param1.sid);
         _loc2_.type = param1.type;
         _loc2_.giid = param1.itemId;
         _loc2_.stackNum = param1.stackNum;
         _loc2_.slotData = param1;
         _core.data.addGuildSlot(param1);
         _core.view.getUI(ViewManager.PANEL_GUILDWAREHOUSE).updateView();
      }
      
      public function onQuestionNote(param1:String) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_QUESTIONING);
         if(Boolean(_loc2_) && Boolean(_loc2_.visible))
         {
            _loc2_.addQuestionNote(param1);
         }
      }
      
      public function updateActivityState(param1:Object) : void
      {
         var _loc2_:* = undefined;
         _core.view.getUI(ViewManager.MAIN_ACTIVITY).changeView(param1);
         if(param1 && param1.id && Number(param1.id) == 38)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_ACTIVE);
            if(_loc2_)
            {
               _loc2_.updateTreasureHuntState();
            }
         }
      }
      
      public function gotoLightHeiyaoshiArea(param1:Object, param2:Object) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_HEIYAOSHI);
         _loc3_ && _loc3_.gotoLightHeiyaoshiArea(param1,param2);
      }
      
      public function onGetEnroll(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_TEAM_FIGHT);
         if(_loc2_)
         {
            _loc2_.onGetEnroll(param1);
         }
      }
      
      public function resetGuildPanel(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_GUILD).reset();
         if(_core.view.getUI(ViewManager.PANEL_GUILD).visible)
         {
            _core.view.getUI(ViewManager.PANEL_GUILD).initView();
         }
      }
      
      public function onQiLingRes(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_QILING);
         if(_loc2_)
         {
            _loc2_.onQiLingRes(param1);
         }
      }
      
      public function onGetRipeMsg(param1:String) : void
      {
         var _loc2_:Object = null;
         _loc2_ = {
            "warnType":GamePredef.WARN_TYPE_FARM_RIPE,
            "msg":param1
         };
         _core.addAwardWarn(_loc2_);
      }
      
      public function onbroadCastManJiuJianMsg(param1:Array) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MANJIUJIAN);
         _loc2_ && _loc2_.onbroadCastManJiuJianMsg(param1);
      }
      
      public function validateSublimePet(param1:Number, param2:Number, param3:int) : void
      {
         var _loc4_:Object = null;
         _loc4_ = _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC);
         _loc4_ && _loc4_.validateSublimePet(param1,param2,param3);
      }
      
      public function onHMTXLSData(param1:*) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_XIULIAN_PANEL);
         if(_loc2_)
         {
            _loc2_.onHMTXLSData(param1);
         }
      }
      
      public function updateWbStrongLabel(param1:int) : *
      {
         _core.view.getUI(ViewManager.PANEL_WB_BATTLEAUTO).updateWbStrongLabel(param1);
      }
      
      public function onWatchEnd(param1:Object = null) : void
      {
         _core.battle.watchOnEnd();
      }
      
      public function onStopHangUp() : void
      {
         _core.view.getUI(ViewManager.MAIN_AUTO_EXP).hangStop();
      }
      
      public function onItemMsg(param1:Object) : void
      {
         var _loc2_:Object = _core.view.getUI(ViewManager.MAIN_CNOTICE);
         _loc2_.addNotice(param1);
         _core.sysRedMsg(param1.msg);
      }
      
      public function onManuallyShowQuestPanel(param1:Object) : void
      {
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_QUEST);
         var _loc3_:Npc = _core.getNpc(param1.npcId);
         var _loc4_:* = param1.list[param1.qid];
         if(_loc4_ == null)
         {
            return;
         }
         _loc2_.initQuest(_core.data.getChaQuestFullData(_loc4_),_loc3_);
         _loc2_.show();
      }
      
      public function onTransportGroup(param1:Boolean) : void
      {
         if(param1 == false)
         {
            _core.sysBlueMsg(Language.CALLBACK_S[213]);
         }
      }
      
      public function onUpdateShopAmount() : void
      {
         var _loc1_:Object = null;
         _loc1_ = _core.view.getUI(ViewManager.PANEL_WORLD_CUP);
         if(_loc1_)
         {
            _loc1_.onUpdateShopAmount();
         }
      }
      
      public function onUpdatePVPGroupLimit(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(!param1)
         {
            return;
         }
         _loc2_ = _core.view.getUI(ViewManager.POPU_PVP_WAIT);
         if(_loc2_ && Boolean(_loc2_.visible))
         {
            _loc2_.onUpdateGroupLimit(param1);
         }
      }
      
      public function onBrotherTitleUpdate(param1:Object) : *
      {
         var _loc2_:Charactor = null;
         var _loc3_:Object = null;
         _loc2_ = _core.getCharactor(param1.cid);
         _loc2_.broT = param1.tname;
         _loc2_.normalView.updateTitlePrefix();
         if(param1.enable)
         {
            _loc3_ = _core.view.getUI(ViewManager.PANEL_TITLE);
            _loc3_.updateSelectTitle(GamePredef.BROTHER_TITLE_ID);
         }
      }
      
      public function onVipTitleUpdate(param1:Object) : *
      {
         var _loc2_:Charactor = _core.getCharactor(param1.cid);
         if(param1.tid == -1 && _core.checkTitleShow(_loc2_.vipT) && !_core.checkTitleType(_loc2_.vipT,GamePredef.TITLE_KIND_VIP))
         {
            return;
         }
         _loc2_.normalView.updateVipTitle(param1.tid);
         if(param1.tid == -1 && _core.checkTitleShow(param1.speTitle))
         {
            _loc2_.normalView.updateSpeTitle(param1.speTitle);
         }
         if(_loc2_.normalView.state == GamePredef.ST_NORMAL)
         {
            _loc2_.normalView.state = GamePredef.ST_NORMAL;
         }
      }
      
      public function onChangeFollowPetColor(param1:Object) : void
      {
         var _loc2_:Pet = _core.getPet(param1.cid);
         if(_loc2_)
         {
            _loc2_.colorCode = param1.color;
            _loc2_.view.colorCode = param1.color;
         }
      }
      
      public function onGetLoopQuestStartTime(param1:Object) : void
      {
         if(param1)
         {
            _core.loopQuestStartTime = param1;
         }
      }
      
      public function updateGrouponChamp(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_GROUPON);
         _loc2_ && _loc2_.updateChamp(param1);
      }
      
      public function onGetLimitTimeItem(param1:Object) : void
      {
         var _loc2_:* = undefined;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SYSTEM_SHOP);
         _loc2_.limitTimeItem = param1;
      }
      
      public function onPlayerRebirth(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc2_:Charactor = _core.getCharactor(param1.id);
         if(_loc2_)
         {
            _loc2_.property.lastPoint = param1.lp;
            _loc3_ = _core.view.getUI(ViewManager.PANEL_CHARACTOR);
            _loc3_.updateLastPoint();
         }
      }
      
      public function onDelGroupMember(param1:Object) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         if(Boolean(param1) && Boolean(param1.index))
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_PVP_ROOM_LIST);
            if(_loc2_ && Boolean(_loc2_.visible))
            {
               _loc2_.onDelGroupMember(param1.obj,param1.index);
            }
            _loc2_ = _core.view.getUI(ViewManager.POPU_PVP_WAIT);
            if(_loc2_ && Boolean(_loc2_.visible))
            {
               if(!param1.obj)
               {
                  if(_core.player.id == param1.cid)
                  {
                     _loc2_.visible = false;
                     return;
                  }
               }
               if(Boolean(param1.obj) && Boolean(param1.obj.memberList))
               {
                  for each(_loc3_ in param1.obj.memberList)
                  {
                     if(_loc3_)
                     {
                        if(Number(_loc3_.cid) == Number(_core.player.id))
                        {
                           _loc2_.onRefershMember(param1.obj);
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function onFinishQuest(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_QUEST);
         if(param1)
         {
            _loc2_.quest = _core.data.gameData[GamePredef.TBL_QUEST][param1.qid];
            _loc2_.onFinishQuest(param1);
         }
         _loc3_ = _core.view.getUI(ViewManager.PANEL_NPCFUNC);
         _loc3_.hide();
      }
      
      public function initShowVDAYPanel() : void
      {
         var _loc1_:Object = null;
         _loc1_ = _core.view.getUI(ViewManager.PANEL_VDAY);
         _loc1_.visible = true;
      }
      
      public function onShowGuildWarehouse(param1:int) : void
      {
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_GUILDWAREHOUSE);
         _loc2_.show();
      }
      
      public function onFailToAcceptNewBroMem(param1:int) : void
      {
         var _loc2_:Charactor = null;
         var _loc3_:String = null;
         accpetBroFunEnable = false;
         _loc2_ = _core.getCharactor(param1);
         _loc3_ = String(Language.CALLBACK_S[200].toString().replace("{name}",_loc2_.name));
         onSystemSay(_loc3_);
      }
      
      public function onUpdateQuestKill(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:int = 0;
         for(_loc2_ in param1)
         {
            _loc3_ = int(param1[_loc2_]);
            _core.view.getUI(ViewManager.MAIN_QUEST_GUIDE).creatureKill(_loc2_,_loc3_);
         }
      }
      
      public function onPetArenaSysMsgActivity(param1:Object, param2:int) : void
      {
         _core.view.getUI(ViewManager.PANEL_PET_ARENA_ACTIVITY).onPetArenaSysMsg(param1,param2);
      }
      
      public function onDelReplay(param1:Object) : void
      {
         if(param1.f)
         {
            _core.view.getUI(ViewManager.POP_FAZENDA_LOG).onDelReplay(param1.bid);
            addFarmLog(Language.PETFIGHT_PANEL_U[17]);
         }
      }
      
      public function onNpcReload(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(param1)
         {
            _loc2_ = _core.view.getN(param1.nid);
            _loc2_ && _loc2_.reload(param1);
         }
      }
      
      public function onRumourNoSpeaker() : void
      {
         _core.sysMidNote(Language.CALLBACK_S[225]);
         _core.view.getUI(ViewManager.MAIN_SYS).selectLocalChannel();
      }
      
      public function onAddTempDirect(param1:Object, param2:uint, param3:Object, param4:uint) : void
      {
         var _loc5_:* = undefined;
         var _loc6_:* = null;
         var _loc7_:Object = null;
         if(param1)
         {
            _loc6_ = "";
            if(param1.c >= 0)
            {
               _loc6_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[param1.c] + "\'>" + param1.n + "</font>";
            }
            else if(param1.tt == GamePredef.ITEM_KIND_MATERIAL)
            {
               _loc6_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_core.basic.getColorByQuality(param1.q)] + "\'>" + param1.n + "[" + GamePredef.POSTFIX_MATERIAL_NAME[_core.basic.getColorByQuality(param1.q)] + "]" + "</font>";
            }
            else
            {
               _loc6_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[0] + "\'>" + param1.n + "</font>";
            }
            _loc6_ += param1.s + Language.CALLBACK_S[100];
            _core.sysBlueMsg(Language.CALLBACK_S[195] + _loc6_);
            if(Boolean(_loc7_ = _core.view.getUI(ViewManager.MAIN_ADD_ITEM_EFFECT)) && !_core.hidesysbar)
            {
               _loc7_.addItem(param1.t,param1.i);
            }
         }
         _core.player.tBag.curNum = param4;
         _loc5_ = _core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT);
         if(_loc5_ && Boolean(_loc5_.initialized))
         {
            _core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT).setnTxt();
         }
         _core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT).UpdateSlot(param2,param3);
      }
      
      public function onSysMsgCode(param1:int) : void
      {
         _core.view.getUI(ViewManager.MAIN_CHAT).showSystemMsg(GamePredef.SYS_MSG[param1]);
      }
      
      public function onGetSudokuGameAward(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SUDOKU);
         if(_loc2_)
         {
            _loc2_.onGetSudokuGameAward(param1);
         }
      }
      
      public function onFillOrTakeOffTalentStone(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PET_TALENT_FUNC);
         if(Boolean(_loc2_) && Boolean(param1) && Boolean(param1.bag))
         {
            _loc2_.onUpdateTalentData(param1.bag);
         }
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PET_TALENT);
         if(Boolean(_loc2_) && Boolean(param1) && Boolean(param1.pan))
         {
            _loc2_.updateTalentDataInTal(param1.pan);
            _loc2_.updatePropData();
         }
      }
      
      public function onPushPVPQueue(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(!param1)
         {
            return;
         }
         _loc2_ = _core.view.getUI(ViewManager.POPU_PVP_WAIT);
         if(_loc2_)
         {
            if(Number(param1.type) == 1)
            {
               _loc2_.onReadyOrCancel(param1);
            }
            else if(Number(param1.type) == 2)
            {
               _loc2_.onPushPVPQueue(param1.state);
            }
         }
      }
      
      public function onDecoLightOn(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:* = undefined;
         var _loc6_:Number = NaN;
         _loc2_ = _core.view.getC(param1.cid);
         if(Boolean(_loc2_) && Boolean(param1.decoInfo))
         {
            _loc3_ = Number(param1.decoInfo[2]["did"]);
            if(_loc3_)
            {
               _loc4_ = Number(param1.decoInfo[2]["showLvl"]);
               _loc5_ = GameData.d[GamePredef.TBL_DECO_SHOW][_loc3_];
               _loc2_.gameObject.decoLightCode = Number(_loc5_["resCode" + (2 * _loc4_ - 1)]);
               _loc2_.gameObject.decoLightMaskCode = Number(_loc5_["resCode" + 2 * _loc4_]);
               _loc6_ = Number(param1.decoInfo[2]["isShow"]);
               if(_loc6_)
               {
                  _loc2_.stateSprite.visible = false;
                  _loc2_.roundOn();
                  _loc2_.roundMaskOn();
               }
            }
         }
      }
      
      public function onAddGuildMember(param1:Object) : void
      {
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_GUILD);
         var _loc3_:String = "";
         _loc2_.onAddGuildMember(param1);
         if(this._core.cid == param1.cid)
         {
         }
         var _loc4_:Array = String(param1.note).split("|");
         if(Number(param1.rank != Number(1)))
         {
            _loc3_ = String(Language.CALLBACK_S[41]);
            _loc3_ = _loc3_.replace("{name}",TextUtil.decode(LinkEncode.encode(GamePredef.TBL_CHARACTOR,param1.cid,_loc4_[0])));
            _core.sysMsg(_loc3_);
         }
      }
      
      public function heiyaoshiBuy(param1:Number, param2:Number) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_HEIYAOSHI);
         _loc3_ && _loc3_.heiyaoshiBuy(param1,param2);
      }
      
      public function onEnterPVPRoom(param1:Object) : *
      {
         var _loc2_:* = undefined;
         if(!param1)
         {
            return;
         }
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PVP_ROOM_LIST);
         if(_loc2_ && Boolean(_loc2_.visible))
         {
            _loc2_.onAddPVPGroup(param1);
         }
      }
      
      public function onHulaPop(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_HULA);
         if(_loc2_)
         {
            _loc2_.onPop(param1);
         }
      }
      
      public function onHulaChange(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_HULA);
         if(_loc2_)
         {
            _loc2_.onChange(param1);
         }
      }
      
      public function onGetChatPanelNoSender(param1:*) : void
      {
         _core.view.getUI(ViewManager.MAIN_CHAT).onCreateChatPanel(param1);
      }
      
      public function onStartFightMCZD(param1:*) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MCZD);
         if(_loc2_)
         {
            _loc2_.onStartFightMCZD(param1);
         }
      }
      
      public function onDiabetesMoveBox(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SUMMER_GAME_DIABETES);
         if(_loc2_)
         {
            _loc2_.onSetBox(param1);
         }
      }
      
      public function onHulaNPCAward(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_HULA);
         if(_loc2_)
         {
            _loc2_.onNPCAward(param1);
         }
      }
      
      public function onSetSecTreaHuntSZnum(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT);
         if(_loc2_)
         {
            _loc2_.onSetSecTreaHuntSZnum(param1);
         }
      }
      
      public function onGathering(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         _loc2_ = _core.view.getUI(ViewManager.MAIN_GATHER_PROGRESS);
         if(_loc2_)
         {
            _loc2_.play(param1 && param1.delay,param1 && param1.hint);
         }
         if(Boolean(param1) && Boolean(param1.prop))
         {
            for(_loc3_ in param1.prop)
            {
               _core.player.property[_loc3_] = param1.prop[_loc3_];
            }
         }
      }
      
      public function onAcceptNewBroMem(param1:Object, param2:Boolean) : void
      {
         var names:String = null;
         var i:* = undefined;
         var msg:String = null;
         var func:Function = null;
         var data:Object = param1;
         var hasBrother:Boolean = param2;
         accpetBroFunEnable = true;
         names = "";
         for(i in data)
         {
            names += data[i] + "、";
         }
         names = names.substr(0,names.length - 1);
         msg = "";
         if(hasBrother)
         {
            msg = String(Language.CALLBACK_S[204].toString().replace("{names}",names));
         }
         else
         {
            msg = String(Language.CALLBACK_S[205]);
         }
         func = function(param1:CloseEvent):void
         {
            if(!accpetBroFunEnable)
            {
               return;
            }
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("acceptNewMemToBrother",null,true);
            }
            else
            {
               _core.remote.call("acceptNewMemToBrother",null,false);
            }
         };
         Alert.show(msg,"",Alert.YES | Alert.NO,null,func);
      }
      
      public function updateAwakening(param1:int) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_AWAKEN);
         _loc2_ && _loc2_.updateAwakening(param1);
      }
      
      public function onSecretTreasureHuntGetData(param1:Object, param2:Object, param3:Object) : void
      {
         var _loc4_:Object = null;
         _loc4_ = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT);
         if(_loc4_)
         {
            _loc4_.onGetData(param1,param2,param3);
         }
      }
      
      public function onChargeBack() : void
      {
         var _loc1_:Object = null;
         _loc1_ = _core.view.getUI(ViewManager.PANEL_CHARGE_NOTICE);
         _loc1_ && _loc1_.initChargePanel();
      }
      
      public function onSecTreaHuntAutoPlay(param1:int) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT);
         if(_loc2_)
         {
            _loc2_.onSecTreaHuntAutoPlay(param1);
         }
      }
      
      public function lottoItemBlueMsg(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:* = undefined;
         if(param1)
         {
            _loc2_ = "";
            if(param1.t == GamePredef.TBL_EQUIPT_TEMPLATE || param1.t == GamePredef.TBL_EQUIPT_INSTANCE)
            {
               if(param1.c >= 0)
               {
                  _loc2_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[param1.c] + "\'>" + param1.n + "</font>";
               }
               else
               {
                  _loc3_ = _core.getTemplateData(param1.t,param1.i);
                  _loc4_ = _loc3_.kind == GamePredef.ITEM_KIND_PETEQU || _loc3_.kind == GamePredef.ITEM_KIND_MAGICWEAPON ? "" : String(GamePredef.PRE_EQU_NAME[_core.basic.getPreByQuality(param1.q)]);
                  _loc5_ = _loc3_.kind == GamePredef.ITEM_KIND_MAGICWEAPON ? GamePredef.MSG_ITEM_COLOR[0] : GamePredef.MSG_ITEM_COLOR[_core.basic.getColorByQuality(param1.q)];
                  _loc2_ = "<font color=\'" + _loc5_ + "\'>" + _loc4_ + param1.n + "</font>";
               }
               _loc2_ += param1.s + Language.CALLBACK_S[100];
            }
            else if(param1.t == GamePredef.TBL_ITEM_TEMPLATE || param1.t == GamePredef.TBL_ITEM_INSTANCE)
            {
               if(param1.c >= 0)
               {
                  _loc2_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[param1.c] + "\'>" + param1.n + "</font>";
               }
               else if(param1.tt == GamePredef.ITEM_KIND_MATERIAL)
               {
                  _loc2_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_core.basic.getColorByQuality(param1.q)] + "\'>" + param1.n + "[" + GamePredef.POSTFIX_MATERIAL_NAME[_core.basic.getColorByQuality(param1.q)] + "]" + "</font>";
               }
               else
               {
                  _loc2_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[0] + "\'>" + param1.n + "</font>";
               }
               _loc2_ += param1.s + Language.CALLBACK_S[100];
            }
            _core.lottoBlueMsg(Language.CALLBACK_S[52] + _loc2_);
         }
      }
      
      public function onStartCreateBuild(param1:Object) : void
      {
      }
      
      public function onChangePetColor(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_PETMANAGER).onUpdatePet(param1.pid,"colorCode",param1.color);
      }
      
      public function updateAchieveAwardLog(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(param1)
         {
            if(!_core.takeAchieveAwardLog[param1.aid])
            {
               _core.takeAchieveAwardLog[param1.aid] = param1.num;
            }
            _loc2_ = _core.view.getUI(ViewManager.PANEL_WELFARE);
            if(_loc2_ && Boolean(_loc2_.visible))
            {
               _loc2_.visible = false;
               _loc2_.visible = true;
            }
         }
      }
      
      public function onFlower() : void
      {
         var func:Function = function(param1:String):void
         {
            if(Boolean(param1) && param1.length > 0)
            {
               _core.remote.addPopNum(param1,1);
            }
         };
         _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.CALLBACK_S[58] + GamePredef.INPUT_PANEL_TITLE_SPLIT + 1,"",func,"");
      }
      
      public function onGuildBuildFuncList(param1:Object) : void
      {
         var _loc2_:Object = _core.view.getB(param1.bid);
         _loc2_.onClick(param1);
      }
      
      public function getEnemiesActivity(param1:Object) : void
      {
         if(param1)
         {
            _core.view.getUI(ViewManager.PANEL_PET_ARENA_ACTIVITY).onGetEnemies(param1);
         }
         else
         {
            _core.view.getUI(ViewManager.PANEL_PET_ARENA_ACTIVITY).showState("reg");
         }
      }
      
      public function guildFull() : void
      {
         _core.view.getUI(ViewManager.PANEL_GUILD).guildFull();
      }
      
      public function onPetArenaRankActivity(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_PET_ARENA_ACTIVITY_RANK).onPetArenaRank(param1);
      }
      
      public function onMidWarSay(param1:String) : void
      {
         Debug.logFunc("onMidWarSay",param1);
         _core.addMidWarn({"warnType":GamePredef.WARN_TYPE_ROBBER});
      }
      
      public function onMCZDFightResult(param1:*) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MCZD);
         if(_loc2_)
         {
            _loc2_.onMCZDFightResult(param1);
         }
      }
      
      public function onGetEnemies(param1:Object) : void
      {
         if(param1)
         {
            _core.view.getUI(ViewManager.PANEL_PET_ARENA).onGetEnemies(param1);
         }
         else
         {
            _core.view.getUI(ViewManager.PANEL_PET_ARENA).showState("reg");
         }
      }
      
      public function onEquipActiveList(param1:Object) : void
      {
         _core.player.equipActiveList = param1;
      }
      
      public function onAddTitle(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_TITLE).onAddTitle(param1);
      }
      
      public function onRuneBagUpdate(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DECORATE);
         _loc2_ && _loc2_.onRuneBagUpdate(param1);
      }
      
      public function updateWSPPanel(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_WAR_BATTLE);
         if(_loc2_)
         {
            _loc2_.updateWarSpritePanel(param1);
         }
      }
      
      public function onGetDotaRefreshNpc(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DOTA);
         if(_loc2_)
         {
            _loc2_.onGetRefreshNpc(param1);
         }
      }
      
      public function updateMysTreBag(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DECORATE);
         _loc2_ && _loc2_.updateMysBagPanel(param1);
      }
      
      public function onGetSTHSpeedRank(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT);
         _loc2_ && _loc2_.onGetSTHSpeedRank(param1);
      }
      
      public function onGetTeamBetData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_TEAM_FIGHT_BET);
         if(_loc2_)
         {
            _loc2_.refreshTeamData(param1);
         }
      }
      
      public function onSceneTo(param1:int, param2:int) : void
      {
         _core.player.posX = param1;
         _core.player.posY = param2;
         _core.player.view.posX = param1;
         _core.player.view.posY = param2;
         _core.view.getUI(ViewManager.STAGE_MAIN).centerTo(param1,param2);
         _core.player.stop();
      }
      
      public function onUpdateGuild(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_GUILD);
            _loc2_.onUpdateGuild(param1.gid,param1.key,param1.keyValue);
         }
      }
      
      public function onAddActTitle(param1:String) : void
      {
         _core.view.getUI(ViewManager.PANEL_TITLE).onAddActTitle(param1);
      }
      
      public function onUpdatePetGuardData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PETGUARD);
         _core.player.petGuardData = param1;
         if(_loc2_)
         {
            _loc2_.onGetPetGuardData(param1);
         }
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PETGUARDINSIDE);
         if(_loc2_)
         {
            _loc2_.onGetPetGuardData(param1);
         }
      }
      
      public function onAddLongBuff(param1:Object) : void
      {
         _core.view.getUI(ViewManager.MAIN_LONGBUFF).onAddLongBuff(param1);
      }
      
      public function onGetSendCombineAct(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SENDCOMBINE);
         if(_loc2_)
         {
            _loc2_.onGetSendCombineAct(param1);
         }
      }
      
      public function onShowExtInfo(param1:int) : void
      {
         var _loc2_:Object = _core.view.getE(param1);
         _loc2_.showBuildInfo();
      }
      
      public function onDecoFootOff(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         _loc2_ = _core.view.getC(param1.cid);
         if(Boolean(_loc2_) && Boolean(param1.decoInfo))
         {
            _loc3_ = Number(param1.decoInfo[3]["did"]);
            if(!_loc3_)
            {
               _loc2_.gameObject.decoFootCode = 0;
            }
            _loc2_.footprintOff();
         }
      }
      
      public function onSetTeamLeague(param1:Number, param2:int) : void
      {
         var _loc3_:* = _core.getCharactor(param1);
         if(_loc3_)
         {
            _loc3_.leagueIcon = param2;
            _loc3_.normalView.setLeagueFlag(param2);
         }
      }
      
      public function onClearSay() : void
      {
         _core.view.getUI(ViewManager.MAIN_CHAT).onClearSay();
      }
      
      public function onInitViewAuctionP(param1:Object) : void
      {
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_AUCTION);
         if(_loc2_)
         {
            _loc2_.onInitViewAuctionP(param1);
         }
      }
      
      public function classifyAlert() : void
      {
         Alert.show(Language.ANTIADDICTCANVAS_U[47],"",Alert.OK);
      }
      
      public function onShowGuildSkillPanel(param1:Object) : void
      {
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_GUILD_SKILL_DEV);
         _loc2_.showGuildSkillView(param1);
      }
      
      public function onFinishLoopQuest(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_QUESTMANAGER).onFinishLoopQuest(param1);
      }
      
      public function onExtBuildFuncList(param1:Object) : void
      {
         var _loc2_:Object = _core.view.getE(param1.bid);
         _loc2_.onClick(param1);
      }
      
      public function openStarInsMap() : void
      {
         _core.battleMap.initBattleMap();
      }
      
      public function initReturnRewardConf(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_RETURN_REWARD);
         if(_loc2_)
         {
            _loc2_.initConfig(param1);
         }
      }
      
      public function onDecoBottomOff(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         _loc2_ = _core.view.getC(param1.cid);
         if(Boolean(_loc2_) && Boolean(param1.decoInfo))
         {
            _loc3_ = Number(param1.decoInfo[4]["did"]);
            if(!_loc3_)
            {
               _loc2_.gameObject.decoBottomCode = 0;
               _loc2_.gameObject.decoBottomCodeOnMount = 0;
            }
            _loc2_.tepeOff();
         }
      }
      
      public function onTradeSuccess() : void
      {
         var _loc1_:* = _core.view.getUI(ViewManager.PANEL_TRADE);
         if(_loc1_)
         {
            _loc1_.onTradeSuccess();
         }
      }
      
      public function superLotteryMidSay(param1:Object) : *
      {
         var _loc2_:* = undefined;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_LOTTERY);
         if(_loc2_)
         {
            _loc2_.superLotteryMidSay(param1);
         }
      }
      
      public function onMoveTempBtw(param1:uint, param2:Object, param3:uint, param4:Object, param5:uint) : void
      {
         _core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT).UpdateSlot(param1,param2);
         _core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT).UpdateSlot(param3,param4);
         _core.player.tBag.curNum = param5;
         _core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT).setnTxt();
      }
      
      public function onShowQuestion(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_QUESTIONING);
         if(Boolean(_loc2_) && Boolean(param1))
         {
            if(!_loc2_.visible)
            {
               _loc2_.show();
            }
            _loc2_.showQuestion(param1);
         }
      }
      
      public function onDelMail(param1:Number) : void
      {
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_MAILMANAGER);
         _loc2_.onDelMail(param1);
         if(_loc2_.visible == true)
         {
            _loc2_.initView();
         }
      }
      
      public function onDestroyCharactor(param1:Number) : void
      {
         Debug.logFunc("销毁角色",param1);
         if(_core.getCharactor(param1) != null)
         {
            _core.destroyCharactor(param1);
         }
      }
      
      public function onbuyMonthWelfareClient(param1:Object, param2:Number) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_MONTHWELFARE);
         _loc3_ && _loc3_.onbuyMonthWelfareClient(param1,param2);
      }
      
      public function onRefreshPetProp(param1:Object) : void
      {
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_PETMANAGER);
         if(Boolean(param1) && _loc2_)
         {
            _loc2_.onRefreshPetProp(param1.id,param1.s);
         }
      }
      
      public function onMCZDGetData(param1:*) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MCZD);
         if(_loc2_)
         {
            _loc2_.onMCZDGetData(param1);
         }
      }
      
      public function onClassQuest(param1:Object, param2:Number) : void
      {
         _core.view.getUI(ViewManager.PANEL_QUEST).onClassQuest(param1,param2);
      }
      
      public function onGetAwardPoint(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_EXCHANGE).onGetAwardPoint(param1);
      }
      
      public function onNpcOff(param1:int) : void
      {
         _core.destroyNpc(param1);
         var _loc2_:IPanelUI = IPanelUI(_core.view.getUI(ViewManager.PANEL_SHOP));
         _loc2_.showData({"hide":param1});
         var _loc3_:Object = _core.view.getUI(ViewManager.TOOLTIP_NPC);
         if(_loc3_.nid == param1)
         {
            _loc3_.hide();
         }
      }
      
      public function setCharactorAfk(param1:Object) : void
      {
         var char:Charactor = null;
         var groupPanel:Object = null;
         var obj:Object = param1;
         if(Boolean(obj) && Boolean(obj.cid))
         {
            if(obj.cid == _core.player.id)
            {
               _core.player.groupAfk = true;
            }
            if(Boolean(_core.groupMemberListArr) && Boolean(_core.groupMemberListArr[obj.cid]))
            {
               _core.groupMemberListArr[obj.cid].groupAfk = true;
            }
            char = _core.getCharactor(obj.cid);
            if(char)
            {
               char.groupAfk = true;
            }
            try
            {
               groupPanel = _core.view.getUI(ViewManager.PANEL_GROUP);
               if(groupPanel && groupPanel.btnAfk && Boolean(groupPanel.btnAfk.label))
               {
                  groupPanel.btnAfk.label = Language.GROUPPANEL_U[11];
               }
            }
            catch(e:*)
            {
               trace("on setCharactorAfk抛出异常！");
            }
            _core.group.onGroupAfk(obj);
         }
      }
      
      public function changeTTButton() : void
      {
         var _loc1_:Object = null;
         _loc1_ = _core.view.getUI(ViewManager.PANEL_REBATEEVERYDAY);
         _loc1_ && _loc1_.changeTTButton();
      }
      
      public function onConstructionSuccess(param1:Object) : void
      {
         var _loc2_:Object = GameData.d[GamePredef.TBL_BUILDING][param1.bid];
         _core.sysMsg(Language.CALLBACK_S[107] + _loc2_.name);
      }
      
      public function onMountOff(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:Object = _core.view.getC(param1.cid);
         var _loc3_:Object = _core.view.getUI(ViewManager.PANEL_MOUNT);
         if(Boolean(_loc3_) && !param1.isMountOn)
         {
            _loc3_.changeRideState(2);
         }
         else if(Boolean(_loc3_) && Boolean(param1.isMountOn))
         {
            _loc3_.changeRideState(1);
         }
         if(_loc2_)
         {
            _loc2_.gameObject.mountResCode = 0;
            _loc2_.mountOff();
            _loc2_.gameObject.mountState = GamePredef.MOUNT_STATE_OFF;
            if(Boolean(param1.wp) && Number(param1.wp) > 0)
            {
               _loc2_.equipOn(param1.wp,param1.ee,param1.ef,param1.star);
            }
         }
      }
      
      public function onRefreshPVPListRank(param1:Number) : void
      {
         var _loc2_:* = undefined;
         _loc2_ = _core.view.getUI(ViewManager.POPU_PVP_WAIT);
         if(_loc2_)
         {
            _loc2_.onRefreshPVPListRank(param1);
         }
      }
      
      public function onActiveMysBookInfo(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:Number = NaN;
         var _loc6_:String = null;
         if(param1)
         {
            _loc2_ = int(param1["t"]);
            _loc3_ = int(param1["id"]);
            _loc4_ = GameData.d[_loc2_][_loc3_];
            if(_loc4_)
            {
               _loc5_ = Number(_loc4_["star"]);
               _loc6_ = String(_loc4_["name"]);
               _core.sysBlueMsg(Language.DECORATE_PANEL[74].toString().replace("{star}",_loc5_).replace("{name}",_loc6_));
            }
         }
      }
      
      public function onAddRelationship(param1:Object) : void
      {
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_IM);
         if(_loc2_)
         {
            _loc2_.onAddRelationship(param1);
         }
      }
      
      public function onTargetLock(param1:Object) : void
      {
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_TRADE);
         if(_loc2_)
         {
            _loc2_.onTargetLock(param1);
         }
      }
      
      public function banChatAlert(param1:String, param2:uint, param3:int) : void
      {
         var secs:uint = 0;
         var mins:uint = 0;
         var str:String = null;
         var func:Function = null;
         var gold:* = undefined;
         var _alert:Alert = null;
         var tf:IUITextField = null;
         var banName:String = param1;
         var keepTime:uint = param2;
         var ban12:int = param3;
         secs = keepTime / 1000;
         mins = secs / 60;
         secs %= 60;
         str = "";
         if(mins > 0)
         {
            str = mins.toString() + Language.CALLBACK_S[216] + secs.toString() + Language.CALLBACK_S[217];
         }
         else if(secs > 0)
         {
            str = secs.toString() + Language.CALLBACK_S[217];
         }
         if(mins > 0 || secs > 0)
         {
            func = function(param1:CloseEvent):void
            {
               var dorelease:Function = null;
               var event:CloseEvent = param1;
               if(Boolean(event) && event.detail == Alert.YES)
               {
                  if(!_core.delPass)
                  {
                     dorelease = function(param1:String):void
                     {
                        if(param1)
                        {
                           _core.remote.call("releaseChat",null,param1,ban12);
                        }
                     };
                     _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.PORTRAITCANVAS_U[0],dorelease);
                  }
                  else
                  {
                     _core.remote.call("releaseChat",null,_core.delPass,ban12);
                  }
               }
            };
            gold = 0;
            if(ban12 == 1)
            {
               gold = 100;
            }
            else
            {
               gold = 10;
            }
            _alert = Alert.show(Language.CALLBACK_S[215].replace("{name}",banName).replace("{timeStr}",str).replace("{gold}",gold),"",Alert.YES | Alert.NO,null,func);
            tf = _alert.mx_internal::alertForm.mx_internal::textField;
            tf.htmlText = Language.CALLBACK_S[215].replace("{name}","<font color=\'#ff0000\'>" + banName + "</font>").replace("{timeStr}",str).replace("{gold}","<font color=\'#ff0000\'>" + gold + "</font>");
         }
      }
      
      public function onSteelMine(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:String = null;
         var _loc4_:String = null;
         var _loc6_:String = null;
         var _loc7_:Object = null;
         _loc3_ = "";
         var _loc5_:String = String(Language.PETFIGHT_PANEL_U[6]);
         if(param1.result == GamePredef.BATTLE_WIN)
         {
            if(param1.guest)
            {
               _loc2_ = Number(param1.cid);
               _loc3_ = String(Language.PETFIGHT_PANEL_U[10]);
            }
            else
            {
               _loc2_ = Number(param1.tid);
               _loc3_ = String(Language.PETFIGHT_PANEL_U[4]);
            }
            _loc4_ = TextUtil.decode("[@PID|" + _loc2_ + "|" + param1.name + "|0|0|0]");
            _loc6_ = "";
            _loc7_ = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][param1.id];
            if(_loc7_)
            {
               _loc6_ = String(_loc7_.name);
            }
            _loc3_ = _loc3_.replace("{enemy}",_loc4_).replace("{num}",param1.num).replace("{item}",_loc6_);
            _core.view.getUI(ViewManager.PANEL_FAZENDA).onSteelMine(param1.fid,param1.tid,param1.num);
         }
         else if(param1.result == GamePredef.BATTLE_LOSE)
         {
            if(param1.guest)
            {
               _loc4_ = TextUtil.decode("[@PID|" + param1.cid + "|" + param1.name + "|0|0|0]");
               _loc3_ = String(Language.PETFIGHT_PANEL_U[12].replace("{enemy}",_loc4_));
            }
            else
            {
               _loc3_ = String(Language.PETFIGHT_PANEL_U[5]);
            }
         }
         else if(param1.result == GamePredef.BATTLE_NOT_END)
         {
            if(param1.guest)
            {
               _loc2_ = Number(param1.cid);
               _loc3_ = String(Language.PETFIGHT_PANEL_U[20]);
            }
            else
            {
               _loc2_ = Number(param1.tid);
               _loc3_ = String(Language.PETFIGHT_PANEL_U[19]);
            }
            _loc4_ = TextUtil.decode("[@PID|" + _loc2_ + "|" + param1.name + "|0|0|0]");
            _loc3_ = _loc3_.replace("{enemy}",_loc4_);
         }
         if(!param1.noreplay && Boolean(param1.bid))
         {
            _loc3_ += String(Language.PETFIGHT_PANEL_U[11]).replace("{bid}",param1.bid);
            _loc3_ += String(Language.PETFIGHT_PANEL_U[16]).replace("{bid}",param1.bid);
         }
         addFarmLog(_loc3_);
         _core.view.getUI(ViewManager.POP_FAZENDA_LOG).addOneLog(param1);
      }
      
      public function updateMWResetView(param1:Object) : void
      {
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC);
         _loc2_.updateMWResetView(param1);
      }
      
      public function onNpcBusy(param1:int) : void
      {
         var _loc2_:Npc = _core.getNpc(param1);
         if(_loc2_)
         {
            _loc2_.busy = true;
         }
      }
      
      public function updateMedalInBag(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_MEDAL);
            if(_loc2_)
            {
               _loc2_.updateMedalInBag(param1);
            }
            if(param1.t)
            {
               _loc3_ = GameData.d[GamePredef.TBL_MEDAL][param1.t];
               _loc4_ = String(Language.MEDAL_P[32]);
               _loc4_ = _loc4_.replace("{medal}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_MEDAL] + "|" + _loc3_.id + "|" + _loc3_.name + "|" + _loc3_.q + "|0|0]"));
               _core.sysBlueMsg(_loc4_);
            }
         }
      }
      
      public function onEgg() : void
      {
         var func:Function = function(param1:String):void
         {
            if(Boolean(param1) && param1.length > 0)
            {
               _core.remote.delPopNum(param1,1);
            }
         };
         _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.CALLBACK_S[59] + GamePredef.INPUT_PANEL_TITLE_SPLIT + 1,"",func,"");
      }
      
      public function onDelGuild(param1:int) : void
      {
         _core.view.getUI(ViewManager.PANEL_GUILD).onDelGuild(param1);
      }
      
      public function updateLotteryBag(param1:Array) : void
      {
         var _loc2_:ArrayCollection = null;
         var _loc3_:* = undefined;
         var _loc4_:Object = null;
         _loc2_ = new ArrayCollection();
         for each(_loc3_ in param1)
         {
            _loc2_.addItem(_loc3_);
         }
         _loc4_ = _core.view.getUI(ViewManager.PANEL_LOTTERY_BAG);
         if(_loc4_)
         {
            _loc4_.itemList = _loc2_;
         }
         _core.player.lotteryBagLength = param1.length.toString();
      }
      
      public function onChangeName(param1:Number, param2:String, param3:Object) : void
      {
         var _loc4_:Charactor = _core.getCharactor(param1);
         _loc4_.normalView.setNewName(param2);
         if(param3 != null)
         {
            _core.group.onGroupJoined(param3);
         }
      }
      
      public function lottoBlueMsg(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:* = null;
         var _loc5_:Object = null;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         if(param1)
         {
            _loc2_ = "";
            _loc3_ = _core.data.getGameData(param1.ti,param1.ii);
            if(!_loc3_)
            {
               return;
            }
            _loc2_ = String(Language.NOTICE_INFO[0]);
            if(!_loc2_)
            {
               return;
            }
            if(param1.ti == GamePredef.TBL_EQUIPT_TEMPLATE)
            {
               if(!param1.cl)
               {
                  if(_loc3_.color > 0)
                  {
                     param1.cl = _loc3_.color;
                  }
                  else
                  {
                     param1.cl = 0;
                  }
               }
               _loc5_ = _core.data.gameData[param1.ti][param1.ii];
               if(_loc5_.kind == GamePredef.ITEM_KIND_MAGICWEAPON)
               {
                  _loc6_ = Number(param1.q) * 10 + 6;
                  _loc2_ = _loc2_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_EQUIPT_TEMPLATE] + "|" + param1.ii + "|" + _loc3_.name + "|" + param1.cl + "|" + 0 + "|" + _loc6_ + "]"));
               }
               else
               {
                  _loc2_ = _loc2_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_EQUIPT_TEMPLATE] + "|" + param1.ii + "|" + _loc3_.name + "|" + param1.cl + "|" + 0 + "|" + 0 + "]"));
               }
            }
            else if(param1.ti == GamePredef.TBL_ITEM_TEMPLATE)
            {
               if(!param1.cl)
               {
                  if(_loc3_.color > 0)
                  {
                     param1.cl = _loc3_.color;
                  }
                  else
                  {
                     param1.cl = 0;
                  }
               }
               _loc2_ = _loc2_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_ITEM_TEMPLATE] + "|" + param1.ii + "|" + _loc3_.name + "|" + param1.cl + "|" + 0 + "|" + 0 + "]"));
            }
            else if(param1.ti == GamePredef.TBL_CREATURE)
            {
               _loc7_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_core.basic.colorByGrowRate(param1.q)] + "\'>[" + _loc3_.name + "]</font>";
               _loc2_ = _loc2_.replace("{item}",_loc7_);
            }
            _loc2_ = _loc2_.replace("{num}",param1.n);
            _loc4_ = TextUtil.decode(_loc2_) + "<br/>";
            _core.lottoBlueMsg(_loc4_);
         }
      }
      
      public function onGetPRSChip(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         if(param1)
         {
            _loc2_ = int(param1["t"]);
            _loc3_ = int(param1["id"]);
            _loc4_ = Number(param1["num"]);
            _loc5_ = GameData.d[_loc2_][_loc3_];
            if(_loc5_)
            {
               _loc6_ = String(_loc5_["name"]);
               _core.sysBlueMsg(Language.PRS_PANEL[37].toString().replace("{name}",_loc6_).replace("{num}",_loc4_));
            }
         }
      }
      
      public function onUpTalentStone(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PET_TALENT_FUNC);
         if(Boolean(_loc2_) && Boolean(param1))
         {
            _loc2_.onUpTalentStone(param1);
         }
      }
      
      public function onUpdateAchieve(param1:int, param2:int, param3:Object) : void
      {
         var _loc4_:Object = null;
         if(param1 == 1)
         {
            if(!_core.player.achieveLog[param2])
            {
               _core.player.achieveLog[param2] = {};
            }
            _core.player.achieveLog[param2] = param3.done;
         }
         else if(param1 == 2)
         {
            if(!_core.player.achieveReqLog[param2])
            {
               _core.player.achieveReqLog[param2] = {};
            }
            if(param3.done)
            {
               _core.player.achieveReqLog[param2].done = param3.done;
            }
            else if(param3.hasOwnProperty("progress"))
            {
               _core.player.achieveReqLog[param2].progress = param3.progress;
            }
         }
         _loc4_ = _core.view.getUI(ViewManager.PANEL_ACHIEVE);
         if(_loc4_)
         {
            _loc4_.updateView(param1,param2,param3);
         }
      }
      
      public function onMinusMoneyNew(param1:int, param2:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:* = undefined;
         var _loc6_:String = null;
         for(_loc3_ in param2)
         {
            _loc4_ = String(param2[_loc3_].moneyType);
            if(_core.player.id == param1)
            {
               if(_core.player.hasOwnProperty(_loc4_))
               {
                  _core.player[_loc4_] = param2[_loc3_].currentNum;
               }
            }
            if(_loc4_ == "dogM")
            {
               _core.sysBlueMsg(Language.CALLBACK_S[51] + param2[_loc3_].num + GamePredef.CURRENCY_TIP[14]);
            }
            else if(_loc4_ == "btPnt")
            {
               _core.sysBlueMsg(Language.CALLBACK_S[51] + param2[_loc3_].num + GamePredef.CURRENCY_TIP[13]);
            }
            else if(_loc4_ == "cbM")
            {
               _core.sysBlueMsg(Language.CALLBACK_S[51] + param2[_loc3_].num + GamePredef.CURRENCY_TIP[15]);
            }
            else if(_loc4_.indexOf("yuandan") >= 0)
            {
               _core.sysBlueMsg(Language.CALLBACK_S[51] + param2[_loc3_].num + GamePredef.CURRENCY_TIP[16]);
            }
            else if(_loc4_ == "lyP14" || _loc4_.indexOf("lyP_") >= 0)
            {
               _core.sysBlueMsg(Language.CALLBACK_S[51] + param2[_loc3_].num + GamePredef.CURRENCY_TIP[17]);
            }
            else if(_loc4_ == "vtP14" || _loc4_.indexOf("vtP_") >= 0)
            {
               _core.sysBlueMsg(Language.CALLBACK_S[51] + param2[_loc3_].num + GamePredef.CURRENCY_TIP[18]);
            }
            else if(_loc4_ == "ltP14" || _loc4_.indexOf("ltP_") >= 0)
            {
               _core.sysBlueMsg(Language.CALLBACK_S[51] + param2[_loc3_].num + GamePredef.CURRENCY_TIP[19]);
            }
            else if(_loc4_ == "lbP14" || _loc4_.indexOf("lbP_") >= 0)
            {
               _core.sysBlueMsg(Language.CALLBACK_S[51] + param2[_loc3_].num + GamePredef.CURRENCY_TIP[20]);
            }
            else if(_loc4_ == "fishPnt")
            {
               _core.sysBlueMsg(Language.CALLBACK_S[51] + param2[_loc3_].num + GamePredef.CURRENCY_TIP[21]);
            }
            else if(_loc4_ == "xP23" || _loc4_.indexOf("xP23") >= 0)
            {
               _core.sysBlueMsg(Language.CALLBACK_S[51] + param2[_loc3_].num + GamePredef.CURRENCY_TIP[22]);
            }
            else if(_loc4_ == "smP14" || _loc4_.indexOf("smP_") >= 0)
            {
               _core.sysBlueMsg(Language.CALLBACK_S[51] + param2[_loc3_].num + GamePredef.CURRENCY_TIP[23]);
            }
            else if(_loc4_ == "a5Pnt")
            {
               _core.sysBlueMsg(Language.CALLBACK_S[51] + param2[_loc3_].num + GamePredef.CURRENCY_TIP[25]);
            }
            else if(_loc4_ == "paPnt")
            {
               _core.sysBlueMsg(Language.CALLBACK_S[51] + param2[_loc3_].num + GamePredef.CURRENCY_TIP[26]);
            }
            else if(_loc4_.indexOf("christmas") >= 0)
            {
               _core.sysBlueMsg(Language.CALLBACK_S[51] + param2[_loc3_].num + GamePredef.CURRENCY_TIP[30]);
            }
            else if(_loc4_ == "thBirthPnt5")
            {
               _core.sysBlueMsg(Language.CALLBACK_S[51] + param2[_loc3_].num + GamePredef.CURRENCY_TIP[36]);
            }
            else if(_loc4_ == "nationalDayPnt")
            {
               _core.sysBlueMsg(Language.CALLBACK_S[51] + param2[_loc3_].num + GamePredef.CURRENCY_TIP[37]);
            }
            else if(_loc4_ == "wcPnt18")
            {
               _core.sysBlueMsg(Language.CALLBACK_S[51] + param2[_loc3_].num + GamePredef.CURRENCY_TIP[41]);
               _core.player.worldCupPoint -= Number(param2[_loc3_].num);
               if(_core.player.worldCupPoint < 0)
               {
                  _core.player.worldCupPoint = 0;
               }
               else
               {
                  _core.player.worldCupPoint;
               }
            }
            else if(_loc4_ == "wcPnt18gold")
            {
               _core.sysBlueMsg(Language.CALLBACK_S[51] + param2[_loc3_].num + GamePredef.CURRENCY_TIP[42]);
               _core.player.worldCupGoldPoint -= Number(param2[_loc3_].num);
               if(_core.player.worldCupGoldPoint < 0)
               {
                  _core.player.worldCupGoldPoint = 0;
               }
               else
               {
                  _core.player.worldCupGoldPoint;
               }
            }
            else if(_loc4_ == "petguardout")
            {
               _core.sysBlueMsg(Language.CALLBACK_S[51] + param2[_loc3_].num + GamePredef.CURRENCY_TIP[44]);
            }
            else if(_loc4_ == "petguardin")
            {
               _core.sysBlueMsg(Language.CALLBACK_S[51] + param2[_loc3_].num + GamePredef.CURRENCY_TIP[45]);
            }
            else if(_loc4_ == "magiccystalrec")
            {
               _core.sysBlueMsg(Language.CALLBACK_S[51] + param2[_loc3_].num + GamePredef.CURRENCY_TIP[46]);
            }
            else if(_loc4_ == "magiccystalpre")
            {
               _core.sysBlueMsg(Language.CALLBACK_S[51] + param2[_loc3_].num + GamePredef.CURRENCY_TIP[47]);
            }
            else if(_loc4_ == "magiccystallimit")
            {
               _core.sysBlueMsg(Language.CALLBACK_S[51] + param2[_loc3_].num + GamePredef.CURRENCY_TIP[48]);
            }
            else if(_loc4_ == "petChip")
            {
               _core.sysBlueMsg(Language.CALLBACK_S[51] + param2[_loc3_].num + GamePredef.CURRENCY_TIP[38]);
            }
            else if(_loc4_ == "pvePoint")
            {
               _loc5_ = _core.view.getUI(ViewManager.PANEL_PET_TALENT_FUNC);
               _core.sysBlueMsg(Language.CALLBACK_S[51] + param2[_loc3_].num + GamePredef.CURRENCY_TIP[39]);
               if(_loc5_)
               {
                  _loc5_.updatePoint();
               }
               _loc5_ = _core.view.getUI(ViewManager.PANEL_PET_TALENT);
               if(_loc5_)
               {
                  _loc5_.updatePoint();
               }
            }
            else if(_loc4_ == "stoneSealPoint")
            {
               _core.sysBlueMsg(Language.CALLBACK_S[51] + param2[_loc3_].num + GamePredef.CURRENCY_TIP[40]);
            }
            else if(_loc4_ == "wisdonCrystal")
            {
               _loc6_ = String(Language.NPC_SHOP_PANEL[11]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "couragePoint")
            {
               _loc6_ = String(Language.NPC_SHOP_PANEL[105]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "mysteryCrystal")
            {
               _loc6_ = String(Language.TRAIN_SOUL_PANEL[12]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "npPnt")
            {
               _loc6_ = String(Language.ASTROLOGIC_PANEL_U[48]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "elementPnt")
            {
               _loc6_ = String(Language.MAGIC_ARRAY_PANEL_U[34]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "decoSilver")
            {
               _loc6_ = String(Language.DECORATE_PANEL[52]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "runeExp")
            {
               _loc6_ = String(Language.DECORATE_PANEL[53]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "rebatepoint")
            {
               _loc6_ = String(Language.REBATE_EVERYDAY_PANEL[12]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "heiyaoshiPoint")
            {
               _loc6_ = String(Language.HEIYAOSHI_PANEL[11]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "heiyaoshiPoint2")
            {
               _loc6_ = String(Language.HEIYAOSHI_PANEL[24]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "heroScore2507")
            {
               _loc6_ = String(Language.NPC_SHOP_PANEL[206]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "realSoulStone")
            {
               _loc6_ = String(Language.PRS_PANEL[29]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "realSoulCrystal")
            {
               _loc6_ = String(Language.PRS_PANEL[31]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "realSoulWater")
            {
               _loc6_ = String(Language.PRS_PANEL[33]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "yijieElement")
            {
               _loc6_ = String(Language.MAGIC_ARRAY_PANEL_U[45]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "warSprite")
            {
               _loc6_ = String(Language.WAR_SPRITE[20]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "battleSprite")
            {
               _loc6_ = String(Language.WAR_SPRITE[22]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "anni2017")
            {
               _loc6_ = String(Language.NPC_SHOP_PANEL[306]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "monsterHeart")
            {
               _loc6_ = String(Language.MONSTER_HEART[14]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "mhjingshi")
            {
               _loc6_ = String(Language.MONSTER_HEART[16]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "energyStone")
            {
               _loc6_ = String(Language.PET_STONE_PANEL[3]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "d11Pnt2020")
            {
               _loc6_ = String(Language.CALLBACK_S[230]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "explorerPnt")
            {
               _loc6_ = String(Language.CALLBACK_S[232]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
               _loc5_ = _core.view.getUI(ViewManager.PANEL_EXPLORER_MEDAL);
               _loc5_.updateByManual();
            }
            else if(_loc4_ == "st2312Pnt")
            {
               _loc6_ = String(Language.CALLBACK_S[234]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "mcbeans")
            {
               _loc6_ = String(Language.NPC_SHOP_PANEL[308]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "petPK_202504")
            {
               _core.sysBlueMsg(Language.CALLBACK_S[46] + Math.abs(param2[_loc3_].num) + Language.PET_ARENA_U[70]);
               _loc5_ = _core.view.getUI(ViewManager.PANEL_PET_ARENA_ACTIVITY);
               if(_loc5_)
               {
                  _core.player.petPK = int(param2[_loc3_].currentNum);
                  _loc5_.updatePoint();
               }
            }
            else if(_loc4_ == "xmCandy24")
            {
               _loc6_ = String(Language.NPC_SHOP_PANEL[310]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "xcds2403p")
            {
               _loc6_ = String(Language.NPC_SHOP_PANEL[320]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "txkc2508p")
            {
               _loc6_ = String(Language.NPC_SHOP_PANEL[322]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
            else if(_loc4_ == "shishangdian")
            {
               _loc6_ = String(Language.NPC_SHOP_PANEL[330]);
               _loc6_ = _loc6_.replace("{num}",Math.abs(param2[_loc3_].num));
               _core.sysBlueMsg(_loc6_);
            }
         }
         _core.view.getUI(ViewManager.PANEL_CHARACTOR).updateInfo();
      }
      
      public function onRefusedToAddFriend(param1:Object) : void
      {
         var _loc2_:String = LinkEncode.encode(GamePredef.TBL_CHARACTOR,param1.id,param1.name);
         var _loc3_:String = String(Language.CALLBACK_S[98]);
         _loc3_ = _loc3_.replace("{nameLink}",_loc2_);
         _core.sysMidNote(_loc3_);
      }
      
      public function onSetClose(param1:Number, param2:String, param3:Number) : void
      {
         var _loc6_:* = undefined;
         var _loc4_:String = "";
         if(param3 == 0)
         {
            _loc4_ = String(Language.CALLBACK_S[103]);
            _loc4_ = _loc4_.replace("{nameLink}",LinkEncode.encode(GamePredef.TBL_CHARACTOR,param1,param2));
            _loc4_ = _loc4_.replace("{num}",param3);
            _core.sysBlueMsg(_loc4_);
         }
         else if(param3 < 0)
         {
            _loc6_ = -param3;
            _loc4_ = String(Language.CALLBACK_S[78]);
            _loc4_ = _loc4_.replace("{nameLink}",LinkEncode.encode(GamePredef.TBL_CHARACTOR,param1,param2));
            _loc4_ = _loc4_.replace("{num}",_loc6_);
            _core.sysBlueMsg(_loc4_);
         }
         else
         {
            _loc4_ = String(Language.CALLBACK_S[77]);
            _loc4_ = _loc4_.replace("{nameLink}",LinkEncode.encode(GamePredef.TBL_CHARACTOR,param1,param2));
            _loc4_ = _loc4_.replace("{num}",param3);
            _core.sysBlueMsg(_loc4_);
         }
         var _loc5_:Object = _core.view.getUI(ViewManager.PANEL_IM);
         _loc5_.onSetClose(param2,param3);
      }
      
      public function onSetSecTreaHuntIfCheck(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT);
         if(_loc2_)
         {
            _loc2_.onSetSecTreaHuntIfCheck(param1);
         }
      }
      
      public function onUpFarmBag(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_FAZENDA_BAG);
         _loc2_.onUpFarmBag(param1);
      }
      
      public function onShowDonatePanel(param1:int) : void
      {
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_GUILD);
         _loc2_.showContribPanel();
      }
      
      public function onKickChar(param1:int) : void
      {
         switch(param1)
         {
            case 1:
               _core.remote.kickCode = "KICKED_BY_OTHER";
               break;
            case 2:
               _core.remote.kickCode = "KICKED_BY_SYSTEM";
               break;
            default:
               _core.remote.kickCode = "";
         }
      }
      
      public function refreshPetArenaActInfo(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PET_ARENA_ACTIVITY);
         if(_loc2_)
         {
            _loc2_.openPanel(param1);
         }
      }
      
      public function showAnniTurntablePanel() : void
      {
         var _loc1_:Object = null;
         _loc1_ = _core.view.getUI(ViewManager.PANEL_ANNI_ZHUANPAN);
         if(_loc1_)
         {
            _loc1_.showPanel();
         }
      }
      
      public function onSwapTripleNpc(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_TRIPLE_TOWN);
         _loc2_ && _loc2_.onSwapTripleNpc(param1);
      }
      
      public function onAddDecoItem(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:String = null;
         if(param1)
         {
            _loc2_ = int(param1["t"]);
            _loc3_ = int(param1["id"]);
            _loc4_ = GameData.d[_loc2_][_loc3_];
            if(_loc4_)
            {
               _loc5_ = String(_loc4_["name"]);
               _core.sysBlueMsg(Language.CALLBACK_S[52] + _loc5_);
            }
         }
      }
      
      public function onEextractCardActivityExtract(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_EXTRACT_CARD_ACTIVITY);
         if(_loc2_)
         {
            _loc2_.onEextractCardActivityExtract(param1);
         }
      }
      
      public function onCreateBoss(param1:Object) : void
      {
         trace("onCreateBoss");
         _core.scene.sceneCreateNpcs(param1);
      }
      
      public function onInitMagicCrystalData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MAGICCRYSTAL);
         if(_loc2_)
         {
            _loc2_.onInitMagicCrystalData(param1);
         }
      }
      
      public function onbuyTimesSudokuGame(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SUDOKU);
         if(_loc2_)
         {
            _loc2_.onbuyTimesSudokuGame(param1);
         }
      }
      
      public function itemMultitoSel(param1:Object, param2:uint) : void
      {
         var _loc3_:* = undefined;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_MULITI_ITEM);
         if(_loc3_)
         {
            _loc3_.setItemList(param1,param2);
         }
      }
      
      public function addOrMinusPmExp(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         if(param1)
         {
            _loc2_ = "";
            if(Number(param1.type) == 1)
            {
               _loc2_ = String(Language.CALLBACK_S[45] + param1.pnt + Language.GAMEPREDEF_S[557]);
               _core.sysBlueMsg(_loc2_);
            }
            else
            {
               _loc2_ = String(Language.CALLBACK_S[46] + param1.pnt + Language.GAMEPREDEF_S[557]);
               _core.sysBlueMsg(_loc2_);
            }
            _loc3_ = _core.view.getUI(ViewManager.PANEL_PM);
            if(_loc3_ && _loc3_.panelDataFlush && Boolean(_loc3_.visible))
            {
               _loc3_.addOrMinusPmExp(param1);
            }
         }
      }
      
      public function onUpGuildSlotStackNum(param1:Object) : void
      {
         var _loc2_:Object = _core.data.getGuildSlot({"id":param1.id});
         if(_loc2_ == null)
         {
            return;
         }
         _loc2_.stackNum = Number(param1.value);
         var _loc3_:ISlot = _core.view.getSlot(Number(param1.sid));
         _loc3_.stackNum = Number(param1.value);
      }
      
      public function updatePRSChipBag(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PET_REAl_SOUL);
         _loc2_ && _loc2_.updatePRSChipBag(param1);
      }
      
      public function endDoubleExpBuff() : void
      {
         trace("end global double exp");
         _core.view.getUI(ViewManager.MAIN_LONGBUFF).delGlobalDoubleExpBuff();
      }
      
      public function onBlueMsg(param1:String) : void
      {
         Debug.logFunc("onBlueMsg",param1);
         _core.sysBlueMsg(param1);
      }
      
      public function updateMonsterHeartBagByType(param1:Object, param2:Number) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_MONSTERHEART);
         if(_loc3_)
         {
            _loc3_.updateMonsterHeartBagByType(param1,param2);
         }
      }
      
      public function onGroupCantJoin(param1:Number, param2:int) : void
      {
         _core.group.onGroupCantJoin(param1,param2);
      }
      
      public function addArenaNumActivity(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_PET_ARENA_ACTIVITY).addArenaNum(param1);
      }
      
      public function onSetActionState(param1:Object) : void
      {
         var _loc2_:Charactor = _core.getCharactor(param1.cid);
         if(_loc2_)
         {
            _loc2_.actionState = param1.state;
         }
      }
      
      public function onFailToDiabondBrothers(param1:int) : void
      {
         var _loc2_:Charactor = null;
         var _loc3_:String = null;
         disbondBroFunEnable = false;
         _loc2_ = _core.getCharactor(param1);
         _loc3_ = String(Language.CALLBACK_S[207].toString().replace("{name}",_loc2_.name));
         onSystemSay(_loc3_);
      }
      
      public function onSystemMidMsgOrNote(param1:String) : void
      {
         Debug.logFunc("onSystemMidMsgOrNote",param1);
         _core.sysMidNote(param1);
         _core.sysMidMsg(param1);
      }
      
      public function uproot(param1:int, param2:int) : void
      {
         var handler:Function = null;
         var htmlMsg:String = null;
         var msg:String = null;
         var _alert:Alert = null;
         var tf:IUITextField = null;
         var nid:int = param1;
         var cost:int = param2;
         handler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("uproot",null,nid);
            }
         };
         htmlMsg = String(Language.ALERT_TO_SHOW[2].replace("{cost}",cost));
         msg = htmlMsg.replace(/<font(.*?)>/g,"");
         msg = msg.replace(/<\/font>/g,"");
         _alert = Alert.show(msg,"",Alert.YES | Alert.NO,null,handler);
         tf = _alert.mx_internal::alertForm.mx_internal::textField;
         tf.htmlText = htmlMsg;
      }
      
      public function startWorldCupFreeShopByPveToClient(param1:Number) : void
      {
         var _loc2_:String = null;
         if(param1)
         {
            _loc2_ = String(Language.WORLD_CUP_PANEL[62].replace("{num}",Math.ceil(param1 / 1000)));
            _core.sysMidNote(_loc2_);
            onSystemSay(_loc2_);
         }
      }
      
      public function onShowNewBuildManager(param1:int) : void
      {
         var _loc2_:Object = _core.view.getE(param1);
         _loc2_.showNewBuildManager();
      }
      
      public function callCreatureData(param1:Number, param2:String, param3:String, param4:Boolean) : void
      {
         var _loc5_:Object = null;
         _loc5_ = _core.view.getUI(ViewManager.STAGE_BATTLE);
         _loc5_ && _loc5_.callCreatureData(param1,param2,param3,param4);
      }
      
      public function onWingOn(param1:Object) : void
      {
         var _loc2_:Object = _core.view.getC(param1.cid);
         if(Boolean(_loc2_) && param1.resCode > 0)
         {
            _loc2_.gameObject.wingResCode = param1.resCode;
            _loc2_.wingOn();
         }
      }
      
      public function openPrePurchasePanel(param1:*) : void
      {
         var _loc2_:Object = null;
         if(_core.cid == param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_PREPURCHASE_ACTIVITY);
            if(_loc2_)
            {
               _loc2_.showPanel();
            }
         }
      }
      
      public function onGetSTHScoreRank(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT);
         _loc2_ && _loc2_.onGetSTHScoreRank(param1);
      }
      
      public function onMWeaponSkillUpdate(param1:Object, param2:Boolean = true) : void
      {
         _core.player.skillList = param1;
         _core.view.getUI(ViewManager.PANEL_SKILLMANAGER).updateMWeaponSkillList(null,param2);
      }
      
      public function onGetRedEnvelope(param1:*) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_REDENVELOPE_PANEL);
         if(_loc2_)
         {
            _loc2_.openRESingle(param1);
         }
      }
      
      public function initPetlrank(param1:*) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PET_ARENA_ACTIVITY);
         if(_loc2_)
         {
            _loc2_.initPetlrank(param1);
         }
      }
      
      public function onGetDotaData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DOTA);
         if(_loc2_)
         {
            _loc2_.onGetDotaData(param1);
         }
      }
      
      public function onItemUseCallBack(param1:Object) : *
      {
         var func:Function;
         var data:Object = param1;
         if(data == null)
         {
            return;
         }
         func = function(param1:CloseEvent):void
         {
            if(param1 == null)
            {
               trace("return");
               return;
            }
            if(param1.detail == Alert.YES)
            {
               trace("remote invoked");
               _core.remote.useItem(data.targetType,data.petId,data.sid,false);
            }
         };
         Alert.show(data.info,"",Alert.YES | Alert.NO,null,func);
      }
      
      public function onAddPetStoneItem(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:* = null;
         if(param1)
         {
            _loc2_ = int(param1["t"]);
            _loc3_ = int(param1["id"]);
            _loc4_ = int(param1["num"]);
            _loc5_ = GameData.d[_loc2_][_loc3_];
            if(_loc5_)
            {
               _loc6_ = "<font color=\"";
               _loc6_ = _loc6_ + GamePredef.MSG_ITEM_COLOR[Number(_loc5_["level"]) - 1];
               _loc6_ = _loc6_ + "\">";
               _loc6_ = _loc6_ + (_loc4_ + " ");
               _loc6_ = _loc6_ + _loc5_["name"];
               _loc6_ = _loc6_ + "</font>";
               _core.sysBlueMsg(Language.CALLBACK_S[52] + _loc6_);
            }
         }
      }
      
      public function onEquipOff(param1:Object) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:Number = NaN;
         var _loc2_:Object = _core.view.getC(param1.cid);
         if(param1.resCode != 0)
         {
            _loc2_.equipOff(param1.resCode);
            if(param1.dressFlag)
            {
               _loc2_.colorCode = param1.colorCode;
               _loc2_.gameObject.dressResCode = -1;
               if(param1.cid == _core.cid)
               {
                  _loc3_ = _core.data.getSlot({"sid":3});
                  if(_loc3_ && _loc3_.type == GamePredef.TBL_EQUIPT_INSTANCE)
                  {
                     _loc4_ = _core.getTemplateData(_loc3_.type,_loc3_.itemId);
                     _loc5_ = _core.player.gender == GamePredef.GENDER_MALE ? Number(_loc4_.resCodeMale) : Number(_loc4_.resCodeFemale);
                     _loc2_.equipOn(_loc5_,_core.player.ee,_core.player.ef,_core.player.star);
                  }
               }
               else
               {
                  _loc2_.equipOn(_loc2_.gameObject.wp,_loc2_.gameObject.ee,_loc2_.gameObject.ef,_loc2_.gameObject.star);
               }
            }
            else
            {
               _loc2_.gameObject.wp = 0;
            }
         }
      }
      
      public function onMonopolyRecord(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SUMMER_GAME);
         if(_loc2_)
         {
            _loc2_.onRecordRefresh(param1);
         }
      }
      
      public function onFarmLvUp(param1:Object) : void
      {
         if(Boolean(param1) && Boolean(param1.f))
         {
            _core.view.getUI(ViewManager.PANEL_FAZENDA).onFarmLvUp(param1.exp);
         }
      }
      
      public function onSyncRankList(param1:Array) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_TRIPLE_TOWN);
         _loc2_ && _loc2_.onSyncRankList(param1);
      }
      
      public function onTransAllExp(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         if(!param1)
         {
            return;
         }
         for(_loc2_ in param1.data)
         {
            if(param1.data[_loc2_])
            {
               onTransformExp(param1.data[_loc2_]);
            }
         }
         _loc3_ = _core.view.getUI(ViewManager.POPU_SOUL_PRODUCT);
         _loc4_ = _core.view.getUI(ViewManager.PANEL_PET_SOUL);
         if(param1.soulExp)
         {
            if(_core.player.soulExp != param1.soulExp)
            {
               _core.player.soulExp = param1.soulExp;
               _core.player.soulChip = param1.chip;
               if(_loc3_)
               {
                  _loc3_.changeSoulPanelInfo(_core.player.soulExp,_core.player.soulChip);
               }
               if(_loc4_)
               {
                  _loc4_.changeSoulPanelInfo(_core.player.soulExp,_core.player.soulChip);
               }
            }
            if(_loc4_)
            {
               _loc4_.showBtn();
            }
         }
      }
      
      public function onSTHShowPanel() : void
      {
         var _loc1_:Object = null;
         _loc1_ = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT);
         if(_loc1_)
         {
            _loc1_.showPanel();
         }
      }
      
      public function onCreateGuildBuildings(param1:Object) : void
      {
         _core.scene.sceneCreateGuildBuildings(param1);
      }
      
      public function selectCoverLongBuff(param1:Object) : void
      {
         var obj:Object = param1;
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("coverLongBuff",null,obj);
            }
         };
         var buff:Object = GameData.d[GamePredef.TBL_BUFF][obj[0].bid];
         var str:String = String(Language.CALLBACK_S[190].toString().replace("{name}",buff.name));
         Alert.show(str,"",Alert.YES | Alert.NO,null,func);
      }
      
      public function onDecoHeadOn(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:* = undefined;
         var _loc6_:Number = NaN;
         _loc2_ = _core.view.getC(param1.cid);
         if(Boolean(_loc2_) && Boolean(param1.decoInfo))
         {
            _loc3_ = Number(param1.decoInfo[1]["did"]);
            if(_loc3_)
            {
               _loc4_ = Number(param1.decoInfo[1]["showLvl"]);
               _loc5_ = GameData.d[GamePredef.TBL_DECO_SHOW][_loc3_];
               _loc2_.gameObject.decoHeadCode = Number(_loc5_["resCode" + (2 * _loc4_ - 1)]);
               _loc6_ = Number(param1.decoInfo[1]["isShow"]);
               if(_loc6_)
               {
                  trace("显示头顶光环");
                  _loc2_.haloOn();
               }
            }
         }
      }
      
      public function onGetWorldCupRank(param1:Array, param2:String) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_WORLD_CUP);
         if(_loc3_)
         {
            _loc3_.onGetWorldCupRank(param1,param2);
         }
      }
      
      public function onWatch(param1:Object) : void
      {
         _core.battle.battleOnStart(param1,true);
      }
      
      public function onRoomSay(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_GROUP_RECRUIT_DETAIL);
         _loc2_.onRoomSay(param1);
         if(param1 && param1[0] != _core.player.id && !_loc2_.visible)
         {
            _core.addWarn({"warnType":GamePredef.WARN_TYPE_GROUP_CHAT});
         }
      }
      
      public function onEnsureUseAlert(param1:String, param2:*) : void
      {
         var func:String = param1;
         var args:* = param2;
         var submission:Function = function(param1:String):void
         {
            _core.remote.call(func,null,param1,args);
         };
         _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.PLAYER_S[18],Language.PLAYER_S[19],submission);
      }
      
      public function onShowSkill(param1:Object) : void
      {
         if(!_core.view.getUI(ViewManager.PANEL_SKILLMANAGER).visible)
         {
            _core.view.getUI(ViewManager.PANEL_SKILLMANAGER).visible = true;
         }
         _core.view.getUI(ViewManager.PANEL_SKILLMANAGER).autoClick(param1);
      }
      
      public function onGetFarmLog(param1:Object) : void
      {
         _core.view.getUI(ViewManager.POP_FAZENDA_LOG).onGetFarmLog(param1);
      }
      
      public function onGMMsg(param1:String) : void
      {
         _core.view.getUI(ViewManager.MAIN_CHAT).showGMMsg(param1);
      }
      
      public function onUpMedal(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         if(!param1)
         {
            return;
         }
         if(Boolean(_core.player) && param1.hasOwnProperty("medalExp"))
         {
            _loc3_ = _core.player.medalExp - param1.medalExp;
            _core.player.medalExp = param1.medalExp;
            _loc4_ = String(Language.MEDAL_P[57]);
            _loc4_ = _loc4_.replace("{num}",Math.abs(_loc3_));
            _core.sysBlueMsg(_loc4_);
         }
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MEDAL);
         _loc2_ && _loc2_.onUpMedal(param1);
      }
      
      public function onBreakBrother() : void
      {
         var func:Function = null;
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.breakBrotherShip();
            }
         };
         Alert.show(Language.CALLBACK_S[198],"",Alert.YES | Alert.NO,null,func);
      }
      
      public function onGMChatMsg(param1:String, param2:String, param3:Number) : void
      {
         _core.view.getUI(ViewManager.MAIN_CHAT).showGMChatMsg(param1,param2,param3);
      }
      
      public function onSwapItem(param1:int, param2:int) : void
      {
         var _loc3_:Object = _core.data.getSlot({"sid":param2});
         var _loc4_:Object = _core.data.getSlot({"sid":param1});
         if(!_loc3_ || !_loc4_)
         {
            return;
         }
         _loc3_.sid = param1;
         _loc4_.sid = param2;
         if((param1 <= GamePredef.SLOT_SID_BAG[0] || param1 > GamePredef.SLOT_SID_BAG[_core.player.bagSlotNum]) && _core.data.isBagSlot(param2))
         {
            _core.data.extAddBagSlotIndex(_loc4_);
            _core.data.delBagSlotIndex(_loc3_.id);
         }
         else if((param2 <= GamePredef.SLOT_SID_BAG[0] || param2 > GamePredef.SLOT_SID_BAG[_core.player.bagSlotNum]) && _core.data.isBagSlot(param1))
         {
            _core.data.extAddBagSlotIndex(_loc3_);
            _core.data.delBagSlotIndex(_loc4_.id);
         }
         var _loc5_:* = _core.view.getSlot(param2);
         _loc5_ && _loc5_.restore();
         var _loc6_:* = _core.view.getSlot(param1);
         _loc6_ && _loc6_.restore();
      }
      
      public function onInitTS(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_IM).onInitTS(param1);
      }
      
      public function onTeamCrossPKBet(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_TEAM_FIGHT_BET);
         if(_loc2_)
         {
            _loc2_.onTeamCrossPKBet(param1);
         }
      }
      
      public function onEndBattle(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_TASKSWEEP);
            if(_loc2_)
            {
               _loc2_.onEndBattle(param1);
            }
         }
      }
      
      public function doubleHarvest(param1:int) : void
      {
         var handler:Function = null;
         var nid:int = param1;
         handler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("doDoubleHarvest",null,nid);
            }
         };
         Alert.show(Language.ALERT_TO_SHOW[0],"",Alert.YES | Alert.NO,null,handler);
      }
      
      public function msgAlert(param1:String) : void
      {
         if(_core && _core.view && Boolean(_core.view.getUI(ViewManager.MAIN_CHAT)))
         {
            _core.view.getUI(ViewManager.MAIN_CHAT).chatAlertShow(param1);
         }
      }
      
      public function onPetLevelUp(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:* = undefined;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PET_SOUL);
         if(_loc2_)
         {
            _loc2_.onPetLevelUp(param1.openNum,param1.pid);
         }
         _loc3_ = _core.view.getUI(ViewManager.PANEL_FINDBACK);
         if(_loc3_.visible)
         {
            _loc3_.resetPetMoney();
         }
      }
      
      public function onSetRoomConfig(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_GROUP_RECRUIT_DETAIL);
         _loc2_.onSetRoomConfig(param1);
      }
      
      public function onCrossContentionOpenSinglePanel(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_SINGLE_INFO);
         if(_loc2_)
         {
            _loc2_.enter(false);
         }
      }
      
      public function onInitUI() : void
      {
         _core.initMainUI();
      }
      
      public function inviteByLeader(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(!param1)
         {
            return;
         }
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PVP_ROOM_LIST);
         if(_loc2_ && Boolean(_loc2_.visible))
         {
            _loc2_.inviteByLeader(param1);
         }
      }
      
      public function gotoLightHeiyaoshiPoint(param1:Number) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_HEIYAOSHI);
         _loc2_ && _loc2_.gotoLightHeiyaoshiPoint(param1);
      }
      
      public function onSetSlotSid(param1:Number, param2:int) : void
      {
         var _loc4_:* = undefined;
         var _loc3_:DataManager = DataManager.getInstance();
         if(_loc3_.sInited)
         {
            _loc4_ = _loc3_.sList[param1];
            if(_loc4_)
            {
               if(param2 <= 0)
               {
                  _core.view.getSlot(_loc4_.sid).clean();
               }
               _loc4_.sid = param2;
            }
            _core.view.getUI(ViewManager.PANEL_BAG).updateView();
         }
      }
      
      public function onUpdateWbResult(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_WB_RESULT);
         if(_loc2_)
         {
            _loc2_.visible = true;
            _loc2_.updateView(param1);
         }
      }
      
      public function luckDrawBlueMsg(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:* = undefined;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Object = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:Number = Number(param1.type);
         _loc3_ = new Object();
         _loc3_ = param1.info;
         _loc4_ = _core.view.getUI(ViewManager.PANEL_LUCK_DRAW);
         if(_loc4_)
         {
            _loc4_.superLuckDrawSystemSay(_loc3_);
         }
         if(_loc4_)
         {
            if(!_loc4_.highestAwardArr)
            {
               _loc4_.highestAwardArr = new Array();
            }
            if(Number(_loc4_.highestAwardArr.length) < 20)
            {
               _loc4_.highestAwardArr.push(_loc3_);
            }
            else
            {
               _loc4_.highestAwardArr.shift();
               _loc4_.highestAwardArr.push(_loc3_);
            }
            if(_loc4_.linkVip)
            {
               _loc4_.linkVip.htmlText = "";
            }
            _loc5_ = _loc4_.highestAwardArr ? Number(_loc4_.highestAwardArr.length) : 0;
            if(Number(_loc5_) > 0)
            {
               _loc6_ = _loc5_ = Number(_loc5_) - 1;
               while(_loc6_ >= 0)
               {
                  _loc7_ = _loc4_.highestAwardArr[_loc6_];
                  _loc4_.superLuckDrawShow(_loc7_,2);
                  _loc6_--;
               }
            }
         }
      }
      
      public function onGetStageConsumeAwardList(param1:Object, param2:Object) : void
      {
         var _loc3_:Object = null;
         if(param1 != null)
         {
            _loc3_ = _core.view.getUI(ViewManager.PANEL_GAMEINTRO);
            _loc3_.getStageConsumeAwardList(param1,param2);
         }
      }
      
      public function onHorseRaceGo(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SUMMER_GAME_HORSE_RACE);
         if(_loc2_)
         {
            _loc2_.onGo(param1);
         }
      }
      
      public function quitGathering(param1:String) : void
      {
         var _loc2_:* = undefined;
         _loc2_ = _core.view.getUI(ViewManager.MAIN_GATHER_PROGRESS);
         if(_loc2_)
         {
            _loc2_.quit(param1);
         }
      }
      
      public function updateDailySignInActCrit(param1:Number) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DAILYSIGNINACT);
         if(_loc2_)
         {
            _loc2_.updateDailySignInActCrit(param1);
         }
      }
      
      public function onGroupInvited(param1:Object) : void
      {
         _core.group.onGroupInvited(param1);
      }
      
      public function onChongZhuRes(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_QILING);
         if(_loc2_)
         {
            _loc2_.onChongZhuRes(param1);
         }
      }
      
      public function onUpChaSlotStackNum(param1:Number, param2:int, param3:int) : void
      {
         var _loc4_:Object = _core.data.getSlot({"id":param1});
         _loc4_.stackNum = param2;
         var _loc5_:ISlot = _core.view.getSlot(param3);
         _loc5_.stackNum = param2;
         if(_loc4_.type == GamePredef.TBL_ITEM_INSTANCE)
         {
            _core.view.getUI(ViewManager.MAIN_USER_BAR).setNum();
            _core.view.getUI(ViewManager.PANEL_BATTLESET).setNum();
         }
         _core.view.getUI(ViewManager.MAIN_QUEST_GUIDE).updateView(true);
         var _loc6_:GameDataEvent = new GameDataEvent(GamePredef.EVENT_REFRESH_FUNCSLOTS);
         _loc6_.data = {
            "numOnly":true,
            "insId":_loc5_.giid,
            "stackNum":param2
         };
         _core.data.dispatchEvent(_loc6_);
      }
      
      public function onMoveToTBag(param1:uint, param2:uint, param3:Object, param4:uint) : void
      {
         var _loc5_:* = undefined;
         _loc5_ = _core.view.getSlot(param1);
         _loc5_.clean();
         _core.data.delSlot({"sid":param1});
         _core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT).UpdateSlot(param2,param3);
         _core.player.tBag.curNum = param4;
         _core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT).setnTxt();
      }
      
      public function onEnsureBuyContract(param1:int) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PET_EVOLUTION);
         _loc2_ && _loc2_.onEnsureBuyContract(param1);
      }
      
      public function addArenaLog(param1:String) : void
      {
         _core.view.getUI(ViewManager.PANEL_PET_ARENA).addArenaLog(param1);
      }
      
      public function onOpenBag(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(param1.index)
         {
            _core.player.soulBagData["open"] = param1.index;
            _loc2_ = _core.view.getUI(ViewManager.PANEL_PET_SOUL);
            if(_loc2_)
            {
               _loc2_.updateSoulSlotView(param1.index);
            }
         }
         else
         {
            Alert.show(Language.PET_SOUL_S[25],"",Alert.YES,null,null);
         }
      }
      
      public function onMoveMedal(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_MEDAL);
            if(_loc2_)
            {
               _loc2_.onMoveMedal(param1);
            }
         }
      }
      
      public function onBattlePlayList(param1:Array) : void
      {
         var _loc2_:Object = _core.view.getUI(ViewManager.STAGE_BATTLE);
         _loc2_.startSequence(param1);
      }
      
      public function onGroupDismiss(param1:Object) : void
      {
         _core.group.onGroupDismiss(param1);
      }
      
      public function onUpdateManJiuJianLimitItem(param1:Number, param2:Number) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_MANJIUJIAN);
         _loc3_ && _loc3_.onUpdateManJiuJianLimitItem(param1,param2);
      }
      
      public function onCR(param1:Object) : void
      {
         var _loc8_:Charactor = null;
         var _loc9_:Charactor = null;
         Debug.logFunc("onCR",param1);
         if(!_core.ready)
         {
            return;
         }
         var _loc2_:Charactor = _core.getCharactor(param1.id);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.inBattle)
         {
            return;
         }
         var _loc3_:Point = new Point(param1.x,param1.y);
         var _loc4_:Point = new Point(_loc2_.view.posX,_loc2_.view.posY);
         if(param1.id != _core.cid && Point.distance(_loc3_,_loc4_) > 300)
         {
            _loc2_.view.posX = param1.x;
            _loc2_.view.posY = param1.y;
         }
         if(_core.groupMemberListArr && _core.groupMemberListArr[param1.id] && Boolean(_core.groupMemberListArr[param1.id].groupAfk))
         {
            _loc2_.groupAfk = _core.groupMemberListArr[param1.id].groupAfk;
         }
         if(param1.mList == null || _loc2_.groupAfk)
         {
            if(_loc2_.isSelf)
            {
               return;
            }
            _loc2_.moveRoute = param1.route;
            _loc2_.walk();
            return;
         }
         var _loc5_:Object = param1.mList.head;
         var _loc6_:Object = _loc5_.next;
         while(_loc6_)
         {
            _loc8_ = _core.getCharactor(_loc5_.obj);
            _loc9_ = _core.getCharactor(_loc6_.obj);
            if(_loc9_ && _core.groupMemberListArr && Boolean(_core.groupMemberListArr[_loc6_.obj]) && Boolean(_core.groupMemberListArr[_loc6_.obj].groupAfk))
            {
               _loc9_.groupAfk = _core.groupMemberListArr[_loc6_.obj].groupAfk;
            }
            if(!_loc9_ || _loc9_.groupAfk)
            {
               if(Boolean(_loc9_) && Boolean(_loc9_.view))
               {
                  _loc9_.view.stopFollow();
               }
               _loc6_ = _loc6_.next;
            }
            else
            {
               _loc9_.view.startFollow(_loc8_.view);
               _loc9_.posX = _loc9_.view.posX;
               _loc9_.posY = _loc9_.view.posY;
               _loc5_ = _loc6_;
               _loc6_ = _loc6_.next;
            }
         }
         var _loc7_:Charactor;
         if(Boolean(_loc7_ = _core.getCharactor(param1.mList.head.obj)) && !_loc7_.isSelf)
         {
            _loc7_.moveRoute = param1.route;
            _loc7_.walk();
         }
      }
      
      public function onGroupRequest(param1:Object) : void
      {
         if(param1)
         {
            param1.level = _core.basic.expToLevel(param1.exp);
            param1.className = _core.getClassName(param1.classId);
            _core.view.getUI(ViewManager.PANEL_GROUP).onGroupRequest(param1);
         }
      }
      
      public function onTransformExp(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(param1.f)
         {
            _loc2_ = _core.view.getUI(ViewManager.POPU_SOUL_PRODUCT);
            _loc3_ = _core.view.getUI(ViewManager.PANEL_PET_SOUL);
            if(param1.soulExp)
            {
               _core.player.soulExp = param1.soulExp;
               _core.player.soulChip = param1.chip;
               if(_loc2_)
               {
                  _loc2_.changeSoulPanelInfo(_core.player.soulExp,_core.player.soulChip);
               }
               if(_loc3_)
               {
                  _loc3_.changeSoulPanelInfo(_core.player.soulExp,_core.player.soulChip);
               }
            }
            if(param1.index)
            {
               _core.player.soulBagData["data"][param1.index] = null;
               if(_loc3_)
               {
                  _loc3_.updateSoulSlotView(param1.index);
               }
            }
         }
      }
      
      public function onFinishGroupLoop(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_QUEST).onFinishQuest(param1);
      }
      
      public function onGloveEquip(param1:int, param2:Number) : void
      {
         var _loc3_:* = _core.view.getUI(ViewManager.PANEL_PRODUCT);
         if(_loc3_)
         {
            _loc3_.onUpdateGloveEquip(param1,param2);
         }
      }
      
      public function onGetBetBasicAward(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_TEAM_FIGHT);
         if(_loc2_)
         {
            _loc2_.onGetBetBasicAward(param1);
         }
      }
      
      public function onPutSoulToBag(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         if(param1.f)
         {
            if(param1.index)
            {
               _loc4_ = _core.view.getUI(ViewManager.POPU_SOUL_PRODUCT);
               if(_loc4_)
               {
                  _loc4_.delTempSoul(param1.index);
               }
               delete _core.player.soulTempBag[param1.index];
            }
            _core.player.soulBagData["data"][param1.soulData.s] = param1.soulData;
            _loc2_ = _core.view.getUI(ViewManager.PANEL_PET_SOUL);
            if(_loc2_)
            {
               _loc2_.updateSoulSlotView(param1.soulData.s);
            }
            _loc3_ = int(param1.soulData.sid);
            if(_loc3_)
            {
               _loc5_ = GameData.d[GamePredef.TBL_PET_SOUL][_loc3_];
               _loc6_ = String(Language.PET_SOUL_S[53]);
               _loc6_ = _loc6_.replace("{soul}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_PET_SOUL] + "|" + _loc3_ + "|" + _loc5_.name + "|" + _loc5_.color + "|0|0]"));
               _core.sysBlueMsg(_loc6_);
            }
         }
         else
         {
            switch(param1.type)
            {
               case 1:
                  Alert.show(Language.PET_SOUL_S[8],"",Alert.YES,null,null);
                  break;
               case 2:
                  Alert.show(Language.PET_SOUL_S[7],"",Alert.YES,null,null);
            }
         }
      }
      
      public function onViewChar(param1:Object) : void
      {
         if(param1)
         {
            _core.view.getUI(ViewManager.PANEL_CHARACTORINFO).onData(param1);
         }
         else
         {
            _core.sysMsg(Language.CALLBACK_S[61]);
         }
      }
      
      public function onStackItem(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:int) : void
      {
         trace(param1,param2,param3,param4,param5,param6);
         var _loc7_:Object = _core.data.getSlot({"id":param4});
         _loc7_.stackNum = param6;
         var _loc8_:Object = _core.data.getSlot({"id":param3});
         _loc8_.stackNum = param5;
         var _loc9_:* = _core.view.getSlot(param2);
         _loc9_.slotData = _loc7_;
         _loc9_.type = _loc7_.type;
         _loc9_.giid = _loc7_.itemId;
         _loc9_.stackNum = _loc7_.stackNum;
         var _loc10_:* = _core.view.getSlot(param1);
         _loc10_.slotData = _loc8_;
         _loc10_.type = _loc8_.type;
         _loc10_.giid = _loc8_.itemId;
         _loc10_.stackNum = _loc8_.stackNum;
      }
      
      public function onAddGuildRank(param1:Object) : void
      {
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_GUILD);
         _loc2_.onAddGuildRank(param1);
      }
      
      public function onWastelandSetBox(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SUMMER_GAME_WASTELAND);
         if(_loc2_)
         {
            _loc2_.onWastelandSetBox(param1);
         }
      }
      
      public function onShowBuildProgress(param1:int) : void
      {
         var _loc2_:Object = _core.view.getB(param1);
         if(_loc2_ == null)
         {
            trace("null build");
         }
         _loc2_.showBuildProgress();
      }
      
      public function onShowFirstOccupyAward(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_TOTAL);
         if(_loc2_)
         {
            _loc2_.onShowFirstOccupyAward(param1);
         }
      }
      
      public function onCancelUpgrade(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:* = undefined;
         _loc2_ = _core.view.getB(param1.bid);
         _loc3_ = _loc2_.gameObject;
         _loc3_.buildState = "";
      }
      
      public function onUpdateDressInto(param1:String) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DRESS);
         _loc2_ && _loc2_.onUpdateDressInfo(param1);
      }
      
      public function onSynchroNPCMove(param1:Object) : void
      {
      }
      
      public function onDecoHeadOff(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         _loc2_ = _core.view.getC(param1.cid);
         if(Boolean(_loc2_) && Boolean(param1.decoInfo))
         {
            _loc3_ = Number(param1.decoInfo[1]["did"]);
            if(!_loc3_)
            {
               _loc2_.gameObject.decoHeadCode = 0;
            }
            trace("卸载头顶光环");
            _loc2_.haloOff();
         }
      }
      
      public function onUpdateMyPoint(param1:Object) : *
      {
         var _loc2_:* = undefined;
         _loc2_ = _core.view.getUI(ViewManager.POPU_PVP_WAIT);
         if(_loc2_)
         {
            _loc2_.setPoint(param1);
         }
      }
      
      public function onXCDSRoundEnd(param1:*) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_XIAOCHUSDASAI_ACTIVITY);
         if(_loc2_)
         {
            _loc2_.onXCDSRoundEnd(param1);
         }
      }
      
      public function onOpenTKYYHInfoPanel(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_TKYYHInfo).visible = true;
      }
      
      public function endureAlert(param1:Number) : void
      {
         var _loc2_:String = "";
         if(param1 >= 1 && param1 <= 12 || param1 == 22)
         {
            _loc2_ = String(Language.CALLBACK_S[55]);
            _loc2_ = _loc2_.replace("{equipt}",GamePredef.EQUIP_POSITION[param1]);
            _core.sysMidNote(_loc2_);
         }
         else if(param1 >= GamePredef.PETEQU_POS_BEGIN && param1 <= GamePredef.PETEQU_POS_END)
         {
            _loc2_ = String(Language.CALLBACK_S[110]);
            _loc2_ = _loc2_.replace("{petName}",_core.battlePet.petName);
            _loc2_ = _loc2_.replace("{pos}",GamePredef.EQUIP_POSITION[param1]);
            _core.sysMidNote(_loc2_);
         }
      }
      
      public function onGetCrossContentionSingleState(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_SINGLE_INFO);
         if(_loc2_)
         {
            _loc2_.onGetCrossContentionSingleState(param1);
         }
      }
      
      public function onUpdateDecoInfo(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DECORATE);
         _loc2_ && _loc2_.updateDecoInfo(param1);
      }
      
      public function onUpdateAnniRank(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_ANNIVERSARY);
         if(_loc2_)
         {
            _loc2_.onUpdateRankByType(param1);
         }
      }
      
      public function showMazeLotteryPanel(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MAZE_LOTTERY);
         if(Boolean(_loc2_) && Boolean(param1))
         {
            _loc2_.showPanel(param1);
         }
      }
      
      public function updateLuckDrawBag(param1:Array) : void
      {
         var _loc2_:ArrayCollection = null;
         var _loc3_:* = undefined;
         var _loc4_:Object = null;
         _loc2_ = new ArrayCollection();
         for each(_loc3_ in param1)
         {
            _loc2_.addItem(_loc3_);
         }
         _loc4_ = _core.view.getUI(ViewManager.PANEL_LUCK_DRAW_BAG);
         if(_loc4_)
         {
            _loc4_.itemList = _loc2_;
         }
      }
      
      public function onDeleteFaild() : void
      {
         Alert.show(Language.CALLBACK_S[56]);
         _core.view.hide(ViewManager.POPU_WAIT);
      }
      
      public function addArenaNum(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_PET_ARENA).addArenaNum(param1);
      }
      
      public function onAllNpcMsg(param1:int, param2:Array) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Npc = null;
         var _loc6_:int = 0;
         var _loc3_:Object = _core.data.gameDataIndex[GamePredef.TBL_NPC][param1];
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = _core.getNpc(_loc4_.id);
            if(_loc5_)
            {
               if(param2.length == 1)
               {
                  _loc5_.view.onSay(param2[0]);
               }
               else
               {
                  _loc6_ = Math.round(Math.random() * (param2.length - 1));
                  _loc5_.view.onSay(param2[_loc6_]);
               }
            }
         }
      }
      
      public function onScriptContract(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         if(!_core.player.contractPet)
         {
            _core.player.contractPet = {};
         }
         _loc2_ = _core.player.contractPet;
         _loc3_ = int(param1.type);
         _loc4_ = String(GamePredef.CONTRACT_DICT[_loc3_]);
         if(param1.hasOwnProperty("newLvl"))
         {
            _loc2_[_loc4_] = param1.newLvl;
         }
         if(param1.hasOwnProperty("newExp"))
         {
            _loc6_ = _loc4_ + GamePredef.CONTRACT_EXP;
            _loc2_[_loc6_] = param1.newExp;
         }
         _loc5_ = _core.view.getUI(ViewManager.PANEL_PET_EVOLUTION);
         _loc5_ && _loc5_.updateContract(_loc3_);
      }
      
      public function updateLottoBag(param1:Array) : void
      {
         var _loc2_:ArrayCollection = null;
         var _loc3_:* = undefined;
         _loc2_ = new ArrayCollection();
         for each(_loc3_ in param1)
         {
            _loc2_.addItem(_loc3_);
         }
         _core.view.getUI(ViewManager.PANEL_LOTTO_BAG).itemList = _loc2_;
         _core.player.lottoBagLength = param1.length.toString();
      }
      
      public function updatePetStoneBagData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PET_STONE);
         if(_loc2_)
         {
            _loc2_.updatePetStoneBagData(param1);
         }
      }
      
      public function showMazeQuestionPanel(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MAZE_QUESTION);
         if(Boolean(_loc2_) && Boolean(param1))
         {
            _loc2_.showPanel(param1);
         }
      }
      
      public function onStageEffect(param1:Object) : void
      {
         var _loc2_:Charactor = _core.getCharactor(param1.cid);
         if(_loc2_)
         {
            _loc2_.view.frontEffect(param1.effectId);
         }
      }
      
      public function onAddGuild(param1:Object) : void
      {
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_GUILD);
         _loc2_.onAddGuild(param1);
         var _loc3_:String = "";
         _loc3_ = String(Language.CALLBACK_S[87]);
         _loc3_ = _loc3_.replace("{nameLink}",TextUtil.decode(LinkEncode.encode(GamePredef.TBL_CHARACTOR,param1.cid,param1.ln)));
         _core.sysMsg(_loc3_);
      }
      
      public function onUpdateLifeDex(param1:Object) : void
      {
         if(param1)
         {
            _core.player.property[param1.prop] = Number(param1.value);
         }
      }
      
      public function onUPP(param1:Object) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Number = NaN;
         if(!_core.player)
         {
            return;
         }
         var _loc2_:String = "";
         var _loc3_:Object = _core.view.getUI(ViewManager.STAGE_BATTLE);
         for(_loc4_ in param1)
         {
            if(_core.player.hasOwnProperty(_loc4_))
            {
               _loc5_ = 0;
               if(param1[_loc4_] is Number)
               {
                  _loc5_ = param1[_loc4_] - _core.player[_loc4_];
               }
               _core.player[_loc4_] = param1[_loc4_];
               switch(_loc4_)
               {
                  case "chival":
                     if(_loc5_ >= 0)
                     {
                        _loc2_ = String(Language.CALLBACK_S[7]);
                        _loc2_ = _loc2_.replace("{num}",Math.abs(_loc5_));
                     }
                     else
                     {
                        _loc2_ = String(Language.CALLBACK_S[8]);
                        _loc2_ = _loc2_.replace("{num}",Math.abs(_loc5_));
                     }
                     _core.sysBlueMsg(_loc2_);
                     break;
                  case "honor":
                     if(_loc5_ >= 0)
                     {
                        _loc2_ = String(Language.CALLBACK_S[80]);
                        _loc2_ = _loc2_.replace("{num}",Math.abs(_loc5_));
                     }
                     else
                     {
                        _loc2_ = String(Language.CALLBACK_S[81]);
                        _loc2_ = _loc2_.replace("{num}",Math.abs(_loc5_));
                     }
                     _core.sysBlueMsg(_loc2_);
                     break;
                  case "pop":
                     if(_loc5_ >= 0)
                     {
                        _loc2_ = String(Language.CALLBACK_S[108]);
                        _loc2_ = _loc2_.replace("{num}",Math.abs(_loc5_));
                     }
                     else
                     {
                        _loc2_ = String(Language.CALLBACK_S[109]);
                        _loc2_ = _loc2_.replace("{num}",Math.abs(_loc5_));
                     }
                     _core.sysBlueMsg(_loc2_);
                     break;
                  case "bagSlotNum":
                     _core.view.getUI(ViewManager.PANEL_BAG).updateView();
                     _core.sysMidNote(Language.CALLBACK_S[13]);
                     break;
                  case "bankSlotNum":
                     _core.view.getUI(ViewManager.PANEL_BANK).updateView();
                     _core.sysMidNote(Language.CALLBACK_S[14]);
                     break;
                  case "petMaxNum":
                     _core.view.getUI(ViewManager.PANEL_PETMANAGER).updateView();
                     _core.view.getUI(ViewManager.PANEL_BAG).petInit();
                     _core.sysMidNote(Language.CALLBACK_S[15]);
                     break;
                  case "expSkill":
                     if(_loc5_ >= 0)
                     {
                        _loc2_ = String(Language.CALLBACK_S[16]);
                        _loc2_ = _loc2_.replace("{num}",Math.abs(_loc5_));
                     }
                     else
                     {
                        _loc2_ = String(Language.CALLBACK_S[17]);
                        _loc2_ = _loc2_.replace("{num}",Math.abs(_loc5_));
                     }
                     _core.sysBlueMsg(_loc2_);
                     break;
                  case "expRe":
                     if(_loc5_ >= 0)
                     {
                        _loc2_ = String(Language.CALLBACK_S[226]);
                        _loc2_ = _loc2_.replace("{num}",Math.abs(_loc5_));
                     }
                     _core.player.levelRe = _core.basic.expReToLevelRe(_core.player.expRe);
                     _core.sysBlueMsg(_loc2_);
                     break;
                  case "expBattle":
                     if(_core.state != GamePredef.ST_CORE_NORMAL)
                     {
                        _loc3_.expBattle += _loc5_;
                     }
                     else
                     {
                        if(_loc5_ >= 0)
                        {
                           _loc2_ = String(Language.CALLBACK_S[19]);
                           _loc2_ = _loc2_.replace("{num}",Math.abs(_loc5_));
                        }
                        else
                        {
                           _loc2_ = String(Language.CALLBACK_S[20]);
                           _loc2_ = _loc2_.replace("{num}",Math.abs(_loc5_));
                        }
                        _core.sysBlueMsg(_loc2_);
                     }
                     break;
                  case "reputation":
                     if(_core.state != GamePredef.ST_CORE_NORMAL)
                     {
                        _loc3_.rep += _loc5_;
                     }
                     else
                     {
                        if(_loc5_ >= 0)
                        {
                           _loc2_ = String(Language.CALLBACK_S[22]);
                           _loc2_ = _loc2_.replace("{num}",Math.abs(_loc5_));
                        }
                        else
                        {
                           _loc2_ = String(Language.CALLBACK_S[23]);
                           _loc2_ = _loc2_.replace("{num}",Math.abs(_loc5_));
                        }
                        _core.sysBlueMsg(_loc2_);
                     }
                     break;
                  case "cl":
                     _core.sysBlueMsg(Language.CALLBACK_S[25] + GamePredef.CLASS_LEVEL[param1[_loc4_]] + _core.player.className);
                     break;
                  case "tl":
                     _core.view.getUI(ViewManager.PANEL_IM).updateViewTS();
                     break;
                  case "cp":
                     break;
                  case "vigor":
                  case "maxVigor":
                  case "actpoint":
                     _core.view.getUI(ViewManager.PANEL_CHARACTOR).updateView();
                     if(_loc4_ == "actpoint")
                     {
                        _core.view.getUI(ViewManager.PANEL_FAZENDA).updateActpoint();
                     }
               }
            }
            else if(_loc4_ == "ep")
            {
               _core.setBloodBag(param1.ep);
            }
            else if(_loc4_ == "name")
            {
               trace(_core.player[_loc4_]);
            }
         }
         _core.view.getUI(ViewManager.MAIN_SELF).update();
         _core.view.getUI(ViewManager.PANEL_CHARACTOR).updateView();
         _core.view.getUI(ViewManager.MAIN_QUEST_GUIDE).updateView();
      }
      
      public function onSubmitAddictNotAdult(param1:int) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.MAIN_ADDICT_INFO);
         if(_loc2_)
         {
            _loc2_.onSubmitAddictNotAdult(param1);
         }
      }
      
      public function tripleTownBattleEnd(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_TRIPLE_TOWN);
         _loc2_ && _loc2_.tripleTownBattleEnd(param1);
      }
      
      public function onGetAnFreeSpace() : void
      {
         _core.battleServer.dispatchEvent(new Event(BattleServer.EVENT_BATTLE_SERVER_FREE_SPACE));
      }
      
      public function onGuildSkillDeveloped(param1:Object) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_GUILD_SKILL_DEV);
         _loc2_.showGuildSkillView(param1,false);
         var _loc3_:String = String(GameData.d[GamePredef.TBL_SKILL][param1.sid].name);
         var _loc4_:Object = GameData.d[GamePredef.TBL_SKILL][param1.sid].level;
         var _loc5_:String = String(Language.CALLBACK_S[104]);
         _loc5_ = _loc5_.replace("{name}",_loc3_);
         _loc5_ = _loc5_.replace("{level}",_loc4_);
         _core.sysMsg(_loc5_);
      }
      
      public function onXCDSMoveBox(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_XIAOCHUSDASAI_ACTIVITY);
         if(_loc2_)
         {
            _loc2_.onSetBox(param1);
         }
      }
      
      public function OnSTHForHelp(param1:Object, param2:Number) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT);
         if(_loc3_)
         {
            if(param1)
            {
               _loc3_.OnSTHForHelp(param1,param2);
            }
         }
      }
      
      public function onFindStudent(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_IM).onFindStudent(param1);
      }
      
      public function onGetBetData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_TEAM_FIGHT);
         if(_loc2_)
         {
            _loc2_.onGetBetData(param1);
         }
      }
      
      public function onOpenMQDTPanelOnly(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_MQDT).visible = true;
      }
      
      public function onDailyNotice(param1:String) : void
      {
         _core.sysBlueMsg(param1);
      }
      
      public function onHMTXLPetFight(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc4_:Number = NaN;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc8_:Object = null;
         _loc2_ = param1.rsltObj;
         var _loc3_:* = param1.pubdata;
         _loc5_ = "";
         var _loc7_:String = String(Language.PETFIGHT_PANEL_U[6]);
         if(_loc2_.result == GamePredef.BATTLE_WIN)
         {
            if(param1.guest)
            {
               _loc4_ = Number(param1.cid);
               _loc5_ = String(Language.XLS_PANEL[22]);
            }
            else
            {
               _loc4_ = Number(param1.tid);
               _loc5_ = String(Language.XLS_PANEL[21]);
            }
            _loc6_ = TextUtil.decode("[@PID|" + _loc4_ + "|" + param1.name + "|0|0|0]");
            _loc5_ = _loc5_.replace("{enemy}",_loc6_);
         }
         else if(_loc2_.result == GamePredef.BATTLE_LOSE || _loc2_.result == GamePredef.BATTLE_NOT_END)
         {
            if(param1.guest)
            {
               _loc6_ = TextUtil.decode("[@PID|" + param1.cid + "|" + param1.name + "|0|0|0]");
               _loc5_ = String(Language.XLS_PANEL[23].replace("{enemy}",_loc6_));
            }
            else
            {
               _loc5_ = String(Language.PETFIGHT_PANEL_U[5]);
            }
         }
         if(!_loc2_.noreplay && Boolean(_loc2_.bid))
         {
            _loc5_ += String(Language.PETFIGHT_PANEL_U[11]).replace("{bid}",_loc2_.bid);
         }
         if(Boolean(_loc2_.noreplay) && _loc2_.result == GamePredef.BATTLE_LOSE)
         {
            _loc5_ += String(Language.XLS_PANEL[24]);
         }
         onHMTXLSMSG(_loc5_);
         _loc8_ = _core.view.getUI(ViewManager.PANEL_XIULIAN_PANEL);
         if(_loc8_)
         {
            _loc8_.onHMTXLSData(param1);
         }
      }
      
      public function onUpdateGWScore(param1:Object) : *
      {
         var _loc2_:* = undefined;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.MAIN_GW_SCORE);
            if(_loc2_)
            {
               _loc2_.visible = param1.visible;
               _loc2_.updateScore(param1.score);
               _loc2_.setSocreVisible(param1.visible);
            }
         }
      }
      
      public function onGiftRemain(param1:String) : void
      {
         var _loc2_:* = undefined;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_GAMEINTRO);
         _loc2_ && _loc2_.onGiftRemain();
         onSystemSay(param1);
      }
      
      public function delBuff(param1:Number) : void
      {
         _core.view.getUI(ViewManager.MAIN_LONGBUFF).delBuff(param1);
      }
      
      public function onMoveItemNum(param1:int, param2:Number, param3:int) : void
      {
         var _loc4_:Object = _core.data.getSlot({"id":param2});
         _loc4_.stackNum = param3;
         _core.data.updateSlot(_loc4_);
         var _loc5_:* = _core.view.getSlot(param1);
         _loc5_.slotData = _loc4_;
         _loc5_.stackNum = _loc4_.stackNum;
      }
      
      public function onRestDairyView(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_GAMEINTRO).clearDiaryProgress();
      }
      
      public function onSaveReplay(param1:Object) : void
      {
         if(param1)
         {
            _core.view.getUI(ViewManager.POP_FAZENDA_LOG).onSaveReplay(param1);
            addFarmLog(Language.PETFIGHT_PANEL_U[18]);
         }
      }
      
      public function initTaskSweepPanel(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(param1)
         {
            if(!param1.st)
            {
               if(_core.player.taskSweep)
               {
                  return;
               }
            }
            _loc2_ = _core.view.getUI(ViewManager.PANEL_TASKSWEEP);
            if(_loc2_)
            {
               _loc2_.sweepFlag = false;
               if(Boolean(param1.id) && Boolean(param1.taskName))
               {
                  _loc2_.replaceIndex(param1.id,param1.taskName,param1.taskType);
               }
               _loc2_.initTaskSweepPanel(param1);
            }
         }
      }
      
      public function updateMonsterHeartPanel(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MONSTERHEART);
         if(_loc2_)
         {
            _loc2_.updateMonsterHeartPanel(param1);
         }
      }
      
      public function onAddMail(param1:Object) : void
      {
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_MAILMANAGER);
         _loc2_.onAddMail(param1);
      }
      
      public function onSetBrotherTitle() : void
      {
         var title:String = null;
         var alert:Function = null;
         var setBrotherTitle:Function = null;
         var showInputPanel:Function = null;
         alert = function(param1:String):void
         {
            var _loc2_:String = null;
            title = param1;
            if(title.length < 1)
            {
               return;
            }
            _loc2_ = String(Language.CALLBACK_S[196].toString().replace("{name}",param1));
            Alert.show(_loc2_,"",Alert.YES | Alert.NO,null,setBrotherTitle);
         };
         setBrotherTitle = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("updateBrotherTitle",null,title);
            }
         };
         showInputPanel = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.INPUTPANEL_U[5],"",alert);
            }
            else
            {
               onSystemSay(Language.CALLBACK_S[203]);
            }
         };
         Alert.show(Language.CALLBACK_S[202],"",Alert.YES | Alert.NO,null,showInputPanel);
      }
      
      public function onList(param1:Number, param2:String, param3:String, param4:Array) : void
      {
         var _loc5_:Object = _core.view.getUI(ViewManager.PANEL_NPCSCRIPT);
         _loc5_.setInfo(param1,param2,param3,param4);
      }
      
      public function updatePRSExcBag(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PET_REAl_SOUL);
         _loc2_ && _loc2_.updatePRSExcBag(param1);
      }
      
      public function onInviteToMyGuildFailed(param1:Object) : void
      {
         if(param1 is String)
         {
            _core.sysMsg(param1 as String);
         }
         else
         {
            trace("errorInfo must be string ");
         }
      }
      
      public function onGetPetConfActivity(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PETFIGHT_CONF_ACTIVITY);
         _loc2_.onGetPetConf(param1);
      }
      
      public function enableSV(param1:Number) : void
      {
         if(Boolean(_core) && Boolean(_core.player))
         {
            if(param1 > 0)
            {
               _core.player.enableSpeedValidation = true;
               _core.player.serverSpeedThreshold = param1;
            }
            else
            {
               _core.player.enableSpeedValidation = false;
            }
         }
      }
      
      public function gotoLightHeiyaoshiAllJihuo(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_HEIYAOSHI);
         _loc2_ && _loc2_.gotoLightHeiyaoshiAllJihuo(param1);
      }
      
      public function showWingColorPanel(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_WING_COLOR);
         if(_loc2_)
         {
            _loc2_.colorObj = param1;
            _loc2_.visible = true;
         }
      }
      
      public function onUpdateFairy(param1:Number, param2:String, param3:String) : void
      {
         _core.view.getUI(ViewManager.PANEL_FAIRY_MANAGER).updateFairy(param1,param2,param3);
      }
      
      public function onGetWorldCupShopLimitDataTcn(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_WORLD_CUP);
         if(_loc2_)
         {
            _loc2_.onGetWorldCupShopLimitDataTcn(param1);
         }
      }
      
      public function onAddRoomMember(param1:Object) : *
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_PVP_ROOM_LIST);
            if(_loc2_ && Boolean(_loc2_.visible))
            {
               _loc2_.onAddRoomMember(param1);
            }
            _loc2_ = _core.view.getUI(ViewManager.POPU_PVP_WAIT);
            if(_loc2_ && Boolean(_loc2_.visible))
            {
               if(Boolean(param1) && Boolean(param1.memberList))
               {
                  for each(_loc3_ in param1.memberList)
                  {
                     if(_loc3_)
                     {
                        if(Number(_loc3_.cid) == Number(_core.player.id))
                        {
                           _loc2_.onRefershMember(param1);
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function onPPCHESData(param1:*) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PREPURCHASE_ACTIVITY);
         if(_loc2_)
         {
            _loc2_.onPPCHESData(param1);
         }
      }
      
      public function onForcePVP(param1:Number) : void
      {
         var cid:Number = param1;
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.PVPStartClient(cid,true);
            }
         };
         Alert.show(Language.CALLBACK_S[74],"",Alert.YES | Alert.NO,null,func);
      }
      
      public function updateUserBar(param1:Object) : void
      {
         var _loc2_:* = undefined;
         for(_loc2_ in param1)
         {
            GamePredef.GLOBAL_SETTING[_loc2_] = param1[_loc2_];
         }
         _core.view.getUI(ViewManager.MAIN_USER_BAR).initView();
      }
      
      public function onGetScoreAward(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_SCORE_AWARD);
         if(_loc2_)
         {
            _loc2_.onGetScoreAward(param1);
         }
      }
      
      public function showChangeRbRes(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CHANGE_RES);
         if(_loc2_)
         {
            _loc2_.newResObj = param1;
         }
      }
      
      public function synTreasureBowlClient(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_TREASURE_BOWL);
         if(Boolean(_loc2_) && Boolean(param1))
         {
            _loc2_.onSynTreasureBowlClient(param1);
         }
      }
      
      public function onCrossContentionOpenFightPanel(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_FIGHT);
         if(_loc2_)
         {
            _loc2_.onGetData(param1);
         }
      }
      
      public function onPetEquipOn(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:GameDataEvent = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PETMANAGER);
         if(Boolean(param1) && Boolean(_loc2_))
         {
            _loc2_.onPetEquipOn(param1.pid,param1.pos,param1.oldSid,param1.newSid);
         }
         _loc3_ = new GameDataEvent(GamePredef.EVENT_REFRESH_FUNCSLOTS);
         _loc3_.data = {};
         _core.data.dispatchEvent(_loc3_);
      }
      
      public function onInviteToGuild(param1:Object) : void
      {
         var handler:Function;
         var addToGuildInfo:Object = param1;
         if(addToGuildInfo == null)
         {
            return;
         }
         handler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               addToGuildInfo.agree = 1;
            }
            else
            {
               addToGuildInfo.agree = 0;
            }
            _core.remote.inviteReturned(addToGuildInfo);
         };
         Alert.show(addToGuildInfo.inviteInfo,"",Alert.YES | Alert.NO,null,handler);
      }
      
      public function onBackToCharSelect() : void
      {
         _core.scene.sceneLeave();
         _core.view.show(ViewManager.UI_LOGIN);
         _core.view.hide(ViewManager.FORE_L_R);
         _core.view.hide(ViewManager.STAGE_MAIN);
         _core.view.hide(ViewManager.UI_MAIN);
         if(_core.state == GamePredef.ST_CORE_BATTLE)
         {
            _core.battle.battleOnEnd();
         }
         _core.clearCharHistory();
         _core.remote.icl();
      }
      
      public function updateActivatePetObj(param1:*) : *
      {
         _core.player.activePetObject = param1;
      }
      
      public function onStartDXDRegister(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(param1.canRegister)
         {
            if(_core && _core.player && _core.player.level >= param1.minLevel && _core.player.level <= param1.maxLevel)
            {
            }
            _loc2_ = {"warnType":GamePredef.WARN_TYPE_REGISTER_DXD};
            _core.addAwardWarn(_loc2_);
         }
         else if(param1.canRegister == false)
         {
            _core.view.getUI(ViewManager.MAIN_AWARD_WARN).delDXDRegisterWarn();
         }
      }
      
      public function onGetDoubleElevenData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DOUBLE_ELEVEN);
         if(_loc2_)
         {
            _loc2_.onGetDoubleElevenData(param1);
         }
      }
      
      public function onSetVipTitle(param1:int) : void
      {
         trace("vipTid : " + param1);
      }
      
      public function onOpenShop(param1:int) : void
      {
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_SHOP);
         if(_loc2_)
         {
            _loc2_.showDataDirect(param1);
         }
      }
      
      public function onCreatePet(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         var _loc4_:Pet = null;
         _loc2_ = param1.petData;
         _loc3_ = Number(param1.cid);
         onCancelPet(_loc3_);
         _loc4_ = _core.createPet(_loc2_);
         _core.view.addP(_loc4_);
      }
      
      public function onCancelLoopQuest(param1:Object) : void
      {
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_QUESTMANAGER);
         if(_loc2_)
         {
            _loc2_.onCancelLoopQuest(param1);
         }
      }
      
      public function onUpdateCrossDFRank(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_BATTLE_RANK);
         if(_loc2_)
         {
            _loc2_.addUpdateRecord(param1);
         }
      }
      
      public function onNpcShowRank(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_NPCSHOWRANK);
            if(_loc2_)
            {
               _loc2_.show();
               _loc2_.updateRankView(param1);
            }
         }
      }
      
      public function grouponAlert(param1:String) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_GROUPON);
         _loc2_ && _loc2_.grouponAlert(param1);
      }
      
      public function onChangeGuildName(param1:String) : void
      {
         _core.view.getUI(ViewManager.PANEL_GUILD).onChangeGuildName(param1);
      }
      
      public function onCreateBuild(param1:Object) : void
      {
         if(param1 == null)
         {
            trace("newBuild is null");
            return;
         }
         if(!param1.hasOwnProperty("extendId"))
         {
            trace("no property named extendId");
            return;
         }
         var _loc2_:* = _core.view.getE(param1.extendId);
         if(_loc2_ != null)
         {
            _loc2_.destroy();
         }
         _core.createBuild(param1);
      }
      
      public function onGroupGiveLeader(param1:Object) : void
      {
         _core.group.onGroupGiveLeader(param1);
      }
      
      public function onTeamCrossPKAskMember(param1:String) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_TEAM_FIGHT);
         if(_loc2_)
         {
            _loc2_.onTeamCrossPKAskMember(param1);
         }
      }
      
      public function addTeamPoll(param1:int, param2:int) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_CROSS_FIGHT);
         if(_loc3_)
         {
            _loc3_.addTeamPoll(param1,param2);
         }
      }
      
      public function onShowNewWingPro(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_WING_FUNC);
         if(_loc2_)
         {
            _loc2_.updateNewWingPro(param1);
         }
      }
      
      public function onAddRelationByName(param1:Number, param2:int) : void
      {
         var _loc3_:* = _core.view.getUI(ViewManager.PANEL_IM);
         if(_loc3_)
         {
            _loc3_.onAddRelationByName(param1,param2);
         }
      }
      
      public function onAddItemDelmx(param1:Object, param2:uint, param3:uint) : void
      {
         var _loc4_:Object = null;
         _loc4_ = _core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT);
         _core.player.tBag.mx.curNum = param3;
         _core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT).UpdatemxSlot(param2,param1);
         if(Boolean(_loc4_) && Boolean(_loc4_.initialized))
         {
            _core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT).setnTxt();
         }
      }
      
      public function onUpdateFlyState(param1:Object) : void
      {
         var _loc2_:Charactor = _core.getCharactor(param1.id);
         if(_loc2_ == null)
         {
            return;
         }
         if(_core.player.flyingState == GamePredef.FLYING_STATE_IN_THE_AIR)
         {
            if(_core.view.getUI(ViewManager.MAIN_MINIMAP).flyBtn.label == Language.MINIMAPCANVAS_U[7])
            {
               _core.view.getUI(ViewManager.MAIN_MINIMAP).flyBtn.label = Language.MINIMAPCANVAS_U[8];
            }
         }
         else if(!param1.flag)
         {
            onBeginFlying(param1);
         }
         else
         {
            _core.remote.call("updateTeamFlyState",null,null);
         }
      }
      
      public function onFlyerOn(param1:Object) : void
      {
         var _loc2_:Object = _core.view.getC(param1.cid);
         if(Boolean(_loc2_) && Boolean(param1.resCode))
         {
            _loc2_.gameObject.flyerResCode = param1.resCode;
            if(param1.wavCode)
            {
               _loc2_.gameObject.flyerFrontResCode = param1.wavCode;
            }
         }
      }
      
      public function onDelFairy(param1:Number) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_FAIRY_MANAGER);
         _loc2_.onDelFairy(param1);
      }
      
      public function resetDressHide() : void
      {
         _core.view.getUI(ViewManager.PANEL_CHARACTOR).setDressHideCBSelected(false);
         _core.view.getUI(ViewManager.PANEL_SYSTEM).setDressHideCB(false);
      }
      
      public function showWingFunc() : void
      {
         var _loc1_:Object = null;
         _loc1_ = _core.view.getUI(ViewManager.PANEL_WING_FUNC);
         if(_loc1_)
         {
            if(_loc1_.isFirst.indexOf(_core.player.id) <= 0)
            {
               _core.remote.call("checkEquipEdit",null,3);
               _loc1_.isFirst = _loc1_.isFirst + _core.player.id + "|";
            }
            _loc1_.show();
         }
      }
      
      public function onFlopRestart(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_FLOP_PASS);
         if(_loc2_)
         {
            _loc2_.onFlopRestart(param1);
         }
      }
      
      public function onMoveStoneBagToBag(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PET_TALENT_FUNC);
         if(Boolean(_loc2_) && Boolean(param1))
         {
            _loc2_.cleanFuncSlot();
            _loc2_.onUpdateTalentData(param1);
         }
      }
      
      public function goldBuyHeiyaoshi(param1:Number, param2:Number) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_HEIYAOSHI);
         _loc3_ && _loc3_.goldBuyHeiyaoshi(param1,param2);
      }
      
      public function onRequestTrade(param1:Number, param2:String) : void
      {
         var _loc3_:* = _core.view.getUI(ViewManager.PANEL_TRADE);
         if(_loc3_)
         {
            _loc3_.onRequestTrade(param1,param2);
         }
      }
      
      public function onCancelCreate(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getB(param1.bid);
         if(_loc2_)
         {
            _loc2_.destroy();
         }
         _core.createBuild(param1.ext);
      }
      
      public function updateGrouponStat(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_GROUPON);
         _loc2_ && _loc2_.updateStat(param1);
      }
      
      private function footleMsg(param1:String) : String
      {
         var _loc2_:Array = new Array(Language.CALLBACK_S[88],Language.CALLBACK_S[89],Language.CALLBACK_S[90],Language.CALLBACK_S[91],Language.CALLBACK_S[92],Language.CALLBACK_S[93]);
         var _loc3_:String = String(_loc2_[Math.floor(Math.random() * _loc2_.length)]);
         if(param1.length <= 1)
         {
            return _loc3_ + param1 + _loc3_;
         }
         var _loc4_:int = Math.floor(Math.random() * param1.length);
         var _loc5_:String = param1.substring(0,_loc4_);
         var _loc6_:String = param1.substr(_loc4_);
         if(param1.indexOf("href") >= 0)
         {
            trace("文字带链接");
            return _loc3_ + param1 + _loc3_;
         }
         return _loc3_ + _loc5_ + _loc3_ + _loc6_ + _loc3_;
      }
      
      public function hidePanelInBloodyBattle() : void
      {
         var _loc1_:Array = null;
         var _loc2_:uint = 0;
         var _loc3_:Object = null;
         _loc1_ = [ViewManager.MAIN_ACTIVITY,ViewManager.MAIN_MINIMAP,ViewManager.MAIN_QUEST_GUIDE];
         for each(_loc2_ in _loc1_)
         {
            _loc3_ = _core.view.getUI(_loc2_);
            if(_loc3_)
            {
               if(_loc2_ == ViewManager.MAIN_QUEST_GUIDE)
               {
                  _loc3_.hide();
               }
               else
               {
                  _loc3_.visible = false;
               }
            }
         }
         _loc3_ = _core.view.getUI(ViewManager.PANEL_BLOODY_BATTLE_INFO);
         if(_loc3_)
         {
            _loc3_.show();
         }
      }
      
      public function onNpcMsg(param1:int, param2:String) : void
      {
         var _loc3_:Npc = _core.getNpc(param1);
         if(_loc3_)
         {
            _loc3_.view.onSay(param2);
         }
      }
      
      public function onGetAstrologicData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_ASTROLOGIC);
         if(Boolean(_loc2_) && Boolean(param1))
         {
            _loc2_.initData(param1);
         }
      }
      
      public function onFaultChatGM(param1:String, param2:String) : void
      {
         _core.view.getUI(ViewManager.MAIN_CHAT).onFaultChatGM(param1,param2);
      }
      
      public function onUpdateTrialsLifeAndTime(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.MAIN_MINIMAP);
         if(_loc2_)
         {
            _loc2_.onTrialsTimerAward(param1);
         }
      }
      
      public function onApplyToRoom() : void
      {
         onMidNote(Language.GROUP_RECRUIT_PANEL_S[9]);
      }
      
      public function onMakeTS(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_IM).onMakeTS(param1);
      }
      
      public function addArenaLogActivity(param1:String) : void
      {
         _core.view.getUI(ViewManager.PANEL_PET_ARENA_ACTIVITY).addArenaLog(param1);
      }
      
      public function onGetMQDTQuestion(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_MQDT).updateMQDTQuestion(param1);
      }
      
      public function onSubmitInviter(param1:int) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_RETURN_REWARD);
         if(_loc2_)
         {
            _loc2_.onSubmitInviter(param1);
         }
      }
      
      public function onGroupRequestFailed(param1:Object) : void
      {
         _core.group.onGroupRequestFailed(param1);
      }
      
      public function onStartNewGift(param1:int, param2:Object) : void
      {
         var _loc3_:Object = new Object();
         _loc3_ = param2.plan;
         _loc3_.restTime = param1;
         _loc3_.sp = param2.sp;
         _loc3_.warnType = GamePredef.WARN_TYPE_AWARD;
         if(Boolean(param2.type) && param2.type == "feastival")
         {
            switch(param2.toolTip)
            {
               case "thankDay":
                  _loc3_.toolTip = Language.GAMEPREDEF_S[531];
               case "chrismas":
                  _loc3_.toolTip = Language.GAMEPREDEF_S[532];
            }
            _loc3_.warnType = GamePredef.WARN_TYPE_FEASTIVAL;
         }
         _core.addAwardWarn(_loc3_);
      }
      
      public function reelQuestInfo(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_QUEST).reelQuestInfo(param1);
      }
      
      public function onBeginDisbondBrothers() : void
      {
         var func:Function = null;
         disbondBroFunEnable = true;
         func = function(param1:CloseEvent):void
         {
            if(!disbondBroFunEnable)
            {
               return;
            }
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("disbandBrothers",null,true);
            }
            else
            {
               _core.remote.call("disbandBrothers",null,false);
            }
         };
         Alert.show(Language.CALLBACK_S[206],"",Alert.YES | Alert.NO,null,func);
      }
      
      public function onFixFlyState(param1:Object) : void
      {
         var _loc2_:Charactor = null;
         if(param1.flag == "false")
         {
            if(_core.player.flyingState == GamePredef.FLYING_STATE_ON_GROUND)
            {
               if(_core.view.getUI(ViewManager.MAIN_MINIMAP).flyBtn.label == Language.MINIMAPCANVAS_U[8])
               {
                  _core.view.getUI(ViewManager.MAIN_MINIMAP).flyBtn.label = Language.MINIMAPCANVAS_U[7];
               }
            }
            else
            {
               if(param1.f == "team")
               {
                  _core.remote.call("updateTeamFlyState",null,null);
               }
               if(param1.f == "singel")
               {
                  _loc2_ = _core.getCharactor(param1.id);
                  _loc2_.stopFlying();
               }
            }
            return;
         }
         if(param1.flag == "true")
         {
            if(_core.player.flyingState == GamePredef.FLYING_STATE_IN_THE_AIR)
            {
               if(_core.view.getUI(ViewManager.MAIN_MINIMAP).flyBtn.label == Language.MINIMAPCANVAS_U[7])
               {
                  _core.view.getUI(ViewManager.MAIN_MINIMAP).flyBtn.label = Language.MINIMAPCANVAS_U[8];
               }
            }
            else
            {
               _core.remote.call("updateTeamFlyState",null,null);
            }
         }
      }
      
      public function onWastelandGetAward(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SUMMER_GAME_WASTELAND);
         if(_loc2_)
         {
            _loc2_.onGetAward(param1);
         }
      }
      
      public function onStackGuildItemInto(param1:Object) : void
      {
         var _loc2_:int = int(param1.sSid);
         var _loc3_:int = int(param1.tSid);
         var _loc4_:Number = Number(param1.sId);
         var _loc5_:Number = Number(param1.tId);
         var _loc6_:int = int(param1.tStackNum);
         var _loc7_:Object = _core.data.getGuildSlot({"id":_loc5_});
         _loc7_.stackNum = _loc6_;
         _core.data.updateGuildSlot(_loc7_);
         _core.data.delGuildSlot({"id":_loc4_});
         var _loc8_:* = _core.view.getSlot(_loc3_);
         _loc8_.slotData = _loc7_;
         _loc8_.type = _loc7_.type;
         _loc8_.giid = _loc7_.itemId;
         _loc8_.stackNum = _loc7_.stackNum;
         var _loc9_:* = _core.view.getSlot(_loc2_);
         _loc9_.clean();
      }
      
      public function onChangeCharSex(param1:Object) : void
      {
         var _loc2_:Charactor = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         _loc2_ = _core.getCharactor(param1.id);
         _loc3_ = _core.view.getC(param1.id);
         if(_core.player.id == param1.id)
         {
            _core.player.gender = param1.gender;
            _core.player.resCode = param1.resCode;
            _core.player.iconCode = param1.iconCode;
            _core.player.imgCode = param1.imgCode;
            _loc4_ = _core.view.getUI(ViewManager.PANEL_CHARACTOR);
            _loc4_.updateCharImage(_core.player.imgCode);
            _loc5_ = _core.view.getUI(ViewManager.MAIN_SELF);
            _loc5_.updateCharHeadImg(_core.player.iconCode);
         }
         if(Boolean(_loc2_) && Boolean(_loc3_))
         {
            if(param1.isDress)
            {
               _loc2_.view.setRes(param1.dressCode);
               _loc3_.gameObject.dressResCode = param1.dressCode;
               _loc3_.equipOn(param1.dressCode,param1.ee,param1.ef,param1.star,true);
            }
            else
            {
               _loc2_.view.setRes(param1.resCode);
               if(param1.weapon)
               {
                  _loc3_.gameObject.wp = param1.weapon.resCode;
                  _loc3_.equipOn(param1.weapon.resCode,param1.ee,param1.ef,param1.star);
               }
            }
            _loc3_.gameObject.gender = param1.gender;
         }
      }
      
      public function onbroadCastMonthWelfareMsg(param1:Array) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MONTHWELFARE);
         _loc2_ && _loc2_.onbroadCastMonthWelfareMsg(param1);
      }
      
      public function onUpdateGuildMember(param1:Object) : void
      {
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_GUILD);
         _loc2_.onUpdateGuildMember(param1);
      }
      
      public function initPRSShowTimer(param1:Object) : void
      {
         if(!JSONUtil.isEmptyObject(param1))
         {
            _core.view.getUI(ViewManager.PANEL_PET_REAl_SOUL).initPRSTimer(param1);
         }
      }
      
      public function onInvokeStopFlying(param1:Object) : void
      {
         if(!_core.ready)
         {
            return;
         }
         var _loc2_:Charactor = _core.getCharactor(param1.id);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.inBattle)
         {
            return;
         }
         _loc2_.stopFlying();
      }
      
      public function onScriptSublimeEquip(param1:Number, param2:String) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC);
         _loc3_ && _loc3_.onScriptSublimeEquip(param1,param2);
      }
      
      public function onGetCrossContentionMyState(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_TOTAL);
         if(_loc2_)
         {
            _loc2_.onGetCrossContentionMyState(param1);
         }
      }
      
      public function onDelPet(param1:Number) : void
      {
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_PETMANAGER);
         _loc2_.onDelPet(param1);
         var _loc3_:GameDataEvent = new GameDataEvent(GamePredef.EVENT_REFRESH_FUNCSLOTS);
         _loc3_.data = {};
         _core.data.dispatchEvent(_loc3_);
         _core.view.getUI(ViewManager.MAIN_QUEST_GUIDE).updateView();
      }
      
      public function onResetTalentSlot(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PET_TALENT_FUNC);
         if(Boolean(_loc2_) && Boolean(param1))
         {
            _loc2_.onResetTalentSlot(param1);
         }
      }
      
      public function onAddCharactorSlot(param1:Object) : void
      {
         var _loc2_:ISlot = _core.view.getSlot(param1.sid);
         _loc2_.type = param1.type;
         _loc2_.giid = param1.itemId;
         _loc2_.stackNum = param1.stackNum;
         _loc2_.slotData = param1;
         _core.data.addSlot(param1);
         if(param1.type == GamePredef.TBL_ITEM_INSTANCE)
         {
            _core.view.getUI(ViewManager.MAIN_USER_BAR).setNum();
            _core.view.getUI(ViewManager.PANEL_BATTLESET).setNum();
         }
         setTimeout(setTimeoutQuestGuide,1000);
      }
      
      public function addDoubleExpBuff(param1:Object) : void
      {
         var _loc2_:Object = new Object();
         _loc2_.bid = GamePredef.GLOBAL_DOUBLE_EXP_BID;
         _loc2_.id = 0;
         _loc2_.type = 0;
         _loc2_.timeLeft = param1.remain / 1000;
         _core.view.getUI(ViewManager.MAIN_LONGBUFF).addGlobalDoubleExpBuff(_loc2_);
      }
      
      public function onNoSpeaker() : void
      {
         _core.sysMidNote(Language.CALLBACK_S[60]);
         _core.view.getUI(ViewManager.MAIN_SYS).selectLocalChannel();
      }
      
      public function addOperationNum(param1:Number) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_ADD_OPE);
         if(_loc2_)
         {
            _loc2_.updatePanel(param1);
         }
      }
      
      public function updateMonsterHeartAfterUp(param1:Boolean, param2:Number) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_MONSTERHEART);
         if(_loc3_)
         {
            _loc3_.updateMonsterHeartAfterUp(param1,param2);
         }
      }
      
      public function onNpcBusyMsg(param1:int) : void
      {
         var _loc2_:Npc = _core.getNpc(param1);
         if(_loc2_)
         {
            _loc2_.view.onSay(Language.CALLBACK_S[62]);
         }
      }
      
      public function onMoveMXToTBag(param1:uint, param2:uint, param3:Object, param4:uint) : void
      {
         var _loc5_:* = undefined;
         _loc5_ = _core.view.getSlot(param1);
         _loc5_.clean();
         _core.data.delSlot({"sid":param1});
         _core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT).UpdatemxSlot(param2,param3);
         _core.player.tBag.mx.curNum = param4;
         _core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT).setnTxt();
      }
      
      public function DFUpdate(param1:Object) : void
      {
         var _loc2_:* = undefined;
         trace(" 更新个人混战数据");
         _loc2_ = _core.view.getUI(ViewManager.MAIN_DOG_FIGHT);
         if(param1.visible !== undefined)
         {
            trace("更新可见");
            _loc2_.setSocreVisible(param1.visible);
         }
         if(param1.style != null)
         {
            _loc2_.setState(param1.style);
         }
         if(param1.rankReset == true)
         {
            trace(["obj.rankReset == true",param1.rankReset]);
            _loc2_.resetRank();
         }
         else
         {
            trace(["obj.rankReset == false????",param1.rankReset]);
         }
         if(param1.nextRound)
         {
            trace("更新时间");
            _loc2_.setNextRroundTime(param1.nextRound);
         }
         if(param1.score != null)
         {
            trace("更新积分");
            _loc2_.updateScore(param1.score);
         }
         if(param1.leagueScore)
         {
            trace("更新积分");
            _loc2_.updateDongXuanScore(param1.leagueScore);
         }
      }
      
      public function onChangeRingMale(param1:String) : void
      {
         var func:Function = null;
         var msg:String = null;
         var htmlmsg:String = null;
         var _alert:Alert = null;
         var tf:IUITextField = null;
         var name:String = param1;
         func = function(param1:CloseEvent):void
         {
            var _loc2_:String = null;
            if(param1.detail == Alert.YES)
            {
               _core.remote.changeRing();
               _loc2_ = String(Language.WEDDING_BOOK_PANEL_U[20]);
            }
            else
            {
               _loc2_ = String(Language.WEDDING_BOOK_PANEL_U[21]);
            }
            _core.remote.say(_core.player.id,GamePredef.TBL_CHARACTOR,GamePredef.MSG_CHANNEL_LOCAL,_loc2_);
         };
         msg = String(Language.WEDDING_BOOK_PANEL_U[9].toString().replace("{maleName}",_core.player.name).replace("{feMaleName}",name));
         htmlmsg = String(Language.WEDDING_BOOK_PANEL_U[9].toString().replace("{maleName}"," <font color=\'#00FF00\'>" + _core.player.name + "</font> ").replace("{feMaleName}"," <font color=\'#00FF00\'>" + name + "</font> "));
         _alert = Alert.show(msg,"",Alert.YES | Alert.NO,null,func);
         tf = _alert.mx_internal::alertForm.mx_internal::textField;
         tf.htmlText = htmlmsg;
      }
      
      public function onAddPm(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PM);
         _loc2_ && _loc2_.onBuyPm(param1);
      }
      
      public function onHorseRaceGetData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SUMMER_GAME_HORSE_RACE);
         if(_loc2_)
         {
            _loc2_.onGetData(param1);
         }
      }
      
      public function onSudokuGetData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SUDOKU);
         if(_loc2_)
         {
            _loc2_.onSudokuGetData(param1);
         }
      }
      
      public function freshHappyFrontLineNum(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Object = null;
         _loc4_ = _core.view.getUI(ViewManager.PANEL_HAPPYFRONTLINE);
         if(_loc4_)
         {
            _loc4_.freshHappyFrontLineNum(param1,param2,param3);
         }
      }
      
      public function onAfVerify() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = _core.view.getUI(ViewManager.MAIN_ADDICT_WARN);
         if(_loc1_)
         {
            _loc1_.hide();
         }
         _core.sysMsg(Language.ANTIADDICTCANVAS_U[5]);
      }
      
      public function onChangeCharColor(param1:Object) : void
      {
         var _loc2_:Charactor = _core.getCharactor(param1.id);
         if(_loc2_)
         {
            _loc2_.colorCode = param1.color;
            _core.view.getUI(ViewManager.PANEL_CHANGE_COLOR).refreshColor(_loc2_);
         }
      }
      
      public function onbuyJuHuaSuanOneClient(param1:Number, param2:Number, param3:String) : void
      {
         var _loc4_:Object = null;
         _loc4_ = _core.view.getUI(ViewManager.PANEL_JUHUASUAN);
         _loc4_ && _loc4_.onbuyJuHuaSuanOneClient(param1,param2,param3);
      }
      
      public function showWelfarePoint(param1:int) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_WELFARE);
         if(Boolean(_loc2_) && param1 >= 0)
         {
            _loc2_.onShowCurPoint(param1);
         }
      }
      
      public function onInviteResult(param1:Boolean) : void
      {
         Alert.show(Language.PVP_ROOM_P[21],"",Alert.YES,null,null);
      }
      
      public function onTransport(param1:Boolean) : void
      {
         if(param1 == false)
         {
            _core.sysBlueMsg(Language.CALLBACK_S[73]);
         }
      }
      
      public function onExcludeRedMsg(param1:Object) : void
      {
         Debug.logFunc("onExcludeRedMsg",param1);
         if(param1.eid != _core.cid)
         {
            _core.sysRedMsg(param1.str);
         }
      }
      
      public function onUpdatePPVEPanel(param1:*, param2:*, param3:*, param4:*) : void
      {
         var _loc5_:Object = null;
         _loc5_ = _core.view.getUI(ViewManager.PANEL_PET_PVE);
         if(_loc5_)
         {
            _loc5_.updatePPVEPanel(param1,param2,param3,param4);
         }
      }
      
      public function onSubmitAddict(param1:int) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.MAIN_ADDICT_INFO);
         if(_loc2_)
         {
            _loc2_.submitAddictCallback(param1);
         }
      }
      
      public function onMonopolyGetData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SUMMER_GAME);
         if(_loc2_)
         {
            _loc2_.onGetData(param1);
         }
      }
      
      public function onInitWorldCupPanelData(param1:Object, param2:Object, param3:Object, param4:Object, param5:Object, param6:Object, param7:String, param8:Object) : void
      {
         var _loc9_:Object = null;
         _loc9_ = _core.view.getUI(ViewManager.PANEL_WORLD_CUP);
         if(_loc9_)
         {
            _loc9_.onInitWorldCupPanelData(param1,param2,param3,param4,param5,param6,param7,param8);
         }
      }
      
      public function onUpdateGuildRank(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_GUILD);
            _loc2_.onUpdateGuildRank(param1.gid,param1.rankData);
         }
      }
      
      public function onSetCharState(param1:Object) : void
      {
         var _loc2_:Charactor = _core.getCharactor(param1.cid);
         if(Boolean(_loc2_) && Boolean(_loc2_.normalView))
         {
            _loc2_.state = param1.state;
            _loc2_.normalView.state = param1.state;
            if(param1.state == GamePredef.ST_BATTLE)
            {
               _loc2_.normalView.pause();
            }
            if(param1.state == GamePredef.ST_NORMAL)
            {
               _loc2_.normalView.resume();
            }
         }
      }
      
      public function setClientDP(param1:String) : void
      {
         if(param1)
         {
            _core.delPass = param1;
         }
      }
      
      public function moneyExchangeExp(param1:Object) : void
      {
         _core.view.getUI(ViewManager.MAIN_AUTO_EXP).showHarvest(param1.money,param1.exp);
      }
      
      public function onTripleKill(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_TRIPLE_TOWN);
         _loc2_ && _loc2_.onTripleKill(param1);
      }
      
      public function ripenImmediately(param1:int, param2:uint) : void
      {
         var handler:Function = null;
         var htmlMsg:String = null;
         var msg:String = null;
         var _alert:Alert = null;
         var tf:IUITextField = null;
         var managerId:int = param1;
         var cost:uint = param2;
         handler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("ripenImmediately",null,managerId);
            }
         };
         htmlMsg = String(Language.ALERT_TO_SHOW[1].replace("{cost}",cost));
         msg = htmlMsg.replace(/<font(.*?)>/g,"");
         msg = msg.replace(/<\/font>/g,"");
         _alert = Alert.show(msg,"",Alert.YES | Alert.NO,null,handler);
         tf = _alert.mx_internal::alertForm.mx_internal::textField;
         tf.htmlText = htmlMsg;
      }
      
      public function onSystemSay(param1:String) : void
      {
         Debug.logFunc("onSystemSay",param1);
         _core.sysMsg(param1);
      }
      
      public function onAstrologicStarsRefresh(param1:int, param2:Object) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_ASTROLOGIC);
         if(Boolean(_loc3_) && Boolean(param2))
         {
            _loc3_.refreshStarsToPick(param1,param2);
         }
      }
      
      public function onCharTeleport(param1:Object) : void
      {
         var _loc2_:Number = Number(param1.cid);
         var _loc3_:int = int(param1.posX);
         var _loc4_:int = int(param1.posY);
         var _loc5_:Charactor = _core.getCharactor(_loc2_);
         _loc5_.posX = _loc3_;
         _loc5_.posY = _loc4_;
         _loc5_.view.posX = _loc3_;
         _loc5_.view.posY = _loc4_;
         if(_loc5_ == _core.player)
         {
            _core.view.getUI(ViewManager.STAGE_MAIN).centerTo(_loc3_,_loc4_);
            _core.player.stop();
         }
      }
      
      public function onHappyFrontLineFresh(param1:Number) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_HAPPYFRONTLINE);
         if(_loc2_)
         {
            _loc2_.onHappyFrontLineFresh(param1);
         }
      }
      
      public function onCreateItemInstance(param1:*) : void
      {
         _core.data.addNewData(GamePredef.TBL_ITEM_INSTANCE,param1);
      }
      
      public function onAddMoreTime(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MCZD);
         _loc2_.onAddMoreTime(param1);
      }
      
      public function onSetNameProtected(param1:Object) : void
      {
         var _loc2_:* = param1.cid;
         var _loc3_:* = param1.isProtected;
         var _loc4_:Charactor = _core.getCharactor(_loc2_);
         _loc4_ && _loc4_.normalView.setNameProtected(_loc3_);
      }
      
      public function onBeginWeddingFly(param1:Object) : void
      {
         if(!_core.ready)
         {
            return;
         }
         var _loc2_:Charactor = _core.getCharactor(param1.id);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.inBattle)
         {
            return;
         }
         _loc2_.onBeginWeddingFly();
      }
      
      public function onGetHulaData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_HULA);
         if(_loc2_)
         {
            _loc2_.onGetData(param1);
         }
      }
      
      public function setStarPoint(param1:int) : void
      {
         if(_core.player)
         {
            _core.player.starPnt = param1;
         }
      }
      
      public function onInitCouple(param1:Object) : void
      {
         var _loc2_:* = undefined;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_IM);
         if(_loc2_)
         {
            _loc2_.initCP(param1);
         }
      }
      
      public function onGetOnlFriend(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT);
         _loc2_ && _loc2_.onGetFriendOnlList(param1);
      }
      
      public function onHangBegin() : void
      {
         _core.view.getUI(ViewManager.MAIN_AUTO_EXP).startHang();
      }
      
      public function onClearMidWarSay(param1:String) : void
      {
         Debug.logFunc("onClearMidWarSay",param1);
         _core.clearMidWarn();
      }
      
      public function onUpdateGuildNumProp(param1:Object) : void
      {
         var _loc2_:Number = Number(param1.type);
         var _loc3_:String = null;
         if(Number(param1.num) < 0)
         {
            if(_loc2_ == GamePredef.GUILD_EXP)
            {
               _loc3_ = String(Language.GUILDPANEL_S[59]);
            }
            else if(_loc2_ == GamePredef.GUILD_MONEY)
            {
               _loc3_ = String(Language.GUILDPANEL_S[60]);
            }
            if(_loc3_)
            {
               _loc3_ = _loc3_.replace("{name}",Language.GUILDPANEL_S[57]);
               _loc3_ = _loc3_.replace("{num}",(-param1.num).toString());
               _core.sysMsg(_loc3_);
            }
         }
         else
         {
            if(_loc2_ == GamePredef.GUILD_EXP)
            {
               _loc3_ = String(Language.GUILDPANEL_S[57]);
            }
            else if(_loc2_ == GamePredef.GUILD_MONEY)
            {
               _loc3_ = String(Language.GUILDPANEL_S[58]);
            }
            if(_loc3_)
            {
               _loc3_ = _loc3_.replace("{name}",Language.GUILDPANEL_S[57]);
               _loc3_ = _loc3_.replace("{num}",param1.num.toString());
               _core.sysMsg(_loc3_);
            }
         }
         _core.view.getUI(ViewManager.PANEL_GUILD).onUpdateNumProp(param1);
      }
      
      public function onDelGuildSlot(param1:Number, param2:int = -2) : void
      {
         var _loc3_:ISlot = null;
         var _loc4_:int = param2;
         var _loc5_:Object = _core.data.gsList;
         if(param2 == -1)
         {
            delete _loc5_[param1];
            return;
         }
         if(_loc4_ == -2)
         {
            _loc4_ = int(_loc5_[param1].sid);
         }
         _loc3_ = _core.view.getSlot(_loc4_);
         var _loc6_:Object = _loc3_.slotData;
         _loc3_.clean();
         _core.data.delGuildSlot({"sid":_loc4_});
         if(Boolean(_loc6_) && _loc6_.type == GamePredef.TBL_ITEM_INSTANCE)
         {
            _core.view.getUI(ViewManager.MAIN_USER_BAR).setNum();
            _core.view.getUI(ViewManager.PANEL_BATTLESET).setNum();
         }
      }
      
      public function onSetRoomHost(param1:int) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_GROUP_RECRUIT_DETAIL);
         _loc2_.onSetRoomHost(param1);
      }
      
      public function onLogout(... rest) : void
      {
         _core.logout();
      }
      
      public function onGetFriendFarm(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_FAZENDA);
         _loc2_.updateFriendsData(param1);
      }
      
      public function onTargetConfirm() : void
      {
         var _loc1_:* = _core.view.getUI(ViewManager.PANEL_TRADE);
         if(_loc1_)
         {
            _loc1_.onTargetConfirm();
         }
      }
      
      public function reloadBuild(param1:Object) : void
      {
         var _loc2_:Object = _core.view.getB(param1.id);
         if(_loc2_)
         {
            _loc2_.reloadBuild(param1);
         }
      }
      
      public function onInitViewProp(param1:Object) : void
      {
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_CHARACTOR);
         _loc2_.onInitViewProp(param1);
         var _loc3_:Object = _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC);
         _loc3_.setSpirituality(param1.spirituality);
         var _loc4_:Object = _core.view.getUI(ViewManager.MAIN_SELF);
         _loc4_.update();
         var _loc5_:* = _core.view.getUI(ViewManager.DETAIL_PROP_PANEL);
         _loc5_.updateView(param1);
      }
      
      public function authenticateHumanPlayer(param1:*, param2:String) : void
      {
         var kickoffInputPanel:Object = null;
         var func:Function = null;
         var image:* = param1;
         var type:String = param2;
         func = function(param1:String):void
         {
            if(kickoffInputPanel)
            {
               kickoffInputPanel.hideAble = true;
            }
            _core.remote.verifyAuthentication(param1,type);
         };
         kickoffInputPanel = _core.view.getUI(ViewManager.PANEL_INPUT);
         kickoffInputPanel.showVerificationCode(image,func,false);
      }
      
      public function onWastelandGetData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SUMMER_GAME_WASTELAND);
         if(_loc2_)
         {
            _loc2_.onGetData(param1);
         }
      }
      
      public function onWisper(param1:Object) : void
      {
         if(Boolean(param1.footle) && param1.sourceId != _core.cid)
         {
            param1.text = footleMsg(param1.text);
         }
         _core.view.getUI(ViewManager.MAIN_CHAT).onWisper(param1);
      }
      
      public function onMinusTimeDuiduipengGame(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DUIDUIPENG);
         if(_loc2_)
         {
            _loc2_.onMinusTimeDuiduipengGame(param1);
         }
      }
      
      public function onGetTimeAward(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_TIME_AWARD);
         if(_loc2_)
         {
            _loc2_.onGetTimeAward(param1);
         }
      }
      
      public function onTakeConsumeGift(param1:Number, param2:int) : void
      {
         if(param2 == 1)
         {
            _core.sysBlueMsg(Language.CALLBACK_S[221]);
         }
         else if(param2 == 2)
         {
            _core.sysBlueMsg(Language.CALLBACK_S[218]);
         }
         else if(param2 == 3)
         {
            _core.sysBlueMsg(Language.CALLBACK_S[219]);
         }
         else if(param2 == 4)
         {
            _core.sysBlueMsg(Language.CALLBACK_S[220]);
         }
         else if(param2 == 5)
         {
            _core.sysBlueMsg(Language.AWARDCODEPANEL_S[0]);
         }
      }
      
      public function updateGrouponConf(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_GROUPON);
         _loc2_ && _loc2_.updateConf(param1);
      }
      
      public function onMoveMXBtw(param1:uint, param2:Object, param3:uint, param4:Object, param5:uint) : void
      {
         _core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT).UpdatemxSlot(param1,param2);
         _core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT).UpdatemxSlot(param3,param4);
         _core.player.tBag.mx.curNum = param5;
         _core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT).setnTxt();
      }
      
      public function upMazeBuff(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MAZE_INFO);
         if(Boolean(_loc2_) && Boolean(_loc2_.visible))
         {
            _loc2_.updateMazeBuff(param1);
         }
      }
      
      public function onBehaviorMsg(param1:int, param2:int, param3:int, param4:String) : void
      {
      }
      
      public function onUpdatePet(param1:Number, param2:String, param3:String) : void
      {
         var _loc4_:* = _core.view.getUI(ViewManager.PANEL_PETMANAGER);
         _loc4_.onUpdatePet(param1,param2,param3);
      }
      
      public function updateGuildInfo(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_GUILD).onUpdateGuildInfo(param1);
      }
      
      public function onPetArenaSysMsg(param1:Object, param2:int) : void
      {
         _core.view.getUI(ViewManager.PANEL_PET_ARENA).onPetArenaSysMsg(param1,param2);
      }
      
      public function onCheckMatchDuiduipengGame(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DUIDUIPENG);
         if(_loc2_)
         {
            _loc2_.onCheckMatchDuiduipengGame(param1);
         }
      }
      
      public function onGetMyRoom(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_GROUP_RECRUIT);
         _loc2_.setCreatedFlag(param1.f);
         _loc2_.setMyGroupData(param1);
         _loc2_.getMyGroup();
      }
      
      public function onStopFlying(param1:Object) : void
      {
         if(!_core.ready)
         {
            return;
         }
         var _loc2_:Charactor = _core.getCharactor(param1.id);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.inBattle)
         {
            return;
         }
         _loc2_.onStopFlying();
         var _loc3_:Pet = _core.getPet(param1.id);
         if(_loc3_)
         {
            _loc3_.onStopFlying();
         }
      }
      
      public function onGetMCZDConf(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MCZD_PETFIGHT_CONF);
         _loc2_.onGetMCZDConf(param1);
      }
      
      public function onBreakMedal(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         var _loc4_:String = null;
         if(!param1)
         {
            return;
         }
         if(Boolean(_core.player) && param1.hasOwnProperty("medalExp"))
         {
            _loc3_ = param1.medalExp - _core.player.medalExp;
            _core.player.medalExp = param1.medalExp;
            _loc4_ = String(Language.MEDAL_P[56]);
            _loc4_ = _loc4_.replace("{num}",Math.abs(_loc3_));
            _core.sysBlueMsg(_loc4_);
         }
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MEDAL);
         _loc2_ && _loc2_.onBreakMedal(param1);
      }
      
      public function onFindTeacher(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_IM).onFindTeacher(param1);
      }
      
      public function onNotTradable() : void
      {
         _core.sysMidNote(GamePredef.SYS_MSG_NOTTRADABLE);
      }
      
      public function updateMysTreBook(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DECORATE);
         _loc2_ && _loc2_.updateMysTreBook(param1);
      }
      
      public function onGetMonthlyWelfare(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_WELFARE);
         if(_loc2_)
         {
            _loc2_.visible = true;
            _loc2_.onGetMonthlyWelfare(param1);
         }
      }
      
      public function updatePPRankView(param1:*, param2:*) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_PET_PVE);
         if(_loc3_)
         {
            _loc3_.updatePPRankView(param1,param2);
         }
      }
      
      public function onCharFootle(param1:Object) : void
      {
      }
      
      public function onGetCrossContentionServerState(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_TOTAL);
         if(_loc2_)
         {
            _loc2_.onGetCrossContentionServerState(param1);
         }
      }
      
      public function validateRestrain(param1:Number, param2:int) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC);
         _loc3_ && _loc3_.validateRestrain(param1,param2);
      }
      
      public function onRefreshPVPPoint(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(!param1)
         {
            return;
         }
         _loc2_ = _core.view.getUI(ViewManager.POPU_PVP_WAIT);
         if(_loc2_)
         {
            if(param1.type == "PVPResult")
            {
               _loc2_.onRefreshPVPPoint(param1);
            }
         }
      }
      
      public function onGroupInviteFailed(param1:Object) : void
      {
         _core.group.onGroupInviteFailed(param1);
      }
      
      public function onUpgradeMonsterHeartBox(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MONSTERHEART);
         if(_loc2_)
         {
            _loc2_.onUpgradeMonsterHeartBox(param1);
         }
      }
      
      public function onGetItem(param1:*) : void
      {
         _core.data.addNewData(GamePredef.TBL_CHARACTOR_SLOT,param1);
         var _loc2_:* = _core.view.getSlot(param1.sid);
         _loc2_.type = param1.type;
         _loc2_.giid = param1.itemId;
         _loc2_.stackNum = param1.stackNum;
         _loc2_.slotData = param1;
         trace(">> getItem slots:",param1.id,param1.sid,param1.type,param1.giid);
         var _loc3_:* = _core.view.getUI(ViewManager.PANEL_BAG);
         _loc3_.resetSpace();
         _core.sysMidNote(GamePredef.SYS_MSG_BUYSUCCESS);
         if(param1.type == GamePredef.TBL_ITEM_INSTANCE)
         {
            _core.view.getUI(ViewManager.MAIN_USER_BAR).setNum();
            _core.view.getUI(ViewManager.PANEL_BATTLESET).setNum();
         }
      }
      
      public function onInitCharMarriageList(param1:Object) : void
      {
         var _loc2_:* = undefined;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MARRIAGE);
         if(_loc2_)
         {
            _loc2_.onInitCharMarriageList(param1);
         }
      }
      
      public function onCreateSceneItems(param1:Object) : void
      {
         trace("onCreateSceneItem");
         _core.scene.sceneCreateItems(param1);
      }
      
      public function onDotaCenterBattleWithPlayerEnd(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DOTA);
         if(_loc2_)
         {
            _loc2_.onCenterBattleWithPlayerEnd(param1);
         }
      }
      
      public function upLongBuff(param1:Object) : void
      {
         _core.view.getUI(ViewManager.MAIN_LONGBUFF).upLongBuff(param1);
      }
      
      public function onAddFairy(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_FAIRY_MANAGER);
         _loc2_.onAddFairy(param1);
      }
      
      public function getMobaiNum(param1:int, param2:int, param3:int) : void
      {
         var submission:Function = null;
         var hasNum:int = 0;
         var itemId:int = param1;
         var nid:int = param2;
         var expNumScp:int = param3;
         submission = function(param1:int):void
         {
            _core.remote.call("updateDefencerMobai",null,param1,nid,_core.player.id);
         };
         hasNum = _core.hasItemNum(GamePredef.TBL_ITEM_TEMPLATE,itemId);
         _core.view.getUI(ViewManager.PANEL_INPUT).showInputNum(Language.PLAYER_S[31],Language.PLAYER_S[31],submission,1,1,hasNum);
      }
      
      public function onUpdateWaWaData(param1:Number, param2:Number, param3:Number, param4:Number, param5:Number, param6:Object, param7:Number) : void
      {
         var _loc8_:Object = null;
         _loc8_ = _core.view.getUI(ViewManager.PANEL_WAWA_GAME);
         _loc8_ && _loc8_.onUpdateWaWaData(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public function onDecoBottomOn(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:* = undefined;
         var _loc6_:Number = NaN;
         _loc2_ = _core.view.getC(param1.cid);
         if(Boolean(_loc2_) && Boolean(param1.decoInfo))
         {
            _loc3_ = Number(param1.decoInfo[4]["did"]);
            if(_loc3_)
            {
               _loc4_ = Number(param1.decoInfo[4]["showLvl"]);
               _loc5_ = GameData.d[GamePredef.TBL_DECO_SHOW][_loc3_];
               _loc2_.gameObject.decoBottomCodeOnMount = Number(_loc5_["resCode" + 2 * _loc4_]);
               _loc2_.gameObject.decoBottomCode = Number(_loc5_["resCode" + (2 * _loc4_ - 1)]);
               _loc6_ = Number(param1.decoInfo[4]["isShow"]);
               if(_loc6_)
               {
                  _loc2_.tepeOn();
               }
            }
         }
      }
      
      public function onDelCharactorSlot(param1:Number, param2:int = -2) : void
      {
         var _loc3_:ISlot = null;
         var _loc4_:int = param2;
         var _loc5_:Object = _core.data.sList;
         if(param2 == -1)
         {
            delete _loc5_[param1];
            return;
         }
         if(_loc4_ == -2)
         {
            _loc4_ = int(_loc5_[param1].sid);
         }
         _loc3_ = _core.view.getSlot(_loc4_);
         var _loc6_:Object = _loc3_.slotData;
         _loc3_.clean();
         _core.data.delSlot({"sid":_loc4_});
         if(Boolean(_loc6_) && _loc6_.type == GamePredef.TBL_ITEM_INSTANCE)
         {
            _core.view.getUI(ViewManager.MAIN_USER_BAR).setNum();
            _core.view.getUI(ViewManager.PANEL_BATTLESET).setNum();
         }
         _core.view.getUI(ViewManager.MAIN_QUEST_GUIDE).updateView();
      }
      
      public function onDuiduipengGetData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DUIDUIPENG);
         if(_loc2_)
         {
            _loc2_.onDuiduipengGetData(param1);
         }
      }
      
      public function onPutInToExp(param1:Object) : void
      {
         var _loc2_:Object = null;
         _core.player.soulBagData["data"][param1.soulData.s] = param1.soulData;
         _core.player.soulExp = param1.soulExp;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PET_SOUL);
         if(_loc2_)
         {
            _loc2_.updateSoulSlotView(param1.soulData.s);
            _loc2_.changeSoulPanelInfo(_core.player.soulExp,_core.player.soulChip);
         }
      }
      
      public function onLockSoul(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(_core.player.soulBagData && _core.player.soulBagData["data"] && Boolean(_core.player.soulBagData["data"][param1.index]))
         {
            _core.player.soulBagData["data"][param1.index]["lock"] = param1.lock;
         }
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PET_SOUL);
         if(_loc2_)
         {
            _loc2_.updateSoulSlotView(param1.index);
         }
      }
      
      public function onTs(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_TREASURE).onTs(param1);
      }
      
      public function onQuestionRank(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_QUESTIONING);
         if(_loc2_ && _loc2_.visible && Boolean(param1))
         {
            _loc2_.onQuestionRank(param1);
         }
      }
      
      public function onUpChaSlotColor(param1:Number, param2:int, param3:int) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:ISlot = null;
         _loc4_ = _core.data.getSlot({"id":param1});
         if(_loc4_)
         {
            _loc5_ = _core.data.getData(_loc4_.type,_loc4_.itemId);
            if(_loc5_)
            {
               _loc5_.color = param2;
               _loc6_ = _core.view.getSlot(param3);
               _loc6_.restore();
            }
         }
      }
      
      public function onCheckAwardGift(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_GAMEINTRO);
            if(_loc2_)
            {
               _loc2_.setGameAwardGiftState(param1);
            }
         }
      }
      
      public function onKick() : void
      {
         Alert.show(Language.CALLBACK_S[0],"",Alert.YES,null,_core.logout);
      }
      
      public function onExtractCardActivityGetAward(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = ViewManager.getInstance().getUI(ViewManager.PANEL_EXTRACT_CARD_ACTIVITY);
         if(_loc2_)
         {
            _loc2_.onExtractCardActivityGetAward(param1);
         }
      }
      
      public function onLogin(param1:Object) : void
      {
         _core.guid = param1.id;
         _core.acountLv = param1.lv;
         _core.remote.icl();
         var _loc2_:* = _core.view.getUI(ViewManager.POPU_WAIT);
         if(_loc2_)
         {
            _loc2_.showText(Language.CALLBACK_S[4]);
         }
         _core.remote.call("getShopConfig",null);
      }
      
      public function updateScenePmLevel(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(param1)
         {
            _loc2_ = _core.getCharactor(param1.cid);
            if(_core.player.id == param1.cid)
            {
               if(param1.pmLevel)
               {
                  _core.player.pmLevel = param1.pmLevel;
               }
               else
               {
                  _core.player.pmLevel = 0;
               }
               _loc3_ = _core.view.getUI(ViewManager.PANEL_PM);
               if(_loc3_ && _loc3_.panelDataFlush && Boolean(_loc3_.visible))
               {
                  _loc3_.initPmLevelUpDate(_core.player.pmLevel);
               }
               _loc3_ = _core.view.getUI(ViewManager.MAIN_SELF);
               if(_loc3_)
               {
                  _loc3_.updatePlayerPmFlag(_core.player.pmLevel);
               }
            }
            if(param1.pmLevel)
            {
               _loc2_.pmLevel = param1.pmLevel;
            }
            else
            {
               _loc2_.pmLevel = 0;
            }
         }
      }
      
      public function onUpdateDressList(param1:int, param2:int, param3:Number) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:Object = null;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(param1 == 2)
         {
            _loc5_ = GameData.d[GamePredef.TBL_MOUNT_DRESS][param2];
            _core.sysMsg(Language.MOUNTPANEL_U[40].replace("{name}",_loc5_.name));
            _loc6_ = Number(_core.view.getUI(ViewManager.MAIN_LONGBUFF).useMountDress);
            if(param2 == _loc6_)
            {
               _core.player.stopMounting();
            }
         }
         _loc4_ = _core.view.getUI(ViewManager.PANEL_MOUNT);
         if(_loc4_)
         {
            _loc7_ = 0;
            if(param3)
            {
               _loc7_ = param3;
            }
            _loc4_.updateMountDressList(param1,param2,_loc7_);
         }
      }
      
      public function onUpdateManJiuJianTurnTableTime(param1:Number, param2:Number) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_MANJIUJIAN);
         _loc3_ && _loc3_.onUpdateManJiuJianTurnTableTime(param1);
         _core.sysMsg(Language.MANJIUJIAN_PANEL[6].replace("{num}",param2));
      }
      
      public function setBtnsDailySignInAct(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DAILYSIGNINACT);
         if(_loc2_)
         {
            _loc2_.setBtnsDailySignInAct(param1);
         }
      }
      
      public function onDotaGameEnd(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DOTA);
         if(_loc2_)
         {
            _loc2_.onDotaGameEnd(param1);
         }
      }
      
      public function initViewBankPanel() : void
      {
         _core.view.getUI(ViewManager.PANEL_BANK).initViewBankPanel();
      }
      
      public function onGetArenaLog(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_PET_ARENA).onGetArenaLog(param1);
      }
      
      public function onDiabetesGetData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SUMMER_GAME_DIABETES);
         if(_loc2_)
         {
            _loc2_.onGetData(param1);
         }
      }
      
      public function onSTHSysMidNote(param1:Number) : void
      {
         _core.sysMidNote(Language.SEC_TREA_HUNT[param1]);
      }
      
      public function onHMTXLSMSG(param1:*) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_XIULIAN_PANEL);
         if(_loc2_)
         {
            _loc2_.addHMTXLLog(param1);
         }
      }
      
      public function onGetManagePlanInfo(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_WELFARE);
         if(Boolean(_loc2_) && Boolean(param1))
         {
            _loc2_.onGetManagePlanInfo(param1);
         }
      }
      
      public function updatePraView(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MAGIC_ARRAY);
         if(Boolean(_loc2_) && Boolean(param1))
         {
            _loc2_.updatePraView(param1);
         }
      }
      
      public function allServerMailsWarning(param1:Object) : void
      {
         var _loc2_:* = undefined;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MAILMANAGER);
         _loc2_.onAddAllServerMail(param1);
      }
      
      public function onInitMarriageSekList(param1:Object) : void
      {
         var _loc2_:* = undefined;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MARRIAGE);
         if(_loc2_)
         {
            _loc2_.onInitMarriageSekList(param1);
         }
      }
      
      public function onCreateChars(param1:Object) : void
      {
         trace("onCreateChar");
         _core.scene.sceneCreateChars(param1);
      }
      
      public function onGetShowTimeData(param1:Object, param2:Boolean) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_SHOWTIME);
         if(_loc3_)
         {
            _loc3_.onGetShowTimeData(param1,param2);
         }
      }
      
      public function onGetReturnRewardInfo(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_RETURN_REWARD);
         if(_loc2_)
         {
            _loc2_.onGetReturnRewardInfo(param1);
         }
      }
      
      public function onMemberLeave(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         if(param1.cid >= 0)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_GROUP_RECRUIT_DETAIL);
            _loc3_ = _core.view.getUI(ViewManager.PANEL_GROUP_RECRUIT);
            if(param1.cid == _core.player.id)
            {
               _loc2_.hide();
               _loc3_.setFirstFlag(true);
               _loc3_.setAcceptBtnEnable(true);
            }
            else
            {
               _loc2_.onMemberLeave(param1.cid);
               _loc4_ = String(Language.GROUP_RECRUIT_PANEL_S[15].toString().replace("{name}",param1.name));
               onSystemRoomSay(_loc4_);
            }
            if(param1.leaderId > 0)
            {
               _loc2_.onSetRoomHost(param1.leaderId);
            }
         }
      }
      
      public function usePackageByMoney(param1:String, param2:Number, param3:int) : void
      {
         var typeStr:String = null;
         var str:String = null;
         var func:Function = null;
         var moneyType:String = param1;
         var moneyNum:Number = param2;
         var sid:int = param3;
         if(moneyNum <= 0 || sid < 0)
         {
            return;
         }
         typeStr = "";
         if(moneyType == "gold")
         {
            typeStr = "Vàng";
            str = "Xác nhận dùng " + moneyNum + typeStr + " để mở túi này?";
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.call("onUsePackageByMoney",null,sid);
               }
            };
            Alert.show(str,"",Alert.YES | Alert.NO,null,func);
            return;
         }
         typeStr = "Điểm";
      }
      
      public function onSceneEnter(param1:int, param2:int, param3:int, param4:int = -1) : void
      {
         var _loc5_:Object = null;
         _core.scene.sceneLeave();
         _core.scene.sceneEnter(param1,param2,param3,param4);
         if(param1 != 87)
         {
            _loc5_ = _core.view.getUI(ViewManager.PANEL_TRIPLE_TURN);
            _loc5_ && _loc5_.tripleHideUI(false);
         }
         _core.nextGuide(-1,"",-1,-1,param1);
         if(_core.player.posMapId == 76)
         {
            _loc5_ = _core.view.getUI(ViewManager.PANEL_HULA);
            if(_loc5_)
            {
               _loc5_.cleanAll();
            }
         }
         else if(_core.player.posMapId == 78)
         {
         }
      }
      
      public function oninitDailySignInActConsumeLimit(param1:*) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DAILYSIGNINACT);
         if(_loc2_)
         {
            _loc2_.oninitDailySignInActConsumeLimit(param1);
         }
      }
      
      public function showGuessNumber(param1:String, param2:Number) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_GUESS_NUMBER);
         if(_loc3_)
         {
            _loc3_.showGuessNumber(param1,param2);
         }
      }
      
      public function onBossOn(param1:Object) : void
      {
         _core.createNpc(param1);
      }
      
      public function onPetArenaRank(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_PET_ARENA_RANK).onPetArenaRank(param1);
      }
      
      public function guwushiqiByDenfencer(param1:int, param2:int) : void
      {
         var handler:Function = null;
         var _alert:Alert = null;
         var msg:String = null;
         var tf:IUITextField = null;
         var gold:int = param1;
         var nid:int = param2;
         handler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("guwushiqiByDenfencer",null,_core.player.id,nid);
            }
         };
         msg = String(Language.ALERT_TO_SHOW[3].replace(/<font(.*?)>/g,""));
         msg = msg.replace(/<\/font>/g,"");
         msg = msg.replace(/<b>/g,"");
         msg = msg.replace(/<\/b>/g,"");
         _alert = Alert.show(msg,"",Alert.YES | Alert.NO,null,handler);
         tf = _alert.mx_internal::alertForm.mx_internal::textField;
         tf.htmlText = Language.ALERT_TO_SHOW[3].replace("{cost}",gold);
         tf.filters = GamePredef.FILTER_TEXT1;
      }
      
      public function onMountOn(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:Object = _core.view.getC(param1.cid);
         var _loc3_:Object = _core.view.getUI(ViewManager.PANEL_MOUNT);
         if(_loc3_)
         {
            _loc3_.changeRideState(1);
         }
         if(Boolean(_loc2_) && param1.resCode > 0)
         {
            _loc2_.gameObject.mountResCode = param1.resCode;
            _loc2_.mountOn();
            _loc2_.gameObject.mountState = GamePredef.MOUNT_STATE_ON;
            param1.wp = param1.wp ? param1.wp : 0;
         }
      }
      
      public function initDecoShowTimer(param1:Object) : void
      {
         if(!JSONUtil.isEmptyObject(param1))
         {
            _core.view.getUI(ViewManager.PANEL_DECORATE).initDecoTimer(param1);
         }
      }
      
      public function resetHMTAlert(param1:Number) : void
      {
         var str:String = null;
         var func:Function = null;
         var needGold:Number = param1;
         str = "Xác nhận tiêu phí 【gold】 vàng để thiết lập lại dữ liệu các tầng Ảo Ma Tháp, một tuần chỉ thiết lập lại 1 lần.";
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.OK)
            {
               _core.remote.call("onResetHMTProgress",null,_core.cid);
            }
         };
         Alert.show(str.replace("gold",needGold),"",Alert.OK | Alert.CANCEL,null,func);
      }
      
      public function onBankSort(param1:Object) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:Object = null;
         var _loc7_:* = undefined;
         var _loc2_:* = {};
         for each(_loc3_ in param1)
         {
            _loc6_ = _core.data.getSlot({"sid":_loc3_.oldId});
            _loc6_.stackNum = _loc3_.stackNum;
            if(!_loc6_)
            {
               return;
            }
            _loc2_[_loc3_.oldId] = {
               "data":_loc6_,
               "oldId":_loc3_.oldId,
               "newId":_loc3_.newId
            };
         }
         for each(_loc4_ in _loc2_)
         {
            _loc6_ = _loc4_.data;
            _loc6_.sid = _loc4_.newId;
         }
         _loc5_ = GamePredef.SLOT_SID_BANK[0] + 1;
         while(_loc5_ <= GamePredef.SLOT_SID_BANK[_core.player.bankSlotNum])
         {
            _loc7_ = _core.view.getSlot(_loc5_);
            if(_loc7_)
            {
               _loc7_.restore();
            }
            _loc5_++;
         }
      }
      
      public function onUpdateTrialsCharData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_TRIALS);
         if(_loc2_)
         {
            _loc2_.onUpdateTrialsCharData(param1);
         }
      }
      
      public function onDelST(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_IM).onDelST(param1);
      }
      
      public function onActTitleUpdate(param1:Object) : void
      {
         var _loc2_:Charactor = _core.getCharactor(param1.cid);
         if(Boolean(param1) && Boolean(param1.tname))
         {
            _loc2_.actTN = param1.tname;
         }
         _loc2_.normalView.updateActTitle(param1.tid);
         if(_loc2_.normalView.state == GamePredef.ST_NORMAL)
         {
            _loc2_.normalView.state = GamePredef.ST_NORMAL;
         }
      }
      
      public function onPVPKickByLeader(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(!param1)
         {
            return;
         }
         _loc2_ = _core.view.getUI(ViewManager.POPU_PVP_WAIT);
         if(_loc2_)
         {
            _loc2_.onLeftPVPGroup(param1);
         }
      }
      
      public function onPickStar(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_ASTROLOGIC);
         if(_loc2_)
         {
            _loc2_.onPickStar(param1);
         }
      }
      
      public function DiaryActWarn() : void
      {
         if(_core && _core.view && _core.view.getUI(ViewManager.PANEL_GAMEINTRO) && Boolean(_core.view.getUI(ViewManager.PANEL_GAMEINTRO).canGetDiaryAward()))
         {
            if(!last_diray_alert_time || last_diray_alert_time.getDate() != new Date().getDate())
            {
               _core.sysMsg(Language.CALLBACK_S[214]);
               last_diray_alert_time = new Date();
            }
         }
      }
      
      public function sureChangeRMBWingColor(param1:int) : void
      {
         var func:Function = null;
         var nid:int = param1;
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("changeRMBWingColor",null,nid);
            }
         };
         Alert.show(Language.WING_COLOR_PANEL[6],"",Alert.YES | Alert.NO,null,func);
      }
      
      public function onUpdateBBInfoPanel(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_BLOODY_BATTLE_INFO);
         if(_loc2_)
         {
            _loc2_.updateBloodyBattlePanel(param1);
         }
      }
      
      public function updateWbOnlineNum(param1:int) : void
      {
         _core.view.getUI(ViewManager.PANEL_WB_BATTLEAUTO).updateWbOnlineNum(param1);
      }
      
      public function onUpdateBrotherTitle() : *
      {
         var title:String = null;
         var alert:Function = null;
         var setBrotherTitle:Function = null;
         alert = function(param1:String):void
         {
            var _loc2_:String = null;
            title = param1;
            if(title.length < 1)
            {
               return;
            }
            _loc2_ = String(Language.CALLBACK_S[196].toString().replace("{name}",param1));
            Alert.show(_loc2_,"",Alert.YES | Alert.NO,null,setBrotherTitle);
         };
         setBrotherTitle = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("updateBrotherTitle",null,title);
            }
         };
         _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.INPUTPANEL_U[5],"",alert);
      }
      
      public function onGetCrossContentionTotalState(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_TOTAL);
         if(_loc2_)
         {
            _loc2_.onGetCrossContentionTotalState(param1);
         }
      }
      
      public function onCancelPet(param1:Number) : void
      {
         _core.view.removeP(param1);
      }
      
      public function onDotaNpcBattleWithPlayerEnd(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DOTA);
         if(_loc2_)
         {
            _loc2_.onNpcBattleWithPlayerEnd(param1);
         }
      }
      
      public function onUpdateCharWorldCupData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_WORLD_CUP);
         if(_loc2_)
         {
            _loc2_.onUpdateCharWorldCupData(param1);
         }
      }
      
      public function onMoveGuildItem(param1:Object) : void
      {
         var _loc2_:int = int(param1.sSid);
         var _loc3_:int = int(param1.tSid);
         var _loc4_:Number = Number(param1.sId);
         var _loc5_:Object = _core.data.getGuildSlot({"id":_loc4_});
         _loc5_.sid = _loc3_;
         var _loc6_:* = _core.view.getSlot(_loc3_);
         _loc6_.slotData = _loc5_;
         _loc6_.type = _loc5_.type;
         _loc6_.giid = _loc5_.itemId;
         _loc6_.stackNum = _loc5_.stackNum;
         var _loc7_:* = _core.view.getSlot(_loc2_);
         _loc7_.clean();
      }
      
      private function initEventTooltip(param1:XML) : void
      {
         var _loc3_:XML = null;
         var _loc4_:Object = null;
         var _loc5_:Array = null;
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc8_:int = 0;
         var _loc9_:String = null;
         var _loc10_:* = null;
         var _loc11_:int = 0;
         var _loc12_:* = null;
         var _loc13_:* = null;
         var _loc14_:RegExp = null;
         var _loc15_:* = null;
         var _loc16_:String = null;
         var _loc17_:* = null;
         var _loc18_:RegExp = null;
         var _loc19_:* = null;
         var _loc20_:* = null;
         var _loc21_:RegExp = null;
         var _loc2_:XMLList = param1.EventTooltip;
         _core.eventTooltipDict = new Dictionary();
         for each(_loc3_ in _loc2_)
         {
            _loc4_ = new Object();
            _loc4_.id = parseInt(_loc3_.@id.toString());
            _loc4_.name = _loc3_.@Name.toString();
            _loc4_.npc = _loc3_.@NPC.toString();
            _loc4_.nid = _loc3_.@NID.toString();
            _loc4_.mid = _loc3_.@MID.toString();
            _loc4_.line = _loc3_.@LINE.toString();
            _loc4_.time = TimeUtil.getTimeStr(_loc3_.@Time.toString());
            _loc4_.level = parseInt(_loc3_.@Level.toString());
            _loc4_.description = _loc3_.@Description.toString();
            _loc4_.hid = _loc3_.@HID.toString();
            _loc5_ = _loc4_.nid == "" ? new Array() : _loc4_.nid.split(",");
            _loc6_ = _loc4_.mid == "" ? new Array() : _loc4_.mid.split(",");
            _loc7_ = _loc4_.hid == "" ? new Array() : _loc4_.hid.split(",");
            if(_loc5_.length > 0 && _loc5_[0] != "-1")
            {
               _loc9_ = String(GameData.d[GamePredef.TBL_NPC][_loc5_[0]].name);
               _loc10_ = "<font color=\"#FF0000\"> <a href=\"event:L_N|" + _loc5_[0] + "|" + _loc9_ + "\">[" + _loc9_ + "]</a></font>";
               _loc4_.npc = _loc10_;
            }
            _loc8_ = 0;
            while(_loc8_ < _loc5_.length)
            {
               _loc11_ = _loc8_ + 1;
               _loc12_ = "\\|npc" + _loc11_ + "\\|";
               if(_loc5_[_loc8_] != "-1")
               {
                  _loc9_ = String(GameData.d[GamePredef.TBL_NPC][_loc5_[_loc8_]].name);
                  _loc13_ = "<font color=\"#FF0000\"> <a href=\"event:L_N|" + _loc5_[_loc8_] + "|" + _loc9_ + "\">[" + _loc9_ + "]</a></font>";
                  _loc14_ = new RegExp(_loc12_,"g");
                  _loc4_.description = _loc4_.description.replace(_loc14_,_loc13_);
               }
               _loc8_++;
            }
            _loc8_ = 0;
            while(_loc8_ < _loc6_.length)
            {
               _loc11_ = _loc8_ + 1;
               _loc15_ = "\\|map" + _loc11_ + "\\|";
               if(_loc6_[_loc8_] != "-1")
               {
                  _loc16_ = String(GameData.d[GamePredef.TBL_MAP][_loc6_[_loc8_]].name);
                  _loc17_ = "<font color=\"#EEEE00\"> <a href=\"event:L_MA|" + _loc6_[_loc8_] + "|" + _loc16_ + "\">[" + _loc16_ + "]</a></font>";
                  _loc18_ = new RegExp(_loc15_,"g");
                  _loc4_.description = _loc4_.description.replace(_loc18_,_loc17_);
               }
               _loc8_++;
            }
            _loc8_ = 0;
            while(_loc8_ < _loc7_.length)
            {
               _loc11_ = _loc8_ + 1;
               _loc19_ = "\\|help" + _loc11_ + "\\|";
               if(_loc7_[_loc8_] != "-1")
               {
                  _loc16_ = String(Language.ACTIVEPANEL_S[41]);
                  _loc20_ = "<font color=\"#00FF00\"><a href=\"event:L_HELP|" + _loc7_[_loc8_] + "|" + _loc4_.name + "\">[" + _loc16_ + "]</a></font>";
                  _loc21_ = new RegExp(_loc19_,"g");
                  _loc4_.description = _loc4_.description.replace(_loc21_,_loc20_);
               }
               _loc8_++;
            }
            _core.eventTooltipDict[_loc4_.id] = _loc4_;
         }
         _core.eventTooltipAlready = true;
      }
      
      public function onGroupRequestDeny(param1:Object) : void
      {
         _core.group.onGroupRequestDeny(param1);
      }
      
      public function lotteryBlueMsg(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Object = null;
         var _loc4_:* = undefined;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Object = null;
         var _loc8_:Number = NaN;
         if(!param1)
         {
            return;
         }
         _loc2_ = Number(param1.type);
         _loc3_ = new Object();
         _loc3_ = param1.info;
         _loc4_ = _core.view.getUI(ViewManager.PANEL_LOTTERY);
         if(_loc2_ == 3)
         {
            _loc4_ = _core.view.getUI(ViewManager.PANEL_DOUBLE_ELEVEN);
         }
         if(_loc4_)
         {
            _loc4_.superLotterySystemSay(_loc3_);
         }
         if(_loc2_ == 1)
         {
            if(_loc4_)
            {
               if(!_loc4_.highestAwardArrNormal)
               {
                  _loc4_.highestAwardArrNormal = new Array();
               }
               if(Number(_loc4_.highestAwardArrNormal.length) < 20)
               {
                  _loc4_.highestAwardArrNormal.push(_loc3_);
               }
               else
               {
                  _loc4_.highestAwardArrNormal.shift();
                  _loc4_.highestAwardArrNormal.push(_loc3_);
               }
               if(_loc4_.linkNormal)
               {
                  _loc4_.linkNormal.htmlText = "";
               }
               _loc5_ = _loc4_.highestAwardArrNormal ? Number(_loc4_.highestAwardArrNormal.length) : 0;
               if(Number(_loc5_) > 0)
               {
                  _loc6_ = _loc5_ = Number(_loc5_) - 1;
                  while(_loc6_ >= 0)
                  {
                     _loc7_ = _loc4_.highestAwardArrNormal[_loc6_];
                     _loc4_.superLotteryShow(_loc7_,1);
                     _loc6_--;
                  }
               }
            }
         }
         else if(_loc2_ == 3)
         {
            if(_loc4_)
            {
               if(!_loc4_.highestAwardArr)
               {
                  _loc4_.highestAwardArr = new Array();
               }
               if(Number(_loc4_.highestAwardArr.length) < 20)
               {
                  _loc4_.highestAwardArr.push(_loc3_);
               }
               else
               {
                  _loc4_.highestAwardArr.shift();
                  _loc4_.highestAwardArr.push(_loc3_);
               }
               _loc5_ = _loc4_.highestAwardArr ? Number(_loc4_.highestAwardArr.length) : 0;
               if(Number(_loc5_) > 0)
               {
                  _loc6_ = _loc5_ = Number(_loc5_) - 1;
                  while(_loc6_ >= 0)
                  {
                     _loc7_ = _loc4_.highestAwardArr[_loc6_];
                     _loc4_.superLuckDrawShow(_loc7_,3);
                     _loc6_--;
                  }
               }
            }
         }
         else if(_loc4_)
         {
            if(!_loc4_.highestAwardArrVIP)
            {
               _loc4_.highestAwardArrVIP = new Array();
            }
            if(Number(_loc4_.highestAwardArrVIP.length) < 20)
            {
               _loc4_.highestAwardArrVIP.push(_loc3_);
            }
            else
            {
               _loc4_.highestAwardArrVIP.shift();
               _loc4_.highestAwardArrVIP.push(_loc3_);
            }
            if(_loc4_.linkVip)
            {
               _loc4_.linkVip.htmlText = "";
            }
            _loc8_ = _loc4_.highestAwardArrVIP ? Number(_loc4_.highestAwardArrVIP.length) : 0;
            if(Number(_loc8_) > 0)
            {
               _loc6_ = _loc8_ = Number(_loc8_) - 1;
               while(_loc6_ >= 0)
               {
                  _loc7_ = _loc4_.highestAwardArrVIP[_loc6_];
                  _loc4_.superLotteryShow(_loc7_,2);
                  _loc6_--;
               }
            }
         }
      }
      
      public function onBeginFlying(param1:Object) : void
      {
         if(!_core.ready)
         {
            return;
         }
         var _loc2_:Charactor = _core.getCharactor(param1.id);
         if(_loc2_ == null)
         {
            return;
         }
         if(_loc2_.inBattle)
         {
            return;
         }
         _loc2_.onBeginFlying();
         var _loc3_:Pet = _core.getPet(param1.id);
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.onBeginFlying();
      }
      
      public function onDailySignInActDoSignin(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DAILYSIGNINACT);
         if(_loc2_)
         {
            _loc2_.onDailySignInActDoSignin(param1);
         }
      }
      
      public function initWbView(param1:Number, param2:Boolean, param3:Number, param4:Number, param5:int, param6:Object, param7:Object, param8:Number, param9:int, param10:Object) : void
      {
         var _loc11_:Object = null;
         var _loc12_:Object = null;
         _loc11_ = _core.view.getUI(ViewManager.PANEL_WB_BATTLEAUTO);
         if(_loc11_)
         {
            _loc11_.initView(param1,param2,param3,param4,param5,param9);
            _core.wbMapId = _core.player.posMapId;
         }
         _core.view.getUI(ViewManager.MAIN_MINIMAP).changeWbBtn(2);
         _core.view.getUI(ViewManager.MAIN_QUEST_GUIDE).hide();
         _core.view.hide(ViewManager.MAIN_ADDICT_WARN);
         _loc12_ = _core.view.getUI(ViewManager.WB_RANK_CANVAS);
         _loc12_.onUpdateWbRank(param6,param7,param8,param10);
         _loc12_.visible = true;
      }
      
      public function onDecoFootOn(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:* = undefined;
         var _loc6_:Number = NaN;
         _loc2_ = _core.view.getC(param1.cid);
         if(Boolean(_loc2_) && Boolean(param1.decoInfo))
         {
            _loc3_ = Number(param1.decoInfo[3]["did"]);
            if(_loc3_)
            {
               _loc4_ = Number(param1.decoInfo[3]["showLvl"]);
               _loc5_ = GameData.d[GamePredef.TBL_DECO_SHOW][_loc3_];
               _loc2_.gameObject.decoFootCode = Number(_loc5_["resCode" + (2 * _loc4_ - 1)]);
               _loc6_ = Number(param1.decoInfo[3]["isShow"]);
               if(_loc6_)
               {
                  _loc2_.footprintOn();
               }
            }
         }
      }
      
      public function onTakeGroupQuest(param1:Boolean) : void
      {
         _core.view.getUI(ViewManager.PANEL_NPCFUNC).hide();
         _core.view.getUI(ViewManager.PANEL_QUEST).hide();
         if(param1)
         {
            _core.sysBlueMsg(Language.CALLBACK_S[208]);
         }
      }
      
      public function onAutoTaskStart(param1:Object) : void
      {
         var _loc2_:* = undefined;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_AUTOTASK);
         if(_loc2_)
         {
            _loc2_.onStart(param1);
         }
      }
      
      public function onBehavior(param1:Object) : void
      {
         var _loc2_:Charactor = _core.getCharactor(param1.cid);
         if(Boolean(_loc2_) && Boolean(_loc2_.normalView))
         {
            _loc2_.normalView.behavior(param1.behavior);
         }
      }
      
      public function onSetNpcState(param1:int, param2:int) : void
      {
         var _loc3_:Npc = _core.getNpc(param1);
         if(_loc3_)
         {
            _loc3_.state = param2;
         }
      }
      
      public function lottoPetBlueMsg(param1:Object) : void
      {
         _core.lottoBlueMsg(Language.PETMANAGERPANEL_S[10] + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_PET] + "|" + param1.data.id + "|" + param1.data.petName + "|" + _core.basic.colorByGrowRate(param1.data.growRate) + "|0|0]");
      }
      
      public function onDelGuildItem(param1:Object) : void
      {
         var _loc2_:Object = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][param1.tid];
         var _loc3_:String = "";
         _loc3_ = String(Language.GUILDPANEL_S[83]);
         _loc3_ = _loc3_.replace("{num}",param1.num);
         _loc3_ = _loc3_.replace("{item}",_loc2_.name);
         _core.sysMsg(_loc3_);
      }
      
      public function onClearWbView(param1:Boolean) : void
      {
         _core.view.hide(ViewManager.PANEL_WB_BATTLEAUTO);
         _core.view.show(ViewManager.MAIN_QUEST_GUIDE);
         if(_core.classify < 1)
         {
            _core.view.show(ViewManager.MAIN_ADDICT_WARN);
         }
         _core.view.hide(ViewManager.WB_RANK_CANVAS);
         _core.view.hide(ViewManager.PANEL_WB_TIMER);
         _core.view.hide(ViewManager.PANEL_WB_RESULT);
         if(!param1)
         {
            _core.view.getUI(ViewManager.MAIN_MINIMAP).changeWbBtn(1);
         }
         else
         {
            _core.view.getUI(ViewManager.MAIN_MINIMAP).changeWbBtn(3);
         }
      }
      
      public function onTeamCrossPKGetData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_TEAM_FIGHT);
         if(_loc2_)
         {
            _loc2_.onGetData(param1);
         }
      }
      
      public function updateEMPanel(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_EXPLORER_MEDAL);
         _loc2_ && _loc2_.updateEMPanel(param1);
      }
      
      public function onSetSecTreaHuntJieChuGold(param1:Number) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT);
         if(_loc2_)
         {
            _loc2_.onGoldJiechu(param1);
         }
      }
      
      public function onJXHDList(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_JXHD);
         _loc2_.onGetJXHDList(param1);
      }
      
      public function onChangeRingFemale(param1:String) : void
      {
         var func:Function = null;
         var msg:String = null;
         var htmlmsg:String = null;
         var _alert:Alert = null;
         var tf:IUITextField = null;
         var name:String = param1;
         func = function(param1:CloseEvent):void
         {
            var _loc2_:String = null;
            if(param1.detail == Alert.YES)
            {
               _core.remote.changeRing();
               _loc2_ = String(Language.WEDDING_BOOK_PANEL_U[20]);
            }
            else
            {
               _loc2_ = String(Language.WEDDING_BOOK_PANEL_U[21]);
            }
            _core.remote.say(_core.player.id,GamePredef.TBL_CHARACTOR,GamePredef.MSG_CHANNEL_LOCAL,_loc2_);
         };
         msg = String(Language.WEDDING_BOOK_PANEL_U[10].toString().replace("{feMaleName}",_core.player.name).replace("{maleName}",name));
         htmlmsg = String(Language.WEDDING_BOOK_PANEL_U[10].toString().replace("{feMaleName}","<font color=\'#00FF00\'>" + _core.player.name + "</font>").replace("{maleName}","<font color=\'#00FF00\'>" + name + "</font>"));
         _alert = Alert.show(msg,"",Alert.YES | Alert.NO,null,func);
         tf = _alert.mx_internal::alertForm.mx_internal::textField;
         tf.htmlText = htmlmsg;
      }
      
      public function onPetFightResult(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(Boolean(param1) && (param1.result != null && param1.result != undefined))
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_PETFIGHT_CONF);
            if(_loc2_)
            {
               _loc2_.addFightRecord(param1);
            }
         }
      }
      
      public function superLottoShow(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_LOTTO);
         if(_loc2_)
         {
            _loc2_.superLottoShow(param1);
         }
      }
      
      public function onMinusMoney(param1:Number, param2:String, param3:Number, param4:Number) : void
      {
         if(_core.player.id == param1)
         {
            if(_core.player.hasOwnProperty(param2))
            {
               _core.player[param2] = param4;
            }
         }
         if(param2 == "money")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[46] + param3 + GamePredef.CURRENCY_TIP[0]);
         }
         else if(param2 == "gold")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[47] + param3 + GamePredef.CURRENCY_TIP[1]);
         }
         else if(param2 == "moneyBind")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[48] + param3 + GamePredef.CURRENCY_TIP[2]);
         }
         else if(param2 == "goldBind")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[49] + param3 + GamePredef.CURRENCY_TIP[3]);
         }
         else if(param2 == "honor")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[50] + param3 + GamePredef.CURRENCY_TIP[4]);
         }
         else if(param2 == "expSkill")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[51] + param3 + GamePredef.CURRENCY_TIP[5]);
         }
         else if(param2 == "actpoint")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[51] + param3 + GamePredef.CURRENCY_TIP[10]);
         }
         else if(param2 == "chival")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[51] + param3 + GamePredef.CURRENCY_TIP[11]);
         }
         else if(param2 == "exPoint")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[51] + param3 + GamePredef.CURRENCY_TIP[12]);
         }
         else if(param2 == "movePnt")
         {
            _core.view.getUI(ViewManager.PANEL_FAZENDA).updateMovePoint();
            addFarmLog(Language.CALLBACK_S[51] + param3 + GamePredef.CURRENCY_TIP[24]);
         }
         _core.view.getUI(ViewManager.PANEL_CHARACTOR).updateInfo();
         _core.view.getUI(ViewManager.MAIN_SELF).initView();
      }
      
      public function onShowTimeAward(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_TOTAL);
         if(_loc2_)
         {
            _loc2_.onShowTimeAward(param1);
         }
      }
      
      public function onShop(param1:int) : void
      {
         var _loc2_:Object = _core.data.getGameData(GamePredef.TBL_NPC,param1);
         var _loc3_:IPanelUI = IPanelUI(_core.view.getUI(ViewManager.PANEL_SHOP));
         _loc3_.showData(_loc2_);
      }
      
      public function onSceneLogin(param1:int, param2:int = -1) : void
      {
         trace("onSceneLogin");
         _core.scene.sceneLogin(param1,param2);
         _core.nextGuide(ViewManager.STAGE_MAIN_CONTAINER,"",-1,GamePredef.GUIDE_TYPE_FIRST_LOGIN,param1);
      }
      
      public function onOpenMQDT(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_MQDT).visible = true;
         _core.view.getUI(ViewManager.PANEL_MQDT).resetPanel();
         _core.view.getUI(ViewManager.PANEL_MQDT).updateMQDTQuestion(param1);
      }
      
      public function onMoveItem(param1:int, param2:int, param3:Number) : void
      {
         trace(">> CallBack.onMoveItemToEmpty:",param1,param2,param3);
         var _loc4_:Object = _core.data.getSlot({"id":param3});
         _loc4_.sid = param2;
         if((param1 <= GamePredef.SLOT_SID_BAG[0] || param1 > GamePredef.SLOT_SID_BAG[9]) && _core.data.isBagSlot(param2))
         {
            _core.data.extAddBagSlotIndex(_loc4_);
         }
         else if((param2 <= GamePredef.SLOT_SID_BAG[0] || param2 > GamePredef.SLOT_SID_BAG[9]) && _core.data.isBagSlot(param1))
         {
            _core.data.delBagSlotIndex(_loc4_.id);
         }
         var _loc5_:* = _core.view.getSlot(param2);
         if(_loc5_)
         {
            _loc5_.slotData = _loc4_;
            _loc5_.type = _loc4_.type;
            _loc5_.giid = _loc4_.itemId;
            _loc5_.stackNum = _loc4_.stackNum;
         }
         var _loc6_:* = _core.view.getSlot(param1);
         _loc6_ && _loc6_.clean();
         var _loc7_:GameDataEvent = new GameDataEvent(GamePredef.EVENT_REFRESH_FUNCSLOTS);
         _loc7_.data = {};
         _core.data.dispatchEvent(_loc7_);
      }
      
      public function broadCastWorkInfotoClient(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         if(param1)
         {
            if(param1.t == 1)
            {
               _loc2_ = String(Language.WORLD_CUP_PANEL[57]);
            }
            else if(param1.t == 2)
            {
               _loc2_ = String(Language.WORLD_CUP_PANEL[58]);
            }
            else
            {
               if(param1.t != 3)
               {
                  return;
               }
               _loc2_ = String(Language.WORLD_CUP_PANEL[59]);
            }
            _loc3_ = "[" + GamePredef.getServerName(param1.sid) + Language.WORLD_CUP_PANEL[60] + "]" + param1.n;
            _loc4_ = GameData.d[GamePredef.TBL_SHOP_SLOT][param1.shId];
            _loc5_ = GameData.d[_loc4_["type"]][_loc4_["itemId"]];
            _loc2_ = _loc2_.replace("{name}",_loc3_).replace("{num}",_loc4_["pNum1"]).replace("{item}",_loc5_["name"]);
            if(param1.t == 3)
            {
               _loc2_ = _loc2_.replace("{panel}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[1003] + "|" + 922 + "|" + Language.WORLD_CUP_PANEL[35] + "|" + 0 + "|" + 0 + "|" + 0 + "]"));
            }
            _core.sysMidNote(_loc2_);
            onSystemSay(_loc2_);
         }
      }
      
      public function onShowScoreAward(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_TOTAL);
         if(_loc2_)
         {
            _loc2_.onShowScoreAward(param1);
         }
      }
      
      public function onPutAllSoulToBag(param1:Object) : void
      {
         var _loc2_:* = undefined;
         for(_loc2_ in param1)
         {
            onPutSoulToBag(param1[_loc2_]);
         }
      }
      
      public function setBuildNpcState(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:* = undefined;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         _loc2_ = _core.view.nDict;
         for each(_loc3_ in _loc2_)
         {
            if(!(_loc3_ == null || _loc3_.gameObject == null))
            {
               _loc4_ = GameData.d[GamePredef.TBL_NPC][_loc3_.gameObject.id];
               if(_loc4_ != null)
               {
                  if(Number(_loc4_.qid) == Number(param1.eid))
                  {
                     if(Number(param1.state) == GamePredef.BUILD_NPC_INBUILDING)
                     {
                        _loc5_ = _loc3_.gameObject;
                        _loc5_.resCode = GamePredef.BUILD_NPC_INBUILDING_RES;
                        _loc3_.gameObject = _loc5_;
                     }
                     else if(Number(param1.state) == GamePredef.BUILD_NPC_TOBEBUILD)
                     {
                        _loc5_ = _loc3_.gameObject;
                        _loc5_.resCode = GamePredef.BUILD_NPC_TOBEBUILD_RES;
                        _loc3_.gameObject = _loc5_;
                     }
                  }
               }
            }
         }
      }
      
      public function onSay(param1:Object) : void
      {
         var sliceIndex:int = 0;
         var em:String = null;
         var rest:String = null;
         var emCode:Number = NaN;
         var c:Charactor = null;
         var data:Object = param1;
         Debug.logFunc("onSay",data);
         try
         {
            sliceIndex = int(data.msg.indexOf(" "));
            if(sliceIndex <= 0)
            {
               sliceIndex = int(data.msg.length);
            }
            em = String(data.msg.substr(0,sliceIndex));
            rest = String(data.msg.substr(sliceIndex + 1));
            emCode = Number(GamePredef.EMOTION_CODE[em]);
            if(emCode)
            {
               c = _core.getCharactor(data.id);
               if(c)
               {
                  c.view.emotion(emCode);
               }
               if(!rest)
               {
                  return;
               }
               data.msg = rest;
            }
            if(Boolean(data.footle) && data.id != _core.cid)
            {
               data.msg = footleMsg(data.msg);
            }
            _core.view.getUI(ViewManager.MAIN_CHAT).onSay(data);
         }
         catch(e:*)
         {
         }
      }
      
      public function onSendReplayPPVEPanel(param1:*, param2:*, param3:*, param4:*, param5:*) : void
      {
         var _loc6_:Object = null;
         _loc6_ = _core.view.getUI(ViewManager.PANEL_PET_PVE);
         if(_loc6_)
         {
            _loc6_.onSendReplayPPVEPanel(param1,param2,param3,param4,param5);
         }
      }
      
      public function onGetReplayList(param1:Object) : void
      {
         _core.view.getUI(ViewManager.POP_FAZENDA_LOG).onGetReplayList(param1);
         if(param1 == null)
         {
            addFarmLog(Language.FAZENDA_LOG_PANEL_U[3]);
         }
      }
      
      public function updateMonsterHeartBox(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MONSTERHEART);
         if(_loc2_)
         {
            _loc2_.updateMonsterHeartBox(param1);
         }
      }
      
      public function fairyEndureAlert(param1:Number) : void
      {
         var _loc2_:Object = null;
         var _loc3_:* = undefined;
         if(param1)
         {
            _loc2_ = GameData.d[GamePredef.TBL_FAIRY_TEMPALTE][param1];
            if(Boolean(_loc2_) && Boolean(_loc2_.name))
            {
               _loc3_ = Language.FAIRY_MANAGER_PANEL_U[94].toString().replace("{name}",_loc2_.name);
               _core.sysMidNote(_loc3_);
            }
         }
      }
      
      public function warnTemporaryBag(param1:Array) : void
      {
         updateTemporaryBag(param1);
         _core.view.getUI(ViewManager.MAIN_TEMP_BAG_WARN).warnState = true;
      }
      
      public function onbuyTimesDuiduipengGame(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DUIDUIPENG);
         if(_loc2_)
         {
            _loc2_.onbuyTimesDuiduipengGame(param1);
         }
      }
      
      public function onMonopolyBoxAward(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SUMMER_GAME);
         if(_loc2_)
         {
            _loc2_.boxAward(param1);
         }
      }
      
      public function onAddAuction(param1:Object) : void
      {
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_AUCTION);
         if(_loc2_.visible)
         {
            _loc2_.onAddAuction(param1);
         }
      }
      
      public function onWalkable() : void
      {
         _core.player.walkable = true;
      }
      
      public function onAutoTaskCompleteByGold(param1:Object) : void
      {
         var _loc2_:* = undefined;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_AUTOTASK);
         if(_loc2_)
         {
            _loc2_.onStart(param1);
         }
      }
      
      public function onMagicWeaponResetProp(param1:Object) : void
      {
         var msg:String;
         var tf:IUITextField;
         var yesAlert:String = null;
         var noAlert:String = null;
         var _alert:Alert = null;
         var suffix1:String = null;
         var color:String = null;
         var mwRate:Number = NaN;
         var suffix2:String = null;
         var obj:Object = param1;
         yesAlert = Alert.yesLabel;
         noAlert = Alert.noLabel;
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.applyMWResetProp();
            }
            Alert.yesLabel = yesAlert;
            Alert.noLabel = noAlert;
         };
         var htmlMsg:String = "<b>" + Language.EQUIPTFUNCPANEL_S[103] + "</b>" + "\n";
         var mwInst:Object = _core.data.getGameData(obj.type,obj.itemId);
         if(!mwInst)
         {
            return;
         }
         if(mwInst.mainProp1 > 0)
         {
            suffix1 = "";
            if(Number(obj.newMainPropNum1) > Number(obj.oldMainPropNum1))
            {
               color = "<font color=\'#00ff00\'>";
               suffix1 = "<font color=\'#00ff00\'>" + Language.EQUIPTFUNCPANEL_S[106] + "</font>";
            }
            else if(Number(obj.newMainPropNum1) < Number(obj.oldMainPropNum1))
            {
               color = "<font color=\'#ff0000\'>";
               suffix1 = "<font color=\'#ff0000\'>" + Language.EQUIPTFUNCPANEL_S[107] + "</font>";
            }
            else
            {
               color = "<font color=\'#00ff00\'>";
               suffix1 = "<font color=\'#00ff00\'>" + Language.EQUIPTFUNCPANEL_S[108] + "</font>";
            }
            mwRate = GamePredef.MW_GROW_MAP[mwInst.mainProp1] ? Number(GamePredef.MW_GROW_MAP[mwInst.mainProp1][mwInst.upgradeNum]) : 1;
            htmlMsg += "\n" + GamePredef.EQUIPT_PROP_NAME[mwInst.mainProp1] + ": " + int(obj.oldMainPropNum1 * mwRate) + (mwInst.mainProp1 == GamePredef.EQUIPT_PROP_HP_PER || mwInst.mainProp1 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "") + Language.EQUIPTFUNCPANEL_S[129] + color + int(obj.newMainPropNum1 * mwRate) + "</font>" + (mwInst.mainProp1 == GamePredef.EQUIPT_PROP_HP_PER || mwInst.mainProp1 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "");
            htmlMsg += suffix1;
         }
         if(mwInst.mainProp2 > 0)
         {
            suffix2 = "";
            if(Number(obj.newMainPropNum2) > Number(obj.oldMainPropNum2))
            {
               color = "<font color=\'#00ff00\'>";
               suffix2 = "<font color=\'#00ff00\'>" + Language.EQUIPTFUNCPANEL_S[106] + "</font>";
            }
            else if(Number(obj.newMainPropNum2) < Number(obj.oldMainPropNum2))
            {
               color = "<font color=\'#ff0000\'>";
               suffix2 = "<font color=\'#ff0000\'>" + Language.EQUIPTFUNCPANEL_S[107] + "</font>";
            }
            else
            {
               color = "<font color=\'#00ff00\'>";
               suffix2 = "<font color=\'#00ff00\'>" + Language.EQUIPTFUNCPANEL_S[108] + "</font>";
            }
            mwRate = GamePredef.MW_GROW_MAP[mwInst.mainProp2] ? Number(GamePredef.MW_GROW_MAP[mwInst.mainProp2][mwInst.upgradeNum]) : 1;
            htmlMsg += "\n" + GamePredef.EQUIPT_PROP_NAME[mwInst.mainProp2] + ": " + int(obj.oldMainPropNum2 * mwRate) + (mwInst.mainProp2 == GamePredef.EQUIPT_PROP_HP_PER || mwInst.mainProp2 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "") + Language.EQUIPTFUNCPANEL_S[129] + color + int(obj.newMainPropNum2 * mwRate) + "</font>" + (mwInst.mainProp2 == GamePredef.EQUIPT_PROP_HP_PER || mwInst.mainProp2 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "");
            htmlMsg += suffix2;
         }
         msg = htmlMsg.replace(/<font(.*?)>/g,"");
         msg = msg.replace(/<\/font>/g,"");
         msg = msg.replace(/<b>/g,"");
         msg = msg.replace(/<\/b>/g,"");
         Alert.yesLabel = Language.EQUIPTFUNCPANEL_S[113];
         Alert.noLabel = Language.EQUIPTFUNCPANEL_S[114];
         _alert = Alert.show(msg,"",Alert.YES | Alert.NO,null,func);
         Alert.yesLabel = yesAlert;
         Alert.noLabel = noAlert;
         tf = _alert.mx_internal::alertForm.mx_internal::textField;
         tf.htmlText = htmlMsg;
         tf.filters = GamePredef.FILTER_TEXT1;
      }
      
      public function onSetMapNpcState() : void
      {
         var _loc2_:Object = null;
         var _loc1_:Object = _core.view.nDict;
         for each(_loc2_ in _loc1_)
         {
            _core.remote.setNpcState(_loc2_.gameObject.id);
         }
      }
      
      public function onLearnSkill(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_LEARNSKILL).showSkill(param1);
      }
      
      public function unSetCharactorAfk(param1:Object) : void
      {
         var char:Charactor = null;
         var groupPanel:Object = null;
         var obj:Object = param1;
         if(Boolean(obj) && Boolean(obj.cid))
         {
            if(obj.cid == _core.player.id)
            {
               _core.player.groupAfk = false;
            }
            if(Boolean(_core.groupMemberListArr) && Boolean(_core.groupMemberListArr[obj.cid]))
            {
               _core.groupMemberListArr[obj.cid].groupAfk = false;
            }
            char = _core.getCharactor(obj.cid);
            if(char)
            {
               char.groupAfk = false;
            }
            try
            {
               groupPanel = _core.view.getUI(ViewManager.PANEL_GROUP);
               if(groupPanel && groupPanel.btnAfk && Boolean(groupPanel.btnAfk.label))
               {
                  groupPanel.btnAfk.label = Language.GROUPPANEL_U[12];
               }
            }
            catch(e:*)
            {
               trace("on unSetCharactorAfk抛出异常！");
            }
            _core.group.unGroupAfk(obj);
         }
      }
      
      public function onUpdateTakeOffState(param1:Object) : void
      {
         var _loc2_:Charactor = _core.getCharactor(param1.id);
         if(_loc2_ == null)
         {
            return;
         }
         if(_core.player.flyingState == GamePredef.FLYING_STATE_ON_GROUND)
         {
            if(_core.view.getUI(ViewManager.MAIN_MINIMAP).flyBtn.label == Language.MINIMAPCANVAS_U[8])
            {
               _core.view.getUI(ViewManager.MAIN_MINIMAP).flyBtn.label = Language.MINIMAPCANVAS_U[7];
            }
         }
         else if(!param1.flag)
         {
            onStopFlying(param1);
         }
         else
         {
            _core.remote.call("updateTeamFlyState",null,null);
         }
      }
      
      public function onReportTS(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_IM).onReportTS(param1);
      }
      
      public function onLineList() : void
      {
      }
      
      public function updatePRSPanel(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PET_REAl_SOUL);
         _loc2_ && _loc2_.updatePRSPanel(param1);
      }
      
      public function showPanelOutBloodyBattle() : void
      {
         var _loc1_:Array = null;
         var _loc2_:uint = 0;
         var _loc3_:Object = null;
         _loc1_ = [ViewManager.MAIN_ACTIVITY,ViewManager.MAIN_MINIMAP,ViewManager.MAIN_QUEST_GUIDE];
         for each(_loc2_ in _loc1_)
         {
            _loc3_ = _core.view.getUI(_loc2_);
            if(_loc3_)
            {
               if(_loc2_ == ViewManager.MAIN_QUEST_GUIDE)
               {
                  _core.player.questGuideAble = true;
                  _loc3_.show();
               }
               else
               {
                  _loc3_.visible = true;
               }
            }
         }
         _loc3_ = _core.view.getUI(ViewManager.PANEL_BLOODY_BATTLE_INFO);
         if(_loc3_)
         {
            _loc3_.visible = false;
         }
      }
      
      public function updateMazeInfoData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MAZE_INFO);
         if(Boolean(_loc2_) && Boolean(param1))
         {
            _loc2_.onGetMazeData(param1);
         }
      }
      
      public function onSubPetConf(param1:Boolean) : void
      {
         if(param1)
         {
            addFarmLog(Language.CALLBACK_S[210]);
         }
      }
      
      public function onPassCard(param1:Object, param2:Number, param3:Number) : void
      {
         var _loc4_:Object = null;
         _loc4_ = _core.view.getUI(ViewManager.PANEL_FLOP_PASS);
         if(_loc4_)
         {
            _loc4_.onPassCard(param1,param2,param3);
         }
      }
      
      public function onCrossContentionOpenPointPanel(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_SINGLE);
         if(_loc2_)
         {
            _loc2_.onOpenAreaPanel(param1);
         }
      }
      
      public function updateWarMapStatus(param1:Object) : void
      {
         _core.view.getUI(ViewManager.POPU_STAR_INSTACE_MAP).updateWarMapStatus(param1);
      }
      
      public function superLuckDrawMidSay(param1:Object) : *
      {
         var _loc2_:* = undefined;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_LUCK_DRAW);
         if(_loc2_)
         {
            _loc2_.superLuckDrawMidSay(param1);
         }
      }
      
      public function onUpdatePerNumProp(param1:Object) : void
      {
         var _loc2_:Number = Number(param1.type);
         var _loc3_:String = null;
         if(Number(param1.num) <= 0)
         {
            if(_loc2_ == GamePredef.DONATE_CONTRIB)
            {
               _loc3_ = String(Language.GUILDPANEL_S[56]);
            }
            else if(_loc2_ == GamePredef.NORMAL_CONTRIB)
            {
               _loc3_ = String(Language.GUILDPANEL_S[55]);
            }
            if(_loc3_)
            {
               _loc3_ = _loc3_.replace("{name}",LinkEncode.encode(GamePredef.TBL_CHARACTOR,param1.cid,param1.name));
               _loc3_ = _loc3_.replace("{num}",(-param1.num).toString());
               _core.sysMsg(_loc3_);
            }
         }
         else
         {
            if(_loc2_ == GamePredef.DONATE_CONTRIB)
            {
               _loc3_ = String(Language.GUILDPANEL_S[54]);
            }
            else if(_loc2_ == GamePredef.NORMAL_CONTRIB)
            {
               _loc3_ = String(Language.GUILDPANEL_S[53]);
            }
            if(_loc3_)
            {
               _loc3_ = _loc3_.replace("{name}",LinkEncode.encode(GamePredef.TBL_CHARACTOR,param1.cid,param1.name));
               _loc3_ = _loc3_.replace("{num}",param1.num);
               _core.sysMsg(_loc3_);
            }
         }
         _core.view.getUI(ViewManager.PANEL_GUILD).onUpdateNumProp(param1);
      }
      
      public function onUpdateLearnedSkill(param1:String) : void
      {
         var _loc2_:* = undefined;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_LIFESKILL);
            if(!_loc2_.initFlag)
            {
               return;
            }
            _loc2_.learnedSkillArray.push(param1);
            _loc2_.initList2(0);
            _loc2_.initList2(1);
            _loc2_.makeListChange();
            _loc2_.medicineLevelListChange();
         }
      }
      
      public function onUpdateCharWorldCupFlagData(param1:Number, param2:String, param3:Number) : void
      {
         var _loc4_:Object = null;
         _loc4_ = _core.view.getUI(ViewManager.PANEL_WORLD_CUP);
         if(_loc4_)
         {
            _loc4_.onUpdateCharWorldCupFlagData(param1,param2,param3);
         }
      }
      
      public function onLoopNotice(param1:Object) : void
      {
         var _loc2_:Object = _core.view.getUI(ViewManager.MAIN_RNOTICE);
      }
      
      public function changeExpnumber(param1:Number) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_REBATEEVERYDAY);
         _loc2_ && _loc2_.changeExpnumber(param1);
      }
      
      public function showMomoGuessNumber(param1:String, param2:Number) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_GUESS_NUMBER);
         if(_loc3_)
         {
            _loc3_.showMomoGuessNumber(param1,param2);
         }
      }
      
      public function op(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_EXCHANGE).op(param1);
      }
      
      public function onAddTemporaryItem(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:String = null;
         var _loc6_:* = undefined;
         if(param1)
         {
            _loc2_ = "";
            if(param1.t == GamePredef.TBL_EQUIPT_TEMPLATE)
            {
               if(param1.c >= 0)
               {
                  _loc2_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[param1.c] + "\'>" + param1.n + "</font>";
               }
               else
               {
                  _loc4_ = _core.getTemplateData(param1.t,param1.i);
                  _loc5_ = _loc4_.kind == GamePredef.ITEM_KIND_PETEQU || _loc4_.kind == GamePredef.ITEM_KIND_MAGICWEAPON || _loc4_.kind == GamePredef.ITEM_KIND_WING ? "" : String(GamePredef.PRE_EQU_NAME[_core.basic.getPreByQuality(param1.q)]);
                  _loc6_ = _loc4_.kind == GamePredef.ITEM_KIND_MAGICWEAPON ? GamePredef.MSG_ITEM_COLOR[0] : GamePredef.MSG_ITEM_COLOR[_core.basic.getColorByQuality(param1.q)];
                  _loc2_ = "<font color=\'" + _loc6_ + "\'>" + _loc5_ + param1.n + "</font>";
               }
            }
            else if(param1.t == GamePredef.TBL_ITEM_TEMPLATE)
            {
               if(param1.c >= 0)
               {
                  _loc2_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[param1.c] + "\'>" + param1.n + "</font>";
               }
               else if(param1.tt == GamePredef.ITEM_KIND_MATERIAL)
               {
                  _loc2_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_core.basic.getColorByQuality(param1.q)] + "\'>" + param1.n + "[" + GamePredef.POSTFIX_MATERIAL_NAME[_core.basic.getColorByQuality(param1.q)] + "]" + "</font>";
               }
               else
               {
                  _loc2_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[0] + "\'>" + param1.n + "</font>";
               }
               _loc2_ += param1.s + Language.CALLBACK_S[100];
            }
            _core.sysBlueMsg(Language.CALLBACK_S[209] + _loc2_);
            _loc3_ = _core.view.getUI(ViewManager.MAIN_ADD_ITEM_EFFECT);
            if(Boolean(_loc3_) && !_core.hidesysbar)
            {
               _loc3_.addItem(param1.t,param1.i);
            }
         }
      }
      
      public function onDataGetPanelData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DOTA);
         if(_loc2_)
         {
            _loc2_.onGetPanelData(param1);
         }
      }
      
      public function onTitleUpdate(param1:Object) : void
      {
         var _loc2_:Charactor = _core.getCharactor(param1.cid);
         _loc2_.normalView.updateTitle(param1.tid);
         if(_loc2_.normalView.state == GamePredef.ST_NORMAL)
         {
            _loc2_.normalView.state = GamePredef.ST_NORMAL;
         }
      }
      
      public function onAgreeSetBrother(param1:*) : void
      {
         var func:Function = null;
         var msg:String = null;
         var data:* = param1;
         agreeFuncEnable = true;
         func = function(param1:CloseEvent):void
         {
            if(!agreeFuncEnable)
            {
               return;
            }
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("becomeBrother",null,true);
            }
            else
            {
               _core.remote.call("becomeBrother",null,false);
            }
         };
         msg = String(Language.CALLBACK_S[199].toString().replace("{cname}",data.cname));
         Alert.show(msg,"",Alert.YES | Alert.NO,null,func);
      }
      
      public function updateMysTreMakeTimes(param1:int) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DECORATE);
         if(_loc2_)
         {
            _loc2_.limitMakeTimes = param1;
         }
      }
      
      public function onNewWorldRedEnvelope(param1:*) : void
      {
         if(param1 && Boolean(param1.v) && param1.v != "")
         {
            _core.addWarn({
               "warnType":GamePredef.WARN_TYPE_REDENVELOPE,
               "data":param1
            });
         }
      }
      
      public function onTaskSweepCancel(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_TASKSWEEP);
            if(_loc2_)
            {
               _loc2_.onTaskSweepCancel(param1);
            }
         }
      }
      
      public function updateAllLineCharTreasureBowl(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_TREASURE_BOWL);
         if(Boolean(_loc2_) && Boolean(param1))
         {
            _loc2_.updateAllLineCharTreasureBowl(param1);
         }
      }
      
      public function onScriptSublimePet(param1:Number, param2:String) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC);
         _loc3_ && _loc3_.onScriptSublimePet(param1,param2);
      }
      
      public function changeGrouponVer(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_GROUPON);
         _loc2_ && _loc2_.changeVersion(param1);
      }
      
      public function onGetItemIdAward(param1:String) : void
      {
         var _loc2_:Object = null;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_GAMEINTRO);
            if(_loc2_)
            {
               _loc2_.onGetGameGift(param1);
            }
         }
      }
      
      public function onKickRoomMember(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_GROUP_RECRUIT_DETAIL);
         _loc3_ = _core.view.getUI(ViewManager.PANEL_GROUP_RECRUIT);
         if(param1.cid == _core.player.id)
         {
            _loc4_ = String(Language.GROUP_RECRUIT_PANEL_S[20]);
            _loc2_.hide();
            _loc3_.setFirstFlag(true);
            _loc3_.setAcceptBtnEnable(true);
            onMidNote(_loc4_);
            _loc2_.clearChatLog();
         }
         else
         {
            _loc4_ = String(Language.GROUP_RECRUIT_PANEL_S[19].toString().replace("{name}",param1.name));
            onSystemRoomSay(_loc4_);
         }
         _loc2_.onMemberLeave(param1.cid);
      }
      
      public function onConfirmAlert(param1:String, param2:String) : void
      {
         var submission:Function = null;
         var msg:String = param1;
         var func:String = param2;
         submission = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call(func,null,_core.cid);
            }
         };
         Alert.show(msg,"",Alert.YES | Alert.NO,null,submission);
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
      
      public function onFlopDelBossClient(param1:Number, param2:Object) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_FLOP_PASS);
         if(_loc3_)
         {
            _loc3_.onFlopDelBossClient(param1,param2);
         }
      }
      
      public function classifyAlert6() : void
      {
         Alert.show(Language.ANTIADDICTCANVAS_U[42],"",Alert.OK);
      }
      
      public function onPetEquipOff(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:GameDataEvent = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PETMANAGER);
         if(Boolean(param1) && Boolean(_loc2_))
         {
            _loc2_.onPetEquipOff(param1.pid,param1.pos,param1.sid);
         }
         _loc3_ = new GameDataEvent(GamePredef.EVENT_REFRESH_FUNCSLOTS);
         _loc3_.data = {};
         _core.data.dispatchEvent(_loc3_);
      }
      
      public function updateNewGrade(param1:*, param2:*) : void
      {
         if(Boolean(_core) && _core.cid == param1)
         {
            _core.player.newGrade = param2;
         }
      }
      
      public function onNpcOn(param1:Object) : void
      {
         var _loc2_:Object = _core.data.gameData[GamePredef.TBL_NPC][param1.nid];
         _loc2_.posX = param1.x;
         _loc2_.posY = param1.y;
         _loc2_.id = param1.id;
         _loc2_.nid = param1.nid;
         _loc2_.name = param1.name;
         if(param1.resCode)
         {
            _loc2_.resCode = param1.resCode;
         }
         if(param1.map)
         {
            _loc2_.posMapId = param1.map;
         }
         _core.createNpc(_loc2_);
         _core.remote.setNpcState(_loc2_.id);
      }
      
      public function onConfirmGuildApply(param1:Object) : void
      {
         if(Number(param1.cid) == _core.player.id)
         {
            _core.player.gData = param1.gData;
         }
         _core.view.getUI(ViewManager.PANEL_GUILD).onConfirmGuildApply(param1);
      }
      
      public function onDelRelationship(param1:Number) : void
      {
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_IM);
         if(_loc2_)
         {
            _loc2_.onDelRelationship(param1);
         }
      }
      
      public function onAchieveTitle(param1:String) : void
      {
         var _loc2_:* = null;
         _loc2_ = "恭喜您获得了\"" + param1 + "\"称号";
         _core.sysBlueMsg(_loc2_);
      }
      
      public function onGroupListOfMap(param1:Object) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_IM);
         if(_loc2_)
         {
            _loc2_.onInitGroupList(param1);
         }
      }
      
      public function onAddChaQuest(param1:Object) : void
      {
         _core.player.qn = param1.qn;
         param1.d.pos = param1.pos;
         param1.d.clsData = param1.clsData;
         _core.view.getUI(ViewManager.PANEL_QUEST).onAddChaQuest(param1.d);
      }
      
      public function onTransAllExpInPanel(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         if(!param1 || !param1.data)
         {
            return;
         }
         for(_loc2_ in param1.data)
         {
            if(param1.data[_loc2_])
            {
               onTransformExpInPanel(param1.data[_loc2_]);
            }
         }
         _loc3_ = _core.view.getUI(ViewManager.POPU_SOUL_PRODUCT);
         _loc4_ = _core.view.getUI(ViewManager.PANEL_PET_SOUL);
         if(param1.soulExp)
         {
            _core.player.soulExp = param1.soulExp;
            _core.player.soulChip = param1.chip;
            if(_loc3_)
            {
               _loc3_.changeSoulPanelInfo(_core.player.soulExp,_core.player.soulChip);
            }
            if(_loc4_)
            {
               _loc4_.changeSoulPanelInfo(_core.player.soulExp,_core.player.soulChip);
            }
         }
      }
      
      public function onGroupDeny(param1:Object) : void
      {
         _core.group.onGroupDeny(param1);
      }
      
      public function onNpcFree(param1:int) : void
      {
         var _loc2_:Npc = _core.getNpc(param1);
         if(_loc2_)
         {
            _loc2_.busy = false;
         }
      }
      
      public function onMineTimeOut(param1:int) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_FAZENDA);
         _loc2_.onMineTimeOut(param1);
         _loc3_ = _core.view.getUI(ViewManager.MAIN_MINIMAP);
         if(!_loc2_.visible)
         {
            _loc3_.playGlowEffect();
         }
      }
      
      public function onProduct(param1:Object) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_PRODUCT);
         if(_loc2_)
         {
            _loc2_.onUpdateView(param1);
         }
      }
      
      public function onSetLeague(param1:Object) : void
      {
         var _loc2_:Charactor = _core.getCharactor(param1.cid);
         if(Boolean(_loc2_) && Boolean(_loc2_.normalView))
         {
            _loc2_.leagueIcon = param1.iconType;
            _loc2_.normalView.setLeagueFlag(param1.iconType);
         }
      }
      
      public function onSysMidNote(param1:String) : void
      {
         _core.sysMidNote(param1);
      }
      
      public function classifyAlert5() : void
      {
         Alert.show(Language.ANTIADDICTCANVAS_U[45],"",Alert.OK);
      }
      
      public function classifyAlert7() : void
      {
         Alert.show(Language.ANTIADDICTCANVAS_U[47],"",Alert.OK);
      }
      
      public function close(... rest) : void
      {
         _core.remote.close();
         if(!_core.remote.showAlert)
         {
            return;
         }
         switch(_core.remote.info)
         {
            case "NetConnection.Connect.Rejected":
               switch(_core.remote.appCode)
               {
                  case "ERR_LOGIN_FAILED":
                     Alert.show(Language.CALLBACK_S[1],"",Alert.OK);
                     break;
                  case "ERR_USER_EXIST":
                     Alert.show(Language.CALLBACK_S[2],"",Alert.OK);
               }
               break;
            case "NetConnection.Connect.Failed":
               break;
            case "NetConnection.Connect.Closed":
               switch(_core.remote.kickCode)
               {
                  case "KICKED_BY_OTHER":
                     Alert.show(Language.CALLBACK_S[0],"",Alert.OK,null,onLogout);
                     break;
                  case "KICKED_BY_SYSTEM":
                     Alert.show(Language.CALLBACK_S[222],"",Alert.OK,null,onLogout);
                     break;
                  default:
                     Alert.show(Language.CALLBACK_S[3],"",Alert.OK,null,onLogout);
               }
               _core.remote.kickCode = "";
         }
      }
      
      public function onShowWbTimer() : void
      {
         var _loc1_:Object = null;
         _loc1_ = _core.view.getUI(ViewManager.PANEL_WB_TIMER);
         _loc1_.show();
      }
      
      public function initLongBuff(param1:Object) : void
      {
         _core.view.getUI(ViewManager.MAIN_LONGBUFF).initLongBuff(param1);
      }
      
      public function onShowBuildInfo(param1:int) : void
      {
         var _loc2_:Object = _core.view.getB(param1);
         _loc2_.showBuildInfo();
      }
      
      public function onShowGwRegList(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:* = undefined;
         _loc2_ = Alert.yesLabel;
         _loc3_ = "已报名公会：     ";
         for(_loc4_ in param1)
         {
            _loc3_ += "\n   " + param1[_loc4_];
         }
         Alert.yesLabel = Language.GAMEPREDEF_S[3];
         var _loc5_:Alert = Alert.show(_loc3_,"",Alert.YES);
         Alert.yesLabel = _loc2_;
      }
      
      public function onUpdataMCZDConf(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MCZD_PETFIGHT_CONF);
         _loc2_.onUpdataMCZDConf(param1);
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
      
      public function onGetRoomList(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_GROUP_RECRUIT);
            _loc2_.onGetRoomList(param1);
         }
      }
      
      public function onSetSecTreaHuntPlayStop(param1:int, param2:int) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT);
         if(_loc3_)
         {
            _loc3_.onSetSecTreaHuntPlayStop(param1,param2);
         }
      }
      
      public function onTurnTable(param1:Number, param2:Object, param3:Number) : void
      {
         var _loc4_:Object = null;
         _loc4_ = _core.view.getUI(ViewManager.PANEL_MANJIUJIAN);
         _loc4_ && _loc4_.onTurnTable(param1,param2,param3);
      }
      
      public function flushProcesFlag(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_PM);
            if(Boolean(_loc2_) && Boolean(_loc2_.panelDataFlush))
            {
               _loc2_.flushProcesFlag(param1);
            }
         }
      }
      
      public function onSpeTitleUpdate(param1:Object) : void
      {
         var _loc2_:Charactor = _core.getCharactor(param1.cid);
         _loc2_.normalView.updateSpeTitle(param1.tid);
         if(!_core.checkTitleShow(param1.tid) && param1.vipT > 0)
         {
            _loc2_.normalView.updateVipTitle(param1.vipT);
         }
         if(_loc2_.normalView.state == GamePredef.ST_NORMAL)
         {
            _loc2_.normalView.state = GamePredef.ST_NORMAL;
         }
      }
      
      public function onUpdateSoulSlot(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(Boolean(param1) && Boolean(param1.f))
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_PET_SOUL);
            if(_loc2_)
            {
               _loc2_.updateSoulSlot(param1);
            }
         }
         else
         {
            Alert.show(Language.PET_SOUL_S[38],"",Alert.YES,null,null);
         }
      }
      
      public function onBattleReplay(param1:Object, param2:Boolean = true) : void
      {
         _core.battle.battleOnStart(param1,false,true);
      }
      
      public function onReqLeaveCrossBattle(param1:Boolean) : void
      {
         _core.battle && _core.battle.battleOnEnd();
         _core.battleServer.onReqLeaveCrossBattle(param1);
      }
      
      public function onGroupInviteSent(param1:Object) : void
      {
         _core.group.onGroupInviteSent(param1);
      }
      
      public function onUpdateManJiuJianLimitItemAll(param1:Object, param2:Object) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_MANJIUJIAN);
         _loc3_ && _loc3_.onUpdateManJiuJianLimitItemAll(param1,param2);
      }
      
      public function onMYTCData(param1:*) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MOYINTUCE_PANEL);
         if(_loc2_)
         {
            _loc2_.onMYTCData(param1);
         }
      }
      
      public function onAddMineral(param1:Object) : void
      {
         var _loc2_:String = null;
         if(param1.fail)
         {
            _loc2_ = String(Language.FAZENDAPANEL_S[22].replace("{time}",TimeUtil.dateFormatter.format(new Date(param1.time - _core.timeLag))));
            addFarmLog(_loc2_);
         }
         else
         {
            _core.view.getUI(ViewManager.PANEL_FAZENDA).onAddMineral(param1);
         }
      }
      
      public function onDotaTowerBattleWithPlayerEnd(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DOTA);
         if(_loc2_)
         {
            _loc2_.onTowerBattleWithPlayerEnd(param1);
         }
      }
      
      public function onItemSort(param1:Object) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc7_:Object = null;
         var _loc8_:* = undefined;
         var _loc2_:* = {};
         for each(_loc3_ in param1)
         {
            _loc7_ = _core.data.getSlot({"sid":_loc3_.oldId});
            _loc7_.stackNum = _loc3_.stackNum;
            if(!_loc7_)
            {
               return;
            }
            _loc2_[_loc3_.oldId] = {
               "data":_loc7_,
               "oldId":_loc3_.oldId,
               "newId":_loc3_.newId
            };
         }
         for each(_loc4_ in _loc2_)
         {
            _loc7_ = _loc4_.data;
            _loc7_.sid = _loc4_.newId;
         }
         _loc5_ = GamePredef.SLOT_SID_BAG[0] + 1;
         while(_loc5_ <= GamePredef.SLOT_SID_BAG[_core.player.bagSlotNum])
         {
            _loc8_ = _core.view.getSlot(_loc5_);
            if(_loc8_)
            {
               _loc8_.restore();
            }
            _loc5_++;
         }
         var _loc6_:GameDataEvent = new GameDataEvent(GamePredef.EVENT_REFRESH_FUNCSLOTS);
         _loc6_.data = {};
         _core.data.dispatchEvent(_loc6_);
      }
      
      public function updateMonsterHeartBagByOneKey(param1:int) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MONSTERHEART);
         if(_loc2_)
         {
            _loc2_.initView();
         }
      }
      
      public function onFreshCharTreasureBowl(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_TREASURE_BOWL);
         if(Boolean(_loc2_) && Boolean(param1))
         {
            _loc2_.onFreshCharTreasureBowl(param1);
         }
      }
      
      public function onPetArenaFightActivity(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_PET_ARENA_ACTIVITY).onPetArenaFight(param1);
      }
      
      public function onAddictState(param1:Object) : void
      {
         var _loc2_:Number = Number(param1.onlineTime);
         var _loc3_:int = int(param1.classify);
         _core.classify = _loc3_;
         var _loc4_:Object = _core.view.getUI(ViewManager.MAIN_ADDICT_WARN);
         if(param1.onlineTime != null)
         {
            if(_loc4_ != null)
            {
               _loc4_.setOnLineTime(_loc2_);
            }
            _loc4_.visible = true;
         }
         else if(_loc4_ != null)
         {
            _loc4_.visible = false;
            _loc4_.stopTimer();
         }
      }
      
      public function autoCloseToNpc(param1:int) : void
      {
         var _loc2_:Npc = null;
         _loc2_ = _core.getNpc(param1);
         if(_loc2_)
         {
            _loc2_.view.clickNpc();
         }
      }
      
      public function onSetSecTreaHuntAutoPlay(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT);
         if(_loc2_)
         {
            _loc2_.onSetSecTreaHuntAutoPlay(param1);
         }
      }
      
      public function onFairyOff(param1:Number) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getC(param1);
         if(_loc2_)
         {
            _loc2_.gameObject.fairy = null;
            _loc2_.fairyOff();
         }
      }
      
      public function tutorFuncAlert(param1:*) : void
      {
         _core.view.getUI(ViewManager.PANEL_NPCFUNCOTHER).tutorFuncAlert();
      }
      
      public function onGetBetAward(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_TEAM_FIGHT);
         if(_loc2_)
         {
            _loc2_.onGetBetAward(param1);
         }
      }
      
      public function onGetLastScore(param1:*) : void
      {
         var _loc2_:Object = null;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_FIGHT);
            if(_loc2_)
            {
               _loc2_.onGetLastScore(param1);
            }
         }
      }
      
      public function checkConnectionAlive() : String
      {
         return "OK";
      }
      
      public function onScenePlayerEntered(param1:Object) : void
      {
         if(param1.vipT < 0 && param1.SpeT > 0)
         {
            param1.vipT = param1.SpeT;
         }
         if(param1.vipT > 0 && param1.SpeT > 0 && param1.vipT != param1.SpeT && _core.checkTitleShow(param1.SpeT))
         {
            param1.t = param1.SpeT;
         }
         _core.createCharactor(param1);
      }
      
      public function onTXKCGetData(param1:*) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_TEXUNKECHENG_ACTIVITY);
         if(_loc2_)
         {
            _loc2_.onTXKCData(param1);
         }
      }
      
      public function onNpcPos(param1:* = null) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(param1 == null)
         {
            _core.sysBlueMsg(Language.CALLBACK_S[68]);
         }
         else
         {
            for each(_loc2_ in param1)
            {
               if(_loc2_)
               {
                  _loc3_ = int(_loc2_.posX / 10);
                  _loc4_ = int(_loc2_.posY / 10);
                  _core.sysBlueMsg("<font color=\'" + GamePredef.MSG_EVENTTEXT_COLOR[0] + "\'>[" + _loc2_.name + "]" + "</font>" + Language.CALLBACK_S[69] + GameData.d[GamePredef.TBL_MAP][_loc2_.posMapId].name + "," + Language.CALLBACK_S[189] + "[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_POS] + "|" + GameData.d[GamePredef.TBL_MAP][_loc2_.posMapId].id + "|" + _loc3_ + "," + _loc4_ + "|0|0|0]");
               }
               else
               {
                  _core.sysBlueMsg(Language.CALLBACK_S[71]);
               }
            }
         }
      }
      
      public function updateMonthWelfareBag(param1:Array) : void
      {
         var _loc2_:ArrayCollection = null;
         var _loc3_:* = undefined;
         _loc2_ = new ArrayCollection();
         for each(_loc3_ in param1)
         {
            _loc2_.addItem(_loc3_);
         }
         _core.view.getUI(ViewManager.PANEL_MONTHWELFARE_BAG).itemList = _loc2_;
      }
      
      public function onChangeEquiptInst(param1:Object) : void
      {
         _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][param1.id] = param1;
      }
      
      public function onUpdatePVPRoom(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Object = null;
         var _loc4_:* = undefined;
         var _loc5_:String = null;
         if(!param1)
         {
            return;
         }
         if(param1.type == "level")
         {
            _loc2_ = Number(param1.roomId);
            _loc3_ = param1.lev;
            if(!_loc2_ || !_loc3_)
            {
               return;
            }
            _loc4_ = _core.view.getUI(ViewManager.PANEL_PVP_ROOM_LIST);
            if(_loc4_ && Boolean(_loc4_.visible))
            {
               _loc4_.onUpdateGroupLimit(_loc2_,_loc3_);
            }
            _loc4_ = _core.view.getUI(ViewManager.POPU_PVP_WAIT);
            if(_loc4_ && Boolean(_loc4_.visible))
            {
               _loc4_.onUpdateGroupLimit(_loc2_,_loc3_);
            }
         }
         else if(param1.type == "pass")
         {
            _loc2_ = Number(param1.roomId);
            _loc5_ = String(param1.pass);
            if(!_loc2_)
            {
               return;
            }
            _loc4_ = _core.view.getUI(ViewManager.PANEL_PVP_ROOM_LIST);
            if(_loc4_ && Boolean(_loc4_.visible))
            {
               _loc4_.onUpdatePVPGroupPass(_loc2_,_loc5_);
            }
            _loc4_ = _core.view.getUI(ViewManager.POPU_PVP_WAIT);
            if(_loc4_ && Boolean(_loc4_.visible))
            {
               _loc4_.onUpdatePVPGroupPass(_loc2_,_loc5_);
            }
         }
      }
      
      public function onWingOff(param1:Object) : void
      {
         var _loc2_:Object = _core.view.getC(param1.cid);
         if(_loc2_)
         {
            _loc2_.gameObject.wingResCode = 0;
            _loc2_.wingOff();
         }
      }
      
      public function changePPLoadingState(param1:*) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PET_PVE);
         if(_loc2_)
         {
            _loc2_.changePPLoadingState();
         }
      }
      
      public function onShowUpgradeManager(param1:int) : void
      {
         var _loc2_:Object = _core.view.getB(param1);
         _loc2_.showUpgradeManager();
      }
      
      private function clearView() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC);
         if(_loc1_)
         {
            _loc1_.clear();
         }
      }
      
      public function onShowLifeSkill(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_LIFESKILL);
            if(!_loc2_.visible)
            {
               _loc2_.visible = true;
            }
            _loc2_.learnedSkillSkip(param1);
         }
      }
      
      public function productInit(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_PRODUCT).init(param1);
         _core.view.getUI(ViewManager.PANEL_PRODUCT).updateView();
      }
      
      public function onSystemMidMsg(param1:String) : void
      {
         Debug.logFunc("onSystemMidMsg",param1);
         _core.sysMidMsg(param1);
      }
      
      public function onTrack(param1:Boolean) : void
      {
         if(param1 == false)
         {
            _core.sysBlueMsg(Language.CALLBACK_S[72]);
         }
      }
      
      public function onPreySoulSingle(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(!param1)
         {
            return;
         }
         if(!param1.type)
         {
            _loc2_ = _core.view.getUI(ViewManager.POPU_SOUL_PRODUCT);
            if(_loc2_)
            {
               if(param1.sidObj)
               {
                  _loc2_.addTempSoul(param1.sidObj.index,param1.sidObj.ii);
                  _core.player.soulTempBag[param1.sidObj.index] = param1.sidObj.ii;
               }
               if(param1.newIndex)
               {
                  _loc2_.changeBtnState(param1.newIndex);
               }
               if(param1.point)
               {
                  _loc2_.changePointInfo(_core.player.soulPnt);
               }
            }
         }
         else
         {
            switch(param1.type)
            {
               case 1:
                  Alert.show(Language.PET_SOUL_S[10],"",Alert.YES,null,null);
                  break;
               case 2:
                  Alert.show(Language.PET_SOUL_S[9],"",Alert.YES,null,null);
            }
         }
      }
      
      public function onInitViewGuildP(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_GUILD).onInitViewGuildP(param1);
      }
      
      public function onLeaderConfirmToBro() : void
      {
         var func:Function = null;
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("beginBrother",null);
            }
         };
         Alert.show(Language.CALLBACK_S[201],"",Alert.YES | Alert.NO,null,func);
      }
      
      public function showLottoPanel() : void
      {
         _core.view.changeVisible(ViewManager.PANEL_LOTTO_BAG);
      }
      
      public function onRepNotice(param1:Object) : void
      {
         _core.view.getUI(ViewManager.POPU_SYS_MSG).repeatSysMsg(param1);
      }
      
      public function onGroupLeave(param1:Object) : void
      {
         _core.group.onGroupLeave(param1);
      }
      
      public function broadCastTreasureMsg(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_TREASURE_BOWL);
         if(Boolean(_loc2_) && Boolean(param1))
         {
            _loc2_.broadCastTreasureMsg(param1);
         }
      }
      
      public function onUpdateSafeBattleMid(param1:Object) : void
      {
         if(_core.player)
         {
            _core.player.updateSafeCBMids(param1);
         }
      }
      
      public function onBuyWaWaGameCoin(param1:Number) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_WAWA_GAME);
         _loc2_ && _loc2_.onBuyWaWaGameCoin(param1);
      }
      
      public function onSetSecTreaHuntGold(param1:Number) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT_AUTO);
         if(_loc2_)
         {
            _loc2_.onLijiFinishFunc(param1);
         }
      }
      
      public function STHcancelTripResult() : void
      {
         var _loc1_:Object = null;
         _loc1_ = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT);
         _loc1_ && _loc1_.STHcancelTripResult();
      }
      
      public function onTakeFlopRankAward() : void
      {
         var _loc1_:Object = null;
         _loc1_ = _core.view.getUI(ViewManager.PANEL_FLOP_PASS);
         if(_loc1_)
         {
            _loc1_.onTakeFlopRankAward();
         }
      }
      
      public function onGroupRequestSent(param1:Object) : void
      {
         _core.group.onGroupRequestSent(param1);
      }
      
      public function onStartQuestion(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         if(param1)
         {
            _loc2_ = {"warnType":GamePredef.WARN_TYPE_QUESTIONING};
            _core.addAwardWarn(_loc2_);
         }
         else
         {
            _core.view.getUI(ViewManager.MAIN_AWARD_WARN).delQuestionWarn();
            _core.sysMsg(Language.QUESTIONING_PANEL_U[27]);
         }
      }
      
      public function onTakeLoop(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_QUESTMANAGER).onTakeLoop(param1);
      }
      
      public function onSysEvent(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:* = null;
         var _loc7_:Object = null;
         var _loc8_:Number = NaN;
         var _loc9_:Date = null;
         var _loc10_:String = null;
         var _loc11_:String = null;
         var _loc12_:Object = null;
         var _loc13_:int = 0;
         var _loc14_:* = null;
         var _loc15_:String = null;
         var _loc16_:Object = null;
         if(!param1)
         {
            return;
         }
         var _loc2_:String = "";
         switch(Number(param1.t))
         {
            case 1:
               _loc3_ = _core.data.getGameData(GamePredef.TBL_EQUIPT_TEMPLATE,param1.ti);
               if(!_loc3_)
               {
                  return;
               }
               _loc2_ = String(Language.CALLBACK_S[26]);
               _loc2_ = _loc2_.replace("{name}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.c + "|" + param1.n + "|0|0|0]"));
               _loc2_ = _loc2_.replace("{equipt}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_EQUIPT_INSTANCE] + "|" + param1.i + "|" + _loc3_.name + "|" + param1.cl + "|" + param1.p + "|" + param1.e + "]"));
               _core.sysMsg(_loc2_);
               break;
            case 2:
               _loc4_ = _core.data.getGameData(GamePredef.TBL_CREATURE,param1.ti);
               if(!_loc4_)
               {
                  return;
               }
               _loc2_ = String(Language.CALLBACK_S[28]);
               _loc2_ = _loc2_.replace("{name}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.c + "|" + param1.n + "|0|0|0]"));
               _loc2_ = _loc2_.replace("{petName}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_PET] + "|" + param1.i + "|" + _loc4_.name + "|" + 4 + "|" + 0 + "|" + 0 + "]"));
               _core.sysMsg(_loc2_);
               break;
            case 3:
               _loc4_ = _core.data.getGameData(GamePredef.TBL_CREATURE,param1.ti);
               if(!_loc4_)
               {
                  return;
               }
               _loc2_ = String(Language.CALLBACK_S[30]);
               _loc2_ = _loc2_.replace("{name}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.c + "|" + param1.n + "|0|0|0]"));
               _loc2_ = _loc2_.replace("{petName}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_PET] + "|" + param1.i + "|" + _loc4_.name + "|" + _core.basic.colorByGrowRate(param1.g) + "|" + 0 + "|" + 0 + "]"));
               _loc2_ = _loc2_.replace("{starNum}",param1.s);
               _core.sysMsg(_loc2_);
               break;
            case 4:
               _loc3_ = _core.data.getGameData(GamePredef.TBL_EQUIPT_TEMPLATE,param1.ti);
               if(!_loc3_)
               {
                  return;
               }
               _loc2_ = String(Language.CALLBACK_S[34]);
               _loc2_ = _loc2_.replace("{name}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.c + "|" + param1.n + "|0|0|0]"));
               _loc2_ = _loc2_.replace("{equipt}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_EQUIPT_INSTANCE] + "|" + param1.i + "|" + _loc3_.name + "|" + param1.cl + "|" + param1.p + "|" + param1.e + "]"));
               _loc2_ = _loc2_.replace("{starNum}",param1.g);
               _core.sysMsg(_loc2_);
               break;
            case 5:
               _loc5_ = _core.data.getGameData(GamePredef.TBL_TITLE,param1.i);
               if(!_loc5_)
               {
                  return;
               }
               _loc2_ = String(Language.CALLBACK_S[38]);
               _loc2_ = _loc2_.replace("{name}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.c + "|" + param1.n + "|0|0|0]"));
               _loc2_ = _loc2_.replace("{color}",GamePredef.MSG_EVENTTEXT_COLOR[6]);
               _loc6_ = "<a href=\"event:L_" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TOOLTIP_TITLE] + "|" + _loc5_.id + "|" + _loc5_.n + "\">[" + _loc5_.n + "]</a>";
               _loc2_ = _loc2_.replace("{titleData}",_loc6_);
               _core.sysMsg(_loc2_);
               break;
            case 10:
               _loc7_ = _core.data.getGameData(param1.type,param1.ti);
               if(!_loc7_)
               {
                  return;
               }
               _loc2_ = String(Language.CALLBACK_S[94]);
               _loc2_ = _loc2_.replace("{name}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.c + "|" + param1.n + "|0|0|0]"));
               if(param1.type == GamePredef.TBL_EQUIPT_TEMPLATE)
               {
                  if(!param1.cl)
                  {
                     param1.cl = _loc7_.color;
                  }
                  _loc2_ = _loc2_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_EQUIPT_INSTANCE] + "|" + param1.i + "|" + _loc7_.name + "|" + param1.cl + "|" + param1.p + "|" + param1.e + "]"));
               }
               else
               {
                  _loc2_ = _loc2_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[param1.type - 1] + "|" + param1.i + "|" + _loc7_.name + "|" + param1.cl + "|" + 0 + "|" + 0 + "]"));
               }
               _loc2_ = _loc2_.replace("{num}",param1.num);
               _core.sysMsg(_loc2_);
               break;
            case 117:
               _loc2_ = String(Language.WEDDING_BOOK_PANEL_U[22]);
               _loc2_ = _loc2_.replace("{name1}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.c1 + "|" + param1.n1 + "|0|0|0]")).replace("{name2}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.c2 + "|" + param1.n2 + "|0|0|0]"));
               _core.sysMsg(_loc2_);
               break;
            case 118:
               _loc8_ = new Date().getTime() + _core.timeLag;
               _loc9_ = new Date();
               _loc9_.setTime(_loc8_);
               _loc10_ = TimeUtil.dateFormatter.format(_loc9_);
               _loc2_ = String(Language.WEDDING_BOOK_PANEL_U[14]);
               if(param1.h > 0)
               {
                  _loc11_ = String(Language.WEDDING_BOOK_PANEL_U[25].toString().replace("{hour}",param1.h));
               }
               else
               {
                  _loc11_ = "";
               }
               _loc2_ = _loc2_.replace("{name}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.c + "|" + param1.n + "|0|0|0]")).replace("{hour}",_loc11_).replace("{minute}",param1.m).replace("{line}",_core._lineList[param1.l].name);
               _loc2_ += Language.WEDDING_BOOK_PANEL_U[23].toString().replace("{month}",_loc9_.getMonth() + 1).replace("{day}",_loc9_.getDate()).replace("{time}",_loc10_);
               if(_core.timeLag >= 15 * 60 * 1000)
               {
                  _loc2_ += Language.WEDDING_BOOK_PANEL_U[24];
               }
               _core.sysMsg(_loc2_);
               break;
            case 119:
               _loc2_ = String(Language.WEDDING_BOOK_PANEL_U[12]);
               _loc2_ = _loc2_.replace("{femaleName}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.c1 + "|" + param1.n1 + "|0|0|0]")).replace("{maleName}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.c2 + "|" + param1.n2 + "|0|0|0]"));
               _core.sysMsg(_loc2_);
               break;
            case 120:
               if(param1.update)
               {
                  _loc2_ = String(Language.CALLBACK_S[192]);
               }
               else
               {
                  _loc2_ = String(Language.CALLBACK_S[191]);
               }
               _loc2_ = _loc2_.replace("{name}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.c + "|" + param1.n + "|0|0|0]"));
               _loc2_ += "<font color=\"#00FF00\"><a href=\"event:L_MARRIAGE|" + "" + "|" + "GO" + "\">[" + "GO" + "]</a></font>";
               _core.sysMsg(_loc2_);
               break;
            case 121:
               _loc2_ = String(Language.CALLBACK_S[193].toString().replace("{gender}",param1.gender));
               _loc2_ = _loc2_.replace("{name}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.c1 + "|" + param1.n1 + "|0|0|0]"));
               _loc2_ = _loc2_.replace("{targetName}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.c2 + "|" + param1.n2 + "|0|0|0]"));
               _core.sysMsg(_loc2_);
               break;
            default:
               if(param1.t == 11)
               {
                  _loc7_ = _core.data.getGameData(param1.type,param1.ti);
                  if(!_loc7_)
                  {
                     return;
                  }
                  _loc2_ = String(Language.NOTICE_INFO[param1.t]);
                  if(!_loc2_)
                  {
                     return;
                  }
                  _loc2_ = _loc2_.replace("{name}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.c + "|" + param1.n + "|0|0|0]"));
                  if(param1.type == GamePredef.TBL_EQUIPT_TEMPLATE)
                  {
                     if(!param1.cl)
                     {
                        if(_loc7_.color > 0)
                        {
                           param1.cl = _loc7_.color;
                        }
                        else
                        {
                           param1.cl = 0;
                        }
                     }
                     _loc12_ = _core.data.gameData[param1.type][param1.ti];
                     if(_loc12_.kind == GamePredef.ITEM_KIND_MAGICWEAPON)
                     {
                        _loc13_ = Number(param1.q) * 10 + 6;
                        _loc2_ = _loc2_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_EQUIPT_TEMPLATE] + "|" + param1.ti + "|" + _loc7_.name + "|" + param1.cl + "|" + 0 + "|" + (int(param1.q) + 6) + "]"));
                     }
                     else
                     {
                        _loc2_ = _loc2_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_EQUIPT_TEMPLATE] + "|" + param1.ti + "|" + _loc7_.name + "|" + param1.cl + "|" + 0 + "|" + 0 + "]"));
                     }
                  }
                  else if(param1.type == GamePredef.TBL_ITEM_TEMPLATE)
                  {
                     if(!param1.cl)
                     {
                        if(_loc7_.color > 0)
                        {
                           param1.cl = _loc7_.color;
                        }
                        else
                        {
                           param1.cl = 0;
                        }
                     }
                     _loc2_ = _loc2_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_ITEM_TEMPLATE] + "|" + param1.i + "|" + _loc7_.name + "|" + param1.cl + "|" + 0 + "|" + 0 + "]"));
                  }
                  else if(param1.type == GamePredef.TBL_PET_SOUL)
                  {
                     _loc2_ = _loc2_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[param1.type] + "|" + param1.i + "|" + _loc7_.name + "|" + _loc7_.color + "|0|0]"));
                  }
                  else
                  {
                     if(param1.type != GamePredef.TBL_CREATURE)
                     {
                        break;
                     }
                     _loc14_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_core.basic.colorByGrowRate(param1.q / 10)] + "\'>[" + _loc7_.name + "]</font>";
                     _loc2_ = _loc2_.replace("{item}",_loc14_);
                  }
                  _loc2_ = _loc2_.replace("{num}",param1.num);
                  _core.sysMsg(_loc2_);
               }
               if(param1.t > 11)
               {
                  _loc7_ = _core.data.getGameData(param1.type,param1.ti);
                  if(!_loc7_)
                  {
                     return;
                  }
                  _loc2_ = String(Language.NOTICE_INFO[param1.t]);
                  if(param1.t > 1000 && Boolean(param1.eventMsg))
                  {
                     _loc2_ = String(param1.eventMsg);
                  }
                  if(!_loc2_)
                  {
                     return;
                  }
                  _loc2_ = _loc2_.replace("{name}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.c + "|" + param1.n + "|0|0|0]"));
                  if(param1.type == GamePredef.TBL_EQUIPT_TEMPLATE)
                  {
                     if(!param1.cl)
                     {
                        param1.cl = _loc7_.color;
                     }
                     _loc2_ = _loc2_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_EQUIPT_INSTANCE] + "|" + param1.i + "|" + _loc7_.name + "|" + param1.cl + "|" + param1.p + "|" + param1.e + "]"));
                  }
                  else if(param1.type == GamePredef.TBL_ITEM_TEMPLATE)
                  {
                     _loc2_ = _loc2_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[param1.type] + "|" + param1.i + "|" + _loc7_.name + "|" + param1.cl + "|" + 0 + "|" + 0 + "]"));
                  }
                  else if(param1.type == GamePredef.TBL_CREATURE)
                  {
                     _loc14_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_core.basic.colorByGrowRate(param1.q)] + "\'>[" + _loc7_.name + "]</font>";
                     _loc2_ = _loc2_.replace("{item}",_loc14_);
                  }
                  else
                  {
                     if(param1.type != GamePredef.TBL_PET_SOUL)
                     {
                        break;
                     }
                     _loc2_ = _loc2_.replace("{item}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[param1.type] + "|" + param1.i + "|" + _loc7_.name + "|" + _loc7_.color + "|0|0]"));
                  }
                  _loc2_ = _loc2_.replace("{num}",param1.num);
                  if(param1.t == 22)
                  {
                     if(param1.toolId > 0)
                     {
                        _loc16_ = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][param1.toolId];
                        if(_loc16_)
                        {
                           _loc15_ = TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_ITEM_TEMPLATE] + "|" + param1.toolId + "|" + _loc16_.name + "|" + _loc16_.color + "|" + 0 + "|" + 0 + "]");
                        }
                     }
                     if(!_loc15_)
                     {
                        _loc15_ = String(Language.GAMEPREDEF_S[174]);
                     }
                     _loc2_ = _loc2_.replace("{tool}",_loc15_);
                  }
                  _core.sysMsg(_loc2_);
               }
         }
      }
      
      public function onAddFarmNum(param1:Object) : void
      {
         if(Boolean(param1) && Boolean(param1.f))
         {
            _core.view.getUI(ViewManager.PANEL_FAZENDA).onAddFarmNum(param1.num);
         }
      }
      
      public function onMoveCardSudokuGame(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SUDOKU);
         if(_loc2_)
         {
            _loc2_.onMoveCardSudokuGame(param1);
         }
      }
      
      public function onGetEquipEditObj(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(Boolean(param1) && Boolean(param1.saveType))
         {
            if(param1.saveType == 2 || param1.saveType == 5)
            {
               _loc2_ = _core.view.getUI(ViewManager.PANEL_WING_FUNC);
               _loc2_.show();
               _loc2_.showWingChangeAlert(param1);
            }
            else
            {
               _loc2_ = _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC);
               _loc2_.show();
               _loc2_.showEquipChangeAlert(param1);
            }
         }
      }
      
      public function onGetLimitData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_WAWA_GAME);
         _loc2_ && _loc2_.onGetLimitData(param1);
      }
      
      public function onXCDSGetData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_XIAOCHUSDASAI_ACTIVITY);
         if(_loc2_)
         {
            _loc2_.onGetData(param1);
         }
      }
      
      public function onGetReturnGift(param1:int, param2:String) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_RETURN_REWARD);
         if(_loc3_)
         {
            _loc3_.onGetReturnGift(param1,param2);
         }
      }
      
      public function onSetShowPetId(param1:Number) : void
      {
         _core.setShowPetId(param1);
      }
      
      public function onGetFinalAward(param1:Object, param2:int) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_CROSS_TEAM_FIGHT);
         if(_loc3_)
         {
            _loc3_.onGetFinalAward(param1,param2);
         }
      }
      
      public function onAddStarAddition(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_STAR_ADDITION);
         _loc3_ = _core.view.getUI(ViewManager.PANEL_CHARACTOR);
         _loc2_.updateStackNum(param1.n);
         if(param1.f)
         {
            onMidNote(Language.STAR_ADD_PANEL_S[0]);
            _core.player.starsData[param1.t] = param1.d;
            _loc2_.setTypeAndUpdateView(param1.t);
            _loc3_.onAddStarAddition(param1.t);
         }
         else
         {
            onMidNote(Language.STAR_ADD_PANEL_S[1]);
         }
      }
      
      public function onXCDSGetAward(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_XIAOCHUSDASAI_ACTIVITY);
         if(_loc2_)
         {
            _loc2_.onGetAward(param1);
         }
      }
      
      public function onFailToBecomeBrother(param1:int) : void
      {
         var _loc2_:Charactor = null;
         var _loc3_:String = null;
         agreeFuncEnable = false;
         _loc2_ = _core.getCharactor(param1);
         _loc3_ = String(Language.CALLBACK_S[200].toString().replace("{name}",_loc2_.name));
         onSystemSay(_loc3_);
      }
      
      public function onCreateCharactor(param1:Object) : void
      {
         Debug.logFunc("创建角色",param1);
         if(_core.player == null || param1.id == _core.player.id || param1.posMapId != _core.player.posMapId)
         {
            return;
         }
         if(param1.vipT < 0 && param1.SpeT > 0)
         {
            param1.vipT = param1.SpeT;
         }
         if(param1.vipT > 0 && param1.SpeT > 0 && param1.vipT != param1.SpeT && _core.checkTitleShow(param1.SpeT))
         {
            param1.t = param1.SpeT;
         }
         _core.createCharactor(param1);
      }
      
      public function onXCDSRank(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_XIAOCHUSDASAI_ACTIVITY);
         if(_loc2_)
         {
            _loc2_.onGetRank(param1);
         }
      }
      
      public function onNpcRoute(param1:Object) : void
      {
         var _loc2_:Npc = _core.getNpc(param1.id);
         if(_loc2_ == null || _core.ready == false)
         {
            return;
         }
         _loc2_.moveRoute = param1.route;
         _loc2_.walk();
      }
      
      public function onSubPetConfMT(param1:Boolean) : void
      {
         if(param1)
         {
            _core.view.getUI(ViewManager.PANEL_XIULIAN_PANEL).addHMTXLLog(Language.XLS_PANEL[18]);
         }
      }
      
      public function onCreatePVPRoom(param1:Object) : *
      {
         var _loc2_:* = undefined;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_PVP_ROOM_LIST);
            if(_loc2_ && Boolean(_loc2_.visible))
            {
               _loc2_.onCreatePVPRoomCast(param1);
            }
         }
      }
      
      public function playAdventureEffect(param1:Object) : void
      {
         var _loc2_:* = undefined;
         _loc2_ = _core.view.getUI(ViewManager.MAIN_ADVENTURE);
         if(_loc2_)
         {
            _loc2_.adventureEffect();
         }
      }
      
      public function onNewGuildRedEnvelope(param1:*) : void
      {
         if(param1 && Boolean(param1.v) && param1.v != "")
         {
            _core.addWarn({
               "warnType":GamePredef.WARN_TYPE_REDENVELOPE,
               "data":param1
            });
         }
      }
      
      public function onSetSecTreaHuntCanPlay(param1:Boolean, param2:Number) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT);
         if(_loc3_)
         {
            _loc3_.onSetSecTreaHuntCanPlay(param1,param2);
         }
      }
      
      public function checkClient(param1:Object = null) : Object
      {
         return true;
      }
      
      public function onHorseRaceGetAward(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SUMMER_GAME_HORSE_RACE);
         if(_loc2_)
         {
            _loc2_.onGetAward(param1);
         }
      }
      
      public function onDelAuction(param1:Number) : void
      {
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_AUCTION);
         if(_loc2_.visible)
         {
            _loc2_.onDelAuction(param1);
         }
      }
      
      public function onDotaNpcBattleWithPlayerStart(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DOTA);
         if(_loc2_)
         {
            _loc2_.onNpcBattleWithPlayerStart(param1);
         }
      }
      
      public function onbuyJuHuaSuanAllClient(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_JUHUASUAN);
         _loc2_ && _loc2_.onbuyJuHuaSuanAllClient(param1);
      }
      
      public function updateRuneChipBag(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DECORATE);
         _loc2_ && _loc2_.updateMysChipBagPanel(param1);
      }
      
      public function dragonAlert(param1:Number, param2:Number) : void
      {
         var str:String = null;
         var func:Function = null;
         var needBall:Number = param1;
         var needGold:Number = param2;
         str = "是否要补齐缺少的【ball】个碎片？需消耗【gold】金子";
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.OK)
            {
               _core.remote.call("onAddNeedDragonBall",null,_core.cid,needGold);
            }
         };
         Alert.show(str.replace("ball",needBall).replace("gold",needGold),"",Alert.OK | Alert.CANCEL,null,func);
      }
      
      public function refreshMoJinActData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MOJINACT);
         if(_loc2_)
         {
            _loc2_.refreshMoJinActData(param1);
         }
      }
      
      public function onP2pWisper(param1:String, param2:Number, param3:String, param4:Boolean, param5:Boolean = true) : void
      {
         _core.view.getUI(ViewManager.MAIN_CHAT).onP2pWisper(param1,param2,param3,param5);
      }
      
      public function oExS(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_EXCHANGE).oExS(param1);
      }
      
      public function onDotaGroupHurtByNpc(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DOTA);
         if(_loc2_)
         {
            _loc2_.onGroupHurtByNpc(param1);
         }
      }
      
      public function onStartUpgradeBuild(param1:Object) : void
      {
      }
      
      public function onQuickPlayLastRound(param1:Object) : void
      {
         var _loc2_:Object = _core.view.getUI(ViewManager.STAGE_BATTLE);
         if(_loc2_)
         {
            _loc2_.quickPlayLastRound();
         }
      }
      
      public function onGetFarmData(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_FAZENDA).updateFazendaData(param1,true);
      }
      
      public function onSkillUpdate(param1:Object) : void
      {
         _core.player.skillList = param1;
         _core.view.initView(ViewManager.PANEL_SKILLMANAGER);
         _core.view.getUI(ViewManager.PANEL_LEARNSKILL).updateSkillList();
      }
      
      public function onStackItemInto(param1:int, param2:int, param3:Number, param4:Number, param5:int) : void
      {
         trace(param1,param2,param3,param4,param5);
         var _loc6_:Object = _core.data.getSlot({"id":param4});
         _loc6_.stackNum = param5;
         _core.data.updateSlot(_loc6_);
         _core.data.delSlot({"id":param3});
         var _loc7_:* = _core.view.getSlot(param2);
         _loc7_.slotData = _loc6_;
         _loc7_.type = _loc6_.type;
         _loc7_.giid = _loc6_.itemId;
         _loc7_.stackNum = _loc6_.stackNum;
         var _loc8_:* = _core.view.getSlot(param1);
         _loc8_.clean();
      }
      
      public function onGetConsumeAwardList(param1:Object, param2:int) : *
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_GAMEINTRO);
         _loc3_.getConsumeAwardList(param1,param2);
      }
      
      public function onDelGuildMember(param1:Object) : void
      {
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_GUILD);
         _loc2_.onDelGuildMember(param1);
         if(_core.player.guild != null && Number(_core.player.id) == Number(param1.cid))
         {
            _core.player.guild = null;
            _core.player.gData = null;
         }
         var _loc3_:Number = Number(param1.type);
         var _loc4_:String = TextUtil.decode(LinkEncode.encode(GamePredef.TBL_CHARACTOR,param1.cid,param1.name));
         switch(_loc3_)
         {
            case GamePredef.TYPE_KICK:
               _loc4_ = String(Language.CALLBACK_S[85]);
               _loc4_ = _loc4_.replace("{nameLink}",TextUtil.decode(LinkEncode.encode(GamePredef.TBL_CHARACTOR,param1.cid,param1.name)));
               _core.sysMsg(_loc4_);
               break;
            case GamePredef.TYPE_QUIT:
               _loc4_ = String(Language.CALLBACK_S[83]);
               _loc4_ = _loc4_.replace("{nameLink}",TextUtil.decode(LinkEncode.encode(GamePredef.TBL_CHARACTOR,param1.cid,param1.name)));
               _core.sysMsg(_loc4_);
               break;
            case GamePredef.TYPE_REFUSE:
               _loc4_ = String(Language.CALLBACK_S[84]);
               _loc4_ = _loc4_.replace("{nameLink}",TextUtil.decode(LinkEncode.encode(GamePredef.TBL_CHARACTOR,param1.cid,param1.name)));
               _core.sysMsg(_loc4_);
               break;
            case GamePredef.TYPE_GIVEUP:
               _loc4_ = String(Language.CALLBACK_S[86]);
               _loc4_ = _loc4_.replace("{nameLink}",TextUtil.decode(LinkEncode.encode(GamePredef.TBL_CHARACTOR,param1.cid,param1.name)));
               _core.sysMsg(_loc4_);
         }
      }
      
      public function onCrossContentionGiveUp(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_AREA);
         if(_loc2_)
         {
            _loc2_.onGiveUp(param1);
         }
      }
      
      public function onCrossContentionLookBattleInfo(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_TOTAL);
         if(_loc2_)
         {
            _loc2_.onCrossContentionLookBattleInfo(param1);
         }
      }
      
      public function leaveMaze(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MAZE_INFO);
         if(Boolean(_loc2_) && Boolean(_loc2_.visible))
         {
            _loc2_.visible = false;
         }
         _loc3_ = _core.view.getUI(ViewManager.MAIN_SYS);
         if(!_loc3_.sysBtnBar.visible)
         {
            _loc3_.sysBtnBar.visible = true;
         }
         _loc4_ = _core.view.getUI(ViewManager.MAIN_MINIMAP);
         if(!_loc4_.visible)
         {
            _loc4_.visible = true;
         }
         if(Boolean(_loc5_ = _core.view.getUI(ViewManager.MAIN_QUEST_GUIDE)) && !_loc5_.visible)
         {
            _loc5_.visible = true;
         }
         if(Boolean(_loc6_ = _core.view.getUI(ViewManager.MAIN_USER_BAR)) && !_loc6_.visible)
         {
            _loc6_.visible = true;
         }
      }
      
      public function onCancelQuest(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_QUEST).onCancelQuest(param1);
      }
      
      public function onBattleStart(param1:Object) : void
      {
         _core.battle.battleOnStart(param1);
      }
      
      public function onCrossContentionBattleInfo(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_TOTAL);
         if(_loc2_)
         {
            _loc2_.onCrossContentionBattleInfo(param1);
         }
      }
      
      public function onTransformExpInPanel(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.POPU_SOUL_PRODUCT);
         _loc3_ = _core.view.getUI(ViewManager.PANEL_PET_SOUL);
         if(param1.error)
         {
            if(_loc3_)
            {
               _loc3_.showBtn();
            }
            return;
         }
         if(Boolean(_loc2_) && Boolean(param1.index))
         {
            _loc2_.delTempSoul(param1.index);
            _core.player.soulTempBag[param1.index] = -1;
         }
         if(param1.soulExp)
         {
            _core.player.soulExp = param1.soulExp;
            _core.player.soulChip = param1.chip;
            if(_loc2_)
            {
               _loc2_.changeSoulPanelInfo(_core.player.soulExp,_core.player.soulChip);
            }
            if(_loc3_)
            {
               _loc3_.changeSoulPanelInfo(_core.player.soulExp,_core.player.soulChip);
            }
         }
      }
      
      public function onCreateRoom(param1:int) : void
      {
         var _loc2_:Object = null;
         if(param1 >= 0)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_GROUP_RECRUIT);
            _loc2_.setFirstFlag(true);
            _loc2_.getMyGroup();
         }
      }
      
      public function refreshStoneToGoldActData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_STONETOGOLDACT);
         if(_loc2_)
         {
            _loc2_.refreshStoneToGoldActData(param1);
         }
      }
      
      public function onGetReturnReward(param1:int, param2:String) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_RETURN_REWARD);
         if(_loc3_)
         {
            _loc3_.onGetReturnReward(param1,param2);
         }
      }
      
      private function setTimeoutQuestGuide() : void
      {
         _core.view.getUI(ViewManager.MAIN_QUEST_GUIDE).updateView(true);
      }
      
      public function oninitStarMap(param1:int) : void
      {
      }
      
      public function showColorPanel(param1:String) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CHANGE_COLOR);
         if(_loc2_)
         {
            _loc2_.isRebirthDress = param1;
            _loc2_.show();
         }
      }
      
      public function onUpdateWbRank(param1:Object, param2:Object, param3:Number) : void
      {
         var _loc4_:Object = null;
         _loc4_ = _core.view.getUI(ViewManager.WB_RANK_CANVAS);
         _loc4_.onUpdateWbRank(param1,param2,param3);
      }
      
      public function ShowWelfareTotalCost(param1:int) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_WELFARE);
         if(_loc2_)
         {
            _loc2_.onShowTotalCost(param1);
         }
      }
      
      public function updateDiaryData(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         _core.view.getUI(ViewManager.PANEL_GAMEINTRO).updateDiaryData(param1.id,param1.val,param1.act);
         _core.view.getUI(ViewManager.DAILY_ACTIVITY).updateDiaryData(param1.id,param1.val,param1.act);
         _loc2_ = _core.data.gameData[GamePredef.TBL_DIARY][param1.id];
         _loc3_ = _loc2_ ? "[" + _loc2_.name + "]" : "";
         if(param1.num)
         {
            if(param1.num > 0)
            {
               _core.sysBlueMsg(Language.CALLBACK_S[45] + param1.num + GamePredef.CURRENCY_TIP[27] + _loc3_);
            }
            else
            {
               _core.sysBlueMsg(Language.CALLBACK_S[51] + Math.abs(param1.num) + GamePredef.CURRENCY_TIP[27] + _loc3_);
            }
         }
      }
      
      public function onTeamCrossPKEnroll(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_TEAM_FIGHT);
            if(_loc2_)
            {
               _loc2_.onEnroll(param1);
            }
         }
      }
      
      public function onGetDuiduipengGameAward(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DUIDUIPENG);
         if(_loc2_)
         {
            _loc2_.onGetDuiduipengGameAward(param1);
         }
      }
      
      public function updateTempBags(param1:Object) : void
      {
         var _loc2_:* = undefined;
         _core.player.tBag = param1;
         _loc2_ = _core.view.getUI(ViewManager.POP_TEMP_BAG_SLOT);
         if(_loc2_ && !_loc2_.firstTimeFlag)
         {
            _loc2_.updateBag();
         }
      }
      
      public function onGroupJoined(param1:Object) : void
      {
         _core.group.onGroupJoined(param1);
      }
      
      public function onAcceptRoomApply(param1:int) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(param1 > 0)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_GROUP_RECRUIT_DETAIL);
            _loc3_ = _core.view.getUI(ViewManager.PANEL_GROUP_RECRUIT);
            _loc2_.onAcceptRoomApply(param1);
            _loc3_.setFirstFlag(true);
            if(param1 == _core.player.id)
            {
               _loc3_.setAcceptBtnEnable(false);
            }
         }
      }
      
      public function addFarmLog(param1:String) : void
      {
         _core.view.getUI(ViewManager.PANEL_FAZENDA).addFarmLog(param1 + "\n");
      }
      
      public function onItemTimeOut(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         if(param1)
         {
            _loc3_ = _core.data.getData(param1.t,param1.i);
            if(_loc3_)
            {
               _loc2_ = String(Language.CALLBACK_S[75]);
               _loc2_ = _loc2_.replace("{tData.name}",_loc3_.name);
               _core.sysMsg(_loc2_);
            }
         }
      }
      
      public function onEquipOn(param1:Object) : void
      {
         var _loc2_:Object = _core.view.getC(param1.cid);
         if(Boolean(_loc2_) && Boolean(param1.resCode))
         {
            if(param1.dressFlag)
            {
               _loc2_.gameObject.dressResCode = param1.resCode;
               _loc2_.equipOn(param1.resCode,param1.ee,param1.ef,param1.star,true);
            }
            else
            {
               _loc2_.gameObject.wp = param1.resCode;
               _loc2_.equipOn(param1.resCode,param1.ee,param1.ef,param1.star,false);
            }
         }
      }
      
      public function onNormalName(param1:Number) : void
      {
         var _loc2_:Charactor = _core.getCharactor(param1);
         _loc2_.normalView.setNormalName();
      }
      
      public function onGuildPropertyRefresh(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_GUILD).onUpdateGuildProperty(param1);
      }
      
      public function showVipSuccinctPanel(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_VIP_SUCCINCT);
         if(_loc2_)
         {
            _loc2_.eid = param1.eid;
            _loc2_.updateMWSuccView(param1.oldPro,param1.resultArr);
         }
      }
      
      public function onReadCharData(param1:Boolean = false) : void
      {
         if(param1)
         {
            _core.view.getUI(ViewManager.POPU_WAIT).showText(Language.CALLBACK_S[54]);
         }
         else if(_core.battleServer.inBattleServer)
         {
            _core.view.getUI(ViewManager.POPU_WAIT).showText(Language.CALLBACK_S[76]);
         }
         else
         {
            _core.view.getUI(ViewManager.POPU_WAIT).showText(Language.CALLBACK_S[57]);
         }
      }
      
      public function onUpdateBirthDayData(param1:Object) : void
      {
         if(Boolean(_core) && Boolean(_core.player))
         {
            _core.MC_BIRTH_FLAG = param1;
         }
      }
      
      public function onAddCrossBattleWaitList(param1:Array) : void
      {
         _core.battleServer.onAddCrossBattleWaitList(param1);
      }
      
      public function onFreshCharFlopPassItemByClient(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_FLOP_PASS);
         if(_loc2_)
         {
            _loc2_.onFreshCharFlopPassItemByClient(param1);
         }
      }
      
      public function updateTemporaryBag(param1:Array) : void
      {
         var _loc2_:ArrayCollection = null;
         var _loc3_:* = undefined;
         var _loc4_:Object = null;
         _loc2_ = new ArrayCollection();
         for each(_loc3_ in param1)
         {
            _loc4_ = new Object();
            _loc4_.ti = _loc3_.itemType;
            _loc4_.ii = _loc3_.itemId;
            _loc4_.b = _loc3_.binded;
            _loc4_.n = _loc3_.stackNum;
            _loc4_.q = _loc3_.quality;
            _loc2_.addItem(_loc4_);
         }
         _core.view.getUI(ViewManager.PANEL_TEMPORARY_BAG).itemList = _loc2_;
      }
      
      public function onStopTrade() : void
      {
         var _loc1_:* = _core.view.getUI(ViewManager.PANEL_TRADE);
         if(_loc1_)
         {
            _loc1_.onStopTrade();
         }
      }
      
      public function onMonopolyItemNum(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SUMMER_GAME);
         if(_loc2_)
         {
            _loc2_.onItemNum(param1);
         }
      }
      
      public function onNoHeadlineSpeaker() : void
      {
         _core.sysMidNote(Language.CALLBACK_S[88]);
         _core.view.getUI(ViewManager.MAIN_SYS).selectLocalChannel();
      }
      
      public function onGroupRequested(param1:Object) : void
      {
         _core.group.onGroupRequested(param1);
      }
      
      public function sureChangeWingColor(param1:int, param2:int) : void
      {
         var func:Function = null;
         var num:int = param1;
         var nid:int = param2;
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("changeWingColor",null,nid);
            }
         };
         Alert.show(Language.WING_COLOR_PANEL[0].replace("{num}",num),"",Alert.YES | Alert.NO,null,func);
      }
      
      public function initViewMailMngP() : void
      {
         _core.view.getUI(ViewManager.PANEL_MAILMANAGER).visible = true;
      }
      
      public function onMidNote(param1:String) : void
      {
         Debug.logFunc("onMidNote",param1);
         _core.sysMidNote(param1);
      }
      
      public function onAddPet(param1:Object) : void
      {
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_PETMANAGER);
         _loc2_.onAddPet(param1);
         var _loc3_:* = _core.view.getUI(ViewManager.PANEL_BAG);
         _loc3_.petInit();
         var _loc4_:GameDataEvent = new GameDataEvent(GamePredef.EVENT_REFRESH_FUNCSLOTS);
         _loc4_.data = {};
         _core.data.dispatchEvent(_loc4_);
         _core.view.getUI(ViewManager.MAIN_QUEST_GUIDE).updateView();
      }
      
      public function onPlayerLevelUp(param1:Object) : void
      {
         var _loc4_:Object = null;
         var _loc2_:Charactor = _core.getCharactor(param1.id);
         var _loc3_:String = "";
         if(_loc2_)
         {
            _loc2_.normalView.setStateNum(GamePredef.ST_LEVELUP);
            if(_loc2_.isSelf)
            {
               if(param1.exp == GamePredef.PLAYER_LEVEL_EXP[1])
               {
                  _core.view.getUI(ViewManager.MAIN_SYS).setTaskButtonBig();
               }
               _loc2_.exp = param1.exp;
               Player(_loc2_).attLastPoint = param1.lp;
               _loc2_.property.lastPoint = param1.lp;
               Player(_loc2_).maxActpoint = param1.maxAct;
               Player(_loc2_).maxVigor = param1.maxVigor;
               Player(_loc2_).maxMovePnt = param1.maxMovePnt;
               _loc4_ = _core.view.getUI(ViewManager.MAIN_SELF);
               _loc4_.update();
               _loc4_ = _core.view.getUI(ViewManager.PANEL_CHARACTOR);
               _loc4_.updateView();
               _loc4_ = _core.view.getUI(ViewManager.MAIN_PET);
               _loc4_.updateView();
               if(_loc2_.level < 20)
               {
                  _loc3_ = String(Language.CALLBACK_S[101]);
                  _loc3_ = _loc3_.replace("{level}",_loc2_.level);
                  _core.sysBlueMsg(_loc3_);
               }
               else
               {
                  _loc3_ = String(Language.CALLBACK_S[53]);
                  _loc3_ = _loc3_.replace("{level}",_loc2_.level);
                  _core.sysBlueMsg(_loc3_);
               }
               _core.view.getUI(ViewManager.PANEL_QUESTMANAGER).initCanTakeQuest();
               _core.view.getUI(ViewManager.PANEL_IM).updateViewTS();
            }
         }
      }
      
      public function onTradeFail(param1:String) : void
      {
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_TRADE);
         if(_loc2_)
         {
            _loc2_.onTradeFail(param1);
         }
      }
      
      public function onReqEnterCrossBattle(param1:Array) : void
      {
         _core.battleServer.onReqEnterCrossBattle(param1);
      }
      
      public function onCmdReady(param1:int) : void
      {
         _core.view.getUI(ViewManager.STAGE_BATTLE).setReady(param1);
      }
      
      public function onMWTurnTable(param1:Object, param2:Object) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_MONTHWELFARE);
         _loc3_ && _loc3_.onMWTurnTable(param1,param2);
      }
      
      public function onGetAnswer(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_ANSWER).onGetAnswer(param1);
      }
      
      public function onBeFriendOfOther(param1:Object) : void
      {
         var handler:Function = null;
         var obj:Object = param1;
         var str:String = "";
         if(obj.alreadyFriend == true)
         {
            str = String(Language.CALLBACK_S[96]);
            str = str.replace("{obj.name}",obj.name);
            _core.sysMidNote(str);
         }
         else
         {
            if(_core.isBlack(obj.name))
            {
               return;
            }
            if(GamePredef.GLOBAL_SETTING.hasOwnProperty("bfr") && GamePredef.GLOBAL_SETTING["brf"] == true)
            {
               return;
            }
            handler = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.addFriend(obj.name);
               }
               else
               {
                  _core.remote.refuseToAddFriend({
                     "targetId":obj.otherId,
                     "selfName":_core.player.name
                  });
               }
            };
            str = String(Language.CALLBACK_S[97]);
            str = str.replace("{obj.name}",obj.name);
            Alert.show(str,"",Alert.YES | Alert.NO,null,handler);
         }
      }
      
      public function onPetFightResultActivity(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(Boolean(param1) && (param1.result != null && param1.result != undefined))
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_PETFIGHT_CONF_ACTIVITY);
            if(_loc2_)
            {
               _loc2_.addFightRecord(param1);
            }
         }
      }
      
      public function onSetRes(param1:Object) : void
      {
         var _loc2_:Charactor = _core.getCharactor(param1.id);
         if(_loc2_ && _loc2_.view && _loc2_.view.hasOwnProperty("setRes"))
         {
            _loc2_.view.setRes(param1.res);
         }
      }
      
      public function onAddMoney(param1:Number, param2:String, param3:Number, param4:Number) : void
      {
         var _loc6_:* = undefined;
         var _loc7_:String = null;
         if(_core.player.id == param1)
         {
            if(_core.player.hasOwnProperty(param2))
            {
               _core.player[param2] = param4;
            }
         }
         var _loc5_:String = "";
         if(param2 == "money")
         {
            _loc5_ = param3 > 0 ? String(Language.CALLBACK_S[42] + param3 + GamePredef.CURRENCY_TIP[0]) : String(Language.CALLBACK_S[46] + Math.abs(param3) + GamePredef.CURRENCY_TIP[0]);
            _core.sysBlueMsg(_loc5_);
         }
         else if(param2 == "gold")
         {
            _loc5_ = param3 > 0 ? String(Language.CALLBACK_S[43] + param3 + GamePredef.CURRENCY_TIP[1]) : String(Language.CALLBACK_S[46] + Math.abs(param3) + GamePredef.CURRENCY_TIP[1]);
            _core.sysBlueMsg(_loc5_);
         }
         else if(param2 == "moneyBind")
         {
            _loc5_ = param3 > 0 ? String(Language.CALLBACK_S[44] + param3 + GamePredef.CURRENCY_TIP[2]) : String(Language.CALLBACK_S[46] + Math.abs(param3) + GamePredef.CURRENCY_TIP[2]);
            _core.sysBlueMsg(_loc5_);
         }
         else if(param2 == "goldBind")
         {
            _loc5_ = param3 > 0 ? String(Language.CALLBACK_S[45] + param3 + GamePredef.CURRENCY_TIP[3]) : String(Language.CALLBACK_S[46] + Math.abs(param3) + GamePredef.CURRENCY_TIP[3]);
            _core.sysBlueMsg(_loc5_);
         }
         else if(param2 == "exPoint")
         {
            _loc5_ = param3 > 0 ? String(Language.CALLBACK_S[45] + param3 + GamePredef.CURRENCY_TIP[12]) : String(Language.CALLBACK_S[46] + Math.abs(param3) + GamePredef.CURRENCY_TIP[12]);
            _core.sysBlueMsg(_loc5_);
         }
         else if(param2 == "act")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + param3 + GamePredef.CURRENCY_TIP[27]);
         }
         else if(param2 == "btPnt")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + param3 + GamePredef.CURRENCY_TIP[13]);
         }
         else if(param2 == "dogM")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + param3 + GamePredef.CURRENCY_TIP[14]);
         }
         else if(param2 == "cbM")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + param3 + GamePredef.CURRENCY_TIP[15]);
         }
         else if(param2.indexOf("yuandan") >= 0)
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + param3 + GamePredef.CURRENCY_TIP[16]);
         }
         else if(param2 == "lyP14" || param2.indexOf("lyP_") >= 0)
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + param3 + GamePredef.CURRENCY_TIP[17]);
         }
         else if(param2 == "vtP14" || param2.indexOf("vtP_") >= 0)
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + param3 + GamePredef.CURRENCY_TIP[18]);
         }
         else if(param2 == "ltP14" || param2.indexOf("ltP_") >= 0)
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + param3 + GamePredef.CURRENCY_TIP[19]);
         }
         else if(param2 == "lbP14" || param2.indexOf("lbP_") >= 0)
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + param3 + GamePredef.CURRENCY_TIP[20]);
         }
         else if(param2 == "fishPnt")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + param3 + GamePredef.CURRENCY_TIP[21]);
         }
         else if(param2 == "xP23" || param2.indexOf("xP23") >= 0)
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + param3 + GamePredef.CURRENCY_TIP[22]);
         }
         else if(param2 == "smP14" || param2.indexOf("smP_") >= 0)
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + param3 + GamePredef.CURRENCY_TIP[23]);
         }
         else if(param2 == "movePnt")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + param3 + GamePredef.CURRENCY_TIP[24]);
            addFarmLog(Language.CALLBACK_S[45] + param3 + GamePredef.CURRENCY_TIP[24]);
         }
         else if(param2 == "a5Pnt")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + param3 + GamePredef.CURRENCY_TIP[25]);
         }
         else if(param2 == "paPnt")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + param3 + GamePredef.CURRENCY_TIP[26]);
         }
         else if(param2.indexOf("christmas") >= 0)
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + param3 + GamePredef.CURRENCY_TIP[30]);
         }
         else if(param2 == "starPnt")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + param3 + GamePredef.CURRENCY_TIP[31]);
         }
         else if(param2 == "soulPnt")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + param3 + GamePredef.CURRENCY_TIP[32]);
         }
         else if(param2 == "point")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[46] + Math.abs(param3) + GamePredef.CURRENCY_TIP[33]);
         }
         else if(param2 == "threePvpPnt")
         {
            _loc5_ = param3 > 0 ? String(Language.CALLBACK_S[45] + param3 + GamePredef.CURRENCY_TIP[34]) : String(Language.CALLBACK_S[46] + Math.abs(param3) + GamePredef.CURRENCY_TIP[34]);
            _core.sysBlueMsg(_loc5_);
         }
         else if(param2 == "elementPnt")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + Math.abs(param3) + GamePredef.CURRENCY_TIP[35]);
         }
         else if(param2 == "thBirthPnt5")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + Math.abs(param3) + GamePredef.CURRENCY_TIP[36]);
         }
         else if(param2 == "nationalDayPnt")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + Math.abs(param3) + GamePredef.CURRENCY_TIP[37]);
         }
         else if(param2 == "wcPnt18")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + Math.abs(param3) + GamePredef.CURRENCY_TIP[41]);
            _core.player.worldCupPoint += Number(Math.abs(param3));
         }
         else if(param2 == "wcPnt18gold")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + Math.abs(param3) + GamePredef.CURRENCY_TIP[42]);
            _core.player.worldCupGoldPoint += Number(Math.abs(param3));
         }
         else if(param2 == "petChip")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + Math.abs(param3) + GamePredef.CURRENCY_TIP[38]);
         }
         else if(param2 == "petguardout")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + Math.abs(param3) + GamePredef.CURRENCY_TIP[44]);
         }
         else if(param2 == "petguardin")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + Math.abs(param3) + GamePredef.CURRENCY_TIP[45]);
         }
         else if(param2 == "magiccystalrec")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + Math.abs(param3) + GamePredef.CURRENCY_TIP[46]);
         }
         else if(param2 == "magiccystalpre")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + Math.abs(param3) + GamePredef.CURRENCY_TIP[47]);
         }
         else if(param2 == "magiccystallimit")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + Math.abs(param3) + GamePredef.CURRENCY_TIP[48]);
         }
         else if(param2 == "pvePoint")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + Math.abs(param3) + GamePredef.CURRENCY_TIP[39]);
            _loc6_ = _core.view.getUI(ViewManager.PANEL_PET_TALENT_FUNC);
            if(_loc6_)
            {
               _loc6_.updatePoint();
            }
            _loc6_ = _core.view.getUI(ViewManager.PANEL_PET_TALENT);
            if(_loc6_)
            {
               _loc6_.updatePoint();
            }
         }
         else if(param2 == "stoneSealPoint")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + Math.abs(param3) + GamePredef.CURRENCY_TIP[40]);
         }
         else if(param2 == "wisdonCrystal")
         {
            _loc7_ = String(Language.NPC_SHOP_PANEL[10]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
         else if(param2 == "couragePoint")
         {
            _loc7_ = String(Language.NPC_SHOP_PANEL[104]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
         else if(param2 == "mysteryCrystal")
         {
            _loc7_ = String(Language.TRAIN_SOUL_PANEL[11]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
         else if(param2 == "npPnt")
         {
            _loc7_ = String(Language.ASTROLOGIC_PANEL_U[47]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
         else if(param2 == "decoSilver")
         {
            _loc7_ = String(Language.DECORATE_PANEL[50]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
         else if(param2 == "runeExp")
         {
            _loc7_ = String(Language.DECORATE_PANEL[51]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
         else if(param2 == "rebatepoint")
         {
            _loc7_ = String(Language.REBATE_EVERYDAY_PANEL[11]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
         else if(param2 == "heiyaoshiPoint")
         {
            _loc7_ = String(Language.HEIYAOSHI_PANEL[12]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
         else if(param2 == "heiyaoshiPoint2")
         {
            _loc7_ = String(Language.HEIYAOSHI_PANEL[25]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
         else if(param2 == "heroScore2507")
         {
            _loc7_ = String(Language.NPC_SHOP_PANEL[205]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
         else if(param2 == "realSoulStone")
         {
            _loc7_ = String(Language.PRS_PANEL[28]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
         else if(param2 == "realSoulCrystal")
         {
            _loc7_ = String(Language.PRS_PANEL[30]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
         else if(param2 == "realSoulWater")
         {
            _loc7_ = String(Language.PRS_PANEL[32]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
         else if(param2 == "yijieElement")
         {
            _loc7_ = String(Language.MAGIC_ARRAY_PANEL_U[46]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
         else if(param2 == "warSprite")
         {
            _loc7_ = String(Language.WAR_SPRITE[19]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
         else if(param2 == "battleSprite")
         {
            _loc7_ = String(Language.WAR_SPRITE[21]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
         else if(param2 == "anni2017")
         {
            _loc7_ = String(Language.NPC_SHOP_PANEL[305]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
         else if(param2 == "monsterHeart")
         {
            _loc7_ = String(Language.MONSTER_HEART[15]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
         else if(param2 == "mhjingshi")
         {
            _loc7_ = String(Language.MONSTER_HEART[17]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
         else if(param2 == "energyStone")
         {
            _loc7_ = String(Language.PET_STONE_PANEL[2]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
         else if(param2 == "d11Pnt2020")
         {
            _loc7_ = String(Language.CALLBACK_S[229]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
         else if(param2 == "explorerPnt")
         {
            _loc7_ = String(Language.CALLBACK_S[231]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
            _loc6_ = _core.view.getUI(ViewManager.PANEL_EXPLORER_MEDAL);
            _loc6_.updateByManual();
         }
         else if(param2 == "st2312Pnt")
         {
            _loc7_ = String(Language.CALLBACK_S[233]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
         else if(param2 == "mcbeans")
         {
            _loc7_ = String(Language.NPC_SHOP_PANEL[307]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
         else if(param2 == "petPK_202504")
         {
            _core.sysBlueMsg(Language.CALLBACK_S[45] + param3 + Language.PET_ARENA_U[70]);
            _loc6_ = _core.view.getUI(ViewManager.PANEL_PET_ARENA_ACTIVITY);
            if(_loc6_)
            {
               _core.player.petPK = int(param4);
               _loc6_.updatePoint();
            }
         }
         else if(param2 == "xmCandy24")
         {
            _loc7_ = String(Language.NPC_SHOP_PANEL[309]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
         else if(param2 == "xcds2403p")
         {
            _loc7_ = String(Language.NPC_SHOP_PANEL[319]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
         else if(param2 == "txkc2508p")
         {
            _loc7_ = String(Language.NPC_SHOP_PANEL[321]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
         else if(param2 == "shishangdian")
         {
            _loc7_ = String(Language.NPC_SHOP_PANEL[329]);
            _loc7_ = _loc7_.replace("{num}",Math.abs(param3));
            _core.sysBlueMsg(_loc7_);
         }
      }
      
      public function validateRestrainPet(param1:Number, param2:int) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_EQUIPTFUNC);
         _loc3_ && _loc3_.validateRestrainPet(param1,param2);
      }
      
      public function onDelMineral(param1:Object) : void
      {
         if(param1.f)
         {
            _core.view.getUI(ViewManager.PANEL_FAZENDA).onDelMineral(param1.fid);
         }
      }
      
      public function updateShopSlotNumber(param1:Object) : void
      {
      }
      
      public function onShowGroupLeaveAlert(param1:int, param2:int, param3:String) : void
      {
         var func:Function = null;
         var nid:int = param1;
         var mode:int = param2;
         var type:String = param3;
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("npcScriptSend",null,_core.player.id,nid,mode,type);
            }
         };
         var _alert:Alert = Alert.show(Language.CALLBACK_S[223],"",Alert.YES | Alert.NO,null,func);
      }
      
      public function onAddTalentStoneInBag(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:* = undefined;
         var _loc4_:Object = null;
         var _loc5_:String = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PET_TALENT_FUNC);
         if(Boolean(_loc2_) && Boolean(param1))
         {
            _loc2_.onUpdateTalentData(param1);
         }
         if(Boolean(param1) && Boolean(param1.a))
         {
            if(param1.a)
            {
               for(_loc3_ in param1.a)
               {
                  _loc4_ = GameData.d[GamePredef.TBL_PET_TALENT][param1.a[_loc3_].tid];
                  _loc5_ = String(Language.TALENT_PANEL_FUNC_U[15]);
                  _loc5_ = _loc5_.replace("{talent}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_PET_TALENT] + "|" + _loc4_.id + "|" + _loc4_.name + "|" + Math.floor(_loc4_.sid / 10000) + "|0|0]"));
                  if(param1.a[_loc3_].nn)
                  {
                     _loc5_ = _loc5_.replace("{num}",param1.a[_loc3_].nn);
                  }
                  else
                  {
                     _loc5_ = _loc5_.replace("{num}",1);
                  }
                  _core.sysBlueMsg(_loc5_);
               }
            }
         }
      }
      
      public function onAddMountExp(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:* = undefined;
         _loc2_ = "";
         if(param1.addExp)
         {
            if(param1.exp)
            {
               _loc2_ = String(Language.MOUNTPANEL_U[36].replace("{exp}",param1.addExp));
            }
            else if(param1.addRate)
            {
               _loc2_ = String(Language.MOUNTPANEL_U[37].replace("{exp}",param1.addExp));
            }
            _core.sysBlueMsg(_loc2_);
         }
         _loc3_ = _core.view.getUI(ViewManager.PANEL_MOUNT);
         if(_loc3_)
         {
            _loc3_.updateMountView(param1);
         }
      }
      
      public function onDemise(param1:Object) : void
      {
         if(param1 == null)
         {
            return;
         }
         _core.view.getUI(ViewManager.PANEL_GUILD).onDemise(param1);
      }
      
      public function onInitDecoratePanel(param1:Object) : void
      {
         var _loc2_:Object = null;
         _core.player.decoInfo = param1;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DECORATE);
         _loc2_ && _loc2_.show();
         trace("显示魂器主面板");
      }
      
      public function updateCritItemNum(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_WING_FUNC);
         if(Boolean(_loc2_) && Boolean(param1))
         {
            _loc2_.onUpdateItemNum(param1.num1,param1.num2);
         }
      }
      
      public function showMazeShopPanel(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_MAZE_SHOP);
         if(_loc2_)
         {
            _loc2_.showPanel();
         }
      }
      
      public function closeWarnTemporaryBag() : void
      {
         _core.view.hide(ViewManager.PANEL_TEMPORARY_BAG);
         _core.view.getUI(ViewManager.MAIN_TEMP_BAG_WARN).warnState = false;
      }
      
      public function updateActivityList(param1:Object) : void
      {
         _core.view.getUI(ViewManager.MAIN_ACTIVITY).initView(param1);
      }
      
      public function endPetRateBuff() : void
      {
         _core.pet_rate = 0;
         _core.view.getUI(ViewManager.MAIN_LONGBUFF).delBuff(GamePredef.GLOBAL_PET_RATE_BID);
      }
      
      public function onUpdateSuitProp(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DECORATE);
         _loc2_ && _loc2_.onUpdateSuitProp(param1);
      }
      
      public function onReplacePRSShow(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         _loc2_ = _core.view.getC(param1.cid);
         if(_loc2_)
         {
            _loc3_ = _loc2_.gameObject;
            _loc3_.prsUseId = param1.prsUseId;
         }
      }
      
      public function onFairyOn(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getC(param1.cid);
         if(Boolean(_loc2_) && Boolean(param1.fairy))
         {
            _loc2_.gameObject.fairy = param1.fairy;
            _loc2_.fairyOn();
         }
      }
      
      public function onStackGuildItem(param1:Object) : void
      {
         var _loc2_:int = int(param1.sSid);
         var _loc3_:int = int(param1.tSid);
         var _loc4_:Number = Number(param1.sId);
         var _loc5_:Number = Number(param1.tId);
         var _loc6_:int = int(param1.tStackNum);
         var _loc7_:int = int(param1.sStackNum);
         var _loc8_:Object = _core.data.getGuildSlot({"id":_loc5_});
         _loc8_.stackNum = _loc6_;
         var _loc9_:Object = _core.data.getGuildSlot({"id":_loc4_});
         _loc9_.stackNum = _loc7_;
         var _loc10_:* = _core.view.getSlot(_loc3_);
         _loc10_.slotData = _loc8_;
         _loc10_.type = _loc8_.type;
         _loc10_.giid = _loc8_.itemId;
         _loc10_.stackNum = _loc8_.stackNum;
         var _loc11_:* = _core.view.getSlot(_loc2_);
         _loc11_.slotData = _loc9_;
         _loc11_.type = _loc9_.type;
         _loc11_.giid = _loc9_.itemId;
         _loc11_.stackNum = _loc9_.stackNum;
      }
      
      public function stoneSealOnEquipChange() : void
      {
         var _loc1_:Object = null;
         _loc1_ = _core.view.getUI(ViewManager.PANEL_STONE_SEAL);
         if(_loc1_)
         {
            _loc1_.onEquipChange();
         }
      }
      
      public function onAddCrossContentionFlag(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_FIGHT);
         if(Boolean(_loc2_) && Boolean(_loc2_.visible))
         {
            _loc2_.onAddCrossContentionFlag(param1);
         }
      }
      
      public function onDotaSynchroData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DOTA);
         if(_loc2_)
         {
            _loc2_.onSynchroData(param1);
         }
      }
      
      public function onDecoLightOff(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         _loc2_ = _core.view.getC(param1.cid);
         if(Boolean(_loc2_) && Boolean(param1.decoInfo))
         {
            _loc3_ = Number(param1.decoInfo[2]["did"]);
            if(!_loc3_)
            {
               _loc2_.gameObject.decoLightCode = 0;
               _loc2_.gameObject.decoLightMaskCode = 0;
            }
            trace("卸载周身光环");
            _loc2_.stateSprite.visible = true;
            _loc2_.roundOff();
            _loc2_.roundMaskOff();
         }
      }
      
      public function onDiabetesGetAward(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_SUMMER_GAME_DIABETES);
         if(_loc2_)
         {
            _loc2_.onGetAward(param1);
         }
      }
      
      public function onCharLeaveScene(param1:Number) : void
      {
         Debug.logFunc("角色离开场景",param1);
         if(_core.getCharactor(param1) != null)
         {
            _core.destroyCharactor(param1);
         }
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
               _loc9_ = String((_loc8_ = (_loc6_ = _loc6_.replace("obj.","")).split("="))[1]);
               if(_loc9_)
               {
                  _loc9_ = _loc9_.replace("\'","");
                  _loc9_ = _loc9_.replace("\'","");
                  _loc5_[_loc8_[0]] = _loc9_;
               }
            }
            if(Boolean(_loc7_ = GameData.d[GamePredef.TBL_SHOP_SLOT][int(_loc5_["id"])]) && _loc7_ != null)
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
      
      public function onGetWorldCupShopLimitDataTcnByPve(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_WORLD_CUP);
         if(_loc2_)
         {
            _loc2_.onGetWorldCupShopLimitDataTcnByPve(param1);
         }
      }
      
      public function onInitBookList(param1:Object) : void
      {
         var _loc2_:* = undefined;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_WEDDING_BOOK);
         if(_loc2_)
         {
            _loc2_.visible = true;
            _loc2_.onInitBookList(param1);
         }
      }
      
      public function onCreateFailed(param1:String) : void
      {
         if(param1 == "SameName")
         {
            Alert.show(Language.CALLBACK_S[5]);
         }
         else if(param1 == "BadWord")
         {
            Alert.show(Language.CALLBACK_S[6]);
         }
         else if(param1 == "NameTooLong")
         {
            Alert.show(Language.CHARSELECTCANVAS_S[5]);
         }
         _core.view.getUI(ViewManager.FORE_C_C).charName = "";
      }
      
      public function onMakeGiftCount(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_GAMEINTRO);
         if(_loc2_)
         {
            _loc2_.makeGiftCount(param1);
         }
      }
      
      public function gotoLightHeiyaoshiLine(param1:Object, param2:int) : void
      {
         var _loc3_:Object = null;
         _loc3_ = _core.view.getUI(ViewManager.PANEL_HEIYAOSHI);
         _loc3_ && _loc3_.gotoLightHeiyaoshiLine(param1,param2);
      }
      
      public function tripleTwonSync(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_TRIPLE_TOWN);
         _loc2_ && _loc2_.tripleTwonSync(param1);
      }
      
      public function initMountTimer(param1:*) : *
      {
         if(param1)
         {
            _core.view.getUI(ViewManager.MAIN_LONGBUFF).initMountTimer(param1);
         }
      }
      
      public function onRedName(param1:Object) : void
      {
         var _loc2_:Charactor = _core.getCharactor(param1.cid);
         _loc2_.normalView.setRedName(param1.honor);
      }
      
      public function onQuestionFinish(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_QUESTIONING);
         if(Boolean(_loc2_) && Boolean(_loc2_.visible))
         {
            _loc2_.onQuestionFinish();
         }
      }
      
      public function onUpdateActAwardInfo(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_NEWSERVER);
         if(_loc2_)
         {
            _loc2_.updateActAwardInfo(param1);
         }
      }
      
      public function onBossOff(param1:int) : void
      {
         _core.destroyNpc(param1);
      }
      
      public function onOpenBossDailyPanel(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_BOSS_DAILY);
         _loc2_ && _loc2_.onGetData(param1);
      }
      
      public function onAnniTurnTable(param1:int) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_ANNI_ZHUANPAN);
         _loc2_ && _loc2_.onAnniTurnTable(param1);
      }
      
      public function onHappyFrontLineNoThisNum(param1:Number) : void
      {
         var _loc2_:String = null;
         _loc2_ = "";
         if(param1 == 1)
         {
            _loc2_ = String(Language.HAPPY_FRONT_LINE[11]);
         }
         else
         {
            _loc2_ = String(Language.HAPPY_FRONT_LINE[12]);
         }
         Alert.show(_loc2_,"",Alert.OK);
      }
      
      public function onGetPetConf(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_PETFIGHT_CONF);
         _loc2_.onGetPetConf(param1);
      }
      
      public function onStartWb(param1:Boolean) : void
      {
         if(param1)
         {
            _core.view.getUI(ViewManager.MAIN_MINIMAP).changeWbBtn(1);
         }
         else
         {
            _core.view.getUI(ViewManager.MAIN_MINIMAP).changeWbBtn(3);
            _core.sysMsg(Language.CALLBACK_S[224]);
         }
      }
      
      public function onRedMsg(param1:String) : void
      {
         Debug.logFunc("onRedMsg",param1);
         _core.sysRedMsg(param1);
      }
      
      public function updateMysTreMakeData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DECORATE);
         _loc2_ && _loc2_.updateMysMakeCan(param1);
      }
      
      public function onSceneTo2(param1:int, param2:int) : void
      {
         _core.player.posX = param1;
         _core.player.posY = param2;
         _core.player.view.posX = param1;
         _core.player.view.posY = param2;
         _core.view.getUI(ViewManager.STAGE_MAIN).centerTo(param1,param2);
      }
      
      public function CZHappyFrontLineNum(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_HAPPYFRONTLINE);
         if(_loc2_)
         {
            _loc2_.CZHappyFrontLineNum(param1);
         }
      }
      
      public function npcFuncInit(param1:Object) : void
      {
         _core.view.getUI(ViewManager.PANEL_NPCFUNC).npcFuncInit(param1);
      }
      
      public function onGetDialkey(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_DOUBLE_ELEVEN);
         if(Boolean(_loc2_) && Boolean(param1))
         {
            _loc2_.onGetKey(param1);
         }
      }
      
      public function onGetAnniTurntablePanelData(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.view.getUI(ViewManager.PANEL_ANNI_ZHUANPAN);
         if(_loc2_)
         {
            _loc2_.onGetAnniTurntablePanelData(param1);
         }
      }
      
      public function onHarvestMine(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         _loc2_ = "";
         if(!param1.f)
         {
            _loc2_ = String(Language.CALLBACK_S[211].toString().replace("{num}",Math.round(param1.time / 1000)));
         }
         else
         {
            _loc3_ = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][param1.tid];
            if(_loc3_)
            {
               _loc2_ = String(Language.CALLBACK_S[212].toString().replace("{name}",_loc3_.name).replace("{num}",param1.num));
               _core.view.getUI(ViewManager.PANEL_FAZENDA).onHarvestMine(param1);
            }
         }
         addFarmLog(_loc2_);
      }
      
      public function onTestDisconnectReconnect(param1:String = "remote") : Boolean
      {
         var _loc2_:Object = param1 == "global" ? _core.global : _core.remote;
         if(_loc2_)
         {
            _loc2_.debugDisconnectForReconnect();
            return true;
         }
         return false;
      }
      
      public function onGetReconnectDebugInfo(param1:String = "remote") : Object
      {
         var _loc2_:Object = param1 == "global" ? _core.global : _core.remote;
         if(_loc2_)
         {
            return _loc2_.getReconnectDebugInfo();
         }
         return null;
      }
      
      public function onCancelReconnect(param1:String = "remote", param2:String = "server", param3:Boolean = false) : Boolean
      {
         var _loc4_:Object = param1 == "global" ? _core.global : _core.remote;
         if(_loc4_)
         {
            _loc4_.cancelReconnect(param2,param3);
            return true;
         }
         return false;
      }
   }
}

