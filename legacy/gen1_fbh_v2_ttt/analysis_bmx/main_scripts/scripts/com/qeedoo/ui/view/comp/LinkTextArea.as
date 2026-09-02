package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
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
   import mx.controls.TextArea;
   import mx.core.IUITextField;
   import mx.events.FlexEvent;
   import mx.styles.*;
   
   public class LinkTextArea extends TextArea
   {
      
      public var onLink:Function;
      
      public function LinkTextArea()
      {
         onLink = linkHandler;
         super();
         this.selectable = false;
         this.addEventListener("initialize",___LinkTextArea_TextArea1_initialize);
         this.addEventListener("rollOver",___LinkTextArea_TextArea1_rollOver);
         this.addEventListener("link",___LinkTextArea_TextArea1_link);
      }
      
      public static function checkSearchable(param1:String) : Boolean
      {
         var _loc3_:uint = 0;
         var _loc4_:Object = null;
         var _loc2_:Array = param1.split("|");
         if(_loc2_.length < 3)
         {
            return false;
         }
         if(_loc2_[0] == "L_P" && _loc2_[1] == 330)
         {
            return false;
         }
         if(_loc2_[0] == "L_N")
         {
            _loc3_ = uint(_loc2_[1]);
            _loc4_ = GameData.d[GamePredef.TBL_NPC][_loc3_];
            if(Boolean(_loc4_.lk) && _loc4_.lk != 1)
            {
               return false;
            }
         }
         return true;
      }
      
      private function searchLink(param1:int) : Boolean
      {
         var _loc3_:String = null;
         var _loc2_:TextFormat = textField.getTextFormat(param1,param1 + 1);
         if(Boolean(_loc2_) && Boolean(_loc2_.url))
         {
            param1 = _loc2_.url.indexOf("http://");
            if(param1 >= 0)
            {
               navigateToURL(new URLRequest(_loc2_.url),"blank");
               return false;
            }
            trace(_loc2_.url.substr(6));
            _loc3_ = _loc2_.url.substr(6);
            if(checkSearchable(_loc3_))
            {
               LinkEventUtil.linkTextHandler(_loc2_.url.substr(6),stage);
               return true;
            }
         }
         return false;
      }
      
      public function ___LinkTextArea_TextArea1_initialize(param1:FlexEvent) : void
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
      
      public function checkPoint(param1:int, param2:int) : Boolean
      {
         var _loc3_:Point = textField.globalToLocal(new Point(param1,param2));
         var _loc4_:int = textField.getCharIndexAtPoint(_loc3_.x,_loc3_.y);
         if(_loc4_ > 0)
         {
            return searchLink(_loc4_);
         }
         return false;
      }
      
      override public function set htmlText(param1:String) : void
      {
         var _loc2_:uint = getStyle("color");
         var _loc3_:String = "#" + (_loc2_.toString(16) || "ffffff");
         super.htmlText = ToolKit.getColorTxt(_loc3_,param1);
      }
      
      public function ___LinkTextArea_TextArea1_rollOver(param1:MouseEvent) : void
      {
         focusText(param1);
      }
      
      public function ___LinkTextArea_TextArea1_link(param1:TextEvent) : void
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
         if(!styleSheet)
         {
            _loc1_ = new Object();
            _loc1_.color = "#FFCCCC";
            styleSheet = new StyleSheet();
            styleSheet.setStyle("a:hover",_loc1_);
         }
      }
      
      private function init() : void
      {
         setLinkStyle();
      }
      
      public function get field() : IUITextField
      {
         return textField;
      }
      
      private function linkHandler(param1:TextEvent) : void
      {
         LinkEventUtil.linkHandler(param1,stage);
      }
   }
}

