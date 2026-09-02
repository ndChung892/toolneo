package com.qeedoo.game.logic
{
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import flash.geom.Point;
   
   public class BattleMap
   {
      
      private var _core:Core = Core.getInstance();
      
      public function BattleMap()
      {
         super();
      }
      
      public function initBattleMap(param1:* = null) : void
      {
         _core.player.normalView.pause();
         _core.player.walkable = false;
         _core.player.normalView.lastCheckPoint = new Point(_core.player.normalView.posX,_core.player.normalView.posY);
         _core.view.show(ViewManager.POPU_STAR_INSTACE_MAP);
      }
      
      public function exitToMain() : void
      {
      }
   }
}

