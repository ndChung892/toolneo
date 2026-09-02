package com.qeedoo.game.utils
{
   import flash.display.Sprite;
   import mx.controls.Alert;
   import mx.core.Application;
   import mx.core.UIComponent;
   import mx.events.CloseEvent;
   import mx.managers.PopUpManager;
   
   public class Alert1 extends Alert
   {
      
      private static var last_time:uint;
      
      public static var alertDelay:uint = 1000;
      
      public function Alert1()
      {
         super();
      }
      
      public static function show(param1:String = "", param2:String = "", param3:uint = 4, param4:Sprite = null, param5:Function = null, param6:Class = null, param7:uint = 4) : Alert
      {
         var _loc10_:uint = 0;
         if(last_time)
         {
            _loc10_ = new Date().getTime();
            if(_loc10_ - last_time < alertDelay)
            {
               return null;
            }
         }
         last_time = new Date().getTime();
         var _loc8_:Boolean = param3 & Alert.NONMODAL ? false : true;
         if(!param4)
         {
            param4 = Sprite(Application.application);
         }
         var _loc9_:Alert = new Alert();
         if(Boolean(param3 & Alert.OK) || Boolean(param3 & Alert.CANCEL) || Boolean(param3 & Alert.YES) || Boolean(param3 & Alert.NO))
         {
            _loc9_.buttonFlags = param3;
         }
         if(param7 == Alert.OK || param7 == Alert.CANCEL || param7 == Alert.YES || param7 == Alert.NO)
         {
            _loc9_.defaultButtonFlag = param7;
         }
         _loc9_.text = param1;
         _loc9_.title = param2;
         _loc9_.iconClass = param6;
         if(param5 != null)
         {
            _loc9_.addEventListener(CloseEvent.CLOSE,param5);
         }
         if(param4 is UIComponent)
         {
            _loc9_.moduleFactory = UIComponent(param4).moduleFactory;
         }
         PopUpManager.addPopUp(_loc9_,param4,_loc8_);
         _loc9_.setActualSize(_loc9_.getExplicitOrMeasuredWidth(),_loc9_.getExplicitOrMeasuredHeight());
         return _loc9_;
      }
   }
}

