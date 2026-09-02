package com.qeedoo.ui.view.compGameStage
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.resource.AbstractGameRes;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.compDragable.MapPanel;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class PetView extends CreatureView
   {
      
      private var _last_enter_time:Number;
      
      private var _uiMap:MapPanel;
      
      private var _uiStage:StageMain;
      
      private var _core:Core = Core.getInstance();
      
      public function PetView()
      {
         super();
         _uiMap = MapPanel(_core.view.getUI(ViewManager.PANEL_MAP));
         _uiStage = StageMain(_core.view.getUI(ViewManager.STAGE_MAIN));
      }
      
      override protected function followHandler(param1:Event) : void
      {
         var delayTime:Number = NaN;
         var pm:Point = null;
         var pc:Point = null;
         var len:Number = NaN;
         var distance:Number = NaN;
         var xDis:Number = NaN;
         var yDis:Number = NaN;
         var dx:Number = NaN;
         var dy:Number = NaN;
         var dp:Point = null;
         var event:Event = param1;
         var now:Number = new Date().getTime();
         var _nSpeed:Number = _speed;
         if(_last_enter_time)
         {
            delayTime = now - _last_enter_time;
            if(delayTime <= 40)
            {
               _nSpeed = _speed * delayTime * 0.025;
            }
         }
         _last_enter_time = now;
         if(!_frontC)
         {
            return;
         }
         try
         {
            pm = new Point(posX,posY);
            pc = new Point(_frontC.posX,_frontC.posY);
            len = Point.distance(pm,pc);
            distance = GamePredef.GROUP_PET_FOLLOW_DISTANCE;
            if(this._gameObject.flyingState != GamePredef.FLYING_STATE_ON_GROUND)
            {
               distance = GamePredef.GROUP_FOLLOW_DISTANCE_FLYING;
            }
            if(len > distance)
            {
               xDis = _frontC.posX - posX;
               yDis = _frontC.posY - posY;
               dx = _nSpeed * xDis / len;
               dy = _nSpeed * yDis / len;
               dp = new Point(dx,dy);
               stepTo(dp);
            }
            else if(_followOldPoint != null && _followOldPoint.equals(pm))
            {
               behavior(AbstractGameRes.BH_BREATH_SLOW);
            }
         }
         catch(e:*)
         {
         }
      }
      
      private function updateCenter() : void
      {
         _gameObject.posCenterX = _uiStage.centerX;
         _gameObject.posCenterY = _uiStage.centerY;
      }
      
      public function updateUI() : void
      {
         _uiMap.update();
         if(GamePredef.GLOBAL_SETTING.ac)
         {
            _uiStage.lockToCenter(posX,posY);
            updateCenter();
         }
      }
   }
}

