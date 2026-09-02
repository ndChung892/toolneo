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
   import mx.controls.ColorPicker;
   import mx.controls.TextArea;
   import mx.controls.TextInput;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.ColorPickerEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SendQxWishPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1559213128RL_rname:RoundedLabel;
      
      private const TYPE_MAKE_WISH:int = 1;
      
      mx_internal var _watchers:Array = [];
      
      private var _type:int;
      
      private const TYPE_SHOW_LOVE:int = 0;
      
      private var _2677TI:TextInput;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _2669TA:TextArea;
      
      private var _117924854btnCancel:BasicGlowButton;
      
      private var _1573025506RL_color:RoundedLabel;
      
      mx_internal var _bindings:Array = [];
      
      private var _915424585BTCanva:BasicTitleCanvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":250,
               "height":200,
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
                        "maxChars":6,
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
                  "id":"RL_color",
                  "stylesFactory":function():void
                  {
                     this.left = "20";
                     this.bottom = "110";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":100,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":TextArea,
                  "id":"TA",
                  "stylesFactory":function():void
                  {
                     this.bottom = "45";
                     this.left = "20";
                     this.right = "20";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CSSBorder",
                        "maxChars":40,
                        "height":55
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
                        "label":"",
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
               }),new UIComponentDescriptor({
                  "type":ColorPicker,
                  "id":"CP",
                  "events":{"change":"__CP_change"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "108";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":120,
                        "showTextField":false,
                        "width":110,
                        "height":22,
                        "selectedColor":16777215
                     };
                  }
               })]
            };
         }
      });
      
      private var _2157CP:ColorPicker;
      
      private var _94069048btnOK:BasicGlowButton;
      
      private var _core:Core = Core.getInstance();
      
      public function SendQxWishPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 250;
         this.height = 200;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SendQxWishPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get TA() : TextArea
      {
         return this._2669TA;
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
      
      [Bindable(event="propertyChange")]
      public function get btnCancel() : BasicGlowButton
      {
         return this._117924854btnCancel;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SendQxWishPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SendQxWishPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_SendQxWishPanelWatcherSetupUtil");
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
      
      public function set BTCanva(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._915424585BTCanva;
         if(_loc2_ !== param1)
         {
            this._915424585BTCanva = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"BTCanva",_loc2_,param1));
         }
      }
      
      private function changeColor() : void
      {
         TA.setStyle("color",CP.value);
      }
      
      [Bindable(event="propertyChange")]
      public function get RL_color() : RoundedLabel
      {
         return this._1573025506RL_color;
      }
      
      public function __btnCancel_click(param1:MouseEvent) : void
      {
         hide();
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
      
      private function _SendQxWishPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SHOWLOVEPANEL_U[5];
         _loc1_ = Language.SHOWLOVEPANEL_U[6];
         _loc1_ = Language.INPUTPANEL_U[1];
      }
      
      public function set RL_color(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1573025506RL_color;
         if(_loc2_ !== param1)
         {
            this._1573025506RL_color = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"RL_color",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get RL_rname() : RoundedLabel
      {
         return this._1559213128RL_rname;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnOK() : BasicGlowButton
      {
         return this._94069048btnOK;
      }
      
      [Bindable(event="propertyChange")]
      public function get BTCanva() : BasicTitleCanvas
      {
         return this._915424585BTCanva;
      }
      
      private function sendWish() : void
      {
         var msg:String;
         var func:Function;
         var wish:Object = null;
         if(_type == TYPE_SHOW_LOVE && TI.text.length < 1)
         {
            Alert.show(Language.SHOWLOVEPANEL_S[2]);
            return;
         }
         if(TA.text.length < 1)
         {
            Alert.show(Language.SHOWLOVEPANEL_S[3]);
            return;
         }
         wish = new Object();
         wish.words = TA.text;
         wish.type = _type;
         wish.sname = _core.player.name;
         wish.rname = TI.text;
         wish.color = CP.value;
         wish.flag = true;
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("addQxWish",new Responder(onAddQxWish),wish);
               hide();
            }
         };
         msg = "";
         if(_type == TYPE_MAKE_WISH)
         {
            msg = Language.SHOWLOVEPANEL_S[1];
         }
         else
         {
            msg = Language.SHOWLOVEPANEL_S[0];
         }
         Alert.show(msg,"",Alert.YES | Alert.NO,null,func);
      }
      
      public function onAddQxWish(param1:Object) : void
      {
         if(param1)
         {
            _core.qxWishesArr.push(param1);
         }
      }
      
      public function set CP(param1:ColorPicker) : void
      {
         var _loc2_:Object = this._2157CP;
         if(_loc2_ !== param1)
         {
            this._2157CP = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"CP",_loc2_,param1));
         }
      }
      
      public function __btnOK_click(param1:MouseEvent) : void
      {
         sendWish();
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
      
      public function __CP_change(param1:ColorPickerEvent) : void
      {
         changeColor();
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
      
      [Bindable(event="propertyChange")]
      public function get CP() : ColorPicker
      {
         return this._2157CP;
      }
      
      [Bindable(event="propertyChange")]
      public function get TI() : TextInput
      {
         return this._2677TI;
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
      
      public function set type(param1:int) : void
      {
         _type = param1;
         if(param1 == TYPE_SHOW_LOVE)
         {
            btnOK.label = Language.SHOWLOVEPANEL_U[3];
            TI.enabled = true;
            BTCanva.text = Language.SHOWLOVEPANEL_U[8];
            TI.visible = true;
            RL_rname.visible = true;
            height = 200;
         }
         else
         {
            btnOK.label = Language.SHOWLOVEPANEL_U[4];
            TI.enabled = false;
            BTCanva.text = Language.SHOWLOVEPANEL_U[7];
            TI.visible = false;
            RL_rname.visible = false;
            height = 180;
         }
      }
      
      private function _SendQxWishPanel_bindingsSetup() : Array
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
            var _loc1_:* = Language.SHOWLOVEPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            RL_color.text = param1;
         },"RL_color.text");
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
   }
}

