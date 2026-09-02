package com.qeedoo.ui.view.compGameStage
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.compDragable.MapPanel;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   
   public class PlayerView extends CharactorView
   {
      
      private static var SIDE_SIZE:Number = 230;
      
      private static var CHECK_DELAY:Number = 1000;
      
      private static var CHECK_DIS:Number = 100;
      
      private var _uiStage:StageMain;
      
      private var _setting:Object;
      
      public var isSelf:Boolean;
      
      public var lastCheckPoint:Point;
      
      public var lastCheckStillTime:Number;
      
      private var _uiMap:MapPanel;
      
      private var _inCenterEffect:Boolean;
      
      public var lastCheckTime:Number;
      
      public function PlayerView()
      {
         super();
         buttonMode = false;
         useHandCursor = false;
         isSelf = true;
         lastCheckTime = 0;
         lastCheckStillTime = 0;
         lastCheckPoint = new Point(0,0);
         _inCenterEffect = false;
         _uiMap = MapPanel(_core.view.getUI(ViewManager.PANEL_MAP));
         _uiStage = StageMain(_core.view.getUI(ViewManager.STAGE_MAIN));
         _core.view.getUI(ViewManager.MAIN_LONGBUFF).triggerBuffRelatedAction(this);
      }
      
      override public function set state(param1:int) : void
      {
         super.state = param1;
         var _loc2_:GameEvent = new GameEvent(GameEvent.PLAYER_STATE_CHANGE);
         _loc2_.data = param1;
         dispatchEvent(_loc2_);
      }
      
      override protected function timerHandler(param1:TimerEvent) : void
      {
      }
      
      public function startCheckBattleTimer() : void
      {
         addEventListener(Event.ENTER_FRAME,checkBattle);
      }
      
      override protected function moveEnd() : void
      {
         dispatchEvent(new Event("monopoly_move_stop"));
      }
      
      private function updateCenter() : void
      {
         _gameObject.posCenterX = _uiStage.centerX;
         _gameObject.posCenterY = _uiStage.centerY;
      }
      
      override public function walk(param1:Event) : void
      {
         if(Boolean(_gameObject.moveRoute) && _gameObject.moveRoute.length > 0)
         {
            stopCenter();
         }
         super.walk(param1);
      }
      
      override public function stopFollow() : void
      {
         super.stopFollow();
         if(gameObject)
         {
            gameObject.walkable = true;
         }
      }
      
      override protected function onWalking(param1:Event = null) : void
      {
         super.onWalking(param1);
         updateUI();
         var _loc2_:Number = new Date().getTime();
         var _loc3_:Point = new Point(posX,posY);
         var _loc4_:Number = Point.distance(lastCheckPoint,_loc3_);
         if(_core.player.mapSafe)
         {
            if(_core.player.needToCheckBattle() == false)
            {
               return;
            }
         }
         if(_loc4_ < CHECK_DIS)
         {
            return;
         }
         if(_gameObject.flyingState == GamePredef.FLYING_STATE_ON_GROUND || _gameObject.mapData.airSafe != 1)
         {
            _core.remote.cbom(posX,posY);
            lastCheckTime = _loc2_;
         }
      }
      
      override public function equipOff(param1:Number = 0) : void
      {
         super.equipOff(param1);
         _gameObject.wp = 0;
         _gameObject.ef = 0;
         _gameObject.star = 0;
      }
      
      public function checkBattle(param1:Event) : void
      {
         var _loc2_:Object = _core.view.getUI(ViewManager.MAIN_LONGBUFF);
         var _loc3_:Number = new Date().getTime();
         if(_loc3_ - lastCheckStillTime < 2.2 * CHECK_DELAY)
         {
            return;
         }
         if(_core.player.mapSafe)
         {
            if(_core.player.needToCheckBattle() == false)
            {
               return;
            }
         }
         if(_gameObject)
         {
            if(_gameObject.flyingState == GamePredef.FLYING_STATE_ON_GROUND || _gameObject.mapData.airSafe != 1)
            {
               _core.remote.cb();
               lastCheckStillTime = _loc3_;
            }
         }
      }
      
      override protected function mouseOutHandler(param1:MouseEvent) : void
      {
      }
      
      public function updateUI(param1:Boolean = true, param2:Number = -1, param3:Number = -1) : void
      {
         _uiMap.update();
         if(GamePredef.GLOBAL_SETTING.ac)
         {
            if(param1)
            {
               _uiStage.lockToCenter(posX,posY);
            }
            else
            {
               _uiStage.lockToCenter(param2,param3);
            }
            updateCenter();
         }
      }
      
      private function cushionCenter() : void
      {
         var _loc1_:Point = null;
         if(Boolean(parent) && Boolean(stage))
         {
            _loc1_ = parent.localToGlobal(new Point(posX,posY));
            if(_loc1_.x < SIDE_SIZE || _loc1_.x > stage.stageWidth - SIDE_SIZE || _loc1_.y < SIDE_SIZE || _loc1_.y > stage.stageHeight - SIDE_SIZE)
            {
               _uiStage.centerTo(posX,posY);
            }
         }
      }
      
      override public function stepTo(param1:Point) : void
      {
         super.stepTo(param1);
         updateUI();
      }
      
      override public function stopWalk() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         super.stopWalk();
         _gameObject.stop();
         if(_core.targetIP)
         {
            if(_core.targetIP.hitTestObject(_shadow))
            {
               _core.remote.sceneChange(_core.targetIP.gameObject.id);
            }
         }
         if(Boolean(_core.targetNPC) && Boolean(_core.targetNPC.view))
         {
            _loc1_ = posX - _core.targetNPC.view.posX;
            _loc2_ = posY - _core.targetNPC.view.posY;
            if(ToolKit.getDistance(_loc1_,_loc2_) < 250)
            {
               _core.targetNPC.view.clickNpc();
            }
         }
         updateUI();
         if(!GamePredef.GLOBAL_SETTING.ac)
         {
            cushionCenter();
         }
         moveEnd();
      }
      
      public function stopCheckBattleTimer() : void
      {
         removeEventListener(Event.ENTER_FRAME,checkBattle);
      }
      
      override public function equipOn(param1:Number, param2:int, param3:Boolean, param4:int, param5:Boolean = false, param6:Boolean = true) : void
      {
         super.equipOn(param1,param2,param3,param4,param5,param6);
         _gameObject.wp = param1;
         _gameObject.ee = param2;
         _gameObject.ef = param3;
         _gameObject.star = param4;
      }
      
      override protected function mouseOverHandler(param1:MouseEvent) : void
      {
      }
      
      private function stopCenter() : void
      {
         _uiStage.stopCenterEffect();
      }
      
      override public function startFollow(param1:CreatureView) : void
      {
         super.startFollow(param1);
         if(gameObject)
         {
            gameObject.walkable = false;
         }
      }
   }
}

