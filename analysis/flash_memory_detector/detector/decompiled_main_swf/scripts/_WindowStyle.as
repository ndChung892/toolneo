package
{
   import mx.core.IFlexModuleFactory;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   public class _WindowStyle
   {
      
      private static var _embed_css_Assets_swf_CloseButtonUp_78852955:Class = _WindowStyle__embed_css_Assets_swf_CloseButtonUp_78852955;
      
      private static var _embed_css_Assets_swf_CloseButtonDown_1316433110:Class = _WindowStyle__embed_css_Assets_swf_CloseButtonDown_1316433110;
      
      private static var _embed_css_Assets_swf_CloseButtonOver_1150166980:Class = _WindowStyle__embed_css_Assets_swf_CloseButtonOver_1150166980;
      
      private static var _embed_css_Assets_swf_CloseButtonDisabled_1244655684:Class = _WindowStyle__embed_css_Assets_swf_CloseButtonDisabled_1244655684;
      
      public function _WindowStyle()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var fbs:IFlexModuleFactory = param1;
         var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("Window");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("Window",style,false);
         }
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.closeButtonDisabledSkin = _embed_css_Assets_swf_CloseButtonDisabled_1244655684;
               this.closeButtonUpSkin = _embed_css_Assets_swf_CloseButtonUp_78852955;
               this.closeButtonOverSkin = _embed_css_Assets_swf_CloseButtonOver_1150166980;
               this.borderStyle = "default";
               this.closeButtonDownSkin = _embed_css_Assets_swf_CloseButtonDown_1316433110;
               this.cornerRadius = 8;
            };
         }
      }
   }
}

