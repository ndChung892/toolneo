package com.qeedoo.ui.view.comp
{
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import mx.controls.Tree;
   import mx.controls.listClasses.IListItemRenderer;
   import mx.core.ClassFactory;
   
   public class ButtonTree extends Tree
   {
      
      public var buttonStyleName:String = "BtnAchievement";
      
      public function ButtonTree()
      {
         super();
         itemRenderer = new ClassFactory(ButtonTreeItemRenderer);
         styleName = "ButtonTree";
      }
      
      override protected function mouseOverHandler(param1:MouseEvent) : void
      {
      }
      
      override protected function drawItem(param1:IListItemRenderer, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false) : void
      {
         super.drawItem(param1,param2,param3,param4,param5);
         if(param2)
         {
            ButtonTreeItemRenderer(param1).btn.selected = true;
         }
         else if(!param2)
         {
            ButtonTreeItemRenderer(param1).btn.selected = false;
         }
      }
      
      override protected function drawSelectionIndicator(param1:Sprite, param2:Number, param3:Number, param4:Number, param5:Number, param6:uint, param7:IListItemRenderer) : void
      {
         param1.x = param2;
         param1.y = param3;
      }
   }
}

import mx.controls.treeClasses.TreeItemRenderer;
import mx.controls.treeClasses.TreeListData;

class ButtonTreeItemRenderer extends TreeItemRenderer
{
   
   public var btn:RoundedButton;
   
   public function ButtonTreeItemRenderer()
   {
      super();
   }
   
   override protected function createChildren() : void
   {
      super.createChildren();
      btn = new RoundedButton();
      addChild(btn);
   }
   
   override protected function updateDisplayList(param1:Number, param2:Number) : void
   {
      var _loc3_:TreeListData = null;
      super.updateDisplayList(param1,param2);
      if(super.data)
      {
         _loc3_ = TreeListData(super.listData);
         if(_loc3_.hasChildren || _loc3_.depth == 1)
         {
            this.btn.x = 0;
            this.btn.height = super.label.height + 4;
            this.btn.width = super.label.width;
         }
         else
         {
            this.btn.x = 24;
            this.btn.height = super.label.height + 4;
            this.btn.width = super.label.width - 19;
         }
         this.btn.styleName = ButtonTree(owner).buttonStyleName;
         this.btn.label = _loc3_.label;
         this.btn.y = super.label.y;
         super.label.visible = false;
      }
   }
}
