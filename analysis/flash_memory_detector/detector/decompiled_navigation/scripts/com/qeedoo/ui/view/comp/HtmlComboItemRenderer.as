package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
   import mx.controls.listClasses.ListItemRenderer;
   import mx.core.IUITextField;
   
   public class HtmlComboItemRenderer extends ListItemRenderer
   {
      
      public function HtmlComboItemRenderer()
      {
         super();
      }
      
      override protected function commitProperties() : void
      {
         super.commitProperties();
         var _loc1_:String = data.element > 0 ? GamePredef.ELEMENT_COLOR[data.element] : "#FFFFFF";
         var _loc2_:String = "<font color=\'" + _loc1_ + "\'>" + data.label + "</font>";
         label.htmlText = _loc2_;
      }
      
      override protected function createInFontContext(param1:Class) : Object
      {
         var _loc2_:Object = super.createInFontContext(param1);
         var _loc3_:IUITextField = IUITextField(_loc2_);
         _loc3_.filters = [GamePredef.FILTER_GLOW_LOWBLACK];
         return _loc3_;
      }
   }
}

