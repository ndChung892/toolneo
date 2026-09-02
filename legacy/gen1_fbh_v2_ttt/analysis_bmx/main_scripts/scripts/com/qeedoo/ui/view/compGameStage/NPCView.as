package com.qeedoo.ui.view.compGameStage
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.LinkEncode;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.utils.WalkNpcController;
   import com.qeedoo.ui.view.comp.HulaNpcBombBitmap;
   import com.qeedoo.ui.view.compDragable.DotaPanel;
   import com.qeedoo.ui.view.compDragable.HulaPanel;
   import com.qeedoo.ui.view.compDragable.TripleTownPanel;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.net.Responder;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import mx.controls.Alert;
   import mx.events.CloseEvent;
   
   public class NPCView extends CreatureView
   {
      
      private static const SHOW_TIP_DELAY:Number = 200;
      
      private var _lastClickTime:Number = 0;
      
      private var queueMovePoints:Array = [];
      
      private var hpbar:NpcViewHPBar;
      
      private var _walkPos:Point;
      
      private var stop_count:uint = 20;
      
      private var _destinationPos:Object = {
         2119:[350,280],
         2120:[2740,270],
         2121:[400,2250],
         2122:[2780,2270]
      };
      
      private var _toolTip:Object;
      
      private var _showTipHandler:Number = 0;
      
      public var moveEndCall:Function;
      
      private var bm:HulaNpcBombBitmap;
      
      public var online:Boolean = true;
      
      private var currentFrame:int = 0;
      
      private var _core:Core = Core.getInstance();
      
      public function NPCView()
      {
         super();
         _textName.textColor = 13434828;
         this._speed = 2;
      }
      
      public function dotaFaceTo(param1:int) : void
      {
         faceTo(param1);
         if(_gameObject)
         {
            _gameObject.posDir = param1;
         }
      }
      
      public function reload(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(param1)
         {
            _loc2_ = _core.data.gameData[GamePredef.TBL_NPC][param1.nid];
            if(Boolean(_loc2_) && this.gameObject.resCode != param1.resCode)
            {
               _loc2_.resCode = param1.resCode;
               _loc2_.name = param1.name;
               this.gameObject.resCode = param1.resCode;
               this.gameObject = this.gameObject;
            }
         }
      }
      
      override protected function mouseOutHandler(param1:MouseEvent) : void
      {
         super.mouseOutHandler(param1);
         clearTimeout(_showTipHandler);
         var _loc2_:Object = _core.view.getUI(ViewManager.TOOLTIP_NPC);
         if(_loc2_)
         {
            _core.view.getUI(ViewManager.TOOLTIP_NPC).hide();
         }
      }
      
      public function setSpeed(param1:Number) : void
      {
         this._speed = param1;
      }
      
      override public function walkTo(param1:int, param2:int) : void
      {
         _walkPos = new Point(param1,param2);
         super.walkTo(param1,param2);
      }
      
      public function clickNpc() : void
      {
         var yBy:int;
         var func:Function;
         var str2:String;
         var xBy:int;
         var str:String = null;
         var npcDir:int = 0;
         if(Boolean(_gameObject) && _gameObject.npcType == GamePredef.NPC_TYPE_WALK)
         {
            return;
         }
         str = "";
         if(_core.state != GamePredef.ST_NORMAL)
         {
            return;
         }
         if(_core.player.isDead)
         {
            return;
         }
         if(_core.player.inGroup && !_core.player.isLeader && !_core.player.groupAfk)
         {
            _core.sysMidNote(Language.NPCVIEW_S[0]);
            str = Language.NPCVIEW_S[1];
            str = str.replace("{NPCName}",LinkEncode.encode(GamePredef.TBL_NPC,_gameObject.id,_gameObject.name));
            _core.player.say(str,GamePredef.MSG_CHANNEL_LOCAL);
            return;
         }
         _core.targetNPC = _gameObject;
         xBy = _core.player.posX - posX;
         yBy = _core.player.posY - posY;
         if(ToolKit.getDistance(xBy,yBy) > 250)
         {
            _core.player.closeTo(posX,posY);
            return;
         }
         if(_gameObject.busy)
         {
            onSay(Language.NPCVIEW_S[3]);
            return;
         }
         str = Language.NPCVIEW_S[4];
         str2 = Language.NPCVIEW_S[5];
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               doClick();
            }
         };
         if(online)
         {
            npcDir = ToolKit.getDir(xBy,yBy);
            if(_gameObject.npcType == GamePredef.NPC_TYPE_DOTA)
            {
               if(Boolean(_gameObject.dotaData) && _gameObject.dotaData.group == 1)
               {
                  faceTo(2);
               }
               else
               {
                  faceTo(6);
               }
            }
            else if(_gameObject.npcType != GamePredef.NPC_TYPE_TRIPLE_TOWN)
            {
               faceTo(npcDir);
            }
            _core.player.view.faceTo((npcDir + 4) % 8);
            if(_gameObject.npcType == GamePredef.NPC_TYPE_BOSS)
            {
               if(_gameObject.lv > 0)
               {
                  if(_gameObject.lv - 5 > _core.player.level)
                  {
                     Alert.show(str,"",Alert.YES | Alert.NO,null,func);
                     return;
                  }
                  if(_core.player.level - 10 > _gameObject.lv)
                  {
                     if(_gameObject.subType == "all" && _gameObject.npcType == GamePredef.NPC_TYPE_BATTLE || _gameObject.npcType == GamePredef.NPC_TYPE_BOSS)
                     {
                        Alert.show(str2,"",Alert.YES | Alert.NO,null,func);
                        return;
                     }
                  }
               }
            }
            doClick();
         }
      }
      
      public function dotaDead() : void
      {
         hulaDead(2);
      }
      
      private function doClick() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc7_:Array = null;
         var _loc8_:Object = null;
         if(_gameObject.npcType == GamePredef.NPC_TYPE_BOSS)
         {
            _core.remote.clickBoss(Number(_gameObject.id));
         }
         else if(_gameObject.npcType == GamePredef.NPC_TYPE_HULA)
         {
            if(!_gameObject.hulaData.isPre && !HulaPanel.isTurning)
            {
               _loc1_ = _core.view.getUI(ViewManager.PANEL_NPCSCRIPT);
               _loc2_ = [];
               _loc3_ = "";
               if(_gameObject.nid == 2096)
               {
                  _loc3_ = Language.HULA_PANEL[34];
                  _loc2_.push({
                     "func":HulaPanel.HULA_NPC_SCRIPT_AWARD,
                     "label":Language.HULA_PANEL[11]
                  });
               }
               else if(_gameObject.nid == 2097)
               {
                  _loc3_ = Language.HULA_PANEL[33];
                  _loc2_.push({
                     "func":HulaPanel.HULA_NPC_SCRIPT_BATTLE,
                     "label":Language.HULA_PANEL[18]
                  });
               }
               else
               {
                  _loc3_ = Language.HULA_PANEL[32];
                  _loc2_.push({
                     "func":HulaPanel.HULA_NPC_SCRIPT_BATTLE,
                     "label":Language.HULA_PANEL[4]
                  });
               }
               _loc2_.push({
                  "func":HulaPanel.HULA_NPC_SCRIPT_CHANGE,
                  "label":Language.HULA_PANEL[5]
               });
               _loc2_.push({
                  "func":HulaPanel.HULA_NPC_SCRIPT_CANCEL,
                  "label":Language.HULA_PANEL[6]
               });
               _loc1_.setInfo(_gameObject.id,_gameObject.name,_loc3_,_loc2_,_gameObject.hulaData);
            }
         }
         else if(_gameObject.npcType == GamePredef.NPC_TYPE_DOTA)
         {
            if(_gameObject.dotaData)
            {
               return;
            }
         }
         else if(_gameObject.npcType == GamePredef.NPC_TYPE_TRIPLE_TOWN)
         {
            if(!_gameObject.tripleNpc)
            {
               return;
            }
            if(this.isWalking)
            {
               return;
            }
            _loc4_ = _gameObject.tripleNpc;
            if(_loc4_.isStandBy)
            {
               return;
            }
            _loc5_ = GameData.d[GamePredef.TBL_NPC][_loc4_.npcId];
            _loc6_ = _loc5_ ? _loc5_.onServiceText : "";
            _loc7_ = Language.TRIPLE_TOWN_PANEL[13];
            _loc8_ = _core.view.getUI(ViewManager.PANEL_NPCSCRIPT);
            _loc8_.setInfo(_gameObject.id,_gameObject.name,_loc6_,_loc7_);
         }
         else
         {
            _core.remote.clickNpc(Number(_gameObject.id));
         }
      }
      
      public function onEnter(param1:Event) : void
      {
         var _loc2_:Point = null;
         var _loc3_:uint = 0;
         var _loc4_:Date = null;
         var _loc5_:Number = NaN;
         if(this.visible && !_core.player.inBattle)
         {
            if(!this.isWalking)
            {
               ++stop_count;
               if(stop_count > 20)
               {
                  _loc2_ = ToolKit.getRandomPoint(_gameObject.cPosX,_gameObject.cPosY,50,50);
                  if(Boolean(_gameObject.nid) && Boolean(GamePredef.TREASURE_NPC[_gameObject.nid]))
                  {
                     _loc2_ = ToolKit.getRandomPoint(_gameObject.cPosX,_gameObject.cPosY,300,300);
                  }
                  if(Boolean(_gameObject.nid) && Boolean(_destinationPos[_gameObject.nid]))
                  {
                     _loc2_ = new Point(_destinationPos[_gameObject.nid][0],_destinationPos[_gameObject.nid][1]);
                  }
                  this.walkTo(_loc2_.x,_loc2_.y);
                  stop_count = 0;
               }
            }
            if(!_core.player.isDead)
            {
               _loc3_ = ToolKit.getDisByXY(_core.player.posX,_core.player.posY,this.posX,this.posY);
               if(_loc3_ < 50)
               {
                  if(Boolean(_core.player.lastHitNpc) && Boolean(_core.player.lastHitNpc.nid) && Boolean(_core.player.lastHitNpc.last))
                  {
                     _loc4_ = new Date();
                     _loc5_ = _loc4_.getTime() + _loc4_.getTimezoneOffset() * 60 * 1000 - _core.serverTimeOffSet;
                     if(Boolean(_gameObject.nid) && Boolean(GamePredef.TREASURE_NPC[_gameObject.nid]))
                     {
                        if(ToolKit.minus(_loc5_,_core.player.lastHitNpc.last) < 5 * 1000)
                        {
                           return;
                        }
                     }
                     else if(_gameObject.id == _core.player.lastHitNpc.nid)
                     {
                        if(ToolKit.minus(_loc5_,_core.player.lastHitNpc.last) < 3 * 1000)
                        {
                           return;
                        }
                     }
                  }
                  if(isWalking)
                  {
                     this.stopWalk();
                  }
                  this.walkTo(_core.player.posX,_core.player.posY);
                  _core.remote.hitNpc(_gameObject.id);
               }
            }
         }
      }
      
      public function hulaDead(param1:int = 1) : void
      {
         if(!this.visible)
         {
            return;
         }
         this.visible = false;
         if(!this.container)
         {
            return;
         }
         bm = bm || new HulaNpcBombBitmap();
         bm.x = this.posX - 68;
         bm.y = this.posY - 120;
         bm.yBase = bm.y;
         this.container.addChild(bm);
         currentFrame = 0;
         addEventListener(Event.ENTER_FRAME,this["enterFrame" + param1]);
      }
      
      override protected function checkVisible(param1:TimerEvent) : void
      {
         if(!_deleted && inScreen && online)
         {
            if(Boolean(_gameObject.layer == 3) && Boolean(_core.player) && _core.player.flyingState == GamePredef.FLYING_STATE_ON_GROUND)
            {
               visible = false;
               return;
            }
            visible = true;
            if(Boolean(_gameObject.layer == 3) && Boolean(_core.player) && _core.player.flyingState == GamePredef.FLYING_STATE_IN_THE_AIR)
            {
               this.scaleX = GamePredef.FLYING_PLAYER_ZOOM_RATE / GamePredef.FLYING_ZOOM_RATE;
               this.scaleY = GamePredef.FLYING_PLAYER_ZOOM_RATE / GamePredef.FLYING_ZOOM_RATE;
            }
            if(_gameObject.npcType == GamePredef.NPC_TYPE_WALK)
            {
            }
            if(_sprite)
            {
               _sprite.play();
            }
         }
         else if(!(Boolean(_gameObject) && Boolean(_gameObject.npcType == GamePredef.NPC_TYPE_WALK) && (!inScreen || _deleted)))
         {
            visible = false;
            if(_sprite)
            {
               _sprite.stop();
            }
         }
      }
      
      public function refreshHpBar(param1:Number, param2:Number, param3:int) : void
      {
         if(!hpbar)
         {
            hpbar = new NpcViewHPBar();
            hpbar.x = -35;
            hpbar.y = -82;
            hpbar.yBase = 0;
            if(_body)
            {
               _body.addChild(hpbar);
            }
         }
         hpbar.graphics.clear();
         var _loc4_:uint = 16711680;
         if(param3 == 2)
         {
            _loc4_ = 65535;
         }
         hpbar.graphics.beginFill(_loc4_,1);
         hpbar.graphics.drawRect(0,0,65 * (param1 / param2),5);
         hpbar.graphics.endFill();
      }
      
      override protected function moveEnd() : void
      {
         if(_walkPos)
         {
            this.setPos(_walkPos);
            this.updateObjectPos();
            _walkPos = null;
         }
         moveEndCall && moveEndCall(this);
         if(!queueMovePoints || queueMovePoints.length == 0)
         {
            dispatchEvent(new Event("npc_stop"));
            return;
         }
         var _loc1_:Object = queueMovePoints.shift();
         var _loc2_:int = int(_loc1_["index"]);
         var _loc3_:Array = _loc1_["p"];
         if(!_loc3_ || _loc3_.length != 2)
         {
            return;
         }
         walkTo(_loc3_[0] * 10,_loc3_[1] * 10);
         if(_loc2_ >= 84)
         {
            dispatchEvent(new Event("hula_game_over"));
         }
      }
      
      override protected function resLoadCompleteHandler(param1:Event) : void
      {
         super.resLoadCompleteHandler(param1);
      }
      
      public function walkQueue(param1:Array) : void
      {
         queueMovePoints = param1;
         moveEnd();
      }
      
      private function enterFrame1(param1:Event) : void
      {
         ++currentFrame;
         if(!HulaPanel.bombArr || currentFrame >= HulaPanel.bombArr.length)
         {
            removeEventListener(Event.ENTER_FRAME,enterFrame1);
            if(Boolean(bm) && Boolean(bm.parent))
            {
               bm.parent.removeChild(bm);
            }
            bm = null;
            return;
         }
         if(bm)
         {
            bm.bitmapData = HulaPanel.bombArr[currentFrame];
         }
      }
      
      private function enterFrame3(param1:Event) : void
      {
         if(!bm || !TripleTownPanel.bombDict)
         {
            return;
         }
         ++currentFrame;
         if(currentFrame >= TripleTownPanel.bombDict.length)
         {
            removeEventListener(Event.ENTER_FRAME,enterFrame3);
            bm.parent && bm.parent.removeChild(bm);
            bm.visible = false;
            bm = null;
            return;
         }
         bm.bitmapData = TripleTownPanel.bombDict[currentFrame];
      }
      
      override protected function mouseDownHandler(param1:MouseEvent) : void
      {
         super.mouseDownHandler(param1);
         clickNpc();
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(Boolean(_gameObject) && _gameObject.npcType == GamePredef.NPC_TYPE_WALK)
         {
            if(param1 && !visible)
            {
               WalkNpcController.addWalkNpc(_gameObject.id);
               if(!_gameObject.cPosX || !_gameObject.cPosY)
               {
                  _gameObject.cPosX = _gameObject.posX;
                  _gameObject.cPosY = _gameObject.posY;
               }
            }
            else if(!param1 && visible)
            {
               WalkNpcController.delWalkNpc(_gameObject.id);
            }
         }
         super.visible = param1;
      }
      
      public function stopWalkQueue(param1:Array = null) : void
      {
         if(queueMovePoints)
         {
            queueMovePoints.length = 0;
         }
         if(Boolean(param1) && param1.length == 2)
         {
            walkTo(param1[0] * 10,param1[1] * 10);
         }
         else
         {
            stop();
         }
      }
      
      private function enterFrame2(param1:Event) : void
      {
         ++currentFrame;
         if(!DotaPanel.bombArr || currentFrame >= DotaPanel.bombArr.length)
         {
            removeEventListener(Event.ENTER_FRAME,enterFrame2);
            if(Boolean(bm) && Boolean(bm.parent))
            {
               bm.parent.removeChild(bm);
            }
            bm = null;
            return;
         }
         if(bm)
         {
            bm.bitmapData = DotaPanel.bombArr[currentFrame];
         }
      }
      
      override protected function mouseOverHandler(param1:MouseEvent) : void
      {
         var tipView:Object = null;
         var typeObjMap:Object = null;
         var onGetData:Function = null;
         var showTip:Function = null;
         var event:MouseEvent = param1;
         super.mouseOverHandler(event);
         tipView = _core.view.getUI(ViewManager.TOOLTIP_NPC);
         typeObjMap = {};
         typeObjMap[GamePredef.NPC_TYPE_PLANT] = {
            "propName":"plantData",
            "funcName":"queryPlant"
         };
         typeObjMap[GamePredef.NPC_TYPE_HERB] = {
            "propName":"herbData",
            "funcName":"queryHerb"
         };
         typeObjMap[GamePredef.NPC_TYPE_FISH_POOL] = {
            "propName":"fishPoolData",
            "funcName":"queryFishPool"
         };
         typeObjMap[GamePredef.NPC_TYPE_GATHER] = {
            "propName":"gatherData",
            "funcName":"queryGather"
         };
         if(typeObjMap[_gameObject.npcType])
         {
            onGetData = function(param1:Object):void
            {
               tipView[typeObjMap[_gameObject.npcType].propName] = param1;
               tipView.nid = _gameObject.id;
               tipView.show();
            };
            showTip = function():void
            {
               if(_gameObject)
               {
                  _core.remote.call(typeObjMap[_gameObject.npcType].funcName,new Responder(onGetData),_gameObject.id);
               }
            };
            _showTipHandler = setTimeout(showTip,SHOW_TIP_DELAY);
         }
      }
      
      override protected function addListener() : void
      {
         super.addListener();
         this.stateSprite.addEventListener(MouseEvent.MOUSE_DOWN,mouseDownHandler);
      }
      
      public function reloadDota(param1:String) : void
      {
         var resCodeChange:Function;
         var handler:uint = 0;
         var resCode:String = param1;
         if(!resCode || !this.gameObject || this.gameObject.resCode == resCode)
         {
            return;
         }
         resCodeChange = function(param1:NPCView):void
         {
            clearTimeout(handler);
            if(Boolean(param1) && Boolean(param1.gameObject) && param1.gameObject.resCode != resCode)
            {
               param1.gameObject.resCode = resCode;
               param1.gameObject = param1.gameObject;
            }
         };
         handler = setTimeout(resCodeChange,0.1 + Math.random() * 0.2,this);
      }
      
      public function reloadHula(param1:Object) : void
      {
         if(param1)
         {
            this.gameObject.resCode = param1.resCode;
            this.gameObject.name = param1.objName;
            this.gameObject.nid = param1.nid;
            this.gameObject = this.gameObject;
         }
      }
   }
}

import flash.display.Sprite;

class NpcViewHPBar extends Sprite
{
   
   public var yBase:Number = 0;
   
   public function NpcViewHPBar()
   {
      super();
   }
   
   public function destroy() : void
   {
   }
}
