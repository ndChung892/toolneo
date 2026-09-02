package com.qeedoo.game.utils
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import mx.formatters.DateFormatter;
   
   public class TimeUtil
   {
      
      private static var localTimeOffSet:Number;
      
      private static const DateArr:* = [Language.ACTIVEPANEL_U[33],Language.ACTIVEPANEL_U[34],Language.ACTIVEPANEL_U[35],Language.ACTIVEPANEL_U[36],Language.ACTIVEPANEL_U[37],Language.ACTIVEPANEL_U[38],Language.ACTIVEPANEL_U[39]];
      
      public function TimeUtil()
      {
         super();
      }
      
      public static function decodeTimeObj(param1:Object) : String
      {
         var _loc6_:* = undefined;
         var _loc2_:Date = new Date();
         var _loc3_:Boolean = false;
         if(!param1.everyDay && Boolean(param1.dateArr))
         {
            _loc6_ = 0;
            while(_loc6_ < param1.dateArr.length)
            {
               if(_loc2_.getDay() == (Number(param1.dateArr[_loc6_]) + 1) % 7)
               {
                  _loc3_ = true;
                  break;
               }
               _loc6_++;
            }
            if(!_loc3_)
            {
               return null;
            }
         }
         var _loc4_:Array = param1.startTime.split(":");
         var _loc5_:Array = param1.endTime.split(":");
         if(_loc2_.getHours() < Number(_loc4_[0]) || _loc2_.getHours() == Number(_loc4_[0]) && _loc2_.getMinutes() < Number(_loc4_[1]))
         {
            return Language.DAILYACT_U[5];
         }
         if(_loc2_.getHours() == Number(_loc5_[0]) && _loc2_.getMinutes() >= Number(_loc5_[1]) || _loc2_.getHours() > Number(_loc5_[0]))
         {
            return Language.DAILYACT_U[4];
         }
         return Language.DAILYACT_U[3];
      }
      
      public static function get timeOSOffSet() : Number
      {
         if(!localTimeOffSet)
         {
            localTimeOffSet = new Date().getTimezoneOffset() * 60 * 1000;
         }
         return localTimeOffSet - Core.getInstance().serverTimeOffSet;
      }
      
      public static function getTimeStr3(param1:String) : Object
      {
         var _loc6_:Array = null;
         var _loc7_:Array = null;
         var _loc2_:Object = new Object();
         var _loc3_:Array = param1.split("#");
         var _loc4_:String = _loc3_[0];
         var _loc5_:String = _loc3_[1] == null ? "" : _loc3_[1];
         if(_loc4_ == "-1")
         {
            _loc2_.everyDay = true;
         }
         else
         {
            _loc6_ = _loc4_.split(",");
            _loc2_.dateArr = _loc6_;
         }
         if(_loc5_ != "")
         {
            _loc7_ = _loc5_.split("-");
            _loc2_.startTime = _loc7_[0];
            _loc2_.endTime = _loc7_[1];
         }
         return _loc2_;
      }
      
      public static function dateTimeToString(param1:Date) : String
      {
         var _loc2_:DateFormatter = new DateFormatter();
         _loc2_.formatString = "YYYY-MM-DD JJ:NN:SS";
         return _loc2_.format(param1);
      }
      
      public static function getTimeStr2(param1:String) : Object
      {
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:Array = null;
         var _loc9_:Array = null;
         var _loc2_:Array = param1.split("#");
         var _loc3_:Object = new Object();
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc5_ = _loc2_[_loc4_].toString().split("|");
            _loc6_ = _loc5_[0];
            _loc7_ = _loc5_[1] == null ? "" : _loc5_[1];
            if(_loc6_ == "-1")
            {
               _loc3_.everyDay = true;
            }
            else
            {
               _loc8_ = _loc6_.split(",");
               _loc3_.dateArr = _loc8_;
            }
            if(_loc7_ != "")
            {
               _loc9_ = _loc7_.split("-");
               _loc3_.startTime = _loc9_[0];
               _loc3_.endTime = _loc9_[1];
            }
            _loc4_++;
         }
         if(_loc2_.length > 1)
         {
            trace(_loc3_);
         }
         return _loc3_;
      }
      
      public static function getTimeStr4(param1:*, param2:*) : *
      {
         var _loc3_:Date = new Date(param2);
         var _loc4_:Number = _loc3_.getMinutes();
         var _loc5_:Number = _loc3_.getHours();
         var _loc6_:Number = _loc3_.getDay();
         var _loc7_:Number = _loc3_.getDate();
         var _loc8_:Number = _loc3_.getMonth();
         switch(param1)
         {
            case "min":
               return _loc8_ + "|" + _loc7_ + "|" + _loc6_ + "|" + _loc5_ + "|" + _loc4_;
            case "hour":
               return _loc8_ + "|" + _loc7_ + "|" + _loc6_ + "|" + _loc5_;
            case "day":
               return _loc8_ + "|" + _loc7_ + "|" + _loc6_;
            case "date":
               return _loc8_ + "|" + _loc7_;
            case "month":
               return _loc8_;
            default:
               return _loc8_ + "|" + _loc7_ + "|" + _loc6_ + "|" + _loc5_;
         }
      }
      
      public static function getTimeStr(param1:String) : String
      {
         var _loc5_:Array = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:Array = null;
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc2_:Array = param1.split("#");
         var _loc3_:String = "";
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_.length)
         {
            _loc5_ = _loc2_[_loc4_].toString().split("|");
            _loc6_ = _loc5_[0];
            _loc7_ = _loc5_[1] == null ? "" : _loc5_[1];
            if(_loc6_ == "-1")
            {
               _loc7_ = Language.ACTIVEPANEL_U[31] + " " + _loc7_;
            }
            else
            {
               _loc8_ = _loc6_.split(",");
               _loc9_ = Language.ACTIVEPANEL_U[32];
               _loc10_ = 0;
               while(_loc10_ < _loc8_.length)
               {
                  _loc9_ += DateArr[Number(_loc8_[_loc10_])] + "/";
                  _loc10_++;
               }
               _loc9_ = _loc9_.substr(0,_loc9_.length - 1);
               _loc7_ = _loc9_ + " " + _loc7_;
            }
            _loc3_ += _loc7_ + " ";
            _loc4_++;
         }
         if(_loc2_.length > 1)
         {
            trace(_loc3_);
         }
         return _loc3_;
      }
      
      public static function get dateFormatter() : DateFormatter
      {
         var _loc1_:DateFormatter = null;
         if(_loc1_ == null)
         {
            _loc1_ = new DateFormatter();
            _loc1_.formatString = "HH:NN";
         }
         return _loc1_;
      }
      
      public static function secToTime(param1:Number) : String
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         if(param1)
         {
            _loc2_ = 0;
            _loc3_ = 0;
            _loc4_ = 0;
            _loc5_ = "00";
            _loc6_ = "00";
            _loc7_ = "00";
            if(param1 >= 3600)
            {
               _loc2_ = Math.floor(param1 / 3600);
               _loc3_ = Math.floor(param1 / 60) % 60;
               _loc4_ = param1 % 60;
            }
            else if(param1 >= 60)
            {
               _loc2_ = 0;
               _loc3_ = Math.floor(param1 / 60);
               _loc4_ = param1 % 60;
            }
            else if(param1 > 0)
            {
               _loc2_ = 0;
               _loc3_ = 0;
               _loc4_ = param1;
            }
            else
            {
               _loc2_ = 0;
               _loc3_ = 0;
               _loc4_ = 0;
            }
            if(_loc2_ > 0)
            {
               if(_loc2_ <= 9)
               {
                  _loc5_ = String(_loc2_);
               }
               else
               {
                  _loc5_ = String(_loc2_);
               }
            }
            if(_loc3_ >= 0)
            {
               if(_loc3_ <= 9)
               {
                  _loc6_ = "0" + _loc3_;
               }
               else
               {
                  _loc6_ = String(_loc3_);
               }
            }
            if(_loc4_ >= 0)
            {
               if(_loc4_ <= 9)
               {
                  _loc7_ = "0" + _loc4_;
               }
               else
               {
                  _loc7_ = String(_loc4_);
               }
            }
            if(_loc2_ == 0)
            {
               if(_loc4_ == 0 && _loc3_ == 0)
               {
                  return "00:00";
               }
               return _loc6_ + ":" + _loc7_;
            }
            return _loc5_ + ":" + _loc6_ + ":" + _loc7_;
         }
         return "00:00";
      }
      
      public static function getThisMonDay(param1:Number) : String
      {
         var _loc2_:Date = new Date(param1);
         var _loc3_:Number = _loc2_.getMinutes();
         var _loc4_:Number = _loc2_.getHours();
         var _loc5_:Number = _loc2_.getDay();
         var _loc6_:Number = _loc2_.getDate();
         var _loc7_:Number = _loc2_.getMonth();
         var _loc8_:Number = _loc2_.getFullYear();
         var _loc9_:Number = 0;
         if(Number(_loc5_) == 0)
         {
            _loc9_ = 6;
         }
         else
         {
            _loc9_ = Number(_loc5_) - 1;
         }
         var _loc10_:Number = new Date(_loc2_.getFullYear(),_loc2_.getMonth(),_loc2_.getDate()).getTime();
         var _loc11_:Number = Number(_loc10_) - Number(24 * 3600 * 1000 * _loc9_);
         var _loc12_:* = new Date(_loc11_);
         _loc5_ = Number(_loc12_.getDay());
         _loc6_ = Number(_loc12_.getDate());
         _loc7_ = Number(_loc12_.getMonth());
         return _loc7_ + "|" + _loc6_ + "|" + _loc5_;
      }
   }
}

