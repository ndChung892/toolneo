package com.qeedoo.ui.view.compGameStage
{
   import com.qeedoo.game.object.Charactor;
   import com.qeedoo.game.object.Npc;
   import com.qeedoo.game.object.SceneItem;
   import flash.display.DisplayObject;
   
   public interface IItemContainer
   {
      
      function addS(param1:SceneItem) : DisplayObject;
      
      function sortChildren() : void;
      
      function addC(param1:Charactor) : DisplayObject;
      
      function removeAll() : void;
      
      function addN(param1:Npc) : DisplayObject;
      
      function sortNeighbour(param1:int) : void;
   }
}

