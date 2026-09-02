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
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class RuneBag extends SimpleCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static const RUNE_CHAR_BAG:uint = 0;
      
      public static const RUNE_PET_BAG:uint = 1;
      
      private var _runeBagType:uint;
      
      public var _RuneBag_Label1:Label;
      
      public var _RuneBag_Label2:Label;
      
      private var _109532659slot1:RuneSlot;
      
      private var _109532667slot9:RuneSlot;
      
      private var _899454817slot12:RuneSlot;
      
      private var _899454813slot16:RuneSlot;
      
      private var _109532664slot6:RuneSlot;
      
      public var _RuneBag_BasicDelayButton1:BasicDelayButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _109532661slot3:RuneSlot;
      
      private var _899454814slot15:RuneSlot;
      
      private var _899454810slot19:RuneSlot;
      
      private var _109532658slot0:RuneSlot;
      
      private var _899454818slot11:RuneSlot;
      
      private var _109532666slot8:RuneSlot;
      
      private var _core:Core = Core.getInstance();
      
      private var _runeArr:Array = new Array();
      
      mx_internal var _watchers:Array = [];
      
      private var _109532663slot5:RuneSlot;
      
      private var _899454815slot14:RuneSlot;
      
      private var _607339634pageSelector:PageSelectorOnly;
      
      private var _899454819slot10:RuneSlot;
      
      private var _899454811slot18:RuneSlot;
      
      private var _109532660slot2:RuneSlot;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _109532665slot7:RuneSlot;
      
      private var _899454816slot13:RuneSlot;
      
      private var _899454812slot17:RuneSlot;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":195,
               "height":320,
               "childDescriptors":[new UIComponentDescriptor({
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
                        "y":4,
                        "width":160,
                        "height":16,
                        "mouseChildren":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"_RuneBag_Label1",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16776960;
                              this.textAlign = "center";
                              this.horizontalCenter = "0";
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HRule,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":180,
                        "y":25,
                        "x":7
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_RuneBag_Label2",
                  "stylesFactory":function():void
                  {
                     this.color = 65535;
                     this.fontSize = 12;
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":27};
                  }
               }),new UIComponentDescriptor({
                  "type":Tile,
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 5;
                     this.verticalGap = 5;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "direction":"horizontal",
                        "x":10,
                        "height":220,
                        "width":175,
                        "y":49,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":RuneSlot,
                           "id":"slot0",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "conBagSlot":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneSlot,
                           "id":"slot1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "conBagSlot":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneSlot,
                           "id":"slot2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "conBagSlot":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneSlot,
                           "id":"slot3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "conBagSlot":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneSlot,
                           "id":"slot4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "conBagSlot":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneSlot,
                           "id":"slot5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "conBagSlot":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneSlot,
                           "id":"slot6",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "conBagSlot":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneSlot,
                           "id":"slot7",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "conBagSlot":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneSlot,
                           "id":"slot8",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "conBagSlot":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneSlot,
                           "id":"slot9",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "conBagSlot":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneSlot,
                           "id":"slot10",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "conBagSlot":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneSlot,
                           "id":"slot11",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "conBagSlot":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneSlot,
                           "id":"slot12",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "conBagSlot":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneSlot,
                           "id":"slot13",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "conBagSlot":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneSlot,
                           "id":"slot14",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "conBagSlot":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneSlot,
                           "id":"slot15",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "conBagSlot":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneSlot,
                           "id":"slot16",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "conBagSlot":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneSlot,
                           "id":"slot17",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "conBagSlot":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneSlot,
                           "id":"slot18",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "conBagSlot":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneSlot,
                           "id":"slot19",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "conBagSlot":true
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
                     this.bottom = "28";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":21,
                        "changeCall":updateBagView
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicDelayButton,
                  "id":"_RuneBag_BasicDelayButton1",
                  "events":{"click":"___RuneBag_BasicDelayButton1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnNormalBlue",
                        "x":68.5,
                        "y":293
                     };
                  }
               })]
            };
         }
      });
      
      private var _109532662slot4:RuneSlot;
      
      public function RuneBag()
      {
         super();
         mx_internal::_document = this;
         this.width = 195;
         this.height = 320;
         this.styleName = "CanvasBorder";
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
         this.addEventListener("creationComplete",___RuneBag_SimpleCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         RuneBag._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot9() : RuneSlot
      {
         return this._109532667slot9;
      }
      
      public function set slot8(param1:RuneSlot) : void
      {
         var _loc2_:Object = this._109532666slot8;
         if(_loc2_ !== param1)
         {
            this._109532666slot8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot4() : RuneSlot
      {
         return this._109532662slot4;
      }
      
      public function set slot7(param1:RuneSlot) : void
      {
         var _loc2_:Object = this._109532665slot7;
         if(_loc2_ !== param1)
         {
            this._109532665slot7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot7",_loc2_,param1));
         }
      }
      
      public function set slot9(param1:RuneSlot) : void
      {
         var _loc2_:Object = this._109532667slot9;
         if(_loc2_ !== param1)
         {
            this._109532667slot9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot9",_loc2_,param1));
         }
      }
      
      public function ___RuneBag_SimpleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         update();
      }
      
      [Bindable(event="propertyChange")]
      public function get slot8() : RuneSlot
      {
         return this._109532666slot8;
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
      
      public function ___RuneBag_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         arrangeBag(_runeBagType);
      }
      
      public function set slot11(param1:RuneSlot) : void
      {
         var _loc2_:Object = this._899454818slot11;
         if(_loc2_ !== param1)
         {
            this._899454818slot11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot11",_loc2_,param1));
         }
      }
      
      public function set slot12(param1:RuneSlot) : void
      {
         var _loc2_:Object = this._899454817slot12;
         if(_loc2_ !== param1)
         {
            this._899454817slot12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot12",_loc2_,param1));
         }
      }
      
      public function set slot13(param1:RuneSlot) : void
      {
         var _loc2_:Object = this._899454816slot13;
         if(_loc2_ !== param1)
         {
            this._899454816slot13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot13",_loc2_,param1));
         }
      }
      
      public function set slot14(param1:RuneSlot) : void
      {
         var _loc2_:Object = this._899454815slot14;
         if(_loc2_ !== param1)
         {
            this._899454815slot14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot14",_loc2_,param1));
         }
      }
      
      public function set slot15(param1:RuneSlot) : void
      {
         var _loc2_:Object = this._899454814slot15;
         if(_loc2_ !== param1)
         {
            this._899454814slot15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot15",_loc2_,param1));
         }
      }
      
      public function set slot17(param1:RuneSlot) : void
      {
         var _loc2_:Object = this._899454812slot17;
         if(_loc2_ !== param1)
         {
            this._899454812slot17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot17",_loc2_,param1));
         }
      }
      
      public function set slot19(param1:RuneSlot) : void
      {
         var _loc2_:Object = this._899454810slot19;
         if(_loc2_ !== param1)
         {
            this._899454810slot19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot19",_loc2_,param1));
         }
      }
      
      public function set slot18(param1:RuneSlot) : void
      {
         var _loc2_:Object = this._899454811slot18;
         if(_loc2_ !== param1)
         {
            this._899454811slot18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot18",_loc2_,param1));
         }
      }
      
      public function set slot10(param1:RuneSlot) : void
      {
         var _loc2_:Object = this._899454819slot10;
         if(_loc2_ !== param1)
         {
            this._899454819slot10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot10",_loc2_,param1));
         }
      }
      
      private function _RuneBag_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DECORATE_PANEL[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _RuneBag_Label1.text = param1;
         },"_RuneBag_Label1.text");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _RuneBag_Label1.filters = param1;
         },"_RuneBag_Label1.filters");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DECORATE_PANEL[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _RuneBag_Label2.text = param1;
         },"_RuneBag_Label2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DECORATE_PANEL[39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _RuneBag_BasicDelayButton1.label = param1;
         },"_RuneBag_BasicDelayButton1.label");
         result[3] = binding;
         return result;
      }
      
      public function set slot16(param1:RuneSlot) : void
      {
         var _loc2_:Object = this._899454813slot16;
         if(_loc2_ !== param1)
         {
            this._899454813slot16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot16",_loc2_,param1));
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
         var target:RuneBag = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _RuneBag_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_RuneBagWatcherSetupUtil");
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
      
      private function initRuneArr(param1:Object) : void
      {
         var _loc4_:* = undefined;
         _runeArr = [];
         var _loc2_:String = _runeBagType ? "petBag" : "chaBag";
         var _loc3_:Object = param1[_loc2_];
         for(_loc4_ in _loc3_)
         {
            _runeArr[Number(_loc4_)] = _loc3_[Number(_loc4_)];
         }
         updateBagView();
      }
      
      [Bindable(event="propertyChange")]
      public function get slot12() : RuneSlot
      {
         return this._899454817slot12;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot13() : RuneSlot
      {
         return this._899454816slot13;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot14() : RuneSlot
      {
         return this._899454815slot14;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot15() : RuneSlot
      {
         return this._899454814slot15;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot10() : RuneSlot
      {
         return this._899454819slot10;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot11() : RuneSlot
      {
         return this._899454818slot11;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot19() : RuneSlot
      {
         return this._899454810slot19;
      }
      
      public function set runeBagType(param1:uint) : void
      {
         _runeBagType = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot17() : RuneSlot
      {
         return this._899454812slot17;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot18() : RuneSlot
      {
         return this._899454811slot18;
      }
      
      private function arrangeBag(param1:int) : void
      {
         _core.remote.call("arrangeRuneBag",null,_core.cid,param1);
      }
      
      private function updateBagView() : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         pageSelector.totalPage = Math.ceil(_runeArr.length / 20);
         var _loc1_:int = pageSelector.curPage;
         var _loc2_:int = 0;
         while(_loc2_ < 20)
         {
            _loc3_ = (_loc1_ - 1) * 20 + _loc2_;
            this["slot" + _loc2_].clean();
            if(_runeBagType)
            {
               this["slot" + _loc2_].runePetBagPos = _loc3_;
               this["slot" + _loc2_].slotType = Slot.SLOT_RUNE_PET;
            }
            else
            {
               this["slot" + _loc2_].runeChaBagPos = _loc3_;
               this["slot" + _loc2_].slotType = Slot.SLOT_RUNE_CHA;
            }
            if(_runeArr.length > 0)
            {
               if(_runeArr[_loc3_])
               {
                  _loc4_ = Number(_runeArr[_loc3_]["r"]);
                  _loc5_ = GameData.d[GamePredef.TBL_DECO_RUNE][_loc4_];
                  this["slot" + _loc2_].type = GamePredef.TBL_DECO_RUNE;
                  this["slot" + _loc2_].giid = _loc4_;
                  this["slot" + _loc2_].slotData = _loc5_;
                  this["slot" + _loc2_].stackNum = Number(_runeArr[_loc3_]["n"]);
               }
            }
            _loc2_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot16() : RuneSlot
      {
         return this._899454813slot16;
      }
      
      public function get runeBagType() : uint
      {
         return _runeBagType;
      }
      
      public function update() : void
      {
         _core.remote.call("getRuneBagData",new Responder(initRuneArr),_core.cid);
      }
      
      private function _RuneBag_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.DECORATE_PANEL[31];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.DECORATE_PANEL[32];
         _loc1_ = Language.DECORATE_PANEL[39];
      }
      
      public function set slot1(param1:RuneSlot) : void
      {
         var _loc2_:Object = this._109532659slot1;
         if(_loc2_ !== param1)
         {
            this._109532659slot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1",_loc2_,param1));
         }
      }
      
      public function set slot0(param1:RuneSlot) : void
      {
         var _loc2_:Object = this._109532658slot0;
         if(_loc2_ !== param1)
         {
            this._109532658slot0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot0",_loc2_,param1));
         }
      }
      
      public function set slot5(param1:RuneSlot) : void
      {
         var _loc2_:Object = this._109532663slot5;
         if(_loc2_ !== param1)
         {
            this._109532663slot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot5",_loc2_,param1));
         }
      }
      
      public function set slot2(param1:RuneSlot) : void
      {
         var _loc2_:Object = this._109532660slot2;
         if(_loc2_ !== param1)
         {
            this._109532660slot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2",_loc2_,param1));
         }
      }
      
      public function set slot6(param1:RuneSlot) : void
      {
         var _loc2_:Object = this._109532664slot6;
         if(_loc2_ !== param1)
         {
            this._109532664slot6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot6",_loc2_,param1));
         }
      }
      
      public function set slot3(param1:RuneSlot) : void
      {
         var _loc2_:Object = this._109532661slot3;
         if(_loc2_ !== param1)
         {
            this._109532661slot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot0() : RuneSlot
      {
         return this._109532658slot0;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1() : RuneSlot
      {
         return this._109532659slot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2() : RuneSlot
      {
         return this._109532660slot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot3() : RuneSlot
      {
         return this._109532661slot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot5() : RuneSlot
      {
         return this._109532663slot5;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot6() : RuneSlot
      {
         return this._109532664slot6;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot7() : RuneSlot
      {
         return this._109532665slot7;
      }
      
      public function set slot4(param1:RuneSlot) : void
      {
         var _loc2_:Object = this._109532662slot4;
         if(_loc2_ !== param1)
         {
            this._109532662slot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot4",_loc2_,param1));
         }
      }
   }
}

