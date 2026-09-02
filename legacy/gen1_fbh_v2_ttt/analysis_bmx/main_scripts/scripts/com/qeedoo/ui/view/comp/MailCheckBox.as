package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
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
   import mx.controls.CheckBox;
   import mx.styles.*;
   
   public class MailCheckBox extends CheckBox
   {
      
      private var _core:Core = Core.getInstance();
      
      public function MailCheckBox()
      {
         super();
         this.addEventListener("click",___MailCheckBox_CheckBox1_click);
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      public function ___MailCheckBox_CheckBox1_click(param1:MouseEvent) : void
      {
         doClick();
      }
      
      private function doClick() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_MAILMANAGER);
         if(this.selected)
         {
            _loc1_.chooseMail(1);
         }
         else
         {
            _loc1_.chooseMail(0);
         }
      }
   }
}

