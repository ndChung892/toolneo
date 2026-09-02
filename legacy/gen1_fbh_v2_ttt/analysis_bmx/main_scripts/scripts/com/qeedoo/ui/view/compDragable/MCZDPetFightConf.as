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
   import com.qeedoo.ui.view.comp.MCZDPetConfigCanvas;
   import com.qeedoo.ui.view.comp.PageSelector;
   import com.qeedoo.ui.view.comp.RoundedLabel;
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
   import mx.controls.Alert;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MCZDPetFightConf extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _3437300pet3:ItemSlot;
      
      private var _3437302pet5:ItemSlot;
      
      private var _petList:Object;
      
      public var _MCZDPetFightConf_IntroText1:IntroText;
      
      private var _106940444psPet:PageSelector;
      
      private var _2106582911_petArenaHasTicket:Boolean = false;
      
      private var _110851pf9:MCZDPetConfigCanvas;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1845684364loadWarn:Label;
      
      private var _110848pf6:MCZDPetConfigCanvas;
      
      private var _3437298pet1:ItemSlot;
      
      public var _MCZDPetFightConf_RoundedLabel2:RoundedLabel;
      
      public var _MCZDPetFightConf_RoundedLabel3:RoundedLabel;
      
      public var _MCZDPetFightConf_RoundedLabel4:RoundedLabel;
      
      public var _MCZDPetFightConf_RoundedLabel5:RoundedLabel;
      
      public var _MCZDPetFightConf_RoundedLabel1:RoundedLabel;
      
      private var _core:Core = Core.getInstance();
      
      private var _3437301pet4:ItemSlot;
      
      private var _105765600okBtn:BasicDelayButton;
      
      private var _confDataList:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _3437303pet6:ItemSlot;
      
      private var _1007683640pTitle:BasicTitleCanvas;
      
      private var _110849pf7:MCZDPetConfigCanvas;
      
      public var _MCZDPetFightConf_Label1:Label;
      
      public var _MCZDPetFightConf_Label2:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _MCZDPetFightConf_BasicTxtButton1:BasicTxtButton;
      
      public var _petArenaData:*;
      
      private var _defaultCmd:Object = {
         "action":GamePredef.BATTLE_ACTION_ATTACK,
         "level":-1,
         "id":-1
      };
      
      private var _110850pf8:MCZDPetConfigCanvas;
      
      private var _3437299pet2:ItemSlot;
      
      private var _dataForServer:Object;
      
      mx_internal var _bindings:Array = [];
      
      private var _110847pf5:MCZDPetConfigCanvas;
      
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
                           "id":"_MCZDPetFightConf_Label1",
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
                           "id":"_MCZDPetFightConf_Label2",
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
                           "id":"_MCZDPetFightConf_BasicTxtButton1",
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
                  "id":"_MCZDPetFightConf_IntroText1",
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
                           "type":RoundedLabel,
                           "id":"_MCZDPetFightConf_RoundedLabel1",
                           "stylesFactory":function():void
                           {
                              this.left = "16";
                              this.top = "30";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":94};
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_MCZDPetFightConf_RoundedLabel2",
                           "stylesFactory":function():void
                           {
                              this.left = "83";
                              this.top = "30";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":94};
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_MCZDPetFightConf_RoundedLabel3",
                           "stylesFactory":function():void
                           {
                              this.left = "151";
                              this.top = "30";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":94};
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_MCZDPetFightConf_RoundedLabel4",
                           "stylesFactory":function():void
                           {
                              this.left = "220";
                              this.top = "30";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":94};
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_MCZDPetFightConf_RoundedLabel5",
                           "stylesFactory":function():void
                           {
                              this.left = "288";
                              this.top = "30";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":94};
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
                                    "type":MCZDPetConfigCanvas,
                                    "id":"pf5"
                                 }),new UIComponentDescriptor({
                                    "type":MCZDPetConfigCanvas,
                                    "id":"pf6"
                                 }),new UIComponentDescriptor({
                                    "type":MCZDPetConfigCanvas,
                                    "id":"pf7"
                                 }),new UIComponentDescriptor({
                                    "type":MCZDPetConfigCanvas,
                                    "id":"pf8"
                                 }),new UIComponentDescriptor({
                                    "type":MCZDPetConfigCanvas,
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
      
      public function MCZDPetFightConf()
      {
         super();
         mx_internal::_document = this;
         this.width = 530;
         this.height = 350;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___MCZDPetFightConf_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MCZDPetFightConf._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get pf6() : MCZDPetConfigCanvas
      {
         return this._110848pf6;
      }
      
      [Bindable(event="propertyChange")]
      public function get pf7() : MCZDPetConfigCanvas
      {
         return this._110849pf7;
      }
      
      public function set pf7(param1:MCZDPetConfigCanvas) : void
      {
         var _loc2_:Object = this._110849pf7;
         if(_loc2_ !== param1)
         {
            this._110849pf7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pf7",_loc2_,param1));
         }
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
      
      public function onUpdataMCZDConf(param1:Object) : void
      {
         if(!param1.f)
         {
            if(param1.r == "onlyOnce")
            {
               Alert.show(Language.MCZDPETFIGHT_PANEL_U[52]);
               _core.remote.call("getMCZDConf",null);
            }
            if(param1.r == "time")
            {
               Alert.show(Language.MCZDPETFIGHT_PANEL_U[65]);
            }
         }
         else
         {
            Alert.show(Language.MCZDPETFIGHT_PANEL_U[53]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pf8() : MCZDPetConfigCanvas
      {
         return this._110850pf8;
      }
      
      public function set pf8(param1:MCZDPetConfigCanvas) : void
      {
         var _loc2_:Object = this._110850pf8;
         if(_loc2_ !== param1)
         {
            this._110850pf8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pf8",_loc2_,param1));
         }
      }
      
      public function set pf9(param1:MCZDPetConfigCanvas) : void
      {
         var _loc2_:Object = this._110851pf9;
         if(_loc2_ !== param1)
         {
            this._110851pf9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pf9",_loc2_,param1));
         }
      }
      
      public function set pf6(param1:MCZDPetConfigCanvas) : void
      {
         var _loc2_:Object = this._110848pf6;
         if(_loc2_ !== param1)
         {
            this._110848pf6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pf6",_loc2_,param1));
         }
      }
      
      private function init() : void
      {
         initPetView();
         this.petCrossConf = {"t":_petArenaHasTicket};
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
      public function get pf9() : MCZDPetConfigCanvas
      {
         return this._110851pf9;
      }
      
      [Bindable(event="propertyChange")]
      public function get psPet() : PageSelector
      {
         return this._106940444psPet;
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
      
      public function clearCacheConfData(param1:Number) : void
      {
         if(_confDataList[param1])
         {
            delete _confDataList[param1];
         }
      }
      
      private function _MCZDPetFightConf_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            pTitle.text = param1;
         },"pTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[29];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MCZDPetFightConf_Label1.text = param1;
         },"_MCZDPetFightConf_Label1.text");
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
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MCZDPetFightConf_Label2.text = param1;
         },"_MCZDPetFightConf_Label2.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MCZDPetFightConf_BasicTxtButton1.text = param1;
         },"_MCZDPetFightConf_BasicTxtButton1.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[70];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MCZDPetFightConf_IntroText1.htmlText = param1;
         },"_MCZDPetFightConf_IntroText1.htmlText");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[44];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MCZDPetFightConf_RoundedLabel1.text = param1;
         },"_MCZDPetFightConf_RoundedLabel1.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[45];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MCZDPetFightConf_RoundedLabel2.text = param1;
         },"_MCZDPetFightConf_RoundedLabel2.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MCZDPetFightConf_RoundedLabel3.text = param1;
         },"_MCZDPetFightConf_RoundedLabel3.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[47];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MCZDPetFightConf_RoundedLabel4.text = param1;
         },"_MCZDPetFightConf_RoundedLabel4.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[48];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MCZDPetFightConf_RoundedLabel5.text = param1;
         },"_MCZDPetFightConf_RoundedLabel5.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_ARENA_U[41];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            okBtn.label = param1;
         },"okBtn.label");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            loadWarn.text = param1;
         },"loadWarn.text");
         result[17] = binding;
         return result;
      }
      
      private function _MCZDPetFightConf_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[0];
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[29];
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Slot.SLOT_PET;
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[28];
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[27];
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[70];
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[44];
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[45];
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[46];
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[47];
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[48];
         _loc1_ = Language.PET_ARENA_U[41];
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[14];
      }
      
      public function reset() : void
      {
         _petArenaData = undefined;
         var _loc1_:int = 5;
         while(_loc1_ < 10)
         {
            this["pf" + _loc1_].cleanView();
            _loc1_++;
         }
      }
      
      public function set petCrossConf(param1:Object) : void
      {
         if(!initialized)
         {
            return;
         }
         if(_petArenaData == undefined)
         {
            loadWarn.visible = true;
            _core.remote.call("getMCZDConf",null);
            setTimeout(removeLoadWarnLabel,3000);
         }
         else
         {
            onGetMCZDConf(_petArenaData);
         }
      }
      
      public function onGetMCZDConf(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Array = null;
         var _loc7_:Object = null;
         loadWarn.visible = false;
         _petArenaData = param1;
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
      
      [Bindable(event="propertyChange")]
      public function get loadWarn() : Label
      {
         return this._1845684364loadWarn;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MCZDPetFightConf = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MCZDPetFightConf_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MCZDPetFightConfWatcherSetupUtil");
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
      
      public function saveConfData(param1:Object) : void
      {
         var _loc2_:Number = Number(param1.pid);
         if(Boolean(_loc2_) && _loc2_ > 0)
         {
            _confDataList[_loc2_] = param1;
         }
      }
      
      public function __okBtn_click(param1:MouseEvent) : void
      {
         subPetConfigure();
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
      
      private function _subPetConfigure() : void
      {
         var _loc3_:MCZDPetConfigCanvas = null;
         var _loc4_:Number = NaN;
         _dataForServer = {};
         var _loc1_:* = 0;
         var _loc2_:int = 5;
         while(_loc2_ < 10)
         {
            _loc3_ = this["pf" + _loc2_];
            if(_loc3_.visible && _loc3_.hasSetted())
            {
               _loc4_ = _loc3_.pid;
               if((Boolean(_loc4_)) && Boolean(_confDataList[_loc4_]))
               {
                  _confDataList[_loc4_].pos = 6;
                  _dataForServer[_loc2_] = _confDataList[_loc4_];
                  _loc1_++;
               }
            }
            _loc2_++;
         }
         if(_loc1_ != 5)
         {
            Alert.show(Language.MCZDPETFIGHT_PANEL_U[56]);
            return;
         }
         if(!ToolKit.isEmptyObject(_dataForServer))
         {
            _core.remote.call("updateMCZDConf",null,_dataForServer);
            if(!_petArenaData)
            {
               _petArenaData = {};
            }
            _petArenaData.conf1 = _dataForServer;
            _petArenaData.cid = _core.cid;
         }
         else
         {
            _core.sysMidNote(Language.MCZDPETFIGHT_PANEL_U[26]);
         }
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
      
      private function removeLoadWarnLabel() : void
      {
         loadWarn.visible = false;
      }
      
      public function ___MCZDPetFightConf_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      public function get pTitle() : BasicTitleCanvas
      {
         return this._1007683640pTitle;
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
      
      public function set okBtn(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._105765600okBtn;
         if(_loc2_ !== param1)
         {
            this._105765600okBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"okBtn",_loc2_,param1));
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
         var elite:* = undefined;
         var func:Function = null;
         var view:Object = _core.view.getUI(ViewManager.PANEL_MCZD);
         if(view)
         {
            elite = view.elite;
            if(elite == true)
            {
               func = function(param1:CloseEvent):void
               {
                  if(param1.detail == Alert.YES)
                  {
                     _subPetConfigure();
                  }
               };
               Alert.show(Language.MCZDPETFIGHT_PANEL_U[69].toString(),"",Alert.YES | Alert.NO,null,func);
            }
            else
            {
               _subPetConfigure();
            }
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
      
      public function getCacheConfData(param1:Number) : Object
      {
         if(_confDataList[param1])
         {
            return _confDataList[param1];
         }
         return null;
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
      public function get pet1() : ItemSlot
      {
         return this._3437298pet1;
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
      public function get pet2() : ItemSlot
      {
         return this._3437299pet2;
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
      
      public function set pf5(param1:MCZDPetConfigCanvas) : void
      {
         var _loc2_:Object = this._110847pf5;
         if(_loc2_ !== param1)
         {
            this._110847pf5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pf5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pf5() : MCZDPetConfigCanvas
      {
         return this._110847pf5;
      }
   }
}

