package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
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
   import mx.containers.Tile;
   import mx.controls.HRule;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class RuneChipBag extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _RuneChipBag_Label2:Label;
      
      private var _109532659slot1:Slot;
      
      private var _899454786slot22:Slot;
      
      private var _109532667slot9:Slot;
      
      private var _899454817slot12:Slot;
      
      private var _chipBagData:Object;
      
      private var _899454813slot16:Slot;
      
      private var _109532664slot6:Slot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _899454787slot21:Slot;
      
      private var _109532661slot3:Slot;
      
      private var _899454783slot25:Slot;
      
      private var _899454810slot19:Slot;
      
      private var _899454814slot15:Slot;
      
      private var _899454818slot11:Slot;
      
      private var _109532666slot8:Slot;
      
      private var _core:Core = Core.getInstance();
      
      mx_internal var _watchers:Array = [];
      
      private var _899454788slot20:Slot;
      
      private var _109532663slot5:Slot;
      
      private var _899454784slot24:Slot;
      
      private var _899454819slot10:Slot;
      
      private var _607339634pageSelector:PageSelectorOnly;
      
      private var _899454815slot14:Slot;
      
      private var _109532660slot2:Slot;
      
      private var _899454811slot18:Slot;
      
      public var _RuneChipBag_BasicDelayButton1:BasicDelayButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _899454785slot23:Slot;
      
      private var _109532665slot7:Slot;
      
      private var _899454816slot13:Slot;
      
      private var _899454812slot17:Slot;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":215,
               "height":310,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"_RuneChipBag_Label1",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 14;
                     this.color = 16776960;
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":79.5,
                        "y":5
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"StandardTitle",
                        "mouseEnabled":false,
                        "y":8,
                        "width":128,
                        "mouseChildren":false,
                        "height":16
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HRule,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":190,
                        "height":3,
                        "y":26,
                        "x":10
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_RuneChipBag_Label2",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":11,
                        "y":30
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Tile,
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 4;
                     this.verticalGap = 6;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":190,
                        "height":200,
                        "x":10,
                        "y":52,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Slot,
                           "id":"slot1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "styleName":"TransparentSlot",
                                 "movable":false,
                                 "acceptable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Slot,
                           "id":"slot2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "styleName":"TransparentSlot",
                                 "movable":false,
                                 "acceptable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Slot,
                           "id":"slot3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "styleName":"TransparentSlot",
                                 "movable":false,
                                 "acceptable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Slot,
                           "id":"slot4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "styleName":"TransparentSlot",
                                 "movable":false,
                                 "acceptable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Slot,
                           "id":"slot5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "styleName":"TransparentSlot",
                                 "movable":false,
                                 "acceptable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Slot,
                           "id":"slot6",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "styleName":"TransparentSlot",
                                 "movable":false,
                                 "acceptable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Slot,
                           "id":"slot7",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "styleName":"TransparentSlot",
                                 "movable":false,
                                 "acceptable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Slot,
                           "id":"slot8",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "styleName":"TransparentSlot",
                                 "movable":false,
                                 "acceptable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Slot,
                           "id":"slot9",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "styleName":"TransparentSlot",
                                 "movable":false,
                                 "acceptable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Slot,
                           "id":"slot10",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "styleName":"TransparentSlot",
                                 "movable":false,
                                 "acceptable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Slot,
                           "id":"slot11",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "styleName":"TransparentSlot",
                                 "movable":false,
                                 "acceptable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Slot,
                           "id":"slot12",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "styleName":"TransparentSlot",
                                 "movable":false,
                                 "acceptable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Slot,
                           "id":"slot13",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "styleName":"TransparentSlot",
                                 "movable":false,
                                 "acceptable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Slot,
                           "id":"slot14",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "styleName":"TransparentSlot",
                                 "movable":false,
                                 "acceptable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Slot,
                           "id":"slot15",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "styleName":"TransparentSlot",
                                 "movable":false,
                                 "acceptable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Slot,
                           "id":"slot16",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "styleName":"TransparentSlot",
                                 "movable":false,
                                 "acceptable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Slot,
                           "id":"slot17",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "styleName":"TransparentSlot",
                                 "movable":false,
                                 "acceptable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Slot,
                           "id":"slot18",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "styleName":"TransparentSlot",
                                 "movable":false,
                                 "acceptable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Slot,
                           "id":"slot19",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "styleName":"TransparentSlot",
                                 "movable":false,
                                 "acceptable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Slot,
                           "id":"slot20",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "styleName":"TransparentSlot",
                                 "movable":false,
                                 "acceptable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Slot,
                           "id":"slot21",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "styleName":"TransparentSlot",
                                 "movable":false,
                                 "acceptable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Slot,
                           "id":"slot22",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "styleName":"TransparentSlot",
                                 "movable":false,
                                 "acceptable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Slot,
                           "id":"slot23",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "styleName":"TransparentSlot",
                                 "movable":false,
                                 "acceptable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Slot,
                           "id":"slot24",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "styleName":"TransparentSlot",
                                 "movable":false,
                                 "acceptable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Slot,
                           "id":"slot25",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":34,
                                 "height":34,
                                 "styleName":"TransparentSlot",
                                 "movable":false,
                                 "acceptable":false
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PageSelectorOnly,
                  "id":"pageSelector",
                  "stylesFactory":function():void
                  {
                     this.bottom = "6";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":33,
                        "changeCall":updatePage
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicDelayButton,
                  "id":"_RuneChipBag_BasicDelayButton1",
                  "events":{"click":"___RuneChipBag_BasicDelayButton1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdGreen",
                        "x":78.5,
                        "y":258
                     };
                  }
               })]
            };
         }
      });
      
      public var _RuneChipBag_Label1:Label;
      
      private var _109532662slot4:Slot;
      
      public function RuneChipBag()
      {
         super();
         mx_internal::_document = this;
         this.width = 215;
         this.height = 310;
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         RuneChipBag._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot7() : Slot
      {
         return this._109532665slot7;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1() : Slot
      {
         return this._109532659slot1;
      }
      
      public function set slot8(param1:Slot) : void
      {
         var _loc2_:Object = this._109532666slot8;
         if(_loc2_ !== param1)
         {
            this._109532666slot8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot8",_loc2_,param1));
         }
      }
      
      public function set slot4(param1:Slot) : void
      {
         var _loc2_:Object = this._109532662slot4;
         if(_loc2_ !== param1)
         {
            this._109532662slot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot4() : Slot
      {
         return this._109532662slot4;
      }
      
      public function set slot7(param1:Slot) : void
      {
         var _loc2_:Object = this._109532665slot7;
         if(_loc2_ !== param1)
         {
            this._109532665slot7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot7",_loc2_,param1));
         }
      }
      
      public function updateView() : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:int = 0;
         var _loc7_:Slot = null;
         var _loc8_:Object = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Object = null;
         var _loc12_:int = 0;
         var _loc13_:Object = null;
         var _loc1_:int = 0;
         for(_loc2_ in _chipBagData)
         {
            _loc1_++;
         }
         _loc3_ = pageSelector.totalPage = Math.ceil(_loc1_ / 25);
         _loc4_ = pageSelector.curPage;
         _loc5_ = (_loc4_ - 1) * 25;
         _loc6_ = 1;
         while(_loc6_ <= 25)
         {
            _loc7_ = this["slot" + _loc6_] as Slot;
            _loc8_ = _chipBagData[_loc6_ + _loc5_];
            _loc7_.clean();
            if(_loc8_)
            {
               _loc9_ = int(_loc8_["chipId"]);
               _loc10_ = int(_loc8_["num"]);
               _loc11_ = GameData.d[GamePredef.TBL_RUNE_CHIP][_loc9_];
               _loc12_ = int(_loc11_["rid"]);
               _loc13_ = GameData.d[GamePredef.TBL_DECO_RUNE][_loc12_];
               _loc7_.slotData = _loc11_;
               _loc7_.quality = int(_loc13_["runeTmp"]) - 1;
               _loc7_.type = GamePredef.TBL_RUNE_CHIP;
               _loc7_.giid = _loc9_;
               _loc7_.stackNum = _loc10_;
            }
            _loc6_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot9() : Slot
      {
         return this._109532667slot9;
      }
      
      public function set slot9(param1:Slot) : void
      {
         var _loc2_:Object = this._109532667slot9;
         if(_loc2_ !== param1)
         {
            this._109532667slot9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot9",_loc2_,param1));
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
      
      public function set slot11(param1:Slot) : void
      {
         var _loc2_:Object = this._899454818slot11;
         if(_loc2_ !== param1)
         {
            this._899454818slot11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot11",_loc2_,param1));
         }
      }
      
      public function set slot12(param1:Slot) : void
      {
         var _loc2_:Object = this._899454817slot12;
         if(_loc2_ !== param1)
         {
            this._899454817slot12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot12",_loc2_,param1));
         }
      }
      
      public function set slot13(param1:Slot) : void
      {
         var _loc2_:Object = this._899454816slot13;
         if(_loc2_ !== param1)
         {
            this._899454816slot13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot13",_loc2_,param1));
         }
      }
      
      public function set slot14(param1:Slot) : void
      {
         var _loc2_:Object = this._899454815slot14;
         if(_loc2_ !== param1)
         {
            this._899454815slot14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot14",_loc2_,param1));
         }
      }
      
      public function set slot15(param1:Slot) : void
      {
         var _loc2_:Object = this._899454814slot15;
         if(_loc2_ !== param1)
         {
            this._899454814slot15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot15",_loc2_,param1));
         }
      }
      
      public function set slot16(param1:Slot) : void
      {
         var _loc2_:Object = this._899454813slot16;
         if(_loc2_ !== param1)
         {
            this._899454813slot16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot16",_loc2_,param1));
         }
      }
      
      public function set slot17(param1:Slot) : void
      {
         var _loc2_:Object = this._899454812slot17;
         if(_loc2_ !== param1)
         {
            this._899454812slot17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot17",_loc2_,param1));
         }
      }
      
      public function set slot19(param1:Slot) : void
      {
         var _loc2_:Object = this._899454810slot19;
         if(_loc2_ !== param1)
         {
            this._899454810slot19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot19",_loc2_,param1));
         }
      }
      
      public function set slot18(param1:Slot) : void
      {
         var _loc2_:Object = this._899454811slot18;
         if(_loc2_ !== param1)
         {
            this._899454811slot18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot18",_loc2_,param1));
         }
      }
      
      public function set slot10(param1:Slot) : void
      {
         var _loc2_:Object = this._899454819slot10;
         if(_loc2_ !== param1)
         {
            this._899454819slot10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot10",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot8() : Slot
      {
         return this._109532666slot8;
      }
      
      public function set slot20(param1:Slot) : void
      {
         var _loc2_:Object = this._899454788slot20;
         if(_loc2_ !== param1)
         {
            this._899454788slot20 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot20",_loc2_,param1));
         }
      }
      
      public function set slot22(param1:Slot) : void
      {
         var _loc2_:Object = this._899454786slot22;
         if(_loc2_ !== param1)
         {
            this._899454786slot22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot22",_loc2_,param1));
         }
      }
      
      public function exchangeAll() : void
      {
         _core.remote.call("exchangeRune",null);
      }
      
      public function set slot24(param1:Slot) : void
      {
         var _loc2_:Object = this._899454784slot24;
         if(_loc2_ !== param1)
         {
            this._899454784slot24 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot24",_loc2_,param1));
         }
      }
      
      public function set slot25(param1:Slot) : void
      {
         var _loc2_:Object = this._899454783slot25;
         if(_loc2_ !== param1)
         {
            this._899454783slot25 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot25",_loc2_,param1));
         }
      }
      
      public function set slot21(param1:Slot) : void
      {
         var _loc2_:Object = this._899454787slot21;
         if(_loc2_ !== param1)
         {
            this._899454787slot21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot21",_loc2_,param1));
         }
      }
      
      public function set slot23(param1:Slot) : void
      {
         var _loc2_:Object = this._899454785slot23;
         if(_loc2_ !== param1)
         {
            this._899454785slot23 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot23",_loc2_,param1));
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
         var target:RuneChipBag = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _RuneChipBag_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_RuneChipBagWatcherSetupUtil");
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
      public function get slot11() : Slot
      {
         return this._899454818slot11;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot12() : Slot
      {
         return this._899454817slot12;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot14() : Slot
      {
         return this._899454815slot14;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot15() : Slot
      {
         return this._899454814slot15;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot17() : Slot
      {
         return this._899454812slot17;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot18() : Slot
      {
         return this._899454811slot18;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot19() : Slot
      {
         return this._899454810slot19;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot13() : Slot
      {
         return this._899454816slot13;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot10() : Slot
      {
         return this._899454819slot10;
      }
      
      private function _RuneChipBag_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.DECORATE_PANEL[112];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.DECORATE_PANEL[113];
         _loc1_ = Language.DECORATE_PANEL[114];
      }
      
      public function ___RuneChipBag_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         exchangeAll();
      }
      
      [Bindable(event="propertyChange")]
      public function get slot20() : Slot
      {
         return this._899454788slot20;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot22() : Slot
      {
         return this._899454786slot22;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot23() : Slot
      {
         return this._899454785slot23;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot24() : Slot
      {
         return this._899454784slot24;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot21() : Slot
      {
         return this._899454787slot21;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot25() : Slot
      {
         return this._899454783slot25;
      }
      
      public function set chipBagData(param1:Object) : void
      {
         _chipBagData = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot16() : Slot
      {
         return this._899454813slot16;
      }
      
      public function set slot1(param1:Slot) : void
      {
         var _loc2_:Object = this._109532659slot1;
         if(_loc2_ !== param1)
         {
            this._109532659slot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1",_loc2_,param1));
         }
      }
      
      public function set slot5(param1:Slot) : void
      {
         var _loc2_:Object = this._109532663slot5;
         if(_loc2_ !== param1)
         {
            this._109532663slot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot5",_loc2_,param1));
         }
      }
      
      public function set slot2(param1:Slot) : void
      {
         var _loc2_:Object = this._109532660slot2;
         if(_loc2_ !== param1)
         {
            this._109532660slot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2",_loc2_,param1));
         }
      }
      
      public function set slot6(param1:Slot) : void
      {
         var _loc2_:Object = this._109532664slot6;
         if(_loc2_ !== param1)
         {
            this._109532664slot6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot6",_loc2_,param1));
         }
      }
      
      public function set slot3(param1:Slot) : void
      {
         var _loc2_:Object = this._109532661slot3;
         if(_loc2_ !== param1)
         {
            this._109532661slot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot3",_loc2_,param1));
         }
      }
      
      private function _RuneChipBag_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DECORATE_PANEL[112];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _RuneChipBag_Label1.text = param1;
         },"_RuneChipBag_Label1.text");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _RuneChipBag_Label1.filters = param1;
         },"_RuneChipBag_Label1.filters");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DECORATE_PANEL[113];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _RuneChipBag_Label2.text = param1;
         },"_RuneChipBag_Label2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DECORATE_PANEL[114];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _RuneChipBag_BasicDelayButton1.label = param1;
         },"_RuneChipBag_BasicDelayButton1.label");
         result[3] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot3() : Slot
      {
         return this._109532661slot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot5() : Slot
      {
         return this._109532663slot5;
      }
      
      public function updatePage() : void
      {
         updateView();
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2() : Slot
      {
         return this._109532660slot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot6() : Slot
      {
         return this._109532664slot6;
      }
   }
}

