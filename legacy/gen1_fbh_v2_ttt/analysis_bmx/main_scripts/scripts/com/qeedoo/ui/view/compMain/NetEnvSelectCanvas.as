package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.RoundedButton;
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
   import mx.controls.Button;
   import mx.controls.RadioButton;
   import mx.controls.RadioButtonGroup;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class NetEnvSelectCanvas extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _390366281envSelect:RadioButtonGroup;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _NetEnvSelectCanvas_RoundedButton1:RoundedButton;
      
      public var _NetEnvSelectCanvas_RoundedButton2:RoundedButton;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _296980185useProxy:RadioButton;
      
      mx_internal var _watchers:Array;
      
      private var _3005871auto:RadioButton;
      
      private var _98648cnc:RadioButton;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _94641558chtel:RadioButton;
      
      public function NetEnvSelectCanvas()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "events":{"creationComplete":"___NetEnvSelectCanvas_Canvas2_creationComplete"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.verticalCenter = "-8";
                     this.backgroundAlpha = 1;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":220,
                        "height":202,
                        "styleName":"CanvasChooseChannel",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":RoundedButton,
                           "id":"_NetEnvSelectCanvas_RoundedButton1",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":1,
                                 "width":150,
                                 "styleName":"StripeButton",
                                 "enabled":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "events":{
                              "mouseDown":"___NetEnvSelectCanvas_Button1_mouseDown",
                              "click":"___NetEnvSelectCanvas_Button1_click"
                           },
                           "stylesFactory":function():void
                           {
                              this.right = "4";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":17,
                                 "styleName":"BtnPanelClose"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"auto",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":54,
                                 "groupName":"envSelect"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"cnc",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":82,
                                 "groupName":"envSelect"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"chtel",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":25.8,
                                 "y":110,
                                 "groupName":"envSelect"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"useProxy",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":135,
                                 "label":"以上都不行,就试试这个",
                                 "groupName":"envSelect",
                                 "value":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedButton,
                           "id":"_NetEnvSelectCanvas_RoundedButton2",
                           "events":{"click":"___NetEnvSelectCanvas_RoundedButton2_click"},
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":157,
                                 "styleName":"CrystalBlueButton"
                              };
                           }
                        })]
                     };
                  }
               })]};
            }
         });
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
            this.backgroundAlpha = 0;
         };
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.cacheAsBitmap = true;
         _NetEnvSelectCanvas_RadioButtonGroup1_i();
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         NetEnvSelectCanvas._watcherSetupUtil = param1;
      }
      
      private function hide() : void
      {
         this.visible = false;
      }
      
      public function ___NetEnvSelectCanvas_RoundedButton2_click(param1:MouseEvent) : void
      {
         saveHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get envSelect() : RadioButtonGroup
      {
         return this._390366281envSelect;
      }
      
      public function ___NetEnvSelectCanvas_Button1_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      private function saveHandler(param1:Event) : void
      {
         if(envSelect.selection == null)
         {
            GamePredef.CONNECT_METHOD = GamePredef.CONNECT_BY_DOMAIN;
            GamePredef.SERVER_USE_PROXYSERVER = false;
         }
         else if(10 == int(envSelect.selection.value))
         {
            GamePredef.CONNECT_METHOD = GamePredef.CONNECT_BY_DOMAIN;
            GamePredef.SERVER_USE_PROXYSERVER = true;
         }
         else
         {
            GamePredef.CONNECT_METHOD = int(envSelect.selection.value);
            GamePredef.SERVER_USE_PROXYSERVER = false;
         }
         close(param1);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:NetEnvSelectCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _NetEnvSelectCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compMain_NetEnvSelectCanvasWatcherSetupUtil");
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
      
      public function set envSelect(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = this._390366281envSelect;
         if(_loc2_ !== param1)
         {
            this._390366281envSelect = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"envSelect",_loc2_,param1));
         }
      }
      
      public function set useProxy(param1:RadioButton) : void
      {
         var _loc2_:Object = this._296980185useProxy;
         if(_loc2_ !== param1)
         {
            this._296980185useProxy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"useProxy",_loc2_,param1));
         }
      }
      
      private function init(param1:Event) : void
      {
         if(GamePredef.SERVER_ADD_PROXY)
         {
            useProxy.visible = true;
         }
         if(Boolean(GamePredef.SERVER_ADD_PROXY) && GamePredef.SERVER_USE_PROXYSERVER)
         {
            envSelect.selection = useProxy;
         }
         else
         {
            switch(GamePredef.CONNECT_METHOD)
            {
               case GamePredef.CONNECT_BY_CH_TELCOM:
                  envSelect.selection = chtel;
                  break;
               case GamePredef.CONNECT_BY_CNC:
                  envSelect.selection = cnc;
                  break;
               case GamePredef.CONNECT_BY_DOMAIN:
                  envSelect.selection = auto;
            }
         }
      }
      
      public function ___NetEnvSelectCanvas_Canvas2_creationComplete(param1:FlexEvent) : void
      {
         init(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get chtel() : RadioButton
      {
         return this._94641558chtel;
      }
      
      public function set auto(param1:RadioButton) : void
      {
         var _loc2_:Object = this._3005871auto;
         if(_loc2_ !== param1)
         {
            this._3005871auto = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"auto",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cnc() : RadioButton
      {
         return this._98648cnc;
      }
      
      [Bindable(event="propertyChange")]
      public function get useProxy() : RadioButton
      {
         return this._296980185useProxy;
      }
      
      private function _NetEnvSelectCanvas_RadioButtonGroup1_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         envSelect = _loc1_;
         _loc1_.initialized(this,"envSelect");
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get auto() : RadioButton
      {
         return this._3005871auto;
      }
      
      public function set cnc(param1:RadioButton) : void
      {
         var _loc2_:Object = this._98648cnc;
         if(_loc2_ !== param1)
         {
            this._98648cnc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cnc",_loc2_,param1));
         }
      }
      
      public function set chtel(param1:RadioButton) : void
      {
         var _loc2_:Object = this._94641558chtel;
         if(_loc2_ !== param1)
         {
            this._94641558chtel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chtel",_loc2_,param1));
         }
      }
      
      private function _NetEnvSelectCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.NETENVSELECTCANVAS_S[3];
         _loc1_ = Language.NETENVSELECTCANVAS_S[0];
         _loc1_ = GamePredef.CONNECT_BY_DOMAIN;
         _loc1_ = Language.NETENVSELECTCANVAS_S[1];
         _loc1_ = GamePredef.CONNECT_BY_CNC;
         _loc1_ = Language.NETENVSELECTCANVAS_S[2];
         _loc1_ = GamePredef.CONNECT_BY_CH_TELCOM;
         _loc1_ = Language.NETENVSELECTCANVAS_U[0];
      }
      
      private function close(param1:Event) : void
      {
         hide();
         Core.getInstance().view.getUI(ViewManager.FORE_L_R).sysInfoCanvas.visible = true;
      }
      
      private function _NetEnvSelectCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NETENVSELECTCANVAS_S[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NetEnvSelectCanvas_RoundedButton1.label = param1;
         },"_NetEnvSelectCanvas_RoundedButton1.label");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NETENVSELECTCANVAS_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            auto.label = param1;
         },"auto.label");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return GamePredef.CONNECT_BY_DOMAIN;
         },function(param1:Object):void
         {
            auto.value = param1;
         },"auto.value");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NETENVSELECTCANVAS_S[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            cnc.label = param1;
         },"cnc.label");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return GamePredef.CONNECT_BY_CNC;
         },function(param1:Object):void
         {
            cnc.value = param1;
         },"cnc.value");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NETENVSELECTCANVAS_S[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            chtel.label = param1;
         },"chtel.label");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return GamePredef.CONNECT_BY_CH_TELCOM;
         },function(param1:Object):void
         {
            chtel.value = param1;
         },"chtel.value");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NETENVSELECTCANVAS_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NetEnvSelectCanvas_RoundedButton2.label = param1;
         },"_NetEnvSelectCanvas_RoundedButton2.label");
         result[7] = binding;
         return result;
      }
      
      public function ___NetEnvSelectCanvas_Button1_click(param1:MouseEvent) : void
      {
         close(param1);
      }
   }
}

