package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.PageSelector;
   import com.qeedoo.ui.view.comp.PetConfigCanvas;
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
   import mx.controls.TextInput;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PetFightConf extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _3437300pet3:ItemSlot;
      
      private var _3437302pet5:ItemSlot;
      
      private var tempFightRecord:Array = [];
      
      private var _regionLevelLimit:Array = [35,75,95,115,135];
      
      public var _PetFightConf_BasicTxtButton1:BasicTxtButton;
      
      private var _petList:Object;
      
      private var _106940444psPet:PageSelector;
      
      private var _3523916tCvs:Canvas;
      
      private var _2106582911_petArenaHasTicket:Boolean = false;
      
      private var _110851pf9:PetConfigCanvas;
      
      private var _1845684364loadWarn:Label;
      
      private var _110848pf6:PetConfigCanvas;
      
      private var _3437298pet1:ItemSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _core:Core = Core.getInstance();
      
      private var _3437301pet4:ItemSlot;
      
      public var _PetFightConf_Label1:Label;
      
      public var _PetFightConf_Label2:Label;
      
      public var _PetFightConf_Label3:Label;
      
      private var _confDataList:Object = {};
      
      public var _farmPetData:*;
      
      private var _petSettingNum:Object = {
         0:[5,6],
         1:[5,6,7],
         2:[5,6,7,8],
         3:[5,6,7,8,9],
         4:[5,6,7,8,9]
      };
      
      private var _105765600okBtn:BasicDelayButton;
      
      mx_internal var _watchers:Array = [];
      
      private var _3437303pet6:ItemSlot;
      
      private var _109548831tName:TextInput;
      
      private var firstTimeFlag:Boolean = true;
      
      private var _1007683640pTitle:BasicTitleCanvas;
      
      private var _110849pf7:PetConfigCanvas;
      
      public var isXiulianshi:Boolean = false;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _339934535_randNmae:String = "";
      
      private var _petArenaData:*;
      
      private var _defaultCmd:Object = {
         "action":GamePredef.BATTLE_ACTION_ATTACK,
         "level":-1,
         "id":-1
      };
      
      private var _110850pf8:PetConfigCanvas;
      
      private var _3437299pet2:ItemSlot;
      
      public var _PetFightConf_IntroText1:IntroText;
      
      mx_internal var _bindings:Array = [];
      
      private var _dataForServer:Object;
      
      private var _110847pf5:PetConfigCanvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":530,
               "height":350,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"pTitle"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":5,
                        "y":40,
                        "width":160,
                        "height":144,
                        "styleName":"CanvasBorder",
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"_PetFightConf_Label1",
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
                                 "x":0,
                                 "y":35,
                                 "width":125,
                                 "height":80,
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
                              return {
                                 "x":0,
                                 "y":120
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":4,
                        "y":192,
                        "width":161,
                        "height":148,
                        "styleName":"CanvasBorder",
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"_PetFightConf_Label2",
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
                           "type":BasicTxtButton,
                           "id":"_PetFightConf_BasicTxtButton1",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                              this.fontSize = 14;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":62,
                                 "width":146,
                                 "height":73,
                                 "enabled":false
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":IntroText,
                  "id":"_PetFightConf_IntroText1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":170,
                        "y":40,
                        "width":350,
                        "height":120
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":170,
                        "y":170,
                        "width":350,
                        "height":170,
                        "styleName":"CanvasBorder",
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"tCvs",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":20,
                                 "width":350,
                                 "height":25,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_PetFightConf_Label3",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.fontSize = 12;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":40,
                                          "y":0
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextInput,
                                    "id":"tName",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":125,
                                          "y":0,
                                          "width":175,
                                          "maxChars":50,
                                          "enabled":false
                                       };
                                    }
                                 })]
                              };
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
                                 "x":5,
                                 "y":50,
                                 "width":340,
                                 "height":65,
                                 "direction":"horizontal",
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":PetConfigCanvas,
                                    "id":"pf8"
                                 }),new UIComponentDescriptor({
                                    "type":PetConfigCanvas,
                                    "id":"pf6"
                                 }),new UIComponentDescriptor({
                                    "type":PetConfigCanvas,
                                    "id":"pf5"
                                 }),new UIComponentDescriptor({
                                    "type":PetConfigCanvas,
                                    "id":"pf7"
                                 }),new UIComponentDescriptor({
                                    "type":PetConfigCanvas,
                                    "id":"pf9"
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
                                 "y":145,
                                 "clickDelay":5000,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"loadWarn",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "visible":false,
                                 "x":5,
                                 "y":50,
                                 "width":340,
                                 "height":160
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _757338791_setForPetCross:Boolean = false;
      
      public function PetFightConf()
      {
         super();
         mx_internal::_document = this;
         this.width = 530;
         this.height = 350;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___PetFightConf_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PetFightConf._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get pf6() : PetConfigCanvas
      {
         return this._110848pf6;
      }
      
      [Bindable(event="propertyChange")]
      public function get pf7() : PetConfigCanvas
      {
         return this._110849pf7;
      }
      
      public function set pf7(param1:PetConfigCanvas) : void
      {
         var _loc2_:Object = this._110849pf7;
         if(_loc2_ !== param1)
         {
            this._110849pf7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pf7",_loc2_,param1));
         }
      }
      
      private function _PetFightConf_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PETFIGHT_PANEL_U[0];
         _loc1_ = Language.PETFIGHT_PANEL_U[29];
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Language.PETFIGHT_PANEL_U[28];
         _loc1_ = Language.PETFIGHT_PANEL_U[27];
         _loc1_ = _setForPetCross ? Language.PET_ARENA_U[42] : Language.PETFIGHT_PANEL_U[9];
         _loc1_ = _setForPetCross ? !_petArenaHasTicket : false;
         _loc1_ = Language.PETFIGHT_PANEL_U[25];
         _loc1_ = _randNmae;
         _loc1_ = Language.PETFIGHT_PANEL_U[2];
         _loc1_ = Language.PETFIGHT_PANEL_U[14];
      }
      
      [Bindable(event="propertyChange")]
      public function get pet5() : ItemSlot
      {
         return this._3437302pet5;
      }
      
      [Bindable(event="propertyChange")]
      public function get pf8() : PetConfigCanvas
      {
         return this._110850pf8;
      }
      
      public function set pf8(param1:PetConfigCanvas) : void
      {
         var _loc2_:Object = this._110850pf8;
         if(_loc2_ !== param1)
         {
            this._110850pf8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pf8",_loc2_,param1));
         }
      }
      
      public function set pf6(param1:PetConfigCanvas) : void
      {
         var _loc2_:Object = this._110848pf6;
         if(_loc2_ !== param1)
         {
            this._110848pf6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pf6",_loc2_,param1));
         }
      }
      
      public function set pf9(param1:PetConfigCanvas) : void
      {
         var _loc2_:Object = this._110851pf9;
         if(_loc2_ !== param1)
         {
            this._110851pf9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pf9",_loc2_,param1));
         }
      }
      
      private function init() : void
      {
         initPetView();
         this.petCrossConf = {
            "f":_setForPetCross,
            "t":_petArenaHasTicket
         };
      }
      
      public function set loadWarn(param1:Label) : void
      {
         var _loc2_:Object = this._1845684364loadWarn;
         if(_loc2_ !== param1)
         {
            this._1845684364loadWarn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"loadWarn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get psPet() : PageSelector
      {
         return this._106940444psPet;
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
      
      [Bindable(event="propertyChange")]
      public function get tName() : TextInput
      {
         return this._109548831tName;
      }
      
      public function addFightRecord(param1:Object) : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get pet4() : ItemSlot
      {
         return this._3437301pet4;
      }
      
      private function set _petArenaHasTicket(param1:Boolean) : void
      {
         var _loc2_:Object = this._2106582911_petArenaHasTicket;
         if(_loc2_ !== param1)
         {
            this._2106582911_petArenaHasTicket = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_petArenaHasTicket",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pf9() : PetConfigCanvas
      {
         return this._110851pf9;
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
         psPet.initPageSeletor(_petList.length,6);
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
      
      public function set tName(param1:TextInput) : void
      {
         var _loc2_:Object = this._109548831tName;
         if(_loc2_ !== param1)
         {
            this._109548831tName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tName",_loc2_,param1));
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
      private function get _randNmae() : String
      {
         return this._339934535_randNmae;
      }
      
      [Bindable(event="propertyChange")]
      public function get tCvs() : Canvas
      {
         return this._3523916tCvs;
      }
      
      public function reset() : void
      {
         firstTimeFlag = true;
         _petArenaData = undefined;
         _farmPetData = undefined;
         var _loc1_:int = 5;
         while(_loc1_ < 10)
         {
            this["pf" + _loc1_].cleanView();
            _loc1_++;
         }
      }
      
      public function set petCrossConf(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         _setForPetCross = param1.f;
         _petArenaHasTicket = param1.t;
         if(!initialized)
         {
            return;
         }
         if(_setForPetCross)
         {
            pTitle.text = Language.PETFIGHT_PANEL_U[24];
            if(_petArenaHasTicket)
            {
               okBtn.label = Language.PET_ARENA_U[41];
            }
            else
            {
               okBtn.label = Language.PETFIGHT_PANEL_U[22];
            }
            _loc2_ = _core.player.level;
            _loc3_ = 0;
            if(_loc2_ >= _regionLevelLimit[4])
            {
               _loc3_ = 4;
            }
            else if(_loc2_ >= _regionLevelLimit[3])
            {
               _loc3_ = 3;
            }
            else if(_loc2_ >= _regionLevelLimit[2])
            {
               _loc3_ = 2;
            }
            else if(_loc2_ >= _regionLevelLimit[1])
            {
               _loc3_ = 1;
            }
            _loc4_ = _petSettingNum[_loc3_];
            _loc5_ = 5;
            while(_loc5_ <= 9)
            {
               if(_loc4_.indexOf(_loc5_) >= 0)
               {
                  this["pf" + _loc5_].visible = true;
               }
               else
               {
                  this["pf" + _loc5_].visible = false;
               }
               _loc5_++;
            }
         }
         else
         {
            _loc5_ = 5;
            while(_loc5_ <= 9)
            {
               this["pf" + _loc5_].visible = true;
               _loc5_++;
            }
            pTitle.text = Language.PETFIGHT_PANEL_U[0];
            okBtn.label = Language.PETFIGHT_PANEL_U[2];
         }
         if(_setForPetCross ? _petArenaData == undefined : _farmPetData == undefined)
         {
            loadWarn.visible = true;
            if(_setForPetCross)
            {
               _core.remote.call("getPetArenaConf",null);
            }
            else
            {
               _core.remote.call("getPetConf",null);
            }
            setTimeout(removeLoadWarnLabel,3000);
            firstTimeFlag = false;
         }
         else if(_setForPetCross)
         {
            onGetPetConf(_petArenaData);
         }
         else
         {
            onGetPetConf(_farmPetData);
         }
         setRandName();
      }
      
      private function set _setForPetCross(param1:Boolean) : void
      {
         var _loc2_:Object = this._757338791_setForPetCross;
         if(_loc2_ !== param1)
         {
            this._757338791_setForPetCross = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_setForPetCross",_loc2_,param1));
         }
      }
      
      public function ___PetFightConf_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      private function get _petArenaHasTicket() : Boolean
      {
         return this._2106582911_petArenaHasTicket;
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
      
      private function _PetFightConf_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFIGHT_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            pTitle.text = param1;
         },"pTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFIGHT_PANEL_U[29];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFightConf_Label1.text = param1;
         },"_PetFightConf_Label1.text");
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
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFIGHT_PANEL_U[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFightConf_Label2.text = param1;
         },"_PetFightConf_Label2.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFIGHT_PANEL_U[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFightConf_BasicTxtButton1.text = param1;
         },"_PetFightConf_BasicTxtButton1.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _setForPetCross ? Language.PET_ARENA_U[42] : Language.PETFIGHT_PANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFightConf_IntroText1.htmlText = param1;
         },"_PetFightConf_IntroText1.htmlText");
         result[10] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _setForPetCross ? !_petArenaHasTicket : false;
         },function(param1:Boolean):void
         {
            tCvs.visible = param1;
         },"tCvs.visible");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFIGHT_PANEL_U[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFightConf_Label3.text = param1;
         },"_PetFightConf_Label3.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _randNmae;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tName.text = param1;
         },"tName.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFIGHT_PANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            okBtn.label = param1;
         },"okBtn.label");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFIGHT_PANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            loadWarn.text = param1;
         },"loadWarn.text");
         result[15] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get loadWarn() : Label
      {
         return this._1845684364loadWarn;
      }
      
      private function set _randNmae(param1:String) : void
      {
         var _loc2_:Object = this._339934535_randNmae;
         if(_loc2_ !== param1)
         {
            this._339934535_randNmae = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_randNmae",_loc2_,param1));
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
         var target:PetFightConf = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PetFightConf_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_PetFightConfWatcherSetupUtil");
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
      
      public function duplicatedPet(param1:Object, param2:Number) : Boolean
      {
         var _loc4_:* = undefined;
         var _loc3_:int = 5;
         while(_loc3_ < 10)
         {
            _loc4_ = this["pf" + _loc3_];
            if(Boolean(this["pf" + _loc3_].visible) && Boolean(_loc3_ != param2) && (this["pf" + _loc3_].pid == param1.pid || this["pf" + _loc3_].tid == param1.tid))
            {
               return true;
            }
            _loc3_++;
         }
         return false;
      }
      
      public function set pTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._1007683640pTitle;
         if(_loc2_ !== param1)
         {
            this._1007683640pTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pTitle",_loc2_,param1));
         }
      }
      
      public function __okBtn_click(param1:MouseEvent) : void
      {
         subPetConfigure();
      }
      
      private function removeLoadWarnLabel() : void
      {
         loadWarn.visible = false;
      }
      
      [Bindable(event="propertyChange")]
      private function get _setForPetCross() : Boolean
      {
         return this._757338791_setForPetCross;
      }
      
      public function set tCvs(param1:Canvas) : void
      {
         var _loc2_:Object = this._3523916tCvs;
         if(_loc2_ !== param1)
         {
            this._3523916tCvs = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tCvs",_loc2_,param1));
         }
      }
      
      private function rand3(param1:Object) : Object
      {
         var _loc3_:String = null;
         var _loc2_:Array = [];
         for(_loc3_ in param1)
         {
            _loc2_.push(param1[_loc3_]);
         }
         return _loc2_[Math.floor(Math.random() * _loc2_.length)];
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
      public function get pTitle() : BasicTitleCanvas
      {
         return this._1007683640pTitle;
      }
      
      private function setRandName() : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc1_:Object = _core.data.gameDataIndex[80];
         var _loc2_:Array = [];
         for(_loc3_ in _loc1_)
         {
            if(_loc3_ != "0")
            {
               _loc2_.push(_loc1_[_loc3_]);
            }
         }
         _loc1_ = _loc2_[Math.floor(Math.random() * _loc2_.length)];
         _loc4_ = rand3(_loc1_);
         if(!_loc4_ || !ToolKit.isEqual(_loc4_.type,32) && String(_loc4_.name).length < 6 && Math.random() > 0.3)
         {
            _loc5_ = rand3(_loc1_);
            while(_loc4_.id == _loc5_.id || String(_loc4_.name + _loc5_.name).length > 12)
            {
               _loc5_ = rand3(_loc1_);
            }
         }
         if(Boolean(_loc5_) && Math.floor(_loc4_.type / 10) == 2)
         {
            _randNmae = _loc4_.name + "·" + _loc5_.name;
         }
         else
         {
            _randNmae = _loc4_.name;
         }
         if(String(Language.GAMEPREDEF_S[338]).indexOf(_randNmae) > 0)
         {
            _randNmae = "";
            setRandName();
         }
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
         while(_loc1_ <= 6)
         {
            this["pet" + _loc1_].clean();
            _loc1_++;
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(param1 && initialized)
         {
            initPetView();
         }
         super.visible = param1;
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
      
      private function subPetConfigure() : void
      {
         var _loc2_:PetConfigCanvas = null;
         var _loc3_:Number = NaN;
         _dataForServer = {};
         var _loc1_:int = 5;
         while(_loc1_ < 10)
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
            if(_setForPetCross)
            {
               if(tCvs.visible && tName.text == "")
               {
                  _core.sysMidNote(Language.PETFIGHT_PANEL_U[23]);
               }
               else if(_core.haveSpecialStr(tName.text))
               {
                  _core.sysMidNote(Language.CHARSELECTCANVAS_S[4]);
               }
               else if(_core.haveBadWord(tName.text))
               {
                  _core.sysMidNote(Language.CALLBACK_S[6]);
               }
               else
               {
                  _core.remote.call("petArenaTicket",null,tCvs.visible ? tName.text : "nl",_dataForServer);
                  if(!_petArenaData)
                  {
                     _petArenaData = {};
                  }
                  _petArenaData.conf1 = _dataForServer;
               }
            }
            else
            {
               _core.remote.call("petFightConf",null,_dataForServer,1,isXiulianshi);
               if(!_farmPetData)
               {
                  _farmPetData = {};
               }
               _farmPetData.conf1 = _dataForServer;
            }
         }
         else
         {
            _core.sysMidNote(Language.PETFIGHT_PANEL_U[26]);
         }
         _core.checkFinishGuides(ViewManager.POP_AI_CONFIGURE,"",-1,-1,GamePredef.GUIDE_TYPE_PET_FIGHT_AI);
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
      
      public function set pet6(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3437303pet6;
         if(_loc2_ !== param1)
         {
            this._3437303pet6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get okBtn() : BasicDelayButton
      {
         return this._105765600okBtn;
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
      public function get pet1() : ItemSlot
      {
         return this._3437298pet1;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet2() : ItemSlot
      {
         return this._3437299pet2;
      }
      
      public function onGetPetConf(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Array = null;
         var _loc7_:Object = null;
         loadWarn.visible = false;
         if(_setForPetCross)
         {
            _petArenaData = param1;
         }
         else
         {
            _farmPetData = param1;
         }
         var _loc2_:int = 5;
         while(_loc2_ < 10)
         {
            this["pf" + _loc2_].cleanView();
            _loc2_++;
         }
         if(param1)
         {
            _loc3_ = param1.conf1;
            _loc4_ = 5;
            while(_loc4_ < 10)
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
      
      public function set pf5(param1:PetConfigCanvas) : void
      {
         var _loc2_:Object = this._110847pf5;
         if(_loc2_ !== param1)
         {
            this._110847pf5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pf5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pf5() : PetConfigCanvas
      {
         return this._110847pf5;
      }
   }
}

