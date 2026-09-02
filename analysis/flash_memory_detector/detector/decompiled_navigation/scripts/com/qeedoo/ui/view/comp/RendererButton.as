package com.qeedoo.ui.view.comp
{
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
   import mx.controls.Button;
   import mx.styles.*;
   
   public class RendererButton extends Button
   {
      
      private var _click:Function;
      
      private var _needShow:Boolean = true;
      
      private var _obj:Object;
      
      public function RendererButton()
      {
         super();
         this.styleName = "BtnStdRed";
         this.addEventListener("click",___RendererButton_Button1_click);
      }
      
      private function onClick() : void
      {
         if(Boolean(_click))
         {
            _click(_obj);
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(param1)
         {
            super.visible = _needShow;
         }
         else
         {
            super.visible = param1;
         }
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      override public function set data(param1:Object) : void
      {
         _obj = param1;
         if(_obj.onClick)
         {
            _click = _obj.onClick;
            _needShow = true;
            this.enabled = true;
         }
         else
         {
            _needShow = false;
            this.enabled = false;
         }
         if(_obj.label)
         {
            this.label = _obj.label;
         }
         styleName = "BtnStdRed";
         super.data = param1;
      }
      
      public function ___RendererButton_Button1_click(param1:MouseEvent) : void
      {
         onClick();
      }
   }
}

