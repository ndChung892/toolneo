package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PetStoneBag extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const PAGE_NUM:uint = 20;
      
      private var _109532662slot4:PetStoneSlot;
      
      private var _899454816slot13:PetStoneSlot;
      
      private var _109532659slot1:PetStoneSlot;
      
      private var _109532667slot9:PetStoneSlot;
      
      private var _899454817slot12:PetStoneSlot;
      
      private var _899454813slot16:PetStoneSlot;
      
      private var _109532664slot6:PetStoneSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _109532661slot3:PetStoneSlot;
      
      private var _899454818slot11:PetStoneSlot;
      
      private var _899454814slot15:PetStoneSlot;
      
      private var _899454810slot19:PetStoneSlot;
      
      private var _totalPage:int;
      
      private var _109532666slot8:PetStoneSlot;
      
      private var _bagData:Array;
      
      mx_internal var _watchers:Array = [];
      
      private var _899454788slot20:PetStoneSlot;
      
      private var _109532663slot5:PetStoneSlot;
      
      private var _899454819slot10:PetStoneSlot;
      
      private var _899454815slot14:PetStoneSlot;
      
      private var _curPage:int = 1;
      
      private var _607339634pageSelector:PageSelectorOnly;
      
      private var _899454811slot18:PetStoneSlot;
      
      private var _109532660slot2:PetStoneSlot;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _109532665slot7:PetStoneSlot;
      
      private var _899454812slot17:PetStoneSlot;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":160,
               "height":235,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":PetStoneSlot,
                  "id":"slot1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":5,
                        "y":10
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PetStoneSlot,
                  "id":"slot2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":45,
                        "y":10
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PetStoneSlot,
                  "id":"slot3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":84,
                        "y":10
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PetStoneSlot,
                  "id":"slot4",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":122,
                        "y":10
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PetStoneSlot,
                  "id":"slot5",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":5,
                        "y":48
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PetStoneSlot,
                  "id":"slot6",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":45,
                        "y":48
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PetStoneSlot,
                  "id":"slot7",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":84,
                        "y":48
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PetStoneSlot,
                  "id":"slot8",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":122,
                        "y":48
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PetStoneSlot,
                  "id":"slot9",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":5,
                        "y":86
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PetStoneSlot,
                  "id":"slot10",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":45,
                        "y":86
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PetStoneSlot,
                  "id":"slot11",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":84,
                        "y":86
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PetStoneSlot,
                  "id":"slot12",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":122,
                        "y":86
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PetStoneSlot,
                  "id":"slot13",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":5,
                        "y":124
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PetStoneSlot,
                  "id":"slot14",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":45,
                        "y":124
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PetStoneSlot,
                  "id":"slot15",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":84,
                        "y":124
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PetStoneSlot,
                  "id":"slot16",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":122,
                        "y":124
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PetStoneSlot,
                  "id":"slot17",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":5,
                        "y":162
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PetStoneSlot,
                  "id":"slot18",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":45,
                        "y":162
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PetStoneSlot,
                  "id":"slot19",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":84,
                        "y":162
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PetStoneSlot,
                  "id":"slot20",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":122,
                        "y":162
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PageSelectorOnly,
                  "id":"pageSelector",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":205,
                        "changeCall":updatePage
                     };
                  }
               })]
            };
         }
      });
      
      public function PetStoneBag()
      {
         super();
         mx_internal::_document = this;
         this.width = 160;
         this.height = 235;
         this.styleName = "CanvasBorder";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PetStoneBag._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot9() : PetStoneSlot
      {
         return this._109532667slot9;
      }
      
      public function set slot8(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._109532666slot8;
         if(_loc2_ !== param1)
         {
            this._109532666slot8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot8() : PetStoneSlot
      {
         return this._109532666slot8;
      }
      
      public function set slot9(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._109532667slot9;
         if(_loc2_ !== param1)
         {
            this._109532667slot9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot9",_loc2_,param1));
         }
      }
      
      private function _PetStoneBag_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_BAG;
         },function(param1:int):void
         {
            slot1.slotType = param1;
         },"slot1.slotType");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_BAG;
         },function(param1:int):void
         {
            slot2.slotType = param1;
         },"slot2.slotType");
         result[1] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_BAG;
         },function(param1:int):void
         {
            slot3.slotType = param1;
         },"slot3.slotType");
         result[2] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_BAG;
         },function(param1:int):void
         {
            slot4.slotType = param1;
         },"slot4.slotType");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_BAG;
         },function(param1:int):void
         {
            slot5.slotType = param1;
         },"slot5.slotType");
         result[4] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_BAG;
         },function(param1:int):void
         {
            slot6.slotType = param1;
         },"slot6.slotType");
         result[5] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_BAG;
         },function(param1:int):void
         {
            slot7.slotType = param1;
         },"slot7.slotType");
         result[6] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_BAG;
         },function(param1:int):void
         {
            slot8.slotType = param1;
         },"slot8.slotType");
         result[7] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_BAG;
         },function(param1:int):void
         {
            slot9.slotType = param1;
         },"slot9.slotType");
         result[8] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_BAG;
         },function(param1:int):void
         {
            slot10.slotType = param1;
         },"slot10.slotType");
         result[9] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_BAG;
         },function(param1:int):void
         {
            slot11.slotType = param1;
         },"slot11.slotType");
         result[10] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_BAG;
         },function(param1:int):void
         {
            slot12.slotType = param1;
         },"slot12.slotType");
         result[11] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_BAG;
         },function(param1:int):void
         {
            slot13.slotType = param1;
         },"slot13.slotType");
         result[12] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_BAG;
         },function(param1:int):void
         {
            slot14.slotType = param1;
         },"slot14.slotType");
         result[13] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_BAG;
         },function(param1:int):void
         {
            slot15.slotType = param1;
         },"slot15.slotType");
         result[14] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_BAG;
         },function(param1:int):void
         {
            slot16.slotType = param1;
         },"slot16.slotType");
         result[15] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_BAG;
         },function(param1:int):void
         {
            slot17.slotType = param1;
         },"slot17.slotType");
         result[16] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_BAG;
         },function(param1:int):void
         {
            slot18.slotType = param1;
         },"slot18.slotType");
         result[17] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_BAG;
         },function(param1:int):void
         {
            slot19.slotType = param1;
         },"slot19.slotType");
         result[18] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_BAG;
         },function(param1:int):void
         {
            slot20.slotType = param1;
         },"slot20.slotType");
         result[19] = binding;
         return result;
      }
      
      public function set pageSelector(param1:PageSelectorOnly) : void
      {
         var _loc2_:Object = this._607339634pageSelector;
         if(_loc2_ !== param1)
         {
            this._607339634pageSelector = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelector",_loc2_,param1));
         }
      }
      
      public function set slot11(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._899454818slot11;
         if(_loc2_ !== param1)
         {
            this._899454818slot11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot11",_loc2_,param1));
         }
      }
      
      public function set slot12(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._899454817slot12;
         if(_loc2_ !== param1)
         {
            this._899454817slot12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot12",_loc2_,param1));
         }
      }
      
      public function set slot13(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._899454816slot13;
         if(_loc2_ !== param1)
         {
            this._899454816slot13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot13",_loc2_,param1));
         }
      }
      
      public function set slot14(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._899454815slot14;
         if(_loc2_ !== param1)
         {
            this._899454815slot14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot14",_loc2_,param1));
         }
      }
      
      public function set slot15(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._899454814slot15;
         if(_loc2_ !== param1)
         {
            this._899454814slot15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot15",_loc2_,param1));
         }
      }
      
      public function set slot17(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._899454812slot17;
         if(_loc2_ !== param1)
         {
            this._899454812slot17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot17",_loc2_,param1));
         }
      }
      
      public function set slot10(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._899454819slot10;
         if(_loc2_ !== param1)
         {
            this._899454819slot10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot10",_loc2_,param1));
         }
      }
      
      public function set slot19(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._899454810slot19;
         if(_loc2_ !== param1)
         {
            this._899454810slot19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot19",_loc2_,param1));
         }
      }
      
      public function set slot16(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._899454813slot16;
         if(_loc2_ !== param1)
         {
            this._899454813slot16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot16",_loc2_,param1));
         }
      }
      
      public function set slot18(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._899454811slot18;
         if(_loc2_ !== param1)
         {
            this._899454811slot18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot18",_loc2_,param1));
         }
      }
      
      public function set slot20(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._899454788slot20;
         if(_loc2_ !== param1)
         {
            this._899454788slot20 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot20",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelector() : PageSelectorOnly
      {
         return this._607339634pageSelector;
      }
      
      private function _PetStoneBag_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Slot.SLOT_PET_STONE_BAG;
         _loc1_ = Slot.SLOT_PET_STONE_BAG;
         _loc1_ = Slot.SLOT_PET_STONE_BAG;
         _loc1_ = Slot.SLOT_PET_STONE_BAG;
         _loc1_ = Slot.SLOT_PET_STONE_BAG;
         _loc1_ = Slot.SLOT_PET_STONE_BAG;
         _loc1_ = Slot.SLOT_PET_STONE_BAG;
         _loc1_ = Slot.SLOT_PET_STONE_BAG;
         _loc1_ = Slot.SLOT_PET_STONE_BAG;
         _loc1_ = Slot.SLOT_PET_STONE_BAG;
         _loc1_ = Slot.SLOT_PET_STONE_BAG;
         _loc1_ = Slot.SLOT_PET_STONE_BAG;
         _loc1_ = Slot.SLOT_PET_STONE_BAG;
         _loc1_ = Slot.SLOT_PET_STONE_BAG;
         _loc1_ = Slot.SLOT_PET_STONE_BAG;
         _loc1_ = Slot.SLOT_PET_STONE_BAG;
         _loc1_ = Slot.SLOT_PET_STONE_BAG;
         _loc1_ = Slot.SLOT_PET_STONE_BAG;
         _loc1_ = Slot.SLOT_PET_STONE_BAG;
         _loc1_ = Slot.SLOT_PET_STONE_BAG;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PetStoneBag = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PetStoneBag_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_PetStoneBagWatcherSetupUtil");
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
      public function get slot11() : PetStoneSlot
      {
         return this._899454818slot11;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot12() : PetStoneSlot
      {
         return this._899454817slot12;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot13() : PetStoneSlot
      {
         return this._899454816slot13;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot14() : PetStoneSlot
      {
         return this._899454815slot14;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot15() : PetStoneSlot
      {
         return this._899454814slot15;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot10() : PetStoneSlot
      {
         return this._899454819slot10;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot18() : PetStoneSlot
      {
         return this._899454811slot18;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot19() : PetStoneSlot
      {
         return this._899454810slot19;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot17() : PetStoneSlot
      {
         return this._899454812slot17;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot16() : PetStoneSlot
      {
         return this._899454813slot16;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot20() : PetStoneSlot
      {
         return this._899454788slot20;
      }
      
      public function set slot1(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._109532659slot1;
         if(_loc2_ !== param1)
         {
            this._109532659slot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1",_loc2_,param1));
         }
      }
      
      public function set slot3(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._109532661slot3;
         if(_loc2_ !== param1)
         {
            this._109532661slot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot3",_loc2_,param1));
         }
      }
      
      public function set slot4(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._109532662slot4;
         if(_loc2_ !== param1)
         {
            this._109532662slot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot4",_loc2_,param1));
         }
      }
      
      public function set slot5(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._109532663slot5;
         if(_loc2_ !== param1)
         {
            this._109532663slot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot5",_loc2_,param1));
         }
      }
      
      public function set slot2(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._109532660slot2;
         if(_loc2_ !== param1)
         {
            this._109532660slot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2",_loc2_,param1));
         }
      }
      
      public function set slot6(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._109532664slot6;
         if(_loc2_ !== param1)
         {
            this._109532664slot6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot6",_loc2_,param1));
         }
      }
      
      public function set slot7(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._109532665slot7;
         if(_loc2_ !== param1)
         {
            this._109532665slot7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1() : PetStoneSlot
      {
         return this._109532659slot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2() : PetStoneSlot
      {
         return this._109532660slot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot3() : PetStoneSlot
      {
         return this._109532661slot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot4() : PetStoneSlot
      {
         return this._109532662slot4;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot5() : PetStoneSlot
      {
         return this._109532663slot5;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot6() : PetStoneSlot
      {
         return this._109532664slot6;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot7() : PetStoneSlot
      {
         return this._109532665slot7;
      }
      
      public function updatePage(param1:Array = null) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:PetStoneSlot = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Object = null;
         var _loc2_:* = 0;
         if(param1)
         {
            _bagData = param1;
         }
         if(_bagData)
         {
            for(_loc5_ in _bagData)
            {
               _loc2_++;
            }
         }
         _totalPage = pageSelector.totalPage = Math.ceil(_loc2_ / PAGE_NUM);
         _curPage = pageSelector.curPage;
         _loc3_ = (_curPage - 1) * PAGE_NUM;
         _loc4_ = 0;
         while(_loc4_ < PAGE_NUM)
         {
            _loc6_ = this["slot" + (_loc4_ + 1)] as PetStoneSlot;
            _loc6_.clean();
            if(_bagData[_loc3_ + _loc4_])
            {
               _loc7_ = Number(_bagData[_loc3_ + _loc4_][0]);
               _loc8_ = Number(_bagData[_loc3_ + _loc4_][1]);
               _loc9_ = Number(_bagData[_loc3_ + _loc4_][2]);
               _loc10_ = GameData.d[GamePredef.TBL_PET_STONE][_loc7_];
               _loc6_.type = GamePredef.TBL_PET_STONE;
               _loc6_.quality = Number(_loc10_["level"]) - 1;
               _loc6_.giid = _loc7_;
               _loc6_.slotData = _loc10_;
               _loc6_.stackNum = _loc8_;
               _loc6_.sid = _loc3_ + _loc4_;
               _loc6_.skillId = _loc9_;
            }
            _loc4_++;
         }
      }
   }
}

