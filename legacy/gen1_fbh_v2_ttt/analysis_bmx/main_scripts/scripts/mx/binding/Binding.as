package mx.binding
{
   import mx.collections.errors.ItemPendingError;
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class Binding
   {
      
      mx_internal static const VERSION:String = "3.0.0.0";
      
      mx_internal var destFunc:Function;
      
      mx_internal var srcFunc:Function;
      
      mx_internal var destString:String;
      
      mx_internal var document:Object;
      
      private var hasHadValue:Boolean;
      
      mx_internal var isExecuting:Boolean;
      
      mx_internal var isHandlingEvent:Boolean;
      
      public var twoWayCounterpart:Binding;
      
      mx_internal var isEnabled:Boolean;
      
      public var uiComponentWatcher:int;
      
      private var lastValue:Object;
      
      private var wrappedFunctionSuccessful:Boolean;
      
      public function Binding(param1:Object, param2:Function, param3:Function, param4:String)
      {
         super();
         this.document = param1;
         this.srcFunc = param2;
         this.destFunc = param3;
         this.destString = param4;
         mx_internal::isEnabled = true;
         mx_internal::isExecuting = false;
         mx_internal::isHandlingEvent = false;
         hasHadValue = false;
         uiComponentWatcher = -1;
         BindingManager.addBinding(param1,param4,this);
      }
      
      protected function wrapFunctionCall(param1:Object, param2:Function, param3:Object = null, ... rest) : Object
      {
         var result:Object = null;
         var thisArg:Object = param1;
         var wrappedFunction:Function = param2;
         var object:Object = param3;
         var args:Array = rest;
         wrappedFunctionSuccessful = false;
         try
         {
            result = wrappedFunction.apply(thisArg,args);
            wrappedFunctionSuccessful = true;
            return result;
         }
         catch(itemPendingError:ItemPendingError)
         {
            itemPendingError.addResponder(new EvalBindingResponder(this,object));
            if(BindingManager.debugDestinationStrings[destString])
            {
               trace("Binding: destString = " + destString + ", error = " + itemPendingError);
            }
         }
         catch(rangeError:RangeError)
         {
            if(BindingManager.debugDestinationStrings[destString])
            {
               trace("Binding: destString = " + destString + ", error = " + rangeError);
            }
         }
         catch(error:Error)
         {
            if(error.errorID != 1006 && error.errorID != 1009 && error.errorID != 1010 && error.errorID != 1055 && error.errorID != 1069)
            {
               throw error;
            }
            if(BindingManager.debugDestinationStrings[destString])
            {
               trace("Binding: destString = " + destString + ", error = " + error);
            }
         }
         return null;
      }
      
      private function nodeSeqEqual(param1:XMLList, param2:XMLList) : Boolean
      {
         var _loc4_:uint = 0;
         var _loc3_:uint = uint(param1.length());
         if(_loc3_ == param2.length())
         {
            _loc4_ = 0;
            while(_loc4_ < _loc3_ && param1[_loc4_] === param2[_loc4_])
            {
               _loc4_++;
            }
            return _loc4_ == _loc3_;
         }
         return false;
      }
      
      public function watcherFired(param1:Boolean, param2:int) : void
      {
         var commitEvent:Boolean = param1;
         var cloneIndex:int = param2;
         if(isHandlingEvent)
         {
            return;
         }
         try
         {
            isHandlingEvent = true;
            execute(cloneIndex);
         }
         finally
         {
            isHandlingEvent = false;
         }
      }
      
      public function execute(param1:Object = null) : void
      {
         var o:Object = param1;
         if(!isEnabled)
         {
            return;
         }
         if(isExecuting || Boolean(twoWayCounterpart) && Boolean(twoWayCounterpart.isExecuting))
         {
            hasHadValue = true;
            return;
         }
         try
         {
            isExecuting = true;
            wrapFunctionCall(this,innerExecute,o);
         }
         finally
         {
            isExecuting = false;
         }
      }
      
      private function innerExecute() : void
      {
         var _loc1_:Object = wrapFunctionCall(document,srcFunc);
         if(BindingManager.debugDestinationStrings[destString])
         {
            trace("Binding: destString = " + destString + ", srcFunc result = " + _loc1_);
         }
         if(hasHadValue || wrappedFunctionSuccessful)
         {
            if(!(lastValue is XML && Boolean(lastValue.hasComplexContent()) && lastValue === _loc1_) && !(lastValue is XMLList && lastValue.hasComplexContent() && _loc1_ is XMLList && nodeSeqEqual(lastValue as XMLList,_loc1_ as XMLList)))
            {
               destFunc.call(document,_loc1_);
               lastValue = _loc1_;
               hasHadValue = true;
            }
         }
      }
   }
}

