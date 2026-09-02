package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.ui.IMainUI;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
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
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.Label;
   import mx.controls.Text;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class AntiAddictCanvas extends SimpleCanvas implements IMainUI, IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static var _addict_url_key:* = "lezi.com";
      
      private var _core:Core = Core.getInstance();
      
      mx_internal var _watchers:Array = [];
      
      public var _AntiAddictCanvas_Text1:Text;
      
      private var firstTimeFlag:Boolean = true;
      
      private var _3034453btn1:Button;
      
      public var _AntiAddictCanvas_Label1:Label;
      
      private var timer:Timer = new Timer(1000);
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var min:int;
      
      private var _3560141time:String = "";
      
      private var hour:int;
      
      mx_internal var _bindings:Array = [];
      
      private var url:* = "http://www.lezi.com/index.php/user/authentic";
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "height":62,
               "width":180,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"_AntiAddictCanvas_Label1",
                  "stylesFactory":function():void
                  {
                     this.color = 13833740;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":3,
                        "y":10,
                        "width":101
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Text,
                  "id":"_AntiAddictCanvas_Text1",
                  "stylesFactory":function():void
                  {
                     this.color = 13833740;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":9,
                        "y":32,
                        "width":80
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btn1",
                  "events":{"click":"__btn1_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":9,
                        "styleName":"BtnChatHeadline"
                     };
                  }
               })]
            };
         }
      });
      
      private var seconds:int;
      
      public function AntiAddictCanvas()
      {
         super();
         mx_internal::_document = this;
         this.cacheAsBitmap = true;
         this.height = 62;
         this.width = 180;
         this.addEventListener("show",___AntiAddictCanvas_SimpleCanvas1_show);
         this.addEventListener("creationComplete",___AntiAddictCanvas_SimpleCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         AntiAddictCanvas._watcherSetupUtil = param1;
      }
      
      public function __btn1_click(param1:MouseEvent) : void
      {
         enterAddictInfo();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:AntiAddictCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _AntiAddictCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compMain_AntiAddictCanvasWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },bindings,watchers);
         i = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         super.initialize();
      }
      
      private function setAlert(param1:String) : void
      {
         if(visible == true)
         {
            _core.sysMsg(param1);
            Alert.show(param1);
         }
      }
      
      private function set time(param1:String) : void
      {
         var _loc2_:Object = this._3560141time;
         if(_loc2_ !== param1)
         {
            this._3560141time = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"time",_loc2_,param1));
         }
      }
      
      private function _AntiAddictCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANTIADDICTCANVAS_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AntiAddictCanvas_Label1.text = param1;
         },"_AntiAddictCanvas_Label1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANTIADDICTCANVAS_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AntiAddictCanvas_Label1.toolTip = param1;
         },"_AntiAddictCanvas_Label1.toolTip");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = time;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AntiAddictCanvas_Text1.text = param1;
         },"_AntiAddictCanvas_Text1.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANTIADDICTCANVAS_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn1.label = param1;
         },"btn1.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ANTIADDICTCANVAS_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn1.toolTip = param1;
         },"btn1.toolTip");
         result[4] = binding;
         return result;
      }
      
      private function enterAddictInfo() : void
      {
         navigateToURL(new URLRequest(url),"_blank");
      }
      
      public function init(param1:Event) : void
      {
         var _loc2_:String = GamePredef.SERVER_ADD_CLASSIFY;
         if(_loc2_ != "underfined" && _loc2_.indexOf(_addict_url_key) < 0)
         {
         }
      }
      
      private function _AntiAddictCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.ANTIADDICTCANVAS_U[0];
         _loc1_ = Language.ANTIADDICTCANVAS_U[6];
         _loc1_ = time;
         _loc1_ = Language.ANTIADDICTCANVAS_U[1];
         _loc1_ = Language.ANTIADDICTCANVAS_U[3];
      }
      
      public function updateTime(param1:TimerEvent) : void
      {
         if(seconds > 0)
         {
            --seconds;
         }
         else if(min > 0)
         {
            --min;
            seconds = 59;
         }
         else if(hour > 0)
         {
            --hour;
            min = seconds = 59;
         }
         else
         {
            hour = min = seconds = 0;
            setAlert("每日游戏时间已到,您会被踢下线, 如果想免除时间限额,请到平台内填写正确的身份证信息");
            _core.remote.setAddictFlagFromClient(_core.cid);
            timer.stop();
         }
         time = hour + " : " + min + " : " + seconds;
      }
      
      public function set btn1(param1:Button) : void
      {
         var _loc2_:Object = this._3034453btn1;
         if(_loc2_ !== param1)
         {
            this._3034453btn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn1",_loc2_,param1));
         }
      }
      
      public function update() : void
      {
      }
      
      [Bindable(event="propertyChange")]
      private function get time() : String
      {
         return this._3560141time;
      }
      
      public function ___AntiAddictCanvas_SimpleCanvas1_show(param1:FlexEvent) : void
      {
         onShow();
      }
      
      public function initView() : void
      {
      }
      
      public function setOnLineTime(param1:Number) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         hour = int(Math.floor(param1 / 1000 / 3600));
         min = int(Math.floor((param1 - hour * 1000 * 3600) / 1000 / 60));
         seconds = int(Math.floor((param1 - hour * 1000 * 3600 - min * 1000 * 60) / 1000));
         time = hour + " : " + min + " : " + seconds;
         if(!timer.running)
         {
            timer.start();
         }
      }
      
      public function stopTimer() : void
      {
         if(timer.running)
         {
            timer.stop();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn1() : Button
      {
         return this._3034453btn1;
      }
      
      private function onShow() : void
      {
         if(firstTimeFlag)
         {
            _core.sysMsg(Language.ANTIADDICTCANVAS_U[6]);
            timer.addEventListener(TimerEvent.TIMER,updateTime);
            firstTimeFlag = false;
         }
      }
      
      public function ___AntiAddictCanvas_SimpleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init(param1);
      }
   }
}

