package
{
   import mx.core.IFlexModuleFactory;
   import mx.skins.halo.PopUpButtonSkin;
   import mx.skins.halo.PopUpMenuIcon;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   public class _PopUpMenuButtonStyle
   {
      
      public function _PopUpMenuButtonStyle()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var fbs:IFlexModuleFactory = param1;
         var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("PopUpMenuButton");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("PopUpMenuButton",style,false);
         }
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.popUpIcon = PopUpMenuIcon;
               this.skin = PopUpButtonSkin;
               this.popUpStyleName = "popUpMenu";
            };
         }
      }
   }
}

