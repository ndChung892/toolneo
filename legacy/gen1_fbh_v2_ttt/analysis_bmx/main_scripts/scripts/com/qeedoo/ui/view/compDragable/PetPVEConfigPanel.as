package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.PageSelector;
   import com.qeedoo.ui.view.comp.PetPVEConfigCanvas;
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
   import mx.containers.Canvas;
   import mx.containers.Tile;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PetPVEConfigPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _3437300pet3:ItemSlot;
      
      private var _3437302pet5:ItemSlot;
      
      private var _3437304pet7:ItemSlot;
      
      private var _106556289pet13:ItemSlot;
      
      private var _3437306pet9:ItemSlot;
      
      private var _ppConfigData:Object;
      
      private var _106940444psPet:PageSelector;
      
      private var _106556286pet10:ItemSlot;
      
      private var _petList:Object;
      
      private var _110845pf3:PetPVEConfigCanvas;
      
      private var _3066321cvs1:Canvas;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _106556291pet15:ItemSlot;
      
      private var _3437298pet1:ItemSlot;
      
      private var _106556288pet12:ItemSlot;
      
      private var _110843pf1:PetPVEConfigCanvas;
      
      private var _3437301pet4:ItemSlot;
      
      private var _105765600okBtn:BasicDelayButton;
      
      private var _confDataList:Object = {};
      
      private var _3437305pet8:ItemSlot;
      
      private var _3437303pet6:ItemSlot;
      
      private var _110846pf4:PetPVEConfigCanvas;
      
      mx_internal var _watchers:Array = [];
      
      private var _core:Core = Core.getInstance();
      
      private var _106556290pet14:ItemSlot;
      
      private var _106556287pet11:ItemSlot;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _PetPVEConfigPanel_IntroText1:IntroText;
      
      private var _110844pf2:PetPVEConfigCanvas;
      
      private var _3437299pet2:ItemSlot;
      
      private var _dataForServer:Object;
      
      mx_internal var _bindings:Array = [];
      
      private var _110847pf5:PetPVEConfigCanvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":530,
               "height":346,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_PetPVEConfigPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"cvs1",
                  "stylesFactory":function():void
                  {
                     this.top = "35";
                     this.left = "5";
                     this.bottom = "5";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":165,
                        "styleName":"CanvasBorder",
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"_PetPVEConfigPanel_Label1",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.fontSize = 14;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":5};
                           }
                        }),new UIComponentDescriptor({
                           "type":Tile,
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":35,
                                 "width":125,
                                 "height":200,
                                 "direction":"horizontal",
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"pet1",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"pet2",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"pet3",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"pet4",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"pet5",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"pet6",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"pet7",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"pet8",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"pet9",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"pet10",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"pet11",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"pet12",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"pet13",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"pet14",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"pet15",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":PageSelector,
                           "id":"psPet",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":262};
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":IntroText,
                  "id":"_PetPVEConfigPanel_IntroText1",
                  "stylesFactory":function():void
                  {
                     this.right = "5";
                     this.top = "35";
                     this.bottom = "132";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":350};
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.right = "5";
                     this.bottom = "5";
                     this.top = "222";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":350,
                        "styleName":"CanvasBorder",
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Tile,
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":20,
                                 "width":340,
                                 "height":65,
                                 "direction":"horizontal",
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":PetPVEConfigCanvas,
                                    "id":"pf1"
                                 }),new UIComponentDescriptor({
                                    "type":PetPVEConfigCanvas,
                                    "id":"pf2"
                                 }),new UIComponentDescriptor({
                                    "type":PetPVEConfigCanvas,
                                    "id":"pf3"
                                 }),new UIComponentDescriptor({
                                    "type":PetPVEConfigCanvas,
                                    "id":"pf4"
                                 }),new UIComponentDescriptor({
                                    "type":PetPVEConfigCanvas,
                                    "id":"pf5"
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicDelayButton,
                           "id":"okBtn",
                           "events":{"click":"__okBtn_click"},
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":87,
                                 "clickDelay":5000,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public var _PetPVEConfigPanel_Label1:Label;
      
      public var _PetPVEConfigPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      public function PetPVEConfigPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 530;
         this.height = 346;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___PetPVEConfigPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PetPVEConfigPanel._watcherSetupUtil = param1;
      }
      
      public function set pet12(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._106556288pet12;
         if(_loc2_ !== param1)
         {
            this._106556288pet12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet12",_loc2_,param1));
         }
      }
      
      private function _PetPVEConfigPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_PVE_PANEL[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetPVEConfigPanel_BasicTitleCanvas1.text = param1;
         },"_PetPVEConfigPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFIGHT_PANEL_U[29];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetPVEConfigPanel_Label1.text = param1;
         },"_PetPVEConfigPanel_Label1.text");
         result[1] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet1.slotType = param1;
         },"pet1.slotType");
         result[2] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet2.slotType = param1;
         },"pet2.slotType");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet3.slotType = param1;
         },"pet3.slotType");
         result[4] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet4.slotType = param1;
         },"pet4.slotType");
         result[5] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet5.slotType = param1;
         },"pet5.slotType");
         result[6] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet6.slotType = param1;
         },"pet6.slotType");
         result[7] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet7.slotType = param1;
         },"pet7.slotType");
         result[8] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet8.slotType = param1;
         },"pet8.slotType");
         result[9] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet9.slotType = param1;
         },"pet9.slotType");
         result[10] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet10.slotType = param1;
         },"pet10.slotType");
         result[11] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet11.slotType = param1;
         },"pet11.slotType");
         result[12] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet12.slotType = param1;
         },"pet12.slotType");
         result[13] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet13.slotType = param1;
         },"pet13.slotType");
         result[14] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet14.slotType = param1;
         },"pet14.slotType");
         result[15] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet15.slotType = param1;
         },"pet15.slotType");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_PVE_PANEL[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetPVEConfigPanel_IntroText1.htmlText = param1;
         },"_PetPVEConfigPanel_IntroText1.htmlText");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_PVE_PANEL[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            okBtn.label = param1;
         },"okBtn.label");
         result[18] = binding;
         return result;
      }
      
      public function set pet14(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._106556290pet14;
         if(_loc2_ !== param1)
         {
            this._106556290pet14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet14",_loc2_,param1));
         }
      }
      
      public function set pf1(param1:PetPVEConfigCanvas) : void
      {
         var _loc2_:Object = this._110843pf1;
         if(_loc2_ !== param1)
         {
            this._110843pf1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pf1",_loc2_,param1));
         }
      }
      
      public function set pet2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3437299pet2;
         if(_loc2_ !== param1)
         {
            this._3437299pet2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet2",_loc2_,param1));
         }
      }
      
      public function set pet13(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._106556289pet13;
         if(_loc2_ !== param1)
         {
            this._106556289pet13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet13",_loc2_,param1));
         }
      }
      
      public function set pet15(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._106556291pet15;
         if(_loc2_ !== param1)
         {
            this._106556291pet15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet15",_loc2_,param1));
         }
      }
      
      private function init() : void
      {
         initPetView();
      }
      
      [Bindable(event="propertyChange")]
      public function get pet8() : ItemSlot
      {
         return this._3437305pet8;
      }
      
      [Bindable(event="propertyChange")]
      public function get pf1() : PetPVEConfigCanvas
      {
         return this._110843pf1;
      }
      
      public function set pet10(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._106556286pet10;
         if(_loc2_ !== param1)
         {
            this._106556286pet10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet10",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pet2() : ItemSlot
      {
         return this._3437299pet2;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet4() : ItemSlot
      {
         return this._3437301pet4;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet9() : ItemSlot
      {
         return this._3437306pet9;
      }
      
      public function set pet8(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3437305pet8;
         if(_loc2_ !== param1)
         {
            this._3437305pet8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pf4() : PetPVEConfigCanvas
      {
         return this._110846pf4;
      }
      
      public function set pet9(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3437306pet9;
         if(_loc2_ !== param1)
         {
            this._3437306pet9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet9",_loc2_,param1));
         }
      }
      
      public function set pf3(param1:PetPVEConfigCanvas) : void
      {
         var _loc2_:Object = this._110845pf3;
         if(_loc2_ !== param1)
         {
            this._110845pf3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pf3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pf2() : PetPVEConfigCanvas
      {
         return this._110844pf2;
      }
      
      public function set pf5(param1:PetPVEConfigCanvas) : void
      {
         var _loc2_:Object = this._110847pf5;
         if(_loc2_ !== param1)
         {
            this._110847pf5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pf5",_loc2_,param1));
         }
      }
      
      public function set pet4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3437301pet4;
         if(_loc2_ !== param1)
         {
            this._3437301pet4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet4",_loc2_,param1));
         }
      }
      
      private function initPetView() : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Object = null;
         _petList = _core.player.petList;
         var _loc1_:Array = [];
         if(_petList)
         {
            for each(_loc2_ in _petList)
            {
               if(_loc2_)
               {
                  _loc3_ = _core.data.gameData[GamePredef.TBL_CREATURE][_loc2_.tid];
                  if(Boolean(_loc3_) && Boolean(_loc2_.binded == 1) && _core.player.level >= _loc3_.useLv)
                  {
                     _loc1_.push(_loc2_);
                  }
               }
            }
         }
         _loc1_.sortOn(["exp","growRate"],[Array.DESCENDING | Array.NUMERIC,Array.DESCENDING | Array.NUMERIC]);
         _petList = _loc1_;
         psPet.onPageChanged = onPsPageChanged;
         psPet.onPageCleared = onPsPageClear;
         psPet.initPageSeletor(_petList.length,15);
      }
      
      [Bindable(event="propertyChange")]
      public function get pf3() : PetPVEConfigCanvas
      {
         return this._110845pf3;
      }
      
      [Bindable(event="propertyChange")]
      public function get pf5() : PetPVEConfigCanvas
      {
         return this._110847pf5;
      }
      
      [Bindable(event="propertyChange")]
      public function get psPet() : PageSelector
      {
         return this._106940444psPet;
      }
      
      public function set psPet(param1:PageSelector) : void
      {
         var _loc2_:Object = this._106940444psPet;
         if(_loc2_ !== param1)
         {
            this._106940444psPet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"psPet",_loc2_,param1));
         }
      }
      
      public function set pf4(param1:PetPVEConfigCanvas) : void
      {
         var _loc2_:Object = this._110846pf4;
         if(_loc2_ !== param1)
         {
            this._110846pf4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pf4",_loc2_,param1));
         }
      }
      
      public function clearCacheConfData(param1:Number) : void
      {
         if(_confDataList[param1])
         {
            delete _confDataList[param1];
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pet10() : ItemSlot
      {
         return this._106556286pet10;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet11() : ItemSlot
      {
         return this._106556287pet11;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet12() : ItemSlot
      {
         return this._106556288pet12;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet13() : ItemSlot
      {
         return this._106556289pet13;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet14() : ItemSlot
      {
         return this._106556290pet14;
      }
      
      private function onPsPageChanged(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 1;
         while(_loc4_ <= param2)
         {
            _loc3_ = _loc4_ - 1 + param1;
            this["pet" + _loc4_].type = GamePredef.TBL_PET;
            this["pet" + _loc4_].slotData = _petList[_loc3_];
            this["pet" + _loc4_].stackNum = 1;
            this["pet" + _loc4_].giid = _petList[_loc3_].id;
            _loc4_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pet15() : ItemSlot
      {
         return this._106556291pet15;
      }
      
      public function resetPPconfig() : void
      {
         _ppConfigData = undefined;
         var _loc1_:int = 1;
         while(_loc1_ < 6)
         {
            this["pf" + _loc1_].cleanView();
            _loc1_++;
         }
      }
      
      public function saveConfData(param1:Object) : void
      {
         var _loc2_:Number = Number(param1.pid);
         if(Boolean(_loc2_) && _loc2_ > 0)
         {
            _confDataList[_loc2_] = param1;
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PetPVEConfigPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PetPVEConfigPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_PetPVEConfigPanelWatcherSetupUtil");
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
      
      public function __okBtn_click(param1:MouseEvent) : void
      {
         subPetConfigure();
      }
      
      public function set cvs1(param1:Canvas) : void
      {
         var _loc2_:Object = this._3066321cvs1;
         if(_loc2_ !== param1)
         {
            this._3066321cvs1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cvs1",_loc2_,param1));
         }
      }
      
      public function duplicatedPet(param1:Object, param2:Number) : Boolean
      {
         var _loc3_:int = 1;
         while(_loc3_ < 6)
         {
            if(Boolean(this["pf" + _loc3_].visible) && Boolean(_loc3_ != param2) && (this["pf" + _loc3_].pid == param1.pid || this["pf" + _loc3_].tid == param1.tid))
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function setPPVEConfig(param1:Object) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Array = null;
         var _loc7_:Object = null;
         if(!initialized)
         {
            callLater(setPPVEConfig,[param1]);
            return;
         }
         _ppConfigData = param1;
         var _loc2_:int = 1;
         while(_loc2_ < 6)
         {
            this["pf" + _loc2_].cleanView();
            _loc2_++;
         }
         if(_ppConfigData)
         {
            _loc3_ = _ppConfigData;
            _loc4_ = 1;
            while(_loc4_ < 6)
            {
               if(_loc3_[_loc4_])
               {
                  _loc5_ = Number(_loc3_[_loc4_].pid);
                  this["pf" + _loc4_].setPet(_loc5_);
                  this["pf" + _loc4_].conf = _loc3_[_loc4_];
                  _confDataList[_loc5_] = _loc3_[_loc4_];
                  _loc6_ = new Array();
                  if(Boolean(_confDataList[_loc5_].cmdList) && _confDataList[_loc5_].cmdList != null)
                  {
                     for each(_loc7_ in _confDataList[_loc5_].cmdList)
                     {
                        _loc6_.push(_loc7_);
                     }
                     _confDataList[_loc5_].cmdList = _loc6_;
                  }
               }
               _loc4_++;
            }
         }
      }
      
      private function _PetPVEConfigPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PET_PVE_PANEL[6];
         _loc1_ = Language.PETFIGHT_PANEL_U[29];
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Language.PET_PVE_PANEL[7];
         _loc1_ = Language.PET_PVE_PANEL[8];
      }
      
      public function set okBtn(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._105765600okBtn;
         if(_loc2_ !== param1)
         {
            this._105765600okBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"okBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cvs1() : Canvas
      {
         return this._3066321cvs1;
      }
      
      public function getCacheConfData(param1:Number) : Object
      {
         if(_confDataList[param1])
         {
            return _confDataList[param1];
         }
         return null;
      }
      
      private function onPsPageClear() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= 15)
         {
            this["pet" + _loc1_].clean();
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get okBtn() : BasicDelayButton
      {
         return this._105765600okBtn;
      }
      
      public function set pet1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3437298pet1;
         if(_loc2_ !== param1)
         {
            this._3437298pet1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet1",_loc2_,param1));
         }
      }
      
      private function subPetConfigure() : void
      {
         var _loc2_:PetPVEConfigCanvas = null;
         var _loc3_:Number = NaN;
         _dataForServer = {};
         var _loc1_:int = 1;
         while(_loc1_ < 6)
         {
            _loc2_ = this["pf" + _loc1_];
            if(_loc2_.visible && _loc2_.hasSetted())
            {
               _loc3_ = _loc2_.pid;
               if(Boolean(_loc3_) && Boolean(_confDataList[_loc3_]))
               {
                  _confDataList[_loc3_].pos = _loc1_;
                  _dataForServer[_loc1_] = _confDataList[_loc3_];
               }
            }
            _loc1_++;
         }
         if(!ToolKit.isEmptyObject(_dataForServer))
         {
            _core.remote.call("savePPVEConf",null,_dataForServer);
         }
         else
         {
            _core.sysMidNote(Language.PETFIGHT_PANEL_U[26]);
         }
      }
      
      public function ___PetPVEConfigPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(param1 && initialized)
         {
            initPetView();
         }
         super.visible = param1;
      }
      
      public function set pet6(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3437303pet6;
         if(_loc2_ !== param1)
         {
            this._3437303pet6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet6",_loc2_,param1));
         }
      }
      
      public function set pet3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3437300pet3;
         if(_loc2_ !== param1)
         {
            this._3437300pet3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet3",_loc2_,param1));
         }
      }
      
      public function set pet7(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3437304pet7;
         if(_loc2_ !== param1)
         {
            this._3437304pet7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pet1() : ItemSlot
      {
         return this._3437298pet1;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet3() : ItemSlot
      {
         return this._3437300pet3;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet6() : ItemSlot
      {
         return this._3437303pet6;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet7() : ItemSlot
      {
         return this._3437304pet7;
      }
      
      public function set pet5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3437302pet5;
         if(_loc2_ !== param1)
         {
            this._3437302pet5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pet5() : ItemSlot
      {
         return this._3437302pet5;
      }
      
      public function set pet11(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._106556287pet11;
         if(_loc2_ !== param1)
         {
            this._106556287pet11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet11",_loc2_,param1));
         }
      }
      
      public function set pf2(param1:PetPVEConfigCanvas) : void
      {
         var _loc2_:Object = this._110844pf2;
         if(_loc2_ !== param1)
         {
            this._110844pf2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pf2",_loc2_,param1));
         }
      }
   }
}

