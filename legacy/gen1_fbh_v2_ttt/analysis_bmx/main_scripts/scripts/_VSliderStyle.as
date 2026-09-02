package
{
   import mx.core.IFlexModuleFactory;
   import mx.skins.halo.SliderHighlightSkin;
   import mx.skins.halo.SliderThumbSkin;
   import mx.skins.halo.SliderTrackSkin;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   public class _VSliderStyle
   {
      
      public function _VSliderStyle()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var fbs:IFlexModuleFactory = param1;
         var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("VSlider");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("VSlider",style,false);
         }
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.borderColor = 9542041;
               this.thumbDownSkin = null;
               this.trackHighlightSkin = SliderHighlightSkin;
               this.tickColor = 7305079;
               this.dataTipPrecision = 2;
               this.slideDuration = 300;
               this.thumbOverSkin = null;
               this.trackColors = [15198183,15198183];
               this.thumbUpSkin = null;
               this.thumbSkin = SliderThumbSkin;
               this.labelOffset = -10;
               this.showTrackHighlight = false;
               this.tickOffset = -6;
               this.tickThickness = 1;
               this.thumbOffset = 0;
               this.thumbDisabledSkin = null;
               this.trackSkin = SliderTrackSkin;
               this.dataTipPlacement = "left";
               this.tickLength = 3;
               this.dataTipOffset = 16;
            };
         }
      }
   }
}

