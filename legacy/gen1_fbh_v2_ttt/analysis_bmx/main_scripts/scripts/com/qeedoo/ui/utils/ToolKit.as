package com.qeedoo.ui.utils
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.vo.PropTextVO;
   import flash.geom.Point;
   import mx.collections.ArrayCollection;
   import mx.core.Application;
   import mx.core.UITextFormat;
   
   public class ToolKit
   {
      
      public static const CROSS_CONTENTION_UINT_ID_START:int = 600000;
      
      public function ToolKit()
      {
         super();
      }
      
      public static function addAll(param1:Array) : Number
      {
         var _loc3_:* = undefined;
         var _loc2_:Number = 0;
         for(_loc3_ in param1)
         {
            if(Boolean(param1[_loc3_]) && param1[_loc3_] != undefined)
            {
               _loc2_ = add(_loc2_,param1[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      public static function getColorTxt(param1:String, param2:String) : String
      {
         return GamePredef.COLOR_TXT.replace("{color}",param1).replace("{txt}",param2);
      }
      
      public static function getSpliceIndex(param1:String, param2:int, param3:int = 12) : Number
      {
         var _loc4_:String = null;
         if(measureTextWidth(param1,param3) > param2)
         {
            _loc4_ = param1.substr(0,Math.floor(param1.length / 2));
            if(measureTextWidth(_loc4_,param3) < param2)
            {
               while(measureTextWidth(_loc4_,param3) < param2)
               {
                  _loc4_ += param1.charAt(_loc4_.length);
               }
               return _loc4_.length;
            }
         }
         return -1;
      }
      
      public static function getTimeStrNow() : String
      {
         var now:Date = new Date();
         var hourStr:String = String(now.getHours());
         var minStr:String = String(now.getMinutes());
         var secStr:String = String(now.getSeconds());
         var addZero:Function = function(param1:String):String
         {
            if(param1.length == 1)
            {
               param1 = "0" + param1;
            }
            return param1;
         };
         return addZero(hourStr) + ":" + addZero(minStr) + ":" + addZero(secStr);
      }
      
      public static function getPageCount(param1:*, param2:int) : int
      {
         return Math.ceil(param1.length / param2);
      }
      
      public static function isLifeMaterial(param1:Object) : Boolean
      {
         if(!param1)
         {
            return false;
         }
         return isEqual(param1.kind,GamePredef.ITEM_KIND_MATERIAL) && !isOriginalMaterial(param1);
      }
      
      public static function getDisByXY(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Point = new Point(param1,param2);
         var _loc6_:Point = new Point(param3,param4);
         return Point.distance(_loc5_,_loc6_);
      }
      
      public static function getPageCollection(param1:ArrayCollection, param2:int, param3:int) : ArrayCollection
      {
         var _loc4_:ArrayCollection = new ArrayCollection();
         if(!param1)
         {
            return _loc4_;
         }
         var _loc5_:int = param2;
         if(_loc5_ < 0)
         {
            _loc5_ = 0;
         }
         var _loc6_:int = _loc5_ + param3;
         while(_loc5_ < _loc6_ && _loc5_ < param1.length)
         {
            _loc4_.addItem(param1[_loc5_]);
            _loc5_++;
         }
         return _loc4_;
      }
      
      public static function isSmallOrEqual(param1:*, param2:*) : Boolean
      {
         return Number(param1) <= Number(param2);
      }
      
      public static function getDir(param1:int, param2:int, param3:int = 0) : int
      {
         if(param1 == 0 && param2 == 0)
         {
            return param3;
         }
         if(param1 > 0)
         {
            if(param2 > 0)
            {
               if(param1 > param2 * 2.4)
               {
                  return 2;
               }
               if(param2 > param1 * 2.4)
               {
                  return 0;
               }
               return 1;
            }
            if(param1 > -param2 * 2.4)
            {
               return 2;
            }
            if(-param2 > param1 * 2.4)
            {
               return 4;
            }
            return 3;
         }
         if(param2 > 0)
         {
            if(-param1 > param2 * 2.4)
            {
               return 6;
            }
            if(param2 > -param1 * 2.4)
            {
               return 0;
            }
            return 7;
         }
         if(param1 < param2 * 2.4)
         {
            return 6;
         }
         if(param2 < param1 * 2.4)
         {
            return 4;
         }
         return 5;
      }
      
      public static function getRound(param1:*, param2:*) : Number
      {
         return Math.round(param1 * Math.pow(10,param2)) / Math.pow(10,param2);
      }
      
      public static function getObjectCount(param1:Object) : int
      {
         var _loc3_:* = undefined;
         var _loc2_:int = 0;
         for(_loc3_ in param1)
         {
            _loc2_++;
         }
         return _loc2_;
      }
      
      public static function ableTomxTemp(param1:Object) : Boolean
      {
         if(param1)
         {
            if(param1.id >= 5375 && param1.id <= 5697)
            {
               return true;
            }
            if(param1.id >= 5770 && param1.id <= 5841)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function minus(param1:*, param2:*) : Number
      {
         return Number(param1) - Number(param2);
      }
      
      public static function getRandomPoint(param1:uint, param2:uint, param3:uint, param4:uint) : Point
      {
         var _loc5_:int = genRangeRandom(0 - param3,param3);
         var _loc6_:int = genRangeRandom(0 - param4,param4);
         var _loc7_:Point = new Point();
         _loc7_.x = param1 + _loc5_;
         _loc7_.y = param2 + _loc6_;
         return _loc7_;
      }
      
      public static function add(param1:*, param2:*) : Number
      {
         return Number(param1) + Number(param2);
      }
      
      public static function indexToPoint(param1:int, param2:int) : Point
      {
         var _loc3_:int = param2 / 100;
         var _loc4_:Point = new Point();
         _loc4_.x = param1 % _loc3_ * 100 + 50;
         _loc4_.y = int(param1 / _loc3_) * 100 + 50;
         return _loc4_;
      }
      
      public static function pointToIndex(param1:int, param2:int, param3:int) : int
      {
         var _loc4_:int = param3 / 100;
         return int(int(param2 / 100) * _loc4_ + int(param1 / 100));
      }
      
      public static function isOriginalMaterial(param1:Object) : Boolean
      {
         if(!param1)
         {
            return false;
         }
         return isEqual(param1.kind,GamePredef.ITEM_KIND_MATERIAL) && isSmallOrEqual(param1.type,605);
      }
      
      public static function isEqual(param1:*, param2:*) : Boolean
      {
         return Number(param1) == Number(param2);
      }
      
      public static function getDistance(param1:int, param2:int) : int
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public static function genRangeRandom(param1:Number, param2:Number) : Number
      {
         return Math.random() * (param2 - param1 + 1) + param1;
      }
      
      public static function isEmptyObject(param1:Object) : Boolean
      {
         var _loc2_:String = null;
         if(param1)
         {
            for(_loc2_ in param1)
            {
               if(param1[_loc2_])
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      public static function genPropertyObj(param1:Array, param2:String, param3:int, param4:int) : void
      {
         var _loc5_:PropTextVO = null;
         if(param3 != 0 || param4 != 0)
         {
            _loc5_ = new PropTextVO();
            _loc5_.propName = param2;
            _loc5_.propOri = param3.toString();
            if(param4 == 0)
            {
               _loc5_.propModified = "";
               _loc5_.propColor = 0;
            }
            else if(param4 > 0)
            {
               _loc5_.propModified = "+" + param4.toString();
               _loc5_.propColor = 6608700;
            }
            else
            {
               _loc5_.propModified = param4.toString();
               _loc5_.propColor = 16711680;
            }
            param1.push(_loc5_);
         }
      }
      
      public static function measureTextWidth(param1:String, param2:int = 12) : Number
      {
         var _loc3_:UITextFormat = new UITextFormat(Application.application.systemManager);
         _loc3_.antiAliasType = "advanced";
         _loc3_.gridFitType = "pixel";
         _loc3_.font = "Arial";
         _loc3_.size = param2;
         return _loc3_.measureText(param1).width;
      }
      
      public static function isBigThan(param1:*, param2:*) : Boolean
      {
         return Number(param1) > Number(param2);
      }
      
      public static function ableToTemp(param1:Object) : Boolean
      {
         if(param1)
         {
            if(param1.kind == GamePredef.ITEM_KIND_MATERIAL || param1.type == GamePredef.ITEM_TYPE_JEWEL || param1.kind == GamePredef.ITEM_KIND_FEATHER)
            {
               return true;
            }
            if(param1.type == GamePredef.ITEM_TYPE_STAR_SPEED)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function isBigOrEqual(param1:*, param2:*) : Boolean
      {
         return Number(param1) >= Number(param2);
      }
      
      public static function getServerName(param1:Number) : String
      {
         var _loc2_:int = 0;
         if(param1 >= CROSS_CONTENTION_UINT_ID_START)
         {
            _loc2_ = (param1 + 1) % CROSS_CONTENTION_UINT_ID_START;
            return Language.CROSS_CONTENTION_PANEL_U[161] + _loc2_;
         }
         if(param1 >= 500 && param1 <= 799)
         {
            return GamePredef.CROSS_CONTENTION_UNITED_SERVER_NAME[param1];
         }
         if(param1 >= 0 && param1 < 500 || param1 >= 800)
         {
            return param1.toString();
         }
         return "";
      }
      
      public static function isSmallThan(param1:*, param2:*) : Boolean
      {
         return Number(param1) < Number(param2);
      }
      
      public static function formatQuestText(param1:String) : String
      {
         var _loc2_:String = param1.replace(/\n/isg,"");
         _loc2_ = _loc2_.replace(/\r/isg,"");
         return _loc2_.replace(/\t/isg,"");
      }
   }
}

