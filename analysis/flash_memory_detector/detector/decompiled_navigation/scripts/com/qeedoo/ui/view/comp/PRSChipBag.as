package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
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
   import mx.controls.HRule;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PRSChipBag extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const PAGE_NUM:uint = 10;
      
      private var _243079997chipBagSlot7:PRSSlot;
      
      private var _243079999chipBagSlot9:PRSSlot;
      
      mx_internal var _watchers:Array = [];
      
      private var _607339634pageSelector:PageSelectorOnly;
      
      private var _curPage:int = 1;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _PRSChipBag_Label1:Label;
      
      private var _1054454823chipBagSlot10:PRSSlot;
      
      private var _chipBag:Object;
      
      private var _243079992chipBagSlot2:PRSSlot;
      
      mx_internal var _bindings:Array = [];
      
      private var _243079994chipBagSlot4:PRSSlot;
      
      private var _243079991chipBagSlot1:PRSSlot;
      
      private var _243079996chipBagSlot6:PRSSlot;
      
      private var _totalPage:int;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":315,
               "height":185,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"_PRSChipBag_Label1",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 14;
                     this.color = 16776960;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":127,
                        "y":10
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HRule,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":130,
                        "height":1,
                        "x":92.5,
                        "y":32
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PRSSlot,
                  "id":"chipBagSlot1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "chipBagPos":1,
                        "x":55,
                        "y":57
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PRSSlot,
                  "id":"chipBagSlot2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "chipBagPos":2,
                        "x":97,
                        "y":57
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PRSSlot,
                  "id":"chipBagSlot3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "chipBagPos":3,
                        "x":138.5,
                        "y":57
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PRSSlot,
                  "id":"chipBagSlot4",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "chipBagPos":4,
                        "x":180.5,
                        "y":57
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PRSSlot,
                  "id":"chipBagSlot5",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "chipBagPos":5,
                        "x":222.5,
                        "y":57
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PRSSlot,
                  "id":"chipBagSlot6",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "chipBagPos":6,
                        "x":55,
                        "y":96
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PRSSlot,
                  "id":"chipBagSlot7",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "chipBagPos":7,
                        "x":97,
                        "y":96
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PRSSlot,
                  "id":"chipBagSlot8",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "chipBagPos":8,
                        "x":138.5,
                        "y":96
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PRSSlot,
                  "id":"chipBagSlot9",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "chipBagPos":9,
                        "x":180.5,
                        "y":96
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PRSSlot,
                  "id":"chipBagSlot10",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "chipBagPos":10,
                        "x":223.5,
                        "y":96
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
                        "y":147,
                        "changeCall":updatePage
                     };
                  }
               })]
            };
         }
      });
      
      private var _243079993chipBagSlot3:PRSSlot;
      
      private var _243079998chipBagSlot8:PRSSlot;
      
      private var _243079995chipBagSlot5:PRSSlot;
      
      public function PRSChipBag()
      {
         super();
         mx_internal::_document = this;
         this.width = 315;
         this.height = 185;
         this.styleName = "CanvasBorder";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PRSChipBag._watcherSetupUtil = param1;
      }
      
      public function set chipBagSlot7(param1:PRSSlot) : void
      {
         var _loc2_:Object = this._243079997chipBagSlot7;
         if(_loc2_ !== param1)
         {
            this._243079997chipBagSlot7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chipBagSlot7",_loc2_,param1));
         }
      }
      
      public function set chipBagSlot5(param1:PRSSlot) : void
      {
         var _loc2_:Object = this._243079995chipBagSlot5;
         if(_loc2_ !== param1)
         {
            this._243079995chipBagSlot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chipBagSlot5",_loc2_,param1));
         }
      }
      
      public function set chipBagSlot2(param1:PRSSlot) : void
      {
         var _loc2_:Object = this._243079992chipBagSlot2;
         if(_loc2_ !== param1)
         {
            this._243079992chipBagSlot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chipBagSlot2",_loc2_,param1));
         }
      }
      
      public function set chipBagSlot4(param1:PRSSlot) : void
      {
         var _loc2_:Object = this._243079994chipBagSlot4;
         if(_loc2_ !== param1)
         {
            this._243079994chipBagSlot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chipBagSlot4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelector() : PageSelectorOnly
      {
         return this._607339634pageSelector;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PRSChipBag = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PRSChipBag_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_PRSChipBagWatcherSetupUtil");
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
      
      public function set chipBagSlot6(param1:PRSSlot) : void
      {
         var _loc2_:Object = this._243079996chipBagSlot6;
         if(_loc2_ !== param1)
         {
            this._243079996chipBagSlot6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chipBagSlot6",_loc2_,param1));
         }
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
      
      public function set chipBagSlot10(param1:PRSSlot) : void
      {
         var _loc2_:Object = this._1054454823chipBagSlot10;
         if(_loc2_ !== param1)
         {
            this._1054454823chipBagSlot10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chipBagSlot10",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get chipBagSlot1() : PRSSlot
      {
         return this._243079991chipBagSlot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get chipBagSlot2() : PRSSlot
      {
         return this._243079992chipBagSlot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get chipBagSlot3() : PRSSlot
      {
         return this._243079993chipBagSlot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get chipBagSlot6() : PRSSlot
      {
         return this._243079996chipBagSlot6;
      }
      
      [Bindable(event="propertyChange")]
      public function get chipBagSlot7() : PRSSlot
      {
         return this._243079997chipBagSlot7;
      }
      
      [Bindable(event="propertyChange")]
      public function get chipBagSlot8() : PRSSlot
      {
         return this._243079998chipBagSlot8;
      }
      
      [Bindable(event="propertyChange")]
      public function get chipBagSlot9() : PRSSlot
      {
         return this._243079999chipBagSlot9;
      }
      
      [Bindable(event="propertyChange")]
      public function get chipBagSlot4() : PRSSlot
      {
         return this._243079994chipBagSlot4;
      }
      
      [Bindable(event="propertyChange")]
      public function get chipBagSlot5() : PRSSlot
      {
         return this._243079995chipBagSlot5;
      }
      
      private function _PRSChipBag_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PRS_PANEL[18];
      }
      
      [Bindable(event="propertyChange")]
      public function get chipBagSlot10() : PRSSlot
      {
         return this._1054454823chipBagSlot10;
      }
      
      public function set chipBagSlot1(param1:PRSSlot) : void
      {
         var _loc2_:Object = this._243079991chipBagSlot1;
         if(_loc2_ !== param1)
         {
            this._243079991chipBagSlot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chipBagSlot1",_loc2_,param1));
         }
      }
      
      public function updatePage(param1:Object) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:PRSSlot = null;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Object = null;
         var _loc2_:* = 0;
         _chipBag = param1;
         if(_chipBag)
         {
            for(_loc5_ in _chipBag)
            {
               _loc2_++;
            }
         }
         _totalPage = pageSelector.totalPage = Math.ceil(_loc2_ / PAGE_NUM);
         _curPage = pageSelector.curPage;
         _loc3_ = (_curPage - 1) * PAGE_NUM;
         _loc4_ = 1;
         while(_loc4_ <= PAGE_NUM)
         {
            _loc6_ = this["chipBagSlot" + _loc4_] as PRSSlot;
            _loc6_.slotType = Slot.SLOT_PRS_CHIPBAG;
            _loc6_.clean();
            if(_chipBag[_loc3_ + _loc4_])
            {
               _loc7_ = Number(_chipBag[_loc3_ + _loc4_]["chipId"]);
               _loc8_ = Number(_chipBag[_loc3_ + _loc4_]["chipNum"]);
               _loc9_ = GameData.d[GamePredef.TBL_PRS_CHIP][_loc7_];
               _loc6_.type = GamePredef.TBL_PRS_CHIP;
               _loc6_.giid = _loc7_;
               _loc6_.slotData = _loc9_;
               _loc6_.stackNum = _loc8_;
               _loc6_.chipBagPos = _loc3_ + _loc4_;
            }
            _loc4_++;
         }
      }
      
      public function set chipBagSlot3(param1:PRSSlot) : void
      {
         var _loc2_:Object = this._243079993chipBagSlot3;
         if(_loc2_ !== param1)
         {
            this._243079993chipBagSlot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chipBagSlot3",_loc2_,param1));
         }
      }
      
      private function _PRSChipBag_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRS_PANEL[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PRSChipBag_Label1.text = param1;
         },"_PRSChipBag_Label1.text");
         result[0] = binding;
         return result;
      }
      
      public function set chipBagSlot8(param1:PRSSlot) : void
      {
         var _loc2_:Object = this._243079998chipBagSlot8;
         if(_loc2_ !== param1)
         {
            this._243079998chipBagSlot8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chipBagSlot8",_loc2_,param1));
         }
      }
      
      public function set chipBagSlot9(param1:PRSSlot) : void
      {
         var _loc2_:Object = this._243079999chipBagSlot9;
         if(_loc2_ !== param1)
         {
            this._243079999chipBagSlot9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chipBagSlot9",_loc2_,param1));
         }
      }
   }
}

