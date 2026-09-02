package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TextUtil;
   import com.qeedoo.game.utils.TimeUtil;
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
   import mx.collections.ArrayCollection;
   import mx.containers.VBox;
   import mx.controls.Text;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.styles.*;
   
   public class SystemMsgCanvas extends VBox
   {
      
      private var maxNum:uint = 5;
      
      private var num:int = 0;
      
      private var setTime:Timer;
      
      private var waitQueue:Array;
      
      private var msgArr:ArrayCollection;
      
      private var textQueue:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _core:Core;
      
      public function SystemMsgCanvas()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":VBox,
            "propertiesFactory":function():Object
            {
               return {"width":600};
            }
         });
         textQueue = new Array();
         waitQueue = new Array();
         _core = Core.getInstance();
         msgArr = new ArrayCollection();
         setTime = new Timer(1);
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.horizontalAlign = "center";
            this.borderStyle = "solid";
            this.borderThickness = 1;
            this.borderColor = 198926;
            this.verticalGap = 0;
            this.backgroundAlpha = 0.3;
            this.fontSize = 14;
            this.backgroundColor = 0;
         };
         this.width = 600;
         this.mouseEnabled = false;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.alpha = 1;
         this.mouseChildren = false;
         this.cacheAsBitmap = true;
      }
      
      private function onReMsg(param1:String) : void
      {
         _core.sysMsg(param1);
      }
      
      private function waitForAppend(param1:String, param2:uint) : void
      {
         var _loc3_:Object = new Object();
         _loc3_["str"] = param1;
         _loc3_["time"] = param2;
         waitQueue.push(_loc3_);
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      private function onRepeat(param1:TimerEvent) : void
      {
         if(msgArr == null || msgArr.length == 0)
         {
            setTime.stop();
            setTime.removeEventListener(TimerEvent.TIMER,onRepeat);
            return;
         }
         if(num >= msgArr.length)
         {
            num = 0;
         }
         onReMsg(msgArr[num].info);
         checkMsgTimeEffect(num);
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
      
      public function addText(param1:String, param2:uint = 8000) : void
      {
         if(!_core.ready)
         {
            return;
         }
         param1 = TextUtil.decode(param1);
         if(textQueue.length >= maxNum)
         {
            waitForAppend(param1,param2);
            return;
         }
         var _loc3_:Text = new Text();
         _loc3_.setStyle("color","white");
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
      
      public function repeatSysMsg(param1:Object) : void
      {
         var _loc4_:* = undefined;
         if(setTime)
         {
            setTime.stop();
            setTime = new Timer(1);
            num = 0;
         }
         var _loc2_:Number = new Date().getTime() + _core.timeLag + TimeUtil.timeOSOffSet;
         var _loc3_:ArrayCollection = new ArrayCollection();
         for each(_loc4_ in param1)
         {
            if(!(Boolean(_loc4_.end) && ToolKit.isSmallThan(_loc4_.end,_loc2_)))
            {
               _loc3_.addItem(_loc4_);
            }
         }
         msgArr = _loc3_;
         setTime.addEventListener(TimerEvent.TIMER,onRepeat);
         setTime.start();
      }
      
      private function checkMsgTimeEffect(param1:Number) : void
      {
         var _loc2_:Number = new Date().getTime() + _core.timeLag + TimeUtil.timeOSOffSet;
         var _loc3_:Boolean = true;
         if(Boolean(msgArr[param1].end) && ToolKit.isSmallThan(msgArr[param1].end,_loc2_))
         {
            if(msgArr.length > ToolKit.add(param1,1))
            {
               _loc3_ = false;
            }
            msgArr.removeItemAt(param1);
            if(msgArr == null || msgArr.length == 0)
            {
               setTime.stop();
               setTime.removeEventListener(TimerEvent.TIMER,onRepeat);
               return;
            }
         }
         if(_loc3_)
         {
            param1++;
         }
         if(param1 >= msgArr.length)
         {
            param1 = 0;
         }
         num = param1;
         if(msgArr[param1])
         {
            setTime.delay = msgArr[param1].t * 1000;
         }
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

