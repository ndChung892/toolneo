package com.qeedoo.ui.view.comp
{
   import com.qeedoo.ui.utils.LinkEventUtil;
   import com.qeedoo.ui.utils.ToolKit;
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
   import mx.controls.Text;
   import mx.events.FlexEvent;
   import mx.styles.*;
   
   public class LinkText extends Text
   {
      
      public var onLink:Function;
      
      public function LinkText()
      {
         onLink = linkHandler;
         super();
         this.addEventListener("initialize",___LinkText_Text1_initialize);
         this.addEventListener("rollOver",___LinkText_Text1_rollOver);
         this.addEventListener("link",___LinkText_Text1_link);
      }
      
      public function ___LinkText_Text1_initialize(param1:FlexEvent) : void
      {
         init();
      }
      
      private function focusText(param1:MouseEvent) : void
      {
         if(!(getFocus() is TextField))
         {
            setFocus();
         }
      }
      
      override public function set htmlText(param1:String) : void
      {
         var _loc2_:uint = getStyle("color");
         var _loc3_:String = "#" + (_loc2_.toString(16) || "ffffff");
         super.htmlText = ToolKit.getColorTxt(_loc3_,param1);
      }
      
      public function ___LinkText_Text1_rollOver(param1:MouseEvent) : void
      {
         focusText(param1);
      }
      
      public function ___LinkText_Text1_link(param1:TextEvent) : void
      {
         onLink(param1);
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private function setLinkStyle() : void
      {
         var _loc1_:Object = null;
         if(!textField.styleSheet)
         {
            _loc1_ = new Object();
            _loc1_.color = "#FFCCCC";
            textField.styleSheet = new StyleSheet();
            textField.styleSheet.setStyle("a:hover",_loc1_);
         }
      }
      
      private function init() : void
      {
         setLinkStyle();
      }
      
      private function linkHandler(param1:TextEvent) : void
      {
         LinkEventUtil.linkHandler(param1,stage);
      }
   }
}

