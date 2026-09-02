package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.DescriptionLabel;
   import com.qeedoo.ui.view.comp.IntroText;
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
   import mx.controls.Button;
   import mx.controls.TextInput;
   import mx.controls.ToolTip;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.managers.ToolTipManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class DPassPanel extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _DPassPanel_BasicGlowButton2:BasicGlowButton;
      
      private var _1415729736txtOldPass:TextInput;
      
      private var state:int;
      
      mx_internal var _watchers:Array;
      
      private var _345368897txtNewPass:TextInput;
      
      private var _685155285txtNewSecondPass:TextInput;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _DPassPanel_BasicTxtButton1:BasicTxtButton;
      
      public var _DPassPanel_BasicTxtButton2:BasicTxtButton;
      
      public var _DPassPanel_BasicTxtButton3:BasicTxtButton;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _tip:ToolTip = null;
      
      private var _rep:RegExp;
      
      public var _DPassPanel_DescriptionLabel1:DescriptionLabel;
      
      public var _DPassPanel_IntroText1:IntroText;
      
      mx_internal var _bindings:Array;
      
      public var _DPassPanel_DescriptionLabel2:DescriptionLabel;
      
      public var _DPassPanel_DescriptionLabel3:DescriptionLabel;
      
      public var _DPassPanel_BasicGlowButton1:BasicGlowButton;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public var _DPassPanel_BasicGlowButton3:BasicGlowButton;
      
      private var _core:Core;
      
      public function DPassPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":260,
                  "height":380,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":BasicGlowButton,
                     "id":"_DPassPanel_BasicGlowButton1",
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":1,
                           "width":170,
                           "styleName":"StripeButton",
                           "enabled":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{
                        "mouseDown":"___DPassPanel_Button1_mouseDown",
                        "click":"___DPassPanel_Button1_click"
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
                     "type":IntroText,
                     "id":"_DPassPanel_IntroText1",
                     "stylesFactory":function():void
                     {
                        this.top = "40";
                        this.left = "15";
                        this.right = "15";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":234,
                           "height":156
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":TextInput,
                     "id":"txtOldPass",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                        this.right = "30";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":210,
                           "displayAsPassword":true,
                           "height":18,
                           "width":130,
                           "maxChars":6,
                           "restrict":"[0-9]"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":TextInput,
                     "id":"txtNewPass",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                        this.right = "30";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":249,
                           "displayAsPassword":true,
                           "height":18,
                           "width":130,
                           "maxChars":6,
                           "restrict":"[0-9]"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":TextInput,
                     "id":"txtNewSecondPass",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                        this.right = "30";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":291,
                           "displayAsPassword":true,
                           "height":18,
                           "width":130,
                           "maxChars":6,
                           "restrict":"[0-9]"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":DescriptionLabel,
                     "id":"_DPassPanel_DescriptionLabel1",
                     "stylesFactory":function():void
                     {
                        this.right = "30";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"y":227};
                     }
                  }),new UIComponentDescriptor({
                     "type":DescriptionLabel,
                     "id":"_DPassPanel_DescriptionLabel2",
                     "stylesFactory":function():void
                     {
                        this.right = "30";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"y":268};
                     }
                  }),new UIComponentDescriptor({
                     "type":DescriptionLabel,
                     "id":"_DPassPanel_DescriptionLabel3",
                     "stylesFactory":function():void
                     {
                        this.right = "30";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"y":310};
                     }
                  }),new UIComponentDescriptor({
                     "type":BasicGlowButton,
                     "id":"_DPassPanel_BasicGlowButton2",
                     "events":{"click":"___DPassPanel_BasicGlowButton2_click"},
                     "stylesFactory":function():void
                     {
                        this.right = "40";
                        this.bottom = "20";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"CrystalBlueButton",
                           "width":80
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":BasicGlowButton,
                     "id":"_DPassPanel_BasicGlowButton3",
                     "events":{"click":"___DPassPanel_BasicGlowButton3_click"},
                     "stylesFactory":function():void
                     {
                        this.bottom = "20";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":40,
                           "styleName":"CrystalBlueButton",
                           "width":80
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":BasicTxtButton,
                     "id":"_DPassPanel_BasicTxtButton1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":30,
                           "y":210
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":BasicTxtButton,
                     "id":"_DPassPanel_BasicTxtButton2",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":30,
                           "y":249
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":BasicTxtButton,
                     "id":"_DPassPanel_BasicTxtButton3",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":30,
                           "y":291
                        };
                     }
                  })]
               };
            }
         });
         _core = Core.getInstance();
         _rep = /[0-9]{6,6}/;
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
            this.top = "50";
            this.horizontalCenter = "50";
         };
         this.styleName = "CanvasChooseChannel";
         this.width = 260;
         this.height = 380;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         DPassPanel._watcherSetupUtil = param1;
      }
      
      public function set txtNewPass(param1:TextInput) : void
      {
         var _loc2_:Object = this._345368897txtNewPass;
         if(_loc2_ !== param1)
         {
            this._345368897txtNewPass = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtNewPass",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:DPassPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _DPassPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_DPassPanelWatcherSetupUtil");
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
      
      public function ___DPassPanel_Button1_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      private function _DPassPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.DPASSPANEL_U[6];
         _loc1_ = _core.by_session != "renren" ? Language.DPASSPANEL_S[9] : Language.DPASSPANEL_S[9] + Language.DPASSPANEL_S[10];
         _loc1_ = Language.DPASSPANEL_S[7];
         _loc1_ = Language.DPASSPANEL_S[7];
         _loc1_ = Language.DPASSPANEL_S[7];
         _loc1_ = Language.DPASSPANEL_U[1];
         _loc1_ = Language.DPASSPANEL_U[0];
         _loc1_ = txtOldPass.text != "" && txtNewPass.text != "" && txtNewSecondPass.text != "";
         _loc1_ = Language.DPASSPANEL_U[7];
         _loc1_ = Language.DPASSPANEL_U[8];
         _loc1_ = Language.DPASSPANEL_U[9];
      }
      
      private function hidTip(param1:Object) : void
      {
         _tip.visible = false;
      }
      
      public function ___DPassPanel_BasicGlowButton3_click(param1:MouseEvent) : void
      {
         sendPwdAgain();
      }
      
      public function set txtOldPass(param1:TextInput) : void
      {
         var _loc2_:Object = this._1415729736txtOldPass;
         if(_loc2_ !== param1)
         {
            this._1415729736txtOldPass = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtOldPass",_loc2_,param1));
         }
      }
      
      public function set txtNewSecondPass(param1:TextInput) : void
      {
         var _loc2_:Object = this._685155285txtNewSecondPass;
         if(_loc2_ !== param1)
         {
            this._685155285txtNewSecondPass = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtNewSecondPass",_loc2_,param1));
         }
      }
      
      public function ___DPassPanel_Button1_click(param1:MouseEvent) : void
      {
         hidePwdAgainCanvas();
      }
      
      public function showPwdAgainCanvas(param1:Boolean = true) : void
      {
         clear();
         var _loc2_:Object = _core.view.getUI(ViewManager.FORE_C_C);
         show();
      }
      
      public function hidePwdAgainCanvas() : void
      {
         this.hide();
         clear();
      }
      
      [Bindable(event="propertyChange")]
      public function get txtNewPass() : TextInput
      {
         return this._345368897txtNewPass;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      private function _DPassPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DPASSPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DPassPanel_BasicGlowButton1.label = param1;
         },"_DPassPanel_BasicGlowButton1.label");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _core.by_session != "renren" ? Language.DPASSPANEL_S[9] : Language.DPASSPANEL_S[9] + Language.DPASSPANEL_S[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DPassPanel_IntroText1.htmlText = param1;
         },"_DPassPanel_IntroText1.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DPASSPANEL_S[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DPassPanel_DescriptionLabel1.text = param1;
         },"_DPassPanel_DescriptionLabel1.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DPASSPANEL_S[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DPassPanel_DescriptionLabel2.text = param1;
         },"_DPassPanel_DescriptionLabel2.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DPASSPANEL_S[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DPassPanel_DescriptionLabel3.text = param1;
         },"_DPassPanel_DescriptionLabel3.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DPASSPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DPassPanel_BasicGlowButton2.label = param1;
         },"_DPassPanel_BasicGlowButton2.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DPASSPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DPassPanel_BasicGlowButton3.label = param1;
         },"_DPassPanel_BasicGlowButton3.label");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return txtOldPass.text != "" && txtNewPass.text != "" && txtNewSecondPass.text != "";
         },function(param1:Boolean):void
         {
            _DPassPanel_BasicGlowButton3.enabled = param1;
         },"_DPassPanel_BasicGlowButton3.enabled");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DPASSPANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DPassPanel_BasicTxtButton1.text = param1;
         },"_DPassPanel_BasicTxtButton1.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DPASSPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DPassPanel_BasicTxtButton2.text = param1;
         },"_DPassPanel_BasicTxtButton2.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DPASSPANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DPassPanel_BasicTxtButton3.text = param1;
         },"_DPassPanel_BasicTxtButton3.text");
         result[10] = binding;
         return result;
      }
      
      private function onSetDeletePass(param1:String) : void
      {
         if(param1 == "")
         {
            Alert.show(Language.DPASSPANEL_S[8]);
            this.visible = false;
         }
         else
         {
            Alert.show(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txtOldPass() : TextInput
      {
         return this._1415729736txtOldPass;
      }
      
      public function sendPwdAgain() : void
      {
         if(!_rep.test(txtOldPass.text))
         {
            Alert.show(Language.DPASSPANEL_S[5],"");
            return;
         }
         if(!_rep.test(txtNewPass.text))
         {
            Alert.show(Language.DPASSPANEL_S[6],"");
            return;
         }
         if(txtNewPass.text != txtNewSecondPass.text)
         {
            Alert.show(Language.DPASSPANEL_S[0],"");
            return;
         }
         _core.remote.call("setDeletePass",new Responder(onSetDeletePass),MD5.hash(txtNewPass.text.toString()),MD5.hash(txtOldPass.text.toString()));
         _core.delPass = null;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtNewSecondPass() : TextInput
      {
         return this._685155285txtNewSecondPass;
      }
      
      private function showTip(param1:Object) : void
      {
         var _loc2_:String = Language.DPASSPANEL_S[7];
         var _loc3_:Point = param1.target.localToGlobal(new Point(param1.target.x + param1.target.width + 5,param1.target.y));
         if(_tip == null)
         {
            _tip = ToolTipManager.createToolTip(_loc2_,_loc3_.x,_loc3_.y) as ToolTip;
         }
         else
         {
            _tip.move(_loc3_.x,_loc3_.y);
            _tip.visible = true;
         }
      }
      
      public function ___DPassPanel_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         hidePwdAgainCanvas();
      }
      
      private function clear(param1:MouseEvent = null) : void
      {
         txtOldPass.text = "";
         txtNewPass.text = "";
         txtNewSecondPass.text = "";
      }
      
      public function create() : void
      {
         this.visible = true;
      }
      
      public function show() : void
      {
         visible = true;
         txtOldPass.text = "";
         txtNewPass.text = "";
         txtNewSecondPass.text = "";
      }
   }
}

