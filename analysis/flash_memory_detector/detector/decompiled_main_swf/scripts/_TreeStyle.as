package
{
   import mx.core.IFlexModuleFactory;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   public class _TreeStyle
   {
      
      private static var _embed_css_Assets_swf_TreeNodeIcon_1164261159:Class = _TreeStyle__embed_css_Assets_swf_TreeNodeIcon_1164261159;
      
      private static var _embed_css_Assets_swf_TreeFolderClosed_948402202:Class = _TreeStyle__embed_css_Assets_swf_TreeFolderClosed_948402202;
      
      private static var _embed_css_Assets_swf_TreeDisclosureOpen_1940158997:Class = _TreeStyle__embed_css_Assets_swf_TreeDisclosureOpen_1940158997;
      
      private static var _embed_css_Assets_swf_TreeFolderOpen_1503532820:Class = _TreeStyle__embed_css_Assets_swf_TreeFolderOpen_1503532820;
      
      private static var _embed_css_Assets_swf_TreeDisclosureClosed_1491546039:Class = _TreeStyle__embed_css_Assets_swf_TreeDisclosureClosed_1491546039;
      
      public function _TreeStyle()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var fbs:IFlexModuleFactory = param1;
         var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("Tree");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("Tree",style,false);
         }
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.folderClosedIcon = _embed_css_Assets_swf_TreeFolderClosed_948402202;
               this.verticalAlign = "middle";
               this.disclosureOpenIcon = _embed_css_Assets_swf_TreeDisclosureOpen_1940158997;
               this.paddingRight = 0;
               this.folderOpenIcon = _embed_css_Assets_swf_TreeFolderOpen_1503532820;
               this.defaultLeafIcon = _embed_css_Assets_swf_TreeNodeIcon_1164261159;
               this.paddingLeft = 2;
               this.disclosureClosedIcon = _embed_css_Assets_swf_TreeDisclosureClosed_1491546039;
            };
         }
      }
   }
}

