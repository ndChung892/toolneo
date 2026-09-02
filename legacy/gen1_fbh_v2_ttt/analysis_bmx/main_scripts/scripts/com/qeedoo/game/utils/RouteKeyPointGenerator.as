package com.qeedoo.game.utils
{
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   
   public class RouteKeyPointGenerator
   {
      
      private static var _instance:RouteKeyPointGenerator;
      
      public static const KEY_POINT_LENGTH:int = 10;
      
      private var _userKeyPointsAry:Array;
      
      private var _hitTestContainer:DisplayObject;
      
      private var _hitTestBitmapData:BitmapData;
      
      public function RouteKeyPointGenerator()
      {
         super();
      }
      
      public static function getInstance() : RouteKeyPointGenerator
      {
         if(_instance == null)
         {
            _instance = new RouteKeyPointGenerator();
         }
         return _instance;
      }
      
      public function initHitTestContainer(param1:DisplayObject) : void
      {
         _hitTestContainer = param1;
      }
      
      public function generateKeyPoints(param1:int, param2:int, param3:int, param4:int, param5:Array) : void
      {
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc15_:Array = null;
         var _loc16_:Number = NaN;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc22_:int = 0;
         var _loc6_:int = param3 - param1;
         var _loc7_:int = param4 - param2;
         var _loc8_:int = Math.round(Math.pow(_loc6_ * _loc6_ + _loc7_ * _loc7_,1 / 2));
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         _loc9_ = 1;
         while(_loc9_ < _loc8_)
         {
            _loc10_ = Math.round(param1 + _loc9_ * _loc6_ / _loc8_);
            _loc11_ = Math.round(param2 + _loc9_ * _loc7_ / _loc8_);
            if(checkHitTest(_loc10_,_loc11_))
            {
               _loc12_ = true;
               break;
            }
            _loc9_ += KEY_POINT_LENGTH;
         }
         if(!_loc12_)
         {
            _loc9_ = 0;
            while(_loc9_ < _userKeyPointsAry.length)
            {
               _loc15_ = _userKeyPointsAry[_loc9_];
               if(_loc15_[0] == param1 && _loc15_[1] == param2)
               {
                  _loc13_ = true;
               }
               if(_loc15_[0] == param3 && _loc15_[1] == param4)
               {
                  _loc14_ = true;
               }
               _loc9_++;
            }
            if(!_loc13_)
            {
               _userKeyPointsAry.push([param1,param2]);
            }
            if(!_loc14_)
            {
               _userKeyPointsAry.push([param3,param4]);
            }
            return;
         }
         var _loc20_:int = param1;
         var _loc21_:int = param2;
         _loc17_ = param4 - param2;
         _loc18_ = param1 - param3;
         _loc19_ = param3 * param2 - param1 * param4;
         _loc22_ = 0;
         _loc16_ = 0;
         _loc8_ = 0;
         _loc9_ = 0;
         while(_loc9_ < param5.length)
         {
            _loc15_ = param5[_loc9_];
            _loc16_ = Math.abs((_loc17_ * _loc15_[0] + _loc18_ * _loc15_[1] + _loc19_) / Math.sqrt(_loc17_ * _loc17_ + _loc18_ * _loc18_));
            if(_loc8_ < _loc16_)
            {
               _loc8_ = _loc16_;
               _loc20_ = int(_loc15_[0]);
               _loc21_ = int(_loc15_[1]);
               _loc22_ = _loc9_ + 1;
            }
            _loc9_++;
         }
         if(_loc8_ == 0)
         {
            return;
         }
         _loc9_ = 0;
         while(_loc9_ < _userKeyPointsAry.length)
         {
            _loc15_ = _userKeyPointsAry[_loc9_];
            if(_loc15_[0] == param1 && _loc15_[1] == param2)
            {
               _loc13_ = true;
            }
            _loc9_++;
         }
         if(!_loc13_)
         {
            _userKeyPointsAry.push([param1,param2]);
         }
         var _loc23_:Array = new Array();
         _loc9_ = 0;
         while(_loc9_ < _loc22_)
         {
            _loc23_[_loc9_] = param5[_loc9_];
            _loc9_++;
         }
         var _loc24_:Array = new Array();
         _loc9_ = _loc22_;
         while(_loc9_ < param5.length)
         {
            _loc24_[_loc9_ - _loc22_] = param5[_loc9_];
            _loc9_++;
         }
         if(_loc23_.length > 0)
         {
            generateKeyPoints(param1,param2,_loc20_,_loc21_,_loc23_);
         }
         if(_loc24_.length > 0)
         {
            generateKeyPoints(_loc20_,_loc21_,param3,param4,_loc24_);
         }
         _loc9_ = 0;
         while(_loc9_ < _userKeyPointsAry.length)
         {
            _loc15_ = _userKeyPointsAry[_loc9_];
            if(_loc15_[0] == param3 && _loc15_[1] == param4)
            {
               _loc14_ = true;
            }
            _loc9_++;
         }
         if(!_loc14_)
         {
            _userKeyPointsAry.push([param3,param4]);
         }
      }
      
      public function init(param1:DisplayObject) : void
      {
         _userKeyPointsAry = new Array();
         initHitTestContainer(param1);
      }
      
      public function getKeyPointsAry() : Array
      {
         return _userKeyPointsAry;
      }
      
      private function checkHitTest(param1:Number, param2:Number) : Boolean
      {
         return !_hitTestContainer["checkHitTest"](param1,param2);
      }
   }
}

