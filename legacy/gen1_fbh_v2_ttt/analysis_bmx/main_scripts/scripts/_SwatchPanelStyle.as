package
{
   import mx.core.IFlexModuleFactory;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   public class _SwatchPanelStyle
   {
      
      public function _SwatchPanelStyle()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var fbs:IFlexModuleFactory = param1;
         var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("SwatchPanel");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("SwatchPanel",style,false);
         }
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.previewHeight = 22;
               this.backgroundColor = 15066855;
               this.borderColor = 10856878;
               this.paddingRight = 5;
               this.swatchBorderSize = 1;
               this.columnCount = 20;
               this.swatchHighlightSize = 1;
               this.textFieldWidth = 72;
               this.verticalGap = 0;
               this.swatchGridBackgroundColor = 0;
               this.swatchBorderColor = 0;
               this.previewWidth = 45;
               this.swatchHeight = 12;
               this.highlightColor = 16777215;
               this.horizontalGap = 0;
               this.paddingBottom = 5;
               this.textFieldStyleName = "swatchPanelTextField";
               this.swatchGridBorderSize = 0;
               this.swatchWidth = 12;
               this.fontSize = 11;
               this.paddingTop = 4;
               this.swatchHighlightColor = 16777215;
               this.paddingLeft = 5;
               this.shadowColor = 5068126;
            };
         }
      }
   }
}

