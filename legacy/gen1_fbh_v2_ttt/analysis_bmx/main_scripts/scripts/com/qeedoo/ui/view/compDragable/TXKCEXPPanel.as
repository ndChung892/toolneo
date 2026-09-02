package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
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
   import mx.controls.Label;
   import mx.controls.NumericStepper;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.NumericStepperEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TXKCEXPPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1015250370levelUpDesc2:Label;
      
      private var _3525ns:NumericStepper;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _TXKCEXPPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _729542621btn_confirm:BasicGlowButton;
      
      mx_internal var _watchers:Array = [];
      
      private var _1833865328levelUpDesc:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _921340501btn_close:BasicGlowButton;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":292,
               "height":170,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_TXKCEXPPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Label,
                  "stylesFactory":function():void
                  {
                     this.top = "44";
                     this.left = "5";
                     this.fontSize = 14;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"DescriptionText",
                        "text":"Chọn mua exp, 300 Vàng=500 EXP"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "stylesFactory":function():void
                  {
                     this.top = "77";
                     this.left = "7";
                     this.fontSize = 14;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"DescriptionText",
                        "text":"EXP:"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":NumericStepper,
                  "id":"ns",
                  "events":{"change":"__ns_change"},
                  "stylesFactory":function():void
                  {
                     this.top = "77";
                     this.left = "47.8";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "minimum":500,
                        "maximum":35000,
                        "value":500,
                        "stepSize":500,
                        "width":96.2
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"levelUpDesc",
                  "stylesFactory":function():void
                  {
                     this.top = "71";
                     this.left = "157";
                     this.fontSize = 14;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"DescriptionText",
                        "text":"Tăng 1 cấp"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"levelUpDesc2",
                  "stylesFactory":function():void
                  {
                     this.top = "93";
                     this.left = "157";
                     this.fontSize = 14;
                     this.color = 16711680;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"DescriptionText",
                        "text":"tiêu 300 vàng"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btn_close",
                  "events":{"click":"__btn_close_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "168";
                     this.top = "130";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnNormalBlue",
                        "width":100,
                        "height":26,
                        "label":"Hủy bỏ"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btn_confirm",
                  "events":{"click":"__btn_confirm_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "15";
                     this.top = "130";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnNormalBlue",
                        "width":100,
                        "height":26,
                        "label":"Xác nhận"
                     };
                  }
               })]
            };
         }
      });
      
      public var exeFunc:Function;
      
      public function TXKCEXPPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 292;
         this.height = 170;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TXKCEXPPanel._watcherSetupUtil = param1;
      }
      
      protected function ns_changeHandler(param1:NumericStepperEvent) : void
      {
         var _loc2_:String = null;
         if(param1.value > 0)
         {
            _loc2_ = String(Math.floor(param1.value / 500));
            levelUpDesc.text = Language.TXKC_PANEL[16].replace("{num}",_loc2_);
            levelUpDesc2.text = Language.TXKC_PANEL[17].replace("{num}",int(_loc2_) * 300);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levelUpDesc2() : Label
      {
         return this._1015250370levelUpDesc2;
      }
      
      protected function btn_confirm_clickHandler(param1:MouseEvent) : void
      {
         if(ns.value % 500 != 0)
         {
            return;
         }
         var _loc2_:String = String(Math.floor(ns.value / 500));
         var _loc3_:String = Language.TXKC_PANEL[18].replace("{num}",int(_loc2_) * 300).replace("{num2}",ns.value).replace("{num3}",_loc2_);
         Alert.show(_loc3_,"!!",Alert.YES | Alert.NO,null,_buyExp);
      }
      
      private function _TXKCEXPPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.TXKC_PANEL[15];
      }
      
      public function __ns_change(param1:NumericStepperEvent) : void
      {
         ns_changeHandler(param1);
      }
      
      public function set levelUpDesc2(param1:Label) : void
      {
         var _loc2_:Object = this._1015250370levelUpDesc2;
         if(_loc2_ !== param1)
         {
            this._1015250370levelUpDesc2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelUpDesc2",_loc2_,param1));
         }
      }
      
      protected function btn_close_clickHandler(param1:MouseEvent) : void
      {
         this.hide();
      }
      
      public function __btn_confirm_click(param1:MouseEvent) : void
      {
         btn_confirm_clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_close() : BasicGlowButton
      {
         return this._921340501btn_close;
      }
      
      private function _buyExp(param1:CloseEvent) : void
      {
         var _loc2_:int = 0;
         if(param1.detail == Alert.YES)
         {
            if(Boolean(exeFunc))
            {
               _loc2_ = Math.floor(ns.value / 500);
               exeFunc(_loc2_);
               this.hide();
            }
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TXKCEXPPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TXKCEXPPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_TXKCEXPPanelWatcherSetupUtil");
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
      
      public function set levelUpDesc(param1:Label) : void
      {
         var _loc2_:Object = this._1833865328levelUpDesc;
         if(_loc2_ !== param1)
         {
            this._1833865328levelUpDesc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelUpDesc",_loc2_,param1));
         }
      }
      
      private function _TXKCEXPPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TXKC_PANEL[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TXKCEXPPanel_BasicTitleCanvas1.text = param1;
         },"_TXKCEXPPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         return result;
      }
      
      public function set ns(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._3525ns;
         if(_loc2_ !== param1)
         {
            this._3525ns = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ns",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ns() : NumericStepper
      {
         return this._3525ns;
      }
      
      [Bindable(event="propertyChange")]
      public function get levelUpDesc() : Label
      {
         return this._1833865328levelUpDesc;
      }
      
      public function set btn_close(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._921340501btn_close;
         if(_loc2_ !== param1)
         {
            this._921340501btn_close = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_close",_loc2_,param1));
         }
      }
      
      public function set btn_confirm(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._729542621btn_confirm;
         if(_loc2_ !== param1)
         {
            this._729542621btn_confirm = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_confirm",_loc2_,param1));
         }
      }
      
      public function __btn_close_click(param1:MouseEvent) : void
      {
         btn_close_clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_confirm() : BasicGlowButton
      {
         return this._729542621btn_confirm;
      }
   }
}

