package com.qeedoo.ui.view.compGameStage
{
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.object.Building;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.CustomMenu;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TimerEvent;
   import mx.controls.Menu;
   import mx.core.Application;
   import mx.events.MenuEvent;
   import mx.utils.ObjectUtil;
   
   public class BuildingView extends CreatureView
   {
      
      public var online:Boolean = true;
      
      private var _core:Core = Core.getInstance();
      
      public function BuildingView()
      {
         super();
         _textName.textColor = 13434828;
      }
      
      public function showNewBuildManager() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_CONSTRUCTIONMANAGER);
         _loc1_.showNewBuild(this.gameObject);
      }
      
      private function showMenu(param1:Object) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:Menu = null;
         var _loc2_:Array = new Array();
         var _loc3_:Object = null;
         for(_loc4_ in param1)
         {
            if(!isNaN(Number(_loc4_)))
            {
               if(param1[_loc4_] != null)
               {
                  _loc3_ = param1[_loc4_];
                  _loc2_.push({
                     "label":_loc3_.name,
                     "func":_loc3_.func,
                     "bid":_loc3_.bid
                  });
               }
            }
         }
         _loc5_ = CustomMenu.createMenu(null,_loc2_);
         _loc5_.addEventListener(MenuEvent.ITEM_CLICK,menuClickListener);
         _loc5_.show(Application.application.stage.mouseX,Application.application.stage.mouseY);
      }
      
      public function showBuildProgress() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_BUILDPROCESS);
         _loc1_.showBuild(this.gameObject);
      }
      
      public function onClick(param1:Object) : void
      {
         showMenu(param1);
      }
      
      override protected function checkVisible(param1:TimerEvent) : void
      {
         if(!_deleted && online)
         {
            visible = true;
            if(_sprite)
            {
               _sprite.play();
            }
         }
         else
         {
            visible = false;
            if(_sprite)
            {
               _sprite.stop();
            }
         }
      }
      
      override protected function resLoadCompleteHandler(param1:Event) : void
      {
         super.resLoadCompleteHandler(param1);
      }
      
      public function showUpgradeManager() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_CONSTRUCTIONMANAGER);
         _loc1_.showUpgradeBuild(this.gameObject);
      }
      
      override protected function mouseOverHandler(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      override protected function mouseDownHandler(param1:MouseEvent) : void
      {
      }
      
      public function reloadBuild(param1:Object) : void
      {
         var _loc2_:int = int(param1.tid);
         var _loc3_:* = GameData.d[GamePredef.TBL_BUILDING][_loc2_];
         var _loc4_:* = ObjectUtil.copy(_loc3_);
         _loc4_.posX = param1.posX;
         _loc4_.posY = param1.posY;
         _loc4_.posDir = param1.posDir;
         _loc4_.tid = param1.tid;
         _loc4_.id = param1.id;
         _loc4_.layer = param1.layer;
         _loc4_.buildState = param1.buildState;
         var _loc5_:Building = new Building();
         _loc5_.data = _loc4_;
         this.gameObject = _loc5_;
      }
      
      public function clickBuilding() : void
      {
         _core.remote.clickBuild(gameObject.id,gameObject.type);
      }
      
      private function menuClickListener(param1:MenuEvent) : void
      {
         if(param1.item != null)
         {
            _core.remote.execBuildFunc(param1.item.func,param1.item.bid,gameObject.type);
         }
      }
      
      public function showBuildInfo() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_BUILDINFO);
         _loc1_.showBuild(this.gameObject);
      }
   }
}

