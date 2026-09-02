package
{
   import mx.core.IFlexModuleFactory;
   import mx.skins.halo.LinkSeparator;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   public class _LinkBarStyle
   {
      
      public function _LinkBarStyle()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var fbs:IFlexModuleFactory = param1;
         var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("LinkBar");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("LinkBar",style,false);
         }
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.separatorColor = 12897484;
               this.horizontalGap = 8;
               this.paddingBottom = 2;
               this.separatorWidth = 1;
               this.paddingRight = 2;
               this.separatorSkin = LinkSeparator;
               this.linkButtonStyleName = "linkButtonStyle";
               this.paddingTop = 2;
               this.verticalGap = 8;
               this.paddingLeft = 2;
            };
         }
      }
   }
}

