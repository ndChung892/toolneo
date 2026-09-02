package
{
   import mx.core.IFlexModuleFactory;
   import mx.skins.halo.DateChooserIndicator;
   import mx.skins.halo.DateChooserMonthArrowSkin;
   import mx.skins.halo.DateChooserYearArrowSkin;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   public class _DateChooserStyle
   {
      
      public function _DateChooserStyle()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var fbs:IFlexModuleFactory = param1;
         var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("DateChooser");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("DateChooser",style,false);
         }
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.todayStyleName = "todayStyle";
               this.backgroundColor = 16777215;
               this.todayIndicatorSkin = DateChooserIndicator;
               this.todayColor = 8487297;
               this.headerColors = [14804459,16053751];
               this.headerStyleName = "headerDateText";
               this.prevYearSkin = DateChooserYearArrowSkin;
               this.selectionIndicatorSkin = DateChooserIndicator;
               this.cornerRadius = 4;
               this.weekDayStyleName = "weekDayStyle";
               this.prevMonthSkin = DateChooserMonthArrowSkin;
               this.rollOverIndicatorSkin = DateChooserIndicator;
               this.nextMonthSkin = DateChooserMonthArrowSkin;
               this.nextYearSkin = DateChooserYearArrowSkin;
            };
         }
      }
   }
}

