package com.qeedoo.ui.resource
{
   import flash.utils.ByteArray;
   import mx.core.MovieClipLoaderAsset;
   
   [Embed(source="/_assets/assets.swf", symbol="symbol4254")]
   public class ResManager_ICON_WARN_GROUP_INVITE extends MovieClipLoaderAsset
   {
      
      private static var bytes:ByteArray = null;
      
      public var dataClass:Class = ResManager_ICON_WARN_GROUP_INVITE_dataClass;
      
      public function ResManager_ICON_WARN_GROUP_INVITE()
      {
         super();
         initialWidth = 900 / 20;
         initialHeight = 900 / 20;
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

