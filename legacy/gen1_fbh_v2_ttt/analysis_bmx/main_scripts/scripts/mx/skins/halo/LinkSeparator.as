package mx.skins.halo
{
   import flash.display.Graphics;
   import flash.utils.describeType;
   import flash.utils.getQualifiedClassName;
   import mx.containers.BoxDirection;
   import mx.core.mx_internal;
   import mx.skins.ProgrammaticSkin;
   
   use namespace mx_internal;
   
   public class LinkSeparator extends ProgrammaticSkin
   {
      
      mx_internal static const VERSION:String = "3.0.0.0";
      
      private static var boxes:Object = {};
      
      public function LinkSeparator()
      {
         super();
      }
      
      private static function isBox(param1:Object) : Boolean
      {
         var xmllist:XMLList;
         var s:String = null;
         var x:XML = null;
         var parent:Object = param1;
         s = getQualifiedClassName(parent);
         if(boxes[s] == 1)
         {
            return true;
         }
         if(boxes[s] == 0)
         {
            return false;
         }
         if(s == "mx.containers::Box")
         {
            boxes[s] == 1;
            return true;
         }
         x = describeType(parent);
         xmllist = x.extendsClass.(@type == "mx.containers::Box");
         if(xmllist.length() == 0)
         {
            boxes[s] = 0;
            return false;
         }
         boxes[s] = 1;
         return true;
      }
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         super.updateDisplayList(param1,param2);
         var _loc3_:uint = getStyle("separatorColor");
         var _loc4_:Number = getStyle("separatorWidth");
         var _loc5_:Boolean = false;
         var _loc6_:Graphics = graphics;
         _loc6_.clear();
         if(_loc4_ > 0)
         {
            if(isBox(parent))
            {
               _loc5_ = Object(parent).direction == BoxDirection.VERTICAL;
            }
            _loc6_.lineStyle(_loc4_,_loc3_);
            if(_loc5_)
            {
               _loc6_.moveTo(4,param2 / 2);
               _loc6_.lineTo(param1 - 4,param2 / 2);
            }
            else
            {
               _loc6_.moveTo(param1 / 2,6);
               _loc6_.lineTo(param1 / 2,param2 - 5);
            }
         }
      }
   }
}

