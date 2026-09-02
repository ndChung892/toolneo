package
{
   import mx.core.IFlexModuleFactory;
   import mx.skins.halo.DataGridColumnResizeSkin;
   import mx.skins.halo.DataGridHeaderSeparator;
   import mx.skins.halo.DataGridSortArrow;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   public class _PrintDataGridStyle
   {
      
      private static var _embed_css_Assets_swf_cursorStretch_1791686479:Class = _PrintDataGridStyle__embed_css_Assets_swf_cursorStretch_1791686479;
      
      public function _PrintDataGridStyle()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var fbs:IFlexModuleFactory = param1;
         var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("PrintDataGrid");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("PrintDataGrid",style,false);
         }
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.horizontalGridLineColor = 0;
               this.borderColor = 0;
               this.alternatingItemColors = [16777215,16777215];
               this.sortArrowSkin = DataGridSortArrow;
               this.verticalGridLineColor = 0;
               this.headerColors = [16777215,16777215];
               this.headerStyleName = "dataGridStyles";
               this.horizontalGridLines = true;
               this.headerSeparatorSkin = DataGridHeaderSeparator;
               this.stretchCursor = _embed_css_Assets_swf_cursorStretch_1791686479;
               this.columnResizeSkin = DataGridColumnResizeSkin;
            };
         }
      }
   }
}

