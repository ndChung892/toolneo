package com.qeedoo.game.vo
{
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import mx.events.PropertyChangeEvent;
   
   public class ToolTipCreVO implements IEventDispatcher
   {
      
      private var _94756344close:int;
      
      private var _900562936skill9:int;
      
      private var _1407272001attSta:int;
      
      private var _1410966192aptSpr:String;
      
      private var _675985193attLast:int;
      
      private var _507317139growRate:String;
      
      private var _1407289694attAgi:int;
      
      private var _900562943skill2:int;
      
      private var _170514808urlIcon:String;
      
      private var _3023933bind:String;
      
      private var _1509076629catchable:String;
      
      private var _957830652counter:int;
      
      private var _10025402classInfo:String;
      
      private var _900562937skill8:int;
      
      private var _900562940skill5:int;
      
      private var _1410983778aptAgi:String;
      
      private var _1407281778attInt:int;
      
      private var _94842723color:Number;
      
      private var _1410975862aptInt:String;
      
      private var _1407272108attSpr:int;
      
      private var _1410966085aptSta:String;
      
      private var _2147319859skill13:int;
      
      private var _9888733className:String;
      
      private var _900562944skill1:int;
      
      private var _2147319861skill15:int;
      
      private var _1662836996element:String;
      
      private var _1410966068aptStr:String;
      
      private var _900562938skill7:int;
      
      private var _3373707name:String;
      
      private var _2147319858skill12:int;
      
      private var _2147319860skill14:int;
      
      private var _111577457useLv:int;
      
      private var _3540562star:int;
      
      private var _900562941skill4:int;
      
      private var _2147319857skill11:int;
      
      private var _836775759urlRes:String;
      
      private var _102865796level:int;
      
      private var _98778cri:int;
      
      private var _1407271984attStr:int;
      
      private var _900562939skill6:int;
      
      private var _2147319856skill10:int;
      
      private var _456092036petColor:uint;
      
      private var _3321596life:String;
      
      private var _673585610elementInfo:String;
      
      private var _bindingEventDispatcher:EventDispatcher = new EventDispatcher(IEventDispatcher(this));
      
      private var _900562942skill3:int;
      
      private var _722769290btnVisible:Boolean;
      
      public function ToolTipCreVO()
      {
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get skill1() : int
      {
         return this._900562944skill1;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill2() : int
      {
         return this._900562943skill2;
      }
      
      public function set skill3(param1:int) : void
      {
         var _loc2_:Object = this._900562942skill3;
         if(_loc2_ !== param1)
         {
            this._900562942skill3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skill6() : int
      {
         return this._900562939skill6;
      }
      
      public function set life(param1:String) : void
      {
         var _loc2_:Object = this._3321596life;
         if(_loc2_ !== param1)
         {
            this._3321596life = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"life",_loc2_,param1));
         }
      }
      
      public function set petColor(param1:uint) : void
      {
         var _loc2_:Object = this._456092036petColor;
         if(_loc2_ !== param1)
         {
            this._456092036petColor = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petColor",_loc2_,param1));
         }
      }
      
      public function set skill2(param1:int) : void
      {
         var _loc2_:Object = this._900562943skill2;
         if(_loc2_ !== param1)
         {
            this._900562943skill2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skill4() : int
      {
         return this._900562941skill4;
      }
      
      [Bindable(event="propertyChange")]
      public function get life() : String
      {
         return this._3321596life;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill8() : int
      {
         return this._900562937skill8;
      }
      
      public function set level(param1:int) : void
      {
         var _loc2_:Object = this._102865796level;
         if(_loc2_ !== param1)
         {
            this._102865796level = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"level",_loc2_,param1));
         }
      }
      
      public function set urlIcon(param1:String) : void
      {
         var _loc2_:Object = this._170514808urlIcon;
         if(_loc2_ !== param1)
         {
            this._170514808urlIcon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"urlIcon",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skill3() : int
      {
         return this._900562942skill3;
      }
      
      public function set aptInt(param1:String) : void
      {
         var _loc2_:Object = this._1410975862aptInt;
         if(_loc2_ !== param1)
         {
            this._1410975862aptInt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptInt",_loc2_,param1));
         }
      }
      
      public function set skill4(param1:int) : void
      {
         var _loc2_:Object = this._900562941skill4;
         if(_loc2_ !== param1)
         {
            this._900562941skill4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill4",_loc2_,param1));
         }
      }
      
      public function set name(param1:String) : void
      {
         var _loc2_:Object = this._3373707name;
         if(_loc2_ !== param1)
         {
            this._3373707name = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"name",_loc2_,param1));
         }
      }
      
      public function set skill5(param1:int) : void
      {
         var _loc2_:Object = this._900562940skill5;
         if(_loc2_ !== param1)
         {
            this._900562940skill5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill5",_loc2_,param1));
         }
      }
      
      public function set skill6(param1:int) : void
      {
         var _loc2_:Object = this._900562939skill6;
         if(_loc2_ !== param1)
         {
            this._900562939skill6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill6",_loc2_,param1));
         }
      }
      
      public function set skill7(param1:int) : void
      {
         var _loc2_:Object = this._900562938skill7;
         if(_loc2_ !== param1)
         {
            this._900562938skill7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill7",_loc2_,param1));
         }
      }
      
      public function set skill8(param1:int) : void
      {
         var _loc2_:Object = this._900562937skill8;
         if(_loc2_ !== param1)
         {
            this._900562937skill8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get counter() : int
      {
         return this._957830652counter;
      }
      
      public function set skill9(param1:int) : void
      {
         var _loc2_:Object = this._900562936skill9;
         if(_loc2_ !== param1)
         {
            this._900562936skill9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skill9() : int
      {
         return this._900562936skill9;
      }
      
      [Bindable(event="propertyChange")]
      public function get className() : String
      {
         return this._9888733className;
      }
      
      [Bindable(event="propertyChange")]
      public function get close() : int
      {
         return this._94756344close;
      }
      
      public function set growRate(param1:String) : void
      {
         var _loc2_:Object = this._507317139growRate;
         if(_loc2_ !== param1)
         {
            this._507317139growRate = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"growRate",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skill7() : int
      {
         return this._900562938skill7;
      }
      
      public function set catchable(param1:String) : void
      {
         var _loc2_:Object = this._1509076629catchable;
         if(_loc2_ !== param1)
         {
            this._1509076629catchable = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"catchable",_loc2_,param1));
         }
      }
      
      public function set attInt(param1:int) : void
      {
         var _loc2_:Object = this._1407281778attInt;
         if(_loc2_ !== param1)
         {
            this._1407281778attInt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attInt",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skill12() : int
      {
         return this._2147319858skill12;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill13() : int
      {
         return this._2147319859skill13;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill14() : int
      {
         return this._2147319860skill14;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill10() : int
      {
         return this._2147319856skill10;
      }
      
      [Bindable(event="propertyChange")]
      public function get bind() : String
      {
         return this._3023933bind;
      }
      
      public function set counter(param1:int) : void
      {
         var _loc2_:Object = this._957830652counter;
         if(_loc2_ !== param1)
         {
            this._957830652counter = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"counter",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skill11() : int
      {
         return this._2147319857skill11;
      }
      
      public function set aptAgi(param1:String) : void
      {
         var _loc2_:Object = this._1410983778aptAgi;
         if(_loc2_ !== param1)
         {
            this._1410983778aptAgi = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptAgi",_loc2_,param1));
         }
      }
      
      public function set className(param1:String) : void
      {
         var _loc2_:Object = this._9888733className;
         if(_loc2_ !== param1)
         {
            this._9888733className = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"className",_loc2_,param1));
         }
      }
      
      public function dispatchEvent(param1:Event) : Boolean
      {
         return _bindingEventDispatcher.dispatchEvent(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get skill5() : int
      {
         return this._900562940skill5;
      }
      
      [Bindable(event="propertyChange")]
      public function get aptSpr() : String
      {
         return this._1410966192aptSpr;
      }
      
      public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         _bindingEventDispatcher.removeEventListener(param1,param2,param3);
      }
      
      [Bindable(event="propertyChange")]
      public function get attSpr() : int
      {
         return this._1407272108attSpr;
      }
      
      [Bindable(event="propertyChange")]
      public function get classInfo() : String
      {
         return this._10025402classInfo;
      }
      
      [Bindable(event="propertyChange")]
      public function get skill15() : int
      {
         return this._2147319861skill15;
      }
      
      [Bindable(event="propertyChange")]
      public function get star() : int
      {
         return this._3540562star;
      }
      
      public function set skill10(param1:int) : void
      {
         var _loc2_:Object = this._2147319856skill10;
         if(_loc2_ !== param1)
         {
            this._2147319856skill10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill10",_loc2_,param1));
         }
      }
      
      public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         _bindingEventDispatcher.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public function set urlRes(param1:String) : void
      {
         var _loc2_:Object = this._836775759urlRes;
         if(_loc2_ !== param1)
         {
            this._836775759urlRes = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"urlRes",_loc2_,param1));
         }
      }
      
      public function set skill12(param1:int) : void
      {
         var _loc2_:Object = this._2147319858skill12;
         if(_loc2_ !== param1)
         {
            this._2147319858skill12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill12",_loc2_,param1));
         }
      }
      
      public function set skill14(param1:int) : void
      {
         var _loc2_:Object = this._2147319860skill14;
         if(_loc2_ !== param1)
         {
            this._2147319860skill14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill14",_loc2_,param1));
         }
      }
      
      public function set skill1(param1:int) : void
      {
         var _loc2_:Object = this._900562944skill1;
         if(_loc2_ !== param1)
         {
            this._900562944skill1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill1",_loc2_,param1));
         }
      }
      
      public function set skill13(param1:int) : void
      {
         var _loc2_:Object = this._2147319859skill13;
         if(_loc2_ !== param1)
         {
            this._2147319859skill13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill13",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnVisible() : Boolean
      {
         return this._722769290btnVisible;
      }
      
      [Bindable(event="propertyChange")]
      public function get color() : Number
      {
         return this._94842723color;
      }
      
      public function set attSta(param1:int) : void
      {
         var _loc2_:Object = this._1407272001attSta;
         if(_loc2_ !== param1)
         {
            this._1407272001attSta = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attSta",_loc2_,param1));
         }
      }
      
      public function set skill15(param1:int) : void
      {
         var _loc2_:Object = this._2147319861skill15;
         if(_loc2_ !== param1)
         {
            this._2147319861skill15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill15",_loc2_,param1));
         }
      }
      
      public function set aptSta(param1:String) : void
      {
         var _loc2_:Object = this._1410966085aptSta;
         if(_loc2_ !== param1)
         {
            this._1410966085aptSta = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptSta",_loc2_,param1));
         }
      }
      
      public function set bind(param1:String) : void
      {
         var _loc2_:Object = this._3023933bind;
         if(_loc2_ !== param1)
         {
            this._3023933bind = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bind",_loc2_,param1));
         }
      }
      
      public function set classInfo(param1:String) : void
      {
         var _loc2_:Object = this._10025402classInfo;
         if(_loc2_ !== param1)
         {
            this._10025402classInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"classInfo",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get urlIcon() : String
      {
         return this._170514808urlIcon;
      }
      
      [Bindable(event="propertyChange")]
      public function get name() : String
      {
         return this._3373707name;
      }
      
      [Bindable(event="propertyChange")]
      public function get growRate() : String
      {
         return this._507317139growRate;
      }
      
      public function set elementInfo(param1:String) : void
      {
         var _loc2_:Object = this._673585610elementInfo;
         if(_loc2_ !== param1)
         {
            this._673585610elementInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"elementInfo",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get catchable() : String
      {
         return this._1509076629catchable;
      }
      
      public function set aptStr(param1:String) : void
      {
         var _loc2_:Object = this._1410966068aptStr;
         if(_loc2_ !== param1)
         {
            this._1410966068aptStr = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptStr",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get aptInt() : String
      {
         return this._1410975862aptInt;
      }
      
      public function set skill11(param1:int) : void
      {
         var _loc2_:Object = this._2147319857skill11;
         if(_loc2_ !== param1)
         {
            this._2147319857skill11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skill11",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get attInt() : int
      {
         return this._1407281778attInt;
      }
      
      public function set star(param1:int) : void
      {
         var _loc2_:Object = this._3540562star;
         if(_loc2_ !== param1)
         {
            this._3540562star = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"star",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get aptAgi() : String
      {
         return this._1410983778aptAgi;
      }
      
      public function set aptSpr(param1:String) : void
      {
         var _loc2_:Object = this._1410966192aptSpr;
         if(_loc2_ !== param1)
         {
            this._1410966192aptSpr = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptSpr",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get useLv() : int
      {
         return this._111577457useLv;
      }
      
      public function set attLast(param1:int) : void
      {
         var _loc2_:Object = this._675985193attLast;
         if(_loc2_ !== param1)
         {
            this._675985193attLast = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attLast",_loc2_,param1));
         }
      }
      
      public function set attStr(param1:int) : void
      {
         var _loc2_:Object = this._1407271984attStr;
         if(_loc2_ !== param1)
         {
            this._1407271984attStr = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attStr",_loc2_,param1));
         }
      }
      
      public function set cri(param1:int) : void
      {
         var _loc2_:Object = this._98778cri;
         if(_loc2_ !== param1)
         {
            this._98778cri = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cri",_loc2_,param1));
         }
      }
      
      public function set attAgi(param1:int) : void
      {
         var _loc2_:Object = this._1407289694attAgi;
         if(_loc2_ !== param1)
         {
            this._1407289694attAgi = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attAgi",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get urlRes() : String
      {
         return this._836775759urlRes;
      }
      
      [Bindable(event="propertyChange")]
      public function get aptSta() : String
      {
         return this._1410966085aptSta;
      }
      
      [Bindable(event="propertyChange")]
      public function get petColor() : uint
      {
         return this._456092036petColor;
      }
      
      [Bindable(event="propertyChange")]
      public function get attSta() : int
      {
         return this._1407272001attSta;
      }
      
      [Bindable(event="propertyChange")]
      public function get elementInfo() : String
      {
         return this._673585610elementInfo;
      }
      
      [Bindable(event="propertyChange")]
      public function get aptStr() : String
      {
         return this._1410966068aptStr;
      }
      
      [Bindable(event="propertyChange")]
      public function get attAgi() : int
      {
         return this._1407289694attAgi;
      }
      
      public function set color(param1:Number) : void
      {
         var _loc2_:Object = this._94842723color;
         if(_loc2_ !== param1)
         {
            this._94842723color = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"color",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get level() : int
      {
         return this._102865796level;
      }
      
      [Bindable(event="propertyChange")]
      public function get cri() : int
      {
         return this._98778cri;
      }
      
      [Bindable(event="propertyChange")]
      public function get attLast() : int
      {
         return this._675985193attLast;
      }
      
      [Bindable(event="propertyChange")]
      public function get attStr() : int
      {
         return this._1407271984attStr;
      }
      
      public function set attSpr(param1:int) : void
      {
         var _loc2_:Object = this._1407272108attSpr;
         if(_loc2_ !== param1)
         {
            this._1407272108attSpr = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attSpr",_loc2_,param1));
         }
      }
      
      public function set btnVisible(param1:Boolean) : void
      {
         var _loc2_:Object = this._722769290btnVisible;
         if(_loc2_ !== param1)
         {
            this._722769290btnVisible = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnVisible",_loc2_,param1));
         }
      }
      
      public function set close(param1:int) : void
      {
         var _loc2_:Object = this._94756344close;
         if(_loc2_ !== param1)
         {
            this._94756344close = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"close",_loc2_,param1));
         }
      }
      
      public function set useLv(param1:int) : void
      {
         var _loc2_:Object = this._111577457useLv;
         if(_loc2_ !== param1)
         {
            this._111577457useLv = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"useLv",_loc2_,param1));
         }
      }
      
      public function hasEventListener(param1:String) : Boolean
      {
         return _bindingEventDispatcher.hasEventListener(param1);
      }
      
      public function willTrigger(param1:String) : Boolean
      {
         return _bindingEventDispatcher.willTrigger(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get element() : String
      {
         return this._1662836996element;
      }
      
      public function set element(param1:String) : void
      {
         var _loc2_:Object = this._1662836996element;
         if(_loc2_ !== param1)
         {
            this._1662836996element = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"element",_loc2_,param1));
         }
      }
   }
}

