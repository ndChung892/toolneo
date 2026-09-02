package
{
   import mx.core.IFlexModuleFactory;
   import mx.skins.halo.LinkButtonSkin;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   public class _LinkButtonStyle
   {
      
      public function _LinkButtonStyle()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var fbs:IFlexModuleFactory = param1;
         var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("LinkButton");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("LinkButton",style,false);
         }
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.downSkin = null;
               this.upSkin = null;
               this.selectedDownSkin = null;
               this.paddingRight = 7;
               this.overSkin = null;
               this.selectedUpSkin = null;
               this.skin = LinkButtonSkin;
               this.disabledSkin = null;
               this.selectedOverSkin = null;
               this.selectedDisabledSkin = null;
               this.paddingLeft = 7;
            };
         }
      }
   }
}

