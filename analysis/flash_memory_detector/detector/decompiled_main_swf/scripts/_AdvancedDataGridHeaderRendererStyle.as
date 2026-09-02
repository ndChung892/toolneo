package
{
   import mx.core.IFlexModuleFactory;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   public class _AdvancedDataGridHeaderRendererStyle
   {
      
      public function _AdvancedDataGridHeaderRendererStyle()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var fbs:IFlexModuleFactory = param1;
         var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("AdvancedDataGridHeaderRenderer");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("AdvancedDataGridHeaderRenderer",style,false);
         }
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.verticalAlign = "middle";
               this.horizontalGap = 0;
               this.backgroundColor = 16777215;
               this.paddingBottom = 0;
               this.color = 734012;
               this.horizontalAlign = "center";
               this.paddingRight = 2;
               this.backgroundAlpha = 0;
               this.paddingTop = 0;
               this.paddingLeft = 2;
            };
         }
      }
   }
}

