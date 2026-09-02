package com.qeedoo.game.logic
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.RouteKeyPointGenerator;
   import com.qeedoo.game.utils.SingleAstarRoute;
   import com.qeedoo.game.view.ViewManager;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class ObjectMove
   {
      
      public function ObjectMove()
      {
         super();
      }
      
      public function getRoute(param1:int, param2:int, param3:int, param4:int, param5:DisplayObject = null, param6:int = 10) : Array
      {
         var _loc7_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc21_:int = 0;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:RouteKeyPointGenerator = null;
         var _loc25_:Array = null;
         var _loc26_:int = 0;
         var _loc27_:int = 0;
         var _loc28_:Array = null;
         var _loc29_:Array = null;
         if(param5 == null)
         {
            return [[param3,param4]];
         }
         var _loc8_:Point = new Point(param3,param4);
         var _loc9_:Point = new Point(param1,param2);
         var _loc10_:Point = param5.localToGlobal(_loc8_);
         var _loc11_:Point = param5.localToGlobal(_loc9_);
         if(!_loc10_ || !_loc11_)
         {
            return [];
         }
         if(param5.hitTestPoint(_loc11_.x,_loc11_.y,true))
         {
            _loc21_ = Point.distance(_loc8_,_loc9_);
            _loc22_ = (param3 - param1) * 10 / _loc21_;
            _loc23_ = (param4 - param2) * 10 / _loc21_;
            _loc7_ = 1;
            while(_loc7_ < 3)
            {
               _loc11_.offset(_loc22_,_loc23_);
               if(!param5.hitTestPoint(_loc11_.x,_loc11_.y,true))
               {
                  _loc9_.offset(_loc22_ * _loc7_,_loc23_ * _loc7_);
                  return getRoute(_loc9_.x,_loc9_.y,param3,param4,param5);
               }
               _loc7_++;
            }
            return [];
         }
         if(!param5["checkHitTest"](_loc8_.x,_loc8_.y))
         {
            return getDirectRoute(param3,param4,param1,param2,_loc8_,_loc9_,_loc11_,param5);
         }
         var _loc12_:int = param3 - param1;
         var _loc13_:int = param4 - param2;
         var _loc14_:int = Math.round(Math.pow(_loc12_ * _loc12_ + _loc13_ * _loc13_,1 / 2));
         var _loc17_:Boolean = false;
         _loc17_ = true;
         if(!_loc17_)
         {
            return [[param3,param4]];
         }
         var _loc18_:Core = Core.getInstance();
         var _loc19_:Sprite = Sprite(_loc18_.view.getUI(ViewManager.STAGE_MAIN).routeLayer);
         var _loc20_:Array = SingleAstarRoute.getInstance().find(param1,param2,param3,param4,param5,_loc19_.graphics);
         if(_loc20_)
         {
            if(GamePredef.DEBUG_MODE)
            {
               _loc19_.graphics.clear();
               _loc19_.graphics.lineStyle(2,11206553,0.8);
               _loc26_ = param1;
               _loc27_ = param2;
               for each(_loc28_ in _loc20_)
               {
                  _loc19_.graphics.beginFill(16711680,0.8);
                  _loc19_.graphics.drawCircle(_loc28_[0],_loc28_[1],3);
                  _loc19_.graphics.moveTo(_loc26_,_loc27_);
                  _loc19_.graphics.lineTo(_loc28_[0],_loc28_[1]);
                  _loc19_.graphics.endFill();
                  _loc26_ = int(_loc28_[0]);
                  _loc27_ = int(_loc28_[1]);
               }
            }
            _loc24_ = RouteKeyPointGenerator.getInstance();
            _loc24_.init(param5);
            _loc24_.generateKeyPoints(param1,param2,param3,param4,_loc20_);
            _loc25_ = _loc24_.getKeyPointsAry();
            if((Boolean(_loc25_)) && _loc25_.length > 1)
            {
               _loc25_.shift();
            }
            if(GamePredef.DEBUG_MODE)
            {
               _loc19_.graphics.lineStyle(2,16724787,0.8);
               _loc26_ = param1;
               _loc27_ = param2;
               for each(_loc29_ in _loc25_)
               {
                  _loc19_.graphics.beginFill(65280,0.8);
                  _loc19_.graphics.drawCircle(_loc29_[0],_loc29_[1],3);
                  _loc19_.graphics.moveTo(_loc26_,_loc27_);
                  _loc19_.graphics.lineTo(_loc29_[0],_loc29_[1]);
                  _loc19_.graphics.endFill();
                  _loc26_ = int(_loc29_[0]);
                  _loc27_ = int(_loc29_[1]);
               }
            }
            return _loc25_;
         }
         return getDirectRoute(param3,param4,param1,param2,_loc8_,_loc9_,_loc11_,param5);
      }
      
      public function getSafeRoute(param1:int, param2:int, param3:int, param4:int, param5:DisplayObject = null) : Array
      {
         var _loc8_:int = 0;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:int = 0;
         var _loc14_:Array = null;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:uint = 0;
         var _loc18_:uint = 0;
         var _loc19_:int = 0;
         var _loc20_:int = 0;
         var _loc21_:Boolean = false;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc6_:Point = new Point(param3,param4);
         var _loc7_:Point = new Point(param1,param2);
         if(!param5["checkHitTest"](_loc7_.x,_loc7_.y))
         {
            _loc8_ = Point.distance(_loc6_,_loc7_);
            _loc9_ = (param3 - param1) * 10 / _loc8_;
            _loc10_ = (param4 - param2) * 10 / _loc8_;
            _loc11_ = 100;
            _loc12_ = 20;
            _loc13_ = 16;
            _loc14_ = new Array();
            _loc15_ = Math.PI * 2 / _loc13_;
            _loc16_ = 0;
            _loc17_ = param5["_mapWidth"] - _loc11_;
            _loc18_ = param5["_mapHeight"] - _loc11_;
            _loc19_ = 0;
            while(_loc19_ < _loc13_)
            {
               _loc14_.push([Math.cos(_loc16_) * _loc12_,Math.sin(_loc16_) * _loc12_]);
               _loc16_ += _loc15_;
               _loc19_++;
            }
            _loc20_ = 0;
            _loc21_ = false;
            while(_loc20_ < 200)
            {
               _loc19_ = 0;
               while(_loc19_ < _loc13_)
               {
                  if(_loc14_[_loc19_])
                  {
                     _loc22_ = param1 + _loc14_[_loc19_][0] * _loc20_;
                     _loc23_ = param2 + _loc14_[_loc19_][1] * _loc20_;
                     if(_loc22_ < param1 && _loc22_ < _loc11_ || _loc22_ > param1 && _loc22_ > _loc17_ || _loc23_ < param2 && _loc23_ < _loc11_ || _loc23_ > param2 && _loc23_ > _loc18_)
                     {
                        delete _loc14_[_loc19_];
                     }
                     else if(param5["checkHitTest"](_loc22_,_loc23_))
                     {
                        _loc7_.offset(_loc14_[_loc19_][0] * _loc20_,_loc14_[_loc19_][1] * _loc20_);
                        _loc21_ = true;
                        break;
                     }
                  }
                  _loc19_++;
               }
               if(_loc21_)
               {
                  break;
               }
               _loc20_++;
            }
            if(_loc20_ < 200)
            {
               return [[_loc7_.x,_loc7_.y]];
            }
            return [[_loc6_.x,_loc6_.y]];
         }
         return null;
      }
      
      private function getDirectRoute(param1:int, param2:int, param3:int, param4:int, param5:Point, param6:Point, param7:Point, param8:DisplayObject) : Array
      {
         var _loc9_:int = Point.distance(param5,param6);
         var _loc10_:Number = (param1 - param3) * 10 / _loc9_;
         var _loc11_:Number = (param2 - param4) * 10 / _loc9_;
         param7.offset(_loc10_,_loc11_);
         var _loc12_:int = 0;
         while(param8["checkHitTest"](param3 + _loc10_ * _loc12_,param4 + _loc11_ * _loc12_))
         {
            param7.offset(_loc10_,_loc11_);
            _loc12_++;
         }
         param6.offset(_loc10_ * _loc12_,_loc11_ * _loc12_);
         return [[param6.x,param6.y]];
      }
      
      public function getBattleRoute(param1:int, param2:int, param3:int, param4:int) : Array
      {
         var _loc5_:Point = new Point(param1,param2);
         var _loc6_:Point = new Point(param3,param4);
         var _loc7_:int = Point.distance(_loc5_,_loc6_);
         var _loc8_:int = GamePredef.GROUP_FOLLOW_DISTANCE;
         var _loc9_:Point = _loc6_.clone();
         _loc9_.offset((param1 - param3) * _loc8_ / _loc7_,(param2 - param4) * _loc8_ / _loc7_);
         return [[_loc9_.x,_loc9_.y]];
      }
      
      public function getCloseToRoute(param1:int, param2:int, param3:int, param4:int, param5:DisplayObject = null) : Array
      {
         var _loc11_:Point = null;
         var _loc12_:Array = null;
         var _loc6_:Array = getRoute(param1,param2,param3,param4,param5);
         if(_loc6_ == null || _loc6_.length <= 0)
         {
            return _loc6_;
         }
         var _loc7_:uint = uint(GamePredef.GROUP_FOLLOW_DISTANCE);
         var _loc8_:Point = new Point(_loc6_[0][0],_loc6_[0][1]);
         var _loc9_:Point = new Point(param1,param2);
         var _loc10_:uint = Point.distance(_loc8_,_loc9_);
         if(_loc6_.length == 1)
         {
            if(_loc10_ < _loc7_)
            {
               return null;
            }
            _loc11_ = _loc8_.clone();
            _loc11_.offset((_loc9_.x - _loc8_.x) * _loc7_ / _loc10_,(_loc9_.y - _loc8_.y) * _loc7_ / _loc10_);
            return [[_loc11_.x,_loc11_.y]];
         }
         var _loc13_:* = int(_loc6_.length - 1);
         while(_loc13_ > 0)
         {
            _loc8_ = new Point(_loc6_[_loc13_][0],_loc6_[_loc13_][1]);
            _loc9_ = new Point(_loc6_[_loc13_ - 1][0],_loc6_[_loc13_ - 1][1]);
            _loc10_ = Point.distance(_loc8_,_loc9_);
            if(_loc10_ >= _loc7_)
            {
               _loc11_ = _loc8_.clone();
               _loc11_.offset((_loc9_.x - _loc8_.x) * _loc7_ / _loc10_,(_loc9_.y - _loc8_.y) * _loc7_ / _loc10_);
               _loc12_ = _loc6_.slice(0,_loc6_.length - 1);
               _loc12_.push([_loc11_.x,_loc11_.y]);
               return _loc12_;
            }
            _loc7_ -= _loc10_;
            _loc13_--;
         }
         return null;
      }
      
      private function checkHitTest(param1:Number, param2:Number, param3:DisplayObject) : Boolean
      {
         return !param3["checkHitTest"](param1,param2);
      }
   }
}

