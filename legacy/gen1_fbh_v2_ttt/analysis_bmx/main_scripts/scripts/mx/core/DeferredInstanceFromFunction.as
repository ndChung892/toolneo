package mx.core
{
   use namespace mx_internal;
   
   public class DeferredInstanceFromFunction implements IDeferredInstance
   {
      
      mx_internal static const VERSION:String = "3.0.0.0";
      
      private var generator:Function;
      
      private var instance:Object = null;
      
      public function DeferredInstanceFromFunction(param1:Function)
      {
         super();
         this.generator = param1;
      }
      
      public function getInstance() : Object
      {
         if(!instance)
         {
            instance = generator();
         }
         return instance;
      }
   }
}

