package com.qeedoo.game.utils
{
   import com.qeedoo.game.system.Core;
   import flash.display.DisplayObject;
   import flash.display.Graphics;
   import flash.utils.getTimer;
   
   public class SingleAstarRoute
   {
      
      private static var _instance:SingleAstarRoute;
      
      private var _openListAry:Array;
      
      private var _openID:int;
      
      private var _hitTestContainer:DisplayObject;
      
      private var _pathScoreListAry:Array;
      
      private var _noteMapAry:Array;
      
      private var hittest_cost:Number = 0;
      
      private const COST_STRAIGHT:int = 10;
      
      private var STEP_LENGTH:int = 20;
      
      private const NOTE_ID_INDEX:int = 0;
      
      private var _maxTryValue:int;
      
      private const NOTE_CLOSED_INDEX:int = 2;
      
      private var cancelled:Boolean = false;
      
      private var _xPointListAry:Array;
      
      private var _yPointListAry:Array;
      
      private var _parentListAry:Array;
      
      private const COST_DIAGONAL:int = 14;
      
      private const NOTE_OPEN_INDEX:int = 1;
      
      private var _openCountLength:int;
      
      private var _movementCostListAry:Array;
      
      public function SingleAstarRoute(param1:Single)
      {
         super();
         _maxTryValue = 8000;
      }
      
      public static function getInstance() : SingleAstarRoute
      {
         if(_instance == null)
         {
            _instance = new SingleAstarRoute(new Single());
         }
         return _instance;
      }
      
      public function cancel() : void
      {
         cancelled = true;
      }
      
      private function closeNote(param1:int) : void
      {
         --_openCountLength;
         var _loc2_:int = int(_xPointListAry[param1]);
         var _loc3_:int = int(_yPointListAry[param1]);
         _noteMapAry[_loc3_][_loc2_][NOTE_OPEN_INDEX] = false;
         _noteMapAry[_loc3_][_loc2_][NOTE_CLOSED_INDEX] = true;
         if(_openCountLength <= 0)
         {
            _openCountLength = 0;
            _openListAry = [];
            return;
         }
         _openListAry[0] = _openListAry.pop();
         backNote();
      }
      
      public function init(param1:int = 8000) : void
      {
         _maxTryValue = param1;
      }
      
      private function isOpen(param1:int, param2:int) : Boolean
      {
         if(_noteMapAry[param2] == null)
         {
            return false;
         }
         if(_noteMapAry[param2][param1] == null)
         {
            return false;
         }
         return _noteMapAry[param2][param1][NOTE_OPEN_INDEX];
      }
      
      private function getArounds(param1:int, param2:int) : Array
      {
         var _loc3_:Array = new Array();
         var _loc4_:int = new int();
         var _loc5_:int = new int();
         var _loc6_:Boolean = new Boolean();
         _loc4_ = param1 + STEP_LENGTH;
         _loc5_ = param2;
         var _loc7_:Boolean = checkHitTest(_loc4_,_loc5_);
         if((_loc7_) && !isClosed(_loc4_,_loc5_))
         {
            _loc3_.push([_loc4_,_loc5_]);
         }
         _loc4_ = param1;
         _loc5_ = param2 + STEP_LENGTH;
         var _loc8_:Boolean = checkHitTest(_loc4_,_loc5_);
         if((_loc8_) && !isClosed(_loc4_,_loc5_))
         {
            _loc3_.push([_loc4_,_loc5_]);
         }
         _loc4_ = param1 - STEP_LENGTH;
         _loc5_ = param2;
         var _loc9_:Boolean = checkHitTest(_loc4_,_loc5_);
         if((_loc9_) && !isClosed(_loc4_,_loc5_))
         {
            _loc3_.push([_loc4_,_loc5_]);
         }
         _loc4_ = param1;
         _loc5_ = param2 - STEP_LENGTH;
         var _loc10_:Boolean = checkHitTest(_loc4_,_loc5_);
         if((_loc10_) && !isClosed(_loc4_,_loc5_))
         {
            _loc3_.push([_loc4_,_loc5_]);
         }
         _loc4_ = param1 + STEP_LENGTH;
         _loc5_ = param2 + STEP_LENGTH;
         _loc6_ = checkHitTest(_loc4_,_loc5_);
         if((_loc6_) && _loc7_ && _loc8_ && !isClosed(_loc4_,_loc5_))
         {
            _loc3_.push([_loc4_,_loc5_]);
         }
         _loc4_ = param1 - STEP_LENGTH;
         _loc5_ = param2 + STEP_LENGTH;
         _loc6_ = checkHitTest(_loc4_,_loc5_);
         if((_loc6_) && _loc9_ && _loc8_ && !isClosed(_loc4_,_loc5_))
         {
            _loc3_.push([_loc4_,_loc5_]);
         }
         _loc4_ = param1 - STEP_LENGTH;
         _loc5_ = param2 - STEP_LENGTH;
         _loc6_ = checkHitTest(_loc4_,_loc5_);
         if((_loc6_) && _loc9_ && _loc10_ && !isClosed(_loc4_,_loc5_))
         {
            _loc3_.push([_loc4_,_loc5_]);
         }
         _loc4_ = param1 + STEP_LENGTH;
         _loc5_ = param2 - STEP_LENGTH;
         _loc6_ = checkHitTest(_loc4_,_loc5_);
         if((_loc6_) && _loc7_ && _loc10_ && !isClosed(_loc4_,_loc5_))
         {
            _loc3_.push([_loc4_,_loc5_]);
         }
         return _loc3_;
      }
      
      private function getIndex(param1:int) : int
      {
         var _loc3_:int = 0;
         var _loc2_:int = 1;
         for each(_loc3_ in _openListAry)
         {
            if(_loc3_ == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      private function checkHitTest(param1:Number, param2:Number) : Boolean
      {
         return Boolean(_hitTestContainer["checkHitTest"](param1,param2));
      }
      
      private function isClosed(param1:int, param2:int) : Boolean
      {
         if(_noteMapAry[param2] == null)
         {
            return false;
         }
         if(_noteMapAry[param2][param1] == null)
         {
            return false;
         }
         return _noteMapAry[param2][param1][NOTE_CLOSED_INDEX];
      }
      
      public function find(param1:int, param2:int, param3:int, param4:int, param5:DisplayObject, param6:Graphics) : Array
      {
         var _loc17_:Array = null;
         var _loc18_:Core = null;
         initLists();
         initHitTestContainer(param5);
         _openCountLength = 0;
         _openID = -1;
         trace("start: " + getTimer());
         var _loc7_:uint = uint(param5["_mapWidth"]);
         var _loc8_:uint = uint(param5["_mapHeight"]);
         openNote(param1,param2,0,0,0);
         var _loc9_:int = 0;
         var _loc10_:int = new int();
         var _loc11_:int = new int();
         var _loc12_:int = new int();
         var _loc13_:Array = new Array();
         var _loc14_:int = new int();
         var _loc15_:int = new int();
         var _loc16_:int = new int();
         while(_openCountLength > 0)
         {
            if(++_loc9_ > _maxTryValue)
            {
               destroyLists();
               trace("finish:" + getTimer() + " ; too many nodes : " + _loc9_);
               return null;
            }
            if(cancelled)
            {
               trace("cancelled:" + getTimer() + " ; ");
            }
            _loc10_ = int(_openListAry[0]);
            closeNote(_loc10_);
            _loc11_ = int(_xPointListAry[_loc10_]);
            _loc12_ = int(_yPointListAry[_loc10_]);
            if(Math.abs(_loc11_ - param3) < STEP_LENGTH && Math.abs(_loc12_ - param4) < STEP_LENGTH)
            {
               trace("finish:" + getTimer() + " ; found : " + _loc9_);
               _loc18_ = Core.getInstance();
               trace("player dir is" + _loc18_.player.dir);
               trace("hittest cost : " + hittest_cost);
               return getPathAry(param1,param2,_loc10_);
            }
            _loc13_ = getArounds(_loc11_,_loc12_);
            for each(_loc17_ in _loc13_)
            {
               _loc15_ = _movementCostListAry[_loc10_] + (_loc17_[0] == _loc11_ || _loc17_[1] == _loc12_ ? COST_STRAIGHT : COST_DIAGONAL);
               _loc16_ = _loc15_ + (Math.abs(param3 - _loc17_[0]) + Math.abs(param4 - _loc17_[1])) * COST_STRAIGHT;
               if(isOpen(_loc17_[0],_loc17_[1]))
               {
                  _loc14_ = int(_noteMapAry[_loc17_[1]][_loc17_[0]][NOTE_ID_INDEX]);
                  if(_loc15_ < _movementCostListAry[_loc14_])
                  {
                     _movementCostListAry[_loc14_] = _loc15_;
                     _pathScoreListAry[_loc14_] = _loc16_;
                     _parentListAry[_loc14_] = _loc10_;
                     aheadNote(getIndex(_loc14_));
                  }
               }
               else
               {
                  openNote(_loc17_[0],_loc17_[1],_loc16_,_loc15_,_loc10_);
               }
            }
         }
         destroyLists();
         trace("finish:" + getTimer() + " ; unfound");
         return null;
      }
      
      private function getPathAry(param1:int, param2:int, param3:int) : Array
      {
         var _loc4_:Array = new Array();
         var _loc5_:int = int(_xPointListAry[param3]);
         var _loc6_:int = int(_yPointListAry[param3]);
         while(_loc5_ != param1 || _loc6_ != param2)
         {
            _loc4_.unshift([_loc5_,_loc6_]);
            param3 = int(_parentListAry[param3]);
            _loc5_ = int(_xPointListAry[param3]);
            _loc6_ = int(_yPointListAry[param3]);
         }
         _loc4_.unshift([param1,param2]);
         destroyLists();
         return _loc4_;
      }
      
      private function destroyHitTestContainer() : void
      {
         _hitTestContainer = null;
      }
      
      private function aheadNote(param1:int) : void
      {
         var _loc2_:int = new int();
         var _loc3_:int = new int();
         while(param1 > 1)
         {
            _loc2_ = Math.floor(param1 / 2);
            if(getScore(param1) >= getScore(_loc2_))
            {
               break;
            }
            _loc3_ = int(_openListAry[param1 - 1]);
            _openListAry[param1 - 1] = _openListAry[_loc2_ - 1];
            _openListAry[_loc2_ - 1] = _loc3_;
            param1 = _loc2_;
         }
      }
      
      private function openNote(param1:int, param2:int, param3:int, param4:int, param5:int) : void
      {
         ++_openCountLength;
         ++_openID;
         if(_noteMapAry[param2] == null)
         {
            _noteMapAry[param2] = new Array();
         }
         _noteMapAry[param2][param1] = new Array();
         _noteMapAry[param2][param1][NOTE_OPEN_INDEX] = true;
         _noteMapAry[param2][param1][NOTE_ID_INDEX] = _openID;
         _xPointListAry.push(param1);
         _yPointListAry.push(param2);
         _pathScoreListAry.push(param3);
         _movementCostListAry.push(param4);
         _parentListAry.push(param5);
         _openListAry.push(_openID);
         aheadNote(_openCountLength);
      }
      
      private function destroyLists() : void
      {
         _openListAry = null;
         _xPointListAry = null;
         _yPointListAry = null;
         _pathScoreListAry = null;
         _movementCostListAry = null;
         _parentListAry = null;
         _noteMapAry = null;
      }
      
      private function getScore(param1:int) : int
      {
         return _pathScoreListAry[_openListAry[param1 - 1]];
      }
      
      private function initLists() : void
      {
         _openListAry = [];
         _xPointListAry = [];
         _yPointListAry = [];
         _pathScoreListAry = [];
         _movementCostListAry = [];
         _parentListAry = [];
         _noteMapAry = [];
      }
      
      private function initHitTestContainer(param1:DisplayObject) : void
      {
         _hitTestContainer = param1;
      }
      
      public function set maxTryValue(param1:int) : void
      {
         _maxTryValue = param1;
      }
      
      private function backNote() : void
      {
         var _loc1_:int = 1;
         var _loc2_:int = new int();
         var _loc3_:int = new int();
         while(true)
         {
            _loc2_ = _loc1_;
            if(2 * _loc2_ <= _openCountLength)
            {
               if(getScore(_loc1_) > getScore(2 * _loc2_))
               {
                  _loc1_ = 2 * _loc2_;
               }
               if(2 * _loc2_ + 1 <= _openCountLength)
               {
                  if(getScore(_loc1_) > getScore(2 * _loc2_ + 1))
                  {
                     _loc1_ = 2 * _loc2_ + 1;
                  }
               }
            }
            if(_loc2_ == _loc1_)
            {
               break;
            }
            _loc3_ = int(_openListAry[_loc2_ - 1]);
            _openListAry[_loc2_ - 1] = _openListAry[_loc1_ - 1];
            _openListAry[_loc1_ - 1] = _loc3_;
         }
      }
      
      public function get maxTryValue() : int
      {
         return _maxTryValue;
      }
   }
}

class Single
{
   
   public function Single()
   {
      super();
   }
}
