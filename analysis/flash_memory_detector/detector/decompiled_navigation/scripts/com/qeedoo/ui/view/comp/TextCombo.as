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
   import mx.controls.ComboBox;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class TextCombo extends ComboBox
   {
      
      private var _843602650maxChar:int = 0;
      
      public function TextCombo()
      {
         super();
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.cornerRadius = 5;
            this.color = 16777215;
         };
         this.editable = true;
         this.addEventListener("creationComplete",___TextCombo_ComboBox1_creationComplete);
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      public function set maxChars(param1:int) : void
      {
         this.textInput.maxChars = param1;
      }
      
      public function set maxChar(param1:int) : void
      {
         var _loc2_:Object = this._843602650maxChar;
         if(_loc2_ !== param1)
         {
            this._843602650maxChar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxChar",_loc2_,param1));
         }
      }
      
      private function init() : void
      {
      }
      
      public function ___TextCombo_ComboBox1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      public function get maxChar() : int
      {
         return this._843602650maxChar;
      }
   }
}

