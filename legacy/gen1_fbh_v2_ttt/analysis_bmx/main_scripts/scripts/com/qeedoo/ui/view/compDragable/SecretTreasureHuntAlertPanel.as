package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
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
   import mx.controls.Label;
   import mx.controls.NumericStepper;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SecretTreasureHuntAlertPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _SecretTreasureHuntAlertPanel_Label3:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _ALLSZNum:Number = 50;
      
      private var _1103418265SZBuyNum:NumericStepper;
      
      private var _1617570032LastNum:Label;
      
      private var _97926buy:BasicGlowButton;
      
      public var _SecretTreasureHuntAlertPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _typeNum:Number;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":300,
               "height":128,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_SecretTreasureHuntAlertPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "height":96,
                        "y":30,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"buy",
                           "events":{"click":"__buy_click"},
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":63,
                                 "styleName":"BtnStdGreen"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":NumericStepper,
                           "id":"SZBuyNum",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "right";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":146.95,
                                 "y":10,
                                 "maximum":50,
                                 "minimum":0,
                                 "stepSize":1,
                                 "width":68.05
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":216.05,
                                 "y":12,
                                 "width":40.95,
                                 "text":"Còn:"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"LastNum",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":254,
                                 "y":12,
                                 "width":36
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_SecretTreasureHuntAlertPanel_Label3",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":34.95,
                                 "y":12,
                                 "width":104
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":50,
                                 "y":40,
                                 "text":"XN Thường: 20 vàng/lần,  XN MMắn: 50 Vàng/lần"
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
      
      public function SecretTreasureHuntAlertPanel()
      {
         super();
         mx_internal::_document = this;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.width = 300;
         this.height = 128;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SecretTreasureHuntAlertPanel._watcherSetupUtil = param1;
      }
      
      public function set ALLSZNum(param1:Number) : void
      {
         _ALLSZNum = param1;
      }
      
      private function _SecretTreasureHuntAlertPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SEC_TREA_HUNT[0];
         _loc1_ = Language.SEC_TREA_HUNT[2];
         _loc1_ = Language.SEC_TREA_HUNT[1];
      }
      
      public function showPanel() : *
      {
         initView();
         visible = true;
      }
      
      public function set SZBuyNum(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._1103418265SZBuyNum;
         if(_loc2_ !== param1)
         {
            this._1103418265SZBuyNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"SZBuyNum",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SecretTreasureHuntAlertPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SecretTreasureHuntAlertPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_SecretTreasureHuntAlertPanelWatcherSetupUtil");
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
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         this.typeNum = _typeNum;
         this.ALLSZNum = _ALLSZNum;
         LastNum.htmlText = String(_ALLSZNum);
      }
      
      public function set typeNum(param1:Number) : void
      {
         _typeNum = param1;
      }
      
      public function set buy(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._97926buy;
         if(_loc2_ !== param1)
         {
            this._97926buy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buy",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buy() : BasicGlowButton
      {
         return this._97926buy;
      }
      
      public function set LastNum(param1:Label) : void
      {
         var _loc2_:Object = this._1617570032LastNum;
         if(_loc2_ !== param1)
         {
            this._1617570032LastNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"LastNum",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get SZBuyNum() : NumericStepper
      {
         return this._1103418265SZBuyNum;
      }
      
      public function __buy_click(param1:MouseEvent) : void
      {
         buySecTreaHuntSZ();
      }
      
      private function _SecretTreasureHuntAlertPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SEC_TREA_HUNT[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SecretTreasureHuntAlertPanel_BasicTitleCanvas1.text = param1;
         },"_SecretTreasureHuntAlertPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SEC_TREA_HUNT[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            buy.label = param1;
         },"buy.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SEC_TREA_HUNT[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SecretTreasureHuntAlertPanel_Label3.text = param1;
         },"_SecretTreasureHuntAlertPanel_Label3.text");
         result[2] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get LastNum() : Label
      {
         return this._1617570032LastNum;
      }
      
      public function buySecTreaHuntSZ() : void
      {
         var _loc1_:Number = SZBuyNum.value;
         if(_loc1_ > 0 && _loc1_ - Math.floor(_loc1_) == 0)
         {
            _core.remote.call("buySecTreaHuntSZ",null,_typeNum,_loc1_);
            this.visible = false;
            return;
         }
         _core.sysMsg(Language.SEC_TREA_HUNT[3]);
      }
   }
}

