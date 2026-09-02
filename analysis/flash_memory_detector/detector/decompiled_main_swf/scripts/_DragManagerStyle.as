package
{
   import mx.core.IFlexModuleFactory;
   import mx.skins.halo.DefaultDragImage;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.StyleManager;
   
   public class _DragManagerStyle
   {
      
      private static var _embed_css_Assets_swf_mx_skins_cursor_DragLink_487655317:Class = _DragManagerStyle__embed_css_Assets_swf_mx_skins_cursor_DragLink_487655317;
      
      private static var _embed_css_Assets_swf_mx_skins_cursor_DragReject_1169468478:Class = _DragManagerStyle__embed_css_Assets_swf_mx_skins_cursor_DragReject_1169468478;
      
      private static var _embed_css_Assets_swf_mx_skins_cursor_DragMove_487694976:Class = _DragManagerStyle__embed_css_Assets_swf_mx_skins_cursor_DragMove_487694976;
      
      private static var _embed_css_Assets_swf_mx_skins_cursor_DragCopy_487917340:Class = _DragManagerStyle__embed_css_Assets_swf_mx_skins_cursor_DragCopy_487917340;
      
      public function _DragManagerStyle()
      {
         super();
      }
      
      public static function init(param1:IFlexModuleFactory) : void
      {
         var fbs:IFlexModuleFactory = param1;
         var style:CSSStyleDeclaration = StyleManager.getStyleDeclaration("DragManager");
         if(!style)
         {
            style = new CSSStyleDeclaration();
            StyleManager.setStyleDeclaration("DragManager",style,false);
         }
         if(style.defaultFactory == null)
         {
            style.defaultFactory = function():void
            {
               this.linkCursor = _embed_css_Assets_swf_mx_skins_cursor_DragLink_487655317;
               this.rejectCursor = _embed_css_Assets_swf_mx_skins_cursor_DragReject_1169468478;
               this.copyCursor = _embed_css_Assets_swf_mx_skins_cursor_DragCopy_487917340;
               this.moveCursor = _embed_css_Assets_swf_mx_skins_cursor_DragMove_487694976;
               this.defaultDragImageSkin = DefaultDragImage;
            };
         }
      }
   }
}

