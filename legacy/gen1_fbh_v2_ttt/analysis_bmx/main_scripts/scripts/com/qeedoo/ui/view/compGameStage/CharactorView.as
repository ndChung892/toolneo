package com.qeedoo.ui.view.compGameStage
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.object.Charactor;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.resource.AbstractGameRes;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ICharactorView;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.AreaUtil;
   import com.qeedoo.ui.view.comp.RoundedText;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.net.Responder;
   
   public class CharactorView extends CreatureView implements ICharactorView
   {
      
      private var nameColor:uint = (uint(16746496) - uint(16711680)) / 200;
      
      protected var _vipTitle:RoundedText;
      
      protected var _actTile:RoundedText;
      
      protected var _textTitle:RoundedText;
      
      public var _leaderFlag:DisplayObject;
      
      protected var _pvpColor:int;
      
      protected var _textGuild:RoundedText;
      
      protected var _route:Array;
      
      protected var _titlePrefix:String;
      
      public var _leagueFlag:DisplayObject;
      
      protected var _titleStyle:String;
      
      private var _colorNormal:uint;
      
      private var _nameNormal:String;
      
      protected var _rectX:int;
      
      protected var _rectY:int;
      
      protected var _core:Core = Core.getInstance();
      
      public function CharactorView()
      {
         super();
         _speed = MOVE_SPEED_NORMAL;
         _leaderFlag = new (ResManager.UI_LEADER_FLAG as Class)();
         _textTitle = new RoundedText();
         _vipTitle = new RoundedText();
         _actTile = new RoundedText();
         _body.addChild(_vipTitle);
         _body.addChild(_textTitle);
         _body.addChild(_actTile);
         _textTitle.x = _textName.x;
         _textTitle.x = -_textTitle.textWidth / 2;
         _textTitle.y = 10;
         _vipTitle.y = _textName.y;
         _actTile.y = _textName.y + 15;
      }
      
      public function updateTitlePrefix() : void
      {
         if(_gameObject.t == GamePredef.BROTHER_TITLE_ID)
         {
            setTitle(_gameObject.t);
         }
      }
      
      private function stateLoaded(param1:int) : void
      {
         state = param1;
      }
      
      public function setNewName(param1:String) : void
      {
         _textName.text = param1;
         _gameObject.name = param1;
         fixTextsPos();
      }
      
      override protected function setName() : void
      {
         if(int(_gameObject.honor) <= 0)
         {
            setNormalName();
         }
         else
         {
            setRedName(_gameObject.honor);
         }
         super.setName();
         setTitle(_gameObject.t);
         setVipTitle(_gameObject.vipT);
         setActTitle(_gameObject.actT);
      }
      
      public function updateTitle(param1:Number) : void
      {
         _gameObject.t = param1;
         setTitle(param1);
      }
      
      override public function get state() : int
      {
         return _state;
      }
      
      override public function destroy() : void
      {
         if(_deleted)
         {
            return;
         }
         super.destroy();
         hideLeaderFlag();
         _leaderFlag = null;
      }
      
      public function set speed(param1:int) : void
      {
         _speed = param1;
         _gameObjMove.stepLength = param1;
      }
      
      public function setNormalName() : void
      {
         _textName.textColor = 16776960;
      }
      
      public function setTitle(param1:Number) : void
      {
         var _loc4_:Object = null;
         _titlePrefix = "";
         if(_gameObject.t > 0)
         {
            _loc4_ = _core.data.getGameData(GamePredef.TBL_TITLE,param1);
            if(_loc4_)
            {
               _titlePrefix = _loc4_.n;
               _titleStyle = _loc4_.a;
            }
         }
         if(_gameObject.t == GamePredef.BROTHER_TITLE_ID)
         {
            _titlePrefix += "-" + _gameObject.broT;
         }
         var _loc2_:int = 0;
         if(Boolean(_flyer_cg) || doubleFly)
         {
            _loc2_ = 50;
         }
         _textTitle.visible = true;
         _textTitle.y = 10 + _loc2_;
         _textName.y = 25 + _loc2_;
         super.setFeMaleState();
         if(_titlePrefix == "" || _titleStyle == "")
         {
            _textTitle.visible = false;
            _textName.y = 10 + _loc2_;
            fixTextsPos();
            return;
         }
         var _loc3_:Array = _titleStyle.split("|");
         if(!_loc3_.length)
         {
            trace("ERROR: title template style error.");
            return;
         }
         _textTitle.textColor = uint(_loc3_[0]);
         _textTitle.text = _loc3_[1] + _titlePrefix + _loc3_[2];
         fixTextsPos();
      }
      
      override protected function actionOnCreature(param1:MouseEvent, param2:int) : void
      {
         var _loc3_:Charactor = null;
         var _loc4_:Boolean = false;
         var _loc5_:* = undefined;
         super.actionOnCreature(param1,param2);
         switch(param2)
         {
            case GamePredef.ACTION_INVITE:
               _core.remote.groupInvite(_gameObject.id);
               break;
            case GamePredef.ACTION_OBSERVE:
               _core.view.getUI(ViewManager.PANEL_CHARACTORINFO).showChaInfo(_gameObject.id);
               break;
            case GamePredef.ACTION_PK:
               _loc3_ = _core.getCharactor(_gameObject.id);
               _loc4_ = AreaUtil.getRectArea(GameData.d[GamePredef.TBL_MAP][_loc3_.posMapId].sArea,posX,posY);
               if(_loc4_)
               {
                  _core.sysMidNote(Language.CHARACTORVIEW_S[0]);
                  break;
               }
               _loc5_ = _core.view.getUI(ViewManager.MAIN_SYS);
               trace(_loc5_.btnPK,_loc5_.btnPK.styleName);
               if(_core.battleServer.inBattleServer)
               {
                  _core.remote.assassinate(_gameObject.id);
               }
               else
               {
                  _core.remote.PVPStartClient(_gameObject.id);
               }
               break;
            case GamePredef.ACTION_TRADE:
               _core.view.getUI(ViewManager.PANEL_TRADE).newTrade(_gameObject.id,_gameObject.name);
         }
      }
      
      public function updateVipTitle(param1:Number) : void
      {
         _gameObject.vipT = param1;
         setVipTitle(param1);
      }
      
      public function setNameProtected(param1:Boolean) : void
      {
         if(param1)
         {
            if(_textName.text.indexOf(Language.CHARACTORVIEW_S[1]) < 0)
            {
               _nameNormal || (_nameNormal = _textName.text);
               _colorNormal || (_colorNormal = _textName.textColor);
               _textName.text += Language.CHARACTORVIEW_S[1];
            }
            _textName.textColor = 65280;
         }
         else
         {
            _nameNormal && (_textName.text = _nameNormal);
            _colorNormal && (_textName.textColor = _colorNormal);
         }
      }
      
      public function resume() : void
      {
         _gameObject.moveRoute = _route;
         _route = null;
         _gameObjMove.resume();
         if(_gameObjMove.active)
         {
            behavior(AbstractGameRes.BH_RUN_NORMAL);
         }
      }
      
      public function loadLeaderIcon() : void
      {
         _core.remote.call("getCharLeaderClient",new Responder(leaderLoaded),_gameObject.id);
      }
      
      protected function checkLeader() : void
      {
         if(_gameObject.isLeader)
         {
            showLeaderFlag();
         }
         else
         {
            hideLeaderFlag();
         }
      }
      
      public function setLeagueFlag(param1:int) : void
      {
         if(param1 == 1)
         {
            _leagueFlag = new (ResManager.LEAGUE_ICON_RED as Class)();
            _leagueFlag.x = -5;
            _leagueFlag.y = -120;
            this._body.addChild(_leagueFlag);
         }
         else if(param1 == 2)
         {
            _leagueFlag = new (ResManager.LEAGUE_ICON_BLUE as Class)();
            _leagueFlag.x = -5;
            _leagueFlag.y = -120;
            this._body.addChild(_leagueFlag);
         }
         else if(param1 == -1 || param1 == 0)
         {
            if(Boolean(_leagueFlag) && Boolean(_leagueFlag.parent))
            {
               this._body.removeChild(_leagueFlag);
            }
         }
      }
      
      private function fixTextsPos() : void
      {
         if(_core.checkTitleType(_gameObject.vipT,GamePredef.TITLE_KIND_VIP) || _core.checkTitleShow(_gameObject.vipT))
         {
            if(_vipTitle.visible)
            {
               _textName.x = -_textName.textWidth / 2 + _vipTitle.width / 2;
               _vipTitle.x = -_textName.textWidth / 2 - _vipTitle.width / 2;
               _vipTitle.y = _textName.y;
            }
            else
            {
               _textName.x = -_textName.textWidth / 2;
            }
         }
         if(_core.checkTitleType(_gameObject.actT,GamePredef.TITLE_KIND_ACTIVE))
         {
            _actTile.x = -_textName.textWidth / 2 - (_actTile.width - _textName.width) / 2;
            _actTile.y = _textName.y + 15;
         }
      }
      
      public function setVipTitle(param1:Number) : void
      {
         var _loc2_:* = "";
         var _loc3_:* = "";
         var _loc4_:Object = null;
         if(param1 > 0 && _core.checkTitleType(param1,GamePredef.TITLE_KIND_VIP))
         {
            _loc4_ = _core.data.getGameData(GamePredef.TBL_TITLE,param1);
            if(_loc4_)
            {
               _loc2_ = _loc4_.n;
               _loc3_ = _loc4_.a;
            }
            _gameObject.vipT = param1;
         }
         _vipTitle.visible = true;
         if(_loc2_ == "" || _loc3_ == "")
         {
            _vipTitle.visible = false;
            _textName.x = -_textName.textWidth / 2;
            return;
         }
         if(param1 > 0 && _core.checkTitleShow(_gameObject.vipT))
         {
            _vipTitle.visible = true;
            _textTitle.visible = true;
            return;
         }
         if(param1 < 0 && _core.checkTitleShow(_gameObject.vipT))
         {
            _vipTitle.visible = false;
            _textTitle.visible = true;
            return;
         }
         var _loc5_:Array = _loc3_.split("|");
         if(!_loc5_.length)
         {
            trace("ERROR: title template style error.");
            return;
         }
         _vipTitle.textColor = uint(_loc5_[0]);
         _vipTitle.text = _loc5_[1] + _loc2_ + _loc5_[2];
         fixTextsPos();
      }
      
      public function get speed() : int
      {
         return _speed;
      }
      
      public function updateActTitle(param1:Number) : void
      {
         _gameObject.actT = param1;
         setActTitle(param1);
      }
      
      override protected function checkVisible(param1:TimerEvent) : void
      {
         var _loc2_:PetView = null;
         super.checkVisible(param1);
         if(Boolean(GamePredef.GLOBAL_SETTING.hc) || this.visible == false)
         {
            _resLoader.visible = false;
            _weaponLoader.visible = false;
            if(_mount_cg)
            {
               _mount_cg.visible = false;
            }
            spriteStoped = true;
            if(_cg)
            {
               _cg.visible = false;
               _cg.stop();
            }
            if(!_sprite)
            {
            }
            if(_weapon)
            {
               _weapon.visible = false;
               _weapon.stop();
            }
            if(_flyer_cg)
            {
               _flyer_cg.visible = false;
               _flyer_cg.stop();
            }
            if(_flyer_front)
            {
               _flyer_front.visible = false;
               _flyer_front.stop();
            }
            if(_wing_cg)
            {
               _wing_cg.visible = false;
               _wing_cg.stop();
            }
            if(fairyManager)
            {
               fairyManager.visible = false;
            }
            if(_tepe_cg)
            {
               _tepe_cg.visible = false;
            }
            if(_halo_cg)
            {
               _halo_cg.visible = false;
            }
            if(_round_cg)
            {
               _round_cg.visible = false;
            }
            if(_round_mask_cg)
            {
               _round_mask_cg.visible = false;
            }
            if(_gameObject.decoFootCode)
            {
               removeEventListener(GameEvent.BEHAVIOR_CHANGE_TO_RUN,setFootprintView);
               removeEventListener(GameEvent.BEHAVIOR_CHANGE_TO_STOP,removeFootprintView);
            }
            _loc2_ = PetView(_core.view.getP(_gameObject.id));
            if(Boolean(_loc2_) && Boolean(_loc2_._body))
            {
               _loc2_._body.visible = false;
            }
         }
         else
         {
            _resLoader.visible = true;
            _weaponLoader.visible = true;
            if(_mount_cg)
            {
               _mount_cg.visible = true;
            }
            if(_cg)
            {
               _cg.visible = true;
               _cg.play();
            }
            if(_flyer_cg)
            {
               _flyer_cg.visible = true;
               _flyer_cg.play();
            }
            if(_flyer_front)
            {
               _flyer_front.visible = true;
               _flyer_front.play();
            }
            spriteStoped = false;
            if(!_sprite)
            {
            }
            if(_weapon)
            {
               _weapon.visible = true;
               _weapon.play();
            }
            if(_wing_cg)
            {
               if(_cg.behavior != AbstractGameRes.BH_DEAD)
               {
                  _wing_cg.visible = true;
                  _wing_cg.play();
               }
            }
            if(fairyManager)
            {
               fairyManager.visible = true;
            }
            if(_tepe_cg)
            {
               _tepe_cg.visible = true;
            }
            if(_halo_cg)
            {
               _halo_cg.visible = true;
            }
            if(_round_cg)
            {
               _round_cg.visible = true;
            }
            if(_round_mask_cg)
            {
               _round_mask_cg.visible = true;
            }
            if(_gameObject.decoFootCode)
            {
               addEventListener(GameEvent.BEHAVIOR_CHANGE_TO_RUN,setFootprintView);
               addEventListener(GameEvent.BEHAVIOR_CHANGE_TO_STOP,removeFootprintView);
            }
            _loc2_ = PetView(_core.view.getP(_gameObject.id));
            if(Boolean(_loc2_) && Boolean(_loc2_._body))
            {
               _loc2_._body.visible = true;
            }
         }
         if(GamePredef.GLOBAL_SETTING.hn)
         {
            _textName.visible = false;
         }
         else
         {
            _textName.visible = true;
         }
      }
      
      override protected function resLoadCompleteHandler(param1:Event) : void
      {
         super.resLoadCompleteHandler(param1);
      }
      
      public function setRes(param1:Number) : void
      {
         _gameObject.resCode = param1;
         loadRes();
      }
      
      override protected function mouseDownHandler(param1:MouseEvent) : void
      {
         if(!_gameObject.isSelf)
         {
            _core.targetPlayer = Charactor(_gameObject);
            _core.view.getUI(ViewManager.MAIN_TARGET).update();
         }
         super.mouseDownHandler(param1);
         if(param1.ctrlKey)
         {
            _core.view.getUI(ViewManager.MAIN_SYS).wisperChat(_gameObject.name);
            return;
         }
      }
      
      public function loadStateIcon() : void
      {
         _core.remote.call("getCharStateClient",new Responder(stateLoaded),_gameObject.id);
      }
      
      public function delVipTitle() : void
      {
         _core.remote.delVipTitle();
      }
      
      public function delActiveTitle(param1:int) : void
      {
         var _loc3_:Object = null;
         var _loc2_:Object = _core.data.gameDataIndex[GamePredef.TBL_TITLE][GamePredef.TITLE_KIND_ACTIVE];
         for each(_loc3_ in _loc2_)
         {
            if(Boolean(_loc3_) && _loc3_.b == param1)
            {
               _core.remote.delActiveTitle(_loc3_.id);
               break;
            }
         }
      }
      
      private function leaderLoaded(param1:Boolean) : void
      {
         if(param1)
         {
            showLeaderFlag();
            _gameObject.isLeader = param1;
         }
         else
         {
            hideLeaderFlag();
         }
         if(Boolean(_gameObject) && Boolean(_gameObject.doubleFly))
         {
            setDoubleFlyer();
         }
      }
      
      public function setActTitle(param1:Number) : void
      {
         var _loc2_:* = "";
         var _loc3_:* = "";
         var _loc4_:Object = null;
         if(param1 > 0 && _core.checkTitleType(param1,GamePredef.TITLE_KIND_ACTIVE))
         {
            _loc4_ = _core.data.getGameData(GamePredef.TBL_TITLE,param1);
            if(_loc4_)
            {
               _loc2_ = _loc4_.n;
               _loc3_ = _loc4_.a;
            }
            _gameObject.actT = param1;
         }
         if(Boolean(_gameObject.actT) && Boolean(GamePredef.SPECIAL_TITLE_IDARR[_gameObject.actT]))
         {
            _loc2_ = _gameObject.actTN;
         }
         _actTile.visible = true;
         if(_loc2_ == "" || _loc3_ == "")
         {
            _actTile.visible = false;
            return;
         }
         var _loc5_:Array = _loc3_.split("|");
         if(!_loc5_.length)
         {
            trace("ERROR: title template style error.");
            return;
         }
         _actTile.textColor = uint(_loc5_[0]);
         _actTile.text = _loc5_[1] + _loc2_ + _loc5_[2];
         fixTextsPos();
      }
      
      public function showLeaderFlag() : void
      {
         if(_leaderFlag)
         {
            _body.addChild(_leaderFlag);
         }
      }
      
      public function hideLeaderFlag() : void
      {
         if(!_leaderFlag)
         {
            return;
         }
         if(_leaderFlag.parent)
         {
            _body.removeChild(_leaderFlag);
         }
      }
      
      public function updateSpeTitle(param1:Number) : void
      {
         _gameObject.t = param1;
         setTitle(param1);
      }
      
      public function setRedName(param1:int) : void
      {
         _textName.textColor = uint(16746496) - nameColor * param1;
      }
      
      public function pause() : void
      {
         _gameObjMove.pause();
         _route = _gameObject.moveRoute;
         behavior(AbstractGameRes.BH_BREATH_SLOW);
      }
   }
}

