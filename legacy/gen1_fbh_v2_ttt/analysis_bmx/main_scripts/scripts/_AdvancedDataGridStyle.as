package
{
   import mx.core.IFlexModuleFactory;
   import mx.skins.halo.AdvancedDataGridHeaderHorizontalSeparator;
   import mx.skins.halo.DataGridColumnDropIndicator;
   import mx.skins.halo.DataGridColumnResizeSkin;
   import mx.skins.halo.DataGridHeaderBackgroundSkin;
   import mx.skins.halo.DataGridHeaderSeparator;
   import mx.skins.halo.DataGridSortArrow;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   public class _AdvancedDataGridStyle
   {
      
      private static var _embed_css_Assets_swf_cursorStretch_1791686479:Class = _AdvancedDataGridStyle__embed_css_Assets_swf_cursorStretch_1791686479;
      
      private static var _embed_css_Assets_swf_TreeNodeIcon_1164261159:Class = _AdvancedDataGridStyle__embed_css_Assets_swf_TreeNodeIcon_1164261159;
      
      private static var _embed_css_Assets_swf_TreeFolderClosed_948402202:Class = _AdvancedDataGridStyle__embed_css_Assets_swf_TreeFolderClosed_948402202;
      
      private static var _embed_css_Assets_swf_TreeDisclosureOpen_1940158997:Class = _AdvancedDataGridStyle__embed_css_Assets_swf_TreeDisclosureOpen_1940158997;
      
      private static var _embed_css_Assets_swf_TreeFolderOpen_1503532820:Class = _AdvancedDataGridStyle__embed_css_Assets_swf_TreeFolderOpen_1503532820;
      
      private static var _embed_css_Assets_swf_TreeDisclosureClosed_1491546039:Class = _AdvancedDataGridStyle__embed_css_Assets_swf_TreeDisclosureClosed_1491546039;
      
      public function _AdvancedDataGridStyle()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var fbs:IFlexModuleFactory = param1;
         var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("AdvancedDataGrid");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("AdvancedDataGrid",style,false);
         }
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.folderClosedIcon = _embed_css_Assets_swf_TreeFolderClosed_948402202;
               this.disclosureOpenIcon = _embed_css_Assets_swf_TreeDisclosureOpen_1940158997;
               this.headerDragProxyStyleName = "headerDragProxyStyle";
               this.alternatingItemColors = [16250871,16777215];
               this.sortArrowSkin = DataGridSortArrow;
               this.sortFontStyle = "normal";
               this.paddingRight = 0;
               this.headerColors = [16777215,15132390];
               this.headerStyleName = "advancedDataGridStyles";
               this.defaultLeafIcon = _embed_css_Assets_swf_TreeNodeIcon_1164261159;
               this.headerHorizontalSeparatorSkin = AdvancedDataGridHeaderHorizontalSeparator;
               this.headerSeparatorSkin = DataGridHeaderSeparator;
               this.columnResizeSkin = DataGridColumnResizeSkin;
               this.headerBackgroundSkin = DataGridHeaderBackgroundSkin;
               this.disclosureClosedIcon = _embed_css_Assets_swf_TreeDisclosureClosed_1491546039;
               this.sortFontFamily = "Verdana";
               this.verticalGridLineColor = 13421772;
               this.folderOpenIcon = _embed_css_Assets_swf_TreeFolderOpen_1503532820;
               this.columnDropIndicatorSkin = DataGridColumnDropIndicator;
               this.sortFontSize = 10;
               this.sortFontWeight = "normal";
               this.paddingLeft = 2;
               this.stretchCursor = _embed_css_Assets_swf_cursorStretch_1791686479;
            };
         }
      }
   }
}

