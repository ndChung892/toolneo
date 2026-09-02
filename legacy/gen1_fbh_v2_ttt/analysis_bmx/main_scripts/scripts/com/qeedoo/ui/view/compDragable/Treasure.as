package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
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
   import mx.controls.CheckBox;
   import mx.controls.Image;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class Treasure extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _109532659slot1:ItemSlot;
      
      private var _109532667slot9:ItemSlot;
      
      private var _899454813slot16:ItemSlot;
      
      private var _912591290hideBtn:BasicGlowButton;
      
      private var _899454817slot12:ItemSlot;
      
      private var _109532664slot6:ItemSlot;
      
      private var tData:Object;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var uic:UIComponent;
      
      private var currentNum:int = 17;
      
      private var treasureSelectEff:Class = Treasure_treasureSelectEff;
      
      private var _109532661slot3:ItemSlot;
      
      private var _958086113fastCheckBox:CheckBox;
      
      private var totalTimes:int = 1;
      
      private var _899454818slot11:ItemSlot;
      
      private var _899454814slot15:ItemSlot;
      
      private var n:int = 17;
      
      private var t:Timer;
      
      private var _1298695779runButton:BasicGlowButton;
      
      private var _109532666slot8:ItemSlot;
      
      private var _core:Core = Core.getInstance();
      
      public var _Treasure_Image1:Image;
      
      mx_internal var _watchers:Array = [];
      
      private var _1603303783takeButton:BasicGlowButton;
      
      private var _109532663slot5:ItemSlot;
      
      private var runFlag:Boolean = false;
      
      private var _899454815slot14:ItemSlot;
      
      private var _899454819slot10:ItemSlot;
      
      private var slotId:Number = -1;
      
      private var _109532660slot2:ItemSlot;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1363002994autoCheckBox:CheckBox;
      
      private var mvc:MovieClip;
      
      private var _109532665slot7:ItemSlot;
      
      private var _1947931397autoNextCheckBox:CheckBox;
      
      private var _899454816slot13:ItemSlot;
      
      mx_internal var _bindings:Array = [];
      
      private var _899454812slot17:ItemSlot;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":271,
               "height":350,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"_Treasure_Image1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":25,
                        "y":30
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":15,
                        "width":50,
                        "height":50,
                        "styleName":"TreasureSlotBackground",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"slot1",
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "solid";
                              this.borderThickness = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "movable":false,
                                 "x":8,
                                 "y":8
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
                        "x":60,
                        "y":15,
                        "width":50,
                        "height":50,
                        "styleName":"TreasureSlotBackground",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"slot2",
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "solid";
                              this.borderThickness = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "movable":false,
                                 "x":8,
                                 "y":8
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
                        "x":110,
                        "y":15,
                        "width":50,
                        "height":50,
                        "styleName":"TreasureSlotBackground",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"slot3",
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "solid";
                              this.borderThickness = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "movable":false,
                                 "x":8,
                                 "y":8
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
                        "x":160,
                        "y":15,
                        "width":50,
                        "height":50,
                        "styleName":"TreasureSlotBackground",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"slot4",
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "solid";
                              this.borderThickness = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "movable":false,
                                 "x":8,
                                 "y":8
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
                        "x":210,
                        "y":15,
                        "width":50,
                        "height":50,
                        "styleName":"TreasureSlotBackground",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"slot5",
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "solid";
                              this.borderThickness = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "movable":false,
                                 "x":8,
                                 "y":8
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
                        "x":210,
                        "y":65,
                        "width":50,
                        "height":50,
                        "styleName":"TreasureSlotBackground",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"slot6",
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "solid";
                              this.borderThickness = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "movable":false,
                                 "x":8,
                                 "y":8
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
                        "x":210,
                        "y":115,
                        "width":50,
                        "height":50,
                        "styleName":"TreasureSlotBackground",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"slot7",
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "solid";
                              this.borderThickness = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "movable":false,
                                 "x":8,
                                 "y":8
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
                        "x":210,
                        "y":165,
                        "width":50,
                        "height":50,
                        "styleName":"TreasureSlotBackground",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"slot8",
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "solid";
                              this.borderThickness = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "movable":false,
                                 "x":8,
                                 "y":8
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
                        "x":210,
                        "y":215,
                        "width":50,
                        "height":50,
                        "styleName":"TreasureSlotBackground",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"slot9",
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "solid";
                              this.borderThickness = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "movable":false,
                                 "x":8,
                                 "y":8
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
                        "x":160,
                        "y":215,
                        "width":50,
                        "height":50,
                        "styleName":"TreasureSlotBackground",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"slot10",
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "solid";
                              this.borderThickness = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "movable":false,
                                 "x":8,
                                 "y":8
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
                        "x":110,
                        "y":215,
                        "width":50,
                        "height":50,
                        "styleName":"TreasureSlotBackground",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"slot11",
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "solid";
                              this.borderThickness = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "movable":false,
                                 "x":8,
                                 "y":8
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
                        "x":60,
                        "y":215,
                        "width":50,
                        "height":50,
                        "styleName":"TreasureSlotBackground",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"slot12",
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "solid";
                              this.borderThickness = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "movable":false,
                                 "x":8,
                                 "y":8
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
                        "x":10,
                        "y":215,
                        "width":50,
                        "height":50,
                        "styleName":"TreasureSlotBackground",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"slot13",
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "solid";
                              this.borderThickness = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "movable":false,
                                 "x":8,
                                 "y":8
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
                        "x":10,
                        "y":165,
                        "width":50,
                        "height":50,
                        "styleName":"TreasureSlotBackground",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"slot14",
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "solid";
                              this.borderThickness = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "movable":false,
                                 "x":8,
                                 "y":8
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
                        "x":10,
                        "y":115,
                        "width":50,
                        "height":50,
                        "styleName":"TreasureSlotBackground",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"slot15",
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "solid";
                              this.borderThickness = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "movable":false,
                                 "x":8,
                                 "y":8
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
                        "x":10,
                        "y":65,
                        "width":50,
                        "height":50,
                        "styleName":"TreasureSlotBackground",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"slot16",
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "solid";
                              this.borderThickness = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "movable":false,
                                 "x":8,
                                 "y":8
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
                        "x":110,
                        "y":115,
                        "width":50,
                        "height":50,
                        "styleName":"TreasureSlotBackground",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"slot17",
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "solid";
                              this.borderThickness = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "movable":false,
                                 "y":8,
                                 "x":8
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"runButton",
                  "events":{"click":"__runButton_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "50";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":208,
                        "y":275,
                        "styleName":"BtnStdGreen",
                        "width":52.2
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"takeButton",
                  "events":{"click":"__takeButton_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "50";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":140,
                        "styleName":"BtnStdRed",
                        "width":52.2
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"hideBtn",
                  "events":{"click":"__hideBtn_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":208,
                        "styleName":"BtnStdRed",
                        "width":52.2
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":CheckBox,
                  "id":"autoNextCheckBox",
                  "stylesFactory":function():void
                  {
                     this.color = 16366965;
                     this.fontSize = 12;
                     this.bottom = "55";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "width":109
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":CheckBox,
                  "id":"autoCheckBox",
                  "stylesFactory":function():void
                  {
                     this.color = 16366965;
                     this.fontSize = 12;
                     this.bottom = "35";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "width":109
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":CheckBox,
                  "id":"fastCheckBox",
                  "stylesFactory":function():void
                  {
                     this.color = 16366965;
                     this.fontSize = 12;
                     this.bottom = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "width":109
                     };
                  }
               })]
            };
         }
      });
      
      private var _109532662slot4:ItemSlot;
      
      public function Treasure()
      {
         super();
         mx_internal::_document = this;
         this.width = 271;
         this.height = 350;
         this.styleName = "PanelTreasure";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         Treasure._watcherSetupUtil = param1;
      }
      
      private function stop(param1:TimerEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:String = null;
         if(currentNum >= 1 && currentNum <= 17)
         {
            this["slot" + currentNum].filters = [];
            this["slot" + currentNum].setStyle("borderColor",0);
         }
         if(currentNum >= 16)
         {
            currentNum = 1;
         }
         else
         {
            ++currentNum;
         }
         this["slot" + currentNum].filters = [GamePredef.FILTER_SHOPSLOT_SELECTED];
         this["slot" + currentNum].setStyle("borderColor",16711680);
         ++totalTimes;
         t.stop();
         t.removeEventListener(TimerEvent.TIMER_COMPLETE,stop);
         if(totalTimes <= 16 + n)
         {
            t = new Timer(totalTimes * 10,1);
            t.addEventListener(TimerEvent.TIMER_COMPLETE,stop);
            t.start();
         }
         else
         {
            this["slot" + n].filters = [GamePredef.FILTER_SLOT_SELECTED];
            mvc = new treasureSelectEff();
            uic = new UIComponent();
            uic.addChild(mvc);
            this["slot" + n].addChild(uic);
            slot17.clean();
            if(ToolKit.isEqual(this["slot" + n].type,10000))
            {
               _loc2_ = Number(this["slot" + n].slotData);
               _loc3_ = Language.GAMEPREDEF_S[53] + ": " + _loc2_;
               this.slot17.type = this["slot" + n].type;
               this.slot17.slotData = this["slot" + n].slotData;
               this.slot17.setIconToolTip(ResManager.ICON_EXP,_loc3_);
            }
            else
            {
               this.slot17.type = this["slot" + n].type;
               this.slot17.giid = this["slot" + n].giid;
               this.slot17.stackNum = this["slot" + n].stackNum;
               this.slot17.slotData = this["slot" + n].slotData;
               this.slot17.slotData.b = this["slot" + n].slotData.b;
            }
            if(autoCheckBox.selected)
            {
               setTimeout(take,1500);
            }
            else
            {
               takeButton.enabled = true;
            }
            hideBtn.enabled = true;
         }
      }
      
      public function set slot8(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532666slot8;
         if(_loc2_ !== param1)
         {
            this._109532666slot8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get autoNextCheckBox() : CheckBox
      {
         return this._1947931397autoNextCheckBox;
      }
      
      private function onTake(param1:Boolean) : void
      {
         if(param1)
         {
            viewClear();
            if(autoNextCheckBox.selected || autoCheckBox.selected || fastCheckBox.selected)
            {
               if(Boolean(this.visible) && Boolean(_core.data.sList) && Boolean(_core.data.sList[slotId]) && ToolKit.isBigThan(_core.data.sList[slotId].stackNum,0))
               {
                  _core.player.useItem(GamePredef.MOUSE_TARGET_CHA,-1,slotId);
               }
               else
               {
                  takeButton.enabled = true;
                  runButton.enabled = true;
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot8() : ItemSlot
      {
         return this._109532666slot8;
      }
      
      private function _Treasure_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = ResManager.TOTEM_TREASURE;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = Slot.SLOT_TREASURE;
         _loc1_ = Language.TREASURE_U[0];
         _loc1_ = Language.TREASURE_U[1];
         _loc1_ = Language.TREASURE_U[3];
         _loc1_ = Language.TREASURE_S[0];
         _loc1_ = Language.TREASURE_S[1];
         _loc1_ = Language.TREASURE_S[2];
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1() : ItemSlot
      {
         return this._109532659slot1;
      }
      
      public function set slot5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532663slot5;
         if(_loc2_ !== param1)
         {
            this._109532663slot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot5",_loc2_,param1));
         }
      }
      
      public function set autoNextCheckBox(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1947931397autoNextCheckBox;
         if(_loc2_ !== param1)
         {
            this._1947931397autoNextCheckBox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"autoNextCheckBox",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot9() : ItemSlot
      {
         return this._109532667slot9;
      }
      
      public function set slot7(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532665slot7;
         if(_loc2_ !== param1)
         {
            this._109532665slot7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot7",_loc2_,param1));
         }
      }
      
      private function updateView() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Number = NaN;
         var _loc3_:String = null;
         if(Boolean(tData) && Boolean(tData.l))
         {
            n = tData.n;
            slotId = tData.si;
            _loc1_ = 1;
            while(_loc1_ <= 17)
            {
               if(Boolean(tData.l[_loc1_]) && Boolean(this["slot" + _loc1_]))
               {
                  if(ToolKit.isEqual(tData.l[_loc1_].ti,10000))
                  {
                     _loc2_ = Number(tData.l[_loc1_].n);
                     if(ToolKit.isEqual(tData.l[_loc1_].ii,1))
                     {
                        _loc2_ = Math.round(GamePredef.BASIC_GET_EXP[_core.player.level] * _loc2_);
                     }
                     _loc3_ = Language.GAMEPREDEF_S[53] + ": " + _loc2_;
                     this["slot" + _loc1_].type = tData.l[_loc1_].ti;
                     this["slot" + _loc1_].slotData = _loc2_;
                     this["slot" + _loc1_].setIconToolTip(ResManager.ICON_EXP,_loc3_);
                  }
                  else
                  {
                     this["slot" + _loc1_].type = tData.l[_loc1_].ti;
                     this["slot" + _loc1_].giid = tData.l[_loc1_].ii;
                     this["slot" + _loc1_].stackNum = tData.l[_loc1_].n;
                     this["slot" + _loc1_].slotData = tData.l[_loc1_];
                     if(ToolKit.isBigThan(tData.b,0))
                     {
                        this["slot" + _loc1_].slotData.b = 1;
                     }
                  }
               }
               _loc1_++;
            }
            slot17.setStyle("borderColor",16711680);
            if(fastCheckBox.selected)
            {
               slot17.setStyle("borderColor",0);
               this["slot" + n].setStyle("borderColor",16711680);
               runFlag = true;
               takeButton.enabled = false;
               setTimeout(take,3000);
            }
            else if(autoCheckBox.selected)
            {
               run();
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot4() : ItemSlot
      {
         return this._109532662slot4;
      }
      
      [Bindable(event="propertyChange")]
      public function get fastCheckBox() : CheckBox
      {
         return this._958086113fastCheckBox;
      }
      
      public function set slot9(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532667slot9;
         if(_loc2_ !== param1)
         {
            this._109532667slot9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot9",_loc2_,param1));
         }
      }
      
      public function set takeButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1603303783takeButton;
         if(_loc2_ !== param1)
         {
            this._1603303783takeButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"takeButton",_loc2_,param1));
         }
      }
      
      public function set slot11(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454818slot11;
         if(_loc2_ !== param1)
         {
            this._899454818slot11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot11",_loc2_,param1));
         }
      }
      
      public function set slot13(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454816slot13;
         if(_loc2_ !== param1)
         {
            this._899454816slot13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot13",_loc2_,param1));
         }
      }
      
      public function __takeButton_click(param1:MouseEvent) : void
      {
         take();
      }
      
      public function set slot15(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454814slot15;
         if(_loc2_ !== param1)
         {
            this._899454814slot15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot15",_loc2_,param1));
         }
      }
      
      private function _Treasure_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return ResManager.TOTEM_TREASURE;
         },function(param1:Object):void
         {
            _Treasure_Image1.source = param1;
         },"_Treasure_Image1.source");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            slot1.slotType = param1;
         },"slot1.slotType");
         result[1] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            slot2.slotType = param1;
         },"slot2.slotType");
         result[2] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            slot3.slotType = param1;
         },"slot3.slotType");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            slot4.slotType = param1;
         },"slot4.slotType");
         result[4] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            slot5.slotType = param1;
         },"slot5.slotType");
         result[5] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            slot6.slotType = param1;
         },"slot6.slotType");
         result[6] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            slot7.slotType = param1;
         },"slot7.slotType");
         result[7] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            slot8.slotType = param1;
         },"slot8.slotType");
         result[8] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            slot9.slotType = param1;
         },"slot9.slotType");
         result[9] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            slot10.slotType = param1;
         },"slot10.slotType");
         result[10] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            slot11.slotType = param1;
         },"slot11.slotType");
         result[11] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            slot12.slotType = param1;
         },"slot12.slotType");
         result[12] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            slot13.slotType = param1;
         },"slot13.slotType");
         result[13] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            slot14.slotType = param1;
         },"slot14.slotType");
         result[14] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            slot15.slotType = param1;
         },"slot15.slotType");
         result[15] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            slot16.slotType = param1;
         },"slot16.slotType");
         result[16] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            slot17.slotType = param1;
         },"slot17.slotType");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            runButton.label = param1;
         },"runButton.label");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            takeButton.label = param1;
         },"takeButton.label");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            hideBtn.label = param1;
         },"hideBtn.label");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            autoNextCheckBox.label = param1;
         },"autoNextCheckBox.label");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_S[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            autoCheckBox.label = param1;
         },"autoCheckBox.label");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_S[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            fastCheckBox.label = param1;
         },"fastCheckBox.label");
         result[23] = binding;
         return result;
      }
      
      public function set slot17(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454812slot17;
         if(_loc2_ !== param1)
         {
            this._899454812slot17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot17",_loc2_,param1));
         }
      }
      
      override public function hide() : void
      {
         if(!visible)
         {
            return;
         }
         autoNextCheckBox.selected = false;
         autoCheckBox.selected = false;
         fastCheckBox.selected = false;
         take();
         super.hide();
      }
      
      public function set slot14(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454815slot14;
         if(_loc2_ !== param1)
         {
            this._899454815slot14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot14",_loc2_,param1));
         }
      }
      
      public function set runButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1298695779runButton;
         if(_loc2_ !== param1)
         {
            this._1298695779runButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"runButton",_loc2_,param1));
         }
      }
      
      public function set fastCheckBox(param1:CheckBox) : void
      {
         var _loc2_:Object = this._958086113fastCheckBox;
         if(_loc2_ !== param1)
         {
            this._958086113fastCheckBox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fastCheckBox",_loc2_,param1));
         }
      }
      
      public function set slot10(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454819slot10;
         if(_loc2_ !== param1)
         {
            this._899454819slot10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot10",_loc2_,param1));
         }
      }
      
      public function set slot12(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454817slot12;
         if(_loc2_ !== param1)
         {
            this._899454817slot12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot12",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get autoCheckBox() : CheckBox
      {
         return this._1363002994autoCheckBox;
      }
      
      public function set slot16(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._899454813slot16;
         if(_loc2_ !== param1)
         {
            this._899454813slot16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot16",_loc2_,param1));
         }
      }
      
      public function set hideBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._912591290hideBtn;
         if(_loc2_ !== param1)
         {
            this._912591290hideBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hideBtn",_loc2_,param1));
         }
      }
      
      public function __runButton_click(param1:MouseEvent) : void
      {
         run();
      }
      
      private function run() : void
      {
         if(Boolean(slot1) && Boolean(slot1.slotData))
         {
            t = new Timer(10,1);
            t.addEventListener(TimerEvent.TIMER_COMPLETE,stop);
            t.start();
            runFlag = true;
            runButton.enabled = false;
            takeButton.enabled = false;
            hideBtn.enabled = false;
         }
      }
      
      private function take() : void
      {
         if(Boolean(this["slot" + n]) && Boolean(this["slot" + n].slotData))
         {
            if(Boolean(uic) && Boolean(mvc) && uic.getChildIndex(mvc) >= 0)
            {
               uic.removeChild(mvc);
               mvc = null;
            }
            if(Boolean(uic) && this["slot" + n].getChildIndex(uic) >= 0)
            {
               this["slot" + n].removeChild(uic);
               uic = null;
            }
            _core.remote.call("treasureTake",new Responder(onTake),runFlag);
            takeButton.enabled = false;
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Treasure = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _Treasure_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_TreasureWatcherSetupUtil");
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
      
      public function useFlag() : Boolean
      {
         if(Boolean(visible) && Boolean(tData) && Boolean(tData.l))
         {
            return true;
         }
         return false;
      }
      
      [Bindable(event="propertyChange")]
      public function get takeButton() : BasicGlowButton
      {
         return this._1603303783takeButton;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot12() : ItemSlot
      {
         return this._899454817slot12;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot13() : ItemSlot
      {
         return this._899454816slot13;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot14() : ItemSlot
      {
         return this._899454815slot14;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot15() : ItemSlot
      {
         return this._899454814slot15;
      }
      
      private function viewClear() : void
      {
         tData = null;
         currentNum = 17;
         n = 17;
         runFlag = false;
         totalTimes = 1;
         var _loc1_:int = 1;
         while(_loc1_ <= 17)
         {
            this["slot" + _loc1_].clean();
            this["slot" + _loc1_].filters = [];
            this["slot" + _loc1_].setStyle("borderColor",0);
            _loc1_++;
         }
         if(!autoCheckBox.selected && !fastCheckBox.selected)
         {
            takeButton.enabled = true;
            runButton.enabled = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot17() : ItemSlot
      {
         return this._899454812slot17;
      }
      
      [Bindable(event="propertyChange")]
      public function get runButton() : BasicGlowButton
      {
         return this._1298695779runButton;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot11() : ItemSlot
      {
         return this._899454818slot11;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot16() : ItemSlot
      {
         return this._899454813slot16;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot10() : ItemSlot
      {
         return this._899454819slot10;
      }
      
      public function onTs(param1:Object) : void
      {
         tData = param1;
         visible = true;
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         updateView();
      }
      
      [Bindable(event="propertyChange")]
      public function get hideBtn() : BasicGlowButton
      {
         return this._912591290hideBtn;
      }
      
      override public function initView() : void
      {
         updateView();
      }
      
      public function __hideBtn_click(param1:MouseEvent) : void
      {
         hide();
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(!param1)
         {
            viewClear();
         }
         super.visible = param1;
      }
      
      public function set slot1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532659slot1;
         if(_loc2_ !== param1)
         {
            this._109532659slot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1",_loc2_,param1));
         }
      }
      
      public function set slot2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532660slot2;
         if(_loc2_ !== param1)
         {
            this._109532660slot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2",_loc2_,param1));
         }
      }
      
      public function set slot6(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532664slot6;
         if(_loc2_ !== param1)
         {
            this._109532664slot6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot6",_loc2_,param1));
         }
      }
      
      public function set slot3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._109532661slot3;
         if(_loc2_ !== param1)
         {
            this._109532661slot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot3",_loc2_,param1));
         }
      }
      
      public function set autoCheckBox(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1363002994autoCheckBox;
         if(_loc2_ !== param1)
         {
            this._1363002994autoCheckBox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"autoCheckBox",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2() : ItemSlot
      {
         return this._109532660slot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot3() : ItemSlot
      {
         return this._109532661slot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot5() : ItemSlot
      {
         return this._109532663slot5;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot6() : ItemSlot
      {
         return this._109532664slot6;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot7() : ItemSlot
      {
         return this._109532665slot7;
      }
      
      public function set slot4(param1:ItemSlot) : void
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

