package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.event.GameDataEvent;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.DressEvent;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.LanguageUtil;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.CharactorShowCanvas;
   import com.qeedoo.ui.view.comp.DelayButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.FilterButton;
   import com.qeedoo.ui.view.comp.HButtonTab;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.PageSelector;
   import com.qeedoo.ui.view.comp.RoundedLabel;
   import com.qeedoo.ui.view.comp.Slot;
   import com.qeedoo.ui.view.compBattle.SkillCanvas;
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
   import mx.containers.HBox;
   import mx.containers.Tile;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.CheckBox;
   import mx.controls.DataGrid;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.controls.Text;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.IUITextField;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   import style.Assets;
   
   use namespace mx_internal;
   
   public class PetEvolutionPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const ROUND_MAX:* = 3;
      
      private static const STAGE_MAX:* = 9;
      
      private static const PROTECT_ITEM_ID:int = 3911;
      
      private var _3437302pet5:ItemSlot;
      
      private var _740436871propRight:Text;
      
      private var _106556910petE4:ItemSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _309153677propNow:Text;
      
      private var _97439934fire4:Image;
      
      public var _PetEvolutionPanel_Text2:Text;
      
      private var _3437301pet4:ItemSlot;
      
      private var ITEM_COUNT_PER_PAGE:int = 12;
      
      private var selectPetFeather:Object;
      
      private var _tenAlert:Alert;
      
      private var _1413892224selectPetInfo1:RoundedLabel;
      
      private var _106556906petE0:ItemSlot;
      
      private var _110363459tile1:Tile;
      
      private var _1042207272petProData:ArrayCollection = new ArrayCollection();
      
      private var _106556911petE5:ItemSlot;
      
      private var _938937372showCanvas1:CharactorShowCanvas;
      
      private var _97439935fire5:Image;
      
      private var _3437300pet3:ItemSlot;
      
      private var _1324347617evolutionBtn:DelayButton;
      
      private var _helpAlert:Alert;
      
      private var FEATHER_COUNT_PER_PAGE:int = 10;
      
      public var _PetEvolutionPanel_Label1:Label;
      
      public var _PetEvolutionPanel_Label2:Label;
      
      public var _PetEvolutionPanel_Label3:Label;
      
      private var _1400590334toNextStepBtn:DelayButton;
      
      public var _PetEvolutionPanel_DelayButton2:DelayButton;
      
      public var _PetEvolutionPanel_Label9:Label;
      
      private var _1331586071direct:Image;
      
      private var _1714701186picCanvas:Canvas;
      
      private var _106556907petE1:ItemSlot;
      
      private var _610140195featherRate:Label;
      
      private var _109610221sock1:Image;
      
      private var _511796720bigCircle:BigContractCircle;
      
      private var _865666787needText:Label;
      
      private var _803559802pageTab:HButtonTab;
      
      private var _1769958153skillCanvas:SkillCanvas;
      
      private var _106556912petE6:ItemSlot;
      
      private var _currentRound:int = 0;
      
      private var PET_ENVOLUTION_FEATHER_STEP_RAN:* = [[35,29,24,30,24,20,25,20,20],[29,24,23,24,21,18,20,18,16],[30,24,19,24,20,16,24,18,12]];
      
      private var _782949730circle2:ContractCircle;
      
      private var _97439936fire6:Image;
      
      private var _115868346zhen1:Image;
      
      private var _956131171costTXT:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _97439930fire0:Image;
      
      private var _789774322helpText:Text;
      
      private var _106556908petE2:ItemSlot;
      
      private var _109610222sock2:Image;
      
      private var _3619493view:ViewStack;
      
      private var _3437306pet9:ItemSlot;
      
      private var _106556913petE7:ItemSlot;
      
      private var _1177514720itemText:Label;
      
      public var _PetEvolutionPanel_Image20:Image;
      
      public var _PetEvolutionPanel_Image21:Image;
      
      private var _currentStep:int = 2;
      
      public var _PetEvolutionPanel_LinkButton1:LinkButton;
      
      private var _106556286pet10:ItemSlot;
      
      private var _691653267protectSlot:ItemSlot;
      
      private var _97439937fire7:Image;
      
      private var _938937373showCanvas2:CharactorShowCanvas;
      
      private var _1717383265basicPro:DataGrid;
      
      private var _2033704065featherSelect:Image;
      
      private var _1719946217basicProData:ArrayCollection = new ArrayCollection();
      
      private var _110363460tile2:Tile;
      
      private var petList:Array;
      
      private var _115868347zhen2:Image;
      
      private var _782949729circle1:ContractCircle;
      
      public var _PetEvolutionPanel_FilterButton1:FilterButton;
      
      public var _PetEvolutionPanel_FilterButton2:FilterButton;
      
      private var _782949731circle3:ContractCircle;
      
      private var _97439931fire1:Image;
      
      private var selectPet:Object;
      
      private var _106556909petE3:ItemSlot;
      
      private var _90794110_core:Core = Core.getInstance();
      
      private var _3437305pet8:ItemSlot;
      
      public var _PetEvolutionPanel_RoundedLabel1:RoundedLabel;
      
      public var _PetEvolutionPanel_RoundedLabel2:RoundedLabel;
      
      public var _PetEvolutionPanel_RoundedLabel3:RoundedLabel;
      
      public var _PetEvolutionPanel_RoundedLabel6:RoundedLabel;
      
      private var _109610223sock3:Image;
      
      private var _646343081autoBuy:CheckBox;
      
      public var _PetEvolutionPanel_DataGridColumn1:DataGridColumn;
      
      public var _PetEvolutionPanel_DataGridColumn2:DataGridColumn;
      
      public var _PetEvolutionPanel_DataGridColumn3:DataGridColumn;
      
      public var _PetEvolutionPanel_DataGridColumn4:DataGridColumn;
      
      public var _PetEvolutionPanel_DataGridColumn5:DataGridColumn;
      
      public var _PetEvolutionPanel_DataGridColumn6:DataGridColumn;
      
      public var _PetEvolutionPanel_DataGridColumn7:DataGridColumn;
      
      private var _993898998propLeft:Text;
      
      private var _106556914petE8:ItemSlot;
      
      private var _106556287pet11:ItemSlot;
      
      private var _1930251448useProtect:CheckBox;
      
      private var _97439938fire8:Image;
      
      private var _1413892225selectPetInfo2:RoundedLabel;
      
      private var _3437299pet2:ItemSlot;
      
      private var _3437304pet7:ItemSlot;
      
      private var _1324361010evolutionPro:DataGrid;
      
      private var _97439932fire2:Image;
      
      private var _406889116petEvolutionTitle:BasicTitleCanvas;
      
      private const CONTRACT_ITEMID:* = 4979;
      
      private var fireUrl:Array = [4130220000209,4130220000210,4130220000211];
      
      private var _782949732circle4:ContractCircle;
      
      private var _106556915petE9:ItemSlot;
      
      private var _3437298pet1:ItemSlot;
      
      private var _993838858propNext:Text;
      
      private var _1847060154nextPro:Image;
      
      private var _2070140094envoSelect:Image;
      
      private var _1840576088nameText:Label;
      
      private var _173227roundImg:Image;
      
      private var petListFeather:Array;
      
      private var _2072851743zhiranzhiliCost:RoundedLabel;
      
      private var _3437303pet6:ItemSlot;
      
      mx_internal var _watchers:Array = [];
      
      private var _607339634pageSelector:PageSelector;
      
      private var _97439933fire3:Image;
      
      private var _contracting:Boolean;
      
      private var _buyAlert:Alert;
      
      private var _3437297pet0:ItemSlot;
      
      private var _1647659420pageSelector2:PageSelector;
      
      mx_internal var _bindings:Array = [];
      
      private var firstIn:Boolean = true;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":540,
               "height":445,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"petEvolutionTitle"
               }),new UIComponentDescriptor({
                  "type":HButtonTab,
                  "id":"pageTab",
                  "events":{"tabChanged":"__pageTab_tabChanged"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":25,
                        "y":41
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Text,
                  "id":"helpText",
                  "events":{"click":"__helpText_click"},
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":465,
                        "y":40,
                        "selectable":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"view",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":60,
                        "clipContent":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "clipContent":false,
                                 "width":520,
                                 "height":365,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"picCanvas",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":10,
                                          "styleName":"CanvasBorder",
                                          "clipContent":false,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "width":500,
                                          "height":180,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"_PetEvolutionPanel_RoundedLabel1",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "-120";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":8};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"_PetEvolutionPanel_RoundedLabel2",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "120";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":8};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"zhen1",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "-120";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":110};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"zhen2",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "120";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":110};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"direct",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.verticalCenter = "0";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":CharactorShowCanvas,
                                             "id":"showCanvas1",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "-120";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":124,
                                                   "height":13,
                                                   "width":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":CharactorShowCanvas,
                                             "id":"showCanvas2",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "120";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":124,
                                                   "height":13,
                                                   "width":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":DelayButton,
                                             "id":"evolutionBtn",
                                             "events":{"click":"__evolutionBtn_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.bottom = "5";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "width":65
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
                                          "y":195,
                                          "styleName":"CanvasBorder",
                                          "clipContent":false,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "width":230,
                                          "height":160,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"nextPro",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.verticalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"visible":false};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "stylesFactory":function():void
                                             {
                                                this.verticalCenter = "0";
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":220,
                                                   "height":130,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":DataGrid,
                                                      "id":"evolutionPro",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "selectable":false,
                                                            "x":10,
                                                            "y":0,
                                                            "height":94,
                                                            "verticalScrollPolicy":"off",
                                                            "width":230,
                                                            "columns":[_PetEvolutionPanel_DataGridColumn1_i(),_PetEvolutionPanel_DataGridColumn2_i(),_PetEvolutionPanel_DataGridColumn3_i()]
                                                         };
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
                                          "x":245,
                                          "y":195,
                                          "styleName":"CanvasBorder",
                                          "clipContent":false,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "width":265,
                                          "height":160,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"_PetEvolutionPanel_RoundedLabel3",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":14};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"envoSelect",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":12,
                                                   "y":37
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Tile,
                                             "id":"tile1",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalGap = 4;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":16,
                                                   "y":41,
                                                   "width":226,
                                                   "height":80,
                                                   "direction":"horizontal",
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "styleName":"TileBagItem",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"pet0",
                                                      "events":{"click":"__pet0_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"pet1",
                                                      "events":{"click":"__pet1_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"pet2",
                                                      "events":{"click":"__pet2_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"pet3",
                                                      "events":{"click":"__pet3_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"pet4",
                                                      "events":{"click":"__pet4_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"pet5",
                                                      "events":{"click":"__pet5_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"pet6",
                                                      "events":{"click":"__pet6_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"pet7",
                                                      "events":{"click":"__pet7_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"pet8",
                                                      "events":{"click":"__pet8_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"pet9",
                                                      "events":{"click":"__pet9_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"pet10",
                                                      "events":{"click":"__pet10_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"pet11",
                                                      "events":{"click":"__pet11_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PageSelector,
                                             "id":"pageSelector",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.bottom = "13";
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
                                 "styleName":"CanvasBorder",
                                 "clipContent":false,
                                 "width":520,
                                 "height":365,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":20,
                                          "clipContent":false,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"roundImg"
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fire7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":31,
                                                   "y":15
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fire8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":75,
                                                   "y":0
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fire0",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":117,
                                                   "y":14
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fire1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":143,
                                                   "y":58
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fire2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":135,
                                                   "y":105
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fire3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":99,
                                                   "y":135
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fire4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":50,
                                                   "y":135
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fire5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":13,
                                                   "y":105
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"fire6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":5,
                                                   "y":58
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sock1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":90,
                                                   "y":16
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sock2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":151,
                                                   "y":121
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"sock3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":27,
                                                   "y":121
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"selectPetInfo1",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":0,
                                                   "y":179,
                                                   "width":195
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"selectPetInfo2",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":0,
                                                   "y":200,
                                                   "width":195
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
                                          "x":215,
                                          "y":10,
                                          "clipContent":false,
                                          "styleName":"CanvasBorder",
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "width":295,
                                          "height":160,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.top = "5";
                                                this.bottom = "5";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":280,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":DataGrid,
                                                      "id":"basicPro",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.top = "0";
                                                         this.bottom = "0";
                                                         this.left = "0";
                                                         this.right = "0";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "selectable":false,
                                                            "verticalScrollPolicy":"off",
                                                            "columns":[_PetEvolutionPanel_DataGridColumn4_i(),_PetEvolutionPanel_DataGridColumn5_i(),_PetEvolutionPanel_DataGridColumn6_i(),_PetEvolutionPanel_DataGridColumn7_i()]
                                                         };
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
                                          "x":215,
                                          "y":175,
                                          "clipContent":false,
                                          "styleName":"CanvasBorder",
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "width":295,
                                          "height":180,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PetEvolutionPanel_Label1",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 326404;
                                                this.fontSize = 13;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30,
                                                   "y":16
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":LinkButton,
                                             "id":"_PetEvolutionPanel_LinkButton1",
                                             "events":{"click":"___PetEvolutionPanel_LinkButton1_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.textDecoration = "underline";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":220,
                                                   "y":30
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PetEvolutionPanel_Label2",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 326404;
                                                this.fontSize = 13;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":140,
                                                   "y":16,
                                                   "width":124
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PetEvolutionPanel_Label3",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 326404;
                                                this.fontSize = 13;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30,
                                                   "y":30
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"featherRate",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 326404;
                                                this.fontSize = 13;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30,
                                                   "y":45
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"costTXT",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 326404;
                                                this.fontSize = 13;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"",
                                                   "x":140,
                                                   "y":30
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"protectSlot",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":126,
                                                   "y":66,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":CheckBox,
                                             "id":"useProtect",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":167,
                                                   "y":66
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"_PetEvolutionPanel_RoundedLabel6",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16494596;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":167,
                                                   "y":86
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"zhiranzhiliCost",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":117};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":DelayButton,
                                             "id":"_PetEvolutionPanel_DelayButton2",
                                             "events":{"click":"___PetEvolutionPanel_DelayButton2_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.bottom = "10";
                                                this.horizontalCenter = "-20";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"styleName":"BtnStdRed"};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":DelayButton,
                                             "id":"toNextStepBtn",
                                             "events":{"click":"__toNextStepBtn_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.bottom = "10";
                                                this.horizontalCenter = "70";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"styleName":"BtnStdRed"};
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
                                          "y":245,
                                          "clipContent":false,
                                          "styleName":"CanvasBorder",
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "width":200,
                                          "height":110,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"featherSelect",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":4,
                                                   "y":1
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Tile,
                                             "id":"tile2",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalGap = 4;
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":5,
                                                   "width":186,
                                                   "height":80,
                                                   "direction":"horizontal",
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "styleName":"TileBagItem",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"petE0",
                                                      "events":{"click":"__petE0_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"petE1",
                                                      "events":{"click":"__petE1_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"petE2",
                                                      "events":{"click":"__petE2_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"petE3",
                                                      "events":{"click":"__petE3_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"petE4",
                                                      "events":{"click":"__petE4_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"petE5",
                                                      "events":{"click":"__petE5_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"petE6",
                                                      "events":{"click":"__petE6_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"petE7",
                                                      "events":{"click":"__petE7_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"petE8",
                                                      "events":{"click":"__petE8_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"petE9",
                                                      "events":{"click":"__petE9_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"movable":false};
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PageSelector,
                                             "id":"pageSelector2",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.bottom = "5";
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
                                 "styleName":"CanvasBorder",
                                 "clipContent":false,
                                 "width":520,
                                 "height":365,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":10,
                                          "clipContent":false,
                                          "styleName":"CanvasBorder",
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "width":250,
                                          "height":345,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_PetEvolutionPanel_Image20",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":7,
                                                   "y":12
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ContractCircle,
                                             "id":"circle1",
                                             "events":{"click":"__circle1_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "type":1,
                                                   "x":90,
                                                   "y":25
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ContractCircle,
                                             "id":"circle3",
                                             "events":{"click":"__circle3_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "type":3,
                                                   "x":20,
                                                   "y":95
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ContractCircle,
                                             "id":"circle4",
                                             "events":{"click":"__circle4_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "type":4,
                                                   "x":160,
                                                   "y":95
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ContractCircle,
                                             "id":"circle2",
                                             "events":{"click":"__circle2_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "type":2,
                                                   "x":90,
                                                   "y":165
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":260,
                                                   "clipContent":false,
                                                   "styleName":"CanvasBorder",
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "width":230,
                                                   "height":75,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Text,
                                                      "id":"_PetEvolutionPanel_Text2",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16776960;
                                                         this.textAlign = "center";
                                                         this.horizontalCenter = "0";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"y":10};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Text,
                                                      "id":"propLeft",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":30,
                                                            "y":30
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Text,
                                                      "id":"propRight",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":118,
                                                            "y":30
                                                         };
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
                                          "x":265,
                                          "y":10,
                                          "clipContent":false,
                                          "styleName":"CanvasBorder",
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "width":245,
                                          "height":345,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"itemText",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16776960;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"nameText",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                                this.horizontalCenter = "0";
                                                this.color = 16776960;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":35};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BigContractCircle,
                                             "id":"bigCircle",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":60};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Text,
                                             "id":"propNow",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":215,
                                                   "width":125
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_PetEvolutionPanel_Image21",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "15";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "rotation":90,
                                                   "y":225
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Text,
                                             "id":"propNext",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":120,
                                                   "y":215,
                                                   "width":126
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"needText",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                                this.horizontalCenter = "0";
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":260};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HBox,
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":285,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":CheckBox,
                                                      "id":"autoBuy"
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetEvolutionPanel_Label9",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":FilterButton,
                                             "id":"_PetEvolutionPanel_FilterButton1",
                                             "events":{"click":"___PetEvolutionPanel_FilterButton1_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":50,
                                                   "height":23,
                                                   "x":55,
                                                   "y":308,
                                                   "styleName":"BtnStdGreen",
                                                   "delayTime":1000
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":FilterButton,
                                             "id":"_PetEvolutionPanel_FilterButton2",
                                             "events":{"click":"___PetEvolutionPanel_FilterButton2_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":80,
                                                   "height":23,
                                                   "x":115,
                                                   "y":308,
                                                   "styleName":"BtnStdGreen",
                                                   "delayTime":1000
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SkillCanvas,
                  "id":"skillCanvas",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.verticalCenter = "-68";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"visible":false};
                  }
               })]
            };
         }
      });
      
      private var _selectType:int = 1;
      
      public function PetEvolutionPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 540;
         this.height = 445;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = false;
         this.addEventListener("initialize",___PetEvolutionPanel_DragableCanvas1_initialize);
         this.addEventListener("remove",___PetEvolutionPanel_DragableCanvas1_remove);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PetEvolutionPanel._watcherSetupUtil = param1;
      }
      
      private function proTextRefresh() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Number = NaN;
         var _loc3_:* = undefined;
         basicProData.removeAll();
         if(Boolean(selectPetFeather) && Boolean(selectPetFeather.creatureData))
         {
            _loc1_ = selectPetFeather.creatureData;
            _currentRound = 0;
            _currentStep = 0;
            if(Boolean(selectPetFeather.envoInfo) && Boolean(selectPetFeather.envoInfo["envo"]))
            {
               _currentStep = selectPetFeather.envoInfo["stage"];
               _currentRound = selectPetFeather.envoInfo["round"];
            }
            basicProData.addItem({
               "name":Language.PETPANEL_U[12],
               "curPro":selectPetFeather.aptStrength,
               "nextPro":getAddPro(selectPetFeather.creatureData.id,0),
               "nextPro2":getAddPro(selectPetFeather.creatureData.id,0,true)
            });
            basicProData.addItem({
               "name":Language.PETPANEL_U[14],
               "curPro":selectPetFeather.aptStamina,
               "nextPro":getAddPro(selectPetFeather.creatureData.id,1),
               "nextPro2":getAddPro(selectPetFeather.creatureData.id,1,true)
            });
            basicProData.addItem({
               "name":Language.PETPANEL_U[13],
               "curPro":selectPetFeather.aptAgility,
               "nextPro":getAddPro(selectPetFeather.creatureData.id,2),
               "nextPro2":getAddPro(selectPetFeather.creatureData.id,2,true)
            });
            basicProData.addItem({
               "name":Language.PETPANEL_U[15],
               "curPro":selectPetFeather.aptIntelligence,
               "nextPro":getAddPro(selectPetFeather.creatureData.id,3),
               "nextPro2":getAddPro(selectPetFeather.creatureData.id,3,true)
            });
            basicProData.addItem({
               "name":Language.PETPANEL_U[16],
               "curPro":selectPetFeather.aptEnergy,
               "nextPro":getAddPro(selectPetFeather.creatureData.id,4),
               "nextPro2":getAddPro(selectPetFeather.creatureData.id,4,true)
            });
            refreshRoundInfo();
            featherSelect.visible = true;
            _loc2_ = 0;
            if(selectPetFeather.upgradeNum == 9)
            {
               _loc2_ = 0.1;
            }
            else if(selectPetFeather.upgradeNum == 10)
            {
               _loc2_ = 0.3;
            }
            else if(selectPetFeather.upgradeNum == 11)
            {
               _loc2_ = 0.35;
            }
            else if(selectPetFeather.upgradeNum == 12)
            {
               _loc2_ = 0.4;
            }
            selectPetInfo1.htmlText = Language.PETPANEL_U[25] + ":<font color=\'#04FB04\'>" + selectPetFeather.petName + "</font>";
            selectPetInfo2.htmlText = Language.PETPANEL_U[11] + ":<font color=\'#04FB04\'>" + Math.round(Number(selectPetFeather.growRate) * 100 + (Number(selectPetFeather.growRateAdd) + _loc2_) * 100) / 100 + "</font>";
            if(_currentRound == ROUND_MAX - 1 && _currentStep == STAGE_MAX)
            {
               featherRate.text = "";
            }
            else
            {
               _loc3_ = PET_ENVOLUTION_FEATHER_STEP_RAN[_currentRound][_currentStep];
               featherRate.text = Language.PET_EVOLUTION_PANEL_U[66] + String(_loc3_) + "%[buff tăng thêm]";
            }
         }
         else
         {
            featherSelect.visible = false;
            selectPetInfo2.htmlText = "";
            selectPetInfo2.htmlText = "";
            featherRate.text = "";
         }
      }
      
      private function tenContractHandler(param1:Event) : void
      {
         var ensureTenFunc:Function;
         var contractPet:Object;
         var propStr:String;
         var propLvl:int;
         var bagPanel:BagPanel = null;
         var goldLockFlag:Boolean = false;
         var gfunc:Function = null;
         var event:Event = param1;
         event.stopImmediatePropagation();
         if(_buyAlert)
         {
            PopUpManager.removePopUp(_buyAlert);
            _buyAlert = null;
         }
         contractPet = _core.player.contractPet;
         propStr = GamePredef.CONTRACT_DICT[_selectType];
         propLvl = Boolean(contractPet) && Boolean(contractPet[propStr]) ? int(contractPet[propStr]) : 0;
         if(propLvl >= GamePredef.MAX_CONTRACT_LEVEL)
         {
            _core.sysMidNote(Language.PET_EVOLUTION_PANEL_U[61]);
            return;
         }
         ensureTenFunc = function(param1:CloseEvent = null):void
         {
            if(Boolean(param1) && param1.detail == Alert.NO)
            {
               return;
            }
            _contracting = true;
            _core.remote.call("contractPetTen",new Responder(onContractPetTen),_selectType,autoBuy.selected);
         };
         if(autoBuy.selected)
         {
            bagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
            goldLockFlag = bagPanel.goldLockFlag;
            if(goldLockFlag || !bagPanel)
            {
               _core.sysMsg(Language.JUHUASUAN_PANEL[15]);
               gfunc = function(param1:String):void
               {
                  _core.remote.call("unlockMoney",new Responder(doUnlockMoneyGold),MD5.hash(param1));
               };
               _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],gfunc);
               return;
            }
            _buyAlert = Alert.show(Language.PET_EVOLUTION_PANEL_U[65],"",Alert.YES | Alert.NO,null,ensureTenFunc);
            return;
         }
         ensureTenFunc();
      }
      
      public function set toNextStepBtn(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1400590334toNextStepBtn;
         if(_loc2_ !== param1)
         {
            this._1400590334toNextStepBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"toNextStepBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get toNextStepBtn() : DelayButton
      {
         return this._1400590334toNextStepBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get helpText() : Text
      {
         return this._789774322helpText;
      }
      
      public function __petE4_click(param1:MouseEvent) : void
      {
         petClickHandlerFeather(param1);
      }
      
      public function set propLeft(param1:Text) : void
      {
         var _loc2_:Object = this._993898998propLeft;
         if(_loc2_ !== param1)
         {
            this._993898998propLeft = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propLeft",_loc2_,param1));
         }
      }
      
      public function set helpText(param1:Text) : void
      {
         var _loc2_:Object = this._789774322helpText;
         if(_loc2_ !== param1)
         {
            this._789774322helpText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"helpText",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showCanvas2() : CharactorShowCanvas
      {
         return this._938937373showCanvas2;
      }
      
      [Bindable(event="propertyChange")]
      public function get featherRate() : Label
      {
         return this._610140195featherRate;
      }
      
      private function _PetEvolutionPanel_DataGridColumn6_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetEvolutionPanel_DataGridColumn6 = _loc1_;
         _loc1_.resizable = false;
         _loc1_.draggable = false;
         _loc1_.width = 70;
         _loc1_.sortable = false;
         _loc1_.dataField = "nextPro";
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("color",326404);
         BindingManager.executeBindings(this,"_PetEvolutionPanel_DataGridColumn6",_PetEvolutionPanel_DataGridColumn6);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get showCanvas1() : CharactorShowCanvas
      {
         return this._938937372showCanvas1;
      }
      
      public function set showCanvas2(param1:CharactorShowCanvas) : void
      {
         var _loc2_:Object = this._938937373showCanvas2;
         if(_loc2_ !== param1)
         {
            this._938937373showCanvas2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCanvas2",_loc2_,param1));
         }
      }
      
      public function set showCanvas1(param1:CharactorShowCanvas) : void
      {
         var _loc2_:Object = this._938937372showCanvas1;
         if(_loc2_ !== param1)
         {
            this._938937372showCanvas1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCanvas1",_loc2_,param1));
         }
      }
      
      public function set featherRate(param1:Label) : void
      {
         var _loc2_:Object = this._610140195featherRate;
         if(_loc2_ !== param1)
         {
            this._610140195featherRate = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featherRate",_loc2_,param1));
         }
      }
      
      private function circleHandler(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         var _loc2_:ContractCircle = param1.currentTarget as ContractCircle;
         if(_selectType == _loc2_.type)
         {
            return;
         }
         _selectType = _loc2_.type;
         this.updateSelectContract();
      }
      
      public function __petE9_click(param1:MouseEvent) : void
      {
         petClickHandlerFeather(param1);
      }
      
      public function __pet3_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      private function _PetEvolutionPanel_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetEvolutionPanel_DataGridColumn5 = _loc1_;
         _loc1_.resizable = false;
         _loc1_.draggable = false;
         _loc1_.width = 70;
         _loc1_.sortable = false;
         _loc1_.dataField = "curPro";
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_PetEvolutionPanel_DataGridColumn5",_PetEvolutionPanel_DataGridColumn5);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get propNow() : Text
      {
         return this._309153677propNow;
      }
      
      [Bindable(event="propertyChange")]
      public function get propRight() : Text
      {
         return this._740436871propRight;
      }
      
      [Bindable(event="propertyChange")]
      public function get selectPetInfo1() : RoundedLabel
      {
         return this._1413892224selectPetInfo1;
      }
      
      [Bindable(event="propertyChange")]
      public function get selectPetInfo2() : RoundedLabel
      {
         return this._1413892225selectPetInfo2;
      }
      
      public function __evolutionBtn_click(param1:MouseEvent) : void
      {
         toEvolution();
      }
      
      public function __circle2_click(param1:MouseEvent) : void
      {
         circleHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      private function get _core() : Core
      {
         return this._90794110_core;
      }
      
      public function __pageTab_tabChanged(param1:DressEvent) : void
      {
         viewChange(param1);
      }
      
      public function __pet8_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      public function set autoBuy(param1:CheckBox) : void
      {
         var _loc2_:Object = this._646343081autoBuy;
         if(_loc2_ !== param1)
         {
            this._646343081autoBuy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"autoBuy",_loc2_,param1));
         }
      }
      
      public function set nameText(param1:Label) : void
      {
         var _loc2_:Object = this._1840576088nameText;
         if(_loc2_ !== param1)
         {
            this._1840576088nameText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameText",_loc2_,param1));
         }
      }
      
      private function changeSWF() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         if(selectPet)
         {
            _loc1_ = selectPet.creatureData;
            if(_loc1_)
            {
               _loc6_ = ResManager.getResUrl(_loc1_.resCode);
               if(showCanvas1.url != _loc6_)
               {
                  showCanvas1.url = _loc6_;
               }
               showCanvas1.color = selectPet.colorCode ? Number(selectPet.colorCode) : Number(_loc1_.colorCode);
            }
            _loc2_ = _core.data.gameDataIndex3[GamePredef.TBL_CREATURE_HANDBOOK][_loc1_.id];
            for(_loc4_ in _loc2_)
            {
               if(_loc2_[_loc4_].relateId == _loc1_.id)
               {
                  _loc3_ = int(_loc2_[_loc4_].evolutionId);
               }
            }
            if(_loc3_)
            {
               _loc5_ = _core.data.gameData[GamePredef.TBL_CREATURE][_loc3_];
            }
            if(_loc5_)
            {
               _loc7_ = ResManager.getResUrl(_loc5_.resCode);
               if(showCanvas2.url != _loc7_)
               {
                  showCanvas2.url = _loc7_;
               }
               showCanvas2.color = selectPet.colorCode ? Number(selectPet.colorCode) : Number(_loc5_.colorCode);
            }
            refreshPro();
            envoSelect.visible = true;
         }
         else
         {
            showCanvas1.url = "";
            showCanvas2.url = "";
            petProData.removeAll();
            envoSelect.visible = false;
            nextPro.visible = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fire1() : Image
      {
         return this._97439931fire1;
      }
      
      [Bindable(event="propertyChange")]
      public function get fire2() : Image
      {
         return this._97439932fire2;
      }
      
      [Bindable(event="propertyChange")]
      public function get fire3() : Image
      {
         return this._97439933fire3;
      }
      
      [Bindable(event="propertyChange")]
      public function get envoSelect() : Image
      {
         return this._2070140094envoSelect;
      }
      
      [Bindable(event="propertyChange")]
      public function get fire5() : Image
      {
         return this._97439935fire5;
      }
      
      [Bindable(event="propertyChange")]
      public function get fire6() : Image
      {
         return this._97439936fire6;
      }
      
      [Bindable(event="propertyChange")]
      public function get fire0() : Image
      {
         return this._97439930fire0;
      }
      
      private function _PetEvolutionPanel_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetEvolutionPanel_DataGridColumn4 = _loc1_;
         _loc1_.resizable = false;
         _loc1_.draggable = false;
         _loc1_.width = 70;
         _loc1_.sortable = false;
         _loc1_.dataField = "name";
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_PetEvolutionPanel_DataGridColumn4",_PetEvolutionPanel_DataGridColumn4);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get fire4() : Image
      {
         return this._97439934fire4;
      }
      
      private function helpHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         if(_helpAlert)
         {
            PopUpManager.removePopUp(_helpAlert);
            _helpAlert = null;
         }
         var _loc2_:String = Language.PET_EVOLUTION_PANEL_U[4][pageTab.selectedIndex];
         _helpAlert = Alert.show(LanguageUtil.html2PlainText(_loc2_),"",Alert.YES);
         _helpAlert.mx_internal::alertForm.mx_internal::textField.htmlText = _loc2_;
      }
      
      public function set pageSelector2(param1:PageSelector) : void
      {
         var _loc2_:Object = this._1647659420pageSelector2;
         if(_loc2_ !== param1)
         {
            this._1647659420pageSelector2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelector2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fire7() : Image
      {
         return this._97439937fire7;
      }
      
      [Bindable(event="propertyChange")]
      public function get fire8() : Image
      {
         return this._97439938fire8;
      }
      
      public function __petE3_click(param1:MouseEvent) : void
      {
         petClickHandlerFeather(param1);
      }
      
      private function _PetEvolutionPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetEvolutionPanel_DataGridColumn3 = _loc1_;
         _loc1_.resizable = false;
         _loc1_.draggable = false;
         _loc1_.width = 80;
         _loc1_.sortable = false;
         _loc1_.dataField = "nextPro";
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_PetEvolutionPanel_DataGridColumn3",_PetEvolutionPanel_DataGridColumn3);
         return _loc1_;
      }
      
      public function set propNow(param1:Text) : void
      {
         var _loc2_:Object = this._309153677propNow;
         if(_loc2_ !== param1)
         {
            this._309153677propNow = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propNow",_loc2_,param1));
         }
      }
      
      public function __pet11_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1)
         {
            _core.data.addEventListener(GamePredef.EVENT_REFRESH_FUNCSLOTS,onItemChange);
         }
         else
         {
            _core.data.removeEventListener(GamePredef.EVENT_REFRESH_FUNCSLOTS,onItemChange);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sock1() : Image
      {
         return this._109610221sock1;
      }
      
      [Bindable(event="propertyChange")]
      public function get sock2() : Image
      {
         return this._109610222sock2;
      }
      
      [Bindable(event="propertyChange")]
      public function get sock3() : Image
      {
         return this._109610223sock3;
      }
      
      [Bindable(event="propertyChange")]
      public function get evolutionBtn() : DelayButton
      {
         return this._1324347617evolutionBtn;
      }
      
      private function showNoCanEnvolutePet() : void
      {
         var _loc1_:String = null;
         var _loc2_:Alert = null;
         var _loc3_:IUITextField = null;
         if(firstIn && petList.length == 0)
         {
            firstIn = false;
            _loc1_ = Language.PET_EVOLUTION_PANEL_U[45].toString();
            _loc2_ = Alert.show(_loc1_,_loc1_,Alert.YES,null,null);
            _loc3_ = _loc2_.mx_internal::alertForm.mx_internal::textField;
            _loc3_.htmlText = _loc1_;
            _loc3_.filters = GamePredef.FILTER_TEXT1;
         }
      }
      
      public function set propRight(param1:Text) : void
      {
         var _loc2_:Object = this._740436871propRight;
         if(_loc2_ !== param1)
         {
            this._740436871propRight = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propRight",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get propNext() : Text
      {
         return this._993838858propNext;
      }
      
      public function updateContract() : void
      {
         var _loc4_:* = undefined;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc9_:int = 0;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:ContractCircle = null;
         var _loc1_:String = "";
         var _loc2_:String = "";
         var _loc3_:Object = _core.player.contractPet;
         for(_loc4_ in GamePredef.CONTRACT_DICT)
         {
            _loc6_ = GamePredef.CONTRACT_DICT[_loc4_];
            _loc7_ = Boolean(_loc3_) && Boolean(_loc3_[_loc6_]) ? int(_loc3_[_loc6_]) : 0;
            _loc8_ = GameData.d[GamePredef.TBL_PET_CONTRACT][_loc7_];
            if(!_loc8_)
            {
               if(int(_loc4_) % 2 == 1)
               {
                  _loc1_ += _loc1_ ? "\n" : "";
                  _loc1_ += Language.PET_EVOLUTION_PANEL_U[56][_loc4_];
               }
               else
               {
                  _loc2_ += _loc2_ ? "\n" : "";
                  _loc2_ += Language.PET_EVOLUTION_PANEL_U[56][_loc4_];
               }
            }
            else
            {
               _loc9_ = int(_loc8_["prop" + _loc4_]);
               _loc10_ = Number(Number(_loc8_["propNum" + _loc4_]) || 0);
               if(_core.player.classId == 5)
               {
                  _loc11_ = Number(Number(_loc8_["extraNum" + _loc4_]) || 0);
                  _loc10_ += _loc11_;
               }
               if(int(_loc4_) % 2 == 1)
               {
                  _loc1_ += _loc1_ ? "\n" : "";
                  _loc1_ += GamePredef.AWAKEN_PROP_DICT[_loc9_] + "+" + _loc10_.toFixed(2) + "%";
               }
               else
               {
                  _loc2_ += _loc2_ ? "\n" : "";
                  _loc2_ += GamePredef.AWAKEN_PROP_DICT[_loc9_] + "+" + _loc10_.toFixed(2) + "%";
               }
            }
         }
         propLeft.htmlText = _loc1_;
         propRight.htmlText = _loc2_;
         _loc5_ = 1;
         while(_loc5_ <= 4)
         {
            _loc12_ = this["circle" + _loc5_];
            _loc12_.updateView();
            _loc5_++;
         }
         this.updateSelectContract();
         this.onItemChange();
      }
      
      private function set _core(param1:Core) : void
      {
         var _loc2_:Object = this._90794110_core;
         if(_loc2_ !== param1)
         {
            this._90794110_core = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_core",_loc2_,param1));
         }
      }
      
      public function set selectPetInfo1(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1413892224selectPetInfo1;
         if(_loc2_ !== param1)
         {
            this._1413892224selectPetInfo1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectPetInfo1",_loc2_,param1));
         }
      }
      
      public function set selectPetInfo2(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1413892225selectPetInfo2;
         if(_loc2_ !== param1)
         {
            this._1413892225selectPetInfo2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectPetInfo2",_loc2_,param1));
         }
      }
      
      public function set pageTab(param1:HButtonTab) : void
      {
         var _loc2_:Object = this._803559802pageTab;
         if(_loc2_ !== param1)
         {
            this._803559802pageTab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageTab",_loc2_,param1));
         }
      }
      
      private function init(param1:int = 0) : void
      {
         nextPro.visible = false;
         var _loc2_:int = 0;
         selectPet = null;
         if(param1 == 0)
         {
            selectPet = petList[0];
         }
         else
         {
            _loc2_ = 0;
            while(_loc2_ < petList.length)
            {
               if(Boolean(petList[_loc2_]) && Boolean(petList[_loc2_].creatureData) && petList[_loc2_].creatureData.id == param1)
               {
                  selectPet = petList[_loc2_];
                  break;
               }
               _loc2_++;
            }
         }
         if(!selectPet)
         {
            selectPet = petList[0];
            _loc2_ = 0;
         }
         onPageChanged(0,petList.length % ITEM_COUNT_PER_PAGE);
         var _loc3_:int = _loc2_ % ITEM_COUNT_PER_PAGE;
         envoSelect.x = 12 + _loc3_ % (ITEM_COUNT_PER_PAGE / 2) * (pet1.x - pet0.x);
         envoSelect.y = 37 + int(_loc3_ / (ITEM_COUNT_PER_PAGE / 2)) * (pet6.y - pet0.y);
         pageSelector.initPageSeletor(petList.length,ITEM_COUNT_PER_PAGE);
         changeSWF();
      }
      
      public function __petE8_click(param1:MouseEvent) : void
      {
         petClickHandlerFeather(param1);
      }
      
      private function _PetEvolutionPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetEvolutionPanel_DataGridColumn2 = _loc1_;
         _loc1_.resizable = false;
         _loc1_.draggable = false;
         _loc1_.width = 80;
         _loc1_.sortable = false;
         _loc1_.dataField = "curPro";
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_PetEvolutionPanel_DataGridColumn2",_PetEvolutionPanel_DataGridColumn2);
         return _loc1_;
      }
      
      public function __pet2_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get evolutionPro() : DataGrid
      {
         return this._1324361010evolutionPro;
      }
      
      private function getAddPro(param1:int, param2:int, param3:Boolean = false) : String
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc4_:int = int(GamePredef.PET_ENVOLUTION_FEATHER_STEP[param1][param2][_currentRound][_currentStep]);
         if(param3)
         {
            if(_currentRound == ROUND_MAX - 1 && _currentStep == STAGE_MAX)
            {
               return "0";
            }
            _loc5_ = _currentRound;
            _loc6_ = _currentStep + 1;
            if(_loc5_ < ROUND_MAX - 1 && _loc6_ == STAGE_MAX)
            {
               _loc5_++;
               _loc6_ = 0;
            }
            _loc4_ = GamePredef.PET_ENVOLUTION_FEATHER_STEP[param1][param2][_loc5_][_loc6_] - GamePredef.PET_ENVOLUTION_FEATHER_STEP[param1][param2][_currentRound][_currentStep];
         }
         return "+" + _loc4_.toString();
      }
      
      public function set petEvolutionTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._406889116petEvolutionTitle;
         if(_loc2_ !== param1)
         {
            this._406889116petEvolutionTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEvolutionTitle",_loc2_,param1));
         }
      }
      
      public function __circle1_click(param1:MouseEvent) : void
      {
         circleHandler(param1);
      }
      
      public function set view(param1:ViewStack) : void
      {
         var _loc2_:Object = this._3619493view;
         if(_loc2_ !== param1)
         {
            this._3619493view = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"view",_loc2_,param1));
         }
      }
      
      private function _PetEvolutionPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetEvolutionPanel_DataGridColumn1 = _loc1_;
         _loc1_.resizable = false;
         _loc1_.draggable = false;
         _loc1_.width = 70;
         _loc1_.sortable = false;
         _loc1_.dataField = "name";
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_PetEvolutionPanel_DataGridColumn1",_PetEvolutionPanel_DataGridColumn1);
         return _loc1_;
      }
      
      public function __pet7_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get circle2() : ContractCircle
      {
         return this._782949730circle2;
      }
      
      [Bindable(event="propertyChange")]
      public function get circle3() : ContractCircle
      {
         return this._782949731circle3;
      }
      
      [Bindable(event="propertyChange")]
      public function get circle4() : ContractCircle
      {
         return this._782949732circle4;
      }
      
      [Bindable(event="propertyChange")]
      public function get protectSlot() : ItemSlot
      {
         return this._691653267protectSlot;
      }
      
      private function initFeather() : void
      {
         petFeatherListRefresh();
         onPageChangedFeather(0,petListFeather.length % FEATHER_COUNT_PER_PAGE);
         featherSelect.x = 4;
         featherSelect.y = 1;
         selectPetFeather = petListFeather[0];
         pageSelector2.initPageSeletor(petListFeather.length,FEATHER_COUNT_PER_PAGE);
         proTextRefresh();
         refreshProtect();
         if(!_core.player.pmLevel || ToolKit.isSmallOrEqual(_core.player.pmLevel,0))
         {
            toNextStepBtn.visible = false;
         }
         else
         {
            toNextStepBtn.visible = true;
         }
      }
      
      public function set fire2(param1:Image) : void
      {
         var _loc2_:Object = this._97439932fire2;
         if(_loc2_ !== param1)
         {
            this._97439932fire2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fire2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get circle1() : ContractCircle
      {
         return this._782949729circle1;
      }
      
      public function ___PetEvolutionPanel_DragableCanvas1_initialize(param1:FlexEvent) : void
      {
         initView();
      }
      
      public function set envoSelect(param1:Image) : void
      {
         var _loc2_:Object = this._2070140094envoSelect;
         if(_loc2_ !== param1)
         {
            this._2070140094envoSelect = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"envoSelect",_loc2_,param1));
         }
      }
      
      public function ___PetEvolutionPanel_FilterButton2_click(param1:MouseEvent) : void
      {
         tenContractHandler(param1);
      }
      
      public function set fire6(param1:Image) : void
      {
         var _loc2_:Object = this._97439936fire6;
         if(_loc2_ !== param1)
         {
            this._97439936fire6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fire6",_loc2_,param1));
         }
      }
      
      public function set fire3(param1:Image) : void
      {
         var _loc2_:Object = this._97439933fire3;
         if(_loc2_ !== param1)
         {
            this._97439933fire3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fire3",_loc2_,param1));
         }
      }
      
      public function set fire7(param1:Image) : void
      {
         var _loc2_:Object = this._97439937fire7;
         if(_loc2_ !== param1)
         {
            this._97439937fire7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fire7",_loc2_,param1));
         }
      }
      
      public function set fire8(param1:Image) : void
      {
         var _loc2_:Object = this._97439938fire8;
         if(_loc2_ !== param1)
         {
            this._97439938fire8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fire8",_loc2_,param1));
         }
      }
      
      public function set fire5(param1:Image) : void
      {
         var _loc2_:Object = this._97439935fire5;
         if(_loc2_ !== param1)
         {
            this._97439935fire5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fire5",_loc2_,param1));
         }
      }
      
      public function set fire4(param1:Image) : void
      {
         var _loc2_:Object = this._97439934fire4;
         if(_loc2_ !== param1)
         {
            this._97439934fire4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fire4",_loc2_,param1));
         }
      }
      
      public function set fire0(param1:Image) : void
      {
         var _loc2_:Object = this._97439930fire0;
         if(_loc2_ !== param1)
         {
            this._97439930fire0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fire0",_loc2_,param1));
         }
      }
      
      public function set fire1(param1:Image) : void
      {
         var _loc2_:Object = this._97439931fire1;
         if(_loc2_ !== param1)
         {
            this._97439931fire1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fire1",_loc2_,param1));
         }
      }
      
      public function __petE2_click(param1:MouseEvent) : void
      {
         petClickHandlerFeather(param1);
      }
      
      public function set nextPro(param1:Image) : void
      {
         var _loc2_:Object = this._1847060154nextPro;
         if(_loc2_ !== param1)
         {
            this._1847060154nextPro = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextPro",_loc2_,param1));
         }
      }
      
      private function getEvolutionPets(param1:Object) : Array
      {
         var _loc3_:Object = null;
         var _loc2_:Array = [];
         for(_loc3_ in param1)
         {
            if(Boolean(param1[_loc3_]) && envoluted(param1[_loc3_]))
            {
               _loc2_.push(param1[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      public function set zhen2(param1:Image) : void
      {
         var _loc2_:Object = this._115868347zhen2;
         if(_loc2_ !== param1)
         {
            this._115868347zhen2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"zhen2",_loc2_,param1));
         }
      }
      
      public function __pet10_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      public function set zhen1(param1:Image) : void
      {
         var _loc2_:Object = this._115868346zhen1;
         if(_loc2_ !== param1)
         {
            this._115868346zhen1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"zhen1",_loc2_,param1));
         }
      }
      
      private function toFeather() : void
      {
         var _loc2_:Object = null;
         if(!selectPetFeather)
         {
            return;
         }
         if(_currentRound == ROUND_MAX - 1 && _currentStep == STAGE_MAX)
         {
            ViewManager.getInstance().getUI(ViewManager.MAIN_CHAT).showSystemMsg(Language.PET_EVOLUTION_PANEL_U[21]);
            return;
         }
         var _loc1_:int = GamePredef.PET_ENVOLUTION_FEATHER_PARAM * GamePredef.PET_ENVOLUTION_FEATHER_COST[_currentRound][_currentStep];
         if(_loc1_ > _core.player.npPnt)
         {
            ViewManager.getInstance().getUI(ViewManager.MAIN_CHAT).showSystemMsg(Language.PET_EVOLUTION_PANEL_U[16]);
            return;
         }
         if(useProtect.selected && _currentStep % 3 != 0)
         {
            _loc2_ = _core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,PROTECT_ITEM_ID);
            if(!_loc2_ || !_loc2_.slot || _loc2_.num < GamePredef.PET_ENVOLUTION_FEATHER_COST_PROTECT[_currentRound][_currentStep])
            {
               ViewManager.getInstance().getUI(ViewManager.MAIN_CHAT).showSystemMsg(Language.PET_EVOLUTION_PANEL_U[20]);
               return;
            }
         }
         _core.remote.call("toPetFeather",new Responder(onFeather),selectPetFeather.id,useProtect.selected);
      }
      
      private function petListRefresh() : void
      {
         petList = getEvolutionAblePets(_core.player.petList);
         petList.sortOn(["tid","growRate"],[Array.DESCENDING | Array.NUMERIC,Array.DESCENDING | Array.NUMERIC]);
      }
      
      public function set itemText(param1:Label) : void
      {
         var _loc2_:Object = this._1177514720itemText;
         if(_loc2_ !== param1)
         {
            this._1177514720itemText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemText",_loc2_,param1));
         }
      }
      
      public function set evolutionBtn(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1324347617evolutionBtn;
         if(_loc2_ !== param1)
         {
            this._1324347617evolutionBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"evolutionBtn",_loc2_,param1));
         }
      }
      
      private function onFeather(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         if(param1.num == 1)
         {
            resultInfo(param1.pid,param1.success,param1.round,param1.stage,param1.protect);
            if(param1.success)
            {
               skillCanvas.flash(Language.PET_EVOLUTION_PANEL_U[33]);
            }
            else
            {
               skillCanvas.flash(Language.PET_EVOLUTION_PANEL_U[29]);
            }
         }
         else if(param1.num == 100)
         {
            resultInfo(param1.pid,true,param1.round,param1.stage,param1.protect);
         }
         proTextRefresh();
         refreshProtect();
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         var _loc4_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < ITEM_COUNT_PER_PAGE)
         {
            _loc4_ = petList[_loc3_ + param1];
            if(_loc4_)
            {
               if(_loc4_.inTrade)
               {
                  this["pet" + _loc3_].clean();
               }
               else if(_loc4_.inAuction)
               {
                  this["pet" + _loc3_].clean();
               }
               else
               {
                  this["pet" + _loc3_].type = GamePredef.TBL_PET;
                  this["pet" + _loc3_].giid = _loc4_.id;
                  this["pet" + _loc3_].stackNum = 1;
                  this["pet" + _loc3_].slotData = _loc4_;
               }
            }
            _loc3_++;
         }
         envoSelect.visible = false;
      }
      
      public function set needText(param1:Label) : void
      {
         var _loc2_:Object = this._865666787needText;
         if(_loc2_ !== param1)
         {
            this._865666787needText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needText",_loc2_,param1));
         }
      }
      
      private function refreshPro() : void
      {
         var _loc1_:Object = null;
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         petProData.removeAll();
         if(Boolean(selectPet) && Boolean(selectPet.creatureData))
         {
            _loc1_ = selectPet.creatureData;
            _loc2_ = 0;
            _loc3_ = _core.data.gameDataIndex3[GamePredef.TBL_CREATURE_HANDBOOK][_loc1_.id];
            for(_loc4_ in _loc3_)
            {
               if(_loc3_[_loc4_].relateId == _loc1_.id)
               {
                  _loc2_ = int(_loc3_[_loc4_].evolutionId);
               }
            }
            if(_loc2_ > 0)
            {
               petProData.addItem({
                  "name":Language.PETPANEL_U[12],
                  "curPro":Math.round(int(_loc1_.aptStrength) * 1.2),
                  "nextPro":Math.round(int(_loc1_.aptStrength) * 1.2) + GamePredef.PET_ENVOLUTION_FEATHER_STEP[_loc2_][0][ROUND_MAX - 1][STAGE_MAX]
               });
               petProData.addItem({
                  "name":Language.PETPANEL_U[14],
                  "curPro":Math.round(int(_loc1_.aptStamina) * 1.2),
                  "nextPro":Math.round(int(_loc1_.aptStamina) * 1.2) + GamePredef.PET_ENVOLUTION_FEATHER_STEP[_loc2_][1][ROUND_MAX - 1][STAGE_MAX]
               });
               petProData.addItem({
                  "name":Language.PETPANEL_U[13],
                  "curPro":Math.round(int(_loc1_.aptAgility) * 1.2),
                  "nextPro":Math.round(int(_loc1_.aptAgility) * 1.2) + GamePredef.PET_ENVOLUTION_FEATHER_STEP[_loc2_][2][ROUND_MAX - 1][STAGE_MAX]
               });
               petProData.addItem({
                  "name":Language.PETPANEL_U[15],
                  "curPro":Math.round(int(_loc1_.aptIntelligence) * 1.2),
                  "nextPro":Math.round(int(_loc1_.aptIntelligence) * 1.2) + GamePredef.PET_ENVOLUTION_FEATHER_STEP[_loc2_][3][ROUND_MAX - 1][STAGE_MAX]
               });
               petProData.addItem({
                  "name":Language.PETPANEL_U[16],
                  "curPro":Math.round(int(_loc1_.aptEnergy) * 1.2),
                  "nextPro":Math.round(int(_loc1_.aptEnergy) * 1.2) + GamePredef.PET_ENVOLUTION_FEATHER_STEP[_loc2_][4][ROUND_MAX - 1][STAGE_MAX]
               });
            }
         }
      }
      
      public function __pet1_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      public function set sock2(param1:Image) : void
      {
         var _loc2_:Object = this._109610222sock2;
         if(_loc2_ !== param1)
         {
            this._109610222sock2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sock2",_loc2_,param1));
         }
      }
      
      public function set sock3(param1:Image) : void
      {
         var _loc2_:Object = this._109610223sock3;
         if(_loc2_ !== param1)
         {
            this._109610223sock3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sock3",_loc2_,param1));
         }
      }
      
      private function contractHandler(param1:Event) : void
      {
         var contractPet:Object;
         var propStr:String;
         var propLvl:int;
         var bagPanel:BagPanel = null;
         var goldLockFlag:Boolean = false;
         var gfunc:Function = null;
         var event:Event = param1;
         event.stopImmediatePropagation();
         contractPet = _core.player.contractPet;
         propStr = GamePredef.CONTRACT_DICT[_selectType];
         propLvl = Boolean(contractPet) && Boolean(contractPet[propStr]) ? int(contractPet[propStr]) : 0;
         if(propLvl >= GamePredef.MAX_CONTRACT_LEVEL)
         {
            _core.sysMidNote(Language.PET_EVOLUTION_PANEL_U[61]);
            return;
         }
         _contracting = true;
         if(autoBuy.selected)
         {
            bagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
            goldLockFlag = bagPanel.goldLockFlag;
            if(goldLockFlag || !bagPanel)
            {
               _core.sysMsg(Language.JUHUASUAN_PANEL[15]);
               gfunc = function(param1:String):void
               {
                  _core.remote.call("unlockMoney",new Responder(doUnlockMoneyGold),MD5.hash(param1));
               };
               _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],gfunc);
               return;
            }
         }
         _core.remote.call("contractPet",new Responder(onContractPet),_selectType,autoBuy.selected);
      }
      
      private function activated(param1:int) : Boolean
      {
         var _loc4_:Object = null;
         var _loc2_:Object = _core.player.activePetObject;
         var _loc3_:Object = _core.data.gameDataIndex3[GamePredef.TBL_CREATURE_HANDBOOK][param1];
         for(_loc4_ in _loc3_)
         {
            if(Boolean(_loc3_[_loc4_].relateId == param1 && _loc3_[_loc4_].evolutionId) && Boolean(_loc2_) && Boolean(_loc2_[_loc3_[_loc4_].id]) && Boolean(_loc2_[_loc3_[_loc4_].id].actived))
            {
               return true;
            }
         }
         return false;
      }
      
      public function set pet0(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3437297pet0;
         if(_loc2_ !== param1)
         {
            this._3437297pet0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet0",_loc2_,param1));
         }
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
      private function get petProData() : ArrayCollection
      {
         return this._1042207272petProData;
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
      public function get petE1() : ItemSlot
      {
         return this._106556907petE1;
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
      
      public function set pet2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3437299pet2;
         if(_loc2_ !== param1)
         {
            this._3437299pet2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet2",_loc2_,param1));
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
      
      private function onContractPetTen(param1:Object = null) : void
      {
         _contracting = false;
         if(!param1)
         {
            return;
         }
         if(!_core.player.contractPet)
         {
            _core.player.contractPet = {};
         }
         var _loc2_:Object = _core.player.contractPet;
         var _loc3_:int = int(param1.type);
         var _loc4_:String = GamePredef.CONTRACT_DICT[_loc3_];
         var _loc5_:String = _loc4_ + GamePredef.CONTRACT_EXP;
         _loc2_[_loc4_] = param1.newLvl;
         _loc2_[_loc5_] = param1.newExp;
         this.updateContract();
      }
      
      [Bindable(event="propertyChange")]
      public function get bigCircle() : BigContractCircle
      {
         return this._511796720bigCircle;
      }
      
      [Bindable(event="propertyChange")]
      public function get petE0() : ItemSlot
      {
         return this._106556906petE0;
      }
      
      public function __petE7_click(param1:MouseEvent) : void
      {
         petClickHandlerFeather(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get petE2() : ItemSlot
      {
         return this._106556908petE2;
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
      
      [Bindable(event="propertyChange")]
      public function get petE4() : ItemSlot
      {
         return this._106556910petE4;
      }
      
      public function __helpText_click(param1:MouseEvent) : void
      {
         helpHandler(param1);
      }
      
      private function close() : void
      {
         firstIn = true;
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
      public function get petE9() : ItemSlot
      {
         return this._106556915petE9;
      }
      
      public function set propNext(param1:Text) : void
      {
         var _loc2_:Object = this._993838858propNext;
         if(_loc2_ !== param1)
         {
            this._993838858propNext = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propNext",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petE3() : ItemSlot
      {
         return this._106556909petE3;
      }
      
      [Bindable(event="propertyChange")]
      public function get petE5() : ItemSlot
      {
         return this._106556911petE5;
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
      public function get petE7() : ItemSlot
      {
         return this._106556913petE7;
      }
      
      [Bindable(event="propertyChange")]
      public function get petE8() : ItemSlot
      {
         return this._106556914petE8;
      }
      
      public function set sock1(param1:Image) : void
      {
         var _loc2_:Object = this._109610221sock1;
         if(_loc2_ !== param1)
         {
            this._109610221sock1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sock1",_loc2_,param1));
         }
      }
      
      private function envoluted(param1:Object) : Boolean
      {
         if(!param1.envoInfo)
         {
            return false;
         }
         if(!param1.envoInfo["envo"])
         {
            return false;
         }
         return param1.envoInfo["envo"];
      }
      
      [Bindable(event="propertyChange")]
      public function get propLeft() : Text
      {
         return this._993898998propLeft;
      }
      
      private function petClickHandlerFeather(param1:Event) : void
      {
         var _loc2_:ItemSlot = ItemSlot(param1.currentTarget);
         if(!selectPetFeather || !_loc2_.slotData)
         {
            return;
         }
         if(selectPetFeather.id == _loc2_.slotData.id)
         {
            featherSelect.visible = true;
            return;
         }
         selectPetFeather = _loc2_.slotData;
         featherSelect.x = _loc2_.x + 4;
         featherSelect.y = _loc2_.y + 1;
         proTextRefresh();
      }
      
      [Bindable(event="propertyChange")]
      public function get petE6() : ItemSlot
      {
         return this._106556912petE6;
      }
      
      public function set skillCanvas(param1:SkillCanvas) : void
      {
         var _loc2_:Object = this._1769958153skillCanvas;
         if(_loc2_ !== param1)
         {
            this._1769958153skillCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillCanvas",_loc2_,param1));
         }
      }
      
      public function ___PetEvolutionPanel_FilterButton1_click(param1:MouseEvent) : void
      {
         contractHandler(param1);
      }
      
      public function __pet6_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      public function set zhiranzhiliCost(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._2072851743zhiranzhiliCost;
         if(_loc2_ !== param1)
         {
            this._2072851743zhiranzhiliCost = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"zhiranzhiliCost",_loc2_,param1));
         }
      }
      
      private function toFeatherNextStep() : void
      {
         var func:Function;
         var goldLockFlag:Boolean;
         var bagPanel:BagPanel;
         var cost:int = 0;
         var gfunc:Function = null;
         var str:String = null;
         var targetRound:int = 0;
         var targetStage:int = 0;
         if(!selectPetFeather)
         {
            return;
         }
         if(_currentRound == ROUND_MAX - 1 && _currentStep == STAGE_MAX)
         {
            ViewManager.getInstance().getUI(ViewManager.MAIN_CHAT).showSystemMsg(Language.PET_EVOLUTION_PANEL_U[21]);
            return;
         }
         if(_currentRound == ROUND_MAX - 1 && _currentStep == STAGE_MAX)
         {
            ViewManager.getInstance().getUI(ViewManager.MAIN_CHAT).showSystemMsg(Language.PET_EVOLUTION_PANEL_U[21]);
            return;
         }
         bagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
         goldLockFlag = bagPanel.goldLockFlag;
         if(goldLockFlag || !bagPanel)
         {
            _core.sysMsg(Language.JUHUASUAN_PANEL[15]);
            gfunc = function(param1:String):void
            {
               _core.remote.call("unlockMoney",new Responder(doUnlockMoneyGold),MD5.hash(param1));
            };
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],gfunc);
            return;
         }
         cost = int(GamePredef.PET_ENVOLUTION_FEATHER_COST_GOLD[_currentRound][_currentStep]);
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               if(_core.player.gold < cost)
               {
                  Alert.show(Language.GUILDCONTRIBPANEL_U[1]);
               }
               else
               {
                  _core.remote.call("toPetFeatherNextStep",new Responder(OnFeatherNextStep),selectPetFeather.id);
               }
            }
         };
         if(_core.player)
         {
            str = Language.PET_EVOLUTION_PANEL_U[25];
            targetRound = _currentRound;
            targetStage = _currentStep;
            targetStage = (Math.floor(targetStage / 3) + 1) * 3;
            str = str.replace("num",cost).replace("num1",targetRound + 1).replace("num2",targetStage);
            Alert.show(str,"",Alert.YES | Alert.NO,null,func);
         }
      }
      
      private function OnFeatherNextStep(param1:Object) : void
      {
         onFeather(param1);
      }
      
      private function closeHandler(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.NO)
         {
            return;
         }
         _contracting = true;
         _core.remote.call("ensureBuyContractPet",new Responder(onContractPet),_selectType);
      }
      
      public function open(param1:int) : void
      {
         var _loc3_:int = 0;
         var _loc2_:Boolean = !this.visible;
         petListRefresh();
         if(_loc2_)
         {
            _loc3_ = getEnvoNumber();
            if(petList.length == 0 && _loc3_ > 0)
            {
               pageTab.selectedIndex = 1;
               initFeather();
            }
            else
            {
               init(param1);
               pageTab.selectedIndex = 0;
               showNoCanEnvolutePet();
            }
         }
         else
         {
            firstIn = true;
         }
         helpText.htmlText = Language.PET_EVOLUTION_PANEL_U[46][pageTab.selectedIndex];
         this.visible = _loc2_;
      }
      
      private function doUnlockMoneyGold(param1:Boolean) : void
      {
         var _loc2_:BagPanel = null;
         var _loc3_:Boolean = false;
         if(param1)
         {
            _loc2_ = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
            _loc3_ = _loc2_.goldLockFlag;
            if(_loc3_ != false && Boolean(_loc2_))
            {
               _loc2_.goldLockFlag = false;
            }
         }
      }
      
      public function __petE1_click(param1:MouseEvent) : void
      {
         petClickHandlerFeather(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get autoBuy() : CheckBox
      {
         return this._646343081autoBuy;
      }
      
      [Bindable(event="propertyChange")]
      public function get nameText() : Label
      {
         return this._1840576088nameText;
      }
      
      public function set evolutionPro(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1324361010evolutionPro;
         if(_loc2_ !== param1)
         {
            this._1324361010evolutionPro = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"evolutionPro",_loc2_,param1));
         }
      }
      
      private function resultInfo(param1:int, param2:Boolean, param3:int, param4:int, param5:Boolean) : void
      {
         var _loc6_:Object = _core.player.petList[param1];
         if(!_loc6_ || !_loc6_.envoInfo)
         {
            return;
         }
         var _loc7_:String = "";
         var _loc8_:Object = ViewManager.getInstance().getUI(ViewManager.MAIN_CHAT);
         if(param2)
         {
            if(int(_loc6_.envoInfo["round"]) == param3)
            {
               _loc7_ = Language.PET_EVOLUTION_PANEL_U[18];
               _loc8_.showSystemMsg(_loc7_.replace("num1",param3 + 1).replace("num2",param4));
            }
            else
            {
               _loc8_.showSystemMsg(Language.PET_EVOLUTION_PANEL_U[30]);
            }
         }
         else if(int(_loc6_.envoInfo["stage"]) == param4)
         {
            _loc8_.showSystemMsg(Language.PET_EVOLUTION_PANEL_U[29]);
         }
         else
         {
            _loc7_ = Language.PET_EVOLUTION_PANEL_U[19];
            _loc8_.showSystemMsg(_loc7_.replace("num1",param3 + 1).replace("num2",param4));
         }
         _loc6_.envoInfo["stage"] = param4;
         _loc6_.envoInfo["round"] = param3;
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelector2() : PageSelector
      {
         return this._1647659420pageSelector2;
      }
      
      private function _PetEvolutionPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_EVOLUTION_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petEvolutionTitle.text = param1;
         },"petEvolutionTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            pageTab.filters = param1;
         },"pageTab.filters");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return Language.PET_EVOLUTION_PANEL_U[47];
         },function(param1:Array):void
         {
            pageTab.dataArray = param1;
         },"pageTab.dataArray");
         result[2] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            helpText.filters = param1;
         },"helpText.filters");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return pageTab.selectedIndex;
         },function(param1:int):void
         {
            view.selectedIndex = param1;
         },"view.selectedIndex");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_EVOLUTION_PANEL_U[43];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetEvolutionPanel_RoundedLabel1.text = param1;
         },"_PetEvolutionPanel_RoundedLabel1.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_EVOLUTION_PANEL_U[44];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetEvolutionPanel_RoundedLabel2.text = param1;
         },"_PetEvolutionPanel_RoundedLabel2.text");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000215);
         },function(param1:Object):void
         {
            zhen1.source = param1;
         },"zhen1.source");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000215);
         },function(param1:Object):void
         {
            zhen2.source = param1;
         },"zhen2.source");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000217);
         },function(param1:Object):void
         {
            direct.source = param1;
         },"direct.source");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_EVOLUTION_PANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            evolutionBtn.label = param1;
         },"evolutionBtn.label");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000216);
         },function(param1:Object):void
         {
            nextPro.source = param1;
         },"nextPro.source");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return petProData;
         },function(param1:Object):void
         {
            evolutionPro.dataProvider = param1;
         },"evolutionPro.dataProvider");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_EVOLUTION_PANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetEvolutionPanel_DataGridColumn1.headerText = param1;
         },"_PetEvolutionPanel_DataGridColumn1.headerText");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_EVOLUTION_PANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetEvolutionPanel_DataGridColumn2.headerText = param1;
         },"_PetEvolutionPanel_DataGridColumn2.headerText");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_EVOLUTION_PANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetEvolutionPanel_DataGridColumn3.headerText = param1;
         },"_PetEvolutionPanel_DataGridColumn3.headerText");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_EVOLUTION_PANEL_U[42];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetEvolutionPanel_RoundedLabel3.text = param1;
         },"_PetEvolutionPanel_RoundedLabel3.text");
         result[16] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000213);
         },function(param1:Object):void
         {
            envoSelect.source = param1;
         },"envoSelect.source");
         result[17] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet0.slotType = param1;
         },"pet0.slotType");
         result[18] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet1.slotType = param1;
         },"pet1.slotType");
         result[19] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet2.slotType = param1;
         },"pet2.slotType");
         result[20] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet3.slotType = param1;
         },"pet3.slotType");
         result[21] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet4.slotType = param1;
         },"pet4.slotType");
         result[22] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet5.slotType = param1;
         },"pet5.slotType");
         result[23] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet6.slotType = param1;
         },"pet6.slotType");
         result[24] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet7.slotType = param1;
         },"pet7.slotType");
         result[25] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet8.slotType = param1;
         },"pet8.slotType");
         result[26] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet9.slotType = param1;
         },"pet9.slotType");
         result[27] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet10.slotType = param1;
         },"pet10.slotType");
         result[28] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            pet11.slotType = param1;
         },"pet11.slotType");
         result[29] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000212);
         },function(param1:Object):void
         {
            roundImg.source = param1;
         },"roundImg.source");
         result[30] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000218);
         },function(param1:Object):void
         {
            sock1.source = param1;
         },"sock1.source");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_EVOLUTION_PANEL_U[39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            sock1.toolTip = param1;
         },"sock1.toolTip");
         result[32] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000218);
         },function(param1:Object):void
         {
            sock2.source = param1;
         },"sock2.source");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_EVOLUTION_PANEL_U[40];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            sock2.toolTip = param1;
         },"sock2.toolTip");
         result[34] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000218);
         },function(param1:Object):void
         {
            sock3.source = param1;
         },"sock3.source");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_EVOLUTION_PANEL_U[41];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            sock3.toolTip = param1;
         },"sock3.toolTip");
         result[36] = binding;
         binding = new Binding(this,function():Object
         {
            return basicProData;
         },function(param1:Object):void
         {
            basicPro.dataProvider = param1;
         },"basicPro.dataProvider");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_EVOLUTION_PANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetEvolutionPanel_DataGridColumn4.headerText = param1;
         },"_PetEvolutionPanel_DataGridColumn4.headerText");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_EVOLUTION_PANEL_U[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetEvolutionPanel_DataGridColumn5.headerText = param1;
         },"_PetEvolutionPanel_DataGridColumn5.headerText");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_EVOLUTION_PANEL_U[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetEvolutionPanel_DataGridColumn6.headerText = param1;
         },"_PetEvolutionPanel_DataGridColumn6.headerText");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_EVOLUTION_PANEL_U[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetEvolutionPanel_DataGridColumn7.headerText = param1;
         },"_PetEvolutionPanel_DataGridColumn7.headerText");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_EVOLUTION_PANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetEvolutionPanel_Label1.text = param1;
         },"_PetEvolutionPanel_Label1.text");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ASTROLOGIC_PANEL_U[50];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetEvolutionPanel_LinkButton1.label = param1;
         },"_PetEvolutionPanel_LinkButton1.label");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _core.player.npPnt;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetEvolutionPanel_Label2.text = param1;
         },"_PetEvolutionPanel_Label2.text");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_EVOLUTION_PANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetEvolutionPanel_Label3.text = param1;
         },"_PetEvolutionPanel_Label3.text");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_EVOLUTION_PANEL_U[66];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            featherRate.text = param1;
         },"featherRate.text");
         result[46] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            protectSlot.slotType = param1;
         },"protectSlot.slotType");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_EVOLUTION_PANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetEvolutionPanel_RoundedLabel6.text = param1;
         },"_PetEvolutionPanel_RoundedLabel6.text");
         result[48] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = "";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            zhiranzhiliCost.text = param1;
         },"zhiranzhiliCost.text");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_EVOLUTION_PANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetEvolutionPanel_DelayButton2.label = param1;
         },"_PetEvolutionPanel_DelayButton2.label");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_EVOLUTION_PANEL_U[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            toNextStepBtn.label = param1;
         },"toNextStepBtn.label");
         result[51] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000213);
         },function(param1:Object):void
         {
            featherSelect.source = param1;
         },"featherSelect.source");
         result[52] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            petE0.slotType = param1;
         },"petE0.slotType");
         result[53] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            petE1.slotType = param1;
         },"petE1.slotType");
         result[54] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            petE2.slotType = param1;
         },"petE2.slotType");
         result[55] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            petE3.slotType = param1;
         },"petE3.slotType");
         result[56] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            petE4.slotType = param1;
         },"petE4.slotType");
         result[57] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            petE5.slotType = param1;
         },"petE5.slotType");
         result[58] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            petE6.slotType = param1;
         },"petE6.slotType");
         result[59] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            petE7.slotType = param1;
         },"petE7.slotType");
         result[60] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            petE8.slotType = param1;
         },"petE8.slotType");
         result[61] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET;
         },function(param1:int):void
         {
            petE9.slotType = param1;
         },"petE9.slotType");
         result[62] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220002073);
         },function(param1:Object):void
         {
            _PetEvolutionPanel_Image20.source = param1;
         },"_PetEvolutionPanel_Image20.source");
         result[63] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_EVOLUTION_PANEL_U[48];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetEvolutionPanel_Text2.htmlText = param1;
         },"_PetEvolutionPanel_Text2.htmlText");
         result[64] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetEvolutionPanel_Text2.filters = param1;
         },"_PetEvolutionPanel_Text2.filters");
         result[65] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            propLeft.filters = param1;
         },"propLeft.filters");
         result[66] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            propRight.filters = param1;
         },"propRight.filters");
         result[67] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            itemText.filters = param1;
         },"itemText.filters");
         result[68] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            nameText.filters = param1;
         },"nameText.filters");
         result[69] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            propNow.filters = param1;
         },"propNow.filters");
         result[70] = binding;
         binding = new Binding(this,function():Object
         {
            return Assets.UP_ARROW;
         },function(param1:Object):void
         {
            _PetEvolutionPanel_Image21.source = param1;
         },"_PetEvolutionPanel_Image21.source");
         result[71] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            propNext.filters = param1;
         },"propNext.filters");
         result[72] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            needText.filters = param1;
         },"needText.filters");
         result[73] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetEvolutionPanel_Label9.filters = param1;
         },"_PetEvolutionPanel_Label9.filters");
         result[74] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_EVOLUTION_PANEL_U[54];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetEvolutionPanel_Label9.text = param1;
         },"_PetEvolutionPanel_Label9.text");
         result[75] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_EVOLUTION_PANEL_U[55];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetEvolutionPanel_FilterButton1.label = param1;
         },"_PetEvolutionPanel_FilterButton1.label");
         result[76] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetEvolutionPanel_FilterButton1.filters = param1;
         },"_PetEvolutionPanel_FilterButton1.filters");
         result[77] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_EVOLUTION_PANEL_U[64];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetEvolutionPanel_FilterButton2.label = param1;
         },"_PetEvolutionPanel_FilterButton2.label");
         result[78] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetEvolutionPanel_FilterButton2.filters = param1;
         },"_PetEvolutionPanel_FilterButton2.filters");
         result[79] = binding;
         return result;
      }
      
      public function onEnsureBuyContract(param1:int) : void
      {
         if(_buyAlert)
         {
            PopUpManager.removePopUp(_buyAlert);
            _buyAlert = null;
         }
         var _loc2_:String = LanguageUtil.replace(Language.PET_EVOLUTION_PANEL_U[62],{"money":param1});
         _buyAlert = Alert.show(LanguageUtil.html2PlainText(_loc2_),"",Alert.YES | Alert.NO,null,closeHandler);
         _buyAlert.mx_internal::alertForm.mx_internal::textField.htmlText = _loc2_;
      }
      
      private function clearPage() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 12)
         {
            this["pet" + _loc1_].clean();
            _loc1_++;
         }
      }
      
      private function clearPageFeather() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 10)
         {
            this["petE" + _loc1_].clean();
            _loc1_++;
         }
      }
      
      public function set tile2(param1:Tile) : void
      {
         var _loc2_:Object = this._110363460tile2;
         if(_loc2_ !== param1)
         {
            this._110363460tile2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tile2",_loc2_,param1));
         }
      }
      
      public function set useProtect(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1930251448useProtect;
         if(_loc2_ !== param1)
         {
            this._1930251448useProtect = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"useProtect",_loc2_,param1));
         }
      }
      
      private function _PetEvolutionPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[0];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[47];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = pageTab.selectedIndex;
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[43];
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[44];
         _loc1_ = ResManager.getIconUrl(4130220000215);
         _loc1_ = ResManager.getIconUrl(4130220000215);
         _loc1_ = ResManager.getIconUrl(4130220000217);
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[1];
         _loc1_ = ResManager.getIconUrl(4130220000216);
         _loc1_ = petProData;
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[6];
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[7];
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[8];
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[42];
         _loc1_ = ResManager.getIconUrl(4130220000213);
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
         _loc1_ = ResManager.getIconUrl(4130220000212);
         _loc1_ = ResManager.getIconUrl(4130220000218);
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[39];
         _loc1_ = ResManager.getIconUrl(4130220000218);
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[40];
         _loc1_ = ResManager.getIconUrl(4130220000218);
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[41];
         _loc1_ = basicProData;
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[6];
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[26];
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[27];
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[28];
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[10];
         _loc1_ = Language.ASTROLOGIC_PANEL_U[50];
         _loc1_ = _core.player.npPnt;
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[11];
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[66];
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[12];
         _loc1_ = "";
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[14];
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[24];
         _loc1_ = ResManager.getIconUrl(4130220000213);
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
         _loc1_ = ResManager.getIconUrl(4130220002073);
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[48];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Assets.UP_ARROW;
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[54];
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[55];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[64];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
      }
      
      [Bindable(event="propertyChange")]
      public function get petEvolutionTitle() : BasicTitleCanvas
      {
         return this._406889116petEvolutionTitle;
      }
      
      [Bindable(event="propertyChange")]
      public function get pageTab() : HButtonTab
      {
         return this._803559802pageTab;
      }
      
      public function __petE6_click(param1:MouseEvent) : void
      {
         petClickHandlerFeather(param1);
      }
      
      public function __pet0_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get view() : ViewStack
      {
         return this._3619493view;
      }
      
      public function set roundImg(param1:Image) : void
      {
         var _loc2_:Object = this._173227roundImg;
         if(_loc2_ !== param1)
         {
            this._173227roundImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"roundImg",_loc2_,param1));
         }
      }
      
      public function set tile1(param1:Tile) : void
      {
         var _loc2_:Object = this._110363459tile1;
         if(_loc2_ !== param1)
         {
            this._110363459tile1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tile1",_loc2_,param1));
         }
      }
      
      private function viewChange(param1:Event) : void
      {
         var _loc3_:int = 0;
         var _loc2_:int = pageTab.selectedIndex;
         if(1 == _loc2_)
         {
            _loc3_ = getEnvoNumber();
            if(_loc3_ < 1)
            {
               Alert.show(Language.PET_EVOLUTION_PANEL_U[31],Language.PET_EVOLUTION_PANEL_U[31].toString(),Alert.YES,null,null);
               return;
            }
            initFeather();
         }
         else if(0 == _loc2_)
         {
            showNoCanEnvolutePet();
         }
         else if(2 == _loc2_)
         {
            this.updateContract();
         }
         helpText.htmlText = Language.PET_EVOLUTION_PANEL_U[46][pageTab.selectedIndex];
      }
      
      public function set circle1(param1:ContractCircle) : void
      {
         var _loc2_:Object = this._782949729circle1;
         if(_loc2_ !== param1)
         {
            this._782949729circle1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"circle1",_loc2_,param1));
         }
      }
      
      public function set circle2(param1:ContractCircle) : void
      {
         var _loc2_:Object = this._782949730circle2;
         if(_loc2_ !== param1)
         {
            this._782949730circle2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"circle2",_loc2_,param1));
         }
      }
      
      public function set circle3(param1:ContractCircle) : void
      {
         var _loc2_:Object = this._782949731circle3;
         if(_loc2_ !== param1)
         {
            this._782949731circle3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"circle3",_loc2_,param1));
         }
      }
      
      private function gotoAstroPanel() : void
      {
         if(_core.player.level < 70)
         {
            _core.sysMsg(Language.PET_HANDBOOK_PANEL_U[119]);
            return;
         }
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_ASTROLOGIC);
         if(_loc1_)
         {
            _loc1_.visible = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nextPro() : Image
      {
         return this._1847060154nextPro;
      }
      
      [Bindable(event="propertyChange")]
      public function get zhen2() : Image
      {
         return this._115868347zhen2;
      }
      
      public function set costTXT(param1:Label) : void
      {
         var _loc2_:Object = this._956131171costTXT;
         if(_loc2_ !== param1)
         {
            this._956131171costTXT = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costTXT",_loc2_,param1));
         }
      }
      
      public function set circle4(param1:ContractCircle) : void
      {
         var _loc2_:Object = this._782949732circle4;
         if(_loc2_ !== param1)
         {
            this._782949732circle4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"circle4",_loc2_,param1));
         }
      }
      
      private function refreshRoundInfo() : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         refreshFire();
         if(_currentRound == ROUND_MAX - 1 && _currentStep == STAGE_MAX)
         {
            costTXT.htmlText = "<font color=\'#FF0000\'>0</font>";
         }
         else
         {
            _loc2_ = GamePredef.PET_ENVOLUTION_FEATHER_PARAM * GamePredef.PET_ENVOLUTION_FEATHER_COST[_currentRound][_currentStep];
            _loc3_ = "";
            if(_loc2_ > _core.player.npPnt)
            {
               _loc3_ = "#ff0000";
            }
            else
            {
               _loc3_ = "#00ff00";
            }
            costTXT.htmlText = "<font color=\'" + _loc3_ + "\'>" + _loc2_ + "</font>";
         }
         var _loc1_:String = Language.PET_EVOLUTION_PANEL_U[13].toString();
         _loc2_ = int(GamePredef.PET_ENVOLUTION_FEATHER_COST_PROTECT[_currentRound][_currentStep]);
         zhiranzhiliCost.htmlText = _loc1_.replace("num",_loc2_);
      }
      
      public function set protectSlot(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._691653267protectSlot;
         if(_loc2_ !== param1)
         {
            this._691653267protectSlot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"protectSlot",_loc2_,param1));
         }
      }
      
      public function __pet5_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get itemText() : Label
      {
         return this._1177514720itemText;
      }
      
      [Bindable(event="propertyChange")]
      public function get needText() : Label
      {
         return this._865666787needText;
      }
      
      [Bindable(event="propertyChange")]
      public function get zhen1() : Image
      {
         return this._115868346zhen1;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet0() : ItemSlot
      {
         return this._3437297pet0;
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
      
      [Bindable(event="propertyChange")]
      public function get pet3() : ItemSlot
      {
         return this._3437300pet3;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet4() : ItemSlot
      {
         return this._3437301pet4;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet5() : ItemSlot
      {
         return this._3437302pet5;
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
      
      [Bindable(event="propertyChange")]
      public function get pet8() : ItemSlot
      {
         return this._3437305pet8;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet9() : ItemSlot
      {
         return this._3437306pet9;
      }
      
      private function onEnvolution(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:Object = _core.player.petList[param1.pid];
         if(_loc2_)
         {
            skillCanvas.flash(Language.PET_EVOLUTION_PANEL_U[32]);
            _loc2_["creatureData"] = _core.data.gameData[GamePredef.TBL_CREATURE][param1.tid];
            _loc2_.envoInfo = param1.envo;
            _loc2_.tid = param1.tid;
            petListRefresh();
            init();
         }
      }
      
      private function getEnvoNumber() : int
      {
         return getEvolutionPets(_core.player.petList).length;
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
      
      public function set picCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._1714701186picCanvas;
         if(_loc2_ !== param1)
         {
            this._1714701186picCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"picCanvas",_loc2_,param1));
         }
      }
      
      public function set featherSelect(param1:Image) : void
      {
         var _loc2_:Object = this._2033704065featherSelect;
         if(_loc2_ !== param1)
         {
            this._2033704065featherSelect = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featherSelect",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skillCanvas() : SkillCanvas
      {
         return this._1769958153skillCanvas;
      }
      
      public function __circle4_click(param1:MouseEvent) : void
      {
         circleHandler(param1);
      }
      
      public function __petE0_click(param1:MouseEvent) : void
      {
         petClickHandlerFeather(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get zhiranzhiliCost() : RoundedLabel
      {
         return this._2072851743zhiranzhiliCost;
      }
      
      public function set pageSelector(param1:PageSelector) : void
      {
         var _loc2_:Object = this._607339634pageSelector;
         if(_loc2_ !== param1)
         {
            this._607339634pageSelector = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelector",_loc2_,param1));
         }
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
      
      public function __toNextStepBtn_click(param1:MouseEvent) : void
      {
         toFeatherNextStep();
      }
      
      private function petFeatherListRefresh() : void
      {
         petListFeather = getEvolutionPets(_core.player.petList);
         petListFeather.sortOn(["tid","growRate"],[Array.DESCENDING | Array.NUMERIC,Array.DESCENDING | Array.NUMERIC]);
      }
      
      public function set basicPro(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1717383265basicPro;
         if(_loc2_ !== param1)
         {
            this._1717383265basicPro = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basicPro",_loc2_,param1));
         }
      }
      
      private function toEvolution() : void
      {
         var str:String;
         var func:Function;
         if(!selectPet || !selectPet.creatureData)
         {
            return;
         }
         if(selectPet.binded == 0)
         {
            Alert.show(Language.PET_EVOLUTION_PANEL_U[37],Language.PET_EVOLUTION_PANEL_U[37].toString(),Alert.YES,null,null);
            return;
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("toPetEnvolution",new Responder(onEnvolution),selectPet.id);
            }
         };
         str = Language.PET_EVOLUTION_PANEL_U[38];
         Alert.show(str,"",Alert.YES | Alert.NO,null,func);
      }
      
      [Bindable(event="propertyChange")]
      public function get tile1() : Tile
      {
         return this._110363459tile1;
      }
      
      [Bindable(event="propertyChange")]
      public function get tile2() : Tile
      {
         return this._110363460tile2;
      }
      
      [Bindable(event="propertyChange")]
      public function get useProtect() : CheckBox
      {
         return this._1930251448useProtect;
      }
      
      private function onContractPet(param1:Object = null) : void
      {
         _contracting = false;
         if(!param1)
         {
            return;
         }
         if(!_core.player.contractPet)
         {
            _core.player.contractPet = {};
         }
         var _loc2_:Object = _core.player.contractPet;
         var _loc3_:int = int(param1.type);
         var _loc4_:String = GamePredef.CONTRACT_DICT[_loc3_];
         var _loc5_:String = _loc4_ + GamePredef.CONTRACT_EXP;
         _loc2_[_loc4_] = param1.newLvl;
         _loc2_[_loc5_] = param1.newExp;
         this.updateContract();
      }
      
      [Bindable(event="propertyChange")]
      public function get roundImg() : Image
      {
         return this._173227roundImg;
      }
      
      private function updateSelectContract() : void
      {
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         var _loc10_:int = 0;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc1_:Object = _core.player.contractPet;
         var _loc2_:String = GamePredef.CONTRACT_DICT[_selectType];
         var _loc3_:int = Boolean(_loc1_) && Boolean(_loc1_[_loc2_]) ? int(_loc1_[_loc2_]) : 0;
         nameText.text = Language.PET_EVOLUTION_PANEL_U[59][_selectType] + Language.PET_EVOLUTION_PANEL_U[50] + _loc3_;
         if(_loc3_ <= 0)
         {
            propNow.htmlText = Language.PET_EVOLUTION_PANEL_U[51] + Language.PET_EVOLUTION_PANEL_U[58];
         }
         else
         {
            if(_loc3_ > GamePredef.MAX_CONTRACT_LEVEL)
            {
               _loc3_ = GamePredef.MAX_CONTRACT_LEVEL;
            }
            _loc4_ = GameData.d[GamePredef.TBL_PET_CONTRACT][_loc3_];
            _loc5_ = int(_loc4_["prop" + _selectType]);
            _loc6_ = Number(_loc4_["propNum" + _selectType]);
            if(_core.player.classId == 5)
            {
               _loc7_ = Number(_loc4_["extraNum" + _selectType]);
               _loc6_ += _loc7_;
            }
            propNow.htmlText = Language.PET_EVOLUTION_PANEL_U[51] + GamePredef.AWAKEN_PROP_DICT[_loc5_] + "+" + _loc6_.toFixed(2) + "%";
         }
         if(_loc3_ >= GamePredef.MAX_CONTRACT_LEVEL)
         {
            needText.visible = false;
            propNext.htmlText = Language.PET_EVOLUTION_PANEL_U[52] + Language.PET_EVOLUTION_PANEL_U[60];
         }
         else
         {
            _loc8_ = _loc3_ + 1;
            _loc9_ = GameData.d[GamePredef.TBL_PET_CONTRACT][_loc8_];
            needText.visible = true;
            needText.text = Language.PET_EVOLUTION_PANEL_U[53] + _loc9_.reqNum;
            _loc10_ = int(_loc9_["prop" + _selectType]);
            _loc11_ = Number(_loc9_["propNum" + _selectType]);
            if(_core.player.classId == 5)
            {
               _loc12_ = Number(_loc9_["extraNum" + _selectType]);
               _loc11_ += _loc12_;
            }
            propNext.htmlText = Language.PET_EVOLUTION_PANEL_U[52] + GamePredef.AWAKEN_PROP_DICT[_loc10_] + "+" + _loc11_.toFixed(2) + "%";
         }
         bigCircle.updateView(_selectType);
      }
      
      public function ___PetEvolutionPanel_LinkButton1_click(param1:MouseEvent) : void
      {
         gotoAstroPanel();
      }
      
      private function petClickHandler(param1:Event) : void
      {
         var _loc2_:ItemSlot = ItemSlot(param1.currentTarget);
         if(!_loc2_.slotData)
         {
            return;
         }
         if(Boolean(selectPet) && selectPet.id == _loc2_.slotData.id)
         {
            envoSelect.visible = true;
            return;
         }
         selectPet = _loc2_.slotData;
         envoSelect.x = _loc2_.x + 12;
         envoSelect.y = _loc2_.y + 39;
         changeSWF();
      }
      
      [Bindable(event="propertyChange")]
      public function get costTXT() : Label
      {
         return this._956131171costTXT;
      }
      
      public function __petE5_click(param1:MouseEvent) : void
      {
         petClickHandlerFeather(param1);
      }
      
      public function ___PetEvolutionPanel_DragableCanvas1_remove(param1:FlexEvent) : void
      {
         close();
      }
      
      private function refreshProtect() : void
      {
         this["protectSlot"].type = GamePredef.TBL_ITEM_TEMPLATE;
         this["protectSlot"].giid = PROTECT_ITEM_ID;
         this["protectSlot"].stackNum = _core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,PROTECT_ITEM_ID).num;
         this["protectSlot"].enabled = true;
         this["protectSlot"].acceptable = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get featherSelect() : Image
      {
         return this._2033704065featherSelect;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet10() : ItemSlot
      {
         return this._106556286pet10;
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelector() : PageSelector
      {
         return this._607339634pageSelector;
      }
      
      [Bindable(event="propertyChange")]
      public function get picCanvas() : Canvas
      {
         return this._1714701186picCanvas;
      }
      
      private function getEvolutionAblePets(param1:Object) : Array
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc2_:Array = [];
         for(_loc3_ in param1)
         {
            _loc4_ = param1[_loc3_].creatureData;
            if(Boolean((_loc4_) && int(_loc4_.classIds) == 10) && Boolean(activated(_loc4_.id)) && !envoluted(param1[_loc3_]))
            {
               _loc2_.push(param1[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PetEvolutionPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PetEvolutionPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_PetEvolutionPanelWatcherSetupUtil");
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
      
      public function ___PetEvolutionPanel_DelayButton2_click(param1:MouseEvent) : void
      {
         toFeather();
      }
      
      public function __pet4_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get basicPro() : DataGrid
      {
         return this._1717383265basicPro;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet11() : ItemSlot
      {
         return this._106556287pet11;
      }
      
      private function set petProData(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1042207272petProData;
         if(_loc2_ !== param1)
         {
            this._1042207272petProData = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petProData",_loc2_,param1));
         }
      }
      
      private function refreshFire() : void
      {
         var _loc3_:int = 0;
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         _loc1_ = 0;
         while(_loc1_ < STAGE_MAX)
         {
            _loc3_ = _currentRound - 1 + (_loc1_ < _currentStep ? 1 : 0);
            if(_loc3_ >= 0)
            {
               this["fire" + _loc1_].source = ResManager.getIconUrl(fireUrl[_loc3_]);
               this["fire" + _loc1_].visible = true;
            }
            else
            {
               this["fire" + _loc1_].visible = false;
            }
            _loc1_++;
         }
      }
      
      public function __circle3_click(param1:MouseEvent) : void
      {
         circleHandler(param1);
      }
      
      public function set petE0(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._106556906petE0;
         if(_loc2_ !== param1)
         {
            this._106556906petE0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petE0",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
         pageSelector.onPageChanged = onPageChanged;
         pageSelector.onPageCleared = clearPage;
         pageSelector2.onPageChanged = onPageChangedFeather;
         pageSelector2.onPageCleared = clearPageFeather;
      }
      
      public function set petE1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._106556907petE1;
         if(_loc2_ !== param1)
         {
            this._106556907petE1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petE1",_loc2_,param1));
         }
      }
      
      public function set petE2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._106556908petE2;
         if(_loc2_ !== param1)
         {
            this._106556908petE2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petE2",_loc2_,param1));
         }
      }
      
      public function set direct(param1:Image) : void
      {
         var _loc2_:Object = this._1331586071direct;
         if(_loc2_ !== param1)
         {
            this._1331586071direct = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"direct",_loc2_,param1));
         }
      }
      
      public function set petE5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._106556911petE5;
         if(_loc2_ !== param1)
         {
            this._106556911petE5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petE5",_loc2_,param1));
         }
      }
      
      public function set bigCircle(param1:BigContractCircle) : void
      {
         var _loc2_:Object = this._511796720bigCircle;
         if(_loc2_ !== param1)
         {
            this._511796720bigCircle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bigCircle",_loc2_,param1));
         }
      }
      
      public function set petE3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._106556909petE3;
         if(_loc2_ !== param1)
         {
            this._106556909petE3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petE3",_loc2_,param1));
         }
      }
      
      private function onItemChange(param1:GameDataEvent = null) : void
      {
         if(!this.initialized || !this.visible || _contracting)
         {
            return;
         }
         itemText.text = Language.PET_EVOLUTION_PANEL_U[49] + _core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,CONTRACT_ITEMID).num;
      }
      
      public function __pet9_click(param1:MouseEvent) : void
      {
         petClickHandler(param1);
      }
      
      public function set petE8(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._106556914petE8;
         if(_loc2_ !== param1)
         {
            this._106556914petE8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petE8",_loc2_,param1));
         }
      }
      
      private function _PetEvolutionPanel_DataGridColumn7_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _PetEvolutionPanel_DataGridColumn7 = _loc1_;
         _loc1_.resizable = false;
         _loc1_.draggable = false;
         _loc1_.width = 70;
         _loc1_.sortable = false;
         _loc1_.dataField = "nextPro2";
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("color",326404);
         BindingManager.executeBindings(this,"_PetEvolutionPanel_DataGridColumn7",_PetEvolutionPanel_DataGridColumn7);
         return _loc1_;
      }
      
      public function set petE9(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._106556915petE9;
         if(_loc2_ !== param1)
         {
            this._106556915petE9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petE9",_loc2_,param1));
         }
      }
      
      public function set petE6(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._106556912petE6;
         if(_loc2_ !== param1)
         {
            this._106556912petE6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petE6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get direct() : Image
      {
         return this._1331586071direct;
      }
      
      public function set petE4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._106556910petE4;
         if(_loc2_ !== param1)
         {
            this._106556910petE4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petE4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get basicProData() : ArrayCollection
      {
         return this._1719946217basicProData;
      }
      
      private function set basicProData(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1719946217basicProData;
         if(_loc2_ !== param1)
         {
            this._1719946217basicProData = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"basicProData",_loc2_,param1));
         }
      }
      
      public function set petE7(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._106556913petE7;
         if(_loc2_ !== param1)
         {
            this._106556913petE7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petE7",_loc2_,param1));
         }
      }
      
      private function onPageChangedFeather(param1:int, param2:int) : void
      {
         var _loc4_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < 10)
         {
            _loc4_ = petListFeather[_loc3_ + param1];
            if(_loc4_)
            {
               if(_loc4_.inTrade)
               {
                  this["petE" + _loc3_].clean();
               }
               else if(_loc4_.inAuction)
               {
                  this["petE" + _loc3_].clean();
               }
               else
               {
                  this["petE" + _loc3_].type = GamePredef.TBL_PET;
                  this["petE" + _loc3_].giid = _loc4_.id;
                  this["petE" + _loc3_].stackNum = 1;
                  this["petE" + _loc3_].slotData = _loc4_;
               }
            }
            _loc3_++;
         }
         featherSelect.visible = false;
      }
   }
}

