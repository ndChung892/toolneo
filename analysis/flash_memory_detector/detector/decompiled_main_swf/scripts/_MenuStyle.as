package
{
   import mx.core.IFlexModuleFactory;
   import mx.skins.halo.ListDropIndicator;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   public class _MenuStyle
   {
      
      private static var _embed_css_Assets_swf_MenuBranchDisabled_675554237:Class = _MenuStyle__embed_css_Assets_swf_MenuBranchDisabled_675554237;
      
      private static var _embed_css_Assets_swf_MenuRadioDisabled_63946214:Class = _MenuStyle__embed_css_Assets_swf_MenuRadioDisabled_63946214;
      
      private static var _embed_css_Assets_swf_MenuCheckDisabled_1045112411:Class = _MenuStyle__embed_css_Assets_swf_MenuCheckDisabled_1045112411;
      
      private static var _embed_css_Assets_swf_MenuSeparator_1719159268:Class = _MenuStyle__embed_css_Assets_swf_MenuSeparator_1719159268;
      
      private static var _embed_css_Assets_swf_MenuBranchEnabled_1293291250:Class = _MenuStyle__embed_css_Assets_swf_MenuBranchEnabled_1293291250;
      
      private static var _embed_css_Assets_swf_MenuRadioEnabled_1579931099:Class = _MenuStyle__embed_css_Assets_swf_MenuRadioEnabled_1579931099;
      
      private static var _embed_css_Assets_swf_MenuCheckEnabled_598308102:Class = _MenuStyle__embed_css_Assets_swf_MenuCheckEnabled_598308102;
      
      public function _MenuStyle()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var fbs:IFlexModuleFactory = param1;
         var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("Menu");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("Menu",style,false);
         }
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.verticalAlign = "middle";
               this.paddingRight = 0;
               this.dropIndicatorSkin = ListDropIndicator;
               this.separatorSkin = _embed_css_Assets_swf_MenuSeparator_1719159268;
               this.dropShadowEnabled = true;
               this.leftIconGap = 18;
               this.rightIconGap = 15;
               this.radioDisabledIcon = _embed_css_Assets_swf_MenuRadioDisabled_63946214;
               this.horizontalGap = 6;
               this.radioIcon = _embed_css_Assets_swf_MenuRadioEnabled_1579931099;
               this.branchDisabledIcon = _embed_css_Assets_swf_MenuBranchDisabled_675554237;
               this.paddingBottom = 1;
               this.branchIcon = _embed_css_Assets_swf_MenuBranchEnabled_1293291250;
               this.checkDisabledIcon = _embed_css_Assets_swf_MenuCheckDisabled_1045112411;
               this.paddingTop = 1;
               this.borderStyle = "menuBorder";
               this.checkIcon = _embed_css_Assets_swf_MenuCheckEnabled_598308102;
               this.paddingLeft = 1;
            };
         }
      }
   }
}

