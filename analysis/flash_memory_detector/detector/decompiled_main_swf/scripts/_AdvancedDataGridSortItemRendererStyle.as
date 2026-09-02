package
{
   import mx.core.IFlexModuleFactory;
   import mx.skins.halo.DataGridSortArrow;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   public class _AdvancedDataGridSortItemRendererStyle
   {
      
      public function _AdvancedDataGridSortItemRendererStyle()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var fbs:IFlexModuleFactory = param1;
         var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("AdvancedDataGridSortItemRenderer");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("AdvancedDataGridSortItemRenderer",style,false);
         }
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.horizontalGap = 0;
               this.paddingBottom = 0;
               this.color = 734012;
               this.paddingRight = 0;
               this.icon = DataGridSortArrow;
               this.paddingTop = 0;
               this.paddingLeft = 0;
            };
         }
      }
   }
}

