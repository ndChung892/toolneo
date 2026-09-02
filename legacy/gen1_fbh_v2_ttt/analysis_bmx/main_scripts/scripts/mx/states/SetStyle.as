package mx.states
{
   import mx.core.UIComponent;
   import mx.core.mx_internal;
   import mx.styles.IStyleClient;
   import mx.styles.StyleManager;
   
   use namespace mx_internal;
   
   public class SetStyle implements IOverride
   {
      
      mx_internal static const VERSION:String = "3.0.0.0";
      
      private static const RELATED_PROPERTIES:Object = {
         "left":["x"],
         "top":["y"],
         "right":["x"],
         "bottom":["y"]
      };
      
      private var oldRelatedValues:Array;
      
      private var oldValue:Object;
      
      public var name:String;
      
      public var target:IStyleClient;
      
      public var value:Object;
      
      public function SetStyle(param1:IStyleClient = null, param2:String = null, param3:Object = null)
      {
         super();
         this.target = param1;
         this.name = param2;
         this.value = param3;
      }
      
      public function remove(param1:UIComponent) : void
      {
         var _loc4_:int = 0;
         var _loc2_:IStyleClient = target ? target : param1;
         if(oldValue is Number)
         {
            _loc2_.setStyle(name,Number(oldValue));
         }
         else if(oldValue is Boolean)
         {
            _loc2_.setStyle(name,toBoolean(oldValue));
         }
         else if(oldValue === null)
         {
            _loc2_.clearStyle(name);
         }
         else
         {
            _loc2_.setStyle(name,oldValue);
         }
         var _loc3_:Array = RELATED_PROPERTIES[name] ? RELATED_PROPERTIES[name] : null;
         if(_loc3_)
         {
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               _loc2_[_loc3_[_loc4_]] = oldRelatedValues[_loc4_];
               _loc4_++;
            }
         }
      }
      
      private function toBoolean(param1:Object) : Boolean
      {
         if(param1 is String)
         {
            return param1.toLowerCase() == "true";
         }
         return param1 != false;
      }
      
      public function apply(param1:UIComponent) : void
      {
         var _loc4_:int = 0;
         var _loc2_:IStyleClient = target ? target : param1;
         var _loc3_:Array = RELATED_PROPERTIES[name] ? RELATED_PROPERTIES[name] : null;
         oldValue = _loc2_.getStyle(name);
         if(_loc3_)
         {
            oldRelatedValues = [];
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               oldRelatedValues[_loc4_] = _loc2_[_loc3_[_loc4_]];
               _loc4_++;
            }
         }
         if(value === null)
         {
            _loc2_.clearStyle(name);
         }
         else if(oldValue is Number)
         {
            if(name.toLowerCase().indexOf("color") != -1)
            {
               _loc2_.setStyle(name,StyleManager.getColorName(value));
            }
            else
            {
               _loc2_.setStyle(name,Number(value));
            }
         }
         else if(oldValue is Boolean)
         {
            _loc2_.setStyle(name,toBoolean(value));
         }
         else
         {
            _loc2_.setStyle(name,value);
         }
      }
      
      public function initialize() : void
      {
      }
   }
}

