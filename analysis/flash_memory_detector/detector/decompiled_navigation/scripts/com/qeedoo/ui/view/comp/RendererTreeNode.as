package com.qeedoo.ui.view.comp
{
   import mx.collections.*;
   import mx.controls.treeClasses.*;
   
   public class RendererTreeNode extends TreeItemRenderer
   {
      
      public function RendererTreeNode()
      {
         super();
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         if(param1 == null)
         {
            return;
         }
         if(TreeListData(super.listData).hasChildren)
         {
            setStyle("color",16777215);
         }
         else
         {
            setStyle("color",param1.color);
         }
      }
   }
}

