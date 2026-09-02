package com.qeedoo.ui.view.comp
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
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
   import mx.containers.Tile;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class RuneClickBag extends SimpleCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _109532662slot4:RuneClickSlot;
      
      private var _runeBagType:uint;
      
      private var _109532659slot1:RuneClickSlot;
      
      private var _899454786slot22:RuneClickSlot;
      
      private var _109532667slot9:RuneClickSlot;
      
      private var _899454813slot16:RuneClickSlot;
      
      public var _RuneClickBag_Label2:Label;
      
      private var _899454817slot12:RuneClickSlot;
      
      private var _itemDic:Object;
      
      private var _109532664slot6:RuneClickSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _899454787slot21:RuneClickSlot;
      
      private var _109532661slot3:RuneClickSlot;
      
      private var _899454818slot11:RuneClickSlot;
      
      private var _899454814slot15:RuneClickSlot;
      
      private var _899454810slot19:RuneClickSlot;
      
      private var _109532658slot0:RuneClickSlot;
      
      private var _109532666slot8:RuneClickSlot;
      
      private var _core:Core = Core.getInstance();
      
      private var _runeArr:Array = new Array();
      
      private var _899454788slot20:RuneClickSlot;
      
      private var _109532663slot5:RuneClickSlot;
      
      private var _899454819slot10:RuneClickSlot;
      
      mx_internal var _watchers:Array = [];
      
      private var _607339634pageSelector:PageSelectorOnly;
      
      private var _899454815slot14:RuneClickSlot;
      
      private var _109532660slot2:RuneClickSlot;
      
      private var _899454811slot18:RuneClickSlot;
      
      public var _RuneClickBag_BasicGlowButton1:BasicGlowButton;
      
      public var _RuneClickBag_BasicGlowButton2:BasicGlowButton;
      
      public var _RuneClickBag_BasicGlowButton3:BasicGlowButton;
      
      private var _1942312203totalResolveExp:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _899454785slot23:RuneClickSlot;
      
      private var _109532665slot7:RuneClickSlot;
      
      private var _899454816slot13:RuneClickSlot;
      
      private var _899454812slot17:RuneClickSlot;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":550,
               "height":295,
               "childDescriptors":[new UIComponentDescriptor({
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
                        "x":6,
                        "height":200,
                        "width":540,
                        "y":8,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":RuneClickSlot,
                           "id":"slot0",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "width":63,
                                 "height":63,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneClickSlot,
                           "id":"slot1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "width":63,
                                 "height":63,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneClickSlot,
                           "id":"slot2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "width":63,
                                 "height":63,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneClickSlot,
                           "id":"slot3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "width":63,
                                 "height":63,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneClickSlot,
                           "id":"slot4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "width":63,
                                 "height":63,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneClickSlot,
                           "id":"slot5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "width":63,
                                 "height":63,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneClickSlot,
                           "id":"slot6",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "width":63,
                                 "height":63,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneClickSlot,
                           "id":"slot7",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "width":63,
                                 "height":63,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneClickSlot,
                           "id":"slot8",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "width":63,
                                 "height":63,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneClickSlot,
                           "id":"slot9",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "width":63,
                                 "height":63,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneClickSlot,
                           "id":"slot10",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "width":63,
                                 "height":63,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneClickSlot,
                           "id":"slot11",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "width":63,
                                 "height":63,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneClickSlot,
                           "id":"slot12",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "width":63,
                                 "height":63,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneClickSlot,
                           "id":"slot13",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "width":63,
                                 "height":63,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneClickSlot,
                           "id":"slot14",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "width":63,
                                 "height":63,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneClickSlot,
                           "id":"slot15",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "width":63,
                                 "height":63,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneClickSlot,
                           "id":"slot16",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "width":63,
                                 "height":63,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneClickSlot,
                           "id":"slot17",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "width":63,
                                 "height":63,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneClickSlot,
                           "id":"slot18",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "width":63,
                                 "height":63,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneClickSlot,
                           "id":"slot19",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "width":63,
                                 "height":63,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneClickSlot,
                           "id":"slot20",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "width":63,
                                 "height":63,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneClickSlot,
                           "id":"slot21",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "width":63,
                                 "height":63,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneClickSlot,
                           "id":"slot22",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "width":63,
                                 "height":63,
                                 "clickCall":clickHandler
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RuneClickSlot,
                           "id":"slot23",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"SoulSlotOpen",
                                 "width":63,
                                 "height":63,
                                 "clickCall":clickHandler
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
                     this.bottom = "63";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":201.5,
                        "changeCall":updateBagView
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_RuneClickBag_BasicGlowButton1",
                  "events":{"click":"___RuneClickBag_BasicGlowButton1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdGreen",
                        "x":410,
                        "y":209
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"totalResolveExp",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":213,
                        "y":247
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_RuneClickBag_Label2",
                  "stylesFactory":function():void
                  {
                     this.color = 16776960;
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":201,
                        "y":232
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_RuneClickBag_BasicGlowButton2",
                  "events":{"click":"___RuneClickBag_BasicGlowButton2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdGreen",
                        "x":285.5,
                        "y":265
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_RuneClickBag_BasicGlowButton3",
                  "events":{"click":"___RuneClickBag_BasicGlowButton3_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdGreen",
                        "x":219,
                        "y":265
                     };
                  }
               })]
            };
         }
      });
      
      public function RuneClickBag()
      {
         super();
         mx_internal::_document = this;
         this.width = 550;
         this.height = 295;
         this.styleName = "CanvasBorder";
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
         this.addEventListener("creationComplete",___RuneClickBag_SimpleCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         RuneClickBag._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot9() : RuneClickSlot
      {
         return this._109532667slot9;
      }
      
      public function set slot8(param1:RuneClickSlot) : void
      {
         var _loc2_:Object = this._109532666slot8;
         if(_loc2_ !== param1)
         {
            this._109532666slot8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot4() : RuneClickSlot
      {
         return this._109532662slot4;
      }
      
      public function set slot7(param1:RuneClickSlot) : void
      {
         var _loc2_:Object = this._109532665slot7;
         if(_loc2_ !== param1)
         {
            this._109532665slot7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot7",_loc2_,param1));
         }
      }
      
      public function set totalResolveExp(param1:Label) : void
      {
         var _loc2_:Object = this._1942312203totalResolveExp;
         if(_loc2_ !== param1)
         {
            this._1942312203totalResolveExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalResolveExp",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get totalResolveExp() : Label
      {
         return this._1942312203totalResolveExp;
      }
      
      public function set slot4(param1:RuneClickSlot) : void
      {
         var _loc2_:Object = this._109532662slot4;
         if(_loc2_ !== param1)
         {
            this._109532662slot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot4",_loc2_,param1));
         }
      }
      
      public function set slot9(param1:RuneClickSlot) : void
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
      
      private function updateTotalExp() : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc1_:Number = 0;
         if(_itemDic)
         {
            for(_loc2_ in _itemDic)
            {
               if(_itemDic[_loc2_])
               {
                  _loc3_ = _itemDic[_loc2_].slotData;
                  _loc4_ = Number(_itemDic[_loc2_].stackNum);
                  _loc1_ += Number(_loc3_["exp"]) * _loc4_;
               }
            }
         }
         totalResolveExp.text = Language.DECORATE_PANEL[41].toString().replace("{num}",_loc1_);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot8() : RuneClickSlot
      {
         return this._109532666slot8;
      }
      
      public function ___RuneClickBag_BasicGlowButton3_click(param1:MouseEvent) : void
      {
         selectThisPage();
      }
      
      public function set slot11(param1:RuneClickSlot) : void
      {
         var _loc2_:Object = this._899454818slot11;
         if(_loc2_ !== param1)
         {
            this._899454818slot11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot11",_loc2_,param1));
         }
      }
      
      public function set slot12(param1:RuneClickSlot) : void
      {
         var _loc2_:Object = this._899454817slot12;
         if(_loc2_ !== param1)
         {
            this._899454817slot12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot12",_loc2_,param1));
         }
      }
      
      public function set slot13(param1:RuneClickSlot) : void
      {
         var _loc2_:Object = this._899454816slot13;
         if(_loc2_ !== param1)
         {
            this._899454816slot13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot13",_loc2_,param1));
         }
      }
      
      public function set slot14(param1:RuneClickSlot) : void
      {
         var _loc2_:Object = this._899454815slot14;
         if(_loc2_ !== param1)
         {
            this._899454815slot14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot14",_loc2_,param1));
         }
      }
      
      public function set slot15(param1:RuneClickSlot) : void
      {
         var _loc2_:Object = this._899454814slot15;
         if(_loc2_ !== param1)
         {
            this._899454814slot15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot15",_loc2_,param1));
         }
      }
      
      public function clean() : void
      {
         _itemDic = null;
         var _loc1_:int = 0;
         while(_loc1_ < 24)
         {
            (this["slot" + _loc1_] as RuneClickSlot).selectImg.visible = false;
            (this["slot" + _loc1_] as RuneClickSlot).isSelected = false;
            _loc1_++;
         }
         this.updateTotalExp();
      }
      
      public function set slot19(param1:RuneClickSlot) : void
      {
         var _loc2_:Object = this._899454810slot19;
         if(_loc2_ !== param1)
         {
            this._899454810slot19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot19",_loc2_,param1));
         }
      }
      
      public function set slot17(param1:RuneClickSlot) : void
      {
         var _loc2_:Object = this._899454812slot17;
         if(_loc2_ !== param1)
         {
            this._899454812slot17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot17",_loc2_,param1));
         }
      }
      
      public function set slot18(param1:RuneClickSlot) : void
      {
         var _loc2_:Object = this._899454811slot18;
         if(_loc2_ !== param1)
         {
            this._899454811slot18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot18",_loc2_,param1));
         }
      }
      
      public function set slot10(param1:RuneClickSlot) : void
      {
         var _loc2_:Object = this._899454819slot10;
         if(_loc2_ !== param1)
         {
            this._899454819slot10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot10",_loc2_,param1));
         }
      }
      
      private function resolveRune() : void
      {
         var runeObj:Object;
         var gfunc:Function = null;
         var i:Object = null;
         var id:Number = NaN;
         var pos:Number = NaN;
         if(!_core.delPass)
         {
            gfunc = function(param1:String):void
            {
               _core.remote.call("unlockMoney",null,MD5.hash(param1));
            };
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.DELETE_BY_PASS[1],gfunc);
            return;
         }
         runeObj = {};
         if(_itemDic)
         {
            for(i in _itemDic)
            {
               if(_itemDic[i])
               {
                  id = Number(_itemDic[i].slotData.id);
                  pos = _runeBagType ? Number(_itemDic[i].runePetBagPos) : Number(_itemDic[i].runeChaBagPos);
                  runeObj[pos] = id;
               }
            }
         }
         this.clean();
         _core.remote.call("runeResolve",null,runeObj,_runeBagType);
      }
      
      private function _RuneClickBag_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.DECORATE_PANEL[39];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.DECORATE_PANEL[40];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.DECORATE_PANEL[42];
         _loc1_ = Language.DECORATE_PANEL[48];
      }
      
      private function selectThisPage() : void
      {
         var _loc2_:RuneClickSlot = null;
         var _loc1_:int = 0;
         while(_loc1_ < 24)
         {
            _loc2_ = this["slot" + _loc1_] as RuneClickSlot;
            _loc2_.hideTooltip();
            if(_loc2_.slotData)
            {
               _loc2_.selectImg.visible = !_loc2_.selectImg.visible;
               _loc2_.isSelected = !_loc2_.isSelected;
               _loc2_.clickCall && _loc2_.clickCall(_loc2_);
            }
            _loc1_++;
         }
      }
      
      public function set slot20(param1:RuneClickSlot) : void
      {
         var _loc2_:Object = this._899454788slot20;
         if(_loc2_ !== param1)
         {
            this._899454788slot20 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot20",_loc2_,param1));
         }
      }
      
      public function set slot22(param1:RuneClickSlot) : void
      {
         var _loc2_:Object = this._899454786slot22;
         if(_loc2_ !== param1)
         {
            this._899454786slot22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot22",_loc2_,param1));
         }
      }
      
      public function set slot16(param1:RuneClickSlot) : void
      {
         var _loc2_:Object = this._899454813slot16;
         if(_loc2_ !== param1)
         {
            this._899454813slot16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot16",_loc2_,param1));
         }
      }
      
      public function set slot23(param1:RuneClickSlot) : void
      {
         var _loc2_:Object = this._899454785slot23;
         if(_loc2_ !== param1)
         {
            this._899454785slot23 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot23",_loc2_,param1));
         }
      }
      
      private function _RuneClickBag_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DECORATE_PANEL[39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _RuneClickBag_BasicGlowButton1.label = param1;
         },"_RuneClickBag_BasicGlowButton1.label");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            totalResolveExp.filters = param1;
         },"totalResolveExp.filters");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DECORATE_PANEL[40];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _RuneClickBag_Label2.text = param1;
         },"_RuneClickBag_Label2.text");
         result[2] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _RuneClickBag_Label2.filters = param1;
         },"_RuneClickBag_Label2.filters");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DECORATE_PANEL[42];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _RuneClickBag_BasicGlowButton2.label = param1;
         },"_RuneClickBag_BasicGlowButton2.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DECORATE_PANEL[48];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _RuneClickBag_BasicGlowButton3.label = param1;
         },"_RuneClickBag_BasicGlowButton3.label");
         result[5] = binding;
         return result;
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
         var target:RuneClickBag = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _RuneClickBag_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_RuneClickBagWatcherSetupUtil");
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
      
      public function set slot21(param1:RuneClickSlot) : void
      {
         var _loc2_:Object = this._899454787slot21;
         if(_loc2_ !== param1)
         {
            this._899454787slot21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot21",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot13() : RuneClickSlot
      {
         return this._899454816slot13;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot14() : RuneClickSlot
      {
         return this._899454815slot14;
      }
      
      private function clickHandler(param1:RuneClickSlot) : void
      {
         if(!_itemDic)
         {
            _itemDic = {};
         }
         if(param1.giid > 0)
         {
            if(_runeBagType == 0)
            {
               _itemDic[param1.runeChaBagPos] = param1.isSelected ? param1 : null;
            }
            else
            {
               _itemDic[param1.runePetBagPos] = param1.isSelected ? param1 : null;
            }
         }
         this.updateTotalExp();
      }
      
      [Bindable(event="propertyChange")]
      public function get slot10() : RuneClickSlot
      {
         return this._899454819slot10;
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
      
      public function set runeBagType(param1:uint) : void
      {
         _runeBagType = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot15() : RuneClickSlot
      {
         return this._899454814slot15;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot17() : RuneClickSlot
      {
         return this._899454812slot17;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot18() : RuneClickSlot
      {
         return this._899454811slot18;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot11() : RuneClickSlot
      {
         return this._899454818slot11;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot12() : RuneClickSlot
      {
         return this._899454817slot12;
      }
      
      public function ___RuneClickBag_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         arrangeBag(_runeBagType);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot19() : RuneClickSlot
      {
         return this._899454810slot19;
      }
      
      private function arrangeBag(param1:int) : void
      {
         this.clean();
         _core.remote.call("arrangeRuneBag",null,_core.cid,param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot22() : RuneClickSlot
      {
         return this._899454786slot22;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot23() : RuneClickSlot
      {
         return this._899454785slot23;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot20() : RuneClickSlot
      {
         return this._899454788slot20;
      }
      
      private function updateBagView() : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         this.updateTotalExp();
         pageSelector.totalPage = Math.ceil(_runeArr.length / 24);
         var _loc1_:int = pageSelector.curPage;
         var _loc2_:int = 0;
         while(_loc2_ < 24)
         {
            _loc3_ = (_loc1_ - 1) * 24 + _loc2_;
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
         this.clean();
      }
      
      public function get runeBagType() : uint
      {
         return _runeBagType;
      }
      
      public function update() : void
      {
         _core.remote.call("getRuneBagData",new Responder(initRuneArr),_core.cid);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot16() : RuneClickSlot
      {
         return this._899454813slot16;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot21() : RuneClickSlot
      {
         return this._899454787slot21;
      }
      
      public function set slot0(param1:RuneClickSlot) : void
      {
         var _loc2_:Object = this._109532658slot0;
         if(_loc2_ !== param1)
         {
            this._109532658slot0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot0",_loc2_,param1));
         }
      }
      
      public function set slot1(param1:RuneClickSlot) : void
      {
         var _loc2_:Object = this._109532659slot1;
         if(_loc2_ !== param1)
         {
            this._109532659slot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1",_loc2_,param1));
         }
      }
      
      public function set slot5(param1:RuneClickSlot) : void
      {
         var _loc2_:Object = this._109532663slot5;
         if(_loc2_ !== param1)
         {
            this._109532663slot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot5",_loc2_,param1));
         }
      }
      
      public function set slot2(param1:RuneClickSlot) : void
      {
         var _loc2_:Object = this._109532660slot2;
         if(_loc2_ !== param1)
         {
            this._109532660slot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2",_loc2_,param1));
         }
      }
      
      public function set slot6(param1:RuneClickSlot) : void
      {
         var _loc2_:Object = this._109532664slot6;
         if(_loc2_ !== param1)
         {
            this._109532664slot6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot6",_loc2_,param1));
         }
      }
      
      public function set slot3(param1:RuneClickSlot) : void
      {
         var _loc2_:Object = this._109532661slot3;
         if(_loc2_ !== param1)
         {
            this._109532661slot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot0() : RuneClickSlot
      {
         return this._109532658slot0;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1() : RuneClickSlot
      {
         return this._109532659slot1;
      }
      
      public function ___RuneClickBag_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         resolveRune();
      }
      
      [Bindable(event="propertyChange")]
      public function get slot3() : RuneClickSlot
      {
         return this._109532661slot3;
      }
      
      public function ___RuneClickBag_SimpleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         update();
      }
      
      [Bindable(event="propertyChange")]
      public function get slot5() : RuneClickSlot
      {
         return this._109532663slot5;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot6() : RuneClickSlot
      {
         return this._109532664slot6;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot7() : RuneClickSlot
      {
         return this._109532665slot7;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2() : RuneClickSlot
      {
         return this._109532660slot2;
      }
   }
}

