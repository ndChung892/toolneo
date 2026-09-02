package com.qeedoo.game.logic
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.object.Player;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   import flash.utils.setTimeout;
   
   public class Battle
   {
      
      public static var BATTLE_ID:Array = [];
      
      public static var BATTLE_POS:Array = [];
      
      public static var SKILL_KIND_USE:int = 1;
      
      public static var SKILL_KIND_POSIVE:int = 2;
      
      public static var SKILL_KIND_BUFF:int = 3;
      
      public static var SKILL_KIND_FUNC:int = 4;
      
      public static var SKILL_TARGET_TYPE_SELF:int = 1;
      
      public static var SKILL_TARGET_TYPE_SELF_PLAYER:int = 2;
      
      public static var SKILL_TARGET_TYPE_SELF_PET:int = 3;
      
      public static var SKILL_TARGET_TYPE_ENEMEY:int = 4;
      
      public static var SKILL_TARGET_TYPE_ENEMEY_PLAYER:int = 5;
      
      public static var SKILL_TARGET_TYPE_ENEMEY_CRE:int = 6;
      
      public static var SKILL_TARGET_TYPE_ENEMEY_NOBOSS:int = 7;
      
      public static var SKILL_TARGET_TYPE_TEAM:int = 8;
      
      public static var SKILL_TARGET_TYPE_TEAM_PLAYER:int = 9;
      
      public static var SKILL_TARGET_TYPE_TEAM_PET:int = 10;
      
      public static var SKILL_TARGET_TYPE_ALL:int = 11;
      
      public static var SKILL_TARGET_TYPE_PLAYER:int = 12;
      
      public static var BATTLE_AREA_TYPE_V:int = 1;
      
      public static var BATTLE_AREA_TYPE_H:int = 2;
      
      public static var BATTLE_AREA_TYPE_C:int = 3;
      
      public static var BATTLE_AREA_TYPE_R:int = 4;
      
      public static var BATTLE_STATE_NORMAL:int = 0;
      
      public static var BATTLE_STATE_DEFENCE:int = 1;
      
      public static var BATTLE_STATE_DIZZY:int = 10;
      
      public static var BATTLE_STATE_CONFUSION:int = 20;
      
      public static var BATTLE_STATE_SLEEP:int = 30;
      
      public static var BATTLE_STATE_POISON:int = 40;
      
      public static var BATTLE_STATE_FIRE:int = 50;
      
      public static var BATTLE_STATE_ICE:int = 60;
      
      public static var BATTLE_STATE_LIGHT:int = 70;
      
      public static var BATTLE_STATE_SILENCE:int = 80;
      
      public static var BATTLE_STATE_REBELLION:int = 90;
      
      public static var BATTLE_STATE_STONE:int = 100;
      
      BATTLE_ID[0] = [4,2,0,1,3];
      BATTLE_ID[1] = [9,7,5,6,8];
      BATTLE_ID[2] = [18,16,15,17,19];
      BATTLE_ID[3] = [13,11,10,12,14];
      BATTLE_POS[0] = new Point(2,0);
      BATTLE_POS[1] = new Point(3,0);
      BATTLE_POS[2] = new Point(1,0);
      BATTLE_POS[3] = new Point(4,0);
      BATTLE_POS[4] = new Point(0,0);
      BATTLE_POS[5] = new Point(2,1);
      BATTLE_POS[6] = new Point(3,1);
      BATTLE_POS[7] = new Point(1,1);
      BATTLE_POS[8] = new Point(4,1);
      BATTLE_POS[9] = new Point(0,1);
      BATTLE_POS[10] = new Point(2,3);
      BATTLE_POS[11] = new Point(1,3);
      BATTLE_POS[12] = new Point(3,3);
      BATTLE_POS[13] = new Point(0,3);
      BATTLE_POS[14] = new Point(4,3);
      BATTLE_POS[15] = new Point(2,2);
      BATTLE_POS[16] = new Point(1,2);
      BATTLE_POS[17] = new Point(3,2);
      BATTLE_POS[18] = new Point(0,2);
      BATTLE_POS[19] = new Point(4,2);
      
      private var _lastCmd:Array;
      
      private var nid:uint = 0;
      
      private var _newRoundTime:Number;
      
      private var _sending:Boolean;
      
      private const BATTLE_SEND_DELAY:Number = 4000;
      
      public var battleFieldId:String = null;
      
      private var _cmdAry:Array;
      
      private var _core:Core;
      
      public function Battle()
      {
         super();
      }
      
      public function battleAuto() : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:Array = null;
         var _loc11_:Object = null;
         var _loc12_:Object = null;
         var _loc13_:Boolean = false;
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc1_:* = _core.view.getUI(ViewManager.STAGE_BATTLE);
         var _loc2_:Player = _core.player;
         var _loc3_:int = _loc2_.battleId;
         if(GamePredef.GLOBAL_SETTING.bs1 > 0)
         {
            if(_loc2_.currentHp / _loc2_.property.finalHp * 100 < GamePredef.GLOBAL_SETTING.p2)
            {
               if(GamePredef.GLOBAL_SETTING.bt1 == GamePredef.TBL_SKILL)
               {
                  _loc4_ = null;
                  if(Boolean(GamePredef.GLOBAL_SETTING.bs1) && GameData.d[GamePredef.TBL_SKILL][GamePredef.GLOBAL_SETTING.bs1].targetType == SKILL_TARGET_TYPE_ENEMEY)
                  {
                     _loc4_ = battleGetRandomEnemy(_loc1_.cList);
                     _loc3_ = -1;
                     if(_loc4_)
                     {
                        _loc3_ = int(_loc4_.battleId);
                     }
                  }
                  battleCmd(_loc3_,GamePredef.BATTLE_ACTION_SKILL,GamePredef.GLOBAL_SETTING.bs1);
                  return;
               }
               _loc5_ = _core.getItemNum(GamePredef.TBL_ITEM_TEMPLATE,GamePredef.GLOBAL_SETTING.bs1);
               if((Boolean(_loc5_)) && Boolean(_loc5_.slot))
               {
                  battleCmd(_loc3_,GamePredef.BATTLE_ACTION_ITEM,_loc5_.slot.id);
                  return;
               }
            }
         }
         if(GamePredef.GLOBAL_SETTING.bs9 > 0)
         {
            if(_loc2_.currentMp / _loc2_.property.finalMp * 100 < GamePredef.GLOBAL_SETTING.p3)
            {
               _loc6_ = _core.getItemNum(GamePredef.TBL_ITEM_TEMPLATE,GamePredef.GLOBAL_SETTING.bs9);
               if((Boolean(_loc6_)) && Boolean(_loc6_.slot))
               {
                  battleCmd(_loc3_,GamePredef.BATTLE_ACTION_ITEM,_loc6_.slot.id);
                  return;
               }
            }
         }
         if(GamePredef.GLOBAL_SETTING.bs3 > 0)
         {
            _loc7_ = battleGetGroupPlayerList(_loc1_.cList);
            for each(_loc8_ in _loc7_)
            {
               if(_loc8_.hp / _loc8_.hpMax * 100 < GamePredef.GLOBAL_SETTING.p4)
               {
                  _loc3_ = int(_loc8_.battleId);
                  if(GamePredef.GLOBAL_SETTING.bt3 == GamePredef.TBL_SKILL)
                  {
                     _loc4_ = null;
                     if(Boolean(GamePredef.GLOBAL_SETTING.bs3) && GameData.d[GamePredef.TBL_SKILL][GamePredef.GLOBAL_SETTING.bs3].targetType == SKILL_TARGET_TYPE_ENEMEY)
                     {
                        _loc4_ = battleGetRandomEnemy(_loc1_.cList);
                        _loc3_ = -1;
                        if(_loc4_)
                        {
                           _loc3_ = int(_loc4_.battleId);
                        }
                     }
                     battleCmd(_loc3_,GamePredef.BATTLE_ACTION_SKILL,GamePredef.GLOBAL_SETTING.bs3);
                     return;
                  }
                  _loc9_ = _core.getItemNum(GamePredef.TBL_ITEM_TEMPLATE,GamePredef.GLOBAL_SETTING.bs3);
                  if((Boolean(_loc9_)) && Boolean(_loc9_.slot))
                  {
                     battleCmd(_loc3_,GamePredef.BATTLE_ACTION_ITEM,_loc9_.slot.id);
                     return;
                  }
               }
            }
         }
         if(GamePredef.GLOBAL_SETTING.bs5 > 0)
         {
            _loc10_ = battleGetGroupPetList(_loc1_.cList);
            for each(_loc11_ in _loc10_)
            {
               if(_loc11_.hp / _loc11_.hpMax * 100 < GamePredef.GLOBAL_SETTING.p5)
               {
                  _loc3_ = int(_loc11_.battleId);
                  if(GamePredef.GLOBAL_SETTING.bt5 == GamePredef.TBL_SKILL)
                  {
                     _loc4_ = null;
                     if(Boolean(GamePredef.GLOBAL_SETTING.bs5) && GameData.d[GamePredef.TBL_SKILL][GamePredef.GLOBAL_SETTING.bs5].targetType == SKILL_TARGET_TYPE_ENEMEY)
                     {
                        _loc4_ = battleGetRandomEnemy(_loc1_.cList);
                        _loc3_ = -1;
                        if(_loc4_)
                        {
                           _loc3_ = int(_loc4_.battleId);
                        }
                     }
                  }
                  if(_aidPet(_loc3_))
                  {
                     return;
                  }
               }
            }
         }
         if(GamePredef.BATTLE_AUTO_DEFENSE_PLAYER)
         {
            battleCmd(-1,GamePredef.BATTLE_ACTION_DEFENCE,-1);
            return;
         }
         _loc4_ = battleGetRandomEnemy(_loc1_.cList);
         _loc3_ = -1;
         if(_loc4_)
         {
            _loc3_ = int(_loc4_.battleId);
         }
         if(GamePredef.GLOBAL_SETTING.bs7 > 0)
         {
            _loc12_ = GameData.d[GamePredef.TBL_SKILL][GamePredef.GLOBAL_SETTING.bs7];
            _loc13_ = true;
            _loc14_ = "";
            _loc15_ = "";
            if(_loc12_.useMp >= 1 && _loc2_.currentMp < _loc12_.useMp)
            {
               _loc13_ = false;
               _loc14_ = "mp";
            }
            if(_loc12_.useMp > 0 && _loc12_.useMp < 1)
            {
               if(_loc12_.useMp > _loc2_.currentMp / _loc2_.property.finalMp)
               {
                  _loc13_ = false;
                  _loc14_ = "mp";
               }
            }
            if(_loc12_.useHp >= 1 && _loc2_.currentHp < _loc12_.useHp)
            {
               _loc13_ = false;
               _loc15_ = "hp";
            }
            if(_loc12_.useHp > 0 && _loc12_.useHp < 1)
            {
               if(_loc12_.useHp > _loc2_.currentHp / _loc2_.property.finalHp)
               {
                  _loc13_ = false;
                  _loc15_ = "hp";
               }
            }
            if(!_loc13_)
            {
               if(_loc14_ == "mp" && _loc15_ == "")
               {
                  _core.sysMidNote(Language.AUTOBATTLECANVA_U[4]);
               }
               if(_loc15_ == "hp" && _loc14_ == "")
               {
                  _core.sysMidNote(Language.AUTOBATTLECANVA_U[5]);
               }
               if(_loc15_ == "hp" && _loc14_ == "mp")
               {
                  _core.sysMidNote(Language.AUTOBATTLECANVA_U[6]);
               }
            }
            if(Boolean(_loc12_) && _loc13_)
            {
               switch(Number(_loc12_.type))
               {
                  case GamePredef.SKILL_TYPE_DEFENDER:
                     _loc4_ = battleGetRandomTeam(_loc1_.cList);
                     if(_loc4_)
                     {
                        _loc3_ = int(_loc4_.battleId);
                     }
                     break;
                  case GamePredef.SKILL_TYPE_CLOSE:
                     if(!isFrontPos(_loc2_.battleId))
                     {
                        _loc4_ = battleGetRandomFrontEnemy(_loc1_.cList);
                     }
                     else
                     {
                        _loc4_ = battleGetRandomEnemy(_loc1_.cList);
                     }
                     if(_loc4_)
                     {
                        _loc3_ = int(_loc4_.battleId);
                     }
               }
               battleCmd(_loc3_,GamePredef.BATTLE_ACTION_SKILL,GamePredef.GLOBAL_SETTING.bs7);
               return;
            }
            if(!isFrontPos(_loc2_.battleId))
            {
               _loc4_ = battleGetRandomFrontEnemy(_loc1_.cList);
               if(_loc4_)
               {
                  _loc3_ = int(_loc4_.battleId);
               }
            }
            battleCmd(_loc3_,GamePredef.BATTLE_ACTION_ATTACK,0);
            return;
         }
         if(!isFrontPos(_loc2_.battleId))
         {
            _loc4_ = battleGetRandomFrontEnemy(_loc1_.cList);
            if(_loc4_)
            {
               _loc3_ = int(_loc4_.battleId);
            }
         }
         battleCmd(_loc3_,GamePredef.BATTLE_ACTION_ATTACK,0);
      }
      
      public function battleClearCmd() : void
      {
         _cmdAry = [];
      }
      
      public function watchOnEnd() : void
      {
         _core = Core.getInstance();
         _core.state = GamePredef.ST_NORMAL;
         _core.view.getUI(ViewManager.STAGE_BATTLE).endBattle();
         restoreUI();
         _core.view.getUI(ViewManager.MAIN_SELF).update();
         _cmdAry = [];
         if(Boolean(_core.player) && (!_core.player.inGroup || _core.player.isLeader || _core.player.groupAfk))
         {
            if(!_core.player.isDead)
            {
               _core.player.walkable = true;
               if(_core.player.normalView)
               {
                  _core.player.normalView.lastCheckTime = new Date().getTime();
               }
            }
         }
      }
      
      public function get currentRound() : int
      {
         return _cmdAry.length + 1;
      }
      
      public function battlePetAuto() : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:Array = null;
         var _loc11_:Object = null;
         var _loc12_:Object = null;
         var _loc13_:Object = null;
         var _loc14_:Boolean = false;
         var _loc15_:String = null;
         var _loc16_:String = null;
         var _loc1_:* = _core.view.getUI(ViewManager.STAGE_BATTLE);
         var _loc2_:Object = battleGetPlayerPet(_loc1_.cList);
         if(!_loc2_)
         {
            battleCmd(-1,GamePredef.BATTLE_ACTION_AUTO,0);
            return;
         }
         var _loc3_:int = int(_loc2_.battleId);
         if(GamePredef.GLOBAL_SETTING.bs2 > 0)
         {
            if(_loc2_.hp / _loc2_.hpMax * 100 < GamePredef.GLOBAL_SETTING.p6)
            {
               if(GamePredef.GLOBAL_SETTING.bt2 == GamePredef.TBL_SKILL)
               {
                  _loc4_ = null;
                  if(Boolean(GamePredef.GLOBAL_SETTING.bs2) && GameData.d[GamePredef.TBL_SKILL][GamePredef.GLOBAL_SETTING.bs2].targetType == SKILL_TARGET_TYPE_ENEMEY)
                  {
                     _loc4_ = battleGetRandomEnemy(_loc1_.cList);
                     _loc3_ = -1;
                     if(_loc4_)
                     {
                        _loc3_ = int(_loc4_.battleId);
                     }
                  }
                  battleCmd(_loc3_,GamePredef.BATTLE_ACTION_SKILL,GamePredef.GLOBAL_SETTING.bs2);
                  return;
               }
               _loc5_ = _core.getItemNum(GamePredef.TBL_ITEM_TEMPLATE,GamePredef.GLOBAL_SETTING.bs2);
               if((Boolean(_loc5_)) && Boolean(_loc5_.slot))
               {
                  battleCmd(_loc3_,GamePredef.BATTLE_ACTION_ITEM,_loc5_.slot.id);
                  return;
               }
            }
         }
         if(GamePredef.GLOBAL_SETTING.bs10 > 0)
         {
            if(_loc2_.mp / _loc2_.mpMax * 100 < GamePredef.GLOBAL_SETTING.p7)
            {
               _loc6_ = _core.getItemNum(GamePredef.TBL_ITEM_TEMPLATE,GamePredef.GLOBAL_SETTING.bs10);
               if((Boolean(_loc6_)) && Boolean(_loc6_.slot))
               {
                  battleCmd(_loc3_,GamePredef.BATTLE_ACTION_ITEM,_loc6_.slot.id);
                  return;
               }
            }
         }
         if(GamePredef.GLOBAL_SETTING.bs4 > 0)
         {
            _loc7_ = battleGetGroupPlayerList(_loc1_.cList);
            for each(_loc8_ in _loc7_)
            {
               if(_loc8_.hp / _loc8_.hpMax * 100 < GamePredef.GLOBAL_SETTING.p8)
               {
                  _loc3_ = int(_loc8_.battleId);
                  if(GamePredef.GLOBAL_SETTING.bt4 == GamePredef.TBL_SKILL)
                  {
                     _loc4_ = null;
                     if(Boolean(GamePredef.GLOBAL_SETTING.bs4) && GameData.d[GamePredef.TBL_SKILL][GamePredef.GLOBAL_SETTING.bs4].targetType == SKILL_TARGET_TYPE_ENEMEY)
                     {
                        _loc4_ = battleGetRandomEnemy(_loc1_.cList);
                        _loc3_ = -1;
                        if(_loc4_)
                        {
                           _loc3_ = int(_loc4_.battleId);
                        }
                     }
                     battleCmd(_loc3_,GamePredef.BATTLE_ACTION_SKILL,GamePredef.GLOBAL_SETTING.bs4);
                     return;
                  }
                  _loc9_ = _core.getItemNum(GamePredef.TBL_ITEM_TEMPLATE,GamePredef.GLOBAL_SETTING.bs4);
                  if((Boolean(_loc9_)) && Boolean(_loc9_.slot))
                  {
                     battleCmd(_loc3_,GamePredef.BATTLE_ACTION_ITEM,_loc9_.slot.id);
                     return;
                  }
               }
            }
         }
         if(GamePredef.GLOBAL_SETTING.bs6 > 0)
         {
            _loc10_ = battleGetGroupPetList(_loc1_.cList);
            for each(_loc11_ in _loc10_)
            {
               if(_loc11_.hp / _loc11_.hpMax * 100 < GamePredef.GLOBAL_SETTING.p9)
               {
                  _loc3_ = int(_loc11_.battleId);
                  if(GamePredef.GLOBAL_SETTING.bt6 == GamePredef.TBL_SKILL)
                  {
                     _loc4_ = null;
                     if(Boolean(GamePredef.GLOBAL_SETTING.bs6) && GameData.d[GamePredef.TBL_SKILL][GamePredef.GLOBAL_SETTING.bs6].targetType == SKILL_TARGET_TYPE_ENEMEY)
                     {
                        _loc4_ = battleGetRandomEnemy(_loc1_.cList);
                        _loc3_ = -1;
                        if(_loc4_)
                        {
                           _loc3_ = int(_loc4_.battleId);
                        }
                     }
                     battleCmd(_loc3_,GamePredef.BATTLE_ACTION_SKILL,GamePredef.GLOBAL_SETTING.bs6);
                     return;
                  }
                  _loc12_ = _core.getItemNum(GamePredef.TBL_ITEM_TEMPLATE,GamePredef.GLOBAL_SETTING.bs6);
                  if((Boolean(_loc12_)) && Boolean(_loc12_.slot))
                  {
                     battleCmd(_loc3_,GamePredef.BATTLE_ACTION_ITEM,_loc12_.slot.id);
                     return;
                  }
               }
            }
         }
         if(GamePredef.BATTLE_AUTO_DEFENSE_PET)
         {
            battleCmd(-1,GamePredef.BATTLE_ACTION_DEFENCE,-1);
            return;
         }
         _loc4_ = battleGetRandomEnemy(_loc1_.cList);
         _loc3_ = -1;
         if(_loc4_)
         {
            _loc3_ = int(_loc4_.battleId);
         }
         if(GamePredef.GLOBAL_SETTING.bs8 > 0)
         {
            _loc13_ = GameData.d[GamePredef.TBL_SKILL][GamePredef.GLOBAL_SETTING.bs8];
            _loc14_ = true;
            _loc15_ = "";
            _loc16_ = "";
            if(_loc13_.useMp >= 1 && _loc2_.mp < _loc13_.useMp)
            {
               _loc14_ = false;
               _loc15_ = "mp";
            }
            if(_loc13_.useMp > 0 && _loc13_.useMp < 1)
            {
               if(_loc13_.useMp > _loc2_.mp / _loc2_.mpMax)
               {
                  _loc14_ = false;
                  _loc15_ = "mp";
               }
            }
            if(_loc13_.useHp >= 1 && _loc2_.hp < _loc13_.useHp)
            {
               _loc14_ = false;
               _loc16_ = "hp";
            }
            if(_loc13_.useHp > 0 && _loc13_.useHp < 1)
            {
               if(_loc13_.useHp > _loc2_.hp / _loc2_.hpMax)
               {
                  _loc14_ = false;
                  _loc16_ = "hp";
               }
            }
            if(!_loc14_)
            {
               if(_loc15_ == "mp" && _loc16_ == "")
               {
                  _core.sysMidNote(Language.AUTOBATTLECANVA_U[7]);
               }
               if(_loc16_ == "hp" && _loc15_ == "")
               {
                  _core.sysMidNote(Language.AUTOBATTLECANVA_U[8]);
               }
               if(_loc16_ == "hp" && _loc15_ == "mp")
               {
                  _core.sysMidNote(Language.AUTOBATTLECANVA_U[9]);
               }
            }
            if(Boolean(_loc13_) && _loc14_)
            {
               switch(Number(_loc13_.type))
               {
                  case GamePredef.SKILL_TYPE_DEFENDER:
                     _loc4_ = battleGetRandomTeam(_loc1_.cList);
                     if(_loc4_)
                     {
                        _loc3_ = int(_loc4_.battleId);
                     }
                     break;
                  case GamePredef.SKILL_TYPE_CLOSE:
                     if(!isFrontPos(_loc2_.battleId))
                     {
                        _loc4_ = battleGetRandomFrontEnemy(_loc1_.cList);
                     }
                     else
                     {
                        _loc4_ = battleGetRandomEnemy(_loc1_.cList);
                     }
                     if(_loc4_)
                     {
                        _loc3_ = int(_loc4_.battleId);
                     }
               }
               battleCmd(_loc3_,GamePredef.BATTLE_ACTION_SKILL,GamePredef.GLOBAL_SETTING.bs8);
               return;
            }
            if(!isFrontPos(_loc2_.battleId))
            {
               _loc4_ = battleGetRandomFrontEnemy(_loc1_.cList);
               if(_loc4_)
               {
                  _loc3_ = int(_loc4_.battleId);
               }
            }
            battleCmd(_loc3_,GamePredef.BATTLE_ACTION_ATTACK,0);
            return;
         }
         if(!isFrontPos(_loc2_.battleId))
         {
            _loc4_ = battleGetRandomFrontEnemy(_loc1_.cList);
            if(_loc4_)
            {
               _loc3_ = int(_loc4_.battleId);
            }
         }
         battleCmd(_loc3_,GamePredef.BATTLE_ACTION_ATTACK,0);
      }
      
      private function updateUI() : void
      {
         _core.view.getUI(ViewManager.MAIN_SELF).update();
         _core.view.getUI(ViewManager.MAIN_LONGBUFF).refreshBuffPerBattle();
      }
      
      public function battleGetHLine(param1:Number, param2:Object) : Array
      {
         var _loc3_:Point = BATTLE_POS[param1];
         var _loc4_:Array = BATTLE_ID[_loc3_.y];
         var _loc5_:Array = [];
         var _loc6_:Array = [];
         _loc6_[0] = param1;
         _loc6_[1] = _loc4_[_loc3_.x - 1];
         _loc6_[2] = _loc4_[_loc3_.x + 1];
         _loc6_[3] = _loc4_[_loc3_.x - 2];
         _loc6_[4] = _loc4_[_loc3_.x + 2];
         _loc6_[5] = _loc4_[_loc3_.x - 3];
         _loc6_[6] = _loc4_[_loc3_.x + 3];
         _loc6_[7] = _loc4_[_loc3_.x - 4];
         _loc6_[8] = _loc4_[_loc3_.x + 4];
         var _loc7_:int = 0;
         while(_loc7_ < 9)
         {
            if(_loc6_[_loc7_] > -1 && Boolean(param2[_loc6_[_loc7_]]))
            {
               _loc5_.push(param2[_loc6_[_loc7_]]);
            }
            _loc7_++;
         }
         return _loc5_;
      }
      
      public function newSeq() : void
      {
         _newRoundTime = new Date().getTime();
      }
      
      public function battleGetPlayerPet(param1:Object) : Object
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(!_core.battlePet)
         {
            return null;
         }
         for(_loc2_ in param1)
         {
            _loc3_ = param1[_loc2_];
            if(Boolean(_loc3_ && _loc3_.visible && !_loc3_.leftSide) && Boolean(_loc3_.gameObject.type == GamePredef.TBL_PET) && _loc3_.gameObject.id == _core.battlePet.id)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      private function restoreUI() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Array = null;
         var _loc8_:uint = 0;
         _core.view.show(ViewManager.MAIN_SELF);
         _core.view.show(ViewManager.MAIN_PET);
         _core.view.show(ViewManager.MAIN_GROUP);
         _core.view.show(ViewManager.MAIN_MINIMAP);
         if(!_core.hidesysbar)
         {
            _core.view.show(ViewManager.MAIN_SYS_BTN_BAR);
         }
         _core.view.show(ViewManager.MAIN_AWARD_WARN);
         _core.view.getUI(ViewManager.MAIN_TEMP_BAG_WARN).restore();
         _core.view.show(ViewManager.STAGE_MAIN);
         _core.view.show(ViewManager.MAIN_DOG_FIGHT);
         _core.view.hideAll(ViewManager.TYPE_PANEL);
         _core.view.show(ViewManager.MAIN_USER_BAR);
         _core.view.show(ViewManager.MAIN_QUEST_GUIDE);
         _core.view.show(ViewManager.MAIN_ACTIVITY);
         _core.view.show(ViewManager.MAIN_LONGBUFF);
         if(Boolean(_core.wbMapId) && _core.player.posMapId == _core.wbMapId)
         {
            _core.view.show(ViewManager.PANEL_WB_BATTLEAUTO);
            _core.view.show(ViewManager.WB_RANK_CANVAS);
         }
         if(_core.classify < 1)
         {
            _core.view.show(ViewManager.MAIN_ADDICT_WARN);
         }
         _core.view.getUI(ViewManager.MAIN_USER_BAR).setAllSkill(1);
         if(Boolean(_core.player) && _core.player.posMapId == 73)
         {
            _core.view.show(ViewManager.UI_SHADE);
            _core.view.getUI(ViewManager.SHADE_PVP).showPVPShadePanel2();
         }
         if(Boolean(_core.player) && Boolean(_core.player.mapData) && Boolean(_core.player.mapData.templateId) && (int(_core.player.mapData.templateId) == 2007 || int(_core.player.mapData.templateId) == 2008 || int(_core.player.mapData.templateId) == 2009))
         {
            _loc1_ = _core.view.getUI(ViewManager.PANEL_MAZE_INFO);
            if(Boolean(_loc1_) && !_loc1_.visible)
            {
               _loc1_.visible = true;
            }
            _loc2_ = _core.view.getUI(ViewManager.MAIN_SYS);
            if(Boolean(_loc2_) && Boolean(_loc2_.sysBtnBar.visible))
            {
               _loc2_.sysBtnBar.visible = false;
            }
            _loc3_ = _core.view.getUI(ViewManager.MAIN_MINIMAP);
            if(Boolean(_loc3_) && Boolean(_loc3_.visible))
            {
               _loc3_.visible = false;
            }
            _loc4_ = _core.view.getUI(ViewManager.MAIN_QUEST_GUIDE);
            if((Boolean(_loc4_)) && Boolean(_loc4_.visible))
            {
               _loc4_.visible = false;
            }
            _loc5_ = _core.view.getUI(ViewManager.MAIN_USER_BAR);
            if((Boolean(_loc5_)) && Boolean(_loc5_.visible))
            {
               _loc5_.visible = false;
            }
            _loc6_ = _core.view.getUI(ViewManager.PANEL_BAG);
            if((Boolean(_loc6_)) && Boolean(_loc6_.visible))
            {
               _loc6_.visible = false;
            }
         }
         if(Boolean(_core.player) && _core.player.posMapId == 110)
         {
            _loc7_ = [ViewManager.MAIN_ACTIVITY,ViewManager.MAIN_MINIMAP,ViewManager.MAIN_QUEST_GUIDE];
            for each(_loc8_ in _loc7_)
            {
               _loc2_ = _core.view.getUI(_loc8_);
               if(_loc2_)
               {
                  if(_loc8_ == ViewManager.MAIN_QUEST_GUIDE)
                  {
                     _loc2_.hide();
                  }
                  else
                  {
                     _loc2_.visible = false;
                  }
               }
            }
            _loc2_ = _core.view.getUI(ViewManager.PANEL_BLOODY_BATTLE_INFO);
            if(_loc2_)
            {
               _loc2_.show();
            }
         }
         if(int(_core.player.level) >= 35 && _core.replayMCZD)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_MCZD);
            _loc2_.showPanel();
            _core.replayMCZD = false;
         }
      }
      
      public function battleOnEnd() : void
      {
         var _loc1_:Date = null;
         var _loc2_:Number = NaN;
         var _loc3_:Object = null;
         this.battleFieldId = null;
         _core = Core.getInstance();
         if(nid > 0)
         {
            _loc1_ = new Date();
            _loc2_ = _loc1_.getTime() + _loc1_.getTimezoneOffset() * 60 * 1000 - _core.serverTimeOffSet;
            _core.player.lastHitNpc = {
               "nid":nid,
               "last":_loc2_
            };
         }
         else
         {
            _core.player.lastHitNpc = null;
         }
         _core.state = GamePredef.ST_NORMAL;
         if(_core.view.getUI(ViewManager.STAGE_BATTLE))
         {
            _core.view.getUI(ViewManager.STAGE_BATTLE).endBattle();
         }
         restoreUI();
         updateUI();
         _cmdAry = [];
         if(Boolean(_core.player) && (!_core.player.inGroup || _core.player.isLeader || _core.player.groupAfk))
         {
            if(!_core.player.isDead)
            {
               _core.player.walkable = true;
               if(_core.player.normalView)
               {
                  _core.player.normalView.lastCheckTime = new Date().getTime();
               }
            }
         }
         if(Boolean(_core.player) && Boolean(_core.player.mapData) && Boolean(_core.player.mapData.templateId) && int(_core.player.mapData.templateId) == 87)
         {
            _loc3_ = _core.view.getUI(ViewManager.PANEL_TRIPLE_TURN);
            if(_loc3_)
            {
               _loc3_.visible = true;
               _loc3_.tripleHideUI();
            }
         }
      }
      
      public function battleGetGroupPlayerList(param1:Object) : Array
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc2_:Array = [];
         for(_loc3_ in param1)
         {
            _loc4_ = param1[_loc3_];
            if(Boolean((_loc4_) && _loc4_.visible && !_loc4_.leftSide) && Boolean(_loc4_.gameObject.type == GamePredef.TBL_CHARACTOR) && !_loc4_.isDead())
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      public function battleGetVNeighbor(param1:Number, param2:Object) : Object
      {
         var _loc3_:int = battleGetVNeighborBid(param1);
         return param2[_loc3_];
      }
      
      public function battleGetVLine(param1:Number, param2:Object) : Array
      {
         var _loc3_:Point = BATTLE_POS[param1];
         var _loc4_:Object = param2[param1];
         var _loc5_:Object = battleGetVNeighbor(param1,param2);
         var _loc6_:Array = [];
         if(_loc5_)
         {
            _loc6_.push(_loc5_);
         }
         _loc6_.push(_loc4_);
         if(_loc5_)
         {
            trace(_loc5_.battleId);
         }
         return _loc6_;
      }
      
      private function sendNow() : void
      {
         _lastCmd = _cmdAry;
         _core = Core.getInstance();
         _core.remote.battleUpdateCmd(_cmdAry);
         _cmdAry = [];
      }
      
      public function battleGetRandomFrontEnemy(param1:Object) : Object
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc2_:Array = [];
         for(_loc3_ in param1)
         {
            _loc4_ = param1[_loc3_];
            if(Boolean((_loc4_) && _loc4_.visible && _loc4_.leftSide) && Boolean(!_loc4_.isDead()) && !isBehindSomeOne(_loc4_.battleId,param1))
            {
               _loc2_.push(_loc4_);
            }
         }
         if(_loc2_.length > 0)
         {
            return _loc2_[int(Math.random() * _loc2_.length)];
         }
         return null;
      }
      
      public function isFrontPos(param1:int) : Boolean
      {
         var _loc2_:Point = BATTLE_POS[param1];
         if(_loc2_.y == 1 || _loc2_.y == 2)
         {
            return true;
         }
         return false;
      }
      
      private function battleSendCmd() : void
      {
         if(_sending)
         {
            return;
         }
         var _loc1_:Object = _core.view.getUI(ViewManager.STAGE_BATTLE);
         _loc1_.cPlayerCmd.hide();
         _loc1_.cPetCmd.hide();
         _loc1_.cTime.hide();
         _loc1_.skillCanvas.text = Language.BATTLE_S[0];
         _core.cmdState = GamePredef.ST_BATTLE_WAIT;
         _core.view.hide(ViewManager.MAIN_USER_BAR);
         var _loc2_:Number = new Date().getTime() - _newRoundTime;
         if(_loc2_ < BATTLE_SEND_DELAY)
         {
            _sending = true;
            setTimeout(sendLater,BATTLE_SEND_DELAY - _loc2_);
         }
         else
         {
            sendNow();
         }
      }
      
      public function isBehindSomeOne(param1:Number, param2:Object) : Boolean
      {
         if(isFrontPos(param1))
         {
            return false;
         }
         var _loc3_:Object = battleGetVNeighbor(param1,param2);
         if(Boolean(_loc3_) && Boolean(!_loc3_.isDead()) && Boolean(_loc3_.visible))
         {
            return true;
         }
         return false;
      }
      
      public function battleGetRandomEnemy(param1:Object) : Object
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc2_:Array = [];
         for(_loc3_ in param1)
         {
            _loc4_ = param1[_loc3_];
            if((Boolean(_loc4_)) && Boolean(_loc4_.visible) && Boolean(_loc4_.leftSide) && !_loc4_.isDead())
            {
               _loc2_.push(_loc4_);
            }
         }
         if(_loc2_.length > 0)
         {
            return _loc2_[int(Math.random() * _loc2_.length)];
         }
         return null;
      }
      
      public function battleGetFrontRandomEnemy(param1:Object) : Object
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc2_:Array = [];
         for(_loc3_ in param1)
         {
            _loc4_ = param1[_loc3_];
            if((Boolean(_loc4_)) && Boolean(_loc4_.visible) && Boolean(_loc4_.leftSide) && !_loc4_.isDead())
            {
               _loc2_.push(_loc4_);
            }
         }
         if(_loc2_.length > 0)
         {
            return _loc2_[int(Math.random() * _loc2_.length)];
         }
         return null;
      }
      
      public function battleGetVNeighborPos(param1:Number) : Point
      {
         var _loc2_:int = battleGetVNeighborBid(param1);
         return BATTLE_POS[_loc2_];
      }
      
      public function newRound() : void
      {
         _sending = false;
      }
      
      private function hideUI() : void
      {
         _core.view.hide(ViewManager.MAIN_TARGET);
         _core.view.hide(ViewManager.MAIN_SELF);
         _core.view.hide(ViewManager.MAIN_PET);
         _core.view.hide(ViewManager.MAIN_GROUP);
         _core.view.hide(ViewManager.MAIN_MINIMAP);
         _core.view.hide(ViewManager.MAIN_SYS_BTN_BAR);
         _core.view.hide(ViewManager.MAIN_AWARD_WARN);
         _core.view.hide(ViewManager.MAIN_TEMP_BAG_WARN);
         _core.view.hide(ViewManager.STAGE_MAIN);
         _core.view.hide(ViewManager.MAIN_DOG_FIGHT);
         _core.view.hideAll(ViewManager.TYPE_PANEL);
         _core.view.getUI(ViewManager.MAIN_USER_BAR).setAllSkill(2);
         _core.view.hide(ViewManager.MAIN_QUEST_GUIDE);
         _core.view.hide(ViewManager.PANEL_WB_BATTLEAUTO);
         _core.view.hide(ViewManager.WB_RANK_CANVAS);
         _core.view.hide(ViewManager.MAIN_ADDICT_WARN);
         _core.view.hide(ViewManager.MAIN_LINE);
         _core.view.hide(ViewManager.POPU_STAR_INSTACE_MAP);
         _core.view.hide(ViewManager.MAIN_ACTIVITY);
         _core.view.hide(ViewManager.MAIN_LONGBUFF);
         _core.view.hide(ViewManager.UI_SHADE);
         _core.view.hide(ViewManager.PANEL_PET_SOUL);
         _core.view.hide(ViewManager.POPU_SOUL_PRODUCT);
         _core.view.hide(ViewManager.PANEL_PET_STONE);
      }
      
      public function battleGetRandomTeam(param1:Object) : Object
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc2_:Array = [];
         for(_loc3_ in param1)
         {
            _loc4_ = param1[_loc3_];
            if(Boolean((_loc4_) && _loc4_.visible) && Boolean(!_loc4_.leftSide) && !_loc4_.isDead())
            {
               _loc2_.push(_loc4_);
            }
         }
         if(_loc2_.length > 0)
         {
            return _loc2_[int(Math.random() * _loc2_.length)];
         }
         return null;
      }
      
      public function battleGetGroupList(param1:Object) : Array
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc2_:Array = [];
         for(_loc3_ in param1)
         {
            _loc4_ = param1[_loc3_];
            if(Boolean((_loc4_) && _loc4_.visible) && Boolean(!_loc4_.leftSide) && !_loc4_.isDead())
            {
               _loc2_.push(_loc4_.battleId);
            }
         }
         return _loc2_;
      }
      
      public function battleGetRandom(param1:Number, param2:Object, param3:int) : Array
      {
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc4_:* = int(param3 - 1);
         var _loc5_:Object = param2[param1];
         var _loc6_:Array = [];
         for(_loc7_ in param2)
         {
            _loc8_ = param2[_loc7_];
            if(Boolean((_loc8_) && _loc8_.visible && _loc8_.sameGroup(_loc5_)) && Boolean(_loc8_.battleId != param1) && !_loc8_.isDead())
            {
               if(_loc4_-- > 0)
               {
                  _loc6_.push(_loc8_);
               }
            }
         }
         _loc6_.push(_loc5_);
         return _loc6_;
      }
      
      public function battleGetCross(param1:Number, param2:Object) : Array
      {
         var _loc3_:Point = BATTLE_POS[param1];
         var _loc4_:Object = param2[param1];
         var _loc5_:Object = battleGetVNeighbor(param1,param2);
         var _loc6_:Object = param2[BATTLE_ID[_loc3_.y][_loc3_.x - 1]];
         var _loc7_:Object = param2[BATTLE_ID[_loc3_.y][_loc3_.x - -1]];
         var _loc8_:Array = [];
         if(_loc5_)
         {
            _loc8_.push(_loc5_);
         }
         if(_loc6_)
         {
            _loc8_.push(_loc6_);
         }
         if(_loc7_)
         {
            _loc8_.push(_loc7_);
         }
         _loc8_.push(_loc4_);
         return _loc8_;
      }
      
      private function sendLater() : void
      {
         _sending = false;
         battleSendCmd();
      }
      
      public function battleGetEnemyList(param1:Object) : Array
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc2_:Array = [];
         for(_loc3_ in param1)
         {
            _loc4_ = param1[_loc3_];
            if((Boolean(_loc4_)) && Boolean(_loc4_.visible) && Boolean(_loc4_.leftSide) && !_loc4_.isDead())
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
      
      public function battleCmd(param1:Number, param2:int, param3:Number = -1, param4:int = -1) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Boolean = false;
         _core = Core.getInstance();
         _core.view.hide(ViewManager.PANEL_SKILLMANAGER);
         _core.view.hide(ViewManager.PANEL_BAG);
         if(_core.view.getUI(ViewManager.MAIN_TARGET_SELECT))
         {
            _loc5_ = _core.view.getUI(ViewManager.MAIN_TARGET_SELECT);
            if((Boolean(_loc5_)) && (_loc5_ as DisplayObject).visible)
            {
               _core.view.restoreUI();
            }
         }
         if(Boolean(_lastCmd) && param2 == GamePredef.BATTLE_ACTION_AUTO)
         {
            _cmdAry = _lastCmd;
            battleSendCmd();
            return;
         }
         _cmdAry.push({
            "tid":param1,
            "action":param2,
            "id":param3,
            "level":param4
         });
         if(_cmdAry.length >= 2)
         {
            battleSendCmd();
            return;
         }
         _loc5_ = _core.view.getUI(ViewManager.STAGE_BATTLE);
         _loc5_.cPlayerCmd.hide();
         if(!_core.battlePet)
         {
            battleSendCmd();
         }
         else
         {
            _loc6_ = Boolean(_loc5_.petActive);
            if(_loc6_)
            {
               _core.view.getUI(ViewManager.MAIN_USER_BAR).setAllSkill(3);
               _loc5_.cPetCmd.show();
            }
            else
            {
               battleSendCmd();
            }
         }
      }
      
      public function battleOnStart(param1:Object, param2:Boolean = false, param3:Boolean = false) : void
      {
         this.battleFieldId = param1.battleFieldId;
         this.nid = param1.nid ? uint(param1.nid) : 0;
         _core = Core.getInstance();
         _core.state = GamePredef.ST_CORE_BATTLE;
         _core.player.normalView.pause();
         _core.player.walkable = false;
         _core.player.normalView.lastCheckPoint = new Point(_core.player.normalView.posX,_core.player.normalView.posY);
         hideUI();
         var _loc4_:Object = _core.view.getUI(ViewManager.MAIN_BATTLE_PLAYER);
         (_loc4_) && (_loc4_.needToShow = !param3);
         var _loc5_:* = _core.view.getUI(ViewManager.STAGE_BATTLE);
         _loc5_.startBattle(param1,param2,param3);
         _cmdAry = [];
         _newRoundTime = new Date().getTime() - BATTLE_SEND_DELAY;
         _sending = false;
      }
      
      public function battleGetTargetList(param1:Object, param2:int, param3:Object, param4:Object, param5:int) : Array
      {
         var _loc6_:Array = null;
         var _loc9_:Object = null;
         switch(Number(param5))
         {
            case BATTLE_AREA_TYPE_V:
               _loc6_ = battleGetVLine(param4.battleId,param1);
               break;
            case BATTLE_AREA_TYPE_H:
               _loc6_ = battleGetHLine(param4.battleId,param1);
               break;
            case BATTLE_AREA_TYPE_C:
               _loc6_ = battleGetCross(param4.battleId,param1);
               break;
            case BATTLE_AREA_TYPE_R:
               _loc6_ = battleGetRandom(param4.battleId,param1,param2);
               break;
            default:
               _loc6_ = battleGetRandom(param4.battleId,param1,param2);
         }
         var _loc7_:Array = [];
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            _loc9_ = _loc6_[_loc8_];
            if((Boolean(_loc9_)) && Boolean(!_loc9_.isDead()) && Boolean(_loc9_.visible))
            {
               _loc7_.push(_loc9_);
            }
            _loc8_++;
         }
         return _loc7_;
      }
      
      private function _aidPet(param1:Number) : Boolean
      {
         var _loc7_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:Object = _core.data.getGameData(GamePredef.TBL_SKILL,GamePredef.GLOBAL_SETTING.bs5);
         var _loc4_:Object = _core.battle.battleGetPlayerPet(_core.view.getUI(ViewManager.STAGE_BATTLE).cList);
         var _loc5_:Boolean = null != _loc3_ && _loc3_.targetType == Battle.SKILL_TARGET_TYPE_SELF_PET;
         var _loc6_:Boolean = (_loc5_) && null != _loc4_ && _loc4_.battleId == param1;
         if(GamePredef.GLOBAL_SETTING.bt5 == GamePredef.TBL_SKILL)
         {
            if(!_loc5_ || _loc6_)
            {
               battleCmd(param1,GamePredef.BATTLE_ACTION_SKILL,GamePredef.GLOBAL_SETTING.bs5);
               _loc2_ = true;
            }
         }
         else
         {
            _loc7_ = _core.getItemNum(GamePredef.TBL_ITEM_TEMPLATE,GamePredef.GLOBAL_SETTING.bs5);
            if((Boolean(_loc7_)) && Boolean(_loc7_.slot))
            {
               battleCmd(param1,GamePredef.BATTLE_ACTION_ITEM,_loc7_.slot.id);
               _loc2_ = true;
            }
         }
         return _loc2_;
      }
      
      public function battleGetVNeighborBid(param1:Number) : int
      {
         var _loc3_:int = 0;
         var _loc2_:Point = BATTLE_POS[param1];
         if(_loc2_.y == 0 || _loc2_.y == 2)
         {
            _loc3_ = int(BATTLE_ID[_loc2_.y - -1][_loc2_.x]);
         }
         else
         {
            _loc3_ = int(BATTLE_ID[_loc2_.y - 1][_loc2_.x]);
         }
         return _loc3_;
      }
      
      public function battleGetGroupPetList(param1:Object) : Array
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc2_:Array = [];
         for(_loc3_ in param1)
         {
            _loc4_ = param1[_loc3_];
            if(Boolean((_loc4_) && _loc4_.visible && !_loc4_.leftSide) && Boolean(_loc4_.gameObject.type == GamePredef.TBL_PET) && !_loc4_.isDead())
            {
               _loc2_.push(_loc4_);
            }
         }
         return _loc2_;
      }
   }
}

