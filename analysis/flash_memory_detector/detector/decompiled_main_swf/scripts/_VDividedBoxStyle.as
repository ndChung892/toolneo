package
{
   import mx.core.IFlexModuleFactory;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   public class _VDividedBoxStyle
   {
      
      private static var _embed_css_Assets_swf_mx_skins_cursor_VBoxDivider_585203801:Class = _VDividedBoxStyle__embed_css_Assets_swf_mx_skins_cursor_VBoxDivider_585203801;
      
      private static var _embed_css_Assets_swf_mx_skins_BoxDividerSkin_1174935100:Class = _VDividedBoxStyle__embed_css_Assets_swf_mx_skins_BoxDividerSkin_1174935100;
      
      private static var _embed_css_Assets_swf_mx_skins_cursor_HBoxDivider_1885559687:Class = _VDividedBoxStyle__embed_css_Assets_swf_mx_skins_cursor_HBoxDivider_1885559687;
      
      public function _VDividedBoxStyle()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var fbs:IFlexModuleFactory = param1;
         var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("VDividedBox");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("VDividedBox",style,false);
         }
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.dividerAlpha = 0.75;
               this.dividerThickness = 3;
               this.horizontalGap = 10;
               this.dividerSkin = _embed_css_Assets_swf_mx_skins_BoxDividerSkin_1174935100;
               this.dividerAffordance = 6;
               this.verticalDividerCursor = _embed_css_Assets_swf_mx_skins_cursor_VBoxDivider_585203801;
               this.verticalGap = 10;
               this.horizontalDividerCursor = _embed_css_Assets_swf_mx_skins_cursor_HBoxDivider_1885559687;
               this.dividerColor = 7305079;
            };
         }
      }
   }
}

