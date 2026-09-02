package com.qeedoo.ui.view.comp
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   import mx.core.EdgeMetrics;
   import mx.core.IRectangularBorder;
   
   public class MenuSkin extends Sprite implements IRectangularBorder
   {
      
      private var _bm:EdgeMetrics;
      
      public var PanelSkinClass:Class = MenuSkin_PanelSkinClass;
      
      protected var skin:DisplayObject;
      
      public function MenuSkin()
      {
         super();
         if(PanelSkinClass)
         {
            skin = new PanelSkinClass();
            this.addChild(skin);
         }
      }
      
      public function get backgroundImageBounds() : Rectangle
      {
         return null;
      }
      
      public function layoutBackgroundImage() : void
      {
      }
      
      public function set backgroundImageBounds(param1:Rectangle) : void
      {
      }
      
      public function get hasBackgroundImage() : Boolean
      {
         return false;
      }
      
      override public function set width(param1:Number) : void
      {
         if(skin)
         {
            skin.width = param1;
         }
      }
      
      override public function set height(param1:Number) : void
      {
         if(skin)
         {
            skin.height = param1;
         }
      }
      
      public function get borderMetrics() : EdgeMetrics
      {
         if(_bm == null)
         {
            _bm = new EdgeMetrics(2,10,2,10);
         }
         return _bm;
      }
   }
}

