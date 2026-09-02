package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.ui.ISlot;
   import com.qeedoo.game.vo.ShopSlotVO;
   import com.qeedoo.ui.utils.ToolKit;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TreasureSlot extends SimpleCanvas implements ISlot, IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _watchers:Array = [];
      
      private var _1177514720itemText:RoundedLabel;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _345321964shopSlot:ItemSlot;
      
      private var _1141922867shopSlotVO:ShopSlotVO = new ShopSlotVO();
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":120,
               "height":41,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"shopSlot",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":4,
                        "y":4,
                        "movable":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"itemText",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":37,
                        "y":10,
                        "width":83,
                        "height":18
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function TreasureSlot()
      {
         super();
         mx_internal::_document = this;
         this.width = 120;
         this.height = 41;
         this.enabled = false;
         this.styleName = "CanvasShopSlot";
         this.addEventListener("creationComplete",___TreasureSlot_SimpleCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TreasureSlot._watcherSetupUtil = param1;
      }
      
      public function set giid(param1:Number) : void
      {
         shopSlotVO.giid = param1;
      }
      
      public function ___TreasureSlot_SimpleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      public function restore() : void
      {
         shopSlot.restore();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TreasureSlot = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TreasureSlot_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TreasureSlotWatcherSetupUtil");
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
      
      private function set shopSlotVO(param1:ShopSlotVO) : void
      {
         var _loc2_:Object = this._1141922867shopSlotVO;
         if(_loc2_ !== param1)
         {
            this._1141922867shopSlotVO = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlotVO",_loc2_,param1));
         }
      }
      
      public function get selected() : Boolean
      {
         return Boolean(filters) && filters.length > 0;
      }
      
      public function set index(param1:int) : void
      {
         shopSlotVO.index = param1;
         _core.view.addSlot(param1,this);
      }
      
      public function set slotData(param1:Object) : void
      {
         shopSlotVO.slotData = param1;
         if(param1)
         {
            getItemInfo(shopSlotVO.type,shopSlotVO.giid);
            enabled = true;
         }
      }
      
      private function _TreasureSlot_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = shopSlotVO.slotData;
         _loc1_ = shopSlotVO.type;
         _loc1_ = shopSlotVO.giid;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = shopSlotVO.itemName;
         _loc1_ = shopSlotVO.itemColor;
      }
      
      public function set shopSlot(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._345321964shopSlot;
         if(_loc2_ !== param1)
         {
            this._345321964shopSlot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot",_loc2_,param1));
         }
      }
      
      public function set selected(param1:Boolean) : void
      {
         if(param1)
         {
            filters = [GamePredef.FILTER_SHOPSLOT_SELECTED];
         }
         else
         {
            filters = [];
         }
      }
      
      public function set stackNum(param1:int) : void
      {
         shopSlotVO.stackNum = param1;
      }
      
      public function set itemText(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1177514720itemText;
         if(_loc2_ !== param1)
         {
            this._1177514720itemText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemText",_loc2_,param1));
         }
      }
      
      public function get type() : int
      {
         return shopSlotVO.type;
      }
      
      public function get slotData() : Object
      {
         return shopSlot ? shopSlot.slotData : shopSlotVO.slotData;
      }
      
      public function clean() : void
      {
         shopSlot.clean();
         shopSlotVO.itemName = "";
         enabled = false;
      }
      
      public function get stackMax() : int
      {
         return shopSlotVO.stackMax;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot() : ItemSlot
      {
         return this._345321964shopSlot;
      }
      
      public function reset() : void
      {
         shopSlot.reset();
      }
      
      [Bindable(event="propertyChange")]
      private function get shopSlotVO() : ShopSlotVO
      {
         return this._1141922867shopSlotVO;
      }
      
      public function initView() : void
      {
      }
      
      public function get index() : int
      {
         return shopSlotVO.index;
      }
      
      private function _TreasureSlot_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return shopSlotVO.slotData;
         },function(param1:Object):void
         {
            shopSlot.slotData = param1;
         },"shopSlot.slotData");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return shopSlotVO.type;
         },function(param1:int):void
         {
            shopSlot.type = param1;
         },"shopSlot.type");
         result[1] = binding;
         binding = new Binding(this,function():Number
         {
            return shopSlotVO.giid;
         },function(param1:Number):void
         {
            shopSlot.giid = param1;
         },"shopSlot.giid");
         result[2] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            shopSlot.slotType = param1;
         },"shopSlot.slotType");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = shopSlotVO.itemName;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            itemText.text = param1;
         },"itemText.text");
         result[4] = binding;
         binding = new Binding(this,function():uint
         {
            return shopSlotVO.itemColor;
         },function(param1:uint):void
         {
            itemText.setStyle("color",param1);
         },"itemText.color");
         result[5] = binding;
         return result;
      }
      
      public function get stackNum() : int
      {
         return shopSlotVO.stackNum;
      }
      
      public function get slotType() : int
      {
         return shopSlot.slotType;
      }
      
      [Bindable(event="propertyChange")]
      public function get itemText() : RoundedLabel
      {
         return this._1177514720itemText;
      }
      
      private function getItemInfo(param1:int, param2:int) : void
      {
         var _loc4_:int = 0;
         if(param2 <= 0 || param1 <= 0)
         {
            return;
         }
         var _loc3_:Object = _core.getTemplateData(param1,param2);
         if(_loc3_ != null)
         {
            _loc4_ = Math.ceil(shopSlotVO.slotData.quality / 5);
            if(ToolKit.isBigOrEqual(_loc3_.color,0))
            {
               _loc4_ = int(_loc3_.color);
            }
            shopSlotVO.itemName = _loc3_.name;
            if(ToolKit.isOriginalMaterial(_loc3_))
            {
               shopSlotVO.itemName += "[" + GamePredef.POSTFIX_MATERIAL_NAME[_loc4_] + "]";
            }
            shopSlotVO.itemColor = GamePredef.CODE_ITEM_COLOR[_loc4_];
         }
         else
         {
            trace("ShopSlot:getItemInfo-Calllater");
            callLater(getItemInfo,[param1,param2]);
         }
      }
      
      public function update() : void
      {
         shopSlot.update();
      }
      
      public function set type(param1:int) : void
      {
         shopSlotVO.type = param1;
      }
      
      public function get giid() : Number
      {
         return shopSlotVO.giid;
      }
      
      public function set stackMax(param1:int) : void
      {
         shopSlotVO.stackMax = param1;
      }
   }
}

