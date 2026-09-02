package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.compDragable.StoneMaster;
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
   import mx.containers.Canvas;
   import mx.controls.Alert;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.styles.*;
   
   public class StoneMasterCube extends Canvas
   {
      
      private var _position:uint;
      
      private var _index:uint;
      
      private var _type:uint;
      
      private var _bitMap:Bitmap;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":50,
               "height":50
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function StoneMasterCube()
      {
         super();
         mx_internal::_document = this;
         this.width = 50;
         this.height = 50;
      }
      
      private function onAddStone(param1:Object) : void
      {
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_STONEMASTER);
         if(_loc2_)
         {
            _loc2_.onGetData(param1);
         }
      }
      
      private function click(param1:Event) : void
      {
         var func:Function = null;
         var e:Event = param1;
         if(_type == 2)
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.call("removeStoneFromSteelyard",new Responder(onRemoveStone),_index,_position);
               }
            };
            Alert.show(Language.ANNIVERSARY_LANG[26].toString(),"",Alert.YES | Alert.NO,null,func);
         }
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function get index() : uint
      {
         return _index;
      }
      
      private function mouseOver(param1:Event) : void
      {
         _bitMap.bitmapData = StoneMaster.stoneBMDLight[_index];
      }
      
      public function set position(param1:uint) : void
      {
         _position = param1;
      }
      
      private function onRemoveStone(param1:Object) : void
      {
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_STONEMASTER);
         if(_loc2_)
         {
            _loc2_.onGetData(param1);
         }
      }
      
      public function register() : void
      {
         addEventListener(MouseEvent.ROLL_OVER,mouseOver);
         addEventListener(MouseEvent.ROLL_OUT,mouseOut);
         addEventListener(MouseEvent.CLICK,click);
         this.doubleClickEnabled = true;
         this.mouseChildren = false;
         addEventListener(MouseEvent.DOUBLE_CLICK,doubleClick);
      }
      
      public function set index(param1:uint) : void
      {
         _index = param1;
         if(!_bitMap)
         {
            _bitMap = new Bitmap();
         }
         _bitMap.bitmapData = StoneMaster.stoneBMD[param1];
         if(this.numChildren > 0)
         {
            this.removeAllChildren();
         }
         var _loc2_:UIComponent = new UIComponent();
         _loc2_.addChild(_bitMap);
         addChild(_loc2_);
      }
      
      private function mouseOut(param1:Event) : void
      {
         _bitMap.bitmapData = StoneMaster.stoneBMD[_index];
      }
      
      public function get position() : uint
      {
         return _position;
      }
      
      public function set type(param1:uint) : void
      {
         _type = param1;
      }
      
      private function doubleClick(param1:Event) : void
      {
         if(_type == 1)
         {
            _core.remote.call("addStoneToSteelyard",new Responder(onAddStone),_index);
         }
      }
      
      public function get type() : uint
      {
         return _type;
      }
   }
}

