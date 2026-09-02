package com.qeedoo.ui.view.compGameStage
{
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.SimpleConainer;
   import flash.display.Sprite;
   import flash.system.ApplicationDomain;
   import flash.utils.ByteArray;
   
   public class HitTestContainer extends SimpleConainer
   {
      
      private var _bytes:ByteArray;
      
      public var _mapHeight:uint = 0;
      
      public var _mapWidth:uint = 0;
      
      private var _core:Core = Core.getInstance();
      
      public function HitTestContainer()
      {
         super();
         _core.scene.hitTest = this;
      }
      
      public function init(param1:Sprite, param2:String) : void
      {
         var _loc3_:Class = ApplicationDomain.currentDomain.getDefinition("ClassBytes" + param2) as Class;
         var _loc4_:* = new _loc3_();
         _mapWidth = _loc4_.width;
         _mapHeight = _loc4_.height;
         _loc4_.uncompress();
         _bytes = _loc4_;
      }
      
      public function removeAll() : void
      {
         removeAllChildren();
         graphics.clear();
      }
      
      public function checkHitTest(param1:uint, param2:uint) : Boolean
      {
         var _loc9_:* = undefined;
         if(param1 < 0 || param1 > _mapWidth || param2 < 0 || param2 > _mapHeight)
         {
            return false;
         }
         if(!_bytes)
         {
            return true;
         }
         if(param1 == 1593 && param2 == 1480)
         {
            _loc9_ = null;
         }
         var _loc3_:int = param2 * _mapWidth + param1;
         var _loc4_:int = _loc3_ / 8;
         var _loc5_:int = _loc3_ % 8;
         var _loc6_:uint = uint(1 << _loc5_);
         var _loc7_:uint = uint(_bytes[_loc4_]);
         return uint(_loc7_ & _loc6_);
      }
   }
}

