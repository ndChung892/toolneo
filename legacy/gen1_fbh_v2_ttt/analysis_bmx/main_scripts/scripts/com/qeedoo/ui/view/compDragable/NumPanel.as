package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.ui.ISlot;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
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
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class NumPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static const TYPE_BUY:uint = 0;
      
      public static const TYPE_MOVE:uint = 1;
      
      public static const TYPE_AMOUNTBUY:uint = 2;
      
      private var _hideCallback:Function;
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _watchers:Array = [];
      
      private var _1513419331btn_cancel:BasicGlowButton;
      
      private var _type:int;
      
      private var _206544419btn_buy:BasicGlowButton;
      
      private var _callback:Function;
      
      private var _defaultStack:int;
      
      private var _dm:DataManager = DataManager.getInstance();
      
      private var _actionType:uint;
      
      public var _NumPanel_Label1:Label;
      
      private var _parent:DragableCanvas;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _targetSlot:ISlot;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1177491377itemSlot:ItemSlot;
      
      private var _sourceSlot:ISlot;
      
      private var _729542621btn_confirm:BasicGlowButton;
      
      private var _401559445numStepper:NumericStepper;
      
      private var _shopTrolleyPane:SystemShopTrolleyPanel;
      
      private var _1275771774btn_trolley:BasicGlowButton;
      
      private var _maxStack:int;
      
      private var _tid:Number;
      
      public var _NumPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _shopSlotId:Number;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":186,
               "height":126,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_NumPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100,
                        "y":30,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"itemSlot",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":22,
                                 "y":13,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_NumPanel_Label1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"DescriptionText",
                                 "x":58,
                                 "y":20,
                                 "width":41
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":NumericStepper,
                           "id":"numStepper",
                           "events":{"mouseDown":"__numStepper_mouseDown"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":92,
                                 "y":18,
                                 "value":1,
                                 "maximum":20,
                                 "minimum":1,
                                 "width":76
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"btn_confirm",
                           "events":{"click":"__btn_confirm_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":30,
                                 "y":53,
                                 "width":60,
                                 "height":20,
                                 "styleName":"BtnNormalRed",
                                 "focusEnabled":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"btn_cancel",
                           "events":{"click":"__btn_cancel_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":98,
                                 "y":53,
                                 "width":60,
                                 "height":20,
                                 "styleName":"BtnNormalRed",
                                 "focusEnabled":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"btn_buy",
                           "events":{"click":"__btn_buy_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":22,
                                 "y":53,
                                 "width":70,
                                 "height":20,
                                 "styleName":"BtnNormalRed",
                                 "focusEnabled":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"btn_trolley",
                           "events":{"click":"__btn_trolley_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":98,
                                 "y":53,
                                 "width":70,
                                 "height":20,
                                 "styleName":"BtnNormalRed",
                                 "focusEnabled":false
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
      
      public function NumPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 186;
         this.height = 126;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         NumPanel._watcherSetupUtil = param1;
      }
      
      public function set btn_cancel(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1513419331btn_cancel;
         if(_loc2_ !== param1)
         {
            this._1513419331btn_cancel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_cancel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_trolley() : BasicGlowButton
      {
         return this._1275771774btn_trolley;
      }
      
      public function set btn_trolley(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1275771774btn_trolley;
         if(_loc2_ !== param1)
         {
            this._1275771774btn_trolley = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_trolley",_loc2_,param1));
         }
      }
      
      public function __btn_buy_click(param1:MouseEvent) : void
      {
         submit();
      }
      
      private function submit() : void
      {
         var doLocked:Function = function():Boolean
         {
            var doBuy:Function = null;
            var bagPanel:BagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
            var func:Function = function(param1:String):void
            {
               _core.remote.call("unlockMoney",new Responder(doBuy),MD5.hash(param1));
            };
            if(_parent == _core.view.getUI(ViewManager.PANEL_SYSTEM_SHOP) && bagPanel.goldDisable())
            {
               doBuy = SystemShopPanel(_parent).doBuy;
               _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.NUMPANEL_U[1],func);
               return true;
            }
            if(_parent == _core.view.getUI(ViewManager.PANEL_SHOP))
            {
               if(Boolean(_sourceSlot) && Boolean(_sourceSlot.slotData) && _sourceSlot.slotData.gold > 0)
               {
                  if(bagPanel.goldDisable())
                  {
                     doBuy = ShopPanel(_parent).doBuy;
                     _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.NUMPANEL_U[1],func);
                     return true;
                  }
               }
               else if(bagPanel.silverDisable())
               {
                  doBuy = ShopPanel(_parent).doBuy;
                  _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.NUMPANEL_U[2],func);
                  return true;
               }
            }
            return false;
         };
         if(doLocked())
         {
            hide();
            return;
         }
         if(_actionType == TYPE_AMOUNTBUY && _callback != null)
         {
            _core.remote.call("buyAmountItemClient",new Responder(_callback),_shopSlotId,numStepper.value);
            hide();
            return;
         }
         if(_callback != null)
         {
            _callback(numStepper.value);
            hide();
            return;
         }
         switch(_actionType)
         {
            case TYPE_BUY:
               _core.remote.buyItemClient(_shopSlotId,numStepper.value);
               break;
            case TYPE_MOVE:
               _core.remote.moveItemNum(_sourceSlot.index,_targetSlot.index,numStepper.value);
         }
         hide();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:NumPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _NumPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_NumPanelWatcherSetupUtil");
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
      
      [Bindable(event="propertyChange")]
      public function get btn_buy() : BasicGlowButton
      {
         return this._206544419btn_buy;
      }
      
      public function __btn_trolley_click(param1:MouseEvent) : void
      {
         putInShopTrolley();
      }
      
      [Bindable(event="propertyChange")]
      public function get itemSlot() : ItemSlot
      {
         return this._1177491377itemSlot;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_cancel() : BasicGlowButton
      {
         return this._1513419331btn_cancel;
      }
      
      public function numSelected(param1:Object, param2:Function) : void
      {
         itemSlot.type = param1.type;
         itemSlot.giid = param1.itemId;
         _callback = param2;
         show();
      }
      
      public function showSelected(param1:ISlot, param2:ISlot = null, param3:uint = 0, param4:Function = null, param5:Function = null) : void
      {
         var _loc7_:Object = null;
         _tid = param1.giid;
         _type = param1.type;
         _shopSlotId = param1.slotData.id;
         var _loc6_:Object = _core.getTemplateData(_type,_tid);
         _maxStack = _core.getTemplateData(_type,_tid).stackMax;
         _actionType = param3;
         _targetSlot = param2;
         _sourceSlot = param1;
         _callback = param4;
         _hideCallback = param5;
         numStepper.value = _defaultStack;
         if(param3 == TYPE_BUY || param3 == TYPE_AMOUNTBUY)
         {
            _loc7_ = _core.getTemplateData(_sourceSlot.slotData.type,_sourceSlot.slotData.itemId);
            if(_loc7_)
            {
               numStepper.maximum = _loc7_.stackMax;
            }
            if(_parent == _core.view.getUI(ViewManager.PANEL_SYSTEM_SHOP) && param1.slotData.point <= 0)
            {
               btn_confirm.visible = false;
               btn_cancel.visible = false;
               btn_trolley.visible = true;
               btn_buy.visible = true;
            }
            else
            {
               btn_confirm.visible = true;
               btn_cancel.visible = true;
               btn_trolley.visible = false;
               btn_buy.visible = false;
            }
         }
         else
         {
            numStepper.maximum = _sourceSlot.stackNum;
            btn_confirm.visible = true;
            btn_cancel.visible = true;
            btn_trolley.visible = false;
            btn_buy.visible = false;
         }
         itemSlot.slotData = param1.slotData;
         itemSlot.type = _type;
         itemSlot.giid = _tid;
         show();
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
      
      public function set parent(param1:*) : void
      {
         this._parent = param1;
      }
      
      public function __btn_confirm_click(param1:MouseEvent) : void
      {
         submit();
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
      
      private function putInShopTrolley() : void
      {
         var _loc1_:Object = new Object();
         _loc1_.itemId = _tid;
         _loc1_.type = _type;
         _loc1_.stackNum = _sourceSlot.stackNum;
         _loc1_.name = _core.getTemplateData(_type,_tid).name;
         _loc1_.kind = _core.getTemplateData(_type,_tid).kind;
         _loc1_.typeName = _core.getTemplateData(_type,_tid).type;
         _loc1_.gold = _sourceSlot.slotData.gold;
         _loc1_.shopSlotId = _shopSlotId;
         _loc1_.num = numStepper.value;
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_SYSTEM_SHOP_TROLLEY);
         _loc2_.addGoodsToTrolley(_loc1_);
         hide();
      }
      
      public function set itemSlot(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177491377itemSlot;
         if(_loc2_ !== param1)
         {
            this._1177491377itemSlot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemSlot",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_confirm() : BasicGlowButton
      {
         return this._729542621btn_confirm;
      }
      
      public function __btn_cancel_click(param1:MouseEvent) : void
      {
         cancel();
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
      
      private function _NumPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NUMPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NumPanel_BasicTitleCanvas1.text = param1;
         },"_NumPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NUMPANEL_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NumPanel_Label1.text = param1;
         },"_NumPanel_Label1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.INPUTPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn_confirm.label = param1;
         },"btn_confirm.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.INPUTPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn_cancel.label = param1;
         },"btn_cancel.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.INPUTPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn_buy.label = param1;
         },"btn_buy.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.INPUTPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn_trolley.label = param1;
         },"btn_trolley.label");
         result[5] = binding;
         return result;
      }
      
      private function cancel() : void
      {
         if(_hideCallback != null)
         {
            _hideCallback();
         }
         hide();
      }
      
      private function _NumPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.NUMPANEL_U[0];
         _loc1_ = Language.NUMPANEL_S[0];
         _loc1_ = Language.INPUTPANEL_U[0];
         _loc1_ = Language.INPUTPANEL_U[1];
         _loc1_ = Language.INPUTPANEL_U[3];
         _loc1_ = Language.INPUTPANEL_U[4];
      }
      
      override public function show() : void
      {
         super.show();
         x = (stage.stageWidth - width) / 2;
         y = (stage.stageHeight - height) / 2;
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
   }
}

