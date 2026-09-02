package mx.binding
{
   import flash.events.Event;
   import mx.core.IRepeaterClient;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class RepeatableBinding extends Binding
   {
      
      mx_internal static const VERSION:String = "3.0.0.0";
      
      public function RepeatableBinding(param1:Object, param2:Function, param3:Function, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      public function eventHandler(param1:Event) : void
      {
         if(isHandlingEvent)
         {
            return;
         }
         isHandlingEvent = true;
         execute();
         isHandlingEvent = false;
      }
      
      override public function execute(param1:Object = null) : void
      {
         var _loc2_:String = null;
         var _loc3_:Array = null;
         if(isExecuting)
         {
            return;
         }
         isExecuting = true;
         if(!param1)
         {
            _loc2_ = destString.substring(0,destString.indexOf("."));
            param1 = document[_loc2_];
         }
         else if(typeof param1 == "number")
         {
            _loc2_ = destString.substring(0,destString.indexOf("."));
            _loc3_ = document[_loc2_] as Array;
            if(_loc3_)
            {
               param1 = _loc3_[param1];
            }
            else
            {
               param1 = null;
            }
         }
         if(param1)
         {
            recursivelyProcessIDArray(param1);
         }
         isExecuting = false;
      }
      
      private function recursivelyProcessIDArray(param1:Object) : void
      {
         var array:Array = null;
         var n:int = 0;
         var i:int = 0;
         var client:IRepeaterClient = null;
         var o:Object = param1;
         if(o is Array)
         {
            array = o as Array;
            n = int(array.length);
            i = 0;
            while(i < n)
            {
               recursivelyProcessIDArray(array[i]);
               i++;
            }
         }
         else if(o is IRepeaterClient)
         {
            client = IRepeaterClient(o);
            wrapFunctionCall(this,function():void
            {
               var _loc1_:Object = wrapFunctionCall(this,srcFunc,null,client.instanceIndices,client.repeaterIndices);
               if(BindingManager.debugDestinationStrings[destString])
               {
                  trace("RepeatableBinding: destString = " + destString + ", srcFunc result = " + _loc1_);
               }
               destFunc(_loc1_,client.instanceIndices);
            },o);
         }
      }
   }
}

