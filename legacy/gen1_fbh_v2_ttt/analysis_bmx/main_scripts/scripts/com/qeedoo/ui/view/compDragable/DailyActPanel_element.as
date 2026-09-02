package com.qeedoo.ui.view.compDragable
{
   import flash.utils.ByteArray;
   import mx.core.MovieClipLoaderAsset;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4254")]
   public class DailyActPanel_element extends MovieClipLoaderAsset
   {
      
      private static var bytes:ByteArray = null;
      
      public var dataClass:Class = DailyActPanel_element_dataClass;
      
      public function DailyActPanel_element()
      {
         super();
         initialWidth = 11000 / 20;
         initialHeight = 8000 / 20;
      }
      
      override public function get movieClipData() : ByteArray
      {
         if(bytes == null)
         {
            bytes = ByteArray(new dataClass());
         }
         return bytes;
      }
   }
}

