package com.qeedoo.ui.view.compGameStage
{
   import com.qeedoo.game.object.Building;
   import com.qeedoo.game.object.Charactor;
   import com.qeedoo.game.object.Creature;
   import com.qeedoo.game.object.Npc;
   import com.qeedoo.game.object.Pet;
   import com.qeedoo.game.object.SceneItem;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.AreaUtil;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import mx.core.UIComponent;
   
   public class ItemContainer extends UIComponent implements IItemContainer
   {
      
      private var lowerSkyLayer:Sprite;
      
      private var flyLayer:DynamicItemLayer;
      
      private var frontLayer:DynamicItemLayer;
      
      private var midLayer:DynamicItemLayer;
      
      private var backLayer:DynamicItemLayer;
      
      private var upperSkyLayer:Sprite;
      
      public function ItemContainer()
      {
         super();
         frontLayer = new DynamicItemLayer();
         backLayer = new DynamicItemLayer();
         midLayer = new DynamicItemLayer();
         lowerSkyLayer = new Sprite();
         flyLayer = new DynamicItemLayer();
         upperSkyLayer = new Sprite();
         frontLayer.mouseEnabled = false;
         frontLayer.mouseChildren = false;
         midLayer.mouseEnabled = false;
         backLayer.mouseEnabled = false;
         lowerSkyLayer.mouseEnabled = false;
         flyLayer.mouseEnabled = false;
         upperSkyLayer.mouseEnabled = false;
         addChild(backLayer);
         addChild(midLayer);
         addChild(frontLayer);
         addChild(lowerSkyLayer);
         addChild(flyLayer);
         addChild(upperSkyLayer);
      }
      
      public function addB(param1:Building) : DisplayObject
      {
         switch(Number(param1.layer))
         {
            case 0:
               return backLayer.addB(param1);
            case 1:
               return midLayer.addB(param1);
            case 2:
               return frontLayer.addB(param1);
            default:
               return null;
         }
      }
      
      public function get middleLayer() : DynamicItemLayer
      {
         return midLayer;
      }
      
      public function sortChildren() : void
      {
         frontLayer.sortChildren();
         backLayer.sortChildren();
         midLayer.sortChildren();
         flyLayer.sortChildren();
      }
      
      public function addC(param1:Charactor) : DisplayObject
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:Core = null;
         if(param1.flyingState == GamePredef.FLYING_STATE_ON_GROUND)
         {
            return midLayer.addC(param1);
         }
         _loc2_ = flyLayer.addC(param1);
         _loc3_ = Core.getInstance();
         if(Boolean(_loc3_.player) && _loc3_.player.flyingState == GamePredef.FLYING_STATE_IN_THE_AIR)
         {
            param1.normalView.scaleX = GamePredef.FLYING_PLAYER_ZOOM_RATE / GamePredef.FLYING_ZOOM_RATE;
            param1.normalView.scaleY = GamePredef.FLYING_PLAYER_ZOOM_RATE / GamePredef.FLYING_ZOOM_RATE;
         }
         return _loc2_;
      }
      
      public function clearClouds(param1:Boolean = true) : void
      {
         AreaUtil.clearClouds(lowerSkyLayer,param1);
         AreaUtil.clearClouds(upperSkyLayer,param1);
      }
      
      public function removeAll() : void
      {
         frontLayer.removeAll();
         backLayer.removeAll();
         midLayer.removeAll();
         flyLayer.removeAll();
         clearClouds(false);
      }
      
      public function switchC(param1:Creature, param2:Boolean) : void
      {
         if(param2)
         {
            if(midLayer.contains(DisplayObject(param1.normalView)))
            {
               midLayer.removeView(DisplayObject(param1.normalView));
               flyLayer.addView(DisplayObject(param1.normalView));
            }
            param1.normalView.container = flyLayer;
         }
         else
         {
            if(flyLayer.contains(DisplayObject(param1.normalView)))
            {
               flyLayer.removeView(DisplayObject(param1.normalView));
               midLayer.addView(DisplayObject(param1.normalView));
            }
            param1.normalView.container = midLayer;
            param1.normalView.scaleX = 1;
            param1.normalView.scaleY = 1;
         }
      }
      
      public function addS(param1:SceneItem) : DisplayObject
      {
         switch(Number(param1.data.layer))
         {
            case 0:
               return backLayer.addS(param1);
            case 1:
               return midLayer.addS(param1);
            case 2:
               return frontLayer.addS(param1);
            default:
               return null;
         }
      }
      
      public function addN(param1:Npc) : DisplayObject
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:Core = null;
         switch(Number(param1.layer))
         {
            case 0:
               return backLayer.addN(param1);
            case 1:
               return midLayer.addN(param1);
            case 2:
               return frontLayer.addN(param1);
            case 3:
               param1.flyingState = GamePredef.FLYING_STATE_IN_THE_AIR;
               _loc2_ = flyLayer.addN(param1);
               _loc3_ = Core.getInstance();
               if(Boolean(_loc3_.player) && _loc3_.player.flyingState == GamePredef.FLYING_STATE_IN_THE_AIR)
               {
                  _loc2_.scaleX = GamePredef.FLYING_PLAYER_ZOOM_RATE / GamePredef.FLYING_ZOOM_RATE;
                  _loc2_.scaleY = GamePredef.FLYING_PLAYER_ZOOM_RATE / GamePredef.FLYING_ZOOM_RATE;
               }
               return _loc2_;
            default:
               return null;
         }
      }
      
      public function addP(param1:Pet) : DisplayObject
      {
         var _loc3_:DisplayObject = null;
         var _loc2_:Core = Core.getInstance();
         if(_loc2_.getCharactor(param1.cid).flyingState == GamePredef.FLYING_STATE_ON_GROUND || _loc2_.getCharactor(param1.cid).flyingState == GamePredef.FLYING_STATE_LANDING)
         {
            _loc3_ = midLayer.addP(param1);
         }
         else
         {
            param1.flyingState = GamePredef.FLYING_STATE_IN_THE_AIR;
            _loc3_ = flyLayer.addP(param1);
            if(_loc2_.getCharactor(param1.cid).flyingState == GamePredef.FLYING_STATE_IN_THE_AIR || _loc2_.getCharactor(param1.cid).flyingState == GamePredef.FLYING_STATE_PRE_LANDING || _loc2_.getCharactor(param1.cid).flyingState == GamePredef.FLYING_STATE_TAKING_OFF)
            {
               if(!_loc2_.player || _loc2_.player.flyingState != GamePredef.FLYING_STATE_ON_GROUND)
               {
                  param1.normalView.scaleX = GamePredef.FLYING_PLAYER_ZOOM_RATE / GamePredef.FLYING_ZOOM_RATE;
                  param1.normalView.scaleY = GamePredef.FLYING_PLAYER_ZOOM_RATE / GamePredef.FLYING_ZOOM_RATE;
               }
               param1.normalView._body.y = -GamePredef.FLIGHT_HEIGHT;
               if(param1.petTrendAction != GamePredef.PET_STOP_FLYING)
               {
                  addPetCloud(param1);
               }
            }
         }
         if(param1.petTrendAction == GamePredef.PET_BEGIN_FLYING)
         {
            addPetCloud(param1);
         }
         return _loc3_;
      }
      
      public function addPetCloud(param1:Pet) : Pet
      {
         var _loc2_:DisplayObject = null;
         _loc2_ = new (ResManager.VIEW_BATTLE_CLOUD as Class)();
         _loc2_.x = -40;
         _loc2_.y = -30;
         param1.normalView._body.addChildAt(_loc2_,0);
         return param1;
      }
      
      public function get flyerLayer() : DynamicItemLayer
      {
         return flyLayer;
      }
      
      public function drawClouds(param1:Boolean = true) : void
      {
         AreaUtil.drawClouds(lowerSkyLayer,300000,stage.width,stage.height,0,0,-300,-300,param1);
         AreaUtil.drawClouds(upperSkyLayer,300000,stage.width,stage.height,0,0,-300,-300,param1);
      }
      
      public function sortNeighbour(param1:int) : void
      {
         throw new Error("ItemContainer.sortNeighbour");
      }
      
      public function applyZoomEffect(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:DisplayObject = null;
         if(flyLayer)
         {
            _loc2_ = 1 + (1 - param1) * (GamePredef.FLYING_PLAYER_ZOOM_RATE / GamePredef.FLYING_ZOOM_RATE - 1) / (1 - GamePredef.FLYING_ZOOM_RATE);
            if(GamePredef.FLYING_ZOOM_RATE == 1)
            {
               _loc2_ = 1;
            }
            for each(_loc3_ in flyLayer.getChildren())
            {
               _loc3_.scaleX = _loc2_;
               _loc3_.scaleY = _loc2_;
            }
         }
      }
      
      public function removePetCloud(param1:Pet) : void
      {
      }
   }
}

