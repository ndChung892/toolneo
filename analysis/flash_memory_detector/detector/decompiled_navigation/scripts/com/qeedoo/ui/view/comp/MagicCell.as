package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.view.compDragable.CubeMaster;
   import flash.accessibility.*;
   import flash.debugger.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.media.*;
   import flash.net.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.system.*;
   import flash.text.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   import mx.binding.*;
   import mx.controls.Alert;
   import mx.core.UIComponent;
   import mx.events.CloseEvent;
   import mx.styles.*;
   
   public class MagicCell extends UIComponent
   {
      
      public var col:uint;
      
      private var _core:Core = Core.getInstance();
      
      public var moving:Boolean = false;
      
      private var _type:uint;
      
      public var row:uint;
      
      private var _stepsCount:uint = 0;
      
      private var _color:uint;
      
      public var moveType:uint;
      
      private var _bitMap:Bitmap;
      
      public function MagicCell()
      {
         super();
      }
      
      public function set color(param1:uint) : void
      {
         _color = param1;
         if(!_bitMap)
         {
            _bitMap = new Bitmap();
            addChild(_bitMap);
         }
         if(_type == 1)
         {
            _bitMap.bitmapData = CubeMaster.smallCubeBMD[param1];
         }
         else if(_type == 2)
         {
            _bitMap.bitmapData = CubeMaster.bigCubeBMD[param1];
         }
      }
      
      private function click(param1:Event) : void
      {
         var cell:MagicCell = null;
         var e:Event = param1;
         cell = e.currentTarget as MagicCell;
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("replaceMagicCube",new Responder(onClickHandler),cell.row,cell.col);
            }
         };
         Alert.show(Language.ANNIVERSARY_LANG[17].toString(),"",Alert.YES | Alert.NO,null,func);
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private function onClickHandler(param1:Object) : void
      {
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_CUBEMASTER);
         if(_loc2_)
         {
            _loc2_.onGetData(param1);
         }
      }
      
      public function register() : void
      {
         addEventListener(Event.ENTER_FRAME,moveOneCube);
         if(_type == 2)
         {
            addEventListener(MouseEvent.CLICK,click);
         }
      }
      
      private function moveOneCube(param1:Event) : void
      {
         if(moving)
         {
            switch(moveType)
            {
               case 0:
                  param1.currentTarget.x += param1.currentTarget.width / 24;
                  break;
               case 1:
                  param1.currentTarget.x -= param1.currentTarget.width / 24;
                  break;
               case 2:
                  param1.currentTarget.y += param1.currentTarget.height / 24;
                  break;
               case 3:
                  param1.currentTarget.y -= param1.currentTarget.height / 24;
            }
            ++_stepsCount;
            if(_stepsCount >= 24)
            {
               moving = false;
               _stepsCount = 0;
               CubeMaster.decoProxy.dispatchEvent(new GameEvent(GameEvent.CUBE_MOVE_END,false));
            }
         }
      }
      
      public function get type() : uint
      {
         return _type;
      }
      
      public function set type(param1:uint) : void
      {
         _type = param1;
         if(param1 == 1)
         {
            this.width = 20;
            this.height = 20;
         }
         else if(param1 == 2)
         {
            this.width = 55;
            this.height = 55;
         }
      }
   }
}

