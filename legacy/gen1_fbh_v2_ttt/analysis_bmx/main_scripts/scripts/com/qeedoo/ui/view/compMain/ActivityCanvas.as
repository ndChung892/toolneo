package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.RoundedLabel;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.collections.ArrayCollection;
   import mx.collections.Sort;
   import mx.collections.SortField;
   import mx.containers.Canvas;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.Label;
   import mx.core.Application;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class ActivityCanvas extends SimpleCanvas
   {
      
      public static const Caidanxia1:Class = ActivityCanvas_Caidanxia1;
      
      public static const Caidanxia2:Class = ActivityCanvas_Caidanxia2;
      
      public static const Caidanshang1:Class = ActivityCanvas_Caidanshang1;
      
      public static const Caidanshang2:Class = ActivityCanvas_Caidanshang2;
      
      private var element:Class = ActivityCanvas_element;
      
      private var _core:Core = Core.getInstance();
      
      private var count:int = 0;
      
      private var tab:int = 1;
      
      private var _1174267086jxhdBtn:Button;
      
      private var _334507179barDown:Button;
      
      private var _1396254093barNum:RoundedLabel;
      
      private var _1416844015iconCavas:Canvas;
      
      public var ACTIVITY_STATE:Array = [Language.ACTIVITY_CANVAS[1],Language.ACTIVITY_CANVAS[0]];
      
      private var _93507086barUp:Button;
      
      private var _124012844btnChange:Button;
      
      public var actTimer:Timer;
      
      private var activityArr:Array = new Array();
      
      public var ACTIVITY_STYLE_ARR:Array = ["BtnDailyAct","BtnMonthAct","BtnStarAct","BtnTestAct","BtnConsumeAct","BtnDailyGiftAct","BtnBussinessAct","BtnWBAct","BtnLimitAct","BtnNewServerAct","BtnNewPlayerAct","BtnFundAct","BtnSendAct","BtnNineBossAct","BtnCardAct","BtnWBAct","BtnAnswerAct","BtnDuiKangAct","BtnSoulAct","BtnVipAct","BtnAutoTaskAct","BtnLotteryAct","BtnJingJiAct","BtnLuckDrawAct","BtnZhenFaXiuLian","BtnXiaLingYing","Btnshengzhewenzhang","BtnMiZhen","BtnZiRanZhiLi","BtnJinHuaZhiShu","BtnJiangLiZhaoHui","BtnKuaFuJingJi","BtnPKZhengBa","BtnShuangShiYi","Wuyouyuanzheng","Chongwutianfu","Jubaopen","Fanpai","Huanjingxunbao","Dulayinshi","Fanpaichuangguan","Zumaguangchang","Menghuimoli","Shilianzhidi","Xiuluozhanchang","BtnGrouponAct","summerGames","ShiJieBei","BtnAutoTaskActNew","Mowubiji","wawajiicon","shenmironglu","sirendinggou","manjiujian","rebateEveryday","tripleTownBtn","monthWelfare","heiyaoshiZhen","PetRealSoul","mijinglixian","BloodyBattle","WarSprite","happyFrontLine","bazhounianqing"
      ,"monsterHeart","dailySignInAct","huannengshuijin","stoneToGoldAct","qiling","mojinAct","laodonggr","baoshijuling","tanxianzhexunzhang","summerGames","moliyixia","diaokekongjian","pkgame","PetPKBut","ConsumeNotice","xiaochudasai","texunkecheng","huanmotaxiulian","moyintuce","mengchongzhidou"];
      
      private var activityDict:Dictionary = new Dictionary();
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":450,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Button,
                  "id":"barUp",
                  "events":{"click":"__barUp_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnActivityPageUp",
                        "x":10,
                        "y":48
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"barNum",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "text":"1",
                        "y":35,
                        "x":0,
                        "width":24.2,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"barDown",
                  "events":{"click":"__barDown_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnActivityPageDown",
                        "x":10,
                        "y":75
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"iconCavas",
                  "stylesFactory":function():void
                  {
                     this.right = "13";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":50,
                        "y":0
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btnChange",
                  "events":{"click":"__btnChange_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":12,
                        "width":12,
                        "height":25,
                        "styleName":"BtnHideButtons",
                        "visible":true
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"jxhdBtn",
                  "events":{"click":"__jxhdBtn_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":-12,
                        "y":0,
                        "width":48,
                        "height":48,
                        "styleName":"BtnJXHD"
                     };
                  }
               })]
            };
         }
      });
      
      private var isInited:Boolean = false;
      
      public function ActivityCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 450;
         this.cacheAsBitmap = true;
      }
      
      public function fixActPosition(param1:int, param2:int) : void
      {
         if(!activityDict[param1])
         {
            return;
         }
         if(!canIndexShow(param2))
         {
            return;
         }
         activityDict[param1].button.x = getX(param2);
         activityDict[param1].button.y = getY(param2);
         if(activityDict[param1].labelText)
         {
            activityDict[param1].labelText.x = activityDict[param1].button.x + 4;
            activityDict[param1].labelText.y = activityDict[param1].button.y + 48;
         }
      }
      
      public function canIndexShow(param1:int) : Boolean
      {
         if(param1 < 0)
         {
            return false;
         }
         if(param1 >= (tab - 1) * 8 && param1 <= (tab + 1) * 8 - 1)
         {
            return true;
         }
         return false;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      [Bindable(event="propertyChange")]
      public function get iconCavas() : Canvas
      {
         return this._1416844015iconCavas;
      }
      
      public function fix(param1:Object) : void
      {
         var _loc5_:int = 0;
         if(activityArr.length <= 0)
         {
            return;
         }
         count = activityArr.length;
         var _loc2_:int = getTabNum(count);
         if(tab > _loc2_)
         {
            tab = tab - 1 < 1 ? _loc2_ : int(tab - 1);
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         this.iconCavas.removeAllChildren();
         _loc5_ = 0;
         while(_loc5_ < activityArr.length)
         {
            activityArr[_loc5_].sortType = param1[activityArr[_loc5_].id].sortType;
            _loc5_++;
         }
         activityArr.sort(sortByType);
         _loc5_ = 0;
         while(_loc5_ < activityArr.length)
         {
            if(canIndexShow(_loc5_))
            {
               _loc3_ = getX(_loc5_);
               _loc4_ = getY(_loc5_);
               activityArr[_loc5_].button.x = _loc3_;
               activityArr[_loc5_].button.y = _loc4_;
               this.iconCavas.addChild(activityArr[_loc5_].button);
               if(activityArr[_loc5_].labelText)
               {
                  activityArr[_loc5_].labelText.x = _loc3_ + 4;
                  activityArr[_loc5_].labelText.y = _loc4_ + 48;
                  this.iconCavas.addChild(activityArr[_loc5_].labelText);
               }
            }
            _loc5_++;
         }
         count = activityArr.length;
         if(count > 8)
         {
            btnChange.y = 37;
         }
         else
         {
            btnChange.y = 12;
         }
         barNum.text = tab.toString();
         if(_loc2_ == 1)
         {
            barDown.visible = false;
            barUp.visible = false;
            barNum.visible = false;
         }
         else
         {
            barNum.visible = true;
            if(tab == 1)
            {
               barUp.visible = false;
            }
            else
            {
               barUp.visible = true;
            }
            if(tab == _loc2_)
            {
               barDown.visible = false;
            }
            else
            {
               barDown.visible = true;
            }
         }
         var _loc6_:int = (tab - 1) * 8;
         var _loc7_:int = (tab + 1) * 8 - 1;
         _loc5_ = 0;
         while(_loc5_ < activityArr.length)
         {
            if(_loc5_ < _loc6_ && Boolean(activityArr[_loc5_].circle))
            {
               barUp.setStyle("upSkin",Caidanshang2);
               break;
            }
            _loc5_++;
         }
         _loc5_ = 0;
         while(_loc5_ < activityArr.length)
         {
            if(_loc5_ > _loc7_ && Boolean(activityArr[_loc5_].circle))
            {
               barDown.setStyle("upSkin",Caidanxia2);
               break;
            }
            _loc5_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get barUp() : Button
      {
         return this._93507086barUp;
      }
      
      public function getIconIndex(param1:int) : int
      {
         if(!activityDict[param1] || activityArr.indexOf(activityDict[param1]) < 0)
         {
            return -1;
         }
         return activityArr.indexOf(activityDict[param1]);
      }
      
      public function getTabNum(param1:int) : int
      {
         if(param1 <= 16)
         {
            return 1;
         }
         return int((param1 - 17) / 8) + 2;
      }
      
      public function positionActList2() : void
      {
         var _loc4_:* = undefined;
         if(activityArr.length <= 0)
         {
            return;
         }
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         this.iconCavas.removeAllChildren();
         activityArr.sort(sortByType);
         var _loc3_:int = 0;
         for(_loc4_ in activityDict)
         {
            fixActPosition(activityDict[_loc4_].id,_loc3_);
            _loc3_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnChange() : Button
      {
         return this._124012844btnChange;
      }
      
      [Bindable(event="propertyChange")]
      public function get jxhdBtn() : Button
      {
         return this._1174267086jxhdBtn;
      }
      
      public function set barUp(param1:Button) : void
      {
         var _loc2_:Object = this._93507086barUp;
         if(_loc2_ !== param1)
         {
            this._93507086barUp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"barUp",_loc2_,param1));
         }
      }
      
      public function __barUp_click(param1:MouseEvent) : void
      {
         activateIconUp();
      }
      
      public function activityClick(param1:Event) : void
      {
         var view:Object = null;
         var func:Function = null;
         var p:Object = null;
         var event:Event = param1;
         var id:Number = Number(event.currentTarget.id);
         switch(id)
         {
            case GamePredef.DAILY_ACTIVITY:
               _core.view.show(ViewManager.DAILY_ACTIVITY);
               break;
            case GamePredef.MONTH_WELFARE_PANEL:
               view = _core.view.getUI(ViewManager.PANEL_WELFARE);
               if(Boolean(view) && Boolean(view.isInited))
               {
                  view.init();
                  view.visible = true;
               }
               else
               {
                  _core.view.show(ViewManager.PANEL_WELFARE);
               }
               break;
            case GamePredef.STAR_PANEL:
               _core.battleMap.initBattleMap();
               break;
            case GamePredef.NINE_BOSS_PANEL:
               view = _core.view.getUI(ViewManager.NINE_BOSS_PANEL);
               if(view)
               {
                  view.initNineBossPanel();
               }
               else
               {
                  _core.view.show(ViewManager.NINE_BOSS_PANEL);
               }
               break;
            case GamePredef.INTERNAL_ACT_PANEL:
               view = _core.view.getUI(ViewManager.PANEL_NEWSERVER);
               if(view)
               {
                  view.init();
                  view.visible = true;
               }
               else
               {
                  _core.view.show(ViewManager.PANEL_NEWSERVER);
               }
               break;
            case GamePredef.SEND_COMBINE_PANEL:
               view = _core.view.getUI(ViewManager.PANEL_SENDCOMBINE);
               if(view)
               {
                  view.init();
                  view.visible = true;
               }
               break;
            case GamePredef.CARD_GAME_PANEL:
               view = _core.view.getUI(ViewManager.PANEL_CARDGAME);
               if(view)
               {
                  view.initPanel();
               }
               break;
            case GamePredef.WB_BOSS_PANEL:
               _core.remote.call("canEnterWbMap",null,_core.player.id);
               break;
            case GamePredef.ANSWER_PANEL:
               if(Boolean(activityDict[id]) && activityDict[id].state == 1)
               {
                  _core.view.getUI(ViewManager.PANEL_QUESTIONING).viewClick();
               }
               else
               {
                  _core.remote.call("canQuest",new Responder(onCanQuest),_core.player.id);
               }
               break;
            case GamePredef.DONGXUAN_PANEL:
               if(Boolean(activityDict[id]) && activityDict[id].state == 1)
               {
                  func = function(param1:CloseEvent):void
                  {
                     if(param1.detail == Alert.YES)
                     {
                        _core && _core.player && _core.remote.call("dxdRegister",null,_core.player.id,true);
                     }
                     else
                     {
                        _core && _core.player && _core.remote.call("dxdRegister",null,_core.player.id,false);
                     }
                  };
                  Alert.show(Language.AWARD_WARN_CANVAS_S[0],"",Alert.YES | Alert.NO,Application.application as Sprite,func);
               }
               else
               {
                  _core.remote.dxdGetIn();
               }
               break;
            case GamePredef.VIP_SHOP_PANEL:
               view = _core.view.getUI(ViewManager.PANEL_VIP_SHOP);
               if(view)
               {
                  view.initPanel();
                  view.visible = true;
               }
               break;
            case GamePredef.PET_SOUL_PANEL:
               _core.view.show(ViewManager.POPU_SOUL_PRODUCT);
               break;
            case GamePredef.AUTO_TASK_PANEL:
            case GamePredef.AUTO_TASK_PANEL_NEW:
               view = _core.view.getUI(ViewManager.PANEL_AUTOTASK);
               if(view)
               {
                  view.clickTaskSweep();
               }
               break;
            case GamePredef.LOTTERY_ACT_PANEL:
               view = _core.view.getUI(ViewManager.PANEL_LOTTERY);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.SIGN_IN_PANEL:
               view = _core.view.getUI(ViewManager.PANEL_SIGN_IN);
               if(view)
               {
                  view.init();
                  view.visible = true;
               }
               break;
            case GamePredef.PVP_ROOM_PANEL:
               func = function(param1:Boolean):void
               {
                  var _loc2_:Object = null;
                  if(!param1)
                  {
                     return;
                  }
                  if(Boolean(_core.player) && Boolean(_core.player.level) && _core.player.level >= 50)
                  {
                     _loc2_ = _core.view.getUI(ViewManager.PANEL_PVP_ROOM_LIST);
                     if(_loc2_)
                     {
                        _loc2_.initRoomListPanel();
                     }
                  }
                  else
                  {
                     _core.sysMidNote(Language.PVP_ROOM_P[20]);
                  }
               };
               _core.remote.call("checkPVPLine",new Responder(func));
               break;
            case GamePredef.LUCK_DRAW_PANEL:
               view = _core.view.getUI(ViewManager.PANEL_LUCK_DRAW);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.MAGIC_ARRAY_PANEL:
               view = _core.view.getUI(ViewManager.PANEL_MAGIC_ARRAY);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.SMALL_GAME_PANEL:
               view = _core.view.getUI(ViewManager.PANEL_Small_Game);
               if(view)
               {
                  view.initPanel();
                  view.visible = true;
               }
               break;
            case GamePredef.MEDAL_PANEL:
               view = _core.view.getUI(ViewManager.PANEL_MEDAL);
               if(view)
               {
                  view.initView();
               }
               break;
            case GamePredef.MAZE_PANEL:
               view = _core.view.getUI(ViewManager.PANEL_MAZE);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.ASTROLOGIC_PANEL:
               view = _core.view.getUI(ViewManager.PANEL_ASTROLOGIC);
               if(view)
               {
                  view.visible = true;
               }
               break;
            case GamePredef.HANDBOOK_PANEL:
               view = _core.view.getUI(ViewManager.PANEL_PET_HANDBOOK);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.FINDBACK_PANEL:
               view = _core.view.getUI(ViewManager.PANEL_FINDBACK);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.CROSSPK_PANEL:
               view = _core.view.getUI(ViewManager.PANEL_CROSS_FIGHT);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.TEAM_CROSSPK_PANEL:
               view = _core.view.getUI(ViewManager.PANEL_CROSS_TEAM_FIGHT);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.DOUBLE_ELEVEN_PANEL:
               view = _core.view.getUI(ViewManager.PANEL_DOUBLE_ELEVEN);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.CROSS_CONTENTION_PANEL:
               view = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_TOTAL);
               if(view)
               {
                  view.visible = true;
               }
               break;
            case GamePredef.PET_TALENT_PANEL:
               view = _core.view.getUI(ViewManager.PANEL_PET_TALENT);
               if(view)
               {
                  view.initTalentDataByClient();
               }
               break;
            case GamePredef.TREASURE_BOWL_PANEL:
               view = _core.view.getUI(ViewManager.PANEL_TREASURE_BOWL);
               if(view)
               {
                  view.initTreasurePanel();
               }
               break;
            case GamePredef.EXTRACT_CARD_ARCIVITY:
               view = _core.view.getUI(ViewManager.PANEL_EXTRACT_CARD_ACTIVITY);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.TREASURE_HUNT:
               _core.remote.call("canEnterTreasureHunt",null);
               break;
            case GamePredef.STONE_SEAL:
               view = _core.view.getUI(ViewManager.PANEL_STONE_SEAL);
               if(view)
               {
                  view.showPanel(false);
               }
               break;
            case GamePredef.FLOP_POSS:
               view = _core.view.getUI(ViewManager.PANEL_FLOP_PASS);
               if(view)
               {
                  view.initFlopPassPanel();
               }
               break;
            case GamePredef.HULA:
               view = _core.view.getUI(ViewManager.PANEL_HULA);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.RETURN_REWARD_ACTIVITY:
               view = _core.view.getUI(ViewManager.PANEL_RETURN_REWARD);
               if(view)
               {
                  view.show();
               }
               break;
            case GamePredef.TRAILS:
               view = _core.view.getUI(ViewManager.PANEL_TRIALS);
               if(view)
               {
                  view.trialsPanelInit();
               }
               break;
            case GamePredef.DOTA:
               view = _core.view.getUI(ViewManager.PANEL_DOTA);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.GROUPON:
               view = _core.view.getUI(ViewManager.PANEL_GROUPON);
               view && view.show();
               break;
            case GamePredef.SUMMER_GAMES:
               view = _core.view.getUI(ViewManager.PANEL_SUMMER_GAME);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.WORLD_CUP:
               view = _core.view.getUI(ViewManager.PANEL_WORLD_CUP);
               if(view)
               {
                  view.initWorldCupPanel();
               }
               break;
            case GamePredef.BOSS_DAILY:
               view = _core.view.getUI(ViewManager.PANEL_BOSS_DAILY);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.WAWA_GAME:
               view = _core.view.getUI(ViewManager.PANEL_WAWA_GAME);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.MYSTERY_FURNACE:
               view = _core.view.getUI(ViewManager.PANEL_MYSTERY_FURNACE);
               view && view.show();
               break;
            case GamePredef.JUHUASUAN:
               view = _core.view.getUI(ViewManager.PANEL_JUHUASUAN);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.MANJIUJIAN:
               view = _core.view.getUI(ViewManager.PANEL_MANJIUJIAN);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.REBATEEVERYDAY:
               view = _core.view.getUI(ViewManager.PANEL_REBATEEVERYDAY);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.TRIPLE_TOWN:
               view = _core.view.getUI(ViewManager.PANEL_TRIPLE_TOWN);
               view && view.show();
               break;
            case GamePredef.MONTHWELFARE:
               view = _core.view.getUI(ViewManager.PANEL_MONTHWELFARE);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.HEIYAOSHIZHEN:
               view = _core.view.getUI(ViewManager.PANEL_HEIYAOSHI);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.PETREALSOUL:
               view = _core.view.getUI(ViewManager.PANEL_PET_REAl_SOUL);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.SECRET_TREASUREHUNT:
               view = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.BLOODY_BATTLE:
               _core.remote.call("enterBloodyBattle",null);
               break;
            case GamePredef.WAR_SPRITE:
               view = _core.view.getUI(ViewManager.PANEL_WAR_BATTLE);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.ANNIVERSARY:
               view = _core.view.getUI(ViewManager.PANEL_ANNIVERSARY);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.LAODONGGR:
               view = _core.view.getUI(ViewManager.PANEL_ANNIVERSARY);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.MONSTERHEART:
               view = _core.view.getUI(ViewManager.PANEL_MONSTERHEART);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.HAPPYFRONTLINE:
               view = _core.view.getUI(ViewManager.PANEL_HAPPYFRONTLINE);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.DAILYSIGNINACT:
               view = _core.view.getUI(ViewManager.PANEL_DAILYSIGNINACT);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.MAGICCRYSTAL:
               view = _core.view.getUI(ViewManager.PANEL_MAGICCRYSTAL);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.STONETOGOLDACT:
               view = _core.view.getUI(ViewManager.PANEL_STONETOGOLDACT);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.QILING:
               view = _core.view.getUI(ViewManager.PANEL_QILING);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.MOJINACT:
               view = _core.view.getUI(ViewManager.PANEL_MOJINACT);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.PETSTONE:
               view = _core.view.getUI(ViewManager.PANEL_PET_STONE);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.EXPLORERMEDAL:
               view = _core.view.getUI(ViewManager.PANEL_EXPLORER_MEDAL);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.HUANLESHIGUANG:
               view = _core.view.getUI(ViewManager.PANEL_ANNIVERSARY);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.MOLIYIXIA:
               view = _core.view.getUI(ViewManager.PANEL_SHOWTIME);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.DIAOKEKONGJIAN:
               view = _core.view.getUI(ViewManager.PANEL_PET_PVE);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.PKGAME:
               view = _core.view.getUI(ViewManager.PANEL_PK_GAME);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.PETARENAACTIVITY:
               if(Boolean(_core.player) && _core.player.level >= 35)
               {
                  p = _core.view.getUI(ViewManager.PANEL_PET_ARENA_ACTIVITY);
                  if(Boolean(p.initialized) && !p.first)
                  {
                     if(!p.visible)
                     {
                        if(!_core.player.petArenaAct || !_core.player.petArenaAct.actinfo)
                        {
                           _core.remote.call("getPetArenaActivityInfo",null);
                        }
                        p.show();
                     }
                     else
                     {
                        p.hide();
                     }
                  }
                  else
                  {
                     _core.remote.call("getPetArenaActivityInfo",null);
                     _core.remote.call("getPetArenaDataActivity",null,true);
                  }
               }
               else
               {
                  Alert.show(Language.MINIMAPCANVAS_S[39]);
               }
               break;
            case GamePredef.CONSUMENOTICE:
               view = _core.view.getUI(ViewManager.PANEL_CONSUME_NOTICE_ACTIVITY);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.XIAOCHUSDASAI:
               view = _core.view.getUI(ViewManager.PANEL_XIAOCHUSDASAI_ACTIVITY);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.TEXUNKECHENG:
               view = _core.view.getUI(ViewManager.PANEL_TEXUNKECHENG_ACTIVITY);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.HUANMOTAXIULIAN:
               view = _core.view.getUI(ViewManager.PANEL_XIULIAN_PANEL);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.MOYINTUCE:
               view = _core.view.getUI(ViewManager.PANEL_MOYINTUCE_PANEL);
               if(view)
               {
                  view.showPanel();
               }
               break;
            case GamePredef.MCZD:
               view = _core.view.getUI(ViewManager.PANEL_MCZD);
               if(view)
               {
                  view.showPanel();
               }
         }
         deleteCircle(id);
      }
      
      public function set iconCavas(param1:Canvas) : void
      {
         var _loc2_:Object = this._1416844015iconCavas;
         if(_loc2_ !== param1)
         {
            this._1416844015iconCavas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconCavas",_loc2_,param1));
         }
      }
      
      public function fix2(param1:int) : void
      {
         var _loc5_:int = 0;
         if(activityArr.length <= 0)
         {
            return;
         }
         count = activityArr.length;
         var _loc2_:int = getTabNum(count);
         if(tab > _loc2_)
         {
            tab = tab - 1 < 1 ? _loc2_ : int(tab - 1);
         }
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         this.iconCavas.removeAllChildren();
         activityArr.sort(sortByType);
         _loc5_ = 0;
         while(_loc5_ < activityArr.length)
         {
            if(canIndexShow(_loc5_))
            {
               _loc3_ = getX(_loc5_);
               _loc4_ = getY(_loc5_);
               activityArr[_loc5_].button.x = _loc3_;
               activityArr[_loc5_].button.y = _loc4_;
               this.iconCavas.addChild(activityArr[_loc5_].button);
               if(activityArr[_loc5_].labelText)
               {
                  activityArr[_loc5_].labelText.x = _loc3_ + 4;
                  activityArr[_loc5_].labelText.y = _loc4_ + 48;
                  this.iconCavas.addChild(activityArr[_loc5_].labelText);
               }
            }
            _loc5_++;
         }
         count = activityArr.length;
         if(count > 8)
         {
            btnChange.y = 37;
         }
         else
         {
            btnChange.y = 12;
         }
         barNum.text = tab.toString();
         if(_loc2_ == 1)
         {
            barDown.visible = false;
            barUp.visible = false;
            barNum.visible = false;
         }
         else
         {
            barNum.visible = true;
            if(tab == 1)
            {
               barUp.visible = false;
            }
            else
            {
               barUp.visible = true;
            }
            if(tab == _loc2_)
            {
               barDown.visible = false;
            }
            else
            {
               barDown.visible = true;
            }
         }
         var _loc6_:int = (tab - 1) * 8;
         var _loc7_:int = (tab + 1) * 8 - 1;
         _loc5_ = 0;
         while(_loc5_ < activityArr.length)
         {
            if(Boolean(_loc5_ < _loc6_) && Boolean(activityArr[_loc5_].circle) && param1 > 1)
            {
               _core.sysMsg(Language.ACTIVITY_CANVAS[6]);
               barUp.setStyle("upSkin",Caidanshang2);
               break;
            }
            _loc5_++;
         }
         _loc5_ = 0;
         while(_loc5_ < activityArr.length)
         {
            if(Boolean(_loc5_ > _loc7_) && Boolean(activityArr[_loc5_].circle) && param1 > 1)
            {
               barDown.setStyle("upSkin",Caidanxia2);
               _core.sysMsg(Language.ACTIVITY_CANVAS[6]);
               break;
            }
            _loc5_++;
         }
      }
      
      public function __barDown_click(param1:MouseEvent) : void
      {
         activateIconDown();
      }
      
      public function getX(param1:int) : int
      {
         return 350 - param1 % 8 * 50;
      }
      
      private function timerHandler(param1:TimerEvent) : void
      {
         _core.view.getUI(ViewManager.DAILY_ACTIVITY).initPenalConfig();
      }
      
      public function activateIconUp() : void
      {
         barUp.setStyle("upSkin",Caidanshang1);
         var _loc1_:int = getTabNum(activityArr.length);
         tab = tab - 1 < 1 ? _loc1_ : int(tab - 1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.iconCavas.removeAllChildren();
         var _loc4_:int = 0;
         while(_loc4_ < activityArr.length)
         {
            if(canIndexShow(_loc4_))
            {
               _loc2_ = getX(_loc4_);
               _loc3_ = getY(_loc4_);
               activityArr[_loc4_].button.x = _loc2_;
               activityArr[_loc4_].button.y = _loc3_;
               this.iconCavas.addChild(activityArr[_loc4_].button);
               if(activityArr[_loc4_].labelText)
               {
                  activityArr[_loc4_].labelText.x = _loc2_ + 4;
                  activityArr[_loc4_].labelText.y = _loc3_ + 48;
                  this.iconCavas.addChild(activityArr[_loc4_].labelText);
               }
            }
            _loc4_++;
         }
         count = activityArr.length;
         if(count > 8)
         {
            btnChange.y = 37;
         }
         else
         {
            btnChange.y = 12;
         }
         barNum.text = tab.toString();
         if(tab == 1)
         {
            barUp.visible = false;
         }
         if(tab != _loc1_)
         {
            barDown.visible = true;
         }
      }
      
      public function addJXHDCircle() : void
      {
         var _loc1_:MovieClip = new (element as Class)();
         _loc1_.x = -7;
         _loc1_.y = -5;
         jxhdBtn.addChild(_loc1_);
      }
      
      public function set barDown(param1:Button) : void
      {
         var _loc2_:Object = this._334507179barDown;
         if(_loc2_ !== param1)
         {
            this._334507179barDown = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"barDown",_loc2_,param1));
         }
      }
      
      public function activateIconDown() : void
      {
         barDown.setStyle("upSkin",Caidanxia1);
         var _loc1_:int = getTabNum(activityArr.length);
         tab = tab + 1 > _loc1_ ? 1 : int(tab + 1);
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         this.iconCavas.removeAllChildren();
         var _loc4_:int = 0;
         while(_loc4_ < activityArr.length)
         {
            if(canIndexShow(_loc4_))
            {
               _loc2_ = getX(_loc4_);
               _loc3_ = getY(_loc4_);
               activityArr[_loc4_].button.x = _loc2_;
               activityArr[_loc4_].button.y = _loc3_;
               this.iconCavas.addChild(activityArr[_loc4_].button);
               if(activityArr[_loc4_].labelText)
               {
                  activityArr[_loc4_].labelText.x = _loc2_ + 4;
                  activityArr[_loc4_].labelText.y = _loc3_ + 48;
                  this.iconCavas.addChild(activityArr[_loc4_].labelText);
               }
            }
            _loc4_++;
         }
         count = activityArr.length;
         if(count > 8)
         {
            btnChange.y = 37;
         }
         else
         {
            btnChange.y = 12;
         }
         barNum.text = tab.toString();
         if(tab == _loc1_)
         {
            barDown.visible = false;
         }
         if(_loc1_ != 1)
         {
            barUp.visible = true;
         }
      }
      
      public function initView(param1:Object) : void
      {
         var _loc2_:* = undefined;
         for(_loc2_ in param1)
         {
            if(param1[_loc2_])
            {
               if(param1[_loc2_].type == 3)
               {
                  changeView(param1[_loc2_]);
               }
               else
               {
                  if(param1[_loc2_].type == 2)
                  {
                     if(Boolean(_core) && Boolean(_core.player) && _core.player.level >= param1[_loc2_].flag)
                     {
                        showActivityInfo(param1[_loc2_].id);
                     }
                     else
                     {
                        deleteActivity(param1[_loc2_].id);
                     }
                     continue;
                  }
                  if(param1[_loc2_].type == 4)
                  {
                     if(Boolean(_core && _core.player) && Boolean(_core.player.expRe) && Number(_core.player.expRe) > 0)
                     {
                        showActivityInfo(param1[_loc2_].id);
                     }
                     else
                     {
                        deleteActivity(param1[_loc2_].id);
                     }
                     continue;
                  }
                  if(param1[_loc2_].flag)
                  {
                     showActivityInfo(param1[_loc2_].id);
                  }
                  else
                  {
                     deleteActivity(param1[_loc2_].id);
                  }
               }
            }
            else
            {
               deleteActivity(param1[_loc2_].id);
            }
         }
         if(!isInited)
         {
            isInited = true;
         }
         positionActList(param1);
         fix(param1);
      }
      
      private function showJXHD() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_JXHD);
         if(_loc1_)
         {
            _loc1_.showPanel();
         }
      }
      
      public function addCircle(param1:int) : void
      {
         var _loc2_:MovieClip = null;
         if(activityDict[param1].button)
         {
            if(activityDict[param1].circle)
            {
               return;
            }
            _loc2_ = new (element as Class)();
            _loc2_.x = -7;
            _loc2_.y = -5;
            activityDict[param1].circle = _loc2_;
            activityDict[param1].button.addChild(_loc2_);
         }
      }
      
      public function deleteActivity(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(Boolean(activityDict[param1]) && Boolean(activityDict[param1].button))
         {
            if(activityDict[param1].button.parent == this.iconCavas)
            {
               this.iconCavas.removeChild(activityDict[param1].button);
            }
            if(Boolean(activityDict[param1].labelText) && activityDict[param1].labelText.parent == this.iconCavas)
            {
               this.iconCavas.removeChild(activityDict[param1].labelText);
            }
            activityArr.splice(activityArr.indexOf(activityDict[param1]),1);
            delete activityDict[param1];
            _loc2_ = 0;
            _loc3_ = 0;
            this.iconCavas.removeAllChildren();
            _loc4_ = 0;
            while(_loc4_ < activityArr.length)
            {
               if(canShow(_loc4_))
               {
                  _loc2_ = getX(_loc4_);
                  _loc3_ = getY(_loc4_);
                  activityArr[_loc4_].button.x = _loc2_;
                  activityArr[_loc4_].button.y = _loc3_;
                  this.iconCavas.addChild(activityArr[_loc4_].button);
                  if(activityArr[_loc4_].labelText)
                  {
                     activityArr[_loc4_].labelText.x = _loc2_ + 4;
                     activityArr[_loc4_].labelText.y = _loc3_ + 48;
                     this.iconCavas.addChild(activityArr[_loc4_].labelText);
                  }
               }
               _loc4_++;
            }
            count = activityArr.length;
            if(count > 8)
            {
               btnChange.y = 37;
            }
            else
            {
               btnChange.y = 12;
            }
         }
         positionActList2();
         fix2(0);
      }
      
      public function deleteCircle(param1:int) : void
      {
         if(Boolean(activityDict[param1]) && Boolean(activityDict[param1].button) && Boolean(activityDict[param1].circle))
         {
            activityDict[param1].button.removeChild(activityDict[param1].circle);
            delete activityDict[param1].circle;
         }
      }
      
      public function set btnChange(param1:Button) : void
      {
         var _loc2_:Object = this._124012844btnChange;
         if(_loc2_ !== param1)
         {
            this._124012844btnChange = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnChange",_loc2_,param1));
         }
      }
      
      public function __jxhdBtn_click(param1:MouseEvent) : void
      {
         showJXHD();
      }
      
      public function __btnChange_click(param1:MouseEvent) : void
      {
         change_canFun();
      }
      
      public function set barNum(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1396254093barNum;
         if(_loc2_ !== param1)
         {
            this._1396254093barNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"barNum",_loc2_,param1));
         }
      }
      
      public function positionActList(param1:Object) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:Sort = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Object = null;
         var _loc2_:ArrayCollection = new ArrayCollection();
         for(_loc3_ in param1)
         {
            _loc7_ = param1[_loc3_];
            _loc7_.sort1 = param1[_loc3_].sortType;
            _loc7_.sort2 = param1[_loc3_].id;
            _loc2_.addItem(_loc7_);
         }
         _loc4_ = new Sort();
         _loc4_.fields = [new SortField("sort1",true,false,true),new SortField("sort2",true,false,true)];
         _loc2_.sort = _loc4_;
         _loc2_.refresh();
         _loc5_ = 0;
         _loc6_ = 0;
         while(_loc6_ < _loc2_.length)
         {
            if(activityDict[_loc2_[_loc6_].id])
            {
               fixActPosition(_loc2_[_loc6_].id,_loc5_);
               _loc5_++;
            }
            _loc6_++;
         }
      }
      
      public function set jxhdBtn(param1:Button) : void
      {
         var _loc2_:Object = this._1174267086jxhdBtn;
         if(_loc2_ !== param1)
         {
            this._1174267086jxhdBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jxhdBtn",_loc2_,param1));
         }
      }
      
      public function canShow(param1:int) : Boolean
      {
         var _loc2_:int = getIconIndex(param1);
         if(_loc2_ < 0)
         {
            return false;
         }
         if(_loc2_ >= (tab - 1) * 8 && _loc2_ <= (tab + 1) * 8 - 1)
         {
            return true;
         }
         return false;
      }
      
      private function sortByType(param1:Object, param2:Object) : Number
      {
         if(param1.sortType == param2.sortType)
         {
            if(param1.id > param2.id)
            {
               return 1;
            }
            if(param1.id < param2.id)
            {
               return -1;
            }
            return 0;
         }
         if(param1.sortType > param2.sortType)
         {
            return 1;
         }
         return -1;
      }
      
      public function getY(param1:int) : int
      {
         if(param1 < tab * 8 && param1 >= (tab - 1) * 8)
         {
            return 0;
         }
         if(param1 >= tab * 8 && param1 < (tab + 1) * 8)
         {
            return 50;
         }
         return 0;
      }
      
      public function onCanQuest(param1:Boolean) : void
      {
         if(param1)
         {
            _core.view.show(ViewManager.PANEL_QUESTIONING);
         }
         else
         {
            Alert.show(Language.ACTIVITY_CANVAS[3],"",Alert.YES,null,null);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get barNum() : RoundedLabel
      {
         return this._1396254093barNum;
      }
      
      public function changeView(param1:Object) : *
      {
         if(!param1)
         {
            return;
         }
         switch(param1.flag)
         {
            case 0:
               deleteActivity(param1.id);
               break;
            case 1:
               showActivityInfo(param1.id,1,param1.sortType);
               break;
            case 2:
               showActivityInfo(param1.id,2,param1.sortType);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get barDown() : Button
      {
         return this._334507179barDown;
      }
      
      public function showActivityInfo(param1:int, param2:int = -1, param3:int = -1) : void
      {
         var _loc6_:Label = null;
         if(activityDict[param1])
         {
            if(param2 > 0)
            {
               activityDict[param1].state = param2;
               if(activityDict[param1].labelText)
               {
                  activityDict[param1].labelText.text = ACTIVITY_STATE[param2 - 1];
               }
               else
               {
                  _loc6_ = new Label();
                  _loc6_.text = ACTIVITY_STATE[param2 - 1];
                  _loc6_.setStyle("color","#FF0000");
                  if(canShow(param1))
                  {
                     if(!activityDict[param1].button.parent)
                     {
                        activityDict[param1].button.x = getX(getIconIndex(param1));
                        activityDict[param1].button.y = getY(getIconIndex(param1));
                        this.iconCavas.addChild(activityDict[param1].button);
                     }
                     _loc6_.x = activityDict[param1].button.x + 4;
                     _loc6_.y = activityDict[param1].button.y + 48;
                     activityDict[param1].labelText = _loc6_;
                     this.iconCavas.addChild(_loc6_);
                  }
               }
            }
            if(canShow(param1))
            {
               if(!activityDict[param1].button.parent)
               {
                  activityDict[param1].button.x = getX(getIconIndex(param1));
                  activityDict[param1].button.y = getY(getIconIndex(param1));
                  this.iconCavas.addChild(activityDict[param1].button);
               }
            }
            return;
         }
         var _loc4_:Button = new Button();
         _loc4_.id = String(param1);
         _loc4_.styleName = ACTIVITY_STYLE_ARR[param1];
         _loc4_.addEventListener(MouseEvent.CLICK,activityClick);
         _loc4_.width = 48;
         _loc4_.height = 48;
         _loc4_.x = getX(count);
         _loc4_.y = getY(count);
         ++count;
         if(count > 8)
         {
            btnChange.y = 37;
         }
         else
         {
            btnChange.y = 12;
         }
         if(param2 > 0)
         {
            _loc6_ = new Label();
            _loc6_.text = ACTIVITY_STATE[param2 - 1];
            _loc6_.setStyle("color","#FF0000");
            _loc6_.x = _loc4_.x + 4;
            _loc6_.y = _loc4_.y + 48;
            if(count >= (tab - 1) * 8 && count <= (tab + 1) * 8 - 1)
            {
               this.iconCavas.addChild(_loc6_);
            }
         }
         var _loc5_:Object = new Object();
         _loc5_.button = _loc4_;
         _loc5_.id = param1;
         _loc5_.labelText = _loc6_;
         _loc5_.state = param2;
         if(Boolean(param3) && param3 != -1)
         {
            _loc5_.sortType = param3;
         }
         activityDict[_loc5_.id] = _loc5_;
         activityArr.push(_loc5_);
         if(count >= (tab - 1) * 8 && count <= (tab + 1) * 8 - 1)
         {
            this.iconCavas.addChild(_loc4_);
         }
         if(isInited)
         {
            addCircle(param1);
         }
         if(param3 != -1)
         {
            positionActList2();
            fix2(2);
         }
      }
      
      public function change_canFun() : void
      {
         if(iconCavas.visible)
         {
            iconCavas.visible = false;
            barDown.visible = false;
            barNum.visible = false;
            barUp.visible = false;
            jxhdBtn.visible = false;
            btnChange.styleName = "BtnShowButtons";
         }
         else
         {
            iconCavas.visible = true;
            barDown.visible = true;
            barNum.visible = true;
            barUp.visible = true;
            jxhdBtn.visible = true;
            btnChange.styleName = "BtnHideButtons";
         }
      }
      
      public function hideIcons(param1:Boolean) : void
      {
         if(!iconCavas)
         {
            this.callLater(hideIcons,[param1]);
            return;
         }
         if(param1)
         {
            iconCavas.visible = false;
            jxhdBtn.visible = false;
            btnChange.styleName = "BtnShowButtons";
         }
         else
         {
            iconCavas.visible = true;
            jxhdBtn.visible = true;
            btnChange.styleName = "BtnHideButtons";
         }
      }
   }
}

