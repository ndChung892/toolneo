package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.ItemConfig;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
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
   import mx.controls.Text;
   import mx.controls.TextArea;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ConsumPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1343731790msgText:TextArea;
      
      mx_internal var _watchers:Array = [];
      
      public var _ConsumPanel_Text1:Text;
      
      public var shopNum:int = 0;
      
      public var shopId:int = 0;
      
      private var shopData:Object = new Object();
      
      public var _ConsumPanel_BasicGlowButton1:BasicGlowButton;
      
      public var _ConsumPanel_BasicGlowButton3:BasicGlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _1354826374conBtn:BasicGlowButton;
      
      private var _148589695useAble:Boolean = false;
      
      public var additionalData:Object = null;
      
      private var numAbles:Boolean = false;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":200,
               "height":144,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_ConsumPanel_BasicGlowButton1",
                  "events":{"click":"___ConsumPanel_BasicGlowButton1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":118,
                        "y":110,
                        "width":45,
                        "styleName":"BtnNormalRed",
                        "height":19
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Text,
                  "id":"_ConsumPanel_Text1",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 15;
                     this.horizontalCenter = "0";
                     this.fontFamily = "宋体";
                     this.color = 15438645;
                     this.fontWeight = "bold";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":20};
                  }
               }),new UIComponentDescriptor({
                  "type":TextArea,
                  "id":"msgText",
                  "stylesFactory":function():void
                  {
                     this.backgroundAlpha = 0;
                     this.color = 16777215;
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":49,
                        "width":161,
                        "height":53,
                        "editable":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"conBtn",
                  "events":{"click":"__conBtn_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":40,
                        "y":110,
                        "styleName":"BtnNormalRed",
                        "width":40,
                        "height":19
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_ConsumPanel_BasicGlowButton3",
                  "events":{"click":"___ConsumPanel_BasicGlowButton3_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":40,
                        "y":110,
                        "styleName":"BtnNormalRed",
                        "width":40,
                        "height":19
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function ConsumPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 200;
         this.height = 144;
         this.styleName = "CanvasPopup";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ConsumPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get conBtn() : BasicGlowButton
      {
         return this._1354826374conBtn;
      }
      
      public function set msg(param1:String) : void
      {
         visible = true;
         msgText.text = "    " + param1;
      }
      
      private function buy() : void
      {
         var bagpanel:* = _core.view.getUI(ViewManager.PANEL_BAG);
         var func:Function = function(param1:String):void
         {
            _core.remote.call("unlockMoney",new Responder(doBuy),MD5.hash(param1));
         };
         if(bagpanel.goldDisable())
         {
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],func);
         }
         else
         {
            doBuy(true);
         }
      }
      
      public function set numAble(param1:Boolean) : void
      {
         this.numAbles = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get useAble() : Boolean
      {
         return this._148589695useAble;
      }
      
      public function set useAble(param1:Boolean) : void
      {
         var _loc2_:Object = this._148589695useAble;
         if(_loc2_ !== param1)
         {
            this._148589695useAble = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"useAble",_loc2_,param1));
         }
      }
      
      private function doBuyAndUse(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_BAG);
            if(Boolean(_loc2_) && Boolean(_loc2_.goldSelected))
            {
               _loc2_.goldLockFlag = false;
            }
            _loc3_ = new Object();
            _loc3_.tid = shopData.itemId;
            _core.remote.useItemGold(_loc3_);
            hide();
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ConsumPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ConsumPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_ConsumPanelWatcherSetupUtil");
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
      
      public function set msgText(param1:TextArea) : void
      {
         var _loc2_:Object = this._1343731790msgText;
         if(_loc2_ !== param1)
         {
            this._1343731790msgText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"msgText",_loc2_,param1));
         }
      }
      
      private function _ConsumPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CONSUMPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ConsumPanel_BasicGlowButton1.label = param1;
         },"_ConsumPanel_BasicGlowButton1.label");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CONSUMPANEL_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ConsumPanel_Text1.text = param1;
         },"_ConsumPanel_Text1.text");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !useAble;
         },function(param1:Boolean):void
         {
            conBtn.visible = param1;
         },"conBtn.visible");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CONSUMPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            conBtn.label = param1;
         },"conBtn.label");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return useAble;
         },function(param1:Boolean):void
         {
            _ConsumPanel_BasicGlowButton3.visible = param1;
         },"_ConsumPanel_BasicGlowButton3.visible");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CONSUMPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ConsumPanel_BasicGlowButton3.label = param1;
         },"_ConsumPanel_BasicGlowButton3.label");
         result[5] = binding;
         return result;
      }
      
      public function ___ConsumPanel_BasicGlowButton3_click(param1:MouseEvent) : void
      {
         buyAndUse();
      }
      
      public function ___ConsumPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         hide();
      }
      
      public function set itemData(param1:Object) : void
      {
         var _loc2_:* = undefined;
         for(_loc2_ in GameData.d[GamePredef.TBL_SHOP_SLOT])
         {
            if(GameData.d[GamePredef.TBL_SHOP_SLOT][_loc2_].type == param1.type && GameData.d[GamePredef.TBL_SHOP_SLOT][_loc2_].itemId == param1.id && GameData.d[GamePredef.TBL_SHOP_SLOT][_loc2_].gold > 0)
            {
               shopId = GameData.d[GamePredef.TBL_SHOP_SLOT][_loc2_].id;
               shopData = GameData.d[GamePredef.TBL_SHOP_SLOT][_loc2_];
               shopData.type = param1.type;
               break;
            }
         }
      }
      
      private function buySelected(param1:int) : void
      {
         _core.remote.buySystemItemClient(shopId,param1);
         hide();
         if(shopData.itemId == 719)
         {
            if(Boolean(additionalData) && additionalData.channelIndex == 9)
            {
               channelSelectRumour();
            }
            else
            {
               channelSelectWorld();
            }
         }
         else if(shopData.itemId == ItemConfig.ITEM_HEADLINE_SPEAKER)
         {
            channelSelectHeadline();
         }
      }
      
      private function channelSelectRumour() : void
      {
         additionalData = null;
         if(_core.hasSpeakerNum() <= 0)
         {
            callLater(channelSelectRumour);
            return;
         }
         _core.view.getUI(ViewManager.MAIN_SYS).selectChannel(9);
      }
      
      [Bindable(event="propertyChange")]
      public function get msgText() : TextArea
      {
         return this._1343731790msgText;
      }
      
      private function channelSelectHeadline() : void
      {
         if(_core.hasItemNum(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_HEADLINE_SPEAKER) <= 0)
         {
            callLater(channelSelectHeadline);
            return;
         }
         _core.view.getUI(ViewManager.MAIN_SYS).selectChannel(GamePredef.MSG_CHANNEL_HEADLINE);
      }
      
      private function buyAndUse() : void
      {
         var bagpanel:* = _core.view.getUI(ViewManager.PANEL_BAG);
         var func:Function = function(param1:String):void
         {
            _core.remote.call("unlockMoney",new Responder(doBuyAndUse),MD5.hash(param1));
         };
         if(bagpanel.goldDisable())
         {
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],func);
         }
         else
         {
            doBuyAndUse(true);
         }
      }
      
      public function __conBtn_click(param1:MouseEvent) : void
      {
         buy();
      }
      
      private function _ConsumPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CONSUMPANEL_U[0];
         _loc1_ = Language.CONSUMPANEL_S[0];
         _loc1_ = !useAble;
         _loc1_ = Language.CONSUMPANEL_U[1];
         _loc1_ = useAble;
         _loc1_ = Language.CONSUMPANEL_U[1];
      }
      
      public function set conBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1354826374conBtn;
         if(_loc2_ !== param1)
         {
            this._1354826374conBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"conBtn",_loc2_,param1));
         }
      }
      
      private function channelSelectWorld() : void
      {
         if(_core.hasSpeakerNum() <= 0)
         {
            callLater(channelSelectWorld);
            return;
         }
         _core.view.getUI(ViewManager.MAIN_SYS).selectChannel(1);
      }
      
      private function doBuy(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         var _loc3_:NumPanel = null;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_BAG);
            if(Boolean(_loc2_) && Boolean(_loc2_.goldSelected))
            {
               _loc2_.goldLockFlag = false;
            }
            if(numAbles)
            {
               _loc3_ = NumPanel(_core.view.getUI(ViewManager.PANEL_NUM));
               _loc3_.numSelected(shopData,buySelected);
            }
            else
            {
               _core.remote.buySystemItemClient(shopId,shopNum);
               hide();
               this.shopId = 0;
               this.shopNum = 0;
            }
         }
      }
   }
}

