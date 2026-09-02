package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.PageSelector;
   import com.qeedoo.ui.view.comp.Slot;
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
   import mx.controls.Label;
   import mx.controls.Text;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MultiItemPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var currentIdx:uint = 0;
      
      public var _MultiItemPanel_BasicGlowButton1:BasicGlowButton;
      
      private var _666737697slotItem2:ItemSlot;
      
      private var _1464371768txtTitle:BasicTitleCanvas;
      
      mx_internal var _watchers:Array = [];
      
      private var _803560629pageSel:PageSelector;
      
      private var selectedIdx:int = -1;
      
      private var _666737698slotItem3:ItemSlot;
      
      private var _2113277654slotBag:ItemSlot;
      
      private const NUM_PER_PAGE:uint = 3;
      
      private var _878845122txtInfo:Text;
      
      private var _1820004046itemSelected:ItemSlot;
      
      private var itemList:Object;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var packItemSid:uint = 0;
      
      mx_internal var _bindings:Array = [];
      
      private var _666737696slotItem1:ItemSlot;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":204,
               "height":244,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"txtTitle"
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"slotBag",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":85,
                        "y":39,
                        "movable":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"slotItem1",
                  "events":{"click":"__slotItem1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":34,
                        "y":101,
                        "movable":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"slotItem2",
                  "events":{"click":"__slotItem2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":34,
                        "y":136,
                        "movable":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"slotItem3",
                  "events":{"click":"__slotItem3_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":34,
                        "y":172,
                        "movable":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_MultiItemPanel_BasicGlowButton1",
                  "events":{"click":"___MultiItemPanel_BasicGlowButton1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":118,
                        "y":184,
                        "styleName":"HorizontalTab"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Text,
                  "id":"txtInfo",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "left";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":18,
                        "y":77,
                        "width":160
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"itemSelected",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":118,
                        "y":136,
                        "movable":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":85,
                        "y":144,
                        "text":"==>",
                        "width":31.5
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PageSelector,
                  "id":"pageSel",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":213,
                        "x":27
                     };
                  }
               })]
            };
         }
      });
      
      private var titleTxt:String = Language.MULTI_ITEM_PANEL[3];
      
      private var _core:Core = Core.getInstance();
      
      public function MultiItemPanel()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "StandardContent";
         this.width = 204;
         this.height = 244;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MultiItemPanel._watcherSetupUtil = param1;
      }
      
      public function set txtInfo(param1:Text) : void
      {
         var _loc2_:Object = this._878845122txtInfo;
         if(_loc2_ !== param1)
         {
            this._878845122txtInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtInfo",_loc2_,param1));
         }
      }
      
      private function _MultiItemPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = titleTxt;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txtTitle.text = param1;
         },"txtTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_LOTTO;
         },function(param1:int):void
         {
            slotItem1.slotType = param1;
         },"slotItem1.slotType");
         result[1] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_LOTTO;
         },function(param1:int):void
         {
            slotItem2.slotType = param1;
         },"slotItem2.slotType");
         result[2] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_LOTTO;
         },function(param1:int):void
         {
            slotItem3.slotType = param1;
         },"slotItem3.slotType");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MULTI_ITEM_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MultiItemPanel_BasicGlowButton1.label = param1;
         },"_MultiItemPanel_BasicGlowButton1.label");
         result[4] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_LOTTO;
         },function(param1:int):void
         {
            itemSelected.slotType = param1;
         },"itemSelected.slotType");
         result[5] = binding;
         binding = new Binding(this,function():Function
         {
            return onPageChanged;
         },function(param1:Function):void
         {
            pageSel.onPageChanged = param1;
         },"pageSel.onPageChanged");
         result[6] = binding;
         return result;
      }
      
      public function __slotItem2_click(param1:MouseEvent) : void
      {
         selItem(2);
      }
      
      private function selItem(param1:uint) : void
      {
         if(this["slotItem" + param1].slotData)
         {
            itemSelected.clean();
            itemSelected.type = this["slotItem" + param1].type;
            itemSelected.giid = this["slotItem" + param1].giid;
            itemSelected.stackNum = this["slotItem" + param1].stackNum;
            itemSelected.quality = this["slotItem" + param1].quality;
            itemSelected.slotData = this["slotItem" + param1].slotData;
            if(this["slotItem" + param1].type == GamePredef.TBL_CREATURE)
            {
               itemSelected.setStyleName(_core.basic.colorByGrowRate(itemSelected.quality / 10));
            }
            else
            {
               itemSelected.setStyleName(_core.basic.getColorByQuality(this["slotItem" + param1].quality));
            }
            this.selectedIdx = this["slotItem" + param1].slotData.idx;
            currentIdx = param1;
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MultiItemPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MultiItemPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MultiItemPanelWatcherSetupUtil");
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
      
      public function set itemSelected(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1820004046itemSelected;
         if(_loc2_ !== param1)
         {
            this._1820004046itemSelected = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemSelected",_loc2_,param1));
         }
      }
      
      public function set pageSel(param1:PageSelector) : void
      {
         var _loc2_:Object = this._803560629pageSel;
         if(_loc2_ !== param1)
         {
            this._803560629pageSel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slotBag() : ItemSlot
      {
         return this._2113277654slotBag;
      }
      
      [Bindable(event="propertyChange")]
      public function get slotItem1() : ItemSlot
      {
         return this._666737696slotItem1;
      }
      
      private function _MultiItemPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = titleTxt;
         _loc1_ = Slot.SLOT_LOTTO;
         _loc1_ = Slot.SLOT_LOTTO;
         _loc1_ = Slot.SLOT_LOTTO;
         _loc1_ = Language.MULTI_ITEM_PANEL[2];
         _loc1_ = Slot.SLOT_LOTTO;
         _loc1_ = onPageChanged;
      }
      
      public function set txtTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._1464371768txtTitle;
         if(_loc2_ !== param1)
         {
            this._1464371768txtTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtTitle",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slotItem2() : ItemSlot
      {
         return this._666737697slotItem2;
      }
      
      [Bindable(event="propertyChange")]
      public function get slotItem3() : ItemSlot
      {
         return this._666737698slotItem3;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtInfo() : Text
      {
         return this._878845122txtInfo;
      }
      
      public function set slotItem1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._666737696slotItem1;
         if(_loc2_ !== param1)
         {
            this._666737696slotItem1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slotItem1",_loc2_,param1));
         }
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         var _loc4_:* = undefined;
         slotItem1.clean();
         slotItem2.clean();
         slotItem3.clean();
         var _loc3_:uint = 0 - param1;
         for(_loc4_ in itemList)
         {
            if(itemList[_loc4_])
            {
               _loc3_++;
               if(this.hasOwnProperty("slotItem" + _loc3_))
               {
                  this["slotItem" + _loc3_].type = itemList[_loc4_].ti;
                  this["slotItem" + _loc3_].giid = itemList[_loc4_].ii;
                  this["slotItem" + _loc3_].stackNum = itemList[_loc4_].n;
                  this["slotItem" + _loc3_].quality = itemList[_loc4_].q;
                  this["slotItem" + _loc3_].slotData = itemList[_loc4_];
                  this["slotItem" + _loc3_].slotData.idx = _loc4_;
                  if(itemList[_loc4_].ti == GamePredef.TBL_CREATURE)
                  {
                     this["slotItem" + _loc3_].setStyleName(_core.basic.colorByGrowRate(itemList[_loc4_].q / 10));
                  }
                  else
                  {
                     this["slotItem" + _loc3_].setStyleName(_core.basic.getColorByQuality(itemList[_loc4_].q));
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txtTitle() : BasicTitleCanvas
      {
         return this._1464371768txtTitle;
      }
      
      public function __slotItem1_click(param1:MouseEvent) : void
      {
         selItem(1);
      }
      
      public function __slotItem3_click(param1:MouseEvent) : void
      {
         selItem(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemSelected() : ItemSlot
      {
         return this._1820004046itemSelected;
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSel() : PageSelector
      {
         return this._803560629pageSel;
      }
      
      public function setItemList(param1:Object, param2:uint) : void
      {
         var _loc4_:uint = 0;
         var _loc5_:* = undefined;
         if(!visible)
         {
            super.show();
         }
         this.packItemSid = param2;
         slotItem1.clean();
         slotItem2.clean();
         slotItem3.clean();
         var _loc3_:Object = _core.data.sList[param2];
         if(_loc3_)
         {
            slotBag.type = _loc3_.type;
            slotBag.giid = _loc3_.itemId;
            if(Boolean(param1) && Boolean(param1.packItemList))
            {
               itemList = param1.packItemList;
               _loc4_ = 0;
               for(_loc5_ in param1.packItemList)
               {
                  if(param1.packItemList[_loc5_])
                  {
                     _loc4_++;
                     if(this.hasOwnProperty("slotItem" + _loc4_))
                     {
                        this["slotItem" + _loc4_].type = param1.packItemList[_loc5_].ti;
                        this["slotItem" + _loc4_].giid = param1.packItemList[_loc5_].ii;
                        this["slotItem" + _loc4_].stackNum = param1.packItemList[_loc5_].n;
                        this["slotItem" + _loc4_].quality = param1.packItemList[_loc5_].q;
                        this["slotItem" + _loc4_].slotData = param1.packItemList[_loc5_];
                        this["slotItem" + _loc4_].slotData.idx = _loc5_;
                        this["slotItem" + _loc4_].setStyleName(_core.basic.colorByGrowRate(param1.packItemList[_loc5_].q / 10));
                     }
                  }
               }
               pageSel.initPageSeletor(_loc4_,NUM_PER_PAGE);
               if(_loc4_ <= NUM_PER_PAGE)
               {
                  pageSel.visible = false;
               }
               else
               {
                  pageSel.visible = true;
               }
            }
            itemSelected.clean();
            selectedIdx = -1;
            txtInfo.text = Language.MULTI_ITEM_PANEL[0].toString().replace("{num}",param1.packGetNum);
            if(param1.packGetNum == "all")
            {
               txtInfo.text = Language.MULTI_ITEM_PANEL[1];
            }
         }
      }
      
      public function set slotBag(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2113277654slotBag;
         if(_loc2_ !== param1)
         {
            this._2113277654slotBag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slotBag",_loc2_,param1));
         }
      }
      
      private function getItemByIdx() : void
      {
         var _loc1_:* = undefined;
         if(selectedIdx >= 0)
         {
            if(this["slotItem" + currentIdx])
            {
               _loc1_ = this["slotItem" + currentIdx];
               if(_loc1_.type)
               {
                  if(_loc1_.type == GamePredef.TBL_CREATURE && !_core.player.enoughPetSlot(1))
                  {
                     _core.sysMsg(Language.MULTI_ITEM_PANEL[4]);
                     return;
                  }
                  if((_loc1_.type == GamePredef.TBL_ITEM_TEMPLATE || _loc1_.type == GamePredef.TBL_EQUIPT_TEMPLATE) && !_core.player.enoughBag(1))
                  {
                     _core.sysMsg(Language.MULTI_ITEM_PANEL[4]);
                     return;
                  }
                  _core.remote.call("selMultiItemByIdx",new Responder(onGetItemByIdx),packItemSid,selectedIdx);
               }
            }
         }
      }
      
      private function onGetItemByIdx(param1:int) : void
      {
         var _loc2_:Object = null;
         if(param1 >= 0)
         {
            itemSelected.clean();
            currentIdx = 0;
            if(param1 == 0)
            {
               super.hide();
            }
            else
            {
               itemList[selectedIdx] = null;
               delete itemList[selectedIdx];
               _loc2_ = new Object();
               _loc2_.packItemList = itemList;
               _loc2_.packGetNum = param1;
               setItemList(_loc2_,packItemSid);
            }
            selectedIdx = -1;
         }
      }
      
      public function set slotItem2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._666737697slotItem2;
         if(_loc2_ !== param1)
         {
            this._666737697slotItem2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slotItem2",_loc2_,param1));
         }
      }
      
      public function set slotItem3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._666737698slotItem3;
         if(_loc2_ !== param1)
         {
            this._666737698slotItem3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slotItem3",_loc2_,param1));
         }
      }
      
      public function ___MultiItemPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         getItemByIdx();
      }
   }
}

