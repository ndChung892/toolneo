package com.qeedoo.game.logic
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import flash.utils.ByteArray;
   
   public class GameScene
   {
      
      private var _view:Object;
      
      public var hitTest:Object;
      
      private var _world:Object;
      
      private var _core:Core = Core.getInstance();
      
      public function GameScene()
      {
         super();
      }
      
      public function sceneCreateNpcs(param1:Object) : void
      {
         var _loc2_:Object = null;
         for each(_loc2_ in param1)
         {
            _core.createNpc(_loc2_);
            _core.remote.setNpcState(_loc2_.id);
         }
      }
      
      public function get view() : Object
      {
         return _view;
      }
      
      public function sceneLeave() : void
      {
         if(_view)
         {
            _view.leaveScene();
         }
         _core.view.hideAll(ViewManager.TYPE_PANEL);
         if(_core.player)
         {
            _world.setN(_core.player.posMapId);
         }
         if(_core.state == GamePredef.ST_CORE_BATTLE)
         {
            _core.battle.battleOnEnd();
         }
      }
      
      public function setNpcList(param1:Object) : void
      {
         var i:String = null;
         var npcData:Object = null;
         var waiguaiIndex:int = 0;
         var npcList:Object = param1;
         var num:uint = 0;
         try
         {
            for(i in npcList)
            {
               if(npcList[i])
               {
                  npcData = _core.data.gameData[GamePredef.TBL_NPC][npcList[i].nid];
                  if(npcData)
                  {
                     npcData.id = i;
                     npcData.nid = npcList[i].nid;
                     npcData.posX = Number(npcList[i].x);
                     npcData.posY = Number(npcList[i].y);
                     npcData.name = npcList[i].name;
                     if(npcList[i].hasOwnProperty("bState"))
                     {
                        npcData.bState = npcList[i].bState;
                     }
                     if(npcList[i].hasOwnProperty("busy"))
                     {
                        npcData.busy = npcList[i].busy;
                     }
                     npcData.resCode = npcList[i].resCode;
                     waiguaiIndex = GamePredef.ANTI_WAIGUA_BOSSID.indexOf(int(npcData.nid));
                     if(waiguaiIndex >= 0)
                     {
                        npcData.colorCode = int(0 + (360 - 0) * Math.random());
                     }
                     _core.createNpc(npcData);
                     _core.remote.setNpcState(npcData.id);
                     num++;
                  }
               }
            }
         }
         catch(e:*)
         {
         }
         if(num <= 0)
         {
            _core.view.getUI(ViewManager.PANEL_MAP).clearNpc();
         }
         if(_core.firstGC)
         {
            _core.firstGC = false;
         }
         else
         {
            _core.gc();
         }
      }
      
      public function secneSetSpeed(param1:int, param2:int) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:Object = null;
         for(_loc3_ in _core.view.cDict)
         {
            _loc4_ = _core.view.getC(_loc3_);
            if(_loc4_)
            {
               _loc4_.speed = int(9 * GamePredef.GLOBAL_FRAME_RATE_DEFAULT / param2);
            }
         }
      }
      
      public function init(param1:Object) : void
      {
         _view = param1;
      }
      
      public function sceneCreateGuildBuildings(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(param1 == null)
         {
            return;
         }
         _core = Core.getInstance();
         for each(_loc2_ in param1)
         {
            if(_loc2_ != null)
            {
               _core.createBuild(_loc2_);
            }
         }
      }
      
      public function sceneCreateChars(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:* = undefined;
         _core = Core.getInstance();
         for each(_loc2_ in param1)
         {
            if(_loc2_ != null && Number(_loc2_.id) != _core.cid)
            {
               if(_loc2_.vipT < 0 && _loc2_.SpeT > 0)
               {
                  _loc2_.vipT = _loc2_.SpeT;
               }
               if(_loc2_.vipT > 0 && _loc2_.SpeT > 0 && _core.checkTitleShow(_loc2_.SpeT))
               {
                  _loc2_.t = _loc2_.SpeT;
               }
               _core.createCharactor(_loc2_);
               if(_loc2_.id)
               {
                  _loc3_ = _core.getCharactor(_loc2_.id);
                  if(_loc3_)
                  {
                     if(_loc2_.posMapId)
                     {
                        _loc3_.posMapId = _loc2_.posMapId;
                     }
                     if(_loc2_.posX)
                     {
                        _loc3_.posX = _loc2_.posX;
                     }
                     if(_loc2_.posY)
                     {
                        _loc3_.posY = _loc2_.posY;
                     }
                  }
               }
            }
         }
      }
      
      public function setWorld(param1:Object) : void
      {
         _world = param1;
      }
      
      public function sceneCreateItems(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc2_:uint = 0;
         for each(_loc3_ in param1)
         {
            _core.createSceneItem(_loc3_);
            _loc2_++;
         }
         if(!_core.view.getUI(ViewManager.PANEL_MAP).initialized)
         {
            _core.view.getUI(ViewManager.PANEL_MAP).initView();
         }
         if(_loc2_ == 0)
         {
            _core.view.getUI(ViewManager.PANEL_MAP).clearIp();
         }
      }
      
      public function sceneEnter(param1:int, param2:int, param3:int, param4:int = -1) : void
      {
         var _loc5_:Object = _core.data.getGameData(GamePredef.TBL_MAP,param1);
         _core = Core.getInstance();
         _core.ready = false;
         if(param4 != -1)
         {
            _core.player.posMapId = param4;
         }
         else
         {
            _core.player.posMapId = param1;
         }
         _core.player.posX = param2;
         _core.player.posY = param3;
         _core.player.posCenterX = param2;
         _core.player.posCenterY = param3;
         if(_loc5_.flyable != 1)
         {
            _core.player.flyingState = GamePredef.FLYING_STATE_ON_GROUND;
         }
         _core.addCharactorView(_core.player);
         sceneLogin(param1,param4);
      }
      
      public function sceneLogin(param1:int, param2:int = -1) : void
      {
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc9_:ByteArray = null;
         var _loc10_:Object = null;
         var _loc11_:Object = null;
         var _loc3_:Object = _core.data.gameData[GamePredef.TBL_MAP][param1];
         if(param2 != -1 && param1 != param2)
         {
            _loc9_ = new ByteArray();
            _loc9_.writeObject(_loc3_);
            _loc9_.position = 0;
            _loc10_ = _loc9_.readObject();
            _loc10_.copyFlag = 1;
            _loc10_.id = param2;
            _loc10_.templateId = param1;
            _core.data.gameData[GamePredef.TBL_MAP][param2] = _loc10_;
            _loc3_ = _loc10_;
         }
         _core.player.mapData = _loc3_;
         _view.enterScene(_loc3_);
         var _loc4_:Object = _core.data.gameDataIndex[GamePredef.TBL_SCENEITEM_INSTANCE][param1];
         var _loc5_:Array = [];
         for(_loc6_ in _loc4_)
         {
            _loc11_ = _core.data.getGameData(GamePredef.TBL_SCENEITEM_TEMPLATE,_loc4_[_loc6_].tid);
            _loc5_.push({
               "iData":_loc4_[_loc6_],
               "tData":_loc11_
            });
         }
         sceneCreateItems(_loc5_);
         _core.remote.createNpcs();
         _core.remote.createBoss();
         _core.remote.createChars();
         _core.remote.createGuildBuildings();
         _core.sysMidNote(_loc3_.name);
         _core.playNormal();
         _loc7_ = _core.view.getUI(ViewManager.MAIN_MINIMAP);
         if(_loc3_.pk > 0)
         {
            _core.sysMidNote(Language.GAMESCENE_S[0]);
            _core.sysMsg(Language.GAMESCENE_S[0]);
         }
         if(!GamePredef.TRIALS_PASS_MAP[_loc3_.id] && Boolean(_loc7_))
         {
            _loc7_.setTrialsInfoVisible(0,-1,false);
         }
         var _loc8_:* = _core.view.getUI(ViewManager.MAIN_DOG_FIGHT);
         if(_loc8_)
         {
            _loc8_.checkAndSetVisible();
         }
      }
   }
}

