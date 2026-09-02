package com.qeedoo.ui.view.compFore
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.config.Version;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.LinkTextArea;
   import com.qeedoo.ui.view.comp.RoundedLabel;
   import com.qeedoo.ui.view.compMain.WaitingPanel;
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
   import mx.controls.Alert;
   import mx.controls.CheckBox;
   import mx.controls.Image;
   import mx.controls.TextInput;
   import mx.core.Application;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.effects.Fade;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.ToolTipManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class LoginCanvas extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1282133823fadeIn:Fade;
      
      private var _93647166bgImg:Image;
      
      mx_internal var _bindings:Array;
      
      private var _2090736237btnLogin:BasicDelayButton;
      
      private var _1378823016btnReg:BasicGlowButton;
      
      private var _1024969555cbSavePass:CheckBox;
      
      private var _153616736httpCheck:CheckBox;
      
      private var _181384528canvasLogined:Canvas;
      
      public var _LoginCanvas_BasicTxtButton1:BasicTxtButton;
      
      public var _LoginCanvas_BasicGlowButton1:BasicGlowButton;
      
      public var _LoginCanvas_BasicGlowButton2:BasicGlowButton;
      
      public var _LoginCanvas_BasicGlowButton3:BasicGlowButton;
      
      public var _LoginCanvas_BasicTxtButton2:BasicTxtButton;
      
      public var _LoginCanvas_BasicTxtButton3:BasicTxtButton;
      
      public var _LoginCanvas_RoundedLabel2:RoundedLabel;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _core:Core;
      
      private var _1391914402bgIcon:Image;
      
      mx_internal var _watchers:Array;
      
      private var _1706834683inputPass:TextInput;
      
      private var _1707000501inputUser:TextInput;
      
      private var _1025029337cbSaveName:CheckBox;
      
      private var _3641990warn:RoundedLabel;
      
      private var _forceHandler:uint;
      
      private var _1890311951canvasLogin:Canvas;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _642554749systemInfo:LinkTextArea;
      
      private const LOGIN_DELAY:Number = 3000;
      
      private var _lastLogin:Number;
      
      public var _LoginCanvas_Image3:Image;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _732738989sysInfoCanvas:Canvas;
      
      public function LoginCanvas()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":900,
                  "height":570,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Image,
                     "id":"bgImg",
                     "events":{"complete":"__bgImg_complete"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":0,
                           "y":0,
                           "percentWidth":100,
                           "percentHeight":100
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"warn",
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "visible":false,
                           "y":440
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Image,
                     "id":"bgIcon",
                     "stylesFactory":function():void
                     {
                        this.right = "15";
                        this.bottom = "70";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":60,
                           "height":75
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"canvasLogined",
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.bottom = "40";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "visible":true,
                           "width":205,
                           "height":110,
                           "styleName":"ButtonWrapper",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":BasicGlowButton,
                              "id":"_LoginCanvas_BasicGlowButton1",
                              "events":{"click":"___LoginCanvas_BasicGlowButton1_click"},
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":120,
                                    "y":20,
                                    "styleName":"LoginButton"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":BasicGlowButton,
                              "id":"_LoginCanvas_BasicGlowButton2",
                              "events":{"click":"___LoginCanvas_BasicGlowButton2_click"},
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":80,
                                    "y":65,
                                    "styleName":"CrystalBlueButton"
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"canvasLogin",
                     "stylesFactory":function():void
                     {
                        this.bottom = "40";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "visible":false,
                           "styleName":"CanvasLogined",
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "tabChildren":true,
                           "x":300,
                           "width":287,
                           "height":130,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.horizontalCenter = "0";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":3,
                                    "styleName":"CanvasLoginTitle",
                                    "width":81,
                                    "height":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":BasicGlowButton,
                              "id":"_LoginCanvas_BasicGlowButton3",
                              "events":{"click":"___LoginCanvas_BasicGlowButton3_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":185,
                                    "y":95,
                                    "width":83,
                                    "height":27,
                                    "styleName":"LoginButton"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":BasicDelayButton,
                              "id":"btnLogin",
                              "events":{"click":"__btnLogin_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "clickDelay":5000,
                                    "x":20,
                                    "y":95,
                                    "styleName":"LoginButton",
                                    "width":64,
                                    "height":27
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":BasicGlowButton,
                              "id":"btnReg",
                              "events":{"click":"__btnReg_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "enabled":true,
                                    "x":103,
                                    "y":95,
                                    "styleName":"LoginButton",
                                    "width":64,
                                    "height":27
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":TextInput,
                              "id":"inputUser",
                              "events":{"keyDown":"__inputUser_keyDown"},
                              "stylesFactory":function():void
                              {
                                 this.backgroundAlpha = 0;
                                 this.cornerRadius = 0;
                                 this.borderStyle = "none";
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":110,
                                    "styleName":"LoginInputBox",
                                    "maxChars":50,
                                    "x":65,
                                    "y":37,
                                    "height":22
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":TextInput,
                              "id":"inputPass",
                              "events":{"keyDown":"__inputPass_keyDown"},
                              "stylesFactory":function():void
                              {
                                 this.backgroundAlpha = 0;
                                 this.cornerRadius = 0;
                                 this.borderStyle = "none";
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":110,
                                    "styleName":"LoginInputBox",
                                    "displayAsPassword":true,
                                    "maxChars":20,
                                    "x":65,
                                    "y":67,
                                    "height":22
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":CheckBox,
                              "id":"cbSaveName",
                              "events":{"change":"__cbSaveName_change"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":185,
                                    "y":40,
                                    "label":"",
                                    "width":20
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":CheckBox,
                              "id":"cbSavePass",
                              "events":{"change":"__cbSavePass_change"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "visible":false,
                                    "x":183,
                                    "y":93,
                                    "label":"",
                                    "width":15
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":BasicTxtButton,
                              "id":"_LoginCanvas_BasicTxtButton1",
                              "stylesFactory":function():void
                              {
                                 this.paddingLeft = 0;
                                 this.paddingRight = 0;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":20,
                                    "y":40,
                                    "width":40,
                                    "height":18
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":BasicTxtButton,
                              "id":"_LoginCanvas_BasicTxtButton2",
                              "stylesFactory":function():void
                              {
                                 this.paddingLeft = 0;
                                 this.paddingRight = 0;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":20,
                                    "y":70,
                                    "width":40,
                                    "height":18
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":BasicTxtButton,
                              "id":"_LoginCanvas_BasicTxtButton3",
                              "stylesFactory":function():void
                              {
                                 this.paddingLeft = 0;
                                 this.paddingRight = 0;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":205,
                                    "y":40,
                                    "width":70,
                                    "height":18
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"sysInfoCanvas",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":184.5,
                           "y":90,
                           "width":531,
                           "height":270,
                           "styleName":"PanelAnnouncement",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":LinkTextArea,
                              "id":"systemInfo",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.top = "25";
                                 this.bottom = "15";
                                 this.backgroundAlpha = 0;
                                 this.borderStyle = "none";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":28,
                                    "width":475,
                                    "text":"",
                                    "selectable":false,
                                    "editable":false
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Image,
                     "id":"_LoginCanvas_Image3",
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"y":10};
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"_LoginCanvas_RoundedLabel2",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "right";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":719,
                           "y":542,
                           "width":171
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":CheckBox,
                     "id":"httpCheck",
                     "events":{"change":"__httpCheck_change"},
                     "stylesFactory":function():void
                     {
                        this.color = 11149892;
                        this.fontSize = 15;
                        this.fontWeight = "bold";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":9.95,
                           "y":538
                        };
                     }
                  })]
               };
            }
         });
         _core = Core.getInstance();
         mx_internal::_bindings = [];
         mx_internal::_watchers = [];
         mx_internal::_bindingsByDestination = {};
         mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.verticalCenter = "0";
            this.horizontalCenter = "0";
            this.borderThickness = 2;
         };
         this.width = 900;
         this.height = 570;
         _LoginCanvas_Fade1_i();
         this.addEventListener("show",___LoginCanvas_Canvas1_show);
         this.addEventListener("hide",___LoginCanvas_Canvas1_hide);
         this.addEventListener("creationComplete",___LoginCanvas_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         LoginCanvas._watcherSetupUtil = param1;
      }
      
      public function __btnReg_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest(GamePredef.SERVER_ADD_REG),"_blank");
      }
      
      public function ___LoginCanvas_Canvas1_hide(param1:FlexEvent) : void
      {
         onHide();
      }
      
      public function set systemInfo(param1:LinkTextArea) : void
      {
         var _loc2_:Object = this._642554749systemInfo;
         if(_loc2_ !== param1)
         {
            this._642554749systemInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"systemInfo",_loc2_,param1));
         }
      }
      
      private function loadSystemInfo() : void
      {
         var _loc1_:URLLoader = new URLLoader();
         _loc1_.addEventListener(ProgressEvent.PROGRESS,loadProgressHandler);
         _loc1_.addEventListener(IOErrorEvent.IO_ERROR,loadErrorHandler);
         _loc1_.addEventListener(Event.COMPLETE,loadCompleteHandler);
         _loc1_.load(new URLRequest(GamePredef.PATH_INFO));
      }
      
      private function loadCompleteHandler(param1:Event) : void
      {
         param1.currentTarget.removeEventListener(ProgressEvent.PROGRESS,loadProgressHandler);
         param1.currentTarget.removeEventListener(IOErrorEvent.IO_ERROR,loadErrorHandler);
         param1.currentTarget.removeEventListener(Event.COMPLETE,loadCompleteHandler);
         systemInfo.htmlText = "<font color=\'#FFFFFF\'>" + param1.currentTarget.data + "</font>";
      }
      
      public function set warn(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._3641990warn;
         if(_loc2_ !== param1)
         {
            this._3641990warn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"warn",_loc2_,param1));
         }
      }
      
      private function init() : void
      {
         loadInfo();
         onShow();
         systemInfo.field.filters = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         ToolTipManager.enabled = true;
         if(canvasLogin.visible)
         {
            if(cbSaveName.selected)
            {
               Application.application.focusManager.setFocus(inputPass);
            }
            else
            {
               Application.application.focusManager.setFocus(inputUser);
            }
         }
      }
      
      private function savePassInfo(param1:SharedObject) : void
      {
         param1.data.savePassInfo = true;
         param1.data.pass = inputPass.text;
      }
      
      public function __btnLogin_click(param1:MouseEvent) : void
      {
         login();
      }
      
      public function connectForClassify() : void
      {
         var _loc1_:String = null;
      }
      
      [Bindable(event="propertyChange")]
      public function get cbSaveName() : CheckBox
      {
         return this._1025029337cbSaveName;
      }
      
      private function loadErrorHandler(param1:IOErrorEvent) : void
      {
         param1.currentTarget.removeEventListener(ProgressEvent.PROGRESS,loadProgressHandler);
         param1.currentTarget.removeEventListener(IOErrorEvent.IO_ERROR,loadErrorHandler);
         param1.currentTarget.removeEventListener(Event.COMPLETE,loadCompleteHandler);
         systemInfo.text = Language.LOGINCANVAS_S[3];
      }
      
      private function selectNetEnv(param1:Event) : void
      {
         sysInfoCanvas.visible = false;
         _core.view.show(ViewManager.POPU_NET_SELECT);
      }
      
      public function __inputUser_keyDown(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.TAB || param1.keyCode == Keyboard.ENTER)
         {
            inputPass.setFocus();
         }
      }
      
      private function savePassHandler() : void
      {
         var _loc1_:SharedObject = SharedObject.getLocal("loginPassInfo");
         if(cbSavePass.selected)
         {
            savePassInfo(_loc1_);
         }
         else
         {
            _loc1_.clear();
         }
      }
      
      private function forceLogin() : void
      {
         var _loc1_:WaitingPanel = WaitingPanel(_core.view.getUI(ViewManager.POPU_WAIT));
         if(_loc1_)
         {
            _loc1_.showText("Người chơi đã offline, vui lòng làm mới trình duyệt để đăng nhập.");
            _loc1_.showTime(20);
         }
         _core.ipWarnFlag = false;
         _core.global.showAlert = false;
         _core.global.connect(GamePredef.SERVER_ADD_GLOBAL,["F",_core.user,_core.pass,_core.time,_core.by_session,MD5.hash(GamePredef.msg_button + GamePredef.msg_chanel)]);
         _core.delPass = null;
         clearForce();
         _forceHandler = setTimeout(loginLater,19800);
      }
      
      public function set btnReg(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1378823016btnReg;
         if(_loc2_ !== param1)
         {
            this._1378823016btnReg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnReg",_loc2_,param1));
         }
      }
      
      private function saveUserHandler() : void
      {
         var _loc1_:SharedObject = SharedObject.getLocal("loginUserInfo");
         if(cbSaveName.selected)
         {
            saveUserInfo(_loc1_);
         }
         else
         {
            _loc1_.clear();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bgImg() : Image
      {
         return this._93647166bgImg;
      }
      
      private function configConnectMethod() : void
      {
         var _loc1_:String = null;
         switch(GamePredef.CONNECT_METHOD)
         {
            case GamePredef.CONNECT_BY_DOMAIN:
               break;
            case GamePredef.CONNECT_BY_CNC:
               _loc1_ = GamePredef.SP_CNC;
               break;
            case GamePredef.CONNECT_BY_CH_TELCOM:
               _loc1_ = GamePredef.SP_TEL;
         }
         if(_loc1_ == null)
         {
            if(GamePredef.SERVER_ISACTING == false)
            {
               GamePredef.SERVER_ADD_GLOBAL = GamePredef.SERVER_PROTOCAL_LOGIC + GamePredef.SERVER_ADD_GLO;
               trace(GamePredef.SERVER_ADD_GLOBAL);
            }
            else
            {
               GamePredef.SERVER_ADD_GLOBAL = GamePredef.SERVER_PROTOCAL_LOGIC2 + GamePredef.SERVER_ADD_GLO;
               trace(GamePredef.SERVER_ADD_GLOBAL);
            }
            return;
         }
         var _loc2_:String = GamePredef.ipList[_loc1_];
         if(_loc2_ == null)
         {
            return;
         }
         if(GamePredef.SERVER_ISACTING == false)
         {
            GamePredef.SERVER_ADD_GLOBAL = GamePredef.SERVER_PROTOCAL_LOGIC + _loc2_ + ":" + GamePredef.SERVER_PORT_AND_PATH;
            trace(GamePredef.SERVER_ADD_GLOBAL);
         }
         else
         {
            GamePredef.SERVER_ADD_GLOBAL = GamePredef.SERVER_PROTOCAL_LOGIC2 + _loc2_ + ":" + GamePredef.SERVER_PORT_AND_PATH;
            trace(GamePredef.SERVER_ADD_GLOBAL);
         }
      }
      
      public function ___LoginCanvas_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         logined();
      }
      
      public function set cbSaveName(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1025029337cbSaveName;
         if(_loc2_ !== param1)
         {
            this._1025029337cbSaveName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cbSaveName",_loc2_,param1));
         }
      }
      
      public function __httpCheck_change(param1:Event) : void
      {
         useRtmpt();
      }
      
      private function _LoginCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LOGINCANVAS_S[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            warn.text = param1;
         },"warn.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return bgImg;
         },function(param1:Object):void
         {
            fadeIn.target = param1;
         },"fadeIn.target");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LOGINCANVAS_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LoginCanvas_BasicGlowButton1.label = param1;
         },"_LoginCanvas_BasicGlowButton1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LOGINCANVAS_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LoginCanvas_BasicGlowButton2.label = param1;
         },"_LoginCanvas_BasicGlowButton2.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LOGINCANVAS_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LoginCanvas_BasicGlowButton3.label = param1;
         },"_LoginCanvas_BasicGlowButton3.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LOGINCANVAS_S[8].toString();
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LoginCanvas_BasicGlowButton3.toolTip = param1;
         },"_LoginCanvas_BasicGlowButton3.toolTip");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LOGINCANVAS_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnLogin.label = param1;
         },"btnLogin.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LOGINCANVAS_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnReg.label = param1;
         },"btnReg.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LOGINCANVAS_S[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            cbSaveName.toolTip = param1;
         },"cbSaveName.toolTip");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LOGINCANVAS_S[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            cbSavePass.toolTip = param1;
         },"cbSavePass.toolTip");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LOGINCANVAS_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LoginCanvas_BasicTxtButton1.label = param1;
         },"_LoginCanvas_BasicTxtButton1.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LOGINCANVAS_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LoginCanvas_BasicTxtButton2.label = param1;
         },"_LoginCanvas_BasicTxtButton2.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LOGINCANVAS_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LoginCanvas_BasicTxtButton3.label = param1;
         },"_LoginCanvas_BasicTxtButton3.label");
         result[12] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.IMG_LOGO;
         },function(param1:Object):void
         {
            _LoginCanvas_Image3.source = param1;
         },"_LoginCanvas_Image3.source");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Version.VERSION;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LoginCanvas_RoundedLabel2.text = param1;
         },"_LoginCanvas_RoundedLabel2.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LOGINCANVAS_S[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            httpCheck.label = param1;
         },"httpCheck.label");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LOGINCANVAS_S[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            httpCheck.toolTip = param1;
         },"httpCheck.toolTip");
         result[16] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get sysInfoCanvas() : Canvas
      {
         return this._732738989sysInfoCanvas;
      }
      
      private function loadPingInfo() : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get canvasLogined() : Canvas
      {
         return this._181384528canvasLogined;
      }
      
      public function set cbSavePass(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1024969555cbSavePass;
         if(_loc2_ !== param1)
         {
            this._1024969555cbSavePass = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cbSavePass",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bgIcon() : Image
      {
         return this._1391914402bgIcon;
      }
      
      [Bindable(event="propertyChange")]
      public function get httpCheck() : CheckBox
      {
         return this._153616736httpCheck;
      }
      
      public function set inputUser(param1:TextInput) : void
      {
         var _loc2_:Object = this._1707000501inputUser;
         if(_loc2_ !== param1)
         {
            this._1707000501inputUser = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inputUser",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnLogin() : BasicDelayButton
      {
         return this._2090736237btnLogin;
      }
      
      private function useRtmpt() : void
      {
      }
      
      private function login() : void
      {
         var _loc3_:SharedObject = null;
         _core.ipWarnFlag = false;
         configConnectMethod();
         clearForce();
         var _loc1_:Number = new Date().getTime();
         if(_loc1_ - _lastLogin < LOGIN_DELAY)
         {
            return;
         }
         _lastLogin = _loc1_;
         if(_core.remote.nc.connected)
         {
            _core.remote.close();
         }
         var _loc2_:Object = _core.view.getUI(ViewManager.POPU_WAIT);
         if(_loc2_)
         {
            _loc2_.showText(Language.LOGINCANVAS_S[1]);
            _loc2_.addTimeOutListener(loginTimeOut,100);
         }
         _core.user = inputUser.text;
         _core.pass = MD5.hash(inputPass.text);
         connect();
         _core.delPass = null;
         if(cbSaveName.selected)
         {
            _loc3_ = SharedObject.getLocal("loginUserInfo");
            saveUserInfo(_loc3_);
         }
         if(cbSavePass.selected)
         {
            _loc3_ = SharedObject.getLocal("loginPassInfo");
            savePassInfo(_loc3_);
         }
      }
      
      private function _LoginCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.LOGINCANVAS_S[5];
         _loc1_ = bgImg;
         _loc1_ = Language.LOGINCANVAS_U[3];
         _loc1_ = Language.LOGINCANVAS_U[2];
         _loc1_ = Language.LOGINCANVAS_U[2];
         _loc1_ = Language.LOGINCANVAS_S[8].toString();
         _loc1_ = Language.LOGINCANVAS_U[0];
         _loc1_ = Language.LOGINCANVAS_U[1];
         _loc1_ = Language.LOGINCANVAS_S[6];
         _loc1_ = Language.LOGINCANVAS_S[7];
         _loc1_ = Language.LOGINCANVAS_U[5];
         _loc1_ = Language.LOGINCANVAS_U[6];
         _loc1_ = Language.LOGINCANVAS_U[7];
         _loc1_ = ResManager.IMG_LOGO;
         _loc1_ = Version.VERSION;
         _loc1_ = Language.LOGINCANVAS_S[9];
         _loc1_ = Language.LOGINCANVAS_S[10];
      }
      
      public function ___LoginCanvas_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function __inputPass_keyDown(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.TAB)
         {
            inputUser.setFocus();
         }
         if(param1.keyCode == Keyboard.ENTER)
         {
            login();
         }
      }
      
      public function set fadeIn(param1:Fade) : void
      {
         var _loc2_:Object = this._1282133823fadeIn;
         if(_loc2_ !== param1)
         {
            this._1282133823fadeIn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fadeIn",_loc2_,param1));
         }
      }
      
      public function onShow() : void
      {
         bgImg.source = ResManager.hash(GamePredef.DEFAULT_IMG_LOGIN1);
         bgIcon.source = ResManager.getIconUrl(4130220003343);
         if(_core.urlLogin)
         {
            canvasLogin.visible = false;
            canvasLogined.visible = true;
            warn.visible = false;
         }
         else
         {
            canvasLogin.visible = true;
            canvasLogined.visible = true;
            canvasLogined.visible = false;
            warn.visible = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get systemInfo() : LinkTextArea
      {
         return this._642554749systemInfo;
      }
      
      [Bindable(event="propertyChange")]
      public function get warn() : RoundedLabel
      {
         return this._3641990warn;
      }
      
      public function ___LoginCanvas_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         forceLoginClick();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:LoginCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _LoginCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compFore_LoginCanvasWatcherSetupUtil");
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
      
      public function clearForce() : void
      {
         if(_forceHandler > 0)
         {
            clearTimeout(_forceHandler);
            _forceHandler = 0;
         }
      }
      
      private function loginTimeOut(param1:Event) : void
      {
         var handler:*;
         var event:Event = param1;
         event.target.removeEventListener(TimerEvent.TIMER,loginTimeOut,false);
         event.stopImmediatePropagation();
         Core.getInstance().view.hide(ViewManager.POPU_WAIT);
         handler = function():*
         {
            if(GamePredef.DOMAIN_IN_LIST == true)
            {
               Core.getInstance().view.getUI(ViewManager.FORE_L_R).sysInfoCanvas.visible = false;
               Core.getInstance().remote.nc.client.onLogout;
               Core.getInstance().view.show(ViewManager.POPU_NET_SELECT);
            }
         };
         Alert.show(Language.LOGINTIMEOUT_S[0],"",Alert.YES,null,handler);
      }
      
      public function set canvasLogined(param1:Canvas) : void
      {
         var _loc2_:Object = this._181384528canvasLogined;
         if(_loc2_ !== param1)
         {
            this._181384528canvasLogined = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvasLogined",_loc2_,param1));
         }
      }
      
      private function loadProgressHandler(param1:ProgressEvent) : void
      {
         systemInfo.text = Language.LOGINCANVAS_S[2] + param1.bytesLoaded + "/" + param1.bytesTotal;
      }
      
      public function __cbSavePass_change(param1:Event) : void
      {
         savePassHandler();
      }
      
      private function loginLater() : void
      {
         if(_core.ready)
         {
            return;
         }
         _core.global.showAlert = true;
         _core.global.close();
         _core.global.connect(GamePredef.SERVER_ADD_GLOBAL,["G",_core.user,_core.pass,_core.time,_core.by_session,MD5.hash(GamePredef.msg_button + GamePredef.msg_chanel)]);
         _core.delPass = null;
      }
      
      [Bindable(event="propertyChange")]
      public function get cbSavePass() : CheckBox
      {
         return this._1024969555cbSavePass;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnReg() : BasicGlowButton
      {
         return this._1378823016btnReg;
      }
      
      public function set bgImg(param1:Image) : void
      {
         var _loc2_:Object = this._93647166bgImg;
         if(_loc2_ !== param1)
         {
            this._93647166bgImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bgImg",_loc2_,param1));
         }
      }
      
      private function saveUserInfo(param1:SharedObject) : void
      {
         param1.data.saveUserInfo = true;
         param1.data.user = inputUser.text;
      }
      
      private function loadInfo() : void
      {
         var _loc1_:SharedObject = SharedObject.getLocal("loginUserInfo");
         if(_loc1_.data.saveUserInfo == true)
         {
            cbSaveName.selected = true;
            inputUser.text = _loc1_.data.user;
         }
         _loc1_ = SharedObject.getLocal("loginPassInfo");
         if(_loc1_.data.savePassInfo == true)
         {
            cbSavePass.selected = true;
            inputPass.text = _loc1_.data.pass;
         }
         loadSystemInfo();
      }
      
      public function set bgIcon(param1:Image) : void
      {
         var _loc2_:Object = this._1391914402bgIcon;
         if(_loc2_ !== param1)
         {
            this._1391914402bgIcon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bgIcon",_loc2_,param1));
         }
      }
      
      private function onHide() : void
      {
         if(_core.view.getUI(ViewManager.POPU_WAIT))
         {
            _core.view.getUI(ViewManager.POPU_WAIT).removeTimeOutListener(loginTimeOut);
         }
         bgImg.source = bgIcon.source = null;
      }
      
      public function ___LoginCanvas_Canvas1_show(param1:FlexEvent) : void
      {
         onShow();
      }
      
      public function logined() : void
      {
         configConnectMethod();
         var _loc1_:Number = new Date().getTime();
         if(_loc1_ - _lastLogin < LOGIN_DELAY)
         {
            return;
         }
         _lastLogin = _loc1_;
         if(_core.remote.nc.connected)
         {
            _core.remote.close();
         }
         var _loc2_:Object = _core.view.getUI(ViewManager.POPU_WAIT);
         if(_loc2_)
         {
            _loc2_.showText(Language.LOGINCANVAS_S[0]);
         }
         connect();
         _core.delPass = null;
      }
      
      public function ___LoginCanvas_BasicGlowButton3_click(param1:MouseEvent) : void
      {
         forceLoginClick();
      }
      
      [Bindable(event="propertyChange")]
      public function get inputUser() : TextInput
      {
         return this._1707000501inputUser;
      }
      
      public function set httpCheck(param1:CheckBox) : void
      {
         var _loc2_:Object = this._153616736httpCheck;
         if(_loc2_ !== param1)
         {
            this._153616736httpCheck = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"httpCheck",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fadeIn() : Fade
      {
         return this._1282133823fadeIn;
      }
      
      private function _LoginCanvas_Fade1_i() : Fade
      {
         var _loc1_:Fade = new Fade();
         fadeIn = _loc1_;
         _loc1_.alphaFrom = 0;
         _loc1_.alphaTo = 1;
         BindingManager.executeBindings(this,"fadeIn",fadeIn);
         return _loc1_;
      }
      
      private function syncAccountHandler() : void
      {
      }
      
      public function set sysInfoCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._732738989sysInfoCanvas;
         if(_loc2_ !== param1)
         {
            this._732738989sysInfoCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sysInfoCanvas",_loc2_,param1));
         }
      }
      
      public function set canvasLogin(param1:Canvas) : void
      {
         var _loc2_:Object = this._1890311951canvasLogin;
         if(_loc2_ !== param1)
         {
            this._1890311951canvasLogin = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvasLogin",_loc2_,param1));
         }
      }
      
      public function __cbSaveName_change(param1:Event) : void
      {
         saveUserHandler();
      }
      
      public function connect() : void
      {
         var _loc1_:String = null;
         _loc1_ = GamePredef.SERVER_ADD_GLOBAL;
         if(Boolean(GamePredef.SERVER_ADD_PROXY) && GamePredef.SERVER_USE_PROXYSERVER)
         {
            _loc1_ = GamePredef.SERVER_ADD_GLOBAL;
            if(GamePredef.SERVER_ISACTING == false)
            {
               _loc1_ = GamePredef.SERVER_PROTOCAL_LOGIC + GamePredef.SERVER_ADD_PROXY + "/?" + GamePredef.SERVER_ADD_GLOBAL;
            }
            else
            {
               _loc1_ = GamePredef.SERVER_PROTOCAL_LOGIC2 + GamePredef.SERVER_ADD_PROXY + "/?" + GamePredef.SERVER_ADD_GLOBAL;
            }
         }
         trace(_loc1_);
         _core.global.connect(_loc1_,["G",_core.user,_core.pass,_core.time,_core.by_session,MD5.hash(GamePredef.msg_button + GamePredef.msg_chanel)]);
      }
      
      public function set btnLogin(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._2090736237btnLogin;
         if(_loc2_ !== param1)
         {
            this._2090736237btnLogin = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnLogin",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canvasLogin() : Canvas
      {
         return this._1890311951canvasLogin;
      }
      
      private function forceLoginClick() : void
      {
         if(!_core.urlLogin)
         {
            _core.user = inputUser.text;
            _core.pass = MD5.hash(inputPass.text);
         }
         forceLogin();
      }
      
      public function __bgImg_complete(param1:Event) : void
      {
         fadeIn.stop();
         fadeIn.play();
      }
      
      [Bindable(event="propertyChange")]
      public function get inputPass() : TextInput
      {
         return this._1706834683inputPass;
      }
      
      public function set inputPass(param1:TextInput) : void
      {
         var _loc2_:Object = this._1706834683inputPass;
         if(_loc2_ !== param1)
         {
            this._1706834683inputPass = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inputPass",_loc2_,param1));
         }
      }
   }
}

