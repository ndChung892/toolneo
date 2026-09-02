package com.qeedoo.ui.view.comp
{
   import mx.controls.Tree;
   import mx.core.ClassFactory;
   
   public class ColorTree extends Tree
   {
      
      public function ColorTree()
      {
         super();
         itemRenderer = new ClassFactory(RendererTreeNode);
      }
   }
}

