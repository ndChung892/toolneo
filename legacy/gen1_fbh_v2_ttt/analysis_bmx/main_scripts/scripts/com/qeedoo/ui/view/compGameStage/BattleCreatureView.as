package com.qeedoo.ui.view.compGameStage
{
   import com.qeedoo.effects.AlphaResize;
   import com.qeedoo.effects.EnterFrameMove;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.logic.Battle;
   import com.qeedoo.game.object.Charactor;
   import com.qeedoo.game.object.Creature;
   import com.qeedoo.game.object.Pet;
   import com.qeedoo.game.object.Player;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.resource.AbstractGameRes;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ICreatureView;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.Loader10;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicToolTip;
   import com.qeedoo.ui.view.comp.PropBar;
   import com.qeedoo.ui.view.comp.ScrollText;
   import com.qeedoo.ui.view.comp.TipBattle;
   import com.qeedoo.ui.view.comp.TipCre;
   import com.qeedoo.ui.view.compBattle.BattleStage;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.net.URLRequest;
   import mx.core.UIComponent;
   import mx.effects.Fade;
   import mx.events.EffectEvent;
   
   public class BattleCreatureView extends CreatureView
   {
      
      private static var _battleToolTip:TipBattle;
      
      public static const BH_DODGE:uint = 10140;
      
      public static const BH_DODGE_COOL:uint = 10150;
      
      public static const BH_RELIVE:uint = 12000;
      
      public static const BH_POSITION:uint = 14000;
      
      public static const BH_RETURN:uint = 15000;
      
      public static const BH_SUMMON:uint = 16000;
      
      public static const BH_RETURNED:uint = 17000;
      
      public static const BH_SUMMONED:uint = 18000;
      
      public static const BH_DEFENDED:uint = 19000;
      
      public static var cmdMode:Boolean = true;
      
      protected var _buffDict:Object;
      
      private var criticalEffectRoute:Array = [3,-2,1];
      
      private var creatureCloud:DisplayObject = null;
      
      protected var _scrollText:ScrollText;
      
      protected var _battleDir:int;
      
      private var _dead:Boolean;
      
      private var _showProp:Boolean;
      
      private var _battleField:BattleStage;
      
      protected var _buffContainer:Sprite;
      
      protected var _mpBar:PropBar;
      
      protected var _spBar:PropBar;
      
      private var _core:Core;
      
      protected var _barContainer:Sprite;
      
      public var isAirBattle:Boolean;
      
      public var isWatch:Boolean;
      
      protected var _guest:Boolean;
      
      protected var _hpBar:PropBar;
      
      private var _waitIcon:DisplayObject;
      
      protected var _battlePos:Point;
      
      public function BattleCreatureView(param1:Boolean, param2:*)
      {
         super();
         this.isAirBattle = param1;
         this.isWatch = param2;
         addBattleUI();
      }
      
      public static function set moveSpeedBattle(param1:int) : void
      {
         MOVE_SPEED_BATTLE = param1;
      }
      
      public function set showProp(param1:Boolean) : void
      {
         var v:Boolean = param1;
         if(v)
         {
            addChild(_barContainer);
         }
         else
         {
            try
            {
               removeChild(_barContainer);
            }
            catch(e:Object)
            {
            }
         }
      }
      
      public function showSkillArea(param1:Object) : void
      {
         var _loc3_:BattleCreatureView = null;
         var _loc2_:Array = _core.battle.battleGetTargetList(_battleField.cList,param1.targetNum,_core.player.view,this,param1.areaAttack);
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_.visible)
            {
               _loc3_.showBlue();
            }
         }
      }
      
      private function setInitBehavior() : void
      {
         var _loc1_:Function = null;
         if(_dead)
         {
            _loc1_ = _callBack;
            _callBack = null;
            behavior(AbstractGameRes.BH_DEAD);
            _callBack = _loc1_;
         }
      }
      
      public function get leftSide() : Boolean
      {
         if(_battlePos.x < GamePredef.APP_WIDTH_OLD / 2)
         {
            return true;
         }
         return false;
      }
      
      public function set battlePos(param1:Point) : void
      {
         _battlePos = param1;
      }
      
      private function closeToTarget(param1:Number, param2:BattleCreatureView) : void
      {
         if(!_gameObject || !param2)
         {
            behaviorEnd();
            return;
         }
         var _loc3_:Number = ToolKit.getDisByXY(posX,posY,param2.posX,param2.posY);
         if(_loc3_ < GamePredef.VALID_DIS_BATTLE_CLOSETO)
         {
            behavior(AbstractGameRes.BH_BREATH_SLOW);
            behaviorEnd();
            return;
         }
         _speed = param1;
         _gameObject.battleRouteTo(param2.posX,param2.posY);
      }
      
      private function addBattleUI() : void
      {
         _core = Core.getInstance();
         _barContainer = new Sprite();
         _buffContainer = new Sprite();
         _hpBar = new PropBar();
         _mpBar = new PropBar();
         _spBar = new PropBar();
         _hpBar.frontColor = GamePredef.PROPERTY_COLOR_HP;
         _mpBar.frontColor = GamePredef.PROPERTY_COLOR_MP;
         _spBar.frontColor = GamePredef.PROPERTY_COLOR_SP;
         _mpBar.y = _hpBar.y + _hpBar.height - 1;
         _spBar.y = _mpBar.y + _mpBar.height - 1;
         _barContainer.addChild(_hpBar);
         _barContainer.addChild(_mpBar);
         _barContainer.addChild(_spBar);
         addChild(_buffContainer);
         _isBattleView = true;
         _waitIcon = new (ResManager.BATTLE_CMD as Class)();
         _waitIcon.visible = false;
         addChild(_waitIcon);
         _scrollText = new ScrollText();
         addChild(_scrollText);
         _speed = MOVE_SPEED_BATTLE;
         _buffDict = {};
         showProp = true;
         if(isWatch)
         {
            _hpBar.visible = false;
            _mpBar.visible = false;
            _spBar.visible = false;
         }
      }
      
      public function get hp() : Number
      {
         return _hpBar.value;
      }
      
      public function turnBack() : void
      {
         if(_gameObject.battleId < 10)
         {
            faceTo(_guest ? 5 : 1);
         }
         else
         {
            faceTo(_guest ? 1 : 5);
         }
      }
      
      override protected function setName() : void
      {
         if(_gameObject.hasOwnProperty("gmLevel") && _gameObject.gmLevel > 0)
         {
            _namePrefix = "GM-";
            _textName.textColor = 65280;
         }
         else
         {
            _namePrefix = "";
         }
         _textName.text = _namePrefix + _gameObject.name;
         _textName.x = -_textName.textWidth / 2;
         if(!(_gameObject is Pet))
         {
            if(!(_gameObject is Player))
            {
               if(!(_gameObject is Charactor))
               {
                  if(_gameObject is Creature)
                  {
                     _textName.text = _textName.text.split("【")[0];
                     _gameObject.name = _textName.text;
                  }
               }
            }
         }
      }
      
      public function clearColor() : void
      {
         var _loc1_:Array = null;
         var _loc2_:Object = null;
         if(_resLoader)
         {
            _resLoader.filters = [];
         }
         if(Boolean(_cg) && Boolean(_cg.filters) && _cg.filters.length >= 1)
         {
            _loc1_ = new Array();
            for each(_loc2_ in _cg.filters)
            {
               _loc1_.push(_loc2_);
            }
            while(_loc1_.length > 0 && _loc1_[_loc1_.length - 1] is GlowFilter)
            {
               _loc1_.pop();
            }
            _cg.filters = _loc1_;
         }
      }
      
      public function set hp(param1:Number) : void
      {
         _hpBar.value = param1;
      }
      
      private function dodgeEndHandler(param1:Event) : void
      {
         param1.currentTarget.removeEventListener(EnterFrameMove.EFFECT_END,dodgeEndHandler);
         dodgeBack();
         alpha = 1;
      }
      
      private function checkCatchValid() : Boolean
      {
         return _gameObject.level - 5 < _core.player.level && leftSide;
      }
      
      public function battleBehavior(param1:int, param2:BattleCreatureView = null) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Creature = null;
         var _loc6_:Point = null;
         if(!_gameObject)
         {
            behaviorEnd();
            return;
         }
         var _loc3_:* = _core.view.getUI(ViewManager.POP_NEW_PLAER_GUIDE);
         if(Boolean(_loc3_) && Boolean(_loc3_.visible))
         {
            _loc3_.hide();
         }
         switch(param1)
         {
            case AbstractGameRes.BH_RUN_FAST:
               if(param2)
               {
                  closeToTarget(MOVE_SPEED_BATTLE,param2);
               }
               else
               {
                  behaviorEnd();
               }
               break;
            case AbstractGameRes.BH_RUN_NORMAL:
               if(param2)
               {
                  closeToTarget(MOVE_SPEED_NORMAL,param2);
               }
               else
               {
                  behaviorEnd();
               }
               break;
            case AbstractGameRes.BH_ATTACK:
               behavior(AbstractGameRes.BH_ATTACK);
               break;
            case AbstractGameRes.BH_MAGIC:
               behavior(AbstractGameRes.BH_MAGIC);
               break;
            case AbstractGameRes.BH_HURT:
               behavior(AbstractGameRes.BH_HURT);
               break;
            case AbstractGameRes.BH_DEAD:
               behavior(AbstractGameRes.BH_DEAD);
               break;
            case AbstractGameRes.BH_BACK:
               _loc4_ = MOVE_SPEED_BATTLE;
               if(hp <= 0)
               {
                  _loc4_ = MOVE_SPEED_POSITION;
               }
               moveToPoint(_loc4_,_battlePos.x,_battlePos.y);
               if(Boolean(_wing_cg) && !_wing_cg.visible)
               {
                  _wing_cg.visible = true;
               }
               break;
            case AbstractGameRes.BH_BREATH_SLOW:
               behavior(AbstractGameRes.BH_BREATH_SLOW);
               behaviorEnd();
               break;
            case AbstractGameRes.BH_DEFENCE:
               behavior(AbstractGameRes.BH_DEFENCE);
               break;
            case AbstractGameRes.BH_TURNBACK:
               behavior(AbstractGameRes.BH_BREATH_SLOW);
               turnBack();
               behaviorEnd();
               break;
            case AbstractGameRes.BH_TURNTO:
               behavior(AbstractGameRes.BH_BREATH_SLOW);
               if(param2)
               {
                  faceToTarget(param2);
               }
               behaviorEnd();
               break;
            case AbstractGameRes.BH_DIE:
               trace("BH_DIE");
               fadeOut();
               behaviorEnd();
               break;
            case AbstractGameRes.BH_CATCHED:
               fadeOut();
               behaviorEnd();
               break;
            case AbstractGameRes.BH_CHECKESC:
               if(Boolean(_gameObject.isSelf) && _gameObject.state == GamePredef.ST_NORMAL)
               {
                  _core.state = GamePredef.ST_NORMAL;
                  _core.player.inBattle = false;
                  _core.battle.battleOnEnd();
                  _core.remote.battleEscaped();
                  if(!_core.player.groupAfk)
                  {
                     _core.remote.groupLeave();
                  }
                  _core.remote.battlePlayEnd();
               }
               behaviorEnd();
               break;
            case AbstractGameRes.BH_ESCAPE:
               _loc5_ = _gameObject as Creature;
               trace("AbstractGameRes.BH_ESCAPE: " + _loc5_.name + " , " + _loc5_.currentHp);
               if(_loc5_.currentHp <= 0)
               {
                  behaviorEnd();
               }
               else
               {
                  _loc6_ = getEscPoint();
                  moveToPoint(MOVE_SPEED_ESCAPE,_loc6_.x,_loc6_.y);
               }
               break;
            case AbstractGameRes.BH_ESCAPED:
               fadeOut();
               behaviorEnd();
               break;
            case AbstractGameRes.BH_NOTHING:
               break;
            case AbstractGameRes.BH_RUSH:
               if(param2 == null)
               {
                  behaviorEnd();
                  return;
               }
               _speed = MOVE_SPEED_RUSH;
               _gameObject.battleRouteTo(param2.posX,param2.posY);
               break;
            case BH_DODGE:
               dodge();
               break;
            case BH_DODGE_COOL:
               dodgeCool();
               break;
            case BH_RELIVE:
               relive();
               break;
            case BH_POSITION:
               if(param2 == null)
               {
                  behaviorEnd();
                  return;
               }
               position(param2);
               break;
            case BH_RETURN:
               behavior(AbstractGameRes.BH_MAGIC);
               break;
            case BH_SUMMON:
               behavior(AbstractGameRes.BH_MAGIC);
               break;
            case BH_RETURNED:
               returned();
               break;
            case BH_SUMMONED:
               summon();
               break;
            case BH_DEFENDED:
               defended();
               break;
            default:
               behaviorEnd();
         }
      }
      
      override protected function addVisibleTimer() : void
      {
      }
      
      public function position(param1:BattleCreatureView) : void
      {
         var _loc2_:Point = _battlePos;
         _battlePos = param1.battlePos;
         param1.battlePos = _loc2_;
         var _loc3_:EnterFrameMove = new EnterFrameMove();
         _loc3_.target = this;
         _loc3_.stepLength = MOVE_SPEED_POSITION;
         _loc3_.xBy = _battlePos.x - posX;
         _loc3_.yBy = _battlePos.y - posY;
         _loc3_.play(true);
         var _loc4_:EnterFrameMove = new EnterFrameMove();
         _loc4_.target = param1;
         _loc4_.stepLength = MOVE_SPEED_POSITION;
         _loc4_.xBy = param1.battlePos.x - param1.posX;
         _loc4_.yBy = param1.battlePos.y - param1.posY;
         _loc4_.play(true);
         _loc3_.addEventListener(EnterFrameMove.EFFECT_END,positionEndHandler);
      }
      
      private function summonEnd(param1:TimerEvent) : void
      {
         behaviorEnd();
      }
      
      private function clearDefault() : void
      {
         _sprite.callBack = null;
      }
      
      public function get hpMax() : int
      {
         return _hpBar.valueMax;
      }
      
      public function getEscPointBySide(param1:Boolean) : Point
      {
         if(param1)
         {
            return new Point(posX + 30,posY + 30);
         }
         return new Point(posX - 30,posY - 30);
      }
      
      public function clearBuff() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Loader10 = null;
         for(_loc1_ in _buffDict)
         {
            _loc2_ = Loader10(_buffDict[_loc1_]);
            _loc2_.unload();
            _buffContainer.removeChild(_loc2_);
            delete _buffDict[_loc1_];
         }
      }
      
      public function set mp(param1:Number) : void
      {
         _mpBar.value = param1;
      }
      
      private function createToolTip() : TipBattle
      {
         var _loc1_:TipBattle = TipBattle(_core.view.getUI(ViewManager.TOOLTIP_BATTLE));
         _loc1_.show(infoObj);
         return _loc1_;
      }
      
      private function setBarPos() : void
      {
         var _loc1_:int = 0;
         if(isAirBattle)
         {
            _loc1_ = -GamePredef.FLIGHT_HEIGHT;
         }
         if(_cg)
         {
            _sprite = _cg;
         }
         _barContainer.y = _sprite.y + _sprite.headY - 10 + _loc1_;
         _barContainer.x = -_barContainer.width / 2;
         _waitIcon.x = -_waitIcon.width / 2 + 15;
         _waitIcon.y = _sprite.y + _sprite.headY - 20 + _loc1_;
         _sprite.callBack = _battleField.nextActionRound;
         _scrollText.y = _sprite.y + _sprite.headY - 55 + _loc1_;
         _buffContainer.x = -_buffContainer.width / 2;
         _buffContainer.y = _sprite.y + _sprite.headY - 30 + _loc1_;
      }
      
      override protected function resLoadCompleteHandler(param1:Event) : void
      {
         applyRes(param1);
      }
      
      public function get behindSomeOne() : Boolean
      {
         if(frontPos)
         {
            return false;
         }
         var _loc1_:BattleCreatureView = BattleCreatureView(_core.battle.battleGetVNeighbor(_gameObject.battleId,_battleField.cList));
         if(Boolean(_loc1_) && Boolean(!_loc1_.isDead()) && _loc1_.visible)
         {
            return true;
         }
         return false;
      }
      
      override public function behavior(param1:int, param2:int = 0) : void
      {
         var _loc3_:int = -1;
         if(_sprite)
         {
            _loc3_ = int(_sprite.behavior);
            _sprite.behavior = param1;
         }
         if(_weapon)
         {
            _weapon.behavior = param1;
         }
         if(_cg)
         {
            if(_loc3_ < 0)
            {
               _loc3_ = int(_cg.behavior);
            }
            _cg.behavior = param1;
            _cg.play(_cg.dir + "-" + _cg.behavior);
         }
         if(_weapon_cg)
         {
            _weapon_cg.behavior = param1;
            _weapon_cg.play(_weapon_cg.dir + "-" + _weapon_cg.behavior);
         }
         if(_wing_cg)
         {
            if(_loc3_ > 0 && _loc3_ == AbstractGameRes.BH_RUN_NORMAL && Boolean(wing_run_lastTune))
            {
               _wing_cg.x -= wing_run_lastTune.x;
               _wing_cg.y -= wing_run_lastTune.y;
               wing_run_lastTune = null;
            }
            else if(_loc3_ == AbstractGameRes.BH_DEAD)
            {
               _wing_cg.visible = true;
            }
            if(Boolean(param1 == AbstractGameRes.BH_RUN_NORMAL) && Boolean(WING_RUN_OFFSET[_gameObject.resCode]) && Boolean(WING_RUN_OFFSET[_gameObject.resCode].wing))
            {
               wing_run_lastTune = WING_RUN_OFFSET[_gameObject.resCode][_wing_cg.dir];
               _wing_cg.x += wing_run_lastTune.x;
               _wing_cg.y += wing_run_lastTune.y;
            }
            else if(param1 == AbstractGameRes.BH_DEAD)
            {
               _wing_cg.visible = false;
            }
            _wing_cg.play(_wing_cg.dir + "-" + _wing_cg.behavior);
         }
      }
      
      private function checkSkillValid(param1:Object) : Boolean
      {
         var _loc2_:Object = null;
         if(!param1)
         {
            return false;
         }
         switch(Number(param1.targetType))
         {
            case Battle.SKILL_TARGET_TYPE_SELF:
               if(_core.player.view != this)
               {
                  return false;
               }
               break;
            case Battle.SKILL_TARGET_TYPE_SELF_PLAYER:
               if(_core.player.view != this)
               {
                  return false;
               }
               break;
            case Battle.SKILL_TARGET_TYPE_SELF_PET:
               if(_gameObject.type != GamePredef.TBL_PET)
               {
                  return false;
               }
               _loc2_ = _core.battlePet;
               if(!_loc2_)
               {
                  return false;
               }
               if(_gameObject.id != _loc2_.id)
               {
                  return false;
               }
               break;
            case Battle.SKILL_TARGET_TYPE_ENEMEY:
               if(!leftSide)
               {
                  return false;
               }
               break;
            case Battle.SKILL_TARGET_TYPE_ENEMEY_PLAYER:
               if(!leftSide || _gameObject.type != GamePredef.TBL_CHARACTOR)
               {
                  return false;
               }
               break;
            case Battle.SKILL_TARGET_TYPE_ENEMEY_CRE:
               if(!leftSide || _gameObject.type != GamePredef.TBL_CREATURE)
               {
                  return false;
               }
               break;
            case Battle.SKILL_TARGET_TYPE_ENEMEY_NOBOSS:
               if(!leftSide || Boolean(_gameObject.bossFlag))
               {
                  return false;
               }
               break;
            case Battle.SKILL_TARGET_TYPE_TEAM:
               if(leftSide)
               {
                  return false;
               }
               break;
            case Battle.SKILL_TARGET_TYPE_TEAM_PLAYER:
               if(leftSide || _gameObject.type != GamePredef.TBL_CHARACTOR)
               {
                  return false;
               }
               break;
            case Battle.SKILL_TARGET_TYPE_TEAM_PET:
               if(leftSide || _gameObject.type != GamePredef.TBL_PET)
               {
                  return false;
               }
               break;
            case Battle.SKILL_TARGET_TYPE_ALL:
               break;
            case Battle.SKILL_TARGET_TYPE_PLAYER:
               if(_gameObject.type != GamePredef.TBL_CHARACTOR)
               {
                  return false;
               }
         }
         if(Number(param1.type) == GamePredef.SKILL_TYPE_CLOSE)
         {
            return checkAttackValid();
         }
         if(GamePredef.COUPLE_SKILL_CODE.indexOf(param1.codeName) >= 0)
         {
            if(_core.player.cpid != this.gameObject.id)
            {
               return false;
            }
         }
         return true;
      }
      
      public function showRed() : void
      {
         var _loc1_:Array = null;
         var _loc2_:Object = null;
         if(_resLoader)
         {
            _resLoader.filters = [GamePredef.FILTER_NOALLOW_SELECTED];
         }
         if(_cg)
         {
            if(!_cg.filters)
            {
               _cg.filters = [GamePredef.FILTER_NOALLOW_SELECTED];
            }
            else
            {
               _loc1_ = new Array();
               for each(_loc2_ in _cg.filters)
               {
                  _loc1_.push(_loc2_);
               }
               _loc1_.push(GamePredef.FILTER_NOALLOW_SELECTED);
               _cg.filters = _loc1_;
            }
         }
      }
      
      private function applyRes(param1:Event) : void
      {
         if(Boolean(_sprite) && _sprite.behavior != AbstractGameRes.BH_BREATH_SLOW)
         {
            return;
         }
         if(_deleted)
         {
            return;
         }
         clearDefault();
         super.resLoadCompleteHandler(param1);
         setBarPos();
         setInitBehavior();
         setBattleCloud();
      }
      
      private function globalBackEffect(param1:Number) : void
      {
         _battleField.backEffect(param1);
         behaviorEnd();
      }
      
      public function get sp() : Number
      {
         return _spBar.value;
      }
      
      private function dodgeBack() : void
      {
         var _loc1_:EnterFrameMove = new EnterFrameMove();
         _loc1_.target = this;
         _loc1_.stepLength = MOVE_SPEED_BATTLE;
         _loc1_.xBy = _battlePos.x - posX;
         _loc1_.yBy = _battlePos.y - posY;
         _loc1_.addEventListener(EnterFrameMove.EFFECT_END,dodgeBackEndHandler);
         _loc1_.play(true);
      }
      
      override protected function mouseDownHandler(param1:MouseEvent) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:String = null;
         if(_battleToolTip)
         {
            destroyToolTip(_battleToolTip);
         }
         if(!cmdMode)
         {
            return;
         }
         super.mouseDownHandler(param1);
         _core.view.restoreUI();
         clearAllColor();
         switch(_core.cmdState)
         {
            case GamePredef.ST_BATTLE_ATTACK:
               if(!checkAttackValid())
               {
                  return;
               }
               _core.battle.battleCmd(_gameObject.battleId,GamePredef.BATTLE_ACTION_ATTACK,0);
               break;
            case GamePredef.ST_BATTLE_SKILL:
               if(!checkSkillValid(_core.skill))
               {
                  return;
               }
               _core.battle.battleCmd(_gameObject.battleId,GamePredef.BATTLE_ACTION_SKILL,_core.skill.id,_core.skillLevel);
               _core.skill = null;
               _core.skillLevel = -1;
               break;
            case GamePredef.ST_BATTLE_ITEM:
               if(!checkItemValid(_core.item))
               {
                  return;
               }
               if(_core.item != null)
               {
                  _core.battle.battleCmd(_gameObject.battleId,GamePredef.BATTLE_ACTION_ITEM,_core.item.id);
                  _core.item = null;
               }
               break;
            case GamePredef.ST_BATTLE_CATCH:
               _loc2_ = 0;
               for(_loc3_ in _core.player.petList)
               {
                  _loc2_++;
               }
               if(_loc2_ >= _core.player.petMaxNum)
               {
                  _core.sysMidNote(Language.BATTLECREATUREVIEW_S[0]);
                  return;
               }
               if(!checkCatchValid())
               {
                  _core.sysMidNote(Language.BATTLECREATUREVIEW_S[1]);
                  return;
               }
               _core.battle.battleCmd(_gameObject.battleId,GamePredef.BATTLE_ACTION_CATCH);
         }
      }
      
      private function get infoObj() : Object
      {
         return {
            "hp":hp,
            "mp":mp,
            "hpMax":hpMax,
            "mpMax":mpMax,
            "sp":sp,
            "spMax":spMax,
            "level":_gameObject.level,
            "bossFlag":_gameObject.bossFlag,
            "x":posX,
            "y":posY
         };
      }
      
      public function get frontPos() : Boolean
      {
         var _loc1_:Point = Battle.BATTLE_POS[_gameObject.battleId];
         if(_loc1_.y == 1 || _loc1_.y == 2)
         {
            return true;
         }
         return false;
      }
      
      private function checkAttackValid() : Boolean
      {
         var _loc1_:BattleCreatureView = null;
         if(!leftSide)
         {
            return false;
         }
         if(!behindSomeOne)
         {
            return true;
         }
         if(_core.battle.currentRound == 1)
         {
            return !_core.player.view.behindSomeOne;
         }
         _loc1_ = BattleCreatureView(_core.battle.battleGetVNeighbor(_core.player.battleId,_battleField.cList));
         if(_loc1_)
         {
            if(_loc1_.behindSomeOne)
            {
               return false;
            }
            return true;
         }
         return false;
      }
      
      private function setBuffBarPos() : void
      {
         var _loc2_:Object = null;
         var _loc3_:Loader10 = null;
         var _loc1_:int = 0;
         for(_loc2_ in _buffDict)
         {
            _loc3_ = Loader10(_buffDict[_loc2_]);
            _loc3_.x = _loc1_ * 20;
            _loc1_++;
         }
         _buffContainer.x = _buffContainer.width / 2 - 10 - (_loc1_ - 1) * 20;
      }
      
      private function globalFrontEffect(param1:Number) : void
      {
         _battleField.frontEffect(param1);
         behaviorEnd();
      }
      
      public function set hpMax(param1:int) : void
      {
         _hpBar.valueMax = param1;
      }
      
      public function get battlePos() : Point
      {
         return _battlePos;
      }
      
      private function checkItemValid(param1:Object) : Boolean
      {
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         if(!param1)
         {
            return false;
         }
         var _loc2_:Object = _core.data.getData(GamePredef.TBL_ITEM_INSTANCE,param1.itemId);
         if(Boolean(_loc2_) && Boolean(_loc2_.tid))
         {
            _loc3_ = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][_loc2_.tid];
            _loc4_ = _core.player.level;
            if(Boolean(_loc3_) && Boolean(_loc3_.reqLevel) && Boolean(_loc4_))
            {
               if(_loc3_.reqLevel > _loc4_)
               {
                  return false;
               }
            }
            if(_loc3_.skillId)
            {
               _loc5_ = GameData.d[GamePredef.TBL_SKILL][_loc3_.skillId];
               if(_loc5_)
               {
                  if(!checkSkillValid(_loc5_))
                  {
                     return false;
                  }
               }
            }
            if(_loc3_.useType == 1 && _core.battle.currentRound != 1 || _loc3_.useType == 2 && _core.battle.currentRound == 1 || _loc3_.useType == 4)
            {
               return false;
            }
         }
         return true;
      }
      
      public function set mpMax(param1:int) : void
      {
         _mpBar.valueMax = param1;
      }
      
      private function destroyToolTip(param1:TipBattle) : void
      {
         param1.hide();
      }
      
      private function returnEnd(param1:TimerEvent) : void
      {
         behaviorEnd();
         destroy();
      }
      
      public function set spMax(param1:int) : void
      {
         _spBar.valueMax = param1;
      }
      
      public function getEscPoint() : Point
      {
         if(_gameObject.battleId < 10)
         {
            return getEscPointBySide(_guest);
         }
         return getEscPointBySide(!_guest);
      }
      
      public function addBuff(param1:Number) : void
      {
         if(param1 < 10000000 && Boolean(_buffDict[param1]))
         {
            delBuff(param1);
         }
         var _loc2_:int = 0;
         if(param1 > 10000000)
         {
            _loc2_ = Math.floor(param1 / 10000);
         }
         else
         {
            _loc2_ = param1;
         }
         var _loc3_:Object = _core.data.gameData[GamePredef.TBL_BUFF][_loc2_];
         var _loc4_:Loader10 = new Loader10();
         _buffContainer.addChild(_loc4_);
         _loc4_.load(new URLRequest(ResManager.getIconUrl(_loc3_.iconCode)));
         _loc4_.scaleX = 0.5;
         _loc4_.scaleY = 0.5;
         _buffDict[param1] = _loc4_;
         setBuffBarPos();
      }
      
      public function set speed(param1:*) : void
      {
         this._speed = param1;
      }
      
      private function setBattleCloud() : void
      {
         if(isAirBattle && (_gameObject is Pet || _gameObject is Creature && _gameObject.withCloud == 1))
         {
            if(creatureCloud == null)
            {
               creatureCloud = new (ResManager.VIEW_BATTLE_CLOUD as Class)();
               creatureCloud.x = -40;
               creatureCloud.y = -30;
               this._body.addChildAt(creatureCloud,0);
            }
            else
            {
               this._body.setChildIndex(creatureCloud,0);
            }
         }
      }
      
      private function relive() : void
      {
         var _loc1_:Fade = new Fade(this);
         _loc1_.alphaFrom = 0.8;
         _loc1_.alphaTo = 0.4;
         _loc1_.duration = 800;
         _loc1_.addEventListener(EffectEvent.EFFECT_END,reliveHandler);
         _loc1_.play();
      }
      
      private function playCriticalHit() : void
      {
         var num:int = 0;
         var bs:BattleStage = null;
         var func:Function = null;
         if(!CreatureView.LOAD_EFFECT)
         {
            return;
         }
         num = 0;
         bs = BattleStage(_core.view.getUI(ViewManager.STAGE_BATTLE));
         func = function(param1:Event):void
         {
            if(criticalEffectRoute[num])
            {
               bs.x = criticalEffectRoute[num];
               bs.y = criticalEffectRoute[num++];
            }
            else
            {
               bs.x = 0;
               bs.y = 0;
               removeEventListener(Event.ENTER_FRAME,func);
            }
         };
         addEventListener(Event.ENTER_FRAME,func);
      }
      
      override protected function mouseOutHandler(param1:MouseEvent) : void
      {
         super.mouseOutHandler(param1);
         if(_battleToolTip)
         {
            destroyToolTip(_battleToolTip);
         }
         _battleToolTip = null;
         _core.view.resoreMouse();
         clearAllColor();
      }
      
      override protected function onAddedToStage(param1:Event) : void
      {
         _callBack = _battleField.nextActionRound;
         if(_sprite)
         {
            _sprite.callBack = _callBack;
         }
         hitTestLayer = new UIComponent();
      }
      
      public function get mp() : Number
      {
         return _mpBar.value;
      }
      
      override protected function setPosition() : void
      {
         faceTo(_battleDir);
         setPos(_battlePos);
      }
      
      public function initBattleView(param1:Object, param2:Object, param3:Point, param4:int, param5:Boolean, param6:Boolean) : void
      {
         var _loc7_:Number = NaN;
         var _loc8_:Charactor = null;
         var _loc9_:Number = NaN;
         var _loc10_:Object = null;
         var _loc11_:Number = NaN;
         _battleField = BattleStage(_core.view.getUI(ViewManager.STAGE_BATTLE));
         _battleDir = param4;
         _battlePos = param3;
         _guest = param5;
         _showProp = param6;
         hpMax = param2.hpMax;
         mpMax = param2.mpMax;
         spMax = param2.spMax;
         hp = param2.hp;
         mp = param2.mp;
         sp = param2.sp;
         if(param2.type == GamePredef.TBL_PET)
         {
            _loc7_ = Number(param2.cid);
            if(_loc7_)
            {
               _loc8_ = _core.getCharactor(param2.cid);
               if(_loc8_.prsUseId)
               {
                  _loc9_ = _loc8_.prsUseId;
                  _loc10_ = GameData.d[GamePredef.TBL_PRS_SHOW][_loc9_];
                  _loc11_ = Number(_loc10_["resCode"]);
                  param1.resCode = _loc11_;
                  param2.resCode = _loc11_;
               }
            }
         }
         gameObject = param1;
         _gameObject.bossFlag = Number(_gameObject.bossFlag);
         _gameObject.battleId = param2.battleId;
         _gameObject.inBattle = true;
         if(isAirBattle)
         {
            this._body.y = -GamePredef.FLIGHT_HEIGHT;
         }
         else
         {
            this._body.y = 0;
         }
         if(_gameObject.type == GamePredef.TBL_CREATURE)
         {
            if(leftSide)
            {
               _mpBar.visible = false;
               _spBar.visible = false;
               _textName.textColor = 16777215;
               if(_gameObject.id == 1255)
               {
                  _showProp = false;
               }
            }
         }
         else if(_gameObject.type == GamePredef.TBL_PET)
         {
            _spBar.visible = false;
            if(leftSide)
            {
               _showProp = false;
            }
         }
         else if(leftSide)
         {
            _showProp = false;
         }
         if(_gameObject.bossFlag == 1)
         {
            _textName.textColor = 16711680;
         }
         else if(_gameObject.bossFlag == 2)
         {
            _textName.textColor = 65280;
         }
         if(param2.c)
         {
            _textName.textColor = param2.c;
         }
         if(hp <= 0)
         {
            _dead = true;
         }
         else
         {
            _dead = false;
         }
         this.showProp = _showProp;
      }
      
      public function isDead() : Boolean
      {
         return hp <= 0;
      }
      
      public function clearAllColor() : void
      {
         var _loc1_:BattleCreatureView = null;
         for each(_loc1_ in _battleField.cList)
         {
            if(_loc1_.visible)
            {
               _loc1_.clearColor();
            }
         }
      }
      
      public function set guest(param1:Boolean) : void
      {
         _guest = param1;
      }
      
      private function get info() : String
      {
         return Language.BATTLECREATUREVIEW_S[2] + _gameObject.level + "\n" + "HP:" + hp + "/" + hpMax + "\n" + "MP:" + mp + "/" + mpMax + "\n" + "SP:" + sp + "/" + spMax;
      }
      
      public function sameGroup(param1:BattleCreatureView) : Boolean
      {
         return param1.leftSide == leftSide;
      }
      
      public function showWaitIcon() : void
      {
         _waitIcon.visible = true;
      }
      
      public function battleState(param1:Object, param2:ICreatureView = null) : void
      {
         var isArray:*;
         var param:* = undefined;
         var buffId:* = undefined;
         var value:Object = null;
         var adjustHp:Number = NaN;
         var val:Number = NaN;
         var tView:BattleCreatureView = null;
         var sid:uint = 0;
         var hps:Number = NaN;
         var i:* = undefined;
         var midNote:String = null;
         var blueMsg:String = null;
         var sObj:Object = param1;
         var target:ICreatureView = param2;
         if(sObj == null)
         {
            return;
         }
         if(!_gameObject)
         {
            return;
         }
         isArray = function(param1:*):Boolean
         {
            var _loc3_:* = undefined;
            var _loc2_:int = 0;
            for(_loc3_ in param1)
            {
               _loc2_++;
            }
            if(0 == _loc2_)
            {
               return false;
            }
            return true;
         };
         if(sObj[GamePredef.BS_BUFF_DEL])
         {
            if(isArray(sObj[GamePredef.BS_BUFF_DEL]))
            {
               for(buffId in sObj[GamePredef.BS_BUFF_DEL])
               {
                  delBuff(Number(sObj[GamePredef.BS_BUFF_DEL][buffId]));
               }
            }
            else
            {
               delBuff(Number(sObj[GamePredef.BS_BUFF_DEL]));
            }
         }
         for(param in sObj)
         {
            if(param == GamePredef.BS_BUFF_DEL)
            {
               continue;
            }
            value = sObj[param];
            if(param == GamePredef.BS_CATCH_FAILED)
            {
               if(_core.player.id == Number(value.cid))
               {
                  if(value.rate > 0)
                  {
                     _core.sysMsg(Language.BATTLESTAGE_S[14].replace("{rate}",int(value.rate)));
                  }
                  else if(value.rate == 0)
                  {
                     _core.sysMsg(Language.BATTLESTAGE_S[13].replace("{num}",int(value.selfCatch)));
                  }
               }
            }
            switch(param)
            {
               case GamePredef.BS_SKILL:
                  if(_battleField)
                  {
                     _battleField.showSkill(value.toString());
                  }
                  break;
               case GamePredef.BS_BULLET:
                  if(target)
                  {
                     bulletTo(Number(value),target);
                  }
                  break;
               case GamePredef.BS_HURT_SP:
                  sp = Number(value);
                  _gameObject.currentSp = Number(value);
                  break;
               case GamePredef.BS_HURT_HP:
                  if(sObj[GamePredef.BS_CRI])
                  {
                     _scrollText.show(Math.round(hp - Number(value)).toString(),16711680,50,3,45);
                  }
                  else
                  {
                     _scrollText.show(Math.round(hp - Number(value)).toString());
                  }
                  hp = Number(value);
                  _gameObject.currentHp = Number(value);
                  break;
               case GamePredef.BS_HURT_MP:
                  if(sObj[GamePredef.BS_CRI])
                  {
                     _scrollText.show(Math.round(mp - Number(value)).toString(),GamePredef.PROPERTY_COLOR_MP,50,3,45);
                  }
                  else
                  {
                     _scrollText.show(Math.round(mp - Number(value)).toString(),GamePredef.PROPERTY_COLOR_MP);
                  }
                  mp = Number(value);
                  _gameObject.currentMp = Number(value);
                  break;
               case GamePredef.BS_RECOVER_SP:
                  sp = Number(value);
                  _gameObject.currentSp = Number(value);
                  break;
               case GamePredef.BS_RECOVER_HP:
                  adjustHp = Math.round(Number(value) - hp);
                  if(adjustHp >= 0)
                  {
                     if(sObj[GamePredef.BS_CRI])
                     {
                        _scrollText.show("+" + adjustHp,65280,50,3,45);
                     }
                     else
                     {
                        _scrollText.show("+" + adjustHp,65280);
                     }
                  }
                  hp = Number(value);
                  _gameObject.currentHp = Number(value);
                  if(Boolean(_gameObject.type == GamePredef.TBL_PET) && Boolean(_core.battlePet) && _gameObject.id == _core.battlePet.id)
                  {
                     _core.battlePet.currentHp = _gameObject.currentHp;
                  }
                  break;
               case GamePredef.BS_REBORN:
                  _scrollText.show(Language.BATTLESTAGE_S[12]);
                  hp = Number(value);
                  _gameObject.currentHp = Number(value);
                  if(Boolean(_gameObject.type == GamePredef.TBL_PET) && Boolean(_core.battlePet) && _gameObject.id == _core.battlePet.id)
                  {
                     _core.battlePet.currentHp = _gameObject.currentHp;
                  }
                  break;
               case GamePredef.BS_RECOVER_MP:
                  if(sObj[GamePredef.BS_CRI])
                  {
                     _scrollText.show("+" + Math.round(Number(value) - mp),GamePredef.PROPERTY_COLOR_MP,50,3,45);
                  }
                  else
                  {
                     _scrollText.show("+" + Math.round(Number(value) - mp),GamePredef.PROPERTY_COLOR_MP);
                  }
                  mp = Number(value);
                  _gameObject.currentMp = Number(value);
                  if(Boolean(_gameObject.type == GamePredef.TBL_PET) && Boolean(_core.battlePet) && _gameObject.id == _core.battlePet.id)
                  {
                     _core.battlePet.currentMp = _gameObject.currentMp;
                  }
                  break;
               case GamePredef.BS_RECOVER_TARGET_MP:
                  val = Number(value);
                  tView = target as BattleCreatureView;
                  if(tView == null)
                  {
                     return;
                  }
                  tView.mp = val;
                  tView.gameObject.currentMp = val;
                  break;
               case GamePredef.BS_RECOVER_TARGET_HP:
                  tView = target as BattleCreatureView;
                  if(tView == null)
                  {
                     return;
                  }
                  val = Number(value);
                  if(sObj[GamePredef.BS_CRI])
                  {
                     tView._scrollText.show("+" + Math.round(val - tView.hp),65280,50,3,45);
                  }
                  else
                  {
                     tView._scrollText.show("+" + Math.round(val - tView.hp),65280);
                  }
                  tView.hp = val;
                  tView.gameObject.currentHp = val;
                  break;
               case GamePredef.BS_RECOVER_TARGET_SP:
                  val = Number(value);
                  sp = val;
                  _gameObject.currentSp = val;
                  break;
               case GamePredef.BS_HURT_SHAR:
                  sid = uint(value.sid);
                  hps = Number(value.hp);
                  tView = _battleField.cList[sid];
                  if(tView == null)
                  {
                     return;
                  }
                  val = Number(hps);
                  if(sObj[GamePredef.BS_CRI])
                  {
                     tView._scrollText.show("-" + Math.round(tView.hp - val),16711680,50,3,45);
                  }
                  else
                  {
                     tView._scrollText.show("-" + Math.round(tView.hp - val),16711680);
                  }
                  tView.hp = val;
                  tView.gameObject.currentHp = val;
                  break;
               case GamePredef.BS_USE_HP:
                  hp = Math.round(Number(value));
                  _gameObject.currentHp = Number(value);
                  if(Boolean(_gameObject.type == GamePredef.TBL_PET) && Boolean(_core.battlePet) && _gameObject.id == _core.battlePet.id)
                  {
                     _core.battlePet.currentHp = _gameObject.currentHp;
                  }
                  break;
               case GamePredef.BS_USE_MP:
                  mp = Math.round(Number(value));
                  _gameObject.currentMp = Number(value);
                  if(Boolean(_gameObject.type == GamePredef.TBL_PET) && Boolean(_core.battlePet) && _gameObject.id == _core.battlePet.id)
                  {
                     if(!_core.battlePet.skillAddMp)
                     {
                        trace("BS_USE_MP >> currentMp:" + _gameObject.currentMp);
                        _core.battlePet.currentMp = _gameObject.currentMp;
                     }
                     else
                     {
                        _core.battlePet.skillAddMp = false;
                     }
                  }
                  break;
               case GamePredef.BS_USE_SP:
                  sp = Math.round(Number(value));
                  _gameObject.currentSp = sp;
                  break;
               case GamePredef.BS_FRONT_EFFECT:
                  frontEffect(Number(value));
                  break;
               case GamePredef.BS_ATTACK_EFFECT:
                  attackEffect(Number(value));
                  break;
               case GamePredef.BS_SKILL_EFFECT:
                  skillEffect(Number(value));
                  break;
               case GamePredef.BS_BUFF_ADD:
                  addBuff(value.id);
                  break;
               case GamePredef.BS_BUFF_DEL:
                  delBuff(Number(value));
                  break;
               case GamePredef.BS_BUFF_COL_DEL:
                  for(i in value)
                  {
                     delBuff(Number(value[i]));
                  }
                  break;
               case GamePredef.BS_STATUS:
                  if(value.hasOwnProperty("text"))
                  {
                     _scrollText.freeShow(value.text.toString(),uint(value.color.toString()),int(value.size.toString()),int(value.speed.toString()),int(value.range.toString()));
                  }
                  else
                  {
                     _scrollText.show(value.toString());
                  }
                  break;
               case GamePredef.BS_SAY:
                  onSay(value.toString());
                  break;
               case GamePredef.BS_BUFF_CLEAR:
                  clearBuff();
                  break;
               case GamePredef.BS_GLOBAL_FRONT_EFFECT:
                  globalFrontEffect(Number(value));
                  break;
               case GamePredef.BS_GLOBAL_BACK_EFFECT:
                  globalBackEffect(Number(value));
                  break;
               case GamePredef.BS_EXP_BATTLE:
                  _scrollText.show(value + Language.BATTLECREATUREVIEW_S[3],65280,50,3,45);
                  break;
               case GamePredef.BS_HINT:
                  onSay(value.content.toString());
                  if(_core.cid == Number(value.cid))
                  {
                     midNote = String(Language.PET_LOW_LOYALTY[2]).replace("{pet}",value.petName.toString());
                     blueMsg = String(Language.PET_LOW_LOYALTY[1]).replace("{pet}",value.petName.toString());
                     _core.sysMidNote(midNote);
                     _core.sysBlueMsg(blueMsg);
                  }
                  break;
               case GamePredef.BS_RECOVER_HP_MAX:
                  hpMax = Number(value);
                  _gameObject.hpMax = Number(value);
            }
         }
         if(sObj[GamePredef.BS_CRI])
         {
            playCriticalHit();
         }
      }
      
      public function set sp(param1:Number) : void
      {
         _spBar.value = param1;
      }
      
      private function reliveHandler(param1:Event) : void
      {
         param1.currentTarget.removeEventListener(EnterFrameMove.EFFECT_END,reliveHandler);
         behavior(AbstractGameRes.BH_BREATH_SLOW);
         alpha = 1;
         behaviorEnd();
         if(_wing_cg)
         {
            _wing_cg.visible = true;
            _wing_cg.dir = _cg.dir;
            _wing_cg.play(_wing_cg.dir + "-" + _wing_cg.behavior);
         }
      }
      
      private function moveToPoint(param1:Number, param2:int, param3:int) : void
      {
         var _loc4_:Number = ToolKit.getDisByXY(posX,posY,param2,param3);
         if(_loc4_ < GamePredef.VALID_DIS_BATTLE_BACK)
         {
            behavior(AbstractGameRes.BH_BREATH_SLOW);
            behaviorEnd();
            return;
         }
         _speed = param1;
         walkTo(param2,param3);
      }
      
      private function dodgeCool() : void
      {
         alpha = 0.3;
         dodge();
      }
      
      public function get mpMax() : int
      {
         return _mpBar.valueMax;
      }
      
      override protected function updateObjectPos() : void
      {
      }
      
      public function get spMax() : int
      {
         return _spBar.valueMax;
      }
      
      private function returned() : void
      {
         var _loc1_:AlphaResize = new AlphaResize(this);
         _loc1_.duration = 1000;
         _loc1_.alphaFrom = 1;
         _loc1_.alphaTo = 0;
         _loc1_.play();
         _loc1_.addEventListener(TimerEvent.TIMER_COMPLETE,returnEnd);
      }
      
      public function defended() : void
      {
         var _loc1_:Point = getEscPoint();
         var _loc2_:EnterFrameMove = new EnterFrameMove();
         _loc2_.target = this;
         _loc2_.stepLength = MOVE_SPEED_BATTLE;
         _loc2_.xBy = _loc1_.x - posX;
         _loc2_.yBy = _loc1_.y - posY;
         _loc2_.play();
         behaviorEnd();
      }
      
      private function dodge() : void
      {
         var _loc1_:Point = getEscPoint();
         var _loc2_:EnterFrameMove = new EnterFrameMove();
         _loc2_.target = this;
         _loc2_.stepLength = MOVE_SPEED_BATTLE;
         _loc2_.xBy = _loc1_.x - posX;
         _loc2_.yBy = _loc1_.y - posY;
         _loc2_.addEventListener(EnterFrameMove.EFFECT_END,dodgeEndHandler);
         _loc2_.play();
      }
      
      public function get guest() : Boolean
      {
         return _guest;
      }
      
      private function summon() : void
      {
         var _loc1_:AlphaResize = new AlphaResize(this);
         _loc1_.duration = 1000;
         _loc1_.play();
         _loc1_.addEventListener(TimerEvent.TIMER_COMPLETE,summonEnd);
      }
      
      public function hideWaitIcon() : void
      {
         _waitIcon.visible = false;
      }
      
      override protected function mouseOverHandler(param1:MouseEvent) : void
      {
         var _loc2_:Object = null;
         var _loc3_:TipCre = null;
         var _loc4_:Object = null;
         super.mouseOverHandler(param1);
         if(_battleToolTip)
         {
            destroyToolTip(_battleToolTip);
            _battleToolTip = null;
         }
         if(_showProp)
         {
            if(param1.shiftKey && _gameObject.type == GamePredef.TBL_CREATURE)
            {
               _loc2_ = _core.data.gameData[_gameObject.type][_gameObject.id];
               if(_loc2_)
               {
                  _loc3_ = TipCre(_core.view.getUI(ViewManager.TOOLTIP_PET));
                  _loc4_ = {
                     "temp":_loc2_,
                     "btnVisible":true,
                     "type":BasicToolTip.TYPE_TEMP
                  };
                  _loc3_.object = _loc4_;
                  _loc3_.show();
               }
            }
            else
            {
               _battleToolTip = createToolTip();
            }
         }
         if(!cmdMode)
         {
            return;
         }
         showBlue();
         switch(_core.cmdState)
         {
            case GamePredef.ST_BATTLE_ATTACK:
               if(!checkAttackValid())
               {
                  showRed();
                  return;
               }
               break;
            case GamePredef.ST_BATTLE_SKILL:
               if(!checkSkillValid(_core.skill))
               {
                  showRed();
               }
               else
               {
                  showSkillArea(_core.skill);
               }
               return;
            case GamePredef.ST_BATTLE_ITEM:
               if(!checkItemValid(_core.item))
               {
                  showRed();
               }
               break;
            case GamePredef.ST_BATTLE_CATCH:
               if(!checkCatchValid())
               {
                  showRed();
                  return;
               }
         }
      }
      
      public function get battleId() : int
      {
         return _gameObject.battleId;
      }
      
      private function dodgeBackEndHandler(param1:Event) : void
      {
         param1.currentTarget.removeEventListener(EnterFrameMove.EFFECT_END,dodgeBackEndHandler);
         alpha = 1;
         behaviorEnd();
      }
      
      public function showBlue() : void
      {
         var _loc1_:Array = null;
         var _loc2_:Object = null;
         if(_resLoader)
         {
            _resLoader.filters = [GamePredef.FILTER_ALLOW_SELECTED];
         }
         if(_cg)
         {
            if(!_cg.filters)
            {
               _cg.filters = [GamePredef.FILTER_ALLOW_SELECTED];
            }
            else
            {
               _loc1_ = new Array();
               for each(_loc2_ in _cg.filters)
               {
                  _loc1_.push(_loc2_);
               }
               _loc1_.push(GamePredef.FILTER_ALLOW_SELECTED);
               _cg.filters = _loc1_;
            }
         }
      }
      
      override protected function defaultResComplete(param1:Event) : void
      {
         super.defaultResComplete(param1);
         setBarPos();
         setBattleCloud();
      }
      
      override public function destroy() : void
      {
         super.destroy();
         if(_battleToolTip)
         {
            destroyToolTip(_battleToolTip);
         }
         if(_scrollText)
         {
            _scrollText.destroy();
            _scrollText = null;
         }
      }
      
      public function delBuff(param1:Number) : void
      {
         var _loc2_:Loader10 = null;
         if(_buffDict[param1])
         {
            _loc2_ = Loader10(_buffDict[param1]);
            _loc2_.unload();
            _buffContainer.removeChild(_loc2_);
            delete _buffDict[param1];
            setBuffBarPos();
         }
      }
      
      private function positionEndHandler(param1:Event) : void
      {
         param1.currentTarget.removeEventListener(EnterFrameMove.EFFECT_END,positionEndHandler);
         behaviorEnd();
      }
   }
}

