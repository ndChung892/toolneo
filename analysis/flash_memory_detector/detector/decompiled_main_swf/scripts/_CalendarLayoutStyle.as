package
{
   import mx.core.IFlexModuleFactory;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   public class _CalendarLayoutStyle
   {
      
      public function _CalendarLayoutStyle()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var fbs:IFlexModuleFactory = param1;
         var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("CalendarLayout");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("CalendarLayout",style,false);
         }
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.horizontalGap = 7;
               this.paddingBottom = 10;
               this.color = 2831164;
               this.textAlign = "center";
               this.todayColor = 8487297;
               this.paddingRight = 6;
               this.paddingTop = 6;
               this.verticalGap = 6;
               this.paddingLeft = 6;
               this.cellWidthPadding = 6;
               this.cellHeightPadding = 6;
            };
         }
      }
   }
}

