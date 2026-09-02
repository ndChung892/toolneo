package com.qeedoo.ui.view.compGameStage
{
   import com.qeedoo.game.object.Building;
   import com.qeedoo.game.object.Npc;
   import com.qeedoo.game.object.SceneItem;
   import com.qeedoo.game.system.Core;
   import flash.display.DisplayObject;
   
   public class DynamicItemLayer extends DynamicItemContainer implements IItemContainer
   {
      
      public function DynamicItemLayer()
      {
         super();
      }
      
      public function addB(param1:Building) : DisplayObject
      {
         var _loc2_:BuildingView = new BuildingView();
         _loc2_.gameObject = param1;
         _loc2_.container = this;
         return _loc2_;
      }
      
      public function addView(param1:DisplayObject) : void
      {
         addChild(param1);
      }
      
      public function removeView(param1:DisplayObject) : void
      {
         removeChild(param1);
      }
      
      public function addN(param1:Npc) : DisplayObject
      {
         var _loc2_:Core = Core.getInstance();
         var _loc3_:NPCView = _loc2_.view.getN(param1.id) as NPCView;
         var _loc4_:NPCView = null;
         if(_loc3_ == null)
         {
            _loc4_ = new NPCView();
         }
         else
         {
            _loc4_ = _loc3_;
         }
         _loc4_.gameObject = param1;
         _loc4_.container = this;
         return _loc4_;
      }
      
      public function addS(param1:SceneItem) : DisplayObject
      {
         var _loc2_:SceneItemView = new SceneItemView();
         _loc2_.gameObject = param1;
         _loc2_.container = this;
         return _loc2_;
      }
      
      public function removeAll() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in getChildren())
         {
            _loc1_.destroy();
         }
         removeAllChildren();
      }
   }
}

