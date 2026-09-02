package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlotCreature;
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
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.containers.Tile;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SmallGameHideSeekPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const SMALL_GAME_PET_TOTAL_NUM:int = 18;
      
      private static const SMALL_GAME_PET_NUM:int = 6;
      
      private static const SMALL_GAME_MAX_TIMES:int = 8;
      
      private static const SMALL_GAME_ADD_TIME_COST:int = 5;
      
      private var _1604394437idSysPet2:ItemSlotCreature;
      
      private var _896883712idTodayTimes:BasicTxtButton;
      
      private var _463521703idLostTimes:BasicTxtButton;
      
      private var _1194070353idPet3:ItemSlotCreature;
      
      private var _1604394439idSysPet4:ItemSlotCreature;
      
      private var _1638524714idPet17:ItemSlotCreature;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1194070347idPet9:ItemSlotCreature;
      
      private var _1194070350idPet6:ItemSlotCreature;
      
      private var playTimes:int = 0;
      
      private var _core:Core = Core.getInstance();
      
      public var _SmallGameHideSeekPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var lostTimes:int = 0;
      
      private var _1638524712idPet15:ItemSlotCreature;
      
      private var _petIcons:ArrayCollection = new ArrayCollection();
      
      private var winOrLost:Boolean = false;
      
      private var _1194070355idPet1:ItemSlotCreature;
      
      private var _1638524708idPet11:ItemSlotCreature;
      
      private var playTotalTimes:int = 3;
      
      private var _1032734937idSetPet1:ItemSlotCreature;
      
      private var _1638524710idPet13:ItemSlotCreature;
      
      private var _1032734941idSetPet5:ItemSlotCreature;
      
      private var winTimes:int = 0;
      
      private var _1604394436idSysPet1:ItemSlotCreature;
      
      private var _1194070349idPet7:ItemSlotCreature;
      
      private var _1604394440idSysPet5:ItemSlotCreature;
      
      private var _1194070352idPet4:ItemSlotCreature;
      
      private var _1032734939idSetPet3:ItemSlotCreature;
      
      private var _1604394438idSysPet3:ItemSlotCreature;
      
      private var _petLists:ArrayCollection = new ArrayCollection();
      
      private var _1443719346idSaveGameBtn:Button;
      
      private var _1638524715idPet18:ItemSlotCreature;
      
      private var _581600507idWinTimes:BasicTxtButton;
      
      private var _petSysLists:ArrayCollection = new ArrayCollection();
      
      private var handler:int = 0;
      
      public var _SmallGameHideSeekPanel_Button1:Button;
      
      private var _985338109idStartGameBtn:Button;
      
      private var _1638524713idPet16:ItemSlotCreature;
      
      private var _1194070354idPet2:ItemSlotCreature;
      
      private var _1404615706idGetAwardBtn:Button;
      
      private var _1638524709idPet12:ItemSlotCreature;
      
      mx_internal var _watchers:Array = [];
      
      private var _1194070348idPet8:ItemSlotCreature;
      
      private var _1638524711idPet14:ItemSlotCreature;
      
      private var _1032734940idSetPet4:ItemSlotCreature;
      
      private var isPlaying:Boolean = false;
      
      private var _1194070351idPet5:ItemSlotCreature;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1638524707idPet10:ItemSlotCreature;
      
      private var _1032734938idSetPet2:ItemSlotCreature;
      
      private var _1032734942idSetPet6:ItemSlotCreature;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":470,
               "height":350,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_SmallGameHideSeekPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":40,
                        "width":280,
                        "height":110,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Tile,
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":10,
                                 "width":246,
                                 "height":36,
                                 "direction":"horizontal",
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idSysPet1",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"enabled":false};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idSysPet2",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"enabled":false};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idSysPet3",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"enabled":false};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idSysPet4",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"enabled":false};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idSysPet5",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"enabled":false};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idSysPet6",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"enabled":false};
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
                                 "x":0,
                                 "y":60,
                                 "width":246,
                                 "height":36,
                                 "direction":"horizontal",
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idSetPet1",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idSetPet2",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idSetPet3",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idSetPet4",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idSetPet5",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idSetPet6",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 })]
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
                        "x":21,
                        "y":160,
                        "width":260,
                        "height":135,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Tile,
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":10,
                                 "width":246,
                                 "height":36,
                                 "direction":"horizontal",
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idPet1",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"sourceGroup":true};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idPet2",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"sourceGroup":true};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idPet3",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"sourceGroup":true};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idPet4",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"sourceGroup":true};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idPet5",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"sourceGroup":true};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idPet6",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"sourceGroup":true};
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
                                 "x":0,
                                 "y":50,
                                 "width":246,
                                 "height":36,
                                 "direction":"horizontal",
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idPet7",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"sourceGroup":true};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idPet8",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"sourceGroup":true};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idPet9",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"sourceGroup":true};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idPet10",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"sourceGroup":true};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idPet11",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"sourceGroup":true};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idPet12",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"sourceGroup":true};
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
                                 "x":0,
                                 "y":90,
                                 "width":246,
                                 "height":36,
                                 "direction":"horizontal",
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idPet13",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"sourceGroup":true};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idPet14",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"sourceGroup":true};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idPet15",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"sourceGroup":true};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idPet16",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"sourceGroup":true};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idPet17",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"sourceGroup":true};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotCreature,
                                    "id":"idPet18",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"sourceGroup":true};
                                    }
                                 })]
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
                        "x":299,
                        "y":39,
                        "width":160,
                        "height":256,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":15,
                                 "y":15,
                                 "width":130,
                                 "height":50,
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"idTodayTimes",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                       this.fontSize = 14;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":15,
                                          "width":100
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"_SmallGameHideSeekPanel_Button1",
                           "events":{"click":"___SmallGameHideSeekPanel_Button1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdRed",
                                 "x":40,
                                 "y":89,
                                 "width":80
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":15,
                                 "y":150,
                                 "width":130,
                                 "height":68,
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"idWinTimes",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                       this.fontSize = 14;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":15,
                                          "width":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"idLostTimes",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                       this.fontSize = 14;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":36,
                                          "width":100
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"idGetAwardBtn",
                           "events":{"click":"__idGetAwardBtn_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "enabled":false,
                                 "styleName":"BtnStdRed",
                                 "x":40,
                                 "y":226
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"idStartGameBtn",
                  "events":{"click":"__idStartGameBtn_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "enabled":false,
                        "styleName":"BtnStdRed",
                        "x":81,
                        "y":311,
                        "width":80
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"idSaveGameBtn",
                  "events":{"click":"__idSaveGameBtn_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "enabled":false,
                        "styleName":"BtnStdRed",
                        "x":169,
                        "y":311,
                        "width":80
                     };
                  }
               })]
            };
         }
      });
      
      private var _petDisplayIcons:ArrayCollection = new ArrayCollection();
      
      private var _1604394441idSysPet6:ItemSlotCreature;
      
      public function SmallGameHideSeekPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 470;
         this.height = 350;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___SmallGameHideSeekPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SmallGameHideSeekPanel._watcherSetupUtil = param1;
      }
      
      private function _SmallGameHideSeekPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SMALL_GAME_P[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SmallGameHideSeekPanel_BasicTitleCanvas1.text = param1;
         },"_SmallGameHideSeekPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idSysPet1.slotType = param1;
         },"idSysPet1.slotType");
         result[1] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idSysPet2.slotType = param1;
         },"idSysPet2.slotType");
         result[2] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idSysPet3.slotType = param1;
         },"idSysPet3.slotType");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idSysPet4.slotType = param1;
         },"idSysPet4.slotType");
         result[4] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idSysPet5.slotType = param1;
         },"idSysPet5.slotType");
         result[5] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idSysPet6.slotType = param1;
         },"idSysPet6.slotType");
         result[6] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idSetPet1.slotType = param1;
         },"idSetPet1.slotType");
         result[7] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idSetPet2.slotType = param1;
         },"idSetPet2.slotType");
         result[8] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idSetPet3.slotType = param1;
         },"idSetPet3.slotType");
         result[9] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idSetPet4.slotType = param1;
         },"idSetPet4.slotType");
         result[10] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idSetPet5.slotType = param1;
         },"idSetPet5.slotType");
         result[11] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idSetPet6.slotType = param1;
         },"idSetPet6.slotType");
         result[12] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idPet1.slotType = param1;
         },"idPet1.slotType");
         result[13] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idPet2.slotType = param1;
         },"idPet2.slotType");
         result[14] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idPet3.slotType = param1;
         },"idPet3.slotType");
         result[15] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idPet4.slotType = param1;
         },"idPet4.slotType");
         result[16] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idPet5.slotType = param1;
         },"idPet5.slotType");
         result[17] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idPet6.slotType = param1;
         },"idPet6.slotType");
         result[18] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idPet7.slotType = param1;
         },"idPet7.slotType");
         result[19] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idPet8.slotType = param1;
         },"idPet8.slotType");
         result[20] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idPet9.slotType = param1;
         },"idPet9.slotType");
         result[21] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idPet10.slotType = param1;
         },"idPet10.slotType");
         result[22] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idPet11.slotType = param1;
         },"idPet11.slotType");
         result[23] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idPet12.slotType = param1;
         },"idPet12.slotType");
         result[24] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idPet13.slotType = param1;
         },"idPet13.slotType");
         result[25] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idPet14.slotType = param1;
         },"idPet14.slotType");
         result[26] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idPet15.slotType = param1;
         },"idPet15.slotType");
         result[27] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idPet16.slotType = param1;
         },"idPet16.slotType");
         result[28] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idPet17.slotType = param1;
         },"idPet17.slotType");
         result[29] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_CREATURE;
         },function(param1:int):void
         {
            idPet18.slotType = param1;
         },"idPet18.slotType");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SMALL_GAME_P[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idTodayTimes.text = param1;
         },"idTodayTimes.text");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SMALL_GAME_P[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SmallGameHideSeekPanel_Button1.label = param1;
         },"_SmallGameHideSeekPanel_Button1.label");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SMALL_GAME_P[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idWinTimes.text = param1;
         },"idWinTimes.text");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SMALL_GAME_P[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idLostTimes.text = param1;
         },"idLostTimes.text");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SMALL_GAME_P[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idGetAwardBtn.label = param1;
         },"idGetAwardBtn.label");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SMALL_GAME_P[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idStartGameBtn.label = param1;
         },"idStartGameBtn.label");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SMALL_GAME_P[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            idSaveGameBtn.label = param1;
         },"idSaveGameBtn.label");
         result[37] = binding;
         return result;
      }
      
      public function set idStartGameBtn(param1:Button) : void
      {
         var _loc2_:Object = this._985338109idStartGameBtn;
         if(_loc2_ !== param1)
         {
            this._985338109idStartGameBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idStartGameBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idTodayTimes() : BasicTxtButton
      {
         return this._896883712idTodayTimes;
      }
      
      private function _SmallGameHideSeekPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SMALL_GAME_P[1];
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Slot.SLOT_CREATURE;
         _loc1_ = Language.SMALL_GAME_P[4];
         _loc1_ = Language.SMALL_GAME_P[7];
         _loc1_ = Language.SMALL_GAME_P[5];
         _loc1_ = Language.SMALL_GAME_P[6];
         _loc1_ = Language.SMALL_GAME_P[10];
         _loc1_ = Language.SMALL_GAME_P[8];
         _loc1_ = Language.SMALL_GAME_P[9];
      }
      
      public function set idWinTimes(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._581600507idWinTimes;
         if(_loc2_ !== param1)
         {
            this._581600507idWinTimes = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idWinTimes",_loc2_,param1));
         }
      }
      
      public function onSaveGame(param1:Object) : void
      {
         var _loc2_:String = param1.flag ? Language.SMALL_GAME_P[13] : Language.SMALL_GAME_P[14];
         winOrLost = param1.flag ? true : false;
         if(!winOrLost)
         {
            idGetAwardBtn.label = Language.SMALL_GAME_P[11];
         }
         idGetAwardBtn.enabled = true;
         _core.sysMsg(_loc2_);
      }
      
      public function set idTodayTimes(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._896883712idTodayTimes;
         if(_loc2_ !== param1)
         {
            this._896883712idTodayTimes = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idTodayTimes",_loc2_,param1));
         }
      }
      
      private function setDefaultGame() : void
      {
         _petDisplayIcons = new ArrayCollection();
         resetSysReflushPet();
         idGetAwardBtn.enabled = false;
         idGetAwardBtn.label = Language.SMALL_GAME_P[10];
      }
      
      [Bindable(event="propertyChange")]
      public function get idGetAwardBtn() : Button
      {
         return this._1404615706idGetAwardBtn;
      }
      
      public function set idGetAwardBtn(param1:Button) : void
      {
         var _loc2_:Object = this._1404615706idGetAwardBtn;
         if(_loc2_ !== param1)
         {
            this._1404615706idGetAwardBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idGetAwardBtn",_loc2_,param1));
         }
      }
      
      public function set idPet10(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1638524707idPet10;
         if(_loc2_ !== param1)
         {
            this._1638524707idPet10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idPet10",_loc2_,param1));
         }
      }
      
      public function set idPet11(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1638524708idPet11;
         if(_loc2_ !== param1)
         {
            this._1638524708idPet11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idPet11",_loc2_,param1));
         }
      }
      
      private function resetSysReflushPet() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= SMALL_GAME_PET_NUM)
         {
            this["idSysPet" + _loc1_].clean();
            this["idSysPet" + _loc1_].enabled = false;
            _loc1_++;
         }
      }
      
      public function set idPet14(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1638524711idPet14;
         if(_loc2_ !== param1)
         {
            this._1638524711idPet14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idPet14",_loc2_,param1));
         }
      }
      
      public function set idPet15(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1638524712idPet15;
         if(_loc2_ !== param1)
         {
            this._1638524712idPet15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idPet15",_loc2_,param1));
         }
      }
      
      public function set idPet12(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1638524709idPet12;
         if(_loc2_ !== param1)
         {
            this._1638524709idPet12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idPet12",_loc2_,param1));
         }
      }
      
      public function set idPet16(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1638524713idPet16;
         if(_loc2_ !== param1)
         {
            this._1638524713idPet16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idPet16",_loc2_,param1));
         }
      }
      
      private function getPetDataFromPetLists(param1:Number) : Object
      {
         var _loc2_:String = null;
         for(_loc2_ in _petLists)
         {
            if(Number(_loc2_) == param1)
            {
               return _petLists[_loc2_];
            }
         }
         return null;
      }
      
      public function set idPet17(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1638524714idPet17;
         if(_loc2_ !== param1)
         {
            this._1638524714idPet17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idPet17",_loc2_,param1));
         }
      }
      
      public function set idPet18(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1638524715idPet18;
         if(_loc2_ !== param1)
         {
            this._1638524715idPet18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idPet18",_loc2_,param1));
         }
      }
      
      public function set idPet13(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1638524710idPet13;
         if(_loc2_ !== param1)
         {
            this._1638524710idPet13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idPet13",_loc2_,param1));
         }
      }
      
      public function ___SmallGameHideSeekPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function onAddPlayTime(param1:Boolean) : void
      {
         if(!param1)
         {
            --playTotalTimes;
         }
         resetPlayData();
         checkGameStartBtn();
      }
      
      [Bindable(event="propertyChange")]
      public function get idPet1() : ItemSlotCreature
      {
         return this._1194070355idPet1;
      }
      
      [Bindable(event="propertyChange")]
      public function get idPet2() : ItemSlotCreature
      {
         return this._1194070354idPet2;
      }
      
      [Bindable(event="propertyChange")]
      public function get idPet3() : ItemSlotCreature
      {
         return this._1194070353idPet3;
      }
      
      [Bindable(event="propertyChange")]
      public function get idPet4() : ItemSlotCreature
      {
         return this._1194070352idPet4;
      }
      
      [Bindable(event="propertyChange")]
      public function get idPet6() : ItemSlotCreature
      {
         return this._1194070350idPet6;
      }
      
      [Bindable(event="propertyChange")]
      public function get idPet8() : ItemSlotCreature
      {
         return this._1194070348idPet8;
      }
      
      [Bindable(event="propertyChange")]
      public function get idPet9() : ItemSlotCreature
      {
         return this._1194070347idPet9;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSaveGameBtn() : Button
      {
         return this._1443719346idSaveGameBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get idPet7() : ItemSlotCreature
      {
         return this._1194070349idPet7;
      }
      
      [Bindable(event="propertyChange")]
      public function get idPet5() : ItemSlotCreature
      {
         return this._1194070351idPet5;
      }
      
      public function initPanel() : void
      {
         if(!initialized)
         {
            _core.player.normalView.pause();
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         callLater(_core.player.normalView.resume);
         isPlaying = false;
         winOrLost = false;
         initPetList();
         _core.remote.call("getSmallGameStatus",new Responder(onGetSmallGameStatus),"hideAndSeek");
      }
      
      [Bindable(event="propertyChange")]
      public function get idSetPet1() : ItemSlotCreature
      {
         return this._1032734937idSetPet1;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSetPet2() : ItemSlotCreature
      {
         return this._1032734938idSetPet2;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSetPet3() : ItemSlotCreature
      {
         return this._1032734939idSetPet3;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSetPet5() : ItemSlotCreature
      {
         return this._1032734941idSetPet5;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSetPet4() : ItemSlotCreature
      {
         return this._1032734940idSetPet4;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSetPet6() : ItemSlotCreature
      {
         return this._1032734942idSetPet6;
      }
      
      public function onGetSmallGameStatus(param1:Object) : void
      {
         var _loc2_:int = 0;
         if(param1.state)
         {
            playTimes = param1.playTimes;
            playTotalTimes = param1.playTotalTimes;
            winTimes = param1.winTimes;
            lostTimes = param1.lostTimes;
            _loc2_ = int(param1.awardFlag);
            resetPlayData();
            checkGameStartBtn();
            if(Boolean(winTimes) && winTimes > _loc2_)
            {
               idStartGameBtn.enabled = false;
            }
            if(idStartGameBtn.enabled)
            {
               idGetAwardBtn.enabled = false;
            }
            if(param1.winTimes > param1.awardFlag || !idStartGameBtn.enabled && !idSaveGameBtn.enabled)
            {
               idGetAwardBtn.enabled = true;
               idGetAwardBtn.label = param1.winTimes > param1.awardFlag ? Language.SMALL_GAME_P[10] : Language.SMALL_GAME_P[11];
               if(param1.winTimes > param1.awardFlag)
               {
                  winOrLost = true;
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idStartGameBtn() : Button
      {
         return this._985338109idStartGameBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get idWinTimes() : BasicTxtButton
      {
         return this._581600507idWinTimes;
      }
      
      private function saveGame() : void
      {
         var _loc1_:Boolean = comparePet();
         ++playTimes;
         if(_loc1_)
         {
            ++winTimes;
         }
         else
         {
            ++lostTimes;
         }
         resetPlayData();
         showSysReflushPet();
         _core.remote.call("saveSmallGame",new Responder(onSaveGame),"hideAndSeek",_loc1_);
         idSaveGameBtn.enabled = false;
      }
      
      private function init() : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get idPet10() : ItemSlotCreature
      {
         return this._1638524707idPet10;
      }
      
      [Bindable(event="propertyChange")]
      public function get idPet11() : ItemSlotCreature
      {
         return this._1638524708idPet11;
      }
      
      [Bindable(event="propertyChange")]
      public function get idPet12() : ItemSlotCreature
      {
         return this._1638524709idPet12;
      }
      
      [Bindable(event="propertyChange")]
      public function get idPet14() : ItemSlotCreature
      {
         return this._1638524711idPet14;
      }
      
      [Bindable(event="propertyChange")]
      public function get idPet15() : ItemSlotCreature
      {
         return this._1638524712idPet15;
      }
      
      [Bindable(event="propertyChange")]
      public function get idPet16() : ItemSlotCreature
      {
         return this._1638524713idPet16;
      }
      
      [Bindable(event="propertyChange")]
      public function get idPet17() : ItemSlotCreature
      {
         return this._1638524714idPet17;
      }
      
      [Bindable(event="propertyChange")]
      public function get idPet18() : ItemSlotCreature
      {
         return this._1638524715idPet18;
      }
      
      public function __idStartGameBtn_click(param1:MouseEvent) : void
      {
         startGame();
      }
      
      [Bindable(event="propertyChange")]
      public function get idPet13() : ItemSlotCreature
      {
         return this._1638524710idPet13;
      }
      
      public function __idGetAwardBtn_click(param1:MouseEvent) : void
      {
         getAwardAndReset();
      }
      
      private function initPetList() : void
      {
         idSaveGameBtn.enabled = false;
         _petIcons = new ArrayCollection();
         _petLists = new ArrayCollection();
         _petSysLists = new ArrayCollection();
         _petDisplayIcons = new ArrayCollection();
         var _loc1_:Object = new Object();
         var _loc2_:int = 1;
         while(_loc2_ <= SMALL_GAME_PET_TOTAL_NUM)
         {
            _loc1_ = getUniqueRandPet();
            _loc1_.type = GamePredef.TBL_CREATURE;
            _loc1_.itemId = _loc1_.id;
            _petLists.addItem(_loc1_);
            this["idPet" + _loc2_].type = GamePredef.TBL_CREATURE;
            this["idPet" + _loc2_].giid = _loc1_.id;
            this["idPet" + _loc2_].slotData = _loc1_;
            this["idPet" + _loc2_].stackNum = 1;
            _loc2_++;
         }
      }
      
      public function set idLostTimes(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._463521703idLostTimes;
         if(_loc2_ !== param1)
         {
            this._463521703idLostTimes = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idLostTimes",_loc2_,param1));
         }
      }
      
      public function set idPet1(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1194070355idPet1;
         if(_loc2_ !== param1)
         {
            this._1194070355idPet1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idPet1",_loc2_,param1));
         }
      }
      
      public function set idPet4(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1194070352idPet4;
         if(_loc2_ !== param1)
         {
            this._1194070352idPet4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idPet4",_loc2_,param1));
         }
      }
      
      public function set idPet2(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1194070354idPet2;
         if(_loc2_ !== param1)
         {
            this._1194070354idPet2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idPet2",_loc2_,param1));
         }
      }
      
      public function set idPet6(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1194070350idPet6;
         if(_loc2_ !== param1)
         {
            this._1194070350idPet6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idPet6",_loc2_,param1));
         }
      }
      
      private function showSysReflushPet() : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc1_:int = 0;
         while(_loc1_ < SMALL_GAME_PET_NUM)
         {
            _loc2_ = _petSysLists[_loc1_];
            _loc3_ = _loc1_ + 1;
            this["idSysPet" + _loc3_].type = GamePredef.TBL_CREATURE;
            this["idSysPet" + _loc3_].giid = _loc2_.id;
            this["idSysPet" + _loc3_].slotData = _loc2_;
            this["idSysPet" + _loc3_].stackNum = 1;
            this["idSysPet" + _loc3_].enabled = true;
            _loc1_++;
         }
      }
      
      public function set idPet8(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1194070348idPet8;
         if(_loc2_ !== param1)
         {
            this._1194070348idPet8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idPet8",_loc2_,param1));
         }
      }
      
      public function set idPet9(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1194070347idPet9;
         if(_loc2_ !== param1)
         {
            this._1194070347idPet9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idPet9",_loc2_,param1));
         }
      }
      
      public function set idSaveGameBtn(param1:Button) : void
      {
         var _loc2_:Object = this._1443719346idSaveGameBtn;
         if(_loc2_ !== param1)
         {
            this._1443719346idSaveGameBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSaveGameBtn",_loc2_,param1));
         }
      }
      
      public function set idPet7(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1194070349idPet7;
         if(_loc2_ !== param1)
         {
            this._1194070349idPet7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idPet7",_loc2_,param1));
         }
      }
      
      private function startGame() : void
      {
         var _loc1_:Object = null;
         var _loc2_:int = 0;
         if(playTimes < playTotalTimes && !isPlaying)
         {
            isPlaying = true;
            _petSysLists = new ArrayCollection();
            handler = setTimeout(resetSysReflushPet,3000);
            _loc1_ = new Object();
            _loc2_ = 1;
            while(_loc2_ <= SMALL_GAME_PET_NUM)
            {
               _loc1_ = getUniqueRandDisplayPet();
               _petSysLists.addItem(_loc1_);
               _loc2_++;
            }
            showSysReflushPet();
            idGetAwardBtn.enabled = false;
            idStartGameBtn.enabled = false;
            idSaveGameBtn.enabled = true;
         }
         else
         {
            _core.sysMsg(Language.SMALL_GAME_P[24]);
         }
      }
      
      public function set idPet3(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1194070353idPet3;
         if(_loc2_ !== param1)
         {
            this._1194070353idPet3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idPet3",_loc2_,param1));
         }
      }
      
      public function set idPet5(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1194070351idPet5;
         if(_loc2_ !== param1)
         {
            this._1194070351idPet5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idPet5",_loc2_,param1));
         }
      }
      
      public function onGetAwardAndReset(param1:Boolean) : void
      {
         if(!param1)
         {
            playTimes = winTimes + lostTimes;
         }
         setDefaultGame();
         resetSysReflushPet();
         resetUserSetPet();
         idGetAwardBtn.enabled = false;
         idStartGameBtn.enabled = true;
         isPlaying = false;
      }
      
      private function getAwardAndReset() : void
      {
         if(handler)
         {
            clearTimeout(handler);
            handler = 0;
         }
         if(winOrLost)
         {
            _core.remote.call("getSmallGameAward",new Responder(onGetAwardAndReset),"hideAndSeek");
         }
         else
         {
            onGetAwardAndReset(true);
         }
      }
      
      private function resetPlayData() : void
      {
         idTodayTimes.text = Language.SMALL_GAME_P[4] + playTimes + "/" + playTotalTimes;
         idWinTimes.text = Language.SMALL_GAME_P[5] + winTimes;
         idLostTimes.text = Language.SMALL_GAME_P[6] + lostTimes;
      }
      
      public function set idSysPet1(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1604394436idSysPet1;
         if(_loc2_ !== param1)
         {
            this._1604394436idSysPet1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSysPet1",_loc2_,param1));
         }
      }
      
      public function set idSysPet2(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1604394437idSysPet2;
         if(_loc2_ !== param1)
         {
            this._1604394437idSysPet2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSysPet2",_loc2_,param1));
         }
      }
      
      public function set idSysPet3(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1604394438idSysPet3;
         if(_loc2_ !== param1)
         {
            this._1604394438idSysPet3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSysPet3",_loc2_,param1));
         }
      }
      
      public function set idSysPet4(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1604394439idSysPet4;
         if(_loc2_ !== param1)
         {
            this._1604394439idSysPet4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSysPet4",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SmallGameHideSeekPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SmallGameHideSeekPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_SmallGameHideSeekPanelWatcherSetupUtil");
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
      
      public function set idSysPet6(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1604394441idSysPet6;
         if(_loc2_ !== param1)
         {
            this._1604394441idSysPet6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSysPet6",_loc2_,param1));
         }
      }
      
      public function set idSysPet5(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1604394440idSysPet5;
         if(_loc2_ !== param1)
         {
            this._1604394440idSysPet5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSysPet5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idLostTimes() : BasicTxtButton
      {
         return this._463521703idLostTimes;
      }
      
      private function getUniqueRandDisplayPet() : Object
      {
         var _loc3_:Object = null;
         var _loc1_:Number = Math.round(ToolKit.genRangeRandom(1,SMALL_GAME_PET_TOTAL_NUM));
         var _loc2_:Object = getPetDataFromPetLists(_loc1_);
         if(ToolKit.isEmptyObject(_loc2_) || !_loc2_)
         {
            return getUniqueRandDisplayPet();
         }
         for each(_loc3_ in _petDisplayIcons)
         {
            if(_loc3_.icon == _loc2_.iconCode)
            {
               return getUniqueRandDisplayPet();
            }
         }
         _petDisplayIcons.addItem({"icon":_loc2_.iconCode});
         return _loc2_;
      }
      
      public function set idSetPet1(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1032734937idSetPet1;
         if(_loc2_ !== param1)
         {
            this._1032734937idSetPet1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSetPet1",_loc2_,param1));
         }
      }
      
      public function set idSetPet2(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1032734938idSetPet2;
         if(_loc2_ !== param1)
         {
            this._1032734938idSetPet2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSetPet2",_loc2_,param1));
         }
      }
      
      public function set idSetPet3(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1032734939idSetPet3;
         if(_loc2_ !== param1)
         {
            this._1032734939idSetPet3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSetPet3",_loc2_,param1));
         }
      }
      
      private function resetUserSetPet() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= SMALL_GAME_PET_NUM)
         {
            this["idSetPet" + _loc1_].clean();
            _loc1_++;
         }
      }
      
      public function set idSetPet5(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1032734941idSetPet5;
         if(_loc2_ !== param1)
         {
            this._1032734941idSetPet5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSetPet5",_loc2_,param1));
         }
      }
      
      public function set idSetPet4(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1032734940idSetPet4;
         if(_loc2_ !== param1)
         {
            this._1032734940idSetPet4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSetPet4",_loc2_,param1));
         }
      }
      
      public function set idSetPet6(param1:ItemSlotCreature) : void
      {
         var _loc2_:Object = this._1032734942idSetPet6;
         if(_loc2_ !== param1)
         {
            this._1032734942idSetPet6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idSetPet6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idSysPet1() : ItemSlotCreature
      {
         return this._1604394436idSysPet1;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSysPet2() : ItemSlotCreature
      {
         return this._1604394437idSysPet2;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSysPet3() : ItemSlotCreature
      {
         return this._1604394438idSysPet3;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSysPet4() : ItemSlotCreature
      {
         return this._1604394439idSysPet4;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSysPet5() : ItemSlotCreature
      {
         return this._1604394440idSysPet5;
      }
      
      [Bindable(event="propertyChange")]
      public function get idSysPet6() : ItemSlotCreature
      {
         return this._1604394441idSysPet6;
      }
      
      private function checkGameStartBtn() : void
      {
         idStartGameBtn.enabled = playTimes < playTotalTimes && !isPlaying ? true : false;
      }
      
      public function __idSaveGameBtn_click(param1:MouseEvent) : void
      {
         saveGame();
      }
      
      private function addPlayTime() : void
      {
         var func:Function;
         var showString:String;
         if(playTotalTimes >= SMALL_GAME_MAX_TIMES)
         {
            Alert.show(Language.SMALL_GAME_P[15]);
            return;
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               ++playTotalTimes;
               _core.remote.call("addSmallGameTime",new Responder(onAddPlayTime),"hideAndSeek");
            }
         };
         showString = Language.SMALL_GAME_P[16];
         showString = showString.replace("{gold}",SMALL_GAME_ADD_TIME_COST);
         Alert.show(showString,"",Alert.YES | Alert.NO,this,func);
      }
      
      private function getUniqueRandPet() : Object
      {
         var _loc4_:Object = null;
         var _loc1_:* = 1382;
         var _loc2_:Number = Math.round(ToolKit.genRangeRandom(1,_loc1_));
         var _loc3_:Object = new Object();
         _loc3_ = _core.data.gameData[GamePredef.TBL_CREATURE][_loc2_];
         if(ToolKit.isEmptyObject(_loc3_) || !_loc3_)
         {
            return getUniqueRandPet();
         }
         if(_loc3_.catchable <= 0)
         {
            return getUniqueRandPet();
         }
         for each(_loc4_ in _petIcons)
         {
            if(_loc4_.icon == _loc3_.iconCode)
            {
               return getUniqueRandPet();
            }
         }
         _petIcons.addItem({"icon":_loc3_.iconCode});
         return _loc3_;
      }
      
      public function ___SmallGameHideSeekPanel_Button1_click(param1:MouseEvent) : void
      {
         addPlayTime();
      }
      
      private function comparePet() : Boolean
      {
         var _loc1_:int = 1;
         while(_loc1_ <= SMALL_GAME_PET_NUM)
         {
            if(_petSysLists[_loc1_ - 1].id != this["idSetPet" + _loc1_].giid)
            {
               return false;
            }
            _loc1_++;
         }
         return true;
      }
   }
}

