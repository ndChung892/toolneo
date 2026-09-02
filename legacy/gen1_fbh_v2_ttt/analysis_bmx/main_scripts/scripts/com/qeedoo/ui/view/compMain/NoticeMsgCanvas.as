package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TextUtil;
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
   import mx.containers.VBox;
   import mx.controls.Text;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.styles.*;
   
   public class NoticeMsgCanvas extends VBox
   {
      
      private var maxNum:uint = 3;
      
      private var textQueue:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var waitQueue:Array;
      
      private var _core:Core;
      
      public function NoticeMsgCanvas()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":VBox,
            "propertiesFactory":function():Object
            {
               return {"width":400};
            }
         });
         textQueue = new Array();
         waitQueue = new Array();
         _core = Core.getInstance();
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.horizontalAlign = "center";
            this.verticalGap = 0;
            this.backgroundAlpha = 0.3;
            this.fontSize = 14;
            this.color = 16720418;
            this.fontWeight = "bold";
         };
         this.width = 400;
         this.mouseEnabled = false;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.alpha = 1;
         this.mouseChildren = false;
         this.cacheAsBitmap = true;
      }
      
      public function addText(param1:String, param2:uint = 2000) : void
      {
         param1 = TextUtil.decode(param1);
         if(textQueue.length >= maxNum)
         {
            waitForAppend(param1,param2);
            return;
         }
         var _loc3_:Text = new Text();
         _loc3_.setStyle("color","#FF2222");
         _loc3_.htmlText = param1;
         _loc3_.cacheAsBitmap = true;
         var _loc4_:Timer = new Timer(param2,1);
         _loc4_.addEventListener(TimerEvent.TIMER_COMPLETE,complete);
         var _loc5_:Object = new Object();
         _loc5_["timer"] = _loc4_;
         _loc5_["ui"] = _loc3_;
         textQueue.push(_loc5_);
         textQueue[0]["ui"].cacheAsBitmap = true;
         textQueue[0]["ui"].filters = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         this.addChild(_loc3_);
         _loc4_.start();
         visible = true;
      }
      
      private function oneLineShift() : void
      {
         var _loc1_:Object = null;
         if(waitQueue.length > 0)
         {
            _loc1_ = waitQueue.shift();
            addText(_loc1_["str"],_loc1_["time"]);
            _loc1_ = null;
         }
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      private function waitForAppend(param1:String, param2:uint) : void
      {
         var _loc3_:Object = new Object();
         _loc3_["str"] = param1;
         _loc3_["time"] = param2;
         waitQueue.push(_loc3_);
      }
      
      private function complete(param1:TimerEvent) : void
      {
         var _loc2_:Object = textQueue.shift();
         if(textQueue.length != 0)
         {
            Text(textQueue[0]["ui"]).cacheAsBitmap = true;
            Text(textQueue[0]["ui"]).filters = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         }
         this.removeChild(_loc2_["ui"]);
         Timer(param1.target).removeEventListener(TimerEvent.TIMER_COMPLETE,complete);
         oneLineShift();
         _loc2_ = null;
         if(numChildren <= 0)
         {
            visible = false;
         }
      }
   }
}

