package
{
   import mx.core.IFlexModuleFactory;
   import mx.skins.halo.AccordionHeaderSkin;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   public class _AccordionHeaderStyle
   {
      
      public function _AccordionHeaderStyle()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var fbs:IFlexModuleFactory = param1;
         var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("AccordionHeader");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("AccordionHeader",style,false);
         }
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.upSkin = null;
               this.textAlign = "left";
               this.paddingRight = 5;
               this.skin = AccordionHeaderSkin;
               this.disabledSkin = null;
               this.selectedOverSkin = null;
               this.selectedDisabledSkin = null;
               this.downSkin = null;
               this.horizontalGap = 2;
               this.paddingBottom = 0;
               this.selectedDownSkin = null;
               this.overSkin = null;
               this.selectedUpSkin = null;
               this.fontSize = "10";
               this.paddingTop = 0;
               this.paddingLeft = 5;
               this.fontWeight = "bold";
            };
         }
      }
   }
}

