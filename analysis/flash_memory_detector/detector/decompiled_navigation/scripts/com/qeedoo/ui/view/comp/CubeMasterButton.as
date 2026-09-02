package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
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
   import mx.containers.Canvas;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.styles.*;
   
   public class CubeMasterButton extends Canvas
   {
      
      private var _bitMap:Bitmap;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({"type":Canvas});
      
      private var _type:uint;
      
      private var _index:uint;
      
      private var _core:Core = Core.getInstance();
      
      public function CubeMasterButton()
      {
         super();
         mx_internal::_document = this;
         this.addEventListener("creationComplete",___CubeMasterButton_Canvas1_creationComplete);
      }
      
      private function mouseOver(param1:Event) : void
      {
         _bitMap.bitmapData = CubeMaster.buttonLightBMD[_type];
      }
      
      public function get type() : uint
      {
         return _type;
      }
      
      public function set index(param1:uint) : void
      {
         _index = param1;
      }
      
      private function click(param1:Event) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         switch(_type)
         {
            case 0:
               _loc2_ = 1;
               _loc3_ = 0;
               break;
            case 1:
               _loc2_ = 1;
               _loc3_ = 1;
               break;
            case 2:
               _loc2_ = 0;
               _loc3_ = 0;
               break;
            case 3:
               _loc2_ = 0;
               _loc3_ = 1;
         }
         var _loc4_:Object = _core.view.getUI(ViewManager.PANEL_CUBEMASTER);
         if(_loc4_)
         {
            _loc4_.moveCube(_loc2_,_index,_loc3_);
         }
      }
      
      private function mouseOut(param1:Event) : void
      {
         _bitMap.bitmapData = CubeMaster.buttonBMD[_type];
      }
      
      public function get index() : uint
      {
         return _index;
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function set type(param1:uint) : void
      {
         _type = param1;
         if(param1 == 0 || param1 == 1)
         {
            width = 55 / 2;
            height = 20;
         }
         else
         {
            width = 20;
            height = 55 / 2;
         }
         if(!_bitMap)
         {
            _bitMap = new Bitmap();
         }
         _bitMap.bitmapData = CubeMaster.buttonBMD[param1];
         if(this.numChildren > 0)
         {
            this.removeAllChildren();
         }
         var _loc2_:UIComponent = new UIComponent();
         _loc2_.addChild(_bitMap);
         addChild(_loc2_);
      }
      
      public function ___CubeMasterButton_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function init() : void
      {
         addEventListener(MouseEvent.CLICK,click);
         addEventListener(MouseEvent.ROLL_OVER,mouseOver);
         addEventListener(MouseEvent.ROLL_OUT,mouseOut);
      }
   }
}

