package com.qeedoo.ui.resource.local
{
   public class SharedConfig
   {
      
      public static const DefaultFragmentKey:String = "mlxtConfig";
      
      private static const MaxFragmentCount:int = 10;
      
      public function SharedConfig()
      {
         super();
      }
      
      public static function countSharedObjectName(param1:String) : String
      {
         if(param1.indexOf("resource/scene/") >= 0)
         {
            return "scene";
         }
         if(param1.indexOf("resource/ui/") >= 0)
         {
            return "ui";
         }
         if(param1.indexOf("resource/item/") >= 0)
         {
            return "item";
         }
         if(param1.indexOf("resource/equip/") >= 0)
         {
            return "equip";
         }
         if(param1.indexOf("resource/effect/") >= 0)
         {
            return "effect";
         }
         if(param1.indexOf("resource/creature/") >= 0)
         {
            return "creature";
         }
         return DefaultFragmentKey + "-" + param1.length % MaxFragmentCount;
      }
   }
}

