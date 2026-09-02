package com.qeedoo.ui.view.comp
{
   import mx.controls.menuClasses.IMenuItemRenderer;
   import mx.controls.menuClasses.MenuItemRenderer;
   
   public class CustomMenuItemRenderer extends MenuItemRenderer implements IMenuItemRenderer
   {
      
      public function CustomMenuItemRenderer()
      {
         super();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         setStyle("color",data.textColor);
      }
   }
}

