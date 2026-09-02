package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
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
   import mx.containers.Canvas;
   import mx.controls.Alert;
   import mx.controls.Label;
   import mx.controls.NumericStepper;
   import mx.core.IUITextField;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class WaWaChangePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      public var _WaWaChangePanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      public var _WaWaChangePanel_Label1:Label;
      
      private var _alert:Alert;
      
      private var _point:Number;
      
      private var _206544419btn_buy:BasicGlowButton;
      
      private var _401559445numStepper:NumericStepper;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":200,
               "height":128,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_WaWaChangePanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "height":96,
                        "y":30,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"_WaWaChangePanel_Label1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"DescriptionText",
                                 "x":15,
                                 "y":23,
                                 "width":88
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":NumericStepper,
                           "id":"numStepper",
                           "events":{"mouseDown":"__numStepper_mouseDown"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":98,
                                 "y":23,
                                 "value":1,
                                 "maximum":9999999,
                                 "minimum":1,
                                 "width":87
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"btn_buy",
                           "events":{"click":"__btn_buy_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":72,
                                 "y":62,
                                 "width":60,
                                 "height":20,
                                 "styleName":"BtnNormalRed"
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function WaWaChangePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 200;
         this.height = 128;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         WaWaChangePanel._watcherSetupUtil = param1;
      }
      
      public function __btn_buy_click(param1:MouseEvent) : void
      {
         changeWorldCupPoint();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:WaWaChangePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _WaWaChangePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_WaWaChangePanelWatcherSetupUtil");
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
      
      private function _WaWaChangePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WAWA_GAME_CHANGE_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WaWaChangePanel_BasicTitleCanvas1.text = param1;
         },"_WaWaChangePanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WAWA_GAME_CHANGE_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WaWaChangePanel_Label1.text = param1;
         },"_WaWaChangePanel_Label1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WAWA_GAME_CHANGE_PANEL[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn_buy.label = param1;
         },"btn_buy.label");
         result[2] = binding;
         return result;
      }
      
      private function changeWorldCupPoint() : void
      {
         var str:String;
         var tf:IUITextField;
         var num:Number = NaN;
         var handler:Function = null;
         num = numStepper.value;
         var allPoint:Number = _point * num;
         handler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("buyWaWaGameCoin",null,false,num);
            }
         };
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         str = Language.WAWA_GAME_CHANGE_PANEL[3].replace("{point}",allPoint).replace("{num}",num);
         _alert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
         tf = _alert.mx_internal::alertForm.mx_internal::textField;
         tf.htmlText = str;
         tf.filters = GamePredef.FILTER_TEXT1;
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
      }
      
      private function _WaWaChangePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.WAWA_GAME_CHANGE_PANEL[0];
         _loc1_ = Language.WAWA_GAME_CHANGE_PANEL[2];
         _loc1_ = Language.WAWA_GAME_CHANGE_PANEL[4];
      }
      
      public function initWorldCupChangePanel(param1:Number) : void
      {
         initView();
         visible = true;
         _point = param1;
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
      
      public function set btn_buy(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._206544419btn_buy;
         if(_loc2_ !== param1)
         {
            this._206544419btn_buy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_buy",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_buy() : BasicGlowButton
      {
         return this._206544419btn_buy;
      }
      
      [Bindable(event="propertyChange")]
      public function get numStepper() : NumericStepper
      {
         return this._401559445numStepper;
      }
      
      public function __numStepper_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
   }
}

