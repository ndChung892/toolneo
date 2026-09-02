package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.RoundedLabel;
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
   import mx.controls.NumericStepper;
   import mx.controls.TextArea;
   import mx.controls.TextInput;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SendVDAYWishPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1559213128RL_rname:RoundedLabel;
      
      private var _94069048btnOK:BasicGlowButton;
      
      mx_internal var _watchers:Array = [];
      
      private var _2677TI:TextInput;
      
      private var _1090966664RL_rname0:RoundedLabel;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _2669TA:TextArea;
      
      private var _401559445numStepper:NumericStepper;
      
      private var _117924854btnCancel:BasicGlowButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _915424585BTCanva:BasicTitleCanvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":306,
               "height":266,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"BTCanva"
               }),new UIComponentDescriptor({
                  "type":TextInput,
                  "id":"TI",
                  "stylesFactory":function():void
                  {
                     this.top = "42";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":110,
                        "x":120
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"RL_rname",
                  "stylesFactory":function():void
                  {
                     this.left = "20";
                     this.top = "42";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":100,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"RL_rname0",
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.top = "201";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":100,
                        "text":"使用表白卡:",
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":TextArea,
                  "id":"TA",
                  "stylesFactory":function():void
                  {
                     this.bottom = "77";
                     this.left = "20";
                     this.right = "20";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CSSBorder",
                        "maxChars":40,
                        "height":108
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":NumericStepper,
                  "id":"numStepper",
                  "events":{"mouseDown":"__numStepper_mouseDown"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "41.4";
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "value":1,
                        "maximum":120,
                        "minimum":1,
                        "width":76
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btnOK",
                  "events":{"click":"__btnOK_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "10";
                     this.horizontalCenter = "-35";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CrystalYellowButton",
                        "width":50,
                        "height":25
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btnCancel",
                  "events":{"click":"__btnCancel_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "10";
                     this.horizontalCenter = "35";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CrystalYellowButton",
                        "width":50,
                        "height":25
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function SendVDAYWishPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 306;
         this.height = 266;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SendVDAYWishPanel._watcherSetupUtil = param1;
      }
      
      public function set btnOK(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._94069048btnOK;
         if(_loc2_ !== param1)
         {
            this._94069048btnOK = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnOK",_loc2_,param1));
         }
      }
      
      public function set BTCanva(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._915424585BTCanva;
         if(_loc2_ !== param1)
         {
            this._915424585BTCanva = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"BTCanva",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SendVDAYWishPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SendVDAYWishPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_SendVDAYWishPanelWatcherSetupUtil");
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
      
      public function __btnCancel_click(param1:MouseEvent) : void
      {
         hide();
      }
      
      [Bindable(event="propertyChange")]
      public function get btnOK() : BasicGlowButton
      {
         return this._94069048btnOK;
      }
      
      private function _SendVDAYWishPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SHOWLOVEPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            RL_rname.text = param1;
         },"RL_rname.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.INPUTPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnOK.label = param1;
         },"btnOK.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.INPUTPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnCancel.label = param1;
         },"btnCancel.label");
         result[2] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get RL_rname() : RoundedLabel
      {
         return this._1559213128RL_rname;
      }
      
      [Bindable(event="propertyChange")]
      public function get BTCanva() : BasicTitleCanvas
      {
         return this._915424585BTCanva;
      }
      
      private function sendWish() : void
      {
         var func:Function;
         var wish:Object = null;
         if(TI.text.length < 1)
         {
            Alert.show(Language.VDAYPANEL_U[12]);
            return;
         }
         wish = new Object();
         wish.words = TA.text;
         wish.tname = TI.text;
         wish.name = _core.player.name;
         wish.gender = _core.player.gender;
         wish.cid = _core.cid;
         wish.times = numStepper.value;
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("proposalToSomeOne",new Responder(onAddQxWish),wish);
               hide();
            }
         };
         Alert.show(Language.VDAYPANEL_U[11].toString().replace("{num}",wish.times),"",Alert.YES | Alert.NO,null,func);
      }
      
      public function onAddQxWish(param1:Object) : void
      {
      }
      
      public function set numStepper(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._401559445numStepper;
         if(_loc2_ !== param1)
         {
            this._401559445numStepper = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numStepper",_loc2_,param1));
         }
      }
      
      private function _SendVDAYWishPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SHOWLOVEPANEL_U[5];
         _loc1_ = Language.INPUTPANEL_U[0];
         _loc1_ = Language.INPUTPANEL_U[1];
      }
      
      public function __btnOK_click(param1:MouseEvent) : void
      {
         sendWish();
      }
      
      public function set TA(param1:TextArea) : void
      {
         var _loc2_:Object = this._2669TA;
         if(_loc2_ !== param1)
         {
            this._2669TA = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"TA",_loc2_,param1));
         }
      }
      
      public function set TI(param1:TextInput) : void
      {
         var _loc2_:Object = this._2677TI;
         if(_loc2_ !== param1)
         {
            this._2677TI = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"TI",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numStepper() : NumericStepper
      {
         return this._401559445numStepper;
      }
      
      public function set btnCancel(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._117924854btnCancel;
         if(_loc2_ !== param1)
         {
            this._117924854btnCancel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnCancel",_loc2_,param1));
         }
      }
      
      public function set RL_rname0(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1090966664RL_rname0;
         if(_loc2_ !== param1)
         {
            this._1090966664RL_rname0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"RL_rname0",_loc2_,param1));
         }
      }
      
      public function __numStepper_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      [Bindable(event="propertyChange")]
      public function get TA() : TextArea
      {
         return this._2669TA;
      }
      
      [Bindable(event="propertyChange")]
      public function get TI() : TextInput
      {
         return this._2677TI;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnCancel() : BasicGlowButton
      {
         return this._117924854btnCancel;
      }
      
      [Bindable(event="propertyChange")]
      public function get RL_rname0() : RoundedLabel
      {
         return this._1090966664RL_rname0;
      }
      
      public function set RL_rname(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1559213128RL_rname;
         if(_loc2_ !== param1)
         {
            this._1559213128RL_rname = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"RL_rname",_loc2_,param1));
         }
      }
   }
}

